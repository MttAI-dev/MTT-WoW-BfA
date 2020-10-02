/*Black Rok Hold Arena 
100% MistiX
Black Empire Server
*/

#ifndef __BATTLEGROUNDBRH_H
#define __BATTLEGROUNDBRH_H

#include "Arena.h"

class BattlegroundBRH : public Arena
{
public:
    BattlegroundBRH();
    ~BattlegroundBRH();

    void StartingEventCloseDoors() override;
    void StartingEventOpenDoors() override;
    bool SetupBattleground() override;
};

#endif
