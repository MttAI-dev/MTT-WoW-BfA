-- Adding Lost Spectral Gryphon 121567 (creature tameable)

-- Spawning Spectral Feather 269775 (object which summon Lost Spectral Gryphon npc)
-- Set respawn to 12 hours

UPDATE `gameobject_template` SET `displayId`=3651,`IconName`='Interact',`Data2`=269775,`AIName`='SmartGameObjectAI',`VerifiedBuild`=23877 WHERE `entry`=269775;

DELETE FROM `gameobject` WHERE `id`=269775;
INSERT INTO `gameobject` (`guid`,`id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) values
(210413033,'269775','0','1519','5390','0','0','0','0','-1','-8830.45','477.518','109.766','2.26429','-0','-0','-0.933061','-0.359719',43200,'255','1','','23877');

DELETE FROM `smart_scripts` WHERE `entryorguid`=269775;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,
`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,
`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,
`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(269775,1,0,1,64,0,100,0,2,0,0,0,12,121567,2,39600000,0,0,0,8,0,0,0,'-8830.15','477.277','109.624','2.40566','Spectral Feather- On click - Summon Lost Spectral Gryphon'),
(269775,1,1,0,64,0,100,0,2,0,0,0,41,1000,0,0,0,0,0,20,269775,10,0,'0','0','0','0','Spectral Feather- On click - Despawn self cast');

UPDATE `creature_template` SET `minlevel`=110,`maxlevel`=120 WHERE `entry`=121567;
