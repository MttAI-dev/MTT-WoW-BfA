-- Zanchuli Witch-Doctor SAI
SET @ENTRY := 122969;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1500,3000,3000,11,252923,0,0,0,0,0,2,0,0,0,0,0,0,0,"Zanchuli Witch-Doctor - In Combat - Cast '<Spell not found!>'"),
(@ENTRY,0,1,0,0,0,100,0,10000,15000,16000,21000,11,279118,0,0,0,0,0,5,0,0,0,0,0,0,0,"Zanchuli Witch-Doctor - In Combat - Cast '<Spell not found!>'"),
(@ENTRY,0,2,0,6,0,100,0,0,0,0,0,9,0,0,0,0,0,0,15,288202,20,0,0,0,0,0,"Npc_AI_BFA"),
(@ENTRY,0,3,0,6,0,100,0,0,0,0,0,9,0,0,0,0,0,0,15,288203,20,0,0,0,0,0,"Npc_AI_BFA"),
(@ENTRY,0,4,0,6,0,100,0,0,0,0,0,9,0,0,0,0,0,0,15,288204,20,0,0,0,0,0,"Npc_AI_BFA"),
(@ENTRY,0,5,0,6,0,100,0,0,0,0,0,9,0,0,0,0,0,0,15,288205,20,0,0,0,0,0,"Npc_AI_BFA"),
(@ENTRY,0,6,0,6,0,100,0,0,0,0,0,9,0,0,0,0,0,0,15,292401,20,0,0,0,0,0,"Npc_AI_BFA"),
(@ENTRY,0,7,0,6,0,100,0,0,0,0,0,9,0,0,0,0,0,0,15,292402,20,0,0,0,0,0,"Npc_AI_BFA"),
(@ENTRY,0,8,0,6,0,100,0,0,0,0,0,9,0,0,0,0,0,0,15,292400,20,0,0,0,0,0,"Npc_AI_BFA"),
(@ENTRY,0,9,0,6,0,100,0,0,0,0,0,9,0,0,0,0,0,0,15,292399,20,0,0,0,0,0,"Npc_AI_BFA");

UPDATE `creature_template` SET `lootid` = '122965' WHERE `entry` = '122965'; -- ataldazar
UPDATE `creature_template` SET `lootid` = '122963' WHERE `entry` = '122963'; -- ataldazar
UPDATE `creature_template` SET `lootid` = '122967' WHERE `entry` = '122967'; -- ataldazar
UPDATE `creature_template` SET `lootid` = '122968' WHERE `entry` = '122968'; -- ataldazar

UPDATE `creature_template` SET `lootid` = '126832' WHERE `entry` = '126832'; -- freehold
UPDATE `creature_template` SET `lootid` = '126847' WHERE `entry` = '126847'; -- freehold
UPDATE `creature_template` SET `lootid` = '126983' WHERE `entry` = '126983'; 
 
UPDATE `creature_template` SET `lootid` = '127479' WHERE `entry` = '127479'; -- tol dagor
UPDATE `creature_template` SET `lootid` = '127484' WHERE `entry` = '127484'; -- tol dagor
UPDATE `creature_template` SET `lootid` = '127490' WHERE `entry` = '127490'; -- tol dagor
UPDATE `creature_template` SET `lootid` = '127503' WHERE `entry` = '127503'; -- tol dagor

UPDATE `creature_template` SET `lootid` = '133379' WHERE `entry` = '133379'; -- temple sethralis
UPDATE `creature_template` SET `lootid` = '133384' WHERE `entry` = '133384'; -- temple sethralis
UPDATE `creature_template` SET `lootid` = '133389' WHERE `entry` = '133389'; -- temple sethralis

-- Spark Channeler SAI
SET @ENTRY := 139110;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,6,0,100,1,0,0,0,0,9,0,0,0,0,0,0,14,210411005,290905,0,0,0,0,0,"Npc_AI_BFA");

INSERT INTO `creature_model_info` (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (84145, '1', '1', '0') ON DUPLICATE KEY UPDATE BoundingRadius = VALUES(BoundingRadius), CombatReach = VALUES(CombatReach), DisplayID_Other_Gender = VALUES(DisplayID_Other_Gender);

INSERT INTO `creature_template_model` (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability) VALUES (135219, '0', '84145', '1', '1') ON DUPLICATE KEY UPDATE Idx = VALUES(Idx), CreatureDisplayID = VALUES(CreatureDisplayID), DisplayScale = VALUES(DisplayScale), Probability = VALUES(Probability);

UPDATE `creature_template` SET `lootid` = '131318' WHERE `entry` = '131318'; -- underrot
UPDATE `creature_template` SET `lootid` = '131817' WHERE `entry` = '131817'; -- underrot