UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120 WHERE `entry`IN(121762, 127381, 127477, 127478, 127479, 127480, 127482, 127484, 127485, 127486, 127488, 127490, 127497, 127503, 130025, 130026, 130027, 130028, 130087, 130582, 130646, 130655, 130683, 130685, 131112, 131444, 131445, 131785, 132198, 133597, 133605, 133972, 134927, 135254, 135366, 135448, 135624, 135628, 135629, 135630, 135633, 135634, 135635, 135636, 135699, 135706, 135779, 136665, 136692, 136694, 136696, 136698, 136735, 136737, 137098, 141851, 142668, 143774, 148714, 148716, 148892, 148893, 148894, 149596, 151847, 155432, 155433, 155434, 161124, 161241, 161243, 161244, 161408, 161437, 161502, 161510, 161895, 162152);

UPDATE `creature_template` SET `lootid`= 127381 WHERE `entry`= 127381;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 127381, 152631, 70, '1', '0' , '1', '4') /* riny Flesh */, 
( 127381, 158770, 3, '1', '0' , '1', '1') /* elatinous Roe */, 
( 127381, 158839, 62, '1', '0' , '1', '1') /* hick Crab Claw */, 
( 127381, 158861, 30, '1', '0' , '1', '1') /* ensile Eye Stalk */;	

UPDATE `creature_template` SET `lootid`= 127477 WHERE `entry`= 127477;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 127477, 152631, 81, '1', '0' , '4', '4') /* riny Flesh */, 
( 127477, 155618, 26, '1', '0' , '1', '1') /* iscarded Molting */, 
( 127477, 158745, 45, '1', '0' , '1', '1') /* uminous Scale */, 
( 127477, 158805, 1, '1', '0' , '1', '1') /* oft Turtle Shell */;

UPDATE `creature_template` SET `lootid`= 127479 WHERE `entry`= 127479;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 127479, 159332, 2, '1', '0' , '1', '1') /* ristguards of the Sandswimmer */, 
( 127479, 159392, 3, '1', '0' , '1', '1') /* aoler's Chainmail Gaiters */, 
( 127479, 159460, 12, '1', '0' , '1', '1') /* verseer's Lost Seal */, 
( 127479, 159656, 48, '1', '0' , '1', '1') /* alberd of the Unwary Guard */, 
( 127479, 159668, 3, '1', '0' , '1', '1') /* attling Jar of Eyes */, 
( 127479, 160110, 48, '1', '0' , '1', '1') /* arglaive of the Sand Queen */, 
( 127479, 160215, 3, '1', '0' , '1', '1') /* ewer Grate Girdle */;

UPDATE `creature_template` SET `lootid`= 127480 WHERE `entry`= 127480;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 127480, 155601, 57, '1', '0' , '1', '1') /* ointy Leg Segment */, 
( 127480, 158792, 5, '1', '0' , '1', '1') /* igestive Acid */, 
( 127480, 158863, 36, '1', '0' , '1', '1') /* hitinous Exoskeleton */;

UPDATE `creature_template` SET `lootid`= 127482 WHERE `entry`= 127482;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 127482, 153050, 03, '1', '0' , '1', '2') /* himmerscale */, 
( 127482, 154164, 02, '1', '0' , '1', '1') /* loodStained Bone */, 
( 127482, 154165, 03, '1', '0' , '1', '1') /* alcified Bone */, 
( 127482, 154898, 73, '1', '0' , '1', '4') /* eaty Haunch */, 
( 127482, 155609, 64, '1', '0' , '1', '1') /* pringy Eyeball */, 
( 127482, 155618, 02, '1', '0' , '1', '1') /* iscarded Molting */, 
( 127482, 158849, 4, '1', '0' , '1', '1') /* awtooth Jawbone */, 
( 127482, 158859, 28, '1', '0' , '1', '1') /* agged Fang */;

UPDATE `creature_template` SET `lootid`= 127484 WHERE `entry`= 127484;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 127484, 155648, 17, '1', '0' , '1', '1') /* ewel of the Tides */, 
( 127484, 159131, 11, '1', '0' , '1', '1') /* owlis' Crystal Shiv */, 
( 127484, 159266, 3, '1', '0' , '1', '1') /* lawSlit Brawler's Handwraps */, 
( 127484, 159293, 12, '1', '0' , '1', '1') /* urncoat's Cape */, 
( 127484, 159306, 3, '1', '0' , '1', '1') /* ingeBlotched Britches */, 
( 127484, 159363, 2, '1', '0' , '1', '1') /* nawed Iron Fetters */,
( 127484, 159627, 2, '1', '0' , '1', '1') /* es' Howler */, 
( 127484, 159666, 1, '1', '0' , '1', '1') /* mprovised Riot Shield */, 
( 127484, 168145, 31, '1', '0' , '1', '1') /* ly Rogue's Decanter */;

UPDATE `creature_template` SET `lootid`= 127485 WHERE `entry`= 127485;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 127485, 152576, 77, '1', '0' , '1', '3') /* idespray Linen */, 
( 127485, 152577, 9, '1', '0' , '1', '1') /* eep Sea Satin */;

UPDATE `creature_template` SET `lootid`= 127486 WHERE `entry`= 127486;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 127486, 152576, 39, '1', '0' , '1', '3') /* idespray Linen */, 
( 127486, 152577, 4, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 127486, 161053, 32, '1', '0' , '1', '7') /* alty Dog Crackers */, 
( 127486, 163896, 05, '1', '0' , '1', '1') /* alty Pocket Lint */, 
( 127486, 163897, 04, '1', '0' , '1', '1') /* ersonal Spice Stash */, 
( 127486, 163903, 12, '1', '0' , '1', '1') /* alfEaten Sausage */, 
( 127486, 163906, 05, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */, 
( 127486, 168134, 3, '1', '0' , '1', '3') /* ine Azerite Powder */, 
( 127486, 172954, 01, '1', '0' , '6', '6') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 127488 WHERE `entry`= 127488;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 127488, 152576, 37, '1', '0' , '1', '3') /* idespray Linen */, 
( 127488, 152577, 8, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 127488, 161053, 31, '1', '0' , '1', '7') /* alty Dog Crackers */, 
( 127488, 163897, 02, '1', '0' , '1', '1') /* ersonal Spice Stash */, 
( 127488, 163903, 08, '1', '0' , '1', '1') /* alfEaten Sausage */, 
( 127488, 163906, 02, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */, 
( 127488, 166260, 01, '1', '0' , '1', '1') /* ecipe: MonelHardened Hoofplates */, 
( 127488, 168134, 5, '1', '0' , '1', '3') /* ine Azerite Powder */;

UPDATE `creature_template` SET `lootid`= 127490 WHERE `entry`= 127490;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 127490, 159274, 2, '1', '0' , '1', '1') /* night Captain's Waistcord */, 
( 127490, 159277, 2, '1', '0' , '1', '1') /* ild Pyromancer's Trousers */, 
( 127490, 159333, 3, '1', '0' , '1', '1') /* incture of the Azerite Arsenal */, 
( 127490, 159343, 3, '1', '0' , '1', '1') /* park Dampening Footpads */, 
( 127490, 159389, 1, '1', '0' , '1', '1') /* lintLinked Wristguards */, 
( 127490, 159390, 2, '1', '0' , '1', '1') /* ureGrip Munition Handlers */, 
( 127490, 159441, 3, '1', '0' , '1', '1') /* alyri's FireProof Bracers */, 
( 127490, 159444, 3, '1', '0' , '1', '1') /* unpowderScoured Sabatons */, 
( 127490, 159615, 3, '1', '0' , '1', '1') /* gnition Mage's Fuse */, 
( 127490, 168134, 04, '1', '0' , '1', '3') /* ine Azerite Powder */;

UPDATE `creature_template` SET `lootid`= 127497 WHERE `entry`= 127497;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 127497, 152576, 43, '1', '0' , '1', '3') /* idespray Linen */, 
( 127497, 152577, 4, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 127497, 161053, 39, '1', '0' , '1', '7') /* alty Dog Crackers */, 
( 127497, 163896, 07, '1', '0' , '1', '1') /* alty Pocket Lint */, 
( 127497, 163897, 06, '1', '0' , '1', '1') /* ersonal Spice Stash */, 
( 127497, 163903, 18, '1', '0' , '1', '1') /* alfEaten Sausage */, 
( 127497, 163906, 04, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */,
( 127497, 166313, 09, '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */, 
( 127497, 168134, 1, '1', '0' , '1', '3') /* ine Azerite Powder */;

UPDATE `creature_template` SET `lootid`= 127503 WHERE `entry`= 127503;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 127503, 158923, 2, '1', '0' , '1', '1') /* ythic Keystone */, 
( 127503, 159129, 7, '1', '0' , '1', '1') /* lamecaster Botefeux */, 
( 127503, 159268, 7, '1', '0' , '1', '1') /* nmate's Straight Robe */, 
( 127503, 159331, 4, '1', '0' , '1', '1') /* istoleer's Spaulders */, 
( 127503, 159334, 4, '1', '0' , '1', '1') /* lashpowder Hood */, 
( 127503, 159391, 3, '1', '0' , '1', '1') /* ood of the Dark Reaper */, 
( 127503, 159393, 2, '1', '0' , '1', '1') /* annoneer's Mantle */, 
( 127503, 159414, 5, '1', '0' , '1', '1') /* verseer's Riot Helmet */, 
( 127503, 159440, 4, '1', '0' , '1', '1') /* shvane Warden's Cuirass */, 
( 127503, 159628, 4, '1', '0' , '1', '1') /* ul Tiran Cannonball Runner */, 
( 127503, 159657, 98, '1', '0' , '1', '1') /* orgus' Blackpowder Rifle */, 
( 127503, 159658, 1, '1', '0' , '1', '1') /* udgel of Correctional Oversight */, 
( 127503, 162460, 2, '1', '0' , '1', '1') /* ydrocore */, 
( 127503, 162520, 12, '1', '0' , '1', '1') /* ecipe: Mystical Cauldron */, 
( 127503, 163161, 30, '1', '0' , '1', '1') /* ol Dagor Master Key */, 
( 127503, 165948, 55, '1', '0' , '1', '1') /* idalcore */;

UPDATE `creature_template` SET `lootid`= 130025 WHERE `entry`= 130025;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 130025, 152576, 70, '1', '0' , '1', '3') /* idespray Linen */, 
( 130025, 152577, 7, '1', '0' , '1', '1') /* eep Sea Satin */;

UPDATE `creature_template` SET `lootid`= 130026 WHERE `entry`= 130026;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 130026, 152576, 66, '1', '0' , '1', '3') /* idespray Linen */, 
( 130026, 152577, 6, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 130026, 163896, 57, '1', '0' , '1', '1') /* alty Pocket Lint */,
( 130026, 166313, 01, '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`= 130027 WHERE `entry`= 130027;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 130027, 152576, 43, '1', '0' , '1', '3') /* idespray Linen */, 
( 130027, 152577, 4, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 130027, 161053, 32, '1', '0' , '1', '7') /* alty Dog Crackers */, 
( 130027, 163896, 07, '1', '0' , '1', '1') /* alty Pocket Lint */, 
( 130027, 163903, 05, '1', '0' , '1', '1') /* alfEaten Sausage */, 
( 130027, 163906, 06, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */, 
( 130027, 168134, 3, '1', '0' , '1', '3') /* ine Azerite Powder */, 
( 130027, 172954, 02, '1', '0' , '4', '4') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 130028 WHERE `entry`= 130028;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 130028, 152576, 38, '1', '0' , '1', '3') /* idespray Linen */, 
( 130028, 152577, 6, '1', '0' , '1', '1') /* eep Sea Satin */,
( 130028, 161053, 33, '1', '0' , '1', '7') /* alty Dog Crackers */, 
( 130028, 163896, 08, '1', '0' , '1', '1') /* alty Pocket Lint */, 
( 130028, 163897, 27, '1', '0' , '1', '1') /* ersonal Spice Stash */, 
( 130028, 163903, 53, '1', '0' , '1', '1') /* alfEaten Sausage */, 
( 130028, 168134, 1, '1', '0' , '1', '3') /* ine Azerite Powder */;

UPDATE `creature_template` SET `lootid`= 130582 WHERE `entry`= 130582;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 130582, 152576, 76, '1', '0' , '1', '3') /* idespray Linen */, 
( 130582, 152577, 8, '1', '0' , '1', '1') /* eep Sea Satin */;

UPDATE `creature_template` SET `lootid`= 131112 WHERE `entry`= 131112;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 131112, 152576, 62, '1', '0' , '1', '3') /* idespray Linen */, 
( 131112, 152577, 7, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 131112, 163896, 37, '1', '0' , '1', '1') /* alty Pocket Lint */, 
( 131112, 166260, 01, '1', '0' , '1', '1') /* ecipe: MonelHardened Hoofplates */;

UPDATE `creature_template` SET `lootid`= 131445 WHERE `entry`= 131445;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 131445, 152576, 39, '1', '0' , '1', '3') /* idespray Linen */, 
( 131445, 152577, 6, '1', '0' , '1', '1') /* eep Sea Satin */,
( 131445, 161053, 35, '1', '0' , '1', '7') /* alty Dog Crackers */, 
( 131445, 166260, 04, '1', '0' , '1', '1') /* ecipe: MonelHardened Hoofplates */, 
( 131445, 168134, 2, '1', '0' , '1', '3') /* ine Azerite Powder */, 
( 131445, 172954, 01, '1', '0' , '5', '5') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 135254 WHERE `entry`= 135254;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 135254, 152576, 76, '1', '0' , '1', '3') /* idespray Linen */, 
( 135254, 152577, 3, '1', '0' , '1', '1') /* eep Sea Satin */;

UPDATE `creature_template` SET `lootid`= 135366 WHERE `entry`= 135366;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 135366, 152576, 68, '1', '0' , '1', '3') /* idespray Linen */, 
( 135366, 152577, 9, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 135366, 163896, 18, '1', '0' , '1', '1') /* alty Pocket Lint */;

UPDATE `creature_template` SET `lootid`= 135448 WHERE `entry`= 135448;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 135448, 160704, 11, '1', '0' , '1', '1') /* ilthy Bucket */;

UPDATE `creature_template` SET `lootid`= 135699 WHERE `entry`= 135699;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 135699, 152576, 44, '1', '0' , '1', '3') /* idespray Linen */, 
( 135699, 152577, 4, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 135699, 161053, 39, '1', '0' , '1', '7') /* alty Dog Crackers */, 
( 135699, 163903, 15, '1', '0' , '1', '1') /* alfEaten Sausage */, 
( 135699, 168134, 2, '1', '0' , '1', '3') /* ine Azerite Powder */, 
( 135699, 172954, 04, '1', '0' , '1', '1') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 135706 WHERE `entry`= 135706;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 135706, 152576, 68, '1', '0' , '1', '3') /* idespray Linen */, 
( 135706, 152577, 9, '1', '0' , '1', '1') /* eep Sea Satin */;

UPDATE `creature_template` SET `lootid`= 136665 WHERE `entry`= 136665;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 136665, 152576, 36, '1', '0' , '1', '3') /* idespray Linen */, 
( 136665, 152577, 3, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 136665, 161053, 46, '1', '0' , '1', '7') /* alty Dog Crackers */, 
( 136665, 163896, 01, '1', '0' , '1', '1') /* alty Pocket Lint */, 
( 136665, 163906, 47, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */, 
( 136665, 168134, 2, '1', '0' , '1', '3') /* ine Azerite Powder */, 
( 136665, 172954, 04, '1', '0' , '6', '6') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 136735 WHERE `entry`= 136735;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 136735, 152576, 54, '1', '0' , '2', '3') /* idespray Linen */, 
( 136735, 152577, 10, '1', '0' , '1', '1') /* eep Sea Satin */,
( 136735, 161053, 35, '1', '0' , '1', '7') /* alty Dog Crackers */, 
( 136735, 168134, 37, '1', '0' , '2', '3') /* ine Azerite Powder */, 
( 136735, 172954, 3, '1', '0' , '3', '3') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`=137098 WHERE `entry`=137098;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(137098, 154899, 17, '1', '0' , '1', '4') /* hick Paleo Steak */, 
(137098, 155609, 12, '1', '0' , '1', '1') /* pringy Eyeball */, 
(137098, 158849, 27, '1', '0' , '1', '1') /* awtooth Jawbone */, 
(137098, 158859, 7, '1', '0' , '1', '1') /* agged Fang */;