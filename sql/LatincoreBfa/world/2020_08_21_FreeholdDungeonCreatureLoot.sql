UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120 WHERE `entry`IN(65310, 65325, 88241, 92365, 103098, 118191, 121762, 126497, 126832, 126845, 126847, 126848, 126918, 126919, 126928, 126969, 126983, 127019, 127106, 127111, 127119, 127124, 128551, 129350, 129352, 129432, 129441, 129526, 129527, 129529, 129547, 129548, 129550, 129559, 129598, 129599, 129600, 129601, 129602, 129645, 129699, 129758, 129788, 130011, 130012, 130024, 130086, 130090, 130099, 130172, 130400, 130404, 130467, 130521, 130522, 130536, 130689, 130896, 132198, 132238, 133219, 134021, 135050, 135353, 135938, 135978, 136107, 136445, 136539, 138314, 138676, 141851, 142666, 142668, 143774, 144596, 148714, 148716, 148892, 148893, 148894, 149596, 151843, 153897, 155432, 155433, 155434, 158635, 161124, 161241, 161243, 161244, 161408, 161437, 161502, 161510, 161895, 162152);

UPDATE `creature_template` SET `lootid`= 126832 WHERE `entry`= 126832;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 126832, 139299, '0', 53, '0', '1', '0', '1', '1', '') /* inely-Tailored Red Holiday Hat */, 
( 126832, 155862, '0', 3, '0', '1', '0', '1', '1', '') /* ragg's Rigging Scalers */, 
( 126832, 155884, '0', 11, '0', '1', '0', '1', '1', '') /* arrotfeather Cloak */, 
( 126832, 158360, '0', 2, '0', '1', '0', '1', '1', '') /* harkbait Harness Girdle */, 
( 126832, 159227, '0', 2, '0', '1', '0', '1', '1', '') /* ilk Cuffs of the Skycap'n */, 
( 126832, 159353, '0', 2, '0', '1', '0', '1', '1', '') /* hain-Linked Safety Cord */, 
( 126832, 159633, '0', 28, '0', '1', '0', '1', '1', '') /* harkbait's Fishhook */;

UPDATE `creature_template` SET `lootid`= 126918 WHERE `entry`= 126918;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 126918, 152576, '0', 63, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 126918, 152577, '0', 7, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 126918, 163902, '0', 03, '0', '1', '0', '1', '1', '') /* reasure Map Fragment */, 
( 126918, 163910, '0', 04, '0', '1', '0', '1', '1', '') /* eg Leg Repair Kit */, 
( 126918, 163911, '0', 03, '0', '1', '0', '1', '1', '') /* ake Eye Patch */,
( 126918, 166260, '0', 05, '0', '1', '0', '1', '1', '') /* ecipe: Monel-Hardened Hoofplates */, 
( 126918, 166313, '0', 01, '0', '1', '0', '1', '1', '') /* ecipe: Coarse Leather Barding */, 
( 126918, 172954, '0', 4, '0', '1', '0', '1', '6', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 126919 WHERE `entry`= 126919;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 126919, 152576, '0', 61, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 126919, 152577, '0', 7, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 126919, 163902, '0', 09, '0', '1', '0', '1', '1', '') /* reasure Map Fragment */;

UPDATE `creature_template` SET `lootid`= 126928 WHERE `entry`= 126928;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 126928, 152576, '0', 65, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 126928, 152577, '0', 6, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 126928, 163906, '0', 01, '0', '1', '0', '1', '1', '') /* ounterfeit Kul Tiran Coins */, 
( 126928, 163910, '0', 05, '0', '1', '0', '1', '1', '') /* eg Leg Repair Kit */, 
( 126928, 166260, '0', 02, '0', '1', '0', '1', '1', '') /* ecipe: Monel-Hardened Hoofplates */, 
( 126928, 166313, '0', 04, '0', '1', '0', '1', '1', '') /* ecipe: Coarse Leather Barding */, 
( 126928, 172954, '0', 2, '0', '1', '0', '1', '4', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 126969 WHERE `entry`= 126969;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 126969, 155889, '0', 3, '0', '1', '0', '1', '1', '') /* harkhide Grips */, 
( 126969, 155890, '0', 3, '0', '1', '0', '1', '1', '') /* harktooth-Knuckled Grips */, 
( 126969, 155891, '0', 3, '0', '1', '0', '1', '1', '') /* reasy Bacon-Grabbers */, 
( 126969, 155892, '0', 2, '0', '1', '0', '1', '1', '') /* ite-Resistant Chain Gloves */, 
( 126969, 158302, '0', 3, '0', '1', '0', '1', '1', '') /* hum-Coated Leggings */, 
( 126969, 158305, '0', 4, '0', '1', '0', '1', '1', '') /* ea Dog's Cuffs */, 
( 126969, 158356, '0', 2, '0', '1', '0', '1', '1', '') /* hell-Kickers */, 
( 126969, 158361, '0', 2, '0', '1', '0', '1', '1', '') /* harkwater Waders */,
( 126969, 159634, '0', 2, '0', '1', '0', '1', '1', '') /* eweled Sharksplitter */;

UPDATE `creature_template` SET `lootid`= 126983 WHERE `entry`= 126983;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 126983, 155881, '0', 5, '0', '1', '0', '1', '1', '') /* arlan's Loaded Dice */, 
( 126983, 155885, '0', 6, '0', '1', '0', '1', '1', '') /* ea-Brawler's Greathelm */, 
( 126983, 155886, '0', 5, '0', '1', '0', '1', '1', '') /* martly Plumed Cap */, 
( 126983, 155887, '0', 3, '0', '1', '0', '1', '1', '') /* weete's Jeweled Headgear */, 
( 126983, 155888, '0', 5, '0', '1', '0', '1', '1', '') /* rontide Captain's Hat */, 
( 126983, 158301, '0', 4, '0', '1', '0', '1', '1', '') /* uffled Poet Blouse */, 
( 126983, 158923, '0', 5, '0', '1', '0', '1', '1', '') /* ythic Keystone */, 
( 126983, 159299, '0', 5, '0', '1', '0', '1', '1', '') /* old-Tasseled Epaulets */, 
( 126983, 159352, '0', 4, '0', '1', '0', '1', '1', '') /* aping Maw Shoulderguard */, 
( 126983, 159407, '0', 5, '0', '1', '0', '1', '1', '') /* ockjaw Shoulderplate */,
( 126983, 159635, '0', 2, '0', '1', '0', '1', '1', '') /* loody Tideturner */, 
( 126983, 159842, '0', 21, '0', '1', '0', '1', '1', '') /* harkbait's Favorite Crackers */, 
( 126983, 162460, '0', 2, '0', '1', '0', '1', '1', '') /* ydrocore */, 
( 126983, 162520, '0', 16, '0', '1', '0', '1', '1', '') /* ecipe: Mystical Cauldron */, 
( 126983, 165948, '0', 37, '0', '1', '0', '1', '1', '') /* idalcore */, 
( 126983, 168132, '0', 11, '0', '1', '0', '1', '1', '') /* weete's Diamond-Studded Spyglass */;

UPDATE `creature_template` SET `lootid`= 127106 WHERE `entry`= 127106;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 127106, 152576, '0', 53, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 127106, 152577, '0', 14, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 127106, 163911, '0', 06, '0', '1', '0', '1', '1', '') /* ake Eye Patch */, 
( 127106, 172954, '0', 2, '0', '1', '0', '5', '6', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 127111 WHERE `entry`= 127111;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 127111, 152576, '0', 63, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 127111, 152577, '0', 5, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 127111, 163906, '0', 11, '0', '1', '0', '1', '1', '') /* ounterfeit Kul Tiran Coins */, 
( 127111, 163910, '0', 04, '0', '1', '0', '1', '1', '') /* eg Leg Repair Kit */, 
( 127111, 163911, '0', 08, '0', '1', '0', '1', '1', '') /* ake Eye Patch */, 
( 127111, 172954, '0', 2, '0', '1', '0', '1', '1', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 127119 WHERE `entry`= 127119;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 127119, 152576, '0', 68, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 127119, 152577, '0', 11, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 127119, 166260, '0', 01, '0', '1', '0', '1', '1', '') /* ecipe: Monel-Hardened Hoofplates */, 
( 127119, 166313, '0', 01, '0', '1', '0', '1', '1', '') /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`= 127124 WHERE `entry`= 127124;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 127124, 152576, '0', 70, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 127124, 152577, '0', 2, '0', '1', '0', '1', '1', '') /* eep Sea Satin */,
( 127124, 163911, '0', 1, '0', '1', '0', '1', '1', '') /* ake Eye Patch */, 
( 127124, 166260, '0', 02, '0', '1', '0', '1', '1', '') /* ecipe: Monel-Hardened Hoofplates */;

UPDATE `creature_template` SET `lootid`= 128551 WHERE `entry`= 128551;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 128551, 154897, '0', 73, '0', '1', '0', '1', '4', '') /* tringy Loins */, 
( 128551, 158808, '0', 37, '0', '1', '0', '1', '1', '') /* hick Tendon */, 
( 128551, 158818, '0', 4, '0', '1', '0', '1', '1', '') /* anine Tongue */, 
( 128551, 158870, '0', 54, '0', '1', '0', '1', '1', '') /* ooly Hair */;

UPDATE `creature_template` SET `lootid`= 129526 WHERE `entry`= 129526;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 129526, 152576, '0', 57, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 129526, 152577, '0', 5, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 129526, 163911, '0', 48, '0', '1', '0', '1', '1', '') /* ake Eye Patch */, 
( 129526, 166260, '0', 01, '0', '1', '0', '1', '1', '') /* ecipe: Monel-Hardened Hoofplates */, 
( 129526, 166313, '0', 04, '0', '1', '0', '1', '1', '') /* ecipe: Coarse Leather Barding */, 
( 129526, 172954, '0', 1, '0', '1', '0', '1', '1', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 129527 WHERE `entry`= 129527;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 129527, 152576, '0', 66, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 129527, 152577, '0', 7, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 129527, 163908, '0', 1, '0', '1', '0', '1', '1', '') /* oaded Deck of Cards */, 
( 129527, 166313, '0', 01, '0', '1', '0', '1', '1', '') /* ecipe: Coarse Leather Barding */, 
( 129527, 172954, '0', 3, '0', '1', '0', '3', '5', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 129529 WHERE `entry`= 129529;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 129529, 152576, '0', 65, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 129529, 152577, '0', 5, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 129529, 163902, '0', 05, '0', '1', '0', '1', '1', '') /* reasure Map Fragment */, 
( 129529, 163910, '0', 05, '0', '1', '0', '1', '1', '') /* eg Leg Repair Kit */, 
( 129529, 163911, '0', 09, '0', '1', '0', '1', '1', '') /* ake Eye Patch */, 
( 129529, 172954, '0', 1, '0', '1', '0', '1', '1', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 129547 WHERE `entry`= 129547;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 129547, 152576, '0', 62, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 129547, 152577, '0', 7, '0', '1', '0', '1', '1', '') /* eep Sea Satin */,
( 129547, 163902, '0', 11, '0', '1', '0', '1', '1', '') /* reasure Map Fragment */, 
( 129547, 163906, '0', 04, '0', '1', '0', '1', '1', '') /* ounterfeit Kul Tiran Coins */, 
( 129547, 163908, '0', 04, '0', '1', '0', '1', '1', '') /* oaded Deck of Cards */, 
( 129547, 163910, '0', 02, '0', '1', '0', '1', '1', '') /* eg Leg Repair Kit */;

UPDATE `creature_template` SET `lootid`= 129548 WHERE `entry`= 129548;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 129548, 152576, '0', 61, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 129548, 152577, '0', 4, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 129548, 163906, '0', 04, '0', '1', '0', '1', '1', '') /* ounterfeit Kul Tiran Coins */, 
( 129548, 163941, '0', 07, '0', '1', '0', '1', '1', '') /* auer's Gloves of Strategy */, 
( 129548, 172954, '0', 1, '0', '1', '0', '3', '3', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 129550 WHERE `entry`= 129550;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 129550, 152576, '0', 67, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 129550, 152577, '0', 6, '0', '1', '0', '1', '1', '') /* eep Sea Satin */,
( 129550, 163902, '0', 11, '0', '1', '0', '1', '1', '') /* reasure Map Fragment */, 
( 129550, 163906, '0', 07, '0', '1', '0', '1', '1', '') /* ounterfeit Kul Tiran Coins */, 
( 129550, 163910, '0', 18, '0', '1', '0', '1', '1', '') /* eg Leg Repair Kit */, 
( 129550, 172954, '0', 4, '0', '1', '0', '4', '6', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 129559 WHERE `entry`= 129559;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 129559, 152576, '0', 57, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 129559, 152577, '0', 7, '0', '1', '0', '1', '1', '') /* eep Sea Satin */,
( 129559, 163906, '0', 04, '0', '1', '0', '1', '1', '') /* ounterfeit Kul Tiran Coins */, 
( 129559, 163908, '0', 04, '0', '1', '0', '1', '1', '') /* oaded Deck of Cards */, 
( 129559, 163910, '0', 12, '0', '1', '0', '1', '1', '') /* eg Leg Repair Kit */, 
( 129559, 163911, '0', 02, '0', '1', '0', '1', '1', '') /* ake Eye Patch */, 
( 129559, 166313, '0', 08, '0', '1', '0', '1', '1', '') /* ecipe: Coarse Leather Barding */, 
( 129559, 172954, '0', 2, '0', '1', '0', '1', '1', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 129598 WHERE `entry`= 129598;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 129598, 154898, '0', 27, '0', '1', '0', '1', '4', '') /* eaty Haunch */, 
( 129598, 158751, '0', 68, '0', '1', '0', '1', '1', '') /* atted Pelt */, 
( 129598, 158808, '0', 27, '0', '1', '0', '1', '1', '') /* hick Tendon */, 
( 129598, 158826, '0', 4, '0', '1', '0', '1', '1', '') /* ardy Hoof */;

UPDATE `creature_template` SET `lootid`= 129599 WHERE `entry`= 129599;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 129599, 152576, '0', 71, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 129599, 152577, '0', 6, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 129599, 163906, '0', 1, '0', '1', '0', '1', '1', '') /* ounterfeit Kul Tiran Coins */,
( 129599, 172954, '0', 3, '0', '1', '0', '1', '1', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 129600 WHERE `entry`= 129600;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 129600, 152576, '0', 70, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 129600, 152577, '0', 5, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 129600, 163908, '0', 13, '0', '1', '0', '1', '1', '') /* oaded Deck of Cards */, 
( 129600, 163910, '0', 17, '0', '1', '0', '1', '1', '') /* eg Leg Repair Kit */, 
( 129600, 166313, '0', 01, '0', '1', '0', '1', '1', '') /* ecipe: Coarse Leather Barding */, 
( 129600, 172954, '0', 2, '0', '1', '0', '1', '1', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 129601 WHERE `entry`= 129601;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 129601, 152576, '0', 59, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 129601, 152577, '0', 7, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 129601, 163902, '0', 01, '0', '1', '0', '1', '1', '') /* reasure Map Fragment */, 
( 129601, 172954, '0', 1, '0', '1', '0', '1', '4', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 129602 WHERE `entry`= 129602;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 129602, 152576, '0', 62, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 129602, 152577, '0', 5, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 129602, 163902, '0', 02, '0', '1', '0', '1', '1', '') /* reasure Map Fragment */, 
( 129602, 163906, '0', 12, '0', '1', '0', '1', '1', '') /* ounterfeit Kul Tiran Coins */, 
( 129602, 163908, '0', 11, '0', '1', '0', '1', '1', '') /* oaded Deck of Cards */, 
( 129602, 163910, '0', 05, '0', '1', '0', '1', '1', '') /* eg Leg Repair Kit */, 
( 129602, 163911, '0', 01, '0', '1', '0', '1', '1', '') /* ake Eye Patch */, 
( 129602, 166260, '0', 02, '0', '1', '0', '1', '1', '') /* ecipe: Monel-Hardened Hoofplates */, 
( 129602, 166313, '0', 01, '0', '1', '0', '1', '1', '') /* ecipe: Coarse Leather Barding */, 
( 129602, 172954, '0', 4, '0', '1', '0', '1', '4', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 129788 WHERE `entry`= 129788;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 129788, 152576, '0', 69, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 129788, 152577, '0', 5, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 129788, 163902, '0', 04, '0', '1', '0', '1', '1', '') /* reasure Map Fragment */, 
( 129788, 163908, '0', 06, '0', '1', '0', '1', '1', '') /* oaded Deck of Cards */, 
( 129788, 163910, '0', 02, '0', '1', '0', '1', '1', '') /* eg Leg Repair Kit */, 
( 129788, 172954, '0', 5, '0', '1', '0', '4', '5', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 130011 WHERE `entry`= 130011;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 130011, 152576, '0', 61, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 130011, 152577, '0', 8, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 130011, 163911, '0', 02, '0', '1', '0', '1', '1', '') /* ake Eye Patch */, 
( 130011, 172954, '0', 1, '0', '1', '0', '1', '5', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 130012 WHERE `entry`= 130012;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 130012, 152576, '0', 66, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 130012, 152577, '0', 4, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 130012, 163906, '0', 01, '0', '1', '0', '1', '1', '') /* ounterfeit Kul Tiran Coins */, 
( 130012, 163911, '0', 04, '0', '1', '0', '1', '1', '') /* ake Eye Patch */,
( 130012, 172954, '0', 1, '0', '1', '0', '1', '1', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 130024 WHERE `entry`= 130024;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 130024, 152541, '0', 04, '0', '1', '0', '2', '2', '') /* oarse Leather */, 
( 130024, 154164, '0', 04, '0', '1', '0', '2', '2', '') /* lood-Stained Bone */, 
( 130024, 154165, '0', 04, '0', '1', '0', '1', '1', '') /* alcified Bone */, 
( 130024, 154897, '0', 10, '0', '1', '0', '1', '4', '') /* tringy Loins */, 
( 130024, 158751, '0', 12, '0', '1', '0', '1', '1', '') /* atted Pelt */, 
( 130024, 158752, '0', 18, '0', '1', '0', '1', '1', '') /* evered Foot */, 
( 130024, 158819, '0', 3, '0', '1', '0', '1', '1', '') /* at Tail */, 
( 130024, 158870, '0', 78, '0', '1', '0', '1', '1', '') /* ooly Hair */;

UPDATE `creature_template` SET `lootid`= 130400 WHERE `entry`= 130400;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 130400, 152576, '0', 62, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 130400, 152577, '0', 8, '0', '1', '0', '1', '1', '') /* eep Sea Satin */,
( 130400, 163902, '0', 08, '0', '1', '0', '1', '1', '') /* reasure Map Fragment */, 
( 130400, 163906, '0', 01, '0', '1', '0', '1', '1', '') /* ounterfeit Kul Tiran Coins */, 
( 130400, 163911, '0', 18, '0', '1', '0', '1', '1', '') /* ake Eye Patch */,
( 130400, 172954, '0', 1, '0', '1', '0', '1', '1', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 130404 WHERE `entry`= 130404;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 130404, 152576, '0', 56, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 130404, 152577, '0', 12, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 130404, 172954, '0', 1, '0', '1', '0', '1', '4', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 130521 WHERE `entry`= 130521;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 130521, 152576, '0', 60, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 130521, 152577, '0', 9, '0', '1', '0', '1', '1', '') /* eep Sea Satin */,
( 130521, 163902, '0', 38, '0', '1', '0', '1', '1', '') /* reasure Map Fragment */;

UPDATE `creature_template` SET `lootid`= 130522 WHERE `entry`= 130522;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 130522, 152576, '0', 60, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 130522, 152577, '0', 6, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 130522, 172954, '0', 1, '0', '1', '0', '1', '1', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 135050 WHERE `entry`= 135050;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 135050, 152576, '0', 2, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 135050, 158744, '0', 5, '0', '1', '0', '1', '1', '') /* pectral Veil */, 
( 135050, 158771, '0', 5, '0', '1', '0', '1', '1', '') /* pirit Ichor */, 
( 135050, 158865, '0', 17, '0', '1', '0', '1', '1', '') /* hastly Ooze */;

UPDATE `creature_template` SET `lootid`= 135353 WHERE `entry`= 135353;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 135353, 155603, '0', 13, '0', '1', '0', '1', '1', '') /* laky Fish Scales */, 
( 135353, 158760, '0', 14, '0', '1', '0', '1', '1', '') /* in Ray */, 
( 135353, 158770, '0', 18, '0', '1', '0', '1', '1', '') /* elatinous Roe */;