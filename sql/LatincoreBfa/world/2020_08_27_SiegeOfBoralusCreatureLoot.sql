UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120 WHERE `entry`IN(118191, 121307, 128222, 128649, 128650, 128651, 128652, 128967, 128969, 129208, 129366, 129367, 129369, 129370, 129371, 129372, 129373, 129374, 129640, 129879, 129928, 129989, 129996, 130836, 132198, 132481, 132491, 132530, 132532, 133164, 133196, 133990, 135241, 135245, 135258, 135263, 136483, 136549, 137118, 137123, 137405, 137511, 137516, 137517, 137521, 137614, 137625, 137626, 137627, 138002, 138004, 138019, 138034, 138035, 138046, 138050, 138119, 138120, 138247, 138254, 138255, 138464, 138465, 139830, 140447, 141282, 141283, 141284, 141285, 141493, 141495, 141497, 141565, 141566, 141589, 141591, 141625, 141627, 141629, 141631, 141633, 141634, 141635, 141636, 141637, 141639, 141792, 141800, 141805, 141825, 141827, 141834, 141938, 141939, 142144, 142293, 142447, 142460, 142461, 142486, 142512, 143618, 143774, 143934, 144071, 144158, 144160, 144167, 144168, 144169, 144170, 144171, 148714, 148716, 148892, 148893, 148894, 149596, 149768, 149770, 155432, 155433, 155434, 161124, 161241, 161243, 161244, 161408, 161437, 161502, 161510, 161895, 162152);

UPDATE `creature_template` SET `lootid`= 128649 WHERE `entry`= 128649;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 128649, 159245, 13, '1', '0' , '1', '1') /* ord of the Pious Warder */, 
( 128649, 159278, 14, '1', '0' , '1', '1') /* lippers of Unwavering Faith */, 
( 128649, 159328, 32, '1', '0' , '1', '1') /* harf Warden's Gloves */, 
( 128649, 159367, 08, '1', '0' , '1', '1') /* nstoppable Zealot's Legplates */, 
( 128649, 159411, 19, '1', '0' , '1', '1') /* egplates of the Maritime Guard */, 
( 128649, 159647, 09, '1', '0' , '1', '1') /* iegebreaker's Halberd */, 
( 128649, 159648, 09, '1', '0' , '1', '1') /* ainbridge's Blackjack */, 
( 128649, 162542, 76, '1', '0' , '1', '1') /* eal of the City Watch */, 
( 128649, 168134, 01, '1', '0' , '1', '2') /* ine Azerite Powder */, 
( 128649, 172954, 01, '1', '0' , '1', '1') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 128650 WHERE `entry`= 128650;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 128650, 159251, 14, '1', '0' , '1', '1') /* opSail Footwraps */, 
( 128650, 159427, 19, '1', '0' , '1', '1') /* egplates of the Irontide Raider */, 
( 128650, 159965, 21, '1', '0' , '1', '1') /* edhook's Cummerbund */, 
( 128650, 159968, 17, '1', '0' , '1', '1') /* loves of the Iron Reavers */, 
( 128650, 159969, 13, '1', '0' , '1', '1') /* owdershot Leggings */, 
( 128650, 159972, 23, '1', '0' , '1', '1') /* utineer's Fate */, 
( 128650, 159973, 08, '1', '0' , '1', '1') /* oarder's Billy Club */, 
( 128650, 162541, 82, '1', '0' , '1', '1') /* and of the Roving Scalawag */, 
( 128650, 168134, 02, '1', '0' , '1', '3') /* ine Azerite Powder */;

UPDATE `creature_template` SET `lootid`= 128651 WHERE `entry`= 128651;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 128651, 159322, 13, '1', '0' , '1', '1') /* eawalker's Pantaloons */, 
( 128651, 159386, 04, '1', '0' , '1', '1') /* nchor Chain Girdle */, 
( 128651, 159428, 27, '1', '0' , '1', '1') /* allast Sinkers */, 
( 128651, 159461, 1, '1', '0' , '1', '1') /* and of the Ancient Dredger */, 
( 128651, 159622, 18, '1', '0' , '1', '1') /* adal's Nautilus */, 
( 128651, 159650, 08, '1', '0' , '1', '1') /* ismembered Submersible Claw */, 
( 128651, 172954, 01, '1', '0' , '1', '1') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 128967 WHERE `entry`= 128967;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 128967, 152576, 7, '1', '0' , '1', '3') /* idespray Linen */, 
( 128967, 152577, 36, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 128967, 161053, 2, '1', '0' , '1', '7') /* alty Dog Crackers */, 
( 128967, 163897, 13, '1', '0' , '1', '1') /* ersonal Spice Stash */, 
( 128967, 168134, 11, '1', '0' , '1', '3') /* ine Azerite Powder */, 
( 128967, 172954, 01, '1', '0' , '1', '1') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 128969 WHERE `entry`= 128969;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 128969, 152576, 8, '1', '0' , '1', '3') /* idespray Linen */, 
( 128969, 152577, 55, '1', '0' , '1', '1') /* eep Sea Satin */,
( 128969, 161053, 2, '1', '0' , '1', '7') /* alty Dog Crackers */, 
( 128969, 168134, 08, '1', '0' , '1', '3') /* ine Azerite Powder */, 
( 128969, 172954, 01, '1', '0' , '3', '6') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 129208 WHERE `entry`= 129208;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 129208, 159237, 23, '1', '0' , '1', '1') /* aptain's Dustfinders */, 
( 129208, 159250, 2, '1', '0' , '1', '1') /* owder Monkey's Leggings */, 
( 129208, 159309, 24, '1', '0' , '1', '1') /* ort Pillager's Belt */, 
( 129208, 159320, 12, '1', '0' , '1', '1') /* esieger's Deckstalkers */, 
( 129208, 159372, 1, '1', '0' , '1', '1') /* read Captain's Irons */, 
( 129208, 159379, 14, '1', '0' , '1', '1') /* ureFoot Sabatons */, 
( 129208, 159429, 28, '1', '0' , '1', '1') /* opeScored Gauntlets */, 
( 129208, 159434, 32, '1', '0' , '1', '1') /* annoneer's Toolbelt */, 
( 129208, 159623, 22, '1', '0' , '1', '1') /* eadEye Spyglass */, 
( 129208, 159649, 09, '1', '0' , '1', '1') /* aber of Dread Pirate Lockwood */;

UPDATE `creature_template` SET `lootid`= 129366 WHERE `entry`= 129366;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 129366, 152576, 12, '1', '0' , '1', '3') /* idespray Linen */, 
( 129366, 152577, 63, '1', '0' , '1', '1') /* eep Sea Satin */;

UPDATE `creature_template` SET `lootid`= 129367 WHERE `entry`= 129367;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 129367, 152576, 14, '1', '0' , '1', '3') /* idespray Linen */, 
( 129367, 152577, 1, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 129367, 163027, 18, '1', '0' , '1', '1') /* attern: Embroidered Deep Sea Bag */;

UPDATE `creature_template` SET `lootid`= 129369 WHERE `entry`= 129369;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 129369, 152576, 11, '1', '0' , '1', '3') /* idespray Linen */, 
( 129369, 152577, 1, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 129369, 163906, 02, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */, 
( 129369, 163910, 78, '1', '0' , '1', '1') /* eg Leg Repair Kit */, 
( 129369, 172954, 01, '1', '0' , '5', '5') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 129370 WHERE `entry`= 129370;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 129370, 152576, 11, '1', '0' , '1', '3') /* idespray Linen */, 
( 129370, 152577, 58, '1', '0' , '1', '1') /* eep Sea Satin */,
( 129370, 166260, 1, '1', '0' , '1', '1') /* ecipe: MonelHardened Hoofplates */, 
( 129370, 166313, 01, '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */, 
( 129370, 172954, 01, '1', '0' , '5', '5') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 129371 WHERE `entry`= 129371;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 129371, 152576, 11, '1', '0' , '1', '3') /* idespray Linen */, 
( 129371, 152577, 58, '1', '0' , '1', '1') /* eep Sea Satin */;

UPDATE `creature_template` SET `lootid`= 129372 WHERE `entry`= 129372;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 129372, 152576, 12, '1', '0' , '1', '3') /* idespray Linen */, 
( 129372, 152577, 7, '1', '0' , '1', '1') /* eep Sea Satin */,
( 129372, 172954, 01, '1', '0' , '4', '4') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 129373 WHERE `entry`= 129373;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 129373, 152576, 13, '1', '0' , '1', '3') /* idespray Linen */, 
( 129373, 152577, 1, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 129373, 163910, 14, '1', '0' , '1', '1') /* eg Leg Repair Kit */, 
( 129373, 172954, 02, '1', '0' , '4', '4') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 129374 WHERE `entry`= 129374;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 129374, 152576, 13, '1', '0' , '1', '3') /* idespray Linen */, 
( 129374, 152577, 1, '1', '0' , '1', '1') /* eep Sea Satin */,
( 129374, 166313, 43, '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */, 
( 129374, 172954, 01, '1', '0' , '3', '3') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 129640 WHERE `entry`= 129640;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 129640, 154897, 10, '1', '0' , '1', '4') /* tringy Loins */, 
( 129640, 155629, 8, '1', '0' , '1', '1') /* haggy Mane */, 
( 129640, 158808, 3, '1', '0' , '1', '1') /* hick Tendon */, 
( 129640, 158818, 2, '1', '0' , '1', '1') /* anine Tongue */;

UPDATE `creature_template` SET `lootid`= 133990 WHERE `entry`= 133990;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 133990, 152576, 5, '1', '0' , '1', '3') /* idespray Linen */, 
( 133990, 152577, 49, '1', '0' , '1', '1') /* eep Sea Satin */,
( 133990, 163902, 04, '1', '0' , '1', '1') /* reasure Map Fragment */, 
( 133990, 166260, 04, '1', '0' , '1', '1') /* ecipe: MonelHardened Hoofplates */, 
( 133990, 166313, 09, '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */, 
( 133990, 172954, 01, '1', '0' , '1', '6') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 135241 WHERE `entry`= 135241;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 135241, 155603, 3, '1', '0' , '1', '1') /* laky Fish Scales */, 
( 135241, 158745, 4, '1', '0' , '1', '1') /* uminous Scale */, 
( 135241, 158765, 33, '1', '0' , '1', '1') /* ardshell Mollusk */;

UPDATE `creature_template` SET `lootid`= 135245 WHERE `entry`= 135245;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 135245, 152576, 12, '1', '0' , '1', '3') /* idespray Linen */, 
( 135245, 152577, 71, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 135245, 163027, 01, '1', '0' , '1', '1') /* attern: Embroidered Deep Sea Bag */, 
( 135245, 172954, 03, '1', '0' , '4', '4') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 135258 WHERE `entry`= 135258;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 135258, 152576, 5, '1', '0' , '1', '3') /* idespray Linen */, 
( 135258, 152577, 75, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 135258, 163902, 11, '1', '0' , '1', '1') /* reasure Map Fragment */;

UPDATE `creature_template` SET `lootid`= 135263 WHERE `entry`= 135263;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 135263, 152576, 13, '1', '0' , '1', '3') /* idespray Linen */, 
( 135263, 152577, 1, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 135263, 163902, 01, '1', '0' , '1', '1') /* reasure Map Fragment */, 
( 135263, 172954, 03, '1', '0' , '1', '1') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 137511 WHERE `entry`= 137511;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 137511, 152576, 12, '1', '0' , '1', '3') /* idespray Linen */, 
( 137511, 152577, 47, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 137511, 161344, 01, '1', '0' , '1', '1') /* byssal Fragment */, 
( 137511, 163027, 01, '1', '0' , '1', '1') /* attern: Embroidered Deep Sea Bag */;

UPDATE `creature_template` SET `lootid`= 137516 WHERE `entry`= 137516;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 137516, 152576, 10, '1', '0' , '1', '3') /* idespray Linen */, 
( 137516, 152577, 81, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 137516, 161053, 3, '1', '0' , '1', '7') /* alty Dog Crackers */, 
( 137516, 168134, 1, '1', '0' , '1', '3') /* ine Azerite Powder */;

UPDATE `creature_template` SET `lootid`= 137517 WHERE `entry`= 137517;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 137517, 152576, 8, '1', '0' , '1', '3') /* idespray Linen */, 
( 137517, 152577, 1, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 137517, 161053, 2, '1', '0' , '1', '7') /* alty Dog Crackers */, 
( 137517, 168134, 08, '1', '0' , '1', '3') /* ine Azerite Powder */, 
( 137517, 172954, 01, '1', '0' , '1', '1') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 137521 WHERE `entry`= 137521;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 137521, 152576, 6, '1', '0' , '1', '3') /* idespray Linen */, 
( 137521, 152577, 67, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 137521, 163906, 17, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */;

UPDATE `creature_template` SET `lootid`= 138002 WHERE `entry`= 138002;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 138002, 152576, 4, '1', '0' , '1', '3') /* idespray Linen */, 
( 138002, 152577, 21, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 138002, 172954, 01, '1', '0' , '3', '3') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 138247 WHERE `entry`= 138247;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 138247, 152576, 6, '1', '0' , '1', '3') /* idespray Linen */, 
( 138247, 152577, 47, '1', '0' , '1', '1') /* eep Sea Satin */,
( 138247, 172954, 02, '1', '0' , '1', '6') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 138255 WHERE `entry`= 138255;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 138255, 152576, 7, '1', '0' , '1', '3') /* idespray Linen */, 
( 138255, 161053, 2, '1', '0' , '2', '7') /* alty Dog Crackers */, 
( 138255, 168134, 14, '1', '0' , '1', '3') /* ine Azerite Powder */;

UPDATE `creature_template` SET `lootid`= 141282 WHERE `entry`= 141282;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141282, 152576, 5, '1', '0' , '1', '3') /* idespray Linen */, 
( 141282, 152577, 58, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 141282, 172954, 02, '1', '0' , '3', '4') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 141283 WHERE `entry`= 141283;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141283, 152576, 11, '1', '0' , '1', '3') /* idespray Linen */, 
( 141283, 152577, 2, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 141283, 163906, 37, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */;

UPDATE `creature_template` SET `lootid`= 141284 WHERE `entry`= 141284;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141284, 152576, 14, '1', '0' , '1', '3') /* idespray Linen */, 
( 141284, 152577, 83, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 141284, 163911, 37, '1', '0' , '1', '1') /* ake Eye Patch */, 
( 141284, 166313, 03, '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */, 
( 141284, 172954, 02, '1', '0' , '4', '4') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 141495 WHERE `entry`= 141495;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141495, 152576, 7, '1', '0' , '1', '3') /* idespray Linen */, 
( 141495, 152577, 11, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 141495, 163908, 22, '1', '0' , '1', '1') /* oaded Deck of Cards */, 
( 141495, 163911, 01, '1', '0' , '1', '1') /* ake Eye Patch */, 
( 141495, 166260, 01, '1', '0' , '1', '1') /* ecipe: MonelHardened Hoofplates */, 
( 141495, 172954, 02, '1', '0' , '1', '6') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 141565 WHERE `entry`= 141565;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141565, 152576, 6, '1', '0' , '1', '3') /* idespray Linen */, 
( 141565, 152577, 32, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 141565, 172954, 01, '1', '0' , '1', '4') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 141589 WHERE `entry`= 141589;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141589, 152576, 4, '1', '0' , '1', '3') /* idespray Linen */, 
( 141589, 152577, 83, '1', '0' , '1', '1') /* eep Sea Satin */,
( 141589, 161053, 4, '1', '0' , '1', '7') /* alty Dog Crackers */;

UPDATE `creature_template` SET `lootid`= 141591 WHERE `entry`= 141591;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141591, 152576, 9, '1', '0' , '2', '3') /* idespray Linen */,
( 141591, 161053, 5, '1', '0' , '5', '7') /* alty Dog Crackers */;

UPDATE `creature_template` SET `lootid`= 141625 WHERE `entry`= 141625;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141625, 152576, 2, '1', '0' , '1', '3') /* idespray Linen */;

UPDATE `creature_template` SET `lootid`= 141627 WHERE `entry`= 141627;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141627, 152576, 4, '1', '0' , '1', '3') /* idespray Linen */;

UPDATE `creature_template` SET `lootid`= 141629 WHERE `entry`= 141629;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141629, 152576, 4, '1', '0' , '1', '3') /* idespray Linen */;

UPDATE `creature_template` SET `lootid`= 141631 WHERE `entry`= 141631;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141631, 152576, 3, '1', '0' , '2', '3') /* idespray Linen */;

UPDATE `creature_template` SET `lootid`= 141633 WHERE `entry`= 141633;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141633, 152576, 2, '1', '0' , '2', '3') /* idespray Linen */;

UPDATE `creature_template` SET `lootid`= 141634 WHERE `entry`= 141634;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141634, 152576, 5, '1', '0' , '2', '3') /* idespray Linen */;

UPDATE `creature_template` SET `lootid`= 141635 WHERE `entry`= 141635;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141635, 152576, 17, '1', '0' , '1', '3') /* idespray Linen */;

UPDATE `creature_template` SET `lootid`= 141636 WHERE `entry`= 141636;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141636, 152576, 7, '1', '0' , '1', '3') /* idespray Linen */;

UPDATE `creature_template` SET `lootid`= 141637 WHERE `entry`= 141637;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141637, 152576, 11, '1', '0' , '1', '3') /* idespray Linen */, 
( 141637, 152577, 2, '1', '0' , '1', '1') /* eep Sea Satin */;

UPDATE `creature_template` SET `lootid`= 141639 WHERE `entry`= 141639;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141639, 152576, 8, '1', '0' , '1', '3') /* idespray Linen */;

UPDATE `creature_template` SET `lootid`= 141792 WHERE `entry`= 141792;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141792, 152576, 25, '1', '0' , '1', '1') /* idespray Linen */, 
( 141792, 152577, 2, '1', '0' , '1', '1') /* eep Sea Satin */;

UPDATE `creature_template` SET `lootid`=141800 WHERE `entry`=141800;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(141800, 152576, 2, '1', '0' , '2', '2') /* Tidespray Linen */, 
(141800, 152577, 2, '1', '0' , '1', '1') /* Deep Sea Satin */;

UPDATE `creature_template` SET `lootid`= 141805 WHERE `entry`= 141805;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 141805, 157842, 13, '1', '0' , '1', '1') /* usty Gear */, 
( 141805, 158834, 4, '1', '0' , '1', '1') /* inch Coil */;

UPDATE `creature_template` SET `lootid`= 144071 WHERE `entry`= 144071;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 144071, 152576, 16, '1', '0' , '1', '3') /* idespray Linen */, 
( 144071, 152577, 53, '1', '0' , '1', '1') /* eep Sea Satin */;

UPDATE `creature_template` SET `lootid`= 144168 WHERE `entry`= 144168;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 144168, 152576, 3, '1', '0' , '1', '3') /* idespray Linen */, 
( 144168, 152577, 2, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 144168, 161053, 69, '1', '0' , '1', '5') /* alty Dog Crackers */, 
( 144168, 168134, 05, '1', '0' , '1', '1') /* ine Azerite Powder */;

UPDATE `creature_template` SET `lootid`= 144169 WHERE `entry`= 144169;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 144169, 152576, 4, '1', '0' , '1', '3') /* idespray Linen */, 
( 144169, 152577, 15, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 144169, 161053, 1, '1', '0' , '1', '7') /* alty Dog Crackers */, 
( 144169, 168134, 11, '1', '0' , '1', '1') /* ine Azerite Powder */;

UPDATE `creature_template` SET `lootid`= 144170 WHERE `entry`= 144170;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 144170, 152576, 4, '1', '0' , '1', '3') /* idespray Linen */, 
( 144170, 152577, 23, '1', '0' , '1', '1') /* eep Sea Satin */,
( 144170, 161053, 2, '1', '0' , '1', '7') /* alty Dog Crackers */, 
( 144170, 168134, 03, '1', '0' , '2', '2') /* ine Azerite Powder */;