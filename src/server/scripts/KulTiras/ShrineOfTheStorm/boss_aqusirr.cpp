/*
 * Copyright (C) 2020 LatinCoreTeam
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "ScriptedCreature.h"
#include "ScriptMgr.h"
#include "shrine_of_the_storm.h"
#include "Spell.h"
#include "ObjectMgr.h"
#include "Log.h"

enum Aquasirr
{
    SPELL_SEA_BLAST                     = 265001,
    SPELL_CHOKING_BRINE                 = 264560,
    SPELL_CHOKING_BRINE_MISSILE_SINGLE  = 264714,
    SPELL_CHOKING_BRINE_MISSILE_MULTI   = 264703,
    SPELL_SURGING_RUSH                  = 264101,
    SPELL_UNDERTOW                      = 264144,
    SPELL_GRASP_FROM_THE_DEPTHS         = 264477,
    SPELL_GRASP_FROM_THE_DEPTHS_SUMMON  = 264522,
    SPELL_GRASP_FROM_THE_DEPTHS_ROOT    = 264526,

    SPELL_ERUPTING_WATER                = 264903,
    SPELL_DIMINISH                      = 264899,

    SPELL_EMERGE_VISUAL                 = 274948,

    NPC_AQUALING                        = 134828,

    PHASE_NORMAL                        = 1,
    PHASE_AQUALINGS                     = 2,
};

// from sniffs and videos
static Position const platformPoints[8] =
{
    { 3954.12f, -1250.46f, 127.809f },
    { 3949.95f, -1228.69f, 127.901f },
    { 3920.58f, -1258.02f, 128.144f },
    { 3915.61f, -1235.96f, 128.120f },
    { 3940.30f, -1260.54f, 128.129f },
    { 3954.01f, -1239.36f, 127.751f },
    { 3939.58f, -1221.45f, 128.424f },
    { 3925.66f, -1225.16f, 128.356f }
};

class AquasirrBase : public BossAI
{
public:
    AquasirrBase(Creature* creature, uint32 bossId) : BossAI(creature, bossId)
    {
        lastPlatformPoint = 0;
    }

    uint32 lastPlatformPoint;

    void ScheduleTasks() override
    {
        damageEvents.ScheduleEventBelowHealthPct(SPELL_ERUPTING_WATER, 50);
        if (IsHeroic() || IsMythic())
            events.ScheduleEvent(SPELL_GRASP_FROM_THE_DEPTHS, 15s, PHASE_NORMAL);
        ScheduleCombatSpells();
    }

    void ScheduleCombatSpells()
    {
        events.ScheduleEvent(SPELL_CHOKING_BRINE, 11s, PHASE_NORMAL);
        events.ScheduleEvent(SPELL_SURGING_RUSH, 17s, PHASE_NORMAL);
        events.ScheduleEvent(SPELL_UNDERTOW, 30s, PHASE_NORMAL);
        events.ScheduleEvent(SPELL_SEA_BLAST, 2s, PHASE_NORMAL);
    }

    void GenerateRandomPlatformPointId()
    {
        std::list<uint32> points;
        for (uint32 i = 0; i < 8; ++i)
        {
            if (i == lastPlatformPoint)
                continue;
            if (me->GetDistance(platformPoints[i]) > 5.0f) // skip nearest side points
                points.emplace_back(i);
        }

        lastPlatformPoint = Trinity::Containers::SelectRandomContainerElement(points);
    }

    uint32 GetData(uint32 type) const override
    {
        return lastPlatformPoint;
    }

    void Reset() override
    {
        BossAI::Reset();
        SetCombatMovement(false);
    }

    void MovementInform(uint32 type, uint32 id) override
    {
        if (type == POINT_MOTION_TYPE)
            if (id == EVENT_CHARGE)
            {
                events.DelayEvents(2000, PHASE_NORMAL);
                me->GetScheduler().Schedule(1s, [this](TaskContext context)
                {
                    me->RemoveAurasDueToSpell(SPELL_SURGING_RUSH);
                    DoCastSelf(SPELL_EMERGE_VISUAL);
                });
            }
    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim())
            return;

        events.Update(diff);

        if (me->HasUnitState(UNIT_STATE_CASTING) || me->HasAura(SPELL_SURGING_RUSH))
            return;

        while (uint32 eventId = events.ExecuteEvent())
        {
            ExecuteEvent(eventId);
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;
        }

        DoMeleeAttackIfReady();
    }

    void EnterEvadeMode(EvadeReason why) override
    {
        _DespawnAtEvade(30);
        BossAI::EnterEvadeMode(why);
    }

    void ExecuteEvent(uint32 eventId) override
    {
        switch (eventId)
        {
        case SPELL_CHOKING_BRINE:
            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true, -SPELL_CHOKING_BRINE))
                DoCast(target, SPELL_CHOKING_BRINE);
            events.Repeat(10s);
            break;
        case SPELL_SURGING_RUSH:
            GenerateRandomPlatformPointId();
            if (Unit* victim = me->GetVictim())
                me->CastSpellWithOrientation(victim, SPELL_SURGING_RUSH, false, me->GetAngle(platformPoints[lastPlatformPoint]));
            events.Repeat(17s);
            break;
        case SPELL_UNDERTOW:
            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true, -SPELL_UNDERTOW))
                DoCast(target, SPELL_UNDERTOW);
            events.Repeat(13s);
            break;
        case SPELL_ERUPTING_WATER:
            me->CastStop();
            events.CancelEventGroup(PHASE_NORMAL);
            DoCastSelf(SPELL_ERUPTING_WATER);
            break;
        case SPELL_SEA_BLAST:
            for (auto threat : me->getThreatManager().getThreatList())
            {
                if (me->IsWithinMeleeRange(threat->getTarget()))
                {
                    events.Repeat(2s);
                    return;
                }
            }
            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM))
                DoCast(target, SPELL_SEA_BLAST);

            events.Repeat(2s);
            break;
        case SPELL_GRASP_FROM_THE_DEPTHS:
            DoCastSelf(SPELL_GRASP_FROM_THE_DEPTHS);
            events.Repeat(15s);
            break;
        }
    }
};

// 134056
struct boss_aquasirr : public AquasirrBase
{
    boss_aquasirr(Creature* creature) : AquasirrBase(creature, DATA_AQUSIRR)
    {
        me->SetReactState(REACT_PASSIVE);
        me->SetVisible(false);
        aqualingKillCount = 0;
    }

    uint32 aqualingKillCount;

    void SetData(uint32 type, uint32 data) override
    {
        ++aqualingKillCount;
        if (aqualingKillCount >= 3)
        {
            me->RemoveAurasDueToSpell(SPELL_ERUPTING_WATER);
            me->SetHealth(me->CountPctFromMaxHealth(15));
            ScheduleCombatSpells();
            if (IsHeroic() || IsMythic())
                events.ScheduleEvent(SPELL_GRASP_FROM_THE_DEPTHS, 15s, PHASE_NORMAL);
        }
    }

    void Reset() override
    {
        aqualingKillCount = 0;
        AquasirrBase::Reset();
    }
};

// 134828
struct npc_aqualing : public AquasirrBase
{
    npc_aqualing(Creature* creature) : AquasirrBase(creature, DATA_AQUALING) { }

    void Reset() override
    {
        AquasirrBase::Reset();
        me->SetBoundingRadius(3.84367f); // sniffed, using same model as boss, with smaller bounding
        me->SetCombatReach(7.5f); // sniffed, using same model as boss, with smaller combatreach
        DoCastSelf(SPELL_DIMINISH);
    }

    void ScheduleTasks() override
    {
        ScheduleCombatSpells();
    }

    void JustDied(Unit* killer) override
    {
        //AquasirrBase::JustDied(killer);
        if (Creature* boss = instance->GetCreature(NPC_AQUSIRR))
            boss->AI()->SetData(0, 0);
    }
};

 //Spell 264144
// AT 17427
struct at_aquasirr_undertow : AreaTriggerAI
{
    at_aquasirr_undertow(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    void OnUnitEnter(Unit* unit) override
    {
        if (unit->HasAura(SPELL_UNDERTOW, at->GetCasterGuid()))
            unit->ApplyMovementForce(at->GetGUID(), *at->GetCaster(), -5.f, 0);
    }

    void OnUnitExit(Unit* unit) override
    {
        unit->RemoveMovementForce(at->GetGUID());
    }
};


// 264101 - Surging Rush
class spell_surging_rush : public AuraScript
{
    PrepareAuraScript(spell_surging_rush);

    void OnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        if (Creature* target = GetTarget()->ToCreature())
        {
            // charge movement must happen after aura apply (sniffed)
            target->GetScheduler().Schedule(1ms, [this](TaskContext context)
            {
                Position pos = platformPoints[GetContextCreature()->AI()->GetData(0)];
                GetContextCreature()->GetMotionMaster()->MoveCharge(pos.GetPositionX(), pos.GetPositionY(), pos.GetPositionZ());
            });
            
        }
    }

    void Register() override
    {
        AfterEffectApply += AuraEffectApplyFn(spell_surging_rush::OnApply, EFFECT_2, SPELL_AURA_TRANSFORM, AURA_EFFECT_HANDLE_REAL);
    }
};

// 264560 Choking Brine
class spell_choking_brine : public AuraScript
{
    PrepareAuraScript(spell_choking_brine);

    void HandleDispel(DispelInfo* dispelInfo)
    {
        if (Unit* owner = GetUnitOwner())
        {
            // from sniffs, 5+1 casts
            for (uint32 i = 0; i < 5; ++i)
                owner->CastSpell(owner, SPELL_CHOKING_BRINE_MISSILE_MULTI, true);
            owner->CastSpell(owner, SPELL_CHOKING_BRINE_MISSILE_SINGLE, true);
        }
    }

    void Register() override
    {
        AfterDispel += AuraDispelFn(spell_choking_brine::HandleDispel);
    }
};

// 264903 - Erupting Waters
class spell_erupting_water : public AuraScript
{
    PrepareAuraScript(spell_erupting_water);

    void OnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        GetTarget()->AddUnitFlag(UNIT_FLAG_NOT_SELECTABLE);
    }

    void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        GetTarget()->RemoveUnitFlag(UNIT_FLAG_NOT_SELECTABLE);
    }

    void Register() override
    {
        AfterEffectApply += AuraEffectApplyFn(spell_erupting_water::OnApply, EFFECT_0, SPELL_AURA_MOD_STUN, AURA_EFFECT_HANDLE_REAL);
        AfterEffectRemove += AuraEffectRemoveFn(spell_erupting_water::OnRemove, EFFECT_0, SPELL_AURA_MOD_STUN, AURA_EFFECT_HANDLE_REAL);
    }
};



// 264477 - Grasp from the Depths

class spell_grasp_from_the_depths : public SpellScript
{
    PrepareSpellScript(spell_grasp_from_the_depths);

    void HandleOnHitTarget(SpellEffIndex /* effIndex */)
    {
        if (Unit* target = GetHitUnit())
            target->CastSpell(target, SPELL_GRASP_FROM_THE_DEPTHS_SUMMON, true);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_grasp_from_the_depths::HandleOnHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

// 134612
struct npc_grasp_of_depths : public ScriptedAI
{
    npc_grasp_of_depths(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
        me->SetReactState(REACT_PASSIVE);
        DoCastSelf(SPELL_GRASP_FROM_THE_DEPTHS_ROOT); // targets the summoner player
    }
};

void AddSC_boss_aqusirr()
{
    RegisterCreatureAI(boss_aquasirr);
    RegisterCreatureAI(npc_aqualing);
    RegisterCreatureAI(npc_grasp_of_depths);

    RegisterAreaTriggerAI(at_aquasirr_undertow);
    RegisterAuraScript(spell_surging_rush);
    RegisterAuraScript(spell_choking_brine);
    RegisterAuraScript(spell_erupting_water);
    RegisterSpellScript(spell_grasp_from_the_depths);
}
