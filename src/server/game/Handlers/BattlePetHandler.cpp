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

#include "WorldSession.h"
#include "BattlePet.h"
#include "BattlePetMgr.h"
#include "BattlePetPackets.h"
#include "Player.h"

void WorldSession::HandleBattlePetRequestJournal(WorldPackets::BattlePet::BattlePetRequestJournal& /*battlePetRequestJournal*/)
{
    GetBattlePetMgr()->SendJournal();
}

void WorldSession::HandleJoinPetBattleQueue(WorldPackets::BattlePet::NullCmsg& /*packet*/)
{
   // if (!sWorld->getBoolConfig(CONFIG_PET_BATTLES))
        return;

  //  if (_player->_petBattleId)
    {
      //  SendPetBattleRequestFailed(PETBATTLE_REQUEST_IN_BATTLE);
        return;
    }

    if (_player->IsInCombat())
    {
       // SendPetBattleRequestFailed(PETBATTLE_REQUEST_NOT_WHILE_IN_COMBAT);
        return;
    }

  //  std::shared_ptr<BattlePetInstance> playerPets[MAX_PETBATTLE_SLOTS];
    size_t playerPetCount = 0;

    // Temporary pet buffer
   // for (auto& playerPet : playerPets)
      //  playerPet = std::shared_ptr<BattlePetInstance>();

    // Load player pets
   // auto petSlots = _player->GetBattlePetCombatTeam();
    uint32 deadPetCount = 0;

  //  for (size_t i = 0; i < MAX_PETBATTLE_SLOTS; ++i)
    {
        //if (!petSlots[i])
           // continue;

       // if (playerPetCount >= MAX_PETBATTLE_SLOTS || playerPetCount >= _player->GetUnlockedPetBattleSlot())
           // break;

      //  if (petSlots[i]->Health == 0)
            deadPetCount++;

      //  playerPets[playerPetCount] = std::make_shared<BattlePetInstance>();
      //  playerPets[playerPetCount]->CloneFrom(petSlots[i]);
      //  playerPets[playerPetCount]->Slot = playerPetCount;
     //   playerPets[playerPetCount]->OriginalBattlePet = petSlots[i];

        ++playerPetCount;
    }

    if (deadPetCount && deadPetCount == playerPetCount)
    {
      //  SendPetBattleRequestFailed(PETBATTLE_REQUEST_ALL_PETS_DEAD);
        return;
    }

    if (!playerPetCount)
    {
     //   SendPetBattleRequestFailed(PETBATTLE_REQUEST_NO_PETS_IN_SLOT);
        return;
    }

   // sPetBattleSystem->JoinQueue(_player);
}

void WorldSession::HandleBattlePetSetBattleSlot(WorldPackets::BattlePet::BattlePetSetBattleSlot& battlePetSetBattleSlot)
{
    if (BattlePet* pet = GetBattlePetMgr()->GetPet(battlePetSetBattleSlot.PetGuid))
        if (WorldPackets::BattlePet::BattlePetSlot* slot = GetBattlePetMgr()->GetSlot(battlePetSetBattleSlot.Slot))
            slot->Pet = *pet;
}

void WorldSession::HandleBattlePetDeletePetCheat(WorldPackets::BattlePet::BattlePetGuidRead& /*packet*/)
{ }

void WorldSession::HandleBattlePetModifyName(WorldPackets::BattlePet::BattlePetModifyName& battlePetModifyName)
{
    if (BattlePet* pet = GetBattlePetMgr()->GetPet(battlePetModifyName.PetGuid))
    {
        pet->Name = battlePetModifyName.Name;

        if (pet->SaveInfo != BATTLE_PET_NEW)
            pet->SaveInfo = BATTLE_PET_CHANGED;
    }
}

void WorldSession::HandleBattlePetDeletePet(WorldPackets::BattlePet::BattlePetDeletePet& battlePetDeletePet)
{
    GetBattlePetMgr()->RemovePet(battlePetDeletePet.PetGuid);
}

void WorldSession::HandleBattlePetSetFlags(WorldPackets::BattlePet::BattlePetSetFlags& battlePetSetFlags)
{
    if (BattlePet* pet = GetBattlePetMgr()->GetPet(battlePetSetFlags.PetGuid))
    {
        if (battlePetSetFlags.ControlType == FLAGS_CONTROL_TYPE_APPLY)
            pet->Flags |= battlePetSetFlags.Flags;
        else // FLAGS_CONTROL_TYPE_REMOVE
            pet->Flags &= ~battlePetSetFlags.Flags;

        if (pet->SaveInfo != BATTLE_PET_NEW)
            pet->SaveInfo = BATTLE_PET_CHANGED;
    }
}

void WorldSession::HandleCageBattlePet(WorldPackets::BattlePet::CageBattlePet& cageBattlePet)
{
    GetBattlePetMgr()->CageBattlePet(cageBattlePet.PetGuid);
}

void WorldSession::HandleBattlePetSummon(WorldPackets::BattlePet::BattlePetSummon& battlePetSummon)
{
    if (*_player->m_activePlayerData->SummonedBattlePetGUID != battlePetSummon.PetGuid)
        GetBattlePetMgr()->SummonPet(battlePetSummon.PetGuid);
    else
        GetBattlePetMgr()->DismissPet();
}

void WorldSession::HandleBattlePetUpdateNotify(WorldPackets::BattlePet::BattlePetGuidRead & packet)
{

}
