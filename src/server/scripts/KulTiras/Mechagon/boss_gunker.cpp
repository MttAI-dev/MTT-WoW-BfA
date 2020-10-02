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

enum gunkerSpells : uint32
{
    SPELL_COALESCE				= 297835,
	
	SPELL_GOOPED_1				= 298124,
    SPELL_GOOPED_2				= 298259,
	
    SPELL_SLUDGE_BOLT			= 298212,
	
	SPELL_SPLATTER				= 297985,
	
    SPELL_TOXIC_WAVE			= 297834,

    SPELL_SANITIZING_SPRAY      = 297901,

    SPELL_SANITIZING_AURA       = 298145,

    SPELL_SANITIZING_SPRAY2      = 298216,

};

enum gunkerTalks : uint8
{
    TALK_AGGRO					= 0,
    TALK_DEATH					= 1,
};

enum gunkerEvents : uint8
{
    EVENT_COALESCE				= 1,
    EVENT_GOOPED				= 2,
	EVENT_SLUDGE_BOLT			= 3,
	EVENT_SPLATTER				= 4	,
	EVENT_TOXIC_WAVE			= 5	,
};


const Position squirt_bot_pos = { 618.557861f, -369.456085f, 0.868737f, 2.656733f };

// 150222 - gunker
struct boss_gunker : public BossAI
{
    boss_gunker(Creature* creature) : BossAI(creature, DATA_GUNKER) { }

    void InitializeAI() override
    {
        SetCombatMovement(false);
        BossAI::InitializeAI();
    }

    void Reset() override
    {
        BossAI::Reset();
        summons.DespawnAll();
    }

    void EnterCombat(Unit* who) override
    {
        Talk(TALK_AGGRO);
        me->SummonCreature(NPC_SQUIRT_BOT, squirt_bot_pos);
        events.ScheduleEvent(EVENT_COALESCE, 8000);
		events.ScheduleEvent(EVENT_GOOPED, 4000);
        events.ScheduleEvent(EVENT_SLUDGE_BOLT, 7000);
		events.ScheduleEvent(EVENT_SPLATTER, 4000);
        events.ScheduleEvent(EVENT_TOXIC_WAVE, 7000);

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
                case EVENT_COALESCE:
                    DoCastVictim(SPELL_COALESCE);
                    events.ScheduleEvent(EVENT_COALESCE, 20000);
                    break;
                case EVENT_GOOPED:
                    DoCastVictim(SPELL_GOOPED_1);
					DoCastVictim(SPELL_GOOPED_2);
                    events.ScheduleEvent(EVENT_GOOPED, 38000);
                    break;
                case EVENT_SLUDGE_BOLT:
                    DoCastVictim(SPELL_SLUDGE_BOLT);
                    events.ScheduleEvent(EVENT_SLUDGE_BOLT, 30000);
                    break;
					
				case EVENT_SPLATTER:
                    DoCastVictim(SPELL_SPLATTER);
                    events.ScheduleEvent(EVENT_SPLATTER, 30000);
                    break;
				
				case EVENT_TOXIC_WAVE:
                    DoCastVictim(SPELL_TOXIC_WAVE);
                    events.ScheduleEvent(EVENT_TOXIC_WAVE, 30000);
                    break;

                default:
                    break;
            }
        }

        DoMeleeAttackIfReady();
    }
};
//154741 npc_squirt_bot
struct npc_squirt_bot : public ScriptedAI
{
    npc_squirt_bot(Creature* pCreature) : ScriptedAI(pCreature) { }

    void UpdateAI(uint32 diff) override
    {
        DoCast(SPELL_SANITIZING_SPRAY);
        DoCast(SPELL_SANITIZING_AURA);
        DoCast(SPELL_SANITIZING_SPRAY2);
    }
};



void AddSC_boss_gunker()
{
    RegisterCreatureAI(npc_squirt_bot);
    RegisterCreatureAI(boss_gunker);
}
