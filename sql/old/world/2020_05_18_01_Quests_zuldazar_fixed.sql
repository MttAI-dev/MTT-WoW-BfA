-- Quest 47439 work       by Sargero :)
DELETE FROM `creature_template` WHERE `entry`=124827;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (124827, 0, 0, 0, 0, 0, 'Gonk', '', NULL, NULL, NULL, 1000003, 108, 120, 7, 0, 0, 35, 3, 2, 2, 1, 1, 0, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 20, 1, 1, 1, 1, 1, 1, 0, 184, 1, 0, 0, '', 27377);

DELETE FROM `gossip_menu` WHERE `MenuId`=1000003;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES (1000003, 1000003, 0);

DELETE FROM `gossip_menu_option` WHERE `MenuId`=1000003;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES (1000003, 0, 0, 'We have a bargain', 0, 1, 1, 0);

-- Creature Gonk 124827 SAI
SET @ENTRY := 124827;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 62, 0, 100, 0, 1000003, 0, 0, 0, 33, 127444, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 1000003 selected - Action invoker: Give kill credit Gonk (127444) // ");

-- Quest 49870 work
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= 130905;

DELETE FROM `creature_text` WHERE `CreatureID`=130905 AND `GroupID`=0 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (130905, 0, 0, '!Gracias a los dos por su ayuda! Preparate para ir a la cueva de Colatriste a ayudar a Ben´jin cuando esto funcione.', 12, 0, 100, 1, 0, 0, 0, 0, '');

-- Creature Cala Cruzpot 130905 SAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=130905 AND `source_type`=0 AND `id`=3;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(130905, 0, 3, 4, 19, 0, 100, 0, 49870, 0, 0, 0, 0, 0, 10000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When player accepts quest Size Matters (49870) - Self: Talk 0 // ");
DELETE FROM `smart_scripts` WHERE `entryorguid`=130905 AND `source_type`=0 AND `id`=4 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (130905, 0, 4, 0, 19, 0, 100, 0, 49870, 0, 0, 0, 0, '', 12, 131832, 3, 600000, 0, 0, 0, 8, 0, 0, 0, -715.316, 372.703, 153.157, 0.390818, 'When player accepts quest Size Matters (49870) - Self: invoquer 0 // ');

-- removido spawn fijo al ser sustutuido por el del SAI
DELETE FROM `creature` WHERE `guid`=210404734;

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= 131832;

-- npc Tiny Sleeping Ben'jin SAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=131832;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (131832, 0, 0, 0, 8, 0, 100, 0, 261926, 0, 0, 0, 0, '', 33, 133166, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature` WHERE `guid`=300000074;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (300000074, 133152, 1642, 0, 0, '0', 0, 0, 0, -1, 0, 0, -993.562, 270.292, 183.246, 4.65928, 300, 0, 0, 432301, 0, 0, 0, 0, 0, 0, 0, '', 0);

-- Quest 49149 work
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= 128468;

DELETE FROM `smart_scripts` WHERE `entryorguid`=128468;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (128468, 0, 0, 0, 8, 0, 100, 0, 254904, 0, 0, 0, 0, '', 33, 128468, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- Quest 49871 work
DELETE FROM `smart_scripts` WHERE `entryorguid`=140618 AND `source_type`=0 AND `id`=1 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (140618, 0, 1, 0, 8, 0, 100, 0, 275677, 0, 0, 0, 0, '', 33, 131052, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Fire Bunny - On Spellhit \'<Spell not found!>\' - Quest Credit \'\'');


