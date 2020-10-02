/*
 * Copyright (C) 2017-2020 WoW Legacy <https://github.com/AshamaneProject>
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

#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "ScriptMgr.h"
#include "shrine_of_the_storm.h"
#include "SpellHistory.h"

enum Council
{
    SPELL_COSMETIC_REINFORCING_WARD     = 274690,
    SPELL_HINDERING_CLEAVE              = 267899,
    SPELL_REINFORCING_WARD              = 267905,
    SPELL_REINFORCING_WARD_DMG_DEC      = 267904,
    SPELL_REINFORCING_WARD_REMOVE_NEG   = 267952,
    SPELL_BLESSING_OF_IRONSIDES         = 267901,

    SPELL_BLESSING_OF_THE_TEMPEST       = 267830,
    SPELL_SLICING_BLAST                 = 267818,
    SPELL_SWIFTNESS_WARD                = 267891,
    SPELL_SWIFTNESS_WARD_BUFF           = 267888,
    SPELL_COSMETIC_SWIFTNESS_WARD       = 274689,
    SPELL_BLOWBACK                      = 267842,
    SPELL_BLOWBACK_VISUAL               = 267836,
    SPELL_BLOWBACK_DMG                  = 267838,

    SPELL_PERMANENT_FEIGN_DEATH         = 70628,

    EVENT_REGEN_MANA = 1,
};

// 134063
struct boss_brother_ironhull : public BossAI
{
    boss_brother_ironhull(Creature* creature) : BossAI(creature, DATA_TIDESAGE_COUNCIL) { }

    void ScheduleTasks() override
    {
        events.ScheduleEvent(EVENT_REGEN_MANA, 1s);
        events.ScheduleEvent(SPELL_HINDERING_CLEAVE, 6s);
        if (IsHeroic() || IsMythic())
            events.ScheduleEvent(SPELL_BLESSING_OF_IRONSIDES, 5s);
    }

    void DamageTaken(Unit* /*attacker*/, uint32& damage) override
    {
        if (Creature* faye = instance->GetCreature(NPC_GALECALLER_FAYE))
        {
            if (me->GetHealth() <= damage)
            {
                if (faye->HasAura(SPELL_PERMANENT_FEIGN_DEATH))
                {
                    // both bosses dead, loot
                    faye->RemoveUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NOT_ATTACKABLE_1));
                    faye->KillSelf();
                    instance->UpdateEncounterStateForKilledCreature(me->GetEntry(), me);
                }
                else
                {
                    damage = me->GetHealth() - 1;
                    DoCastSelf(SPELL_PERMANENT_FEIGN_DEATH, true);
                    me->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NOT_ATTACKABLE_1));
                    events.Reset();
                    me->StopMoving();
                }
            }
        }
    }

    void JustDied(Unit* killer) override
    {
        BossAI::JustDied(killer);
    }

    void Reset() override
    {
        BossAI::Reset();
        me->RemoveUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NOT_ATTACKABLE_1));
        me->SetPower(POWER_MANA, 0);
        DoCastSelf(SPELL_COSMETIC_REINFORCING_WARD);
    }

    void EnterEvadeMode(EvadeReason why) override
    {
        _DespawnAtEvade(5);
        BossAI::EnterEvadeMode(why);

        if (Creature* faye = me->FindNearestCreature(NPC_GALECALLER_FAYE, 100.0f, false))
            faye->Respawn(true);
        if (Creature* faye = me->FindNearestCreature(NPC_GALECALLER_FAYE, 100.0f, true))
            if (!faye->IsInEvadeMode())
                faye->AI()->EnterEvadeMode();
    }

    void OnPowerChanged(Powers power, int32 /*oldValue*/, int32& newValue) override
    {
        if (power != POWER_MANA || newValue < me->GetMaxPower(POWER_MANA) || !me->IsInCombat())
            return;

        events.ScheduleEvent(SPELL_REINFORCING_WARD, 0s);
    }

    void EnterCombat(Unit* unit) override
    {
        BossAI::EnterCombat(unit);
        me->SetPower(POWER_MANA, 0);
        if (Creature* faye = me->FindNearestCreature(NPC_GALECALLER_FAYE, 100.0f, true))
        {
            faye->RemoveAurasDueToSpell(SPELL_COSMETIC_SWIFTNESS_WARD);
            faye->AI()->AttackStart(unit);
        }
    }

    void ExecuteEvent(uint32 eventId) override
    {
        switch (eventId)
        {
        case SPELL_REINFORCING_WARD:
            if (Creature* faye = instance->GetCreature(NPC_GALECALLER_FAYE))
                me->CastSpell(faye->GetPosition(), SPELL_REINFORCING_WARD, false);
            break;
        case EVENT_REGEN_MANA:
            me->ModifyPower(POWER_MANA, me->GetMaxPower(POWER_MANA) * 0.0333f);
            events.Repeat(1s);
            break;
        case SPELL_HINDERING_CLEAVE:
            DoCastSelf(SPELL_HINDERING_CLEAVE);
            events.Repeat(18s);
            break;
        case SPELL_BLESSING_OF_IRONSIDES:
            DoCastSelf(SPELL_BLESSING_OF_IRONSIDES);
            events.Repeat(32s);
            break;
        }
    }
};

// 134058
struct boss_galecaller_faye : public BossAI
{
    boss_galecaller_faye(Creature* creature) : BossAI(creature, DATA_TIDESAGE_COUNCIL) { }

    void ScheduleTasks() override
    {
        events.ScheduleEvent(EVENT_REGEN_MANA, 1s);
        events.ScheduleEvent(SPELL_SLICING_BLAST, urand(3000, 6000));
        if (IsHeroic() || IsMythic())
            events.ScheduleEvent(SPELL_BLESSING_OF_THE_TEMPEST, 11s);
    }

    void DamageTaken(Unit* /*attacker*/, uint32& damage) override
    {
        if (Creature* ironhull = instance->GetCreature(NPC_BROTHER_IRONHULL))
        {
            if (me->GetHealth() <= damage)
            {
                if (ironhull->HasAura(SPELL_PERMANENT_FEIGN_DEATH))
                {
                    // both bosses dead, loot
                    ironhull->RemoveUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NOT_ATTACKABLE_1));
                    ironhull->KillSelf();
                    instance->UpdateEncounterStateForKilledCreature(ironhull->GetEntry(), ironhull);
                }
                else
                {
                    damage = me->GetHealth() - 1;
                    DoCastSelf(SPELL_PERMANENT_FEIGN_DEATH, true);
                    me->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NOT_ATTACKABLE_1));
                    events.Reset();
                    me->StopMoving();
                }
            }
        }
    }

    void JustDied(Unit* killer) override
    {
        BossAI::JustDied(killer);
    }

    void Reset() override
    {
        BossAI::Reset();
        me->RemoveUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NOT_ATTACKABLE_1));
        me->SetPower(POWER_MANA, 50000);
        DoCastSelf(SPELL_COSMETIC_SWIFTNESS_WARD);
    }

    void OnPowerChanged(Powers power, int32 /*oldValue*/, int32& newValue) override
    {
        if (power != POWER_MANA || newValue < me->GetMaxPower(POWER_MANA) || !me->IsInCombat())
            return;

        events.ScheduleEvent(SPELL_SWIFTNESS_WARD, 0s);
    }

    void EnterCombat(Unit* unit) override
    {
        BossAI::EnterCombat(unit);
        me->SetPower(POWER_MANA, 50000);
        if (Creature* ironhull = me->FindNearestCreature(NPC_BROTHER_IRONHULL, 100.0f, true))
        {
            ironhull->RemoveAurasDueToSpell(SPELL_COSMETIC_REINFORCING_WARD);
            ironhull->AI()->AttackStart(unit);
        }
    }

    void EnterEvadeMode(EvadeReason why) override
    {
        _DespawnAtEvade(30);
        BossAI::EnterEvadeMode(why);

        if (Creature* ironhull = me->FindNearestCreature(NPC_BROTHER_IRONHULL, 100.0f, false))
            ironhull->Respawn(true);
        if (Creature* ironhull = me->FindNearestCreature(NPC_BROTHER_IRONHULL, 100.0f, true))
            if (!ironhull->IsInEvadeMode())
                ironhull->AI()->EnterEvadeMode();
    }

    void ExecuteEvent(uint32 eventId) override
    {
        switch (eventId)
        {
        case SPELL_SWIFTNESS_WARD:
            if (Creature* ironhull = instance->GetCreature(NPC_BROTHER_IRONHULL))
                me->CastSpell(ironhull->GetPosition(), SPELL_SWIFTNESS_WARD, false);
            break;
        case EVENT_REGEN_MANA:
            me->ModifyPower(POWER_MANA, me->GetMaxPower(POWER_MANA) * 0.0333f);
            events.Repeat(1s);
            break;
        case SPELL_SLICING_BLAST:
            DoCastSelf(SPELL_SLICING_BLAST);
            events.Repeat(urand(3000, 6000));
            break;
        case SPELL_BLESSING_OF_THE_TEMPEST:
            DoCastSelf(SPELL_BLESSING_OF_THE_TEMPEST);
            events.Repeat(15s);
            break;
        }
    }

    void OnSpellCastInterrupt(SpellInfo const* /*spell*/) override
    {
        if (me->HasAura(SPELL_BLESSING_OF_THE_TEMPEST))
        {
            me->GetSpellHistory()->LockSpellSchool(SPELL_SCHOOL_MASK_NATURE, 0); // reset school lockout from kick, counterspell etc interrupts
            DoCastSelf(SPELL_BLOWBACK, true);
        }
    }
};

// 267905 - Reinforcing Ward
class spell_reinforcing_ward : public SpellScript
{
    PrepareSpellScript(spell_reinforcing_ward);

    void HandleAfterCast()
    {
        GetCaster()->SetPower(POWER_MANA, 0);
    }

    void Register() override
    {
        AfterCast += SpellCastFn(spell_reinforcing_ward::HandleAfterCast);
    }
};

// 267905 - Reinforcing Ward
// 267891 - Swiftness Ward
class spell_tidesage_wards : public SpellScript
{
    PrepareSpellScript(spell_tidesage_wards);

    void HandleAfterCast()
    {
        GetCaster()->SetPower(POWER_MANA, 0);
    }

    void Register() override
    {
        AfterCast += SpellCastFn(spell_tidesage_wards::HandleAfterCast);
    }
};
    
// Spell 267905 Reinforcing Ward
// AT 17771
struct at_reinforcing_ward : AreaTriggerAI
{
    at_reinforcing_ward(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }
    
    void OnInitialize() override
    {
        at->SetPeriodicProcTimer(1000);
    }

    void OnPeriodicProc() override
    {
        for (ObjectGuid guid : at->GetInsideUnits())
            if (Unit* unit = ObjectAccessor::GetUnit(*at, guid))
                unit->CastSpell(unit, SPELL_REINFORCING_WARD_REMOVE_NEG, true);
    }

    void OnUnitEnter(Unit* unit) override
    {
        if (!unit->HasAura(SPELL_REINFORCING_WARD_DMG_DEC))
            unit->CastSpell(unit, SPELL_REINFORCING_WARD_DMG_DEC, true);
    }

    void OnUnitExit(Unit* unit) override
    {
        unit->RemoveAurasDueToSpell(SPELL_REINFORCING_WARD_DMG_DEC);
    }
};

// Spell 267891 Swiftness Ward
// AT 17766
struct at_swiftness_ward : AreaTriggerAI
{
    at_swiftness_ward(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    void OnUnitEnter(Unit* unit) override
    {
        if (!unit->HasAura(SPELL_SWIFTNESS_WARD_BUFF))
            unit->CastSpell(unit, SPELL_SWIFTNESS_WARD_BUFF, true);
    }

    void OnUnitExit(Unit* unit) override
    {
        unit->RemoveAurasDueToSpell(SPELL_SWIFTNESS_WARD_BUFF);
    }
};

// 136314
struct npc_blowback : public ScriptedAI
{
    npc_blowback(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
        DoCastSelf(SPELL_BLOWBACK_VISUAL, true);
        me->SetReactState(REACT_PASSIVE);
        me->GetMotionMaster()->MoveRandom(10.0f);
    }
};

// Spell 267836 Blowback
// AT 100106
struct at_blowback : AreaTriggerAI
{
    at_blowback(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    void OnInitialize() override
    {
        at->SetPeriodicProcTimer(1000);
    }

    void OnPeriodicProc() override
    {
        if (Unit* caster = at->GetCaster())
            for (ObjectGuid guid : at->GetInsideUnits())
                if (Unit* unit = ObjectAccessor::GetUnit(*at, guid))
                    if (caster->IsValidAttackTarget(unit))
                        caster->CastSpell(unit, SPELL_BLOWBACK_DMG, true);
    }
};

void AddSC_boss_tidesage_council()
{
    RegisterCreatureAI(boss_brother_ironhull);
    RegisterCreatureAI(boss_galecaller_faye);
    RegisterCreatureAI(npc_blowback);
    RegisterSpellScript(spell_tidesage_wards);
    RegisterAreaTriggerAI(at_reinforcing_ward);
    RegisterAreaTriggerAI(at_swiftness_ward);
    RegisterAreaTriggerAI(at_blowback);
}
