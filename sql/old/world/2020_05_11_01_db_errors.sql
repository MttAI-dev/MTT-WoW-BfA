UPDATE `creature` SET `spawnDifficulties`='1,2,8,23' WHERE  `guid`=105119;
UPDATE `creature` SET `spawnDifficulties`='1,2,8,23' WHERE  `guid`=105118;
UPDATE `creature` SET `spawnDifficulties`='1,2,8,23' WHERE  `guid`=1051169;
UPDATE `creature` SET `spawnDifficulties`='1,2,8,23' WHERE  `guid`=1051170;
UPDATE `creature` SET `spawnDifficulties`='1,2,8,23' WHERE  `guid`=105120;
UPDATE `creature` SET `spawnDifficulties`='1,2,8,23' WHERE  `guid`=356458;
UPDATE `creature` SET `spawnDifficulties`='1,2,8,23' WHERE  `guid`=1051220;
UPDATE `creature` SET `spawnDifficulties`='1,2,8,23' WHERE  `guid`=105121;
DELETE FROM creature_addon WHERE guid NOT IN (SELECT guid FROM creature);
UPDATE `creature` SET `spawnDifficulties`='0' WHERE  `guid`=358148;
UPDATE `gameobject` SET `PhaseId`='0' WHERE  `guid`  BETWEEN 21009555 AND 21009760;
UPDATE `gameobject` SET `PhaseId`='0' WHERE `map` =1955;
UPDATE `gameobject` SET `spawnDifficulties`='1,2,8,23' WHERE  `guid`  BETWEEN 70595 AND 70613;
UPDATE `gameobject` SET `PhaseId`='0' WHERE  `guid` IN (280200462, 280200461, 280200454);
UPDATE `gameobject` SET `PhaseId`='0' WHERE `ID` IN (290913);
DELETE FROM `creature_queststarter` WHERE `ID` =37114;
DELETE FROM `creature_questender` WHERE `ID` =53370;

UPDATE `access_requirement` SET `difficulty`='14' WHERE  `mapId`=720 AND `difficulty`=0;
UPDATE `access_requirement` SET `difficulty`='15' WHERE  `mapId`=720 AND `difficulty`=1;
UPDATE `access_requirement` SET `difficulty`='33' WHERE  `mapId`=720 AND `difficulty`=5;
DELETE FROM `access_requirement` WHERE  `mapId`=720 AND `difficulty`=6;

DELETE FROM `creature_loot_template` Where entry=105617;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(105617, 121221, 0.05, 1, 0, 1, 1) /* andvik Breastplate */, 
(105617, 121222, 0.17, 1, 0, 1, 1) /* andvik Gauntlets */, 
(105617, 121223, 0.08, 1, 0, 1, 1) /* andvik Girdle */, 
(105617, 121224, 0.68, 1, 0, 1, 1) /* andvik Helm */, 
(105617, 121225, 0.06, 1, 0, 1, 1) /* andvik Legplates */, 
(105617, 121226, 0.16, 1, 0, 1, 1) /* andvik Pauldrons */, 
(105617, 121227, 0.16, 1, 0, 1, 1) /* andvik Sabatons */, 
(105617, 121228, 0.3, 1, 0, 1, 1) /* andvik Vambraces */, 
(105617, 121232, 0.1, 1, 0, 1, 1) /* ightfallen Outcast's Cloak */, 
(105617, 121234, 0.12, 1, 0, 1, 1) /* oralune Keepsake */, 
(105617, 121235, 0.16, 1, 0, 1, 1) /* ashj'tar Brooch */, 
(105617, 121236, 0.12, 1, 0, 1, 1) /* awnswood Hunter's Fletchings */, 
(105617, 121237, 0.09, 1, 0, 1, 1) /* mbervale Bindings */, 
(105617, 121238, 0.13, 1, 0, 1, 1) /* mbervale Boots */, 
(105617, 121239, 0.13, 1, 0, 1, 1) /* mbervale Britches */, 
(105617, 121240, 0.47, 1, 0, 1, 1) /* mbervale Gloves */, 
(105617, 121241, 0.09, 1, 0, 1, 1) /* mbervale Hood */, 
(105617, 121243, 0.22, 1, 0, 1, 1) /* mbervale Shoulders */, 
(105617, 121244, 0.15, 1, 0, 1, 1) /* mbervale Waistband */, 
(105617, 121247, 0.1, 1, 0, 1, 1) /* ightfall Loop */, 
(105617, 121248, 0.2, 1, 0, 1, 1) /* ightfall Chain */, 
(105617, 121260, 0.16, 1, 0, 1, 1) /* arpwind Belt */, 
(105617, 121261, 0.03, 1, 0, 1, 1) /* arpwind Bracers */, 
(105617, 121262, 0.05, 1, 0, 1, 1) /* arpwind Gauntlets */, 
(105617, 121263, 0.38, 1, 0, 1, 1) /* arpwind Greaves */, 
(105617, 121264, 0.06, 1, 0, 1, 1) /* arpwind Helm */, 
(105617, 121265, 0.07, 1, 0, 1, 1) /* arpwind Legguards */, 
(105617, 121266, 0.09, 1, 0, 1, 1) /* arpwind Spaulders */, 
(105617, 121267, 0.31, 1, 0, 1, 1) /* arpwind Vest */, 
(105617, 121268, 0.08, 1, 0, 1, 1) /* oonfall Cord */, 
(105617, 121269, 0.19, 1, 0, 1, 1) /* oonfall Cowl */, 
(105617, 121270, 0.12, 1, 0, 1, 1) /* oonfall Handwraps */, 
(105617, 121271, 0.12, 1, 0, 1, 1) /* oonfall Leggings */, 
(105617, 121272, 0.18, 1, 0, 1, 1) /* oonfall Robe */, 
(105617, 121273, 0.09, 1, 0, 1, 1) /* oonfall Sandals */, 
(105617, 121274, 0.2, 1, 0, 1, 1) /* oonfall Shoulderpads */, 
(105617, 121275, 0.15, 1, 0, 1, 1) /* oonfall Wristwraps */, 
(105617, 121331, 0.06, 1, 0, 1, 1) /* eystone Lockbox */, 
(105617, 128610, 0.01, 1, 0, 1, 1) /* ormula: Enchant Neck - Mark of the Claw */, 
(105617, 132199, 45, 1, 0, 1, 1) /* ongealed Felblood */, 
(105617, 132200, 25, 1, 0, 1, 1) /* shen Ring */, 
(105617, 132204, 31, 1, 0, 1, 1) /* ticky Volatile Substance */, 
(105617, 137677, -0.05, 1, 0, 1, 1) /* el Blood */, 
(105617, 138781, 0.25, 1, 0, 1, 1) /* rief History of the Aeons */, 
(105617, 138782, 0.01, 1, 0, 1, 1) /* rief History of the Ages */, 
(105617, 138817, 0.01, 1, 0, 1, 1) /* emonic Runestone */, 
(105617, 140220, 0.07, 1, 0, 1, 1) /* cavenged Cloth */, 
(105617, 140221, 0.02, 1, 0, 1, 1) /* ound Sack of Gems */, 
(105617, 140222, 0.19, 1, 0, 1, 1) /* arvested Goods */, 
(105617, 140224, 0.04, 1, 0, 1, 1) /* utchered Meat */, 
(105617, 140225, 0.03, 1, 0, 1, 1) /* alvaged Armor */, 
(105617, 140226, 0.11, 1, 0, 1, 1) /* ana-Tinged Pack */, 
(105617, 140227, 0.24, 1, 0, 1, 1) /* loodhunter's Quarry */, 
(105617, 140661, 0.03, 1, 0, 1, 1) /* amaged Eredar Head */, 
(105617, 140662, 0.01, 1, 0, 1, 1) /* eformed Eredar Head */, 
(105617, 140764, 0.05, 1, 0, 1, 1) /* rimoire of the First Necrolyte */, 
(105617, 141292, 0.12, 1, 0, 1, 1) /* rystallizing Mana */, 
(105617, 141293, 0.23, 1, 0, 1, 1) /* pellfire Oil */, 
(105617, 144330, 0.04, 1, 0, 1, 1) /* procket Container */, 
(105617, 144345, 0.17, 1, 0, 1, 1) /* ile of Pet Goodies */, 
(105617, 151157, 0.01, 1, 0, 3, 3) /* lashy Chronometer */;

DELETE FROM `creature_loot_template` Where entry=111052;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(111052, 121225, 0.08, 1, 0, 1, 1) /* andvik Legplates */, 
(111052, 121272, 0.21, 1, 0, 1, 1) /* oonfall Robe */, 
(111052, 124120, 16, 1, 0, 2, 4) /* eyblood */, 
(111052, 132183, 17, 1, 0, 1, 1) /* azor Tooth */, 
(111052, 132230, 2, 1, 0, 1, 1) /* ana-Charged Hide */, 
(111052, 132233, 0.92, 1, 0, 1, 1) /* ingering Essence */, 
(111052, 134475, 0.08, 1, 0, 1, 1) /* ute Erasure Legguards */, 
(111052, 137413, 0.08, 1, 0, 1, 1) /* ime-Breached Waistband */, 
(111052, 138019, 0.08, 1, 0, 1, 1) /* ythic Keystone */, 
(111052, 138786, 10, 1, 0, 1, 1) /* alisman of Victory */, 
(111052, 140227, 0.47, 1, 0, 1, 1) /* loodhunter's Quarry */, 
(111052, 141689, 60, 1, 0, 1, 1) /* ewel of Victory */, 
(111052, 141690, 24, 1, 0, 1, 1) /* ymbol of Victory */;

DELETE FROM `creature_loot_template` Where entry=105706;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(105706, 121222, 0.03, 1, 0, 1, 1) /* andvik Gauntlets */, 
(105706, 121223, 0.06, 1, 0, 1, 1) /* andvik Girdle */, 
(105706, 121224, 0.11, 1, 0, 1, 1) /* andvik Helm */, 
(105706, 121225, 0.29, 1, 0, 1, 1) /* andvik Legplates */, 
(105706, 121226, 0.05, 1, 0, 1, 1) /* andvik Pauldrons */, 
(105706, 121227, 0.03, 1, 0, 1, 1) /* andvik Sabatons */, 
(105706, 121228, 0.06, 1, 0, 1, 1) /* andvik Vambraces */, 
(105706, 121232, 0.04, 1, 0, 1, 1) /* ightfallen Outcast's Cloak */, 
(105706, 121234, 0.05, 1, 0, 1, 1) /* oralune Keepsake */, 
(105706, 121235, 0.02, 1, 0, 1, 1) /* ashj'tar Brooch */, 
(105706, 121237, 0.05, 1, 0, 1, 1) /* mbervale Bindings */, 
(105706, 121240, 0.02, 1, 0, 1, 1) /* mbervale Gloves */, 
(105706, 121241, 0.13, 1, 0, 1, 1) /* mbervale Hood */, 
(105706, 121243, 0.95, 1, 0, 1, 1) /* mbervale Shoulders */, 
(105706, 121244, 0.1, 1, 0, 1, 1) /* mbervale Waistband */, 
(105706, 121247, 0.22, 1, 0, 1, 1) /* ightfall Loop */, 
(105706, 121260, 0.03, 1, 0, 1, 1) /* arpwind Belt */, 
(105706, 121261, 0.25, 1, 0, 1, 1) /* arpwind Bracers */, 
(105706, 121265, 0.04, 1, 0, 1, 1) /* arpwind Legguards */, 
(105706, 121269, 0.04, 1, 0, 1, 1) /* oonfall Cowl */, 
(105706, 121271, 0.04, 1, 0, 1, 1) /* oonfall Leggings */, 
(105706, 121272, 0.09, 1, 0, 1, 1) /* oonfall Robe */, 
(105706, 121273, 0.06, 1, 0, 1, 1) /* oonfall Sandals */, 
(105706, 121275, 0.19, 1, 0, 1, 1) /* oonfall Wristwraps */, 
(105706, 132199, 46, 1, 0, 1, 1) /* ongealed Felblood */, 
(105706, 132200, 22, 1, 0, 1, 1) /* shen Ring */, 
(105706, 132204, 32, 1, 0, 1, 1) /* ticky Volatile Substance */, 
(105706, 137677, -0.23, 1, 0, 1, 1) /* el Blood */, 
(105706, 138781, 0.19, 1, 0, 1, 1) /* rief History of the Aeons */, 
(105706, 138782, 0.13, 1, 0, 1, 1) /* rief History of the Ages */, 
(105706, 140221, 0.2, 1, 0, 1, 1) /* ound Sack of Gems */, 
(105706, 140225, 0.06, 1, 0, 1, 1) /* alvaged Armor */, 
(105706, 140227, 0.15, 1, 0, 1, 1) /* loodhunter's Quarry */, 
(105706, 141292, 0.04, 1, 0, 1, 1) /* rystallizing Mana */, 
(105706, 144330, 0.18, 1, 0, 1, 1) /* procket Container */;

UPDATE `creature_loot_template` SET `Chance`='0.03' WHERE  `Entry`=105629 AND `Item`=137677;
UPDATE `creature_loot_template` SET `Chance`='0.04' WHERE  `Entry`=98770 AND `Item`=137677;
UPDATE `gameobject_loot_template` SET `Chance`='67' WHERE  `Entry`=194107 AND `Item`=44864;
UPDATE `gameobject_loot_template` SET `Chance`='7' WHERE  `Entry`=266483 AND `Item`=140198;
UPDATE `gameobject_loot_template` SET `Chance`='38' WHERE  `Entry`=17189 AND `Item`=44864;

DELETE FROM `spell_loot_template` WHERE `entry` = '253138';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('253138', '152832', '0', '100', '0', '1', '0', '1', '1', '');

DELETE FROM `spell_loot_template` WHERE `entry` = '269519';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269519', '159885', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269529';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269529', '159888', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269524';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269524', '159886', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269534';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269534', '159890', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269526';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269526', '159887', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269531';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269531', '159889', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269525';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269525', '159887', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269516';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269516', '159884', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269523';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269523', '159886', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269537';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269537', '159891', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269520';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269520', '159885', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269536';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269536', '159890', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269539';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269539', '159891', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269540';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269540', '159892', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269538';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269538', '159891', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269541';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269541', '159892', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269542';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269542', '159892', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269544';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269544', '159893', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269545';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269545', '159893', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269517';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269517', '159884', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269521';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269521', '159885', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269523';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269523', '159886', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269530';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269530', '159888', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269536';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269536', '159890', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269539';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269539', '159891', '0', '100', '0', '1', '0', '1', '1', '');


