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
 
//This boss crash server

#include "PhasingHandler.h"
#include "PlayerAI.h"
#include "SpellAuras.h"
#include "SpellAuraEffects.h"
#include "ScriptMgr.h"
#include "shrine_of_the_storm.h"
#include "InstanceScript.h"

enum Volzith
{
    SPELL_CHANNEL                               = 274175,
    SPELL_VOID_ENERGY_DISABLE_REGEN             = 267255,
    SPELL_VOID_ENERGY_DO_REGEN                  = 267260,

    SPELL_YAWNING_GATE                          = 269399,
    SPELL_TENTACLE_SLAM                         = 267364,
    SPELL_TENTACLE_SLAM_DMG                     = 267385,
    SPELL_WHISPERS_OF_POWER                     = 267034,
    SPELL_WHISPERS_OF_POWER_AURA                = 267037,
    SPELL_OLD_TONGUE                            = 274551,
    SPELL_GRASP_OF_THE_SUNKEN_CITY              = 267360, // target entry 140038
    SPELL_GRASP_OF_THE_SUNKEN_CITY_CHANNEL      = 267444,
    SPELL_GRASP_OF_THE_SUNKEN_CITY_DPS_PHASE    = 267425, // phaseid 10745 need to implement SPELL_AURA_164 - start drowning
    SPELL_GRASP_OF_THE_SUNKEN_CITY_TANK_PHASE   = 267442, // phaseid 10747
    SPELL_CALL_THE_ABYSS                        = 267299,

    NPC_FORGOTTEN_DENIZEN                       = 136297,
    SPELL_THE_SUNKEN_CITY                       = 267524,
    SPELL_CONSUME_ESSENCE                       = 267809,

    NPC_SUNKEN_DENIZEN                          = 136100,
    SPELL_LEVIATHANS_WAKE                       = 267548,

    NPC_TENTACLE                                = 135987,

    DATA_RESET_COUNT                            = 0,
    DATA_FORGOTTEN                              = 1,
    DATA_SUNKEN                                 = 2,

    SPELL_ABYSSAL_ERUPTION_DMG                  = 267310,
    SPELL_ABYSSAL_ERUPTION_ENERGIZE             = 267311,
};

static Position const spawnPoints[3] =
{
    { 3658.659912f, -1715.670044f, 86.080399f },
    { 3603.310059f, -1742.719971f, 85.942200f },
    { 3619.739990f, -1709.180054f, 86.148399f },
};

static Position const manifestSpawnPoints[15] =
{
    { 3675.83f, -1688.60f, 83.4349f },
    { 3656.23f, -1675.91f, 83.8259f },
    { 3636.15f, -1673.52f, 83.3167f },
    { 3621.70f, -1673.33f, 84.4263f },
    { 3611.91f, -1678.02f, 83.5110f },
    { 3593.11f, -1687.05f, 84.3794f },
    { 3575.16f, -1698.99f, 83.5286f },
    { 3570.94f, -1714.89f, 83.6414f },
    { 3570.48f, -1730.42f, 83.3317f },
    { 3576.01f, -1751.30f, 83.4642f },
    { 3581.68f, -1761.81f, 83.5611f },
    { 3594.58f, -1772.18f, 83.6898f },
    { 3610.53f, -1783.90f, 83.6852f },
    { 3624.24f, -1788.61f, 82.8457f },
    { 3635.22f, -1786.49f, 84.6600f },
};

// 134069
struct boss_volzith_the_whisperer : public BossAI
{
    boss_volzith_the_whisperer(Creature* creature) : BossAI(creature, DATA_VOLZITH) { }

    uint32 sunkenDenizensAlive; // phase 10747
    uint32 forgottenDenizensAlive; // phase 10745

    void ScheduleTasks() override
    {
        events.ScheduleEvent(SPELL_YAWNING_GATE, 13s);
        events.ScheduleEvent(SPELL_TENTACLE_SLAM, 7s, 10s);
        events.ScheduleEvent(SPELL_WHISPERS_OF_POWER, 30s, 60s);
    }

    void ClearPhaseAuras()
    {
        instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_GRASP_OF_THE_SUNKEN_CITY_DPS_PHASE);
        instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_GRASP_OF_THE_SUNKEN_CITY_TANK_PHASE);
    }

    void EnterEvadeMode(EvadeReason why) override
    {
        std::list<Creature*> cList = me->FindNearestCreatures(NPC_TENTACLE, 100.0f);
        for (Creature* orb : cList)
            orb->DespawnOrUnsummon();
        _DespawnAtEvade(2); // DEBUG
        BossAI::EnterEvadeMode(why);
        ClearPhaseAuras();
    }

    void JustDied(Unit* killer) override
    {
        BossAI::JustDied(killer);
        ClearPhaseAuras(); // should not have auras in normal gameplay, only if gm killed the boss while players where phased
        
        std::list<Player*> list;
        me->GetPlayerListInGrid(list, 250.0f);
        for (Player* plr : list)
        if (plr->HasQuest(50825))
            plr->ForceCompleteQuest(50825);
    }

    void Reset() override
    {
        BossAI::Reset();
        me->SetPowerType(POWER_ENERGY);
        DoCastSelf(SPELL_VOID_ENERGY_DISABLE_REGEN);
        DoCastSelf(SPELL_CHANNEL);
        me->SetPower(POWER_ENERGY, 60);
        sunkenDenizensAlive = 0;
        forgottenDenizensAlive = 0;
    }

    void SetData(uint32 type, uint32 data) override
    {
        switch (type)
        {
        case DATA_RESET_COUNT:
            sunkenDenizensAlive = 1;
            forgottenDenizensAlive = 2;
            return;
        case DATA_FORGOTTEN: forgottenDenizensAlive--; break; // phase 10745
        case DATA_SUNKEN: sunkenDenizensAlive--; break; // phase 10747
        }

        // move players into or out of phases

        uint32 newPhase = 0; // if all spawns are dead switch to boss phase
        if (!forgottenDenizensAlive && sunkenDenizensAlive)
            newPhase = 10747;
        else if (forgottenDenizensAlive && !sunkenDenizensAlive)
            newPhase = 10745;
        else if (forgottenDenizensAlive && sunkenDenizensAlive)
            return;


        Map::PlayerList const& players = instance->instance->GetPlayers();
        for (Map::PlayerList::const_iterator i = players.begin(); i != players.end(); ++i)
        {
            if (Player* player = i->GetSource())
            {
                if (player->IsAlive())
                {
                    if (newPhase == 10745 && !player->HasAura(SPELL_GRASP_OF_THE_SUNKEN_CITY_DPS_PHASE))
                        player->CastSpell(player, SPELL_GRASP_OF_THE_SUNKEN_CITY_DPS_PHASE, true);
                    if (newPhase == 10747 && !player->HasAura(SPELL_GRASP_OF_THE_SUNKEN_CITY_TANK_PHASE))
                        player->CastSpell(player, SPELL_GRASP_OF_THE_SUNKEN_CITY_TANK_PHASE, true);
                    if (newPhase != 10745)
                        player->RemoveAurasDueToSpell(SPELL_GRASP_OF_THE_SUNKEN_CITY_DPS_PHASE);
                    if (newPhase != 10747)
                        player->RemoveAurasDueToSpell(SPELL_GRASP_OF_THE_SUNKEN_CITY_TANK_PHASE);
                }
            }
        }

        if (!forgottenDenizensAlive && !sunkenDenizensAlive)
        {
            me->RemoveAurasDueToSpell(SPELL_GRASP_OF_THE_SUNKEN_CITY_CHANNEL);
            events.RescheduleEvent(SPELL_YAWNING_GATE, 16s);

            if (IsHeroic() || IsMythic())
                events.ScheduleEvent(SPELL_CALL_THE_ABYSS, 5s);
        }
    }

    void OnPowerChanged(Powers power, int32 /*oldValue*/, int32& newValue) override
    {
        if (power != POWER_ENERGY || newValue < me->GetMaxPower(POWER_ENERGY) || !me->IsInCombat())
            return;

        me->RemoveAurasDueToSpell(SPELL_VOID_ENERGY_DO_REGEN);
        events.ScheduleEvent(SPELL_GRASP_OF_THE_SUNKEN_CITY, 0s);
    }

    void EnterCombat(Unit* unit) override
    {
        BossAI::EnterCombat(unit);
        me->RemoveAurasDueToSpell(SPELL_CHANNEL);
        DoCastSelf(SPELL_VOID_ENERGY_DO_REGEN);
    }

    void UpdateAI(uint32 diff) override
    {
        if (me->HasAura(SPELL_GRASP_OF_THE_SUNKEN_CITY_CHANNEL))
        {
            bool alive = false;
            Map::PlayerList const& players = instance->instance->GetPlayers();
            for (Map::PlayerList::const_iterator i = players.begin(); i != players.end(); ++i)
            {
                if (Player* player = i->GetSource())
                    if (player->IsAlive())
                    {
                        alive = true;
                        break;
                    }
            }
            if (!alive)
                EnterEvadeMode(EVADE_REASON_NO_HOSTILES);
            return;
        }
        if (!UpdateVictim())
            return;

        events.Update(diff);

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        while (uint32 eventId = events.ExecuteEvent())
        {
            ExecuteEvent(eventId);
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;
        }

        DoMeleeAttackIfReady();
    }

    struct healerTargetSelectPred
    {
        bool operator()(Unit const* target) const
        {
            Player const* pTarget = target->ToPlayer();
            if (!pTarget)
                return false;
            return PlayerAI::IsPlayerHealer(pTarget);
        }
    };

    void ExecuteEvent(uint32 eventId) override
    {
        switch (eventId)
        {
        case SPELL_CALL_THE_ABYSS:
            DoCastSelf(SPELL_CALL_THE_ABYSS);
            break;
        case SPELL_WHISPERS_OF_POWER:
            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, healerTargetSelectPred()))
                DoCast(target, SPELL_WHISPERS_OF_POWER);
            events.Repeat(30s, 60s);
            break;
        case SPELL_GRASP_OF_THE_SUNKEN_CITY:
            DoCastSelf(SPELL_GRASP_OF_THE_SUNKEN_CITY);
            break;
        case SPELL_YAWNING_GATE:
            DoCastSelf(SPELL_YAWNING_GATE);
            events.Repeat(21s);
            break;
        case SPELL_TENTACLE_SLAM:
            DoCastSelf(SPELL_TENTACLE_SLAM);
            events.Repeat(7s, 10s);
            break;
        }
    }
};

// 267364 Tentacle Slam
class spell_tentacle_slam : public SpellScript
{
    PrepareSpellScript(spell_tentacle_slam);

    void HandleHit(SpellEffIndex /*effIndex*/)
    {
        if (Unit* target = GetHitUnit())
        {
            target->CastSpell(target, GetEffectValue() , true);
        }
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_tentacle_slam::HandleHit, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

// 267444 Grasp of the Sunken City
class spell_grasp_of_the_sunken_city_channel : public AuraScript
{
    PrepareAuraScript(spell_grasp_of_the_sunken_city_channel);

    void OnRemove(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
    {
        if (Creature* me = GetTarget()->ToCreature())
            me->CastSpell(me, SPELL_VOID_ENERGY_DO_REGEN, true);
    }

    void OnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        if (Creature* me = GetTarget()->ToCreature())
        {
            if (Creature* summon = me->SummonCreature(NPC_FORGOTTEN_DENIZEN, spawnPoints[0], TEMPSUMMON_CORPSE_DESPAWN))
                PhasingHandler::AddPhase(summon, 10745, true);
            if (Creature* summon = me->SummonCreature(NPC_FORGOTTEN_DENIZEN, spawnPoints[1], TEMPSUMMON_CORPSE_DESPAWN))
                PhasingHandler::AddPhase(summon, 10745, true);
            if (Creature* summon = me->SummonCreature(NPC_SUNKEN_DENIZEN, spawnPoints[2], TEMPSUMMON_CORPSE_DESPAWN))
                PhasingHandler::AddPhase(summon, 10747, true);
            me->AI()->SetData(DATA_RESET_COUNT, 0);
            me->CastSpell(me, SPELL_OLD_TONGUE, true);
        }
    }

    void CalculateAmount(AuraEffect const* /*aurEff*/, int32 & amount, bool & /*canBeRecalculated*/)
    {
        amount = -1; // fully absorb damage while players are phased so damage does not cancel the channelling
    }

    void Register() override
    {
        AfterEffectRemove += AuraEffectRemoveFn(spell_grasp_of_the_sunken_city_channel::OnRemove, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB, AURA_EFFECT_HANDLE_REAL);
        OnEffectApply += AuraEffectApplyFn(spell_grasp_of_the_sunken_city_channel::OnApply, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB, AURA_EFFECT_HANDLE_REAL);
        DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_grasp_of_the_sunken_city_channel::CalculateAmount, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB);
    }
};

// 135987
struct npc_tentacle : public ScriptedAI
{
    npc_tentacle(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
        me->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_ATTACKABLE_1));
        SetCombatMovement(false);
        me->SetReactState(REACT_PASSIVE);
        me->GetScheduler().Schedule(2s, [this](TaskContext context)
        {
            GetContextCreature()->CastSpell(GetContextCreature(), SPELL_TENTACLE_SLAM_DMG, false); // 1 cast / spawn, don't repeat
        });
    }
};

// 267037 Whispers of Power
class spell_whispers_of_power_debuff : public AuraScript
{
    PrepareAuraScript(spell_whispers_of_power_debuff);

    void AfterApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        GetAura()->GetEffect(EFFECT_2)->SetAmount(100 - GetAura()->GetStackAmount() * 10);
    }
    
    void HandleAbsorb(AuraEffect* aurEff, HealInfo& healInfo, uint32& absorbAmount)
    {
        uint32 heal = healInfo.GetHeal();
        int32 maxPct = GetAura()->GetEffect(EFFECT_2)->GetAmount();
        uint64 maxHp = GetTarget()->GetMaxHealth() * maxPct / 100;
        uint64 hp = GetTarget()->GetHealth();
        uint64 maxHeal = maxHp - hp;

        if (hp >= maxHp)
            absorbAmount = heal;
        else if (heal >= maxHeal)
            absorbAmount = heal - maxHeal;
        else
            absorbAmount = 0;
    }
    
    void CalculateAmount(AuraEffect const* aurEff, int32 & amount, bool & /*canBeRecalculated*/)
    {
        amount = -1;
    }

    void Register() override
    {
        OnEffectHealAbsorb += AuraEffectHealAbsorbFn(spell_whispers_of_power_debuff::HandleAbsorb, EFFECT_4);
        AfterEffectApply += AuraEffectApplyFn(spell_whispers_of_power_debuff::AfterApply, EFFECT_2, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL_OR_REAPPLY_MASK);
        DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_whispers_of_power_debuff::CalculateAmount, EFFECT_4, SPELL_AURA_SCHOOL_HEAL_ABSORB);
    }
};

// 274551 Old Tongue
class spell_old_tongue : public SpellScript
{
    PrepareSpellScript(spell_old_tongue);

    void HandleHit(SpellEffIndex /*effIndex*/)
    {
        if (Player* target = GetHitPlayer())
        {
            switch (target->GetRoleForGroup())
            {
            case ROLE_DAMAGE:
                target->AddAura(SPELL_GRASP_OF_THE_SUNKEN_CITY_DPS_PHASE, target);
                break;
            default: // tank or heal
                target->AddAura(SPELL_GRASP_OF_THE_SUNKEN_CITY_TANK_PHASE, target);
                break;
            }
        }
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_old_tongue::HandleHit, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

// 136297
struct npc_forgotten_denizen : public ScriptedAI
{
    npc_forgotten_denizen(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
        DoCastSelf(SPELL_THE_SUNKEN_CITY, true);
        events.ScheduleEvent(SPELL_CONSUME_ESSENCE, 5s);
    }

    void ExecuteEvent(uint32 eventId) override
    {
        switch (eventId)
        {
        case SPELL_CONSUME_ESSENCE:
            DoCastSelf(SPELL_CONSUME_ESSENCE);
            events.Repeat(16s);
            break;
        }
    }

    void JustDied(Unit* killer) override
    {
        ScriptedAI::JustDied(killer);
        if (Creature* volzith = instance->GetCreature(NPC_VOLZITH_THE_WHISPERER))
            volzith->AI()->SetData(DATA_FORGOTTEN, 0);
    }
};

// 136100
struct npc_sunken_denizen : public ScriptedAI
{
    npc_sunken_denizen(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
        DoCastSelf(SPELL_LEVIATHANS_WAKE, true);
        me->SetSpeedRate(MOVE_RUN, 0.5f);
    }

    void JustDied(Unit* killer) override
    {
        ScriptedAI::JustDied(killer);
        if (Creature* volzith = instance->GetCreature(NPC_VOLZITH_THE_WHISPERER))
            volzith->AI()->SetData(DATA_SUNKEN, 0);
    }
};

// 267034 Whispers of Power
class spell_whispers_of_power : public AuraScript
{
    PrepareAuraScript(spell_whispers_of_power);

    void HandleDummyTick(AuraEffect const* aurEff)
    {
        GetTarget()->CastSpell(GetTarget(), SPELL_WHISPERS_OF_POWER_AURA, true);
    }

    void Register() override
    {
        OnEffectPeriodic += AuraEffectPeriodicFn(spell_whispers_of_power::HandleDummyTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
    }
};

// 267304 Call the Abyss
class spell_call_the_abyss : public SpellScript
{
    PrepareSpellScript(spell_call_the_abyss);

    void OnHit(SpellEffIndex /*effIndex*/)
    {
        Position const dest = manifestSpawnPoints[urand(0, 15)];
        GetCaster()->CastSpell(dest, GetEffectValue(), true);
    }

    void Register() override
    {
        OnEffectHit += SpellEffectFn(spell_call_the_abyss::OnHit, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

// 135903
struct npc_manifestation_of_the_deep : public ScriptedAI
{
    npc_manifestation_of_the_deep(Creature* creature) : ScriptedAI(creature) {}

    uint32 timer;

    void Reset() override
    {
        me->SetReactState(REACT_PASSIVE);
        timer = 0;
        me->SetSpeedRate(MOVE_RUN, 0.5f);
    }

    void UpdateAI(uint32 diff) override
    {
        if (timer <= diff)
        {
            timer = 1000;
            if (Creature* volzith = instance->GetCreature(NPC_VOLZITH_THE_WHISPERER))
            {
                if (me->GetDistance(volzith) <= 1.0f)
                {
                    DoCastSelf(SPELL_ABYSSAL_ERUPTION_ENERGIZE);
                    DoCastSelf(SPELL_ABYSSAL_ERUPTION_DMG);
                    me->DespawnOrUnsummon(1); // delay for spell visuals
                    return;
                }
                if (!me->isMoving())
                    if (Creature* volzith = instance->GetCreature(NPC_VOLZITH_THE_WHISPERER))
                        me->GetMotionMaster()->MoveChase(volzith);
            }
        }
        else timer -= diff;
    }
};

void AddSC_boss_volzith_the_whisperer()
{
    RegisterCreatureAI(boss_volzith_the_whisperer);
    RegisterSpellScript(spell_tentacle_slam);
    RegisterAuraScript(spell_grasp_of_the_sunken_city_channel);
    RegisterCreatureAI(npc_tentacle);
    RegisterAuraScript(spell_whispers_of_power_debuff);
    RegisterSpellScript(spell_old_tongue);
    RegisterCreatureAI(npc_forgotten_denizen);
    RegisterCreatureAI(npc_sunken_denizen);
    RegisterAuraScript(spell_whispers_of_power);
    RegisterSpellScript(spell_call_the_abyss);
    RegisterCreatureAI(npc_manifestation_of_the_deep);
}
