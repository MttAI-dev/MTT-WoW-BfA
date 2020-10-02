replace into `creature_template_journal` values
(150159,2290),(144244,2257),(144246,2258),(144248,2259),
(154817,2260),(155157,2291),(150222,2292),(155407,2312);


-- boss king gobbamak 150159
UPDATE `creature_template` SET `faction`=16 ,`BaseAttackTime`=2000 ,`RangeAttackTime`=2000,`mingold`=50000,
`maxgold`=50000,`lootid`=150159,`mechanic_immune_mask`=2113912831,`ScriptName`='boss_king_gobbamak',`rank`=3,
`minlevel`=122,`maxlevel`=122 WHERE `entry`=150159;

replace into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values('2103360742572','150159','2097','0','0','1,2,8,23','0','0','0','-1','0','0','1140.3','-71.3778','22.4802','4.59038','0','0','0','1105','0','0','0','0','0','0','0','','0');

DELETE FROM `spell_script_names` WHERE `spell_id` IN
(297254,297256,297257,297261);
INSERT INTO `spell_script_names`(`spell_id`,`ScriptName`) VALUES
(297254,'spell_charged_smash_1'),
(297256,'spell_charged_smash_2'),
(297257,'spell_electrical_charge'),
(297261,'spell_rumble');

DELETE FROM `creature_text` WHERE `CreatureID`=150159;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(150159, 0, 0, 'Fight!!!', 14, 0, 100, 0, 0, 0, 0, 'king gobbamak to Player - TALK_AGGRO'),
(150159, 0, 1, 'Oh nooo...', 14, 0, 100, 0, 0, 0, 0, 'king gobbamak - talk death');

UPDATE `creature_template` SET `lootid`=150159 WHERE `entry`=150159;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(150159, 168750, 9, 1, 0, 1, 1) /* Omnipurpose Refined Logic Board */, 
(150159, 168751, 8, 1, 0, 1, 1) /* Omnipurpose Effective Logic Board */, 
(150159, 168752, 6, 1, 0, 1, 1) /* Omnipurpose Efficient Logic Board */,
(150159, 169035, 0.9, 1, 0, 1, 1) /* Reclaimed Shock Coil */, 
(150159, 169049, 4, 1, 0, 1, 1) /* Supplicant's Soiled Slippers */, 
(150159, 169050, 1.3, 1, 0, 1, 1) /* Logg */, 
(150159, 169051, 4, 1, 0, 1, 1) /* Anodized Plate Legguards */, 
(150159, 169052, 0.55, 1, 0, 1, 1) /* Cranial Recalibrator */, 
(150159, 169053, 3, 1, 0, 1, 1) /* Roughshod Chain Boots */, 
(150159, 169054, 5, 1, 0, 1, 1) /* Galvanized Leather Grips */, 
(150159, 170208, 1.4, 1, 0, 1, 1) /* Recipe: Potion of Unbridled Fury */, 
(150159, 170209, 1.2, 1, 0, 1, 1) /* Recipe: Potion of Wild Mending */, 
(150159, 170210, 1, 1, 0, 1, 1) /* Recipe: Abyssal Healing Potion */, 
(150159, 170211, 1, 1, 0, 1, 1) /* Recipe: Famine Evaluator And Snack Table */, 
(150159, 170212, 1.1, 1, 0, 1, 1) /* Recipe: Mecha-Bytes */, 
(150159, 170507, 0.08, 1, 0, 1, 1) /* Omnipurpose Logic Board */,
(150159, 159229, 0.2, 1, 0, 1, 1);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`,`questrequired`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(150159, 172954, 0.7,1, 1, 0, 1, 1);

-- boss gunker 150222
UPDATE `creature_template` SET `faction`=16 ,`BaseAttackTime`=2000 ,`RangeAttackTime`=2000,`mingold`=50000,
`maxgold`=50000,`lootid`=150222,`mechanic_immune_mask`=2113912831,`ScriptName`='boss_gunker',`rank`=3,
`minlevel`=122,`maxlevel`=122 WHERE `entry`=150222;

DELETE FROM `spell_script_names` WHERE `spell_id` IN
(297835,298124,298259,298212,297985,297834,297901,298145,298216);
INSERT INTO `spell_script_names`(`spell_id`,`ScriptName`) VALUES
(297835,'spell_coalesce'),
(298124,'spell_gooped_1'),
(298259,'spell_gooped_2'),
(298212,'spell_sludge_bolt'),
(297985,'spell_splatter'),
(297834,'spell_toxic_wave'),
(297901,'spell_sanitizing_spray'),
(298145,'spell_sanitizing_aura'),
(298216,'spell_sanitizing_spray2');

DELETE FROM `creature_text` WHERE `CreatureID`=150222;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(150222, 0, 0, 'Fight!!!', 14, 0, 100, 0, 0, 0, 0, 'boss gunker to Player - TALK_AGGRO'),
(150222, 0, 1, 'Oh nooo...', 14, 0, 100, 0, 0, 0, 0, 'boss gunker - talk death');

UPDATE `creature_template` SET `lootid`=150222 WHERE `entry`=150222;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(150222, 168744, 8, 1, 0, 1, 1) /* Optimized Efficient Logic Board */, 
(150222, 168745, 7, 1, 0, 1, 1) /* Optimized Effective Logic Board */, 
(150222, 168746, 6, 1, 0, 1, 1) /* Optimized Adaptable Logic Board */, 
(150222, 169055, 3, 1, 0, 1, 1) /* Greaves of Acid Resistance */, 
(150222, 169056, 6, 1, 0, 1, 1) /* Ooey-Gooey Galoshes */, 
(150222, 169057, 3, 1, 0, 1, 1) /* Well-Oiled Plate Girdle */, 
(150222, 169058, 1, 1, 0, 1, 1) /* Salvaged Incendiary Tool */, 
(150222, 169059, 3, 1, 0, 1, 1) /* Slick Tactical Grips */, 
(150222, 169060, 2, 1, 0, 1, 1) /* Mekgineer's Utility Belt */, 
(150222, 169061, 5, 1, 0, 1, 1) /* Insulating Threaded Gloves */, 
(150222, 169062, 2, 1, 0, 1, 1) /* Sharpened Trogg Femur */, 
(150222, 170208, 0.52, 1, 0, 1, 1) /* Recipe: Potion of Unbridled Fury */, 
(150222, 170209, 0.37, 1, 0, 1, 1) /* Recipe: Potion of Wild Mending */, 
(150222, 170210, 0.29, 1, 0, 1, 1) /* Recipe: Abyssal Healing Potion */, 
(150222, 170211, 0.74, 1, 0, 1, 1) /* Recipe: Famine Evaluator And Snack Table */, 
(150222, 170212, 0.52, 1, 0, 1, 1) /* Recipe: Mecha-Bytes */, 
(150222, 170508, 0.15, 1, 0, 1, 1) /* Optimized Logic Board */;

replace into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values('2103360742575','150222','2097','0','0','1,2,8,23','0','0','0','-1','0','0','599.532','-355.98','0.880199','5.48888','0','0','0','1517643','0','0','0','0','0','0','0','','0');

UPDATE `creature_template` SET `faction`=16 ,`BaseAttackTime`=2000 ,`RangeAttackTime`=2000,
`minlevel`=120,`maxlevel`=120 WHERE `entry`=153377;
UPDATE `creature_template` SET `minlevel`=120,`maxlevel`=120,`ScriptName`='npc_squirt_bot' WHERE `entry`=154741;

