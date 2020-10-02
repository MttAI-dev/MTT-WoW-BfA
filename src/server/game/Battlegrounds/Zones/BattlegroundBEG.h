/*Nordrassil and LatinCore 2020
 Cuban Developer
*/

#ifndef __BATTLEGROUNDBEG_H
#define __BATTLEGROUNDBEG_H

#include "Arena.h"

class BattlegroundBEG : public Arena
{
public:
    BattlegroundBEG();
    ~BattlegroundBEG();

    void StartingEventCloseDoors() override;
    void StartingEventOpenDoors() override;
    bool SetupBattleground() override;

    void HandleAreaTrigger(Player* source, uint32 trigger, bool entered) override;
    void FillInitialWorldStates(WorldPackets::WorldState::InitWorldStates& packet) override;
};

#endif
