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

///< Npc Warmother Ye'du - 142242
struct npc_warmother_yedu : public ScriptedAI
{
    npc_warmother_yedu(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
    }
};

///< Npc Warmother Van'ji - 142243
struct npc_warmother_vanji : public ScriptedAI
{
    npc_warmother_vanji(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
    }
};

///< Npc Warmother Rakkali - 142148
struct npc_warmother_rakkali : public ScriptedAI
{
    npc_warmother_rakkali(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
    }
};

///< Npc Speaker Obara - 142207
struct npc_speaker_obara : public ScriptedAI
{
    npc_speaker_obara(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
    }
};

void AddSC_uldir()
{

}