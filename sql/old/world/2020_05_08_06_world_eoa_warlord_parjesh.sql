SET @PARJESH := 91784;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_warlord_parjesh', 
`minLevel` = 102, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`unit_flags2` = `unit_flags2` |2048,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@PARJESH, 9178401);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_eoa_hatecoil_crestrider',
`minLevel` = 100, 
`maxLevel` = 110, 
`faction` = 16 
WHERE `entry` = 97269;

UPDATE `creature_template` SET 
`ScriptName` = 'npc_eoa_hatecoil_shellbreaker',
`minLevel` = 100, 
`maxLevel` = 110, 
`faction` = 16 
WHERE `entry` = 97264;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (191946, 196563, 192135, 191900, 191902);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(191946, 'spell_parjesh_impale_spear'),
(196563, 'spell_parjesh_call_reinforcements'),
(191900, 'spell_parjesh_crashing_wave'),
(191902, 'spell_parjesh_crashing_wave_trigger'),
(192135, 'spell_eoa_bellowing_roar');

DELETE FROM `creature_equip_template` WHERE `creatureid` = 91784;
INSERT INTO `creature_equip_template` (`creatureid`, `id`, `itemid1`, `itemid2`, `itemid3`) VALUES
(@PARJESH, 1, 28253, 0, 0);

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (191900, 191977, 191975);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(191900, 191902, 1, 'Crushing sWave - Warlord Parjesh');

DELETE FROM `areatrigger_template` WHERE `id` IN (4863, 4888, 4876, 4887);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `ScriptName`) VALUES
(4863, 0, 0, 8, 8, 0, 'at_crashing_wave'),
(4876, 0, 0, 5, 5, 0, ''),
(4887, 0, 0, 5, 5, 0, 'at_quicksand'),
(4888, 0, 0, 8, 8, 0, 'at_crashing_wave');


DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (4863, 4888, 4876, 4887);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(4863, 4863, 0, 0, 0, 0, 0, 0, 0, 23420),
(4876, 4876, 0, 0, 0, 0, 0, 0, 0, 23420),
(4887, 4887, 0, 0, 0, 0, 0, 0, 0, 23420),
(4888, 4888, 0, 0, 0, 0, 0, 0, 0, 23420);

DELETE FROM `creature_text` WHERE `CreatureID` = @PARJESH;
INSERT INTO `creature_text`(`CreatureID`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@PARJESH, '1', '0', 'Ah, we meet again, weakling. Now it\'s just you and me... and my guards!', '14', '100', '54181', 'PARJESH - AGRRO'),
(@PARJESH, '2', '0', 'Sssssth! Hatecoil, crush their bodies!', '14', '100', '54190', 'PARJESH - CALL_REINFORCEMENTS'),
(@PARJESH, '2', '1', 'Hatecoil, drown them out!', '14', '100', '54191', 'PARJESH - CALL_REINFORCEMENTS_2'),
(@PARJESH, '3', '0', 'Fools! Get out of the way!', '14', '100', '54183', 'PARJESH - IMPALING_SPEAR_MINION'),
(@PARJESH, '3', '1', 'Useless. All of you!', '14', '100', '54184', 'PARJESH - IMPALING_SPEAR_MINION'),
(@PARJESH, '4', '0', 'Ha, nowhere to hide!', '14', '100', '54185', 'PARJESH - ENRAGE'),
(@PARJESH, '5', '0', 'Get my point?', '14', '100', '54186', 'PARJESH - KILL'),
(@PARJESH, '5', '1', 'Like fish in a net.', '14', '100', '54187', 'PARJESH - KILL_2'),
(@PARJESH, '5', '2', 'That was for Athissa!', '14', '100', '54188', 'PARJESH - KILL_3'),
(@PARJESH, '5', '3', 'Unworthy of my time.', '14', '100', '54189', 'PARJESH - KILL_4'),
(@PARJESH, '6', '0', 'You can\'t stop... the storm...', '14', '100', '54182', 'PARJESH - DEATH');
