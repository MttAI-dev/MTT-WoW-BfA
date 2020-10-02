/*Quest that are broken in areas of Drustvar tanke*/

DELETE FROM `creature_text` WHERE `CreatureID`=127160 AND `GroupID`=2 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (127160, 2, 0, 'Excuse me! Could you give me a hand here, please?', 14, 0, 100, 0, 0, 0, 141147, 0, 'Jonathan "Johnny" Presterby to Player');

DELETE FROM `gameobject` WHERE `guid`=210309545;
DELETE FROM `gameobject` WHERE `guid`=210309593;
DELETE FROM `gameobject` WHERE `guid`=1278675;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (1278675, 180740, 974, 5861, 5870, '0', 0, 0, 0, -1, -4181.77, 6415.56, 58.8968, 4.86947, 0, 0, 0.649448, -0.760406, 120, 255, 1, 0, '', 0);
DELETE FROM `gameobject` WHERE `guid`=210309664;
DELETE FROM `gameobject` WHERE `guid`=210309666;

DELETE FROM `gameobject_template` WHERE `entry`=276247;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (276247, 10, 15490, 'Child-sized Backpack', 'inspect', '', '', 1, 0, 48793, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21703, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', '', 27481);
DELETE FROM `quest_template_addon` WHERE `ID`=48853;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (48853, 0, 0, 0, 48804, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Child-sized Backpack SAI
SET @ENTRY := 276247;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,62,0,100,0,21703,0,0,0,33,128392,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)");

DELETE FROM `gameobject_queststarter` WHERE `id`=276251 AND `quest`=48805;
INSERT INTO `gameobject_queststarter` (`id`, `quest`) VALUES (276251, 48805);
DELETE FROM `gameobject_questender` WHERE `id`=127157 AND `quest`=48805;
INSERT INTO `gameobject_questender` (`id`, `quest`) VALUES (127157, 48805);

DELETE FROM `creature_template` WHERE `entry`=127159;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(127159, 0, 0, 0, 0, 0, 'Amelia Tidecrest', '', 'Adventurer\'s Society', NULL, 'questinteract', 0, 110, 120, 7, 0, 0, 35, 16777216, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 1, 33280, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 27481);

DELETE FROM `creature_text` WHERE `CreatureID`=127159 AND `GroupID`=2 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (127159, 2, 0, 'Stay away you smelly troggs!', 14, 0, 100, 0, 0, 0, 141152, 0, 'Amelia Tidecrest to Player');

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=127159 AND `spell_id`=252924;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (127159, 252924, 1, 0);
DELETE FROM `waypoints` WHERE `entry`=1271590 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1271590, 1, 448.971, 2331.03, 120.598, 'Amelia Tidecrest');

-- Amelia Tidecrest SAI
SET @GUID := -210337255;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 127159;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,2,73,0,100,0,0,0,0,0,33,127159,0,0,0,0,0,7,0,0,0,0,0,0,0,"Amelia Tidecrest - On Gossip Hello - Quest Credit ''"),
(@GUID,0,1,0,10,0,100,0,1,2,40000,40000,1,2,80000,0,0,0,0,1,0,0,0,0,0,0,0,"Amelia Tidecrest - Within 0-10 Range Out of Combat LoS - Say Line 3 for duration 80000 not using Talktarget"),
(@GUID,0,2,5,61,0,100,0,0,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Amelia Tidecrest - On Gossip Hello - Say Line 0 for duration 5000 not using Talktarget"),
(@GUID,0,3,0,52,0,100,0,0,127159,0,0,53,1,1271590,0,0,15000,0,1,0,0,0,0,0,0,0,"Amelia Tidecrest - On Text 0 Over - Start Waypoint"),
(@GUID,0,4,0,58,0,100,0,1,0,0,0,1,1,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Amelia Tidecrest - On Waypoint Started - Say Line 1 for duration 5000 not using Talktarget");

DELETE FROM `creature_template` WHERE `entry`=127158;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(127158, 0, 0, 0, 0, 0, 'Jonathan "Johnny" Presterby', '', 'Adventurer\'s Society', NULL, 'questinteract', 0, 110, 120, 7, 0, 0, 35, 16777216, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 1, 33280, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 27481);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=127158 AND `spell_id`=252830;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (127158, 252830, 1, 0);
DELETE FROM `creature_text` WHERE `CreatureID`=127158 AND `GroupID`=2 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (127158, 2, 0, 'You there! Over here!', 14, 0, 100, 0, 0, 0, 141197, 0, 'Jonathan "Johnny" Presterby to Player');
DELETE FROM `waypoints` WHERE `entry`=1271580 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1271580, 1, 460.016, 2304.2, 121.338, 'Jonathan');

-- Jonathan "Johnny" Presterby SAI
SET @GUID := -210337258;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 127158;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,2,73,0,100,0,0,0,0,0,33,127158,0,0,0,0,0,7,0,0,0,0,0,0,0,"Amelia Tidecrest - On Gossip Hello - Quest Credit ''"),
(@GUID,0,1,0,10,0,100,0,1,25,10000,40000,1,2,80000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,2,0,61,0,100,0,0,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,3,0,52,0,100,0,0,127158,0,0,1,1,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,4,0,52,0,100,0,1,127158,0,0,53,1,1271580,0,0,10000,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,5,0,73,0,100,0,0,0,0,0,28,252803,0,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=127160 AND `spell_id`=252830;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (127160, 252830, 1, 0);
DELETE FROM `creature_text` WHERE `CreatureID`=127160 AND `GroupID`=2 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (127160, 2, 0, 'Excuse me! Could you give me a hand here, please?', 14, 0, 100, 0, 0, 0, 141147, 0, 'Jonathan "Johnny" Presterby to Player');
DELETE FROM `waypoints` WHERE `entry`=1271600 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1271600, 1, 444.509, 2398.56, 129.685, 'Euphemia');
DELETE FROM `creature_template` WHERE `entry`=127160;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (127160, 0, 0, 0, 0, 0, 'Euphemia Batten-Chase', '', 'Adventurer\'s Society', NULL, 'questinteract', 0, 110, 120, 7, 0, 0, 35, 16777216, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 1, 33280, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 27481);

-- Euphemia Batten-Chase SAI
SET @GUID := -210337244;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 127160;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,2,73,0,100,0,0,0,0,0,33,127160,0,0,0,0,0,7,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,1,0,10,0,100,0,1,18,10000,40000,1,2,80000,0,0,0,0,1,0,0,0,0,0,0,0,""),
(@GUID,0,2,0,61,0,100,0,0,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,3,0,52,0,100,0,0,127160,0,0,1,1,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,4,0,52,0,100,0,1,127160,0,0,53,1,1271600,0,0,10000,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,5,0,73,0,100,0,0,0,0,0,28,252803,0,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

DELETE FROM `creature_template` WHERE `entry`=127125;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (127125, 0, 0, 0, 0, 0, 'Cragg the Stoneshaker', '', 'Bonegnasher Chief', NULL, NULL, 0, 110, 120, 7, 0, 0, 14, 0, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 8, 32832, 2048, 0, 0, 0, 0, 0, 0, 7, 2147483720, 0, 127125, 127125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7000, 8000, 'SmartAI', 0, 3, 1, 3, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 27481);

-- Cragg the Stoneshaker SAI
SET @ENTRY := 127125;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,3000,8800,8800,11,257100,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cragg the Stoneshaker - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,1,0,0,0,100,0,40000,40000,60000,75000,11,257183,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cragg the Stoneshaker - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,2,0,0,0,100,0,9000,9000,20000,25000,11,257216,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cragg the Stoneshaker - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)");

DELETE FROM `creature_template` WHERE `entry`=127156;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (127156, 0, 0, 0, 0, 0, 'Nigel Rifthold', '', 'Adventurer\'s Society', NULL, 'questinteract', 0, 110, 120, 7, 0, 0, 35, 16777216, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 1, 33280, 133120, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 27481);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=127156 AND `spell_id`=258632;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (127156, 258632, 1, 0);
DELETE FROM `waypoints` WHERE `entry`=1271560 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1271560, 1, 352.922, 2411.25, 127.658, 'Nigel');

-- Nigel Rifthold SAI
SET @GUID := -210337264;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 127156;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,1,73,0,100,0,0,0,0,0,33,127156,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nigel Rifthold - On Spellclick - Quest Credit ''"),
(@GUID,0,1,0,61,0,100,0,0,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Nigel Rifthold - On Spellclick - Say Line 0 for duration 5000 not using Talktarget"),
(@GUID,0,2,0,52,0,100,0,0,127156,0,0,53,1,1271560,0,0,10000,0,1,0,0,0,0,0,0,0,"Nigel Rifthold - On Text 0 Over - Start Waypoint"),
(@GUID,0,3,4,73,0,100,0,0,0,0,0,12,127015,3,120000,0,0,0,8,0,0,0,330.153,2401.44,128.835,5.99235,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,4,5,61,0,100,0,73,0,0,0,12,127159,3,120000,0,0,0,8,0,0,0,331.722,2400.42,128.782,2.66273,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,5,6,61,0,100,0,0,0,0,0,12,127156,3,120000,0,0,0,8,0,0,0,331.861,2401.42,128.928,2.95871,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,6,7,61,0,100,0,0,0,0,0,12,127157,3,120000,0,0,0,8,0,0,0,332.528,2401.92,128.923,3.01476,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,7,8,61,0,100,0,0,0,0,0,12,127158,3,120000,0,0,0,8,0,0,0,332.688,2399.55,128.719,2.73583,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,8,0,61,0,100,0,0,0,0,0,12,127160,3,120000,0,0,0,8,0,0,0,332.729,2400.51,128.835,2.80201,"Npc - Event - Action (phase) (dungeon difficulty)");

DELETE FROM `creature_template` WHERE `entry`=127015;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (127015, 0, 0, 0, 0, 0, 'Thaddeus "Gramps" Rifthold', '', NULL, NULL, NULL, 0, 110, 120, 7, 0, 0, 2668, 3, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 1, 33280, 2099200, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 27481);
DELETE FROM `creature_text` WHERE `CreatureID`=127015 AND `GroupID`=0 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (127015, 0, 0, 'You kids know you\'re not supposed to sneak out!', 12, 0, 100, 0, 0, 0, 138812, 0, 'Thaddeus');
DELETE FROM `creature_text` WHERE `CreatureID`=127015 AND `GroupID`=1 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (127015, 1, 0, 'You\'re all grounded for two months!', 12, 0, 100, 0, 0, 0, 138816, 0, 'Thaddeus');
DELETE FROM `creature_text` WHERE `CreatureID`=127015 AND `GroupID`=2 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (127015, 2, 0, 'Keep that up and I\'ll make it three months!', 12, 0, 100, 0, 0, 0, 138820, 0, 'Thaddeus');
DELETE FROM `creature_text` WHERE `CreatureID`=127015 AND `GroupID`=3 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (127015, 3, 0, 'You\'re lucky that $n happened along and was able to save you.', 12, 0, 100, 0, 0, 0, 138821, 0, 'Thaddeus');

DELETE FROM `creature` WHERE `guid`=210337268;
DELETE FROM `creature` WHERE `guid`=210337269;
DELETE FROM `creature` WHERE `guid`=210337270;
DELETE FROM `creature` WHERE `guid`=210337272;
DELETE FROM `creature` WHERE `guid`=210337267;
DELETE FROM `creature` WHERE `guid`=210337271;

-- Thaddeus "Gramps" Rifthold SAI
SET @ENTRY := 127015;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,10,0,100,512,1,4,0,0,1,0,10000,0,0,0,0,1,0,0,0,0,0,0,0,""),
(@ENTRY,0,1,0,52,0,100,512,0,127015,0,0,45,4,4,0,0,0,0,11,127157,20,0,0,0,0,0,""),
(@ENTRY,0,2,0,52,0,100,512,0,127015,0,0,45,4,4,0,0,0,0,11,127159,20,0,0,0,0,0,""),
(@ENTRY,0,3,0,52,0,100,512,0,127015,0,0,45,4,4,0,0,0,0,11,127156,20,0,0,0,0,0,""),
(@ENTRY,0,4,0,38,0,100,512,4,2,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,""),
(@ENTRY,0,5,0,52,0,100,512,1,127015,0,0,45,4,3,0,0,0,0,11,127157,20,0,0,0,0,0,""),
(@ENTRY,0,6,0,52,0,100,512,1,127015,0,0,45,4,3,0,0,0,0,11,127159,20,0,0,0,0,0,""),
(@ENTRY,0,7,0,52,0,100,512,1,127015,0,0,45,4,3,0,0,0,0,11,127156,20,0,0,0,0,0,""),
(@ENTRY,0,8,0,38,0,100,512,4,1,0,0,1,2,6000,0,0,0,0,1,0,0,0,0,0,0,0,""),
(@ENTRY,0,9,0,52,0,100,512,2,127015,0,0,1,3,6000,0,0,0,0,1,0,0,0,0,0,0,0,"");

DELETE FROM `creature_text` WHERE `CreatureID`=127157 AND `GroupID`=1 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (127157, 1, 0, 'Yes, Gramps.', 12, 0, 100, 0, 0, 0, 138813, 0, 'Marcus Howlingdale to Player');
DELETE FROM `creature_text` WHERE `CreatureID`=127157 AND `GroupID`=2 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (127157, 2, 0, 'But we\'re explorers!', 12, 0, 100, 1, 0, 0, 138819, 0, 'Marcus Howlingdale to Player');
DELETE FROM `creature_text` WHERE `CreatureID`=127159 AND `GroupID`=4 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (127159, 4, 0, 'Yes, sir.', 12, 0, 100, 0, 0, 0, 138815, 0, 'Amelia Tidecrest to Player');
DELETE FROM `creature_text` WHERE `CreatureID`=127159 AND `GroupID`=5 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (127159, 5, 0, 'Awwwww!', 12, 0, 100, 0, 0, 0, 138818, 0, 'Amelia Tidecrest to Player');
DELETE FROM `creature_text` WHERE `CreatureID`=127156 AND `GroupID`=1 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (127156, 1, 0, 'Yes, Gramps.', 12, 0, 100, 0, 0, 0, 138814, 0, 'Nigel Rifthold to Player');
DELETE FROM `creature_text` WHERE `CreatureID`=127156 AND `GroupID`=2 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (127156, 2, 0, 'Aww! C\'mon, Gramps!', 12, 0, 100, 0, 0, 0, 138817, 0, 'Nigel Rifthold to Player');

-- Marcus Howlingdale SAI
SET @ENTRY := 127157;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,512,4,4,0,0,1,1,3000,0,0,0,0,1,0,0,0,0,0,0,0,""),
(@ENTRY,0,1,0,52,0,100,512,1,127157,0,0,45,4,2,0,0,0,0,11,127015,20,0,0,0,0,0,""),
(@ENTRY,0,2,0,38,0,100,512,4,3,0,0,1,2,3000,0,0,0,0,1,0,0,0,0,0,0,0,""),
(@ENTRY,0,3,0,52,0,100,512,2,127157,0,0,45,4,1,0,0,0,0,11,127015,20,0,0,0,0,0,"");

-- Amelia Tidecrest SAI
SET @ENTRY := 127159;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,512,4,4,0,0,1,4,2000,0,0,0,0,1,0,0,0,0,0,0,0,""),
(@ENTRY,0,1,0,38,0,100,512,4,3,0,0,1,5,2000,0,0,0,0,1,0,0,0,0,0,0,0,"");

-- Nigel Rifthold SAI
SET @ENTRY := 127156;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,512,4,4,0,0,1,1,2000,0,0,0,0,1,0,0,0,0,0,0,0,""),
(@ENTRY,0,1,0,38,0,100,512,4,3,0,0,1,2,2000,0,0,0,0,1,0,0,0,0,0,0,0,"");

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=124844 AND `spell_id`=254972;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (124844, 254972, 1, 0);
DELETE FROM `creature_template` WHERE `entry`=124844;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (124844, 0, 0, 0, 0, 0, 'Trevor Hightide', '', NULL, NULL, 'questinteract', 0, 110, 120, 7, 0, 0, 190, 16777216, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 1, 33024, 18432, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 0.25, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 27481);

-- Trevor Hightide SAI
SET @ENTRY := 124844;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,73,0,100,0,0,0,0,0,33,124844,0,0,0,0,0,7,0,0,0,0,0,0,0,"Trevor Hightide - On Spellclick - Quest Credit ''");

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=129488 AND `spell_id`=254972;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (129488, 254972, 1, 0);
DELETE FROM `creature_template` WHERE `entry`=129488;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (129488, 0, 0, 0, 0, 0, 'Travis Daybreak', '', NULL, NULL, 'questinteract', 0, 110, 120, 7, 0, 0, 190, 16777216, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 1, 33024, 18432, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 0.25, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 27481);

-- Travis Daybreak SAI
SET @ENTRY := 129488;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,73,0,100,0,0,0,0,0,33,129488,0,0,0,0,0,7,0,0,0,0,0,0,0,"Travis Daybreak - On Spellclick - Quest Credit ''");

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=129489 AND `spell_id`=254972;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (129489, 254972, 1, 0);
DELETE FROM `creature_template` WHERE `entry`=129489;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (129489, 0, 0, 0, 0, 0, 'Kyle Sailford', '', NULL, NULL, 'questinteract', 0, 110, 120, 7, 0, 0, 190, 16777216, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 1, 33024, 18432, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 0.25, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 27481);

-- Kyle Sailford SAI
SET @ENTRY := 129489;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,73,0,100,0,0,0,0,0,33,129489,0,0,0,0,0,7,0,0,0,0,0,0,0,"Kyle Sailford - On Spellclick - Quest Credit ''");

DELETE FROM `creature_template` WHERE `entry`=129490;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (129490, 0, 0, 0, 0, 0, 'Burke Stevenson', '', NULL, NULL, 'questinteract', 0, 110, 120, 7, 0, 0, 190, 16777216, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 1, 33024, 18432, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 0.25, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 27481);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=129490 AND `spell_id`=254972;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (129490, 254972, 1, 0);

-- Burke Stevenson SAI
SET @ENTRY := 129490;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,73,0,100,0,0,0,0,0,33,129490,0,0,0,0,0,7,0,0,0,0,0,0,0,"Burke Stevenson - On Spellclick - Quest Credit ''");

DELETE FROM `gameobject_queststarter` WHERE `id`=277459 AND `quest`=47949;
INSERT INTO `gameobject_queststarter` (`id`, `quest`) VALUES (277459, 47949);
DELETE FROM `creature` WHERE `guid`=28000185209;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (28000185209, 124882, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 1, 72.5689, 1641.26, 0.828812, 1.11497, 300, 0, 0, 130083, 0, 0, 0, 0, 0, 0, 0, '', 0);

-- Campfire SAI
SET @ENTRY := 278527;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,1,2,64,0,100,0,0,0,0,0,11,255036,0,0,0,0,0,11,128526,100,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,1,2,0,61,0,100,0,0,0,0,0,33,128526,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)");

DELETE FROM `gameobject_template` WHERE `entry`=278527;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (278527, 10, 16847, 'Campfire', 'questinteract', 'burning effigy', '', 1, 2668, 47950, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 35059, 0, 0, 0, 0, 0, 1, 0, 64255, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', '', 27377);

DELETE FROM `waypoints` WHERE `entry`=12715701 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12715701, 1, 365.566, 2356.04, 122.247, 'Marcus Howlingdale');
DELETE FROM `waypoints` WHERE `entry`=12715701 AND `pointid`=2;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12715701, 2, 361.685, 2368.19, 124.383, 'Marcus Howlingdale');
DELETE FROM `waypoints` WHERE `entry`=12715701 AND `pointid`=3;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12715701, 3, 338.937, 2398.44, 129.188, 'Marcus Howlingdale');

-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=2 AND `SourceEntry`=-210337255;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,2,-210337255,0,0,9,0,48804,0,0,0,0,0,"Amelia Tidecrest SAI","");

-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=2 AND `SourceEntry`=-210337258;
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,2,-210337258,0,0,9,0,48804,0,0,0,0,0,"Jonathan Presterby SAI","");

-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=2 AND `SourceEntry`=-210337244;
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,2,-210337244,0,0,9,0,48804,0,0,0,0,0,"Euphemia Batten-Chase SAI","");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=127015 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=28 AND `ConditionTarget`=0 AND `ConditionValue1`=48853 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 127015, 0, 0, 28, 0, 48853, 0, 0, 0, 0, 0, 'Thaddeus Gramps Rifthold SAI', '');

DELETE FROM `creature_template_addon` WHERE `entry`=127015;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (127015, 0, 0, 0, 1, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_template_addon` WHERE `entry`=127158;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (127158, 0, 0, 0, 1, 0, 0, 0, 0, 0, '0');
DELETE FROM `creature_template_addon` WHERE `entry`=127160;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (127160, 0, 0, 0, 1, 0, 0, 0, 0, 0, '0');

DELETE FROM `quest_template_addon` WHERE `ID`=48677;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (48677, 0, 0, 0, 0, 48678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=48678;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (48678, 0, 0, 0, 48677, 48679, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=48679;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (48679, 0, 0, 0, 48678, 48682, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=48682;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (48682, 0, 0, 0, 48679, 48683, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=48683;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (48683, 0, 0, 0, 48682, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Credit - Offering Given SAI
SET @ENTRY := 127104;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,7,10,0,100,0,1,2,1000,4000,28,252562,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,1,0,10,0,100,0,1,2,1000,4000,28,252568,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,2,0,10,0,100,0,1,2,1000,4000,28,252563,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,3,0,10,0,100,0,1,2,1000,4000,28,252561,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,4,0,10,0,100,0,1,2,1000,4000,28,252572,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,5,8,10,0,100,0,1,2,1000,4000,28,252566,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,6,9,10,0,100,0,1,2,1000,4000,28,252564,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,33,127104,0,0,0,0,0,7,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,33,127104,0,0,0,0,0,7,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,9,0,61,0,100,0,0,0,0,0,33,127104,0,0,0,0,0,7,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=127104;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,127104,0,0,1,0,252562,0,0,0,0,0,"Credit - Offering Given SAI","");

-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=6 AND `SourceEntry`=127104;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,6,127104,0,0,1,0,252566,0,0,0,0,0,"Credit - Offering Given SAI","");

-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=7 AND `SourceEntry`=127104;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,7,127104,0,0,1,0,252564,0,0,0,0,0,"Credit - Offering Given SAI","");

-- Entrails SAI
SET @ENTRY := 276200;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,64,0,100,0,0,0,0,0,33,127273,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,1,1,0,64,0,100,0,0,0,0,0,33,127274,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,1,2,0,64,0,100,0,0,0,0,0,33,127275,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,1,3,0,64,0,100,0,0,0,0,0,33,137960,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,1,4,0,64,0,100,0,0,0,0,0,33,137961,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,1,5,0,64,0,100,0,0,0,0,0,33,137962,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,1,6,0,64,0,100,0,0,0,0,0,33,137963,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)");

-- Lord Autumnvale SAI
SET @GUID := -210336457;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 127080;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,64,0,100,0,0,0,0,0,1,0,10000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,1,2,52,0,100,0,0,127080,0,0,33,127080,0,0,0,0,0,7,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,2,0,61,0,100,0,0,0,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=-210336457;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,-210336457,0,0,9,0,48678,0,0,0,0,0,"Lord Autumnvale SAI","");

-- Edwin Maldus SAI
SET @GUID := -210336593;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 126979;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,10,0,100,0,1,5,10000,40000,1,0,3000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,1,0,52,0,100,0,0,126979,0,0,1,1,3000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,2,0,52,0,100,0,1,126979,0,0,12,126973,7,1000,1,0,0,8,0,0,0,591.465,1826.93,24.2185,6.28171,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,3,0,52,0,100,0,1,126979,0,0,12,126973,7,1000,1,0,0,8,0,0,0,592.54,1823.93,24.2488,0.469764,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,4,0,52,0,100,0,1,126979,0,0,12,126973,7,1000,1,0,0,8,0,0,0,591.205,1829.01,24.1831,0.210583,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,5,0,52,0,100,0,1,126979,0,0,12,126974,7,1000,1,0,0,8,0,0,0,591.465,1826.93,24.2185,6.28171,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,6,0,52,0,100,0,1,126979,0,0,12,126974,7,1000,1,0,0,8,0,0,0,591.205,1829.01,24.1831,0.210583,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,7,0,52,0,100,0,1,126979,0,0,33,127395,0,0,0,0,0,7,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,8,9,38,0,100,0,4,4,0,0,33,126979,0,0,0,0,0,7,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,9,0,61,0,100,0,0,0,0,0,1,3,8000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,10,0,52,0,100,0,3,126979,0,0,1,4,6000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,11,0,52,0,100,0,4,126979,0,0,53,1,12697901,0,48679,10000,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=-210336593;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,-210336593,0,0,9,0,48679,0,0,0,0,0,"Edwin Maldus SAI","");  
-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=10 AND `SourceEntry`=-210336593;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,10,-210336593,0,0,9,0,48679,0,0,0,0,0,"Edwin Maldus SAI","");  

-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=126973;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,126973,0,0,9,0,48679,0,0,0,0,0,"Barbthorn Drone SAI","");  

DELETE FROM `waypoints` WHERE `entry`=12697901 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12697901, 1, 542.018, 1823.02, 19.7069, NULL);
DELETE FROM `waypoints` WHERE `entry`=12697901 AND `pointid`=2;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12697901, 2, 506.015, 1871.66, 8.24433, NULL);

-- Barbthorn Drone SAI
SET @ENTRY := 126973;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,6,0,100,0,0,0,0,0,45,4,4,0,0,0,0,10,210336593,126979,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

-- Edwin Maldus SAI
SET @GUID := -210336655;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 127418;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,10,0,100,0,1,25,4000,4000,1,0,20000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,1,2,64,0,100,0,0,0,0,0,12,127418,8,30000,0,0,0,8,0,0,0,346.269,2063.32,8.00765,4.98789,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,2,0,61,0,100,0,0,0,0,0,41,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=-210336655;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,-210336655,0,0,9,0,48682,0,0,0,0,0,"Edwin Maldus SAI","");  

-- Edwin Maldus SAI
SET @ENTRY := 127418;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,48683,0,0,0,1,2,6000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,1,0,52,0,100,0,2,127418,0,0,53,1,@ENTRY*100+01,0,48683,8000,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

-- Edwin Maldus SAI
SET @ENTRY := 126979;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,10,0,100,0,1,1,40000,40000,1,5,3000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,33,126979,0,0,0,0,0,7,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,2,0,38,0,100,0,4,4,0,0,1,6,6000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=126979;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,126979,0,0,48,0,127292,0,0,0,0,0,"Edwin Maldus SAI","");  

-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=126979;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,126979,0,0,9,0,48683,0,0,0,0,0,"Lord Autumnvale SAI","");  

DELETE FROM `creature_text` WHERE `CreatureID`=126979 AND `GroupID`=6 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (126979, 6, 0, 'Lord Autumnvale is dead! His thirst for power led to his demise!', 14, 0, 100, 5, 0, 0, 137008, 0, 'Edwin Maldus to Player');

DELETE FROM `waypoints` WHERE `entry`=12741801 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12741801, 1, 375.125, 1947.02, 12.043, NULL);

-- Wicker Man SAI
SET @ENTRY := 127292;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,73,0,100,0,0,0,0,0,33,127292,0,0,0,0,0,7,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,45,4,4,0,0,0,0,10,210336683,126979,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=127292 AND `spell_id`=253011;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (127292, 253011, 1, 0);

DELETE FROM `creature` WHERE `guid`=210336661;
DELETE FROM `creature_text` WHERE `CreatureID`=127419 AND `GroupID`=2 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (127419, 2, 0, 'Will you quiet down?! Your death will serve the greater good!', 12, 0, 100, 1, 0, 0, 136999, 0, 'Lord Autumnvale to Player');

-- Lord Autumnvale SAI
SET @GUID := -210336660;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 127419;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,10,0,100,0,1,6,4000,4000,1,2,8000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,1,0,52,0,100,0,2,127419,0,0,1,0,4000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,2,0,52,0,100,0,0,127419,0,0,1,1,3000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,3,0,52,0,100,0,1,127419,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,4,0,4,0,100,0,0,0,0,0,20,0,0,0,0,0,0,18,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=-210336660;
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,-210336660,0,0,9,0,48682,0,0,0,0,0,"Lord Autumnvale SAI","");  

-- Abby Lewis SAI
SET @GUID := -210337342;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 121603;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,1,19,0,100,0,47289,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,1,0,61,0,100,0,0,0,0,0,75,243706,0,0,0,0,0,7,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

-- Abby Lewis SAI
SET @ENTRY := 122169;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,10,0,100,0,1,3,4000,4000,29,2,0,122169,0,0,0,7,2,10,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,1,0,38,0,100,512,4,2,0,0,1,2,6000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,2,0,52,0,100,512,2,122169,0,0,1,1,6000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,3,0,38,0,100,512,4,4,0,0,1,3,6000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,5,3,38,0,100,512,4,5,0,0,1,4,6000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,6,8,19,0,100,0,47428,0,0,0,1,5,6000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,7,0,52,0,100,0,5,122169,0,0,53,1,1221690,0,47428,10000,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,28,243706,0,0,0,0,0,7,10,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");


DELETE FROM `creature_template` WHERE `entry`=122169;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (122169, 0, 0, 0, 0, 0, 'Abby Lewis', '', NULL, NULL, NULL, 0, 110, 120, 7, 0, 0, 35, 2, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 1, 33280, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 27481);
DELETE FROM `waypoints` WHERE `entry`=1221690 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1221690, 1, -245.479, 2110.17, 60.9051, NULL);
DELETE FROM `creature_questender` WHERE `id`=122169 AND `quest`=47289;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (122169, 47289);
DELETE FROM `creature_queststarter` WHERE `id`=122169 AND `quest`=47428;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (122169, 47428);
DELETE FROM `quest_template_addon` WHERE `ID`=47289;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (47289, 0, 0, 0, 0, 47428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=47428;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (47428, 0, 0, 0, 47289, 53464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Trunksy SAI
SET @ENTRY := 278416;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,64,0,100,512,0,0,0,0,45,4,4,0,0,0,0,11,122169,10,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)");

-- Mr. Munchykins SAI
SET @ENTRY := 278417;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,64,0,100,512,0,0,0,0,45,4,2,0,0,0,0,11,122169,10,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)");

-- Mayor Striggs SAI
SET @ENTRY := 278418;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,64,0,100,512,0,0,0,0,45,4,5,0,0,0,0,11,122169,10,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)");

DELETE FROM `gameobject_queststarter` WHERE `id`=270917 AND `quest`=53464;
INSERT INTO `gameobject_queststarter` (`id`, `quest`) VALUES (270917, 53464);
DELETE FROM `quest_template_addon` WHERE `ID`=53464;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (53464, 0, 0, 0, 47428, 44785, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=44785;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (44785, 0, 0, 0, 53464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Jonathan Hayes SAI
SET @GUID := -210337576;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 122491;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,62,0,100,0,21154,0,0,0,33,122491,0,0,0,0,0,7,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

-- Annie Warren SAI
SET @ENTRY := 122493;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,44785,0,0,0,45,4,2,0,0,0,0,11,121603,25,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

-- Abby Lewis SAI
SET @GUID := -210337995;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 121603;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,38,0,100,0,4,2,0,0,1,0,8000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,1,0,52,0,100,0,0,121603,0,0,53,1,1216030,0,44785,20000,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,2,0,40,0,100,0,1,0,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,4,0,55,0,100,0,1,0,0,0,1,1,3000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,5,0,52,0,100,0,1,121603,0,0,33,123055,0,0,0,0,0,18,15,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,6,7,40,0,100,0,4,0,0,0,1,2,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,7,0,61,0,100,0,0,0,0,0,75,253970,0,0,0,0,0,11,121603,20,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

DELETE FROM `waypoints` WHERE `entry`=1216030 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1216030, 1, -612.13, 2068.34, 117.772, NULL);
DELETE FROM `waypoints` WHERE `entry`=1216030 AND `pointid`=2;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1216030, 2, -612.188, 2068.27, 117.945, NULL);
DELETE FROM `waypoints` WHERE `entry`=1216030 AND `pointid`=3;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1216030, 3, -571.005, 2016.83, 121.432, NULL);
DELETE FROM `waypoints` WHERE `entry`=1216030 AND `pointid`=4;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1216030, 4, -562.866, 1966.26, 122.305, NULL);

-- Teapot SAI
SET @ENTRY := 270960;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,1,64,0,100,0,0,0,0,0,33,123027,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,1,1,2,61,0,100,0,0,0,0,0,12,122673,7,10000,1,0,0,8,0,0,0,-564.087,1960,122.296,2.09928,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,1,2,0,61,0,100,0,0,0,0,0,45,4,3,0,0,0,0,11,121603,25,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)");

-- Abby Lewis SAI
SET @GUID := -210337998;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 121603;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,1,38,0,100,0,4,3,0,40000,1,3,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,1,0,52,0,100,0,3,121603,0,0,53,1,12160301,0,44785,8000,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,2,0,40,0,100,0,1,0,0,0,12,123123,3,60000,0,0,0,8,0,0,0,-561.698,1993.3,121.789,4.57673,"Npc - Event - Action (phase) (dungeon difficulty)");


DELETE FROM `creature_addon` WHERE `guid`=210337998;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (210337998, 0, 0, 0, 1, 0, 0, 0, 0, 0, '0');
DELETE FROM `waypoints` WHERE `entry`=12160301 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12160301, 1, -571.005, 2016.83, 121.432, NULL);
DELETE FROM `creature_text` WHERE `CreatureID`=121603 AND `GroupID`=3 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (121603, 3, 0, 'Doggie, play nice with our guest! We wouldn\'t want them to leave hungry... or at all!', 12, 0, 100, 1, 0, 101476, 132236, 0, '');
DELETE FROM `creature` WHERE `guid`=210338013;
DELETE FROM `creature` WHERE `guid`=210338004;

-- Abby Lewis SAI
SET @ENTRY := 121603;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,38,0,100,0,4,4,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,1,0,10,0,100,0,1,2,4000,4000,29,2,0,121603,0,0,0,18,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

-- Annie Warren SAI
SET @ENTRY := 123123;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,44785,0,0,0,1,0,6000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,1,0,52,0,100,0,0,123123,0,0,1,1,6000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,2,0,52,0,100,0,1,123123,0,0,53,1,1231230,0,44785,10000,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

DELETE FROM `waypoints` WHERE `entry`=1231230 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1231230, 1, -558.92, 2043.95, 119.663, NULL);

DELETE FROM `gameobject_loot_template` WHERE `Entry`=273537 AND `Item`=152480;
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (273537, 152480, 0, 100, 0, 1, 0, 1, 1, NULL);
DELETE FROM `gameobject_template` WHERE `entry`=273537;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (273537, 3, 46195, 'Gravebloom', 'questinteract', 'Collecting', '', 0.5, 259, 273537, 0, 0, 0, 0, 0, 0, 48475, 0, 0, 0, 0, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75911, 1, 0, 0, 0, '', '', 27481);

-- Major Corrupting Circle SAI
SET @ENTRY := 277370;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,1,64,0,100,0,0,0,0,0,33,128221,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,1,1,0,61,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gameobject - Event - Action (phase) (dungeon difficulty)");

DELETE FROM `quest_template_addon` WHERE `ID`=48475;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (48475, 0, 0, 0, 0, 48476, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=48476;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES (48476, 0, 0, 0, 48475, 48477, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Sister Westwood SAI
SET @ENTRY := 126245;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,1,1643,0,0,11,257853,0,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,1,0,0,0,100,0,5000,5000,20000,20000,11,256865,0,0,0,0,0,2,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,2,0,0,0,100,0,8000,8000,40000,40000,11,256878,0,0,0,0,0,2,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,3,5,6,0,100,0,0,0,0,0,45,4,4,0,0,0,0,10,210338363,126253,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,4,0,4,0,100,0,0,0,0,0,1,0,4000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,1,1,6000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

-- Mercy Fairwater SAI
SET @GUID := -210338363;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 126253;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,1,38,0,100,0,4,4,0,0,28,254322,0,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,1,0,61,0,100,0,0,0,0,0,53,1,1262530,0,48477,10000,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

DELETE FROM `waypoints` WHERE `entry`=1262530 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1262530, 1, -694.264, 1890.35, 113.196, NULL);

DELETE FROM `creature_addon` WHERE `guid`=210338363;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (210338363, 0, 0, 0, 1, 0, 0, 0, 0, 0, '213677 254322');
DELETE FROM `creature_text` WHERE `CreatureID`=126253 AND `GroupID`=0 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (126253, 0, 0, 'We are gladdened to see there are still champions such as you, $n.', 12, 0, 100, 1, 0, 0, 138829, 0, 'Mercy Fairwater to Player');
DELETE FROM `creature_text` WHERE `CreatureID`=126225 AND `GroupID`=0 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (126225, 0, 0, 'Go forth, $n! Protect the people of Drustvar!', 12, 0, 100, 1, 0, 0, 138832, 0, 'Mercy Fairwater to Player');
DELETE FROM `creature_text` WHERE `CreatureID`=126240 AND `GroupID`=0 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (126240, 0, 0, 'If you happen across more foul witches, give them a good righteous punch in the face for me, Champion!', 12, 0, 100, 4, 0, 0, 138830, 0, 'Bridget Fairwater to Player');

-- Wicker-Bound Hunter SAI
SET @GUID := -210338362;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 126262;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,0,0,100,0,8000,8000,40000,40000,11,276880,0,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,1,0,0,0,100,0,5000,5000,20000,20000,11,257258,0,0,0,0,0,2,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,2,0,0,0,100,0,1000,1000,30000,30000,11,257254,0,0,0,0,0,2,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,3,0,0,0,100,0,4000,4000,30000,30000,11,257266,0,0,0,0,0,2,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

-- Mercy Fairwater SAI
SET @GUID := -210338367;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 126253;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,20,0,100,0,48477,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,1,0,52,0,100,0,0,126253,0,0,45,4,1,0,0,0,0,10,210338365,126240,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");
-- Bridget Fairwater SAI
SET @GUID := -210338365;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 126240;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,38,0,100,0,4,1,0,0,1,0,8000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@GUID,0,1,0,52,0,100,0,0,126240,0,0,45,4,2,0,0,0,0,10,210338364,126225,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

-- Aaron Cresterly SAI
SET @GUID := -210338364;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 126225;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,38,0,100,0,4,2,0,0,1,0,6000,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");
