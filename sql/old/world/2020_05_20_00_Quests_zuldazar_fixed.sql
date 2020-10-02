-- quest 47418 work
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= 139643;

DELETE FROM `creature` WHERE `guid`=210405159;

DELETE FROM `smart_scripts` WHERE `entryorguid`=139643;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (139643, 0, 0, 1, 8, 0, 100, 0, 243833, 0, 0, 0, 0, '', 33, 122268, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Spellhit \'- Quest Credit \'\'');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (139643, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 243840, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 'On Spellhit \'- Quest Credit \'\'');

-- quest 47261 no terminada   

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= 122009;

DELETE FROM `smart_scripts` WHERE `entryorguid`=122009 AND `id`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (122009, 0, 0, 0, 62, 0, 100, 1, 21093, 0, 0, 0, 0, '', 11, 243475, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'al castear esta spell 243475 invoca el vehiculo');

-- npc que invoca 122012: aun no terminado completamente falta la id del boost de velocidad que el a primera spell 

DELETE FROM `creature_template` WHERE `entry`=122012;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (122012, 0, 0, 0, 0, 0, 'Direhorn Juvenile', '', NULL, NULL, NULL, 0, 120, 120, 7, 0, 0, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 138, 0, 0, 0, 1, 1074790400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 244343, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, '', 27377);

