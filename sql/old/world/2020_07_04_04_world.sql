SET @ENTRY := 58420;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,58420,0,0,0,33,58572,0,0,0,0,0,7,0,0,0,0,0,0,0,"On gossip select - Give credit"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Link - Close gossip");

UPDATE `creature_template` SET `KillCredit1`='63538' WHERE  `entry`=63538;
UPDATE `creature_template` SET `KillCredit2`='63537' WHERE  `entry`=63538;

SET @ENTRY := 65663;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,129089,0,0,0,33,65663,0,0,0,0,0,7,0,0,0,0,0,0,0,"SpellHit - KillCredit");

SET @ENTRY := 65666;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,129089,0,0,0,33,65666,0,0,0,0,0,7,0,0,0,0,0,0,0,"SpellHit - KillCredit");

SET @ENTRY := 65667;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,129089,0,0,0,33,65667,0,0,0,0,0,7,0,0,0,0,0,0,0,"SpellHit - KillCredit");

SET @ENTRY := 58508;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,42,0,5,0,0,0,0,1,0,0,0,0,0,0,0,"Spawn - SetInvincibilityHP"),
(@ENTRY,0,1,0,62,0,100,0,58508,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"GossipSelect - SetNpcFlag"),
(@ENTRY,0,2,0,62,0,100,0,58508,0,0,0,1,0,3000,0,0,0,0,1,0,0,0,0,0,0,0,"GossipSelect - SayText"),
(@ENTRY,0,3,4,52,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,"TextOver - SetFaction"),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,49,0,0,0,0,0,0,21,30,0,0,0,0,0,0,"Link - StartAttack"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,11,129772,0,0,0,0,0,1,0,0,0,0,0,0,0,"Link - CastSpell"),
(@ENTRY,0,6,12,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Link - RunTimedScript"),
(@ENTRY,0,7,0,0,0,100,0,5000,5000,5000,5000,11,129858,0,0,0,0,0,2,0,0,0,0,0,0,0,"IC - CastSpell"),
(@ENTRY,0,8,0,0,0,100,0,15000,15000,15000,15000,11,129831,0,0,0,0,0,2,0,0,0,0,0,0,0,"IC - CastSpell"),
(@ENTRY,0,9,10,2,0,100,0,1,5,0,0,2,2591,0,0,0,0,0,1,0,0,0,0,0,0,0,"1PerHP - SetFaction"),
(@ENTRY,0,10,11,61,0,100,0,0,0,0,0,33,58508,0,0,0,0,0,21,30,0,0,0,0,0,0,"Link - KillCredit"),
(@ENTRY,0,11,12,61,0,100,0,0,0,0,0,1,1,3000,0,0,0,0,1,0,0,0,0,0,0,0,"Link - SayText"),
(@ENTRY,0,12,0,61,0,100,0,1,0,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"TextOver - SetNpcFlag"),
(@ENTRY,0,13,0,0,0,100,0,20000,20000,20000,20000,11,129839,0,0,0,0,0,2,0,0,0,0,0,0,0,"IC - CastSpell"),
(@ENTRY,0,14,0,0,0,100,0,12000,12000,12000,12000,11,129837,0,0,0,0,0,2,0,0,0,0,0,0,0,"IC - CastSpell");



SET @ENTRY := 58509;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,42,0,5,0,0,0,0,1,0,0,0,0,0,0,0,"Spawn - SetInvincibilityHP"),
(@ENTRY,0,1,0,62,0,100,0,58509,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"GossipSelect - SetNpcFlag"),
(@ENTRY,0,2,0,62,0,100,0,58509,0,0,0,1,0,3000,0,0,0,0,1,0,0,0,0,0,0,0,"GossipSelect - SayText"),
(@ENTRY,0,3,4,52,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,"TextOver - SetFaction"),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,49,0,0,0,0,0,0,21,30,0,0,0,0,0,0,"Link - StartAttack"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,11,129772,0,0,0,0,0,1,0,0,0,0,0,0,0,"Link - CastSpell"),
(@ENTRY,0,6,12,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Link - RunTimedScript"),
(@ENTRY,0,7,0,0,0,100,0,5000,5000,5000,5000,11,130024,0,0,0,0,0,2,0,0,0,0,0,0,0,"IC - CastSpell"),
(@ENTRY,0,8,0,0,0,100,0,15000,15000,15000,15000,11,129553,0,0,0,0,0,2,0,0,0,0,0,0,0,"IC - CastSpell"),
(@ENTRY,0,9,10,2,0,100,0,1,5,0,0,2,2591,0,0,0,0,0,1,0,0,0,0,0,0,0,"1PerHP - SetFaction"),
(@ENTRY,0,10,11,61,0,100,0,0,0,0,0,33,58509,0,0,0,0,0,21,30,0,0,0,0,0,0,"Link - KillCredit"),
(@ENTRY,0,11,12,61,0,100,0,0,0,0,0,1,1,3000,0,0,0,0,1,0,0,0,0,0,0,0,"Link - SayText"),
(@ENTRY,0,12,0,61,0,100,0,1,0,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"TextOver - SetNpcFlag"),
(@ENTRY,0,13,0,0,0,100,0,12000,12000,12000,12000,11,130021,0,0,0,0,0,2,0,0,0,0,0,0,0,"IC - CastSpell");


SET @ENTRY := 58510;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,42,0,5,0,0,0,0,1,0,0,0,0,0,0,0,"Spawn - SetInvincibilityHP"),
(@ENTRY,0,1,0,62,0,100,0,58510,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"GossipSelect - SetNpcFlag"),
(@ENTRY,0,2,0,62,0,100,0,58510,0,0,0,1,0,3000,0,0,0,0,1,0,0,0,0,0,0,0,"GossipSelect - SayText"),
(@ENTRY,0,3,4,52,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,"TextOver - SetFaction"),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,49,0,0,0,0,0,0,21,30,0,0,0,0,0,0,"Link - StartAttack"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,11,129772,0,0,0,0,0,1,0,0,0,0,0,0,0,"Link - CastSpell"),
(@ENTRY,0,6,12,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Link - RunTimedScript"),
(@ENTRY,0,7,0,0,0,100,0,10000,10000,10000,10000,11,129888,0,0,0,0,0,2,0,0,0,0,0,0,0,"IC - CastSpell"),
(@ENTRY,0,8,0,0,0,100,0,0,0,60000,60000,11,129981,0,0,0,0,0,2,0,0,0,0,0,0,0,"IC - CastSpell"),
(@ENTRY,0,9,10,2,0,100,0,1,5,0,0,2,2591,0,0,0,0,0,1,0,0,0,0,0,0,0,"1PerHP - SetFaction"),
(@ENTRY,0,10,11,61,0,100,0,0,0,0,0,33,58510,0,0,0,0,0,21,30,0,0,0,0,0,0,"Link - KillCredit"),
(@ENTRY,0,11,12,61,0,100,0,0,0,0,0,1,1,3000,0,0,0,0,1,0,0,0,0,0,0,0,"Link - SayText"),
(@ENTRY,0,12,0,61,0,100,0,1,0,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"TextOver - SetNpcFlag");


SET @ENTRY := 58511;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,42,0,5,0,0,0,0,1,0,0,0,0,0,0,0,"Spawn - SetInvincibilityHP"),
(@ENTRY,0,1,0,62,0,100,0,58511,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"GossipSelect - SetNpcFlag"),
(@ENTRY,0,2,0,62,0,100,0,58511,0,0,0,1,0,3000,0,0,0,0,1,0,0,0,0,0,0,0,"GossipSelect - SayText"),
(@ENTRY,0,3,4,52,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,"TextOver - SetFaction"),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,49,0,0,0,0,0,0,21,30,0,0,0,0,0,0,"Link - StartAttack"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,11,129772,0,0,0,0,0,1,0,0,0,0,0,0,0,"Link - CastSpell"),
(@ENTRY,0,6,11,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Link - RunTimedScript"),
(@ENTRY,0,7,0,0,0,100,0,2000,2000,2000,2000,11,130080,0,0,0,0,0,2,0,0,0,0,0,0,0,"IC - CastSpell"),
(@ENTRY,0,8,9,2,0,100,0,1,5,0,0,2,2591,0,0,0,0,0,1,0,0,0,0,0,0,0,"1PerHP - SetFaction"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,33,58511,0,0,0,0,0,21,30,0,0,0,0,0,0,"Link - KillCredit"),
(@ENTRY,0,10,11,61,0,100,0,0,0,0,0,1,1,3000,0,0,0,0,1,0,0,0,0,0,0,0,"Link - SayText"),
(@ENTRY,0,11,0,61,0,100,0,1,0,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"TextOver - SetNpcFlag");

/*=================
-- Brawlers Guild
=================*/

UPDATE `creature_template` SET `InhabitType`='4', `faction`='123', `unit_flags`='768', `unit_flags2`='2048', `type_flags`='0', `ScriptName`='npc_bizmo' WHERE `entry`=68323;
DELETE FROM `creature` WHERE `guid` IN (224636);
DELETE FROM `creature_addon` WHERE `guid` IN (224636);



UPDATE `creature_template` SET `InhabitType`='4', `unit_flags`='768', `unit_flags2`='2048', `type_flags`='0', `ScriptName`='npc_bossy' WHERE `entry`=67260;



UPDATE `creature_template` SET `npcflag`='1', `gossip_menu_id`='15284', `faction`='123', `unit_flags`='768', `unit_flags2`='2048', `type_flags`='0', `ScriptName`='npc_brawlers_guild_queue' WHERE `entry`=68408;

DELETE FROM `gossip_menu` WHERE `MenuId`=15284;
INSERT INTO `gossip_menu` (`MenuId`, `TextID`, `VerifiedBuild`) VALUES 
(15284, 22450, 26972),
(15284, 21717, 26972);

DELETE FROM `gossip_menu_option` WHERE `MenuId`=15284;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
(15284, 0, 0, 'Yes, put me on the list of participants!', 68839, 1, 1, 26972),
(15284, 1, 0, 'I want to fight a random opponent!', 124435, 1, 1, 26972);

DELETE FROM `npc_text` WHERE `ID`=22450;
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`, `VerifiedBuild`) VALUES 
(22450, 1, 0, 0, 0, 0, 0, 0, 0, 73109, 0, 0, 0, 0, 0, 0, 0, 26972);



UPDATE `creature_template` SET `gossip_menu_id`='15284', `unit_flags`='768', `unit_flags2`='2048', `type_flags`='0', `ScriptName`='npc_brawlers_guild_queue' WHERE `entry`=67267;



DELETE FROM `item_script_names` WHERE `Id` IN (93194,93195,93228,144363);
INSERT INTO `item_script_names` (`Id`, `ScriptName`) VALUES 
(93194, 'brawl_invitation_item'),
(93195, 'brawl_invitation_item'),
(93228, 'brawl_invitation_item'),
(144363, 'brawl_invitation_item');

