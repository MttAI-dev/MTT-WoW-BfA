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

 //Missing scripts

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
    // Intro
    SPELL_PULL_TARGET_TO_OWN_POSITION = 138406, // Pulls target
    SPELL_FORCE_TO_JUMP = 138359,

    // Ji-Kun
    SPELL_CAW_FIRST = 138923,
    SPELL_CAW_MISSILE = 138926,

    SPELL_QUILLS = 134380,
    SPELL_QUILLS_DMG = 134381,
    SPELL_QUILLS_DUMMY = 138639, // ?

    SPELL_INFECTED_TALONS = 140094,
    SPELL_INFECTED_TALONS_DMG = 140092,

    SPELL_TALON_RAKE = 134366,

    SPELL_DOWN_DRAFT = 134370,

    SPELL_SAFETY_NET_TRIGGER = 136524,

    SPELL_SLIMED = 134256,

    SPELL_PRIMAL_NUTRIMENT = 140741,

    // Nests (with no effect : 138360  - 139286)
    SPELL_INCUBATE = 137526, // Red beam on activated nest
    SPELL_INCUBATED = 134347, // Incubated young egg (68194), turns into hatchling (68192) 10s after

    SPELL_LAY_EGG = 134367, // Summons an egg (68202)

    SPELL_FEED_YOUNG = 137528, // Casting 2s, triggers 2x 134385 (to script)
    SPELL_SUMMON_FEED = 134385, // Summons Feed (68178)

    SPELL_DROP_FEED_POOL = 138209, // Shows exploding green pool - triggers 134259 (summons 68188)

    SPELL_FEED_POOL_PERIODIC_DMG = 138319, // aura, 35k/s

    SPELL_FEED_SPAWN_SPELL = 138840, // Spawns green blob on caster
    SPELL_FEED_POOL_SPAWN_SPELL_GREEN = 138854, // Shows giant green pool at caster's feet

    SPELL_JUMP_TO_TARGET = 140575, // at platform
    SPELL_SUMMON_FEED_POOL_1 = 140578,

    SPELL_FEED_JUMPS_DOWN_TO_HATCHLING = 138904, // Jumps + triggers 139285
    SPELL_SUMMON_FEED_POOL_2 = 139285,

    SPELL_JUMP_TO_TARGET_ABOVE_HATCHLING = 138907, // Jumps to selected target

    SPELL_BEAM_TO_JUMP_TARGET_NON_HATCHLING = 138914, // Green
    SPELL_BEAM_TO_JUMP_TARGET_HATCHLING = 138915, // Yellow

    SPELL_FEED_APPEARANCE_SPELL = 138918, // Exploding yellow egg visual

    SPELL_FEED_POOL_SPAWN = 139020, // Shows exploding green pool + spawns feed pool (68188)
    SPELL_FEED_POOL_SPAWN_SPELL_YELLOW = 139284, // Shows yellow pool at caster's feet

    SPELL_HATCH = 137534, // Spawn Juvenile (69836)
    SPELL_NEST_GUARDIAN_SUMMON = 139090, // Spawns Nest Guardian
    SPELL_SPAWN_JI_KUN_HATCHLING = 139148, // Spawns Ji-Kun Hatchling (70144)


    SPELL_CHEEP_HATCHLING = 139296, // Replace MeleeAttack for Hatchling
    SPELL_CHEEP_FLEDGLING = 140570,
    SPELL_CHEEP_JUVENILE = 140129,
    SPELL_EAT = 134321, // Cast by Hatchling when Feed pool is near
    SPELL_MORPH = 134322, // If hatchling succeeds to eat (is alive at SPELL_EAT's end), it triggers Morph to turn into Fledgling

    // Feathers
    SPELL_DROP_FEATHERS = 134338, // Create areatrigger + visual for spawning feathers
    SPELL_DROP_FEATHERS_GOB = 140016, // Spawn feater GOB
    SPELL_DAEDALIAN_WINGS = 134339, // Give the ability to fly to player
    SPELL_LESSON_OF_ICARUS = 140571, // Prevent players from catching a new feather
    SPELL_FLIGHT = 133755, // Flight spell for players
    // Falling
    SPELL_PREVENT_FALL_DAMAGE = 139265, // Reduce fall damages
    SPELL_CATCH_FALL = 85282,  // Falling player ride vehicle (69839 - Fall Catcher)
    SPELL_EJECT_ALL_PASSENGERS = 68576,  // Fall catcher eject passengers
    // Exit
    SPELL_EXIT_CHAMBER = 141014,
    // Heroic mode
    SPELL_TALON_STRIKE = 139100,
    SPELL_SCREECH = 140640,
    SPELL_SCREECH_REDUCE_CASTING_SPEED = 134372,
};

enum Adds
{
    NPC_FEED_POOL = 68188,
    NPC_FEED_POOL_2 = 70216,
    NPC_JI_KUN_FLEDGLING_S_EGG = 68202,
    NPC_FLEDGLING = 68193, // Hatchling evolution or spawned by Fledgling egg
    NPC_YOUNG_EGG_OF_JI_KUN = 68194, // Is spawned above hatchlings
    NPC_MATURE_EGG_OF_JI_KUN = 69628, // Spawned by Fledgling
    NPC_FLEGLING_JUVENILE = 70095, // Juvenile spawned by Fledgling's egg
    NPC_EXIT_CHAMBER = 70734, // Spawns
    NPC_NEST_GUARDIAN = 701734, // Heroic mode
};

enum eEvents
{
    EVENT_TALON_RAKE = 1,
    EVENT_CAW,
    EVENT_QUILLS,
    EVENT_DOWN_DRAFT,
    EVENT_FEED_YOUNG,
    EVENT_TURN_INTO_FLEDGLING,
    EVENT_ACTIVATE_NEST,

    EVENT_HATCH,

    EVENT_CHEEP,
    EVENT_CHECK_FEED,

    EVENT_FLIGHT,
    EVENT_FEED_ACTIVATE,
    EVENT_FEEDPOOL_CHECK_PLAYERS,
    EVENT_EVOLVE,
    EVENT_TALON_STRIKE,
    EVENT_SCREECH,
    EVENT_SPAWN_NEST,
};

enum eActions
{
    ACTION_SUMMON_FEED = 1,
    ACTION_ACTIVATE_NEST,
    ACTION_INCUBATE_EGG,
    ACTION_FEED_EATEN,
    ACTION_FEEDPOOL_DESPAWN,
};

enum eTypes
{
    TYPE_IS_HATCHLING_HUNGRY,
    TYPE_SET_FEED_STATUS,
    TYPE_GET_FEEDPOOL_STATUS,
    TYPE_SET_FEEDPOOL_STATUS,
};

Position const waypointPos[52] =
{
    { 6211.530f, 4352.063f, -41.23960f, 0.0f },
    { 6219.918f, 4323.225f, -50.82288f, 0.0f },
    { 6200.393f, 4290.322f, -58.99046f, 0.0f },
    { 6167.124f, 4255.000f, -71.33135f, 0.0f },
    { 6130.888f, 4247.688f, -77.82609f, 0.0f },
    { 6094.024f, 4258.713f, -85.37042f, 0.0f },
    { 6080.453f, 4294.052f, -87.51177f, 0.0f },
    { 6083.603f, 4316.073f, -83.81752f, 0.0f },
    { 6091.601f, 4337.876f, -79.24355f, 0.0f },
    { 6115.493f, 4360.595f, -71.60667f, 0.0f },
    { 6143.307f, 4364.279f, -64.42132f, 0.0f },
    { 6170.492f, 4353.606f, -61.10223f, 0.0f },
    { 6189.739f, 4341.566f, -57.74512f, 0.0f },
    { 6203.971f, 4317.918f, -49.33831f, 0.0f },
    { 6206.109f, 4289.632f, -44.60070f, 0.0f },
    { 6189.743f, 4265.107f, -39.40984f, 0.0f },
    { 6163.300f, 4250.018f, -32.56945f, 0.0f },
    { 6136.179f, 4247.880f, -25.26046f, 0.0f },
    { 6093.636f, 4266.221f, -8.476698f, 0.0f },
    { 6075.295f, 4302.147f, 9.5958010f, 0.0f },
    { 6086.486f, 4356.149f, 34.423870f, 0.0f },
    { 6135.314f, 4386.748f, 58.916970f, 0.0f },
    { 6174.528f, 4380.014f, 65.794550f, 0.0f },
    { 6208.828f, 4352.507f, 70.634090f, 0.0f },
    { 6215.530f, 4317.869f, 71.754340f, 0.0f },
    { 6198.188f, 4279.812f, 75.545790f, 0.0f },
    { 6149.543f, 4285.440f, 75.545790f, 0.0f },
    { 6132.934f, 4319.959f, 75.545790f, 0.0f },
    { 6164.056f, 4341.441f, 74.958320f, 0.0f },
    { 6192.802f, 4302.389f, 72.754180f, 0.0f },
    { 6180.481f, 4254.817f, 67.915810f, 0.0f },
    { 6135.318f, 4246.200f, 61.224780f, 0.0f },
    { 6086.058f, 4267.385f, 53.709340f, 0.0f },
    { 6075.467f, 4313.128f, 51.114910f, 0.0f },
    { 6105.487f, 4349.319f, 43.703910f, 0.0f },
    { 6141.576f, 4359.033f, 34.561810f, 0.0f },
    { 6167.522f, 4340.946f, 27.807100f, 0.0f },
    { 6165.942f, 4305.924f, 20.013400f, 0.0f },
    { 6142.460f, 4289.088f, 9.9207350f, 0.0f },
    { 6121.972f, 4307.348f, -4.077662f, 0.0f },
    { 6130.896f, 4333.039f, -10.56661f, 0.0f },
    { 6155.038f, 4336.327f, -13.13866f, 0.0f },
    { 6169.749f, 4320.901f, -14.18135f, 0.0f },
    { 6174.592f, 4306.330f, -15.45293f, 0.0f },
    { 6172.712f, 4289.999f, -17.64817f, 0.0f },
    { 6162.471f, 4278.408f, -20.11584f, 0.0f },
    { 6151.760f, 4278.437f, -21.28869f, 0.0f },
    { 6144.905f, 4284.731f, -22.05752f, 0.0f },
    { 6142.729f, 4294.742f, -24.24618f, 0.0f },
    { 6145.100f, 4315.314f, -26.73017f, 0.0f },
    { 6148.108f, 4324.893f, -25.96644f, 0.0f },
    { 6160.587f, 4354.137f, -24.45477f, 0.0f }
};

Position const bossPlatformPos = { 6112.219f, 4285.634f, -30.04051f, 0.0f };
Position const bossPos = { 6146.1f, 4318.6f, -31.7793f, 6.16672f };

Position const featherPos[5] =
{
    { 6125.65f, 4355.60f, -31.8626f, 5.25605f },
    { 6110.11f, 4296.95f, -31.8626f, 0.49317f },
    { 6169.00f, 4281.05f, -31.8626f, 2.10022f },
    { 6184.19f, 4339.61f, -31.8627f, 3.66889f },
    { 6084.16f, 4428.31f, -119.633f, 5.20972f }
};

const Position nestPos[10] =
{
    {6192.71f, 4268.54f, -70.43f, 0.0f},
    {6070.34f, 4284.56f, -101.43f, 0.0f},
    {6097.09f, 4339.75f, -93.37f, 0.0f},
    {6159.36f, 4371.19f, -70.71f, 0.0f},
    {6220.28f, 4333.15f, -58.82f, 0.0f},

    {6173.13f, 4238.92f, 41.17f, 0.0f},
    {6077.61f, 4271.39f, 37.98f, 0.0f},
    {6083.54f, 4372.93f, 43.54f, 0.0f},
    {6217.55f, 4351.72f, 66.129f, 0.0f},
    {6151.94f, 4330.67f, 70.04f, 0.0f}
};

// Ji-Kun - 69712
class boss_ji_kun : public CreatureScript
{
public:
    boss_ji_kun() : CreatureScript("boss_ji_kun") { }

    CreatureAI* GetAI(Creature* p_Creature) const
    {
        return new boss_ji_kunAI(p_Creature);
    }

    struct boss_ji_kunAI : public BossAI
    {
        boss_ji_kunAI(Creature* p_Creature) : BossAI(p_Creature, DATA_JI_KUN)
        {
            me->setActive(true);
        }

        void Reset()
        {
            _Reset();

            me->RemoveAllDynObjects();

            me->SetReactState(REACT_DEFENSIVE);
        }

        void AttackStart(Unit* target)
        {
            if (!target)
                return;

            if (me->Attack(target, true))
                DoStartNoMovement(target);
        }

        void EnterCombat(Unit* /*p_Attacker*/)
        {
            events.ScheduleEvent(EVENT_TALON_RAKE, 24000);
            events.ScheduleEvent(EVENT_CAW, urand(18000, 50000));
            events.ScheduleEvent(EVENT_QUILLS, Is25ManRaid() ? 42500 : 60000);
            events.ScheduleEvent(EVENT_DOWN_DRAFT, 91000);
            events.ScheduleEvent(EVENT_FEED_YOUNG, 20000);
            events.ScheduleEvent(EVENT_SPAWN_NEST, 3000);

            me->AddAura(SPELL_INFECTED_TALONS, me);
        }

        void JustDied(Unit* p_Killer)
        {
            _JustDied();

            me->RemoveAllDynObjects();

            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_SCREECH);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_LESSON_OF_ICARUS);

            for (uint8 l_Idx = 0; l_Idx < 5; ++l_Idx)
                me->SummonCreature(NPC_EXIT_CHAMBER, featherPos[l_Idx].GetPositionX(), featherPos[l_Idx].GetPositionY(), featherPos[l_Idx].GetPositionZ());

            if (GameObject* l_ExitDoor = instance->instance->GetGameObject(instance->GetGuidData(GO_JI_KUN_EX_DOOR)))
                l_ExitDoor->SetGoState(GO_STATE_ACTIVE);
        }

        void DoAction(const int32 action)
        {
            if (action == ACTION_SUMMON_FEED)
            {
                std::list<Creature*> hatchlings;

                if (!hatchlings.empty())
                {
                    for (std::list<Creature*>::iterator itr = hatchlings.begin(); itr != hatchlings.end(); ++itr)
                    {
                        Creature* pHatchling = (*itr);
                        if (Creature* pFeed = me->SummonCreature(NPC_FEED, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ()))
                        {
                            pFeed->AI()->SetData(TYPE_SET_FEED_STATUS, 1);
                            pFeed->CastSpell(pHatchling, SPELL_FEED_JUMPS_DOWN_TO_HATCHLING, true);
                        }
                    }
                }
                else
                {
                    uint8 maxFeed = urand(3, 6);
                    for (uint8 i = 0; i < maxFeed; ++i)
                    {
                        if (Creature* l_Feed = me->SummonCreature(NPC_FEED, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ()))
                        {
                            Position pos;
                            l_Feed->AI()->SetData(TYPE_SET_FEED_STATUS, 0);
                            l_Feed->CastSpell(pos.GetPositionX(), pos.GetPositionY(), pos.GetPositionZ() + 0.1f, SPELL_JUMP_TO_TARGET, true);
                        }
                    }
                }
            }
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
                case EVENT_SPAWN_NEST:
                    events.ScheduleEvent(EVENT_SPAWN_NEST, 30000);
                    break;
                case EVENT_TALON_RAKE:
                {
                    DoCastVictim(SPELL_TALON_RAKE);
                    events.ScheduleEvent(EVENT_TALON_RAKE, urand(20000, 25000));
                    break;
                }
                case EVENT_CAW:
                {
                    if (Unit* l_Target = SelectTarget(SELECT_TARGET_RANDOM))
                        me->CastSpell(l_Target, SPELL_CAW_FIRST, false);
                    events.ScheduleEvent(EVENT_CAW, urand(18000, 50000));
                    break;
                }
                case EVENT_QUILLS:
                {
                    me->CastSpell(me, SPELL_QUILLS);
                    events.ScheduleEvent(EVENT_QUILLS, Is25ManRaid() ? 62500 : 81000);
                    break;
                }
                case EVENT_DOWN_DRAFT:
                {
                    me->CastSpell(me, SPELL_DOWN_DRAFT);
                    events.ScheduleEvent(EVENT_DOWN_DRAFT, IsHeroic() ? 93000 : 97000);
                    break;
                }
                case EVENT_FEED_YOUNG:
                {
                    me->CastSpell(me, SPELL_SUMMON_FEED, false);
                    events.ScheduleEvent(EVENT_FEED_YOUNG, 41000);
                    break;
                }
                default:
                    break;
                }
            }
                DoMeleeAttackIfReady();
            }

        private:

            uint8 currentNest;
            uint64 incubatorGuids[10];

        private:

            void SpawnIncubators()
            {
                const uint8 spawn10[6] = { 0, 1, 2, 5, 6, 9 };
                const uint8 spawn25[10] = { 0, 1, 2, 3, 4, 5, 6, 9, 7, 8 };
            }

            };

            void GetHungryHatchlings(std::list<Creature*>& creatures) const
            {
            }

        private:

            class HatchlingCheck
            {
            public:
                bool operator() (Creature* creature)
                {
                    if (creature->GetEntry() != NPC_HATCHLING)
                        return false;

                    if (creature->AI()->GetData(TYPE_IS_HATCHLING_HUNGRY) == 0)
                        return false;
            }
      };
};

// Jump to Boss Platform - 69885
class npc_ji_kun_jump_to_boss_platform : public CreatureScript
{
public:
    npc_ji_kun_jump_to_boss_platform() : CreatureScript("npc_ji_kun_jump_to_boss_platform") { }

    CreatureAI* GetAI(Creature* l_Creature) const
    {
        return new npc_ji_kun_jump_to_boss_platformAI(l_Creature);
    }

    struct npc_ji_kun_jump_to_boss_platformAI : public ScriptedAI
    {
        npc_ji_kun_jump_to_boss_platformAI(Creature* p_Creature) : ScriptedAI(p_Creature) { }

        uint32 m_CheckTimer;

        void Reset()
        {
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE));
            me->SetReactState(REACT_PASSIVE);

            m_CheckTimer = 500;
        }

        void UpdateAI(const uint32 diff)
        {
            if (m_CheckTimer)
            {
                if (m_CheckTimer <= diff)
                {
                    std::list<Player*> l_PlayerList;
                    me->GetPlayerListInGrid(l_PlayerList, 13.f);

                    for (Player* l_Player : l_PlayerList)
                    {
                        if (l_Player->isMoving() || l_Player->IsInCombat())
                            continue;

                    }
                    m_CheckTimer = 500;
                }
                else
                    m_CheckTimer -= diff;
            }
        }
    };
};

// Incubater - 69626
class npc_ji_kun_incubater : public CreatureScript
{
public:
    npc_ji_kun_incubater() : CreatureScript("npc_ji_kun_incubater") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_ji_kun_incubaterAI(creature);
    }

    struct npc_ji_kun_incubaterAI : public Scripted_NoMovementAI
    {
        npc_ji_kun_incubaterAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);

            isLowerNest = false;
        }

        void Reset()
        {
            if (me->GetPositionZ() < 0.0f)
            {
                isLowerNest = true;
            }
            else
            {
                isLowerNest = false;
            }
        }

        void DoAction(const int32 p_Action)
        {
            switch (p_Action)
            {
            case ACTION_ACTIVATE_NEST:
            {
                DoCast(SPELL_INCUBATE);

                uint8 maxEggs = Is25ManRaid() ? 5 : 4;
                for (uint8 i = 0; i < maxEggs; ++i)
                {
                    float dist = frand(1.0f, 3.5f);

                    me->SummonCreature(isLowerNest ? NPC_YOUNG_EGG_OF_JI_KUN : NPC_MATURE_EGG_OF_JI_KUN, me->GetPositionZ() + 1.0f);
                }

                break;
            }
            }
        }

    private:

        bool isLowerNest;
    };
};

// Young egg of Ki-Kun - 68194
class npc_ji_kun_young_egg_of_jikun : public CreatureScript
{
public:
    npc_ji_kun_young_egg_of_jikun() : CreatureScript("npc_ji_kun_young_egg_of_jikun") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_ji_kun_young_egg_of_jikunAI(creature);
    }

    struct npc_ji_kun_young_egg_of_jikunAI : public Scripted_NoMovementAI
    {
        npc_ji_kun_young_egg_of_jikunAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);
        }

        void Reset()
        {
            me->AddAura(SPELL_INCUBATED, me);
        }

        void IsSummonedBy(Unit* owner)
        {
            events.ScheduleEvent(EVENT_HATCH, 10000);
        }

        void UpdateAI(uint32 const diff)
        {
            events.Update(diff);

            if (uint32 eventId = events.ExecuteEvent())
            {
                if (eventId == EVENT_HATCH)
                {
                    Hatch();
                }
            }
        }

    private:

        void Hatch()
        {
            float healthPct = me->GetHealthPct();
            if (healthPct < 1.0f)
                return;

            if (Creature* pHatchling = me->SummonCreature(NPC_HATCHLING, *me))
            {
                pHatchling->SetHealth(pHatchling->CountPctFromMaxHealth(healthPct));
            }

            me->Kill(me);
            me->DespawnOrUnsummon(1000);
        }
    };


};

// Hatchling - 68192
class npc_ji_kun_hatchling : public CreatureScript
{
public:
    npc_ji_kun_hatchling() : CreatureScript("npc_ji_kun_hatchling") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_ji_kun_hatchlingAI(creature);
    }

    struct npc_ji_kun_hatchlingAI : public Scripted_NoMovementAI
    {
        npc_ji_kun_hatchlingAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);

            isHungry = true;
            m_IsGrown = false;
        }

        void Reset()
        {
            events.Reset();

            events.ScheduleEvent(EVENT_CHECK_FEED, 1000);
        }

        void EnterCombat(Unit* who)
        {
            events.ScheduleEvent(EVENT_CHEEP, urand(1000, 10000));
        }

        void JustDied(Unit* /*killer*/)
        {
            DoCast(me, SPELL_DROP_FEATHERS_GOB, true);
        }

        void UpdateAI(const uint32 diff)
        {
            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_CHECK_FEED:
                {
                    if (me->FindNearestCreature(NPC_FEED_POOL_2, 5.0f, true))
                    {
                        isHungry = false;
                        DoCast(me, SPELL_EAT);
                        events.ScheduleEvent(EVENT_EVOLVE, 5000);
                    }
                    else
                    {
                        events.ScheduleEvent(EVENT_CHECK_FEED, 1000);
                    }
                    break;
                }
                case EVENT_CHEEP:
                {
                    DoCastAOE(m_IsGrown ? SPELL_CHEEP_FLEDGLING : SPELL_CHEEP_HATCHLING);
                    events.ScheduleEvent(EVENT_CHEEP, urand(8000, 12000));
                    break;
                }
                case EVENT_EVOLVE:
                {
                    m_IsGrown = true;

                    DoCast(me, SPELL_MORPH, true);
                    DoCast(me, SPELL_LAY_EGG);
                    events.RescheduleEvent(EVENT_CHEEP, urand(3000, 10000));
                    break;
                }
                }
            }
        }

    private:

        bool isHungry;
        bool m_IsGrown;

    };
};

// Ji-Kun Fledgling's Egg - 68202
// Mature Egg of Ji-Kun - 69628
class npc_ji_kun_fledgling_egg : public CreatureScript
{
public:
    npc_ji_kun_fledgling_egg() : CreatureScript("npc_ji_kun_fledgling_egg") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_ji_kun_fledgling_eggAI(creature);
    }

    struct npc_ji_kun_fledgling_eggAI : public ScriptedAI
    {
        npc_ji_kun_fledgling_eggAI(Creature* creature) : ScriptedAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);
        }

        void Reset()
        {
            canDropFeather = true;

            if (me->GetEntry() == NPC_MATURE_EGG_OF_JI_KUN)
                me->CastSpell(me, SPELL_INCUBATED, false);

            events.ScheduleEvent(EVENT_HATCH, me->GetEntry() == NPC_MATURE_EGG_OF_JI_KUN ? 10000 : 2000);
        }

        void JustDied(Unit* /*killer*/)
        {
            if (canDropFeather)
                me->CastSpell(me, SPELL_DROP_FEATHERS_GOB, false);
        }

        void UpdateAI(const uint32 p_Diff)
        {
            events.Update(p_Diff);

            if (uint32 eventId = events.ExecuteEvent())
            {
                if (eventId == EVENT_HATCH)
                {
                    if (Creature* pJuvenile = me->SummonCreature(NPC_FLEGLING_JUVENILE, *me))
                    {
                        canDropFeather = false;
                        pJuvenile->Kill(me);
                        me->DespawnOrUnsummon(2000);
                    }
                }
            }
        }

    private:

        bool canDropFeather;
    };
};

// Juvenile - 70095 (born from 68202 - Ji_Kun Fledgling's Egg)
// Juvenile - 69836 (born from 69628 - Mature egg of Ji-Kun)
class npc_ji_kun_juvenile : public CreatureScript
{
public:
    npc_ji_kun_juvenile() : CreatureScript("npc_ji_kun_juvenile") { }

    CreatureAI* GetAI(Creature* p_Creature) const
    {
        return new npc_ji_kun_juvenileAI(p_Creature);
    }

    struct npc_ji_kun_juvenileAI : public ScriptedAI
    {
        npc_ji_kun_juvenileAI(Creature* p_Creature) : ScriptedAI(p_Creature) { }

        EventMap m_Events;

        void Reset()
        {
            m_Events.Reset();

            // Set Flying
            me->SetDisableGravity(true);
            me->SetCanFly(true);

            m_Events.ScheduleEvent(EVENT_CHEEP, 1000);
            m_Events.ScheduleEvent(EVENT_FLIGHT, 5000);
        }

        void MovementInform(uint32 p_Type, uint32 p_Id)
        {
            if (p_Type != POINT_MOTION_TYPE || p_Id != 1)
                return;

            m_Events.ScheduleEvent(EVENT_FEED_YOUNG, 1000);
        }

        void DoAction(int32 const p_Action)
        {
            if (p_Action == ACTION_SUMMON_FEED)
                if (Creature* l_Feed = me->SummonCreature(NPC_FEED, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ()))
                    l_Feed->AI()->SetData(TYPE_SET_FEED_STATUS, 0);
        }

        void UpdateAI(const uint32 p_Diff)
        {
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            m_Events.Update(p_Diff);

            while (uint32 l_EventId = m_Events.ExecuteEvent())
            {
                switch (l_EventId)
                {
                case EVENT_CHEEP:
                {
                    if (Unit* l_Target = SelectTarget(SELECT_TARGET_RANDOM, 0, 200.0f, true))
                        me->CastSpell(l_Target, SPELL_CHEEP_JUVENILE, false);
                    m_Events.ScheduleEvent(EVENT_CHEEP, 5000);
                    break;
                }
                case EVENT_FLIGHT:
                {
                    // Shouldn't attack player in melee anymore
                    me->SetReactState(REACT_PASSIVE);

                    float l_Dist = frand(5.0f, 20.0f);
                    float l_PosZ = 5.0f;

                    break;
                }
                case EVENT_FEED_YOUNG:
                {
                    me->CastSpell(me, SPELL_SUMMON_FEED, false);
                    m_Events.ScheduleEvent(EVENT_FEED_YOUNG, 50000);
                    break;
                }
                default:
                    break;
                }
                DoMeleeAttackIfReady();
            }
        }
    };
};

// Feed - 68178
class npc_ji_kun_feed : public CreatureScript
{
public:
    npc_ji_kun_feed() : CreatureScript("npc_ji_kun_feed") { }

    CreatureAI* GetAI(Creature* p_Creature) const
    {
        return new npc_ji_kun_feedAI(p_Creature);
    }

    struct npc_ji_kun_feedAI : public ScriptedAI
    {
        npc_ji_kun_feedAI(Creature* p_Creature) : ScriptedAI(p_Creature)
        {
            me->SetReactState(REACT_PASSIVE);
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC));

            isToHatchling = false;
        }

        void Reset() override
        {

        }

        void IsSummonedBy(Unit* p_Summoner)
        {
            me->AddAura(SPELL_FEED_SPAWN_SPELL, me);
        }

        void SetData(uint32 type, uint32 value)
        {
            if (type == TYPE_SET_FEED_STATUS)
                isToHatchling = value > 0 ? true : false;
        }

        void MovementInform(uint32 type, uint32 id)
        {
            if (id == EVENT_JUMP)
            {
                if (isToHatchling)
                    me->CastSpell(me, SPELL_SUMMON_FEED_POOL_2, true);
                else
                    me->CastSpell(me, SPELL_SUMMON_FEED_POOL_1, true);

                me->DespawnOrUnsummon(100);
            }
        }

        void UpdateAI(const uint32 p_Diff)
        {
            // In case a player catch a feed...
            if (Player* player = me->SelectNearestPlayer(0.2f))
            {
                me->AddAura(SPELL_SLIMED, player);
                me->AddAura(SPELL_PRIMAL_NUTRIMENT, player);
                me->GetMotionMaster()->Clear();
                me->DespawnOrUnsummon();
            }
        }

    private:

        bool isToHatchling;
    };
};

// Feed Pool - 68188
class npc_ji_kun_feed_pool : public CreatureScript
{
public:
    npc_ji_kun_feed_pool() : CreatureScript("npc_ji_kun_feed_pool") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_ji_kun_feed_poolAI(creature);
    }

    struct npc_ji_kun_feed_poolAI : public Scripted_NoMovementAI
    {
        npc_ji_kun_feed_poolAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE));
        }

        void Reset()
        {
            me->CastSpell(me, SPELL_FEED_POOL_SPAWN_SPELL_GREEN, false);

            events.ScheduleEvent(EVENT_FEEDPOOL_CHECK_PLAYERS, 500);
        }

        void UpdateAI(uint32 const diff)
        {
            events.Update(diff);

            if (uint32 eventId = events.ExecuteEvent())
            {
                if (eventId == EVENT_FEEDPOOL_CHECK_PLAYERS)
                {
                    events.ScheduleEvent(EVENT_FEEDPOOL_CHECK_PLAYERS, 500);
                }
            }
        }

    private:

        void UpdateTargets()
        {
            std::list<Player*> playerList;
            GetPlayerListInGrid(playerList, me, 3.0f);

            for (Player* player : playerList)
            {
                if (!player->HasAura(SPELL_FEED_POOL_PERIODIC_DMG))
                {
                    me->AddAura(SPELL_FEED_POOL_PERIODIC_DMG, player);
                }
            }
        }
    };
};

class npc_ji_kun_feed_pool_2 : public CreatureScript
{
public:
    npc_ji_kun_feed_pool_2() : CreatureScript("npc_ji_kun_feed_pool_2") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_ji_kun_feed_pool_2AI(creature);
    }

    struct npc_ji_kun_feed_pool_2AI : public Scripted_NoMovementAI
    {
        npc_ji_kun_feed_pool_2AI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE));
        }

        void Reset()
        {
            me->CastSpell(me, SPELL_FEED_POOL_SPAWN_SPELL_YELLOW, false);
        }

        void UpdateAI(uint32 const diff)
        {
            events.Update(diff);

            if (uint32 eventId = events.ExecuteEvent())
            {

            }
        }
    };
};

// Exit Chamber [DNT] - 70734
class npc_ji_kun_exit_chamber : public CreatureScript
{
public:
    npc_ji_kun_exit_chamber() : CreatureScript("npc_ji_kun_exit_chamber") { }

    CreatureAI* GetAI(Creature* p_Creature) const
    {
        return new npc_ji_kun_exit_chamberAI(p_Creature);
    }

    struct npc_ji_kun_exit_chamberAI : public Scripted_NoMovementAI
    {
        npc_ji_kun_exit_chamberAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {

        }

        void Reset()
        {
            me->CastSpell(me, SPELL_EXIT_CHAMBER, false);
            me->CastSpell(me, SPELL_DROP_FEATHERS_GOB, false);
        }

        void UpdateAI(uint32 const diff)
        {
            if (!GetClosestGameObjectWithEntry(me, GO_JI_KUN_FEATHER, 10.0f))
                me->CastSpell(me, SPELL_DROP_FEATHERS_GOB, false);
               }
    };
};

// Nest Guardian - 70134
class npc_ji_kun_nest_guardian : public CreatureScript
{
public:
    npc_ji_kun_nest_guardian() : CreatureScript("npc_ji_kun_nest_guardian") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_ji_kun_nest_guardianAI(creature);
    }

    struct npc_ji_kun_nest_guardianAI : public Scripted_NoMovementAI
    {
        npc_ji_kun_nest_guardianAI(Creature* creature) : Scripted_NoMovementAI(creature) { }

        void Reset()
        {
            events.Reset();
            events.ScheduleEvent(EVENT_TALON_STRIKE, 10000);
            events.ScheduleEvent(EVENT_SCREECH, 500);
        }

        void JustDied(Unit* /*killer*/)
        {
            me->DespawnOrUnsummon(2000);
        }

        void UpdateAI(const uint32 diff)
        {
            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_TALON_STRIKE:
                {
                    Unit* victim = me->GetVictim();
                    if (!victim)
                        victim = SelectTarget(SELECT_TARGET_TOPAGGRO, 0, 5.0f, true);

                    if (victim)
                        me->CastSpell(victim, SPELL_TALON_STRIKE, true);

                    events.ScheduleEvent(EVENT_TALON_STRIKE, 10000);
                    break;
                }
                case EVENT_SCREECH:
                {
                    if (!me->SelectNearbyTarget() && (!me->GetVictim() || me->GetVictim()->GetDistance2d(me) > NOMINAL_MELEE_RANGE))
                        me->CastSpell(me, SPELL_SCREECH, true);
                    events.ScheduleEvent(EVENT_SCREECH, 2000);
                    break;
                }
                default:
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }
    };
};


// Caw - 138923
class spell_ji_kun_caw : public SpellScriptLoader
{
public:
    spell_ji_kun_caw() : SpellScriptLoader("spell_ji_kun_caw") { }

    class spell_ji_kun_caw_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_ji_kun_caw_SpellScript);

        void HandleOnHit()
        {
            if (Unit* l_Caster = GetCaster())
                if (Unit* l_Target = GetHitUnit())
                    l_Caster->CastSpell(l_Target, SPELL_CAW_MISSILE, true);
        }

        void Register()
        {
            OnHit += SpellHitFn(spell_ji_kun_caw_SpellScript::HandleOnHit);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_ji_kun_caw_SpellScript();
    }
};

// Infected Talons - 140094
class spell_ji_kun_infected_talons : public SpellScriptLoader
{
public:
    spell_ji_kun_infected_talons() : SpellScriptLoader("spell_ji_kun_infected_talons") { }

    class spell_ji_kun_infected_talons_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_ji_kun_infected_talons_AuraScript);

        void OnProc(AuraEffect const* /*p_AurEff*/, ProcEventInfo & p_EventInfo)
        {
            PreventDefaultAction();

            Unit* caster = GetUnitOwner();

            Unit* target = p_EventInfo.GetProcTarget();

            if (!caster || !target || caster == target)
                return;

            caster->CastSpell(target, SPELL_INFECTED_TALONS_DMG, true);
        }

        void Register()
        {
            OnEffectProc += AuraEffectProcFn(spell_ji_kun_infected_talons_AuraScript::OnProc, EFFECT_0, SPELL_AURA_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_ji_kun_infected_talons_AuraScript();
    }
};

// Regurgitate - 134385
class spell_ji_kun_regurgitate : public SpellScriptLoader
{
public:
    spell_ji_kun_regurgitate() : SpellScriptLoader("spell_ji_kun_regurgitate") { }

    class spell_ji_kun_regurgitate_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_ji_kun_regurgitate_SpellScript);

        void HandleBeforeCast()
        {
            if (Unit* l_Caster = GetCaster())
                if (l_Caster->ToCreature())
                    l_Caster->GetAI()->DoAction(ACTION_SUMMON_FEED);
        }

        void Register()
        {
            BeforeCast += SpellCastFn(spell_ji_kun_regurgitate_SpellScript::HandleBeforeCast);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_ji_kun_regurgitate_SpellScript();
    }
};

// 134339 - Daedalian Wings
class spell_ji_kun_daedalian_wings : public SpellScriptLoader
{
public:
    spell_ji_kun_daedalian_wings() : SpellScriptLoader("spell_ji_kun_daedalian_wings") { }

    class spell_ji_kun_daedalian_wings_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_ji_kun_daedalian_wings_SpellScript);

        void SetStackEnd()
        {
            Unit* l_Caster = GetCaster();

            if (!l_Caster)
                return;

            Aura* l_DaedalianAura = l_Caster->GetAura(SPELL_DAEDALIAN_WINGS);
            if (!l_DaedalianAura)
                l_DaedalianAura = l_Caster->AddAura(SPELL_DAEDALIAN_WINGS, l_Caster);

            if (!l_DaedalianAura)
                return;
        }

        void Register()
        {
            AfterCast += SpellCastFn(spell_ji_kun_daedalian_wings_SpellScript::SetStackEnd);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_ji_kun_daedalian_wings_SpellScript();
    }
};

// 133755 - Flight
class spell_ji_kun_flight : public SpellScriptLoader
{
public:
    spell_ji_kun_flight() : SpellScriptLoader("spell_ji_kun_flight") { }

    class spell_ji_kun_flight_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_ji_kun_flight_SpellScript);

        SpellCastResult AllowFly()
        {
            if (Unit* l_Caster = GetCaster())
                if (l_Caster->GetMapId() == 1098)
                    return SPELL_CAST_OK;

            return SPELL_FAILED_INCORRECT_AREA;
        }

        void DaedalianStacks()
        {
            if (Unit* l_Caster = GetCaster())
            {
                if (!GetClosestCreatureWithEntry(l_Caster, NPC_JI_KUN, 200.0f))
                {
                    if (l_Caster->HasAura(SPELL_DAEDALIAN_WINGS))
                        l_Caster->RemoveAura(SPELL_DAEDALIAN_WINGS);
                }
            }
        }

        void Register()
        {
            OnCheckCast += SpellCheckCastFn(spell_ji_kun_flight_SpellScript::AllowFly);
            AfterCast += SpellCastFn(spell_ji_kun_flight_SpellScript::DaedalianStacks);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_ji_kun_flight_SpellScript();
    }
};

// Screech - 140640
class spell_ji_kun_screech : public SpellScriptLoader
{
public:
    spell_ji_kun_screech() : SpellScriptLoader("spell_ji_kun_screech") { }

    class spell_ji_kun_screech_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_ji_kun_screech_SpellScript);

        void ReduceSpeed()
        {
            Unit* l_Caster = GetCaster();
            Unit* l_Victim = GetHitPlayer();

            if (!l_Victim || !l_Caster)
                return;

            l_Caster->AddAura(SPELL_SCREECH_REDUCE_CASTING_SPEED, l_Victim);
        }

        void Register()
        {
            OnHit += SpellHitFn(spell_ji_kun_screech_SpellScript::ReduceSpeed);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_ji_kun_screech_SpellScript();
    }
};

class spell_ji_kun_feed_pool_dmg : public SpellScriptLoader
{
public:
    spell_ji_kun_feed_pool_dmg() : SpellScriptLoader("spell_ji_kun_feed_pool_dmg") { }

    class spell_ji_kun_feed_pool_dmg_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_ji_kun_feed_pool_dmg_AuraScript);

        void HandlePeriodic(AuraEffect const* aurEff)
        {
            if (!GetUnitOwner())
                return;

            Creature* pPool = GetUnitOwner()->FindNearestCreature(NPC_FEED_POOL, 3.0f);
            if (!pPool)
            {
                Remove();
                return;
            }
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_ji_kun_feed_pool_dmg_AuraScript::HandlePeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_ji_kun_feed_pool_dmg_AuraScript();
    }
};

void AddSC_boss_ji_kun()
{
    new boss_ji_kun();                  // 69712
    new npc_ji_kun_jump_to_boss_platform();    // 69885
    new npc_ji_kun_incubater();                // 69626
    new npc_ji_kun_young_egg_of_jikun();       // 68194
    new npc_ji_kun_hatchling();                // 68192
    new npc_ji_kun_fledgling_egg();            // 68202 - 69628
    new npc_ji_kun_juvenile();                 // 70095 - 69836
    new npc_ji_kun_feed();                     // 68178
    new npc_ji_kun_feed_pool();                // 68188
    new npc_ji_kun_feed_pool_2();              // 70216
    new npc_ji_kun_exit_chamber();             // 70734
    new npc_ji_kun_nest_guardian();            // 70134

    new spell_ji_kun_caw();                    // 138923
    new spell_ji_kun_infected_talons();        // 140094
    new spell_ji_kun_regurgitate();            // 134385
    new spell_ji_kun_daedalian_wings();        // 134339
    new spell_ji_kun_flight();                 // 133755
    new spell_ji_kun_screech();                // 140640
    new spell_ji_kun_feed_pool_dmg();          // 138319
}
