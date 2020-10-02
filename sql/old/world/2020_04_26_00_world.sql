UPDATE `creature_template_addon` SET `bytes1`=0 WHERE  `entry`=19455;


SET @ENTRY := 19455;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,53,0,19455,1,0,0,1,0,0,0,0,0,0,0,0,"Nurse Judith - On Reset - Start Waypoint"),
(@ENTRY,0,1,0,64,0,100,0,0,0,0,0,54,180000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nurse Judith - On Gossip Hello - Pause Waypoint"),
(@ENTRY,0,2,3,40,0,100,0,2,19455,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nurse Judith - On Waypoint 2 Reached - Run Script"),
(@ENTRY,0,3,0,61,0,100,0,2,19455,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.76273,"Nurse Judith - On Waypoint 2 Reached - Set Orientation 2,76273"),
(@ENTRY,0,4,5,40,0,100,0,5,19455,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nurse Judith - On Waypoint 5 Reached - Run Script"),
(@ENTRY,0,5,0,61,0,100,0,5,19455,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.1529,"Nurse Judith - On Waypoint 5 Reached - Set Orientation 4,1529"),
(@ENTRY,0,5,6,40,0,100,0,7,19455,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nurse Judith - On Waypoint 7 Reached - Run Script"),
(@ENTRY,0,6,0,61,0,100,0,7,19455,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.25502,"Nurse Judith - On Waypoint 7 Reached - Set Orientation 4.25502"),
(@ENTRY,0,7,8,40,0,100,0,9,19455,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nurse Judith - On Waypoint 9 Reached - Run Script"),
(@ENTRY,0,8,0,61,0,100,0,9,19455,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.969,"Nurse Judith - On Waypoint 9 Reached - Set Orientation 2.969"),
(@ENTRY,0,9,10,40,0,100,0,12,19455,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nurse Judith - On Waypoint 12 Reached - Run Script"),
(@ENTRY,0,10,0,61,0,100,0,12,19455,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.17224,"Nurse Judith - On Waypoint 12 Reached - Set Orientation 4.17224"),
(@ENTRY,0,11,12,40,0,100,0,15,19455,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nurse Judith - On Waypoint 15 Reached - Run Script"),
(@ENTRY,0,12,0,61,0,100,0,15,19455,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.1529,"Nurse Judith - On Waypoint 15 Reached - Set Orientation 2.41624");


SET @ENTRY := 1945500;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,54,12000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nurse Judith - On Script - Pause Waypoint"),
(@ENTRY,9,1,0,0,0,100,0,4000,4000,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nurse Judith - On Script - Set Flag Standstate Kneel"),
(@ENTRY,9,2,0,0,0,100,0,6000,6000,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nurse Judith - On Script - Remove Flag Standstate Kneel");

DELETE FROM `waypoints` WHERE `entry`=19455;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(19455, 1, -365.789, 981.419,   54.195, 'Nurse Judith'),
(19455, 2, -368.858, 982.56,   54.1727, 'Nurse Judith'),
(19455, 3, -363.252, 980.47,   54.2127, 'Nurse Judith'),
(19455, 4, -357.494, 978.322,  54.2425, 'Nurse Judith'),
(19455, 5, -358.948, 975.922,  54.243,  'Nurse Judith'),
(19455, 6, -357.512, 973.939,  54.2493, 'Nurse Judith'),
(19455, 7, -360.045, 968.102,  54.2344, 'Nurse Judith'),
(19455, 8, -358.571, 965.26,   54.2447, 'Nurse Judith'),
(19455, 9, -362.99, 962.005,   54.2135, 'Nurse Judith'),
(19455, 10, -352.415, 973.809, 54.2617, 'Nurse Judith'),
(19455, 11, -349.296, 971.591, 54.2724, 'Nurse Judith'),
(19455, 12, -349.964, 970.224, 54.2733, 'Nurse Judith'),
(19455, 13, -350.597, 974.797, 54.2635, 'Nurse Judith'),
(19455, 14, -362.665, 981.665, 54.2171, 'Nurse Judith'),
(19455, 15, -364.29, 984.89,   54.2066, 'Nurse Judith');

REPLACE INTO `instance_template` (`map`, `parent`, `script`, `allowMount`, `insideResurrection`) VALUES 
(1612, 0, 'scenario_artifact_ruins_of_falanaar', 0, 1);

SET @ENTRY := 19667;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,53,0,19667,0,0,0,1,1,0,0,0,0,0,0,0,"Consortium Nether Runner - On Reset - Start Waypoint"),
(@ENTRY,0,1,0,64,0,100,0,0,0,0,0,54,180000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Consortium Nether Runner - On Gossip Hello - Pause Waypoint"),
(@ENTRY,0,2,0,40,0,100,0,1,19667,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Consortium Nether Runner - On Waypoint 1 Reached - Run Script"),
(@ENTRY,0,3,0,40,0,100,0,5,19667,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Consortium Nether Runner - On Waypoint 5 Reached - Run Script"),
(@ENTRY,0,4,0,40,0,100,0,8,19667,0,0,80,@ENTRY*100+02,2,0,0,0,0,1,0,0,0,0,0,0,0,"Consortium Nether Runner - On Waypoint 8 Reached - Run Script");


SET @ENTRY := 1966700;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,54,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Consortium Nether Runner - On Script - Pause Waypoint"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.05449,"Consortium Nether Runner - On Script - Set Orientation 2.05449"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,11,34427,0,0,0,0,0,1,0,0,0,0,0,0,0,"Consortium Nether Runner - On Script - Cast 'Ethereal Teleport'");


SET @ENTRY := 1966701;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,54,11000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Consortium Nether Runner - On Script - Pause Waypoint"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.57111,"Consortium Nether Runner - On Script - Set Orientation 3.57111"),
(@ENTRY,9,2,0,0,0,100,0,1000,1000,0,0,1,0,6000,0,0,0,0,1,0,0,0,0,0,0,0,"Consortium Nether Runner - On Script - Say Line 0"),
(@ENTRY,9,3,0,0,0,100,0,3000,3000,0,0,45,1,1,0,0,0,0,10,65554,18265,0,0,0,0,0,"Consortium Nether Runner - On Script - Set Data 1 1"),
(@ENTRY,9,4,0,0,0,100,0,3000,3000,0,0,1,0,5000,0,0,0,0,10,65554,18265,0,0,0,0,0,"Consortium Nether Runner - On Script - Say Line 0"),
(@ENTRY,9,5,0,0,0,100,0,5000,5000,0,0,1,1,6000,0,0,0,0,1,0,0,0,0,0,0,0,"Consortium Nether Runner - On Script - Say Line 1"),
(@ENTRY,9,6,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,10,65554,18265,0,0,0,0,0,"Consortium Nether Runner - On Script - Set Data 1 1");


SET @ENTRY := 1966702;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,54,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Pause Waypoint"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.573574,"On Script - Set Orientation 0,573574"),
(@ENTRY,9,2,0,0,0,100,0,1000,1000,0,0,11,34427,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Cast 'Ethereal Teleport'"),
(@ENTRY,9,3,0,0,0,100,0,2000,2000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Despawn Instant");



SET @ENTRY := 18265;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,66,0,0,0,0,0,0,10,70166,19667,0,0,0,0,0,"Gezhe - On Data Set 1 1 - Set Orientation Closest Creature 'Consortium Nether Runner'"),
(@ENTRY,0,1,0,38,0,100,0,2,2,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.513270,"Gezhe - On Data Set 2 2 - Set Orientation 2,513270");

DELETE FROM `creature_text` WHERE `CreatureID` IN (19667, 18265);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES 

(19667, 0, 0, 'Hail, Gezhe!  Seventeen more orders have been placed in the Hara''samid Sector.  The markets of heavy veldarite have all but collapsed, as you predicted.', 12, 0, 100, 0, 0, 0, 17184, 'Consortium Nether Runner'),
(19667, 0, 1, 'Heraazi exports are on the rise, sir.  We''ve already bribed the appropriate taxation officers and contraband will begin to arrive within days.', 12, 0, 100, 0, 0, 0, 17186, 'Consortium Nether Runner'),
(19667, 1, 0, 'By your leave, sir.', 12, 0, 100, 0, 0, 0, 17185, 'Consortium Nether Runner'),

(18265, 0, 0, 'Nothing surprising there.  Come back with some real news, will you?', 12, 0, 100, 0, 0, 0, 17191, 'Gezhe'),
(18265, 0, 1, 'As expected.  Very well, dismissed.', 12, 0, 100, 0, 0, 0, 17190, 'Gezhe');

DELETE FROM `waypoints` WHERE `entry`=19667;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(19667, 1, -2057.45, 8528.71, 24.6556, 'Consortium Nether Runner'),
(19667, 2, -2058.23, 8547.79, 24.0203, 'Consortium Nether Runner'),
(19667, 3, -2064.09, 8554.57, 23.9054, 'Consortium Nether Runner'),
(19667, 4, -2075.08, 8562.74, 22.9801, 'Consortium Nether Runner'),
(19667, 5, -2083.14, 8565.28, 22.0791, 'Consortium Nether Runner'),
(19667, 6, -2062.94, 8574.57, 23.1942, 'Consortium Nether Runner'),
(19667, 7, -2056.25, 8597.59, 21.3663, 'Consortium Nether Runner'),
(19667, 8, -2049.12, 8603.37, 22.7377, 'Consortium Nether Runner');

DELETE FROM `criteria_data` WHERE `criteria_id`=6455 AND `type`=41;
REPLACE INTO `criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES 
(6455, 41, 0, 0, 'achievement_show_me_you_moves');

SET @ENTRY := 19776;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,53,0,19776,1,0,0,0,1,0,0,0,0,0,0,0,"Experimental Pilot - On Reset - Start Waypoint"),
(@ENTRY,0,1,0,64,0,100,0,0,0,0,0,54,180000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Experimental Pilot - On Gossip Hello - Pause Waypoint"),
(@ENTRY,0,2,0,40,0,100,0,8,19776,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Experimental Pilot - On Waypoint 8 Reached - Run Script"),
(@ENTRY,0,3,4,40,0,100,0,15,19776,0,0,54,300000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Experimental Pilot - On Waypoint 15 Reached - Pause Waypoint"),
(@ENTRY,0,4,0,61,0,100,0,15,19776,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.0689,"Experimental Pilot - On Waypoint 15 Reached - Set Orientation 5,0689");


SET @ENTRY := 1977600;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,54,140000,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Pause Waypoint"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.111339,"On Script - Set Orientation 2.111339"),
(@ENTRY,9,2,0,0,0,100,0,4000,4000,0,0,45,1,1,0,0,0,0,10,70614,19737,0,0,0,0,0,"On Script - Set Data 1 1"),
(@ENTRY,9,3,0,0,0,100,0,1000,1000,0,0,1,0,15000,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 0"),
(@ENTRY,9,4,0,0,0,100,0,15000,15000,0,0,1,0,20000,0,0,0,0,10,70614,19737,0,0,0,0,0,"On Script - Say Line 0"),
(@ENTRY,9,5,0,0,0,100,0,20000,20000,0,0,1,1,20000,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 1"),
(@ENTRY,9,6,0,0,0,100,0,0,0,0,0,5,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Play Emote 6"),
(@ENTRY,9,7,0,0,0,100,0,20000,20000,0,0,1,1,15000,0,0,0,0,10,70614,19737,0,0,0,0,0,"On Script - Say Line 1"),
(@ENTRY,9,8,0,0,0,100,0,15000,15000,0,0,5,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Play Emote 6"),
(@ENTRY,9,9,0,0,0,100,0,0,0,0,0,1,2,15000,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 2"),
(@ENTRY,9,10,0,0,0,100,0,15000,15000,0,0,1,2,10000,0,0,0,0,10,70614,19737,0,0,0,0,0,"On Script - Say Line 2"),
(@ENTRY,9,11,0,0,0,100,0,10000,10000,0,0,1,3,15000,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 3"),
(@ENTRY,9,12,0,0,0,100,0,0,0,0,0,5,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Play Emote 6"),
(@ENTRY,9,13,0,0,0,100,0,15000,15000,0,0,1,3,10000,0,0,0,0,10,70614,19737,0,0,0,0,0,"On Script - Say Line 3"),
(@ENTRY,9,14,0,0,0,100,0,10000,10000,0,0,1,4,15000,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 4"),
(@ENTRY,9,15,0,0,0,100,0,15000,15000,0,0,1,4,0,0,0,0,0,10,70614,19737,0,0,0,0,0,"On Script - Say Line 4"),
(@ENTRY,9,16,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,10,70614,19737,0,0,0,0,0,"On Script - Set Data 2 2");


SET @GUID := -70614;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=19737;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,38,0,100,0,1,1,0,0,66,0,0,0,0,0,0,10,70731,19776,0,0,0,0,0,"Engineering Crewmember - On Data Set 1 1 - Set Orientation Closest Creature 'Experimental Pilot'"),
(@GUID,0,1,0,38,0,100,0,2,2,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.199120,"Engineering Crewmember - On Data Set 2 2 - Set Orientation 2,199120");

DELETE FROM `creature_text` WHERE `CreatureID` IN (19737, 19776);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES 
(19776, 0, 0, 'All my bags are packed, I''m ready to go.', 12, 0, 100, 0, 0, 0, 17413, 'Experimental Pilot'),
(19776, 1, 0, 'You need to do what? All this science, I don''t understand... Look, this is just my job, five days a week.', 12, 0, 100, 0, 0, 0, 17416, 'Experimental Pilot'),
(19776, 2, 0, 'I can''t. I''m not the man they think I am at home.  Besides, I didn''t bring them out here.', 12, 0, 100, 0, 0, 0, 17419, 'Experimental Pilot'),
(19776, 3, 0, 'This isn''t the kind of place to raise your kids. It''s cold, and there''d be no one to raise them.', 12, 0, 100, 0, 0, 0, 17421, 'Experimental Pilot'),
(19776, 4, 0, 'Oh no, no, no... I''m a rocket man.', 12, 0, 100, 0, 0, 0, 17423, 'Experimental Pilot'),
-- 
(19737, 0, 0, 'The ship''s not ready yet.  We still need to calibrate the fuse length to make sure that it doesn''t burn out and leave you up there alone.', 12, 0, 100, 0, 0, 0, 17414, 'Engineering Crewmember'),
(19737, 1, 0, 'Essentially, it''s going to be a long, long time till we are ready to launch.  Maybe you should just head back home to your family.', 12, 0, 100, 0, 0, 0, 17417, 'Engineering Crewmember'),
(19737, 2, 0, 'Why not? A family can give you strength.', 12, 0, 100, 0, 0, 0, 17420, 'Engineering Crewmember'),
(19737, 3, 0, 'Couldn''t you raise them?', 12, 0, 100, 0, 0, 0, 17422, 'Engineering Crewmember'),
(19737, 4, 0, 'Well, it''s like I said; it''s going to be a while before we get this ship ready for flight.  We''ll keep you informed.', 12, 0, 100, 0, 0, 0, 17424, 'Engineering Crewmember');

DELETE FROM `waypoints` WHERE `entry`=19776;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(19776, 1, 2976.31, 3709.67,  142.398, 'Experimental Pilot'),
(19776, 2, 2987.82, 3686.2,   142.681, 'Experimental Pilot'),
(19776, 3, 2987.82, 3652.62,  143.244, 'Experimental Pilot'),
(19776, 4, 2999.17, 3645.03,  143.849, 'Experimental Pilot'),
(19776, 5, 3006.7, 3648.63,   143.771, 'Experimental Pilot'),
(19776, 6, 3042.1, 3645.08,   142.808, 'Experimental Pilot'),
(19776, 7, 3047.12, 3648.91,  142.832, 'Experimental Pilot'),
(19776, 8, 3043.87, 3652.34,  142.88,  'Experimental Pilot'),
(19776, 9, 3026.43, 3641.43,  143.507, 'Experimental Pilot'),
(19776, 10, 2989.67, 3650.38, 143.486, 'Experimental Pilot'),
(19776, 11, 2988.99, 3685.32, 142.73,  'Experimental Pilot'),
(19776, 12, 2975.27, 3712.82, 142.309, 'Experimental Pilot'),
(19776, 13, 2975.12, 3725.84, 142.688, 'Experimental Pilot'),
(19776, 14, 2965.31, 3733.57, 143.503, 'Experimental Pilot'),
(19776, 15, 2966.14, 3733,    143.472, 'Experimental Pilot');

UPDATE `instance_template` SET `insideResurrection`=1 WHERE `map`=1539;
UPDATE `instance_template` SET `insideResurrection`=1 WHERE `map`=1500;
UPDATE `instance_template` SET `insideResurrection`=1 WHERE `map`=1599;

SET @ENTRY := 188104;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,70,0,100,0,2,0,0,0,45,1,1,0,0,0,0,19,25986,20,0,0,0,0,0,"Cart Release - On Gameobject State Changed - Set Data 1 1");

DELETE FROM `creature_text` WHERE `CreatureID`=25986;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES 
(25986, 0, 0, 'The Ore Cart squeaks against the rails as it is released.', 16, 0, 100, 0, 0, 0, 25416, 'Ore Cart');


SET @ENTRY := 25986;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,38,0,100,1,1,1,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ore Cart - On Data Set 1 1 - Set Active On (No Repeat)"),
(@ENTRY,0,1,3,61,0,100,0,1,1,0,0,53,0,25986,0,0,0,0,1,0,0,0,0,0,0,0,"Ore Cart - On Data Set 1 1 - Start Waypoint (No Repeat)"),
(@ENTRY,0,2,4,40,0,100,0,15,25986,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ore Cart - On Waypoint 15 Reached - Despawn In 100 ms"),
(@ENTRY,0,3,0,61,0,100,0,1,1,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ore Cart - On Data Set 1 1 - Say Line 0 (No Repeat)"),
(@ENTRY,0,4,0,61,0,100,0,15,25986,0,0,48,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ore Cart - On Waypoint 15 Reached - Set Active Off");

DELETE FROM `waypoints` WHERE `entry`=25986;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(25986,1,2797.49,5277.37,22.0435, 'Ore Cart'),
(25986,2,2794.32,5281.92,22.4205, 'Ore Cart'),
(25986,3,2790.66,5285.51,21.9443, 'Ore Cart'),
(25986,4,2783.22,5291.11,22.7502, 'Ore Cart'),
(25986,5,2776.37,5297,24.6788, 'Ore Cart'),
(25986,6,2772.41,5299.31,25.5129, 'Ore Cart'),
(25986,7,2767.82,5300.13,26.1103, 'Ore Cart'),
(25986,8,2764.16,5299.4,26.2145, 'Ore Cart'),
(25986,9,2760.57,5297.91,26.187, 'Ore Cart'),
(25986,10,2757.37,5295.31,25.8549, 'Ore Cart'),
(25986,11,2755.49,5291.84,25.142, 'Ore Cart'),
(25986,12,2752.95,5288.89,24.7977, 'Ore Cart'),
(25986,13,2748.91,5286.94,24.7359, 'Ore Cart'),
(25986,14,2746.13,5285.9,24.8515, 'Ore Cart'),
(25986,15,2733.06,5284.92,27.2962, 'Ore Cart');

UPDATE creature_template SET scriptname = "npc_warlock_shadowy_tear" WHERE entry = 99887;
UPDATE areatrigger_template SET scriptname = "at_warlock_bane_of_havoc" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 5650);
UPDATE areatrigger_template SET scriptname = "at_warlock_fel_fissure" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 6959);
UPDATE areatrigger_template SET scriptname = "at_warlock_casting_circle" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 8138);
UPDATE areatrigger_template SET scriptname = "at_warlock_summon_observer" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 90001);
UPDATE areatrigger_template SET scriptname = "at_demon_hunter_mana_rift" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 9695);
UPDATE areatrigger_template SET scriptname = "at_demon_hunter_demonic_trample" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 6482);
UPDATE areatrigger_template SET scriptname = "at_dh_artifact_fury_of_the_illidari" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 5758);
UPDATE `instance_template` SET `insideResurrection`='1' WHERE  `map`=1539;

REPLACE INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES 
('1583', '0', 'scenario_mage_art', '1'),
('1539', '0', 'scenario_artifact_tirisfal_glades', '1'),
('1500', '0', 'scenario_artifact_brokenshore', '1'),
('1599', '0', 'scenario_artifact_restoacqusition', '1');

