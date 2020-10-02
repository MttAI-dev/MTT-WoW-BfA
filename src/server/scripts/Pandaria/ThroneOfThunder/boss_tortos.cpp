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
    SPELL_ZERO_POWER = 78725,

    // Tortos
    SPELL_SNAPPING_BITE = 135251,
    SPELL_FURIOUS_STONE_BREATH = 133939,
    SPELL_GROWING_FURY = 136010,
    SPELL_QUAKE_STOMP = 134920,
    SPELL_ROCK_FALL = 134849,
    SPELL_ROCK_FALL_GROUND_AREA = 134475,
    SPELL_ROCK_FALL_SUMMON = 134365,
    SPELL_ROCK_FALL_LARGE_DMG = 134476,
    SPELL_CALL_OF_TORTOS = 136294,
    SPELL_SUMMON_BATS = 136685,
    SPELL_SUMMON_BATS_1 = 136686,

    // Whirl Turtle
    SPELL_SPINNING_SHELL_DMG = 134011,
    SPELL_SPINNING_SHELL_AURA = 133974,
    SPELL_SHELL_BLOCK_AURA = 133971,
    SPELL_KICK_SHELL_OVERRIDER = 134030,
    SPELL_KICK_SHELL_ROOT = 134073,
    SPELL_SHELL_CONCUSSION = 134092,

    // Humming Crystal
    SPELL_CRYSTAL_SHELL_AURA = 137552,
    SPELL_CRYSTAL_SHELL_DMG = 137633,
    SPELL_CRYSTAL_SHELL_HEAL = 137648,

    SPELL_DRAIN_THE_WEAK = 135103,
    SPELL_DRAIN_THE_WEAK_DMG = 135101,
    SPELL_DRAIN_THE_WEAK_HEAL = 135102,
};

enum Adds
{
    NPC_HUMMING_CRYSTAL = 69639,
};

enum eEvents
{
    EVENT_BERSERK = 1,
    EVENT_UPDATE_ENERGY,
    EVENT_CHECK_PLAYERS,
    EVENT_SNAPPING_BITE,
    EVENT_CHECK_MELEE,
    EVENT_QUAKE_STOMP,
    EVENT_VAMPIRIC_BAT,
    EVENT_ROCKFALL,
    EVENT_CALL_OF_TORTOS,

    // Whirl Turtle
    EVENT_CHECK_NEAR_PLAYERS,
    EVENT_SWITCH_TARGET,

    // Vampiric Cave Bat
    EVENT_MOVE,
};

enum eActions
{
    ACTION_SPAWN_WHIRL_TURTLE = 1,
    ACTION_TURTLE_KICKED = 2,
};

enum eMoves
{
    MOVE_KICK_SHELL = 1,
    MOVE_TURTLE_POS,
    MOVE_BAT,
};

Position const vampiricBatSummonPos[2] =
{
    { 6015.67f, 4975.62f, 61.51f, 5.96f },
    { 6064.82f, 4959.10f, 61.48f, 2.81f }
};

const Position vampiricBatPos[2] =
{
    {6019.462402f, 4951.732910f, -33.689571f, 0.762538f},
    {6036.848633f, 4965.432129f, -61.215611f, 0.670908f}
};

const Position whirlTurtleMovePos[39] =
{
    {6065.276367f, 4938.449707f, -62.263905f, 1.355695f},
    {6068.838379f, 4945.345215f, -62.263905f, 0.857839f},
    {6075.766113f, 4951.248535f, -62.263905f, 1.126620f},
    {6079.081055f, 4959.626953f, -61.917130f, 1.209087f},
    {6078.945313f, 4974.710449f, -62.263050f, 2.082625f},
    {6072.402832f, 4978.508789f, -62.263050f, 2.968379f},
    {6069.432129f, 4983.285645f, -61.699638f, 1.361803f},
    {6063.125977f, 4987.260254f, -61.619225f, 3.194399f},
    {6058.121582f, 4988.006348f, -61.188892f, 2.363622f},
    {6050.702148f, 4993.962402f, -61.188892f, 1.890202f},
    {6048.507813f, 5001.146484f, -61.188892f, 2.339188f},
    {6040.953125f, 5000.738281f, -61.188892f, 4.287848f},
    {6039.726563f, 4996.496582f, -61.212494f, 4.694073f},
    {6040.911133f, 4987.204102f, -61.198524f, 4.999506f},
    {6042.916016f, 4973.878418f, -61.190174f, 4.800975f},
    {6043.709473f, 4967.136719f, -61.190174f, 4.742943f},
    {6043.474121f, 4956.442871f, -61.190174f, 4.434455f},
    {6039.260742f, 4951.245117f, -61.194279f, 3.676983f},
    {6033.071777f, 4952.366211f, -61.233273f, 2.354460f},
    {6030.967773f, 4958.603027f, -61.247639f, 1.523684f},
    {6031.870117f, 4967.652344f, -61.249355f, 1.407619f},
    {6032.594727f, 4972.973633f, -61.249336f, 1.462597f},
    {6033.330566f, 4980.916016f, -61.251389f, 1.563390f},
    {6033.395508f, 4989.666016f, -61.257545f, 1.563390f},
    {6032.734375f, 5000.425293f, -61.208649f, 1.832172f},
    {6027.802734f, 5004.323242f, -61.224121f, 2.907295f},
    {6023.079102f, 5003.795410f, -62.306141f, 3.454020f},
    {6018.395508f, 4999.131348f, -62.306141f, 4.287851f},
    {6016.166016f, 4992.450684f, -62.306789f, 4.526088f},
    {6014.545410f, 4983.852051f, -62.306789f, 4.526088f},
    {6012.915527f, 4975.255371f, -61.506165f, 4.523034f},
    {6011.268555f, 4966.661621f, -62.306747f, 4.523034f},
    {6009.497070f, 4958.960938f, -62.306747f, 4.376429f},
    {6005.353027f, 4961.579102f, -62.284538f, 1.896316f},
    {6003.105469f, 4971.421387f, -62.306946f, 1.584774f},
    {6023.054199f, 4975.040039f, -61.239994f, 5.876540f},
    {6028.178711f, 4968.849121f, -61.252308f, 5.091578f},
    {6033.848633f, 4962.531738f, -61.234135f, 6.017039f},
    {6040.395020f, 4963.221191f, -61.192425f, 0.763160f}
};

Position const whirlTurtleSpawnPos = { 6033.39f, 4879.94f, -61.19f, 1.45f };

class RockFallLargeTargetSelector
{
public:
    RockFallLargeTargetSelector(Unit* caster) : _caster(caster) { };
    bool operator()(Unit* unit) const
    {
        return unit->GetDistance(_caster) <= 5.0f;
    }

    bool operator()(WorldObject* object) const
    {
        return object->GetDistance(_caster) <= 5.0f;
    }

private:
    Unit* _caster;
};

class ShellConcussionTargetSelector
{
public:

    bool operator()(WorldObject* object) const
    {
        return object->GetTypeId() == TYPEID_PLAYER || (object->ToUnit() && object->ToUnit()->IsControlledByPlayer());
    }
};

// Tortos - 67977
class boss_tortos : public CreatureScript
{
public:
    boss_tortos() : CreatureScript("boss_tortos") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_tortosAI(creature);
    }

    struct boss_tortosAI : public BossAI
    {
        boss_tortosAI(Creature* creature) : BossAI(creature, DATA_TORTOS)
        {
            me->setActive(true);
        }

        void Reset()
        {
            _Reset();

            me->AddAura(SPELL_ZERO_POWER, me);

            me->SetPowerType(POWER_ENERGY);
            me->SetPower(POWER_ENERGY, 0);
            me->SetMaxPower(POWER_ENERGY, 100);
            me->RemoveUnitFlag(UnitFlags(UNIT_FLAG2_REGENERATE_POWER));

            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_CRYSTAL_SHELL_DMG);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_CRYSTAL_SHELL_HEAL);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_KICK_SHELL_OVERRIDER);
            me->RemoveAura(SPELL_KICK_SHELL_OVERRIDER);

            me->SetReactState(REACT_DEFENSIVE);

            achievementCounter = 0;
        }

        void AttackStart(Unit* victim)
        {
            if (!victim)
                return;

            if (me->Attack(victim, true))
                DoStartNoMovement(victim);
        }

        void EnterCombat(Unit* attacker)
        {
            events.ScheduleEvent(EVENT_BERSERK, 780 * IN_MILLISECONDS);
            events.ScheduleEvent(EVENT_SNAPPING_BITE, 8000);
            events.ScheduleEvent(EVENT_CHECK_MELEE, 1000);
            events.ScheduleEvent(EVENT_QUAKE_STOMP, 29000);
            events.ScheduleEvent(EVENT_VAMPIRIC_BAT, 45000);
            events.ScheduleEvent(EVENT_ROCKFALL, 15000);
            events.ScheduleEvent(EVENT_CALL_OF_TORTOS, 21000);
            events.ScheduleEvent(EVENT_CHECK_PLAYERS, 5000);
            events.ScheduleEvent(EVENT_UPDATE_ENERGY, 1000);

            me->AddAura(SPELL_KICK_SHELL_OVERRIDER, me);

            instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
            instance->SetBossState(DATA_TORTOS, IN_PROGRESS);
            DoZoneInCombat();
        }

        void JustSummoned(Creature* summon)
        {
            BossAI::JustSummoned(summon);

            if (summon->GetEntry() == NPC_ROCKFALL)
                summon->CastSpell(summon, SPELL_ROCK_FALL_GROUND_AREA, false);
        }

        void JustDied(Unit* killer)
        {
            _JustDied();

            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_CRYSTAL_SHELL_DMG);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_CRYSTAL_SHELL_HEAL);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_KICK_SHELL_OVERRIDER);
            me->RemoveAura(SPELL_KICK_SHELL_OVERRIDER);

            //me->SummonGameObject(GO_TORTOS_DEATH_COLLISION, 6038.69f, 4923.87f, -61.1953f, 1.513821f, 0, 0, 0, 1.f, 0);
        }

        void DoAction(const int32 action)
        {
            switch (action)
            {
            case ACTION_SPAWN_WHIRL_TURTLE:
            {
                for (uint8 i = 0; i < 3; ++i)
                {
                    me->SummonCreature(NPC_WHIRL_TURTLE, whirlTurtleSpawnPos.m_positionX, whirlTurtleSpawnPos.m_positionY, whirlTurtleSpawnPos.m_positionZ);
                }
                break;
            }
            case ACTION_TURTLE_KICKED:
            {
                achievementCounter++;
                break;
            }
            default:
                break;

            }
        }

        bool CheckAchievement()
        {
            return achievementCounter >= 5;
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
                case EVENT_UPDATE_ENERGY:
                {
                    int32 currentEnergy = me->GetPower(POWER_ENERGY);
                    if (currentEnergy >= 100)
                    {
                        me->SetPower(POWER_ENERGY, 0);
                        DoCast(me, SPELL_FURIOUS_STONE_BREATH);
                    }
                    else
                    {
                        currentEnergy += 4;
                        me->SetPower(POWER_ENERGY, currentEnergy);
                    }
                    events.ScheduleEvent(EVENT_UPDATE_ENERGY, 2000);
                    break;
                }
                case EVENT_CHECK_PLAYERS:
                    break;
                case EVENT_BERSERK:
                    //me->CastSpell(me, SPELL_ENRAGE, true);
                    break;
                case EVENT_SNAPPING_BITE:
                    if (Unit* target = SelectTarget(SELECT_TARGET_TOPAGGRO))
                        me->CastSpell(target, SPELL_SNAPPING_BITE, false);
                    events.ScheduleEvent(EVENT_SNAPPING_BITE, 8000);
                    break;
                case EVENT_CHECK_MELEE:
                {
                    if (Unit* target = SelectTarget(SELECT_TARGET_TOPAGGRO))
                    {
                        if (!me->IsWithinMeleeRange(target))
                            me->CastSpell(me, SPELL_GROWING_FURY, true);
                    }
                    events.ScheduleEvent(EVENT_CHECK_MELEE, 1000);
                    break;
                }
                case EVENT_QUAKE_STOMP:
                    me->CastSpell(me, SPELL_QUAKE_STOMP, false);
                    events.ScheduleEvent(EVENT_QUAKE_STOMP, 49000);
                    break;
                case EVENT_VAMPIRIC_BAT:
                    DoCast(me, SPELL_SUMMON_BATS);
                    events.ScheduleEvent(EVENT_VAMPIRIC_BAT, 45000);
                    break;
                case EVENT_ROCKFALL:
                    me->CastSpell(me, SPELL_ROCK_FALL, true);
                    break;
                case EVENT_CALL_OF_TORTOS:
                    me->CastSpell(me, SPELL_CALL_OF_TORTOS, false);
                    events.ScheduleEvent(EVENT_CALL_OF_TORTOS, 60000);
                    break;
                default:
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:

        uint8 achievementCounter;

    };
};

// Rockfall - 68219
class npc_tortos_rockfall : public CreatureScript
{
public:
    npc_tortos_rockfall() : CreatureScript("npc_tortos_rockfall") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_tortos_rockfallAI(creature);
    }

    struct npc_tortos_rockfallAI : public Scripted_NoMovementAI
    {
        npc_tortos_rockfallAI(Creature* creature) : Scripted_NoMovementAI(creature) { }

        void Reset()
        {
            me->SetReactState(REACT_PASSIVE);
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE));
            me->AddUnitFlag(UnitFlags(UNIT_FLAG2_DISABLE_TURN));
        }
    };
};

// Vampiric Cave Bat - 68497
class npc_tortos_vampiric_cave_bat : public CreatureScript
{
public:
    npc_tortos_vampiric_cave_bat() : CreatureScript("npc_tortos_vampiric_cave_bat") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_tortos_vampiric_cave_batAI(creature);
    }

    struct npc_tortos_vampiric_cave_batAI : public ScriptedAI
    {
        npc_tortos_vampiric_cave_batAI(Creature* creature) : ScriptedAI(creature) { }

        void Reset()
        {
            me->SetReactState(REACT_PASSIVE);
            me->CastSpell(me, SPELL_DRAIN_THE_WEAK, true);

            me->SetCanFly(true);
            me->SetDisableGravity(true);
        }

        void IsSummonedBy(Unit* owner)
        {
            events.ScheduleEvent(EVENT_MOVE, 1000);
        }

        void MovementInform(uint32 type, uint32 id)
        {
            if (type == POINT_MOTION_TYPE)
            {
                if (id == MOVE_BAT)
                {
                    me->SetReactState(REACT_AGGRESSIVE);
                }
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_MOVE:
                {
                    me->GetMotionMaster()->MovePoint(MOVE_BAT, vampiricBatPos[1].GetPositionX() + frand(1.0f, 3.0f), vampiricBatPos[1].GetPositionY() + frand(1.0f, 3.0f), vampiricBatPos[1].GetPositionZ());
                    break;
                }
                }
            }

            DoMeleeAttackIfReady();
        }
    };
};

// Whirl Turtle - 67966
class npc_tortos_whirl_turtle : public CreatureScript
{
public:
    npc_tortos_whirl_turtle() : CreatureScript("npc_tortos_whirl_turtle") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_tortos_whirl_turtleAI(creature);
    }

    struct npc_tortos_whirl_turtleAI : public ScriptedAI
    {
        npc_tortos_whirl_turtleAI(Creature* creature) : ScriptedAI(creature)
        {

            me->setActive(true);
        }

        bool shellBlocked;

        void Reset()
        {
            shellBlocked = false;

            me->CastSpell(me, SPELL_SPINNING_SHELL_AURA, true);

            me->SetReactState(REACT_PASSIVE);

            me->SetSpeed(MOVE_WALK, 2.f);
            me->SetSpeed(MOVE_RUN, 2.f);

            events.Reset();

        }

        void EnterCombat(Unit* attacker)
        {
            events.ScheduleEvent(EVENT_CHECK_NEAR_PLAYERS, 1500);
            events.ScheduleEvent(EVENT_SWITCH_TARGET, 100);
        }

        void MovementInform(uint32 type, uint32 id)
        {
            switch (id)
            {
            case MOVE_KICK_SHELL:
                me->DespawnOrUnsummon();
                break;
            case MOVE_TURTLE_POS:
            {
                events.ScheduleEvent(EVENT_SWITCH_TARGET, 3000);
            }
            default:
                break;
            }
        }

        void DamageTaken(Unit* attacker, uint32& damage)
        {
            if (shellBlocked)
            {
                damage = 0;
                return;
            }

            if (me->HealthBelowPctDamaged(5, damage))
            {
                me->GetMotionMaster()->Clear();
                me->StopMoving();

                shellBlocked = true;
                damage = 0;

                events.CancelEvent(EVENT_SWITCH_TARGET);
                events.CancelEvent(EVENT_CHECK_NEAR_PLAYERS);

                me->RemoveAura(SPELL_SPINNING_SHELL_AURA);
                me->AddAura(SPELL_SHELL_BLOCK_AURA, me);
            }
        }

        void DoAction(const int32 action)
        {
            if (action == ACTION_TURTLE_KICKED)
            {
                if (InstanceScript* pInstance = me->GetInstanceScript())
                {
                    if (Creature* pTortos = pInstance->instance->GetCreature(pInstance->GetGuidData(DATA_TORTOS)))
                    {
                        pTortos->AI()->DoAction(ACTION_TURTLE_KICKED);
                    }
                }
            }
        }

        void UpdateAI(const uint32 diff)
        {
            events.Update(diff);

            switch (events.ExecuteEvent())
            {
            case EVENT_CHECK_NEAR_PLAYERS:
            {
                std::list<Player*> plrList;

                PlayersCheck checker(me, 5.0f);

                for (auto itr : plrList)
                    itr->CastSpell(itr, SPELL_SPINNING_SHELL_DMG, true);

                events.ScheduleEvent(EVENT_CHECK_NEAR_PLAYERS, 3000);
                break;
            }
            case EVENT_SWITCH_TARGET:
            {
                Position const* nextPos = GetRandomTurtlePos();

                me->GetMotionMaster()->Clear();
                me->GetMotionMaster()->MovePoint(MOVE_TURTLE_POS, nextPos->GetPositionX(), nextPos->GetPositionY(), nextPos->GetPositionZ());
                break;
            }
            default:
                break;
            }
        }

    private:

        Position const* GetRandomTurtlePos() const
        {
            int8 i = urand(0, 39);

            return &whirlTurtleMovePos[i];
        }

    private:

        class PlayersCheck
        {
        public:
            PlayersCheck(WorldObject const* obj, float range) : _obj(obj), _range(range) {}
            bool operator()(Player* u)
            {
                if (!u->IsAlive())
                    return false;

                if (_obj->GetExactDist(u) > _range)
                    return false;

                if (u->HasAura(SPELL_SPINNING_SHELL_DMG))
                    return false;

                return true;
            }

        private:
            WorldObject const* _obj;
            float _range;
        };

    };
};

// Humming Crystal - 69639
class npc_tortos_humming_crystal : public CreatureScript
{
public:
    npc_tortos_humming_crystal() : CreatureScript("npc_tortos_humming_crystal") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_tortos_humming_crystalAI(creature);
    }

    struct npc_tortos_humming_crystalAI : public Scripted_NoMovementAI
    {
        npc_tortos_humming_crystalAI(Creature* creature) : Scripted_NoMovementAI(creature) { }

        void Reset()
        {
            me->CastSpell(me, SPELL_CRYSTAL_SHELL_AURA, true);
            me->SetReactState(REACT_PASSIVE);
            me->AddUnitFlag(UnitFlags(UNIT_FLAG2_DISABLE_TURN));
        }
    };
};

// Quake Stomp - 134920
class spell_tortos_quake_stomp : public SpellScriptLoader
{
public:
    spell_tortos_quake_stomp() : SpellScriptLoader("spell_tortos_quake_stomp") { }

    class spell_tortos_quake_stomp_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_tortos_quake_stomp_SpellScript);

        void HandleDamage(SpellEffIndex effIndex)
        {
            if (Unit* caster = GetCaster())
            {
                if (Unit* target = GetHitUnit())
                    SetHitDamage(target->CountPctFromMaxHealth(65));
            }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_tortos_quake_stomp_SpellScript::HandleDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_tortos_quake_stomp_SpellScript();
    }
};

// Rockfall - 134364 / 140431
class spell_tortos_rockfall : public SpellScriptLoader
{
public:
    spell_tortos_rockfall() : SpellScriptLoader("spell_tortos_rockfall") { }

    class spell_tortos_rockfall_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_tortos_rockfall_SpellScript);

        void CorrectTargets(std::list<WorldObject*>& targets)
        {
            if (targets.empty())
                return;
        }

        void HandleOnHit()
        {
            if (Unit* caster = GetCaster())
            {
                if (Unit* target = GetHitUnit())
                    caster->CastSpell(target, SPELL_ROCK_FALL_SUMMON, true);
            }
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_tortos_rockfall_SpellScript::CorrectTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
            OnHit += SpellHitFn(spell_tortos_rockfall_SpellScript::HandleOnHit);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_tortos_rockfall_SpellScript();
    }
};

// Rockfall (damage) - 134539
class spell_tortos_rockfall_damage : public SpellScriptLoader
{
public:
    spell_tortos_rockfall_damage() : SpellScriptLoader("spell_tortos_rockfall_damage") { }

    class spell_tortos_rockfall_damage_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_tortos_rockfall_damage_SpellScript);

        void HandleAfterCast()
        {
            if (Unit* caster = GetCaster())
                caster->CastSpell(caster, SPELL_ROCK_FALL_LARGE_DMG, true);
        }

        void Register()
        {
            AfterCast += SpellCastFn(spell_tortos_rockfall_damage_SpellScript::HandleAfterCast);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_tortos_rockfall_damage_SpellScript();
    }
};

// Rockfall (large damage) - 134476
class spell_tortos_rockfall_large_damage : public SpellScriptLoader
{
public:
    spell_tortos_rockfall_large_damage() : SpellScriptLoader("spell_tortos_rockfall_large_damage") { }

    class spell_tortos_rockfall_large_damage_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_tortos_rockfall_large_damage_SpellScript);

        void CorrectTargets(std::list<WorldObject*>& targets)
        {
            if (targets.empty())
                return;

            targets.remove_if(RockFallLargeTargetSelector(GetCaster()));
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_tortos_rockfall_large_damage_SpellScript::CorrectTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_tortos_rockfall_large_damage_SpellScript();
    }
};

// Call of Tortos - 136294
class spell_tortos_call_of_tortos : public SpellScriptLoader
{
public:
    spell_tortos_call_of_tortos() : SpellScriptLoader("spell_tortos_call_of_tortos") { }

    class spell_tortos_call_of_tortos_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_tortos_call_of_tortos_SpellScript);

        void HandleAfterCast()
        {
            if (Creature* tortos = GetCaster()->ToCreature())
                tortos->AI()->DoAction(ACTION_SPAWN_WHIRL_TURTLE);
        }

        void Register()
        {
            AfterCast += SpellCastFn(spell_tortos_call_of_tortos_SpellScript::HandleAfterCast);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_tortos_call_of_tortos_SpellScript();
    }
};

// Shell Block (triggered) - 140054
class spell_tortos_shell_block : public SpellScriptLoader
{
public:
    spell_tortos_shell_block() : SpellScriptLoader("spell_tortos_shell_block") { }

    class spell_tortos_shell_block_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_tortos_shell_block_AuraScript);

        void OnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            //if (Unit* target = GetTarget())
            //    target->CastSpell(target, SPELL_KICK_SHELL_OVERRIDER, true);
        }

        void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            //if (Unit* target = GetTarget())
            //    target->RemoveAura(SPELL_KICK_SHELL_OVERRIDER);
        }

        void Register()
        {
            AfterEffectApply += AuraEffectApplyFn(spell_tortos_shell_block_AuraScript::OnApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
            AfterEffectRemove += AuraEffectRemoveFn(spell_tortos_shell_block_AuraScript::OnRemove, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_tortos_shell_block_AuraScript();
    }
};

// Kick Shell - 134031
class spell_tortos_kick_shell : public SpellScriptLoader
{
public:
    spell_tortos_kick_shell() : SpellScriptLoader("spell_tortos_kick_shell") { }

    class spell_tortos_kick_shell_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_tortos_kick_shell_AuraScript);

        void OnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            if (Unit* target = GetTarget())
                target->CastSpell(target, SPELL_KICK_SHELL_ROOT, true);
        }

        void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            if (Unit* caster = GetCaster())
            {
                if (Unit* target = GetTarget())
                {
                    target->RemoveAura(SPELL_KICK_SHELL_ROOT);
                    target->ClearUnitState(UNIT_STATE_CASTING | UNIT_STATE_STUNNED | UNIT_STATE_ROOT);
                    target->SetSpeed(MOVE_WALK, 5.f);
                    target->SetSpeed(MOVE_RUN, 5.f);
                    target->AddAura(SPELL_SHELL_CONCUSSION, target);
                    float orientation = caster->GetOrientation();
                    float x = target->GetPositionX() + ((150.0f) * cos(orientation));
                    float y = target->GetPositionY() + ((150.0f) * sin(orientation));
                    target->GetMotionMaster()->Clear();
                    target->GetMotionMaster()->MovePoint(MOVE_KICK_SHELL, x, y, target->GetPositionZ());
                }
            }
        }

        void Register()
        {
            AfterEffectApply += AuraEffectApplyFn(spell_tortos_kick_shell_AuraScript::OnApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
            AfterEffectRemove += AuraEffectRemoveFn(spell_tortos_kick_shell_AuraScript::OnRemove, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_tortos_kick_shell_AuraScript();
    }
};

// Shell Concussion - 134091 / 136431
class spell_tortos_shell_concussion : public SpellScriptLoader
{
public:
    spell_tortos_shell_concussion() : SpellScriptLoader("spell_tortos_shell_concussion") { }

    class spell_tortos_shell_concussion_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_tortos_shell_concussion_SpellScript);

        void CorrectTargets(std::list<WorldObject*>& targets)
        {
            if (targets.empty())
                return;

            targets.remove_if(ShellConcussionTargetSelector());
        }

        void HandleBeforeHit()
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            if (GetHitUnit()->GetEntry() == NPC_TORTOS)
            {
                GetHitUnit()->InterruptNonMeleeSpells(true, SPELL_FURIOUS_STONE_BREATH, true);
            }

            if (GetHitUnit()->GetEntry() == NPC_WHIRL_TURTLE)
            {
                if (Creature* pTurtle = GetHitUnit()->ToCreature())
                {
                    pTurtle->AI()->DoAction(ACTION_TURTLE_KICKED);
                }
            }
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_tortos_shell_concussion_SpellScript::CorrectTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);          
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_tortos_shell_concussion_SpellScript();
    }
};

// Crystal Shell (damage absorb) - 137633
class spell_tortos_crystal_shell_damage_absorption : public SpellScriptLoader
{
public:
    spell_tortos_crystal_shell_damage_absorption() : SpellScriptLoader("spell_tortos_crystal_shell_damage_absorption") { }

    class spell_tortos_crystal_shell_damage_absorption_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_tortos_crystal_shell_damage_absorption_AuraScript);

        bool CalculateAmount(AuraEffect const* /*aurEff*/, int32 & amount, bool & /*canBeRecalculated*/)
        {
            if (Unit* target = GetUnitOwner())
                amount = target->CountPctFromMaxHealth(15);

            return true;
        }

        void OnRemove(AuraEffect const* aurEff, AuraEffectHandleModes mode)
        {
            if (Unit* target = GetTarget())
                target->RemoveAura(SPELL_CRYSTAL_SHELL_HEAL);
        }

        void Register()
        {
            AfterEffectRemove += AuraEffectRemoveFn(spell_tortos_crystal_shell_damage_absorption_AuraScript::OnRemove, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_tortos_crystal_shell_damage_absorption_AuraScript();
    }
};

class spell_tortos_summon_bats : public SpellScriptLoader
{
public:
    spell_tortos_summon_bats() : SpellScriptLoader("spell_tortos_summon_bats") { }

    class spell_tortos_summon_bats_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_tortos_summon_bats_SpellScript);

        void HandleOnHit(SpellEffIndex /*effIndex*/)
        {
            WorldLocation summonPos = *GetExplTargetDest();
            summonPos.Relocate(vampiricBatPos[0]);
            SetExplTargetDest(summonPos);

            WorldLocation* dest = GetHitDest();
            if (dest)
            {
                dest->Relocate(vampiricBatPos[0]);
            }
        }

        void Register()
        {
            OnEffectHit += SpellEffectFn(spell_tortos_summon_bats_SpellScript::HandleOnHit, EFFECT_0, SPELL_EFFECT_SUMMON);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_tortos_summon_bats_SpellScript();
    }
};

class achievement_one_up : public AchievementCriteriaScript
{
public:
    achievement_one_up() : AchievementCriteriaScript("achievement_one_up") { }

    bool OnCheck(Player* source, Unit* target)
    {
        if (!target)
            return false;

        if (boss_tortos::boss_tortosAI* tortosAI = CAST_AI(boss_tortos::boss_tortosAI, target->GetAI()))
        {
            if (!tortosAI->CheckAchievement())
                return false;
        }

        return true;
    }
};

void AddSC_boss_tortos()
{
    new boss_tortos();
    new npc_tortos_rockfall();
    new npc_tortos_vampiric_cave_bat();
    new npc_tortos_whirl_turtle();
    new npc_tortos_humming_crystal();
    new spell_tortos_quake_stomp();
    new spell_tortos_rockfall();
    new spell_tortos_rockfall_damage();
    new spell_tortos_rockfall_large_damage();
    new spell_tortos_call_of_tortos();
    new spell_tortos_shell_block();
    new spell_tortos_kick_shell();
    new spell_tortos_shell_concussion();
    new spell_tortos_crystal_shell_damage_absorption();
    new spell_tortos_summon_bats();

    new achievement_one_up();
}
