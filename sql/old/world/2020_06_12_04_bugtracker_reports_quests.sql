DELETE FROM `creature` WHERE `guid` IN (210409599,210415334,210408862,210404434);

-- quest 51421 and 51532
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=135690;
DELETE FROM `smart_scripts` WHERE `entryorguid`=135690;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(135690,0,0,1,62,0,100,0,22559,8,0,0,33,138679,0,0,0,0,0,7,0,0,0,0,0,0,0,'on gossip select 1 - killcredit 138679'),
(135690,0,1,0,61,0,100,0,0,0,0,0,62,1643,0,0,0,0,0,7,0,0,0,-154.83,-1475.86,21.13,0.53,'teleport to Tiragarde Sound'),
(135690,0,2,3,62,0,100,0,22559,7,0,0,33,138679,0,0,0,0,0,7,0,0,0,0,0,0,0,'on gossip select 1 - killcredit 138679'),
(135690,0,3,0,61,0,100,0,0,0,0,0,62,1643,0,0,0,0,0,7,0,0,0,4316.74,497.70,6.29,4.71,'teleport to Stormsong Valley High Warlord Cromush slain');

update `creature_template` set `minlevel`=110,`maxlevel`=120,`faction`=1735 where `entry`=137675;
delete from `creature` where `guid`=300005977;
insert into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values('300005977','137675','1643','0','0','0','0','0','0','-1','0','0','-154.836','-1475.86','21.1311','0.538989','300','0','0','31','0','0','0','0','0','0','0','','0');

update `creature_template` set `minlevel`=110,`maxlevel`=120,`faction`=1735 where `entry`=138365;
delete from `creature` where `guid`=300005978;
insert into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values('300005978','138365','1643','0','0','0','0','0','0','-1','0','0','4316.74','497.705','6.2939','4.71886','300','0','0','315','0','0','0','0','0','0','0','','0');

-- quest 51803
UPDATE `creature_template` SET `npcflag`=1,`AIName`='SmartAI' WHERE `entry`=144630;
DELETE FROM `smart_scripts` WHERE `entryorguid`=144630;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(144630,0,0,1,62,0,100,0,23454,0,0,0,33,139104,0,0,0,0,0,7,0,0,0,0,0,0,0,'on gossip select 1 - killcredit 139104'),
(144630,0,1,0,61,0,100,0,0,0,0,0,33,146017,0,0,0,0,0,7,0,0,0,0,0,0,0,'on gossip select 1 - killcredit 146017');

-- quest 51513
delete from `quest_objectives` where `id`=396608 and `questid`=51513;
insert into `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`,
`ProgressBarWeight`, `Description`, `VerifiedBuild`) values
('396608','51513','0','0','1','137878','1','0','0','0','Reach Master Gadrin in the Echo Isles.','28153');
update `creature_template` set `minlevel`=120,`maxlevel`=120,`faction`=1735,`npcflag`=2 where `entry`=137878;
delete from `creature` where `guid`=300005981;
insert into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values
('300005981','137878','1','0','0','0','0','0','0','-1','0','0','-1144.34','-5568.85','11.9343','4.74648','300','0','0','31','0','0','0','0','0','0','0','','0');

delete from `creature_queststarter` where `id`=137878;
insert into `creature_queststarter` values (137878,51514),(137878,52114),(137878,51515);

delete from `creature_questender` where `id`=137878;
insert into `creature_questender` values (137878,51514),(137878,51515),(137878,51513);
