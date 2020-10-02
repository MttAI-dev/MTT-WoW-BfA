UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120 WHERE `entry`IN(78116, 95072, 99541, 132198, 134056, 134058, 134060, 134063, 134069, 134137, 134139, 134144, 134150, 134173, 134338, 134417, 134418, 134423, 134514, 134612, 134828, 135903, 136083, 136100, 136186, 136214, 136249, 136295, 136297, 136347, 136353, 137051, 137805, 139626, 139737, 139799, 139800, 139842, 139963, 139970, 139971, 140038, 140149, 141585, 141587, 141851, 142668, 143520, 143622, 143774, 148714, 148716, 148892, 148893, 148894, 149596, 155432, 155433, 155434, 161124, 161241, 161243, 161244, 161408, 161437, 161502, 161510, 161895, 162152, 162764);

UPDATE `creature_template` SET `lootid`= 134056 WHERE `entry`= 134056;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134056, 158318, 9, '1', '0' , '1', '1') /* urky Cerulean Signet */, 
( 134056, 159239, 2, '1', '0' , '1', '1') /* qu'sirr's Swirling Sash */, 
( 134056, 159321, 3, '1', '0' , '1', '1') /* loves of Corrupted Waters */, 
( 134056, 159366, 2, '1', '0' , '1', '1') /* ater Shapers */, 
( 134056, 159420, 2, '1', '0' , '1', '1') /* tormsurger's Sabatons */, 
( 134056, 159619, 2, '1', '0' , '1', '1') /* riny Barnacle */;

UPDATE `creature_template` SET `lootid`= 134058 WHERE `entry`= 134058;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134058, 158371, 6, '1', '0' , '1', '1') /* eabreeze */,
( 134058, 159295, 3, '1', '0' , '1', '1') /* ootpads of the Serene Wake */, 
( 134058, 159311, 3, '1', '0' , '1', '1') /* lessing Bearer's Waders */, 
( 134058, 159359, 2, '1', '0' , '1', '1') /* ea Priest's Greaves */, 
( 134058, 159419, 3, '1', '0' , '1', '1') /* ronhull's Reinforced Legplates */, 
( 134058, 159426, 3, '1', '0' , '1', '1') /* elt of the Unrelenting Gale */, 
( 134058, 159614, 4, '1', '0' , '1', '1') /* alecaller's Boon */, 
( 134058, 162598, 04, '1', '0' , '1', '1') /* nsemble: Vestments of the Tidesages */, 
( 134058, 168137, 07, '1', '0' , '1', '1') /* recision Blessing Tools */;

UPDATE `creature_template` SET `lootid`= 134060 WHERE `entry`= 134060;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134060, 159242, 2, '1', '0' , '1', '1') /* eggings of the Drowned Lord */, 
( 134060, 159289, 10, '1', '0' , '1', '1') /* oidDrenched Cape */, 
( 134060, 159308, 3, '1', '0' , '1', '1') /* racers of the Sacred Fleet */, 
( 134060, 159364, 3, '1', '0' , '1', '1') /* indings of the Calling Depths */, 
( 134060, 159421, 3, '1', '0' , '1', '1') /* auntlets of Total Subservience */, 
( 134060, 159646, 1, '1', '0' , '1', '1') /* q'mar, the Tidecaller */, 
( 134060, 162598, 1, '1', '0' , '1', '1') /* nsemble: Vestments of the Tidesages */;

UPDATE `creature_template` SET `lootid`= 134069 WHERE `entry`= 134069;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134069, 158923, 2, '1', '0' , '1', '1') /* ythic Keystone */, 
( 134069, 159135, 45, '1', '0' , '1', '1') /* eep Fathom's Bite */, 
( 134069, 159238, 3, '1', '0' , '1', '1') /* antle of VoidTouched Waters */, 
( 134069, 159244, 3, '1', '0' , '1', '1') /* tormlurker's Cowl */, 
( 134069, 159302, 5, '1', '0' , '1', '1') /* owl of Fluid Machinations */, 
( 134069, 159307, 5, '1', '0' , '1', '1') /* entacleLaced Spaulders */, 
( 134069, 159354, 4, '1', '0' , '1', '1') /* auberk of Sunken Despair */, 
( 134069, 159377, 4, '1', '0' , '1', '1') /* hain of Consummate Power */, 
( 134069, 159408, 5, '1', '0' , '1', '1') /* hestguard of the Deep Denizen */, 
( 134069, 159430, 5, '1', '0' , '1', '1') /* elm of Abyssal Malevolence */, 
( 134069, 159620, 5, '1', '0' , '1', '1') /* onch of Dark Whispers */, 
( 134069, 162460, 2, '1', '0' , '1', '1') /* ydrocore */, 
( 134069, 162520, 12, '1', '0' , '1', '1') /* ecipe: Mystical Cauldron */, 
( 134069, 165948, 37, '1', '0' , '1', '1') /* idalcore */;

UPDATE `creature_template` SET `lootid`= 134137 WHERE `entry`= 134137;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134137, 152576, 56, '1', '0' , '1', '3') /* idespray Linen */, 
( 134137, 152577, 7, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 134137, 161344, 13, '1', '0' , '1', '1') /* byssal Fragment */, 
( 134137, 163896, 01, '1', '0' , '1', '1') /* alty Pocket Lint */, 
( 134137, 163900, 04, '1', '0' , '1', '1') /* andbook of Knot Tying */, 
( 134137, 163914, 02, '1', '0' , '1', '1') /* entacle Scrimshaw */, 
( 134137, 166313, 01, '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`= 134139 WHERE `entry`= 134139;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134139, 152576, 56, '1', '0' , '1', '3') /* idespray Linen */, 
( 134139, 152577, 7, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 134139, 161344, 87, '1', '0' , '1', '1') /* byssal Fragment */, 
( 134139, 163900, 02, '1', '0' , '1', '1') /* andbook of Knot Tying */, 
( 134139, 163914, 08, '1', '0' , '1', '1') /* entacle Scrimshaw */, 
( 134139, 172954, 01, '1', '0' , '6', '6') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 134144 WHERE `entry`= 134144;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134144, 157844, 55, '1', '0' , '1', '1') /* ridescent Speck */, 
( 134144, 158810, 9, '1', '0' , '1', '1') /* umming Dew */, 
( 134144, 158872, 01, '1', '0' , '1', '1') /* nstable Essence */, 
( 134144, 158874, 31, '1', '0' , '1', '1') /* rothing Vapor */;

UPDATE `creature_template` SET `lootid`= 134150 WHERE `entry`= 134150;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134150, 152576, 57, '1', '0' , '1', '3') /* idespray Linen */, 
( 134150, 152577, 9, '1', '0' , '1', '1') /* eep Sea Satin */,
( 134150, 172954, 03, '1', '0' , '1', '4') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 134173 WHERE `entry`= 134173;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134173, 157844, 63, '1', '0' , '1', '1') /* ridescent Speck */, 
( 134173, 158810, 8, '1', '0' , '1', '1') /* umming Dew */, 
( 134173, 158872, 01, '1', '0' , '1', '1') /* nstable Essence */, 
( 134173, 158874, 29, '1', '0' , '1', '1') /* rothing Vapor */;

UPDATE `creature_template` SET `lootid`= 134338 WHERE `entry`= 134338;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134338, 152576, 55, '1', '0' , '1', '3') /* idespray Linen */, 
( 134338, 152577, 7, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 134338, 163901, 15, '1', '0' , '1', '1') /* aterproof Flintbox */, 
( 134338, 166313, 08, '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`= 134417 WHERE `entry`= 134417;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134417, 152576, 64, '1', '0' , '1', '3') /* idespray Linen */, 
( 134417, 152577, 7, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 134417, 161344, 25, '1', '0' , '1', '1') /* byssal Fragment */, 
( 134417, 163900, 11, '1', '0' , '1', '1') /* andbook of Knot Tying */, 
( 134417, 163914, 08, '1', '0' , '1', '1') /* entacle Scrimshaw */;

UPDATE `creature_template` SET `lootid`= 134418 WHERE `entry`= 134418;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134418, 152576, 56, '1', '0' , '1', '3') /* idespray Linen */, 
( 134418, 152577, 6, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 134418, 161344, 01, '1', '0' , '1', '1') /* byssal Fragment */, 
( 134418, 163896, 04, '1', '0' , '1', '1') /* alty Pocket Lint */, 
( 134418, 163914, 05, '1', '0' , '1', '1') /* entacle Scrimshaw */;

UPDATE `creature_template` SET `lootid`= 134423 WHERE `entry`= 134423;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134423, 155636, 57, '1', '0' , '1', '1') /* iscous Ink */, 
( 134423, 158778, 38, '1', '0' , '1', '1') /* ucose Tendril */, 
( 134423, 158796, 4, '1', '0' , '1', '1') /* enomous Tentacle */,
( 134423, 161344, 04, '1', '0' , '1', '1') /* byssal Fragment */, 
( 134423, 163941, 01, '1', '0' , '1', '1') /* auer's Gloves of Strategy */;

UPDATE `creature_template` SET `lootid`= 134514 WHERE `entry`= 134514;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134514, 152576, 54, '1', '0' , '1', '3') /* idespray Linen */, 
( 134514, 152577, 9, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 134514, 161344, 28, '1', '0' , '1', '1') /* byssal Fragment */, 
( 134514, 163896, 25, '1', '0' , '1', '1') /* alty Pocket Lint */, 
( 134514, 163901, 04, '1', '0' , '1', '1') /* aterproof Flintbox */, 
( 134514, 163914, 07, '1', '0' , '1', '1') /* entacle Scrimshaw */, 
( 134514, 172954, 01, '1', '0' , '1', '1') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 136186 WHERE `entry`= 136186;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 136186, 152576, 58, '1', '0' , '1', '3') /* idespray Linen */, 
( 136186, 152577, 6, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 136186, 161344, 12, '1', '0' , '1', '1') /* byssal Fragment */, 
( 136186, 163896, 02, '1', '0' , '1', '1') /* alty Pocket Lint */, 
( 136186, 163901, 12, '1', '0' , '1', '1') /* aterproof Flintbox */, 
( 136186, 163914, 05, '1', '0' , '1', '1') /* entacle Scrimshaw */, 
( 136186, 166313, 02, '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`= 136214 WHERE `entry`= 136214;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 136214, 152576, 52, '1', '0' , '1', '3') /* idespray Linen */, 
( 136214, 152577, 4, '1', '0' , '1', '1') /* eep Sea Satin */,
( 136214, 161344, 21, '1', '0' , '1', '1') /* byssal Fragment */, 
( 136214, 163896, 2, '1', '0' , '1', '1') /* alty Pocket Lint */, 
( 136214, 163900, 19, '1', '0' , '1', '1') /* andbook of Knot Tying */, 
( 136214, 163901, 15, '1', '0' , '1', '1') /* aterproof Flintbox */, 
( 136214, 172954, 02, '1', '0' , '3', '3') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 136249 WHERE `entry`= 136249;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 136249, 157844, 56, '1', '0' , '1', '1') /* ridescent Speck */, 
( 136249, 158810, 8, '1', '0' , '1', '1') /* umming Dew */, 
( 136249, 158874, 33, '1', '0' , '1', '1') /* rothing Vapor */;
 
 
 UPDATE `creature_template` SET `lootid`=136297 WHERE `entry`=136297;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(136297, 155636, 55, '1', '0' , '1', '1') /* iscous Ink */, 
(136297, 158778, 38, '1', '0' , '1', '1') /* ucose Tendril */, 
(136297, 158796, 4, '1', '0' , '1', '1') /* enomous Tentacle */;

UPDATE `creature_template` SET `lootid`= 136347 WHERE `entry`= 136347;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 136347, 152576, 61, '1', '0' , '1', '3') /* idespray Linen */, 
( 136347, 152577, 7, '1', '0' , '1', '1') /* eep Sea Satin */,
( 136347, 161344, 34, '1', '0' , '1', '1') /* byssal Fragment */, 
( 136347, 163914, 01, '1', '0' , '1', '1') /* entacle Scrimshaw */, 
( 136347, 172954, 01, '1', '0' , '1', '6') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 136353 WHERE `entry`= 136353;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 136353, 155636, 55, '1', '0' , '1', '1') /* iscous Ink */, 
( 136353, 158778, 38, '1', '0' , '1', '1') /* ucose Tendril */, 
( 136353, 158796, 3, '1', '0' , '1', '1') /* enomous Tentacle */, 
( 136353, 161344, 02, '1', '0' , '1', '1') /* byssal Fragment */;

UPDATE `creature_template` SET `lootid`= 137805 WHERE `entry`= 137805;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 137805, 155615, 7, '1', '0' , '1', '1') /* estilent Muck */, 
( 137805, 158773, 4, '1', '0' , '1', '1') /* riggling Goop */, 
( 137805, 158838, 12, '1', '0' , '1', '1') /* ibrous Sludge */;

UPDATE `creature_template` SET `lootid`= 139626 WHERE `entry`= 139626;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 139626, 155608, 68, '1', '0' , '1', '1') /* efiled Bone */, 
( 139626, 158790, 4, '1', '0' , '1', '1') /* harnel Ash */, 
( 139626, 158862, 28, '1', '0' , '1', '1') /* ncient Grave Dust */;

UPDATE `creature_template` SET `lootid`= 139799 WHERE `entry`= 139799;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 139799, 152576, 56, '1', '0' , '1', '3') /* idespray Linen */, 
( 139799, 152577, 7, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 139799, 161344, 14, '1', '0' , '1', '1') /* byssal Fragment */, 
( 139799, 163900, 05, '1', '0' , '1', '1') /* andbook of Knot Tying */, 
( 139799, 163914, 01, '1', '0' , '1', '1') /* entacle Scrimshaw */;

UPDATE `creature_template` SET `lootid`= 139800 WHERE `entry`= 139800;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 139800, 152576, 58, '1', '0' , '1', '3') /* idespray Linen */, 
( 139800, 152577, 5, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 139800, 161344, 23, '1', '0' , '1', '1') /* byssal Fragment */, 
( 139800, 163896, 01, '1', '0' , '1', '1') /* alty Pocket Lint */, 
( 139800, 163901, 13, '1', '0' , '1', '1') /* aterproof Flintbox */, 
( 139800, 163914, 1, '1', '0' , '1', '1') /* entacle Scrimshaw */;

UPDATE `creature_template` SET `lootid`= 140038 WHERE `entry`= 140038;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 140038, 152631, 25, '1', '0' , '1', '4') /* riny Flesh */, 
( 140038, 153050, 05, '1', '0' , '1', '2') /* himmerscale */, 
( 140038, 153051, 03, '1', '0' , '1', '1') /* istscale */, 
( 140038, 155603, 56, '1', '0' , '1', '1') /* laky Fish Scales */, 
( 140038, 155618, 03, '1', '0' , '1', '1') /* iscarded Molting */, 
( 140038, 158760, 39, '1', '0' , '1', '1') /* in Ray */, 
( 140038, 158801, 3, '1', '0' , '1', '1') /* inely Serrated Tooth */,
( 140038, 161344, 12, '1', '0' , '1', '1') /* byssal Fragment */;