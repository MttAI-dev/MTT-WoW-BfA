#include "Creature.h"
#include "GameObject.h"
#include "Map.h"
#include "ScriptedCreature.h"
#include "ScriptMgr.h"
#include "InstanceScript.h"
#include "antorus.h"

ObjectData const creatureData[] =
{
    { BOSS_GAROTHI_WORLDBREAKER,            DATA_GAROTHI_WORLDBREAKER   },
    { NPC_FHARG,                            DATA_FHARG                  },
    { NPC_SHATUG ,                          DATA_SHATUG                 },
    { NPC_ADMIRAL_SVIRAX,                   DATA_ADMIRAL_SVIRAX         },
    { NPC_PORTAL_KEEPER_HASABEL,            DATA_PORTAL_KEEPER_HASABEL  },
    { NPC_ESSENCE_OF_EONAR,                 DATA_ESSENCE_OF_EONAR       },
    { NPC_IMONAR_THE_SOULHUNTER,            DATA_IMONAR_THE_SOULHUNTER  },
    { NPC_KINGAROTH,                        DATA_KINGAROTH              },
    { NPC_VARIMATHRAS,                      DATA_VARIMATHRAS            },
    { NPC_NOURA_MOTHER_OF_FLAMES,           DATA_NOURA_MOTHER_OF_FLAMES },
    { NPC_AGGRAMAR,                         DATA_AGGRAMAR               },
    { NPC_ARGUS_THE_UNMAKER,                DATA_ARGUS_THE_UNMAKER      },
    { NPC_ASARA_MOTHER_OF_NIGHT,            DATA_ASARA_MOTHER_OF_NIGHT  },
    { NPC_DIIMA_MOTHER_OF_GLOOM,            DATA_DIIMA_MOTHER_OF_GLOOM  },
    { NPC_THURAYA_MOTHER_OF_THE_COSMOS,     DATA_THURAYA_MOTHER_OF_THE_COSMOS  },
    { NPC_ANNIHILATOR,                      DATA_ANNIHILATOR            },
    { NPC_DECIMATOR,                        DATA_DECIMATOR              },
    { NPC_ANNIHILATION,                     DATA_ANNIHILATION           },
    { 0,                            0                           }  // END
};

DoorData const doorData[] =
{
    { GO_DOOR_1,        DATA_GAROTHI_WORLDBREAKER,   DOOR_TYPE_PASSAGE },
    { GO_DOOR_2,        DATA_GAROTHI_WORLDBREAKER,   DOOR_TYPE_PASSAGE },
    { GO_DOOR_3,        DATA_GAROTHI_WORLDBREAKER,   DOOR_TYPE_PASSAGE },
    { GO_DOOR_4,        DATA_GAROTHI_WORLDBREAKER,   DOOR_TYPE_PASSAGE },
    { GO_BOSS6_1,       DATA_IMONAR_THE_SOULHUNTER,   DOOR_TYPE_PASSAGE },
    { GO_BOSS6_2,       DATA_IMONAR_THE_SOULHUNTER,   DOOR_TYPE_PASSAGE },
    { GO_BOSS7_1,       DATA_KINGAROTH,               DOOR_TYPE_PASSAGE },
    { GO_BOSS9_1,       DATA_NOURA_MOTHER_OF_FLAMES,  DOOR_TYPE_ROOM },
    { GO_BOSS9_2,       DATA_NOURA_MOTHER_OF_FLAMES,  DOOR_TYPE_PASSAGE },
    { GO_BOSS_VARIMATHRAS,       DATA_VARIMATHRAS,  DOOR_TYPE_ROOM },
    { GO_DOOR_PORTAL_KEEPER_HASABEL,       DATA_PORTAL_KEEPER_HASABEL,  DOOR_TYPE_ROOM },
    { GO_BOSS10,        DATA_AGGRAMAR,                DOOR_TYPE_ROOM },
};

struct instance_antorus_the_burning_throne : public InstanceScript
{
    instance_antorus_the_burning_throne(InstanceMap* map) : InstanceScript(map)
    {
        SetHeaders(DataHeader);
        SetBossNumber(DATA_MAX_ENCOUNTERS);
        LoadDoorData(doorData);
        LoadObjectData(creatureData, nullptr);
    }

    void OnCreatureCreate(Creature* creature) override
    {
        InstanceScript::OnCreatureCreate(creature);

        switch (creature->GetEntry())
        {
        case NPC_ANNIHILATION:
            if (Creature* garothi = GetCreature(DATA_GAROTHI_WORLDBREAKER))
                garothi->AI()->JustSummoned(creature);
            break;
        default:
            break;
        }
    }

    bool SetBossState(uint32 type, EncounterState state) override
    {
        if (!InstanceScript::SetBossState(type, state))
        {
            return false;
        }

        switch (type)
        {
        case DATA_GAROTHI_WORLDBREAKER:
        {
            if (state == DONE)
            {

            }
            break;
        }
        case DATA_FHARG:
        {
            if (state == DONE)
            {

            }
            break;
        }
        default:
            break;
        }
    }
};

void AddSC_instance_antorus()
{
    RegisterInstanceScript(instance_antorus_the_burning_throne, 1712);
}
