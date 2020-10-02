/*
 * Copyright (C) 2020 LatinCoreTeam
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

#include "Conversation.h"
#include "DBCEnums.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "World.h"
#include "WorldSession.h"
#include "ScriptedGossip.h"
#include "MotionMaster.h"
#include "PassiveAI.h"
#include "ScriptedCreature.h"
#include "TemporarySummon.h"


class AlliedRaces : public PlayerScript
{
public:
	AlliedRaces() : PlayerScript("AlliedRaces") { }

    void OnLogin(Player* p, bool firstLogin) override
    {
    	//Pandaren death knight
		if (firstLogin)
		{
			if (p->getRace() == RACE_PANDAREN_HORDE || RACE_PANDAREN_ALLIANCE && p->GetMapId() == 2297 && p->getClass() == 6)
			{
				p->GetSceneMgr().PlaySceneByPackageId(2780);
				p->SetLevel(58);
			}
		}
    }
};

// alliedrace dk valkyr battle maiden - npc id 228534
class npc_valkyr_battle_maiden_allied : public CreatureScript
{
public:
    npc_valkyr_battle_maiden_allied() : CreatureScript("npc_valkyr_battle_maiden_allied") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_valkyr_battle_maiden_alliedAI(creature);
    }

    struct npc_valkyr_battle_maiden_alliedAI : public PassiveAI
    {
        npc_valkyr_battle_maiden_alliedAI(Creature* creature) : PassiveAI(creature)
        {
            Initialize();
        }

        void Initialize()
        {
            FlyBackTimer = 500;
            phase = 0;
            x = 0.f;
            y = 0.f;
            z = 0.f;
        }

        uint32 FlyBackTimer;
        float x, y, z;
        uint32 phase;

        void Reset() override
        {
            me->setActive(true);
            me->SetVisible(false);
            me->AddUnitFlag(UNIT_FLAG_NON_ATTACKABLE);
            me->SetCanFly(true);

            me->GetPosition(x, y, z);
            z += 4.0f;
            x -= 3.5f;
            y -= 5.0f;
            me->GetMotionMaster()->Clear(false);
            me->SetPosition(x, y, z, 0.0f);
        }

        void UpdateAI(uint32 diff) override
        {
            if (FlyBackTimer <= diff)
            {
                Player* player = NULL;
                if (me->IsSummon())
                    if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                        player = summoner->ToPlayer();

                if (!player)
                    phase = 3;

                switch (phase)
                {
                    case 0:
                        me->SetWalk(false);
                        me->HandleEmoteCommand(EMOTE_STATE_FLYGRABCLOSED);
                        FlyBackTimer = 500;
                        break;
                    case 1:
                        player->GetClosePoint(x, y, z, me->GetObjectSize());
                        z += 2.5f;
                        x -= 2.0f;
                        y -= 1.5f;
                        me->GetMotionMaster()->MovePoint(0, x, y, z);
                        me->SetTarget(player->GetGUID());
                        me->SetVisible(true);
                        FlyBackTimer = 1;
                        break;
                    case 2:
                        DoCast(player, 51918, true); // this is only for visual effect!
                        me->HandleEmoteCommand(EMOTE_ONESHOT_CUSTOM_SPELL_01);
                        Talk(0, player);
                        player->TeleportTo(2297, 498.144653f, -2124.429932f, 840.856934f, 3.065104f);
                        player->ResurrectPlayer(100.0f, false);
                        FlyBackTimer = 3000;
                        break;
                    case 3:
                        me->SetVisible(false);
                        FlyBackTimer = 3000;
                        break;
                    case 4:
                        me->DisappearAndDie();
                        break;
                    default:
                        break;
                }
                ++phase;
            }
            else FlyBackTimer -= diff;
        }
    };
};

// allied dk zone - zone id 12951, 12952
class zone_allied_dk : public ZoneScript
{
public:
    zone_allied_dk() : ZoneScript("zone_allied_dk") { }

    void OnPlayerDeath(Player* player) override
    {
        if(player->GetMapId() == 2297)
            player->SummonCreature(228534, player->GetPosition(), TEMPSUMMON_MANUAL_DESPAWN, 0U, 0U, true);
    }

};


void AddSC_AlliedRaces()
{
    RegisterPlayerScript(AlliedRaces);
    new npc_valkyr_battle_maiden_allied();
    new zone_allied_dk();
}
