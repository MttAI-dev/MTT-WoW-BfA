#include "ScriptMgr.h"
#include "Player.h"
#include "InstanceScript.h"
#include "battle_of_dazaralor.h"
//  INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`, `insideResurrection`) VALUES ('2070', '0', 'instance_battle_of_dazaralor', '0', '1');
struct instance_battle_of_dazaralor : public InstanceScript
{
	instance_battle_of_dazaralor(InstanceMap* map) : InstanceScript(map), isHorde(false), isAlliance(false)
	{
		SetHeaders(DataHeader);
		SetBossNumber(EncounterCount);
	}

	ObjectGuid frida_guid;
	ObjectGuid rawani_guid;

	void OnPlayerEnter(Player* player)
	{			
		if (isHorde == true || isAlliance == true)
		{
			return;
		}
	}

private:
	bool isHorde;
	bool isAlliance;
};

void AddSC_instance_battle_of_dazaralor()
{
	RegisterInstanceScript(instance_battle_of_dazaralor, 2070);
}
