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

#ifndef MECHAGON_H
#define MECHAGON_H

#define DataHeader "M"

uint32 const EncounterCount = 8;

enum EncounterData
{
    DATA_KING_GOBBAMAK					= 0,
    DATA_GUNKER							= 1,
    DATA_TRIXIE_NAENO					= 2,
    DATA_HK_8_AERIAL_OPPRESION_UNIT		= 3,
	DATA_TUSSLE_TONKS					= 4,
	DATA_KUJO							= 5,
	DATA_MACHINISTS_GARDEN				= 6,
	DATA_KING_MECHAGON					= 7,
};

enum CreatureIds
{
	NPC_KING_GOBBAMAK					= 150159,
    NPC_GUNKER							= 150222,
    NPC_TRIXIE_NAENO					= 155407,
    NPC_HK_8_AERIAL_OPPRESION_UNIT		= 155157,
	NPC_TUSSLE_TONKS					= 144244,
	NPC_KUJO							= 144246,
	NPC_MACHINISTS_GARDEN				= 144248,
	NPC_KING_MECHAGON					= 154817,

    NPC_SQUIRT_BOT                      = 154741
};

#endif // MECHAGON_H
