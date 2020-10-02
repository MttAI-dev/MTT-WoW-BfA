
SET @ENTRY := 18351;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,11,42648,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lump - Out Of Combat - Cast Sleeping Sleep"),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Lump - On Aggro - Say Line (random)"),
(@ENTRY,0,2,0,62,0,100,0,21293,3,0,0,33,18354,0,0,0,0,0,7,0,0,0,0,0,0,0,"Lump - On Gossip Select - Give Quest Credit"),
(@ENTRY,0,3,0,2,0,100,0,0,30,30000,30000,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lump - On 30% HP - Run Script"),
(@ENTRY,0,4,5,2,0,100,0,0,30,30000,30000,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"on hp - set faction"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,1,1,35000,0,0,0,0,1,0,0,0,0,0,0,0,"link - say text"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,5,447,0,0,0,0,0,1,0,0,0,0,0,0,0,"link - play emote"),
(@ENTRY,0,7,0,52,0,100,0,1,18351,0,0,2,1711,0,0,0,0,0,1,0,0,0,0,0,0,0,"after emote - reset faction"),
(@ENTRY,0,8,0,52,0,100,0,1,18351,0,0,11,42648,0,0,0,0,0,1,0,0,0,0,0,0,0,"after emote - cast spell"),
(@ENTRY,0,9,0,9,0,100,0,8,25,1500,2000,11,31994,1,0,0,0,0,2,0,0,0,0,0,0,0,"Lump - On Player Range - Cast Shoulder Charge"),
(@ENTRY,0,10,0,9,0,100,0,5,40,1500,2000,11,32248,1,0,0,0,0,2,0,0,0,0,0,0,0,"Lump - On Player Range - Cast Spear Throw");

