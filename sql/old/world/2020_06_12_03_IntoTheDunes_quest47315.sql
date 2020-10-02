-- quest 47315 work - scene 1715
DELETE FROM `creature_template` WHERE `entry`=2002002;
DELETE FROM `creature` WHERE `guid`=300000042;
DELETE FROM `smart_scripts` WHERE `entryorguid`=2002002;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=2002002;
DELETE FROM `creature` WHERE `guid`=300000045;
DELETE FROM `creature_template` WHERE `entry`=2002003;
DELETE FROM `smart_scripts` WHERE `entryorguid`=2002003;
DELETE FROM `waypoints` WHERE `entry`=1304550;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=94977;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (12234700,12234701,12234702,12234703,12234704,12234705,12234706,
12234707,12234708,12234709,12234710,12234711,12234712,12234713,12234714,12234715,12234716,12234717);
DELETE FROM `smart_scripts` WHERE `entryorguid`=137354;
-- start
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=122347;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (122347, 305241, 1, 0);-- 305241

UPDATE `creature_template` SET `InhabitType`=5,`speed_run`=4 WHERE `entry`=122347;

DELETE FROM `smart_scripts` WHERE `entryorguid`=122347;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`,
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('122347','0','0','0','73','0','100','0','0','0','0','0','0','','33','122347','0','0','0','0','0','7','0','0','0','0','0','0','0','Pterrordax - On Spellclick - killcredit 122347'),
('122347','0','1','2','73','0','100','0','0','0','0','0','0','','11','305241','0','0','0','0','0','11','122320','10','0','0','0','0','0','Pterrordax - On Spellclick - mount kaja'),
('122347','0','2','3','73','0','100','0','0','0','0','0','0','','45','0','1','0','0','0','0','11','122159','10','0','0','0','0','0','Pterrordax - On Spellclick - set data 1 122159'),
('122347','0','3','4','73','0','100','0','0','0','0','0','0','','45','0','1','0','0','0','0','11','122324','10','0','0','0','0','0','Pterrordax - On Spellclick - set data 1 122324'),
('122347','0','4','0','73','0','100','0','0','0','0','0','0','','53','1','122347','0','0','0','0','7','0','0','0','0','0','0','0','Pterrordax - On Spellclick - start wp'),
('122347','0','5','6','40','0','100','0','7','0','0','0','0','','62','1642','0','0','0','0','0','7','0','0','0','2681.17','2187.52','91.77','3.36','Pterrordax - On wp 7 reached - teleport'),
('122347','0','6','7','40','0','100','0','7','0','0','0','0','','129','1715','0','0','0','0','0','7','0','0','0','0','0','0','0','Pterrordax - On wp 7 reached - play scene'),
('122347','0','7','0','40','0','100','0','7','0','0','0','0','','41','60000','1000','0','0','0','0','1','0','0','0','0','0','0','0','Pterrordax - On wp 7 reached - despawn');

delete from `waypoints` where `entry`=122347;
insert into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values
('122347','1','-632.6362','784.567','350.62','Pterrordax waypoint 1'),
('122347','2','-97.43','719.2','329.29','Pterrordax waypoint 2'),
('122347','3','484.75.39','812.16','115.66','Pterrordax waypoint 3'),
('122347','4','1489.32','1945.65','176.58','Pterrordax waypoint 4'),
('122347','5','1938.25','2406.32','144.77','Pterrordax waypoint 5'),
('122347','6','2198.97','2660.91','102.08','Pterrordax waypoint 6'),
('122347','7','2604.11','2672.10','76.99','Pterrordax waypoint 7');

update `creature_template` set `faction`=7 where `entry` IN (137341,137339);

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= 122159;
DELETE FROM `smart_scripts` WHERE `entryorguid`=122159;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`,
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('122159','0','0','0','38','0','100','0','1','0','0','0','0','','29','0','0','0','0','0','0','11','122347','10','0','0','0','0','0','Pterrordax - On Spellclick - follow 122347'),
('122159','0','1','0','40','0','100','0','7','122347','0','0','0','','41','1000','1000','0','0','0','0','1','0','0','0','0','0','0','0','Pterrordax - On wp 7 reached - despawn');

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= 122324;
DELETE FROM `smart_scripts` WHERE `entryorguid`=122324;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`,
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('122324','0','0','0','38','0','100','0','1','0','10','0','0','','29','0','0','0','0','0','0','11','122347','10','0','0','0','0','0','On Spellclick - follow 122347'),
('122324','0','5','0','40','0','100','0','7','122347','0','0','0','','41','1000','1000','0','0','0','0','1','0','0','0','0','0','0','0','Pterrordax - On wp 7 reached - despawn');

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= 137354;
DELETE FROM `smart_scripts` WHERE `entryorguid`=137354;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`,
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('137354','0','0','1','10','0','100','0','10','10','0','0','0','','33','122161','0','0','0','0','0','17','1','10','0','0','0','0','0','On range - killcredit 122161'),
('137354','0','1','0','10','0','100','0','10','10','0','0','0','','33','137354','0','0','0','0','0','17','1','10','0','0','0','0','0','On range - killcredit 137354');
