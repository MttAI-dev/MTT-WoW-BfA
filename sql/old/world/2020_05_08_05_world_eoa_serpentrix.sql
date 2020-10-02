SET @SERPENTRIX := 91808;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_serpentrix', 
`minLevel` = 102, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`unit_flags2` = `unit_flags2` |2048,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967,
`InhabitType` = 3
WHERE `entry` IN (@SERPENTRIX,9180801);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_serpentrix_head',
`minLevel` = 100, 
`maxLevel` = 110, 
`faction` = 16,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967,
`InhabitType`= 3
WHERE `entry` IN (97259, 97260);

UPDATE `creature_template` SET `unit_flags` = `unit_flags` |256|512|131072, `flags_extra` = `flags_extra` |128, `InhabitType` = 8 WHERE `entry` IN (97263, 9726301);

DELETE FROM `areatrigger_template` WHERE `id` IN (4856);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `ScriptName`) VALUES
(4856, 0, 0, 5, 5, 0, 'at_toxic_wound');

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (4856);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(4856, 4856, 0, 0, 0, 0, 0, 0, 0, 23420);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (191839, 192050, 191848, 191850, 191873);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(191839, 'spell_serpentrix_poison_spit_dmg'),
(191850, 'spell_serpentrix_rampage_dmg'),
(191873, 'spell_serpentrix_submerge'),
(192050, 'spell_serpentrix_poison_spit');

DELETE FROM `creature_text` WHERE `CreatureID` = @SERPENTRIX;
INSERT INTO `creature_text`(`CreatureID`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@SERPENTRIX, 0, 0, 'Serpentrix begins to Submerge!', 41, 100, 0, 'Serpentrix - Submerge');






