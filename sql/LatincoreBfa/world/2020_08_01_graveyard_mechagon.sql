DELETE FROM `areatrigger_teleport` WHERE `id` IN (-65);
INSERT INTO `areatrigger_teleport` (`Id`,`PortLocID`,`Name`) VALUES
(-65,6580,'The MotherLode Entrance Target Alliance');

DELETE FROM `areatrigger` WHERE `guid` IN (65);
INSERT INTO `areatrigger` VALUES
(65,100007,1642,1,-2647.25,2388.37,10.0474,'');

DELETE FROM `areatrigger_teleport` WHERE `id` IN (-68);
INSERT INTO `areatrigger_teleport` (`Id`,`PortLocID`,`Name`) VALUES
(-68,6359,'The MotherLode Entrance Starting Loc Horde');

DELETE FROM `areatrigger` WHERE `guid` IN (68);
INSERT INTO `areatrigger` VALUES
(68,100007,1642,1,-2001.79,967.257,8.89095,'');


DELETE FROM `areatrigger_teleport` WHERE `id` IN (-66,-67);
INSERT INTO `areatrigger_teleport` (`Id`,`PortLocID`,`Name`) VALUES
(-66,6583,'The MotherLode exit target alliance'),
(-67,6579,'The MotherLode exit target horde');

DELETE FROM `areatrigger` WHERE `guid` IN (66,67);
INSERT INTO `areatrigger` VALUES
(66,100007,1594,8388870,629.5438,-3622.44,0.385342,''),
(67,100006,1594,8388870,629.5438,-3622.44,0.385342,'');


-- mechagon graveyard
REPLACE INTO graveyard_zone (ID, GhostZone, Comment) VALUES 
('6936', '10290', 'Dungeon - Mechagon - 01 Entrance Target'),
('7243', '10418', 'Dungeon - Mechagon - 01 Entrance');
replace into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values('2103360742836','6491','2097','0','0','23','0','0','0','-1','0','0','954.314','-389.86','27.8772','0.424626','300','0','0','3218','0','0','0','0','0','0','0','','0');
update `creature_template` set `gossip_menu_id`=83 where `entry`=6491;
replace into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('2103104790202','246779','2097','0','0','23','0','0','0','-1','965.043','-384.919','28.0477','1.04222','-0','-0','-0.497842','-0.867268','300','255','1','0','','0');


replace into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values
('2103360742578','153852','2097','0','0','23','0','0','0','-1','0','0','963.013','-393.751','27.908','3.13504','300','0','0','315','0','0','0','0','0','0','0','','0');
UPDATE `creature_template` SET `gossip_menu_id`=99917,`minlevel`=120,`maxlevel`=120,`npcflag`=1,`AIName`='SmartAI' WHERE `entry`=153852;
DELETE FROM `smart_scripts` WHERE `entryorguid`=153852;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(153852,0,1,0,62,0,100,0,99917,0,0,0,62,1643,0,0,0,0,0,7,0,0,0,3105.97,4889.66,34.06,3.611,"on gossip select - teleport outside of mechagon");

DELETE FROM `gossip_menu` WHERE (`MenuId`=99917 AND `TextId`=580);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(99917, 580, -1);

DELETE FROM `gossip_menu_option` WHERE (`MenuId`=99917 AND `OptionIndex`=0);
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`,`optiontype`,`optionnpcflag`, `VerifiedBuild`) VALUES
(99917, 0, 36, 'Im ready to telerport', 0,1,1,-1);

delete from `gameobject` where `guid`=2103104790183;
