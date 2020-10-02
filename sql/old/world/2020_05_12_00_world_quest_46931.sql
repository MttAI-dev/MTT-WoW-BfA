-- Quest Horde Spokesperson npc Zolani 135441 and npc Princess Talanji 200200 fix quest errors are left in the previous quest chain, those quest are cast in core, quest 46957, quest 46930 and quest arranged 46931

DELETE FROM `creature_template` WHERE `entry`=135441;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (135441, 0, 0, 0, 0, 0, 'Zolani', NULL, 'Blade of the King', NULL, NULL, 22422, 120, 120, 7, 0, 0, 2900, 3, 1, 1.14286, 1, 1, 0, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 20, 1, 10, 1, 1, 1, 1, 0, 0, 1, 0, 0, '', 28153);
-- npc Zolani 135441 text
DELETE FROM `creature_text` WHERE `CreatureID`=135441;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (135441, 1, 0, 'Por aqui llegaráh a la cámara de abajo, donde te ehpera la princesa Talanji. Mira donde pisah', 12, 0, 100, 1, 0, 0, 0, 0, 'Zolani to Player');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (135441, 0, 0, 'Sigueme, conozco la forma mas facil de bajar.', 12, 0, 100, 1, 0, 0, 0, 0, 'Zolani to Player');
-- waypoint Zolani 135441
DELETE FROM `waypoints` WHERE `entry`=1354410;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1354410, 1, -1096.53, 821.486, 497.073, '1 waypoint');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1354410, 2, -1099.18, 839.251, 487.696, '2 waypoint');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1354410, 3, -1109.93, 840.589, 487.688, '3 waypoint');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1354410, 4, -1126.41, 840.178, 487.863, '4 waypoint');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1354410, 5, -1129.26, 846.641, 487.865, '5 waypoint');
-- npc Zolani 135441 SAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=135441;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(135441, 0, 0, 0, 64, 0, 100, 1, 0, 0, 0, 0, 0, '', 1, 0, 6000, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(135441, 0, 1, 0, 52, 0, 100, 1, 0, 135441, 0, 0, 0, '', 53, 0, 1354410, 0, 46931, 10000, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(135441, 0, 2, 0, 58, 0, 100, 1, 5, 0, 0, 0, 0, '', 1, 1, 6000, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(135441, 0, 3, 0, 52, 0, 100, 1, 1, 135441, 0, 0, 0, '', 33, 120169, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- new creature created Princess Talanji 200200

DELETE FROM `creature` WHERE `guid`=20020023;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(20020023, 200200, 1642, 0, 0, '0', 0, 0, 0, -1, 0, 0, -1111.88, 818.861, 443.526, 1.97668, 300, 0, 0, 346889, 23608400, 2, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature_template_model` WHERE `CreatureID`=200200 AND `CreatureDisplayID`=75898;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(200200, 0, 75898, 1, 1, 28153);

DELETE FROM `creature_template` WHERE `entry`=200200;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(200200, 0, 0, 0, 0, 0, 'Princess Talanji', NULL, NULL, NULL, NULL, 21433, 120, 120, 7, 0, 0, 2900, 3, 1, 1.14286, 1, 1, 0, 2000, 2000, 1, 1, 8, 33024, 2048, 0, 0, 0, 0, 0, 0, 7, 4, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 10, 1, 80, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 28153);

UPDATE `creature_template` SET `entry`='200200', `difficulty_entry_1`='0', `difficulty_entry_2`='0', `difficulty_entry_3`='0', `KillCredit1`='0', `KillCredit2`='0', `name`='Princess Talanji', `femaleName`=NULL, `subname`=NULL, `TitleAlt`=NULL, `IconName`=NULL, `gossip_menu_id`='21433', `minlevel`='120', `maxlevel`='120', `HealthScalingExpansion`='7', `RequiredExpansion`='0', `VignetteID`='0', `faction`='2900', `npcflag`='3', `speed_walk`='1', `speed_run`='1.14286', `scale`='1', `rank`='1', `dmgschool`='0', `BaseAttackTime`='2000', `RangeAttackTime`='2000', `BaseVariance`='1', `RangeVariance`='1', `unit_class`='8', `unit_flags`='33024', `unit_flags2`='2048', `unit_flags3`='0', `dynamicflags`='0', `family`='0', `trainer_type`='0', `trainer_class`='0', `trainer_race`='0', `type`='7', `type_flags`='4', `type_flags2`='32768', `lootid`='0', `pickpocketloot`='0', `skinloot`='0', `resistance1`='0', `resistance2`='0', `resistance3`='0', `resistance4`='0', `resistance5`='0', `resistance6`='0', `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `spell5`='0', `spell6`='0', `spell7`='0', `spell8`='0', `VehicleId`='0', `mingold`='0', `maxgold`='0', `AIName`='SmartAI', `MovementType`='2', `InhabitType`='1', `HoverHeight`='1', `HealthModifier`='10', `HealthModifierExtra`='1', `ManaModifier`='80', `ManaModifierExtra`='1', `ArmorModifier`='1', `DamageModifier`='1', `ExperienceModifier`='1', `RacialLeader`='0', `movementId`='0', `FadeRegionRadius`='0', `WidgetSetID`='0', `WidgetSetUnitConditionID`='0', `RegenHealth`='1', `mechanic_immune_mask`='0', `flags_extra`='0', `ScriptName`='', `VerifiedBuild`='28153' WHERE (`entry`='200200');

-- waypoint Princess Talanji  200200
DELETE FROM `waypoints` WHERE `entry`=2002000;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (2002000, 1, -1101.30, 817.425, 439.503, '1 waypoint');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (2002000, 2, -1090.72, 815.504, 435.333, '2 waypoint');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (2002000, 3, -1074.99, 807.585, 435.333, '3 waypoint');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (2002000, 4, -1057.64, 807.528, 435.822, '4 waypoint');

-- SAI
SET @ENTRY := 200200;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=200200;
DELETE FROM `smart_scripts` WHERE `entryorguid`=200200;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,
`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(200200,0,1,0,52,0,100,0,0,200200,0,0,53,0,2002000,0,0,0,0,1,0,0,0,0,0,0,0,"<Could not generate name> - On Text 0 Over - Start Waypoint");

DELETE FROM `smart_scripts` WHERE `entryorguid`=200200 AND `source_type`=0 AND `id`=2 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(200200, 0, 2, 0, 10, 0, 100, 1, 25, 25, 0, 0, 0, '', 1, 0, 3000, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=200200 AND `source_type`=0 AND `id`=3 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(200200, 0, 3, 0, 58, 0, 100, 0, 4, 0, 0, 0, 0, '', 41, 60, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Al completar el waypoint se despawnea el npc');

-- creature text Add 200200 
DELETE FROM `creature_text` WHERE `CreatureID`=200200 AND `GroupID`=0 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (200200, 0, 0, 'I was able to arrange for your companions to be flown here without General Jakra\'zet interfering. You need only signal dem.', 12, 0, 100, 0, 0, 106896, 146220, 0, 'Princess Talanji to Player');
