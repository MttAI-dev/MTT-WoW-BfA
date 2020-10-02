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

enum ScriptedTexts
{
    SAY_AGGRO = 0,
    SAY_BERSERK = 1,
    SAY_CONDUIT_CHARGE = 2,
    SAY_DEATH = 3,
    SAY_INTRO = 7,
    SAY_KILL = 8,
    SAY_PHASE_2A = 9,
    SAY_PHASE_2B = 10,
    SAY_PHASE_3A = 11,
    SAY_PHASE_3B = 12,
    SAY_THUNDERSTRUCK = 13,
    SAY_LIGHTNING_WHIP = 14,
    SAY_VIOLENT_GALE_WINDS = 15,

};

enum Spells
{
    SPELL_ZERO_POWER = 78725, // energy

    SPELL_COSMETIC_TELEPORT_E = 139102,
    SPELL_COSMETIC_TELEPORT_N = 139103,
    SPELL_COSMETIC_TELEPORT_W = 139104,
    SPELL_COSMETIC_TELEPORT_S = 139105,

    SPELL_COSMETIC_LIGHTNING_PILLAR_BEAM = 138090,
    SPELL_COSMETIC_LIGHTNING_PILLAR_SPARK_1 = 138091,
    SPELL_COSMETIC_LIGHTNING_PILLAR_SPARK_2 = 138152,
    SPELL_COSMETIC_LIGHTNING_PILLAR_SPARK_3 = 138153,

    SPELL_DISPLACE = 136948,

    SPELL_SUPERCHARGE_CONDUITS = 137045,
    SPELL_SUPERCHARGE_CONDUITS_DUMMY = 137073,
    SPELL_SUPERCHARGE_CONDUITS_SCRIPT_1 = 137146,   // it's in dbm notifications
    SPELL_SUPERCHARGE_CONDUITS_SCRIPT_2 = 137150,   // ? no visual
    SPELL_SUPERCHARGE_CONDUITS_SCRIPT_3 = 139872,   // ? no visual
    SPELL_SUPERCHARGE_CONDUITS_KNOCKBACK = 138032,

    SPELL_OVERLOAD_CIRCUITS_AREATRIGGER_1 = 137153,
    SPELL_OVERLOAD_CIRCUITS_AREATRIGGER_2 = 137169,
    SPELL_OVERLOAD_CIRCUITS_AREATRIGGER_3 = 137170,
    SPELL_OVERLOAD_CIRCUITS_AREATRIGGER_4 = 137171,
    SPELL_OVERLOAD_CIRCUITS_DMG = 137176,

    SPELL_ELECTICAL_CONDUIT_DUMMY = 134800, // ? no visual
    SPELL_ELECTRICAL_CONDUIT_BEAM = 134803, // from conduit to lei shen
    SPELL_ELECTRICAL_CONDUIT_DMG = 134808,

    SPELL_CONDUIT_LEVEL_AURA = 137606,
    SPELL_CONDUIT_LEVEL_PLAYERS = 137607, // shows current conduit level 1-100 for players, triggered by 137606
    SPELL_CONDUIT_LEVEL_SCRIPT = 137611, // triggered by 137606
    SPELL_CONDUIT_LEVEL_BOUNCING_BOLT = 137581,
    SPELL_CONDUIT_LEVEL_OVERCHARGE = 139272,
    SPELL_CONDUIT_LEVEL_STATIC_SHOCK = 139271,
    SPELL_CONDUIT_LEVEL_DIFFUSION_CHAIN = 139273,

    SPELL_DISCHARGED_ENERGY = 134820,
    SPELL_DISCHARGED_ENERGY_DMG = 134821,
    SPELL_DISCHARGED_ENERGY_DEBUFF = 137446,

    SPELL_STATIC_SHOCK_DUMMY = 135680,
    SPELL_STATIC_SHOCK_AOE = 135695,
    SPELL_STATIC_SHOCK_DMG = 135703,

    SPELL_OVERCHARGE_DUMMY = 135682,
    SPELL_OVERCHARGE_AOE = 136295,
    SPELL_OVERCHARGE_DUMMY_VISUAL = 137252, // triggered by 136295
    SPELL_OVERCHARGE_DMG = 136326,
    SPELL_ELECTRIC_DISCHARGE_VISUAL = 140061, // wrong spell, but same visual

    SPELL_DIFFUSION_CHAIN_DUMMY = 135681,
    SPELL_DIFFUSION_CHAIN_AOE = 135990,
    SPELL_DIFFUSION_CHAIN_DMG = 135991,
    SPELL_DIFFUSION_CHAIN_SUMMON_1 = 135992, // lesser
    SPELL_DIFFUSION_CHAIN_SUMMON_2 = 135993, // normal
    SPELL_DIFFUSION_CHAIN_SUMMON_3 = 135994, // greater

    SPELL_BOUNCING_BOLT_DUMMY = 135683,
    SPELL_BOUNCING_BOLT_TRIGGER = 136397, // on creature
    SPELL_BOUNCING_BOLT_MISSILE = 136361,
    SPELL_BOUNCING_BOLT_DMG = 136366,
    SPELL_BOUNCING_BOLT_SUMMON_1 = 136391, // summons dummy trigger
    SPELL_BOUNCING_BOLT_SUMMON_2 = 136372, // summons mob

    SPELL_AMPLIFIER = 138070,


    // Lei Shen 
    SPELL_DECAPITATE = 134912,
    SPELL_DECAPITATE_MARK = 135000,
    SPELL_DECAPITATE_MISSILE = 134990,
    SPELL_DECAPITATE_SCRIPT = 134919,
    SPELL_DECAPITATE_DMG = 134916,

    SPELL_THUNDERSTRUCK_FORCE = 135091,
    SPELL_THUNDERSTRUCK_MISSILE = 135095,
    SPELL_THUNDERSTRUCK_DMG = 135096,
    SPELL_THUNDERSTRUCK_SUMMON = 135098, // triggered by 135091
    SPELL_BALL_TARGET = 140770, // wrong spell but need to show target

    SPELL_CRUSHING_THUNDER_AURA_PRE = 135143,
    SPELL_CRUSHING_THUNDER_DMG = 135150, // summons area trigger
    SPELL_CRUSHING_THUNDER_DUMMY = 135151,
    SPELL_CRUSHING_THUNDER_PERIODIC_DMG = 135153,

    SPELL_FUSION_SLASH = 136478,

    SPELL_BALL_LIGHTNING_AOE = 136544, // targetting for summon
    SPELL_SUMMON_BALL_LIGHTNING = 136543,
    SPELL_BALL_LIGHTNING_VISUAL = 136534,
    SPELL_BALL_LIGHTNING_JUMP = 136548,
    SPELL_BALL_LIGHTNING_DMG = 136620,
    SPELL_BALL_LIGHTNING_DUMMY_PERIODIC = 139261,
    SPELL_BALL_LIGHTNING_DUMMY = 136539,

    SPELL_LIGHTNING_WHIP_FORCE = 136845,
    SPELL_LIGHTNING_WHIP_SUMMON = 136846, // triggered by 136845
    SPELL_LIGHTNING_WHIP_DMG = 136850,
    SPELL_LIGHTNING_WHIP_AREATRIGGER = 137499, // triggered by 136850
    SPELL_LIGHTNING_BOLT = 136853,

    SPELL_OVERHELMING_POWER = 136913,
    SPELL_OVERHELMING_POWER_PERIODIC = 137553, // on creatures ?
    SPELL_ELECTRICAL_SHOCK_DMG = 136914,

    SPELL_VIOLENT_GALE_WINDS_SCRIPT = 136869,
    SPELL_VIOLENT_GALE_WINDS_DMG = 136889,
    SPELL_VIOLENT_GALE_WINDS_AREATRIGGER_1 = 136867,
    SPELL_VIOLENT_GALE_WINDS_AREATRIGGER_2 = 136876,
    SPELL_VIOLENT_GALE_WINDS_AREATRIGGER_3 = 136877,
    SPELL_VIOLENT_GALE_WINDS_AREATRIGGER_4 = 136879,
};

enum Adds
{
    NPC_STATIC_SHOCK_CONDUIT = 68398,    // north
    NPC_DIFFUSION_CHAIN_CONDUIT = 68696,    // east
    NPC_OVERCHARGE_CONDUIT = 68697,    // south
    NPC_BOUNCING_BOLT_CONDUIT = 68698,    // west

    NPC_BOUNCING_BOLT = 69147,
    NPC_UNHARNESSED_POWER = 69133,
    NPC_LESSER_DIFFUSED_LIGHTNING = 69012,
    NPC_DIFFUSED_LIGHTNING = 69013,
    NPC_GREATER_DIFFUSED_LIGHTNING = 69014,
    NPC_THUNDEROUS_THROW = 68574,
    NPC_BALL_LIGHTNING_1 = 69462, // ?
    NPC_BALL_LIGHTNING_2 = 69232,
    NPC_LIGHTNING_WHIP = 69385,
};

enum Events
{
    EVENT_CHECK_CONDUIT_TARGET = 1,
    EVENT_DISCHARGED_ENERGY,
    EVENT_STATIC_SHOCK,
    EVENT_DIFFUSION_CHAIN,
    EVENT_BOUNCING_BOLT,
    EVENT_OVERCHARGE,
    EVENT_DECAPITATE,
    EVENT_THUNDERSTRUCK,
    EVENT_CRUSHING_THUNDER,
    EVENT_UPDATE_ENERGY,
    EVENT_PHASE_2B,
    EVENT_PHASE_3B,
    EVENT_CHARGING_STATION_ACTIVATE,
    EVENT_CHARGING_STATION_DEACTIVATE,
    EVENT_SUPERCHARGE_CONDUITS,
    EVENT_SUPERCHARGE_CONDUITS_END,
    EVENT_FUSION_SLASH,
    EVENT_SUMMON_BALL_LIGHTNING,
    EVENT_LIGHTNING_WHIP,
    EVENT_VIOLENT_GALE_WINDS,
    EVENT_VIOLENT_GALE_WINDS_END,
    EVENT_INTERMISSION_EVENTS,

    EVENT_BALL_LIGHTNING_JUMP,
};

enum Actions
{
    ACTIVATE_COUDUIT_TARGET_CHECK = 1,
    DEACTIVATE_CONDUIT_TARGET_CHECK,
    ACTION_SUPERCHARGE_CONDUITS,
    INCREASE_CONDUIT_LEVEL,
    ACTION_OVERCHARGE_CONDUIT,
    ACTION_VIOLENT_GALE_WINDS,

    DATA_STATIC_SHOCK_ENABLED,
    DATA_DIFFUSION_CHAIN_ENABLED,
    DATA_OVERCHARGE_ENABLED,
    DATA_BOUNCING_BOLT_ENABLED,

    DATA_COUNDUIT_LEVEL,
    DATA_CONDUIT_OVERCHARGED,
};

enum Phases
{
    PHASE_NONE = 0,
    PHASE_2A,
    PHASE_2B,
    PHASE_3A,
    PHASE_3B,
};

enum Conduits
{
    CONDUIT_NONE = 0,
    BOUNCING_BOLT_CONDUIT,
    OVERCHARGE_CONDUIT,
    STATIC_SHOCK_CONDUIT,
    DIFFUSION_CHAIN_CONDUIT,
};

enum Equipments
{
    EQUIPMENT_AXE = 94982,
    EQUIPMENT_POLEARM = 94983,
};

#define MAX_CONDUIT_POS 4
const Position conduitPos[MAX_CONDUIT_POS] =
{
    {5710.45f, 4177.31f, 156.463f, 1.57f},  // west
    {5627.34f, 4094.19f, 156.463f, 3.14f},  // south
    {5793.56f, 4094.19f, 156.463f, 0.00f},  // north
    {5710.45f, 4011.08f, 156.463f, 4.71f}   // east
};

const Position centerPos = { 5710.55f, 4094.05f, 156.47f, 3.94f };

#define MAX_INTRO_POS
const Position introPos[4] =
{
    {5710.417969f, 4167.541016f, 156.47f, 1.53f}, // west
    {5783.684082f, 4094.173096f, 156.47f, 0.02f}, // north
    {5710.513184f, 4020.599854f, 156.47f, 4.64f}, // east
    {5636.246094f, 4094.226318f, 156.47f, 3.17f}  // south
};

class boss_lei_shen : public CreatureScript
{
public:
    boss_lei_shen() : CreatureScript("boss_lei_shen") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_lei_shenAI(creature);
    }

    struct boss_lei_shenAI : public BossAI
    {
        boss_lei_shenAI(Creature* creature) : BossAI(creature, DATA_LEI_SHEN)
        {
            me->setActive(true);

            IsIntroActive = true;
            introTimer = 10000;
        }

        void Reset()
        {
            _Reset();

            CloseAllWindows();
            ActivateChargingStation(false);
            ActivateAllFloors(false);

            me->SetReactState(REACT_DEFENSIVE);

            SetEquipmentSlots(false, EQUIPMENT_AXE, 0);

            isDischarged = false;
            isIntermission = false;
            isStaticShockEnabled = false;
            isOverchargeEnabled = false;
            isBouncingBoltEnabled = false;
            isDiffusionChainEnabled = false;
            phase = PHASE_NONE;

            isTalkedLightningWhip = false;
            isTalkedViolentGaleWinds = false;

            lightningWhipOrientation = me->GetOrientation();

            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_DISCHARGED_ENERGY_DMG);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_CONDUIT_LEVEL_PLAYERS);
        }

        void EnterCombat(Unit* attacker)
        {
            Talk(SAY_AGGRO);

            IsIntroActive = false;

            events.ScheduleEvent(EVENT_DISCHARGED_ENERGY, 1000);
            events.ScheduleEvent(EVENT_DECAPITATE, 40000);
            events.ScheduleEvent(EVENT_CRUSHING_THUNDER, 7000);
            events.ScheduleEvent(EVENT_THUNDERSTRUCK, 25000);


            instance->SetBossState(DATA_LEI_SHEN, IN_PROGRESS);
            DoZoneInCombat();
        }

        void EnterEvadeMode(EvadeReason why) override
        {

            BossAI::EnterEvadeMode();
        }

        void JustReachedHome()
        {
            IsIntroActive = true;
            introTimer = 10000;
        }

        void SetData(uint32 type, uint32 data)
        {
            switch (type)
            {
            case DATA_STATIC_SHOCK_ENABLED:
                if (data > 0 && !isStaticShockEnabled)
                {
                    isStaticShockEnabled = true;
                    events.ScheduleEvent(EVENT_STATIC_SHOCK, 10000);
                }
                else if (data == 0 && isStaticShockEnabled)
                {
                    isStaticShockEnabled = false;
                    events.CancelEvent(EVENT_STATIC_SHOCK);
                }
                break;
            case DATA_DIFFUSION_CHAIN_ENABLED:
                if (data > 0 && !isDiffusionChainEnabled)
                {
                    isDiffusionChainEnabled = true;
                    events.ScheduleEvent(EVENT_DIFFUSION_CHAIN, 10000);
                }
                else if (data == 0 && isDiffusionChainEnabled)
                {
                    isDiffusionChainEnabled = false;
                    events.CancelEvent(EVENT_DIFFUSION_CHAIN);
                }
                break;
            case DATA_OVERCHARGE_ENABLED:
                if (data > 0 && !isOverchargeEnabled)
                {
                    isOverchargeEnabled = true;
                    events.ScheduleEvent(EVENT_OVERCHARGE, 10000);
                }
                else if (data == 0 && isOverchargeEnabled)
                {
                    isOverchargeEnabled = false;
                    events.CancelEvent(EVENT_OVERCHARGE);
                }
                break;
            case DATA_BOUNCING_BOLT_ENABLED:
                if (data > 0 && !isBouncingBoltEnabled)
                {
                    isBouncingBoltEnabled = true;
                    events.ScheduleEvent(EVENT_BOUNCING_BOLT, 10000);
                }
                else if (data == 0 && isBouncingBoltEnabled)
                {
                    isBouncingBoltEnabled = false;
                    events.CancelEvent(EVENT_BOUNCING_BOLT);
                }
                break;

            }
        }

        void SetFloatData(uint32 type, float data)
        {
            lightningWhipOrientation = data;
        }

        float GetFloatData(uint32 type)
        {
            return lightningWhipOrientation;
        }

        void KilledUnit(Unit* who)
        {
            if (who && who->GetTypeId() == TYPEID_PLAYER)
            {
                Talk(SAY_KILL);
            }
        }

        void DoAction(const int32 action)
        {
            if (action == ACTION_SUPERCHARGE_CONDUITS)
            {
                events.ScheduleEvent(EVENT_SUPERCHARGE_CONDUITS, 1);
            }
            else if (action == ACTION_VIOLENT_GALE_WINDS)
            {
                ActivateRandomWindow();
            }
        }

        void DamageTaken(Unit* who, uint32 & damage)
        {
            if (phase == PHASE_2A || phase == PHASE_3A)
            {
                damage = 0;
            }
        }

        void JustDied(Unit* killer)
        {
            // before _JustDied && summons.despawnall
            ActivateDischargedEnergy(false);

            Talk(SAY_DEATH);

            _JustDied();

            CloseAllWindows();
            ActivateChargingStation(false);
            ActivateAllFloors(false);
        }

        void UpdateAI(const uint32 diff)
        {
            UpdateIntro(diff);

            if (!UpdateVictim())
                return;

            if (ChangePhase())
            {
                return;
            }

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_DISCHARGED_ENERGY:
                    UpdateDischargedEnergy();
                    events.ScheduleEvent(EVENT_DISCHARGED_ENERGY, 1000);
                    break;
                case EVENT_STATIC_SHOCK:
                    DoCastAOE(SPELL_STATIC_SHOCK_AOE);
                    if (!isIntermission)
                    {
                        events.ScheduleEvent(EVENT_STATIC_SHOCK, 40000);
                    }
                    break;
                case EVENT_OVERCHARGE:
                    DoCastAOE(SPELL_OVERCHARGE_AOE);
                    if (!isIntermission)
                    {
                        events.ScheduleEvent(EVENT_OVERCHARGE, 40000);
                    }
                    break;
                case EVENT_BOUNCING_BOLT:
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true))
                    {
                        DoCast(target, SPELL_BOUNCING_BOLT_MISSILE);
                    }
                    if (!isIntermission)
                    {
                        events.ScheduleEvent(EVENT_BOUNCING_BOLT, 40000);
                    }
                    break;
                case EVENT_DIFFUSION_CHAIN:
                    DoCastAOE(SPELL_DIFFUSION_CHAIN_AOE);
                    if (!isIntermission)
                    {
                        events.ScheduleEvent(EVENT_DIFFUSION_CHAIN, 40000);
                    }
                    break;
                case EVENT_DECAPITATE:
                    DoCastVictim(SPELL_DECAPITATE);
                    events.ScheduleEvent(EVENT_DECAPITATE, 45000);
                    break;
                case EVENT_CRUSHING_THUNDER:
                    DoCast(me, SPELL_CRUSHING_THUNDER_AURA_PRE);
                    events.ScheduleEvent(EVENT_CRUSHING_THUNDER, urand(27000, 30000));
                    break;
                case EVENT_THUNDERSTRUCK:
                    Talk(SAY_THUNDERSTRUCK);
                    DoCastAOE(SPELL_THUNDERSTRUCK_FORCE);
                    events.ScheduleEvent(EVENT_THUNDERSTRUCK, 46000);
                    break;
                case EVENT_CHARGING_STATION_ACTIVATE:
                    ActivateChargingStation(true);
                    ActivateAllFloors(true);
                    DoCast(me, SPELL_SUPERCHARGE_CONDUITS_SCRIPT_1);
                    break;
                case EVENT_SUPERCHARGE_CONDUITS:
                    isIntermission = true;

                    DoCast(me, SPELL_SUPERCHARGE_CONDUITS);


                    if (diffusingChainConduitGUID)
                    {
                        events.ScheduleEvent(EVENT_DIFFUSION_CHAIN, 6000);
                    }

                    if (overchargeConduitGUID)
                    {
                        events.ScheduleEvent(EVENT_OVERCHARGE, 6000);
                    }

                    if (bouncingBoltConduitGUID)
                    {
                        events.ScheduleEvent(EVENT_BOUNCING_BOLT, 14000);
                    }

                    if (staticShockConduitGUID)
                    {
                        events.ScheduleEvent(EVENT_STATIC_SHOCK, 19000);
                    }

                    events.ScheduleEvent(EVENT_INTERMISSION_EVENTS, 23000);

                    events.ScheduleEvent(EVENT_SUPERCHARGE_CONDUITS_END, 47000);
                    break;
                case EVENT_INTERMISSION_EVENTS:
                    if (diffusingChainConduitGUID)
                    {
                        events.ScheduleEvent(EVENT_DIFFUSION_CHAIN, 8000);
                    }

                    if (overchargeConduitGUID)
                    {
                        events.ScheduleEvent(EVENT_OVERCHARGE, 6500);
                    }

                    if (bouncingBoltConduitGUID)
                    {
                        events.ScheduleEvent(EVENT_BOUNCING_BOLT, 14000);
                    }

                    if (staticShockConduitGUID)
                    {
                        events.ScheduleEvent(EVENT_STATIC_SHOCK, 16000);
                    }

                    break;
                case EVENT_SUPERCHARGE_CONDUITS_END:
                    isIntermission = false;
                    ActivateChargingStation(false);
                    ActivateAllFloors(false);


                    events.CancelEvent(EVENT_DIFFUSION_CHAIN);
                    events.CancelEvent(EVENT_OVERCHARGE);
                    events.CancelEvent(EVENT_BOUNCING_BOLT);
                    events.CancelEvent(EVENT_STATIC_SHOCK);
                    events.CancelEvent(EVENT_INTERMISSION_EVENTS);

                    me->SetReactState(REACT_AGGRESSIVE);

                    if (phase == PHASE_2A)
                    {
                        phase = PHASE_2B;
                        Talk(SAY_PHASE_2B);
                        SetEquipmentSlots(false, EQUIPMENT_POLEARM, 0);


                        events.ScheduleEvent(EVENT_DISCHARGED_ENERGY, 1000);
                        events.ScheduleEvent(EVENT_FUSION_SLASH, 44000);
                        events.ScheduleEvent(EVENT_SUMMON_BALL_LIGHTNING, 15000);
                        events.ScheduleEvent(EVENT_LIGHTNING_WHIP, 30000);
                    }
                    else if (phase == PHASE_3A)
                    {
                        phase = PHASE_3B;
                        Talk(SAY_PHASE_3B);
                        SetEquipmentSlots(false, EQUIPMENT_AXE, EQUIPMENT_POLEARM);

                        events.ScheduleEvent(EVENT_SUMMON_BALL_LIGHTNING, 41500);
                        events.ScheduleEvent(EVENT_LIGHTNING_WHIP, 21500);
                        events.ScheduleEvent(EVENT_THUNDERSTRUCK, 36000);
                        events.ScheduleEvent(EVENT_VIOLENT_GALE_WINDS, 20000);
                    }
                    break;
                case EVENT_FUSION_SLASH:
                    DoCastVictim(SPELL_FUSION_SLASH);
                    events.ScheduleEvent(EVENT_FUSION_SLASH, 42500);
                    break;
                case EVENT_SUMMON_BALL_LIGHTNING:
                    DoCastAOE(SPELL_BALL_LIGHTNING_AOE);
                    events.ScheduleEvent(EVENT_SUMMON_BALL_LIGHTNING, 45500);
                    break;
                case EVENT_LIGHTNING_WHIP:
                    if (!isTalkedLightningWhip)
                    {
                        isTalkedLightningWhip = true;
                        Talk(SAY_LIGHTNING_WHIP);
                    }
                    DoCastVictim(SPELL_LIGHTNING_WHIP_FORCE);
                    break;
                case EVENT_VIOLENT_GALE_WINDS:
                    if (!isTalkedViolentGaleWinds)
                    {
                        isTalkedViolentGaleWinds = true;
                        Talk(SAY_VIOLENT_GALE_WINDS);
                    }

                    DoCast(me, SPELL_VIOLENT_GALE_WINDS_SCRIPT);
                    events.ScheduleEvent(EVENT_VIOLENT_GALE_WINDS_END, 15000);
                    events.ScheduleEvent(EVENT_VIOLENT_GALE_WINDS, 30500);
                    break;
                case EVENT_VIOLENT_GALE_WINDS_END:
                    CloseAllWindows();
                    break;
                default:
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:

        uint64 bouncingBoltConduitGUID;
        uint64 overchargeConduitGUID;
        uint64 staticShockConduitGUID;
        uint64 diffusingChainConduitGUID;

        bool isDischarged;
        bool isIntermission;

        bool isStaticShockEnabled;
        bool isOverchargeEnabled;
        bool isBouncingBoltEnabled;
        bool isDiffusionChainEnabled;

        bool IsIntroActive;
        uint32 introTimer;

        Phases phase;

        bool isTalkedLightningWhip;
        bool isTalkedViolentGaleWinds;

        float lightningWhipOrientation;

    private:

        void UpdateDischargedEnergy()
        {
            if (!isStaticShockEnabled && !isBouncingBoltEnabled &&
                !isOverchargeEnabled && !isDiffusionChainEnabled)
            {
                ActivateDischargedEnergy(true);
            }
            else
            {
                ActivateDischargedEnergy(false);
            }
        }

        void ActivateDischargedEnergy(bool activate)
        {
            if (activate)
            {
                if (!isDischarged)
                {
                    isDischarged = true;

                    me->RemoveAura(SPELL_CONDUIT_LEVEL_AURA);

                    me->AddAura(SPELL_DISCHARGED_ENERGY, me);

                    Map::PlayerList const &PlayerList = instance->instance->GetPlayers();
                    if (!PlayerList.isEmpty())
                        for (Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                            if (Player* player = i->GetSource())
                                me->AddAura(SPELL_DISCHARGED_ENERGY_DMG, player);
                }
            }
            else
            {
                if (isDischarged)
                {
                    isDischarged = false;

                    me->AddAura(SPELL_CONDUIT_LEVEL_AURA, me);

                    me->RemoveAura(SPELL_DISCHARGED_ENERGY);

                    Map::PlayerList const &PlayerList = instance->instance->GetPlayers();
                    if (!PlayerList.isEmpty())
                        for (Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                            if (Player* player = i->GetSource())
                                player->RemoveAura(SPELL_DISCHARGED_ENERGY_DMG);
                }
            }
        }

        void ActivateChargingStation(bool activate)
        {
            if (GameObject* pGo = instance->instance->GetGameObject(instance->GetGuidData(DATA_CHARGING_STATION)))
            {
                pGo->SetGoState(activate ? GO_STATE_ACTIVE : GO_STATE_READY);
            }
        }

        void ActivateAllFloors(bool activate)
        {
            if (GameObject* pFloor = instance->instance->GetGameObject(instance->GetGuidData(DATA_FLOOR_NORTH)))
            {
                pFloor->SetGoState(activate ? GO_STATE_ACTIVE : GO_STATE_READY);
            }

            if (GameObject* pFloor = instance->instance->GetGameObject(instance->GetGuidData(DATA_FLOOR_EAST)))
            {
                pFloor->SetGoState(activate ? GO_STATE_ACTIVE : GO_STATE_READY);
            }

            if (GameObject* pFloor = instance->instance->GetGameObject(instance->GetGuidData(DATA_FLOOR_WEST)))
            {
                pFloor->SetGoState(activate ? GO_STATE_ACTIVE : GO_STATE_READY);
            }

            if (GameObject* pFloor = instance->instance->GetGameObject(instance->GetGuidData(DATA_FLOOR_SOUTH)))
            {
                pFloor->SetGoState(activate ? GO_STATE_ACTIVE : GO_STATE_READY);
            }
        }

        void ActivateRandomWindow()
        {
            uint8 windSide = urand(0, 3);
            uint32 spellId = 0;
            uint64 windowGuid = 0;
            switch (windSide)
            {
            case 0:
                spellId = SPELL_VIOLENT_GALE_WINDS_AREATRIGGER_1;
                windowGuid = instance->GetData64(DATA_WINDOW_NORTH_WEST);
                break;
            case 1:
                spellId = SPELL_VIOLENT_GALE_WINDS_AREATRIGGER_2;
                windowGuid = instance->GetData64(DATA_WINDOW_SOUTH_WEST);
                break;
            case 2:
                spellId = SPELL_VIOLENT_GALE_WINDS_AREATRIGGER_3;
                windowGuid = instance->GetData64(DATA_WINDOW_NORTH_EAST);
                break;
            case 3:
                spellId = SPELL_VIOLENT_GALE_WINDS_AREATRIGGER_4;
                windowGuid = instance->GetData64(DATA_WINDOW_SOUTH_EAST);
                break;
            }

            if (spellId && windowGuid)
            {

                DoCast(me, spellId, true);
            }
        }

        void CloseAllWindows()
        {
            if (GameObject* pGo = instance->instance->GetGameObject(instance->GetGuidData(DATA_WINDOW_NORTH_WEST)))
                pGo->SetGoState(GO_STATE_READY);

            if (GameObject* pGo = instance->instance->GetGameObject(instance->GetGuidData(DATA_WINDOW_SOUTH_WEST)))
                pGo->SetGoState(GO_STATE_READY);

            if (GameObject* pGo = instance->instance->GetGameObject(instance->GetGuidData(DATA_WINDOW_NORTH_EAST)))
                pGo->SetGoState(GO_STATE_READY);

            if (GameObject* pGo = instance->instance->GetGameObject(instance->GetGuidData(DATA_WINDOW_SOUTH_EAST)))
                pGo->SetGoState(GO_STATE_READY);
        }

        void UpdateIntro(const uint32 diff)
        {
            if (IsIntroActive)
            {
                if (introTimer <= diff)
                {
                    introTimer = 20000;

                    uint32 spellId = 0;
                    switch (urand(0, 3))
                    {
                    case 0: spellId = SPELL_COSMETIC_TELEPORT_E; break;
                    case 1: spellId = SPELL_COSMETIC_TELEPORT_W; break;
                    case 2: spellId = SPELL_COSMETIC_TELEPORT_S; break;
                    case 3: spellId = SPELL_COSMETIC_TELEPORT_N; break;
                    }

                    if (spellId)
                    {
                        DoCast(me, spellId);
                    }
                }
                else
                {
                    introTimer -= diff;
                }
            }
        }

        bool ChangePhase()
        {
            if (phase == PHASE_NONE && me->GetHealthPct() <= 65.0f)
            {
                phase = PHASE_2A;

                me->SetReactState(REACT_PASSIVE);
                me->AttackStop();

                ActivateDischargedEnergy(false);

                events.CancelEvent(EVENT_DISCHARGED_ENERGY);
                events.CancelEvent(EVENT_DECAPITATE);
                events.CancelEvent(EVENT_CRUSHING_THUNDER);
                events.CancelEvent(EVENT_THUNDERSTRUCK);

                Talk(SAY_PHASE_2A);

                // hack to knocking back players after dest teleport position but not source position
                me->SetPosition(centerPos);
                DoCast(me, SPELL_DISPLACE);

                events.ScheduleEvent(EVENT_CHARGING_STATION_ACTIVATE, 1000);

                return true;
            }
            else if (phase == PHASE_2B && me->GetHealthPct() <= 30.0f)
            {
                phase = PHASE_3A;

                me->SetReactState(REACT_PASSIVE);
                me->AttackStop();

                ActivateDischargedEnergy(false);

                events.CancelEvent(EVENT_DISCHARGED_ENERGY);
                events.CancelEvent(EVENT_FUSION_SLASH);
                events.CancelEvent(EVENT_SUMMON_BALL_LIGHTNING);
                events.CancelEvent(EVENT_LIGHTNING_WHIP);

                Talk(SAY_PHASE_3A);

                // hack to knocking back players after dest teleport position but not source position
                me->SetPosition(centerPos);
                DoCast(me, SPELL_DISPLACE);

                events.ScheduleEvent(EVENT_CHARGING_STATION_ACTIVATE, 1000);

                return true;
            }

            return false;
        }

    private:

    };
};

class npc_lei_shen_condiut : public CreatureScript
{
public:
    npc_lei_shen_condiut() : CreatureScript("npc_lei_shen_condiut") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_lei_shen_condiutAI(creature);
    }

    struct npc_lei_shen_condiutAI : public Scripted_NoMovementAI
    {
        npc_lei_shen_condiutAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            me->setActive(true);

            me->SetReactState(REACT_PASSIVE);
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC));

            IsActive = false;
            IsOvercharged = false;

            conduitLevel = 1;
        }

        void Reset()
        {
            me->AddAura(SPELL_ZERO_POWER, me);

            me->SetPowerType(POWER_ENERGY);
            me->SetMaxPower(POWER_ENERGY, 100);
            me->SetPower(POWER_ENERGY, 0);
        }

        void DoAction(const int32 action)
        {
            if (action == ACTIVATE_COUDUIT_TARGET_CHECK && !IsOvercharged)
            {
                AddAltPowerAuras();

                events.ScheduleEvent(EVENT_CHECK_CONDUIT_TARGET, 1000);
            }
            else if (action == DEACTIVATE_CONDUIT_TARGET_CHECK)
            {
                me->CastStop();

                events.CancelEvent(EVENT_CHECK_CONDUIT_TARGET);
                events.CancelEvent(EVENT_UPDATE_ENERGY);
                ActivateFloor(false);
            }
            else if (action == INCREASE_CONDUIT_LEVEL)
            {
                IncreaseConduitLevel();
            }
            else if (action == ACTION_OVERCHARGE_CONDUIT)
            {
                IsOvercharged = true;

                me->CastStop();

                events.CancelEvent(EVENT_CHECK_CONDUIT_TARGET);
                events.CancelEvent(EVENT_UPDATE_ENERGY);

                ActivateFloor(true);
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (IsOvercharged)
                return;

            events.Update(diff);

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_CHECK_CONDUIT_TARGET:
                    if (Creature* pLeiShen = me->FindNearestCreature(NPC_LEI_SHEN, 45.0f))
                    {
                        if (!IsActive)
                        {
                            IsActive = true;

                            ActivateFloor(true);

                            DoCast(pLeiShen, SPELL_ELECTRICAL_CONDUIT_BEAM);

                            events.ScheduleEvent(EVENT_UPDATE_ENERGY, 1000);
                        }
                    }
                    else
                    {
                        me->CastStop();

                        IsActive = false;

                        ActivateFloor(false);

                        events.CancelEvent(EVENT_UPDATE_ENERGY);
                    }
                    events.ScheduleEvent(EVENT_CHECK_CONDUIT_TARGET, 1000);
                    break;
                case EVENT_UPDATE_ENERGY:
                {
                    if (IsActive && conduitLevel < 3)
                    {
                        int32 currentEnergy = me->GetPower(POWER_ENERGY);
                        int32 maxEnergy = me->GetMaxPower(POWER_ENERGY);

                        if (currentEnergy >= maxEnergy)
                        {
                            currentEnergy = 0;

                            IncreaseConduitLevel();
                        }
                        else
                        {
                            currentEnergy++;
                        }

                        me->SetPower(POWER_ENERGY, currentEnergy);

                        if (InstanceScript* pInstance = me->GetInstanceScript())
                            pInstance->DoSetAlternatePowerOnPlayers(currentEnergy);

                        events.ScheduleEvent(EVENT_UPDATE_ENERGY, 1000);
                    }
                    break;
                }
                }
            }
        }

    private:

        bool IsActive;
        bool IsOvercharged;
        uint32 conduitLevel;

    private:

        void AddAltPowerAuras()
        {
            uint32 spellId = 0;
            switch (me->GetEntry())
            {
            case NPC_STATIC_SHOCK_CONDUIT:
                spellId = SPELL_CONDUIT_LEVEL_STATIC_SHOCK;
                break;
            case NPC_BOUNCING_BOLT_CONDUIT:
                spellId = SPELL_CONDUIT_LEVEL_BOUNCING_BOLT;
                break;
            case NPC_OVERCHARGE_CONDUIT:
                spellId = SPELL_CONDUIT_LEVEL_OVERCHARGE;
                break;
            case NPC_DIFFUSION_CHAIN_CONDUIT:
                spellId = SPELL_CONDUIT_LEVEL_DIFFUSION_CHAIN;
                break;
            }

            if (spellId)
            {
                me->AddAura(spellId, me);
            }
        }

        void ActivateFloor(bool activate)
        {
            InstanceScript* pInstance = me->GetInstanceScript();
            if (!pInstance)
                return;

            GameObject* pFloor = NULL;
            switch (me->GetEntry())
            {
            case NPC_STATIC_SHOCK_CONDUIT:
                pFloor = pInstance->instance->GetGameObject(pInstance->GetGuidData(DATA_FLOOR_NORTH));
                break;
            case NPC_BOUNCING_BOLT_CONDUIT:
                pFloor = pInstance->instance->GetGameObject(pInstance->GetGuidData(DATA_FLOOR_WEST));
                break;
            case NPC_OVERCHARGE_CONDUIT:
                pFloor = pInstance->instance->GetGameObject(pInstance->GetGuidData(DATA_FLOOR_SOUTH));
                break;
            case NPC_DIFFUSION_CHAIN_CONDUIT:
                pFloor = pInstance->instance->GetGameObject(pInstance->GetGuidData(DATA_FLOOR_EAST));
                break;
            }

            if (pFloor)
            {
                pFloor->SetGoState(activate ? GO_STATE_ACTIVE : GO_STATE_READY);
            }
        }

        void IncreaseConduitLevel()
        {
            if (conduitLevel < 3)
            {
                conduitLevel++;
                me->SetPower(POWER_ALTERNATE_POWER, conduitLevel);
            }
        }

    };
};

class npc_lei_shen_thunderous_throw : public CreatureScript
{
public:
    npc_lei_shen_thunderous_throw() : CreatureScript("npc_lei_shen_thunderous_throw") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_lei_shen_thunderous_throwAI(creature);
    }

    struct npc_lei_shen_thunderous_throwAI : public Scripted_NoMovementAI
    {
        npc_lei_shen_thunderous_throwAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC));
        }

        void Reset()
        {
            me->AddAura(SPELL_BALL_TARGET, me);
        }

        void IsSummonedBy(Unit* owner)
        {
            if (InstanceScript* pInstance = me->GetInstanceScript())
            {
                if (Creature* pCreature = pInstance->instance->GetCreature(pInstance->GetGuidData(DATA_LEI_SHEN)))
                {
                    pCreature->CastSpell(me, SPELL_THUNDERSTRUCK_MISSILE);
                }
            }
        }
    };
};

class npc_lei_shen_ball_lightning : public CreatureScript
{
public:
    npc_lei_shen_ball_lightning() : CreatureScript("npc_lei_shen_ball_lightning") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_lei_shen_ball_lightningAI(creature);
    }

    struct npc_lei_shen_ball_lightningAI : public ScriptedAI
    {
        npc_lei_shen_ball_lightningAI(Creature* creature) : ScriptedAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);
        }

        void Reset()
        {
            me->AddAura(SPELL_BALL_LIGHTNING_VISUAL, me);
            events.Reset();

            targetGuid = 0;
        }

        void IsSummonedBy(Unit* owner)
        {
            events.ScheduleEvent(EVENT_BALL_LIGHTNING_JUMP, 4500);
        }

        void JustDied(Unit* killer)
        {
            me->DespawnOrUnsummon(1000);
        }

        void UpdateAI(const uint32 diff)
        {
            events.Update(diff);

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_BALL_LIGHTNING_JUMP:
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true))
                    {
                        DoCast(target, SPELL_BALL_LIGHTNING_JUMP, true);
                    }
                    events.ScheduleEvent(EVENT_BALL_LIGHTNING_JUMP, 3000);
                    break;
                }
            }
        }

    private:

        uint64 targetGuid;
    };
};

class npc_lei_shen_lightning_whip : public CreatureScript
{
public:
    npc_lei_shen_lightning_whip() : CreatureScript("npc_lei_shen_lightning_whip") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_lei_shen_lightning_whipAI(creature);
    }

    struct npc_lei_shen_lightning_whipAI : public Scripted_NoMovementAI
    {
        npc_lei_shen_lightning_whipAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC));
        }

        void IsSummonedBy(Unit* owner)
        {
            if (InstanceScript* pInstance = me->GetInstanceScript())
            {
                if (Creature* pCreature = pInstance->instance->GetCreature(pInstance->GetGuidData(DATA_LEI_SHEN)))
                {
                    pCreature->CastSpell(me, SPELL_LIGHTNING_WHIP_DMG);
                }
            }
        }

    private:

        uint64 targetGuid;
    };
};

class spell_lei_shen_electrical_conduit_beam : public SpellScriptLoader
{
public:
    spell_lei_shen_electrical_conduit_beam() : SpellScriptLoader("spell_lei_shen_electrical_conduit_beam") { }

    class spell_lei_shen_electrical_conduit_beam_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_lei_shen_electrical_conduit_beam_AuraScript);

        uint32 GetDummySpellByCasterEntry(uint32 entry)
        {
            switch (entry)
            {
            case NPC_STATIC_SHOCK_CONDUIT: return SPELL_STATIC_SHOCK_DUMMY;
            case NPC_BOUNCING_BOLT_CONDUIT: return SPELL_BOUNCING_BOLT_DUMMY;
            case NPC_OVERCHARGE_CONDUIT: return SPELL_OVERCHARGE_DUMMY;
            case NPC_DIFFUSION_CHAIN_CONDUIT: return SPELL_DIFFUSION_CHAIN_DUMMY;
            }

            return 0;
        }

        uint32 GetDataIdByCasterEntry(uint32 entry)
        {
            switch (entry)
            {
            case NPC_STATIC_SHOCK_CONDUIT: return DATA_STATIC_SHOCK_ENABLED;
            case NPC_BOUNCING_BOLT_CONDUIT: return DATA_BOUNCING_BOLT_ENABLED;
            case NPC_OVERCHARGE_CONDUIT: return DATA_OVERCHARGE_ENABLED;
            case NPC_DIFFUSION_CHAIN_CONDUIT: return DATA_DIFFUSION_CHAIN_ENABLED;
            }

            return 0;
        }

        void HandleApply(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
        {
            if (!GetCaster() || !GetUnitOwner())
                return;

            if (GetCaster()->GetGUID() == GetUnitOwner()->GetGUID())
                return;

            if (uint32 spellId = GetDummySpellByCasterEntry(GetCaster()->GetEntry()))
                GetUnitOwner()->AddAura(spellId, GetUnitOwner());

            if (Creature* pCreature = GetUnitOwner()->ToCreature())
            {
                pCreature->AI()->SetData(GetDataIdByCasterEntry(GetCaster()->GetEntry()), 1);
            }
        }

        void HandleRemove(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
        {
            if (!GetCaster() || !GetUnitOwner())
                return;

            if (GetCaster()->GetGUID() == GetUnitOwner()->GetGUID())
                return;

            if (uint32 spellId = GetDummySpellByCasterEntry(GetCaster()->GetEntry()))
                GetUnitOwner()->RemoveAura(spellId);

            if (Creature* pCreature = GetUnitOwner()->ToCreature())
            {
                pCreature->AI()->SetData(GetDataIdByCasterEntry(GetCaster()->GetEntry()), 0);
            }
        }

        void Register()
        {
            AfterEffectApply += AuraEffectApplyFn(spell_lei_shen_electrical_conduit_beam_AuraScript::HandleApply, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY, AURA_EFFECT_HANDLE_REAL);
            AfterEffectRemove += AuraEffectRemoveFn(spell_lei_shen_electrical_conduit_beam_AuraScript::HandleRemove, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_lei_shen_electrical_conduit_beam_AuraScript();
    }
};

class spell_lei_shen_static_shock_aoe : public SpellScriptLoader
{
public:
    spell_lei_shen_static_shock_aoe() : SpellScriptLoader("spell_lei_shen_static_shock_aoe") { }

    class spell_lei_shen_static_shock_aoe_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_lei_shen_static_shock_aoe_SpellScript);

        void FillTargets(std::list<WorldObject*>& targets)
        {
            if (!GetCaster())
                return;

            uint32 maxTargets = 1;
            if (Creature* pConduit = GetCaster()->FindNearestCreature(NPC_STATIC_SHOCK_CONDUIT, 200.0f))
                maxTargets = pConduit->AI()->GetData(DATA_COUNDUIT_LEVEL);

            if (targets.size() > maxTargets)
            {
                if (Unit* victim = GetCaster()->GetVictim())
                {
                    targets.remove(GetCaster()->GetVictim());
                }
            }

            Trinity::Containers::RandomResize(targets, maxTargets);
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_lei_shen_static_shock_aoe_SpellScript::FillTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_lei_shen_static_shock_aoe_SpellScript();
    }
};

class spell_lei_shen_decapitate_script : public SpellScriptLoader
{
public:
    spell_lei_shen_decapitate_script() : SpellScriptLoader("spell_lei_shen_decapitate_script") { }

    class spell_lei_shen_decapitate_script_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_lei_shen_decapitate_script_SpellScript);

        void HandleScript(SpellEffIndex effIndex)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            GetHitUnit()->CastSpell(GetCaster(), SPELL_DECAPITATE_MISSILE, true);
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_lei_shen_decapitate_script_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_lei_shen_decapitate_script_SpellScript();
    }
};

class spell_lei_shen_crushing_thunder_aura : public SpellScriptLoader
{
public:
    spell_lei_shen_crushing_thunder_aura() : SpellScriptLoader("spell_lei_shen_crushing_thunder_aura") { }

    class spell_lei_shen_crushing_thunder_aura_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_lei_shen_crushing_thunder_aura_AuraScript);

        void HandlePeriodic(AuraEffect const* aurEff)
        {
            if (!GetUnitOwner())
                return;

            if (Creature* pCreature = GetUnitOwner()->ToCreature())
            {
                if (Unit* target = pCreature->AI()->SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true))
                {
                    pCreature->CastSpell(target, SPELL_CRUSHING_THUNDER_DMG, true);
                }
            }
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_lei_shen_crushing_thunder_aura_AuraScript::HandlePeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_lei_shen_crushing_thunder_aura_AuraScript();
    }
};

class spell_lei_shen_decapitate_dmg : public SpellScriptLoader
{
public:
    spell_lei_shen_decapitate_dmg() : SpellScriptLoader("spell_lei_shen_decapitate_dmg") { }

    class spell_lei_shen_decapitate_dmg_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_lei_shen_decapitate_dmg_SpellScript);

        void HandleDamage(SpellEffIndex effIndex)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            int32 minDamage = 100000;
            int32 maxDamage = GetHitDamage();
            float distance = GetCaster()->GetDistance(GetHitUnit());

            int32 calcDamage = maxDamage - (distance * 150000);

            SetHitDamage(std::max(calcDamage, minDamage));
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_lei_shen_decapitate_dmg_SpellScript::HandleDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_lei_shen_decapitate_dmg_SpellScript();
    }
};

class spell_lei_shen_diffusion_chain_aoe : public SpellScriptLoader
{
public:
    spell_lei_shen_diffusion_chain_aoe() : SpellScriptLoader("spell_lei_shen_diffusion_chain_aoe") { }

    class spell_lei_shen_diffusion_chain_aoe_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_lei_shen_diffusion_chain_aoe_SpellScript);

        void FillTargets(std::list<WorldObject*>& targets)
        {
            if (!GetCaster())
                return;

            uint32 maxTargets = 1;
            if (Creature* pConduit = GetCaster()->FindNearestCreature(NPC_DIFFUSION_CHAIN_CONDUIT, 200.0f))
                maxTargets = pConduit->AI()->GetData(DATA_COUNDUIT_LEVEL);

            if (targets.size() > maxTargets)
            {
                if (Unit* victim = GetCaster()->GetVictim())
                {
                    targets.remove(GetCaster()->GetVictim());
                }
            }

            Trinity::Containers::RandomResize(targets, maxTargets);
        }

        void HandleDummy(SpellEffIndex effIndex)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            GetCaster()->CastSpell(GetHitUnit(), SPELL_DIFFUSION_CHAIN_DMG, true);
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_lei_shen_diffusion_chain_aoe_SpellScript::FillTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
            OnEffectHitTarget += SpellEffectFn(spell_lei_shen_diffusion_chain_aoe_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_lei_shen_diffusion_chain_aoe_SpellScript();
    }
};

class spell_lei_shen_overcharge_aoe : public SpellScriptLoader
{
public:
    spell_lei_shen_overcharge_aoe() : SpellScriptLoader("spell_lei_shen_overcharge_aoe") { }

    class spell_lei_shen_overcharge_aoe_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_lei_shen_overcharge_aoe_SpellScript);

        void FillTargets(std::list<WorldObject*>& targets)
        {
            if (!GetCaster())
                return;

            uint32 maxTargets = 1;
            if (Creature* pConduit = GetCaster()->FindNearestCreature(NPC_OVERCHARGE_CONDUIT, 200.0f))
                maxTargets = pConduit->AI()->GetData(DATA_COUNDUIT_LEVEL);

            if (targets.size() > maxTargets)
            {
                if (Unit* victim = GetCaster()->GetVictim())
                {
                    targets.remove(GetCaster()->GetVictim());
                }
            }

            Trinity::Containers::RandomResize(targets, maxTargets);
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_lei_shen_overcharge_aoe_SpellScript::FillTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
        }
    };

    class spell_lei_shen_overcharge_aoe_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_lei_shen_overcharge_aoe_AuraScript);

        void HandleRemove(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
        {
            if (!GetUnitOwner())
                return;

            GetUnitOwner()->CastSpell(GetUnitOwner(), SPELL_ELECTRIC_DISCHARGE_VISUAL, true);
        }

        void Register()
        {
            AfterEffectRemove += AuraEffectRemoveFn(spell_lei_shen_overcharge_aoe_AuraScript::HandleRemove, EFFECT_0, SPELL_AURA_SCREEN_EFFECT, AURA_EFFECT_HANDLE_REAL);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_lei_shen_overcharge_aoe_SpellScript();
    }

    AuraScript* GetAuraScript() const
    {
        return new spell_lei_shen_overcharge_aoe_AuraScript();
    }
};

class spell_lei_shen_diffusion_chain_dmg : public SpellScriptLoader
{
public:
    spell_lei_shen_diffusion_chain_dmg() : SpellScriptLoader("spell_lei_shen_diffusion_chain_dmg") { }

    class spell_lei_shen_diffusion_chain_dmg_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_lei_shen_diffusion_chain_dmg_SpellScript);

        void HandleDamage(SpellEffIndex effIndex)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            if (Creature* pCreature = GetCaster()->FindNearestCreature(NPC_DIFFUSION_CHAIN_CONDUIT, 200.0f))
            {
                uint32 level = pCreature->AI()->GetData(DATA_COUNDUIT_LEVEL);
                uint32 energy = pCreature->GetPower(POWER_ENERGY);

                int32 damage = GetHitDamage();

                SetHitDamage(damage * level + AddPct(damage, energy));

                uint32 spellId = 0;
                switch (level)
                {
                case 1: spellId = SPELL_DIFFUSION_CHAIN_SUMMON_1; break;
                case 2: spellId = SPELL_DIFFUSION_CHAIN_SUMMON_2; break;
                case 3: spellId = SPELL_DIFFUSION_CHAIN_SUMMON_3; break;
                }

                if (spellId)
                {
                    GetCaster()->CastSpell(GetHitUnit(), spellId, true);
                }
            }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_lei_shen_diffusion_chain_dmg_SpellScript::HandleDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_lei_shen_diffusion_chain_dmg_SpellScript();
    }
};

class spell_lei_shen_thunderstruck_aoe : public SpellScriptLoader
{
public:
    spell_lei_shen_thunderstruck_aoe() : SpellScriptLoader("spell_lei_shen_thunderstruck_aoe") { }

    class spell_lei_shen_thunderstruck_aoe_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_lei_shen_thunderstruck_aoe_SpellScript);

        void FillTargets(std::list<WorldObject*>& targets)
        {
            if (!GetCaster())
                return;

            if (Creature* pCreature = GetCaster()->ToCreature())
            {
                Unit* target = pCreature->AI()->SelectTarget(SELECT_TARGET_RANDOM, 0, -15.0f, true);
                if (!target)
                    target = pCreature->AI()->SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true);
                if (target)
                {
                    targets.clear();
                    targets.push_back(target);
                }
            }
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_lei_shen_thunderstruck_aoe_SpellScript::FillTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_lei_shen_thunderstruck_aoe_SpellScript();
    }
};

class spell_lei_shen_supercharge_conduits_script : public SpellScriptLoader
{
public:
    spell_lei_shen_supercharge_conduits_script() : SpellScriptLoader("spell_lei_shen_supercharge_conduits_script") { }

    class spell_lei_shen_supercharge_conduits_script_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_lei_shen_supercharge_conduits_script_SpellScript);

        void HandleScript(SpellEffIndex effIndex)
        {
            if (!GetCaster())
                return;

            if (Creature* pCreature = GetCaster()->ToCreature())
            {
                pCreature->AI()->DoAction(ACTION_SUPERCHARGE_CONDUITS);
            }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_lei_shen_supercharge_conduits_script_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_lei_shen_supercharge_conduits_script_SpellScript();
    }
};

class spell_lei_shen_ball_lightning_aoe : public SpellScriptLoader
{
public:
    spell_lei_shen_ball_lightning_aoe() : SpellScriptLoader("spell_lei_shen_ball_lightning_aoe") { }

    class spell_lei_shen_ball_lightning_aoe_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_lei_shen_ball_lightning_aoe_SpellScript);

        void FillTargets(std::list<WorldObject*>& targets)
        {
            if (!GetCaster())
                return;

            Trinity::Containers::RandomResize(targets, 3);
        }

        void HandleDummy(SpellEffIndex effIndex)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            GetCaster()->CastSpell(GetHitUnit(), SPELL_SUMMON_BALL_LIGHTNING, true);
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_lei_shen_ball_lightning_aoe_SpellScript::FillTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
            OnEffectHitTarget += SpellEffectFn(spell_lei_shen_ball_lightning_aoe_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_lei_shen_ball_lightning_aoe_SpellScript();
    }
};

class spell_lei_shen_violent_gale_winds_script : public SpellScriptLoader
{
public:
    spell_lei_shen_violent_gale_winds_script() : SpellScriptLoader("spell_lei_shen_violent_gale_winds_script") { }

    class spell_lei_shen_violent_gale_winds_script_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_lei_shen_violent_gale_winds_script_SpellScript);

        void HandleScript(SpellEffIndex effIndex)
        {
            if (!GetCaster())
                return;

            if (Creature* pCreature = GetCaster()->ToCreature())
            {
                pCreature->AI()->DoAction(ACTION_VIOLENT_GALE_WINDS);
            }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_lei_shen_violent_gale_winds_script_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_lei_shen_violent_gale_winds_script_SpellScript();
    }
};

class spell_lei_shen_static_shock_dmg : public SpellScriptLoader
{
public:
    spell_lei_shen_static_shock_dmg() : SpellScriptLoader("spell_lei_shen_static_shock_dmg") { }

    class spell_lei_shen_static_shock_dmg_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_lei_shen_static_shock_dmg_SpellScript);

        void HandleDamage(SpellEffIndex effIndex)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            if (Creature* pConduit = GetCaster()->FindNearestCreature(NPC_STATIC_SHOCK_CONDUIT, 100.0f))
            {
                uint32 level = pConduit->AI()->GetData(DATA_COUNDUIT_LEVEL);
                uint32 energy = pConduit->GetPower(POWER_ENERGY);

                int32 damage = GetHitDamage();

                SetHitDamage(damage * level + AddPct(damage, energy));
            }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_lei_shen_static_shock_dmg_SpellScript::HandleDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_lei_shen_static_shock_dmg_SpellScript();
    }
};

class spell_lei_shen_overcharge_dmg : public SpellScriptLoader
{
public:
    spell_lei_shen_overcharge_dmg() : SpellScriptLoader("spell_lei_shen_overcharge_dmg") { }

    class spell_lei_shen_overcharge_dmg_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_lei_shen_overcharge_dmg_SpellScript);

        void HandleDamage(SpellEffIndex effIndex)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            if (Creature* pConduit = GetCaster()->FindNearestCreature(NPC_OVERCHARGE_CONDUIT, 100))
            {
                uint32 level = pConduit->AI()->GetData(DATA_COUNDUIT_LEVEL);
                uint32 energy = pConduit->GetPower(POWER_ENERGY);

                int32 damage = GetHitDamage();

                SetHitDamage(damage * level + AddPct(damage, energy));
            }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_lei_shen_overcharge_dmg_SpellScript::HandleDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_lei_shen_overcharge_dmg_SpellScript();
    }
};

class spell_area_lei_shen_crushing_thunder : public AreaTriggerScript
{
public:
    spell_area_lei_shen_crushing_thunder() : AreaTriggerScript("spell_area_lei_shen_crushing_thunder") {}


    bool OnRemoveTarget(AreaTrigger* trigger, Unit* target)
    {
        target->RemoveAura(SPELL_CRUSHING_THUNDER_PERIODIC_DMG);

        return true;
    }
};


class spell_area_lei_shen_violent_gale_winds : public AreaTriggerScript
{
public:
    spell_area_lei_shen_violent_gale_winds() : AreaTriggerScript("spell_area_lei_shen_violent_gale_winds") {}

  
    bool OnRemoveTarget(AreaTrigger* trigger, Unit* target)
    {
        target->RemoveAura(SPELL_VIOLENT_GALE_WINDS_DMG);

        return true;
    }
};

void AddSC_boss_lei_shen()
{
    new boss_lei_shen();                            // 68397
    new npc_lei_shen_condiut();                     // 68398 68696 68697 68698
    new npc_lei_shen_thunderous_throw();            // 68574
    new npc_lei_shen_ball_lightning();              // 69232
    new npc_lei_shen_lightning_whip();              // 69385

    new spell_lei_shen_electrical_conduit_beam();   // 134803
    new spell_lei_shen_static_shock_aoe();          // 135695
    new spell_lei_shen_decapitate_script();         // 134919
    new spell_lei_shen_crushing_thunder_aura();     // 135143
    new spell_lei_shen_decapitate_dmg();            // 134916
    new spell_lei_shen_diffusion_chain_aoe();       // 135990
    new spell_lei_shen_overcharge_aoe();            // 136295
    new spell_lei_shen_diffusion_chain_dmg();       // 135991
    new spell_lei_shen_thunderstruck_aoe();         // 135091
    new spell_lei_shen_supercharge_conduits_script();   // 137146
    new spell_lei_shen_ball_lightning_aoe();        // 136544
    new spell_lei_shen_violent_gale_winds_script(); // 136869
    new spell_lei_shen_static_shock_dmg();          // 135703
    new spell_lei_shen_overcharge_dmg();            // 136326

    new spell_area_lei_shen_crushing_thunder();     // 135150
    new spell_area_lei_shen_violent_gale_winds();   // 136867 136876 136877 136879
}
