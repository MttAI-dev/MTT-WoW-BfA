delete from `creature` where `guid` in (124333,124332,350890,349685,349697,349684,349698);

delete from `gameobject` where `guid` in (280200812,280200815);
insert into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('280200812','206116','1','0','0','0','0','0','0','-1','1600.99','-4369.74','21.0694','3.63029','0','0','-0.970295','0.241925','300','255','1','0','','0');
insert into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('280200815','206111','0','0','0','0','0','0','0','-1','-8823','630.86','94.4241','4.02674','-0','-0','-0.903653','0.428266','300','255','1','0','','0');

-- quest 47229

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=121601;
DELETE FROM `smart_scripts` WHERE `entryorguid`=121601;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(121601,0,0,0,19,0,100,0,47229,1,1,0,11,254998,0,0,0,0,0,8,0,0,0,258.35,886.01,95.94,1.06,"on quest accepted 47229 - summon old rotana");

update `creature_template` set `minlevel`=119,`maxlevel`=120,`faction`=1735,`npcflag`=16777216,`vehicleid`=5989,
`spell1`=255007,`spell2`=255002,`spell3`=255009 where `entry`=128521;

-- quest 47329
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= 131799;
DELETE FROM `smart_scripts` WHERE `entryorguid`=131799;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`,
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('131799','0','0','0','73','0','100','0','0','0','0','0','0','','33','131799','0','0','0','0','0','7','0','0','0','0','0','0','0','First Dirt Pile - On Spellclick - killcredit 131799');
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= 131707;
DELETE FROM `smart_scripts` WHERE `entryorguid`=131707;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`,
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('131707','0','0','0','73','0','100','0','0','0','0','0','0','','33','131707','0','0','0','0','0','7','0','0','0','0','0','0','0','Generic Dirt Piles  - On Spellclick - killcredit 131707');

-- quest 47235
UPDATE `gameobject_template` SET `data1`=47235 WHERE `entry` IN (280335,280336,280337);
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= 280336;
DELETE FROM `smart_scripts` WHERE `entryorguid`=280336;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`,
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('280336','1','0','0','64','0','100','0','1','0','0','0','0','','33','131689','0','0','0','0','0','7','0','0','0','0','0','0','0','Outer ruins scrying  - On Spellclick - killcredit 131689');

UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= 280335;
DELETE FROM `smart_scripts` WHERE `entryorguid`=280335;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`,
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('280335','1','0','0','64','0','100','0','2','0','0','0','0','','33','131690','0','0','0','0','0','7','0','0','0','0','0','0','0','Inner ruins scrying - On Spellclick - killcredit 131690');

delete from `gameobject` where `guid` in (280200831);
insert into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('280200831','280337','1642','0','0','0','0','0','0','-1','-2697.14','2115.11','26.9653','6.10423','-0','-0','-0.0893598','0.995999','300','255','1','0','','0');

UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= 280337;
DELETE FROM `smart_scripts` WHERE `entryorguid`=280337;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`,
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('280337','1','0','0','64','0','100','0','0','0','0','0','0','','33','131691','0','0','0','0','0','7','0','0','0','0','0','0','0','The Foot scrying - On Spellclick - killcredit 131691'),
('280337','1','1','0','64','0','100','0','2','0','0','0','0','','33','131690','0','0','0','0','0','7','0','0','0','0','0','0','0','Inner ruins scrying - On Spellclick - killcredit 131690');

delete from `creature` where `guid`=210406804;
insert into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values('210406804','133908','1642','0','0','0','0','0','0','-1','0','0','-2697.25','2115.05','30.08','3.20061','300','0','0','43361','0','0','0','0','0','0','0','','0');
