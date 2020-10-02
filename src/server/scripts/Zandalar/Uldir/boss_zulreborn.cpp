#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "ScriptMgr.h"
#include "ObjectAccessor.h"
#include "Player.h"
#include "ScriptedEscortAI.h"
#include "ScriptedGossip.h"
#include "ScriptedCreature.h"
#include "TemporarySummon.h"
#include "ScriptMgr.h"
#include "GameObject.h"
#include "MotionMaster.h"
#include "Creature.h"
#include "InstanceScript.h"
#include "Map.h"
#include "Object.h"
#include "GameObjectData.h"
#include "uldir.h"

enum ZulSpells
{

};

enum ZulTexts
{

};

///< Uldir Boss Zul - 138967
struct uldir_boss_zul : public BossAI
{
    uldir_boss_zul(Creature* creature) : BossAI(creature, DATA_BOSS_ZUL) {}
};

//Missing Script

void AddSC_boss_zul()
{
	//RegisterCreatureAI(uldir_boss_zul);
}