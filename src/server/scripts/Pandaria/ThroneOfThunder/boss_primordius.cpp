/*
 * Copyright (C) 2020 LatinCoreTeam
 * Copyright (C) Thordekk
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

#include "throne_of_thunder.h"
#include "ObjectAccessor.h"
#include "Player.h"
#include "ScriptedEscortAI.h"
#include "ScriptedGossip.h"
#include "TemporarySummon.h"
#include "ScriptMgr.h"
#include "GameObject.h"
#include "MotionMaster.h"

enum eSpells
{
    SPELL_ZERO_POWER = 96301,

    // 137064 intro cosmetic
    SPELL_PRIMORDIAL_STRIKE = 136037,

    SPELL_MALFORMED_BLOOD = 136050,

    SPELL_MUTATED_ABOMINATION = 140544,

    SPELL_EVOLUTION = 139144,

    /// Auras added when Primordius Evolution gains 1 stack
    SPELL_VENTRAL_SACS = 136210,
    SPELL_VENTRAL_SACS_DMG = 136211,

    SPELL_GAS_BLADDER = 136215,
    SPELL_CAUSTIC_GAS = 136216,

    SPELL_ACIDIC_SPINES = 136218, // Triggers Acidic Explosion
    SPELL_ACIDIC_EXPLOSION_AOE = 136856,
    SPELL_ACIDIC_EXPLOSION_MISSILE = 136219,
    SPELL_ACIDIC_EXPLOSION_DMG = 136220,

    SPELL_PATHOGEN_GLANDS = 136225,
    SPELL_VOLATILE_PATHOGEN = 136228,
    SPELL_VOLATILE_PATHOGEN_DMG = 136231,

    SPELL_METABOLIC_BOOST = 136245,

    SPELL_ERUPTING_PUSTULES = 136246,
    SPELL_PUSTULE_ERUPTION_SCRIPT = 140499, // ?
    SPELL_PUSTULE_ERUPTION_MISSILE_1 = 136248, // at targetted enemy
    SPELL_PUSTULE_ERUPTION_MISSILE_2 = 136249, // at random location
    SPELL_PUSTULE_ERUPTION_DMG = 136247,

    SPELL_MUTATE_PRIMORDIUS_1 = 136203, // from living fluid
    SPELL_MUTATE_PRIMORDIUS_2 = 137060, // from mutagenic pool
    SPELL_VOLATILE_MUTATE_PRIMORDIUS = 140509, // from volatile pool

    SPELL_MUTAGENIC_POOL = 136049,

    SPELL_VOLATILE_POOL = 140506,
    SPELL_VOLATILE_MUTATION_AURA = 141094,
    SPELL_VOLATILE_MUTATION_DMG = 140508,

    SPELL_MUTATION = 136178,

    /// Benefic/Nephasts auras added when adds die
    SPELL_THICK_BONES = 136184,
    SPELL_FRAGULES_BONES = 136185,
    SPELL_CLEAR_MIND = 136186,
    SPELL_CLOUDED_MIND = 136187,
    SPELL_IMPROVED_SYNAPSES = 136182,
    SPELL_DULLED_SYNAPSES = 136183,
    SPELL_KEEN_EYESIGHT = 136180,
    SPELL_IMPAIRED_EYESIGHT = 136181,

    /// Saurok transformation
    SPELL_FULLY_MUTATED = 140546,
    SPELL_FULLY_MUTATED_2 = 140706,

    /// Heroic Mode
    SPELL_DEADLY_MUTAGEN = 136995,
    SPELL_BLACK_BLOOD = 137000
};

enum Adds
{
    NPC_VISCOUS_HORROR = 69070,
};

enum eEvents
{
    EVENT_PRIMORDIAL_STRIKE = 1,
    EVENT_MALFORMED_BLOOD,
    EVENT_SUMMON_LIVING_FLUID,
    EVENT_VOLATIL_CHECK,
    EVENT_VISCOUS_HORROR,
    EVENT_BLACK_BLOOD,
    EVENT_REGENERATE_ENERGY,
    EVENT_CHECK_PRIMORDIUS,

    EVENT_VOLATILE_PATHOGEN,
};

enum eTalks
{
    TALK_INTRO_01,
    TALK_INTRO_02,
    TALK_INTRO_03,
    TALK_INTRO_04,
    TALK_AGGRO,
    TALK_EVOLUTION,
    TALK_SLAY,
    TALK_DEATH
};

#define INVIBLE_DISPLAY 11686

#define MAX_EVOLUTION_AURAS 6
const uint32 evolutionAuras[MAX_EVOLUTION_AURAS] =
{
    SPELL_VENTRAL_SACS,
    SPELL_GAS_BLADDER,
    SPELL_ACIDIC_SPINES,
    SPELL_PATHOGEN_GLANDS,
    SPELL_METABOLIC_BOOST,
    SPELL_ERUPTING_PUSTULES
};

uint32 beneficAuras[4] =
{
    SPELL_THICK_BONES,
    SPELL_CLEAR_MIND,
    SPELL_IMPROVED_SYNAPSES,
    SPELL_KEEN_EYESIGHT
};

uint32 nephastAuras[4] =
{
    SPELL_FRAGULES_BONES,
    SPELL_CLOUDED_MIND,
    SPELL_DULLED_SYNAPSES,
    SPELL_IMPAIRED_EYESIGHT
};

Position gSpawnPositions[10] =
{
    { 5623.743f, 4599.775f, 55.366f, 2.011344f }, /// GOB_FIRST_MOGU_BLOOD_VAT
    { 5646.376f, 4624.545f, 55.365f, 2.612180f }, /// GOB_SECOND_MOGU_BLOOD_VAT
    { 5655.994f, 4656.011f, 55.366f, 3.118759f }, /// GOB_THIRD_MOGU_BLOOD_VAT
    { 5646.648f, 4687.429f, 55.366f, 3.703888f }, /// GOB_FOURTH_MOGU_BLOOD_VAT
    { 5624.318f, 4712.191f, 55.367f, 4.105229f }, /// GOB_FIFTH_MOGU_BLOOD_VAT
    { 5561.621f, 4710.213f, 55.365f, 5.206335f }, /// GOB_SIXTH_MOGU_BLOOD_VAT
    { 5537.327f, 4688.097f, 55.366f, 5.811091f }, /// GOB_SEVENTH_MOGU_BLOOD_VAT
    { 5529.932f, 4656.286f, 55.369f, 6.223429f }, /// GOB_EIGHTH_MOGU_BLOOD_VAT
    { 5536.340f, 4624.192f, 55.367f, 0.484527f }, /// GOB_NINTH_MOGU_BLOOD_VAT
    { 5560.005f, 4600.493f, 55.366f, 1.068864f }  /// GOB_TENTH_MOGU_BLOOD_VAT
};

#define MAX_POWER 60

/// Primordius - 69017
class boss_primordius : public CreatureScript
{
public:
    boss_primordius() : CreatureScript("boss_primordius") { }

    CreatureAI* GetAI(Creature* p_Creature) const
    {
        return new boss_primordiusAI(p_Creature);
    }

    struct boss_primordiusAI : public BossAI
    {
        boss_primordiusAI(Creature* p_Creature) : BossAI(p_Creature, DATA_PRIMORDIUS)
        {
            me->setActive(true);
        }

        void Reset()
        {
            _Reset();

            for (uint8 l_Index = 0; l_Index < 10; l_Index++)
            {

                instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);

            }
        }

            void MoveInLineOfSight(Unit* who)
        {
            if (!m_IntroDone && who->GetTypeId() == TYPEID_PLAYER && who->GetDistance(me) <= 60.f)
            {
                m_IntroDone = true;
                Talk(TALK_INTRO_01);
            }

            BossAI::MoveInLineOfSight(who);
        }

        void EnterCombat(Unit* /*p_Who*/)
        {
            Talk(TALK_AGGRO);

            events.ScheduleEvent(EVENT_PRIMORDIAL_STRIKE, 6000);
            events.ScheduleEvent(EVENT_MALFORMED_BLOOD, 7000);
            events.ScheduleEvent(EVENT_SUMMON_LIVING_FLUID, 5000);
            events.ScheduleEvent(EVENT_REGENERATE_ENERGY, 2000);

            if (IsHeroic())
                events.ScheduleEvent(EVENT_VISCOUS_HORROR, 30000);

            InitPowers();

            me->AddAura(SPELL_MUTATED_ABOMINATION, me);

            instance->SetBossState(DATA_PRIMORDIUS, IN_PROGRESS);
            DoZoneInCombat();
        }

        void KilledUnit(Unit* p_Victim)
        {
            if (p_Victim->GetTypeId() == TYPEID_PLAYER)
                Talk(TALK_SLAY);
        }

        void JustDied(Unit* /*p_Killer*/)
        {
            Talk(TALK_DEATH);

            _JustDied();

            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void UpdateAI(const uint32 p_Diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(p_Diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_REGENERATE_ENERGY:
                {
                    RegenerateEnergy();
                    events.ScheduleEvent(EVENT_REGENERATE_ENERGY, 2000);
                    break;
                }
                case EVENT_PRIMORDIAL_STRIKE:
                    DoCastVictim(SPELL_PRIMORDIAL_STRIKE);
                    events.ScheduleEvent(EVENT_PRIMORDIAL_STRIKE, TryToBoostCooldown(24000));
                    break;
                case EVENT_MALFORMED_BLOOD:
                    DoCastVictim(SPELL_MALFORMED_BLOOD);
                    events.ScheduleEvent(EVENT_MALFORMED_BLOOD, TryToBoostCooldown(20000));
                    break;
                case EVENT_SUMMON_LIVING_FLUID:
                    for (uint8 l_Index = 0; l_Index <= 10; l_Index++)
                        me->SummonCreature(NPC_LIVING_FLUID, gSpawnPositions[l_Index]);
                    //me->SummonCreature(NPC_LIVING_FLUID, gSpawnPositions[0]);
                    events.ScheduleEvent(EVENT_SUMMON_LIVING_FLUID, 15000);
                    break;
                case EVENT_VISCOUS_HORROR:
                    me->SummonCreature(NPC_VISCOUS_HORROR, gSpawnPositions[urand(0, 9)]);
                    break;
                case EVENT_VOLATILE_PATHOGEN:
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true))
                    {
                        DoCast(target, SPELL_VOLATILE_PATHOGEN);
                    }
                    events.ScheduleEvent(EVENT_VOLATILE_PATHOGEN, TryToBoostCooldown(urand(10000, 15000)));
                    break;
                default:
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:

        void InitPowers()
        {
            me->SetPowerType(POWER_MANA);
            me->SetPower(POWER_MANA, 0);
            me->SetMaxPower(POWER_MANA, MAX_POWER);
            me->AddAura(SPELL_ZERO_POWER, me);
        }

        void RegenerateEnergy()
        {
            int32 currentEnergy = me->GetPower(POWER_MANA);
            if (currentEnergy >= MAX_POWER)
            {
                Talk(TALK_EVOLUTION);
                me->SetPower(POWER_MANA, 0);

                Evolution();
            }
            else
            {
                me->SetPower(POWER_MANA, currentEnergy + 4);
            }
        }

        uint32 TryToBoostCooldown(uint32 basicCooldown)
        {
            if (IsEvolutionAuraActivated(4)) // SPELL_METABOLIC_BOOST
            {
                if (basicCooldown >= 4000)
                    basicCooldown -= 2000;
            }

            return basicCooldown;
        }

        void Evolution()
        {
            uint32 maxEvolutionAurasCount = IsHeroic() ? 4 : 3;

            me->AddAura(SPELL_EVOLUTION, me);

            std::list<uint8> notAppliedAurasIndexes;
            std::list<uint8> appliedAurasIndexes;
            for (uint8 i = 0; i < MAX_EVOLUTION_AURAS; ++i)
            {
                if (!IsEvolutionAuraActivated(i))
                    notAppliedAurasIndexes.push_back(i);
                else
                    appliedAurasIndexes.push_back(i);
            }

            if (appliedAurasIndexes.size() >= maxEvolutionAurasCount)
            {
                uint8 removeAuraIndex = Trinity::Containers::SelectRandomContainerElement(appliedAurasIndexes);
                DeactivateEvolutionAura(removeAuraIndex);
            }

            if (notAppliedAurasIndexes.size() > 0)
            {
                uint8 applyAuraIndex = Trinity::Containers::SelectRandomContainerElement(notAppliedAurasIndexes);
                ActivateEvolutionAura(applyAuraIndex);
            }
        }

        void ActivateEvolutionAura(uint8 auraIndex)
        {
            m_EvolutionAuraIndexes[auraIndex] = true;

            uint32 auraSpellId = evolutionAuras[auraIndex];

            me->AddAura(auraSpellId, me);

            // some auras have periodic triggers
            // some auras need to schedule events
            if (auraSpellId == SPELL_PATHOGEN_GLANDS)
            {
                events.ScheduleEvent(EVENT_VOLATILE_PATHOGEN, TryToBoostCooldown(urand(5000, 8000)));
            }
        }

        void DeactivateEvolutionAura(uint8 auraIndex)
        {
            m_EvolutionAuraIndexes[auraIndex] = false;

            uint32 auraSpellId = evolutionAuras[auraIndex];

            me->RemoveAura(auraSpellId);

            // some auras need to cancel events
            if (auraSpellId == SPELL_PATHOGEN_GLANDS)
            {
                events.CancelEvent(EVENT_VOLATILE_PATHOGEN);
            }
        }

        bool IsEvolutionAuraActivated(uint8 auraIndex) const
        {
            return m_EvolutionAuraIndexes[auraIndex];
        }

        void RemoveEncounterAuras()
        {
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_FULLY_MUTATED);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_FULLY_MUTATED_2);
        }

    private:

        bool m_IntroDone;
        bool m_EvolutionAuraIndexes[MAX_EVOLUTION_AURAS];
    };
};

/// Living Fluid - 69069
class npc_primordius_living_fluid : public CreatureScript
{
public:
    npc_primordius_living_fluid() : CreatureScript("npc_primordius_living_fluid") { }

    CreatureAI* GetAI(Creature* p_Creature) const
    {
        return new npc_primordius_living_fluidAI(p_Creature);
    }

    struct npc_primordius_living_fluidAI : public ScriptedAI
    {
        npc_primordius_living_fluidAI(Creature * p_Creature) : ScriptedAI(p_Creature)
        {
            m_Instance = p_Creature->GetInstanceScript();
        }

        void Reset()
        {
            me->SetReactState(REACT_PASSIVE);

            me->SetSpeed(MOVE_WALK, 0.3f);
            me->SetSpeed(MOVE_RUN, 0.3f);

            m_IsPool = false;
            m_IsConsumed = false;
        }

        void IsSummonedBy(Unit* /*p_Summoner*/)
        {
            if (m_Instance)
            {
                if (Creature* l_Primordius = GetClosestCreatureWithEntry(me, NPC_PRIMORDIUS, 200.0f, true))
                {
                    me->GetMotionMaster()->MoveFollow(l_Primordius, 0.1f, 0.1f);
                    events.ScheduleEvent(EVENT_CHECK_PRIMORDIUS, 1000);
                }
            }
        }

        void DamageTaken(Unit* /*attacker*/, uint32& damage)
        {
            if (damage >= me->GetHealth())
            {
                damage = 0;

                if (!m_IsPool)
                {
                    m_IsPool = true;

                    me->StopMoving();
                    me->GetMotionMaster()->MovementExpired(false);

                    me->SetReactState(REACT_PASSIVE);
                    me->SetDisplayId(INVIBLE_DISPLAY);
                    me->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_IMMUNE_TO_PC));

                    /// 20% chance to apply Volatile Pool.
                    /// 80% chance to apply Mutagenic Pool.
                    if (roll_chance_i(20))
                    {
                        me->AddAura(SPELL_VOLATILE_POOL, me);
                        events.ScheduleEvent(EVENT_VOLATIL_CHECK, 500);
                    }
                    else
                    {
                        //me->CastSpell(me, SPELL_MUTAGENIC_POOL, true);
                        if (Creature* pPrimordius = GetPrimordius())
                        {
                            pPrimordius->CastSpell(me, SPELL_MUTAGENIC_POOL, true);
                        }

                        me->DespawnOrUnsummon(100);
                    }
                }
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (m_IsConsumed)
                return;

            events.Update(diff);

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_CHECK_PRIMORDIUS:
                    if (me->FindNearestCreature(NPC_PRIMORDIUS, m_IsPool ? 3.0f : 1.0f, true))
                    {
                        m_IsConsumed = true;
                        DoCast(me, SPELL_MUTATE_PRIMORDIUS_1, true);
                        me->DespawnOrUnsummon(100);
                        return;
                    }
                    events.ScheduleEvent(EVENT_CHECK_PRIMORDIUS, 1000);
                    break;
                    /// Checks every 500 ms if there's a player near of living fluid with volatile pool form. If so, call VolatilePool();
                case EVENT_VOLATIL_CHECK:
                {
                    VolatilePool();

                    events.ScheduleEvent(EVENT_VOLATIL_CHECK, 500);
                    break;
                }
                }
            }
        }

    private:

        InstanceScript* m_Instance;
        bool m_IsPool;
        bool m_IsConsumed;

    private:

        Creature* GetPrimordius()
        {
            if (InstanceScript* pInstance = me->GetInstanceScript())
            {
                return pInstance->instance->GetCreature(pInstance->GetGuidData(DATA_PRIMORDIUS));
            }

            return NULL;
        }

        void VolatilePool()
        {
            if (Creature* pPrimordius = me->FindNearestCreature(NPC_PRIMORDIUS, 3.0f, true))
            {
                m_IsConsumed = true;

                pPrimordius->CastSpell(pPrimordius, SPELL_VOLATILE_MUTATE_PRIMORDIUS, true);

                me->DespawnOrUnsummon(100);
            }

            {
                m_IsConsumed = true;

                me->DespawnOrUnsummon(100);
            }
        }
    };
};

/// Viscous Horror - 69070
class npc_primordius_viscous_horror : public CreatureScript
{
public:
    npc_primordius_viscous_horror() : CreatureScript("npc_primordius_viscous_horror") { }

    CreatureAI* GetAI(Creature* p_Creature) const
    {
        return new npc_primordius_viscous_horrorAI(p_Creature);
    }

    struct npc_primordius_viscous_horrorAI : public ScriptedAI
    {
        npc_primordius_viscous_horrorAI(Creature* p_Creature) : ScriptedAI(p_Creature)
        {
            m_Instance = p_Creature->GetInstanceScript();
        }

        InstanceScript* m_Instance;

        void Reset()
        {
            events.Reset();

            me->SetReactState(REACT_PASSIVE);

            me->SetSpeed(MOVE_WALK, 0.3f);
            me->SetSpeed(MOVE_RUN, 0.3f);
        }

        void EnterCombat(Unit* /*attacker*/)
        {
            events.ScheduleEvent(EVENT_BLACK_BLOOD, 10000);
        }

        void UpdateAI(const uint32 p_Diff)
        {
            /// If he gets <= 10.0f distance from primordius, wipes all the raid.
            if (m_Instance)
                if (Creature* l_Primordius = GetClosestCreatureWithEntry(me, NPC_PRIMORDIUS, 10.0f, true))
                    me->CastSpell(me, SPELL_DEADLY_MUTAGEN, false);

            events.Update(p_Diff);

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_BLACK_BLOOD:
                    if (Unit* l_Target = SelectTarget(SELECT_TARGET_TOPAGGRO))
                        me->CastSpell(l_Target, SPELL_BLACK_BLOOD, false);

                    events.ScheduleEvent(EVENT_BLACK_BLOOD, 25000);
                    break;
                default:
                    break;
                }
            }
        }
    };
};

class spell_primordius_malformed_blood : public SpellScriptLoader
{
public:
    spell_primordius_malformed_blood() : SpellScriptLoader("spell_primordius_malformed_blood") { }

    class spell_primordius_malformed_blood_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_primordius_malformed_blood_AuraScript);

        bool CheckProc(ProcEventInfo& eventInfo)
        {
            if (!eventInfo.GetActionTarget())
                return false;

            uint32 entry = eventInfo.GetActionTarget()->GetEntry();
            if (entry != NPC_LIVING_FLUID && entry != NPC_VISCOUS_HORROR)
                return false;

            return true;
        }

        void Register()
        {
            DoCheckProc += AuraCheckProcFn(spell_primordius_malformed_blood_AuraScript::CheckProc);
        }
    };
};

class spell_primordius_mutation : public SpellScriptLoader
{
public:
    spell_primordius_mutation() : SpellScriptLoader("spell_primordius_mutation") { }

    class spell_primordius_mutation_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_primordius_mutation_SpellScript);

        void HandleScript(SpellEffIndex effIndex)
        {
            if (!GetCaster())
                return;

            uint8 mutationCount = 0;
            for (uint8 i = 0; i < 4; ++i)
            {
            
            }

            bool isFullyMutated = GetCaster()->HasAura(SPELL_FULLY_MUTATED);

            if (!isFullyMutated && mutationCount < 5)
            {
                uint32 randAura = beneficAuras[urand(0, 3)];
                GetCaster()->AddAura(randAura, GetCaster());
            }
            else if (!isFullyMutated && mutationCount >= 5)
            {
                GetCaster()->AddAura(SPELL_FULLY_MUTATED, GetCaster());
            }
            else if (isFullyMutated)
            {
                // TODO: make bad mutation
            }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_primordius_mutation_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_primordius_mutation_SpellScript();
    }
};

class spell_primordius_volatile_mutation : public SpellScriptLoader
{
public:
    spell_primordius_volatile_mutation() : SpellScriptLoader("spell_primordius_volatile_mutation") { }

    class spell_primordius_volatile_mutation_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_primordius_volatile_mutation_SpellScript);

        void HandleScript(SpellEffIndex effIndex)
        {
            if (!GetCaster())
                return;

            std::list<uint32> auras;
            for (uint8 i = 0; i < 4; ++i)
            {

            }

            uint32 newAura = Trinity::Containers::SelectRandomContainerElement(auras);

            GetCaster()->AddAura(newAura, GetCaster());
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_primordius_volatile_mutation_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_primordius_volatile_mutation_SpellScript();
    }
};

class spell_primordius_acidic_explosion_aoe : public SpellScriptLoader
{
public:
    spell_primordius_acidic_explosion_aoe() : SpellScriptLoader("spell_primordius_acidic_explosion_aoe") { }

    class spell_primordius_acidic_explosion_aoe_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_primordius_acidic_explosion_aoe_SpellScript);

        void HandleHitTarget(SpellEffIndex effIndex)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            GetCaster()->CastSpell(GetHitUnit(), SPELL_ACIDIC_EXPLOSION_MISSILE, true);
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_primordius_acidic_explosion_aoe_SpellScript::HandleHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_primordius_acidic_explosion_aoe_SpellScript();
    }
};

class spell_area_primordius_mutagenic_pool : public AreaTriggerScript
{
public:
    spell_area_primordius_mutagenic_pool() : AreaTriggerScript("spell_area_primordius_mutagenic_pool") {}

    bool OnAddTarget(AreaTrigger* trigger, Unit* target)
    {
        if (target->IsPlayer())
        {
            target->CastSpell(target, SPELL_MUTATION, true);
        }
        else if (target->GetEntry() == NPC_PRIMORDIUS)
        {
            // TODO: make mutation for primordius

        }

        return true;
    }
};

void AddSC_boss_primordius()
{
    new boss_primordius();
    new npc_primordius_living_fluid();
    new npc_primordius_viscous_horror();

    new spell_primordius_malformed_blood();
    new spell_primordius_mutation();                // 136178
    new spell_primordius_volatile_mutation();       // 140508
    new spell_primordius_acidic_explosion_aoe();    // 136856

    new spell_area_primordius_mutagenic_pool();     // 136049
}
