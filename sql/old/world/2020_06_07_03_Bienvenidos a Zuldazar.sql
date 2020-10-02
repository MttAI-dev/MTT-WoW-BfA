-- Quest 46957
DELETE FROM `creature` WHERE `guid`=20020023;
DELETE FROM `creature_template_model` WHERE `CreatureID`=200200 AND `CreatureDisplayID`=75898;
DELETE FROM `creature_template` WHERE `entry`=200200;
DELETE FROM `waypoints` WHERE `entry`=2002000;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=200200;
DELETE FROM `smart_scripts` WHERE `entryorguid`=200200;
DELETE FROM `smart_scripts` WHERE `entryorguid`=200200 AND `source_type`=0 AND `id`=2 AND `link`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=200200 AND `source_type`=0 AND `id`=3 AND `link`=0;
DELETE FROM `creature_text` WHERE `CreatureID`=200200 AND `GroupID`=0 AND `ID`=0;

UPDATE `creature_template` SET `speed_run`=1 WHERE `entry` IN (132661,80358);

-- Quest 46930
update `creature_template` set `AIName`='SmartAI' where `entry`=135440;
delete from `smart_scripts` where `entryorguid`=135440;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, 
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, 
`action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('135440','0','0','1','62','0','100','0','21433','0','0','0','0','','11','244534','0','0','0','0','0','7','0','0','0','0','0','0','0','RASTAKHAN_GREETINGS_SCENE'),
('135440','0','1','0','61','0','100','0','0','0','0','0','0','','33','135440','0','0','0','0','0','7','0','0','0','0','0','0','0','killcredit 135440');

update `quest_template_addon` SET `prevquestid`=46931 WHERE `id`=52131;
-- Portal silithus
update `gameobject_template` set `data0`=270193 WHERE `entry`=289326;

