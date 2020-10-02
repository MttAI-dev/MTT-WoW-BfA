UPDATE `creature_template` SET `faction`=35 WHERE `entry` IN(136961,139963);

REPLACE INTO `creature_template_journal` VALUES (129214,2109),(129227,2114),(129231,2115),(129232,2116);

REPLACE INTO `instance_encounters` VALUES (2105,0,129214,0,'Coin'),(2106,0,129227,0,'Azerokk'),(2107,0,129231,0,'Rixxa'),(2108,0,129232,2116,'Mogul');

UPDATE `creature_template` SET `mingold`=50000,`maxgold`=60000,`mechanic_immune_mask`=2113912831 WHERE entry IN (129232,129231,129227,129214);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(50356, 86574, 6, 1, 0, 1, 1) /* lixir of Ancient Knowledge */;

UPDATE `creature_loot_template` SET `mincount`=1,`maxcount`=1 WHERE `item`=1220; -- dropping 70-1000 items bug

REPLACE INTO scenarios VALUES (1594,0,1553,1553);

REPLACE INTO scenarios VALUES (1762,0,1560,1560);

REPLACE INTO scenarios VALUES (2097,0,1756,1756);
