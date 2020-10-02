#include "nyalotha.h"
#include "GameObject.h"
#include "GameObjectAI.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "InstanceScript.h"

enum WrathionIntroTexts
{
	SAY_WRATH_0 = 0,
	SAY_WRATH_1,	
};

//161720
struct npc_wrathion_intro_161720 : public ScriptedAI
{
	npc_wrathion_intro_161720(Creature* c) : ScriptedAI(c) { }

	void MoveInLineOfSight(Unit* unit) override
	{
		if (unit->IsPlayer())
		{
			if (me->HasUnitFlag2(UNIT_FLAG2_REGENERATE_POWER) && me->GetDistance2d(unit) >= 1.4f)
			{
				me->RemoveUnitFlag2(UNIT_FLAG2_REGENERATE_POWER);
				wrathion_intro = true;

				if (wrathion_intro == true)
				{
					wrathion_intro = false;

					me->GetScheduler().Schedule(1s, [this] (TaskContext context)
					{
						Talk(0);
					});

					me->GetScheduler().Schedule(13s, [this] (TaskContext context)
					{
						Talk(1);
					});

					me->GetScheduler().Schedule(24s, [this] (TaskContext context)
					{							
						std::list<Creature*> c_li;
						me->GetCreatureListWithEntryInGrid(c_li, NPC_WRATHION, 25.0f);
						for (auto & wrathion : c_li)						
						{
							wrathion->SetVisible(true);
							wrathion->AI()->Talk(8);						
						}
					});
					me->GetScheduler().Schedule(27s, [this] (TaskContext context)
					{
						std::list<Creature*> c_li;
						me->GetCreatureListWithEntryInGrid(c_li, NPC_WRATHION, 25.0f);
						for (auto & wrathion : c_li)
						{
							wrathion->RemoveUnitFlag(UNIT_FLAG_IMMUNE_TO_PC);
							wrathion->RemoveUnitFlag(UNIT_FLAG_IMMUNE_TO_NPC);
						}
						me->SetVisible(false);
					});
				}
			}
		}
	}

	void UpdateAI(uint32 diff) override
	{
		scheduler.Update(diff);
	}

private:
	TaskScheduler scheduler;
	bool wrathion_intro;
};

void AddSC_nyalotha()
{
	RegisterCreatureAI(npc_wrathion_intro_161720);
}

