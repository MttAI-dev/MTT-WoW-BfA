UPDATE `creature_template` SET `inhabittype`=7 WHERE `entry`=51346;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=129547;

DELETE FROM `creature_text` WHERE `CreatureID`=129231;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(129231, 0, 0, '¡¡¡You are not prepared!!!!', 14, 0, 100, 0, 0, 0, 0, 'Rixxafluxflame - YELL_AGGRO'),
(129231, 0, 1, 'Burn...', 14, 0, 100, 0, 0, 0, 0, 'Rixxafluxflame- YELL_CHEMICAL_BURN'),
(129231, 1, 0, 'Figth with me.', 14, 0, 100, 0, 0, 0, 0, 'Rixxafluxflame - YELL_PROPELLANT_BLAST'),
(129231, 2, 0, 'Arg', 41, 0, 100, 0, 0, 0, 0, 'Rixxafluxflame - YELL_SEARING_REAGENT'),
(129231, 3, 0, 'Oh nooo...', 14, 0, 100, 0, 0, 0, 0, 'Rixxafluxflame - YELL_KILLED');

DELETE FROM `creature_text` WHERE `CreatureID`=129232;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(129232, 0, 0, '¡¡¡You are not prepared!!!!', 14, 0, 100, 0, 0, 0, 0, 'Mogulrazdunk - YELL_AGGRO'),
(129232, 0, 1, 'Burn...', 14, 0, 100, 0, 0, 0, 0, 'Mogulrazdunk- YELL_GATLING_GUN'),
(129232, 1, 0, 'Figth with me.', 14, 0, 100, 0, 0, 0, 0, 'Mogulrazdunk - YELL_DRILL_SMASH'),
(129232, 2, 0, 'Arg', 41, 0, 100, 0, 0, 0, 0, 'Mogulrazdunk - YELL_MICRO_MISSILES'),
(129232, 3, 0, 'Oh nooo...', 14, 0, 100, 0, 0, 0, 0, 'Mogulrazdunk - YELL_KILLED');

DELETE FROM `creature_text` WHERE (`CreatureID`=129227 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=129227 AND `GroupID`='0' AND `ID`='1') OR(`CreatureID`=129227 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=129227 AND `GroupID`='2' AND `ID`='0') OR (`CreatureID`=129227 AND `GroupID`='3' AND `ID`='0') OR (`CreatureID`=129227 AND `GroupID`='4' AND `ID`='0') OR (`CreatureID`=129227 AND `GroupID`='5' AND `ID`='0') OR (`CreatureID`=129227 AND `GroupID`='6' AND `ID`='0');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(129227, 0, 0, '¡¡¡You are not prepared!!!!', 14, 0, 100, 0, 0, 97390, 0, 'Azerok - YELL_AZERITE_INFUSION'),
(129227, 0, 1, 'Burn...', 14, 0, 100, 0, 0, 97384, 0, 'Azerok- YELL_CALL_EARTHRAGER'),
(129227, 1, 0, 'Figth with me.', 14, 0, 100, 0, 0, 97381, 0, 'Azerok - YELL_RESONANT_PULSE'),
(129227, 2, 0, 'Arg', 41, 0, 100, 0, 0, 115344, 0, 'Azerok - YELL_TECTONIC_SMASH'),
(129227, 3, 0, 'Oh nooo...', 14, 0, 100, 0, 0, 97380, 0, 'Azerok - YELL_KILLED'),
(129227, 4, 0, 'I will kill you', 14, 0, 100, 0, 0, 97379, 0, 'Azerok - YELL_KILL'),
(129227, 5, 0, 'Come here...', 14, 0, 100, 0, 0, 97385, 0, 'Azerok - YELL_ENTER_COMBAT');

UPDATE `creature_template` SET `lootid`=144286 WHERE `entry`=144286;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(144286, 152576, 14, 1, 0, 2, 2) /* Tidespray Linen */, 
(144286, 152577, 86, 1, 0, 1, 1) /* Deep Sea Satin */;

UPDATE `creature_template` SET `lootid`=129214 WHERE `entry`=129214;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(129214, 155864, 2, 1, 0, 1, 1) /* owerAssisted Vicegrips */, 
(129214, 158350, 3, 1, 0, 1, 1) /* owdy Reveler's Legwraps */, 
(129214, 158353, 4, 1, 0, 1, 1) /* ervoArm Bindings */, 
(129214, 159357, 2, 1, 0, 1, 1) /* inked Pummeler Grips */, 
(129214, 159462, 10, 1, 0, 1, 1) /* ootbomb Championship Ring */, 
(129214, 200000, 3, 1, 0, 1, 1), 
(129214, 200002, 3, 1, 0, 1, 1), 
(129214, 159638, 1, 1, 0, 1, 1) /* lectroArm Bludgeoner */, 
(129214, 159663, 0.98, 1, 0, 1, 1) /* 04W4Y Crowd Repeller */, 
(129214, 200005, 3, 1, 0, 1, 1), 
(129214, 168153, 0.12, 1, 0, 1, 1) /* oin Return Flipper */;

UPDATE `creature_template` SET `lootid`=129227 WHERE `entry`=129227;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(129227, 158357, 2, 1, 0, 1, 1) /* indings of Enraged Earth */, 
(129227, 158359, 3, 1, 0, 1, 1) /* tonefury Vambraces */, 
(129227, 159226, 3, 1, 0, 1, 1) /* xcavator's Safety Belt */, 
(129227, 159231, 3, 1, 0, 1, 1) /* ine Rat's Handwarmers */, 
(129227, 159336, 2, 1, 0, 1, 1) /* ercenary Miner's Boots */, 
(129227, 159361, 1, 1, 0, 1, 1) /* halebiter Interlinked Chain */, 
(129227, 200000, 3, 1, 0, 1, 1), 
(129227, 159612, 3, 1, 0, 1, 1) /* zerokk's Resonating Heart */, 
(129227, 159679, 3, 1, 0, 1, 1) /* abatons of Rampaging Elements */, 
(129227, 159725, 3, 1, 0, 1, 1) /* nscrupulous Geologist's Belt */, 
(129227, 200005, 3, 1, 0, 1, 1), 
(129227, 168133, 0.04, 1, 0, 1, 1) /* nrefined Azerite Geode */;

UPDATE `creature_template` SET `lootid`=129231 WHERE `entry`=129231;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(129231, 158341, 2, 1, 0, 1, 1) /* hemical Blaster's Legguards */, 
(129231, 159235, 2, 1, 0, 1, 1) /* eranged Alchemist's Slippers */, 
(129231, 159240, 2, 1, 0, 1, 1) /* ixxa's SweatWicking Cuffs */, 
(129231, 159287, 10, 1, 0, 1, 1) /* loak of Questionable Intent */, 
(129231, 159305, 3, 1, 0, 1, 1) /* orrosive Handler's Gloves */, 
(129231, 159451, 3, 1, 0, 1, 1) /* eadplate Legguards */, 
(129231, 200000, 3, 1, 0, 1, 1), 
(129231, 200002, 3, 1, 0, 1, 1), 
(129231, 159639, 0.75, 1, 0, 1, 1) /* .A.C.I.F.I.S.T. Mk7 */, 
(129231, 200005, 3, 1, 0, 1, 1), 
(129231, 200003, 0.1, 1, 0, 1, 1), 
(129231, 172954, 0.01, 1, 0, 1, 1) /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`=130435 WHERE `entry`=130435;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(130435, 152576, 61, 1, 0, 1, 3) /* idespray Linen */, 
(130435, 152577, 6, 1, 0, 1, 1) /* eep Sea Satin */, 
(130435, 200001, 5, 1, 0, 1, 1), 
(130435, 200000, 3, 1, 0, 1, 1), 
(130435, 200002, 3, 1, 0, 1, 1), 
(130435, 200005, 3, 1, 0, 1, 1), 
(130435, 163906, 0.1, 1, 0, 1, 1) /* ounterfeit Kul Tiran Coins */, 
(130435, 163915, 0.05, 1, 0, 1, 1) /* iscontinued Zandalari Coins */;

UPDATE `creature_template` SET `lootid`=130436 WHERE `entry`=130436;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(130436, 152576, 60, 1, 0, 1, 3) /* idespray Linen */, 
(130436, 152577, 7, 1, 0, 1, 1) /* eep Sea Satin */, 
(130436, 200001, 5, 1, 0, 1, 1), 
(130436, 200000, 3, 1, 0, 1, 1), 
(130436, 200002, 3, 1, 0, 1, 1), 
(130436, 200005, 3, 1, 0, 1, 1), 
(130436, 163897, 0.08, 1, 0, 1, 1) /* ersonal Spice Stash */, 
(130436, 163906, 0.06, 1, 0, 1, 1) /* ounterfeit Kul Tiran Coins */, 
(130436, 163915, 0.06, 1, 0, 1, 1) /* iscontinued Zandalari Coins */, 
(130436, 200003, 0.1, 1, 0, 1, 1), 
(130436, 172954, 0.02, 1, 0, 1, 6) /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`=130437 WHERE `entry`=130437;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(130437, 152576, 65, 1, 0, 1, 3) /* idespray Linen */, 
(130437, 152577, 6, 1, 0, 1, 1) /* eep Sea Satin */, 
(130437, 200001, 5, 1, 0, 1, 1), 
(130437, 200000, 3, 1, 0, 1, 1), 
(130437, 200002, 3, 1, 0, 1, 1), 
(130437, 200005, 3, 1, 0, 1, 1), 
(130437, 163915, 0.13, 1, 0, 1, 1) /* iscontinued Zandalari Coins */, 
(130437, 200003, 0.1, 1, 0, 1, 1), 
(130437, 172954, 0.01, 1, 0, 3, 3) /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`=130485 WHERE `entry`=130485;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(130485, 152576, 60, 1, 0, 1, 3) /* idespray Linen */, 
(130485, 152577, 4, 1, 0, 1, 1) /* eep Sea Satin */, 
(130485, 200001, 5, 1, 0, 1, 1), 
(130485, 157842, 0.58, 1, 0, 1, 1) /* usty Gear */, 
(130485, 200000, 3, 1, 0, 1, 1), 
(130485, 200002, 3, 1, 0, 1, 1), 
(130485, 200005, 3, 1, 0, 1, 1), 
(130485, 160502, 0.29, 1, 0, 4, 4) /* hemical Blasting Cap */, 
(130485, 163569, 0.13, 1, 0, 6, 6) /* nsulated Wiring */, 
(130485, 200003, 0.1, 1, 0, 1, 1), 
(130485, 166313, 0.04, 1, 0, 1, 1) /* ecipe: Coarse Leather Barding */, 
(130485, 172954, 0.02, 1, 0, 6, 6) /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`=130488 WHERE `entry`=130488;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(130488, 152576, 60, 1, 0, 1, 3) /* idespray Linen */, 
(130488, 152577, 6, 1, 0, 1, 1) /* eep Sea Satin */, 
(130488, 200001, 5, 1, 0, 1, 1), 
(130488, 200000, 3, 1, 0, 1, 1), 
(130488, 200002, 3, 1, 0, 1, 1), 
(130488, 200005, 3, 1, 0, 1, 1), 
(130488, 163897, 0.01, 1, 0, 1, 1) /* ersonal Spice Stash */, 
(130488, 163906, 0.04, 1, 0, 1, 1) /* ounterfeit Kul Tiran Coins */, 
(130488, 200003, 0.1, 1, 0, 1, 1), 
(130488, 166260, 0.01, 1, 0, 1, 1) /* ecipe: MonelHardened Hoofplates */, 
(130488, 166313, 0.1, 1, 0, 1, 1) /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`=130635 WHERE `entry`=130635;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(130635, 152512, 2, 1, 0, 1, 4) /* onelite Ore */, 
(130635, 155631, 4, 1, 0, 1, 1) /* nert Stone */, 
(130635, 157844, 59, 1, 0, 1, 1) /* ridescent Speck */, 
(130635, 158757, 8, 1, 0, 1, 1) /* isquiet Earth */, 
(130635, 159140, 26, 1, 0, 1, 1) /* ifeless Clay */, 
(130635, 200000, 3, 1, 0, 1, 1), 
(130635, 200002, 3, 1, 0, 1, 1), 
(130635, 200005, 3, 1, 0, 1, 1), 
(130635, 168135, 0.08, 1, 0, 1, 1) /* itan's Blood */;

UPDATE `creature_template` SET `lootid`=130653 WHERE `entry`=130653;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(130653, 152576, 58, 1, 0, 1, 3) /* idespray Linen */, 
(130653, 152577, 6, 1, 0, 1, 1) /* eep Sea Satin */, 
(130653, 200001, 5, 1, 0, 1, 1), 
(130653, 200000, 3, 1, 0, 1, 1), 
(130653, 200002, 3, 1, 0, 1, 1), 
(130653, 200005, 3, 1, 0, 1, 1), 
(130653, 163906, 0.03, 1, 0, 1, 1) /* ounterfeit Kul Tiran Coins */, 
(130653, 163915, 0.15, 1, 0, 1, 1) /* iscontinued Zandalari Coins */, 
(130653, 200003, 0.1, 1, 0, 1, 1), 
(130653, 172954, 0.01, 1, 0, 6, 6) /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`=130661 WHERE `entry`=130661;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(130661, 152576, 58, 1, 0, 1, 3) /* idespray Linen */, 
(130661, 152577, 6, 1, 0, 1, 1) /* eep Sea Satin */, 
(130661, 200001, 5, 1, 0, 1, 1), 
(130661, 200000, 3, 1, 0, 1, 1), 
(130661, 200002, 3, 1, 0, 1, 1), 
(130661, 200005, 3, 1, 0, 1, 1), 
(130661, 163897, 0.21, 1, 0, 1, 1) /* ersonal Spice Stash */, 
(130661, 163906, 0.08, 1, 0, 1, 1) /* ounterfeit Kul Tiran Coins */, 
(130661, 163915, 0.09, 1, 0, 1, 1) /* iscontinued Zandalari Coins */, 
(130661, 200003, 0.1, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=131227 WHERE `entry`=131227;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(131227, 158307, 8, 1, 0, 1, 1) /* hrapnelDampening Chestguard */, 
(131227, 158349, 8, 1, 0, 1, 1) /* etticoat of the SelfStylized Azerite Baron */, 
(131227, 158364, 8, 1, 0, 1, 1) /* igh Altitude Turban */, 
(131227, 159232, 8, 1, 0, 1, 1) /* xquisitely Aerodynamic Shoulderpads */, 
(131227, 159298, 8, 1, 0, 1, 1) /* enture Co. Plenipotentiary Vest */, 
(131227, 159360, 8, 1, 0, 1, 1) /* rashguard Spaulders */, 
(131227, 159415, 8, 1, 0, 1, 1) /* kyscorcher Pauldrons */, 
(131227, 159611, 8, 1, 0, 1, 1) /* azdunk's Big Red Button */, 
(131227, 159641, 8, 1, 0, 1, 1) /* 3T00t */, 
(131227, 161135, 2, 1, 0, 1, 1) /* chematic: MechaMogul Mk2 */;

UPDATE `creature_template` SET `lootid`=132713 WHERE `entry`=132713;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(132713, 157842, 4, 1, 0, 1, 1) /* usty Gear */, 
(132713, 158307, 4, 1, 0, 1, 1) /* hrapnelDampening Chestguard */, 
(132713, 158349, 5, 1, 0, 1, 1) /* etticoat of the SelfStylized Azerite Baron */, 
(132713, 158364, 6, 1, 0, 1, 1) /* igh Altitude Turban */, 
(132713, 158923, 4, 1, 0, 1, 1) /* ythic Keystone */, 
(132713, 159232, 5, 1, 0, 1, 1) /* xquisitely Aerodynamic Shoulderpads */, 
(132713, 159298, 6, 1, 0, 1, 1) /* enture Co. Plenipotentiary Vest */, 
(132713, 159360, 4, 1, 0, 1, 1) /* rashguard Spaulders */, 
(132713, 159415, 5, 1, 0, 1, 1) /* kyscorcher Pauldrons */, 
(132713, 200000, 3, 1, 0, 1, 1), 
(132713, 200002, 3, 1, 0, 1, 1), 
(132713, 159611, 6, 1, 0, 1, 1) /* azdunk's Big Red Button */, 
(132713, 159641, 6, 1, 0, 1, 1) /* 3T00t */, 
(132713, 200005, 3, 1, 0, 1, 1), 
(132713, 160502, 0.96, 1, 0, 1, 4) /* hemical Blasting Cap */, 
(132713, 161129, 0.63, 1, 0, 1, 1) /* echaMogul Mk1 Remote Activation Device */, 
(132713, 161132, 0.74, 1, 0, 1, 2) /* rush Resistant Stabilizer */, 
(132713, 161135, 0.41, 1, 0, 1, 1) /* chematic: MechaMogul Mk2 */, 
(132713, 161136, 1, 1, 0, 1, 2) /* zerite Forged Protection Plating */, 
(132713, 161137, 0.44, 1, 0, 2, 2) /* lastFired Electric Servomotor */, 
(132713, 162460, 38, 1, 0, 1, 1) /* ydrocore */, 
(132713, 162520, 0.22, 1, 0, 1, 1) /* ecipe: Mystical Cauldron */, 
(132713, 163569, 1, 1, 0, 5, 10) /* nsulated Wiring */, 
(132713, 163708, 7, 1, 0, 1, 1) /* ronfoe */, 
(132713, 165948, 3, 1, 0, 1, 1) /* idalcore */, 
(132713, 172954, 0.02, 1, 0, 1, 1) /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`=133345 WHERE `entry`=133345;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(133345, 152576, 58, 1, 0, 1, 3) /* idespray Linen */, 
(133345, 152577, 6, 1, 0, 1, 1) /* eep Sea Satin */, 
(133345, 200001, 5, 1, 0, 1, 1), 
(133345, 200000, 3, 1, 0, 1, 1), 
(133345, 200002, 3, 1, 0, 1, 1), 
(133345, 200005, 3, 1, 0, 1, 1), 
(133345, 163906, 0.02, 1, 0, 1, 1) /* ounterfeit Kul Tiran Coins */, 
(133345, 200003, 0.1, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=133430 WHERE `entry`=133430;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(133430, 152576, 49, 1, 0, 1, 3) /* idespray Linen */, 
(133430, 152577, 5, 1, 0, 1, 1) /* eep Sea Satin */, 
(133430, 200001, 5, 1, 0, 1, 1), 
(133430, 200000, 3, 1, 0, 1, 1), 
(133430, 200002, 3, 1, 0, 1, 1), 
(133430, 200005, 3, 1, 0, 1, 1), 
(133430, 161138, 15, 1, 0, 1, 1) /* zerite InspirAGeneering Elixir */, 
(133430, 163906, 0.02, 1, 0, 1, 1) /* ounterfeit Kul Tiran Coins */, 
(133430, 163915, 0.01, 1, 0, 1, 1) /* iscontinued Zandalari Coins */, 
(133430, 168144, 0.59, 1, 0, 1, 1) /* xtremely Precise Vial */, 
(133430, 172954, 0.01, 1, 0, 1, 6) /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`=133432 WHERE `entry`=133432;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(133432, 152576, 56, 1, 0, 1, 3) /* idespray Linen */, 
(133432, 152577, 6, 1, 0, 1, 1) /* eep Sea Satin */, 
(133432, 200001, 5, 1, 0, 1, 1), 
(133432, 200000, 3, 1, 0, 1, 1), 
(133432, 200002, 3, 1, 0, 1, 1), 
(133432, 200005, 3, 1, 0, 1, 1), 
(133432, 163915, 0.12, 1, 0, 1, 1) /* iscontinued Zandalari Coins */, 
(133432, 168144, 0.92, 1, 0, 1, 1) /* xtremely Precise Vial */;

UPDATE `creature_template` SET `lootid`=133436 WHERE `entry`=133436;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(133436, 152576, 58, 1, 0, 1, 3) /* idespray Linen */, 
(133436, 152577, 8, 1, 0, 1, 1) /* eep Sea Satin */, 
(133436, 200001, 5, 1, 0, 1, 1), 
(133436, 200000, 3, 1, 0, 1, 1), 
(133436, 200002, 3, 1, 0, 1, 1), 
(133436, 200005, 3, 1, 0, 1, 1), 
(133436, 163897, 0.04, 1, 0, 1, 1) /* ersonal Spice Stash */, 
(133436, 163906, 0.07, 1, 0, 1, 1) /* ounterfeit Kul Tiran Coins */, 
(133436, 163915, 0.03, 1, 0, 1, 1) /* iscontinued Zandalari Coins */;

UPDATE `creature_template` SET `lootid`=133463 WHERE `entry`=133463;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(133463, 157842, 67, 1, 0, 1, 1) /* usty Gear */, 
(133463, 158756, 4, 1, 0, 1, 1) /* otary Gasket */, 
(133463, 158834, 26, 1, 0, 1, 1) /* inch Coil */, 
(133463, 200000, 3, 1, 0, 1, 1), 
(133463, 200002, 3, 1, 0, 1, 1), 
(133463, 200005, 3, 1, 0, 1, 1), 
(133463, 163569, 0.07, 1, 0, 5, 10) /* nsulated Wiring */;

UPDATE `creature_template` SET `lootid`=133593 WHERE `entry`=133593;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(133593, 152576, 56, 1, 0, 1, 3) /* idespray Linen */, 
(133593, 152577, 7, 1, 0, 1, 1) /* eep Sea Satin */, 
(133593, 200001, 5, 1, 0, 1, 1), 
(133593, 200000, 3, 1, 0, 1, 1), 
(133593, 200002, 3, 1, 0, 1, 1), 
(133593, 200005, 3, 1, 0, 1, 1), 
(133593, 163897, 0.01, 1, 0, 1, 1) /* ersonal Spice Stash */, 
(133593, 163906, 0.05, 1, 0, 1, 1) /* ounterfeit Kul Tiran Coins */, 
(133593, 163915, 0.11, 1, 0, 1, 1) /* iscontinued Zandalari Coins */;

UPDATE `creature_template` SET `lootid`=133963 WHERE `entry`=133963;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(133963, 154897, 25, 1, 0, 1, 4) /* tringy Loins */, 
(133963, 158752, 18, 1, 0, 1, 1) /* evered Foot */, 
(133963, 158819, 4, 1, 0, 1, 1) /* at Tail */, 
(133963, 158870, 76, 1, 0, 1, 1) /* ooly Hair */, 
(133963, 200000, 3, 1, 0, 1, 1), 
(133963, 200002, 3, 1, 0, 1, 1), 
(133963, 200005, 3, 1, 0, 1, 1), 
(133963, 200003, 0.1, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=134005 WHERE `entry`=134005;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(134005, 152512, 0.52, 1, 0, 1, 4) /* onelite Ore */, 
(134005, 155631, 3, 1, 0, 1, 1) /* nert Stone */, 
(134005, 157844, 61, 1, 0, 1, 1) /* ridescent Speck */, 
(134005, 158757, 7, 1, 0, 1, 1) /* isquiet Earth */, 
(134005, 159140, 27, 1, 0, 1, 1) /* ifeless Clay */, 
(134005, 200000, 3, 1, 0, 1, 1), 
(134005, 200002, 3, 1, 0, 1, 1), 
(134005, 200005, 3, 1, 0, 1, 1), 
(134005, 168135, 0.12, 1, 0, 1, 1) /* itan's Blood */;

UPDATE `creature_template` SET `lootid`=132713 WHERE `entry`=132713;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(132713, 157842, 4, 1, 0, 1, 1) /* usty Gear */, 
(132713, 158307, 4, 1, 0, 1, 1) /* hrapnelDampening Chestguard */, 
(132713, 158349, 5, 1, 0, 1, 1) /* etticoat of the SelfStylized Azerite Baron */, 
(132713, 158364, 6, 1, 0, 1, 1) /* igh Altitude Turban */, 
(132713, 158923, 4, 1, 0, 1, 1) /* ythic Keystone */, 
(132713, 159232, 5, 1, 0, 1, 1) /* xquisitely Aerodynamic Shoulderpads */, 
(132713, 159298, 6, 1, 0, 1, 1) /* enture Co. Plenipotentiary Vest */, 
(132713, 159360, 4, 1, 0, 1, 1) /* rashguard Spaulders */, 
(132713, 159415, 5, 1, 0, 1, 1) /* kyscorcher Pauldrons */, 
(132713, 200000, 3, 1, 0, 1, 1), 
(132713, 200002, 3, 1, 0, 1, 1), 
(132713, 159611, 6, 1, 0, 1, 1) /* azdunk's Big Red Button */, 
(132713, 159641, 6, 1, 0, 1, 1) /* 3T00t */, 
(132713, 200005, 3, 1, 0, 1, 1), 
(132713, 160502, 0.96, 1, 0, 1, 4) /* hemical Blasting Cap */, 
(132713, 161129, 0.63, 1, 0, 1, 1) /* echaMogul Mk1 Remote Activation Device */, 
(132713, 161132, 0.74, 1, 0, 1, 2) /* rush Resistant Stabilizer */, 
(132713, 161135, 0.41, 1, 0, 1, 1) /* chematic: MechaMogul Mk2 */, 
(132713, 161136, 1, 1, 0, 1, 2) /* zerite Forged Protection Plating */, 
(132713, 161137, 0.44, 1, 0, 2, 2) /* lastFired Electric Servomotor */, 
(132713, 162460, 38, 1, 0, 1, 1) /* ydrocore */, 
(132713, 162520, 0.22, 1, 0, 1, 1) /* ecipe: Mystical Cauldron */, 
(132713, 163569, 1, 1, 0, 5, 10) /* nsulated Wiring */, 
(132713, 163708, 7, 1, 0, 1, 1) /* ronfoe */, 
(132713, 165948, 3, 1, 0, 1, 1) /* idalcore */, 
(132713, 172954, 0.02, 1, 0, 1, 1) /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`=133345 WHERE `entry`=133345;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(133345, 152576, 58, 1, 0, 1, 3) /* idespray Linen */, 
(133345, 152577, 6, 1, 0, 1, 1) /* eep Sea Satin */, 
(133345, 200001, 5, 1, 0, 1, 1), 
(133345, 200000, 3, 1, 0, 1, 1), 
(133345, 200002, 3, 1, 0, 1, 1), 
(133345, 200005, 3, 1, 0, 1, 1), 
(133345, 163906, 0.02, 1, 0, 1, 1) /* ounterfeit Kul Tiran Coins */, 
(133345, 200003, 0.1, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=133430 WHERE `entry`=133430;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(133430, 152576, 49, 1, 0, 1, 3) /* idespray Linen */, 
(133430, 152577, 5, 1, 0, 1, 1) /* eep Sea Satin */, 
(133430, 200001, 5, 1, 0, 1, 1), 
(133430, 200000, 3, 1, 0, 1, 1), 
(133430, 200002, 3, 1, 0, 1, 1), 
(133430, 200005, 3, 1, 0, 1, 1), 
(133430, 161138, 15, 1, 0, 1, 1) /* zerite InspirAGeneering Elixir */, 
(133430, 163906, 0.02, 1, 0, 1, 1) /* ounterfeit Kul Tiran Coins */, 
(133430, 163915, 0.01, 1, 0, 1, 1) /* iscontinued Zandalari Coins */, 
(133430, 168144, 0.59, 1, 0, 1, 1) /* xtremely Precise Vial */, 
(133430, 172954, 0.01, 1, 0, 1, 6) /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`=133432 WHERE `entry`=133432;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(133432, 152576, 56, 1, 0, 1, 3) /* idespray Linen */, 
(133432, 152577, 6, 1, 0, 1, 1) /* eep Sea Satin */, 
(133432, 200001, 5, 1, 0, 1, 1), 
(133432, 200000, 3, 1, 0, 1, 1), 
(133432, 200002, 3, 1, 0, 1, 1), 
(133432, 200005, 3, 1, 0, 1, 1), 
(133432, 163915, 0.12, 1, 0, 1, 1) /* iscontinued Zandalari Coins */, 
(133432, 168144, 0.92, 1, 0, 1, 1) /* xtremely Precise Vial */;

UPDATE `creature_template` SET `lootid`=133436 WHERE `entry`=133436;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(133436, 152576, 58, 1, 0, 1, 3) /* idespray Linen */, 
(133436, 152577, 8, 1, 0, 1, 1) /* eep Sea Satin */, 
(133436, 200001, 5, 1, 0, 1, 1), 
(133436, 200000, 3, 1, 0, 1, 1), 
(133436, 200002, 3, 1, 0, 1, 1), 
(133436, 200005, 3, 1, 0, 1, 1), 
(133436, 163897, 0.04, 1, 0, 1, 1) /* ersonal Spice Stash */, 
(133436, 163906, 0.07, 1, 0, 1, 1) /* ounterfeit Kul Tiran Coins */, 
(133436, 163915, 0.03, 1, 0, 1, 1) /* iscontinued Zandalari Coins */;

UPDATE `creature_template` SET `lootid`=133463 WHERE `entry`=133463;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(133463, 157842, 67, 1, 0, 1, 1) /* usty Gear */, 
(133463, 158756, 4, 1, 0, 1, 1) /* otary Gasket */, 
(133463, 158834, 26, 1, 0, 1, 1) /* inch Coil */, 
(133463, 200000, 3, 1, 0, 1, 1), 
(133463, 200002, 3, 1, 0, 1, 1), 
(133463, 200005, 3, 1, 0, 1, 1), 
(133463, 163569, 0.07, 1, 0, 5, 10) /* nsulated Wiring */;

UPDATE `creature_template` SET `lootid`=133593 WHERE `entry`=133593;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(133593, 152576, 56, 1, 0, 1, 3) /* idespray Linen */, 
(133593, 152577, 7, 1, 0, 1, 1) /* eep Sea Satin */, 
(133593, 200001, 5, 1, 0, 1, 1), 
(133593, 200000, 3, 1, 0, 1, 1), 
(133593, 200002, 3, 1, 0, 1, 1), 
(133593, 200005, 3, 1, 0, 1, 1), 
(133593, 163897, 0.01, 1, 0, 1, 1) /* ersonal Spice Stash */, 
(133593, 163906, 0.05, 1, 0, 1, 1) /* ounterfeit Kul Tiran Coins */, 
(133593, 163915, 0.11, 1, 0, 1, 1) /* iscontinued Zandalari Coins */;

UPDATE `creature_template` SET `lootid`=133963 WHERE `entry`=133963;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(133963, 154897, 25, 1, 0, 1, 4) /* tringy Loins */, 
(133963, 158752, 18, 1, 0, 1, 1) /* evered Foot */, 
(133963, 158819, 4, 1, 0, 1, 1) /* at Tail */, 
(133963, 158870, 76, 1, 0, 1, 1) /* ooly Hair */, 
(133963, 200000, 3, 1, 0, 1, 1), 
(133963, 200002, 3, 1, 0, 1, 1), 
(133963, 200005, 3, 1, 0, 1, 1), 
(133963, 200003, 0.1, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=134005 WHERE `entry`=134005;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(134005, 152512, 0.52, 1, 0, 1, 4) /* onelite Ore */, 
(134005, 155631, 3, 1, 0, 1, 1) /* nert Stone */, 
(134005, 157844, 61, 1, 0, 1, 1) /* ridescent Speck */, 
(134005, 158757, 7, 1, 0, 1, 1) /* isquiet Earth */, 
(134005, 159140, 27, 1, 0, 1, 1) /* ifeless Clay */, 
(134005, 200000, 3, 1, 0, 1, 1), 
(134005, 200002, 3, 1, 0, 1, 1), 
(134005, 200005, 3, 1, 0, 1, 1), 
(134005, 168135, 0.12, 1, 0, 1, 1) /* itan's Blood */;

UPDATE `creature_template` SET `lootid`=134012 WHERE `entry`=134012;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(134012, 152576, 60, 1, 0, 1, 3) /* idespray Linen */, 
(134012, 152577, 6, 1, 0, 1, 1) /* eep Sea Satin */, 
(134012, 200001, 5, 1, 0, 1, 1), 
(134012, 200000, 3, 1, 0, 1, 1), 
(134012, 200002, 3, 1, 0, 1, 1), 
(134012, 200005, 3, 1, 0, 1, 1), 
(134012, 163906, 0.46, 1, 0, 1, 1) /* ounterfeit Kul Tiran Coins */, 
(134012, 200003, 0.1, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=134232 WHERE `entry`=134232;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(134232, 152576, 59, 1, 0, 1, 3) /* idespray Linen */, 
(134232, 152577, 8, 1, 0, 1, 1) /* eep Sea Satin */, 
(134232, 200001, 5, 1, 0, 1, 1), 
(134232, 200000, 3, 1, 0, 1, 1), 
(134232, 200002, 3, 1, 0, 1, 1), 
(134232, 200005, 3, 1, 0, 1, 1), 
(134232, 163906, 0.06, 1, 0, 1, 1) /* ounterfeit Kul Tiran Coins */, 
(134232, 163915, 0.17, 1, 0, 1, 1) /* iscontinued Zandalari Coins */, 
(134232, 200003, 0.1, 1, 0, 1, 1), 
(134232, 172954, 0.01, 1, 0, 1, 1) /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`=135975 WHERE `entry`=135975;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(135975, 152576, 45, 1, 0, 1, 3) /* idespray Linen */, 
(135975, 152577, 3, 1, 0, 1, 1) /* eep Sea Satin */, 
(135975, 200001, 5, 1, 0, 1, 1), 
(135975, 200005, 3, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=136005 WHERE `entry`=136005;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(136005, 152576, 60, 1, 0, 1, 3) /* idespray Linen */, 
(136005, 152577, 9, 1, 0, 1, 1) /* eep Sea Satin */, 
(136005, 200001, 5, 1, 0, 1, 1), 
(136005, 200000, 3, 1, 0, 1, 1), 
(136005, 200005, 3, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=136006 WHERE `entry`=136006;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(136006, 152576, 57, 1, 0, 1, 3) /* idespray Linen */, 
(136006, 152577, 8, 1, 0, 1, 1) /* eep Sea Satin */, 
(136006, 200001, 5, 1, 0, 1, 1), 
(136006, 200000, 3, 1, 0, 1, 1), 
(136006, 200002, 3, 1, 0, 1, 1), 
(136006, 200005, 3, 1, 0, 1, 1), 
(136006, 200003, 0.1, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=136139 WHERE `entry`=136139;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(136139, 152576, 57, 1, 0, 1, 3) /* idespray Linen */, 
(136139, 152577, 6, 1, 0, 1, 1) /* eep Sea Satin */, 
(136139, 200001, 5, 1, 0, 1, 1), 
(136139, 157842, 0.3, 1, 0, 1, 1) /* usty Gear */, 
(136139, 200000, 3, 1, 0, 1, 1), 
(136139, 200002, 3, 1, 0, 1, 1), 
(136139, 200005, 3, 1, 0, 1, 1), 
(136139, 160502, 0.37, 1, 0, 3, 3) /* hemical Blasting Cap */, 
(136139, 163569, 0.06, 1, 0, 6, 8) /* nsulated Wiring */, 
(136139, 163897, 0.1, 1, 0, 1, 1) /* ersonal Spice Stash */, 
(136139, 163915, 0.01, 1, 0, 1, 1) /* iscontinued Zandalari Coins */, 
(136139, 200003, 0.1, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=136470 WHERE `entry`=136470;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(136470, 152576, 59, 1, 0, 1, 3) /* idespray Linen */, 
(136470, 152577, 5, 1, 0, 1, 1) /* eep Sea Satin */, 
(136470, 200001, 5, 1, 0, 1, 1), 
(136470, 200000, 3, 1, 0, 1, 1), 
(136470, 200002, 3, 1, 0, 1, 1), 
(136470, 200005, 3, 1, 0, 1, 1), 
(136470, 163897, 0.07, 1, 0, 1, 1) /* ersonal Spice Stash */, 
(136470, 163915, 0.17, 1, 0, 1, 1) /* iscontinued Zandalari Coins */, 
(136470, 200003, 0.1, 1, 0, 1, 1), 
(136470, 172954, 0.01, 1, 0, 1, 6) /* cho of Mortality */;

UPDATE `creature_template` SET `lootid`=136643 WHERE `entry`=136643;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(136643, 157842, 64, 1, 0, 1, 1) /* usty Gear */, 
(136643, 158756, 5, 1, 0, 1, 1) /* otary Gasket */, 
(136643, 158834, 28, 1, 0, 1, 1) /* inch Coil */, 
(136643, 200000, 3, 1, 0, 1, 1), 
(136643, 200002, 3, 1, 0, 1, 1), 
(136643, 200005, 3, 1, 0, 1, 1), 
(136643, 163569, 0.05, 1, 0, 5, 9) /* nsulated Wiring */;

UPDATE `creature_template` SET `lootid`=136688 WHERE `entry`=136688;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(136688, 152576, 62, 1, 0, 1, 3) /* idespray Linen */, 
(136688, 152577, 7, 1, 0, 1, 1) /* eep Sea Satin */, 
(136688, 200001, 5, 1, 0, 1, 1), 
(136688, 200000, 3, 1, 0, 1, 1), 
(136688, 200005, 3, 1, 0, 1, 1), 
(136688, 166313, 0.01, 1, 0, 1, 1) /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`=136934 WHERE `entry`=136934;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(136934, 152576, 60, 1, 0, 1, 3) /* idespray Linen */, 
(136934, 152577, 5, 1, 0, 1, 1) /* eep Sea Satin */, 
(136934, 200001, 5, 1, 0, 1, 1), 
(136934, 200000, 3, 1, 0, 1, 1), 
(136934, 200002, 3, 1, 0, 1, 1), 
(136934, 200005, 3, 1, 0, 1, 1), 
(136934, 163906, 0.24, 1, 0, 1, 1) /* ounterfeit Kul Tiran Coins */, 
(136934, 163915, 0.26, 1, 0, 1, 1) /* iscontinued Zandalari Coins */;

UPDATE `creature_template` SET `lootid`=137029 WHERE `entry`=137029;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(137029, 152576, 55, 1, 0, 1, 3) /* idespray Linen */, 
(137029, 152577, 6, 1, 0, 1, 1) /* eep Sea Satin */, 
(137029, 200001, 5, 1, 0, 1, 1), 
(137029, 200000, 3, 1, 0, 1, 1), 
(137029, 200002, 3, 1, 0, 1, 1), 
(137029, 200005, 3, 1, 0, 1, 1), 
(137029, 163897, 0.01, 1, 0, 1, 1) /* ersonal Spice Stash */, 
(137029, 163906, 0.18, 1, 0, 1, 1) /* ounterfeit Kul Tiran Coins */, 
(137029, 163915, 0.08, 1, 0, 1, 1) /* iscontinued Zandalari Coins */, 
(137029, 200003, 0.1, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=137713 WHERE `entry`=137713;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(137713, 152631, 27, 1, 0, 2, 4) /* riny Flesh */, 
(137713, 158770, 5, 1, 0, 1, 1) /* elatinous Roe */, 
(137713, 158839, 64, 1, 0, 1, 1) /* hick Crab Claw */, 
(137713, 158861, 30, 1, 0, 1, 1) /* ensile Eye Stalk */, 
(137713, 200000, 3, 1, 0, 1, 1), 
(137713, 200005, 3, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=137716 WHERE `entry`=137716;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(137716, 152631, 31, 1, 0, 2, 4) /* riny Flesh */, 
(137716, 158839, 77, 1, 0, 1, 1) /* hick Crab Claw */, 
(137716, 158861, 21, 1, 0, 1, 1) /* ensile Eye Stalk */, 
(137716, 200000, 3, 1, 0, 1, 1), 
(137716, 200005, 3, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=137940 WHERE `entry`=137940;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(137940, 152631, 80, 1, 0, 1, 3) /* riny Flesh */, 
(137940, 155603, 90, 1, 0, 1, 1) /* laky Fish Scales */, 
(137940, 158760, 10, 1, 0, 1, 1) /* in Ray */;

UPDATE `creature_template` SET `lootid`=138061 WHERE `entry`=138061;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(138061, 152576, 58, 1, 0, 2, 2) /* idespray Linen */, 
(138061, 152577, 12, 1, 0, 1, 1) /* eep Sea Satin */, 
(138061, 200001, 5, 1, 0, 1, 1), 
(138061, 200000, 3, 1, 0, 1, 1), 
(138061, 200005, 3, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=138063 WHERE `entry`=138063;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(138063, 152576, 73, 1, 0, 3, 3) /* idespray Linen */, 
(138063, 200000, 3, 1, 0, 1, 1), 
(138063, 200005, 3, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=138064 WHERE `entry`=138064;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(138064, 152576, 89, 1, 0, 3, 3) /* idespray Linen */, 
(138064, 152577, 0.44, 1, 0, 1, 1) /* eep Sea Satin */, 
(138064, 200005, 3, 1, 0, 1, 1), 
(138064, 200001, 5, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=138066 WHERE `entry`=138066;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(138066, 152576, 97, 1, 0, 1, 2) /* idespray Linen */, 
(138066, 152577, 2, 1, 0, 1, 1) /* eep Sea Satin */, 
(138066, 200001, 5, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=138068 WHERE `entry`=138068;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(138068, 200001, 5, 1, 0, 1, 1), 
(138068, 200000, 3, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=138082 WHERE `entry`=138082;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(138082, 152576, 86, 1, 0, 1, 3) /* idespray Linen */, 
(138082, 200001, 5, 1, 0, 1, 1), 
(138082, 200000, 3, 1, 0, 1, 1), 
(138082, 166313, 0.12, 1, 0, 1, 1) /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`=138369 WHERE `entry`=138369;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(138369, 152576, 62, 1, 0, 1, 3) /* idespray Linen */, 
(138369, 152577, 4, 1, 0, 1, 1) /* eep Sea Satin */, 
(138369, 200001, 5, 1, 0, 1, 1), 
(138369, 200000, 3, 1, 0, 1, 1), 
(138369, 200005, 3, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=138061 WHERE `entry`=138061;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(138061, 152576, 58, 1, 0, 2, 2) /* idespray Linen */, 
(138061, 152577, 12, 1, 0, 1, 1) /* eep Sea Satin */, 
(138061, 200001, 5, 1, 0, 1, 1), 
(138061, 200000, 3, 1, 0, 1, 1), 
(138061, 200005, 3, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=138063 WHERE `entry`=138063;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(138063, 152576, 73, 1, 0, 3, 3) /* idespray Linen */, 
(138063, 200000, 3, 1, 0, 1, 1), 
(138063, 200005, 3, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=138064 WHERE `entry`=138064;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(138064, 152576, 89, 1, 0, 3, 3) /* idespray Linen */, 
(138064, 152577, 0.44, 1, 0, 1, 1) /* eep Sea Satin */, 
(138064, 200005, 3, 1, 0, 1, 1), 
(138064, 200001, 5, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=138066 WHERE `entry`=138066;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(138066, 152576, 97, 1, 0, 1, 2) /* idespray Linen */, 
(138066, 152577, 2, 1, 0, 1, 1) /* eep Sea Satin */, 
(138066, 200001, 5, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=138068 WHERE `entry`=138068;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(138068, 200001, 5, 1, 0, 1, 1), 
(138068, 200000, 3, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=138082 WHERE `entry`=138082;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(138082, 152576, 86, 1, 0, 1, 3) /* idespray Linen */, 
(138082, 200001, 5, 1, 0, 1, 1), 
(138082, 200000, 3, 1, 0, 1, 1), 
(138082, 166313, 0.12, 1, 0, 1, 1) /* ecipe: Coarse Leather Barding */;

UPDATE `creature_template` SET `lootid`=138369 WHERE `entry`=138369;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(138369, 152576, 62, 1, 0, 1, 3) /* idespray Linen */, 
(138369, 152577, 4, 1, 0, 1, 1) /* eep Sea Satin */, 
(138369, 200001, 5, 1, 0, 1, 1), 
(138369, 200000, 3, 1, 0, 1, 1), 
(138369, 200005, 3, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=139273 WHERE `entry`=139273;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(139273, 158341, 8, 1, 0, 1, 1) /* hemical Blaster's Legguards */, 
(139273, 159235, 8, 1, 0, 1, 1) /* eranged Alchemist's Slippers */, 
(139273, 159240, 8, 1, 0, 1, 1) /* ixxa's SweatWicking Cuffs */, 
(139273, 159287, 8, 1, 0, 1, 1) /* loak of Questionable Intent */, 
(139273, 159305, 8, 1, 0, 1, 1) /* orrosive Handler's Gloves */, 
(139273, 159451, 8, 1, 0, 1, 1) /* eadplate Legguards */, 
(139273, 159639, 8, 1, 0, 1, 1) /* .A.C.I.F.I.S.T. Mk7 */;

UPDATE `creature_template` SET `lootid`=139904 WHERE `entry`=139904;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(139904, 155864, 8, 1, 0, 1, 1) /* owerAssisted Vicegrips */, 
(139904, 158350, 8, 1, 0, 1, 1) /* owdy Reveler's Legwraps */, 
(139904, 158353, 8, 1, 0, 1, 1) /* ervoArm Bindings */, 
(139904, 159357, 8, 1, 0, 1, 1) /* inked Pummeler Grips */, 
(139904, 159462, 8, 1, 0, 1, 1) /* ootbomb Championship Ring */, 
(139904, 159638, 8, 1, 0, 1, 1) /* lectroArm Bludgeoner */, 
(139904, 159663, 8, 1, 0, 1, 1) /* 04W4Y Crowd Repeller */;

UPDATE `creature_template` SET `lootid`=140615 WHERE `entry`=140615;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(140615, 152576, 2, 1, 0, 1, 3) /* Tidespray Linen */, 
(140615, 152577, 0.3, 1, 0, 1, 1) /* Deep Sea Satin */, 
(140615, 200001, 5, 1, 0, 1, 1), 
(140615, 200000, 3, 1, 0, 1, 1), 
(140615, 200002, 3, 1, 0, 1, 1), 
(140615, 200005, 3, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=140902 WHERE `entry`=140902;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(140902, 152576, 5, 1, 0, 1, 2) /* Tidespray Linen */, 
(140902, 152577, 1, 1, 0, 1, 1) /* Deep Sea Satin */, 
(140902, 200000, 3, 1, 0, 1, 1), 
(140902, 161138, 2, 1, 0, 1, 1) /* Azerite InspirAGeneering Elixir */, 
(140902, 168144, 1, 1, 0, 1, 1) /* Extremely Precise Vial */;

UPDATE `creature_template` SET `lootid`=140912 WHERE `entry`=140912;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(140912, 152576, 7, 1, 0, 1, 3) /* Tidespray Linen */, 
(140912, 200001, 5, 1, 0, 1, 1), 
(140912, 200000, 3, 1, 0, 1, 1), 
(140912, 200005, 3, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=142625 WHERE `entry`=142625;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(142625, 152576, 24, 1, 0, 1, 1) /* Tidespray Linen */, 
(142625, 200001, 5, 1, 0, 1, 1), 
(142625, 200000, 3, 1, 0, 1, 1), 
(142625, 200005, 3, 1, 0, 1, 1);
UPDATE `creature_template` SET `lootid`=144231 WHERE `entry`=144231;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(144231, 152576, 33, 1, 0, 2, 2) /* Tidespray Linen */, 
(144231, 200001, 5, 1, 0, 1, 1), 
(144231, 200000, 3, 1, 0, 1, 1), 
(144231, 200005, 3, 1, 0, 1, 1);

UPDATE `creature_template` SET `lootid`=144232 WHERE `entry`=144232;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(144232, 152576, 7, 1, 0, 3, 3) /* Tidespray Linen */, 
(144232, 200001, 5, 1, 0, 1, 1);
