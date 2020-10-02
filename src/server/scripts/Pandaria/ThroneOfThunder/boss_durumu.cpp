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

// 137674

enum ScriptTexts
{
    SAY_AGGRO = 0,
    SAY_BERSERK = 1,
    SAY_DEATH = 2,
    SAY_INTRO = 3,
    SAY_KILL = 4,
    SAY_WIPE = 5,
    SAY_DESINTEGRATION_BEAM = 6,
    SAY_COLORBIND = 7,
    SAY_LINGERING_GAZE = 8,
    SAY_HARD_STARE = 9,
    SAY_COLORBIND_YELL = 10,
};

enum eSpells
{
    SPELL_HARD_STARE = 133765,
    SPELL_SERIOUS_WOUND = 133767,
    SPELL_ARTETIAL_CUT = 133768,

    SPELL_GAZE = 134029,

    SPELL_FORCE_OF_WILL = 136932,
    SPELL_FORCE_OF_WILL_KNOCK_BACK = 136413,

    SPELL_LINGERING_GAZE = 138467, // Script Effect
    SPELL_LINGERING_GAZE_TARGET = 134626,
    SPELL_LINGERING_GAZE_MISSILE = 133792,
    SPELL_LINGERING_GAZE_AREA_TRIGGER = 133793,
    SPELL_LINGERING_GAZE_AURA = 134040,
    SPELL_LINGERING_GAZE_DMG = 140495,


    SPELL_LIFE_DRAIN = 133795, // main spell
    SPELL_LIFE_DRAIN_AURA = 133796, // on caster
    SPELL_LIFE_DRAIN_DMG = 133798, // damage
    SPELL_LIFE_DRAIN_HEAL = 133807,
    SPELL_LIFE_DRAIN_STUN = 137727,

    // Second Phase
    SPELL_BRIGHT_LIGHT_AURA = 133737,
    SPELL_BRIGHT_LIGHT_LINK = 134124, // Yellow link between caster/target
    SPELL_BRIGHT_LIGHT = 133740,
    SPELL_BRIGHT_LIGHT_DMG_1 = 133738,
    SPELL_BRIGHT_LIGHT_DMG_2 = 133739,

    SPELL_INFRARED_LIGHT_AURA = 133731,
    SPELL_INFRARED_LIGHT_LINK = 134123, // Red link between caster/target
    SPELL_INFRARED_LIGHT = 133734,
    SPELL_INFRARED_LIGHT_DMG_1 = 133732,
    SPELL_INFRARED_LIGHT_DMG_2 = 133733,

    SPELL_BLUE_RAYS_AURA = 133675,
    SPELL_BLUE_RAYS_LINK = 134122, // Blue link between caster/target
    SPELL_BLUE_RAYS = 133672,
    SPELL_BLUE_RAYS_DMG_1 = 133677,
    SPELL_BLUE_RAYS_DMG_2 = 133678, // 136119

    SPELL_RED_FOG_INVISIBILITY = 136116,
    SPELL_YELLOW_FOG_INVISIBILITY = 136117,
    SPELL_BLUE_FOG_INVISIBILITY = 136118,

    SPELL_SUMMON_FOG_BEAST_RED = 136128,
    SPELL_SUMMON_FOG_BEAST_BLUE = 136130,
    SPELL_SUMMON_FOG_BEAST_YELLOW = 136129,

    // Color adds spells
    SPELL_AMBER_ARMOR = 136174, // Amber Fog
    SPELL_BURST_OF_AMBER = 136123, // Amber Fog
    SPELL_AMBER_RETAILIATION = 136175, // Amber Fog

    SPELL_CAUSTIC_SPIKE = 136154, // Crimson Fog
    SPELL_CRIMSON_BLOOM = 136122, // Crimson Fog

    SPELL_ICY_GRASP = 136177, // Azure Fog
    SPELL_FLASH_FREEZE = 136124,  // Azure Fog

    // Third Phase
    SPELL_SUMMON_EYEBEAM_TARGET = 133775, // Target of 134169
    SPELL_DISINTEGRATION_BEAM_PRECAST = 134169,
    SPELL_DISINTEGRATION_BEAM = 133776,

    // Unk visual, seems to be not used for the maze
    SPELL_NEAR_CONE_SLICE = 134751, // Visual near from the caster
    SPELL_NEAR_MID_CONE_SLICE = 134752, // Visual near-mid from the caster
    SPELL_MID_CONE_SLICE = 134753, // Visual mid from the caster
    SPELL_MID_FAR_CONE_SLICE = 134754, // Visual mid-far from the caster
    SPELL_FAR_CONE_SLICE = 134814, // Visual far from the caster

    // Those cumulated spells form a cone covering the whole platform, every visual lasts for 12 seconds.
    SPELL_WHOLE_ROOM_SLICE_ONE = 136232, // 4 Visual dark balls in front of the caster / dist from caster : 0.0f->1.61f          = 1.61f
    SPELL_WHOLE_ROOM_SLICE_TWO = 136233, // Visual farther than the precedent one      / dist from caster : 1.6f->7.21f          = 5.61f
    SPELL_WHOLE_ROOM_SLICE_THREE = 136234, // Visual farther than the precedent one      / dist from caster : 7.21f->11.443f       = 4.233f
    SPELL_WHOLE_ROOM_SLICE_FOUR = 136235, // Visual farther than the precedent one      / dist from caster : 11.443f->16.859f     = 5.416f
    SPELL_WHOLE_ROOM_SLICE_FIVE = 136236, // Visual farther than the precedent one      / dist from caster : 16.859f->21.94f      = 5.081f
    SPELL_WHOLE_ROOM_SLICE_SIX = 136237, // Visual farther than the precedent one      / dist from caster : 21.94f->26.504f      = 4.564f
    SPELL_WHOLE_ROOM_SLICE_SEVEN = 136238, // Visual farther than the precedent one      / dist from caster : 26.504f->32.24f      = 5.736f
    SPELL_WHOLE_ROOM_SLICE_EIGHT = 136239, // Visual farther than the precedent one      / dist from caster : 32.24f->37.896f      = 5.656f
    SPELL_WHOLE_ROOM_SLICE_NINE = 136240, // Visual farther than the precedent one      / dist from caster : 37.896f->43.273f     = 5.378f
    SPELL_WHOLE_ROOM_SLICE_TEN = 136241, // Visual farther than the precedent one      / dist from caster : 43.273f->47.631f     = 4.358f
    SPELL_WHOLE_ROOM_SLICE_ELEVEN = 136242, // Visual farther than the precedent one      / dist from caster : 47.631f->52.853f     = 5.222f
    SPELL_WHOLE_ROOM_SLICE_TWELVE = 136243, // Visual farther than the precedent one      / dist from caster : 52.853f->58.051f     = 5.198f
    SPELL_WHOLE_ROOM_SLICE_THIRTEEN = 136244, // Visual farther than the precedent one      / dist from caster : 58.051f->62.973f     = 4.922f

    // Each spell forms a cone covering the whole platform, with +3k MS duration for each spellId incrementation.
    // Maybe be launched from the 10th to the 1st to form the whole labyrinth
    SPELL_WHOLE_ROOM_MAZE_ONE_X = 136553, // Whole dark cone visual (M_PI / 6) (duration = 12500 MS)
    SPELL_WHOLE_ROOM_MAZE_TWO_X = 136554, // Whole dark cone visual (M_PI / 6) (duration = 15500 MS)
    SPELL_WHOLE_ROOM_MAZE_THREE_X = 136555, // Whole dark cone visual (M_PI / 6) (duration = 18500 MS)
    SPELL_WHOLE_ROOM_MAZE_FOUR_X = 136556, // Whole dark cone visual (M_PI / 6) (duration = 21500 MS)
    SPELL_WHOLE_ROOM_MAZE_FIVE_X = 136557, // Whole dark cone visual (M_PI / 6) (duration = 24500 MS)
    SPELL_WHOLE_ROOM_MAZE_SIX_X = 136558, // Whole dark cone visual (M_PI / 6) (duration = 27500 MS)
    SPELL_WHOLE_ROOM_MAZE_SEVEN_X = 136559, // Whole dark cone visual (M_PI / 6) (duration = 30500 MS)
    SPELL_WHOLE_ROOM_MAZE_EIGHT_X = 136560, // Whole dark cone visual (M_PI / 6) (duration = 33500 MS)
    SPELL_WHOLE_ROOM_MAZE_NINE_X = 136561, // Whole dark cone visual (M_PI / 6) (duration = 36500 MS)
    SPELL_WHOLE_ROOM_MAZE_TEN_X = 136562, // Whole dark cone visual (M_PI / 6) (duration = 39500 MS)

    SPELL_MAZE_PERIODIC_AURA_DAMAGE = 140502,

    SPELL_MIND_DAGGERS = 139107,
};

enum Adds
{
    NPC_APPARAISING_EYE = 67858,
    NPC_MIND_S_EYE = 67875,

    NPC_AMBER_FOG = 69051,
    NPC_EYEBEAM_TARGET = 67882,
};

enum Events
{
    EVENT_HARD_STARE = 1,
    EVENT_GAZE,
    EVENT_FORCE_OF_WILL,
    EVENT_FORCE_OF_WILL_KNOCK_BACK,
    EVENT_LINGERING_GAZE,
    EVENT_LIFE_DRAIN,
    EVENT_SECOND_PHASE,
    EVENT_SECOND_PHASE_BEGIN,
    EVENT_CHECK_ADD,
    EVENT_DISINTEGRATION_BEAM,
    EVENT_DISINTEGRATION_BEAM_1,
    EVENT_DISINTEGRATION_BEAM_2,
    EVENT_MIND_DAGGERS,
    EVENT_DISINTEGRATION_BEAM_END,
};

enum Actions
{
    ACTION_ADD_REVEALED = 1,
    ACTION_ADD_HIDE,
    ACTION_CRIMSON_FOG_DIED,
    ACTION_AZURE_FOG_DIED,
    ACTION_AMBER_FOG_DIED,
    ACTION_SECOND_PHASE_BEGIN,
    ACTION_DISINTEGRATION_BEAM,
};

enum ePhases
{
    PHASE_NORMAL_PHASE = 1,
    PHASE_COLORBLIND_PHASE = 2,
    PHASE_DISINTEGRATION_BEAM_PHASE = 3
};

const Position addsPos[3] =
{
    {5903.19f, 4546.09f, -6.17f, 3.5f},
    {5865.86f, 4525.75f, -6.17f, 4.1f},
    {5881.32f, 4483.26f, -6.17f, 5.6f}
};

const Position beamPos[16] =
{
    {5959.319336f, 4499.680176f, -6.17f, 4.360798f},
    {5949.012695f, 4475.765137f, -6.17f, 4.122565f},
    {5931.737305f, 4458.432129f, -6.17f, 3.542241f},
    {5908.529297f, 4449.585938f, -6.17f, 3.334546f},
    {5882.817383f, 4449.294922f, -6.17f, 2.989405f},
    {5858.623535f, 4459.425293f, -6.17f, 2.555693f},
    {5841.645020f, 4476.826172f, -6.17f, 2.149466f},
    {5832.558105f, 4499.017090f, -6.17f, 1.715748f},
    {5831.775391f, 4526.116211f, -6.17f, 1.278977f},
    {5841.450684f, 4548.466309f, -6.17f, 1.016303f},
    {5859.814453f, 4566.952637f, -6.17f, 0.738359f},
    {5882.262207f, 4575.937012f, -6.17f, 0.286319f},
    {5908.115234f, 4576.000000f, -6.17f, 6.175498f},
    {5931.536621f, 4566.873535f, -6.17f, 5.735681f},
    {5949.432617f, 4548.770996f, -6.17f, 5.418036f},
    {5959.154785f, 4524.815918f, -6.17f, 5.036244f}
};

const uint32 mazeCreateSpells[10] =
{
    SPELL_WHOLE_ROOM_MAZE_ONE_X,
    SPELL_WHOLE_ROOM_MAZE_TWO_X,
    SPELL_WHOLE_ROOM_MAZE_THREE_X,
    SPELL_WHOLE_ROOM_MAZE_FOUR_X,
    SPELL_WHOLE_ROOM_MAZE_FIVE_X,
    SPELL_WHOLE_ROOM_MAZE_SIX_X,
    SPELL_WHOLE_ROOM_MAZE_SEVEN_X,
    SPELL_WHOLE_ROOM_MAZE_EIGHT_X,
    SPELL_WHOLE_ROOM_MAZE_NINE_X,
    SPELL_WHOLE_ROOM_MAZE_TEN_X
};

const uint32 mazeSpells[13] =
{
    SPELL_WHOLE_ROOM_SLICE_ONE,
    SPELL_WHOLE_ROOM_SLICE_TWO,
    SPELL_WHOLE_ROOM_SLICE_THREE,
    SPELL_WHOLE_ROOM_SLICE_FOUR,
    SPELL_WHOLE_ROOM_SLICE_FIVE,
    SPELL_WHOLE_ROOM_SLICE_SIX,
    SPELL_WHOLE_ROOM_SLICE_SEVEN,
    SPELL_WHOLE_ROOM_SLICE_EIGHT,
    SPELL_WHOLE_ROOM_SLICE_NINE,
    SPELL_WHOLE_ROOM_SLICE_TEN,
    SPELL_WHOLE_ROOM_SLICE_ELEVEN,
    SPELL_WHOLE_ROOM_SLICE_TWELVE,
    SPELL_WHOLE_ROOM_SLICE_THIRTEEN
};


class MazeBuilder
{
public:

    MazeBuilder(Unit* caster) : m_Caster(caster)
    {
        updateTimer = 1000;
        currentSegment = 0;
        m_CurrentStage = STAGE_DISABLED;

        for (uint8 i = 0; i < 10; ++i)
        {
            segments[i].areaTriggerGUID = 0;
            segments[i].segmentId = -1;
            segments[i].created = false;
        }
    }

    void Start()
    {
        updateTimer = 1000;
        currentSegment = 0;
        m_CurrentStage = STAGE_PREPARE;
    }

    void Stop()
    {
        updateTimer = 1000;
        currentSegment = 0;
        m_CurrentStage = STAGE_DISABLED;
    }

    void ClearMaze()
    {
        m_Caster->RemoveAreaTrigger(SPELL_WHOLE_ROOM_MAZE_TEN_X);

        for (uint8 i = 0; i < 13; ++i)
            m_Caster->RemoveAreaTrigger(mazeSpells[i]);
    }

    void Update(const uint32 diff)
    {
        if (m_CurrentStage == STAGE_DISABLED)
            return;

        if (m_CurrentStage == STAGE_PREPARE)
        {
            if (updateTimer <= diff)
            {
                updateTimer = 1000;

                CreatePreSegment(currentSegment);

                currentSegment++;

                // don't create big segment at last
                if (currentSegment >= 9)
                {
                    CreateMazeSegment(currentSegment, 8, false);

                    currentSegment = 0;
                    updateTimer = 8000;
                    m_CurrentStage = STAGE_MAZE;
                }
            }
            else
            {
                updateTimer -= diff;
            }
        }
        else if (m_CurrentStage == STAGE_MAZE)
        {
            if (updateTimer <= diff)
            {
                updateTimer = 3000;

                CreateMazeSegment(currentSegment, 8, true);

                currentSegment++;

                if (currentSegment >= 10)
                {
                    currentSegment = 0;
                }
            }
            else
            {
                updateTimer -= diff;
            }
        }
    }

private:

    enum Stages
    {
        STAGE_DISABLED = 0,
        STAGE_PREPARE,
        STAGE_MAZE,
    };

    struct MazeSegment
    {
        uint64 areaTriggerGUID;
        int8 segmentId;
        bool created;
    };

private:

    Unit* m_Caster;
    uint32 updateTimer;
    uint8 currentSegment;
    Stages m_CurrentStage;
    MazeSegment segments[10];

private:

    void CreatePreSegment(uint8 segment)
    {
        if (segment < 0 || segment >= 10)
            return;

        // keep original orientation
        float o = m_Caster->GetOrientation();

        m_Caster->SetOrientation((2.0f * M_PI / 10.0f) * segment);
        m_Caster->CastSpell(m_Caster, mazeCreateSpells[segment], true);

        // restore orientation
        m_Caster->SetOrientation(o);
    }

    void CreateMazeSegment(uint8 segment, uint8 skip, bool restorePrevSegment)
    {
        if (segment < 0 || segment >= 10)
            return;

        // keep original orientation
        float o = m_Caster->GetOrientation();

        m_Caster->SetOrientation((2.0f * M_PI / 10.0f) * segment);
        m_Caster->RemoveAreaTrigger(mazeCreateSpells[segment]);
        for (uint8 i = 0; i < 13; ++i)
        {
            if (i == skip)
                continue;

            m_Caster->CastSpell(m_Caster, mazeSpells[i], true);
        }

        if (restorePrevSegment)
        {
            uint8 prevSegment = segment == 0 ? 9 : segment - 1;

            m_Caster->SetOrientation((2.0f * M_PI / 10.0f) * prevSegment);
            m_Caster->CastSpell(m_Caster, mazeCreateSpells[prevSegment], true);
        }

        // restore orientation
        m_Caster->SetOrientation(o);
    }
};


// Durumu the forgotten - 68036
class boss_durumu_the_forgotten : public CreatureScript
{
public:
    boss_durumu_the_forgotten() : CreatureScript("boss_durumu_the_forgotten") { }

    CreatureAI* GetAI(Creature* p_Creature) const
    {
        return new boss_durumu_the_forgottenAI(p_Creature);
    }

    struct boss_durumu_the_forgottenAI : public BossAI
    {
        boss_durumu_the_forgottenAI(Creature* p_Creature) : BossAI(p_Creature, DATA_DURUMU), mazeBuilder(me)
        {

            me->setActive(true);

            //me->SetCanFly(true);
            me->SetDisableGravity(true);

            introDone = false;
            crimsonFogsCount = 0;
            eyebeamTargetGUID = 0;
        }

        uint8 m_Phase;

        void Reset()
        {
            _Reset();

            mazeBuilder.ClearMaze();
            mazeBuilder.Stop();

            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_BRIGHT_LIGHT_DMG_1);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_INFRARED_LIGHT_DMG_1);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_BLUE_RAYS_DMG_1);

            m_Phase = 0;
            firstHardStare = false;
            firstGaze = false;
            forceWillOrientation = 0.0f;
            crimsonFogsCount = 0;
            eyebeamTargetGUID = 0;

            coloredEyes.clear();

            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void MoveInLineOfSight(Unit* who)
        {
            if (!who)
                return;

            if (!introDone && me->GetDistance(who) < 100.0f)
            {
                introDone = true;
                Talk(SAY_INTRO);
            }

            BossAI::MoveInLineOfSight(who);
        }

        void AttackStart(Unit* who)
        {
            if (!who)
                return;

            if (me->Attack(who, true))
                DoStartNoMovement(who);
        }

        void EnterCombat(Unit* /*p_Attacker*/)
        {
            m_Phase = PHASE_NORMAL_PHASE;

            // First phase
            events.ScheduleEvent(EVENT_HARD_STARE, 5000); // Boss first standard spell
            events.ScheduleEvent(EVENT_GAZE, 4000);
            events.ScheduleEvent(EVENT_FORCE_OF_WILL, 33500); // Boss second standard spell
            events.ScheduleEvent(EVENT_LINGERING_GAZE, 15500); // Bos third standard spell
            events.ScheduleEvent(EVENT_LIFE_DRAIN, 25000); // Boss fourth standard spell

            events.ScheduleEvent(EVENT_SECOND_PHASE, 40000);
            events.ScheduleEvent(EVENT_DISINTEGRATION_BEAM, 135000);

            Talk(SAY_AGGRO);

            DoZoneInCombat();
            instance->SetBossState(DATA_DURUMU, IN_PROGRESS);
            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void EnterEvadeMode(EvadeReason why) override
        {
            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);

            BossAI::EnterEvadeMode();
        }

        void JustDied(Unit* /*p_Killer*/)
        {
            Talk(SAY_DEATH);

            _JustDied();

            mazeBuilder.ClearMaze();
            mazeBuilder.Stop();

            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_BRIGHT_LIGHT_DMG_1);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_INFRARED_LIGHT_DMG_1);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_BLUE_RAYS_DMG_1);

            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void DoAction(const int32 action)
        {
            if (action == ACTION_CRIMSON_FOG_DIED)
            {
                crimsonFogsCount--;

                if (crimsonFogsCount == 0)
                {
                    summons.DespawnEntry(NPC_RED_EYE);
                    summons.DespawnEntry(NPC_BLUE_EYE);
                    summons.DespawnEntry(NPC_YELLOW_EYE);

                    summons.DespawnEntry(NPC_CRIMSON_FOG);
                    summons.DespawnEntry(NPC_AMBER_FOG);
                    summons.DespawnEntry(NPC_AZURE_FOG);
                }
            }
        }

        void JustSummoned(Creature* summon)
        {

            BossAI::JustSummoned(summon);
        }

        void UpdateAI(const uint32 p_Diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(p_Diff);

            mazeBuilder.Update(p_Diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_HARD_STARE:
                    if (!firstHardStare)
                    {
                        firstHardStare = true;
                        Talk(SAY_HARD_STARE);
                    }
                    DoCastVictim(SPELL_HARD_STARE);
                    events.ScheduleEvent(EVENT_HARD_STARE, 12000);
                    break;
                case EVENT_GAZE:
                    if (me->GetVictim() && !me->IsWithinMeleeRange(me->GetVictim()))
                    {
                        DoCastAOE(SPELL_GAZE);
                    }
                    events.ScheduleEvent(EVENT_GAZE, 2000);
                    break;
                case EVENT_FORCE_OF_WILL:
                {
                    Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1, 0.0f, true);
                    if (!target)
                        target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true);
                    if (target)
                    {
                        if (Creature* pEye = me->SummonCreature(NPC_MIND_S_EYE, *me, TEMPSUMMON_TIMED_DESPAWN, 7000))
                        {
                            forceWillOrientation = pEye->GetAngle(target);
                            pEye->SetOrientation(forceWillOrientation);
                            pEye->CastSpell(target, SPELL_FORCE_OF_WILL);
                        }
                    }
                    events.ScheduleEvent(EVENT_FORCE_OF_WILL_KNOCK_BACK, 3000);
                    events.ScheduleEvent(EVENT_FORCE_OF_WILL, 20000);
                    break;
                }
                case EVENT_FORCE_OF_WILL_KNOCK_BACK:
                    if (Creature* pEye = me->FindNearestCreature(NPC_MIND_S_EYE, 10.0f))
                    {
                        pEye->SetOrientation(forceWillOrientation);
                        pEye->CastSpell(pEye, SPELL_FORCE_OF_WILL_KNOCK_BACK);
                    }
                    break;
                case EVENT_LINGERING_GAZE:
                    if (!firstGaze)
                    {
                        firstGaze = true;
                        Talk(SAY_LINGERING_GAZE);
                    }
                    DoCast(me, SPELL_LINGERING_GAZE);
                    events.ScheduleEvent(EVENT_LINGERING_GAZE, 46000);
                    break;
                case EVENT_LIFE_DRAIN:
                {
                    Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1, 0.0f, true);
                    if (!target)
                        target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true);
                    if (target)
                    {
                        if (Creature* pEye = me->SummonCreature(NPC_HUNGRY_EYE, me->GetPositionX() + 1.0f, me->GetPositionY() + 1.0f, me->GetPositionZ() + 1.0f, 0.0f, TEMPSUMMON_TIMED_DESPAWN, 17000))
                        {
                            pEye->SetOrientation(pEye->GetAngle(target));
                            pEye->AI()->SetGUID(target->GetGUID());
                            pEye->AddAura(SPELL_LIFE_DRAIN_STUN, target);
                            pEye->CastSpell(target, SPELL_LIFE_DRAIN);
                        }
                    }

                    events.ScheduleEvent(EVENT_LIFE_DRAIN, 20000);
                    break;
                }
                case EVENT_SECOND_PHASE:
                {
                    Talk(SAY_COLORBIND);
                    Talk(SAY_COLORBIND_YELL);

                    events.CancelEvent(EVENT_LIFE_DRAIN);
                    events.CancelEvent(EVENT_FORCE_OF_WILL_KNOCK_BACK);
                    events.CancelEvent(EVENT_FORCE_OF_WILL);

                    std::list<Unit*> targets;
                    SelectTargetList(targets, 25, SELECT_TARGET_RANDOM, 0.0f, true);

                    if (targets.size() > 3)
                        targets.remove(me->GetVictim());

                    Trinity::Containers::RandomResize(targets, 3);

                    CreateColorEyesForTargets(targets);

                    SpawnAdds();

                    events.ScheduleEvent(EVENT_SECOND_PHASE_BEGIN, 11000);
                    break;
                }

                case EVENT_DISINTEGRATION_BEAM:

                    Talk(SAY_DESINTEGRATION_BEAM);

                    events.CancelEvent(EVENT_LINGERING_GAZE);
                    events.CancelEvent(EVENT_GAZE);
                    events.CancelEvent(EVENT_HARD_STARE);
                    events.CancelEvent(EVENT_LIFE_DRAIN);
                    events.CancelEvent(EVENT_FORCE_OF_WILL_KNOCK_BACK);
                    events.CancelEvent(EVENT_FORCE_OF_WILL);

                    me->SetOrientation(me->GetAngle(&(beamPos[0])));

                    me->CastSpell(beamPos[0].GetPositionX(), beamPos[0].GetPositionY(), beamPos[0].GetPositionZ(), SPELL_SUMMON_EYEBEAM_TARGET, true);

                    DoCast(me, SPELL_DISINTEGRATION_BEAM_PRECAST);

                    events.ScheduleEvent(EVENT_DISINTEGRATION_BEAM_1, 16000);
                    break;

                case EVENT_DISINTEGRATION_BEAM_END:

                    summons.DespawnEntry(NPC_EYEBEAM_TARGET);

                    mazeBuilder.Stop();
                    mazeBuilder.ClearMaze();

                    events.ScheduleEvent(EVENT_LINGERING_GAZE, 17000);
                    events.ScheduleEvent(EVENT_GAZE, 3000);
                    events.ScheduleEvent(EVENT_HARD_STARE, urand(5000, 8000));
                    events.ScheduleEvent(EVENT_LIFE_DRAIN, urand(20000, 25000));
                    events.ScheduleEvent(EVENT_FORCE_OF_WILL, 19000);

                    events.ScheduleEvent(EVENT_SECOND_PHASE, 39000);
                    events.ScheduleEvent(EVENT_DISINTEGRATION_BEAM, 136000);

                    break;
                default:
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:

        bool introDone;
        bool firstHardStare;
        bool firstGaze;
        float forceWillOrientation;
        std::set<uint64> coloredEyes;
        uint8 crimsonFogsCount;
        uint64 eyebeamTargetGUID;

        MazeBuilder mazeBuilder;

    private:

        void CreateColorEyesForTargets(std::list<Unit*> &targets)
        {
            Unit* redTarget = targets.front();
            targets.pop_front();

            Unit* blueTarget = NULL;
            if (!targets.empty())
            {
                blueTarget = targets.front();
                targets.pop_front();
            }

            Unit* yellowTarget = NULL;
            if (!targets.empty())
            {
                yellowTarget = targets.front();
            }

            if (redTarget)
            {
                if (Creature* pEye = me->SummonCreature(NPC_RED_EYE, *me))
                {
                    pEye->AI()->SetGUID(redTarget->GetGUID());
                    pEye->CastSpell(redTarget, SPELL_INFRARED_LIGHT_LINK);
                }
            }

            if (blueTarget)
            {
                if (Creature* pEye = me->SummonCreature(NPC_BLUE_EYE, *me))
                {
                    pEye->AI()->SetGUID(blueTarget->GetGUID());
                    pEye->CastSpell(blueTarget, SPELL_BLUE_RAYS_LINK);
                }
            }

            if (yellowTarget)
            {
                if (Creature* pEye = me->SummonCreature(NPC_YELLOW_EYE, *me))
                {
                    pEye->AI()->SetGUID(yellowTarget->GetGUID());
                    pEye->CastSpell(yellowTarget, SPELL_BRIGHT_LIGHT_LINK);
                }
            }
        }

        void SpawnAdds()
        {
            me->CastSpell(addsPos[0].GetPositionX(), addsPos[0].GetPositionY(), addsPos[0].GetPositionZ(), SPELL_SUMMON_FOG_BEAST_RED, true);
            me->CastSpell(addsPos[1].GetPositionX(), addsPos[1].GetPositionY(), addsPos[1].GetPositionZ(), SPELL_SUMMON_FOG_BEAST_RED, true);
            me->CastSpell(addsPos[2].GetPositionX(), addsPos[2].GetPositionY(), addsPos[2].GetPositionZ(), SPELL_SUMMON_FOG_BEAST_RED, true);
            //me->CastSpell(addsPos[1].GetPositionX(), addsPos[1].GetPositionY(), addsPos[1].GetPositionZ(), SPELL_SUMMON_FOG_BEAST_BLUE, true);
            //me->CastSpell(addsPos[2].GetPositionX(), addsPos[2].GetPositionY(), addsPos[2].GetPositionZ(), SPELL_SUMMON_FOG_BEAST_YELLOW, true);

            crimsonFogsCount = 3;
        }
    };
};

// Hungry Eye - 67859 (Add for the spell DRAIN LIFE, coming from first phase)
class npc_durumu_the_forgotten_hungry_eye : public CreatureScript
{
public:
    npc_durumu_the_forgotten_hungry_eye() : CreatureScript("npc_durumu_the_forgotten_hungry_eye") { }

    CreatureAI* GetAI(Creature* p_Creature) const
    {
        return new npc_durumu_the_forgotten_hungry_eyeAI(p_Creature);
    }

    struct npc_durumu_the_forgotten_hungry_eyeAI : public ScriptedAI
    {
        npc_durumu_the_forgotten_hungry_eyeAI(Creature* p_Creature) : ScriptedAI(p_Creature)
        {
            me->SetReactState(REACT_PASSIVE);
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC));
        }
    };
};

class npc_durumu_the_forgotten_minds_eye : public CreatureScript
{
public:
    npc_durumu_the_forgotten_minds_eye() : CreatureScript("npc_durumu_the_forgotten_minds_eye") { }

    CreatureAI* GetAI(Creature* p_Creature) const
    {
        return new npc_durumu_the_forgotten_minds_eyeAI(p_Creature);
    }

    struct npc_durumu_the_forgotten_minds_eyeAI : public Scripted_NoMovementAI
    {
        npc_durumu_the_forgotten_minds_eyeAI(Creature* p_Creature) : Scripted_NoMovementAI(p_Creature)
        {
            me->SetReactState(REACT_PASSIVE);
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC));

            m_Orientation = p_Creature->GetOrientation();
        }

        void SetFloatData(uint32 id, float value)
        {
            m_Orientation = value;
        }

        float GetFloatData(uint32 id)
        {
            return m_Orientation;
        }

    private:

        float m_Orientation;
    };
};

// Color adds - 69050/69051/69052
class npc_durumu_the_forgotted_add : public CreatureScript
{
public:
    npc_durumu_the_forgotted_add() : CreatureScript("npc_durumu_the_forgotted_add") { }

    CreatureAI* GetAI(Creature* p_Creature) const
    {
        return new npc_durumu_the_forgotted_addAI(p_Creature);
    }

    struct npc_durumu_the_forgotted_addAI : public Scripted_NoMovementAI
    {
        npc_durumu_the_forgotted_addAI(Creature* p_Creature) : Scripted_NoMovementAI(p_Creature)
        {

            isRevealed = false;
        }

        // For every add, direction is set to the boss, and invisibility aura is added. RED FOG spell is set as not casted.
        void Reset()
        {
            AddInvisibleAura();
        }

        void DoAction(const int32 action)
        {
            if (action == ACTION_ADD_REVEALED)
            {
                if (!isRevealed)
                {
                    isRevealed = true;

                    RemoveInvisibleAura();
                }
            }
            else if (action == ACTION_ADD_HIDE)
            {
                if (isRevealed)
                {
                    isRevealed = false;

                    DoCastAOE(SPELL_CRIMSON_BLOOM);

                    AddInvisibleAura();
                }
            }
        }

        void IsSummonedBy(Unit* owner)
        {

        }

        void JustDied(Unit* killer)
        {
            SendDied();
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

        }

    private:

        bool isRevealed;

    private:

        void AddInvisibleAura()
        {
            switch (me->GetEntry())
            {
            case NPC_CRIMSON_FOG:
                me->AddAura(SPELL_RED_FOG_INVISIBILITY, me);
                break;
            case NPC_AMBER_FOG:
                me->AddAura(SPELL_YELLOW_FOG_INVISIBILITY, me);
                break;
            case NPC_AZURE_FOG:
                me->AddAura(SPELL_BLUE_FOG_INVISIBILITY, me);
                break;
            }
        }

        void RemoveInvisibleAura()
        {
            switch (me->GetEntry())
            {
            case NPC_CRIMSON_FOG:
                me->RemoveAura(SPELL_RED_FOG_INVISIBILITY);
                break;
            case NPC_AMBER_FOG:
                me->RemoveAura(SPELL_YELLOW_FOG_INVISIBILITY);
                break;
            case NPC_AZURE_FOG:
                me->RemoveAura(SPELL_BLUE_FOG_INVISIBILITY);
                break;
            }
        }

        void SendDied()
        {
            InstanceScript* pInstance = me->GetInstanceScript();
            if (!pInstance)
                return;

            Creature* pDurumu = ObjectAccessor::GetCreature(*me, pInstance->GetGuidData(DATA_DURUMU));
            if (!pDurumu)
                return;

            switch (me->GetEntry())
            {
            case NPC_CRIMSON_FOG:
                pDurumu->AI()->DoAction(ACTION_CRIMSON_FOG_DIED);
                break;
            case NPC_AMBER_FOG:
                pDurumu->AI()->DoAction(ACTION_AMBER_FOG_DIED);
                break;
            case NPC_AZURE_FOG:
                pDurumu->AI()->DoAction(ACTION_AZURE_FOG_DIED);
                break;
            }
        }

    };
};

class npc_durumu_the_forgotted_eyebeam_target : public CreatureScript
{
public:
    npc_durumu_the_forgotted_eyebeam_target() : CreatureScript("npc_durumu_the_forgotted_eyebeam_target") { }

    CreatureAI* GetAI(Creature* p_Creature) const
    {
        return new npc_durumu_the_forgotted_eyebeam_targetAI(p_Creature);
    }

    struct npc_durumu_the_forgotted_eyebeam_targetAI : public Scripted_NoMovementAI
    {
        npc_durumu_the_forgotted_eyebeam_targetAI(Creature* p_Creature) : Scripted_NoMovementAI(p_Creature)
        {
            me->SetReactState(REACT_PASSIVE);
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC));
        }

        void DoAction(const int32 action)
        {
            if (action == ACTION_DISINTEGRATION_BEAM)
            {
                events.ScheduleEvent(EVENT_DISINTEGRATION_BEAM_2, 1000);
            }
        }

        void UpdateAI(const uint32 diff)
        {
            events.Update(diff);
            if (uint32 eventId = events.ExecuteEvent())
            {
                if (eventId == EVENT_DISINTEGRATION_BEAM_2)
                {
                    if (Creature* pDurumu = ObjectAccessor::GetCreature(*me, me->GetOwnerGUID()))
                    {
                        pDurumu->SetOrientation(pDurumu->GetAngle(me));
                        std::list<Player*> players;
                        me->GetPlayerListInGrid(players, 50.0f);
                        for (std::list<Player*>::iterator itr = players.begin(); itr != players.end(); ++itr)
                        {
                            if (pDurumu->HasInLine((*itr), 1.0f, 1))
                            {
                                (*itr)->Whisper("ok", LANG_UNIVERSAL, 0);
                            }
                        }
                    }
                    me->Whisper("check", LANG_UNIVERSAL, 0);
                    events.ScheduleEvent(EVENT_DISINTEGRATION_BEAM_2, 1000);
                }

            }
        }

    private:

    };
};

// Arterial Cut (aura) - 133768
class spell_durumu_the_forgotten_arterial_cut : public SpellScriptLoader
{
public:
    spell_durumu_the_forgotten_arterial_cut() : SpellScriptLoader("spell_durumu_the_forgotten_arterial_cut") { }

    class spell_durumu_the_forgotten_arterial_cut_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_durumu_the_forgotten_arterial_cut_AuraScript);

        void OnTick(AuraEffect const* /*aurEff*/)
        {
            if (!GetUnitOwner())
                return;

            if (GetUnitOwner()->GetHealth() == GetUnitOwner()->GetMaxHealth())
            {
                Remove();
            }
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_durumu_the_forgotten_arterial_cut_AuraScript::OnTick, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_durumu_the_forgotten_arterial_cut_AuraScript();
    }
};

// Lingering Gaze - 138467
class spell_durumu_the_forgotten_lingering_gaze : public SpellScriptLoader
{
public:
    spell_durumu_the_forgotten_lingering_gaze() : SpellScriptLoader("spell_durumu_the_forgotten_lingering_gaze") { }

    class spell_durumu_the_forgotten_lingering_gaze_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_durumu_the_forgotten_lingering_gaze_SpellScript);

        void HandleOnCast()
        {
            if (!GetCaster())
                return;

            if (Creature* pDurumu = GetCaster()->ToCreature())
            {
                uint8 targetsCount = pDurumu->GetMap()->Is25ManRaid() ? 5 : 2;

                std::list<Unit*> targets;
                pDurumu->AI()->SelectTargetList(targets, 25, SELECT_TARGET_RANDOM, 0.0f, true);
                if (targets.size() > targetsCount)
                {
                    targets.remove(pDurumu->GetVictim());
                }

                Trinity::Containers::RandomResize(targets, targetsCount);

                for (std::list<Unit*>::const_iterator itr = targets.begin(); itr != targets.end(); ++itr)
                {
                    pDurumu->CastSpell((*itr), SPELL_LINGERING_GAZE_TARGET, true);
                    pDurumu->CastSpell((*itr), SPELL_LINGERING_GAZE_MISSILE, true);
                }

            }
        }

        void Register()
        {
            AfterCast += SpellCastFn(spell_durumu_the_forgotten_lingering_gaze_SpellScript::HandleOnCast);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_durumu_the_forgotten_lingering_gaze_SpellScript();
    }
};

class spell_durumu_the_forgotten_force_of_will_dmg : public SpellScriptLoader
{
public:
    spell_durumu_the_forgotten_force_of_will_dmg() : SpellScriptLoader("spell_durumu_the_forgotten_force_of_will_dmg") { }

    class spell_durumu_the_forgotten_force_of_will_dmg_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_durumu_the_forgotten_force_of_will_dmg_SpellScript);

        void FilterTargets(std::list<WorldObject*>& targets)
        {
            if (!GetCaster())
                return;

            if (Creature* pEye = GetCaster()->ToCreature())
            {
                for (std::list<WorldObject*>::iterator itr = targets.begin(); itr != targets.end();)
                {
                    if (!GetCaster()->isInFront((*itr), float(M_PI) / 8))
                    {
                        itr = targets.erase(itr);
                    }
                    else
                    {
                        ++itr;
                    }
                }
            }
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_durumu_the_forgotten_force_of_will_dmg_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_CONE_ENEMY_104);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_durumu_the_forgotten_force_of_will_dmg_SpellScript();
    }
};

class spell_area_durumu_the_forgotten_lingering_gaze : public AreaTriggerScript
{
public:
    spell_area_durumu_the_forgotten_lingering_gaze() : AreaTriggerScript("spell_area_durumu_the_forgotten_lingering_gaze") {}

    bool OnRemoveTarget(AreaTrigger* trigger, Unit* target)
    {
        target->RemoveAura(SPELL_LINGERING_GAZE_AURA);

        return true;
    }
};

void AddSC_boss_durumu()
{
    new boss_durumu_the_forgotten();                        // 68036
    new npc_durumu_the_forgotten_hungry_eye();
    new npc_durumu_the_forgotten_minds_eye();
    new npc_durumu_the_forgotted_add();                     // 69050 69051 69052
    new npc_durumu_the_forgotted_eyebeam_target();          // 67882

    new spell_durumu_the_forgotten_arterial_cut();
    new spell_durumu_the_forgotten_lingering_gaze();
    new spell_durumu_the_forgotten_force_of_will_dmg();     // 136413

    new spell_area_durumu_the_forgotten_lingering_gaze();
}
