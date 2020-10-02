-- Adding Gon 121571 (creature tameable)

-- Spawning Spectral Eggshell 269796 (object which summon Gon npc)
-- Set respawn to 4 hours

UPDATE `gameobject_template` SET `displayId`=17624,`IconName`='Interact',`Data2`=269796,`AIName`='SmartGameObjectAI',`VerifiedBuild`=23877 WHERE `entry`=269796;


DELETE FROM `gameobject` WHERE `id`=269796;
INSERT INTO `gameobject` (`guid`,`id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) values
(210413034,'269796','1','1637','5169','0','0','0','0','-1','1687.98','-4130.07','49.2794','6.12799','-0','-0','-0.933061','-0.359719',14400,'255','1','','23877');

DELETE FROM `smart_scripts` WHERE `entryorguid`=269796;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,
`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,
`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,
`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(269796,1,0,1,64,0,100,0,2,0,0,0,12,121571,2,10800000,0,0,0,8,0,0,0,'1689.43','-4130.70','50.84709','2.8513','Spectral Eggshell- On click - Summon Gon'),
(269796,1,1,0,64,0,100,0,2,0,0,0,41,1000,0,0,0,0,0,20,269796,10,0,'0','0','0','0','Spectral Eggshell- On click - Despawn self cast');

UPDATE `creature_template` SET `minlevel`=110,`maxlevel`=120 WHERE `entry`=121571;