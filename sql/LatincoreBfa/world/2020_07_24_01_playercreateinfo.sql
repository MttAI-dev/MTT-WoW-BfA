UPDATE `playercreateinfo_cast_spell` SET `spell`=274907 WHERE `racemask`=2048 AND `classmask`=4;
DELETE FROM `playercreateinfo_cast_spell` WHERE `racemask`=8589934592 AND `classmask`=4;
UPDATE `playercreateinfo_cast_spell` SET `spell`=274905,`note`='Maghar Orc - Hunter - Shadowmoon Stalker' WHERE `racemask`=8192 AND `classmask`=4;
DELETE FROM `playercreateinfo_cast_spell` WHERE `racemask`=34359738368 AND `classmask`=4;

DELETE FROM `player_factionchange_items` WHERE `alliance_id`=2874 AND `horde_id`=45978; -- deprecated

-- tabard and mounts allied races
REPLACE INTO `playercreateinfo_item` VALUES (29,0,157758,1);
REPLACE INTO `playercreateinfo_item` VALUES (29,0,156486,1);

REPLACE INTO `playercreateinfo_item` VALUES (30,0,157756,1);
REPLACE INTO `playercreateinfo_item` VALUES (30,0,155656,1);

REPLACE INTO `playercreateinfo_cast_spell` VALUES (34,6,270562,'Dark Iron Dwarf Paladin - Darkforge Ram Mount');
REPLACE INTO `playercreateinfo_item` VALUES (34,0,161329,1);
REPLACE INTO `playercreateinfo_item` VALUES (34,0,161331,1);

REPLACE INTO `playercreateinfo_item` VALUES (32,0,165010,1);
REPLACE INTO `playercreateinfo_item` VALUES (32,0,164762,1);

REPLACE INTO `playercreateinfo_item` VALUES (37,0,174068,1);
REPLACE INTO `playercreateinfo_item` VALUES (37,0,174067,1);

REPLACE INTO `playercreateinfo_item` VALUES (27,0,157759,1);
REPLACE INTO `playercreateinfo_item` VALUES (27,0,156487,1);

REPLACE INTO `playercreateinfo_item` VALUES (28,0,157757,1);
REPLACE INTO `playercreateinfo_item` VALUES (28,0,155662,1);

REPLACE INTO `playercreateinfo_item` VALUES (36,0,161328,1);
REPLACE INTO `playercreateinfo_item` VALUES (36,0,161330,1);

REPLACE INTO `playercreateinfo_item` VALUES (31,0,165001,1);
REPLACE INTO `playercreateinfo_item` VALUES (31,0,157870,1);

REPLACE INTO `playercreateinfo_item` VALUES (35,0,174069,1);
REPLACE INTO `playercreateinfo_item` VALUES (35,0,174066,1);


