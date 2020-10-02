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

enum ScriptTexts
{
    SAY_RAMPAGE = 0,
    SAY_RAMPAGE_ENDS = 1,
};

enum eSpells
{
    // Heads summons
    SPELL_SUMMON_FLAMING_HEAD = 134176,
    SPELL_SUMMON_FROZEN_HEAD = 134177,
    SPELL_SUMMON_VENOMOUS_HEAD = 134178,
    SPELL_SUMMON_ARCANE_HEAD = 134179,

    // Shared
    SPELL_MEGAERAS_RAGE_FIRE = 139758,
    SPELL_MEGAERAS_RAGE_FROST = 139816,
    SPELL_MEGAERAS_RAGE_VENOM = 139818,
    SPELL_MEGAERAS_RAGE_ARCANE = 139820,

    SPELL_SUBMERGED = 139832,

    SPELL_RAMPAGE_PERIODIC = 139458,
    SPELL_RAMPAGE_FIRE = 139548,
    SPELL_RAMPAGE_FIRE_BALL = 140280,
    SPELL_RAMPAGE_FROST = 139549,
    SPELL_RAMPAGE_FROST_BALL = 140285,
    SPELL_RAMPAGE_VENOM = 139551,
    SPELL_RAMPAGE_VENOM_BALL = 140286,
    SPELL_RAMPAGE_ARCANE = 139552,
    SPELL_RAMPAGE_ARCANE_BALL = 140287,

    SPELL_ELEMENTAL_BLOOD_FIRE = 139586,
    SPELL_ELEMENTAL_BLOOD_FROST = 139587,
    SPELL_ELEMENTAL_BLOOD_VENOM = 139588,
    SPELL_ELEMENTAL_BLOOD_ARCANE = 139589,

    // Back Flaming Head
    SPELL_CINDERS = 139822,
    SPELL_CINDERS_SUMMON = 139834,
    SPELL_CINDERS_AURA = 139835,

    // Flaming Head
    SPELL_IGNITE_FLESH = 137729,
    SPELL_IGNITE_FLESH_AURA = 137731,

    // Back Venomous Head
    SPELL_ACID_RAIN_AOE = 139845, // targetting
    SPELL_ACID_RAIN_MISSILE = 139848,
    SPELL_ACID_RAIN_AURA = 139847,
    SPELL_ACID_RAIN_DMG = 139850,

    // Venomous Head
    SPELL_ROT_ARMOR = 139838,
    SPELL_ROT_ARMOR_AURA = 139840,

    // Back Frozen Head
    SPELL_TORRENT_OF_ICE_FORCE = 139857,
    SPELL_TORRENT_OF_ICE = 139866,
    SPELL_TORRENT_OF_ICE_SUMMON = 139870,
    SPELL_TORRENT_OF_ICE_AURA = 139890,
    SPELL_TORRENT_OF_ICE_DMG = 139889,
    SPELL_TORRENT_OF_ICE_SCALE = 140213,

    SPELL_ICY_GROUND_VISUAL = 139875,
    SPELL_ICY_GROUND_DUMMY = 139877,
    SPELL_ICY_GROUND_DMG = 139909,
    SPELL_ICY_GROUND_SNARE = 139922,

    // Frozen Head
    SPELL_ARCTIC_FREEZE = 139841,
    SPELL_ARCTIC_FREEZE_AURA = 139843,
    SPELL_ARCTIC_FREEZE_STUN = 139844,

    // Back Arcane Head
    SPELL_NETHER_TEAR = 140138,
    SPELL_NETHER_TEAR_VISUAL = 140258,

    // Arcane Head
    SPELL_DIFFUSION = 139991,
    SPELL_DIFFUSION_AURA = 139993,
    SPELL_DIFFUSION_HEAL = 139994,

    // Nether Wyrm
    SPELL_NETHER_SPIKE = 140178,
    SPELL_SUPPRESSION = 140179,

    SPELL_ACHIEVEMENT = 140353,
};

enum eEvents
{
    EVENT_CHECK_MELEE = 1,
    EVENT_END_OF_RAMPAGE,
    EVENT_RAMPAGE_BALL,

    EVENT_RESPAWN_HEADS_1,
    EVENT_RESPAWN_HEADS_2,
    EVENT_RESPAWN_HEADS_3,
    EVENT_BEGIN_RAMPAGE,
    EVENT_END_RAMPAGE,
    EVENT_BREATH,

    // Back Flaming Head
    EVENT_CINDERS,
    EVENT_CHECK_ICE,

    // Flaming Head
    EVENT_IGNITE_FLESH,

    // Black Venomous Head
    EVENT_ACID_RAIN,

    // Venomous Head
    EVENT_ROT_ARMOR,

    // Back Frozen Head
    EVENT_TORRENT_OF_ICE,
    EVENT_MOVE,
    EVENT_CHECK_PLAYERS,
    EVENT_MOD_SCALE,

    // Frozen Head
    EVENT_ARCTIC_FREEZE,

    // Back Arcane Head
    EVENT_NETHER_TEAR,
    // Arcane Head
    EVENT_DIFFUSION,

    // Nether Wyrm
    EVENT_NETHER_SPIKE,
    EVENT_SUPPRESSION
};

enum Adds
{
    NPC_FLAMING_HEAD = 70212,
    NPC_BACK_FLAMING_HEAD = 70229,
    NPC_FROZEN_HEAD = 70235,
    NPC_BACK_FROZEN_HEAD = 70250,
    NPC_VENOMOUS_HEAD = 70247,
    NPC_BACK_VENOMOUS_HEAD = 70251,
    NPC_ARCANE_HEAD = 70248,
    NPC_BACK_ARCANE_HEAD = 70252,
    NPC_NETHER_WYRM = 70507,
};

enum eActions
{
    ACTION_MEGAERA_SPAWN = 1,
    ACTION_SPAWN_NETHER_WYRM,
    ACTION_RAMPAGE,
    ACTION_RAMPAGE_ANIM,
    ACTION_BREATH,
    ACTION_START_ATTACK,
    ACTION_STOP_ATTACK,
};

enum eSounds
{
    SOUND_HYDRA_EMERGE = 36700
};

const Position nearHeadPos[4] =
{
    {6394.780273f, 4496.552246f, -211.520004f, 1.765240f},
    {6421.201172f, 4502.964844f, -211.529922f, 2.161906f},
    {6441.049316f, 4532.375000f, -211.347641f, 2.757503f}, // fire
    {6439.698730f, 4565.978516f, -211.090836f, 3.539416f}, // arcane
};

const Position farHeadPos[7]
{
    {6421.495605f, 4450.104492f, -210.031998f, 0.662190f},
    {6429.782715f, 4456.645996f, -210.032593f, 0.674407f},
    {6447.820801f, 4471.374023f, -210.031845f, 0.775200f},
    {6452.508789f, 4476.368164f, -210.032166f, 0.827123f},
    {6466.003418f, 4495.015625f, -210.032516f, 1.095904f},
    {6471.398438f, 4507.633789f, -210.031464f, 1.300545f},
    {6421.495605f, 4450.104492f, -210.031998f, 0.726331f},
};

Position const chestPos = { 6467.56f, 4483.96f, 182.452f, 2.502f };

// Megaera - 68065
class boss_megaera : public CreatureScript
{
public:
    boss_megaera() : CreatureScript("boss_megaera") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_megaeraAI(creature);
    }

    struct boss_megaeraAI : public BossAI
    {
        boss_megaeraAI(Creature* creature) : BossAI(creature, DATA_MEGAERA)
        {

            me->setActive(true);
        }

        void Reset()
        {
            _Reset();


            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);

            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_CINDERS);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_ARCTIC_FREEZE_AURA);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_ARCTIC_FREEZE_STUN);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_ROT_ARMOR_AURA);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_DIFFUSION_AURA);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_IGNITE_FLESH_AURA);

            me->SetReactState(REACT_PASSIVE);

        }
      
        void JustDied(Unit* p_Killer)
        {
            _JustDied();

            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_CINDERS);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_ARCTIC_FREEZE_AURA);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_ARCTIC_FREEZE_STUN);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_ROT_ARMOR_AURA);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_DIFFUSION_AURA);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_IGNITE_FLESH_AURA);

           /* switch (GetDifficulty())
            {
            case 10_MAN_DIFFICULTY:
                instance->DoRespawnGameObject(instance->GetGuidData(DATA_MEGAERA_CHEST_10_NORMAL), DAY);
                break;
            case MAN25_DIFFICULTY:
                instance->DoRespawnGameObject(instance->GetData64(DATA_MEGAERA_CHEST_25_NORMAL), DAY);
                break;
            case MAN10_HEROIC_DIFFICULTY:
                instance->DoRespawnGameObject(instance->GetData64(DATA_MEGAERA_CHEST_10_HEROIC), DAY);
                break;
            case MAN25_HEROIC_DIFFICULTY:
                instance->DoRespawnGameObject(instance->GetData64(DATA_MEGAERA_CHEST_25_HEROIC), DAY);
                break;
            }
            */
            instance->DoModifyPlayerCurrencies(396, 4000);
        }

        void JustSummoned(Creature* summon)
        {
            summons.Summon(summon);
            if (me->IsInCombat())
                DoZoneInCombat(summon, 200.0f);
        }
     

        void ActivateFarHeadEvents()
        {
            events.ScheduleEvent(EVENT_ACID_RAIN, urand(15000, 25000));
            events.ScheduleEvent(EVENT_CINDERS, urand(15000, 25000));
            events.ScheduleEvent(EVENT_TORRENT_OF_ICE, urand(15000, 25000));
        }

        bool IsHeadEntry(uint32 entry) const
        {
            return (entry == NPC_FLAMING_HEAD ||
                entry == NPC_BACK_FLAMING_HEAD ||
                entry == NPC_FROZEN_HEAD ||
                entry == NPC_BACK_FROZEN_HEAD ||
                entry == NPC_VENOMOUS_HEAD ||
                entry == NPC_BACK_VENOMOUS_HEAD ||
                entry == NPC_ARCANE_HEAD ||
                entry == NPC_BACK_ARCANE_HEAD);
        }

        uint32 GetNextNearHeadEntry(uint32 diedEntry)
        {
            std::list<uint32> headEntries;
            headEntries.push_back(NPC_FLAMING_HEAD);
            headEntries.push_back(NPC_FROZEN_HEAD);
            headEntries.push_back(NPC_VENOMOUS_HEAD);

            headEntries.remove(diedEntry);

            for (uint8 i = 0; i < 4; ++i)


            return headEntries.empty() ? 0 : headEntries.front();
        }

        uint8 GetNextNearHeadIndexByEntry(uint32 entry)
        {
            switch (entry)
            {
            case NPC_VENOMOUS_HEAD: return 0;
            case NPC_FROZEN_HEAD: return 1;
            case NPC_FLAMING_HEAD: return 2;
            case NPC_ARCANE_HEAD: return 3;
            }

            return 0;
        }

        uint32 GetFarHeadEntryByNear(uint32 entry)
        {
            switch (entry)
            {
            case NPC_FLAMING_HEAD: return NPC_BACK_FLAMING_HEAD;
            case NPC_FROZEN_HEAD: return NPC_BACK_FROZEN_HEAD;
            case NPC_VENOMOUS_HEAD: return NPC_BACK_VENOMOUS_HEAD;
            case NPC_ARCANE_HEAD: return NPC_BACK_ARCANE_HEAD;
            }
            return 0;
        }

        Creature* GetHeadByType(uint8 type)
        {
            uint32 head1 = 0;
            uint32 head2 = 0;

            switch (type)
            {
            case 0:
                head1 = NPC_FLAMING_HEAD;
                head2 = NPC_BACK_FLAMING_HEAD;
                break;
            case 1:
                head1 = NPC_FROZEN_HEAD;
                head2 = NPC_BACK_FROZEN_HEAD;
                break;
            case 2:
                head1 = NPC_VENOMOUS_HEAD;
                head2 = NPC_BACK_VENOMOUS_HEAD;
                break;
            default:
                return NULL;
            }
        }

        Creature* GetRandomNonCastingFarHeadByEntry(uint32 entry)
        {
            std::list<Creature*> creatures;

            if (creatures.empty())
                return NULL;

            return Trinity::Containers::SelectRandomContainerElement(creatures);
        }
    };
};

// Flaming Head - 70212
// Frozen Head - 70235
// Venomous Head - 70247
// Arcane Head - 70248
class npc_megaera_head : public CreatureScript
{
public:
    npc_megaera_head() : CreatureScript("npc_megaera_head") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_megaera_headAI(creature);
    }

    struct npc_megaera_headAI : public Scripted_NoMovementAI
    {
        npc_megaera_headAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {

            me->setActive(true);

            pInstance = creature->GetInstanceScript();
        }

        InstanceScript* pInstance;

        void Reset()
        {
            events.Reset();

            summons.DespawnAll();

            me->SetReactState(REACT_DEFENSIVE);

            me->SetCanFly(true);
            me->SetDisableGravity(true);

            m_CanAttack = true;
        }

        void EnterCombat(Unit* attacker)
        {
            events.ScheduleEvent(EVENT_CHECK_MELEE, 1000);

            if (pInstance)
            {
                if (Creature* megaera = pInstance->instance->GetCreature(pInstance->GetGuidData(DATA_MEGAERA)))
                {
                    if (!megaera->IsInCombat())
                        megaera->SetInCombatWithZone();
                }
            }
        }

        void JustSummoned(Creature* summon)
        {
            if (me->IsInCombat())
                DoZoneInCombat(summon);

            summons.Summon(summon);
        }

        void SummonedCreatureDespawn(Creature* summon)
        {
            summons.Despawn(summon);
        }

        void DoAction(const int32 action)
        {
            if (action == ACTION_START_ATTACK)
            {
                m_CanAttack = true;
                events.ScheduleEvent(EVENT_CHECK_MELEE, 1000);
            }
            else if (action == ACTION_STOP_ATTACK)
            {
                m_CanAttack = false;
                events.CancelEvent(EVENT_CHECK_MELEE);
            }
            else if (action == ACTION_BREATH)
            {
                switch (me->GetEntry())
                {
                case NPC_FLAMING_HEAD:
                    DoCastVictim(SPELL_IGNITE_FLESH);
                    break;
                case NPC_VENOMOUS_HEAD:
                    DoCastVictim(SPELL_ROT_ARMOR);
                    break;
                case NPC_FROZEN_HEAD:
                    DoCastVictim(SPELL_ARCTIC_FREEZE);
                    break;
                case NPC_ARCANE_HEAD:
                    DoCastVictim(SPELL_DIFFUSION);
                    break;
                default:
                    break;
                }
            }
            else if (action == ACTION_RAMPAGE)
            {
                switch (me->GetEntry())
                {
                case NPC_FLAMING_HEAD:
                    DoCastAOE(SPELL_RAMPAGE_FIRE, true);
                    break;
                case NPC_VENOMOUS_HEAD:
                    DoCastAOE(SPELL_RAMPAGE_VENOM, true);
                    break;
                case NPC_FROZEN_HEAD:
                    DoCastAOE(SPELL_RAMPAGE_FROST, true);
                    break;
                case NPC_ARCANE_HEAD:
                    DoCastAOE(SPELL_RAMPAGE_ARCANE, true);
                    break;
                default:
                    break;
                }
            }
            else if (action == ACTION_RAMPAGE_ANIM)
            {
                switch (me->GetEntry())
                {
                case NPC_FLAMING_HEAD:
                    DoCastAOE(SPELL_RAMPAGE_FIRE_BALL, true);
                    break;
                case NPC_VENOMOUS_HEAD:
                    DoCastAOE(SPELL_RAMPAGE_VENOM_BALL, true);
                    break;
                case NPC_FROZEN_HEAD:
                    DoCastAOE(SPELL_RAMPAGE_FROST_BALL, true);
                    break;
                case NPC_ARCANE_HEAD:
                    DoCastAOE(SPELL_RAMPAGE_ARCANE_BALL, true);
                    break;
                default:
                    break;
                }
            }
        }

        void JustDied(Unit* who)
        {
            pInstance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            me->DespawnOrUnsummon(1000);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            events.Update(diff);

            switch (events.ExecuteEvent())
            {
            case EVENT_CHECK_MELEE:
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_TOPAGGRO))
                {
                    if (!me->IsWithinMeleeRange(target))
                    {
                        switch (me->GetEntry())
                        {
                        case NPC_FLAMING_HEAD:
                            me->CastSpell(target, SPELL_MEGAERAS_RAGE_FIRE, false);
                            break;
                        case NPC_FROZEN_HEAD:
                            me->CastSpell(target, SPELL_MEGAERAS_RAGE_FROST, false);
                            break;
                        case NPC_VENOMOUS_HEAD:
                            me->CastSpell(target, SPELL_MEGAERAS_RAGE_VENOM, false);
                            break;
                        case NPC_ARCANE_HEAD:
                            me->CastSpell(target, SPELL_MEGAERAS_RAGE_ARCANE, false);
                            break;
                        default:
                            break;
                        }
                    }
                }
                events.ScheduleEvent(EVENT_CHECK_MELEE, 2000);
                break;
            }
            default:
                break;
            }

            if (m_CanAttack)
                DoMeleeAttackIfReady();
        }

    private:

        bool m_CanAttack;
    };
};

// Back Flaming Head - 70229
// Back Frozen Head - 70250
// Back Venomous Head - 70251
// Back Arcane Head - 70252
class npc_megaera_back_head : public CreatureScript
{
public:
    npc_megaera_back_head() : CreatureScript("npc_megaera_back_head") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_megaera_back_headAI(creature);
    }

    struct npc_megaera_back_headAI : public Scripted_NoMovementAI
    {
        npc_megaera_back_headAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {

            me->setActive(true);

            pInstance = creature->GetInstanceScript();
        }

        InstanceScript* pInstance;
        WorldLocation const* netherTearDest;

        void Reset()
        {
            events.Reset();

            summons.DespawnAll();

            me->SetReactState(REACT_PASSIVE);

            me->SetCanFly(true);
            me->SetDisableGravity(true);
        }

        void EnterCombat(Unit* attacker)
        {
        }

        void JustSummoned(Creature* summon)
        {
            if (me->IsInCombat())
                DoZoneInCombat(summon);

            summons.Summon(summon);

            if (summon->GetEntry() == NPC_TORRENT_OF_ICE)
            {
                DoCast(summon, SPELL_TORRENT_OF_ICE);
            }
        }

        void SummonedCreatureDespawn(Creature* summon)
        {
            summons.Despawn(summon);
        }

        void DoAction(const int32 action)
        {
            if (action == ACTION_RAMPAGE)
            {
                switch (me->GetEntry())
                {
                case NPC_BACK_FLAMING_HEAD:
                    DoCastAOE(SPELL_RAMPAGE_FIRE, true);
                    break;
                case NPC_BACK_VENOMOUS_HEAD:
                    DoCastAOE(SPELL_RAMPAGE_VENOM, true);
                    break;
                case NPC_BACK_FROZEN_HEAD:
                    DoCastAOE(SPELL_RAMPAGE_FROST, true);
                    break;
                case NPC_BACK_ARCANE_HEAD:
                    DoCastAOE(SPELL_RAMPAGE_ARCANE, true);
                    break;
                default:
                    break;
                }
            }
            else if (action == ACTION_RAMPAGE_ANIM)
            {
                switch (me->GetEntry())
                {
                case NPC_BACK_FLAMING_HEAD:
                    DoCastAOE(SPELL_RAMPAGE_FIRE_BALL, true);
                    break;
                case NPC_BACK_VENOMOUS_HEAD:
                    DoCastAOE(SPELL_RAMPAGE_VENOM_BALL, true);
                    break;
                case NPC_BACK_FROZEN_HEAD:
                    DoCastAOE(SPELL_RAMPAGE_FROST_BALL, true);
                    break;
                case NPC_BACK_ARCANE_HEAD:
                    DoCastAOE(SPELL_RAMPAGE_ARCANE_BALL, true);
                    break;
                default:
                    break;
                }
            }
            else if (action == ACTION_SPAWN_NETHER_WYRM)
            {
                me->SummonCreature(NPC_NETHER_WYRM, netherTearDest->m_positionX, netherTearDest->m_positionY, netherTearDest->m_positionZ);
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            switch (events.ExecuteEvent())
            {
            case EVENT_NETHER_TEAR:
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM))
                    me->CastSpell(target, SPELL_NETHER_TEAR, false);
                events.ScheduleEvent(EVENT_NETHER_TEAR, 15000);
                break;
            }
            default:
                break;
            }
        }

    };
};

// Cinders - 70432
class npc_megaera_cinders : public CreatureScript
{
public:
    npc_megaera_cinders() : CreatureScript("npc_megaera_cinders") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_megaera_cindersAI(creature);
    }

    struct npc_megaera_cindersAI : public Scripted_NoMovementAI
    {
        npc_megaera_cindersAI(Creature* creature) : Scripted_NoMovementAI(creature) { }

        void Reset()
        {
            me->AddAura(SPELL_CINDERS_AURA, me);

            events.Reset();

            me->SetReactState(REACT_PASSIVE);
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE));
            me->AddUnitFlag(UnitFlags(UNIT_FLAG2_DISABLE_TURN));

            events.ScheduleEvent(EVENT_CHECK_ICE, 500);
        }

        void UpdateAI(const uint32 diff)
        {
            events.Update(diff);

            switch (events.ExecuteEvent())
            {
            case EVENT_CHECK_ICE:
            {
                if (me->FindNearestCreature(NPC_ICY_GROUND, 5.0f))
                {
                    events.CancelEvent(EVENT_CHECK_ICE);
                    me->DespawnOrUnsummon(100);
                    return;
                }

                events.ScheduleEvent(EVENT_CHECK_ICE, 500);
                break;
            }
            default:
                break;
            }
        }
    };
};

// Acid Rain - 70435
class npc_megaera_acid_rain : public CreatureScript
{
public:
    npc_megaera_acid_rain() : CreatureScript("npc_megaera_acid_rain") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_megaera_acid_rainAI(creature);
    }

    struct npc_megaera_acid_rainAI : public Scripted_NoMovementAI
    {
        npc_megaera_acid_rainAI(Creature* creature) : Scripted_NoMovementAI(creature) { }

        void Reset()
        {
            me->SetReactState(REACT_PASSIVE);
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE));
            me->AddUnitFlag(UnitFlags(UNIT_FLAG2_DISABLE_TURN));

            me->CastSpell(me, SPELL_ACID_RAIN_AURA, true);
        }

        void IsSummonedBy(Unit* owner)
        {
            events.ScheduleEvent(EVENT_ACID_RAIN, 4000);
        }

        void UpdateAI(const uint32 diff)
        {
            events.Update(diff);

            if (events.ExecuteEvent())
            {
                DoCastAOE(SPELL_ACID_RAIN_DMG, true);
                me->DespawnOrUnsummon(100);
            }
        }
    };
};

class npc_megaera_torrent_of_ice : public CreatureScript
{
public:
    npc_megaera_torrent_of_ice() : CreatureScript("npc_megaera_torrent_of_ice") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_megaera_torrent_of_iceAI(creature);
    }

    struct npc_megaera_torrent_of_iceAI : public ScriptedAI
    {
        npc_megaera_torrent_of_iceAI(Creature* creature) : ScriptedAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);

            targetGuid = 0;
        }

        void Reset()
        {
            me->SetSpeed(MOVE_RUN, 0.5f);

            me->AddAura(SPELL_TORRENT_OF_ICE_AURA, me);
        }
     
        void UpdateAI(uint32 const diff)
        {
            events.Update(diff);

            switch (events.ExecuteEvent())
            {
            case EVENT_MOVE:
                    me->GetMotionMaster()->MoveFollow(me, 0.0f, 0.0f);
                break;
            default:
                break;
            }
        }

    private:

        EventMap events;
        uint64 targetGuid;
    };
};

// Icy Ground - 70446
class npc_megaera_icy_ground : public CreatureScript
{
public:
    npc_megaera_icy_ground() : CreatureScript("npc_megaera_icy_ground") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_megaera_icy_groundAI(creature);
    }

    struct npc_megaera_icy_groundAI : public ScriptedAI
    {
        npc_megaera_icy_groundAI(Creature* creature) : ScriptedAI(creature) { }

        EventMap events;

        void Reset()
        {
            events.Reset();

            me->SetReactState(REACT_PASSIVE);
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE));
            me->AddUnitFlag(UnitFlags(UNIT_FLAG2_DISABLE_TURN));
            me->AddAura(SPELL_ICY_GROUND_VISUAL, me);

            if (IsHeroic())
                events.ScheduleEvent(EVENT_MOD_SCALE, 600);
        }

        void UpdateAI(uint32 const diff)
        {
            events.Update(diff);

            switch (events.ExecuteEvent())
            {
            case EVENT_MOD_SCALE:
                me->AddAura(SPELL_TORRENT_OF_ICE_SCALE, me);
                events.ScheduleEvent(EVENT_MOD_SCALE, 600);
                break;
            default:
                break;
            }
        }
    };
};

// Nether Wyrm - 70507
class npc_megaera_nether_wyrm : public CreatureScript
{
public:
    npc_megaera_nether_wyrm() : CreatureScript("npc_megaera_nether_wyrm") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_megaera_nether_wyrmAI(creature);
    }

    struct npc_megaera_nether_wyrmAI : public ScriptedAI
    {
        npc_megaera_nether_wyrmAI(Creature* creature) : ScriptedAI(creature) { }

        EventMap events;

        void Reset()
        {
            events.Reset();

        }

        void EnterCombat(Unit* attacker)
        {
            events.ScheduleEvent(EVENT_NETHER_SPIKE, 5000);
            events.ScheduleEvent(EVENT_SUPPRESSION, 10000);
        }

        void UpdateAI(uint32 const diff)
        {
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            events.Update(diff);

            switch (events.ExecuteEvent())
            {
            case EVENT_NETHER_SPIKE:
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM))
                    me->CastSpell(target, SPELL_NETHER_SPIKE, false);
                events.ScheduleEvent(EVENT_NETHER_SPIKE, 10000);
                break;
            case EVENT_SUPPRESSION:
                me->CastSpell(me, SPELL_SUPPRESSION, false);
                events.ScheduleEvent(EVENT_SUPPRESSION, 20000);
                break;
            default:
                break;
            }

            DoMeleeAttackIfReady();
        }
    };
};

// Cinders - 139822
class spell_megaera_cinders : public SpellScriptLoader
{
public:
    spell_megaera_cinders() : SpellScriptLoader("spell_megaera_cinders") { }

    class spell_megaera_cinders_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_megaera_cinders_AuraScript);

        void OnTick(AuraEffect const* aurEff)
        {
            if (!GetUnitOwner())
                return;

            {
                GetUnitOwner()->CastSpell(GetUnitOwner(), SPELL_CINDERS_SUMMON, true);
            }
        }

        void OnRemove(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
        {
            if (!GetUnitOwner())
                return;

            GetUnitOwner()->CastSpell(GetUnitOwner(), SPELL_CINDERS_SUMMON, true);
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_megaera_cinders_AuraScript::OnTick, EFFECT_1, SPELL_AURA_PERIODIC_DAMAGE);
            AfterEffectRemove += AuraEffectRemoveFn(spell_megaera_cinders_AuraScript::OnRemove, EFFECT_1, SPELL_AURA_PERIODIC_DAMAGE, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_megaera_cinders_AuraScript();
    }
};

// Acid Rain (aoe) - 139845
class spell_megaera_acid_rain_aoe : public SpellScriptLoader
{
public:
    spell_megaera_acid_rain_aoe() : SpellScriptLoader("spell_megaera_acid_rain_aoe") { }

    class spell_megaera_acid_rain_aoe_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_megaera_acid_rain_aoe_SpellScript);

        void HandleHitTarget(SpellEffIndex effIndex)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            GetCaster()->SummonCreature(NPC_ACID_RAIN, GetHitUnit()->GetPositionX(), GetHitUnit()->GetPositionY(), GetHitUnit()->GetPositionZ(), 0.0f);
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_megaera_acid_rain_aoe_SpellScript::HandleHitTarget, EFFECT_0, SPELL_EFFECT_FORCE_CAST);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_megaera_acid_rain_aoe_SpellScript();
    }
};

// Acid Rain (damage) - 139850
class spell_megaera_acid_rain_damage : public SpellScriptLoader
{
public:
    spell_megaera_acid_rain_damage() : SpellScriptLoader("spell_megaera_acid_rain_damage") { }

    class spell_megaera_acid_rain_damage_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_megaera_acid_rain_damage_SpellScript);

        void HandleOnHit()
        {
            if (Unit* caster = GetCaster())
            {
                if (Unit* target = GetHitUnit())
                {
                    float dist = std::max(1.f, caster->GetDistance(target));
                    SetHitDamage(int32(ceil(GetHitDamage() / dist)));
                }
            }
        }

        void Register()
        {
            OnHit += SpellHitFn(spell_megaera_acid_rain_damage_SpellScript::HandleOnHit);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_megaera_acid_rain_damage_SpellScript();
    }
};

// Diffusion - 139993
class spell_megaera_diffusion : public SpellScriptLoader
{
public:
    spell_megaera_diffusion() : SpellScriptLoader("spell_megaera_diffusion") { }

    class spell_megaera_diffusion_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_megaera_diffusion_AuraScript);

        void OnProc(AuraEffect const* aurEff, ProcEventInfo& eventInfo)
        {
            PreventDefaultAction();
            Unit* target = GetTarget();

            if (!target || !eventInfo.GetActor() || !target->ToPlayer())
                return;

            float ratio = 0.9f;
            int32 bp = eventInfo.GetHealInfo() ? eventInfo.GetHealInfo()->GetHeal() : 0;
            bp /= ratio;

            target->CastCustomSpell(target, SPELL_DIFFUSION_HEAL, &bp, NULL, NULL, true);
        }

        void Register()
        {
            OnEffectProc += AuraEffectProcFn(spell_megaera_diffusion_AuraScript::OnProc, EFFECT_1, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_megaera_diffusion_AuraScript();
    }
};

// Nether Tear - 140138
class spell_megaera_nether_tear : public SpellScriptLoader
{
public:
    spell_megaera_nether_tear() : SpellScriptLoader("spell_megaera_nether_tear") { }

    class spell_megaera_nether_tear_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_megaera_nether_tear_SpellScript);

        void HandleOnHit()
        {
            if (!GetCaster() || !GetCaster()->ToCreature())
                return;

            if (Creature* caster = GetCaster()->ToCreature())
            {
                if (WorldLocation const* dest = GetExplTargetDest())
                {
                    caster->CastSpell(dest->m_positionX, dest->m_positionY, dest->m_positionZ, SPELL_NETHER_TEAR_VISUAL, true);
                    //caster->AI()->SetDestTarget(dest);
                }
            }
        }

        void Register()
        {
            OnHit += SpellHitFn(spell_megaera_nether_tear_SpellScript::HandleOnHit);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_megaera_nether_tear_SpellScript();
    }

    class spell_megaera_nether_tear_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_megaera_nether_tear_AuraScript);

        void OnTick(AuraEffect const* aurEff)
        {
            if (!GetTarget() || !GetTarget()->ToCreature())
                return;

            if (Creature* arcaneHead = GetTarget()->ToCreature())
                arcaneHead->AI()->DoAction(ACTION_SPAWN_NETHER_WYRM);
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_megaera_nether_tear_AuraScript::OnTick, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_megaera_nether_tear_AuraScript();
    }
};

// Rampage (periodic) - 139458
class spell_megaera_rampage_periodic : public SpellScriptLoader
{
public:
    spell_megaera_rampage_periodic() : SpellScriptLoader("spell_megaera_rampage_periodic") { }

    class spell_megaera_rampage_periodic_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_megaera_rampage_periodic_AuraScript);

        void OnTick(AuraEffect const* aurEff)
        {
            if (!GetTarget())
                return;

            if (Creature* megaera = GetTarget()->ToCreature())
            {
                megaera->AI()->DoAction(ACTION_RAMPAGE);
            }
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_megaera_rampage_periodic_AuraScript::OnTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_megaera_rampage_periodic_AuraScript();
    }
};

class spell_megaera_torrent_of_ice_force : public SpellScriptLoader
{
public:
    spell_megaera_torrent_of_ice_force() : SpellScriptLoader("spell_megaera_torrent_of_ice_force") { }

    class spell_megaera_torrent_of_ice_force_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_megaera_torrent_of_ice_force_SpellScript);

        void FilterTargets(std::list<WorldObject*> &targets)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            if (Creature* pCreature = GetCaster()->ToCreature())
            {
                if (Unit* target = pCreature->AI()->SelectTarget(SELECT_TARGET_FARTHEST, 0, 0.0f, true))
                {
                    targets.clear();
                    targets.push_back(target);
                }
            }
        }

        void HandleOnHit(SpellEffIndex effIndex)
        {
            PreventHitDefaultEffect(effIndex);

            if (!GetCaster() || !GetHitUnit())
                return;

            if (Creature* pCreature = GetCaster()->ToCreature())
            {
                if (Creature* pTorrent = pCreature->SummonCreature(NPC_TORRENT_OF_ICE, *GetHitUnit(), TEMPSUMMON_TIMED_DESPAWN, 9000))
                {
                    pTorrent->AI()->SetGUID(GetHitUnit()->GetGUID());
                }
            }
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_megaera_torrent_of_ice_force_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
            OnEffectHitTarget += SpellEffectFn(spell_megaera_torrent_of_ice_force_SpellScript::HandleOnHit, EFFECT_0, SPELL_EFFECT_FORCE_CAST);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_megaera_torrent_of_ice_force_SpellScript();
    }
};

class spell_megaera_icy_ground_dummy : public SpellScriptLoader
{
public:
    spell_megaera_icy_ground_dummy() : SpellScriptLoader("spell_megaera_icy_ground_dummy") { }

    class spell_megaera_icy_ground_dummy_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_megaera_icy_ground_dummy_SpellScript);

        void HandleOnHit(SpellEffIndex effIndex)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            if (GetHitUnit()->GetTypeId() == TYPEID_PLAYER)
            {
                GetCaster()->CastSpell(GetHitUnit(), SPELL_ICY_GROUND_DMG, true);
            }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_megaera_icy_ground_dummy_SpellScript::HandleOnHit, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_megaera_icy_ground_dummy_SpellScript();
    }
};

class spell_megaera_icy_ground_dmg : public SpellScriptLoader
{
public:
    spell_megaera_icy_ground_dmg() : SpellScriptLoader("spell_megaera_icy_ground_dmg") { }

    class spell_megaera_icy_ground_dmg_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_megaera_icy_ground_dmg_AuraScript);

        void OnTick(AuraEffect const* aurEff)
        {
            if (!GetTarget())
                return;

            if (!GetTarget()->FindNearestCreature(NPC_ICY_GROUND, 9.0f, true))
            {
                if (Aura* aur = GetTarget()->GetAura(SPELL_ICY_GROUND_SNARE))
                Remove();
            }
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_megaera_icy_ground_dmg_AuraScript::OnTick, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_megaera_icy_ground_dmg_AuraScript();
    }
};

void AddSC_boss_megaera()
{
    new boss_megaera();
    new npc_megaera_head();
    new npc_megaera_back_head();
    new npc_megaera_cinders();
    new npc_megaera_acid_rain();
    new npc_megaera_icy_ground();
    new npc_megaera_torrent_of_ice();
    new npc_megaera_nether_wyrm();
    new spell_megaera_cinders();
    new spell_megaera_acid_rain_aoe();      // 139845
    new spell_megaera_acid_rain_damage();
    new spell_megaera_diffusion();
    new spell_megaera_nether_tear();
    new spell_megaera_rampage_periodic();
    new spell_megaera_torrent_of_ice_force();
    new spell_megaera_icy_ground_dmg();
    new spell_megaera_icy_ground_dummy();
}
