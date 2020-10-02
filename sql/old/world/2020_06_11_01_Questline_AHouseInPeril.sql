-- quest 47952
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=135064;
DELETE FROM `smart_scripts` WHERE `entryorguid`=135064;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(135064,0,0,1,62,0,100,0,21990,1,0,0,33,137839,0,0,0,0,0,7,0,0,0,0,0,0,0,"on gossip select 1 - killcredit 137839"),
(135064,0,1,2,61,0,100,0,0,0,0,0,33,137875,0,0,0,0,0,7,0,0,0,0,0,0,0,"on gossip select 1 - killcredit 137875"),
(135064,0,2,0,61,0,100,0,0,0,0,0,62,1643,0,0,0,0,0,7,0,0,0,511.4785,-435.6,0.318,3.9806,"teleport to questender");


-- quest 51487
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=133974;
DELETE FROM `smart_scripts` WHERE `entryorguid`=133974;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(133974,0,0,1,62,0,100,0,22643,0,0,0,33,133974,0,0,0,0,0,7,0,0,0,0,0,0,0,"on gossip select 1 - killcredit 133974");

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=134033;
DELETE FROM `smart_scripts` WHERE `entryorguid`=134033;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(134033,0,0,1,62,0,100,0,22645,0,0,0,33,134033,0,0,0,0,0,7,0,0,0,0,0,0,0,"on gossip select 1 - killcredit 134033");

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=133976;
DELETE FROM `smart_scripts` WHERE `entryorguid`=133976;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(133976,0,0,1,62,0,100,0,22644,0,0,0,33,133976,0,0,0,0,0,7,0,0,0,0,0,0,0,"on gossip select 1 - killcredit 133976"),
(133976,0,1,0,61,0,100,0,0,0,0,0,12,137871,7,60000,0,0,0,7,0,0,0,0,0,0,0,"on gossip select 1 - summon 137871");

UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=137871;
DELETE FROM `creature_questender` WHERE `id`=137871 AND `quest`=51487;
INSERT INTO `creature_questender` VALUES (137871,51487);
