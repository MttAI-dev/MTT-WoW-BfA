////////////////////////////////////////////////////////////////////////////////
// 
//    This is the Script that makes the new Battle for Azeroth Arena functional
//    in version 8.0.1 and here it is implemented full only the detail is missing
//    of the buffs as soon as I have the info I implement it but it is already 
//    functional 80%
//    
//    By MistiX Develper
//    Copyright (C) 2020 
//  
////////////////////////////////////////////////////////////////////////////////

#include "BattlegroundMB.h"
#include "Player.h"
#include "WorldStatePackets.h"

BattlegroundMB::BattlegroundMB()
{
    BgObjects.resize(BG_MB_OBJECT_MAX);
}

void BattlegroundMB::StartingEventCloseDoors()
{
    for (uint32 i = BG_MB_OBJECT_DOOR_1; i <= BG_MB_OBJECT_DOOR_2; ++i)
        SpawnBGObject(i, RESPAWN_IMMEDIATELY);
}

void BattlegroundMB::StartingEventOpenDoors()
{
    for (uint32 i = BG_MB_OBJECT_DOOR_1; i <= BG_MB_OBJECT_DOOR_2; ++i)
        DoorOpen(i);

    for (uint32 i = BG_MB_OBJECT_BUFF_1; i <= BG_MB_OBJECT_BUFF_2; ++i)
        SpawnBGObject(i, 60);
}

void BattlegroundMB::HandleAreaTrigger(Player* player, uint32 trigger, bool entered)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;

    switch (trigger)
    {
    case 4536:
    case 4537:
        break;
    default:
        Battleground::HandleAreaTrigger(player, trigger, entered);
        break;
    }
}

void BattlegroundMB::FillInitialWorldStates(WorldPackets::WorldState::InitWorldStates& packet)
{
    packet.Worldstates.emplace_back(0xE1A, 1);
    Arena::FillInitialWorldStates(packet);
}

bool BattlegroundMB::SetupBattleground()
{
    /// Door is custom need snifer
    if (!AddObject(BG_MB_OBJECT_DOOR_1, BG_MB_OBJECT_TYPE_DOOR_1, -1947.074707f, 1355.202515f, 34.755638f, 3.816283f, 0.0f, 0.0f, 0.0f, RESPAWN_IMMEDIATELY)
         || !AddObject(BG_MB_OBJECT_DOOR_2, BG_MB_OBJECT_TYPE_DOOR_2, -1961.725952f, 1354.591675f, 34.430664f, 4.683993f, 0.0f, 0.0f, 0.0f, RESPAWN_IMMEDIATELY)

        /// Buffs
        || !AddObject(BG_MB_OBJECT_BUFF_1, BG_MB_OBJECT_TYPE_BUFF_1, -1962.612305f, 1245.579956f, 34.431129f, 1.652806f, 0.0f, 0.0f, 0.0f, 120)
        || !AddObject(BG_MB_OBJECT_BUFF_2, BG_MB_OBJECT_TYPE_BUFF_2, -1962.612305f, 1245.579956f, 34.431129f, 1.652806f, 0.0f, 0.70068f, -0.0f, 120))
    {
        TC_LOG_ERROR("sql.sql", "BatteGroundMB: Failed to spawn some object!");
        return false;
    }

    return true;
}
