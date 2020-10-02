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

 // TODO: correct power display
 // There are two power displays in dbc (215 anima and 216 vita)
 // I think that those are correct, but there is no vehicle id for those powers
 // So I use 2888 vehicle id (power display 219 anima) until I find the correct way

enum ScriptedTexts
{
    SAY_AGGRO = 0,
    SAY_BERSERK = 1,
    SAY_INTRO_1 = 2,
    SAY_INTRO_2 = 3,
    SAY_INTRO_3 = 4,
    SAY_KILL = 5,
    SAY_PHASE_2 = 6,
    SAY_MURDEROUS = 7,
    SAY_CREATION = 8,
    SAY_VITA = 9,
    SAY_ANIMA = 10,
    SAY_END = 11,
};

enum Spells
{
    SPELL_ZERO_MANA = 96301,

    SPELL_MATERIALS_OF_CREATION = 138321,

    SPELL_SUMMON_ESSENSE_OF_VITA = 138324,
    SPELL_DRAW_VITA = 138328,
    SPELL_SUMMON_CRACKLING_STALKER = 138339,
    SPELL_IMBUED_WITH_VITA = 138332,
    SPELL_UNLEASHED_VITA = 138330,
    SPELL_FATAL_STRIKE = 138334,
    SPELL_UNSTABLE_VITA = 138297,
    SPELL_UNSTABLE_VITA_ALLY = 138308,
    SPELL_UNSTABLE_VITA_DMG = 138370,
    SPELL_UNSTABLE_VITA_DUMMY = 138371,
    SPELL_VITA_SENSITIVITY = 138372,

    SPELL_SUMMON_ESSENSE_OF_ANIMA = 138323,
    SPELL_DRAW_ANIMA = 138327,
    SPELL_SUMMON_SANGUINE_HORROR = 138338,
    SPELL_IMBUED_WITH_ANIMA = 138331,
    SPELL_UNLEASHED_ANIMA = 138329,
    SPELL_MURDEROUS_STRIKE = 138333,
    SPELL_UNSTABLE_ANIMA = 138288,
    SPELL_UNSTABLE_ANIMA_DUMMY = 138294,
    SPELL_UNSTABLE_ANIMA_DMG = 138295,
    SPELL_ANIMA_SENSITIVITY = 139318,

    SPELL_LINGERING_ENERGIES = 138450,

    SPELL_CALL_ESSENSE = 139040,

    SPELL_RUIN_BOLT = 139087,
    SPELL_RUIN = 139073,
    SPELL_RUIN_DMG = 139074,

    // Crackling Stalker
    SPELL_CAUTERIZING_FLARE = 138337,
    SPELL_CRACKLE = 138340,

    // Sanguine Horror
    SPELL_SANGUINE_VOLLEY = 138341,

    // Corrupted Vita
    SPELL_CORRUPTED_VITA = 139072,
    SPELL_CORRUPTED_VITA_DMG = 139078,

    // Corrupted Anima
    SPELL_TWISTED_ANIMA = 139075,
    SPELL_CORRUPTED_ANIMA = 139071,
};

enum Adds
{
    NPC_ESSENSE_OF_VITA = 69870,
    NPC_CRACKLING_STALKER = 69872,
    NPC_ESSENSE_OF_ANIMA = 69869,
    NPC_SANGUINE_HORROR = 69871,
};

enum Events
{
    EVENT_CREATION = 1,
    EVENT_ESSENSE_MOVE,
    EVENT_ESSENSE_UPDATE,
    EVENT_ACTIVATE_VITA,
    EVENT_ACTIVATE_ANIMA,
    EVENT_UNSTABLE_VITA,
    EVENT_CRACKLING_STALKER,
    EVENT_UNSTABLE_ANIMA,
    EVENT_SANGUINE_HORROR,
    EVENT_MOVE,
    EVENT_CRACKLE,
    EVENT_SANGUINE_VOLLEY,
    EVENT_LAST_PHASE,
    EVENT_RUIN_BOLT,
    EVENT_CALL_ESSENSE,
};

enum Actions
{
    ACTION_CREATION = 1,
    ACTION_VITA,
    ACTION_ANIMA,
    ACTION_CORRUPTED_VITA,
    ACTION_CORRUPTED_ANIMA,
    ACTION_CORRUPTED_ESSENSE_MOVE,
};

enum Datas
{
    DATA_CORRUPTED_ESSENSE_ACTIVE = 1,
};

enum Phases
{
    PHASE_NONE,
    PHASE_VITA,
    PHASE_ANIMA,
    PHASE_LAST,
};

const Position spherePos[2] =
{
    {5448.32f, 4593.14f, -2.46f, 1.56f},
    {5447.50f, 4722.57f, -2.46f, 4.71f}
};

const Position centerPos = { 5448.50f, 4655.93f, -2.46f, 0.0f };

class boss_ra_den : public CreatureScript
{
public:
    boss_ra_den() : CreatureScript("boss_ra_den") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_ra_denAI(creature);
    }

    struct boss_ra_denAI : public BossAI
    {
        boss_ra_denAI(Creature* creature) : BossAI(creature, DATA_RA_DEN)
        {
            me->setActive(true);

            isIntroDone = false;
            introStep = 0;
            introTimer = 1000;

            talkCreationDone = false;
            talkVitaDone = false;
            talkAnimaDone = false;
            talkMurderousStrike = false;

            phase = PHASE_NONE;

            isCompleted = false;
        }

        void Reset()
        {
            _Reset();

            InitPowers();

            me->SetReactState(REACT_AGGRESSIVE);

            talkCreationDone = false;
            talkVitaDone = false;
            talkAnimaDone = false;
            talkMurderousStrike = false;

            phase = PHASE_NONE;

            isCompleted = false;
        }

        void MoveInLineOfSight(Unit* who)
        {
            if (!isIntroDone)
            {
                if (who->GetTypeId() == TYPEID_PLAYER && me->GetDistance(who) <= 100.0f)
                {
                    isIntroDone = true;
                    introStep = 1;
                    introTimer = 1000;
                }
            }
        }

        void EnterCombat(Unit* attacker)
        {
            Talk(SAY_AGGRO);

            events.ScheduleEvent(EVENT_CREATION, 11000);

            instance->SetBossState(DATA_RA_DEN, IN_PROGRESS);
            DoZoneInCombat();
        }

        void EnterEvadeMode(EvadeReason why) override
        {
            uint32 radenState = instance->GetBossState(DATA_RA_DEN);
            uint32 leishenState = instance->GetBossState(DATA_LEI_SHEN);

            if (radenState == IN_PROGRESS && leishenState == DONE)
            {
                uint32 radenCount = instance->GetData(DATA_RA_DEN);
                instance->SetData(DATA_RA_DEN, radenCount + 1);
            }

            BossAI::EnterEvadeMode();
        }

        void KilledUnit(Unit* who)
        {
            if (who && who->GetTypeId() == TYPEID_PLAYER)
            {
                Talk(SAY_KILL);
            }
        }

        void SummonedCreatureDies(Creature* summon, Unit* killer)
        {
            if (summon->GetEntry() == NPC_ESSENSE_OF_VITA)
            {
                summons.DespawnEntry(NPC_ESSENSE_OF_ANIMA);
                DoAction(ACTION_ANIMA);
            }
            else if (summon->GetEntry() == NPC_ESSENSE_OF_ANIMA)
            {
                summons.DespawnEntry(NPC_ESSENSE_OF_VITA);
                DoAction(ACTION_VITA);
            }
        }

        void DoAction(const int32 action)
        {
            if (action == ACTION_CREATION)
            {
                SummonEssenses();
            }
            else if (action == ACTION_VITA)
            {
                if (phase == PHASE_VITA)
                    return;

                phase = PHASE_VITA;

                events.CancelEvent(EVENT_ACTIVATE_ANIMA);
                events.ScheduleEvent(EVENT_ACTIVATE_VITA, 1500);
            }
            else if (action == ACTION_ANIMA)
            {
                if (phase == PHASE_ANIMA)
                    return;

                phase = PHASE_ANIMA;

                events.CancelEvent(EVENT_ACTIVATE_VITA);
                events.ScheduleEvent(EVENT_ACTIVATE_ANIMA, 1500);
            }
            else if (action == ACTION_CORRUPTED_VITA)
            {
                DoCast(me, SPELL_CORRUPTED_VITA, true);
            }
            else if (action == ACTION_CORRUPTED_ANIMA)
            {
                DoCast(me, SPELL_CORRUPTED_ANIMA, true);
            }
        }

        void AttackStart(Unit* target)
        {
            if (!target)
                return;

            if (phase == PHASE_LAST)
            {
                if (me->Attack(target, true))
                    DoStartNoMovement(target);
            }
            else
            {
                BossAI::AttackStart(target);
            }
        }

        void DamageTaken(Unit* attacker, uint32 &damage)
        {
            if (phase == PHASE_LAST)
            {
                if (me->GetHealth() <= damage)
                {
                    damage = 0;

                    if (!isCompleted)
                    {
                        EndEncounter();
                    }
                }
            }
        }

        void UpdateAI(const uint32 diff)
        {
            UpdateIntro(diff);

            if (!UpdateVictim())
                return;

            if (instance->GetBossState(DATA_LEI_SHEN) != DONE)
            {
                return;
            }

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (CheckFatalStrike())
                return;

            if (CheckMurderousStrike())
                return;

            if (CheckLastPhase())
                return;

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_CREATION:
                    if (!talkCreationDone)
                    {
                        talkCreationDone = true;
                        Talk(SAY_CREATION);
                    }
                    DoCast(SPELL_MATERIALS_OF_CREATION);
                    events.ScheduleEvent(EVENT_CREATION, urand(32500, 35000));
                    break;
                case EVENT_ACTIVATE_VITA:
                    ApplyVita();
                    break;
                case EVENT_ACTIVATE_ANIMA:
                    ApplyAnima();
                    break;
                case EVENT_UNSTABLE_VITA:
                    DoCastAOE(SPELL_UNSTABLE_VITA);
                    break;
                case EVENT_CRACKLING_STALKER:
                    DoCast(me, SPELL_SUMMON_CRACKLING_STALKER);
                    events.ScheduleEvent(EVENT_CRACKLING_STALKER, 40000);
                    break;
                case EVENT_UNSTABLE_ANIMA:
                    break;
                case EVENT_SANGUINE_HORROR:
                    DoCast(me, SPELL_SUMMON_SANGUINE_HORROR);
                    events.ScheduleEvent(EVENT_SANGUINE_HORROR, 40000);
                    break;
                case EVENT_LAST_PHASE:
                    SummonCorruptedEssenses();

                    me->AddAura(SPELL_RUIN, me);

                    events.ScheduleEvent(EVENT_CALL_ESSENSE, 15000);
                    events.ScheduleEvent(EVENT_RUIN_BOLT, 5000);
                    break;
                case EVENT_CALL_ESSENSE:
                    DoCastAOE(SPELL_CALL_ESSENSE);
                    events.ScheduleEvent(EVENT_CALL_ESSENSE, 15000);
                    break;
                case EVENT_RUIN_BOLT:
                    if (!me->IsWithinMeleeRange(me->GetVictim()))
                    {
                        DoCastVictim(SPELL_RUIN_BOLT);
                    }
                    events.ScheduleEvent(EVENT_RUIN_BOLT, 3000);
                    break;
                default:
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:

        bool isIntroDone;
        uint8 introStep;
        uint32 introTimer;

        bool talkCreationDone;
        bool talkVitaDone;
        bool talkAnimaDone;
        bool talkMurderousStrike;

        Phases phase;

        bool isCompleted;

    private:

        void InitPowers()
        {
            me->AddAura(SPELL_ZERO_MANA, me);

            me->SetPowerType(POWER_MANA);
            me->SetMaxPower(POWER_MANA, 100);
            me->SetPower(POWER_MANA, 0);
        }

        void UpdateIntro(const uint32 diff)
        {
            if (introStep == 0)
                return;

            if (introTimer <= diff)
            {
                switch (introStep)
                {
                case 1:
                    Talk(SAY_INTRO_1);
                    introStep++;
                    introTimer = 13000;
                    break;
                case 2:
                    Talk(SAY_INTRO_2);
                    introStep++;
                    introTimer = 22000;
                    break;
                case 3:
                    Talk(SAY_INTRO_3);
                    introStep = 0;
                    break;
                default:
                    introStep = 0;
                    break;
                }
            }
            else
            {
                introTimer -= diff;
            }
        }

        void SummonEssenses()
        {
            uint8 first = urand(0, 1);
            uint8 second = first == 1 ? 0 : 1;

            me->CastSpell(spherePos[first].GetPositionX(), spherePos[first].GetPositionY(), spherePos[first].GetPositionZ() + 1.0f, SPELL_SUMMON_ESSENSE_OF_VITA, true);
            me->CastSpell(spherePos[second].GetPositionX(), spherePos[second].GetPositionY(), spherePos[second].GetPositionZ(), SPELL_SUMMON_ESSENSE_OF_ANIMA, true);
        }

        void SummonCorruptedEssenses()
        {
            std::vector<Position> positions;
            BuildCorruptedEssensesPositions(positions, centerPos, 50.0f, me->GetPositionZ());

            int i = 0;
            for (std::vector<Position>::const_iterator itr = positions.begin(); itr != positions.end(); ++itr)
            {
                if (i % 2 == 0)
                {
                    me->SummonCreature(NPC_CORRUPTED_VITA, *itr);
                }
                else
                {
                    me->SummonCreature(NPC_CORRUPTED_ANIMA, *itr);
                }

                i++;
            }
        }

        void BuildCorruptedEssensesPositions(std::vector<Position> &positions, Position const& center, float radius, float z)
        {
            float step = float(M_PI) / 20.0f;
            float angle = 0.0f;

            for (uint8 i = 0; i < 40; angle += step, ++i)
            {
                Position pos;
                pos.m_positionX = center.GetPositionX() + radius * cosf(angle);
                pos.m_positionY = center.GetPositionY() + radius * sinf(angle);
                pos.m_positionZ = z;
                positions.push_back(pos);
            }
        }

        bool CheckFatalStrike()
        {
            if (phase != PHASE_VITA)
                return false;

            if (me->GetPower(POWER_MANA) < 100)
                return false;

            if (me->GetCurrentSpell(CURRENT_MELEE_SPELL))
                return false;

            if (!talkMurderousStrike)
            {
                talkMurderousStrike = true;
                Talk(SAY_MURDEROUS);
            }

            DoCastVictim(SPELL_FATAL_STRIKE);

            return true;
        }

        bool CheckMurderousStrike()
        {
            if (phase != PHASE_ANIMA)
                return false;

            if (me->GetPower(POWER_MANA) < 100)
                return false;

            DoCastVictim(SPELL_MURDEROUS_STRIKE);

            return true;
        }

        void ApplyVita()
        {
            if (!talkVitaDone)
            {
                talkVitaDone = true;
                Talk(SAY_VITA);
            }

            CancelAnima();

            events.ScheduleEvent(EVENT_UNSTABLE_VITA, 2000);
            events.ScheduleEvent(EVENT_CRACKLING_STALKER, 10000);

            DoCast(SPELL_UNLEASHED_VITA);

            me->AddAura(SPELL_IMBUED_WITH_VITA, me);
            me->AddAura(SPELL_LINGERING_ENERGIES, me);
        }

        void CancelVita()
        {
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_VITA_SENSITIVITY);
            me->RemoveAura(SPELL_IMBUED_WITH_VITA);
            events.CancelEvent(EVENT_UNSTABLE_VITA);
            events.CancelEvent(EVENT_CRACKLING_STALKER);
        }

        void ApplyAnima()
        {
            if (!talkAnimaDone)
            {
                talkAnimaDone = true;
                Talk(SAY_ANIMA);
            }

            CancelVita();

            events.ScheduleEvent(EVENT_UNSTABLE_ANIMA, 2000);
            events.ScheduleEvent(EVENT_SANGUINE_HORROR, 10000);

            DoCast(SPELL_UNLEASHED_ANIMA);
            me->AddAura(SPELL_IMBUED_WITH_ANIMA, me);
            me->AddAura(SPELL_LINGERING_ENERGIES, me);
        }

        void CancelAnima()
        {
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_ANIMA_SENSITIVITY);
            me->RemoveAura(SPELL_IMBUED_WITH_ANIMA);
            events.CancelEvent(EVENT_UNSTABLE_ANIMA);
            events.CancelEvent(EVENT_SANGUINE_HORROR);
        }

        bool CheckLastPhase()
        {
            if (phase == PHASE_LAST)
                return false;

            if (me->GetHealthPct() > 40.0f)
                return false;

            phase = PHASE_LAST;

            Talk(SAY_PHASE_2);

            me->SetPower(POWER_MANA, 0);
            events.CancelEvent(EVENT_CREATION);
            CancelVita();
            CancelAnima();
            me->SetReactState(REACT_PASSIVE);
            me->AttackStop();

            me->NearTeleportTo(centerPos);

            events.ScheduleEvent(EVENT_LAST_PHASE, 1000);

            return true;
        }

        void EndEncounter()
        {
            if (isCompleted)
                return;

            isCompleted = true;

            events.Reset();
            summons.DespawnAll();

            me->setFaction(35);
            me->RemoveAllAuras();

            me->AttackStop();
            me->InterruptNonMeleeSpells(true);
            me->CombatStop(true);

            instance->SetBossState(DATA_RA_DEN, DONE);

            instance->DoModifyPlayerCurrencies(396, 4000);

            //SpawnLoot();

            me->DespawnOrUnsummon(5000);
        }
/*
        void SpawnLoot()
        {
            switch (GetDifficulty())
            {
            case MAN10_HEROIC_DIFFICULTY:
                instance->DoRespawnGameObject(instance->GetGuidData(DATA_CACHE_OF_STORMS_10_HEROIC), DAY);
                break;
            case MAN25_HEROIC_DIFFICULTY:
                instance->DoRespawnGameObject(instance->GetGuidData(DATA_CACHE_OF_STORMS_25_HEROIC), DAY);
                break;
            }*/
    };
};

class npc_ra_den_essense_of_vita_anima : public CreatureScript
{
public:
    npc_ra_den_essense_of_vita_anima() : CreatureScript("npc_ra_den_essense_of_vita_anima") { }

    CreatureAI* GetAI(Creature* p_Creature) const
    {
        return new npc_ra_den_essense_of_vita_animaAI(p_Creature);
    }

    struct npc_ra_den_essense_of_vita_animaAI : public ScriptedAI
    {
        npc_ra_den_essense_of_vita_animaAI(Creature* p_Creature) : ScriptedAI(p_Creature)
        {
            me->SetReactState(REACT_PASSIVE);
            me->SetSpeed(MOVE_RUN, 0.5f);

            if (me->GetEntry() == NPC_ESSENSE_OF_VITA)
            {
                //me->SetCanFly(true);
                //me->SetDisableGravity(true);
                me->SetHover(true);
            }
        }

        void Reset()
        {
        }

        void IsSummonedBy(Unit* owner)
        {
            events.ScheduleEvent(EVENT_ESSENSE_MOVE, 1000);
            events.ScheduleEvent(EVENT_ESSENSE_UPDATE, 500);
        }

        void JustDied(Unit* who)
        {

        }

        void UpdateAI(const uint32 diff)
        {
            events.Update(diff);

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_ESSENSE_MOVE:
                    if (Creature* pRaden = GetRaden())
                    {
                        ApplyDrawOnRaden(pRaden);
                        me->GetMotionMaster()->MoveFollow(pRaden, 0.0f, 0.0f);
                    }
                    break;
                case EVENT_ESSENSE_UPDATE:
                    if (CheckForRadenDistance())
                    {
                        ApplyVitaOrAnimaOnRaden();
                        me->DespawnOrUnsummon();
                    }
                    else
                    {
                        events.ScheduleEvent(EVENT_ESSENSE_UPDATE, 500);
                    }
                    break;
                }
            }
        }

    private:

        Creature* GetRaden()
        {
            InstanceScript* pInstance = me->GetInstanceScript();
            if (!pInstance)
                return NULL;

            return pInstance->instance->GetCreature(pInstance->GetGuidData(DATA_RA_DEN));
        }

        void ApplyDrawOnRaden(Unit* target)
        {
            if (me->GetEntry() == NPC_ESSENSE_OF_VITA)
            {
                DoCast(target, SPELL_DRAW_VITA);
                me->ClearUnitState(UNIT_STATE_CASTING);
            }
            else if (me->GetEntry() == NPC_ESSENSE_OF_ANIMA)
            {
                DoCast(target, SPELL_DRAW_ANIMA);
                me->ClearUnitState(UNIT_STATE_CASTING);
            }
        }

        bool CheckForRadenDistance()
        {
            if (Creature* pRaden = GetRaden())
            {
                if (me->GetDistance(pRaden) <= 1.0f)
                {
                    return true;
                }
            }
            return false;
        }

        void ApplyVitaOrAnimaOnRaden()
        {
            if (Creature* pRaden = GetRaden())
            {
                if (me->GetEntry() == NPC_ESSENSE_OF_VITA)
                {
                    pRaden->AI()->DoAction(ACTION_VITA);
                }
                else if (me->GetEntry() == NPC_ESSENSE_OF_ANIMA)
                {
                    pRaden->AI()->DoAction(ACTION_ANIMA);
                }
            }
        }
    };
};

class npc_ra_den_corrupted_vita_anima : public CreatureScript
{
public:
    npc_ra_den_corrupted_vita_anima() : CreatureScript("npc_ra_den_corrupted_vita_anima") { }

    CreatureAI* GetAI(Creature* p_Creature) const
    {
        return new npc_ra_den_corrupted_vita_animaAI(p_Creature);
    }

    struct npc_ra_den_corrupted_vita_animaAI : public ScriptedAI
    {
        npc_ra_den_corrupted_vita_animaAI(Creature* p_Creature) : ScriptedAI(p_Creature)
        {
            me->SetReactState(REACT_PASSIVE);
            me->SetSpeed(MOVE_RUN, 0.5f);

            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_IMMUNE_TO_PC));

            if (me->GetEntry() == NPC_CORRUPTED_VITA)
            {
                //me->SetCanFly(true);
                //me->SetDisableGravity(true);
                me->SetHover(true);
            }

            isActive = false;
        }

        void DoAction(const int32 action)
        {
            if (action == ACTION_CORRUPTED_ESSENSE_MOVE)
            {
                isActive = true;

                me->RemoveUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_IMMUNE_TO_PC));

                if (Creature* pRaden = GetRaden())
                {
                    me->GetMotionMaster()->MoveFollow(pRaden, 0.0f, 0.0f);
                    events.ScheduleEvent(EVENT_ESSENSE_UPDATE, 500);
                }
            }
        }

        void JustDied(Unit* who)
        {
            events.Reset();

            me->StopMoving();
            me->GetMotionMaster()->MovementExpired(false);


            if (me->GetEntry() == NPC_CORRUPTED_ANIMA)
            {
                DoCastAOE(SPELL_TWISTED_ANIMA, true);
            }
        }

        void UpdateAI(const uint32 diff)
        {
            events.Update(diff);

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_ESSENSE_UPDATE:
                    if (CheckForRadenDistance())
                    {
                        ApplyVitaOrAnimaOnRaden();
                        me->DespawnOrUnsummon();
                    }
                    else
                    {
                        events.ScheduleEvent(EVENT_ESSENSE_UPDATE, 500);
                    }
                    break;
                }
            }
        }
    private:

        bool isActive;

    private:

        Creature* GetRaden()
        {
            InstanceScript* pInstance = me->GetInstanceScript();
            if (!pInstance)
                return NULL;

            return pInstance->instance->GetCreature(pInstance->GetGuidData(DATA_RA_DEN));
        }

        bool CheckForRadenDistance()
        {
            if (Creature* pRaden = GetRaden())
            {
                if (me->GetDistance(pRaden) <= 1.0f)
                {
                    return true;
                }
            }
            return false;
        }

        void ApplyVitaOrAnimaOnRaden()
        {
            if (Creature* pRaden = GetRaden())
            {
                if (me->GetEntry() == NPC_CORRUPTED_VITA)
                {
                    pRaden->AI()->DoAction(ACTION_CORRUPTED_VITA);
                }
                else if (me->GetEntry() == NPC_CORRUPTED_ANIMA)
                {
                    pRaden->AI()->DoAction(ACTION_CORRUPTED_ANIMA);
                }
            }
        }
    };
};

class npc_ra_den_crackling_stalker : public CreatureScript
{
public:
    npc_ra_den_crackling_stalker() : CreatureScript("npc_ra_den_crackling_stalker") { }

    CreatureAI* GetAI(Creature* p_Creature) const
    {
        return new npc_ra_den_crackling_stalkerAI(p_Creature);
    }

    struct npc_ra_den_crackling_stalkerAI : public ScriptedAI
    {
        npc_ra_den_crackling_stalkerAI(Creature* p_Creature) : ScriptedAI(p_Creature)
        {
            me->SetReactState(REACT_PASSIVE);
        }

        void Reset()
        {
            events.Reset();
        }

        void IsSummonedBy(Unit* owner)
        {
            events.ScheduleEvent(EVENT_MOVE, 1500);
        }

        void JustDied(Unit* who)
        {
            DoCastAOE(SPELL_CAUTERIZING_FLARE);

            me->DespawnOrUnsummon(1000);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_MOVE:
                    me->SetReactState(REACT_AGGRESSIVE);
                    events.ScheduleEvent(EVENT_CRACKLE, urand(8000, 10000));
                    break;
                case EVENT_CRACKLE:
                    DoCastVictim(SPELL_CRACKLE);
                    events.ScheduleEvent(EVENT_CRACKLE, urand(15000, 20000));
                    break;
                }
            }
        }

    private:

        Creature* GetRaden()
        {
            InstanceScript* pInstance = me->GetInstanceScript();
            if (!pInstance)
                return NULL;

            return pInstance->instance->GetCreature(pInstance->GetGuidData(DATA_RA_DEN));
      }
    };
};

class npc_ra_den_sanguine_horror : public CreatureScript
{
public:
    npc_ra_den_sanguine_horror() : CreatureScript("npc_ra_den_sanguine_horror") { }

    CreatureAI* GetAI(Creature* p_Creature) const
    {
        return new npc_ra_den_sanguine_horrorAI(p_Creature);
    }

    struct npc_ra_den_sanguine_horrorAI : public Scripted_NoMovementAI
    {
        npc_ra_den_sanguine_horrorAI(Creature* p_Creature) : Scripted_NoMovementAI(p_Creature)
        {

            me->SetReactState(REACT_PASSIVE);
        }

        void Reset()
        {
            events.Reset();
        }

        void IsSummonedBy(Unit* owner)
        {
            events.ScheduleEvent(EVENT_MOVE, 1500);
        }

        void JustDied(Unit* who)
        {
            me->DespawnOrUnsummon(1000);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_MOVE:
                    me->SetReactState(REACT_AGGRESSIVE);
                    events.ScheduleEvent(EVENT_SANGUINE_VOLLEY, 4000);
                    break;
                case EVENT_SANGUINE_VOLLEY:
                    if (!me->IsWithinMeleeRange(me->GetVictim()))
                    {
                        DoCastAOE(SPELL_SANGUINE_VOLLEY);
                    }
                    events.ScheduleEvent(EVENT_SANGUINE_VOLLEY, 3000);
                    break;
                }
            }
        }

    private:

        Creature* GetRaden()
        {
            InstanceScript* pInstance = me->GetInstanceScript();
            if (!pInstance)
                return NULL;

            return pInstance->instance->GetCreature(pInstance->GetGuidData(DATA_RA_DEN));
        }                     
    };
};

class spell_ra_den_materials_of_creation : public SpellScriptLoader
{
public:
    spell_ra_den_materials_of_creation() : SpellScriptLoader("spell_ra_den_materials_of_creation") { }

    class spell_ra_den_materials_of_creation_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_ra_den_materials_of_creation_SpellScript);

        void HandleAfterCast()
        {
            if (!GetCaster())
                return;

            if (Creature* pRaden = GetCaster()->ToCreature())
            {
                pRaden->AI()->DoAction(ACTION_CREATION);
            }
        }

        void Register()
        {
            OnCast += SpellCastFn(spell_ra_den_materials_of_creation_SpellScript::HandleAfterCast);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_ra_den_materials_of_creation_SpellScript();
    }
};

class spell_ra_den_unstable_vita_aura : public SpellScriptLoader
{
public:
    spell_ra_den_unstable_vita_aura() : SpellScriptLoader("spell_ra_den_unstable_vita_aura") { }

    class spell_ra_den_unstable_vita_aura_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_ra_den_unstable_vita_aura_SpellScript);

        void FilterTargets(std::list<WorldObject*> &targets)
        {
            if (!GetCaster())
                return;

            targets.clear();

            Creature* pRaden = GetCaster()->ToCreature();
            if (!pRaden)
                return;

            Unit* target = pRaden->AI()->SelectTarget(SELECT_TARGET_RANDOM, 1, 0.0f, true);
            if (!target)
                Unit* target = pRaden->AI()->SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true);

            if (target)
                targets.push_back(target);
        }

        void Register()
        {
            if (m_scriptSpellId == SPELL_UNSTABLE_VITA)
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_ra_den_unstable_vita_aura_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
            }
        }
    };

    class spell_ra_den_unstable_vita_aura_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_ra_den_unstable_vita_aura_AuraScript);

        void HandleTick(AuraEffect const* aurEff)
        {
            if (!GetUnitOwner())
                return;

            Player* player = GetUnitOwner()->ToPlayer();
            if (!player)
                return;

            InstanceScript* pInstance = player->GetInstanceScript();
            if (!pInstance)
                return;

            Creature* pRaden = pInstance->instance->GetCreature(pInstance->GetGuidData(DATA_RA_DEN));
            if (!pRaden)
                return;

            std::list<Player*> players;

            pRaden->GetPlayerListInGrid(players, 60.0f);

            players.remove(player);
            if (players.size() < 1)
                return;

            players.sort(Trinity::DistanceOrderPred(player));

            std::list<Player*>::reverse_iterator ritr = players.rbegin();

            Player* target = *ritr;

            if (target->GetGUID() == player->GetGUID())
                return;

            player->AddAura(SPELL_UNSTABLE_VITA_ALLY, target);
            player->CastSpell(target, SPELL_UNSTABLE_VITA_DUMMY, true);
            player->CastSpell(target, SPELL_UNSTABLE_VITA_DMG, true, NULL, NULL, pRaden->GetGUID());
        }

        void HandleRemove(AuraEffect const* aurEff, AuraEffectHandleModes mode)
        {
            if (!GetUnitOwner())
                return;

            GetUnitOwner()->AddAura(SPELL_VITA_SENSITIVITY, GetUnitOwner());
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_ra_den_unstable_vita_aura_AuraScript::HandleTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
            AfterEffectRemove += AuraEffectRemoveFn(spell_ra_den_unstable_vita_aura_AuraScript::HandleRemove, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_ra_den_unstable_vita_aura_SpellScript();
    }

    AuraScript* GetAuraScript() const
    {
        return new spell_ra_den_unstable_vita_aura_AuraScript();
    }
};

class spell_ra_den_unstable_vita_dmg : public SpellScriptLoader
{
public:
    spell_ra_den_unstable_vita_dmg() : SpellScriptLoader("spell_ra_den_unstable_vita_dmg") { }

    class spell_ra_den_unstable_vita_dmg_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_ra_den_unstable_vita_dmg_SpellScript);

        void HandleKill(SpellEffIndex effIndex)
        {
            if (!GetHitUnit())
                return;

            if (!GetHitUnit()->HasAura(SPELL_VITA_SENSITIVITY))
            {
                PreventHitDefaultEffect(effIndex);
            }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_ra_den_unstable_vita_dmg_SpellScript::HandleKill, EFFECT_1, SPELL_EFFECT_INSTAKILL);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_ra_den_unstable_vita_dmg_SpellScript();
    }
};

class spell_ra_den_unstable_anima_aura : public SpellScriptLoader
{
public:
    spell_ra_den_unstable_anima_aura() : SpellScriptLoader("spell_ra_den_unstable_anima_aura") { }

    class spell_ra_den_unstable_anima_aura_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_ra_den_unstable_anima_aura_SpellScript);

        void FilterTargets(std::list<WorldObject*> &targets)
        {
            if (!GetCaster())
                return;

            targets.clear();

            Creature* pRaden = GetCaster()->ToCreature();
            if (!pRaden)
                return;

            Unit* target = pRaden->AI()->SelectTarget(SELECT_TARGET_RANDOM, 1, 0.0f, true);
            if (!target)
                Unit* target = pRaden->AI()->SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true);

            if (target)
                targets.push_back(target);
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_ra_den_unstable_anima_aura_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
        }
    };

    class spell_ra_den_unstable_anima_aura_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_ra_den_unstable_anima_aura_AuraScript);

        void HandleTick(AuraEffect const* aurEff)
        {
            if (!GetUnitOwner())
                return;

            InstanceScript* pInstance = GetUnitOwner()->GetInstanceScript();
            if (!pInstance)
                return;

            Creature* pRaden = pInstance->instance->GetCreature(pInstance->GetGuidData(DATA_RA_DEN));
            if (!pRaden)
                return;

            GetUnitOwner()->CastSpell(GetUnitOwner(), SPELL_UNSTABLE_ANIMA_DMG, true, NULL, NULL, pRaden->GetGUID());
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_ra_den_unstable_anima_aura_AuraScript::HandleTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_ra_den_unstable_anima_aura_SpellScript();
    }

    AuraScript* GetAuraScript() const
    {
        return new spell_ra_den_unstable_anima_aura_AuraScript();
    }
};


class spell_ra_den_unstable_anima_dmg : public SpellScriptLoader
{
public:
    spell_ra_den_unstable_anima_dmg() : SpellScriptLoader("spell_ra_den_unstable_anima_dmg") { }

    class spell_ra_den_unstable_anima_dmg_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_ra_den_unstable_anima_dmg_SpellScript);

        void HandleKill(SpellEffIndex effIndex)
        {
            if (!GetHitUnit())
                return;

            if (!GetHitUnit()->HasAura(SPELL_ANIMA_SENSITIVITY))
            {
                PreventHitDefaultEffect(effIndex);

                GetHitUnit()->AddAura(SPELL_ANIMA_SENSITIVITY, GetHitUnit());
            }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_ra_den_unstable_anima_dmg_SpellScript::HandleKill, EFFECT_1, SPELL_EFFECT_INSTAKILL);
        }

    };

    SpellScript* GetSpellScript() const
    {
        return new spell_ra_den_unstable_anima_dmg_SpellScript();
    }
};

class spell_ra_den_call_essence : public SpellScriptLoader
{
public:
    spell_ra_den_call_essence() : SpellScriptLoader("spell_ra_den_call_essence") { }

    class spell_ra_den_call_essence_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_ra_den_call_essence_SpellScript);

        void FilterTargets(std::list<WorldObject*> &targets)
        {
            if (!GetCaster())
                return;

            targets.clear();

            std::list<Creature*> creatures;
            GetCaster()->GetCreatureListWithEntryInGrid(creatures, NPC_CORRUPTED_VITA, 200.0f); // TODO: adjuste searche range
            GetCaster()->GetCreatureListWithEntryInGridAppend(creatures, NPC_CORRUPTED_ANIMA, 200.0f); // TODO: adjuste searche range

            for (std::list<Creature*>::iterator itr = creatures.begin(); itr != creatures.end();)
            {
                if ((*itr)->AI()->GetData(DATA_CORRUPTED_ESSENSE_ACTIVE))
                {
                    itr = creatures.erase(itr);
                }
                else
                {
                    ++itr;
                }
            }

            targets.push_back(Trinity::Containers::SelectRandomContainerElement(creatures));
        }

        void HandleScript(SpellEffIndex effIndex)
        {
            if (!GetHitUnit())
                return;

            if (Creature* pEssense = GetHitUnit()->ToCreature())
            {
                pEssense->AI()->DoAction(ACTION_CORRUPTED_ESSENSE_MOVE);
            }
        }


        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_ra_den_call_essence_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
            OnEffectHitTarget += SpellEffectFn(spell_ra_den_call_essence_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_ra_den_call_essence_SpellScript();
    }
};


void AddSC_boss_ra_den()
{
    new boss_ra_den();                          // 69473
    new npc_ra_den_essense_of_vita_anima();     // 69870 69869
    new npc_ra_den_corrupted_vita_anima();      // 69958 69957
    new npc_ra_den_crackling_stalker();         // 69872
    new npc_ra_den_sanguine_horror();           // 69871

    new spell_ra_den_materials_of_creation();   // 138321
    new spell_ra_den_unstable_vita_aura();      // 138297 138308
    new spell_ra_den_unstable_vita_dmg();       // 138370
    new spell_ra_den_unstable_anima_aura();     // 138288
    new spell_ra_den_unstable_anima_dmg();      // 138295
    new spell_ra_den_call_essence();            // 139040
}
