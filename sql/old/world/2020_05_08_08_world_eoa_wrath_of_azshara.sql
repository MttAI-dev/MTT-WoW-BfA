SET @WRATH_OF_AZSHARA := 96028;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_wrath_of_azshara', 
`minLevel` = 102, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`unit_flags2` = `unit_flags2` |2048,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967,
`InhabitType` = 1
WHERE `entry` IN (@WRATH_OF_AZSHARA, 9602801);

UPDATE `creature_template` SET
`ScriptName` = 'npc_eoa_mystic_tornado', 
`faction` = 16,
`unit_class` = 1,
`minLevel` = 110, 
`maxLevel` = 110,
`unit_flags2` = `unit_flags2` |2048,
`flags_extra` = `flags_extra` |128,
`InhabitType` = 3
WHERE `entry` = 97673;

UPDATE `creature_template` SET
`ScriptName` = 'npc_eoa_arcane_bomb',
`faction` = 14,
`unit_class` = 1,
`minLevel` = 110, 
`maxLevel` = 110,
`unit_flags2` = `unit_flags2` |2048,
`flags_extra` = `flags_extra` |128,
`InhabitType` = 3
WHERE `entry` = 97691;

UPDATE `creature_template` SET
`ScriptName` = 'npc_eoa_tidal_wave', 
`faction` = 14,
`unit_class` = 1,
`minLevel` = 110, 
`maxLevel` = 110,
`unit_flags2` = `unit_flags2` |2048,
`flags_extra` = `flags_extra` |128,
`InhabitType` = 3
WHERE `entry` = 97739;

UPDATE `creature_template` SET 
`ScriptName` = 'npc_hatecoil_ritualist',
`faction` = 14,
`unit_class` = 2,
`minLevel` = 110, 
`maxLevel` = 110
WHERE `entry` IN (100248, 100249, 100250, 98173);

DELETE FROM `areatrigger_template` WHERE `id` IN (4930, 4950, 4923, 4842);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`) VALUES
(4930, 4, 4, 5, 5, 30, 30, 0.5, 0.5, ''),
(4923, 0, 4, 15, 15, 0, 0, 0, 0, ''),
(4842, 0, 0, 5, 5, 10, 0, 0, 0, ''),
(4950, 1, 2, 4, 10, 15, 4, 10, 15, 'at_tidal_wave');

DELETE FROM `areatrigger_template_actions` WHERE `AreaTriggerId` = 4842;
INSERT INTO `areatrigger_template_actions` (`AreaTriggerId`, `ActionType`, `ActionParam`, `TargetType`) VALUES
(4842, 10, 0, 2);


DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (4930, 4950, 4923, 4842);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(4930, 4930, 0, 0, 0, 0, 0, 0, 0, 23420),
(4923, 4923, 0, 0, 0, 0, 0, 0, 0, 23420),
(4950, 4950, 0, 0, 0, 0, 0, 0, 0, 23420),
(4842, 4842, 0, 0, 0, 0, 0, 0, 0, 23420);


DELETE FROM `spell_script_names` WHERE `spell_id` IN (192680, 197165, 197365, 192696, 192619, 192706,  192737, 192989, 192794, 192797, 192793, 192798, 192940, 192941, 192985, 193196, 192649, 191805);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(192680, 'spell_wrath_of_azshara_mystic_tornado'),
(197165, 'spell_wrath_of_azshara_heaving_sands'),
(197365, 'spell_wrath_of_azshara_crushing_depths'),
(192696, 'spell_wrath_of_azshara_raging_storms'),
(192619, 'spell_wrath_of_azshara_massive_deluge'),
(192706, 'spell_wrath_of_azshara_arcane_bomb'),
(192737, 'spell_wrath_of_azshara_lighting_strikes'),
(192989, 'spell_wrath_of_azshara_lighting_strikes'),
(192794, 'spell_wrath_of_azshara_lightning_strikes_dmg'),
(192798, 'spell_wrath_of_azshara_tidal_wave'),
(192797, 'spell_wrath_of_azshara_tidal_wave'),
(192985, 'spell_wrath_of_azshara_cry_of_wrath'),
(191805, 'spell_wrath_of_azshara_violet_winds'),
(192649, 'spell_wrath_of_azshara_violet_winds'),
(193196, 'spell_wrath_of_azshara_storm_conduit');

DELETE FROM `instance_template` WHERE `map` = 1456;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES (1456, 0, 'instance_eye_of_azshara', 0);

DELETE FROM `creature_text` WHERE `CreatureID` = @WRATH_OF_AZSHARA;
INSERT INTO `creature_text`(`CreatureID`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@WRATH_OF_AZSHARA, '0', '0', 'THE STORM AWAKENS.', '14', '100', '54212', 'WRATH_OF_AZSHARA - INTRO'),
(@WRATH_OF_AZSHARA, '1', '0', 'THE TIDES RISE!', '14', '100', '54207', 'WRATH_OF_AZSHARA - ACTIVE'),
(@WRATH_OF_AZSHARA, '2', '0', 'ALL WILL BE ERADICATED!', '14', '100', '54205', 'WRATH_OF_AZSHARA - AGGRO'),
(@WRATH_OF_AZSHARA, '3', '0', 'CRUSH!', '14', '100', '54213', 'WRATH_OF_AZSHARA - MASSIVE DELUGE'),
(@WRATH_OF_AZSHARA, '4', '0', 'DROWN!', '14', '100', '54214', 'WRATH_OF_AZSHARA - CRUSHING DEPTHS'),
(@WRATH_OF_AZSHARA, '5', '0', 'SEEK... MAGIC...', '14', '100', '54215', 'WRATH_OF_AZSHARA - ARCANE BOMB'),
(@WRATH_OF_AZSHARA, '5', '1', 'ARCANE... ENERGY...', '14', '100', '54216', 'WRATH_OF_AZSHARA - ARCANE BOMB'),
(@WRATH_OF_AZSHARA, '6', '0', 'TEMPEST!', '14', '100', '54208', 'WRATH_OF_AZSHARA - CRY_OF_WRATH'),
(@WRATH_OF_AZSHARA, '7', '0', 'WASHED AWAY!', '14', '100', '54209', 'WRATH_OF_AZSHARA - KILL'),
(@WRATH_OF_AZSHARA, '7', '1', 'TORN ASUNDER!', '14', '100', '54210', 'WRATH_OF_AZSHARA - KILL_2'),
(@WRATH_OF_AZSHARA, '8', '0', 'THIS WORLD WILL DROWN!', '14', '100', '54211', 'WRATH_OF_AZSHARA - WIPE'),
(@WRATH_OF_AZSHARA, '9', '0', 'WATER... ETERNAL...', '14', '100', '54206', 'WRATH_OF_AZSHARA - DEATH');
