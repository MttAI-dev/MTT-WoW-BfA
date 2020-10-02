SET @LADY_HATECOIL := 91789;
SET @OGUID := 70595;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_lady_hatecoil', 
`minLevel` = 102, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`unit_flags2` = `unit_flags2` |2048,
`InhabitType` = 3,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@LADY_HATECOIL, 9178901);

UPDATE `creature_template` SET
`ScriptName` = 'npc_eoa_hatecoil_arcanist', 
`faction` = 14,
`unit_class` = 1,
`minLevel` = 102, 
`maxLevel` = 110,
`unit_flags2` = `unit_flags2` |2048,
`InhabitType` = 3
WHERE `entry` = 97171;

UPDATE `creature_template` SET
`ScriptName` = 'npc_eoa_saltsea_globule',
`faction` = 14,
`unit_class` = 1,
`minLevel` = 110, 
`maxLevel` = 110,
`unit_flags2` = `unit_flags2` |2048,
`InhabitType` = 3
WHERE `entry` = 98293;

UPDATE `creature_template` SET
`ScriptName` = 'npc_eoa_moonson', 
`faction` = 14,
`unit_class` = 1,
`speed_walk` = 1.0,
`speed_run` = 1.0,
`minLevel` = 110, 
`maxLevel` = 110,
`unit_flags2` = `unit_flags2` |2048,
`flags_extra` = `flags_extra` |128,
`InhabitType` = 3
WHERE `entry` = 99852;

UPDATE `creature_template` SET
`ScriptName` = '', 
`faction` = 14,
`unit_class` = 1,
`minLevel` = 110, 
`maxLevel` = 110,
`unit_flags2` = `unit_flags2` |2048,
`flags_extra` = `flags_extra` |128,
`InhabitType` = 8
WHERE `entry` IN (97853, 9785301);

DELETE FROM `creature_template_addon` WHERE `entry` IN (97171, @LADY_HATECOIL);

UPDATE `gameobject_template` SET `type` = 3 WHERE `entry` = 244690;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (193712, 193716, 193717, 193698, 193682, 193597, 193625, 193720);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(193712, 'spell_lady_hatecoil_curse_of_witch_trigger'),
(193716, 'spell_lady_hatecoil_curse_of_witch_trigger'),
(193717, 'spell_lady_hatecoil_curse_of_witch_trigger'),
(193698, 'spell_lady_hatecoil_curse_of_witch'),
(193682, 'spell_lady_hatecoil_beckon_storm'),
(193597, 'spell_lady_hatecoil_static_nova'),
(193625, 'spell_lady_hatecoil_excess_lighting'),
(193720, 'spell_lady_hatecoil_curse_of_witch_kill');

DELETE FROM `areatrigger_template` WHERE `id` IN (5274, 5275);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `ScriptName`) VALUES
(5274, 0, 0, 3, 3, 0, ''),
(5275, 0, 0, 3, 3, 0, '');


DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (5274, 5275);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(5274, 5274, 0, 0, 0, 0, 0, 0, 0, 23420),
(5275, 5275, 0, 0, 0, 0, 0, 0, 0, 23420);

UPDATE `gameobject_template` SET `ScriptName` = 'go_sand_dune' WHERE `entry` = 244690;

DELETE FROM `gameobject` WHERE `id` IN (244690);
INSERT INTO `gameobject` (`guid`, `id`,`map`,`zoneId`,`areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`,`rotation1`,`rotation2`, `rotation3`, `spawntimesecs`, `animprogress`,`state`,`ScriptName`, `VerifiedBuild`) VALUES
(@OGUID+0, 244690, 1456, 0, 0, 6, 0, 0, -3478.83, 4596.36, -0.354631, 4.72933, 0, 0, 0, 0, 7200, 0, 1, '', 22522),
(@OGUID+1, 244690, 1456, 0, 0, 6, 0, 0, -3471.26, 4568.86, -0.354631, 4.72933, 0, 0, 0, 0, 7200, 0, 1, '', 22522),
(@OGUID+2, 244690, 1456, 0, 0, 6, 0, 0, -3462.64, 4552.49, -0.354621, 6.21155, 0, 0, 0, 0, 7200, 0, 1, '', 22522),
(@OGUID+3, 244690, 1456, 0, 0, 6, 0, 0, -3426.3, 4560.19, -0.354614, 1.27597, 0, 0, 0, 0, 7200, 0, 1, '', 22522),
(@OGUID+4, 244690, 1456, 0, 0, 6, 0, 0, -3465.96, 4582.65, -0.354631, 2.59854, 0, 0, 0, 0, 7200, 0, 1, '', 22522),
(@OGUID+5, 244690, 1456, 0, 0, 6, 0, 0, -3452.93, 4569.12, -0.354621, 1.65257, 0, 0, 0, 0, 7200, 0, 1, '', 22522),
(@OGUID+6, 244690, 1456, 0, 0, 6, 0, 0, -3425.11, 4604.11, -0.354628, 4.43545, 0, 0, 0, 0, 7200, 0, 1, '', 22522),
(@OGUID+7, 244690, 1456, 0, 0, 6, 0, 0, -3447.14, 4603.75, -0.354631, 5.99311, 0, 0, 0, 0, 7200, 0, 1, '', 22522),
(@OGUID+8, 244690, 1456, 0, 0, 6, 0, 0, -3440.59, 4620.17, -0.354631, 0, 0, 0, 0, 0, 7200, 0, 1, '', 22522),
(@OGUID+9, 244690, 1456, 0, 0, 6, 0, 0, -3450.3, 4579.59, -0.354631, 0.630552, 0, 0, 0, 0, 7200, 0, 1, '', 22522),
(@OGUID+10, 244690, 1456, 0, 0, 6, 0, 0, -3415.41, 4570.52, -0.354614, 2.57894, 0, 0, 0, 0, 7200, 0, 1, '', 22522),
(@OGUID+11, 244690, 1456, 0, 0, 6, 0, 0, -3463.75, 4596.38, -0.354631, 3.91666, 0, 0, 0, 0, 7200, 0, 1, '', 22522),
(@OGUID+12, 244690, 1456, 0, 0, 6, 0, 0, -3443.34, 4590.65, -0.354631, 5.58664, 0, 0, 0, 0, 7200, 0, 1, '', 22522),
(@OGUID+13, 244690, 1456, 0, 0, 6, 0, 0, -3420.62, 4616.91, -0.354624, 1.65257, 0, 0, 0, 0, 7200, 0, 1, '', 22522),
(@OGUID+14, 244690, 1456, 0, 0, 6, 0, 0, -3425.97, 4586.57, -0.354627, 2.28569, 0, 0, 0, 0, 7200, 0, 1, '', 22522),
(@OGUID+15, 244690, 1456, 0, 0, 6, 0, 0, -3464.79, 4614.29, -0.354631, 2.28569, 0, 0, 0, 0, 7200, 0, 1, '', 22522),
(@OGUID+16, 244690, 1456, 0, 0, 6, 0, 0, -3440.32, 4553.86, -0.354614, 0.473327, 0, 0, 0, 0, 7200, 0, 1, '', 22522),
(@OGUID+17, 244690, 1456, 0, 0, 6, 0, 0, -3402.37, 4589.11, -0.354608, 5.48847, 0, 0, 0, 0, 7200, 0, 1, '', 22522),
(@OGUID+18, 244690, 1456, 0, 0, 6, 0, 0, -3408.97, 4608.92, -0.354607, 0.256104, 0, 0, 0, 0, 7200, 0, 1, '', 22522);

DELETE FROM `creature_text` WHERE `CreatureID` = @LADY_HATECOIL;
INSERT INTO `creature_text`(`CreatureID`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@LADY_HATECOIL, '0', '0', 'Continue the rituals! I will handle these fools', '14', '100', '54194', 'LADY_HATECOIL - AGRRO'),
(@LADY_HATECOIL, '1', '1', 'Can you feel the winds? They come for you...', '14', '100', '54195', 'LADY_HATECOIL - AGGRO_2'),
(@LADY_HATECOIL, '2', '0', 'Fly, landwalkers!', '14', '100', '54200', 'LADY_HATECOIL - STATIC_NOVA'),
(@LADY_HATECOIL, '2', '1', 'Just you wait...', '14', '100', '54201', 'LADY_HATECOIL - STATIC_NOVA_2'),
(@LADY_HATECOIL, '3', '0', 'The waters rise...', '14', '100', '54204', 'LADY_HATECOIL - BECKON_STORM'),
(@LADY_HATECOIL, '4', '0', 'A storm is gathering...', '14', '100', '54203', 'LADY_HATECOIL - FOCUSED_LIGHTING'),
(@LADY_HATECOIL, '5', '0', 'There is no escape!', '14', '100', '54202', 'LADY_HATECOIL - CURSE_OF_WITCH'),
(@LADY_HATECOIL, '6', '0', 'Too much to handle?', '14', '100', '54197', 'LADY_HATECOIL - KILL_2'),
(@LADY_HATECOIL, '6', '1', 'Pitiful!', '14', '100', '54198', 'LADY_HATECOIL - KILL_3'),
(@LADY_HATECOIL, '6', '2', 'The Hatecoil proves superior!', '14', '100', '54199', 'LADY_HATECOIL - KILL_4'),
(@LADY_HATECOIL, '7', '0', 'Can you feel the winds? They come for you', '14', '100', '54195', 'LADY_HATECOIL - KILL_4'),
(@LADY_HATECOIL, '8', '0', 'You are too late! The Wrath of Azshara has arrived!', '14', '100', '54196', 'LADY_HATECOIL - DEATH'),
(@LADY_HATECOIL, '9', '0', 'It seems we have pets', '14', '100', '5665', 'LADY_HATECOIL - INTRO');
