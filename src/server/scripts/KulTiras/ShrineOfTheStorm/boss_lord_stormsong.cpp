/*
 * Copyright (C) 2017-2020 WoWLegacy <https://github.com/AshamaneProject>
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
#include "PlayerAI.h"
#include "ScriptMgr.h"
#include "shrine_of_the_storm.h"
#include "SpellAuraEffects.h"

enum Stormsong
{
    SPELL_VOID_BOLT                 = 268347,
    SPELL_MIND_REND                 = 268896,
    SPELL_ANCIENT_MINDBENDER        = 269131,
    SPELL_SURRENDER_TO_THE_VOID     = 269242,

    SPELL_WAKEN_THE_VOID            = 269097,
    SPELL_WAKEN_THE_VOID_MISSILE    = 269021,
    SPELL_WAKEN_THE_VOID_AURA       = 269094,
    SPELL_FIXATE                    = 269103,
    SPELL_EXPLOSIVE_VOID            = 269104,
    SPELL_DISCIPLE_OF_THE_VOLZITH   = 269289,

    EVENT_REGEN_MANA                = 1,
};

class StormsongCharmedPlayerAI : public SimpleCharmedPlayerAI
{
public:
    StormsongCharmedPlayerAI(Player* player) : SimpleCharmedPlayerAI(player) { }

    struct CharmedPlayerTargetSelectPred
    {
        bool operator()(Unit const* target) const
        {
            Player const* pTarget = target->ToPlayer();
            if (!pTarget)
                return false;
            if (pTarget->HasBreakableByDamageCrowdControlAura())
                return false;
            // We _really_ dislike healers. So we hit them in the face. Repeatedly. Exclusively.
            return PlayerAI::IsPlayerHealer(pTarget);
        }
    };

    Unit* SelectAttackTarget() const override
    {
        if (Creature* charmer = GetCharmer())
        {
            if (Unit* target = charmer->AI()->SelectTarget(SELECT_TARGET_RANDOM, 0, CharmedPlayerTargetSelectPred()))
                return target;
        }
        return SimpleCharmedPlayerAI::SelectAttackTarget();
    }

    void OnCharmed(bool apply) override
    {
        SimpleCharmedPlayerAI::OnCharmed(apply);
        if (apply)
        {
            me->RemoveUnitFlag(UNIT_FLAG_PVP_ATTACKABLE);
        }
        else
        {
            me->AddUnitFlag(UNIT_FLAG_PVP_ATTACKABLE);
        }
    }

    void UpdateAI(const uint32 diff) override
    {
        Creature* charmer = GetCharmer();
        if (!charmer)
            return;

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        if (charmer->IsInCombat())
        {
            Unit* target = me->GetVictim();
            if (!target || !charmer->IsValidAttackTarget(target) || target->HasBreakableByDamageCrowdControlAura())
            {
                target = SelectAttackTarget();
                if (!target)
                    return;

                AttackStart(target);
            }

            DoAutoAttackIfReady();
        }
    }
};

// 134063
struct boss_lord_stormsong : public BossAI
{
    boss_lord_stormsong(Creature* creature) : BossAI(creature, DATA_LORD_STORMSONG) { }

    void ScheduleTasks() override
    {
        events.ScheduleEvent(EVENT_REGEN_MANA, 1s);
        events.ScheduleEvent(SPELL_VOID_BOLT, 7s);
        events.ScheduleEvent(SPELL_WAKEN_THE_VOID, 13s);
        if (IsHeroic() || IsMythic())
            events.ScheduleEvent(SPELL_MIND_REND, 16s);
    }

    void EnterEvadeMode(EvadeReason why) override
    {
        std::list<Creature*> cList = me->FindNearestCreatures(NPC_AWOKEN_VOID, 100.0f);
        for (Creature* orb : cList)
            orb->DespawnOrUnsummon();
        _DespawnAtEvade(30);
        BossAI::EnterEvadeMode(why);
    }

    void JustDied(Unit* killer) override
    {
        BossAI::JustDied(killer);
        std::list<Creature*> cList = me->FindNearestCreatures(NPC_AWOKEN_VOID, 100.0f);
        for (Creature* orb : cList)
            orb->DespawnOrUnsummon();
    }

    void Reset() override
    {
        BossAI::Reset();
        me->SetPower(POWER_MANA, 55000);
        me->AddUnitState(UNIT_STATE_IGNORE_PATHFINDING); // map is bugged, has los and movement issues
    }

    void OnPowerChanged(Powers power, int32 /*oldValue*/, int32& newValue) override
    {
        if (power != POWER_MANA || newValue < me->GetMaxPower(POWER_MANA) || !me->IsInCombat())
            return;
        events.ScheduleEvent(SPELL_ANCIENT_MINDBENDER, 0s);
    }

    void EnterCombat(Unit* unit) override
    {
        BossAI::EnterCombat(unit);
        me->SetPower(POWER_MANA, 55000);
    }

    void ExecuteEvent(uint32 eventId) override
    {
        switch (eventId)
        {
        case SPELL_ANCIENT_MINDBENDER:
            DoCastSelf(SPELL_ANCIENT_MINDBENDER);
            break;
        case EVENT_REGEN_MANA:
            me->ModifyPower(POWER_MANA, me->GetMaxPower(POWER_MANA) * 0.025f);
            events.Repeat(1s);
            break;
        case SPELL_VOID_BOLT:
            DoCastVictim(SPELL_VOID_BOLT);
            events.Repeat(7s);
            break;
        case SPELL_WAKEN_THE_VOID:
            DoCastSelf(SPELL_WAKEN_THE_VOID);
            events.Repeat(27s);
            break;
        case SPELL_MIND_REND:
            DoCastSelf(SPELL_MIND_REND);
            events.Repeat(11s);
            break;
        }
    }

    PlayerAI* GetAIForCharmedPlayer(Player* player) override
    {
        return new StormsongCharmedPlayerAI(player);
    }
};

// 278010 - Dark Water
class spell_dark_water : public AuraScript
{
    PrepareAuraScript(spell_dark_water);

    void HandlePeriodicTick(AuraEffect const* aurEff)
    {
        GetCaster()->CastSpell(GetCaster(), aurEff->GetAmount(), true);
    }

    void Register() override
    {
        OnEffectPeriodic += AuraEffectPeriodicFn(spell_dark_water::HandlePeriodicTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
    }
};

// 137036
struct npc_awoken_void : public ScriptedAI
{
    npc_awoken_void(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
        me->AddUnitState(UNIT_STATE_IGNORE_PATHFINDING); // map is bugged, has los and movement issues
        me->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NOT_ATTACKABLE_1));
        me->SetReactState(REACT_PASSIVE);
        me->SetWalk(true);
        me->GetScheduler().Schedule(1ms, [this](TaskContext context) // visual does not display if sent immediately after spawn, wait one tick
        {
            GetContextCreature()->CastSpell(GetContextCreature(), SPELL_WAKEN_THE_VOID_MISSILE, true);
        });
    }

    void UpdateAI(uint32 diff) override
    {
        if (me->isMoving() || !me->HasAura(SPELL_WAKEN_THE_VOID_AURA))
            return;

        if (Player* target = me->SelectNearestPlayer(100.0f))
        {
            me->GetMotionMaster()->MoveFollow(target, 0.0f, 0.0f);
        }
    }
};

// 269021 - Waken the Void
class spell_waken_the_void : public SpellScript
{
    PrepareSpellScript(spell_waken_the_void);

    void HandleHit(SpellEffIndex /*effIndex*/)
    {
        if (Creature* caster = GetCaster()->ToCreature())
        {
            caster->CastSpell(caster, SPELL_WAKEN_THE_VOID_AURA, true);
            caster->ToCreature()->SetReactState(REACT_AGGRESSIVE);
        }
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_waken_the_void::HandleHit, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

// Spell 269094 Waken the Void
// AT 17892
struct at_waken_the_void : AreaTriggerAI
{
    at_waken_the_void(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    void OnUnitEnter(Unit* unit) override
    {
        if (Unit* caster = at->GetCaster())
            if (Creature* orb = caster->ToCreature())
                if (orb->IsValidAttackTarget(unit) || unit->HasAura(SPELL_ANCIENT_MINDBENDER))
                {
                    orb->CastSpell(unit, SPELL_EXPLOSIVE_VOID, true);
                    orb->DespawnOrUnsummon(1); // 1 tick for animation
                }
    }
};

// 269131 Ancient Mindbender
class spell_ancient_mindbender : public SpellScript
{
    PrepareSpellScript(spell_ancient_mindbender);

    bool targetsAlreadySelected;

    bool Load() override
    {
        targetsAlreadySelected = false;
        return true;
    }

    void HandleScript(SpellEffIndex effIndex)
    {
        if (Unit* target = GetHitUnit())
        {
            if (Creature* mind = GetCaster()->SummonCreature(NPC_ANCIENT_MINDBENDER, target->GetPosition()))
                mind->EnterVehicle(target);
            target->CastSpell(target, SPELL_SURRENDER_TO_THE_VOID, false);
        }
    }

    void CorrectTargets(std::list<WorldObject*>& targets)
    {
        if (targets.size() == 1)
        {
            targets.clear(); // for solo play
            return;
        }
        if (Unit* unit = GetCaster())
            if (Creature* caster = unit->ToCreature())
                if (Unit* target = caster->AI()->SelectTarget(SELECT_TARGET_TOPAGGRO, 1))
                {
                    targets.remove_if([target](WorldObject* obj) -> bool
                    {
                        if (obj != target)
                            return true;
                        return false;
                    });
                }
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_ancient_mindbender::HandleScript, EFFECT_11, SPELL_EFFECT_SCRIPT_EFFECT);
        for (uint32 i = 0; i <= 12; ++i)
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_ancient_mindbender::CorrectTargets, EFFECT_0 + i, TARGET_UNIT_SRC_AREA_ENEMY);
    }
};

// 269131 Ancient Mindbender
class spell_ancient_mindbender_aura : public AuraScript
{
    PrepareAuraScript(spell_ancient_mindbender_aura);

    void OnRemove(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
    {
        if (Creature* mind = GetTarget()->FindNearestCreature(137051, 5.0f))
            mind->DespawnOrUnsummon();
    }

    void OnRemoveAll(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
    {
        if (GetTargetApplication()->GetRemoveMode() == AURA_REMOVE_BY_EXPIRE)
        {
            // aura expired after 20secs, charm the player
            GetCaster()->CastSpell(GetTarget(), SPELL_DISCIPLE_OF_THE_VOLZITH, true);
        }
    }

    void OnAbsorb(AuraEffect * /*aurEff*/, DamageInfo& dmgInfo, uint32& absorbAmount)
    {
        absorbAmount = 0; // do not absorb, only use this to calculate aura remove
        if (Player* plr = GetTarget()->ToPlayer())
            if (plr->HealthBelowPctDamaged(50, dmgInfo.GetDamage()))
                Remove();
    }

    void CalculateAmount(AuraEffect const* /*aurEff*/, int32 & amount, bool & /*canBeRecalculated*/)
    {
        amount = -1;
    }

    void Register() override
    {
        AfterEffectRemove += AuraEffectRemoveFn(spell_ancient_mindbender_aura::OnRemove, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB, AURA_EFFECT_HANDLE_REAL);
        OnEffectAbsorb += AuraEffectAbsorbFn(spell_ancient_mindbender_aura::OnAbsorb, EFFECT_0);
        DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_ancient_mindbender_aura::CalculateAmount, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB);
        AfterEffectRemove += AuraEffectRemoveFn(spell_ancient_mindbender_aura::OnRemoveAll, EFFECT_12, SPELL_AURA_MECHANIC_IMMUNITY, AURA_EFFECT_HANDLE_REAL);
    }
};

// 269289 Disciple of the Vol'zith
class spell_disciple_of_the_volzith : public AuraScript
{
    PrepareAuraScript(spell_disciple_of_the_volzith);

    void HandleDummyTick(AuraEffect const* aurEff)
    {
        GetTarget()->CastSpell(GetTarget(), aurEff->GetAmount(), false);
    }

    void Register() override
    {
        OnEffectPeriodic += AuraEffectPeriodicFn(spell_disciple_of_the_volzith::HandleDummyTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
    }
};

void AddSC_boss_lord_stormsong()
{
    RegisterCreatureAI(boss_lord_stormsong);
    RegisterAuraScript(spell_dark_water);
    RegisterCreatureAI(npc_awoken_void);
    RegisterSpellScript(spell_waken_the_void);
    RegisterAreaTriggerAI(at_waken_the_void);
    RegisterSpellAndAuraScriptPair(spell_ancient_mindbender, spell_ancient_mindbender_aura);
    RegisterAuraScript(spell_disciple_of_the_volzith);
}
