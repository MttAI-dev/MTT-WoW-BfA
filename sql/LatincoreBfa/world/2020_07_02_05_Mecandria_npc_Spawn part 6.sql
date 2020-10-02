

DELETE FROM `creature_template` WHERE `entry`=154906;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (154906, 0, 0, 0, 0, 0, 'Brian Pitchspark', '', '', NULL, NULL, 0, 120, 120, 7, 0, 0, 35, 2, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 10, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
DELETE FROM `creature_template_model` WHERE `CreatureID`=154906 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (154906, 0, 92174, 1, 1, 33528);
DELETE FROM `creature_model_info` WHERE `DisplayID`=92174;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (92174, 1, 1, 0, 34601);
DELETE FROM `creature_queststarter` WHERE `id` = '154906';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('154906', '56380');

DELETE FROM `creature_questender` WHERE `id` = '154906';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('154906', '56380');

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=10, `faction`=7 WHERE `entry`=151981;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=7 WHERE `entry`=151602;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=1, `type`=7, `faction`=14 WHERE `entry`=154091;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=9, `faction`=35 WHERE `entry`=152295;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=9, `faction`=14 WHERE `entry`=151871;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=1, `faction`=31 WHERE `entry`=152092;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `family`=288, `type`=1, `faction`=14 WHERE `entry`=151998;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=14 WHERE `entry`=151985;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=10, `faction`=14 WHERE `entry`=151981;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=4, `type`=9, `faction`=14 WHERE `entry`=152007;

UPDATE creature_template SET skinloot = 152092 WHERE entry = 152092 AND skinloot = 0;
DELETE FROM `skinning_loot_template` WHERE `entry` = '152092';
INSERT INTO `skinning_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('152092', '152541', '0', '96.89609', '0', '1', '0', '1', '2', ''),
('152092', '154164', '0', '63.29285', '0', '1', '0', '1', '1', ''),
('152092', '154165', '0', '15.78947', '0', '1', '0', '1', '1', ''),
('152092', '154722', '0', '13.76518', '0', '1', '0', '1', '1', ''),
('152092', '154898', '0', '9.716599', '0', '1', '0', '1', '4', ''),
('152092', '158751', '0', '93.65722', '0', '1', '0', '1', '1', '');


UPDATE `creature_template` SET `lootid`=151871 WHERE `entry`=151871;
REPLACE INTO `creature_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(151871, 200008, 0, 3, 0, 1, 0, 1, 1, ''), 
(151871, 200002, 0, 3, 0, 1, 0, 1, 1, ''), 
(151871, 163569, 0, 0.01, 0, 1, 0, 7, 10, ''), 
(151871, 200003, 0, 0.1, 0, 1, 0, 1, 1, ''), 
(151871, 166846, 0, 99, 0, 1, 0, 1, 5, ''), 
(151871, 169132, 0, 24, 0, 1, 0, 1, 1, ''), 
(151871, 169135, 0, 24, 0, 1, 0, 1, 1, ''), 
(151871, 169138, 0, 24, 0, 1, 0, 1, 1, ''), 
(151871, 169143, 0, 24, 0, 1, 0, 1, 1, ''), 
(151871, 169224, 0, -0.07, 0, 1, 0, 1, 1, ''), 
(151871, 169225, 0, -0.04, 0, 1, 0, 1, 1, ''), 
(151871, 169226, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151871, 169227, 0, -0.1, 0, 1, 0, 1, 1, ''), 
(151871, 169228, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(151871, 169229, 0, -0.08, 0, 1, 0, 1, 1, ''), 
(151871, 169230, 0, -0.06, 0, 1, 0, 1, 1, ''), 
(151871, 169231, 0, -0.04, 0, 1, 0, 1, 1, ''), 
(151871, 169232, 0, -0.07, 0, 1, 0, 1, 1, ''), 
(151871, 169233, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(151871, 169235, 0, -0.04, 0, 1, 0, 1, 1, ''), 
(151871, 169236, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151871, 169237, 0, -0.08, 0, 1, 0, 1, 1, ''), 
(151871, 169238, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151871, 169239, 0, -0.01, 0, 1, 0, 1, 1, ''), 
(151871, 171248, 0, -6, 0, 1, 0, 1, 2, '');

DELETE FROM `creature_loot_template` WHERE `Entry`=152007;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(152007, 200008, 0, 3, 0, 1, 0, 1, 1, ''), 
(152007, 200002, 0, 3, 0, 1, 0, 1, 1, ''), 
(152007, 200003, 0, 0.1, 0, 1, 0, 1, 1, ''), 
(152007, 166846, 0, 99, 0, 1, 0, 3, 46, ''), 
(152007, 166970, 0, 2, 0, 1, 0, 1, 1, ''), 
(152007, 166971, 0, 34, 0, 1, 0, 1, 1, ''), 
(152007, 167931, 0, 5, 0, 1, 0, 1, 1, ''), 
(152007, 168327, 0, 31, 0, 1, 0, 1, 1, ''),                          
(152007, 168908, 0, -0.64, 0, 1, 0, 1, 1, ''), 
(152007, 169132, 0, 22, 0, 1, 0, 1, 1, ''), 
(152007, 169135, 0, 23, 0, 1, 0, 1, 1, ''), 
(152007, 169138, 0, 24, 0, 1, 0, 1, 1, ''), 
(152007, 169143, 0, 23, 0, 1, 0, 1, 1, ''), 
(152007, 169224, 0, -0.06, 0, 1, 0, 1, 1, ''), 
(152007, 169225, 0, -0.01, 0, 1, 0, 1, 1, ''), 
(152007, 169227, 0, -0.09, 0, 1, 0, 1, 1, ''), 
(152007, 169228, 0, -0.04, 0, 1, 0, 1, 1, ''), 
(152007, 169229, 0, -0.07, 0, 1, 0, 1, 1, ''), 
(152007, 169230, 0, -0.06, 0, 1, 0, 1, 1, ''), 
(152007, 169231, 0, -0.06, 0, 1, 0, 1, 1, ''), 
(152007, 169232, 0, -0.07, 0, 1, 0, 1, 1, ''), 
(152007, 169233, 0, -0.01, 0, 1, 0, 1, 1, ''), 
(152007, 169235, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(152007, 169236, 0, -0.01, 0, 1, 0, 1, 1, ''), 
(152007, 169237, 0, -0.04, 0, 1, 0, 1, 1, ''), 
(152007, 169239, 0, -0.01, 0, 1, 0, 1, 1, ''), 
(152007, 171248, 0, -7, 0, 1, 0, 1, 37, '');

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=9, `faction`=14 WHERE `entry`=149850;
DELETE FROM `creature_loot_template` WHERE `Entry`=149850;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(149850, 200008, 0, 3, 0, 1, 0, 1, 1, ''), 
(149850, 200002, 0, 3, 0, 1, 0, 1, 1, ''), 
(149850, 166846, 0, 99, 0, 1, 0, 1, 5, ''), 
(149850, 169130, 0, 24, 0, 1, 0, 1, 1, ''), 
(149850, 169132, 0, 24, 0, 1, 0, 1, 1, ''), 
(149850, 169135, 0, 25, 0, 1, 0, 1, 1, ''), 
(149850, 169146, 0, 24, 0, 1, 0, 1, 1, ''), 
(149850, 169224, 0, -0.12, 0, 1, 0, 1, 1, ''), 
(149850, 169225, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(149850, 169226, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(149850, 169228, 0, -0.05, 0, 1, 0, 1, 1, ''), 
(149850, 169229, 0, -0.09, 0, 1, 0, 1, 1, ''), 
(149850, 169230, 0, -0.07, 0, 1, 0, 1, 1, ''), 
(149850, 169231, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(149850, 169232, 0, -0.05, 0, 1, 0, 1, 1, ''), 
(149850, 169233, 0, -0.05, 0, 1, 0, 1, 1, ''), 
(149850, 169235, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(149850, 169236, 0, -0.05, 0, 1, 0, 1, 1, ''), 
(149850, 169237, 0, -0.05, 0, 1, 0, 1, 1, ''), 
(149850, 169238, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(149850, 169239, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(149850, 171248, 0, -6, 0, 1, 0, 1, 2, '');

UPDATE creature_template SET skinloot = 149850 WHERE entry = 149850 AND skinloot = 0;
DELETE FROM `skinning_loot_template` WHERE `entry` = 149850;
INSERT INTO `skinning_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(149850, 160502, 0, 100, 0, 1, 0, 1, 4, ''), 
(149850, 163569, 0, 100, 0, 1, 0, 5, 10, ''), 
(149850, 166846, 0, 100, 0, 1, 0, 1, 1, ''), 
(149850, 169130, 0, 100, 0, 1, 0, 1, 1, ''), 
(149850, 169132, 0, 100, 0, 1, 0, 1, 1, ''), 
(149850, 169135, 0, 100, 0, 1, 0, 1, 1, ''), 
(149850, 169138, 0, 100, 0, 1, 0, 1, 1, '');

UPDATE creature_template SET skinloot = 152007 WHERE entry = 152007 AND skinloot = 0;
DELETE FROM `skinning_loot_template` WHERE `entry` = 152007;
INSERT INTO `skinning_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(152007, 160502, 0, 92, 0, 1, 0, 1, 4, ''), 
(152007, 163569, 0, 83, 0, 1, 0, 5, 10, ''), 
(152007, 166846, 0, 100, 0, 1, 0, 1, 1, ''), 
(152007, 169130, 0, 93, 0, 1, 0, 1, 1, ''), 
(152007, 169132, 0, 79, 0, 1, 0, 1, 1, ''), 
(152007, 169135, 0, 84, 0, 1, 0, 1, 1, ''), 
(152007, 169138, 0, 85, 0, 1, 0, 1, 1, '');


DELETE FROM `creature_loot_template` WHERE `Entry`=152092;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(152092, 154898, 0, 25, 0, 1, 0, 1, 4, ''), 
(152092, 158736, 0, 4, 0, 1, 0, 1, 1, ''), 
(152092, 158751, 0, 68, 0, 1, 0, 1, 1, ''), 
(152092, 158860, 0, 27, 0, 1, 0, 1, 1, ''), 
(152092, 200008, 0, 3, 0, 1, 0, -200008, 1, ''), 
(152092, 200002, 0, 3, 0, 1, 0, -200002, 1, '');

DELETE FROM `creature_template_addon` WHERE `entry`=29498;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (29498, 0, 0, 0, 0, 0, 0, 0, 0, 0, '294486');

DELETE FROM `creature_template_addon` WHERE `entry`=152007;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (152007, 0, 0, 0, 0, 0, 0, 0, 0, 0, '294486');
DELETE FROM `creature_template_addon` WHERE `entry`=151871;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (151871, 0, 0, 0, 0, 0, 0, 0, 0, 0, '294486');
DELETE FROM `creature_template_locale` WHERE `entry`=152007 AND `locale`='esES';
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `NameAlt`, `Title`, `TitleAlt`, `VerifiedBuild`) VALUES (152007, 'esES', 'Sierrasesina', NULL, NULL, NULL, 0);

-- Killsaw SAI
SET @ENTRY := 152007;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4000,9000,9000,11,299979,0,0,0,0,0,2,0,0,0,0,0,0,0,"Killsaw - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,1,0,0,0,100,0,30000,35000,30000,32000,11,299428,0,0,0,0,0,1,0,0,0,0,0,0,0,"Killsaw - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,2,0,0,0,100,0,10000,10000,40000,40000,11,299973,0,0,0,0,0,2,0,0,0,0,0,0,0,"Killsaw - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,3,0,2,0,100,0,0,10,0,0,11,299428,0,0,0,0,0,1,0,0,0,0,0,0,0,"Killsaw - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)");

UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 150667;
-- Upgraded Sentry SAI
SET @ENTRY := 150667;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,299498,0,0,0,0,0,2,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=151462;
DELETE FROM `npc_vendor` WHERE `entry` = '151462';
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`, `PlayerConditionID`) VALUES
('151462', '1', '167698', '0', '0', '0', '1', '0'),
('151462', '2', '6256', '0', '0', '0', '1', '0'),
('151462', '3', '6365', '0', '0', '0', '1', '0'),
('151462', '4', '6529', '0', '0', '0', '1', '0'),
('151462', '5', '6530', '0', '0', '0', '1', '0'),
('151462', '6', '6532', '0', '0', '0', '1', '0'),
('151462', '7', '6533', '0', '0', '0', '1', '0'),
('151462', '8', '136377', '0', '0', '0', '1', '0');


UPDATE creature_template SET gossip_menu_id = 9541284 WHERE entry = 151462;
DELETE FROM `gossip_menu_option` WHERE `MenuId`=9541284 AND `OptionIndex`=1;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES (9541284, 1, 1, 'Instrúyeme..', 3266, 5, 16, 28153);
DELETE FROM `gossip_menu_option` WHERE `MenuId`=9541284 AND `OptionIndex`=2;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES (9541284, 2, 3, 'Deja que eche un vistazo a tus mercancías.', 67573, 3, 128, 28153);

DELETE FROM `npc_trainer` WHERE `ID` = '151462';
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `Index`) VALUES
('151462', '7620', '100', '0', '0', '0', '0'),
('151462', '271656', '100000', '0', '0', '0', '0'),
('151462', '271658', '150000', '0', '0', '0', '0'),
('151462', '271660', '200000', '0', '0', '0', '0'),
('151462', '271662', '250000', '0', '0', '0', '0'),
('151462', '271664', '300000', '0', '0', '0', '0'),
('151462', '271672', '400000', '0', '0', '0', '0'),
('151462', '271675', '500000', '0', '0', '0', '0'),
('151462', '271677', '500000', '0', '0', '0', '0');


UPDATE `creature_template` SET `npcflag`=147 WHERE `entry`=151462;
DELETE FROM `creature_queststarter` WHERE `id` = '151462';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('151462', '55055'),
('151462', '55298'),
('151462', '55339'),
('151462', '56305'),
('151462', '56373');

DELETE FROM `creature_questender` WHERE `id` = '151462';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('151462', '55055'),
('151462', '55298'),
('151462', '55299'),
('151462', '55305'),
('151462', '55306'),
('151462', '55307'),
('151462', '55308'),
('151462', '55309'),
('151462', '55310'),
('151462', '55311'),
('151462', '55312'),
('151462', '55313'),
('151462', '55339'),
('151462', '56305'),
('151462', '56373');

UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 159261;
-- HK-3 Aerial Dissuasion Unit SAI
SET @ENTRY := 159261;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,314708,0,0,0,0,0,2,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)"),
(@ENTRY,0,1,0,0,0,100,0,2000,4000,9000,9000,11,299198,0,0,0,0,0,2,0,0,0,0,0,0,0,"Killsaw - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)");

UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `rank`=4, `type`=4, `faction`=14 WHERE `entry`=150575;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 150575;

-- Rumblerocks SAI
SET @ENTRY := 150575;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4000,9000,9000,11,302275,0,0,0,0,0,2,0,0,0,0,0,0,0,"Killsaw - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,1,0,0,0,100,0,30000,35000,30000,32000,11,302276,0,0,0,0,0,1,0,0,0,0,0,0,0,"Killsaw - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,2,0,0,0,100,0,10000,10000,40000,40000,11,302281,0,0,0,0,0,2,0,0,0,0,0,0,0,"Killsaw - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,3,0,2,0,100,0,0,10,0,0,11,302276,0,0,0,0,0,1,0,0,0,0,0,0,0,"Killsaw - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)");

UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 149850;
-- Aerial Patroller XZ-2 SAI
SET @ENTRY := 149850;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,3000,8000,8000,11,299198,0,0,0,0,0,2,0,0,0,0,0,0,0,"Killsaw - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)");

DELETE FROM `creature_loot_template` WHERE `Entry`=150575;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(150575, 166846, 0, 99, 0, 1, 0, 8, 22, ''), 
(150575, 166971, 0, 19, 0, 1, 0, 1, 1, ''), 
(150575, 168001, 0, -13, 0, 1, 0, 1, 1, ''), 
(150575, 168908, 0, -0.7, 0, 1, 0, 1, 1, ''), 
(150575, 171248, 0, -7, 0, 1, 0, 29, 37, '');

-- Sawblade Clearcutter SAI
SET @ENTRY := 151871;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4000,9000,9000,11,299979,0,0,0,0,0,2,0,0,0,0,0,0,0,"Killsaw - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,1,0,0,0,100,0,30000,35000,30000,32000,11,299428,0,0,0,0,0,1,0,0,0,0,0,0,0,"Killsaw - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)");

DELETE FROM `creature_template` WHERE `entry`=159261;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (159261, 0, 0, 0, 0, 0, 'HK-3 Aerial Dissuasion Unit', NULL, '', NULL, NULL, 0, 120, 120, 0, 0, 0, 14, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 159261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 0);

UPDATE `creature` SET `MovementType`='2' WHERE `guid`=2103360742987;
DELETE FROM `creature_addon` WHERE `path_id`=15926101;
INSERT INTO `creature_addon`(`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimkit`,`movementAnimKit`,`meleeAnimKit`,`visibilityDistanceType`,`auras`) VALUES 
(2103360742987,15926101,0,0,0,0,0,0,0,0,0);

DELETE FROM `waypoint_data` WHERE `id`=15926101;
INSERT INTO `waypoint_data`(`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(15926101,1,2488.425537,5803.761719,40.836533,6.031754,5000,0,0,100,0),
(15926101,2,2793.860352,5770.392090,36.529572,6.247729,1000,0,0,100,0),
(15926101,3,2876.766602,5791.555176,29.140829,0.397093,100,0,0,100,0),
(15926101,4,3069.553467,5716.392578,35.917339,0.067202,100,0,0,100,0),
(15926101,5,3252.827148,5732.920898,20.879526,5.729935,100,0,0,100,0),
(15926101,6,3458.169189,5475.811523,59.286476,1.708676,5000,0,0,100,0),
(15926101,7,3252.827148,5732.920898,20.879526,0,100,0,0,100,0),
(15926101,8,3069.553467,5716.392578,35.917339,0,100,0,0,100,0),
(15926101,9,2876.766602,5791.555176,29.140829,0,100,0,0,100,0),
(15926101,10,2793.860352,5770.392090,36.529572,0,1000,0,0,100,0);

DELETE FROM `creature` WHERE `guid`=2103360742987;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(2103360742987, 159261, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2488.425537 ,5803.761719 ,40.836533 ,6.031754 , 300, 0, 0, 43361, 0, 2, 0, 0, 0, 0, 0, '', 0);
UPDATE `creature` SET `MovementType`='2' WHERE `guid`=2103360742987;

DELETE FROM `creature_template` WHERE `entry`=159261;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (159261, 0, 0, 0, 0, 0, 'HK-3 Aerial Dissuasion Unit', NULL, '', NULL, NULL, 0, 120, 120, 0, 0, 0, 14, 0, 4, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 159261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 0);

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=9, `faction`=14 WHERE `entry`=154608;

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=1, `faction`=7 WHERE `entry`=153293;
UPDATE `creature_template` SET `lootid`=153293 WHERE `entry`=153293;
DELETE FROM `creature_loot_template` WHERE `Entry`=153293;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(153293, 154897, 0, 25, 0, 1, 0, 1, 4, ''), 
(153293, 155635, 0, 58, 0, 1, 0, 1, 1, ''),
(153293, 158754, 0, 4, 0, 1, 0, 1, 1, ''),
(153293, 158806, 0, 38, 0, 1, 0, 1, 1, ''), 
(153293, 200008, 0, 3, 0, 1, 0, -200008, 1, ''), 
(153293, 200002, 0, 3, 0, 1, 0, -200002, 1, ''), 
(153293, 200003, 0, 0.1, 0, 1, 0, -200003, 1, '');

DELETE FROM `creature_template` WHERE `entry`=153269;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (153269, 0, 0, 0, 0, 0, 'Rustwing Raven', '', NULL, NULL, NULL, 0, 120, 120, 7, 0, 0, 7, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 153269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=1, `faction`=7 WHERE `entry`=153269;
UPDATE `creature_template` SET `lootid`=153269 WHERE `entry`=153269;
DELETE FROM `creature_loot_template` WHERE `Entry`=153269;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(153269, 154897, 0, 25, 0, 1, 0, 1, 4, ''), 
(153269, 155635, 0, 58, 0, 1, 0, 1, 1, ''), 
(153269, 158754, 0, 3, 0, 1, 0, 1, 1, ''), 
(153269, 158806, 0, 39, 0, 1, 0, 1, 1, ''), 
(153269, 200008, 0, 3, 0, 1, 0, -200008, 1, ''), 
(153269, 200002, 0, 3, 0, 1, 0, -200002, 1, ''), 
(153269, 200003, 0, 0.1, 0, 1, 0, -200003, 1, '');

-- Whirling Zap-O-Matic SAI
SET @ENTRY := 154608;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4000,9000,9000,11,302197,0,0,0,0,0,2,0,0,0,0,0,0,0,"Killsaw - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,1,0,0,0,100,0,10000,15000,10000,12000,11,300755,0,0,0,0,0,1,0,0,0,0,0,0,0,"Killsaw - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)");

UPDATE `creature_template` SET `lootid`=154608 WHERE `entry`=154608;
DELETE FROM `creature_loot_template` WHERE `Entry`=154608;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(154608, 200008, 0, 3, 0, 1, 0, 1, 1, ''), 
(154608, 200002, 0, 3, 0, 1, 0, 1, 1, ''), 
(154608, 166846, 0, 98, 0, 1, 0, 2, 5, ''), 
(154608, 169130, 0, 25, 0, 1, 0, 1, 1, ''), 
(154608, 169132, 0, 25, 0, 1, 0, 1, 1, ''), 
(154608, 169135, 0, 25, 0, 1, 0, 1, 1, ''), 
(154608, 169138, 0, 24, 0, 1, 0, 1, 1, ''), 
(154608, 169224, 0, -0.11, 0, 1, 0, 1, 1, ''), 
(154608, 169227, 0, -0.09, 0, 1, 0, 1, 1, ''), 
(154608, 169228, 0, -0.06, 0, 1, 0, 1, 1, ''), 
(154608, 169229, 0, -0.08, 0, 1, 0, 1, 1, ''), 
(154608, 169230, 0, -0.05, 0, 1, 0, 1, 1, ''), 
(154608, 169231, 0, -0.05, 0, 1, 0, 1, 1, ''), 
(154608, 169232, 0, -0.06, 0, 1, 0, 1, 1, ''), 
(154608, 169236, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(154608, 169237, 0, -0.05, 0, 1, 0, 1, 1, ''), 
(154608, 171248, 0, -5, 1, 0, 0, 1, 2, '');

UPDATE creature_template SET skinloot = 154608 WHERE entry = 154608 AND skinloot = 0;
DELETE FROM `skinning_loot_template` WHERE `entry` = 154608;
INSERT INTO `skinning_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(154608, 160502, 0, 100, 0, 1, 0, 1, 4, ''), 
(154608, 163569, 0, 100, 0, 1, 0, 5, 10, ''), 
(154608, 166846, 0, 100, 0, 1, 0, 1, 1, ''), 
(154608, 169130, 0, 100, 0, 1, 0, 1, 1, ''), 
(154608, 169132, 0, 100, 0, 1, 0, 1, 1, ''), 
(154608, 169135, 0, 100, 0, 1, 0, 1, 1, ''), 
(154608, 169138, 0, 100, 0, 1, 0, 1, 1, '');

UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `rank`=4, `type`=9, `faction`=14 WHERE `entry`=152182;
UPDATE `creature_template` SET `lootid`=152182 WHERE `entry`=152182;
DELETE FROM `creature_loot_template` WHERE `Entry`=152182;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(152182, 200008, 0, 3, 0, 1, 0, 1, 1, ''), 
(152182, 200002, 0, 3, 0, 1, 0, 1, 1, ''), 
(152182, 200003, 0, 0.1, 0, 1, 0, 1, 1, ''), 
(152182, 166846, 0, 97, 0, 1, 0, 2, 21, ''), 
(152182, 166970, 0, 1, 0, 1, 0, 1, 1, ''), 
(152182, 166971, 0, 19, 0, 1, 0, 1, 1, ''), 
(152182, 168370, 0, 0.48, 0, 1, 0, 1, 1, ''), 
(152182, 168908, 0, -1, 0, 1, 0, 1, 1, ''), 
(152182, 169130, 0, 24, 0, 1, 0, 1, 1, ''), 
(152182, 169132, 0, 24, 0, 1, 0, 1, 1, ''),
(152182, 169135, 0, 24, 0, 1, 0, 1, 1, ''), 
(152182, 169138, 0, 24, 0, 1, 0, 1, 1, ''), 
(152182, 169173, 0, -8, 0, 1, 0, 1, 1, ''), 
(152182, 169224, 0, -0.06, 0, 1, 0, 1, 1, ''),
(152182, 169225, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(152182, 169226, 0, -0.02, 0, 1, 0, 1, 1, ''),
(152182, 169227, 0, -0.05, 0, 1, 0, 1, 1, ''),
(152182, 169228, 0, -0.01, 0, 1, 0, 1, 1, ''), 
(152182, 169229, 0, -0.08, 0, 1, 0, 1, 1, ''),
(152182, 169230, 0, -0.07, 0, 1, 0, 1, 1, ''), 
(152182, 169231, 0, -0.04, 0, 1, 0, 1, 1, ''),
(152182, 169232, 0, -0.07, 0, 1, 0, 1, 1, ''),
(152182, 169233, 0, -0.04, 0, 1, 0, 1, 1, ''),
(152182, 169235, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(152182, 169236, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(152182, 169237, 0, -0.05, 0, 1, 0, 1, 1, ''),
(152182, 169238, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(152182, 171248, 0, -6, 0, 1, 0, 1, 37, '');

-- Rustfeather SAI
SET @ENTRY := 152182;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4000,9000,9000,11,258822,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rustfeather - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,1,0,0,0,100,0,20000,25000,20000,22000,11,287174,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rustfeather - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,2,0,0,0,100,0,10000,10000,40000,40000,11,302046,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rustfeather - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,3,0,0,0,100,0,20000,20000,10000,11000,11,288865,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rustfeather - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,4,0,0,0,100,0,11000,11000,60000,70000,11,320297,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rustfeather - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,5,0,32,0,100,0,1,400000,1000,1000,11,255228,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rustfeather - On Damaged Between 1-400000 - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)");

DELETE FROM `creature_template_addon` WHERE `entry`=153269;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (153269, 0, 0, 50331648, 1, 0, 0, 0, 0, 0, '0');
DELETE FROM `creature_template` WHERE `entry`=153269;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (153269, 0, 0, 0, 0, 0, 'Rustwing Raven', '', NULL, NULL, NULL, 0, 120, 120, 7, 0, 0, 2929, 0, 1, 1.14286, 1, 0, 0, 1500, 2000, 1, 1, 1, 32768, 2048, 0, 0, 26, 0, 0, 0, 1, 1, 0, 153269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
DELETE FROM `creature_template` WHERE `entry`=153293;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (153293, 0, 0, 0, 0, 153269, 'Rustwing Scavenger', '', NULL, NULL, NULL, 0, 120, 120, 7, 0, 0, 2929, 0, 1, 1.14286, 1, 0, 0, 1500, 2000, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 153293, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=154655;
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='154655' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '154655';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('154655', '56334');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='154655' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '154655';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('154655', '56334');

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=6, `faction`=14 WHERE `entry`=152976;
UPDATE `creature_template` SET `lootid`=152976 WHERE `entry`=152976;
DELETE FROM `creature_loot_template` WHERE `Entry`=152976;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(152976, 37081, 0, 5, 0, 1, 0, 1, 1, ''), 
(152976, 166846, 0, 100, 0, 1, 0, 3, 5, '');

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=154122;
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='154122' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '154122';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('154122', '56410'),
('154122', '56421'),
('154122', '56423'),
('154122', '56424'),
('154122', '56425');

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=9, `faction`=14 WHERE `entry`=159751;

DELETE FROM `creature_template` WHERE `entry`=159758;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (159758, 0, 0, 0, 0, 0, 'Insurgent Machinist', NULL, '', NULL, NULL, 0, 120, 120, 0, 0, 0, 14, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 153570, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 0);
DELETE FROM `creature_template_model` WHERE `CreatureID`=159758 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (159758, 0, 91211, 1, 1, 33528);
DELETE FROM `creature_model_info` WHERE `DisplayID`=91211;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (91211, 1, 1, 0, 34601);
DELETE FROM `creature_model_info` WHERE `DisplayID`=91123;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (91123, 1, 1, 0, 34601);

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=14 WHERE `entry`=151604;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=1, `type`=9, `faction`=14 WHERE `entry`=151324;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=1, `type`=9, `faction`=14 WHERE `entry`=151606;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=1, `type`=9, `faction`=14 WHERE `entry`=151326;

UPDATE `creature_template` SET `lootid`=151604 WHERE `entry`=151604;
DELETE FROM `creature_loot_template` WHERE `Entry`=151604;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(151604, 200001, 0, 5, 0, 1, 0, 1, 1, ''), 
(151604, 200008, 0, 3, 0, 1, 0, 1, 1, ''), 
(151604, 200002, 0, 3, 0, 1, 0, 1, 1, ''), 
(151604, 200003, 0, 0.1, 0, 1, 0, 1, 1, ''), 
(151604, 166846, 0, 100, 0, 1, 0, 2, 5, ''), 
(151604, 166971, 0, 2, 0, 1, 0, 1, 1, ''), 
(151604, 168215, 0, 17, 0, 1, 0, 1, 1, ''), 
(151604, 168216, 0, 25, 0, 1, 0, 1, 2, ''), 
(151604, 168217, 0, 45, 0, 1, 0, 1, 3, ''), 
(151604, 168950, 0, 1, 0, 1, 0, 1, 1, ''), 
(151604, 168951, 0, 2, 0, 1, 0, 1, 2, ''), 
(151604, 168952, 0, 4, 0, 1, 0, 1, 3, ''), 
(151604, 168961, 0, 1, 0, 1, 0, 1, 1, ''), 
(151604, 169224, 0, -0.05, 0, 1, 0, 1, 1, ''), 
(151604, 169225, 0, -0.04, 0, 1, 0, 1, 1, ''), 
(151604, 169226, 0, -0.01, 0, 1, 0, 1, 1, ''), 
(151604, 169227, 0, -0.06, 0, 1, 0, 1, 1, ''), 
(151604, 169228, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151604, 169229, 0, -0.08, 0, 1, 0, 1, 1, ''), 
(151604, 169230, 0, -0.08, 0, 1, 0, 1, 1, ''), 
(151604, 169231, 0, -0.04, 0, 1, 0, 1, 1, ''), 
(151604, 169232, 0, -0.08, 0, 1, 0, 1, 1, ''), 
(151604, 169233, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151604, 169235, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(151604, 169236, 0, -0.01, 0, 1, 0, 1, 1, ''), 
(151604, 169237, 0, -0.06, 0, 1, 0, 1, 1, ''), 
(151604, 169238, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151604, 169239, 0, -0.01, 0, 1, 0, 1, 1, ''), 
(151604, 171248, 0, -4, 0, 1, 0, 1, 2, '');

UPDATE `creature_template` SET `lootid`=151606 WHERE `entry`=151606;
DELETE FROM `creature_loot_template` WHERE `Entry`=151606;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(151606, 200008, 0, 3, 0, 1, 0, 1, 1, ''), 
(151606, 200002, 0, 3, 0, 1, 0, 1, 1, ''), 
(151606, 163569, 0, 0.02, 0, 1, 0, 5, 9, ''), 
(151606, 200003, 0, 0.1, 0, 1, 0, 1, 1, ''), 
(151606, 166846, 0, 99, 0, 1, 0, 6, 12, ''), 
(151606, 166971, 0, 2, 0, 1, 0, 1, 1, ''), 
(151606, 168215, 0, 17, 0, 1, 0, 1, 1, ''), 
(151606, 168216, 0, 24, 0, 1, 0, 1, 2, ''), 
(151606, 168217, 0, 45, 0, 1, 0, 1, 3, ''), 
(151606, 168950, 0, 0.96, 0, 1, 0, 1, 1, ''), 
(151606, 168951, 0, 1, 0, 1, 0, 1, 2, ''), 
(151606, 168952, 0, 3, 0, 1, 0, 1, 3, ''), 
(151606, 169130, 0, 24, 0, 1, 0, 1, 1, ''), 
(151606, 169132, 0, 24, 0, 1, 0, 1, 1, ''), 
(151606, 169135, 0, 24, 0, 1, 0, 1, 1, ''), 
(151606, 169138, 0, 24, 0, 1, 0, 1, 1, ''), 
(151606, 169224, 0, -0.14, 0, 1, 0, 1, 1, ''), 
(151606, 169225, 0, -0.05, 0, 1, 0, 1, 1, ''), 
(151606, 169226, 0, -0.01, 0, 1, 0, 1, 1, ''), 
(151606, 169227, 0, -0.13, 0, 1, 0, 1, 1, ''), 
(151606, 169228, 0, -0.05, 0, 1, 0, 1, 1, ''), 
(151606, 169229, 0, -0.15, 0, 1, 0, 1, 1, ''), 
(151606, 169230, 0, -0.1, 0, 1, 0, 1, 1, ''), 
(151606, 169231, 0, -0.05, 0, 1, 0, 1, 1, ''), 
(151606, 169232, 0, -0.11, 0, 1, 0, 1, 1, ''), 
(151606, 169233, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(151606, 169235, 0, -0.04, 0, 1, 0, 1, 1, ''), 
(151606, 169236, 0, -0.04, 0, 1, 0, 1, 1, ''), 
(151606, 169237, 0, -0.14, 0, 1, 0, 1, 1, ''), 
(151606, 169238, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151606, 169239, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151606, 171248, 0, -8, 0, 1, 0, 1, 2, '');

UPDATE `creature_template` SET `lootid`=151324 WHERE `entry`=151324;
DELETE FROM `creature_loot_template` WHERE `Entry`=151324;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(151324, 200008, 0, 3, 0, 1, 0, 1, 1, ''), 
(151324, 200002, 0, 3, 0, 1, 0, 1, 1, ''), 
(151324, 163569, 0, 0.01, 0, 1, 0, 5, 10, ''), 
(151324, 200003, 0, 0.1, 0, 1, 0, 1, 1, ''), 
(151324, 166846, 0, 98, 0, 1, 0, 2, 6, ''), 
(151324, 166971, 0, 2, 0, 1, 0, 1, 1, ''), 
(151324, 168215, 0, 17, 0, 1, 0, 1, 1, ''), 
(151324, 168216, 0, 25, 0, 1, 0, 1, 2, ''), 
(151324, 168217, 0, 45, 0, 1, 0, 1, 3, ''), 
(151324, 168950, 0, 1, 0, 1, 0, 1, 1, ''), 
(151324, 168951, 0, 2, 0, 1, 0, 1, 2, ''), 
(151324, 168952, 0, 3, 0, 1, 0, 1, 3, ''), 
(151324, 169130, 0, 24, 0, 1, 0, 1, 1, ''), 
(151324, 169132, 0, 25, 0, 1, 0, 1, 1, ''), 
(151324, 169135, 0, 24, 0, 1, 0, 1, 1, ''), 
(151324, 169145, 0, 24, 0, 1, 0, 1, 1, ''), 
(151324, 169224, 0, -0.07, 0, 1, 0, 1, 1, ''), 
(151324, 169225, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151324, 169226, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151324, 169227, 0, -0.05, 0, 1, 0, 1, 1, ''), 
(151324, 169228, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(151324, 169229, 0, -0.06, 0, 1, 0, 1, 1, ''), 
(151324, 169230, 0, -0.07, 0, 1, 0, 1, 1, ''), 
(151324, 169231, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151324, 169232, 0, -0.06, 0, 1, 0, 1, 1, ''), 
(151324, 169233, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151324, 169235, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151324, 169236, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(151324, 169237, 0, -0.07, 0, 1, 0, 1, 1, ''), 
(151324, 169238, 0, -0.01, 0, 1, 0, 1, 1, ''), 
(151324, 169239, 0, -0.01, 0, 1, 0, 1, 1, ''), 
(151324, 169593, 0, -0.19, 0, 1, 0, 1, 1, ''), 
(151324, 171248, 0,-8, 0, 1, 0, 1, 2, '');

UPDATE `creature_template` SET `lootid`=151326 WHERE `entry`=151326;
DELETE FROM `creature_loot_template` WHERE `Entry`=151326;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(151326, 200008, 0, 3, 0, 1, 0, 1, 1, ''), 
(151326, 200002, 0, 3, 0, 1, 0, 1, 1, ''), 
(151326, 163569, 0, 0.01, 0, 1, 0, 5, 10, ''), 
(151326, 200003, 0, 0.1, 0, 1, 0, 1, 1, ''), 
(151326, 166846, 0, 99, 0, 1, 0, 1, 6, ''), 
(151326, 166971, 0, 2, 0, 1, 0, 1, 1, ''), 
(151326, 168215, 0, 17, 0, 1, 0, 1, 1, ''), 
(151326, 168216, 0, 25, 0, 1, 0, 1, 2, ''), 
(151326, 168217, 0, 44, 0, 1, 0, 1, 3, ''), 
(151326, 168950, 0, 1, 0, 1, 0, 1, 1, ''), 
(151326, 168951, 0, 1, 0, 1, 0, 1, 2, ''), 
(151326, 168952, 0, 3, 0, 1, 0, 1, 3, ''), 
(151326, 169130, 0, 24, 0, 1, 0, 1, 1, ''), 
(151326, 169132, 0, 24, 0, 1, 0, 1, 1, ''), 
(151326, 169135, 0, 24, 0, 1, 0, 1, 1, ''), 
(151326, 169145, 0, 24, 0, 1, 0, 1, 1, ''), 
(151326, 169224, 0, -0.07, 0, 1, 0, 1, 1, ''), 
(151326, 169225, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151326, 169226, 0, -0.01, 0, 1, 0, 1, 1, ''), 
(151326, 169227, 0, -0.06, 0, 1, 0, 1, 1, ''), 
(151326, 169228, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151326, 169229, 0, -0.07, 0, 1, 0, 1, 1, ''), 
(151326, 169230, 0, -0.07, 0, 1, 0, 1, 1, ''), 
(151326, 169231, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(151326, 169232, 0, -0.05, 0, 1, 0, 1, 1, ''), 
(151326, 169233, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(151326, 169235, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151326, 169236, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(151326, 169237, 0, -0.07, 0, 1, 0, 1, 1, ''), 
(151326, 169238, 0, -0.01, 0, 1, 0, 1, 1, ''), 
(151326, 169239, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151326, 171248, 0, -8, 0, 1, 0, 1, 2, '');

DELETE FROM `creature_template` WHERE `entry`=151604;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (151604, 0, 0, 0, 0, 0, 'Anodized Troubleshooter', NULL, '', NULL, NULL, 0, 120, 120, 0, 0, 0, 14, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 153570, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 0);
DELETE FROM `creature_template_model` WHERE `CreatureID`=151604 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (151604, 0, 91205, 1, 1, 33528);
DELETE FROM `creature_model_info` WHERE `DisplayID`=91205;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (91205, 1, 1, 0, 34601);

DELETE FROM `creature_template` WHERE `entry`=151605;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (151605, 0, 0, 0, 0, 0, 'Anodized Machinist', NULL, '', NULL, NULL, 0, 120, 120, 0, 0, 0, 14, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 153570, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 0);
DELETE FROM `creature_template_model` WHERE `CreatureID`=151605 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (151605, 0, 91211, 1, 1, 33528);
DELETE FROM `creature_model_info` WHERE `DisplayID`=91211;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (91211, 1, 1, 0, 34601);

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=14 WHERE `entry`=151605;

UPDATE `creature_template` SET `lootid`=151605 WHERE `entry`=151605;
DELETE FROM `creature_loot_template` WHERE `Entry`=151605;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(151605, 200001, 0, 5, 0, 1, 0, 1, 1, ''), 
(151605, 200008, 0, 3, 0, 1, 0, 1, 1, ''), 
(151605, 200002, 0, 3, 0, 1, 0, 1, 1, ''), 
(151605, 200003, 0, 0.1,  0,1, 0, 1, 1, ''), 
(151605, 166846, 0, 100, 0, 1, 0, 2, 5, ''), 
(151605, 166971, 0, 2, 0, 1, 0, 1, 1, ''), 
(151605, 168215, 0, 17, 0, 1, 0, 1, 1, ''), 
(151605, 168216, 0, 25, 0, 1, 0, 1, 2, ''), 
(151605, 168217, 0, 45, 0, 1, 0, 1, 3, ''), 
(151605, 168950, 0, 1, 0, 1, 0, 1, 1, ''), 
(151605, 168951, 0, 2, 0, 1, 0, 1, 2, ''), 
(151605, 168952, 0, 3, 0, 1, 0, 1, 3, ''), 
(151605, 168961, 0, 1, 0, 1, 0, 1, 1, ''), 
(151605, 169224, 0, -0.07, 0, 1, 0, 1, 1, ''), 
(151605, 169225, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(151605, 169226, 0, -0.01, 0, 1, 0, 1, 1, ''), 
(151605, 169227, 0, -0.05, 0, 1, 0, 1, 1, ''), 
(151605, 169228, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(151605, 169229, 0, -0.07, 0, 1, 0, 1, 1, ''), 
(151605, 169230, 0, -0.06, 0, 1, 0, 1, 1, ''), 
(151605, 169231, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(151605, 169232, 0, -0.05, 0, 1, 0, 1, 1, ''), 
(151605, 169233, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(151605, 169235, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151605, 169236, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151605, 169237, 0, -0.05, 0, 1, 0, 1, 1, ''), 
(151605, 169238, 0, -0.01, 0, 1, 0, 1, 1, ''), 
(151605, 169239, 0, -0.01, 0, 1, 0, 1, 1, ''), 
(151605, 171248, 0, -3, 0, 1, 0, 1, 2, '');

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=9, `faction`=14 WHERE `entry`=152380;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=4, `faction`=14 WHERE `entry`=152964;
UPDATE `creature_template` SET `lootid`=152964 WHERE `entry`=152964;
DELETE FROM `creature_loot_template` WHERE `Entry`=152964;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(152964, 11764, 0, 5, 0, 1, 0, 1, 1, ''), 
(152964, 166846, 0, 100, 0, 1, 0, 3, 5, '');

DELETE FROM `creature` WHERE `guid`=2103360743191;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743191, 152182, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2458.34, 5085.89, 150.796, 0.832142, 3000, 0, 0, 476973, 295105, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743154;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743154, 153293, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2456.44, 5173.03, 127.298, 5.36695, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743155;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743155, 153293, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2466.87, 5166.13, 130.971, 2.08006, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743185;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743185, 153293, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2491.37, 5028.63, 159.198, 4.43746, 120, 5, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743186;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743186, 153293, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2482.77, 5012.55, 160.468, 1.04769, 120, 5, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743187;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743187, 153293, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2498.49, 5053.95, 150.821, 1.62496, 120, 5, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743190;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743190, 153293, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2508.82, 5114.5, 135.942, 4.47168, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743192;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743192, 153293, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2488.46, 5138.6, 137.395, 4.5565, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743170;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743170, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2498.54, 5101.6, 146.801, 1.59737, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743174;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743174, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2476.07, 5087.01, 149.379, 5.53557, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743175;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743175, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2489.83, 5085.56, 151.553, 0.552218, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743176;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743176, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2498.33, 5058.89, 156.368, 1.83085, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743177;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743177, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2494.99, 5042.52, 151.634, 5.38556, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743178;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743178, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2451.76, 5092.69, 159.426, 0.26712, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743179;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743179, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2446.8, 5059.95, 158.059, 5.25832, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743180;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743180, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2453.05, 5056.97, 159.081, 1.91644, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743181;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743181, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2429.99, 5049.94, 165.616, 0.733538, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743182;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743182, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2461.4, 5054.77, 166.293, 1.18436, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743183;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743183, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2467.95, 5041.71, 152.861, 5.04536, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743184;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743184, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2479.48, 5027.62, 171.836, 4.77833, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743188;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743188, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2510.86, 5072.47, 140.946, 2.4135, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743173;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743173, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2458.67, 5118.79, 148.523, 5.02406, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743172;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743172, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2503.8, 5110.87, 139.911, 3.42421, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743158;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743158, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2451.48, 5173.47, 131.423, 4.36254, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743159;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743159, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2442.31, 5212.13, 132.183, 1.04973, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743160;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743160, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2487.93, 5176.21, 142.723, 6.18466, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743161;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743161, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2511.09, 5162.78, 137.79, 2.99829, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743162;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743162, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2529.65, 5180.05, 141.793, 2.97001, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743163;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743163, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2477.38, 5140.42, 140.331, 3.64296, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743164;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743164, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2485.67, 5138.09, 146.317, 4.3883, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743165;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743165, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2463.77, 5145.83, 150.698, 1.68261, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743166;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743166, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2440.07, 5146.6, 154.632, 5.8927, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743167;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743167, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2460.78, 5165.04, 146.676, 2.38432, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743168;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743168, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2456.85, 5170.38, 147.893, 0.150658, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743169;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743169, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2499.91, 5107.12, 147.502, 2.06861, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743189;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743189, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2447.87, 4994.73, 141.863, 1.1141, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360742990;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742990, 151667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3273.32, 5165.46, 23.8635, 3.48373, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742991;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742991, 151667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3292.95, 5153.3, 24.833, 3.81831, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743001;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743001, 151667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3267.72, 5247, 18.3364, 4.68913, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743004;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743004, 151667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3323.26, 5241.36, 22.8836, 3.57779, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743005;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743005, 151667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3317.89, 5263.91, 22.1483, 3.64847, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743019;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743019, 151667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3199.22, 5306.86, 16.331, 3.48745, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743025;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743025, 151667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3121.14, 5299.71, 20.579, 5.66825, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360742992;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742992, 151720, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3268.23, 5135.38, 23.9748, 1.88544, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743047;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743047, 151720, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3236.85, 5380.77, 36.7557, 3.10135, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743053;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743053, 151720, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3147.98, 5417.97, 49.3741, 3.28177, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743045;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743045, 151663, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3251.12, 5389.26, 36.1707, 5.48211, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743035;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743035, 151663, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3181.88, 5360.89, 34.6425, 1.65485, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743034;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743034, 151663, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3176.68, 5364.62, 34.8235, 6.03737, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743024;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743024, 151663, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3124.56, 5269.23, 20.1668, 5.99286, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743020;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743020, 151663, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3167.74, 5329.62, 14.2519, 4.44171, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743012;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743012, 151663, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3355.34, 5251.25, 21.571, 2.10908, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743000;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743000, 151663, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3289.95, 5195.73, 23.3568, 5.19572, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742993;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742993, 151663, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3289.77, 5137.77, 23.6751, 2.31193, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743052;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743052, 151663, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3127.57, 5412.62, 38.1996, 3.34617, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360742994;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742994, 154091, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3299.66, 5121.11, 24.2563, 0.920202, 300, 0, 0, 882159, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743030;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743030, 154091, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3066.2, 5331.38, 15.8703, 1.72947, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743031;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743031, 154091, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3035.74, 5327.31, 15.1237, 3.35524, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360742999;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742999, 151660, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3233.73, 5212.82, 21.7026, 0.243776, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743033;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743033, 151660, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3171.84, 5398.73, 36.2583, 3.5398, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743051;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743051, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3126.43, 5417.17, 38.7894, 4.03182, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743017;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743017, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3169.79, 5289.31, 16.5167, 1.95592, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743016;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743016, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3182.65, 5276.38, 15.9926, 2.3172, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743015;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743015, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3167.9, 5284.18, 18.3015, 1.91273, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743014;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743014, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3174.84, 5268.19, 17.1499, 2.21903, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743009;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743009, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3333.91, 5259.19, 20.8218, 2.83164, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743008;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743008, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3329.27, 5256.42, 20.535, 1.92844, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743007;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743007, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3327.22, 5270.78, 21.4212, 4.44564, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743006;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743006, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3332.12, 5263.5, 21.0286, 1.71639, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743003;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743003, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3260.19, 5251.32, 19.7519, 5.98897, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743002;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743002, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3258.04, 5249.16, 20.2756, 4.29251, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742998;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742998, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3226.48, 5232.91, 19.9879, 2.68636, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742997;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742997, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3234.41, 5221.73, 19.7598, 2.69421, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743021;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743021, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3139.65, 5288.07, 20.5659, 4.80299, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743022;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743022, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3142.45, 5269.35, 19.1816, 4.21787, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743026;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743026, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3077.95, 5312.19, 18.6976, 2.29104, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743050;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743050, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3131.38, 5409.95, 37.4009, 3.30925, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743049;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743049, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3123.2, 5409.06, 37.7671, 3.99019, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743046;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743046, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3232.94, 5387.91, 36.2193, 5.77249, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743044;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743044, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3251.11, 5412.26, 36.0745, 2.73479, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743043;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743043, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3244.1, 5411.04, 36.1989, 2.64055, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743042;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743042, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3251.25, 5418.73, 35.1405, 2.75443, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743041;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743041, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3245.65, 5422.11, 36.2563, 2.09075, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743040;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743040, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3217.4, 5393.82, 35.8088, 4.96531, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743039;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743039, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3214.94, 5402.66, 36.7184, 5.06348, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743032;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743032, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3145.54, 5348.71, 27.0151, 1.64699, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743029;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743029, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3054.26, 5325.08, 15.2536, 0.178308, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743028;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743028, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3061.65, 5315.25, 16.157, 4.69043, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743027;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743027, 152960, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3075.67, 5323.45, 17.6053, 6.04524, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743010;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743010, 151998, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3366.35, 5257.21, 21.3823, 1.04487, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743013;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743013, 151998, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3366.44, 5280.17, 20.1671, 2.47036, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743018;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743018, 151998, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3172.87, 5300.32, 14.6604, 4.75195, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743023;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743023, 151998, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3127.75, 5263.51, 20.6348, 6.26775, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743037;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743037, 153699, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3224.77, 5344.54, 43.8837, 2.723, 300, 0, 0, 65041, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743036;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743036, 148292, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3227.47, 5343.37, 44.9652, 2.74263, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743048;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743048, 159271, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3216.55, 5426.76, 86.3988, 5.14476, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743358;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743358, 152779, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3235.85, 5423.69, 36.2156, 3.34543, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743054;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743054, 151985, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3078.5, 5382.9, 42.5996, 5.95997, 300, 0, 0, 86722, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743055;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743055, 151985, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3068.32, 5391.59, 43.7551, 2.21912, 300, 0, 0, 86722, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743060;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743060, 151981, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3053.99, 5366.37, 45.4215, 5.36306, 300, 0, 0, 2168, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743059;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743059, 151981, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3016.45, 5390.29, 45.1561, 0.446472, 300, 0, 0, 2168, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743058;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743058, 151981, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3031.16, 5402.64, 44.338, 5.16672, 300, 0, 0, 2168, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743057;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743057, 151981, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3073.85, 5390.65, 42.8445, 4.05381, 300, 0, 0, 2168, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743056;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743056, 151981, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3067.86, 5377.94, 44.3159, 3.89752, 300, 0, 0, 2168, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743061;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743061, 151981, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3027.53, 5356.56, 45.756, 0.697799, 300, 0, 0, 2168, 0, 0, 0, 0, 0, 0, 0, '', 0);

UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `rank`=2, `type`=9, `faction`=14 WHERE `entry`=151934;

UPDATE `creature_template` SET `lootid`=151934 WHERE `entry`=151934;
DELETE FROM `creature_loot_template` WHERE `Entry`=151934;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(151934, 200008, 0, 3, 0, 1, 0, 1, 1, ''), 
(151934, 200002, 0, 3, 0, 1, 0, 1, 1, ''), 
(151934, 200003, 0, 0.1, 0, 1, 0, 1, 1, ''), 
(151934, 166846, 0, 99, 0, 1, 0, 2, 22, ''), 
(151934, 166970, 0, 1, 0, 1, 0, 1, 1, ''), 
(151934, 166971, 0, 19, 0, 1, 0, 1, 1, ''), 
(151934, 168327, 0, 32, 0, 1, 0, 1, 1, ''), 
(151934, 168823, 0, 0.32, 0, 1, 0, 1, 1, ''), 
(151934, 168908, 0, -1, 0, 1, 0, 1, 1, ''), 
(151934, 169130, 0, 23, 0, 1, 0, 1, 1, ''), 
(151934, 169135, 0, 23, 0, 1, 0, 1, 1, ''), 
(151934, 169138, 0, 23, 0, 1, 0, 1, 1, ''), 
(151934, 169139, 0, 23, 0, 1, 0, 1, 1, ''), 
(151934, 169224, 0, -0.06, 0, 1, 0, 1, 1, ''), 
(151934, 169225, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(151934, 169227, 0, -0.06, 0, 1, 0, 1, 1, ''), 
(151934, 169228, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151934, 169229, 0, -0.05, 0, 1, 0, 1, 1, ''), 
(151934, 169230, 0, -0.07, 0, 1, 0, 1, 1, ''), 
(151934, 169231, 0, -0.06, 0, 1, 0, 1, 1, ''), 
(151934, 169232, 0, -0.07, 0, 1, 0, 1, 1, ''), 
(151934, 169233, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151934, 169235, 0, -0.03, 0, 1, 0, 1, 1, ''), 
(151934, 169236, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151934, 169237, 0, -0.04, 0, 1, 0, 1, 1, ''), 
(151934, 169238, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151934, 169239, 0, -0.02, 0, 1, 0, 1, 1, ''), 
(151934, 171248, 0, -7, 0, 1, 0, 1, 37, '');

UPDATE creature_template SET skinloot = 151934 WHERE entry = 151934 AND skinloot = 0;
DELETE FROM `skinning_loot_template` WHERE `entry` = 151934;
INSERT INTO `skinning_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(151934, 160502, 0, 100, 0, 1, 0, 1, 4, ''), 
(151934, 163569, 0, 100, 0, 1, 0, 5, 10, ''), 
(151934, 166846, 0, 100, 0, 1, 0, 1, 1, ''), 
(151934, 169130, 0, 100, 0, 1, 0, 1, 1, ''), 
(151934, 169132, 0, 100, 0, 1, 0, 1, 1, ''), 
(151934, 169135, 0, 100, 0, 1, 0, 1, 1, ''), 
(151934, 169138, 0, 100, 0, 1, 0, 1, 1, '');

UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 151934;
-- Arachnoid Harvester SAI
SET @ENTRY := 151934;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4000,9000,9000,11,299102,0,0,0,0,0,2,0,0,0,0,0,0,0,"Arachnoid Harvester - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,1,0,0,0,100,0,30000,35000,30000,32000,11,299086,0,0,0,0,0,2,0,0,0,0,0,0,0,"Arachnoid Harvester - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,2,0,0,0,100,0,10000,10000,40000,40000,11,150485,0,0,0,0,0,2,0,0,0,0,0,0,0,"Arachnoid Harvester - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)");

DELETE FROM `creature` WHERE `guid`=2103360743359;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743359, 151934, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3044.25, 5386.01, 43.7901, 1.08789, 300, 0, 0, 1263, 60, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743062;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743062, 151602, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3101.14, 5483, 39.8534, 2.02103, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743063;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743063, 151602, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3123.36, 5488.22, 38.3155, 4.01702, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743064;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743064, 151602, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3094.32, 5529.61, 39.6212, 6.00643, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743065;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743065, 151602, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3125.8, 5536.75, 38.3012, 1.49274, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743067;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743067, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3098.95, 5576.76, 41.7081, 5.49858, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743116;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743116, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2991.67, 5451.68, 48.7168, 4.57102, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743121;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743121, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2944.02, 5483.94, 56.2811, 0.470036, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743122;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743122, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2948.11, 5478.34, 55.2809, 0.964835, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743123;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743123, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3022.94, 5498.67, 49.641, 4.15577, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743124;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743124, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3019.34, 5544.43, 55.6441, 0.820176, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743125;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743125, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3016.49, 5560.72, 56.6187, 5.67394, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743128;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743128, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2926.77, 5541.39, 92.2501, 3.29889, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743129;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743129, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2916.28, 5549.39, 93.8529, 4.67805, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743130;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743130, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2914.81, 5580.84, 91.5044, 1.39195, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743131;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743131, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2919.7, 5623.87, 90.013, 5.26035, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743133;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743133, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2944.88, 5637.26, 81.4493, 5.19595, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743115;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743115, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3015.34, 5483.32, 50.9398, 0.464957, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743103;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743103, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3040.4, 5563, 44.0829, 3.5028, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743101;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743101, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3074.95, 5609.76, 35.0334, 4.41894, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743068;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743068, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3054.11, 5602.2, 35.4899, 2.8188, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743069;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743069, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3099.77, 5629.65, 30.0057, 1.0281, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743070;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743070, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3140.57, 5609.3, 43.531, 0.145308, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743071;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743071, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3114.63, 5642.57, 26.1025, 3.40195, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743072;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743072, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3023.62, 5628.39, 29.6287, 2.81761, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743075;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743075, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3013.04, 5666.7, 14.6819, 5.58848, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743076;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743076, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3038.84, 5669.33, 13.9616, 1.55107, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743078;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743078, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3138.31, 5573.7, 48.4418, 5.2228, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743079;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743079, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3175.11, 5582.56, 58.0876, 3.11244, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743082;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743082, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3181.29, 5629.78, 37.2137, 3.67635, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743083;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743083, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3196.78, 5668.72, 26.8606, 2.18802, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743134;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743134, 151871, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2951.33, 5638.25, 79.454, 5.69547, 300, 0, 0, 56369, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743073;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743073, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3034.55, 5627.31, 28.7137, 0.382866, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743118;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743118, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2891.81, 5403.63, 47.7615, 5.448, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743119;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743119, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2895.01, 5399.75, 47.015, 2.35746, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743127;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743127, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2957.01, 5587.55, 83.7334, 5.33386, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743132;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743132, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2920.91, 5624.81, 89.6572, 5.49911, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743135;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743135, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2889.89, 5650.34, 91.4636, 4.5597, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743136;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743136, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2889.16, 5646.48, 92.9762, 1.25552, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743233;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743233, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2867.91, 5208.63, 39.0332, 2.39418, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743234;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743234, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2868.03, 5220.84, 39.6775, 2.61336, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743235;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743235, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2868.83, 5220.84, 39.677, 4.38522, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743236;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743236, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2857.56, 5249.96, 40.1267, 5.29236, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743237;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743237, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2874.53, 5254.61, 41.1028, 0.643585, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743260;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743260, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2835.08, 5040.54, 25.1785, 5.44869, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743261;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743261, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2818.67, 5060.71, 28.2766, 5.82961, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743262;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743262, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2821.32, 5065.47, 28.135, 5.50917, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743117;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743117, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2930.85, 5445.74, 50.4066, 1.76715, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743114;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743114, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3000.73, 5494.39, 52.5155, 1.3159, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743104;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743104, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3089.65, 5646.55, 25.5832, 1.99921, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743074;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743074, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3016.99, 5666.1, 14.215, 6.13748, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743077;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743077, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3037.24, 5667.28, 14.6642, 2.11499, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743080;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743080, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3174.34, 5585.17, 57.6955, 3.6582, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743081;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743081, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3180.88, 5631.52, 36.6926, 3.22632, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743084;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743084, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3198.71, 5668.05, 26.9433, 3.30014, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743087;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743087, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3252.44, 5635.32, 24.8218, 2.79505, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743088;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743088, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3234.17, 5672.69, 22.292, 4.72418, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743089;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743089, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3267.35, 5684.85, 19.242, 3.78484, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743090;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743090, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3280.82, 5687.04, 20.4162, 4.84355, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743091;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743091, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3288.8, 5678.62, 21.8123, 2.96252, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743097;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743097, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3092.52, 5682.7, 2.50085, 2.95495, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743098;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743098, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3083.2, 5681.39, 5.62408, 3.50316, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743099;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743099, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3083.39, 5688.32, 4.67327, 4.07022, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743100;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743100, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3072.49, 5611.75, 34.5454, 4.90274, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743263;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743263, 150667, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2831.86, 5022.01, 28.5417, 1.34814, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743085;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743085, 152092, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3211.17, 5637.25, 29.7832, 1.533, 300, 0, 0, 52033, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743151;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743151, 152092, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2417.55, 5252.52, 128.834, 1.04891, 300, 0, 0, 52033, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743150;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743150, 152092, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2469.11, 5323.2, 171.84, 3.61577, 300, 0, 0, 52033, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743149;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743149, 152092, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2518.74, 5348.13, 190.71, 6.18245, 300, 0, 0, 52033, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743148;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743148, 152092, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2476.78, 5404.99, 209.852, 6.10391, 300, 0, 0, 52033, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743147;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743147, 152092, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2451.71, 5453.66, 214.816, 4.59438, 300, 0, 0, 52033, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743146;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743146, 152092, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2501.58, 5492.8, 244.973, 2.54371, 300, 0, 0, 52033, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743145;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743145, 152092, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2524.88, 5445.56, 243.194, 4.29593, 300, 0, 0, 52033, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743144;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743144, 152092, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2547.14, 5402.59, 206.994, 3.96669, 300, 0, 0, 52033, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743143;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743143, 152092, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2591.38, 5428.48, 197.54, 1.35995, 300, 0, 0, 52033, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743142;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743142, 152092, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2632.99, 5479.38, 217.451, 3.17658, 300, 0, 0, 52033, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743141;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743141, 152092, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2691.49, 5495.78, 203.307, 5.66079, 300, 0, 0, 52033, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743140;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743140, 152092, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2674.97, 5526.32, 216.043, 2.04717, 300, 0, 0, 52033, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743139;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743139, 152092, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2740.07, 5538.93, 190.405, 0.10645, 300, 0, 0, 52033, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743138;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743138, 152092, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2823.92, 5618.17, 115.724, 4.57694, 300, 0, 0, 52033, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743137;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743137, 152092, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2873.79, 5630.51, 99.8494, 2.49643, 300, 0, 0, 52033, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743126;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743126, 152092, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2978.62, 5556.16, 73.2061, 5.72499, 300, 0, 0, 52033, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743102;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743102, 152092, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3015.7, 5575.52, 55.795, 5.9501, 300, 0, 0, 52033, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743156;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743156, 152092, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2437.43, 5164.87, 127.182, 4.47249, 300, 0, 0, 52033, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743086;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743086, 154906, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3223.28, 5618.27, 29.8685, 5.00289, 300, 0, 0, 433612, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743093;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743093, 149850, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3290.08, 5685.51, 20.7985, 3.79976, 300, 0, 0, 260167, 295105, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743094;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743094, 152007, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3194.22, 5707.28, 12.4755, 4.18201, 300, 0, 0, 433612, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743095;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743095, 136914, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3245.15, 5732.04, 6.69789, 0.738826, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743096;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743096, 136914, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3246.65, 5730.09, 6.43971, 0.240096, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743109;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743109, 136914, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2946.99, 5764.02, 6.61964, 0.897435, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743110;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743110, 136914, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2948.53, 5761.03, 6.85457, 0.842457, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743105;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743105, 153462, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3043.23, 5703.51, 0.325723, 1.79684, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743106;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743106, 153462, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2981.78, 5710, 0.729782, 4.585, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743107;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743107, 153462, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3004.03, 5711.56, -0.591614, 5.40575, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743108;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743108, 154768, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2976.92, 5688.07, 3.10297, 5.00507, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743111;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743111, 151462, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2944.68, 5754.83, 7.58076, 3.82304, 300, 0, 0, 173444, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743362;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743362, 150575, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2852.72, 5692.74, 23.3039, 1.35602, 300, 0, 0, 520334, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743375;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743375, 151569, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3023.26, 5808.65, 7.38541, 4.69853, 300, 0, 0, 867224, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature_template` WHERE `entry`=151569;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (151569, 0, 0, 0, 0, 154198, 'Deepwater Maw', '', NULL, NULL, NULL, 0, 121, 121, 7, 0, 3571, 14, 0, 1, 1.14286, 1, 4, 0, 0, 0, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 1, 0, 0, 151569, 0, 151569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 4, 1, 20, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);

UPDATE `creature_template` SET `lootid`=151569 WHERE `entry`=151569;
DELETE FROM `creature_loot_template` WHERE `Entry`=151569;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(151569, 166846, 0, 99, 0, 1, 0, 8, 22, ''), 
(151569, 166971, 0, 19, 0, 1, 0, 1, 1, ''), 
(151569, 167836, 0, -17, 0, 1, 0, 1, 1, ''), 
(151569, 168804, 0, 4, 0, 1, 0, 1, 1, ''), 
(151569, 168908, 0, -3, 0, 1, 0, 1, 1, ''), 
(151569, 171248, 0, -6, 0, 1, 0, 29, 37, '');

UPDATE creature_template SET skinloot = 151569 WHERE entry = 151569 AND skinloot = 0;
DELETE FROM `skinning_loot_template` WHERE `entry` = '151569';
INSERT INTO `skinning_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('151569', '152631', '0', '10.54688', '0', '1', '0', '1', '4', ''),
('151569', '153050', '0', '99', '0', '1', '0', '1', '2', ''),
('151569', '153051', '0', '13.15104', '0', '1', '0', '1', '1', ''),
('151569', '154164', '0', '65', '0', '1', '0', '1', '1', ''),
('151569', '154165', '0', '14.84375', '0', '1', '0', '1', '1', ''),
('151569', '155618', '0', '93.61979', '0', '1', '0', '1', '1', '');

UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= 151569;
-- Deepwater Maw SAI
SET @ENTRY := 151569;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,20000,25000,20000,22000,11,303332,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rustfeather - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,1,0,0,0,100,0,10000,10000,40000,40000,11,303716,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rustfeather - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,2,0,0,0,100,0,20000,20000,10000,11000,11,303693,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rustfeather - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,3,0,0,0,100,0,11000,11000,60000,70000,11,304822,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rustfeather - In Combat - Cast 'Spell' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)");

DELETE FROM `creature` WHERE `guid`=2103360743120;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743120, 159262, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2858.42, 5369.27, 61.3809, 4.6893, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743195;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743195, 154655, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2596.99, 5219.93, 86.868, 4.52215, 300, 0, 0, 216806, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743152;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743152, 154608, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2470.43, 5245.54, 123.431, 4.06405, 300, 0, 0, 260167, 295105, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743186;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743186, 153293, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2482.77, 5012.55, 160.468, 1.04769, 120, 5, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743155;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743155, 153293, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2466.87, 5166.13, 130.971, 2.08006, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743154;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743154, 153293, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2456.44, 5173.03, 127.298, 5.36695, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743190;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743190, 153293, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2508.82, 5114.5, 135.942, 4.47168, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743187;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743187, 153293, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2498.49, 5053.95, 150.821, 1.62496, 120, 5, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743185;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743185, 153293, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2491.37, 5028.63, 159.198, 4.43746, 120, 5, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743192;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743192, 153293, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2488.46, 5138.6, 137.395, 4.5565, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743158;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743158, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2451.48, 5173.47, 131.423, 4.36254, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743182;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743182, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2461.4, 5054.77, 166.293, 1.18436, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743184;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743184, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2479.48, 5027.62, 171.836, 4.77833, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743188;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743188, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2510.86, 5072.47, 140.946, 2.4135, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743159;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743159, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2442.31, 5212.13, 132.183, 1.04973, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743160;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743160, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2487.93, 5176.21, 142.723, 6.18466, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743161;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743161, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2511.09, 5162.78, 137.79, 2.99829, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743162;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743162, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2529.65, 5180.05, 141.793, 2.97001, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743164;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743164, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2485.67, 5138.09, 146.317, 4.3883, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743165;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743165, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2463.77, 5145.83, 150.698, 1.68261, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743166;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743166, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2440.07, 5146.6, 154.632, 5.8927, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743167;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743167, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2460.78, 5165.04, 146.676, 2.38432, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743168;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743168, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2456.85, 5170.38, 147.893, 0.150658, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743181;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743181, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2429.99, 5049.94, 165.616, 0.733538, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743178;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743178, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2451.76, 5092.69, 159.426, 0.26712, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743163;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743163, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2477.38, 5140.42, 140.331, 3.64296, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743172;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743172, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2503.8, 5110.87, 139.911, 3.42421, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743173;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743173, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2458.67, 5118.79, 148.523, 5.02406, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743176;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743176, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2498.33, 5058.89, 156.368, 1.83085, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743177;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743177, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2494.99, 5042.52, 151.634, 5.38556, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743179;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743179, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2446.8, 5059.95, 158.059, 5.25832, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743180;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743180, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2453.05, 5056.97, 159.081, 1.91644, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743183;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743183, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2467.95, 5041.71, 152.861, 5.04536, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743189;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743189, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2447.87, 4994.73, 141.863, 1.1141, 120, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743170;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743170, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2498.54, 5101.6, 146.801, 1.59737, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743174;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743174, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2476.07, 5087.01, 149.379, 5.53557, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743175;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743175, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2489.83, 5085.56, 151.553, 0.552218, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743169;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743169, 153269, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2499.91, 5107.12, 147.502, 2.06861, 120, 10, 0, 43361, 0, 1, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743191;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743191, 152182, 1643, 10290, 10290, '0', 0, 0, 0, -1, 0, 0, 2458.34, 5085.89, 150.796, 0.832142, 3000, 0, 0, 476973, 295105, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743198;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743198, 154983, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2797.5, 5137.05, 43.3121, 1.98168, 300, 0, 0, 31, 60, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743199;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743199, 154122, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2797.56, 5138.94, 43.3087, 1.56159, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743197;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743197, 152976, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2797.1, 5152.35, 43.3072, 5.77899, 300, 0, 0, 216806, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743239;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743239, 152964, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2799.89, 5155.53, 43.4914, 0.366533, 300, 0, 0, 216806, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743202;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743202, 159751, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2806.21, 5232.88, 52.5108, 5.20745, 300, 0, 0, 86722, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743200;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743200, 159758, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2803.24, 5231.12, 52.557, 5.38652, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743201;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743201, 159758, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2808.21, 5235.52, 52.8713, 5.11164, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743203;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743203, 151324, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2770.65, 5272.96, 69.8918, 5.29082, 300, 0, 0, 346889, 295105, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743207;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743207, 151324, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2704.9, 5270.85, 74.0983, 2.25514, 300, 0, 0, 346889, 295105, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743213;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743213, 151324, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2692.95, 5403.02, 99.113, 5.09574, 300, 0, 0, 346889, 295105, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743214;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743214, 151324, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2694.83, 5345.78, 81.95, 5.67776, 300, 0, 0, 346889, 295105, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743218;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743218, 151324, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2754.36, 5404.22, 87.7057, 4.5332, 300, 0, 0, 346889, 295105, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743232;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743232, 151324, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2797.82, 5248.02, 81.2158, 5.44494, 300, 0, 0, 346889, 295105, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743215;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743215, 153837, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2693.41, 5352.53, 85.9444, 5.64079, 300, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743216;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743216, 153837, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2710.1, 5341.12, 81.7039, 5.50391, 300, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743228;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743228, 153837, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2825.24, 5308.13, 89.2427, 0.958374, 300, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743227;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743227, 153837, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2811.19, 5303.91, 89.313, 2.16317, 300, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743229;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743229, 153837, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2803.87, 5381.74, 88.6271, 1.92049, 300, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743230;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743230, 153837, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2811.04, 5356.44, 88.5864, 1.35215, 300, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743210;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743210, 151606, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2760.23, 5346.13, 72.2323, 4.55846, 300, 0, 0, 303528, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743212;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743212, 151606, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2717.16, 5361.41, 79.6732, 2.01698, 300, 0, 0, 303528, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743208;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743208, 154152, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2762.85, 5329.72, 71.1232, 3.77802, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743220;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743220, 154152, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2744.11, 5377.32, 85.7518, 4.74447, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743221;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743221, 154152, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2793.5, 5387.45, 83.2607, 3.27106, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743231;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743231, 154152, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2809.49, 5270.24, 79.9986, 2.69451, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743205;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743205, 151604, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2673.46, 5268.62, 78.5978, 2.38484, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743206;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743206, 151604, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2669.92, 5271.3, 78.7719, 5.49895, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743219;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743219, 151604, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2760.07, 5397.14, 88.164, 3.19567, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743223;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743223, 151604, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2819.31, 5378.5, 88.3144, 3.95586, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743211;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743211, 151326, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2786.58, 5334.71, 74.2525, 3.1691, 300, 0, 0, 260167, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743222;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743222, 151326, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2809.12, 5375.09, 88.3147, 1.91861, 300, 0, 0, 260167, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743224;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743224, 152380, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2820.18, 5327.8, 81.7305, 3.54616, 300, 0, 0, 108403, 295105, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743238;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743238, 154448, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2888, 5312.01, 51.7774, 5.11879, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743240;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743240, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2913.68, 5203.48, 33.4702, 3.14451, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743290;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743290, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3057.9, 5012.79, 20.1664, 2.21046, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743291;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743291, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3053.68, 5010.32, 20.0916, 1.41721, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743292;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743292, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3055.24, 5017.92, 19.8676, 4.39544, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743329;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743329, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3005.88, 5198.92, 21.3478, 2.26519, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743330;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743330, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3010.54, 5194.73, 21.3388, 6.07437, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743331;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743331, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3012.17, 5194.27, 21.3388, 2.83774, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743336;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743336, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3018.56, 5224.78, 21.6055, 2.60397, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743337;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743337, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3019.29, 5226.01, 21.6055, 2.60397, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743338;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743338, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3020.35, 5227.78, 21.6055, 2.60397, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743347;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743347, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3019.71, 5160.19, 22.1858, 0.936733, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743348;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743348, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3026.41, 5158.91, 21.5268, 1.87037, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743271;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743271, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3005.88, 5075.9, 20.6694, 4.62173, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743270;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743270, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3000.82, 5069.41, 21.124, 6.06215, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743269;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743269, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3005.02, 5066.61, 20.3493, 1.52647, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743241;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743241, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2914.28, 5209.18, 34.286, 4.8394, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743242;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743242, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2918.21, 5205.35, 33.1273, 3.46888, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743244;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743244, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2932.36, 5184.5, 29.2764, 6.11471, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743245;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743245, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2937.27, 5173.93, 27.9494, 1.94318, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743246;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743246, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2938.83, 5178.92, 28.216, 2.79856, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743249;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743249, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2876.02, 5134.72, 28.295, 5.4532, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743250;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743250, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2872.52, 5131.6, 30.2919, 0.0612372, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743251;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743251, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2877.92, 5130.69, 28.9306, 0.34493, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743264;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743264, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2961.14, 5058.32, 29.4029, 2.76584, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743265;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743265, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2958.94, 5063.82, 28.5346, 2.60561, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743266;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743266, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2965.39, 5062.1, 30.3813, 2.86401, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743349;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743349, 150997, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3022.99, 5161.23, 21.7176, 1.23577, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743243;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743243, 150766, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2911.25, 5206.29, 34.2586, 4.03419, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743247;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743247, 150766, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2934.1, 5178.24, 28.9089, 3.06245, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743252;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743252, 150766, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2874.45, 5129.95, 30.8244, 5.95836, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743267;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743267, 150766, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2961.93, 5061.91, 30.2509, 3.20095, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743268;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743268, 150766, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3005.45, 5072, 20.6477, 1.59952, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743289;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743289, 150766, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3051.63, 5014.54, 19.8686, 1.22164, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743332;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743332, 150766, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3004.99, 5194.79, 21.3366, 1.83086, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743339;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743339, 150766, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3020.94, 5226, 21.6055, 2.53171, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743346;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743346, 150766, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3022.03, 5157.63, 22.5896, 1.5462, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743258;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743258, 151306, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2894.46, 5073.6, 21.1985, 2.82506, 300, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743253;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743253, 152120, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2896.06, 5078.68, 21.0462, 2.95229, 300, 0, 0, 25, 120, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743254;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743254, 151242, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2887.17, 5098.36, 20.0922, 3.12193, 300, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743255;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743255, 151233, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2867.95, 5095.81, 20.0155, 5.24409, 300, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743256;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743256, 151258, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2872.03, 5076.65, 19.9685, 6.17793, 300, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743259;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743259, 151640, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2939.76, 5058.99, 27.0952, 2.92741, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743273;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743273, 151640, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2946.89, 4931.99, 29.6632, 1.11959, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743274;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743274, 151640, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2914.2, 4971.78, 44.1305, 6.17362, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743284;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743284, 151640, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2866.79, 4846.8, 30.4167, 1.22274, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743285;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743285, 151640, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2983.32, 4953.83, 26.5117, 5.54933, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743287;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743287, 151301, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3027.84, 4961.9, 22.6314, 2.53027, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743288;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743288, 151301, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3047.83, 4918.58, 21.8478, 2.46587, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743286;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743286, 151740, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2994.71, 4997.33, 27.248, 5.50614, 300, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743294;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743294, 151740, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3014.78, 4823.44, 12.9793, 1.19667, 300, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743295;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743295, 151740, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3012.75, 4823.81, 13.3717, 1.33176, 300, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743341;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743341, 150389, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3025.51, 5252.44, 21.6724, 3.99648, 300, 0, 0, 252, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743340;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743340, 150393, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 3023.77, 5250.36, 21.6057, 3.77657, 300, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature` WHERE `guid`=2103360743334;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743334, 153056, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2991.67, 5218.77, 21.6838, 6.15146, 300, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360743335;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360743335, 153056, 1643, 0, 0, '0', 0, 0, 0, -1, 0, 0, 2999.42, 5212.54, 21.6489, 0.676453, 300, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, '', 0);

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=1, `type`=7, `faction`=189 WHERE `entry`=152147;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=121, `type`=9, `faction`=14 WHERE `entry`=151740;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=14 WHERE `entry`=150389;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=14 WHERE `entry`=150393;

DELETE FROM `npc_vendor` WHERE `entry` = '152321';
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`, `PlayerConditionID`) VALUES
('152321', '1', '166846', '10', '3600', '0', '1', '0'),
('152321', '2', '167787', '0', '0', '0', '1', '0'),
('152321', '3', '168115', '0', '0', '0', '1', '0'),
('152321', '4', '168327', '0', '0', '0', '1', '0'),
('152321', '5', '168806', '0', '0', '0', '1', '0'),
('152321', '6', '168812', '0', '0', '0', '1', '0');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152321' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '152321';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('152321', '55695');


UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152321' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '152321';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('152321', '55695');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='151777' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '151777';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('151777', '55451'),
('151777', '55452'),
('151777', '55454'),
('151777', '55455'),
('151777', '55456'),
('151777', '55457'),
('151777', '55517');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='155874' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '155874';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('155874', '56907'),
('155874', '56908'),
('155874', '56909');

DELETE FROM `creature_template` WHERE `entry`=153715;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (153715, 0, 0, 0, 0, 0, 'Licata Toegears', '', NULL, NULL, NULL, 0, 120, 120, 7, 0, 0, 2240, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0.5, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
DELETE FROM `creature_template` WHERE `entry`=153714;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (153714, 0, 0, 0, 0, 0, 'Dwight Leadpedal', '', NULL, NULL, NULL, 0, 120, 120, 7, 0, 0, 2240, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0.5, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);

DELETE FROM `creature_model_info` WHERE `DisplayID`=90785;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (90785, 1, 1, 0, 34601);
DELETE FROM `creature_template_model` WHERE `CreatureID`=153714 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (153714, 0, 90785, 1, 1, 33528);

DELETE FROM `creature_template` WHERE `entry`=153713;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (153713, 0, 0, 0, 0, 0, 'Dale Steelsprint', '', NULL, NULL, NULL, 0, 120, 120, 7, 0, 0, 2240, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0.5, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);

DELETE FROM `creature_model_info` WHERE `DisplayID`=90785;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (90785, 1, 1, 0, 34601);
DELETE FROM `creature_template_model` WHERE `CreatureID`=153713 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (153713, 0, 90785, 1, 1, 33528);

DELETE FROM `creature_template` WHERE `entry`=151764;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (151764, 0, 0, 0, 0, 0, 'Mechanocat', '', NULL, NULL, NULL, 0, 120, 120, 7, 0, 0, 2240, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0.5, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);

DELETE FROM `creature_model_info` WHERE `DisplayID`=74810;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (74810, 1, 1, 0, 34601);
DELETE FROM `creature_template_model` WHERE `CreatureID`=151764 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (151764, 0, 74810, 1, 1, 33528);






