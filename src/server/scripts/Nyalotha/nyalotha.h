#ifndef NYALOTHA
#define NYALOTHA

#define DataHeader "N"

uint32 const EncounterCount = 12;

enum EncounterData
{
    DATA_WRATHION = 1,
    DATA_MAUT,
    DATA_SKITRA,
    DATA_XANESH,
    DATA_HIVE,
    DATA_SHADHAR,
    DATA_DRESTAGATH,
    DATA_ILGYNOTH,
    DATA_VEXIONA,
    DATA_RADEN,
    DATA_FURY_OF_NZOTH,
    DATA_NZOTH,
};

enum Creatures
{
    //Wrathion
    NPC_WRATHION_INTRO              = 161720,
    NPC_WRATHION                    = 156818,
    NPC_MOLTEN_ERUPTION_STALKER     = 157348,
    NPC_CRACKLING_SHARD             = 158327, // on death 307017
    NPC_ASHWALKER_ASSASIN           = 160291,

    //Maut
    NPC_MAUT                        = 156523,
    NPC_DARK_MANIFESTATION          = 156650,
};

#endif
