SET @HARBARON := 96754;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_harbaron', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@HARBARON, 9675401, 9675402);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_mos_shackled_servitor',
`minLevel` = 112, 
`maxLevel` = 112,
`faction` = 16
WHERE `entry` IN (98693, 9869301, 9869302);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_mos_soul_fragment',
`minLevel` = 112, 
`maxLevel` = 112,
`faction` = 16,
`unit_flags` = `unit_flags` |131072,
`flags_extra` = `flags_extra`|2,
`mechanic_immune_mask` = 0
WHERE `entry` IN (98761, 9876101, 9876102);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_mos_cosmic_scythe',
`minLevel` = 112, 
`maxLevel` = 112,
`faction` = 16,
`flags_extra` = `flags_extra` |128
WHERE `entry` IN (98989, 9898901, 9898902); 

DELETE FROM `creature` WHERE `id` IN (98989, 9898901, 9898902, 98761, 9876101, 9876102, 100839, 10083901, 10083902);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (194668, 194216, 194325, 194344, 194266);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(194668, 'spell_harbaron_nether_rip'),
(194325, 'spell_harbaron_fragment'),
(194216, 'spell_harbaron_cosmic_scythe'),
(194344, 'spell_harbaron_fragment_dmg'),
(194266, 'spell_mos_void_snap');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (194325, 198551, 198580);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect` , `type`, `comment`) VALUES
(194325, 198551, 0, 'Fragment Soul'),
(198551, 194327, 0, 'Fragment Soul Dummy Aura'),
(198580, 194667, 1, 'Cosmic Scythe Dummy Aura');

DELETE FROM `areatrigger_template` WHERE `id` IN (5077);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`,`Data3`, `ScriptName`) VALUES
(5077, 0, 2, 4, 9, 0, 0, 'at_mos_nether_rip');

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (5077);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(5077, 5077, 0, 0, 0, 0, 82, 0, 30000, 23420);

DELETE FROM `creature_text` WHERE `CreatureID` = @HARBARON;
INSERT INTO `creature_text`(`CreatureID`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@HARBARON, '0', '0', 'The spirits grow hungry from the scent of blood', '14', '100', '54387', 'HARBARON - INTRO'),
(@HARBARON, '1', '0', 'New passengers... New souls. I will guide you to depths of helheim for a small price: your flesh and blood', '14', '100', '54371', 'HARBARON - AGGRO'),
(@HARBARON, '1', '1', 'All who enter Helheim must pay the blood price. Resist if you wish... In the end, I always get my payment', '14', '100', '54378', 'HARBARON - AGGRO'),
(@HARBARON, '2', '0', 'Arise, servitor! Claim our blood debt', '14', '100', '54388', 'HARBARON - SCREAM OF DEAD'),
(@HARBARON, '2', '1', 'Spirits! Sweep these mortals into the tides!', '14', '100', '54385', 'HARBARON - SCREAM OF DEAD'),
(@HARBARON, '2', '2', 'If I cannot bleed the payment for you, the spirits will!', '14', '100', '54386', 'HARBARON - SCREAM OF DEAD'),
(@HARBARON, '3', '0', 'The flesh burdens the soul. A nuisance that must be flayed from your bones', '14', '100', '54384', 'HARBARON - WINDS_OF_NORTHREND'),
(@HARBARON, '4', '0', 'Another blood debt claimed... Another soul cast into the abyss', '14', '100', '54382', 'HARBARON - BANE'),
(@HARBARON, '5', '0', 'Now... it is I who must pay... the blood price', '14', '100', '54377', 'HARBARON - ARISE FALLEN'),
(@HARBARON, '5', '1', 'Life... death... I am but one ripple in the eternal ebb and flow', '14', '100', '54376', 'HARBARON - KILL'),
(@HARBARON, '5', '2', 'Helya will make you pay in the end, everyones pays...', '14', '100', '54379', 'HARBARON - KILL');

