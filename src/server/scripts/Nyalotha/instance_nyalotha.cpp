#include "ScriptMgr.h"
#include "Player.h"
#include "InstanceScript.h"
#include "nyalotha.h"

const Position annex_of_prophecy_platform_pos = { -1760.0f, -43.0f, -518.0f, 6.26f };

struct instance_nyalotha : public InstanceScript
{
	instance_nyalotha(InstanceMap* map) : InstanceScript(map)
    {
        SetHeaders(DataHeader);
        SetBossNumber(EncounterCount);
    }

    void OnPlayerEnter(Player* plr) override
    {
        if (InstanceScript* instance = plr->GetInstanceScript())
        {
            if (instance->GetBossState(DATA_WRATHION) == DONE)
            {
                plr->TeleportTo(2217, -1760.0f, -43.0f, -518.0f, 6.26f);
            }
        }
    }

    void OnCreatureCreate(Creature* cre) override
    {
        InstanceScript::OnCreatureCreate(cre);        
    }
};

void AddSC_instance_nyalotha()
{
    RegisterInstanceScript(instance_nyalotha, 2217);
}
