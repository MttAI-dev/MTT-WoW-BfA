UPDATE `creature_loot_template` SET `Chance`='97' WHERE `Item`=35188;

-- Leviroth SAI
SET @ENTRY := 26452;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,6500,12000,13500,11,19643,0,0,0,0,0,2,0,0,0,0,0,0,0,"Castea spell Mortal Strike"),
(@ENTRY,0,1,0,8,0,100,1,47170,0,0,0,11,49882,0,0,0,0,0,1,0,0,0,0,0,0,0,"SpellHit - Castea Spellt Leviroth Self-Impale"),
(@ENTRY,0,2,0,6,0,100,0,0,0,0,0,33,26452,0,0,0,0,0,7,0,0,0,0,0,0,0,"al morir  - Kill Credit");


-- Kaskala Craftsman SAI
SET @ENTRY := 25321;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,45504,0,0,0,1,0,5000,0,0,0,0,7,0,0,0,0,0,0,0,"On Spell Hit - Say Text 0"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,33,25321,0,0,0,0,0,7,0,0,0,0,0,0,0,"Text 0 Over - Kill Credit"),
(@ENTRY,0,2,0,52,0,100,0,0,25321,0,0,41,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Link - Despawn");

-- Kaskala Shaman SAI
SET @ENTRY := 25322;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,45504,0,0,0,1,0,5000,0,0,0,0,7,0,0,0,0,0,0,0,"On Spell Hit - Say Text 0"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,33,25322,0,0,0,0,0,7,0,0,0,0,0,0,0,"Text 0 Over - Kill Credit"),
(@ENTRY,0,2,0,52,0,100,0,0,25322,0,0,41,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Link - Despawn");

-- Nexus Drake Hatchling SAI
SET @ENTRY := 26127;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,46607,0,0,0,29,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"on spellhit - sigue al player"),
(@ENTRY,0,1,2,38,0,100,0,0,1,0,0,33,26175,0,0,0,0,0,18,10,0,0,0,0,0,0,"on data - give credit"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"link - despawn"),
(@ENTRY,0,3,0,8,0,100,0,46675,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"on spellhit - set friendly");

UPDATE `creature_template` SET `ScriptName`='npc_nexus_drake_hatchling' WHERE  `entry`=26127;

-- Harvest Collector SAI
SET @ENTRY := 25623;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,4000,6000,11,54185,0,0,0,0,0,2,0,0,0,0,0,0,0,"Harvest Collector - IC - Cast Claw Slash"),
(@ENTRY,0,1,0,8,0,100,0,47166,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Harvest Collector - On spell hit - Despawn");

UPDATE `quest_template_addon` SET `PrevQuestID` = 13225 WHERE `ID` = 13300; -- Slaves to Saronite requires The Skybreaker
UPDATE `quest_template_addon` SET `PrevQuestID` = 13225 WHERE `ID` = 13336; -- Blood of the Chosen requires The Skybreaker
UPDATE `quest_template_addon` SET `PrevQuestID` = 13287 WHERE `ID` = 13288; -- That's Abominable (non-daily) requires Poke and Prod
UPDATE `quest_template_addon` SET `PrevQuestID` = 13288 WHERE `ID` = 13289; -- That's Abominable (daily) requires That's Abominable (non-daily)
UPDATE `quest_template_addon` SET `PrevQuestID` = 13332 WHERE `ID` = 13314; -- Get the Message requires Raise the Barricades
UPDATE `quest_template_addon` SET `PrevQuestID` = 13314 WHERE `ID` = 13333; -- Capture More Dispatches requires Get the Message
UPDATE `quest_template_addon` SET `PrevQuestID` = 13295 WHERE `ID` = 13297; -- Neutralizing the Plague requires Basic Chemistry
UPDATE `quest_template_addon` SET `PrevQuestID` = 13315 WHERE `ID` = 13320; -- Cannot Reproduce requires Sneak Preview
UPDATE `quest_template_addon` SET `PrevQuestID` = 13318 WHERE `ID` = 13323; -- Drag and Drop (daily) requires Drag and Drop (non-daily)
UPDATE `quest_template_addon` SET `PrevQuestID` = 13318 WHERE `ID` = 13342; -- Not a Bug (non-daily) requires Drag and Drop (non-daily)
UPDATE `quest_template_addon` SET `PrevQuestID` = 13342 WHERE `ID` = 13344; -- Not a Bug (daily) requires Not a Bug (non-daily)
UPDATE `quest_template_addon` SET `PrevQuestID` = 13345 WHERE `ID` = 13332; -- Raise the Barricades requires Need More Info
UPDATE `quest_template_addon` SET `PrevQuestID` = 13346 WHERE `ID` = 13350; -- No Rest For The Wicked (daily) requires No Rest For The Wicked (non-daily)
UPDATE `quest_template_addon` SET `PrevQuestID` = 13321 WHERE `ID` = 13322; -- Retest Now (daily) requires Retest Now (non-daily)
UPDATE `quest_template_addon` SET `PrevQuestID` = 13341 WHERE `ID` IN (13284, 13309); -- Assault by Air and Assault by Ground require Joining the Assault


DELETE FROM `creature_text` WHERE `CreatureID`=28913;
DELETE FROM `creature_text` WHERE `CreatureID`=28914 AND `GroupID` BETWEEN 1 AND 4;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(28913, 0, 0, "What, Orbaz? That he's a blood elf?", 12, 0, 100, 1, 0, 0, 29192, 0, "Tharassian"),
(28913, 1, 0, "In life we were hated enemies - this is true...", 12, 0, 100, 1, 0, 0, 29193, 0, "Tharassian"),
(28913, 2, 0, "But in death... We are the children of the damned. The orphaned sons and daughters of the Scourge.", 12, 0, 100, 1, 0, 0, 29194, 0, "Tharassian"),
(28913, 3, 0, "In death we are brothers.", 12, 0, 100, 1, 0, 0, 29195, 0, "Tharassian"),
(28914, 1, 0, "Why do you care, Thassarian?", 12, 0, 100, 1, 0, 0, 29189, 0, "Orbaz Bloodbane"),
(28914, 2, 0, "His weakness led to his capture.", 12, 0, 100, 1, 0, 0, 29190, 0, "Orbaz Bloodbane"),
(28914, 3, 0, "Only the strong should survive. Not to mention...", 12, 0, 100, 1, 0, 0, 29191, 0, "Orbaz Bloodbane"),
(28914, 4, 0, "To hell with you, Thassarian.", 12, 0, 100, 25, 0, 0, 29196, 0, "Orbaz Bloodbane");

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=28913;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (28913, 2891300) AND `source_type` IN (0, 9);
DELETE FROM `smart_scripts` WHERE `entryorguid`=28914 AND `source_type`=0 AND `id` BETWEEN 3 AND 6;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(28913, 0, 0, 0, 19, 0, 100, 0, 12725, 0, 0, 0, 80, 2891300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Tharassian - On Quest 'Brothers In Death' accepted - Run Script"),
(2891300, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, 28914, 0, 0, 0, 0, 0, 0, "Tharassian - On Script - Talk 1 (Orbaz Bloodbane)"),
(2891300, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 45,1, 1, 0, 0, 0, 0, 19, 28914, 0, 0, 0, 0, 0, 0, "Tharassian - On Script - Set Data 1 1 (Orbaz Bloodbane)"),
(2891300, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 45, 2, 2, 0, 0, 0, 0, 19, 28914, 0, 0, 0, 0, 0, 0, "Tharassian - On Script - Set Data 2 2 (Orbaz Bloodbane)"),
(2891300, 9, 3, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 19, 28914, 0, 0, 0, 0, 0, 0, "Tharassian - On Script - Talk 2 (Orbaz Bloodbane)"),
(2891300, 9, 4, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 19, 28914, 0, 0, 0, 0, 0, 0, "Tharassian - On Script - Talk 3 (Orbaz Bloodbane)"),
(2891300, 9, 5, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 28914, 0, 0, 0, 0, 0, 0, "Tharassian - On Script - Face Orbaz Bloodbane"),
(2891300, 9, 6, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Tharassian - On Script - Talk 0"),
(2891300, 9, 7, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Tharassian - On Script - Talk 1"),
(2891300, 9, 8, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Tharassian - On Script - Talk 2"),
(2891300, 9, 9, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Tharassian - On Script - Talk 3"),
(2891300, 9, 10, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Tharassian - On Script - Restore Orientation"),
(2891300, 9, 11, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 19, 28914, 0, 0, 0, 0, 0, 0, "Tharassian - On Script - Talk 4 (Orbaz Bloodbane)"),
(2891300, 9, 12, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 45, 3, 3, 0, 0, 0, 0, 19, 28914, 0, 0, 0, 0, 0, 0, "Tharassian - On Script - Set Data 3 3 (Orbaz Bloodbane)"),
(2891300, 9, 13, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 45, 4, 4, 0, 0, 0, 0, 19, 28914, 0, 0, 0, 0, 0, 0, "Tharassian - On Script - Set Data 4 4 (Orbaz Bloodbane)"),
(28914, 0, 3, 0, 38, 0, 100, 0, 1, 1, 0, 0, 91, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Orbaz Bloodbane - On Data 1 1 Set - Stand"),
(28914, 0, 4, 0, 38, 0, 100, 0, 2, 2, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 28913, 0, 0, 0, 0, 0, 0, "Orbaz Bloodbane - On Data 2 2 Set - Face Tharassian"),
(28914, 0, 5, 0, 38, 0, 100, 0, 3, 3, 0, 0, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Orbaz Bloodbane - On Data 3 3 Set - Restore Orientation"),
(28914, 0, 6, 0, 38, 0, 100, 0, 4, 4, 0, 0, 90, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Orbaz Bloodbane - On Data 4 4 Set - Kneel");

