UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120 WHERE `entry`IN(32517, 51052, 65325, 78116, 88241, 95072, 98942, 103098, 103822, 118191, 121762, 126632, 128222, 130217, 132198, 132998, 133298, 133492, 134010, 134034, 134107, 134442, 134445, 134503, 134546, 134590, 134634, 134635, 135016, 135083, 135452, 135824, 136315, 136383, 136461, 136493, 136495, 136496, 136499, 136502, 136507, 136509, 136510, 137119, 138089, 138324, 138529, 138530, 138531, 138959, 138967, 139051, 139057, 139059, 139185, 139195, 139381, 139487, 139630, 139866, 140366, 140367, 140393, 140478, 140490, 140591, 140594, 140599, 140616, 140853, 141132, 141133, 141134, 141235, 141236, 141238, 141240, 141264, 141266, 141267, 141749, 141935, 142148, 142149, 142150, 142207, 142219, 142242, 142243, 142666, 142668, 142800, 142801, 142802, 143065, 143067, 143622, 143774, 149189, 163405);

UPDATE `creature_template` SET `lootid`=32517 WHERE `entry`=32517;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
(32517, 43013, '0', 23, '0', '1', '0', '1', '1', '') /* hilled Meat */, 
(32517, 44663, '0', 98, '0', '1', '0', '1', '1', '') /* bandoned Adventurer's Satchel */, 
(32517, 44687, '0', 24, '0', '1', '0', '1', '1', '') /* oque'Nahak's Pelt */, 
(32517, 44688, '0', 75, '0', '1', '0', '1', '1', '') /* oque'Nahak's Severed Fang */, 
(32517, 44779, '0', 23, '0', '1', '0', '1', '1', '') /* watch of Gorilla Hair */;

UPDATE `creature_template` SET `lootid`= 51052 WHERE `entry`= 51052;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 51052, 3944, '0', 5, '0', '1', '0', '1', '1', '') /* will Belt */, 
( 51052, 3968, '0', 07, '0', '1', '0', '1', '1', '') /* hick Leather Tunic */, 
( 51052, 9943, '0', 52, '0', '1', '0', '1', '1', '') /* bjurer's Robe */, 
( 51052, 9950, '0', 3, '0', '1', '0', '1', '1', '') /* hieftain's Breastplate */, 
( 51052, 9954, '0', 6, '0', '1', '0', '1', '1', '') /* hieftain's Leggings */, 
( 51052, 10057, '0', 2, '0', '1', '0', '1', '1', '') /* uskwoven Tunic */, 
( 51052, 10061, '0', 5, '0', '1', '0', '1', '1', '') /* uskwoven Turban */, 
( 51052, 10062, '0', 3, '0', '1', '0', '1', '1', '') /* uskwoven Gloves */, 
( 51052, 10063, '0', 07, '0', '1', '0', '1', '1', '') /* uskwoven Amice */, 
( 51052, 10064, '0', 07, '0', '1', '0', '1', '1', '') /* uskwoven Pants */, 
( 51052, 10068, '0', 2, '0', '1', '0', '1', '1', '') /* ighteous Boots */, 
( 51052, 10072, '0', 33, '0', '1', '0', '1', '1', '') /* ighteous Gloves */, 
( 51052, 10073, '0', 3, '0', '1', '0', '1', '1', '') /* ighteous Helmet */, 
( 51052, 10074, '0', 2, '0', '1', '0', '1', '1', '') /* ighteous Leggings */, 
( 51052, 10075, '0', 1, '0', '1', '0', '1', '1', '') /* ighteous Spaulders */, 
( 51052, 10077, '0', 2, '0', '1', '0', '1', '1', '') /* ord's Breastplate */, 
( 51052, 10082, '0', 26, '0', '1', '0', '1', '1', '') /* ord's Boots */, 
( 51052, 10083, '0', 59, '0', '1', '0', '1', '1', '') /* ord's Crown */, 
( 51052, 10084, '0', 2, '0', '1', '0', '1', '1', '') /* ord's Legguards */, 
( 51052, 10085, '0', 1, '0', '1', '0', '1', '1', '') /* ord's Pauldrons */, 
( 51052, 10096, '0', 07, '0', '1', '0', '1', '1', '') /* ouncillor's Cuffs */, 
( 51052, 10098, '0', 98, '0', '1', '0', '1', '1', '') /* ouncillor's Cloak */, 
( 51052, 10107, '0', 2, '0', '1', '0', '1', '1', '') /* anderer's Bracers */, 
( 51052, 10108, '0', 1, '0', '1', '0', '1', '1', '') /* anderer's Cloak */, 
( 51052, 10109, '0', 07, '0', '1', '0', '1', '1', '') /* anderer's Belt */, 
( 51052, 10120, '0', 07, '0', '1', '0', '1', '1', '') /* rnate Cloak */, 
( 51052, 10122, '0', 46, '0', '1', '0', '1', '1', '') /* rnate Girdle */, 
( 51052, 10126, '0', 07, '0', '1', '0', '1', '1', '') /* rnate Bracers */, 
( 51052, 10128, '0', 2, '0', '1', '0', '1', '1', '') /* evenant Chestplate */, 
( 51052, 10132, '0', 39, '0', '1', '0', '1', '1', '') /* evenant Helmet */, 
( 51052, 10133, '0', 65, '0', '1', '0', '1', '1', '') /* evenant Leggings */, 
( 51052, 10134, '0', 6, '0', '1', '0', '1', '1', '') /* evenant Shoulders */, 
( 51052, 10165, '0', 07, '0', '1', '0', '1', '1', '') /* emplar Gauntlets */, 
( 51052, 10166, '0', 5, '0', '1', '0', '1', '1', '') /* emplar Girdle */, 
( 51052, 10167, '0', 72, '0', '1', '0', '1', '1', '') /* emplar Boots */, 
( 51052, 10171, '0', 26, '0', '1', '0', '1', '1', '') /* emplar Bracers */, 
( 51052, 10173, '0', 13, '0', '1', '0', '1', '1', '') /* ystical Bracers */, 
( 51052, 10174, '0', 79, '0', '1', '0', '1', '1', '') /* ystical Cape */, 
( 51052, 10180, '0', 7, '0', '1', '0', '1', '1', '') /* ystical Belt */, 
( 51052, 10183, '0', 79, '0', '1', '0', '1', '1', '') /* washbuckler's Boots */, 
( 51052, 10184, '0', 5, '0', '1', '0', '1', '1', '') /* washbuckler's Bracers */, 
( 51052, 10185, '0', 46, '0', '1', '0', '1', '1', '') /* washbuckler's Cape */, 
( 51052, 10186, '0', 07, '0', '1', '0', '1', '1', '') /* washbuckler's Gloves */, 
( 51052, 10190, '0', 6, '0', '1', '0', '1', '1', '') /* washbuckler's Belt */, 
( 51052, 10191, '0', 33, '0', '1', '0', '1', '1', '') /* rusader's Armguards */, 
( 51052, 10196, '0', 3, '0', '1', '0', '1', '1', '') /* rusader's Gauntlets */, 
( 51052, 10197, '0', 3, '0', '1', '0', '1', '1', '') /* rusader's Belt */, 
( 51052, 10198, '0', 2, '0', '1', '0', '1', '1', '') /* rusader's Helm */, 
( 51052, 10199, '0', 07, '0', '1', '0', '1', '1', '') /* rusader's Leggings */, 
( 51052, 10203, '0', 2, '0', '1', '0', '1', '1', '') /* verlord's Chestplate */, 
( 51052, 10231, '0', 07, '0', '1', '0', '1', '1', '') /* ngraved Cape */, 
( 51052, 10238, '0', 92, '0', '1', '0', '1', '1', '') /* eavy Lamellar Boots */, 
( 51052, 10241, '0', 72, '0', '1', '0', '1', '1', '') /* eavy Lamellar Helm */, 
( 51052, 10242, '0', 98, '0', '1', '0', '1', '1', '') /* eavy Lamellar Gauntlets */, 
( 51052, 10243, '0', 65, '0', '1', '0', '1', '1', '') /* eavy Lamellar Girdle */, 
( 51052, 13822, '0', 13, '0', '1', '0', '1', '1', '') /* piked Dagger */, 
( 51052, 67276, '0', 07, '0', '1', '0', '1', '1', '') /* hewed Leaves */, 
( 51052, 67277, '0', 98, '0', '1', '0', '1', '1', '') /* onkey Brains */;

UPDATE `creature_template` SET `lootid`= 132998 WHERE `entry`= 132998;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 132998, 160053, '0', 15, '0', '1', '0', '1', '1', '') /* attle-Scarred Augment Rune */, 
( 132998, 160654, '0', 5, '0', '1', '0', '1', '1', '') /* anquished Tendril of G'huun */, 
( 132998, 160690, '0', 4, '0', '1', '0', '1', '1', '') /* eptavium, Staff of Torturous Knowledge */, 
( 132998, 160693, '0', 66, '0', '1', '0', '1', '1', '') /* ancet of the Deft Hand */, 
( 132998, 160694, '0', 6, '0', '1', '0', '1', '1', '') /* e-Origination Pulse Rifle */, 
( 132998, 160699, '0', 86, '0', '1', '0', '1', '1', '') /* arricade of Purifying Resolve */, 
( 132998, 160726, '0', 4, '0', '1', '0', '1', '1', '') /* mice of Corrupting Horror */, 
( 132998, 160727, '0', 3, '0', '1', '0', '1', '1', '') /* ord of Septic Envelopment */, 
( 132998, 160728, '0', 2, '0', '1', '0', '1', '1', '') /* unic of the Sanguine Deity */, 
( 132998, 160729, '0', 2, '0', '1', '0', '1', '1', '') /* triders of the Putrescent Path */, 
( 132998, 160731, '0', 1, '0', '1', '0', '1', '1', '') /* paulders of Coagulated Viscera */, 
( 132998, 160732, '0', 1, '0', '1', '0', '1', '1', '') /* elm of the Defiled Laboratorium */, 
( 132998, 160733, '0', 2, '0', '1', '0', '1', '1', '') /* ematocyst Stompers */, 
( 132998, 162121, '0', 08, '0', '1', '0', '1', '1', '') /* antus Rune Technique: Uldir */, 
( 132998, 162124, '0', 07, '0', '1', '0', '1', '1', '') /* antus Rune Technique: Uldir */, 
( 132998, 162125, '0', 05, '0', '1', '0', '1', '1', '') /* antus Rune Technique: Uldir */, 
( 132998, 162461, '0', 99, '0', '1', '0', '1', '20', '') /* anguicell */, 
( 132998, 162521, '0', 13, '0', '1', '0', '1', '1', '') /* ecipe: Mystical Cauldron */;

UPDATE `creature_template` SET `lootid`= 133298 WHERE `entry`= 133298;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 133298, 139299, '0', 75, '0', '1', '0', '1', '1', '') /* inely-Tailored Red Holiday Hat */, 
( 133298, 160053, '0', 14, '0', '1', '0', '1', '1', '') /* attle-Scarred Augment Rune */, 
( 133298, 160616, '0', 2, '0', '1', '0', '1', '1', '') /* orrific Amalgam's Hood */, 
( 133298, 160619, '0', 3, '0', '1', '0', '1', '1', '') /* erkin of the Aberrant Chimera */, 
( 133298, 160628, '0', 1, '0', '1', '0', '1', '1', '') /* used Monstrosity Stompers */, 
( 133298, 160635, '0', 2, '0', '1', '0', '1', '1', '') /* aste Disposal Crushers */, 
( 133298, 160643, '0', 9, '0', '1', '0', '1', '1', '') /* etid Horror's Tanglecloak */, 
( 133298, 160648, '0', 3, '0', '1', '0', '1', '1', '') /* renetic Corpuscle */, 
( 133298, 160685, '0', 82, '0', '1', '0', '1', '1', '') /* iomelding Cleaver */, 
( 133298, 160689, '0', 3, '0', '1', '0', '1', '1', '') /* egurgitated Purifier's Flamestaff */, 
( 133298, 162121, '0', 1, '0', '1', '0', '1', '1', '') /* antus Rune Technique: Uldir */, 
( 133298, 162124, '0', 03, '0', '1', '0', '1', '1', '') /* antus Rune Technique: Uldir */, 
( 133298, 162125, '0', 1, '0', '1', '0', '1', '1', '') /* antus Rune Technique: Uldir */, 
( 133298, 162461, '0', 81, '0', '1', '0', '1', '20', '') /* anguicell */, 
( 133298, 162521, '0', 09, '0', '1', '0', '1', '1', '') /* ecipe: Mystical Cauldron */;

UPDATE `creature_template` SET `lootid`= 134442 WHERE `entry`= 134442;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 134442, 160053, '0', 16, '0', '1', '0', '1', '1', '') /* attle-Scarred Augment Rune */, 
( 134442, 160621, '0', 3, '0', '1', '0', '1', '1', '') /* ristwraps of Coursing Miasma */, 
( 134442, 160623, '0', 3, '0', '1', '0', '1', '1', '') /* ood of Pestilent Ichor */, 
( 134442, 160636, '0', 2, '0', '1', '0', '1', '1', '') /* hestguard of Virulent Mutagens */, 
( 134442, 160644, '0', 8, '0', '1', '0', '1', '1', '') /* lasma-Spattered Greatcloak */, 
( 134442, 160649, '0', 1, '0', '1', '0', '1', '1', '') /* noculating Extract */, 
( 134442, 160655, '0', 1, '0', '1', '0', '1', '1', '') /* yringe of Bloodborne Infirmity */, 
( 134442, 160678, '0', 1, '0', '1', '0', '1', '1', '') /* ow of Virulent Infection */, 
( 134442, 160698, '0', 9, '0', '1', '0', '1', '1', '') /* ector Deflector */, 
( 134442, 160715, '0', 2, '0', '1', '0', '1', '1', '') /* utagenic Protofluid Handwraps */, 
( 134442, 160716, '0', 1, '0', '1', '0', '1', '1', '') /* lighted Anima Greaves */, 
( 134442, 160734, '0', 2, '0', '1', '0', '1', '1', '') /* ord of Animated Contagion */, 
( 134442, 162461, '0', 78, '0', '1', '0', '1', '20', '') /* anguicell */;

UPDATE `creature_template` SET `lootid`= 134445 WHERE `entry`= 134445;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 134445, 160053, '0', 30, '0', '1', '0', '1', '1', '') /* attle-Scarred Augment Rune */, 
( 134445, 160613, '0', 2, '0', '1', '0', '1', '1', '') /* antle of Contained Corruption */, 
( 134445, 160617, '0', 2, '0', '1', '0', '1', '1', '') /* oid-Lashed Wristband */, 
( 134445, 160624, '0', 2, '0', '1', '0', '1', '1', '') /* uarantine Protocol Treads */, 
( 134445, 160627, '0', 1, '0', '1', '0', '1', '1', '') /* hainvest of Assured Quality */, 
( 134445, 160633, '0', 2, '0', '1', '0', '1', '1', '') /* itanspark Energy Girdle */, 
( 134445, 160640, '0', 2, '0', '1', '0', '1', '1', '') /* arboots of Absolute Eradication */, 
( 134445, 160647, '0', 7, '0', '1', '0', '1', '1', '') /* ing of the Infinite Void */, 
( 134445, 160650, '0', 1, '0', '1', '0', '1', '1', '') /* isc of Systematic Regression */, 
( 134445, 160687, '0', 2, '0', '1', '0', '1', '1', '') /* ontainment Analysis Baton */, 
( 134445, 160688, '0', 51, '0', '1', '0', '1', '1', '') /* oid-Binder */, 
( 134445, 160717, '0', 2, '0', '1', '0', '1', '1', '') /* eplicated Chitin Cord */, 
( 134445, 160718, '0', 2, '0', '1', '0', '1', '1', '') /* reaves of Creeping Darkness */, 
( 134445, 162121, '0', 21, '0', '1', '0', '1', '1', '') /* antus Rune Technique: Uldir */, 
( 134445, 162124, '0', 23, '0', '1', '0', '1', '1', '') /* antus Rune Technique: Uldir */, 
( 134445, 162461, '0', 99, '0', '1', '0', '1', '20', '') /* anguicell */;

UPDATE `creature_template` SET `lootid`= 134546 WHERE `entry`= 134546;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES 
( 134546, 160053, '0', 11, '0', '1', '0', '1', '1', '') /* attle-Scarred Augment Rune */, 
( 134546, 160614, '0', 93, '0', '1', '0', '1', '1', '') /* obes of the Unraveler */, 
( 134546, 160641, '0', 2, '0', '1', '0', '1', '1', '') /* hitinspine Pauldrons */, 
( 134546, 160646, '0', 8, '0', '1', '0', '1', '1', '') /* and of Certain Annihilation */, 
( 134546, 160653, '0', 83, '0', '1', '0', '1', '1', '') /* alzaix's Veiled Eye */, 
( 134546, 160656, '0', 3, '0', '1', '0', '1', '1', '') /* witching Tentacle of Xalzaix */, 
( 134546, 160686, '0', 1, '0', '1', '0', '1', '1', '') /* oror, Gleaming Blade of the Stalwart */, 
( 134546, 160692, '0', 47, '0', '1', '0', '1', '1', '') /* uminous Edge of Virtue */, 
( 134546, 160696, '0', 3, '0', '1', '0', '1', '1', '') /* odex of Imminent Ruin */, 
( 134546, 160721, '0', 1, '0', '1', '0', '1', '1', '') /* blivion Crushers */, 
( 134546, 160725, '0', 1, '0', '1', '0', '1', '1', '') /* 'thraxxi General's Hauberk */, 
( 134546, 162121, '0', 03, '0', '1', '0', '1', '1', '') /* antus Rune Technique: Uldir */, 
( 134546, 162124, '0', 06, '0', '1', '0', '1', '1', '') /* antus Rune Technique: Uldir */, 
( 134546, 162125, '0', 03, '0', '1', '0', '1', '1', '') /* antus Rune Technique: Uldir */, 
( 134546, 162461, '0', 85, '0', '1', '0', '1', '20', '') /* anguicell */, 
( 134546, 162521, '0', 1, '0', '1', '0', '1', '1', '') /* ecipe: Mystical Cauldron */, 
( 134546, 163596, '0', 2, '0', '1', '0', '1', '1', '') /* owl of Dark Portents */;

UPDATE `creature_template` SET `lootid`= 136383 WHERE `entry`= 136383;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 136383, 160614, '0', 5, '0', '1', '0', '1', '1', '') /* obes of the Unraveler */, 
( 136383, 160641, '0', 5, '0', '1', '0', '1', '1', '') /* hitinspine Pauldrons */, 
( 136383, 160646, '0', 5, '0', '1', '0', '1', '1', '') /* and of Certain Annihilation */, 
( 136383, 160653, '0', 5, '0', '1', '0', '1', '1', '') /* alzaix's Veiled Eye */, 
( 136383, 160656, '0', 5, '0', '1', '0', '1', '1', '') /* witching Tentacle of Xalzaix */, 
( 136383, 160686, '0', 5, '0', '1', '0', '1', '1', '') /* oror, Gleaming Blade of the Stalwart */, 
( 136383, 160692, '0', 5, '0', '1', '0', '1', '1', '') /* uminous Edge of Virtue */, 
( 136383, 160696, '0', 5, '0', '1', '0', '1', '1', '') /* odex of Imminent Ruin */, 
( 136383, 160721, '0', 5, '0', '1', '0', '1', '1', '') /* blivion Crushers */, 
( 136383, 160725, '0', 5, '0', '1', '0', '1', '1', '') /* 'thraxxi General's Hauberk */, 
( 136383, 163596, '0', 5, '0', '1', '0', '1', '1', '') /* owl of Dark Portents */;

UPDATE `creature_template` SET `lootid`= 136493 WHERE `entry`= 136493;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 136493, 155631, '0', 64, '0', '1', '0', '1', '1', '') /* nert Stone */, 
( 136493, 158830, '0', 5, '0', '1', '0', '1', '1', '') /* ade Sigilstone */, 
( 136493, 158868, '0', 31, '0', '1', '0', '1', '1', '') /* olden Ornament */,
( 136493, 160612, '0', 14, '0', '1', '0', '1', '1', '') /* pellbound Specimen Handlers */, 
( 136493, 161071, '0', 1, '0', '1', '0', '1', '1', '') /* loody Experimenter's Wraps */, 
( 136493, 161072, '0', 09, '0', '1', '0', '1', '1', '') /* platterguards */, 
( 136493, 161073, '0', 08, '0', '1', '0', '1', '1', '') /* einforced Test Subject Shackles */, 
( 136493, 161074, '0', 16, '0', '1', '0', '1', '1', '') /* rushproof Vambraces */, 
( 136493, 161075, '0', 31, '0', '1', '0', '1', '1', '') /* ntiseptic Specimen Handlers */, 
( 136493, 161077, '0', 04, '0', '1', '0', '1', '1', '') /* luid-Resistant Specimen Handlers */;

UPDATE `creature_template` SET `lootid`= 136495 WHERE `entry`= 136495;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 136495, 152576, '0', 56, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 136495, 152577, '0', 7, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 136495, 160612, '0', 49, '0', '1', '0', '1', '1', '') /* pellbound Specimen Handlers */, 
( 136495, 161071, '0', 73, '0', '1', '0', '1', '1', '') /* loody Experimenter's Wraps */, 
( 136495, 161072, '0', 1, '0', '1', '0', '1', '1', '') /* platterguards */, 
( 136495, 161073, '0', 82, '0', '1', '0', '1', '1', '') /* einforced Test Subject Shackles */, 
( 136495, 161074, '0', 58, '0', '1', '0', '1', '1', '') /* rushproof Vambraces */, 
( 136495, 161075, '0', 66, '0', '1', '0', '1', '1', '') /* ntiseptic Specimen Handlers */, 
( 136495, 161076, '0', 19, '0', '1', '0', '1', '1', '') /* ron-Grip Specimen Handlers */, 
( 136495, 161077, '0', 49, '0', '1', '0', '1', '1', '') /* luid-Resistant Specimen Handlers */, 
( 136495, 166260, '0', 55, '0', '1', '0', '1', '1', '') /* ecipe: Monel-Hardened Hoofplates */, 
( 136495, 166313, '0', 17, '0', '1', '0', '1', '1', '') /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`= 136496 WHERE `entry`= 136496;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 136496, 152576, '0', 58, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 136496, 152577, '0', 6, '0', '1', '0', '1', '1', '') /* eep Sea Satin */,
( 136496, 160612, '0', 99, '0', '1', '0', '1', '1', '') /* pellbound Specimen Handlers */, 
( 136496, 161071, '0', 64, '0', '1', '0', '1', '1', '') /* loody Experimenter's Wraps */, 
( 136496, 161072, '0', 76, '0', '1', '0', '1', '1', '') /* platterguards */, 
( 136496, 161073, '0', 47, '0', '1', '0', '1', '1', '') /* einforced Test Subject Shackles */, 
( 136496, 161074, '0', 43, '0', '1', '0', '1', '1', '') /* rushproof Vambraces */, 
( 136496, 161075, '0', 1, '0', '1', '0', '1', '1', '') /* ntiseptic Specimen Handlers */, 
( 136496, 161076, '0', 32, '0', '1', '0', '1', '1', '') /* ron-Grip Specimen Handlers */, 
( 136496, 161077, '0', 79, '0', '1', '0', '1', '1', '') /* luid-Resistant Specimen Handlers */,  
( 136496, 166260, '0', 06, '0', '1', '0', '1', '1', '') /* ecipe: Monel-Hardened Hoofplates */, 
( 136496, 166313, '0', 45, '0', '1', '0', '1', '1', '') /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`= 136499 WHERE `entry`= 136499;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 136499, 152576, '0', 59, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 136499, 152577, '0', 6, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 136499, 160612, '0', 57, '0', '1', '0', '1', '1', '') /* pellbound Specimen Handlers */, 
( 136499, 161071, '0', 74, '0', '1', '0', '1', '1', '') /* loody Experimenter's Wraps */, 
( 136499, 161072, '0', 61, '0', '1', '0', '1', '1', '') /* platterguards */, 
( 136499, 161073, '0', 56, '0', '1', '0', '1', '1', '') /* einforced Test Subject Shackles */, 
( 136499, 161074, '0', 49, '0', '1', '0', '1', '1', '') /* rushproof Vambraces */, 
( 136499, 161075, '0', 67, '0', '1', '0', '1', '1', '') /* ntiseptic Specimen Handlers */, 
( 136499, 161076, '0', 47, '0', '1', '0', '1', '1', '') /* ron-Grip Specimen Handlers */, 
( 136499, 161077, '0', 1, '0', '1', '0', '1', '1', '') /* luid-Resistant Specimen Handlers */, 
( 136499, 166260, '0', 05, '0', '1', '0', '1', '1', '') /* ecipe: Monel-Hardened Hoofplates */, 
( 136499, 166313, '0', 61, '0', '1', '0', '1', '1', '') /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`= 136502 WHERE `entry`= 136502;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 136502, 152576, '0', 62, '0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 136502, 152577, '0', 7, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 136502, 160612, '0', 1, '0', '1', '0', '1', '1', '') /* pellbound Specimen Handlers */, 
( 136502, 161071, '0', 23, '0', '1', '0', '1', '1', '') /* loody Experimenter's Wraps */, 
( 136502, 161072, '0', 1, '0', '1', '0', '1', '1', '') /* platterguards */, 
( 136502, 161074, '0', 24, '0', '1', '0', '1', '1', '') /* rushproof Vambraces */, 
( 136502, 161075, '0', 75, '0', '1', '0', '1', '1', '') /* ntiseptic Specimen Handlers */, 
( 136502, 161076, '0', 47, '0', '1', '0', '1', '1', '') /* ron-Grip Specimen Handlers */, 
( 136502, 161077, '0', 24, '0', '1', '0', '1', '1', '') /* luid-Resistant Specimen Handlers */;

UPDATE `creature_template` SET `lootid`= 136507 WHERE `entry`= 136507;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 136507, 155615, '0', 64, '0', '1', '0', '1', '1', '') /* estilent Muck */, 
( 136507, 158759, '0', 8, '0', '1', '0', '1', '1', '') /* loodgorged Sac */, 
( 136507, 158773, '0', 28, '0', '1', '0', '1', '1', '') /* riggling Goop */, 
( 136507, 160612, '0', 08, '0', '1', '0', '1', '1', '') /* pellbound Specimen Handlers */, 
( 136507, 161071, '0', 1, '0', '1', '0', '1', '1', '') /* loody Experimenter's Wraps */, 
( 136507, 161072, '0', 2, '0', '1', '0', '1', '1', '') /* platterguards */, 
( 136507, 161073, '0', 05, '0', '1', '0', '1', '1', '') /* einforced Test Subject Shackles */, 
( 136507, 161074, '0', 04, '0', '1', '0', '1', '1', '') /* rushproof Vambraces */, 
( 136507, 161075, '0', 07, '0', '1', '0', '1', '1', '') /* ntiseptic Specimen Handlers */, 
( 136507, 161076, '0', 03, '0', '1', '0', '1', '1', '') /* ron-Grip Specimen Handlers */, 
( 136507, 161077, '0', 13, '0', '1', '0', '1', '1', '') /* luid-Resistant Specimen Handlers */;

UPDATE `creature_template` SET `lootid`= 136509 WHERE `entry`= 136509;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 136509, 155615, '0', 55, '0', '1', '0', '1', '1', '') /* estilent Muck */, 
( 136509, 158773, '0', 37, '0', '1', '0', '1', '1', '') /* riggling Goop */, 
( 136509, 158838, '0', 8, '0', '1', '0', '1', '1', '') /* ibrous Sludge */, 
( 136509, 160612, '0', 16, '0', '1', '0', '1', '1', '') /* pellbound Specimen Handlers */, 
( 136509, 161071, '0', 08, '0', '1', '0', '1', '1', '') /* loody Experimenter's Wraps */, 
( 136509, 161072, '0', 12, '0', '1', '0', '1', '1', '') /* platterguards */, 
( 136509, 161073, '0', 07, '0', '1', '0', '1', '1', '') /* einforced Test Subject Shackles */, 
( 136509, 161074, '0', 15, '0', '1', '0', '1', '1', '') /* rushproof Vambraces */, 
( 136509, 161075, '0', 17, '0', '1', '0', '1', '1', '') /* ntiseptic Specimen Handlers */, 
( 136509, 161076, '0', 02, '0', '1', '0', '1', '1', '') /* ron-Grip Specimen Handlers */, 
( 136509, 161077, '0', 06, '0', '1', '0', '1', '1', '') /* luid-Resistant Specimen Handlers */;

UPDATE `creature_template` SET `lootid`= 136510 WHERE `entry`= 136510;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 136510, 160612, '0', 7, '0', '1', '0', '1', '1', '') /* pellbound Specimen Handlers */, 
( 136510, 161071, '0', 2, '0', '1', '0', '1', '1', '') /* loody Experimenter's Wraps */, 
( 136510, 161072, '0', 4, '0', '1', '0', '1', '1', '') /* platterguards */, 
( 136510, 161073, '0', 97, '0', '1', '0', '1', '1', '') /* einforced Test Subject Shackles */, 
( 136510, 161074, '0', 2, '0', '1', '0', '1', '1', '') /* rushproof Vambraces */, 
( 136510, 161075, '0', 5, '0', '1', '0', '1', '1', '') /* ntiseptic Specimen Handlers */, 
( 136510, 161076, '0', 2, '0', '1', '0', '1', '1', '') /* ron-Grip Specimen Handlers */, 
( 136510, 161077, '0', 54, '0', '1', '0', '1', '1', '') /* luid-Resistant Specimen Handlers */, 
( 136510, 161344, '0', 52, '0', '1', '0', '1', '1', '') /* byssal Fragment */;

UPDATE `creature_template` SET `lootid`= 137119 WHERE `entry`= 137119;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 137119, 160053, '0', 23, '0', '1', '0', '1', '1', '') /* attle-Scarred Augment Rune */, 
( 137119, 160618, '0', 3, '0', '1', '0', '1', '1', '') /* loves of Descending Madness */, 
( 137119, 160622, '0', 3, '0', '1', '0', '1', '1', '') /* loodstorm Buckle */, 
( 137119, 160629, '0', 2, '0', '1', '0', '1', '1', '') /* ubywrought Sparkguards */, 
( 137119, 160631, '0', 2, '0', '1', '0', '1', '1', '') /* egguards of Coalescing Plasma */, 
( 137119, 160637, '0', 2, '0', '1', '0', '1', '1', '') /* rimson Colossus Armguards */, 
( 137119, 160639, '0', 3, '0', '1', '0', '1', '1', '') /* reaves of Unending Vigil */, 
( 137119, 160651, '0', 2, '0', '1', '0', '1', '1', '') /* igilant's Bloodshaper */, 
( 137119, 160652, '0', 3, '0', '1', '0', '1', '1', '') /* onstruct Overcharger */, 
( 137119, 160679, '0', 1, '0', '1', '0', '1', '1', '') /* hor, Hammer of the Corrupted */, 
( 137119, 160680, '0', 2, '0', '1', '0', '1', '1', '') /* itanspark Animator */, 
( 137119, 160714, '0', 2, '0', '1', '0', '1', '1', '') /* olatile Walkers */, 
( 137119, 162121, '0', 67, '0', '1', '0', '1', '1', '') /* antus Rune Technique: Uldir */, 
( 137119, 162124, '0', 16, '0', '1', '0', '1', '1', '') /* antus Rune Technique: Uldir */, 
( 137119, 162125, '0', 18, '0', '1', '0', '1', '1', '') /* antus Rune Technique: Uldir */, 
( 137119, 162461, '0', 69, '0', '1', '0', '1', '20', '') /* anguicell */, 
( 137119, 162521, '0', 57, '0', '1', '0', '1', '1', '') /* ecipe: Mystical Cauldron */;

UPDATE `creature_template` SET `lootid`= 138967 WHERE `entry`= 138967;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 138967, 160053, '0', 21, '0', '1', '0', '1', '1', '') /* attle-Scarred Augment Rune */, 
( 138967, 160620, '0', 2, '0', '1', '0', '1', '1', '') /* surper's Bloodcaked Spaulders */, 
( 138967, 160630, '0', 2, '0', '1', '0', '1', '1', '') /* rest of the Undying Visionary */, 
( 138967, 160642, '0', 8, '0', '1', '0', '1', '1', '') /* loak of Rippling Whispers */, 
( 138967, 160684, '0', 2, '0', '1', '0', '1', '1', '') /* ursax, the Backborer */, 
( 138967, 160691, '0', 4, '0', '1', '0', '1', '1', '') /* usk of the Reborn Prophet */, 
( 138967, 160719, '0', 2, '0', '1', '0', '1', '1', '') /* isage of the Ascended Prophet */, 
( 138967, 160720, '0', 2, '0', '1', '0', '1', '1', '') /* rmbands of Sacrosanct Acts */, 
( 138967, 160722, '0', 2, '0', '1', '0', '1', '1', '') /* hestplate of Apocalyptic Machinations */, 
( 138967, 160723, '0', 2, '0', '1', '0', '1', '1', '') /* mperious Vambraces */, 
( 138967, 160724, '0', 1, '0', '1', '0', '1', '1', '') /* incture of Profane Deeds */, 
( 138967, 162121, '0', 11, '0', '1', '0', '1', '1', '') /* antus Rune Technique: Uldir */, 
( 138967, 162125, '0', 04, '0', '1', '0', '1', '1', '') /* antus Rune Technique: Uldir */, 
( 138967, 162422, '0', 2, '0', '1', '0', '1', '1', '') /* attern: Embroidered Deep Sea Bag */, 
( 138967, 162461, '0', 99, '0', '1', '0', '1', '20', '') /* anguicell */, 
( 138967, 162521, '0', 06, '0', '1', '0', '1', '1', '') /* ecipe: Mystical Cauldron */, 
( 138967, 166502, '0', 38, '0', '1', '0', '1', '1', '') /* lood-Soaked Tome of Dark Whispers */;

UPDATE `creature_template` SET `lootid`= 140490 WHERE `entry`= 140490;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 140490, 155601, '0', 72, '0', '1', '0', '1', '1', '') /* ointy Leg Segment */, 
( 140490, 158759, '0', 4, '0', '1', '0', '1', '1', '') /* loodgorged Sac */, 
( 140490, 158864, '0', 25, '0', '1', '0', '1', '1', '') /* iscous Webbing */,
( 140490, 161071, '0', 23, '0', '1', '0', '1', '1', '') /* loody Experimenter's Wraps */, 
( 140490, 161073, '0', 46, '0', '1', '0', '1', '1', '') /* einforced Test Subject Shackles */, 
( 140490, 161074, '0', 26, '0', '1', '0', '1', '1', '') /* rushproof Vambraces */, 
( 140490, 161076, '0', 25, '0', '1', '0', '1', '1', '') /* ron-Grip Specimen Handlers */;

UPDATE `creature_template` SET `lootid`= 140616 WHERE `entry`= 140616;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 140616, 155615, '0', 61, '0', '1', '0', '1', '1', '') /* estilent Muck */, 
( 140616, 158759, '0', 9, '0', '1', '0', '1', '1', '') /* loodgorged Sac */, 
( 140616, 158773, '0', 29, '0', '1', '0', '1', '1', '') /* riggling Goop */, 
( 140616, 160612, '0', 12, '0', '1', '0', '1', '1', '') /* pellbound Specimen Handlers */, 
( 140616, 161072, '0', 05, '0', '1', '0', '1', '1', '') /* platterguards */, 
( 140616, 161074, '0', 31, '0', '1', '0', '1', '1', '') /* rushproof Vambraces */, 
( 140616, 161077, '0', 45, '0', '1', '0', '1', '1', '') /* luid-Resistant Specimen Handlers */;

UPDATE `creature_template` SET `lootid`= 140853 WHERE `entry`= 140853;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 140853, 160615, '0', 5, '0', '1', '0', '1', '1', '') /* eggings of Lingering Infestation */, 
( 140853, 160625, '0', 5, '0', '1', '0', '1', '1', '') /* athogenic Legwraps */, 
( 140853, 160626, '0', 5, '0', '1', '0', '1', '1', '') /* loves of Involuntary Amputation */, 
( 140853, 160632, '0', 5, '0', '1', '0', '1', '1', '') /* lame-Sterilized Spaulders */, 
( 140853, 160634, '0', 5, '0', '1', '0', '1', '1', '') /* ridrunner Galea */, 
( 140853, 160638, '0', 5, '0', '1', '0', '1', '1', '') /* econtaminator's Greatbelt */, 
( 140853, 160645, '0', 5, '0', '1', '0', '1', '1', '') /* ot-Scour Ring */, 
( 140853, 160681, '0', 5, '0', '1', '0', '1', '1', '') /* laive of the Keepers */, 
( 140853, 160682, '0', 5, '0', '1', '0', '1', '1', '') /* other's Twin Gaze */, 
( 140853, 160683, '0', 5, '0', '1', '0', '1', '1', '') /* atticework Scalpel */, 
( 140853, 160695, '0', 5, '0', '1', '0', '1', '1', '') /* ldir Subject Manifest */;

UPDATE `creature_template` SET `lootid`= 141935 WHERE `entry`= 141935;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 141935, 154898, '0', 76, '0', '1', '0', '1', '4', '') /* eaty Haunch */, 
( 141935, 158751, '0', 70, '0', '1', '0', '1', '1', '') /* atted Pelt */, 
( 141935, 158794, '0', 3, '0', '1', '0', '1', '1', '') /* vory Tusk */, 
( 141935, 158866, '0', 26, '0', '1', '0', '1', '1', '') /* ily Blubber */,
( 141935, 160612, '0', 05, '0', '1', '0', '1', '1', '') /* pellbound Specimen Handlers */, 
( 141935, 161071, '0', 12, '0', '1', '0', '1', '1', '') /* loody Experimenter's Wraps */, 
( 141935, 161072, '0', 27, '0', '1', '0', '1', '1', '') /* platterguards */, 
( 141935, 161073, '0', 08, '0', '1', '0', '1', '1', '') /* einforced Test Subject Shackles */, 
( 141935, 161074, '0', 35, '0', '1', '0', '1', '1', '') /* rushproof Vambraces */, 
( 141935, 161075, '0', 19, '0', '1', '0', '1', '1', '') /* ntiseptic Specimen Handlers */, 
( 141935, 161076, '0', 09, '0', '1', '0', '1', '1', '') /* ron-Grip Specimen Handlers */, 
( 141935, 161077, '0', 22, '0', '1', '0', '1', '1', '') /* luid-Resistant Specimen Handlers */;

UPDATE `creature_template` SET `lootid`= 142148 WHERE `entry`= 142148;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 142148, 152576, '0', 76,'0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 142148, 160612, '0', 3, '0', '1', '0', '1', '1', '') /* pellbound Specimen Handlers */, 
( 142148, 161075, '0', 7, '0', '1', '0', '1', '1', '') /* ntiseptic Specimen Handlers */, 
( 142148, 161076, '0', 4, '0', '1', '0', '1', '1', '') /* ron-Grip Specimen Handlers */, 
( 142148, 161077, '0', 6, '0', '1', '0', '1', '1', '') /* luid-Resistant Specimen Handlers */;

UPDATE `creature_template` SET `lootid`= 142149 WHERE `entry`= 142149;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 142149, 152576, '0', 58,'0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 142149, 152577, '0', 6, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 142149, 160612, '0', 84, '0', '1', '0', '1', '1', '') /* pellbound Specimen Handlers */, 
( 142149, 161071, '0', 2, '0', '1', '0', '1', '1', '') /* loody Experimenter's Wraps */, 
( 142149, 161072, '0', 98, '0', '1', '0', '1', '1', '') /* platterguards */, 
( 142149, 161073, '0', 59, '0', '1', '0', '1', '1', '') /* einforced Test Subject Shackles */, 
( 142149, 161074, '0', 68, '0', '1', '0', '1', '1', '') /* rushproof Vambraces */, 
( 142149, 161075, '0', 84, '0', '1', '0', '1', '1', '') /* ntiseptic Specimen Handlers */, 
( 142149, 161076, '0', 48, '0', '1', '0', '1', '1', '') /* ron-Grip Specimen Handlers */, 
( 142149, 161077, '0', 55, '0', '1', '0', '1', '1', '') /* luid-Resistant Specimen Handlers */, 
( 142149, 166313, '0', 14, '0', '1', '0', '1', '1', '') /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`= 142150 WHERE `entry`= 142150;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 142150, 152576, '0', 63,'0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 142150, 152577, '0', 6, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 142150, 160612, '0', 31, '0', '1', '0', '1', '1', '') /* pellbound Specimen Handlers */, 
( 142150, 161071, '0', 6, '0', '1', '0', '1', '1', '') /* loody Experimenter's Wraps */, 
( 142150, 161072, '0', 66, '0', '1', '0', '1', '1', '') /* platterguards */, 
( 142150, 161073, '0', 66, '0', '1', '0', '1', '1', '') /* einforced Test Subject Shackles */, 
( 142150, 161074, '0', 1, '0', '1', '0', '1', '1', '') /* rushproof Vambraces */, 
( 142150, 161075, '0', 1, '0', '1', '0', '1', '1', '') /* ntiseptic Specimen Handlers */, 
( 142150, 161076, '0', 1, '0', '1', '0', '1', '1', '') /* ron-Grip Specimen Handlers */, 
( 142150, 166260, '0', 04, '0', '1', '0', '1', '1', '') /* ecipe: Monel-Hardened Hoofplates */, 
( 142150, 166313, '0', 18, '0', '1', '0', '1', '1', '') /* ecipe: Coarse Leather Barding */, 
( 142150, 172954, '0', 10, '0', '1', '0', '3', '3', '') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 142207 WHERE `entry`= 142207;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 142207, 152576, '0', 54,'0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 142207, 152577, '0', 6, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 142207, 160612, '0', 1, '0', '1', '0', '1', '1', '') /* pellbound Specimen Handlers */, 
( 142207, 161071, '0', 2, '0', '1', '0', '1', '1', '') /* loody Experimenter's Wraps */, 
( 142207, 161072, '0', 2, '0', '1', '0', '1', '1', '') /* platterguards */, 
( 142207, 161074, '0', 1, '0', '1', '0', '1', '1', '') /* rushproof Vambraces */, 
( 142207, 161076, '0', 58, '0', '1', '0', '1', '1', '') /* ron-Grip Specimen Handlers */, 
( 142207, 166260, '0', 2, '0', '1', '0', '1', '1', '') /* ecipe: Monel-Hardened Hoofplates */;

UPDATE `creature_template` SET `lootid`= 142219 WHERE `entry`= 142219;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 142219, 155615, '0', 65, '0', '1', '0', '1', '1', '') /* estilent Muck */, 
( 142219, 158759, '0', 8, '0', '1', '0', '1', '1', '') /* loodgorged Sac */, 
( 142219, 158773, '0', 27, '0', '1', '0', '1', '1', '') /* riggling Goop */, 
( 142219, 160612, '0', 02, '0', '1', '0', '1', '1', '') /* pellbound Specimen Handlers */, 
( 142219, 161071, '0', 19, '0', '1', '0', '1', '1', '') /* loody Experimenter's Wraps */, 
( 142219, 161072, '0', 19, '0', '1', '0', '1', '1', '') /* platterguards */, 
( 142219, 161073, '0', 06, '0', '1', '0', '1', '1', '') /* einforced Test Subject Shackles */, 
( 142219, 161074, '0', 23, '0', '1', '0', '1', '1', '') /* rushproof Vambraces */, 
( 142219, 161075, '0', 29, '0', '1', '0', '1', '1', '') /* ntiseptic Specimen Handlers */, 
( 142219, 161076, '0', 18, '0', '1', '0', '1', '1', '') /* ron-Grip Specimen Handlers */, 
( 142219, 161077, '0', 11, '0', '1', '0', '1', '1', '') /* luid-Resistant Specimen Handlers */;

UPDATE `creature_template` SET `lootid`= 142242 WHERE `entry`= 142242;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 142242, 152576, '0', 58,'0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 142242, 152577, '0', 14, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 142242, 161071, '0', 1, '0', '1', '0', '1', '1', '') /* loody Experimenter's Wraps */, 
( 142242, 161073, '0', 63, '0', '1', '0', '1', '1', '') /* einforced Test Subject Shackles */, 
( 142242, 161074, '0', 1, '0', '1', '0', '1', '1', '') /* rushproof Vambraces */, 
( 142242, 161075, '0', 4, '0', '1', '0', '1', '1', '') /* ntiseptic Specimen Handlers */;

UPDATE `creature_template` SET `lootid`= 142243 WHERE `entry`= 142243;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 142243, 152576, '0', 65,'0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 142243, 152577, '0', 7, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 142243, 161072, '0', 1, '0', '1', '0', '1', '1', '') /* platterguards */, 
( 142243, 161074, '0', 97, '0', '1', '0', '1', '1', '') /* rushproof Vambraces */, 
( 142243, 161076, '0', 52, '0', '1', '0', '1', '1', '') /* ron-Grip Specimen Handlers */, 
( 142243, 166313, '0', 2, '0', '1', '0', '1', '1', '') /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`= 142800 WHERE `entry`= 142800;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 142800, 152576, '0', 59,'0', '1', '0', '1', '3', '') /* idespray Linen */, 
( 142800, 152577, '0', 6, '0', '1', '0', '1', '1', '') /* eep Sea Satin */, 
( 142800, 160612, '0', 1, '0', '1', '0', '1', '1', '') /* pellbound Specimen Handlers */, 
( 142800, 161071, '0', 58, '0', '1', '0', '1', '1', '') /* loody Experimenter's Wraps */, 
( 142800, 161072, '0', 73, '0', '1', '0', '1', '1', '') /* platterguards */, 
( 142800, 161073, '0', 5, '0', '1', '0', '1', '1', '') /* einforced Test Subject Shackles */, 
( 142800, 161074, '0', 48, '0', '1', '0', '1', '1', '') /* rushproof Vambraces */, 
( 142800, 161075, '0', 76, '0', '1', '0', '1', '1', '') /* ntiseptic Specimen Handlers */, 
( 142800, 161076, '0', 42, '0', '1', '0', '1', '1', '') /* ron-Grip Specimen Handlers */, 
( 142800, 161077, '0', 58, '0', '1', '0', '1', '1', '') /* luid-Resistant Specimen Handlers */, 
( 142800, 166260, '0', 03, '0', '1', '0', '1', '1', '') /* ecipe: Monel-Hardened Hoofplates */, 
( 142800, 166313, '0', 24, '0', '1', '0', '1', '1', '') /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`= 163405 WHERE `entry`= 163405;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `lootmode`, `groupid`, `mincount`, `maxcount`, `comment`) VALUES
( 163405, 160654, '0', 5, '0', '1', '0', '1', '1', '') /* anquished Tendril of G'huun */, 
( 163405, 160690, '0', 5, '0', '1', '0', '1', '1', '') /* eptavium, Staff of Torturous Knowledge */, 
( 163405, 160693, '0', 5, '0', '1', '0', '1', '1', '') /* ancet of the Deft Hand */, 
( 163405, 160694, '0', 5, '0', '1', '0', '1', '1', '') /* e-Origination Pulse Rifle */, 
( 163405, 160699, '0', 5, '0', '1', '0', '1', '1', '') /* arricade of Purifying Resolve */, 
( 163405, 160726, '0', 5, '0', '1', '0', '1', '1', '') /* mice of Corrupting Horror */, 
( 163405, 160727, '0', 5, '0', '1', '0', '1', '1', '') /* ord of Septic Envelopment */, 
( 163405, 160728, '0', 5, '0', '1', '0', '1', '1', '') /* unic of the Sanguine Deity */, 
( 163405, 160729, '0', 5, '0', '1', '0', '1', '1', '') /* triders of the Putrescent Path */, 
( 163405, 160731, '0', 5, '0', '1', '0', '1', '1', '') /* paulders of Coagulated Viscera */, 
( 163405, 160732, '0', 5, '0', '1', '0', '1', '1', '') /* elm of the Defiled Laboratorium */, 
( 163405, 160733, '0', 5, '0', '1', '0', '1', '1', '') /* ematocyst Stompers */;