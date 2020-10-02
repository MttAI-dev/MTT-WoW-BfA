/*
 * Copyright (C) 2020 LatinCoreTeam
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

 //Missing scripts

#include "throne_of_thunder.h"
#include "GameObject.h"
#include "GameObjectAI.h"
#include "ScriptMgr.h"
#include "Creature.h"
#include "InstanceScript.h"
#include "Log.h"

DoorData const doorData[] =
{
    {GO_JINROKH_PRE_DOOR,          DATA_JINROKH,               DOOR_TYPE_ROOM,     BOUNDARY_NONE   },
    {GO_JINROKH_ENT_DOOR,          DATA_JINROKH,               DOOR_TYPE_PASSAGE,  BOUNDARY_NONE   },
    {GO_HORRIDON_PRE_DOOR,         DATA_HORRIDON,              DOOR_TYPE_ROOM,     BOUNDARY_NONE   },
    {GO_HORRIDON_ENT_DOOR,         DATA_HORRIDON,              DOOR_TYPE_PASSAGE,  BOUNDARY_NONE   },
    {GO_COUNCIL_LENT_DOOR,         DATA_COUNCIL_OF_ELDERS,     DOOR_TYPE_ROOM,     BOUNDARY_NONE   },
    {GO_COUNCIL_RENT_DOOR,         DATA_COUNCIL_OF_ELDERS,     DOOR_TYPE_ROOM,     BOUNDARY_NONE   },
    {GO_COUNCIL_EX_DOOR,           DATA_COUNCIL_OF_ELDERS,     DOOR_TYPE_PASSAGE,  BOUNDARY_NONE   },
    {GO_TORTOS_EX_DOOR,            DATA_TORTOS,                DOOR_TYPE_PASSAGE,  BOUNDARY_NONE   },
    {GO_MEGAERA_EX_DOOR,           DATA_MEGAERA,               DOOR_TYPE_PASSAGE,  BOUNDARY_NONE   },
    {GO_JI_KUN_EX_DOOR,            DATA_JI_KUN,                DOOR_TYPE_PASSAGE,  BOUNDARY_NONE   },
    {GO_PRIMORDIUS_ENT_DOOR,       DATA_PRIMORDIUS,            DOOR_TYPE_ROOM,     BOUNDARY_NONE   },
    {GO_PRIMORDIUS_EX_DOOR,        DATA_PRIMORDIUS,            DOOR_TYPE_PASSAGE,  BOUNDARY_NONE   },
    {GO_IRON_QON_ENT_DOOR,         DATA_IRON_QON,              DOOR_TYPE_ROOM,     BOUNDARY_NONE   },
    {GO_WIND_WALL,                 DATA_IRON_QON,              DOOR_TYPE_ROOM,     BOUNDARY_NONE   },
    {GO_IRON_QON_EX_DOOR,          DATA_IRON_QON,              DOOR_TYPE_PASSAGE,  BOUNDARY_NONE   },
    {GO_DOOR_TO_THE_QUEENS_CHAMBER_2, DATA_IRON_QON,           DOOR_TYPE_PASSAGE,  BOUNDARY_NONE   },
    {GO_TWIN_ENT_DOOR,             DATA_TWIN_CONSORTS,         DOOR_TYPE_ROOM,     BOUNDARY_NONE   },
    {GO_TWIN_EX_DOOR,              DATA_TWIN_CONSORTS,         DOOR_TYPE_PASSAGE,  BOUNDARY_NONE   },
    {GO_S_RA_DEN_ENT_DOOR,         DATA_LEI_SHEN,              DOOR_TYPE_PASSAGE,  BOUNDARY_NONE   },
    {GO_RA_DEN_ENT_DOOR,           DATA_RA_DEN,                DOOR_TYPE_ROOM,     BOUNDARY_NONE   },
    {0,                         0,                             DOOR_TYPE_ROOM,     BOUNDARY_NONE   }, // END
};
