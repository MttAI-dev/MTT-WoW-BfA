
-- select * from creature where id in (99045);
DELETE FROM spell_area WHERE spell IN (69303, 68338) AND  AREA = 4720;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `quest_start_status`, `quest_end_status`) VALUES 
('69303', '4720', '14238', '0', '0', '0', '2', '8', '0');

DELETE FROM spell_area WHERE spell = 69010 AND  area = 4720;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `quest_start_status`, `quest_end_status`) VALUES 
('69010', '4720', '14126', '14239', '0', '0', '2', '64', '74');

UPDATE `conditions` SET `ConditionValue1` = '3' WHERE `SourceTypeOrReferenceId` = '13' AND `SourceGroup` = '1' AND `SourceEntry` = '51859' AND `SourceId` = '0' AND `ElseGroup` = '0' AND `ConditionTypeOrReference` = '31' AND `ConditionTarget` = '0' AND `ConditionValue1` = '5' AND `ConditionValue2` = '28525' AND `ConditionValue3` = '0'; 
UPDATE `conditions` SET `ConditionValue1` = '3' WHERE `SourceTypeOrReferenceId` = '13' AND `SourceGroup` = '1' AND `SourceEntry` = '51859' AND `SourceId` = '0' AND `ElseGroup` = '1' AND `ConditionTypeOrReference` = '31' AND `ConditionTarget` = '0' AND `ConditionValue1` = '5' AND `ConditionValue2` = '28542' AND `ConditionValue3` = '0'; 
UPDATE `conditions` SET `ConditionValue1` = '3' WHERE `SourceTypeOrReferenceId` = '13' AND `SourceGroup` = '1' AND `SourceEntry` = '51859' AND `SourceId` = '0' AND `ElseGroup` = '2' AND `ConditionTypeOrReference` = '31' AND `ConditionTarget` = '0' AND `ConditionValue1` = '5' AND `ConditionValue2` = '28543' AND `ConditionValue3` = '0'; 
UPDATE `conditions` SET `ConditionValue1` = '3' WHERE `SourceTypeOrReferenceId` = '13' AND `SourceGroup` = '1' AND `SourceEntry` = '51859' AND `SourceId` = '0' AND `ElseGroup` = '3' AND `ConditionTypeOrReference` = '31' AND `ConditionTarget` = '0' AND `ConditionValue1` = '5' AND `ConditionValue2` = '28544' AND `ConditionValue3` = '0'; 

SET @ENTRY := 28406;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"SmartAI"),
(@ENTRY,0,1,2,2,0,100,1,0,3,0,0,33,29025,0,0,0,0,0,7,9,0,0,0,0,0,0,"SmartAI"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"SmartAI"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"SmartAI"),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"SmartAI"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,28,192425,0,0,0,0,0,7,0,0,0,0,0,0,0,"SmartAI"),
(@ENTRY,0,6,0,62,0,100,0,9765,0,0,0,80,2840600,2,0,0,0,0,1,0,0,0,0,0,0,0,"SmartAI");

-- Actionlist SAI
SET @ENTRY := 2840600;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Source - Event - Action"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,85,192125,0,0,0,0,0,7,0,0,0,0,0,0,0,"Source - Event - Action"),
(@ENTRY,9,2,0,0,0,100,0,500,500,0,0,1,0,1,0,0,0,0,7,0,0,0,0,0,0,0,"Source - Event - Action"),
(@ENTRY,9,3,0,0,0,100,0,3500,3500,0,0,1,0,2,0,0,0,0,7,0,0,0,0,0,0,0,"Source - Event - Action"),
(@ENTRY,9,4,0,0,0,100,0,3000,3000,0,0,1,0,3,0,0,0,0,7,0,0,0,0,0,0,0,"Source - Event - Action"),
(@ENTRY,9,5,0,0,0,100,0,3000,3000,0,0,1,0,4,0,0,0,0,7,0,0,0,0,0,0,0,"Source - Event - Action"),
(@ENTRY,9,6,0,0,0,100,0,3000,3000,0,0,1,0,5,0,0,0,0,7,0,0,0,0,0,0,0,"Source - Event - Action"),
(@ENTRY,9,7,0,0,0,100,0,3000,3000,0,0,1,0,6,0,0,0,0,7,0,0,0,0,0,0,0,"Source - Event - Action"),
(@ENTRY,9,8,0,0,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,"Source - Event - Action"),
(@ENTRY,9,9,0,0,0,100,0,0,0,0,0,49,9,0,0,0,0,0,7,0,0,0,0,0,0,0,"Source - Event - Action");
