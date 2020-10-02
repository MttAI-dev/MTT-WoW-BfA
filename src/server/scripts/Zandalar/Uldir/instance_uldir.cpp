#include "Creature.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "World.h"
#include "InstanceScript.h"
#include "uldir.h"

struct instance_uldir : public InstanceScript
{
    instance_uldir(InstanceMap* map) : InstanceScript(map) { }

    void Initialize() override
    {
        SetBossNumber(EncounterData::DATA_MAX_ENCOUNTERS);

        talocGUID = ObjectGuid::Empty;
        motherGUID = ObjectGuid::Empty;
        vectisGUID = ObjectGuid::Empty;
        devourerGUID = ObjectGuid::Empty;
        zekvozGUID = ObjectGuid::Empty;
        zulGUID = ObjectGuid::Empty;
        mythraxGUID = ObjectGuid::Empty;
        ghuunGUID = ObjectGuid::Empty;
    }

    void OnCreatureCreate(Creature* creature) override
    {
        switch (creature->GetEntry())
        {
        case CreatureIds::BOSS_TALOC:
            talocGUID = creature->GetGUID();
            break;

        case CreatureIds::BOSS_MOTHER:
            motherGUID = creature->GetGUID();
            break;

        case CreatureIds::BOSS_VECTIS:
            vectisGUID = creature->GetGUID();
            break;

        case CreatureIds::BOSS_ZEKVOZ:
            zekvozGUID = creature->GetGUID();
            break;

        case CreatureIds::BOSS_DEVOURER:
            devourerGUID = creature->GetGUID();
            break;
        case CreatureIds::BOSS_ZUL:
            zulGUID = creature->GetGUID();
            break;

        case CreatureIds::BOSS_MYTHRAX:
            mythraxGUID = creature->GetGUID();
            break;

        case CreatureIds::BOSS_GHUUN:
            ghuunGUID = creature->GetGUID();
            break;

        default:
            break;
        }
    }

    void OnUnitDeath(Unit* unit) override
    {
        switch (unit->GetEntry())
        {
        case CreatureIds::BOSS_TALOC:
            break;

        case CreatureIds::BOSS_MOTHER:
            break;

        case CreatureIds::BOSS_VECTIS:
        case CreatureIds::BOSS_ZEKVOZ:
        case CreatureIds::BOSS_DEVOURER:
            break;

        case CreatureIds::BOSS_ZUL:
            break;

        case CreatureIds::BOSS_MYTHRAX:
            break;

        case CreatureIds::BOSS_GHUUN:
            break;

        default:
            break;
        }
    }

    ObjectGuid GetGuidData(uint32 identifier) const override
    {
        switch (identifier)
        {
        case CreatureIds::BOSS_TALOC:
            return talocGUID;

        case CreatureIds::BOSS_MOTHER:
            return motherGUID;

        case CreatureIds::BOSS_VECTIS:
            return vectisGUID;

        case CreatureIds::BOSS_ZEKVOZ:
            return zekvozGUID;

        case CreatureIds::BOSS_DEVOURER:
            return devourerGUID;

        case CreatureIds::BOSS_ZUL:
            return zulGUID;

        case CreatureIds::BOSS_MYTHRAX:
            return mythraxGUID;

        case CreatureIds::BOSS_GHUUN:
            return ghuunGUID;

        default:
            return ObjectGuid::Empty;
        }
    }

    ObjectGuid talocGUID;
    ObjectGuid motherGUID;
    ObjectGuid vectisGUID;
    ObjectGuid devourerGUID;
    ObjectGuid zekvozGUID;
    ObjectGuid zulGUID;
    ObjectGuid mythraxGUID;
    ObjectGuid ghuunGUID;
};

void AddSC_instance_uldir()
{
    RegisterInstanceScript(instance_uldir, 1861);
}
