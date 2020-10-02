/*
 Nordrassil and LatinCore Proyect 2020
 Cuba Developer

 */

#ifndef __BATTLEGROUNDAF_H
#define __BATTLEGROUNDAF_H

#include "Arena.h"

enum BattlegroundAFObjectTypes
{
    BG_AF_OBJECT_DOOR_1 = 0,
    BG_AF_OBJECT_DOOR_2 = 1,
    BG_AF_OBJECT_BUFF_1 = 2,
    BG_AF_OBJECT_BUFF_2 = 3,
    BG_AF_OBJECT_MAX = 4
};

enum BattlegroundAFObjects
{
    BG_AF_OBJECT_TYPE_DOOR_1 = 250431,
    BG_AF_OBJECT_TYPE_DOOR_2 = 250430,
    BG_AF_OBJECT_TYPE_BUFF_1 = 184663,
    BG_AF_OBJECT_TYPE_BUFF_2 = 184664
};

class BattlegroundAF : public Arena
{
public:
    BattlegroundAF();

    /* inherited from BattlegroundClass */
    void StartingEventCloseDoors() override;
    void StartingEventOpenDoors() override;

    void HandleAreaTrigger(Player* source, uint32 trigger, bool entered) override;
    bool SetupBattleground() override;
    void FillInitialWorldStates(WorldPackets::WorldState::InitWorldStates& packet) override;
};

#endif
