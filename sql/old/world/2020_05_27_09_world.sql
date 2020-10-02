-- https://www.wowhead.com/quest=25006/the-grasp-weakens
-- Actionlist SAI
SET @ENTRY := 3911700;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Shadow Priestess Malia - Close Gossip"),
(@ENTRY,9,1,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shadow Priestess Malia - Talk1"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shadow Priestess Malia - On Script - Set React Passive"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,53,0,39117,0,0,999990,0,1,0,0,0,0,0,0,0,"Shadow Priestess Malia - Start Waypoint");

-- Actionlist SAI
SET @ENTRY := 3911701;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shadow Priestess Malia - Talk"),
(@ENTRY,9,2,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shadow Priestess Malia - Talk"),
(@ENTRY,9,3,0,0,0,100,0,5000,5000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shadow Priestess Malia - Talk"),
(@ENTRY,9,4,0,0,0,100,0,4000,4000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shadow Priestess Malia - Talk"),
(@ENTRY,9,5,0,0,0,100,0,4000,4000,0,0,12,38980,1,111110,0,0,0,8,0,0,0,2246.89,228.612,44.8348,2.01968,"Shadow Priestess Malia - Spawn"),
(@ENTRY,9,6,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,19,38980,10,0,0,0,0,0,"Shadow Priestess Malia - Talk"),
(@ENTRY,9,7,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,19,38980,10,0,0,0,0,0,"Shadow Priestess Malia - Talk"),
(@ENTRY,9,8,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,19,38980,10,0,0,0,0,0,"Shadow Priestess Malia - Talk"),
(@ENTRY,9,9,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,19,38980,10,0,0,0,0,0,"Shadow Priestess Malia - Talk"),
(@ENTRY,9,10,0,0,0,100,0,4000,4000,0,0,1,4,0,0,0,0,0,19,38980,10,0,0,0,0,0,"Shadow Priestess Malia - Talk"),
(@ENTRY,9,11,0,0,0,100,0,4000,4000,0,0,1,5,0,0,0,0,0,19,38980,10,0,0,0,0,0,"Shadow Priestess Malia - Talk"),
(@ENTRY,9,12,0,0,0,100,0,4000,4000,0,0,1,6,0,0,0,0,0,19,38980,10,0,0,0,0,0,"Shadow Priestess Malia - Talk"),
(@ENTRY,9,13,0,0,0,100,0,2000,2000,0,0,41,0,0,0,0,0,0,19,38980,10,0,0,0,0,0,"Shadow Priestess Malia - Despawn"),
(@ENTRY,9,14,0,0,0,100,0,0,0,0,0,11,73180,1,0,0,0,0,1,0,0,0,0,0,0,0,"Shadow Priestess Malia - Cast Summon Shadow of Agamand"),
(@ENTRY,9,15,0,0,0,100,0,25000,25000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shadow Priestess Malia - Talk"),
(@ENTRY,9,16,0,0,0,100,0,2000,2000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shadow Priestess Malia - Despawn");

--  SAI
SET @ENTRY := 38981;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,18,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shadow of Agamand - On Spawn - Set Unit Flag"),
(@ENTRY,0,1,0,0,0,100,0,2000,4500,12000,16000,11,31516,0,0,0,0,0,2,0,0,0,0,0,0,0,"Shadow of Agamand - Cast Mind Blast"),
(@ENTRY,0,2,0,0,0,100,0,6000,9000,18000,22000,11,16568,0,0,0,0,0,2,0,0,0,0,0,0,0,"Shadow of Agamand - Cast Mind Flay"),
(@ENTRY,0,3,0,0,0,100,0,0,0,0,0,49,0,0,0,0,0,0,18,5,0,0,0,0,0,0,"On spawn - attack player");

-- https://www.wowhead.com/quest=24999/planting-the-seed-of-fear
-- Vile Fin Tadpole SAI
SET @ENTRY := 38937;
UPDATE `creature_template` SET `AIName`="SmartAI"  WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,23,0,100,512,73133,3,9999,9999,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vile Fin Tadpole - Tetard - Has Aura x3 - Die"),
(@ENTRY,0,1,0,6,0,100,512,0,0,0,0,33,38937,0,0,0,0,0,18,15,0,0,0,0,0,0,"Vile Fin Tadpole - Tetard - On Death - KillCredit");
