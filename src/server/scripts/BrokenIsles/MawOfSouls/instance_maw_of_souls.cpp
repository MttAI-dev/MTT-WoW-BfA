/*
 Latincore bfa 2020
 ---MistiX----

 */

#include "ScriptMgr.h"
#include "InstanceScript.h"
#include "GameObject.h"
#include "maw_of_souls.h"

DoorData const doorData[] =
{
    { GO_WALL_OF_SOULS,     DATA_HARBARON, DOOR_TYPE_ROOM },
{ GO_WALL_OF_SOULS_2,   DATA_HARBARON, DOOR_TYPE_ROOM },
{ GO_WALL_OF_SOULS_3,   DATA_HARBARON, DOOR_TYPE_ROOM },
{ GO_MURKY_FOG,         DATA_HARBARON, DOOR_TYPE_ROOM },
{ GO_COLLISION_WALL,    DATA_HARBARON, DOOR_TYPE_ROOM },
{ 0, 0, DOOR_TYPE_ROOM }
};


class instance_maw_of_souls : public InstanceMapScript
{
public:
    instance_maw_of_souls() : InstanceMapScript(MOSScriptName, 1492) { }

    struct instance_maw_of_souls_InstanceScript : public InstanceScript
    {
        instance_maw_of_souls_InstanceScript(InstanceMap* map) : InstanceScript(map)
        {
            SetHeaders(DataHeader);
            SetBossNumber(EncounterCount);
            LoadDoorData(doorData);
        }

        void OnGameObjectCreate(GameObject* go) override
        {
            if (!go)
                return;

            switch (go->GetEntry())
            {
            case GO_WALL_OF_SOULS:
            case GO_WALL_OF_SOULS_2:
            case GO_WALL_OF_SOULS_3:
            case GO_MURKY_FOG:
            case GO_COLLISION_WALL:
                AddDoor(go, true);
                break;

            default: break;
            }
        }

        void OnGameObjectRemove(GameObject* go) override
        {
            if (!go)
                return;

            switch (go->GetEntry())
            {
            case GO_WALL_OF_SOULS:
            case GO_WALL_OF_SOULS_2:
            case GO_WALL_OF_SOULS_3:
            case GO_MURKY_FOG:
            case GO_COLLISION_WALL:
                AddDoor(go, false);
                break;

            default: break;
            }
        }
    };

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_maw_of_souls_InstanceScript(map);
    }
};

void AddSC_instance_maw_of_souls()
{
    new instance_maw_of_souls();
}

