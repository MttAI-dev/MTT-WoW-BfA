DELETE FROM gameobject_addon WHERE guid NOT IN (SELECT guid FROM gameobject);
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=92980;
UPDATE `creature_template` SET `gossip_menu_id`='18424' WHERE  `entry`=92980;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=102850;
DELETE FROM `creature_loot_template` WHERE  `Entry`=153570 AND `Item`=168532;


SET @ENTRY := 269796;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,1,0,64,0,100,0,2,0,0,0,12,121571,2,10800000,0,0,0,8,0,0,0,1689.43,-4130.7,50.8471,2.8513,"Spectral Eggshell- On click - Summon Gon"),
(@ENTRY,1,2,0,64,0,100,0,2,0,0,0,41,1000,0,0,0,0,0,20,269796,10,0,0,0,0,0,"Spectral Eggshell- On click - Despawn self cast");

UPDATE `npc_spellclick_spells` SET `spell_id`='210821' WHERE  `npc_entry`=106359 AND `spell_id`=210857;
UPDATE `npc_spellclick_spells` SET `spell_id`='184169' WHERE  `npc_entry`=92438 AND `spell_id`=103583;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=121756;


DELETE FROM `quest_template` WHERE `ID` IN (51108, 51225);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `ScalingFactionGroup`, `MaxScalingLevel`, `QuestPackageID`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardDisplaySpell1`, `RewardDisplaySpell2`, `RewardDisplaySpell3`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(51108, 3, -1, 0, 120, 0, 120, 8501, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 270898, 0, 0, 0, 0, 0, 0, 37290048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2159, 2158, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 7500, 7500, 0, 0, 0, 0, 0, 0, 18446744073709551615, 860, 7, 0, 'Hivemother Kraxi', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 27377), -- 51108
(51225, 3, -1, 0, 120, 0, 120, 8567, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34144256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2160, 2157, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 7500, 7500, 0, 0, 0, 0, 5778, 0, 824183885, 548, 7, 0, 'Albatrocity', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 27377); -- 51225

DELETE FROM `scene_template` WHERE (`SceneId`=1728 AND `ScriptPackageID`=1917);
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`) VALUES
(1728, 16, 1917);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (51446 /*51446*/, 51340 /*51340*/, 51332 /*51332*/, 52444 /*52444*/, 51801 /*51801*/, 53056 /*53056*/, 49040 /*49040*/, 51464 /*51464*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(51446, 1, 0, 0, 0, 0, 0, 0, 0, 'Oh, you\'d like to learn about harvesting winter\'s kiss?  Well that\'s very fortunate, for both of us...', 27404), -- 51446
(51340, 1, 0, 0, 0, 0, 0, 0, 0, 'Here we are. Time to see what the Alliance is up to.', 27404), -- 51340
(51332, 1, 0, 0, 0, 0, 0, 0, 0, 'Hey $n. You ever been to Drustvar?\n\nWe\'re goin\' to Drustvar.', 27404), -- 51332
(52444, 1, 0, 0, 0, 0, 0, 0, 0, 'I trust you are sufficiently prepared, then.', 27404), -- 52444
(51801, 0, 0, 0, 0, 0, 0, 0, 0, 'You have chosen to sail to Drustvar.', 27404), -- 51801
(53056, 1, 0, 0, 0, 0, 0, 0, 0, 'It is time to establish our final major foothold in Kul Tiras.', 27404), -- 53056
(49040, 18, 1, 0, 0, 0, 2000, 0, 0, '<B\'wizati reads the note and wipes a tear from her eye.>\n\nHe may choose to forget, but I choose to remember, no matter what pain it brings me. \n\nAt least he is safe. Loa watch over him.', 27404), -- 49040
(51464, 1, 0, 0, 0, 0, 0, 0, 0, 'You have done well. I will begin the ritual as soon as I can.$b$bIn de mean time, you are owed a lesson on how to harvest star moss.$b$bThe magic of star moss is sensitive to emotions, which is why it helps ground those dat have passed on.$B$BWhen you go to harvest, clear your mind and think of those you\'ve lost. Dat feeling of loss, reverence, and de joy dey once brought will keep de bloom from wilting.', 27404); -- 51464


DELETE FROM `trainer` WHERE `Id` IN (990);
INSERT INTO `trainer` (`Id`, `Type`, `Greeting`, `VerifiedBuild`) VALUES
(990, 2, 'I can teach you how to use a fishing pole to catch fish.', 27404);


DELETE FROM `trainer_spell` WHERE `TrainerId`=990;
INSERT INTO `trainer_spell` (`TrainerId`, `SpellId`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES
(990, 271663, 250000, 356, 1, 0, 0, 0, 78, 27404),
(990, 271617, 100, 0, 0, 0, 0, 0, 5, 27404),
(990, 271673, 400000, 356, 1, 0, 0, 0, 98, 27404),
(990, 271659, 150000, 356, 1, 0, 0, 0, 58, 27404),
(990, 271720, 500000, 356, 1, 0, 0, 0, 110, 27404),
(990, 271657, 100000, 356, 1, 0, 0, 0, 58, 27404),
(990, 271661, 200000, 356, 1, 0, 0, 0, 78, 27404),
(990, 271665, 300000, 356, 1, 0, 0, 0, 88, 27404);


DELETE FROM `creature_default_trainer` WHERE `CreatureId`=138460;
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
(138460, 990);

DELETE FROM `points_of_interest` WHERE `ID` =288;
INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`, `VerifiedBuild`) VALUES
(288, 2081.972, -4764.094, 7, 99, 0, 'Orgrimmar Mining', 27404);

DELETE FROM `scene_template` WHERE (`SceneId`=1978 AND `ScriptPackageID`=2160) OR (`SceneId`=2125 AND `ScriptPackageID`=2328) OR (`SceneId`=1977 AND `ScriptPackageID`=2159) OR (`SceneId`=1973 AND `ScriptPackageID`=2154);
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`) VALUES
(1978, 27, 2160),
(2125, 20, 2328),
(1977, 17, 2159),
(1973, 27, 2154);

