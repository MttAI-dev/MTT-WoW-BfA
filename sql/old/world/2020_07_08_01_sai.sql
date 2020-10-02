SET @ENTRY := 80086;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,54,0,100,0,0,0,0,0,11,161614,1,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Spell"),
(@ENTRY,0,2,0,1,0,100,1,0,0,0,0,97,1,1,0,0,0,0,8,0,0,0,1197.45,-1499.5,-2.73943,0,"Start Jump"),
(@ENTRY,0,3,0,10,0,100,1,1,5,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Action List");

SET @ENTRY := 80148;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,54,0,100,0,0,0,0,0,11,161614,1,0,0,0,0,1,0,0,0,0,0,0,0," Cast Spell"),
(@ENTRY,0,2,0,1,0,100,1,0,0,0,0,97,1,1,0,0,0,0,8,0,0,0,1180.44,-1524.45,-2.73943,0," Start Jump"),
(@ENTRY,0,3,0,10,0,100,1,1,5,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0," Action List");

SET @ENTRY := 80149;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,54,0,100,0,0,0,0,0,11,161614,1,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Spell"),
(@ENTRY,0,2,0,1,0,100,1,0,0,0,0,97,1,1,0,0,0,0,8,0,0,0,1167.27,-1494.87,-2.73943,0," Start Jump"),
(@ENTRY,0,3,0,10,0,100,1,1,5,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0," Action List");

SET @ENTRY := 80250;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,3000,21000,23000,11,161333,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dol'mak - In Combat - 'Circle of Power'"),
(@ENTRY,0,1,0,0,0,100,0,6000,8000,26000,28000,11,161547,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dol'mak - In Combat - 'Circle of Power'"),
(@ENTRY,0,2,0,0,0,100,0,11000,13000,31000,33000,11,161552,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dol'mak - In Combat - 'Void Bolt'"),
(@ENTRY,0,3,0,0,0,100,0,16000,18000,36000,38000,11,161963,0,0,0,0,0,8,0,0,0,0,0,0,0,"Dol'mak - In Combat - 'Summon Dark Apparition'"),
(@ENTRY,0,4,0,6,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"");

SET @ENTRY := 80251;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,60,0,100,0,1000,1000,1000,1000,33,80252,0,0,0,0,0,18,10,0,0,0,0,0,0,"on update - give credit"),
(@ENTRY,0,1,0,38,0,100,512,1,1,0,0,80,80251,2,0,0,0,0,1,0,0,0,0,0,0,0,""),
(@ENTRY,0,1,2,38,0,100,0,0,1,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"on data - say text"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,53,1,80251,0,0,0,0,1,0,0,0,0,0,0,0,"link - start wp"),
(@ENTRY,0,3,0,40,0,100,0,5,80251,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"on wp reach despawn");

SET @ENTRY := 76204;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,60,0,100,0,1000,1000,1000,1000,33,76225,0,0,0,0,0,18,25,0,0,0,0,0,0,"on update - give credit"),
(@ENTRY,0,1,0,20,0,100,0,33786,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"on quest reward - say text"),
(@ENTRY,0,2,0,19,0,100,0,33808,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Line Event"),
(@ENTRY,0,3,0,20,0,100,0,35006,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0," Say Line Event"),
(@ENTRY,0,4,0,19,0,100,0,33788,0,0,0,1,3,0,0,0,0,0,7,0,0,0,0,0,0,0,"Фиона - Say Line Event"),
(@ENTRY,0,5,0,62,0,100,0,16242,0,0,0,85,153951,0,0,0,0,0,7,0,0,0,0,0,0,0,"Invoker Cast");


SET @ENTRY := 80642;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,3000,21000,23000,11,50542,0,0,0,0,0,8,0,0,0,0,0,0,0,"Slumberbloom - In Combat - 'Poison Cloud'"),
(@ENTRY,0,1,0,0,0,100,0,6000,8000,26000,28000,11,162969,0,0,0,0,0,1,0,0,0,0,0,0,0,"Slumberbloom - In Combat - 'Slumber Spore'"),
(@ENTRY,0,2,0,0,0,100,0,11000,13000,31000,33000,11,162983,0,0,0,0,0,1,0,0,0,0,0,0,0,"Slumberbloom - In Combat - 'Area Trigger - Botani Bloom'"),
(@ENTRY,0,3,0,0,0,100,0,16000,18000,36000,38000,11,162987,0,0,0,0,0,1,0,0,0,0,0,0,0,"Slumberbloom - In Combat - 'Dummy- Bloom Trap'");

SET @ENTRY := 82328;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,3000,11000,13000,11,161593,0,0,0,0,0,0,0,0,0,0,0,0,0,"Volatile Spore - In Combat - 'Spore Spawn'"),
(@ENTRY,0,1,0,0,0,100,0,6000,8000,16000,18000,11,165929,0,0,0,0,0,8,0,0,0,0,0,0,0,"Volatile Spore - In Combat - 'Sporesplosion'");

SET @ENTRY := 80862;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,73,0,100,0,0,0,0,0,33,80862,0,0,0,0,0,7,0,0,0,0,0,0,0,"Kill Credit"),
(@ENTRY,0,1,0,73,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,76265,100,0,0,0,0,0,"Set Data");


