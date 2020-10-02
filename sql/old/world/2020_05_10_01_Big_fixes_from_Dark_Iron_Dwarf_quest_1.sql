-- npc 133197 Moira Thaurissan
DELETE FROM `creature_template` WHERE `entry`=133197;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (133197, 0, 0, 0, 0, 0, 'Moira Thaurissan', '', NULL, NULL, NULL, 1000001, 110, 110, -1, 0, 0, 1733, 3, 1, 1.14286, 1, 1, 0, 2000, 2000, 1, 1, 8, 33536, 2048, 0, 0, 0, 0, 0, 0, 7, 4, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 50, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, '', 28153);

-- npc 133197 ubicacion corregida
DELETE FROM `creature` WHERE `guid`=11000004;
DELETE FROM `creature` WHERE `guid`=300000058;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (300000058, 133197, 0, 0, 0, '0', 0, 0, 0, -1, 0, 0, -8155.42, 819, 75.718, 0.00502396, 300, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, '', 0);


-- Text npc 133197 Moira Thaurissan
DELETE FROM `creature_text` WHERE `CreatureID`=133197;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (133197, 0, 0, 'Estoy lista cuando digas. Ven a buscarme cuando quieras ir a Profundidades de Roca Negra', 12, 0, 100, 1, 0, 0, 0, 0, 'Moira to player');

-- gossip_menu npc 133197 Moira Thaurissan
DELETE FROM `gossip_menu` WHERE `MenuId`=1000001;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES (1000001, 1000001, 0);

-- gossip_menu_option npc 133197 Moira Thaurissan
DELETE FROM `gossip_menu_option` WHERE `MenuId`=1000001;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES (1000001, 0, 0, 'I am ready to go to the Blackrock Depths.', 0, 1, 1, 0);
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES (1000001, 1, 0, 'I am ready to go to the Molten Core.', 0, 1, 1, 0);
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES (1000001, 2, 0, 'I am ready to go to the Firelands.', 0, 1, 1, 0);
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES (1000001, 3, 0, 'I am ready to go to the Blackrock Depths.', 0, 1, 1, 0);

-- quest starter
DELETE FROM `creature_queststarter` WHERE `id`=133197;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (133197, 51813);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (133197, 53342);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (133197, 53352);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (133197, 51474);

-- SAI npc 133197 Moira Thaurissan
DELETE FROM `smart_scripts` WHERE `entryorguid`=133197;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (133197, 0, 0, 0, 19, 0, 100, 0, 51813, 0, 0, 0, 0, '', 1, 0, 6000, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ' al aceptar la quest 51813 dice texto');

-- gameobject 298865 Dark Iron Dwarf spawneado con su ubicacion
DELETE FROM `gameobject` WHERE `guid`=280200511;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (280200511, 298865, 0, 0, 0, '0', 0, 0, 0, -1, -8156.41, 824.113, 75.9675, 3.95333, -0, -0, -0.91876, 0.394816, 300, 255, 1, 0, '', 0);

-- npc 126301 Anduin Wrynn
DELETE FROM `creature_template` WHERE `entry`=126301;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (126301, 0, 0, 0, 0, 0, 'Anduin Wrynn', '', 'King of Stormwind', NULL, NULL, 0, 110, 120, -1, 0, 0, 1733, 3, 1, 1.14286, 1, 1, 0, 2000, 2000, 1, 1, 2, 33536, 2048, 0, 0, 0, 0, 0, 0, 7, 2101324, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1200, 1, 250, 1, 1, 1, 1, 0, 0, 1, 0, 0, '', 28153);

-- quest tender
DELETE FROM `creature_questender` WHERE `id`=126301 AND `quest`=53566;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (126301, 53566);

-- Text npc 126301 Anduin Wrynn
DELETE FROM `creature_text` WHERE `CreatureID`=126301;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (126301, 0, 0, 'Reina regente Thaurissan, estoy encantado de volver a verla.', 12, 0, 100, 1, 0, 0, 0, 0, 'Anduin Wrynn to player');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (126301, 1, 0, 'Su posición en el Consejo de los Tres Martillos ha sido de ayuda para mantener el orden y la estabilidad en Forjaz.', 12, 0, 100, 1, 0, 0, 0, 0, 'Anduin Wrynn to player');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (126301, 2, 0, 'Y a pesar de que el clan Hierro Negro es reconocido por su... espíritu independiente. La determinación y la lealtad de su pueblo son incuestionables.', 12, 0, 100, 1, 0, 0, 0, 0, 'Anduin Wrynn to player');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (126301, 3, 0, 'Sin embargo, nunca le pedimos oficialmente a su clan que se uniera a la Alianza... un desliz que espero que sepa disculpar y me permita corregir.', 12, 0, 100, 1, 0, 0, 0, 0, 'Anduin Wrynn to player');
DELETE FROM `creature_text` WHERE `CreatureID`=126301 AND `GroupID`=4 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (126301, 4, 0, '!Por la Alianza!', 12, 0, 100, 1, 0, 0, 0, 0, 'Anduin Wrynn to player');

-- SAI npc 126301 Anduin Wrynn
DELETE FROM `smart_scripts` WHERE `entryorguid`=126301;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (126301, 0, 0, 0, 20, 0, 100, 0, 53566, 0, 0, 0, 0, '', 1, 0, 10000, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'al entregar la quest 53566 slay text');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (126301, 0, 1, 0, 52, 0, 100, 0, 0, 126301, 0, 0, 0, '', 1, 1, 10000, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'slay text');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (126301, 0, 2, 0, 52, 0, 100, 0, 1, 126301, 0, 0, 0, '', 1, 2, 10000, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'slay text');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (126301, 0, 3, 0, 52, 0, 100, 0, 2, 126301, 0, 0, 0, '', 1, 3, 10000, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'slay text');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (126301, 0, 4, 0, 52, 0, 100, 0, 3, 126301, 0, 0, 0, '', 1, 4, 10000, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'slay text');