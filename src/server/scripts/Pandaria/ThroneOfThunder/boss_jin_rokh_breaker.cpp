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

enum Yells
{
    SAY_AGGRO = 0,
    SAY_BERSERK = 1,
    SAY_DEATH = 2,
    SAY_INTRO = 3,
    SAY_KILL = 4,
    SAY_STATIC_BURST = 5,
    SAY_THUNDERING_THROW = 6,
    SAY_LIGHTNING_STORM = 7,
    SAY_FOCUSED_LIGHTNING = 8,

    ANN_THUNDERING_THROW = 9,
    ANN_FOCUSED_LIGHTNING = 10,
    ANN_LIGHTNING_STORM = 11,
};

enum Spells
{
    // Boss

    // Thundering Throw.
    SPELL_RIDE_VEHICLE = 43671,  // Grab spell (Control Vehicle).

    SPELL_THUNDERING_THROW = 137180, // Main cast time spell, dummy effect 0 for SPELL_THUNDERING_THROW_GRAB.
    SPELL_THUNDERING_THROW_GRAB = 137161, // Silence, pacify, eff. 0 script effect for SPELL_RIDE_VEHICLE.
    SPELL_THUNDERING_THROW_JMP = 137173, // Jump behind target spell cast on Statue npc.
    SPELL_THUNDERING_THROW_PLR = 137370, // Dmg dealed to player on impact.
    SPELL_THUNDERING_THROW_AOE = 137167, // Additional 190000 to 210000 Nature damage to other players within 8 yards of the point of impact.
    SPELL_THUNDERING_THROW_STUN = 137371, // Stun for 5 seconds on other players within 8 yards of the point of impact.

    // Conductive Waters.
    SPELL_CONDUCTIVE_WATER_SUMM = 137145, // Summons Conductive Waters npc NPC_CONDUCTIVE_WATER.
    SPELL_CONDUCTIVE_VISUAL = 137277, // Water effect visual ground.
    SPELL_CONDUCTIVE_VISUAL_2 = 137340, // Mogu fountain visual shooted by statue (orientation!).
    SPELL_CONDUCTIVE_VISUAL_3 = 137978, // Electrified waters visual ground.
    SPELL_CONDUCTIVE_WATER_GROW = 137676, // Aura size increase 137694 11 % each 100 ms.
    SPELL_CONDUCTIVE_WATER = 138470, // Debuff, + 80% Nature damage.
    SPELL_FLUIDITY = 138002, // Buff 40% damage dealt.

    // Static burst + Wound.
    SPELL_STATIC_BURST = 137162, // Does 95000 to 105000 Nature damage to all players. After 3 sec., expires and applies 10 Static Wound stacks to current target (eff 1).

    SPELL_STATIC_WOUND = 138349, // Aura. Inflicts 20000 Nature damage / stack when taking melee damage. - 1 stack / 3 secs (eff 1).
    SPELL_STATIC_WOUND_COND = 138375, // Static Wound Conduction damage, inflicting 20000 / 3 Nature damage / stack to all players in the Conductive Water. If tank is in it.
    SPELL_STATIC_WOUND_DMG = 138389, // Inflicts 20000 / 3 Nature damage / stack to all players when taking melee damage. On SPELL_STATIC_WOUND.

    // Focused Lightning + Lightning Fissure left after FL explosion (If the Focused Lightning detonates outside of Conductive Water, a Lightning Fissure forms).
    SPELL_FOCUSED_LIGHTNING = 137399, // Cast time + dummy on eff 0 (to summon Focused Lightning npc NPC_FOCUSED_LIGHTNING).
    SPELL_FOCUSED_LIGHTNING_VIS = 137425, // Focused Lightning visual.
    SPELL_FOCUSED_LIGHTNING_SPD = 137389, // Aura, each 500 ms increase movement speed (triggers 137437).
    SPELL_FOCUSED_LIGHTNING_DMG = 137423, // Pulses 38000 to 42000 Nature damage every half second to other players within 5 yards.
    SPELL_FOCUSED_LIGHTNING_FIX = 137422, // Fixated aura (player).
    SPELL_FOCUSED_LIGHTNING_DET = 137374, // Focused Lightning Detonation damage, 170625 to 179375 Nature damage to players in 8 yards of fixated victim.
    SPELL_FOCUSED_LIGHTNING_DMG_1 = 137530, // Focused Lightning Conduction damage, 170625 to 179375 Nature damage to all players standing in Conductive Water.
    SPELL_FOCUSED_LIGHTNING_DMG_2 = 138990, // If touches ELECTRIFIED Conductive Water.

    SPELL_LIGHTNING_FISSURE_SUM = 137479, // Summons Lightning Fissure npc NPC_LIGHTNING_FISSURE.
    SPELL_LIGHTNING_FISSURE_VIS = 137480, // Fissure visual.
    SPELL_LIGHTNING_FISSURE_DMG = 137484, // Aura.
    SPELL_LIGHTNING_FISS_COND = 138133, // Contacts Conductive Water, removing Lightning Fissure + 71250 - 78750 dmg to players standing in Conductive Water.
    SPELL_IMPLOSION = 137507, // LF implodes upon contact with another Focused Lightning, 237500 - 262500 dmg to all players + 10% damage taken from Implosion. 

    // Lightning Storm.
    SPELL_LIGHTNING_STORM = 137313, // Aura.
    SPELL_LIGHTNING_STORM_VIS = 140555, // Visual.
    SPELL_LIGHTNING_STRIKE_VIS = 140507, // Visual too.
    SPELL_LIGHTNING_STORM_VIS2 = 140775, // Visual 2.
    SPELL_LIGHTNING_STORM_DMG = 137261, // Effect 0 damage from aura.
    SPELL_LIGHTNING_STORM_DUMMY = 140819, // Effect 1 dummy from aura.
    SPELL_LIGHTNING_STORM_H_DMG = 137647, // Heroic, triggered on SPELL_LIGHTNING_STORM_DUMMY.
    SPELL_LIGHTNING_DIFFUSION = 137905, // Each Lightning Strike diffuses, 195000 to 205000 Nature damage to all players in a line. On SPELL_LIGHTNING_STORM_H_DMG.
    SPELL_ELECTRIFIED_WATERS = 138006, // Removes Fluidity, 35000 Nature damage / sec. to players in Conductive Water. Electrifies the water (visual change).

    // Ionization - Heroic only.
    SPELL_IONIZATION_AURA = 138732, // Dummy on effect 1 for SPELL_IONIZATION_DMG when dispelled or duration expires.
    SPELL_IONIZATION_DMG = 138733, // HEROIC. Inflicts 450000 Nature damage to players within 8 yards.
    SPELL_IONIZATION_CONDUCTION = 138743, // Ionization damage travels through Conductive Water, inflicting 450000 Nature damage to players standing in Conductive Water.

    SPELL_BERSERK = 144369, // Berserk, Enrage, Bye - Bye or, simply put, a wipe. :)

    SPELL_ACHIEVEMENT = 139163,
};

enum Npcs
{
    NPC_STATUE_TRIGGER = 69467,

    NPC_FOCUSED_LIGHTNING = 69593,

};

enum Events
{
    // Boss
    EVENT_THUNDERING_THROW = 1,
    EVENT_THUNDERING_THROW_TOSS,
    EVENT_THUNDERING_THROW_DMG,
    EVENT_STATIC_BURST,
    EVENT_FOCUSED_LIGHTNING,
    EVENT_LIGHTNING_STORM_JUMP,
    EVENT_LIGHTNING_STORM,
    EVENT_IONIZATION,

    EVENT_BERSERK,

    // Focused Lightning   
    EVENT_FOCUSED_LIGHTNING_DMG,
    EVENT_START_MOVE,
    EVENT_CHECK_TARGETS,

    // Lightning Fissure
    EVENT_FISSURE_SEARCH,

    // Conductive    
    EVENT_BUFF_DEBUFF
};

enum Actions
{
    // Statue trigger
    ACTION_STATUE_WATER = 1 // Break Mogu statue and form Conductive Water.
};

enum Guids
{
    GUID_WATER = 1,
    GUID_PLAYER = 2,
    GUID_THROW_TARGET,
};

enum Timers
{
    TIMER_THUNDERING_THROW_F = 28000, // 30 seconds into the fight counted with below.
    TIMER_THUNDERING_THROW_S = 90000, // Every 90 seconds after that.

    TIMER_THUNDERING_THROW_TOSS = 2000,  // Actual throwing timer.
    TIMER_THUNDERING_THROW_DMG = 1500,  // Player damage timer.

    TIMER_BUFF_DEBUFF = 1100,  // Conductive Water buff / debuff refresh timer.

    TIMER_STATIC_BURST_F = 15000, // 15 seconds into the fight.
    TIMER_STATIC_BURST_S = 22000, // Every 22 seconds after that.

    TIMER_FOCUSED_LIGHTNING_F = 10000, // 10 seconds into the fight.
    TIMER_FOCUSED_LIGHTNING_S = 15000, // Every 15 seconds after that.

    TIMER_FOCUSED_LIGHTNING_DMG = 500,   // Focused Lightning periodic damage.

    TIMER_LIGHTNING_STORM_JUMPF = 88500, // Jump timer before Storm phase.
    TIMER_LIGHTNING_STORM_JUMPS = 88500, // Jump timer before Storm phase.

    TIMER_LIGHTNING_STORM = 1500,  // Every 90sec counted with above.

    TIMER_IONIZATION_F = 60000, // HEROIC, once per normal phase.
    TIMER_IONIZATION_S = 90000,

    TIMER_BERSERK = 540000,
};

Position const middlePos = { 5891.60f, 6263.18f, 124.11f };

#define MAX_MOGU_STATUES 4
Position const statueTriggerPlace[MAX_MOGU_STATUES] =
{
    { 5841.659f, 6313.456f, 162.212f, 5.38f }, // South-east
    { 5838.741f, 6210.887f, 159.103f, 0.74f }, // North-east
    { 5943.230f, 6210.887f, 161.288f, 2.30f }, // North-west
    { 5943.678f, 6315.564f, 163.020f, 3.88f }, // South-west
};

Position const statueThrowPlace[MAX_MOGU_STATUES] =
{
    { 5855.366f,  6301.588f, 157.095f }, // Jump South-east 2.39f O
    { 5853.612f,  6227.119f, 156.869f }, // Jump North-east 3.95f O
    { 5927.603f,  6224.533f, 158.019f }, // Jump North-west 5.69f O
    { 5928.242f,  6301.532f, 156.285f }, // Jump South-west 0.72f O
};

Position const waterSummonPlace[MAX_MOGU_STATUES] =
{
    { 5861.975f, 6293.226f, 124.035f }, // South-east
    { 5860.412f, 6232.429f, 124.035f }, // North-east
    { 5922.794f, 6237.926f, 124.035f }, // North-west
    { 5921.287f, 6288.865f, 124.035f }, // South-west
};

struct StatueData
{
public:

    StatueData(uint64 triggerGuid, uint64 fontainGuid, Position throwDest, Position waterDest)
    {
        m_TriggerGuid = triggerGuid;
        m_FontainGuid = fontainGuid;
        m_PlayerThrowDest = throwDest;
        m_WaterSummonDest = waterDest;
        m_IsActivated = false;
    }

    uint64 GetTriggerGuid() const
    {
        return m_TriggerGuid;
    }

    uint64 GetFontainGuid() const
    {
        return m_FontainGuid;
    }

    Position GetThrowDest() const
    {
        return m_PlayerThrowDest;
    }

    Position GetWaterSummonDest() const
    {
        return m_WaterSummonDest;
    }

    bool IsActivated() const
    {
        return m_IsActivated;
    }

    void Activate()
    {
        m_IsActivated = true;
    }

private:

    bool m_IsActivated;
    uint64 m_TriggerGuid;
    uint64 m_FontainGuid;
    Position m_PlayerThrowDest;
    Position m_WaterSummonDest;
};


class StatueController
{
    typedef std::set<StatueData*> StatuesSet;

public:

    StatueController(Unit* owner)
    {
        m_Owner = owner;
        m_LastActivatedStatue = 0;
    }

    void SpawnStatues()
    {
        ASSERT(m_Owner->GetInstanceScript());

        for (uint8 i = 0; i < MAX_MOGU_STATUES; i++)
        {
            if (Creature* pStatueTrigger = m_Owner->SummonCreature(NPC_STATUE_TRIGGER, statueTriggerPlace[i], TEMPSUMMON_MANUAL_DESPAWN))
            {
                Position throwDest = statueThrowPlace[i];
                Position waterDest = waterSummonPlace[i];
            }
        }
    }

    void ActivateNextStatueFor(Unit* target)
    {
        if (m_Statues.empty())
            return;

        StatueData* statue = GetRandomNotActivatedStatue();
        if (!statue)
            return;

        statue->Activate();

        // Spell doesn't work. Throw player at statue.
        target->GetMotionMaster()->MoveJump(Position(statue->GetThrowDest().GetPositionX(), statue->GetThrowDest().GetPositionY(), statue->GetThrowDest().GetPositionZ()), 25.0f, 25.0f);

        // Summon Conductive Water (by position, not spell).
        m_Owner->SummonCreature(NPC_CONDUCTIVE_WATER, statue->GetWaterSummonDest(), TEMPSUMMON_MANUAL_DESPAWN);
    }

private:

    StatueData* GetRandomNotActivatedStatue()
    {
        std::list<StatueData*> notActivatedStatues;
        for (StatuesSet::const_iterator itr = m_Statues.begin(); itr != m_Statues.end(); ++itr)
        {
            if (!(*itr)->IsActivated())
                notActivatedStatues.push_back(*itr);
        }

        if (notActivatedStatues.empty())
            return NULL;

        return Trinity::Containers::SelectRandomContainerElement(notActivatedStatues);
    }

private:

    Unit* m_Owner;
    std::set<StatueData*> m_Statues;
    uint64 m_LastActivatedStatue;
};

class boss_jinrokh_the_breaker : public CreatureScript
{
public:
    boss_jinrokh_the_breaker() : CreatureScript("boss_jinrokh_the_breaker") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_jinrokh_the_breakerAI(creature);
    }

    struct boss_jinrokh_the_breakerAI : public BossAI
    {
        boss_jinrokh_the_breakerAI(Creature* creature) : BossAI(creature, DATA_JINROKH)
        {
            me->setActive(true);


        }

        void Reset()
        {
            _Reset();

            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);

            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_FOCUSED_LIGHTNING_FIX);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_FLUIDITY);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_CONDUCTIVE_WATER);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_ELECTRIFIED_WATERS);

        }


        void EnterCombat(Unit* who)
        {
            Talk(SAY_AGGRO);

            events.ScheduleEvent(EVENT_THUNDERING_THROW, TIMER_THUNDERING_THROW_F);
            events.ScheduleEvent(EVENT_STATIC_BURST, TIMER_STATIC_BURST_F);
            events.ScheduleEvent(EVENT_FOCUSED_LIGHTNING, TIMER_FOCUSED_LIGHTNING_F);
            events.ScheduleEvent(EVENT_LIGHTNING_STORM_JUMP, TIMER_LIGHTNING_STORM_JUMPF);

            if (IsHeroic())
                events.ScheduleEvent(EVENT_IONIZATION, TIMER_IONIZATION_F);

            events.ScheduleEvent(EVENT_BERSERK, TIMER_BERSERK);

            instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);

            DoZoneInCombat();
            instance->SetBossState(DATA_JINROKH, IN_PROGRESS);
        }


        void JustDied(Unit* killer)
        {
            _JustDied();

            Talk(SAY_DEATH);

            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_FOCUSED_LIGHTNING_FIX);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_FLUIDITY);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_CONDUCTIVE_WATER);
            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_ELECTRIFIED_WATERS);

            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

 
    private:

        bool CheckForOutOfRange()
        {
            if (me->GetDistance(me->GetHomePosition()) > 70.0f)
            {
                EnterEvadeMode();
                return false;
            }
        }
      
    };
};

class npc_mogu_statue_trigger : public CreatureScript
{
public:
    npc_mogu_statue_trigger() : CreatureScript("npc_mogu_statue_trigger") { }

    struct npc_mogu_statue_trigger_AI : public ScriptedAI
    {
        npc_mogu_statue_trigger_AI(Creature* creature) : ScriptedAI(creature) { }

        void IsSummonedBy(Unit* /*summoner*/)
        {
            Reset();
        }

        void Reset()
        {
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE));
            me->SetReactState(REACT_PASSIVE);
        }

        void DoAction(int32 const action)
        {
            switch (action)
            {
            case ACTION_STATUE_WATER:
                me->AddAura(SPELL_CONDUCTIVE_VISUAL_2, me);
                break;

            default: break;
            }
        };

        void JustSummoned(Creature* summon)
        {
            summon->setActive(true);

            if (me->IsInCombat())
                summon->SetInCombatWithZone();
        }

        void UpdateAI(uint32 const diff) { }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_mogu_statue_trigger_AI(creature);
    }
};

class npc_jinrokh_the_breaker_conductive_water : public CreatureScript
{
public:
    npc_jinrokh_the_breaker_conductive_water() : CreatureScript("npc_jinrokh_the_breaker_conductive_water") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_jinrokh_the_breaker_conductive_water_AI(creature);
    }

    struct npc_jinrokh_the_breaker_conductive_water_AI : public ScriptedAI
    {
        npc_jinrokh_the_breaker_conductive_water_AI(Creature* creature) : ScriptedAI(creature) { }

        void IsSummonedBy(Unit* /*summoner*/)
        {
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE));
            me->AddAura(SPELL_CONDUCTIVE_VISUAL, me);
            me->AddAura(SPELL_CONDUCTIVE_WATER_GROW, me);
            me->SetReactState(REACT_PASSIVE);
            waterRadius = me->GetObjectScale() * 4.0f; // 4 yards original radius.
            events.ScheduleEvent(EVENT_BUFF_DEBUFF, TIMER_BUFF_DEBUFF);
        }

        float GetWaterRadius() const
        {
            return waterRadius;
        }

        void UpdateAI(uint32 const diff)
        {
            events.Update(diff);

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_BUFF_DEBUFF:
                {
                    waterRadius = me->GetObjectScale() * 4.0f;

                    std::list<Player*> players;
                    me->GetPlayerListInGrid(players, waterRadius);
                    if (!players.empty())
                    {
                        bool damageAura = me->HasAura(SPELL_CONDUCTIVE_VISUAL_3);

                        for (std::list<Player*>::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                        {
                            me->AddAura(SPELL_CONDUCTIVE_WATER, (*itr));
                            if (damageAura)
                            {
                                me->AddAura(SPELL_ELECTRIFIED_WATERS, (*itr));
                            }
                            else
                            {
                                me->AddAura(SPELL_FLUIDITY, (*itr));
                            }
                        }
                    }

                    events.ScheduleEvent(EVENT_BUFF_DEBUFF, TIMER_BUFF_DEBUFF);
                    break;
                }

                default: break;
                }
            }
        }
    private:
        float waterRadius;
    };
};

class npc_jinrokh_the_breaker_lightning_fissure : public CreatureScript
{
public:
    npc_jinrokh_the_breaker_lightning_fissure() : CreatureScript("npc_jinrokh_the_breaker_lightning_fissure") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_jinrokh_the_breaker_lightning_fissureAI(creature);
    }

    struct npc_jinrokh_the_breaker_lightning_fissureAI : public Scripted_NoMovementAI
    {
        npc_jinrokh_the_breaker_lightning_fissureAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {

        }

        void IsSummonedBy(Unit* /*summoner*/)
        {
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE));
            me->AddAura(SPELL_LIGHTNING_FISSURE_VIS, me);
            me->AddAura(SPELL_LIGHTNING_FISSURE_DMG, me);
        }

        void Reset()
        {
            me->SetReactState(REACT_PASSIVE);
        }
    };
};

// Thundering Throw (main cast spell) - 137180
class spell_jinrokh_the_breaker_thundering_throw : public SpellScriptLoader
{
public:
    spell_jinrokh_the_breaker_thundering_throw() : SpellScriptLoader("spell_jinrokh_the_breaker_thundering_throw") { }

    class spell_jinrokh_the_breaker_thundering_throw_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_jinrokh_the_breaker_thundering_throw_SpellScript);

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();
            Unit* target = GetHitUnit();

            if (!caster || !target)
                return;

            caster->CastSpell(target, SPELL_THUNDERING_THROW_GRAB, true);
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_jinrokh_the_breaker_thundering_throw_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_jinrokh_the_breaker_thundering_throw_SpellScript();
    }
};

// Thundering Throw (vehicle grab spell) - 137161
class spell_jinrokh_the_breaker_thundering_throw_grab : public SpellScriptLoader
{
public:
    spell_jinrokh_the_breaker_thundering_throw_grab() : SpellScriptLoader("spell_jinrokh_the_breaker_thundering_throw_grab") { }

    class spell_jinrokh_the_breaker_thundering_throw_grab_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_jinrokh_the_breaker_thundering_throw_grab_SpellScript);

        void HandleScript(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();
            Unit* target = GetHitUnit();

            if (!caster || !target)
                return;

            //target->CastSpell(caster, SPELL_RIDE_VEHICLE, true);
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_jinrokh_the_breaker_thundering_throw_grab_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_jinrokh_the_breaker_thundering_throw_grab_SpellScript();
    }
};

// Thundering Throw (AOE) - 137167
class spell_jinrokh_the_breaker_thundering_throw_aoe : public SpellScriptLoader
{
public:
    spell_jinrokh_the_breaker_thundering_throw_aoe() : SpellScriptLoader("spell_jinrokh_the_breaker_thundering_throw_aoe") { }

    class spell_jinrokh_the_breaker_thundering_throw_aoe_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_jinrokh_the_breaker_thundering_throw_aoe_SpellScript);

        void HandleHit(SpellEffIndex /*effIndex*/)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            if (Creature* pCreature = GetCaster()->ToCreature())
            {
                if (GetHitUnit()->GetGUID() != pCreature->AI()->GetGUID(GUID_THROW_TARGET))
                {
                    pCreature->AddAura(SPELL_THUNDERING_THROW_STUN, GetHitUnit());
                }
            }
        }

        void CalculateDamage(SpellEffIndex /*effIndex*/)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            if (Creature* pCreature = GetCaster()->ToCreature())
            {
                if (GetHitUnit()->GetGUID() == pCreature->AI()->GetGUID(GUID_THROW_TARGET))
                {
                    SetHitDamage(0);
                }
            }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_jinrokh_the_breaker_thundering_throw_aoe_SpellScript::HandleHit, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
            OnEffectHitTarget += SpellEffectFn(spell_jinrokh_the_breaker_thundering_throw_aoe_SpellScript::CalculateDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_jinrokh_the_breaker_thundering_throw_aoe_SpellScript();
    }
};

// Static Burst 137162.
class spell_jinrokh_the_breaker_static_burst : public SpellScriptLoader
{
public:
    spell_jinrokh_the_breaker_static_burst() : SpellScriptLoader("spell_jinrokh_the_breaker_static_burst") { }

    class spell_jinrokh_the_breaker_static_burst_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_jinrokh_the_breaker_static_burst_AuraScript);

        void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            Unit* caster = GetCaster();

            if (!caster || !caster->GetVictim())
                return;

            caster->CastCustomSpell(SPELL_STATIC_WOUND, SPELLVALUE_AURA_STACK, 10, caster->GetVictim());
        }

        void Register()
        {
            OnEffectRemove += AuraEffectRemoveFn(spell_jinrokh_the_breaker_static_burst_AuraScript::OnRemove, EFFECT_1, SPELL_AURA_PERIODIC_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_jinrokh_the_breaker_static_burst_AuraScript();
    }
};

class spell_jinrokh_the_breaker_static_wound_dmg : public SpellScriptLoader
{
public:
    spell_jinrokh_the_breaker_static_wound_dmg() : SpellScriptLoader("spell_jinrokh_the_breaker_static_wound_dmg") { }

    class spell_jinrokh_the_breaker_static_wound_dmg_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_jinrokh_the_breaker_static_wound_dmg_SpellScript);

        void HandleDamage(SpellEffIndex /*effIndex*/)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            if (GetCaster()->GetGUID() != GetHitUnit()->GetGUID())
            {
                SetHitDamage(GetHitDamage() / 3);
            }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_jinrokh_the_breaker_static_wound_dmg_SpellScript::HandleDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_jinrokh_the_breaker_static_wound_dmg_SpellScript();
    }
};

// Focus Lightning (main cast spell) - 137399.
class spell_jinrokh_the_breaker_focused_lightning : public SpellScriptLoader
{
public:
    spell_jinrokh_the_breaker_focused_lightning() : SpellScriptLoader("spell_jinrokh_the_breaker_focused_lightning") { }

    class spell_jinrokh_the_breaker_focused_lightning_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_jinrokh_the_breaker_focused_lightning_SpellScript);

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            GetCaster()->SummonCreature(NPC_FOCUSED_LIGHTNING, GetHitUnit()->GetPositionX() + 5.0f, GetHitUnit()->GetPositionY(), GetHitUnit()->GetPositionZ(), 0, TEMPSUMMON_MANUAL_DESPAWN);
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_jinrokh_the_breaker_focused_lightning_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_jinrokh_the_breaker_focused_lightning_SpellScript();
    }
};

// Lightning Storm (Heroic dummy damage) - 140819
class spell_jinrokh_the_breaker_lightning_storm_heroic_dummy : public SpellScriptLoader
{
public:
    spell_jinrokh_the_breaker_lightning_storm_heroic_dummy() : SpellScriptLoader("spell_jinrokh_the_breaker_lightning_storm_heroic_dummy") { }

    class spell_jinrokh_the_breaker_lightning_storm_heroic_dummy_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_jinrokh_the_breaker_lightning_storm_heroic_dummy_SpellScript);

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            Unit* target = GetHitUnit();

            if (!target)
                return;

            Unit* caster = target->FindNearestCreature(NPC_JINROKH, 200.0f, true) ? target->FindNearestCreature(NPC_JINROKH, 200.0f, true)->ToUnit() : NULL;

            if (!caster)
                return;

            caster->CastSpell(caster, SPELL_LIGHTNING_STRIKE_VIS, true);

            // Only happens on Heroic difficulties.
            if (!caster->GetMap()->IsHeroic())
                return;

            if (urand(1, 4) == 1) // 25 % chance means 1 in 4 ticks and should comply with the restrictions, we don't want to kill everybody :).
            {
                caster->CastSpell(target, SPELL_LIGHTNING_STORM_H_DMG, true);

                // Cast Lightning Diffusion on players in the back of the target in a line.
                Map::PlayerList const &PlayerList = caster->GetMap()->GetPlayers();
                if (!PlayerList.isEmpty())
                {
                    for (Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                    {
                        if (Player* player = i->GetSource())
                        {
                            if (player->ToUnit()->isInBack(target))
                            {
                                caster->CastSpell(player, SPELL_LIGHTNING_DIFFUSION, true);
                                break; // break the loop, the spell is chained.
                            }
                        }
                    }
                }
            }
        }

        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_jinrokh_the_breaker_lightning_storm_heroic_dummy_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_jinrokh_the_breaker_lightning_storm_heroic_dummy_SpellScript();
    }
};

// Ionization aura 138732.
class spell_jinrokh_the_breaker_ionization : public SpellScriptLoader
{
public:
    spell_jinrokh_the_breaker_ionization() : SpellScriptLoader("spell_jinrokh_the_breaker_ionization") { }

    class spell_jinrokh_the_breaker_ionization_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_jinrokh_the_breaker_ionization_SpellScript);

        void FilterTargets(std::list<WorldObject*>& targets)
        {
            if (!GetCaster())
                return;

            targets.remove_if(TanksCheck());

            // in 25 heroic
            if (targets.size() > 13)
            {
                Trinity::Containers::RandomResize(targets, 13);
            }
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_jinrokh_the_breaker_ionization_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_DEST_AREA_ENEMY);
        }

    private:

        class TanksCheck
        {
        public:
            TanksCheck() {}

            bool operator()(WorldObject* unit) const
            {
                if (!unit->IsPlayer())
                    return true;
                else
                    return false;
            }

        private:
            uint64 m_WaterGuid;
        };
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_jinrokh_the_breaker_ionization_SpellScript();
    }
};
   
// TODO: move to better place
class WaterGuidCheck
{
public:
    WaterGuidCheck(uint64 waterGuid) : m_WaterGuid(waterGuid) {}

    bool operator()(WorldObject* unit) const
    {
        if (!unit->ToUnit())
            return true;

        if (!unit->ToUnit()->HasAura(SPELL_CONDUCTIVE_WATER))
            return true;

        return false;
    }

private:
    uint64 m_WaterGuid;
};

class spell_jinrokh_the_breaker_focused_lightning_conduction : public SpellScriptLoader
{
public:
    spell_jinrokh_the_breaker_focused_lightning_conduction() : SpellScriptLoader("spell_jinrokh_the_breaker_focused_lightning_conduction") { }

    class spell_jinrokh_the_breaker_focused_lightning_conduction_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_jinrokh_the_breaker_focused_lightning_conduction_SpellScript);

        void FilterTargets(std::list<WorldObject*>& targets)
        {
            if (!GetCaster())
                return;

            Creature* pLightning = GetCaster()->ToCreature();
            if (!pLightning)
                return;

        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_jinrokh_the_breaker_focused_lightning_conduction_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_DEST_AREA_ENEMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_jinrokh_the_breaker_focused_lightning_conduction_SpellScript();
    }
};

class spell_jinrokh_the_breaker_ionization_conduction : public SpellScriptLoader
{
public:
    spell_jinrokh_the_breaker_ionization_conduction() : SpellScriptLoader("spell_jinrokh_the_breaker_ionization_conduction") { }

    class spell_jinrokh_the_breaker_ionization_conduction_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_jinrokh_the_breaker_ionization_conduction_SpellScript);

        void FilterTargets(std::list<WorldObject*>& targets)
        {
            if (!GetCaster())
                return;

            Aura const* aurWater = GetCaster()->GetAura(SPELL_CONDUCTIVE_WATER);
            if (!aurWater)
            {
                targets.clear();
                return;
            }

        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_jinrokh_the_breaker_ionization_conduction_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_DEST_AREA_ALLY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_jinrokh_the_breaker_ionization_conduction_SpellScript();
    }
};

void AddSC_boss_jinrokh_the_breaker()
{
    new boss_jinrokh_the_breaker();
    new npc_mogu_statue_trigger();
    new npc_jinrokh_the_breaker_conductive_water();
    new npc_jinrokh_the_breaker_lightning_fissure();
    new spell_jinrokh_the_breaker_thundering_throw();
    new spell_jinrokh_the_breaker_thundering_throw_grab();
    new spell_jinrokh_the_breaker_thundering_throw_aoe();
    new spell_jinrokh_the_breaker_static_burst();
    new spell_jinrokh_the_breaker_static_wound_dmg();               // 138389
    new spell_jinrokh_the_breaker_focused_lightning();
    new spell_jinrokh_the_breaker_lightning_storm_heroic_dummy();
    new spell_jinrokh_the_breaker_ionization();                     // 138732
    new spell_jinrokh_the_breaker_focused_lightning_conduction();
    new spell_jinrokh_the_breaker_ionization_conduction();          // 138743
}
