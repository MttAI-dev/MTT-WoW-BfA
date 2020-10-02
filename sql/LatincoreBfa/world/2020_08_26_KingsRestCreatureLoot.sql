UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120 WHERE `entry`IN(118191, 121307, 132198, 133935, 133943, 134157, 134158, 134174, 134251, 134331, 134739, 134993, 134994, 135167, 135192, 135204, 135231, 135235, 135239, 135322, 135406, 135470, 135472, 135475, 136160, 136264, 136976, 136984, 137020, 137473, 137474, 137478, 137484, 137485, 137486, 137487, 137969, 137989, 138489, 138493, 140123, 141086, 141806, 141851, 141890, 141896, 141929, 143774, 148714, 148716, 148892, 148893, 148894, 149596, 155432, 155433, 155434, 161124, 161241, 161243, 161244, 161408, 161437, 161502, 161510, 161895, 162152);

UPDATE `creature_template` SET `lootid`= 133935 WHERE `entry`= 133935;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 133935, 152512, 39, '1', '0' , '1', '4') /* onelite Ore */, 
( 133935, 152579, 34, '1', '0' , '1', '2') /* torm Silver Ore */, 
( 133935, 155631, 4, '1', '0' , '1', '1') /* nert Stone */, 
( 133935, 158830, 24, '1', '0' , '1', '1') /* ade Sigilstone */, 
( 133935, 158868, 2, '1', '0' , '1', '1') /* olden Ornament */;

UPDATE `creature_template` SET `lootid`= 134158 WHERE `entry`= 134158;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134158, 158771, 4, '1', '0' , '1', '1') /* pirit Ichor */, 
( 134158, 158855, 27, '1', '0' , '1', '1') /* rim Skull Fetish */, 
( 134158, 158865, 4, '1', '0' , '1', '1') /* hastly Ooze */;

UPDATE `creature_template` SET `lootid`= 134174 WHERE `entry`= 134174;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134174, 158771, 4, '1', '0' , '1', '1') /* pirit Ichor */, 
( 134174, 158855, 24, '1', '0' , '1', '1') /* rim Skull Fetish */, 
( 134174, 158865, 3, '1', '0' , '1', '1') /* hastly Ooze */;

UPDATE `creature_template` SET `lootid`= 134331 WHERE `entry`= 134331;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134331, 158771, 3, '1', '0' , '1', '1') /* pirit Ichor */, 
( 134331, 158790, 5, '1', '0' , '1', '1') /* harnel Ash */, 
( 134331, 158855, 18, '1', '0' , '1', '1') /* rim Skull Fetish */, 
( 134331, 158862, 21, '1', '0' , '1', '1') /* ncient Grave Dust */, 
( 134331, 158865, 3, '1', '0' , '1', '1') /* hastly Ooze */;

UPDATE `creature_template` SET `lootid`= 134739 WHERE `entry`= 134739;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134739, 152512, 2, '1', '0' , '1', '4') /* onelite Ore */, 
( 134739, 155631, 4, '1', '0' , '1', '1') /* nert Stone */, 
( 134739, 158830, 19, '1', '0' , '1', '1') /* ade Sigilstone */, 
( 134739, 158868, 2, '1', '0' , '1', '1') /* olden Ornament */;

UPDATE `creature_template` SET `lootid`= 134993 WHERE `entry`= 134993;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134993, 159312, 19, '1', '0' , '1', '1') /* esiccator's Blessed Gloves */, 
( 134993, 159409, 19, '1', '0' , '1', '1') /* mbalmer's Steadying Bracers */, 
( 134993, 159459, 84, '1', '0' , '1', '1') /* itual Binder's Ring */, 
( 134993, 159618, 08, '1', '0' , '1', '1') /* chimba's Ritual Bandages */, 
( 134993, 159642, 03, '1', '0' , '1', '1') /* oyal Purifier's Spade */, 
( 134993, 159667, 27, '1', '0' , '1', '1') /* essel of Last Rites */, 
( 134993, 160213, 08, '1', '0' , '1', '1') /* epulchral Construct's Gloves */;

UPDATE `creature_template` SET `lootid`= 134994 WHERE `entry`= 134994;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134994, 158771, 4, '1', '0' , '1', '1') /* pirit Ichor */, 
( 134994, 158855, 24, '1', '0' , '1', '1') /* rim Skull Fetish */, 
( 134994, 158865, 3, '1', '0' , '1', '1') /* hastly Ooze */;

UPDATE `creature_template` SET `lootid`= 135167 WHERE `entry`= 135167;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 135167, 158771, 3, '1', '0' , '1', '1') /* pirit Ichor */, 
( 135167, 158855, 23, '1', '0' , '1', '1') /* rim Skull Fetish */, 
( 135167, 158865, 3, '1', '0' , '1', '1') /* hastly Ooze */;

UPDATE `creature_template` SET `lootid`= 135192 WHERE `entry`= 135192;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 135192, 158744, 11, '1', '0' , '1', '1') /* pectral Veil */, 
( 135192, 158771, 4, '1', '0' , '1', '1') /* pirit Ichor */, 
( 135192, 158865, 2, '1', '0' , '1', '1') /* hastly Ooze */;

UPDATE `creature_template` SET `lootid`= 135204 WHERE `entry`= 135204;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 135204, 158771, 3, '1', '0' , '1', '1') /* pirit Ichor */, 
( 135204, 158855, 18, '1', '0' , '1', '1') /* rim Skull Fetish */, 
( 135204, 158865, 3, '1', '0' , '1', '1') /* hastly Ooze */;

UPDATE `creature_template` SET `lootid`= 135231 WHERE `entry`= 135231;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 135231, 158771, 3, '1', '0' , '1', '1') /* pirit Ichor */, 
( 135231, 158855, 14, '1', '0' , '1', '1') /* rim Skull Fetish */, 
( 135231, 158865, 4, '1', '0' , '1', '1') /* hastly Ooze */;

UPDATE `creature_template` SET `lootid`= 135235 WHERE `entry`= 135235;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 135235, 158771, 3, '1', '0' , '1', '1') /* pirit Ichor */, 
( 135235, 158855, 24, '1', '0' , '1', '1') /* rim Skull Fetish */, 
( 135235, 158865, 4, '1', '0' , '1', '1') /* hastly Ooze */;

UPDATE `creature_template` SET `lootid`= 135239 WHERE `entry`= 135239;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 135239, 158771, 3, '1', '0' , '1', '1') /* pirit Ichor */, 
( 135239, 158855, 17, '1', '0' , '1', '1') /* rim Skull Fetish */, 
( 135239, 158865, 2, '1', '0' , '1', '1') /* hastly Ooze */;

UPDATE `creature_template` SET `lootid`= 135322 WHERE `entry`= 135322;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 135322, 159137, 22, '1', '0' , '1', '1') /* ilded Serpent's Tooth */, 
( 135322, 159234, 24, '1', '0' , '1', '1') /* ownLined Breeches */, 
( 135322, 159304, 24, '1', '0' , '1', '1') /* oldfeather Boots */, 
( 135322, 159313, 11, '1', '0' , '1', '1') /* reeches of the Sacred Hall */, 
( 135322, 159369, 1, '1', '0' , '1', '1') /* elt of the Consecrated Tomb */, 
( 135322, 159412, 29, '1', '0' , '1', '1') /* uric Puddle Stompers */, 
( 135322, 159413, 18, '1', '0' , '1', '1') /* auntlets of the Avian Sentinel */, 
( 135322, 159617, 2, '1', '0' , '1', '1') /* ustrous Golden Plumage */,
( 135322, 168168, 12, '1', '0' , '1', '1') /* ilded Plume */;

UPDATE `creature_template` SET `lootid`=137473 WHERE `entry`=137473;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(137473, 155608, 3, '1', '0' , '1', '1') /* efiled Bone */, 
(137473, 158855, 11, '1', '0' , '1', '1') /* rim Skull Fetish */, 
(137473, 158862, 3, '1', '0' , '1', '1') /* ncient Grave Dust */;

UPDATE `creature_template` SET `lootid`= 137485 WHERE `entry`= 137485;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 137485, 155608, 4, '1', '0' , '1', '1') /* efiled Bone */, 
( 137485, 158855, 2, '1', '0' , '1', '1') /* rim Skull Fetish */, 
( 137485, 158862, 3, '1', '0' , '1', '1') /* ncient Grave Dust */;

UPDATE `creature_template` SET `lootid`= 137486 WHERE `entry`= 137486;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 137486, 158771, 4, '1', '0' , '1', '1') /* pirit Ichor */, 
( 137486, 158790, 1, '1', '0' , '1', '1') /* harnel Ash */, 
( 137486, 158862, 2, '1', '0' , '1', '1') /* ncient Grave Dust */;

UPDATE `creature_template` SET `lootid`= 137969 WHERE `entry`= 137969;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 137969, 152512, 34, '1', '0' , '1', '4') /* onelite Ore */, 
( 137969, 152579, 26, '1', '0' , '1', '2') /* torm Silver Ore */, 
( 137969, 155631, 5, '1', '0' , '1', '1') /* nert Stone */, 
( 137969, 158830, 45, '1', '0' , '1', '1') /* ade Sigilstone */, 
( 137969, 158868, 2, '1', '0' , '1', '1') /* olden Ornament */;

UPDATE `creature_template` SET `lootid`= 140123 WHERE `entry`= 140123;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 140123, 158771, 77, '1', '0' , '1', '1') /* pirit Ichor */, 
( 140123, 158790, 02, '1', '0' , '1', '1') /* harnel Ash */, 
( 140123, 158862, 17, '1', '0' , '1', '1') /* ncient Grave Dust */;

UPDATE `creature_template` SET `lootid`= 141806 WHERE `entry`= 141806;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141806, 155631, 84, '1', '0' , '1', '1') /* nert Stone */, 
( 141806, 158830, 01, '1', '0' , '1', '1') /* ade Sigilstone */, 
( 141806, 158868, 23, '1', '0' , '1', '1') /* olden Ornament */;

UPDATE `creature_template` SET `lootid`= 141890 WHERE `entry`= 141890;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141890, 158771, 5, '1', '0' , '1', '1') /* pirit Ichor */, 
( 141890, 158855, 71, '1', '0' , '1', '1') /* rim Skull Fetish */, 
( 141890, 158865, 8, '1', '0' , '1', '1') /* hastly Ooze */;

UPDATE `creature_template` SET `lootid`= 141896 WHERE `entry`= 141896;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141896, 158771, 8, '1', '0' , '1', '1') /* pirit Ichor */, 
( 141896, 158865, 7, '1', '0' , '1', '1') /* hastly Ooze */;

UPDATE `creature_template` SET `lootid`= 141929 WHERE `entry`= 141929;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141929, 158771, 5, '1', '0' , '1', '1') /* pirit Ichor */, 
( 141929, 158865, 3, '1', '0' , '1', '1') /* hastly Ooze */;