
#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "InstanceScript.h"
#include "Map.h"
#include "MotionMaster.h"
#include "ObjectAccessor.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellInfo.h"
#include "SpellScript.h"
#include "TemporarySummon.h"
#include "uldir.h"

enum MythraxSpells
{

};

enum MythraxTexts
{

};

///< Uldir Boss Mythrax - 134546
struct uldir_boss_mythrax : public BossAI
{
	uldir_boss_mythrax(Creature* creature) : BossAI(creature, DATA_BOSS_MYTHRAX) {}
};

void AddSC_boss_mythrax()
{
	//RegisterCreatureAI(uldir_boss_mythrax);
}
