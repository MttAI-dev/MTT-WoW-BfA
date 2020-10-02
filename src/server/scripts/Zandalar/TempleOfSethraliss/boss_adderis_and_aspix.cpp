/*
 * Copyright (C) 2017-2020 WoWLegacy <https://github.com/AshamaneProject>
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

#include "ScriptMgr.h"
#include "temple_of_sethraliss.h"

enum Events {
    EVENT_CONDUCTION = 1,
    EVENT_STATIC_SHOCK = 2,
    EVENT_GALE_FORCE = 3,
    EVENT_ARCING_BLADE = 4,
    EVENT_CYCLONE_STRIKE = 5,
    EVENT_PEARL_OF_THUNDER = 6,
    EVENT_ARC_DASH = 7,
    EVENT_LIGHTNING_SHIELD_ASPIX = 8,
    EVENT_CHECK_ENERGY = 9,

};

enum Actions {
    ACTION_SHIELD_ASPIX = 1,
    ACTION_SHIELD_ADDERIS = 2,
};

enum Spells {
    SPELL_LIGHTNING_SHIELD_ASPIX = 273411,
    SPELL_LIGHTNING_SHIELD_AURA = 263246,
    SPELL_STATIC_SHOCK = 263257,
};

struct boss_aspix : public BossAI
{
    boss_aspix(Creature* creature) : BossAI(creature, DATA_ADDERIS_AND_ASPIX) { }

    void EnterCombat(Unit* who) override
    {
        BossAI::EnterCombat(who);
    }

    void Reset() override
    {
        me->CastSpell(nullptr, 274385);
        me->SetPower(POWER_ALL, 0);
        events.ScheduleEvent(EVENT_LIGHTNING_SHIELD_ASPIX, 1);
        if (Creature* adderis = me->FindNearestCreature(NPC_ADDERIS, 100, false))
        {
            adderis->Respawn(true);
            adderis->NearTeleportTo(adderis->GetHomePosition());
        }
        me->RemoveAura(SPELL_LIGHTNING_SHIELD_AURA);
        BossAI::Reset();
    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim())
            return;

        events.Update(diff);

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        while (uint32 eventId = events.ExecuteEvent())
        {
            switch (eventId)
            {
            case EVENT_CHECK_ENERGY:
                if (me->GetPower(POWER_ALL) == 100)
                {
                    me->CastSpell(me, SPELL_STATIC_SHOCK);
                    me->RemoveAura(SPELL_LIGHTNING_SHIELD_AURA);
                    if (Unit* adderis = me->FindNearestCreature(NPC_ADDERIS, 50, true))
                        adderis->GetAI()->DoAction(ACTION_SHIELD_ADDERIS);
                    break;
                }
                events.ScheduleEvent(EVENT_CHECK_ENERGY, 100);
            case EVENT_LIGHTNING_SHIELD_ASPIX:
                DoCast(SPELL_LIGHTNING_SHIELD_ASPIX);
                // triggered spells target X: 3334.772 Y: 3149.792 Z: 103.2884, X: 3330.362 Y: 3159.94 Z: 97.75124, X: 3332.996 Y: 3146.063 Z: 102.2195, X: 3346.23 Y: 3138.96 Z: 92.39861, X: 3338.792 Y: 3155.545 Z: 102.52,
                break;
            default:
                break;
            }
        }
        DoMeleeAttackIfReady();
    }

    void DoAction(int32 param) override
    {
        if (param == ACTION_SHIELD_ASPIX)
        {
            me->CastSpell(me, SPELL_LIGHTNING_SHIELD_ASPIX);
        }
    }

};

struct boss_adderis : public BossAI
{
    boss_adderis(Creature* creature) : BossAI(creature, DATA_ADDERIS_AND_ASPIX) { }

    void EnterCombat(Unit* who) override
    {
        BossAI::EnterCombat(who);
    }

    void Reset() override
    {
        me->SetPower(POWER_ALL, 0);
        if (Creature* aspix = me->FindNearestCreature(NPC_ASPIX, 100, false))
        {
            aspix->Respawn(true);
            aspix->NearTeleportTo(aspix->GetHomePosition());
        }
        me->RemoveAura(SPELL_LIGHTNING_SHIELD_AURA);
        BossAI::Reset();
    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim())
            return;

        events.Update(diff);

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        DoMeleeAttackIfReady();
    }

    void DoAction(int32 /*param*/) override
    {
    }

};

// 273411
class spell_lightning_shield : public AuraScript
{
    PrepareAuraScript(spell_lightning_shield);

    void OnRemove(AuraEffect const* /*&aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        if (Unit* caster = GetCaster())
            caster->AddAura(SPELL_LIGHTNING_SHIELD_AURA);
    }

    void Register() override
    {
        AfterEffectRemove += AuraEffectRemoveFn(spell_lightning_shield::OnRemove, EFFECT_0, SPELL_EFFECT_APPLY_AURA, AURA_EFFECT_HANDLE_REAL);
    }
};

void AddSC_boss_adderis_and_aspix()
{
    RegisterCreatureAI(boss_aspix);
    RegisterCreatureAI(boss_adderis);
    RegisterAuraScript(spell_lightning_shield);
}
