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
#include "Unit.h"

enum ScriptTextsLulin
{
    SAY_LULIN_AGGRO = 0,
    SAY_LULIN_DEATH = 1,
    SAY_LULIN_SECOND_PHASE = 7,
};

enum ScriptTextsSuen
{
    SAY_SUEN_AGGRO = 0,
    SAY_SUEN_DEATH = 1,
    SAY_SUEN_SECOND_PHASE = 9,
};

enum Spells
{
    SPELL_TRIGGER_LULIN = 137720,
    SPELL_TRIGGER_SUEN = 137721,

    SPELL_DISSIPATE_SUEN = 137105,
    SPELL_DISSIPATE_LULIN = 137187,

    SPELL_INVIS_SUEN = 137106,
    SPELL_INVIS_LULIN = 137189,

    // Lu'lin
    SPELL_MOON_LOTUS = 136690,
    SPELL_MOON_LOTUS_SUMMON = 136714,
    SPELL_BLOOM_MOON_LOTUS = 137118,
    SPELL_MOON_LOTUS_AURA_1 = 137192,
    SPELL_MOON_LOTUS_AURA_2 = 137191,
    SPELL_MOON_LOTUS_AURA_3 = 136721, // fog
    SPELL_REAPPEAR_MOON_LOTUS = 137196,
    SPELL_HIDE_MOON_LOTUS = 137195,
    SPELL_SLUMBER_SPORES = 136722,

    SPELL_COSMIC_BARRAGE_FORCE = 137749, // by the controller
    SPELL_COSMIC_BARRAGE = 136752,
    SPELL_COSMIC_BARRAGE_SUMMON_1 = 136768, // triggered by 136752
    SPELL_COSMIC_BARRAGE_SUMMON_2 = 137164,
    SPELL_CRASHING_STAR = 139561,
    SPELL_CRASHING_STAR_DMG = 137129,

    SPELL_BEAST_OF_NIGHTMARES_FORCE = 137375,
    SPELL_BEAST_OF_NIGHTMARES_SUMMON = 137332,
    SPELL_BEAST_OF_NIGHTMARES_AURA = 137341,
    SPELL_CORRUPTED_HEALING = 137360,

    SPELL_ICE_COMET_FORCE_1 = 137739, // on creatures (on lulin?)
    SPELL_ICE_COMET_AOE_1 = 138799, // triggered by 137739, on players (targetting?)
    SPELL_ICE_COMET_FORCE_2 = 140855, // on creatures (on lulin?)
    SPELL_ICE_COMET_AOE_2 = 138795, // triggered by 140855, on players (targetting?)
    SPELL_ICE_COMET_MISSILE_1 = 137418, // speed 1, triggered by 138799, in phase 2
    SPELL_ICE_COMET_MISSILE_2 = 137495, // speed 1, triggered by 138799, in phase 3
    SPELL_ICE_COMET_MISSILE_3 = 138797, // speed 3
    SPELL_ICE_COMET_MISSILE_4 = 138798, // speed 3
    SPELL_ICE_COMET_DMG_1 = 137419, // triggered by missiles, with knockback
    SPELL_ICE_COMET_DMG_2 = 137722, // ?
    SPELL_ICE_COMET_AURA_1 = 137420,
    SPELL_ICE_COMET_AURA_2 = 137723, // animation bigger than 137420
    SPELL_DESPAWN_ICE_COMET = 138679,

    SPELL_FACE_SUEN_1 = 137436,
    SPELL_FACE_SUEN_2 = 137724,
    SPELL_ICY_SHADOWS_AREATRIGGER_1 = 137439, // triggered by 137436
    SPELL_ICY_SHADOWS_AREATRIGGER_2 = 137725, // triggered by 137724, animation bigger than 137439
    SPELL_ICY_SHADOWS_DEBUFF = 137440,

    SPELL_CHILLED = 137483,

    SPELL_TIDAL_FORCE = 137531,
    SPELL_TIDAL_FORCE_DUMMY_1 = 137718, // triggered by 137531, visual
    SPELL_TIDAL_FORCE_DUMMY_2 = 140863, // visual
    SPELL_TIDAL_FORCE_AREATRIGGER = 138689,
    SPELL_TIDAL_FORCE_DMG_2 = 138688, // on caster, from areatrigger ?
    SPELL_TIDAL_FORCE_AURA = 137717, // ?
    SPELL_TIDAL_FORCE_SCRIPT = 137715, // triggered by 137717
    SPELL_TIDAL_FORCE_DMG_1 = 137716, // cone dmg

    // Suen
    SPELL_TEARS_OF_THE_SUN = 137404,
    SPELL_TEARS_OF_THE_SUN_DMG_1 = 137405,
    SPELL_TEARS_OF_THE_SUN_DUMMY = 138744,
    SPELL_TEARS_OF_THE_SUN_MISSILE = 138745,
    SPELL_TEARS_OF_THE_SUN_DMG_2 = 138746,
    SPELL_EXPOSE_LURKERS = 137406,

    SPELL_LIGHT_OF_DAY = 137401,
    SPELL_LIGHT_OF_DAY_DMG = 137403,
    SPELL_LIGHT_OF_DAY_DUMMY = 137432,
    //138823
    //137738

    SPELL_FAN_OF_FLAMES = 137408,

    SPELL_FLAMES_OF_PASSION_CHARGE_1 = 137412,
    SPELL_FLAMES_OF_PASSION_DMG_1 = 137414,
    SPELL_FLAMES_OF_PASSION_CHARGE_2 = 137415,
    SPELL_FLAMES_OF_PASSION_AREATRIGGER = 137416,
    SPELL_FLAMES_OF_PASSION_DMG_2 = 137417,

    SPELL_BLAZING_RADIANCE_AURA_1 = 137411, // main
    SPELL_BLAZING_RADIANCE_DMG_1 = 137410,
    SPELL_BLAZING_RADIANCE_AURA_2 = 137474, // ?
    SPELL_BLAZING_RADIANCE_DMG_2 = 137475, // to kill comets
    SPELL_BLAZING_RADIANCE_BUFF = 139412,

    SPELL_SERPENT_CONSTELLATION = 138262,

    SPELL_TIGER_CONSTELLATION = 138261,
    SPELL_INVOKE_TIGER_SPIRIT_DUMMY = 138263,
    SPELL_INVOKE_TIGER_SPIRIT = 138264, // targets 138263

    SPELL_SUMMON_ASTRAL_PLANE = 139043,
    SPELL_ASTRAL = 139050, // removes all auras
    SPELL_CLEAR_PHASE = 140038,

    SPELL_OX_CONSTELLATION = 138260,
    SPELL_INVOKE_OX_SPIRIT_DUMMY = 138256,
    SPELL_INVOKE_OX_SPIRIT = 138254,

    SPELL_CRANE_CONSTELLATION = 138180,

    SPELL_STAR_STATE_1 = 137138, // inactive ?
    SPELL_STAR_STATE_2 = 138039,
    SPELL_STAR_STATE_3 = 138140,
    SPELL_STARDUST_BEAM = 138206, // drawn beam
    SPELL_MOONBEAM_STATE_WORLD = 138114, // at first star
    SPELL_CANCEL_BEAMS = 138283, // removes 138206
    SPELL_STAR_1 = 138199,
    SPELL_STAR_1_DUMMY = 138200,
    SPELL_STAR_2 = 138202,
    SPELL_STAR_2_DUMMY = 138203,
    SPELL_STAR_3 = 138219,
    SPELL_STAR_3_DUMMY = 138218,
    SPELL_STAR_4 = 138221,
    SPELL_STAR_4_DUMMY = 138220,
    SPELL_STAR_5 = 138224,
    SPELL_STAR_5_DUMMY = 138223,
    SPELL_STAR_6 = 138227,
    SPELL_STAR_6_DUMMY = 138226,
    SPELL_STAR_7 = 138205,
    SPELL_STAR_7_DUMMY = 138204,

};

enum Adds
{
    NPC_MOON_LOTUS_1 = 69340,
    NPC_MOON_LOTUS_2 = 69456,
    NPC_STAR_1 = 69365,
    NPC_STAR_2 = 69477,
    NPC_ICE_COMET_1 = 69596,
    NPC_ICE_COMET_2 = 69704,
    NPC_DEEP_SUBMERGE = 69629,

    NPC_FADED_IMAGE_OF_XUEN = 69771,
    NPC_FADED_IMAGE_OF_CHI_JI = 69774,
    NPC_FADED_IMAGE_OF_NIUZAO = 69777,
    NPC_FADED_IMAGE_OF_YULON = 69779,
    NPC_STAR = 70124,
};

enum Events
{
    EVENT_LULIN_AGGRO = 1,
    EVENT_BEAST_OF_NIGHTMARES,
    EVENT_COSMIC_BARRAGE,
    EVENT_CRUSHING_STAR,
    EVENT_TEARS_OF_THE_SUN,
    EVENT_TEARS_OF_THE_SUN_END,
    EVENT_LIGHT_OF_DAY_PRE,
    EVENT_LIGHT_OF_DAY,
    EVENT_LIGHT_OF_DAY_END,
    EVENT_SECOND_PHASE,
    EVENT_FAN_OF_FLAMES,
    EVENT_FLAMES_OF_PASSION,
    EVENT_LIGHT_OF_DAY_2,
    EVENT_ICE_COMET,
    EVENT_THIRD_PHASE,
    EVENT_TIDAL_FORCE,
};

enum Actions
{
    ACTION_SECOND_PHASE = 1,
    ACTION_THIRD_PHASE,
    ACTION_SPAWN_STARS,
    ACTION_REMOVE_STARS,

    DATA_SUMMONED_LOTUS,
    DATA_STAR_ID,
    DATA_STAR_READY,
    DATA_CONSTELLATION_TYPE,
};

enum Equipments
{
    EQUIPMENT_FIST = 94973,
};

enum Constallations
{
    CONSTELLATION_OX = 0,
};

#define MAX_LOTUS_POS 30
const Position moonLotusPos[MAX_LOTUS_POS] =
{
    {6108.074219f, 4174.293457f, 146.234009f, 3.877058f},
    {6134.152832f, 4254.355957f, 146.483658f, 4.160682f},
    {6130.495605f, 4238.264160f, 146.480057f, 4.957859f},
    {6134.978516f, 4229.258789f, 146.480057f, 5.513745f},
    {6137.994141f, 4215.915527f, 146.480057f, 4.902880f},
    {6146.712402f, 4204.885254f, 146.480057f, 5.776417f},
    {6159.466797f, 4199.766602f, 146.480057f, 6.087957f},
    {6174.732910f, 4199.347168f, 146.484146f, 0.256810f},
    {6188.443359f, 4203.899902f, 146.498001f, 0.437015f},
    {6202.053223f, 4214.027832f, 146.505188f, 0.889055f},
    {6211.376465f, 4227.911621f, 146.493927f, 0.995956f},
    {6216.133789f, 4235.255371f, 146.481567f, 0.995956f},
    {6219.291992f, 4247.871094f, 146.476242f, 2.318480f},
    {6208.723633f, 4256.328125f, 146.479050f, 2.358186f},
    {6207.823730f, 4264.114746f, 146.479050f, 1.402181f},
    {6207.729980f, 4280.320801f, 146.479050f, 2.113840f},
    {6195.707031f, 4281.911133f, 146.479050f, 3.582972f},
    {6185.229980f, 4276.206055f, 146.479050f, 3.561592f},
    {6174.428223f, 4282.368652f, 146.479050f, 2.449817f},
    {6163.853027f, 4286.050293f, 146.480423f, 3.204236f},
    {6153.390137f, 4276.761719f, 146.481033f, 4.236597f},
    {6144.024414f, 4269.105957f, 146.572372f, 3.393603f},
    {6131.291992f, 4264.188965f, 146.484146f, 4.209108f},
    {6129.705078f, 4250.964355f, 146.481766f, 4.991017f},
    {6134.751465f, 4238.879883f, 146.481766f, 5.134569f},
    {6133.199707f, 4229.473633f, 146.481766f, 4.206055f},
    {6131.208008f, 4215.163574f, 146.479706f, 5.458326f},
    {6144.114746f, 4209.368652f, 146.479706f, 5.968399f},
    {6154.716309f, 4201.980469f, 146.479706f, 5.320882f},
    {6163.786621f, 4195.862793f, 146.479706f, 0.399926f}
};

const Position spiritPos[1] =
{
    {6163.78f, 4170.13f, 146.48f, 1.52f}
};

const Position starPos[7] =
{
    {6172.662109f, 4239.790527f, 146.552404f, 5.498716f},   // center, 7 star
    {6158.319824f, 4225.383301f, 146.496877f, 1.467003f},   // 1 star
    {6150.236816f, 4244.935547f, 146.496053f, 0.456020f},   // 2 star
    {6168.481445f, 4263.004395f, 146.496008f, 5.496091f},   // 3 star
    {6187.605469f, 4254.597656f, 146.495291f, 4.320178f},   // 4 star
    {6196.098145f, 4234.114746f, 146.505102f, 3.174803f},   // 5 star
    {6177.960449f, 4216.429199f, 146.506994f, 2.059973f}    // 6 star
};

const uint32 constellationOx[4] = { 1, 4, 5, 2 };

// it's very bad


class boss_lulin : public CreatureScript
{
public:
    boss_lulin() : CreatureScript("boss_lulin") { }

    CreatureAI* GetAI(Creature* p_Creature) const
    {
        return new boss_lulinAI(p_Creature);
    }

    struct boss_lulinAI : public BossAI
    {
        boss_lulinAI(Creature* p_Creature) : BossAI(p_Creature, DATA_TWIN_CONSORTS)
        {

            me->setActive(true);


            SetEquipmentSlots(false, EQUIPMENT_FIST, EQUIPMENT_FIST);
        }

        void Reset()
        {
            _Reset();



            if (Creature* pSuen = instance->instance->GetCreature(instance->GetGuidData(DATA_SUEN)))
            {
                if (!pSuen->IsAlive())
                {
                    pSuen->Respawn();
                    pSuen->AI()->EnterEvadeMode();
                }
            }

            //me->SetReactState(REACT_PASSIVE);
            me->SetReactState(REACT_DEFENSIVE);
            me->RemoveUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC));

            phase = 0;
            summonedLotuses = 0;

            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void EnterCombat(Unit* /*p_Attacker*/)
        {
            events.ScheduleEvent(EVENT_LULIN_AGGRO, 6000);

            if (Creature* pSuen = instance->instance->GetCreature(instance->GetGuidData(DATA_SUEN)))
            {
                if (!pSuen->IsInCombat())
                    DoZoneInCombat(pSuen);
            }

            me->AddAura(SPELL_MOON_LOTUS, me);

            events.ScheduleEvent(EVENT_COSMIC_BARRAGE, 17000);
            events.ScheduleEvent(EVENT_BEAST_OF_NIGHTMARES, 51000);
            events.ScheduleEvent(EVENT_SECOND_PHASE, 180000);
            events.ScheduleEvent(EVENT_THIRD_PHASE, 360000);

            DoZoneInCombat();

            instance->SetBossState(DATA_TWIN_CONSORTS, IN_PROGRESS);
            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void EnterEvadeMode(EvadeReason why) override
        {
            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);

            BossAI::EnterEvadeMode();
        }

        void JustDied(Unit* /*p_Killer*/)
        {
            // don't use _JustDied because we have 2 bosses here
            events.Reset();
            summons.DespawnAll();

            if (Creature* pSuen = instance->instance->GetCreature(instance->GetGuidData(DATA_SUEN)))
            {
                if (pSuen->IsAlive())
                {
                    me->AddLootRecipient(NULL);
                }
                else
                {

                    instance->DoModifyPlayerCurrencies(396, 4000);

                    instance->SetBossState(DATA_TWIN_CONSORTS, DONE);
                    instance->SaveToDB();
                }
            }

            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void DamageTaken(Unit* who, uint32 &damage)
        {
            if (me->GetHealthPct() < 10.0f && phase != 2)
            {
                damage = 0;
            }
        }

        void SetData(uint32 type, uint32 data)
        {
            if (type == DATA_SUMMONED_LOTUS && data <= MAX_LOTUS_POS)
            {
                summonedLotuses = data;
            }
        

            return;
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
                case EVENT_LULIN_AGGRO:
                    Talk(SAY_LULIN_AGGRO);
                    break;
                case EVENT_COSMIC_BARRAGE:
                    DoCast(me, SPELL_COSMIC_BARRAGE);
                    events.ScheduleEvent(EVENT_COSMIC_BARRAGE, urand(22000, 28000));
                    break;
                case EVENT_SECOND_PHASE:

                    phase = 1;

                    me->SetReactState(REACT_PASSIVE);
                    me->AttackStop();

                    events.CancelEvent(EVENT_COSMIC_BARRAGE);
                    summons.DespawnEntry(NPC_MOON_LOTUS_1);
                    summonedLotuses = 0;

                    me->RemoveAllAuras();
                    me->AddUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC));

                    Talk(SAY_LULIN_SECOND_PHASE);

                    if (Creature* pSuen = instance->instance->GetCreature(instance->GetGuidData(DATA_SUEN)))
                    {
                        pSuen->AI()->DoAction(ACTION_SECOND_PHASE);
                    }

                    DoCast(me, SPELL_DISSIPATE_LULIN);

                    events.ScheduleEvent(EVENT_ICE_COMET, urand(5000, 10000));

                    break;
                case EVENT_ICE_COMET:
                    DoCastAOE(SPELL_ICE_COMET_AOE_1);
                    events.ScheduleEvent(EVENT_ICE_COMET, urand(20500, 25000));
                    break;
                case EVENT_THIRD_PHASE:
                    phase = 2;

                    if (Creature* pSuen = instance->instance->GetCreature(instance->GetGuidData(DATA_SUEN)))
                    {
                        pSuen->AI()->DoAction(ACTION_THIRD_PHASE);
                    }

                    me->RemoveAllAuras();
                    me->RemoveUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC));

                    me->SetReactState(REACT_AGGRESSIVE);

                    break;
                case EVENT_TIDAL_FORCE:
                    DoCast(me, SPELL_TIDAL_FORCE);
                    events.ScheduleEvent(EVENT_TIDAL_FORCE, 73000);
                    break;
                default:
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:

        uint8 phase;
        uint32 summonedLotuses;

    private:

        void SpawnSpirits()
        {
            me->SummonCreature(NPC_FADED_IMAGE_OF_NIUZAO, spiritPos[0]);
        }

    };
};

class boss_suen : public CreatureScript
{
public:
    boss_suen() : CreatureScript("boss_suen") { }

    CreatureAI* GetAI(Creature* p_Creature) const
    {
        return new boss_suenAI(p_Creature);
    }

    struct boss_suenAI : public BossAI
    {
        boss_suenAI(Creature* p_Creature) : BossAI(p_Creature, DATA_TWIN_CONSORTS)
        {

            me->setActive(true);


            castingLightOfDay = false;

            SetEquipmentSlots(false, EQUIPMENT_FIST, EQUIPMENT_FIST);
        }

        void Reset()
        {
            _Reset();

            if (Creature* pLulin = instance->instance->GetCreature(instance->GetGuidData(DATA_LULIN)))
            {
                if (!pLulin->IsAlive())
                {
                    pLulin->Respawn();
                    pLulin->AI()->EnterEvadeMode();
                }
            }

            me->SetReactState(REACT_PASSIVE);

            me->RemoveUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC));

            castingLightOfDay = false;
            phase = 0;

            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void EnterCombat(Unit* /*p_Attacker*/)
        {
            Talk(SAY_SUEN_AGGRO);

            if (Creature* pLulin = instance->instance->GetCreature(instance->GetGuidData(DATA_LULIN)))
            {
                if (!pLulin->IsInCombat())
                    DoZoneInCombat(pLulin);
            }

            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC));

            DoCast(me, SPELL_DISSIPATE_SUEN);

            events.ScheduleEvent(EVENT_TEARS_OF_THE_SUN, 28500);
            events.ScheduleEvent(EVENT_LIGHT_OF_DAY_PRE, urand(6000, 10000));

            DoZoneInCombat();
            instance->SetBossState(DATA_TWIN_CONSORTS, IN_PROGRESS);
            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void EnterEvadeMode(EvadeReason why) override
        {
            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);

            BossAI::EnterEvadeMode();
        }

        void DoAction(const int32 action)
        {
            if (action == ACTION_SECOND_PHASE)
            {
                phase = 1;

                castingLightOfDay = false;

                events.CancelEvent(EVENT_TEARS_OF_THE_SUN);
                events.CancelEvent(EVENT_LIGHT_OF_DAY_PRE);
                events.ScheduleEvent(EVENT_SECOND_PHASE, 3000);
            }
            else if (action == ACTION_THIRD_PHASE)
            {
                phase = 2;

                events.CancelEvent(EVENT_FAN_OF_FLAMES);
            }
        }

        void DamageTaken(Unit* who, uint32& damage)
        {
            if (me->GetHealthPct() < 10.0f && phase != 2)
            {
                damage = 0;
            }
        }

        void JustDied(Unit* /*p_Killer*/)
        {
            // don't use _JustDied because we have 2 bosses here
            events.Reset();
            summons.DespawnAll();

            if (Creature* pLulin = instance->instance->GetCreature(instance->GetGuidData(DATA_LULIN)))
            {
                if (pLulin->IsAlive())
                {
                    me->AddLootRecipient(NULL);
                }
                else
                {

                    instance->DoModifyPlayerCurrencies(396, 4000);

                    instance->SetBossState(DATA_TWIN_CONSORTS, DONE);
                    instance->SaveToDB();
                }
            }

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
                case EVENT_TEARS_OF_THE_SUN:
                    if (castingLightOfDay)
                    {
                        events.ScheduleEvent(EVENT_TEARS_OF_THE_SUN, 2000);
                        break;
                    }
                    me->RemoveAura(SPELL_INVIS_SUEN);
                    DoCast(me, SPELL_TEARS_OF_THE_SUN);
                    events.ScheduleEvent(EVENT_TEARS_OF_THE_SUN, 41000);
                    events.ScheduleEvent(EVENT_TEARS_OF_THE_SUN_END, 10000);
                    break;
                case EVENT_TEARS_OF_THE_SUN_END:
                    DoCast(me, SPELL_INVIS_SUEN);
                    break;
                case EVENT_LIGHT_OF_DAY_PRE:
                {
                    castingLightOfDay = true;

                    Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 20.0f, true);
                    if (!target)
                        target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true);

                    if (target)
                    {
                        me->NearTeleportTo(target->GetPositionX(), target->GetPositionY(), target->GetPositionZ(), target->GetOrientation());
                        events.ScheduleEvent(EVENT_LIGHT_OF_DAY, 1000);
                    }
                    else
                    {
                        castingLightOfDay = false;
                    }

                    events.ScheduleEvent(EVENT_LIGHT_OF_DAY_PRE, 9000);
                    break;
                }
                case EVENT_LIGHT_OF_DAY:
                    if (Unit* target = SelectTarget(SELECT_TARGET_NEAREST, 0, 0.0f, true))
                    {
                        DoCast(target, SPELL_LIGHT_OF_DAY);
                    }
                    events.ScheduleEvent(EVENT_LIGHT_OF_DAY_END, 1000);
                    break;
                case EVENT_LIGHT_OF_DAY_END:
                    castingLightOfDay = false;
                    DoCast(SPELL_INVIS_SUEN);
                    break;
                case EVENT_LIGHT_OF_DAY_2:
                    if (Unit* target = SelectTarget(SELECT_TARGET_NEAREST, 0, 0.0f, true))
                    {
                        DoCast(target, SPELL_LIGHT_OF_DAY);
                    }
                    events.ScheduleEvent(EVENT_LIGHT_OF_DAY_2, 9000);
                    break;
                case EVENT_SECOND_PHASE:
                    Talk(SAY_SUEN_SECOND_PHASE);

                    me->RemoveAllAuras();
                    me->RemoveUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC));

                    me->SetReactState(REACT_AGGRESSIVE);

                    DoCast(me, SPELL_BLAZING_RADIANCE_AURA_1);
                    me->AddAura(SPELL_BLAZING_RADIANCE_AURA_2, me);

                    events.ScheduleEvent(EVENT_FAN_OF_FLAMES, 12000);
                    events.ScheduleEvent(EVENT_FLAMES_OF_PASSION, 18000);
                    events.ScheduleEvent(EVENT_LIGHT_OF_DAY_2, urand(7000, 9000));

                    break;
                case EVENT_FAN_OF_FLAMES:
                    DoCastVictim(SPELL_FAN_OF_FLAMES);
                    events.ScheduleEvent(EVENT_FAN_OF_FLAMES, 12000);
                    break;
                case EVENT_FLAMES_OF_PASSION:
                    events.ScheduleEvent(EVENT_FLAMES_OF_PASSION, 35000);
                    break;
                default:
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:

        bool castingLightOfDay;
        uint8 phase;

    };
};

class npc_lulin_moon_lotus : public CreatureScript
{
public:
    npc_lulin_moon_lotus() : CreatureScript("npc_lulin_moon_lotus") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_lulin_moon_lotusAI(creature);
    }

    struct npc_lulin_moon_lotusAI : public Scripted_NoMovementAI
    {
        npc_lulin_moon_lotusAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC));
        }

        void Reset()
        {
            me->AddAura(SPELL_MOON_LOTUS_AURA_1, me);

            sporeTimer = urand(1000, 5000);
        }

        void UpdateAI(const uint32 diff)
        {
            SummonSpores(diff);
        }

    private:

        uint32 sporeTimer;

    private:

        void SummonSpores(const uint32 diff)
        {
            if (sporeTimer <= diff)
            {
                sporeTimer = urand(25000, 40000);

                me->SummonCreature(NPC_MOON_LOTUS_2, *me, TEMPSUMMON_TIMED_DESPAWN, 120000);
            }
            else
            {
                sporeTimer -= diff;
            }
        }

    };
};

class npc_lulin_moon_lotus_2 : public CreatureScript
{
public:
    npc_lulin_moon_lotus_2() : CreatureScript("npc_lulin_moon_lotus_2") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_lulin_moon_lotus_2AI(creature);
    }

    struct npc_lulin_moon_lotus_2AI : public ScriptedAI
    {
        npc_lulin_moon_lotus_2AI(Creature* creature) : ScriptedAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC));

            me->AddAura(SPELL_MOON_LOTUS_AURA_3, me);

            sporeTimer = 1000;
            clearTimer = 1000;
        }

        void IsSummonedBy(Unit* owner)
        {
            me->GetMotionMaster()->MoveRandom(50.0f);
        }

        void UpdateAI(const uint32 diff)
        {

            UpdateTargetGuids(diff);
        }

    private:

        uint32 sporeTimer;
        uint32 clearTimer;
        std::set<uint64> targetGuids;

    private:

        void UpdateTargetGuids(const uint32 diff)
        {
            if (clearTimer <= diff)
            {
                clearTimer = 10000;


            }
            else
            {
                clearTimer -= diff;
            }
        }
    };
};

class npc_lulin_star : public CreatureScript
{
public:
    npc_lulin_star() : CreatureScript("npc_lulin_star") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_lulin_starAI(creature);
    }

    struct npc_lulin_starAI : public Scripted_NoMovementAI
    {
        npc_lulin_starAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC));
        }

        void IsSummonedBy(Unit* owner)
        {
            events.ScheduleEvent(EVENT_CRUSHING_STAR, 3000);
        }

        void MovementInform(uint32 type, uint32 id)
        {
            if (id == EVENT_JUMP)
            {
                DoCastAOE(SPELL_CRASHING_STAR_DMG, true);
                me->DespawnOrUnsummon(500);
            }
        }

        void UpdateAI(const uint32 diff)
        {
            events.Update(diff);

            if (uint32 eventId = events.ExecuteEvent())
            {
                if (eventId == EVENT_CRUSHING_STAR)
                {
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true))
                    {
                        DoCast(target, SPELL_CRASHING_STAR);
                    }
                }
            }
        }
    };
};

class npc_lulin_beast_of_nightmares : public CreatureScript
{
public:
    npc_lulin_beast_of_nightmares() : CreatureScript("npc_lulin_beast_of_nightmares") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_lulin_beast_of_nightmaresAI(creature);
    }

    struct npc_lulin_beast_of_nightmaresAI : public ScriptedAI
    {
        npc_lulin_beast_of_nightmaresAI(Creature* creature) : ScriptedAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);

            targetGuid = 0;
        }

        void Reset()
        {

        }
     

    private:

        uint64 targetGuid;
    };
};

class npc_lulin_ice_comet : public CreatureScript
{
public:
    npc_lulin_ice_comet() : CreatureScript("npc_lulin_ice_comet") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_lulin_ice_cometAI(creature);
    }

    struct npc_lulin_ice_cometAI : public Scripted_NoMovementAI
    {
        npc_lulin_ice_cometAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_IMMUNE_TO_PC));
        }

        void Reset()
        {
            me->AddAura(SPELL_ICE_COMET_AURA_1, me);
            me->AddAura(SPELL_FACE_SUEN_1, me);

            faceTimer = 1000;
        }

        void UpdateAI(const uint32 diff)
        {
            CheckFaceSuen(diff);
        }

    private:

        uint32 faceTimer;

    private:

        void CheckFaceSuen(const uint32 diff)
        {
            if (faceTimer <= diff)
            {
                faceTimer = 1000;

                if (Creature* pSuen = me->FindNearestCreature(NPC_SULIN, 200.0f))
                {
                    me->SetFacingToObject(pSuen);
                }
            }
            else
            {
                faceTimer -= diff;
            }
        }
    };
};

class npc_lulin_faded_image_of_niuzao : public CreatureScript
{
public:
    npc_lulin_faded_image_of_niuzao() : CreatureScript("npc_lulin_faded_image_of_niuzao") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_lulin_faded_image_of_niuzaoAI(creature);
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        creature->RemoveUnitFlag(UnitFlags(UNIT_NPC_FLAG_GOSSIP));

        creature->AI()->DoAction(ACTION_REMOVE_STARS);

        creature->CastSpell(player, SPELL_INVOKE_OX_SPIRIT_DUMMY, true);
        creature->CastSpell(player, SPELL_INVOKE_OX_SPIRIT, true);

        creature->AI()->DoAction(ACTION_SPAWN_STARS);
        return true;
    }

    struct npc_lulin_faded_image_of_niuzaoAI : public Scripted_NoMovementAI
    {
        npc_lulin_faded_image_of_niuzaoAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);

            me->AddUnitFlag(UnitFlags(UNIT_NPC_FLAG_GOSSIP));
        }

        void DoAction(const int32 action)
        {
            if (action == ACTION_REMOVE_STARS)
            {

            }
            else if (action == ACTION_SPAWN_STARS)
            {
                //DoCast(me, SPELL_STAR_1, true);
                //DoCast(me, SPELL_STAR_2, true);
                //DoCast(me, SPELL_STAR_3, true);
                //DoCast(me, SPELL_STAR_4, true);
                //DoCast(me, SPELL_STAR_5, true);
                //DoCast(me, SPELL_STAR_6, true);
                //DoCast(me, SPELL_STAR_7, true);
                for (uint8 i = 0; i < 7; ++i)
                {
                    if (Creature* pStar = me->SummonCreature(NPC_STAR, starPos[i], TEMPSUMMON_TIMED_DESPAWN, 35000))
                    {
                        pStar->AI()->SetData(DATA_STAR_ID, i);
                        pStar->AI()->SetData(DATA_CONSTELLATION_TYPE, CONSTELLATION_OX);
                    }
                }
            }
        }
    };
};


class npc_lulin_star_1 : public CreatureScript
{
public:
    npc_lulin_star_1() : CreatureScript("npc_lulin_star_1") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_lulin_star_1AI(creature);
    }

    struct npc_lulin_star_1AI : public Scripted_NoMovementAI
    {
        npc_lulin_star_1AI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC));

            me->AddAura(SPELL_STAR_STATE_1, me);

            starId = -1;
            playerCheckTimer = 1000;
            isActivated = false;
            isReady = false;
            constellationType = -1;
        }

        void SetData(uint32 type, uint32 data)
        {
            if (type == DATA_STAR_ID)
            {
                starId = data;
            }
            else if (type == DATA_STAR_READY)
            {
                isReady = data > 0 ? true : false;
            }
            else if (type == DATA_CONSTELLATION_TYPE)
            {
                constellationType = data;
                if (IsFirstStar())
                {
                    me->AddAura(SPELL_MOONBEAM_STATE_WORLD, me);
                }
            }

            return;
        }

        void UpdateAI(const uint32 diff)
        {
            PlayerCheck(diff);
        }

    private:

        int32 starId;
        uint32 playerCheckTimer;
        bool isActivated;
        bool isReady;
        int32 constellationType;

    private:

        void PlayerCheck(const uint32 diff)
        {
            if (isActivated)
                return;

            if (playerCheckTimer <= diff)
            {
                playerCheckTimer = 1000;

               
                {
                    isActivated = true;

                    me->RemoveAura(SPELL_STAR_STATE_1);
                    me->AddAura(SPELL_STAR_STATE_2, me);

                    if (starId == 1)
                    {
                        isReady = true;
                    }
                    else if (Creature* pStar = GetNearestReadyStar())
                    {
                        pStar->CastSpell(me, SPELL_STARDUST_BEAM, true);
                        isReady = true;
                    }
                }
            }
            else
            {
                playerCheckTimer -= diff;
            }
        }

        Creature* GetNearestReadyStar()
        {
            Creature* creature = NULL;
            ReadyStarCheck checker(me);

            return creature;
        }

        bool IsFirstStar()
        {
            switch (constellationType)
            {
            case CONSTELLATION_OX: return starId == constellationOx[0];
            }

            return false;
        }

    private:

        class ReadyStarCheck
        {
        public:
            ReadyStarCheck(Creature* searcher) : _searcher(searcher) {}

            bool operator()(Creature* u)
            {
                if (u->GetGUID() == _searcher->GetGUID())
                    return false;

                if (u->GetEntry() != NPC_STAR)
                    return false;

                if (u->AI()->GetData(DATA_STAR_READY) == 0)
                    return false;

                return true;
            }

        private:
            Creature* _searcher;
        };
    };
};

class spell_lulin_disipate : public SpellScriptLoader
{
public:
    spell_lulin_disipate() : SpellScriptLoader("spell_lulin_disipate") { }

    class spell_lulin_disipate_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_lulin_disipate_AuraScript);

        void HandleAfterRemove(AuraEffect const* aurEff, AuraEffectHandleModes mode)
        {
            if (!GetCaster())
                return;

            GetCaster()->AddAura(SPELL_INVIS_LULIN, GetCaster());
        }

        void Register()
        {
            AfterEffectRemove += AuraEffectRemoveFn(spell_lulin_disipate_AuraScript::HandleAfterRemove, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_lulin_disipate_AuraScript();
    }
};

class spell_suen_disipate : public SpellScriptLoader
{
public:
    spell_suen_disipate() : SpellScriptLoader("spell_suen_disipate") { }

    class spell_suen_disipate_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_suen_disipate_AuraScript);

        void HandleAfterRemove(AuraEffect const* aurEff, AuraEffectHandleModes mode)
        {
            if (!GetCaster())
                return;

            GetCaster()->AddAura(SPELL_INVIS_SUEN, GetCaster());
        }

        void Register()
        {
            AfterEffectRemove += AuraEffectRemoveFn(spell_suen_disipate_AuraScript::HandleAfterRemove, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_suen_disipate_AuraScript();
    }
};

class spell_lulin_moon_lotus : public SpellScriptLoader
{
public:
    spell_lulin_moon_lotus() : SpellScriptLoader("spell_lulin_moon_lotus") { }

    class spell_lulin_moon_lotus_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_lulin_moon_lotus_AuraScript);

        void HandleTick(AuraEffect const* aurEff)
        {
            if (!GetCaster())
                return;

            GetCaster()->CastSpell(GetCaster(), SPELL_MOON_LOTUS_SUMMON, true);
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_lulin_moon_lotus_AuraScript::HandleTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_lulin_moon_lotus_AuraScript();
    }
};

class spell_lulin_moon_lotus_summon : public SpellScriptLoader
{
public:
    spell_lulin_moon_lotus_summon() : SpellScriptLoader("spell_lulin_moon_lotus_summon") { }

    class spell_lulin_moon_lotus_summon_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_lulin_moon_lotus_summon_SpellScript);

        void HandleOnHit(SpellEffIndex effIndex)
        {
            if (!GetCaster())
                return;

            if (!roll_chance_i(50))
            {
                PreventHitDefaultEffect(effIndex);
                return;
            }

            if (Creature* pCreature = GetCaster()->ToCreature())
            {
                uint32 usedLotuses = pCreature->AI()->GetData(DATA_SUMMONED_LOTUS);
                if (usedLotuses >= MAX_LOTUS_POS)
                {
                    PreventHitDefaultEffect(effIndex);
                    return;
                }

                uint32 freePos = usedLotuses + 1;

                WorldLocation summonPos = *GetExplTargetDest();
                summonPos.Relocate(moonLotusPos[freePos]);
                SetExplTargetDest(summonPos);
                GetHitDest()->Relocate(moonLotusPos[freePos]);

                pCreature->AI()->SetData(DATA_SUMMONED_LOTUS, usedLotuses + 1);
            }
        }

        void Register()
        {
            OnEffectHit += SpellEffectFn(spell_lulin_moon_lotus_summon_SpellScript::HandleOnHit, EFFECT_0, SPELL_EFFECT_SUMMON);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_lulin_moon_lotus_summon_SpellScript();
    }
};

class spell_lulin_cosmic_barrage : public SpellScriptLoader
{
public:
    spell_lulin_cosmic_barrage() : SpellScriptLoader("spell_lulin_cosmic_barrage") { }

    class spell_lulin_cosmic_barrage_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_lulin_cosmic_barrage_AuraScript);

        void HandleTick(AuraEffect const* aurEff)
        {
            if (!GetCaster())
                return;

            GetCaster()->CastSpell(GetCaster(), SPELL_COSMIC_BARRAGE_SUMMON_1, true);
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_lulin_cosmic_barrage_AuraScript::HandleTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_lulin_cosmic_barrage_AuraScript();
    }
};

class spell_lulin_cosmic_barrage_summon_1 : public SpellScriptLoader
{
public:
    spell_lulin_cosmic_barrage_summon_1() : SpellScriptLoader("spell_lulin_cosmic_barrage_summon_1") { }

    class spell_lulin_cosmic_barrage_summon_1_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_lulin_cosmic_barrage_summon_1_SpellScript);

        void HandleOnHit(SpellEffIndex effIndex)
        {
            if (!GetCaster())
                return;

            PreventHitDefaultEffect(effIndex);

            Position pos;

            pos.m_positionX += frand(-3.0f, 3.0f);
            pos.m_positionY += frand(-3.0f, 3.0f);
            pos.m_positionZ += 5.0f;

            GetCaster()->SummonCreature(NPC_STAR_2, pos, TEMPSUMMON_TIMED_DESPAWN, 10000);
        }

        void Register()
        {
            OnEffectHit += SpellEffectFn(spell_lulin_cosmic_barrage_summon_1_SpellScript::HandleOnHit, EFFECT_1, SPELL_EFFECT_SUMMON);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_lulin_cosmic_barrage_summon_1_SpellScript();
    }
};

class spell_suen_tears_of_the_sun : public SpellScriptLoader
{
public:
    spell_suen_tears_of_the_sun() : SpellScriptLoader("spell_suen_tears_of_the_sun") { }

    class spell_suen_tears_of_the_sun_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_suen_tears_of_the_sun_AuraScript);

        void HandleTick(AuraEffect const* aurEff)
        {
            if (!GetCaster())
                return;

            uint32 maxTargets = GetCaster()->GetMap()->Is25ManRaid() ? 3 : 1;

            GetCaster()->CastCustomSpell(SPELL_TEARS_OF_THE_SUN_DMG_1, SPELLVALUE_MAX_TARGETS, maxTargets, GetCaster(), true);
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_suen_tears_of_the_sun_AuraScript::HandleTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_suen_tears_of_the_sun_AuraScript();
    }
};

class spell_suen_blazing_radiance_aura : public SpellScriptLoader
{
public:
    spell_suen_blazing_radiance_aura() : SpellScriptLoader("spell_suen_blazing_radiance_aura") { }

    class spell_suen_blazing_radiance_aura_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_suen_blazing_radiance_aura_AuraScript);

        void HandleTick(AuraEffect const* aurEff)
        {
            if (!GetCaster())
                return;

            GetCaster()->CastSpell(GetCaster(), SPELL_BLAZING_RADIANCE_DMG_1, true);
            GetCaster()->AddAura(SPELL_BLAZING_RADIANCE_BUFF, GetCaster());
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_suen_blazing_radiance_aura_AuraScript::HandleTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_suen_blazing_radiance_aura_AuraScript();
    }
};

class spell_lulin_ice_comet_aoe : public SpellScriptLoader
{
public:
    spell_lulin_ice_comet_aoe() : SpellScriptLoader("spell_lulin_ice_comet_aoe") { }

    class spell_lulin_ice_comet_aoe_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_lulin_ice_comet_aoe_SpellScript);

        void FilterTargets(std::list<WorldObject*> &targets)
        {
            if (!GetCaster())
                return;

            Trinity::Containers::RandomResize(targets, 1);
        }

        void HandleDummy(SpellEffIndex effIndex)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            GetCaster()->CastSpell(GetHitUnit(), SPELL_ICE_COMET_MISSILE_1, true);
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_lulin_ice_comet_aoe_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
            OnEffectHitTarget += SpellEffectFn(spell_lulin_ice_comet_aoe_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_lulin_ice_comet_aoe_SpellScript();
    }
};

class spell_lulin_chilled : public SpellScriptLoader
{
public:
    spell_lulin_chilled() : SpellScriptLoader("spell_lulin_chilled") { }

    class spell_lulin_chilled_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_lulin_chilled_SpellScript);

        void HandleScript(SpellEffIndex effIndex)
        {
            if (!GetHitUnit())
                return;

            GetHitUnit()->RemoveAuraFromStack(SPELL_BLAZING_RADIANCE_BUFF);
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_lulin_chilled_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_lulin_chilled_SpellScript();
    }
};

class spell_suen_blazing_radiance_aura_2 : public SpellScriptLoader
{
public:
    spell_suen_blazing_radiance_aura_2() : SpellScriptLoader("spell_suen_blazing_radiance_aura_2") { }

    class spell_suen_blazing_radiance_aura_2_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_suen_blazing_radiance_aura_2_AuraScript);

        void HandleTick(AuraEffect const* aurEff)
        {
            if (!GetCaster())
                return;

            GetCaster()->CastSpell(GetCaster(), SPELL_BLAZING_RADIANCE_DMG_2, true);
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_suen_blazing_radiance_aura_2_AuraScript::HandleTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_suen_blazing_radiance_aura_2_AuraScript();
    }
};

class spell_lulin_blazing_radiance_dmg_2 : public SpellScriptLoader
{
public:
    spell_lulin_blazing_radiance_dmg_2() : SpellScriptLoader("spell_lulin_blazing_radiance_dmg_2") { }

    class spell_lulin_blazing_radiance_dmg_2_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_lulin_blazing_radiance_dmg_2_SpellScript);

        void HandleDamage(SpellEffIndex effIndex)
        {
            if (!GetHitUnit())
                return;

            SetHitDamage(GetHitUnit()->CountPctFromMaxHealth(4));
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_lulin_blazing_radiance_dmg_2_SpellScript::HandleDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_lulin_blazing_radiance_dmg_2_SpellScript();
    }
};

class spell_lulin_tidal_force : public SpellScriptLoader
{
public:
    spell_lulin_tidal_force() : SpellScriptLoader("spell_lulin_tidal_force") { }

    class spell_lulin_tidal_force_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_lulin_tidal_force_AuraScript);

        void HandleTick(AuraEffect const* aurEff)
        {
            if (!GetUnitOwner())
                return;

            Position pos;            
            pos.m_positionZ = GetUnitOwner()->GetPositionZ();
            GetUnitOwner()->CastSpell(pos.GetPositionX(), pos.GetPositionY(), pos.GetPositionZ(), SPELL_TIDAL_FORCE_DUMMY_2, true);
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_lulin_tidal_force_AuraScript::HandleTick, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_lulin_tidal_force_AuraScript();
    }
};

class spell_area_suen_flames_of_passion : public AreaTriggerScript
{
public:
    spell_area_suen_flames_of_passion() : AreaTriggerScript("spell_area_suen_flames_of_passion") {}

    bool OnAddTarget(AreaTrigger* trigger, Unit* target)
    {      

        return true;
    }

    bool OnRemoveTarget(AreaTrigger* trigger, Unit* target)
    {
        target->RemoveAura(SPELL_FLAMES_OF_PASSION_DMG_2);

        return true;
    }
};

void AddSC_boss_twin_consorts()
{
    new boss_lulin();                           // 68905
    new boss_suen();                            // 68904
    new npc_lulin_moon_lotus();                 // 69340
    new npc_lulin_star();                       // 69477
    new npc_lulin_moon_lotus_2();               // 69456
    new npc_lulin_ice_comet();                  // 69596 69704
    new npc_lulin_faded_image_of_niuzao();      // 69777
    new npc_lulin_star_1();                     // 70124

    new spell_lulin_disipate();                 // 137187
    new spell_suen_disipate();                  // 137105
    new spell_lulin_moon_lotus();               // 136690
    new spell_lulin_moon_lotus_summon();        // 136714
    new spell_lulin_cosmic_barrage();           // 136752
    new spell_lulin_cosmic_barrage_summon_1();  // 136768
    new spell_suen_tears_of_the_sun();          // 137404
    new spell_suen_blazing_radiance_aura();     // 137411
    new spell_lulin_ice_comet_aoe();            // 138799
    new spell_lulin_chilled();                  // 137483
    new spell_suen_blazing_radiance_aura_2();   // 137474
    new spell_lulin_blazing_radiance_dmg_2();   // 137475
    new spell_lulin_tidal_force();              // 137531

    new spell_area_suen_flames_of_passion();    // 137416
}
