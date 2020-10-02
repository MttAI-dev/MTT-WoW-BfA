SET @KING_DEEPBEARD := 91797;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_king_deepbeard', 
`minLevel` = 102, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`unit_flags2` = `unit_flags2` |2048,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@KING_DEEPBEARD, 9179701);

UPDATE `creature_template` SET
`ScriptName` = 'npc_eoa_quake', 
`faction` = 14,
`unit_class` = 1,
`minLevel` = 110, 
`maxLevel` = 110,
`flags_extra` = `flags_extra` |128,
`unit_flags2` = `unit_flags2` |2048,
`InhabitType` = 8
WHERE `entry` = 97916;

UPDATE `creature_template` SET
`ScriptName` = 'npc_eoa_call_the_seas', 
`faction` = 14,
`unit_class` = 1,
`minLevel` = 110, 
`maxLevel` = 110,
`flags_extra` = `flags_extra` |128,
`unit_flags2` = `unit_flags2` |2048
WHERE `entry` = 97844;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (193018, 193051, 193152);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(193018, 'spell_deepbeard_gaseous_bubbles'),
(193152, 'spell_deepbeard_quake'),
(193051, 'spell_deepbeard_call_of_seas');

DELETE FROM `areatrigger_template` WHERE `id` IN (4968);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`) VALUES
(4968, 0, 0, 8, 8, 0, 0, 0, 0, '');

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (4968);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `Animid`, `AnimKitid`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(4968, 4968, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23420);


DELETE FROM `creature_text` WHERE `CreatureID` = @KING_DEEPBEARD;
INSERT INTO `creature_text`(`CreatureID`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@KING_DEEPBEARD, '0', '0', 'You killed my son! Your punishment is death!', '14', '100', '54317', 'KING_DEEPBEARD - AGRRO'),
(@KING_DEEPBEARD, '0', '1', 'You weaklings will drown beneath these waves!', '14', '100', '54316', 'KING_DEEPBEARD - AGGRO_2'),
(@KING_DEEPBEARD, '1', '0', 'Seas! Obey my command!', '14', '100', '54310', 'KING_DEEPBEARD - CALL_OF_SEAS'),
(@KING_DEEPBEARD, '2', '0', 'How long can you hold your breath, high one?', '14', '100', '54312', 'KING_DEEPBEARD - GASEOUS_BUBBLES'),
(@KING_DEEPBEARD, '2', '1', 'Pity you cannot survive without air!', '14', '100', '54313', 'KING_DEEPBEARD - GASEOUS_BUBBLES'),
(@KING_DEEPBEARD, '3', '0', 'Before the crashing waves, comes the quake!', '14', '100', '54314', 'KING_DEEPBEARD - QUAKE'),
(@KING_DEEPBEARD, '3', '1', 'The earth trembles before the rising tide!', '14', '100', '54315', 'KING_DEEPBEARD - QUAKE_2'),
(@KING_DEEPBEARD, '4', '0', 'The ocean will sweep you away!', '14', '100', '54311', 'KING_DEEPBEARD - KILL_2'),
(@KING_DEEPBEARD, '4', '1', 'Justice for the son you murdered!', '14', '100', '54326', 'KING_DEEPBEARD - KILL_3'),
(@KING_DEEPBEARD, '4', '2', 'Blood repays blood!', '14', '100', '54329', 'KING_DEEPBEARD - KILL_4'),
(@KING_DEEPBEARD, '4', '3', 'This was a inevitable as the tides, fools.', '14', '100', '54332', 'KING_DEEPBEARD - KILL_4'),
(@KING_DEEPBEARD, '5', '0', 'You... haven\'t won... She... is almost here...', '14', '100', '54318', 'KING_DEEPBEARD - DEATH'),
(@KING_DEEPBEARD, '5', '1', 'I... I\'ve failed... But my queen will not...', '14', '100', '54319', 'KING_DEEPBEARD - DEATH_2'),
(@KING_DEEPBEARD, '5', '2', 'The oceans rift... but the wind... still rises against you...', '14', '100', '54320', 'KING_DEEPBEARD - DEATH_3'),
(@KING_DEEPBEARD, '5', '3', 'The winds... will finish you... intruders...', '14', '100', '54322', 'KING_DEEPBEARD - DEATH_4');
