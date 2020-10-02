SET @HELYA := 96759;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_helya_maw', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`unit_flags` = 32832,
`InhabitType` = 4,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@HELYA, 9675901, 9675902);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_mos_destructor_tentacle',
`minLevel` = 112, 
`maxLevel` = 112,
`faction` = 16,
`InhabitType` = 1
WHERE `entry` IN (99801, 9980101, 9980102);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_mos_grasping_tentacle',
`minLevel` = 112, 
`maxLevel` = 112,
`faction` = 16,
`unit_flags` = `unit_flags` |131072,
`flags_extra` = `flags_extra` |2,
`InhabitType` = 1
WHERE `entry` IN (100360, 100362, 98363);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_mos_piercing_tentacle',
`minLevel` = 112, 
`maxLevel` = 112,
`faction` = 16,
`unit_flags` = 33554432,
`unit_flags2` = 4196352,
`flags_extra` = 0
WHERE `entry` IN (100188, 10018801, 10018802);

DELETE FROM `creature_template_addon` WHERE `entry` = 102306;

UPDATE `creature_template` SET `VehicleId` = 4496 WHERE `entry` IN (100361, 10036101, 10036102);
UPDATE `creature_template` SET `VehicleId` = 4495 WHERE `entry` IN (100359, 10035901, 10035902);
UPDATE `creature_template` SET `VehicleId` = 4471 WHERE `entry` IN (99803, 9980301, 9980302);
UPDATE `creature_template` SET `VehicleId` = 4470 WHERE `entry` IN (99800, 9980001, 9980002);
UPDATE `gameobject_template` SET `data4` = 31853, `data10` = 31853 WHERE `entry` = 246919;

UPDATE `creature_model_info` SET `CombatReach` = 18 WHERE `DisplayId` = 66618;
UPDATE `creature_model_info` SET `CombatReach` = 22.5 WHERE `DisplayId` = 66619;
UPDATE `creature_model_info` SET `CombatReach` = 31.5 WHERE `DisplayId` = 65778;
UPDATE `creature_model_info` SET `CombatReach` = 33 WHERE `DisplayId` = 66238;

DELETE FROM `creature` WHERE `id` IN (100188, 10018801, 10018802, 99801, 9980101, 9980102, 100360, 10036001, 10036002, 100362, 10036201, 10036202, 98363, 9836301, 9836302) AND `map` = 1492;

UPDATE `creature_template` SET 
`minLevel` = 112, 
`maxLevel` = 112,
`faction` = 16,
`flags_extra` = `flags_extra` |128,
`ScriptName` = 'npc_mos_helya_dummy'
WHERE `entry` IN (100361, 10036101, 10036102, 100359, 10035901, 10035902, 99803, 9980301, 9980302, 99800, 9980001, 9980002, 102306, 10230601, 10230602, 97099, 9709901, 9709902);

UPDATE `creature` SET `spawnDifficulties` = 8388870 WHERE `map` = 1492;
UPDATE `gameobject` SET `spawnDifficulties` = 8388870 WHERE `map` = 1492;

DELETE FROM `creature` WHERE `id` = 59018 AND `map` = 1492;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
('1025620','59018','1492','0','0','8388608','0','0','0','0','2917.3','917.827','512.319','4.66261','300','0','0','22988','0','0','0','33554432','0','','0'),
('1025623','59018','1492','0','0','8388608','0','0','0','0','2933.7','914.794','512.383','4.6147','300','0','0','22988','0','0','0','33554432','0','','0'),
('1025619','59018','1492','0','0','8388608','0','0','0','0','2948.84','917.392','512.285','4.77727','300','0','0','22988','0','0','0','33554432','0','','0');

DELETE FROM `areatrigger_template` WHERE `id` IN (5070, 4048, 8856, 5179);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`,`Data3`, `Data4`, `Data5`, `ScriptName`) VALUES
(5070, 1, 0, 4.5, 4.5, 0.5, 4.5, 4.5, 0.5, 'at_mos_swirling_water'),
(4048, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(8856, 0, 0, 1, 1, 0, 0, 0, 0, ''),
(5179, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `areatrigger_template_polygon_vertices` WHERE `AreaTriggerId` = 4048;
INSERT INTO`areatrigger_template_polygon_vertices` (`AreaTriggerId`, `Idx`, `VerticeX`, `VerticeY`, `VerticeTargetX`, `VerticeTargetY`, `VerifiedBuild`) VALUES
(4048, 3, 200, 30, 0, 0, 23360),
(4048, 2, 200, -30, 0, 0, 23360),
(4048, 1, 0, -30, 0, 0, 23360),
(4048, 0, 0, 30, 0, 0, 23360);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (5070, 4048, 8856, 5179);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(5070, 5070, 0, 0, 0, 0, 0, 0, 0, 23420),
(8856, 8856, 0, 0, 0, 0, 0, 0, 0, 23420),
(4048, 4048, 0, 0, 0, 0, 0, 0, 1000, 23420),
(5179, 5179, 0, 0, 0, 0, 0, 0, 1000, 23420);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (197262, 197753, 202088, 195231, 197734, 197653, 196534, 194839, 227233, 227234, 198520, 196947);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(197262, 'spell_helya_maw_taint_of_sea'),
(197753, 'spell_helya_maw_turbulent_waters'),
(202088, 'spell_helya_maw_brackwater_barrage'),
(195231, 'spell_helya_maw_emerge'),
(197734, 'spell_helya_maw_phase_two_model'),
(197653, 'spell_helya_maw_knockdown'),
(196534, 'spell_mos_smash'),
(194839, 'spell_mos_knockdown'),
(227233, 'spell_helya_maw_corrupted_bellow'),
(227234, 'spell_helya_maw_corrupted_bellow_dmg'),
(198520, 'spell_helya_maw_wing_buffet'),
(196947, 'spell_helya_maw_submerged');

DELETE FROM `creature_text` WHERE `CreatureID` = @HELYA;
INSERT INTO `creature_text`(`CreatureID`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@HELYA, '0', '0', 'You ALL will regret trespassing in my realm.', '14', '100', '54387', 'HELYA - INTRO'),
(@HELYA, '1', '0', 'You have come far enough. Time to die.', '14', '100', '54371', 'HELYA - AGGRO'),
(@HELYA, '2', '0', 'Your fate rains down!', '14', '100', '54378', 'HELYA - TAIN_OF_SEA'),
(@HELYA, '2', '1', 'Embrace your fate, fools!', '14', '100', '54388', 'HELYA - TAIN_OF_SEA'),
(@HELYA, '3', '0', 'You will pay for that.', '14', '100', '54385', 'HELYA - TENTACLE DIE'),
(@HELYA, '3', '1', 'I am losing my patience.', '14', '100', '54386', 'HELYA - TENTACLE DIE'),
(@HELYA, '3', '2', 'No! This is not possible!', '14', '100', '54384', 'HELYA - TENTACLE DIE'),
(@HELYA, '3', '3', 'What manner of creatures ARE you??', '14', '100', '54382', 'TENTACLE DIE'),
(@HELYA, '3', '4', 'Odyn values these creatures?', '14', '100', '54377', 'HELYA - TENTACLE DIE'),
(@HELYA, '4', '0', 'An eternity of agony awaits you.', '14', '100', '54376', 'HELYA - CORRUPTED BELLOW'),
(@HELYA, '4', '1', 'I will drown you all like rats!', '14', '100', '54379', 'HELYA - CORRUPTED BELLOW'),
(@HELYA, '4', '2', 'Hold still!', '14', '100', '54376', 'HELYA - CORRUPTED BELLOW'),
(@HELYA, '4', '3', 'Stop squirming!', '14', '100', '54376', 'HELYA - CORRUPTED BELLOW'),
(@HELYA, '5', '0', 'Your soul will not find shelter here.', '14', '100', '54376', 'HELYA - KILL'),
(@HELYA, '5', '1', 'Begone to the next life.', '14', '100', '54376', 'HELYA - KILL'),
(@HELYA, '6', '0', 'It is finished. I banish your weak mortal souls forever more.', '14', '100', '54376', 'HELYA - WIPE'),
(@HELYA, '7', '0', 'Do you think you have won? You have merely survived the storm... The seas are unstoppable.', '14', '100', '54376', 'HELYA - DEATH'),
(@HELYA, '8', '0', '|TInterface\Icons\Spell_Frost_SummonWaterElemental_2.blp:20|t %s begins to cast |cFFFF0000|Hspell:202098|h[Brackwater Barrage]|h|r. Look out!', '41', '100', '0', 'HELYA - BRACKWATER BARRAGE'),
(@HELYA, '9', '0', '|TInterface\\Icons\\Spell_Shadow_Possession:20|t %s begins to cast |cFFFF0000|Hspell:227233|h[Corrupted Bellow]|h|r. Look out!', 41, 100, 54400, 'Helya');


