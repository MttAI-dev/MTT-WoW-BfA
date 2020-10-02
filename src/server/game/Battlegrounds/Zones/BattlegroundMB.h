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

#ifndef __BATTLEGROUNDMB_H
#define __BATTLEGROUNDMB_H

#include "Arena.h"

enum BattlegroundMBObjectTypes
{
    BG_MB_OBJECT_DOOR_1 = 0,
    BG_MB_OBJECT_DOOR_2 = 1,
    BG_MB_OBJECT_BUFF_1 = 2,
    BG_MB_OBJECT_BUFF_2 = 3,
    BG_MB_OBJECT_MAX = 4
};

enum BattlegroundMBObjects
{
    BG_MB_OBJECT_TYPE_DOOR_1 = 250431, // Esta es la puerta de la Horda
    BG_MB_OBJECT_TYPE_DOOR_2 = 250430, // Esta es la puerta de la Alianza


    BG_MB_OBJECT_TYPE_BUFF_1 = 184663, // Buff Originales Arenas Mugambala
    BG_MB_OBJECT_TYPE_BUFF_2 = 184664  // Buff 2 Originales Arenas Mugambala
};

class BattlegroundMB : public Arena
{
public:
    BattlegroundMB();

    /* BattlegroundClass */
    void StartingEventCloseDoors() override;
    void StartingEventOpenDoors() override;

    void HandleAreaTrigger(Player* source, uint32 trigger, bool entered) override;
    bool SetupBattleground() override;
    void FillInitialWorldStates(WorldPackets::WorldState::InitWorldStates& packet) override;
};

#endif
