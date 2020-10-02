/* which is not well quest 47982 already complete */

-- Lesser Effigy SAI
SET @ENTRY := 272557;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,1,64,0,100,0,0,0,0,0,33,125094,0,0,0,0,0,7,0,0,0,0,0,0,0,"Lesser Effigy - On Gossip Hello - Quest Credit ''"),
(@ENTRY,1,1,0,61,0,100,0,0,0,0,0,33,125112,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,1,2,0,64,0,100,0,0,0,0,0,41,50,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lesser Effigy - On Gossip Hello - Despawn In 10 ms");

-- Lesser Effigy SAI
SET @ENTRY := 272558;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,1,64,0,100,0,0,0,0,0,33,125095,0,0,0,0,0,7,0,0,0,0,0,0,0,"Lesser Effigy - On Gossip Hello - Quest Credit ''"),
(@ENTRY,1,1,0,61,0,100,0,0,0,0,0,33,125112,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,1,2,0,64,0,100,0,0,0,0,0,41,50,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lesser Effigy - On Gossip Hello - Despawn In 10 ms");

-- Lesser Effigy SAI
SET @ENTRY := 272559;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,1,64,0,100,0,0,0,0,0,33,125096,0,0,0,0,0,7,0,0,0,0,0,0,0,"Lesser Effigy - On Gossip Hello - Quest Credit ''"),
(@ENTRY,1,1,0,61,0,100,0,0,0,0,0,33,125112,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,1,2,0,64,0,100,0,0,0,0,0,41,50,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lesser Effigy - On Gossip Hello - Despawn In 10 ms");

-- Lesser Effigy SAI
SET @ENTRY := 290428;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,1,64,0,100,0,0,0,0,0,33,138010,0,0,0,0,0,7,0,0,0,0,0,0,0,"Lesser Effigy - On Gossip Hello - Quest Credit ''"),
(@ENTRY,1,1,0,61,0,100,0,0,0,0,0,33,125112,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,1,2,0,64,0,100,0,0,0,0,0,41,50,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lesser Effigy - On Gossip Hello - Despawn In 10 ms");

-- Cursed Effigy SAI
SET @ENTRY := 272567;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,1,2,64,0,100,0,0,0,0,0,28,78517,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,1,2,4,61,0,100,0,0,0,0,0,75,78518,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,1,4,0,61,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,1,5,6,64,0,100,0,0,0,0,0,33,124935,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,1,6,0,61,0,100,0,0,0,0,0,41,100,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,1,7,1,64,0,100,0,0,0,0,0,33,116633,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)");

-- Cursed Effigy SAI
SET @ENTRY := 278675;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,1,19,0,100,0,47982,0,0,0,50,272567,1000,0,0,0,0,8,0,0,0,-76.8368,2100.62,46.7655,4.6953,"<Could not generate name> - On Quest 'The Final Effigy' Taken - Summon Gameobject 'Cursed Effigy'"),
(@ENTRY,1,1,0,64,0,100,0,47982,0,0,0,41,50,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)");
