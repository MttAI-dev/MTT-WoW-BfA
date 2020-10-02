/*
Nordrassil Proyect Cuba and LatinCore 2020
Nagrand Arena (Legion) 
*/

#include "BattlegroundNNA.h"
#include "Player.h"
#include "WorldStatePackets.h"

BattlegroundNNA::BattlegroundNNA()
{
    BgObjects.resize(BG_NNA_OBJECT_MAX);
}

void BattlegroundNNA::StartingEventCloseDoors()
{
    for (uint32 i = BG_NNA_OBJECT_DOOR_1; i <= BG_NNA_OBJECT_DOOR_2; ++i)
        SpawnBGObject(i, RESPAWN_IMMEDIATELY);
}

void BattlegroundNNA::StartingEventOpenDoors()
{
    for (uint32 i = BG_NNA_OBJECT_DOOR_1; i <= BG_NNA_OBJECT_DOOR_2; ++i)
        DoorOpen(i);

    for (uint32 i = BG_NNA_OBJECT_BUFF_1; i <= BG_NNA_OBJECT_BUFF_2; ++i)
        SpawnBGObject(i, 60);
}

void BattlegroundNNA::HandleAreaTrigger(Player* player, uint32 trigger, bool entered)
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

void BattlegroundNNA::FillInitialWorldStates(WorldPackets::WorldState::InitWorldStates& packet)
{
    packet.Worldstates.emplace_back(0xE1A, 1);
    Arena::FillInitialWorldStates(packet);
}

bool BattlegroundNNA::SetupBattleground()
{
    // Gates
    if (!AddObject(BG_NNA_OBJECT_DOOR_1, BG_NNA_OBJECT_TYPE_DOOR_1, -2018.7f, 6609.176f, 12.69044f, 2.0546f, 0.0f, 0.0f, 0.0f, RESPAWN_IMMEDIATELY)
        || !AddObject(BG_NNA_OBJECT_DOOR_2, BG_NNA_OBJECT_TYPE_DOOR_2, -2067.6f, 6698.806f, 12.680f, 5.275f, 0.0f, 0.0f, 0.0f, RESPAWN_IMMEDIATELY)
        // Buffs
        || !AddObject(BG_NNA_OBJECT_BUFF_1, BG_NNA_OBJECT_TYPE_BUFF_1, -1995.53f, 6679.6782f, 13.069580f, 3.694f, 0.0f, 0.0f, 0.0f, 120)
        || !AddObject(BG_NNA_OBJECT_BUFF_2, BG_NNA_OBJECT_TYPE_BUFF_2, -2091.4f, 6627.999f, 12.9556f, 0.578f, 0.0f, 0.70068f, -0.0f, 120))
    {
        TC_LOG_ERROR("sql.sql", "BatteGroundNNA: Failed to spawn some object!");
        return false;
    }

    return true;
}
