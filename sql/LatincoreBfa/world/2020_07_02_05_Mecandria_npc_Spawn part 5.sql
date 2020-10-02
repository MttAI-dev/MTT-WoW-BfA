/* npc that takes the horde to rockbeds more order of quest horde */

DELETE FROM `creature` WHERE `guid`=2103360742843;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742843, 152504, 1642, 8499, 8665, '0', 0, 0, 0, -1, 0, 0, -1912.72, 1025.44, 2.3038, 6.0758, 300, 0, 0, 315, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742840;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742840, 152506, 1642, 8499, 8665, '0', 0, 0, 0, -1, 0, 0, -1907.87, 1031.15, 2.30385, 5.47827, 300, 0, 0, 315, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742839;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742839, 152507, 1642, 8499, 8665, '0', 0, 0, 0, -1, 0, 0, -1906.91, 1032.25, 2.30385, 5.18849, 300, 0, 0, 315, 0, 0, 0, 0, 0, 0, 0, '', 0);

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=152507;

DELETE FROM `gossip_menu_option` WHERE `MenuId`=9541284 AND `OptionIndex`=1;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
(9541284, 1, 0, 'Take me to Mechagon.', 172791, 1, 1, 28153);

DELETE FROM `npc_text` WHERE `ID`=1000008;
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`, `VerifiedBuild`) VALUES 
(1000008, 1, 0, 0, 0, 0, 0, 0, 0, 172790, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `gossip_menu` WHERE `MenuId`=9541284 AND `TextId`=1000008;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES 
(9541284, 1000008, 0);

DELETE FROM `creature_template` WHERE `entry`=152506;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(152506, 0, 0, 0, 0, 0, 'Captain Krooz', '', 'Captain of the Greasy Eel', NULL, NULL, 9541284, 120, 120, 7, 0, 0, 85, 1, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 10, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);

SET @ENTRY := 152506;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,9541284,1,0,0,62,1643,0,0,0,0,0,7,0,0,0,3335.276611,4860.971191,0.356767,2.527195,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,1,0,62,0,100,0,9541284,1,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=152506;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,152506,0,0,28,0,55650,0,0,0,0,0,"Captain Krooz SAI","");  

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=66 WHERE `entry`=152504;
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152504' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '152504';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('152504', '55651');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152504' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '152504';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('152504', '55649');

DELETE FROM `quest_template_addon` WHERE `ID`=55646;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (55646, 0, 0, 0, 0, 55647, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=55647;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (55647, 0, 0, 0, 55646, 55648, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=55648;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (55648, 0, 0, 0, 55647, 55630, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=55630;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (55630, 0, 0, 0, 55648, 55632, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=55632;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (55632, 0, 0, 0, 55630, 55649, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=55649;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (55649, 0, 0, 0, 55632, 55650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=55650;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (55650, 0, 0, 0, 55649, 55651, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=55651;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (55651, 0, 0, 0, 55650, 55652, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=55652;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (55652, 0, 0, 0, 55651, 55685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=55685;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (55685, 0, 0, 0, 55652, 55729, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=55729;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (55729, 0, 0, 0, 55685, 55730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=55730;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (55730, 0, 0, 0, 55729, 55731, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=56131;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (56131, 0, 0, 0, 55730, 55995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=55995;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (55995, 0, 0, 0, 55731, 55734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=55734;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (55734, 0, 0, 0, 55995, 55096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=55096;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (55096, 0, 0, 0, 55734, 55736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=55736;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (55736, 0, 0, 0, 55096, 56131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=56131;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (56131, 0, 0, 0, 55736, 55609, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=55609;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (55609, 0, 0, 0, 55731, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE `entry`=152510;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (152510, 0, 0, 0, 0, 0, 'Captain Krooz', '', 'Captain of the Greasy Eel', NULL, NULL, 9541285, 120, 120, 7, 0, 0, 85, 3, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 10, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);

DELETE FROM `gossip_menu_option` WHERE `MenuId`=9541285 AND `OptionIndex`=1;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
(9541285, 1, 0, 'Take me to Zuldazar Harbor.', 172793, 1, 1, 28153);

DELETE FROM `npc_text` WHERE `ID`=1000009;
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`, `VerifiedBuild`) VALUES 
(1000009, 1, 0, 0, 0, 0, 0, 0, 0, 172792, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `gossip_menu` WHERE `MenuId`=9541285 AND `TextId`=1000009;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES 
(9541285, 1000009, 0);

SET @ENTRY := 152510;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,9541285,1,0,0,62,1642,0,0,0,0,0,7,0,0,0,-1902.916382,1033.456421,2.303802,5.237774,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,1,0,62,0,100,0,9541285,1,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=152505;
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152505' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '152505';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('152505', '55650');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152505' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '152505';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('152505', '55650');

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=152522;
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152522' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '152522';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('152522', '55646');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152522' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '152522';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('152522', '57024');

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=152578;
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152578' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '152578';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('152578', '55647'),
('152578', '55648');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152578' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '152578';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('152578', '55646'),
('152578', '55647');

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=149809;
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='149809' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '149809';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('149809', '55630'),
('149809', '55632');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='149809' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '149809';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('149809', '55630'),
('149809', '55648');

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=152652;
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152652' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '152652';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('152652', '55649');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152652' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '152652';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('152652', '55632');

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=152504;

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152504' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '152504';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('152504', '55651');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152504' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '152504';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('152504', '55649');

DELETE FROM `creature` WHERE `guid`=2103360742846;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742846, 152505, 1642, 8499, 8665, '0', 0, 0, 0, -1, 0, 0, -1909.5, 1024.59, 2.30347, 0.929881, 300, 0, 0, 94, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742847;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742847, 152522, 1642, 8670, 8670, '0', 0, 0, 0, -1, 0, 0, -1075.11, 716.121, 435.333, 1.93048, 300, 0, 0, 315, 0, 0, 0, 0, 0, 0, 0, '', 0);

