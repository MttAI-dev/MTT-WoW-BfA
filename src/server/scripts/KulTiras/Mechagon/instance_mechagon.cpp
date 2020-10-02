/*
* Copyright (C) 2019-2020 LatincoreBfa
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

#include "Player.h"
#include "ScriptMgr.h"
#include "InstanceScript.h"
#include "mechagon.h"

struct instance_mechagon : public InstanceScript
{
    instance_mechagon(InstanceMap* map) : InstanceScript(map)
    {
        SetHeaders(DataHeader);
        SetBossNumber(EncounterCount);
    }



    void OnCreatureCreate(Creature* creature) override
    {
        switch (creature->GetEntry())
        {
        case NPC_KING_GOBBAMAK:
            KinggobbamakGUID = creature->GetGUID();
            break;
			
		case NPC_GUNKER:
            GunkerGUID = creature->GetGUID();
            break;
			
		case NPC_TRIXIE_NAENO:
            TrixienaenoGUID = creature->GetGUID();
            break;
			
		case NPC_HK_8_AERIAL_OPPRESION_UNIT:
            Hk8aerialoppresionunitGUID = creature->GetGUID();
			
            break;
		case NPC_TUSSLE_TONKS:
            TussletonksGUID = creature->GetGUID();
			
            break;
		case NPC_KUJO:
            KujoGUID = creature->GetGUID();
			
            break;
		case NPC_MACHINISTS_GARDEN:
            MachinistsgardenGUID = creature->GetGUID();
			
            break;
		case NPC_KING_MECHAGON:
            KingmechagonGUID = creature->GetGUID();
            break;
			
        default:
            break;
        }
    };

    ObjectGuid GetGuidData(uint32 type) const override
    {
        switch (type)
        {
        case DATA_KING_GOBBAMAK:
            return KinggobbamakGUID;
			
		case DATA_GUNKER:
			return GunkerGUID;
		
		case DATA_TRIXIE_NAENO:
			return TrixienaenoGUID;
		
		case DATA_HK_8_AERIAL_OPPRESION_UNIT:
			return Hk8aerialoppresionunitGUID;
			
		case DATA_TUSSLE_TONKS:
			return TussletonksGUID;
			
		case DATA_KUJO:
			return KujoGUID;
			
		case DATA_MACHINISTS_GARDEN:
			return MachinistsgardenGUID;
		
		case DATA_KING_MECHAGON:
			return KingmechagonGUID;
			
        default:
            break;
        }
        return ObjectGuid::Empty;
    }

protected:
    ObjectGuid KinggobbamakGUID;
	ObjectGuid GunkerGUID;
	ObjectGuid TrixienaenoGUID;
	ObjectGuid Hk8aerialoppresionunitGUID;
	ObjectGuid TussletonksGUID;
	ObjectGuid KujoGUID;
	ObjectGuid MachinistsgardenGUID;
	ObjectGuid KingmechagonGUID;
};
void AddSC_instance_mechagon()
{
    RegisterInstanceScript(instance_mechagon, 2097);
}
