UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120 WHERE `entry`IN(103098, 130217, 130909, 131318, 131383, 131402, 131436, 131492, 131817, 132051, 132198, 133007, 133663, 133685, 133835, 133836, 133852, 133870, 133912, 134284, 134419, 134701, 137103, 137458, 138187, 138281, 138338, 138740, 139194, 139630, 140366, 140367, 140593, 141851, 142666, 142668, 143774, 148714, 148716, 148892, 148893, 148894, 149596, 155432, 155433, 155434, 161124, 161241, 161243, 161244, 161408, 161437, 161502, 161510, 161895, 162152);

UPDATE `creature_template` SET `lootid`= 130909 WHERE `entry`= 130909;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 130909, 155598, 55, '1', '0' , '1', '1') /* evered Mandible */, 
( 130909, 158820, 4, '1', '0' , '1', '1') /* lindWorm Sting */, 
( 130909, 158863, 35, '1', '0' , '1', '1') /* hitinous Exoskeleton */, 
( 130909, 168142, 11, '1', '0' , '1', '3') /* oagulated Miasma */;

UPDATE `creature_template` SET `lootid`= 131318 WHERE `entry`= 131318;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 131318, 159324, 3, '1', '0' , '1', '1') /* lood Elder's Bindings */, 
( 131318, 159402, 1, '1', '0' , '1', '1') /* aistguard of Sanguine Fervor */, 
( 131318, 159443, 2, '1', '0' , '1', '1') /* egplates of Profane Sacrifice */, 
( 131318, 159463, 10, '1', '0' , '1', '1') /* oop of Pulsing Veins */, 
( 131318, 159624, 2, '1', '0' , '1', '1') /* otcrusted Voodoo Doll */, 
( 131318, 159652, 3, '1', '0' , '1', '1') /* eaxa's ThoughtPiercer */;

UPDATE `creature_template` SET `lootid`= 131383 WHERE `entry`= 131383;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 131383, 159270, 3, '1', '0' , '1', '1') /* lood Warder's Moccasins */, 
( 131383, 159292, 10, '1', '0' , '1', '1') /* porecaller's Shroud */, 
( 131383, 159338, 3, '1', '0' , '1', '1') /* ustule Bearer's Pants */, 
( 131383, 159384, 1, '1', '0' , '1', '1') /* orpuscular Greaves */, 
( 131383, 159410, 2, '1', '0' , '1', '1') /* ancha's Venerated Greatbelt */, 
( 131383, 159626, 1, '1', '0' , '1', '1') /* ingering Sporepods */, 
( 131383, 159654, 1, '1', '0' , '1', '1') /* orruption Borne Headlopper */, 
( 131383, 159665, 1, '1', '0' , '1', '1') /* arge of the Ancient Warder */;

UPDATE `creature_template` SET `lootid`= 131402 WHERE `entry`= 131402;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 131402, 155601, 69, '1', '0' , '1', '1') /* ointy Leg Segment */, 
( 131402, 158759, 5, '1', '0' , '1', '1') /* loodgorged Sac */, 
( 131402, 158864, 24, '1', '0' , '1', '1') /* iscous Webbing */, 
( 131402, 168142, 03, '1', '0' , '1', '1') /* oagulated Miasma */;

UPDATE `creature_template` SET `lootid`= 131436 WHERE `entry`= 131436;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 131436, 152576, 60, '1', '0' , '1', '3') /* idespray Linen */, 
( 131436, 152577, 5, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 131436, 163917, 01, '1', '0' , '1', '1') /* usk File */, 
( 131436, 163918, 02, '1', '0' , '1', '1') /* leshcarving Knife */, 
( 131436, 163919, 26, '1', '0' , '1', '1') /* tring of Broken Tusks */, 
( 131436, 166313, 01, '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */, 
( 131436, 168142, 6, '1', '0' , '1', '3') /* oagulated Miasma */;

UPDATE `creature_template` SET `lootid`= 131492 WHERE `entry`= 131492;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 131492, 152576, 53, '1', '0' , '1', '3') /* idespray Linen */, 
( 131492, 152577, 7, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 131492, 163918, 23, '1', '0' , '1', '1') /* leshcarving Knife */, 
( 131492, 163919, 07, '1', '0' , '1', '1') /* tring of Broken Tusks */, 
( 131492, 168142, 4, '1', '0' , '1', '3') /* oagulated Miasma */, 
( 131492, 172954, 01, '1', '0' , '3', '3') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 131817 WHERE `entry`= 131817;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 131817, 159134, 16, '1', '0' , '1', '1') /* eartPiercing Stalactite */, 
( 131817, 159269, 2, '1', '0' , '1', '1') /* arklight Legwarmers */, 
( 131817, 159275, 4, '1', '0' , '1', '1') /* ristwraps of Twined Morels */, 
( 131817, 159325, 3, '1', '0' , '1', '1') /* loodfeaster Belt */, 
( 131817, 159344, 4, '1', '0' , '1', '1') /* nderrot Grotto Tenders */, 
( 131817, 159382, 2, '1', '0' , '1', '1') /* lood Tick Crushers */, 
( 131817, 159396, 2, '1', '0' , '1', '1') /* aders of the Infested */, 
( 131817, 159433, 3, '1', '0' , '1', '1') /* hosphorescent Armplates */, 
( 131817, 159436, 3, '1', '0' , '1', '1') /* luorescent Flora Stompers */, 
( 131817, 159653, 1, '1', '0' , '1', '1') /* ileStained Crawg Tusks */;

UPDATE `creature_template` SET `lootid`= 133007 WHERE `entry`= 133007;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 133007, 158923, 2, '1', '0' , '1', '1') /* ythic Keystone */, 
( 133007, 159241, 3, '1', '0' , '1', '1') /* loodDrenched Robes */, 
( 133007, 159253, 4, '1', '0' , '1', '1') /* loves of Staunched Wounds */, 
( 133007, 159267, 4, '1', '0' , '1', '1') /* auldrons of Vile Corruption */, 
( 133007, 159323, 6, '1', '0' , '1', '1') /* houlders of the Sanguine Monstrosity */, 
( 133007, 159330, 6, '1', '0' , '1', '1') /* oreSplattered Vest */, 
( 133007, 159381, 4, '1', '0' , '1', '1') /* isage of Bloody Horrors */, 
( 133007, 159385, 4, '1', '0' , '1', '1') /* malgamated Abomination Spaulders */, 
( 133007, 159432, 4, '1', '0' , '1', '1') /* reastplate of Arterial Protection */, 
( 133007, 159446, 4, '1', '0' , '1', '1') /* reathelm of the Putrid Path */, 
( 133007, 159625, 3, '1', '0' , '1', '1') /* ial of Animated Blood */, 
( 133007, 159655, 1, '1', '0' , '1', '1') /* ile Exsanguinator */, 
( 133007, 160829, 15, '1', '0' , '1', '1') /* nderrot Crawg Harness */, 
( 133007, 162460, 2, '1', '0' , '1', '1') /* ydrocore */, 
( 133007, 162520, 08, '1', '0' , '1', '1') /* ecipe: Mystical Cauldron */, 
( 133007, 165948, 42, '1', '0' , '1', '1') /* idalcore */;

UPDATE `creature_template` SET `lootid`= 133663 WHERE `entry`= 133663;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 133663, 152576, 58, '1', '0' , '1', '3') /* idespray Linen */, 
( 133663, 152577, 6, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 133663, 163917, 12, '1', '0' , '1', '1') /* usk File */, 
( 133663, 163918, 04, '1', '0' , '1', '1') /* leshcarving Knife */, 
( 133663, 163919, 22, '1', '0' , '1', '1') /* tring of Broken Tusks */, 
( 133663, 168142, 4, '1', '0' , '1', '3') /* oagulated Miasma */;

UPDATE `creature_template` SET `lootid`= 133685 WHERE `entry`= 133685;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 133685, 158771, 60, '1', '0' , '1', '1') /* pirit Ichor */, 
( 133685, 158821, 30, '1', '0' , '1', '1') /* racked Mask */, 
( 133685, 158855, 2, '1', '0' , '1', '1') /* rim Skull Fetish */, 
( 133685, 168142, 1, '1', '0' , '1', '3') /* oagulated Miasma */;

UPDATE `creature_template` SET `lootid`= 133835 WHERE `entry`= 133835;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 133835, 155601, 68, '1', '0' , '1', '1') /* ointy Leg Segment */, 
( 133835, 158759, 3, '1', '0' , '1', '1') /* loodgorged Sac */, 
( 133835, 158864, 25, '1', '0' , '1', '1') /* iscous Webbing */, 
( 133835, 168142, 01, '1', '0' , '1', '3') /* oagulated Miasma */;

UPDATE `creature_template` SET `lootid`= 133836 WHERE `entry`= 133836;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 133836, 155608, 56, '1', '0' , '1', '1') /* efiled Bone */, 
( 133836, 158855, 3, '1', '0' , '1', '1') /* rim Skull Fetish */, 
( 133836, 158862, 37, '1', '0' , '1', '1') /* ncient Grave Dust */;

UPDATE `creature_template` SET `lootid`= 133852 WHERE `entry`= 133852;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 133852, 155615, 51, '1', '0' , '1', '1') /* estilent Muck */, 
( 133852, 158773, 35, '1', '0' , '1', '1') /* riggling Goop */, 
( 133852, 158838, 10, '1', '0' , '1', '1') /* ibrous Sludge */, 
( 133852, 168142, 02, '1', '0' , '1', '3') /* oagulated Miasma */;

UPDATE `creature_template` SET `lootid`= 133870 WHERE `entry`= 133870;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 133870, 152507, 03, '1', '0' , '3', '4') /* kunda's Bite */, 
( 133870, 152508, 06, '1', '0' , '4', '4') /* inter's Kiss */, 
( 133870, 155610, 59, '1', '0' , '1', '1') /* tinging Nettle */, 
( 133870, 158747, 34, '1', '0' , '1', '1') /* horny Prickle */, 
( 133870, 158817, 3, '1', '0' , '1', '1') /* azorpetal */, 
( 133870, 168142, 02, '1', '0' , '1', '3') /* oagulated Miasma */;

UPDATE `creature_template` SET `lootid`= 133912 WHERE `entry`= 133912;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 133912, 158771, 57, '1', '0' , '1', '1') /* pirit Ichor */, 
( 133912, 158855, 4, '1', '0' , '1', '1') /* rim Skull Fetish */, 
( 133912, 158865, 35, '1', '0' , '1', '1') /* hastly Ooze */;

UPDATE `creature_template` SET `lootid`= 134284 WHERE `entry`= 134284;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134284, 158771, 68, '1', '0' , '1', '1') /* pirit Ichor */, 
( 134284, 158790, 5, '1', '0' , '1', '1') /* harnel Ash */, 
( 134284, 158862, 23, '1', '0' , '1', '1') /* ncient Grave Dust */;

UPDATE `creature_template` SET `lootid`= 138187 WHERE `entry`= 138187;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 138187, 155615, 50, '1', '0' , '1', '1') /* estilent Muck */, 
( 138187, 158773, 37, '1', '0' , '1', '1') /* riggling Goop */, 
( 138187, 158838, 9, '1', '0' , '1', '1') /* ibrous Sludge */, 
( 138187, 168142, 01, '1', '0' , '1', '3') /* oagulated Miasma */;

UPDATE `creature_template` SET `lootid`= 138281 WHERE `entry`= 138281;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 138281, 161344, 03, '1', '0' , '1', '1') /* byssal Fragment */, 
( 138281, 168142, 03, '1', '0' , '1', '3') /* oagulated Miasma */, 
( 138281, 172954, 01, '1', '0' , '1', '1') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`=139194 WHERE `entry`=139194;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(139194, 155598, 13, '1', '0' , '1', '1') /* evered Mandible */, 
(139194, 158820, 67, '1', '0' , '1', '1') /* lindWorm Sting */, 
(139194, 158863, 6, '1', '0' , '1', '1') /* hitinous Exoskeleton */;

UPDATE `creature_template` SET `lootid`= 140593 WHERE `entry`= 140593;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 140593, 158771, 16, '1', '0' , '1', '1') /* pirit Ichor */, 
( 140593, 158855, 42, '1', '0' , '1', '1') /* rim Skull Fetish */, 
( 140593, 158865, 13, '1', '0' , '1', '1') /* hastly Ooze */;