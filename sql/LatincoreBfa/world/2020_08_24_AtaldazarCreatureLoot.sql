UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120 WHERE `entry`IN(65310, 65325, 122963, 122965, 122967, 122968, 122969, 122970, 122971, 122972, 122973, 122984, 122986, 125828, 125977, 127315, 127757, 127799, 127879, 128434, 128435, 128455, 129399, 129412, 129517, 129552, 129553, 129614, 130678, 130679, 130680, 130681, 130686, 130902, 130912, 131009, 131089, 131123, 132126, 132198, 135989, 138148, 141851, 142666, 142668, 143577, 143774, 148714, 148716, 148892, 148893, 148894, 149596, 151844, 155432, 155433, 155434, 161124, 161241, 161243, 161244, 161408, 161437, 161502, 161510, 161895, 162152, 162841);

UPDATE `creature_template` SET `lootid`= 122963 WHERE `entry`= 122963;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 122963, 155868, 1,  '1', '0' , '1', '1') /* ilt of Fanatical Consumption */, 
( 122963, 158303, 4,  '1', '0' , '1', '1') /* evilsaur Worshiper's Sandals */, 
( 122963, 158711, 8,  '1', '0' , '1', '1') /* allowed Ossein Longbow */, 
( 122963, 158712, 2,  '1', '0' , '1', '1') /* ezan's Gleaming Eye */, 
( 122963, 158713, 1,  '1', '0' , '1', '1') /* isc of Indomitable Will */, 
( 122963, 159458, 9,  '1', '0' , '1', '1') /* eal of the Regal Loa */, 
( 122963, 159841, 48,  '1', '0' , '1', '1') /* ome of Hex: Skeletal Hatchling */, 
( 122963, 160214, 3,  '1', '0' , '1', '1') /* enerated Raptorhide Bindings */, 
( 122963, 160269, 1,  '1', '0' , '1', '1') /* oulrending Claw */, 
( 122963, 161429, 3,  '1', '0' , '1', '1') /* ezan's Bone Splinter */, 
( 122963, 161435, 4,  '1', '0' , '1', '1') /* ezan's Bone Splinter */, 
( 122963, 168128, 08,  '1', '0' , '1', '1') /* ssence of the Regal Loa */, 
( 122963, 168139, 33,  '1', '0' , '1', '1') /* ong Regal Sinew */;

UPDATE `creature_template` SET `lootid`= 122965 WHERE `entry`= 122965;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 122965, 139299, 71,  '1', '0' , '1', '1') /* inelyTailored Red Holiday Hat */, 
( 122965, 155869, 3,  '1', '0' , '1', '1') /* hambling Berserker's Leggings */, 
( 122965, 158317, 2,  '1', '0' , '1', '1') /* auntlets of Eternal Service */, 
( 122965, 158320, 1,  '1', '0' , '1', '1') /* evitalizing Voodoo Totem */, 
( 122965, 158348, 2,  '1', '0' , '1', '1') /* raps of Everliving Fealty */, 
( 122965, 158375, 10,  '1', '0' , '1', '1') /* rape of the Loyal Vassal */, 
( 122965, 159445, 2,  '1', '0' , '1', '1') /* rips of the Everlasting Guardian */, 
( 122965, 159632, 59,  '1', '0' , '1', '1') /* dulation Enforcer */;

UPDATE `creature_template` SET `lootid`= 122967 WHERE `entry`= 122967;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 122967, 155861, 2,  '1', '0' , '1', '1') /* mbellished Ritual Sabatons */, 
( 122967, 158306, 4,  '1', '0' , '1', '1') /* elt of Gleaming Determination */, 
( 122967, 158309, 2,  '1', '0' , '1', '1') /* ristlinks of Alchemical Transfusion */, 
( 122967, 158313, 3,  '1', '0' , '1', '1') /* egplates of Beaten Gold */, 
( 122967, 158319, 3,  '1', '0' , '1', '1') /* y'das Talisman */, 
( 122967, 158321, 3,  '1', '0' , '1', '1') /* and of Zealous Purification */, 
( 122967, 158322, 3,  '1', '0' , '1', '1') /* ureus Vessel */, 
( 122967, 158347, 2,  '1', '0' , '1', '1') /* incture of Glittering Gold */,
( 122967, 168146, 18,  '1', '0' , '1', '1') /* phere of Sangaurum */;

UPDATE `creature_template` SET `lootid`= 122968 WHERE `entry`= 122968;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 122968, 155860, 7,  '1', '0' , '1', '1') /* pymaster's Wrap */, 
( 122968, 155866, 4,  '1', '0' , '1', '1') /* oulspun Casque */, 
( 122968, 158304, 7,  '1', '0' , '1', '1') /* antle of Fastidious Machinations */, 
( 122968, 158308, 3,  '1', '0' , '1', '1') /* ouldrifting Sabatons */, 
( 122968, 158315, 5,  '1', '0' , '1', '1') /* ecret Spinner's Miter */, 
( 122968, 158323, 73,  '1', '0' , '1', '1') /* oulrender's Fang */, 
( 122968, 158923, 5,  '1', '0' , '1', '1') /* ythic Keystone */, 
( 122968, 159233, 5,  '1', '0' , '1', '1') /* oa Betrayer's Vestments */, 
( 122968, 159358, 4,  '1', '0' , '1', '1') /* oif of the Court Spider */, 
( 122968, 159610, 4,  '1', '0' , '1', '1') /* essel of Skittering Shadows */, 
( 122968, 160212, 6,  '1', '0' , '1', '1') /* hadowshroud Vambraces */, 
( 122968, 162460, 2,  '1', '0' , '1', '1') /* ydrocore */, 
( 122968, 162520, 27,  '1', '0' , '1', '1') /* ecipe: Mystical Cauldron */,
( 122968, 165948, 52,  '1', '0' , '1', '1') /* idalcore */;

UPDATE `creature_template` SET `lootid`= 122969 WHERE `entry`= 122969;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 122969, 152576, 58, '1', '0' , '1', '3') /* idespray Linen */, 
( 122969, 152577, 5,  '1', '0' , '1', '1') /* eep Sea Satin */, 
( 122969, 163915, 21,  '1', '0' , '1', '1') /* iscontinued Zandalari Coins */, 
( 122969, 163917, 03,  '1', '0' , '1', '1') /* usk File */, 
( 122969, 166313, 39,  '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`= 122970 WHERE `entry`= 122970;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 122970, 152576, 55, '1', '0' , '1', '3') /* idespray Linen */, 
( 122970, 152577, 6,  '1', '0' , '1', '1') /* eep Sea Satin */, 
( 122970, 163915, 14,  '1', '0' , '1', '1') /* iscontinued Zandalari Coins */, 
( 122970, 166260, 01,  '1', '0' , '1', '1') /* ecipe: MonelHardened Hoofplates */, 
( 122970, 166313, 01,  '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`= 122971 WHERE `entry`= 122971;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 122971, 152576, 53, '1', '0' , '1', '3') /* idespray Linen */, 
( 122971, 152577, 5,  '1', '0' , '1', '1') /* eep Sea Satin */, 
( 122971, 163915, 02,  '1', '0' , '1', '1') /* iscontinued Zandalari Coins */;

UPDATE `creature_template` SET `lootid`= 122972 WHERE `entry`= 122972;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 122972, 152576, 56, '1', '0' , '1', '3') /* idespray Linen */, 
( 122972, 152577, 5,  '1', '0' , '1', '1') /* eep Sea Satin */, 
( 122972, 163898, 06,  '1', '0' , '1', '1') /* iny Loa Effigy */, 
( 122972, 163899, 02,  '1', '0' , '1', '1') /* one Sail Needle */, 
( 122972, 163917, 08,  '1', '0' , '1', '1') /* usk File */, 
( 122972, 166313, 04,  '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */, 
( 122972, 172954, 01, '1', '1' , '4', '6') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 122973 WHERE `entry`= 122973;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 122973, 152576, 51, '1', '0' , '1', '3') /* idespray Linen */, 
( 122973, 152577, 4,  '1', '0' , '1', '1') /* eep Sea Satin */, 
( 122973, 163898, 08,  '1', '0' , '1', '1') /* iny Loa Effigy */, 
( 122973, 163917, 23,  '1', '0' , '1', '1') /* usk File */;

UPDATE `creature_template` SET `lootid`= 122984 WHERE `entry`= 122984;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 122984, 152512, 3, '1', '0' , '1', '4') /* onelite Ore */, 
( 122984, 152579, 29,  '1', '0' , '1', '1') /* torm Silver Ore */, 
( 122984, 155631, 69,  '1', '0' , '1', '1') /* nert Stone */, 
( 122984, 158830, 5,  '1', '0' , '1', '1') /* ade Sigilstone */, 
( 122984, 158869, 21,  '1', '0' , '1', '1') /* tone Tusk */;

UPDATE `creature_template` SET `lootid`= 122986 WHERE `entry`= 122986;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 122986, 154899, 99, '1', '0' , '1', '3') /* hick Paleo Steak */, 
( 122986, 155635, 97,  '1', '0' , '1', '1') /* inewy Wing */, 
( 122986, 158745, 3,  '1', '0' , '1', '1') /* uminous Scale */;

UPDATE `creature_template` SET `lootid`= 127757 WHERE `entry`= 127757;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 127757, 158771, 67,  '1', '0' , '1', '1') /* pirit Ichor */, 
( 127757, 158790, 4,  '1', '0' , '1', '1') /* harnel Ash */, 
( 127757, 158862, 25,  '1', '0' , '1', '1') /* ncient Grave Dust */;

UPDATE `creature_template` SET `lootid`= 127799 WHERE `entry`= 127799;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 127799, 152576, 59, '1', '0' , '1', '3') /* idespray Linen */, 
( 127799, 152577, 5,  '1', '0' , '1', '1') /* eep Sea Satin */, 
( 127799, 163898, 02,  '1', '0' , '1', '1') /* iny Loa Effigy */, 
( 127799, 163899, 02,  '1', '0' , '1', '1') /* one Sail Needle */, 
( 127799, 163915, 04,  '1', '0' , '1', '1') /* iscontinued Zandalari Coins */,
( 127799, 166313, 04,  '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */, 
( 127799, 172954, 01, '1', '0' , '4', '4') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 127879 WHERE `entry`= 127879;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 127879, 155608, 52,  '1', '0' , '1', '1') /* efiled Bone */, 
( 127879, 158855, 3,  '1', '0' , '1', '1') /* rim Skull Fetish */, 
( 127879, 158862, 41,  '1', '0' , '1', '1') /* ncient Grave Dust */;

UPDATE `creature_template` SET `lootid`= 128434 WHERE `entry`= 128434;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 128434, 153050, 03, '1', '0' , '1', '2') /* himmerscale */, 
( 128434, 154164, 02,  '1', '0' , '1', '1') /* loodStained Bone */, 
( 128434, 154165, 05,  '1', '0' , '1', '1') /* alcified Bone */, 
( 128434, 154899, 73, '1', '0' , '1', '4') /* hick Paleo Steak */, 
( 128434, 155618, 04,  '1', '0' , '1', '1') /* iscarded Molting */, 
( 128434, 155635, 57,  '1', '0' , '1', '1') /* inewy Wing */, 
( 128434, 157782, 01,  '1', '0' , '1', '1') /* terrordax Egg */, 
( 128434, 158745, 35,  '1', '0' , '1', '1') /* uminous Scale */, 
( 128434, 158789, 4,  '1', '0' , '1', '1') /* ebbed Frill */;

UPDATE `creature_template` SET `lootid`= 128435 WHERE `entry`= 128435;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 128435, 153050, 03, '1', '0' , '1', '2') /* himmerscale */, 
( 128435, 153051, 01,  '1', '0' , '1', '1') /* istscale */, 
( 128435, 154164, 02, '1', '0' , '1', '2') /* loodStained Bone */, 
( 128435, 154165, 02,  '1', '0' , '1', '1') /* alcified Bone */, 
( 128435, 154899, 26, '1', '0' , '1', '4') /* hick Paleo Steak */, 
( 128435, 155618, 02,  '1', '0' , '1', '1') /* iscarded Molting */, 
( 128435, 158210, 41,  '1', '0' , '1', '1') /* earsome Claw */, 
( 128435, 158850, 3,  '1', '0' , '1', '1') /* ibrant Plumage */, 
( 128435, 158859, 54,  '1', '0' , '1', '1') /* agged Fang */;

UPDATE `creature_template` SET `lootid`= 128455 WHERE `entry`= 128455;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 128455, 154899, 73, '1', '0' , '1', '4') /* hick Paleo Steak */, 
( 128455, 155605, 65,  '1', '0' , '1', '1') /* uge Femur */, 
( 128455, 158853, 3,  '1', '0' , '1', '1') /* ony Skullplate */, 
( 128455, 158860, 27,  '1', '0' , '1', '1') /* rindstone Molar */;

UPDATE `creature_template` SET `lootid`= 129552 WHERE `entry`= 129552;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 129552, 154899, 72, '1', '0' , '1', '4') /* hick Paleo Steak */, 
( 129552, 155605, 58,  '1', '0' , '1', '1') /* uge Femur */, 
( 129552, 158853, 9,  '1', '0' , '1', '1') /* ony Skullplate */, 
( 129552, 158860, 27,  '1', '0' , '1', '1') /* rindstone Molar */;

UPDATE `creature_template` SET `lootid`= 129553 WHERE `entry`= 129553;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 129553, 152576, 69, '1', '0' , '1', '3') /* idespray Linen */, 
( 129553, 152577, 3,  '1', '0' , '1', '1') /* eep Sea Satin */, 
( 129553, 166313, 03,  '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`= 130912 WHERE `entry`= 130912;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 130912, 152576, 4, '1', '0' , '1', '3') /* idespray Linen */, 
( 130912, 152577, 1,  '1', '0' , '1', '1') /* eep Sea Satin */;

UPDATE `creature_template` SET `lootid`= 131089 WHERE `entry`= 131089;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 131089, 152576, 65, '1', '0' , '1', '3') /* idespray Linen */, 
( 131089, 152577, 2,  '1', '0' , '1', '1') /* eep Sea Satin */;

UPDATE `creature_template` SET `lootid`= 131123 WHERE `entry`= 131123;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 131123, 158771, 46,  '1', '0' , '1', '1') /* pirit Ichor */, 
( 131123, 158821, 50,  '1', '0' , '1', '1') /* racked Mask */, 
( 131123, 158855, 4,  '1', '0' , '1', '1') /* rim Skull Fetish */;

UPDATE `creature_template` SET `lootid`= 132126 WHERE `entry`= 132126;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 132126, 152576, 58, '1', '0' , '1', '3') /* idespray Linen */, 
( 132126, 152577, 5,  '1', '0' , '1', '1') /* eep Sea Satin */,  
( 132126, 163898, 36,  '1', '0' , '1', '1') /* iny Loa Effigy */, 
( 132126, 163917, 03,  '1', '0' , '1', '1') /* usk File */, 
( 132126, 166313, 25,  '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`= 135989 WHERE `entry`= 135989;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 135989, 155608, 48,  '1', '0' , '1', '1') /* efiled Bone */, 
( 135989, 158855, 34,  '1', '0' , '1', '1') /* rim Skull Fetish */, 
( 135989, 158862, 19,  '1', '0' , '1', '1') /* ncient Grave Dust */;
