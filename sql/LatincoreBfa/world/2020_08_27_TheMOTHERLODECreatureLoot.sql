UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120 WHERE `entry`IN(
103098, 129214, 129227, 129231, 129232, 129802, 130435, 130436, 130437, 130485, 130488, 130635, 130653, 130661, 131227, 132056, 132198, 132258, 132713, 133345, 133430, 133432, 133436, 133463, 133482, 133593, 133963, 134005, 134012, 134232, 135975, 136005, 136006, 136139, 136470, 136643, 136688, 136776, 136934, 137029, 137456, 137513, 137713, 137716, 137940, 137994, 138047, 138049, 138053, 138054, 138061, 138063, 138064, 138066, 138068, 138082, 138367, 138369, 139273, 139904, 140319, 140615, 140775, 140837, 140902, 140912, 141851, 142625, 142666, 142668, 143405, 143414, 143415, 143416, 143645, 143774, 144231, 144232, 144243, 144286, 144409, 144410, 148714, 148716, 148893, 148894, 149596, 155432, 155433, 155434, 161124, 161241, 161243, 161244, 161408, 161437, 161502, 161510, 161895, 162152
);

UPDATE `creature_template` SET `lootid`= 129214 WHERE `entry`= 129214;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 129214, 155864, 1, '1', '0' , '1', '1') /* owerAssisted Vicegrips */, 
( 129214, 158350, 3, '1', '0' , '1', '1') /* owdy Reveler's Legwraps */, 
( 129214, 158353, 3, '1', '0' , '1', '1') /* ervoArm Bindings */, 
( 129214, 159357, 2, '1', '0' , '1', '1') /* inked Pummeler Grips */, 
( 129214, 159462, 10, '1', '0' , '1', '1') /* ootbomb Championship Ring */,
( 129214, 159638, 2, '1', '0' , '1', '1') /* lectroArm Bludgeoner */, 
( 129214, 159663, 81, '1', '0' , '1', '1') /* 04W4Y Crowd Repeller */,
( 129214, 168153, 21, '1', '0' , '1', '1') /* oin Return Flipper */;

UPDATE `creature_template` SET `lootid`= 129227 WHERE `entry`= 129227;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 129227, 158357, 3, '1', '0' , '1', '1') /* indings of Enraged Earth */, 
( 129227, 158359, 3, '1', '0' , '1', '1') /* tonefury Vambraces */, 
( 129227, 159226, 3, '1', '0' , '1', '1') /* xcavator's Safety Belt */, 
( 129227, 159231, 4, '1', '0' , '1', '1') /* ine Rat's Handwarmers */, 
( 129227, 159336, 2, '1', '0' , '1', '1') /* ercenary Miner's Boots */, 
( 129227, 159361, 2, '1', '0' , '1', '1') /* halebiter Interlinked Chain */, 
( 129227, 159612, 3, '1', '0' , '1', '1') /* zerokk's Resonating Heart */, 
( 129227, 159679, 2, '1', '0' , '1', '1') /* abatons of Rampaging Elements */, 
( 129227, 159725, 3, '1', '0' , '1', '1') /* nscrupulous Geologist's Belt */, 
( 129227, 168133, 04, '1', '0' , '1', '1') /* nrefined Azerite Geode */;

UPDATE `creature_template` SET `lootid`= 129231 WHERE `entry`= 129231;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 129231, 158341, 2, '1', '0' , '1', '1') /* hemical Blaster's Legguards */, 
( 129231, 159235, 2, '1', '0' , '1', '1') /* eranged Alchemist's Slippers */, 
( 129231, 159240, 2, '1', '0' , '1', '1') /* ixxa's SweatWicking Cuffs */, 
( 129231, 159287, 9, '1', '0' , '1', '1') /* loak of Questionable Intent */, 
( 129231, 159305, 3, '1', '0' , '1', '1') /* orrosive Handler's Gloves */, 
( 129231, 159451, 2, '1', '0' , '1', '1') /* eadplate Legguards */, 
( 129231, 159639, 75, '1', '0' , '1', '1') /* .A.C.I.F.I.S.T. Mk7 */;

UPDATE `creature_template` SET `lootid`= 130435 WHERE `entry`= 130435;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 130435, 152576, 67, '1', '0' , '1', '3') /* idespray Linen */, 
( 130435, 152577, 7, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 130435, 163906, 1, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */, 
( 130435, 163915, 05, '1', '0' , '1', '1') /* iscontinued Zandalari Coins */, 
( 130435, 166260, 01, '1', '0' , '1', '1') /* ecipe: MonelHardened Hoofplates */, 
( 130435, 166313, 01, '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`= 130436 WHERE `entry`= 130436;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 130436, 152576, 61, '1', '0' , '1', '3') /* idespray Linen */, 
( 130436, 152577, 7, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 130436, 163897, 01, '1', '0' , '1', '1') /* ersonal Spice Stash */, 
( 130436, 163906, 06, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */,
( 130436, 166260, 01, '1', '0' , '1', '1') /* ecipe: MonelHardened Hoofplates */, 
( 130436, 172954, 02, '1', '0' , '1', '6') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 130437 WHERE `entry`= 130437;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 130437, 152576, 64, '1', '0' , '1', '3') /* idespray Linen */, 
( 130437, 152577, 5, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 130437, 163915, 04, '1', '0' , '1', '1') /* iscontinued Zandalari Coins */,
( 130437, 172954, 01, '1', '0' , '3', '3') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 130485 WHERE `entry`= 130485;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 130485, 152576, 55, '1', '0' , '1', '3') /* idespray Linen */, 
( 130485, 152577, 5, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 130485, 157842, 2, '1', '0' , '1', '1') /* usty Gear */, 
( 130485, 160502, 82, '1', '0' , '4', '4') /* hemical Blasting Cap */, 
( 130485, 163915, 01, '1', '0' , '1', '1') /* iscontinued Zandalari Coins */,  
( 130485, 166313, 04, '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */, 
( 130485, 172954, 06, '1', '0' , '6', '6') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 130488 WHERE `entry`= 130488;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 130488, 152576, 64, '1', '0' , '1', '3') /* idespray Linen */, 
( 130488, 152577, 7, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 130488, 163897, 01, '1', '0' , '1', '1') /* ersonal Spice Stash */, 
( 130488, 163906, 04, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */, 
( 130488, 166260, 04, '1', '0' , '1', '1') /* ecipe: MonelHardened Hoofplates */, 
( 130488, 166313, 1, '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`= 130635 WHERE `entry`= 130635;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 130635, 152512, 3, '1', '0' , '1', '4') /* onelite Ore */, 
( 130635, 155631, 4, '1', '0' , '1', '1') /* nert Stone */, 
( 130635, 157844, 58, '1', '0' , '1', '1') /* ridescent Speck */, 
( 130635, 158757, 8, '1', '0' , '1', '1') /* isquiet Earth */, 
( 130635, 159140, 26, '1', '0' , '1', '1') /* ifeless Clay */, 
( 130635, 168135, 23, '1', '0' , '1', '1') /* itan's Blood */;

UPDATE `creature_template` SET `lootid`= 130653 WHERE `entry`= 130653;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 130653, 152576, 60, '1', '0' , '1', '3') /* idespray Linen */, 
( 130653, 152577, 8, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 130653, 163906, 03, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */, 
( 130653, 163915, 09, '1', '0' , '1', '1') /* iscontinued Zandalari Coins */;

UPDATE `creature_template` SET `lootid`= 130661 WHERE `entry`= 130661;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 130661, 152576, 58, '1', '0' , '1', '3') /* idespray Linen */, 
( 130661, 152577, 6, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 130661, 163897, 63, '1', '0' , '1', '1') /* ersonal Spice Stash */, 
( 130661, 163906, 2, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */, 
( 130661, 163915, 01, '1', '0' , '1', '1') /* iscontinued Zandalari Coins */,
( 130661, 172954, 01, '1', '0' , '3', '3') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 132713 WHERE `entry`= 132713;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 132713, 157842, 1, '1', '0' , '1', '1') /* usty Gear */, 
( 132713, 158307, 3, '1', '0' , '1', '1') /* hrapnelDampening Chestguard */, 
( 132713, 158349, 6, '1', '0' , '1', '1') /* etticoat of the SelfStylized Azerite Baron */, 
( 132713, 158364, 5, '1', '0' , '1', '1') /* igh Altitude Turban */, 
( 132713, 158923, 4, '1', '0' , '1', '1') /* ythic Keystone */, 
( 132713, 159232, 4, '1', '0' , '1', '1') /* xquisitely Aerodynamic Shoulderpads */, 
( 132713, 159298, 5, '1', '0' , '1', '1') /* enture Co. Plenipotentiary Vest */, 
( 132713, 159360, 3, '1', '0' , '1', '1') /* rashguard Spaulders */, 
( 132713, 159415, 5, '1', '0' , '1', '1') /* kyscorcher Pauldrons */,
( 132713, 159611, 5, '1', '0' , '1', '1') /* azdunk's Big Red Button */, 
( 132713, 159641, 7, '1', '0' , '1', '1') /* 3T00t */, 
( 132713, 160502, 27, '1', '0' , '1', '4') /* hemical Blasting Cap */, 
( 132713, 161129, 35, '1', '0' , '1', '1') /* echaMogul Mk1 Remote Activation Device */, 
( 132713, 161132, 65, '1', '0' , '1', '2') /* rush Resistant Stabilizer */, 
( 132713, 161135, 41, '1', '0' , '1', '1') /* chematic: MechaMogul Mk2 */, 
( 132713, 161136, 71, '1', '0' , '1', '2') /* zerite Forged Protection Plating */, 
( 132713, 161137, 63, '1', '0' , '2', '2') /* lastFired Electric Servomotor */, 
( 132713, 162460, 3, '1', '0' , '1', '1') /* ydrocore */, 
( 132713, 162520, 22, '1', '0' , '1', '1') /* ecipe: Mystical Cauldron */, 
( 132713, 163569, 22, '1', '0' , '5', '10') /* nsulated Wiring */, 
( 132713, 163708, 9, '1', '0' , '1', '1') /* ronfoe */, 
( 132713, 165948, 54, '1', '0' , '1', '1') /* idalcore */, 
( 132713, 172954, 01, '1', '0' , '1', '1') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 133345 WHERE `entry`= 133345;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 133345, 152576, 62, '1', '0' , '1', '3') /* idespray Linen */, 
( 133345, 152577, 6, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 133345, 163906, 02, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */, 
( 133345, 166260, 01, '1', '0' , '1', '1') /* ecipe: MonelHardened Hoofplates */;

UPDATE `creature_template` SET `lootid`= 133430 WHERE `entry`= 133430;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 133430, 152576, 61, '1', '0' , '1', '3') /* idespray Linen */, 
( 133430, 152577, 6, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 133430, 161138, 15, '1', '0' , '1', '1') /* zerite InspirAGeneering Elixir */, 
( 133430, 163906, 02, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */, 
( 133430, 163915, 01, '1', '0' , '1', '1') /* iscontinued Zandalari Coins */, 
( 133430, 168144, 89, '1', '0' , '1', '1') /* xtremely Precise Vial */, 
( 133430, 172954, 01, '1', '0' , '1', '6') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 133432 WHERE `entry`= 133432;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 133432, 152576, 60, '1', '0' , '1', '3') /* idespray Linen */, 
( 133432, 152577, 6, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 133432, 168144, 1, '1', '0' , '1', '1') /* xtremely Precise Vial */;

UPDATE `creature_template` SET `lootid`= 133436 WHERE `entry`= 133436;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 133436, 152576, 62, '1', '0' , '1', '3') /* idespray Linen */, 
( 133436, 152577, 6, '1', '0' , '1', '1') /* eep Sea Satin */,
( 133436, 163897, 04, '1', '0' , '1', '1') /* ersonal Spice Stash */, 
( 133436, 163906, 01, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */, 
( 133436, 163915, 08, '1', '0' , '1', '1') /* iscontinued Zandalari Coins */;

UPDATE `creature_template` SET `lootid`= 133463 WHERE `entry`= 133463;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 133463, 157842, 68, '1', '0' , '1', '1') /* usty Gear */, 
( 133463, 158756, 4, '1', '0' , '1', '1') /* otary Gasket */, 
( 133463, 158834, 25, '1', '0' , '1', '1') /* inch Coil */;

UPDATE `creature_template` SET `lootid`= 133593 WHERE `entry`= 133593;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 133593, 152576, 59, '1', '0' , '1', '3') /* idespray Linen */, 
( 133593, 152577, 6, '1', '0' , '1', '1') /* eep Sea Satin */,
( 133593, 163897, 01, '1', '0' , '1', '1') /* ersonal Spice Stash */, 
( 133593, 163906, 05, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */, 
( 133593, 163915, 21, '1', '0' , '1', '1') /* iscontinued Zandalari Coins */;

UPDATE `creature_template` SET `lootid`= 133963 WHERE `entry`= 133963;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 133963, 154897, 24, '1', '0' , '1', '4') /* tringy Loins */, 
( 133963, 158752, 17, '1', '0' , '1', '1') /* evered Foot */, 
( 133963, 158819, 4, '1', '0' , '1', '1') /* at Tail */, 
( 133963, 158870, 78, '1', '0' , '1', '1') /* ooly Hair */;

UPDATE `creature_template` SET `lootid`= 134005 WHERE `entry`= 134005;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134005, 152512, 4, '1', '0' , '1', '4') /* onelite Ore */, 
( 134005, 155631, 2, '1', '0' , '1', '1') /* nert Stone */, 
( 134005, 157844, 63, '1', '0' , '1', '1') /* ridescent Speck */, 
( 134005, 158757, 8, '1', '0' , '1', '1') /* isquiet Earth */, 
( 134005, 158872, 01, '1', '0' , '1', '1') /* nstable Essence */, 
( 134005, 159140, 26, '1', '0' , '1', '1') /* ifeless Clay */, 
( 134005, 168135, 32, '1', '0' , '1', '1') /* itan's Blood */;

UPDATE `creature_template` SET `lootid`= 134012 WHERE `entry`= 134012;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 134012, 152576, 67, '1', '0' , '1', '3') /* idespray Linen */, 
( 134012, 152577, 11, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 134012, 163906, 03, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */;

UPDATE `creature_template` SET `lootid`=134232 WHERE `entry`=134232;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(134232, 152576, 65, '1', '0' , '1', '3') /* idespray Linen */, 
(134232, 152577, 6, '1', '0' , '1', '1') /* eep Sea Satin */, 
(134232, 163906, 06, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */, 
(134232, 163915, 17, '1', '0' , '1', '1') /* iscontinued Zandalari Coins */, 
(134232, 172954, 02, '1', '0' , '1', '1') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 135975 WHERE `entry`= 135975;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 135975, 152576, 43, '1', '0' , '1', '3') /* idespray Linen */, 
( 135975, 152577, 35, '1', '0' , '1', '1') /* eep Sea Satin */;

UPDATE `creature_template` SET `lootid`= 136005 WHERE `entry`= 136005;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 136005, 152576, 62, '1', '0' , '1', '3') /* idespray Linen */, 
( 136005, 152577, 11, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 136005, 166260, 02, '1', '0' , '1', '1') /* ecipe: MonelHardened Hoofplates */, 
( 136005, 172954, 02, '1', '0' , '6', '6') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 136006 WHERE `entry`= 136006;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 136006, 152576, 61, '1', '0' , '1', '3') /* idespray Linen */, 
( 136006, 152577, 12, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 136006, 172954, 02, '1', '0' , '1', '1') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 136139 WHERE `entry`= 136139;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 136139, 152576, 63, '1', '0' , '1', '3') /* idespray Linen */, 
( 136139, 152577, 3, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 136139, 157842, 98, '1', '0' , '1', '1') /* usty Gear */,
( 136139, 160502, 94, '1', '0' , '3', '3') /* hemical Blasting Cap */, 
( 136139, 163897, 1, '1', '0' , '1', '1') /* ersonal Spice Stash */, 
( 136139, 163915, 04, '1', '0' , '1', '1') /* iscontinued Zandalari Coins */;

UPDATE `creature_template` SET `lootid`= 136470 WHERE `entry`= 136470;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 136470, 152576, 61, '1', '0' , '1', '3') /* idespray Linen */, 
( 136470, 152577, 4, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 136470, 163897, 21, '1', '0' , '1', '1') /* ersonal Spice Stash */, 
( 136470, 163915, 09, '1', '0' , '1', '1') /* iscontinued Zandalari Coins */, 
( 136470, 166313, 01, '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */, 
( 136470, 172954, 01, '1', '0' , '1', '6') /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`= 136643 WHERE `entry`= 136643;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 136643, 157842, 64, '1', '0' , '1', '1') /* usty Gear */, 
( 136643, 158756, 5, '1', '0' , '1', '1') /* otary Gasket */, 
( 136643, 158834, 28, '1', '0' , '1', '1') /* inch Coil */;

UPDATE `creature_template` SET `lootid`= 136688 WHERE `entry`= 136688;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 136688, 152576, 59, '1', '0' , '1', '3') /* idespray Linen */, 
( 136688, 152577, 13, '1', '0' , '1', '1') /* eep Sea Satin */, 
( 136688, 166313, 06, '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`= 136934 WHERE `entry`= 136934;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 136934, 152576, 63, '1', '0' , '1', '3') /* idespray Linen */, 
( 136934, 152577, 3, '1', '0' , '1', '1') /* eep Sea Satin */,
( 136934, 163906, 24, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */, 
( 136934, 163915, 02, '1', '0' , '1', '1') /* iscontinued Zandalari Coins */;

UPDATE `creature_template` SET `lootid`= 137029 WHERE `entry`= 137029;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 137029, 152576, 55, '1', '0' , '1', '3') /* idespray Linen */, 
( 137029, 152577, 4, '1', '0' , '1', '1') /* eep Sea Satin */,
( 137029, 163897, 01, '1', '0' , '1', '1') /* ersonal Spice Stash */, 
( 137029, 163906, 04, '1', '0' , '1', '1') /* ounterfeit Kul Tiran Coins */, 
( 137029, 163915, 04, '1', '0' , '1', '1') /* iscontinued Zandalari Coins */;

UPDATE `creature_template` SET `lootid`= 137713 WHERE `entry`= 137713;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 137713, 152631, 41, '1', '0' , '2', '4') /* riny Flesh */, 
( 137713, 158770, 13, '1', '0' , '1', '1') /* elatinous Roe */, 
( 137713, 158839, 49, '1', '0' , '1', '1') /* hick Crab Claw */, 
( 137713, 158861, 35, '1', '0' , '1', '1') /* ensile Eye Stalk */;

UPDATE `creature_template` SET `lootid`= 137716 WHERE `entry`= 137716;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 137716, 152631, 82, '1', '0' , '2', '4') /* riny Flesh */, 
( 137716, 158839, 94, '1', '0' , '1', '1') /* hick Crab Claw */, 
( 137716, 158861, 6, '1', '0' , '1', '1') /* ensile Eye Stalk */;

UPDATE `creature_template` SET `lootid`= 137940 WHERE `entry`= 137940;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 137940, 152631, 93, '1', '0' , '1', '3') /* riny Flesh */, 
( 137940, 155603, 14, '1', '0' , '1', '1') /* laky Fish Scales */, 
( 137940, 158760, 86, '1', '0' , '1', '1') /* in Ray */;

UPDATE `creature_template` SET `lootid`= 138061 WHERE `entry`= 138061;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 138061, 152576, 33, '1', '0' , '2', '2') /* idespray Linen */, 
( 138061, 152577, 17, '1', '0' , '1', '1') /* eep Sea Satin */;

UPDATE `creature_template` SET `lootid`= 138063 WHERE `entry`= 138063;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 138063, 152576, 100, '1', '0' , '3', '3') /* idespray Linen */;

UPDATE `creature_template` SET `lootid`= 138064 WHERE `entry`= 138064;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 138064, 152576, 75, '1', '0' , '3', '3') /* idespray Linen */, 
( 138064, 152577, 13, '1', '0' , '1', '1') /* eep Sea Satin */;

UPDATE `creature_template` SET `lootid`= 138066 WHERE `entry`= 138066;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 138066, 152576, 97, '1', '0' , '1', '2') /* idespray Linen */, 
( 138066, 152577, 2, '1', '0' , '1', '1') /* eep Sea Satin */;

UPDATE `creature_template` SET `lootid`= 138082 WHERE `entry`= 138082;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 138082, 152576, 86, '1', '0' , '1', '3') /* idespray Linen */,
( 138082, 166313, 12, '1', '0' , '1', '1') /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`= 138369 WHERE `entry`= 138369;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 138369, 152576, 80, '1', '0' , '1', '3') /* idespray Linen */, 
( 138369, 152577, 14, '1', '0' , '1', '1') /* eep Sea Satin */;

UPDATE `creature_template` SET `lootid`= 140615 WHERE `entry`= 140615;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 140615, 152576, 3, '1', '0' , '1', '3') /* idespray Linen */, 
( 140615, 152577, 92, '1', '0' , '1', '1') /* eep Sea Satin */;

UPDATE `creature_template` SET `lootid`= 140902 WHERE `entry`= 140902;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 140902, 152576, 8, '1', '0' , '1', '3') /* idespray Linen */, 
( 140902, 152577, 2, '1', '0' , '1', '1') /* eep Sea Satin */,
( 140902, 161138, 2, '1', '0' , '1', '1') /* zerite InspirAGeneering Elixir */, 
( 140902, 168144, 9, '1', '0' , '1', '1') /* xtremely Precise Vial */;

UPDATE `creature_template` SET `lootid`= 140912 WHERE `entry`= 140912;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 140912, 152576, 17, '1', '0' , '1', '3') /* idespray Linen */;

UPDATE `creature_template` SET `lootid`= 142625 WHERE `entry`= 142625;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 142625, 152576, 45, '1', '0' , '1', '3') /* idespray Linen */;

UPDATE `creature_template` SET `lootid`= 144231 WHERE `entry`= 144231;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 144231, 152576, 39, '1', '0' , '2', '3') /* idespray Linen */, 
( 144231, 152577, 2, '1', '0' , '1', '1') /* eep Sea Satin */;

UPDATE `creature_template` SET `lootid`= 144232 WHERE `entry`= 144232;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 144232, 152576, 47, '1', '0' , '1', '3') /* idespray Linen */;

UPDATE `creature_template` SET `lootid`= 144286 WHERE `entry`= 144286;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
( 144286, 152576, 82, '1', '0' , '2', '3') /* idespray Linen */, 
( 144286, 152577, 9, '1', '0' , '1', '1') /* eep Sea Satin */;