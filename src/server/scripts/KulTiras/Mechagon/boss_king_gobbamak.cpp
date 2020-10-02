/*
 * Copyright (C) 2017-2020 LatincoreBfa
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
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "ScriptMgr.h"
#include "SpellScript.h"
#include "SpellAuras.h"
#include "SpellAuraEffects.h"
#include "mechagon.h"

enum kinggobbamakSpells : uint32
{
    SPELL_CHARGED_SMASH_1		= 297254,
	SPELL_CHARGED_SMASH_2		= 297256,
	
    SPELL_ELECTRICAL_CHARGE		= 297257,
	
    SPELL_RUMBLE				= 297261,
};

enum kinggobbamakTalks : uint8
{
    TALK_AGGRO					= 0,
    TALK_DEATH					= 1,
};

enum kinggobbamakEvents : uint8
{
    EVENT_CHARGED_SMASH			= 1,
    EVENT_ELECTRICAL_CHARGE		= 2,
	EVENT_RUMBLE				= 3,
};


// 150159 - king_gobbamak
struct boss_king_gobbamak : public BossAI
{
    boss_king_gobbamak(Creature* creature) : BossAI(creature, DATA_KING_GOBBAMAK) { }

    void InitializeAI() override
    {
        BossAI::InitializeAI();
    }

    void Reset() override
    {
        BossAI::Reset();
    }

    void EnterCombat(Unit* who) override
    {
        Talk(TALK_AGGRO);
        events.ScheduleEvent(EVENT_CHARGED_SMASH, 8000);
		events.ScheduleEvent(EVENT_ELECTRICAL_CHARGE, 4000);
        events.ScheduleEvent(EVENT_RUMBLE, 7000);

        BossAI::EnterCombat(who);
    }

    void JustDied(Unit* killer) override
    {
        Talk(TALK_DEATH);
        BossAI::JustDied(killer);
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
                case EVENT_CHARGED_SMASH:
                    DoCastVictim(SPELL_CHARGED_SMASH_1);
                    DoCastVictim(SPELL_CHARGED_SMASH_2);
                    events.ScheduleEvent(EVENT_CHARGED_SMASH, 20000);
                    break;
                case EVENT_ELECTRICAL_CHARGE:
                    DoCastVictim(SPELL_ELECTRICAL_CHARGE);
                    events.ScheduleEvent(EVENT_ELECTRICAL_CHARGE, 38000);
                    break;
                case EVENT_RUMBLE:
                    DoCastVictim(SPELL_RUMBLE);
                    events.ScheduleEvent(EVENT_RUMBLE, 30000);
                    break;

                default:
                    break;
            }
        }

        DoMeleeAttackIfReady();
    }
};


void AddSC_boss_king_gobbamak()
{
    RegisterCreatureAI(boss_king_gobbamak);
}
