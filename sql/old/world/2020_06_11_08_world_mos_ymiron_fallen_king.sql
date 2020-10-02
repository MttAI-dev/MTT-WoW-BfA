SET @YMIRON := 96756;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_ymiron_fallen', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@YMIRON, 9675601, 9675602);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_mos_risen_warrior',
`minLevel` = 112, 
`maxLevel` = 112,
`faction` = 16
WHERE `entry` IN (98246, 9824601, 9824602);

UPDATE `gameobject_template` SET `ScriptName` = 'go_echoing_horn_of_dammed' WHERE `entry` = 247041;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (193460, 193566);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(193460, 'spell_ymiron_fallen_bane'),
(193566, 'spell_ymiron_arise_fallen');

DELETE FROM `scene_template` WHERE (`SceneId`=1086 AND `ScriptPackageID`=1686);
INSERT IGNORE INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`) VALUES
(1086, 17, 1686);

DELETE FROM `areatrigger_template` WHERE `id` IN (5016, 5838);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`,`Data3`, `ScriptName`) VALUES
(5016, 0, 0, 2, 2, 0, 0, 'at_bane_essence'),
(5838, 0, 0, 2, 2, 0, 0, 'at_bane_essence');

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (5016, 5838);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(5016, 5016, 0, 0, 0, 0, 0, 0, 0, 23420),
(5838, 5838, 0, 0, 0, 0, 0, 0, 0, 23420);

DELETE FROM `instance_template` WHERE `map` = 1492;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES (1492, 0, 'instance_maw_of_souls', 0);

DELETE FROM `creature_text` WHERE `CreatureID` = @YMIRON;
INSERT INTO `creature_text`(`CreatureID`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@YMIRON, '0', '0', 'Mortals... Your wretched kind murdered MY people... destroyed MY kingdom! Long have I waited for a chance to repay what was done to me!', '14', '100', '54370', 'YMIRON - AGGRO_1'),
(@YMIRON, '0', '1', 'Mortals... Your wretched kind murdered MY people... destroyed MY kingdom! Now you, too, will know what it feels like to lose EVERYTHING!', '14', '100', '54371', 'YMIRON - AGGRO_2'),
(@YMIRON, '0', '2', 'Mortals... I fell to your wretched kind once before. It WILL NOT happen again!', '14', '100', '54403', 'YMIRON - AGGRO_3'),
(@YMIRON, '1', '0', 'CRAVEN MAGGOTS!', '14', '100', '54361', 'YMIRON - SCREAM OF DEAD'),
(@YMIRON, '1', '1', 'FLEE, COWARDS!', '14', '100', '54360', 'YMIRON - SCREAM OF DEAD'),
(@YMIRON, '1', '2', 'COWER BEFORE ME!', '14', '100', '54359', 'YMIRON - SCREAM OF DEAD'),
(@YMIRON, '2', '0', 'Know the bitter chill of death as I have!!', '14', '100', '54362', 'YMIRON - WINDS_OF_NORTHREND'),
(@YMIRON, '2', '1', 'The winds of the frozen north still howl in these veins!!', '14', '100', '54364', 'YMIRON - WINDS_OF_NORTHREND'),
(@YMIRON, '3', '0', 'The shadows of the underworld bend to me!!', '14', '100', '54357', 'YMIRON - BANE'),
(@YMIRON, '4', '1', 'The shadows of Helheim cut deeper than steel!', '14', '100', '54358', 'YMIRON - ARISE FALLEN'),
(@YMIRON, '5', '0', 'PAYBACK!', '14', '100', '54369', 'YMIRON - KILL'),
(@YMIRON, '5', '1', 'Vengeance!', '14', '100', '54368', 'YMIRON - KILL'),
(@YMIRON, '5', '2', 'I will carve a new crown from your bones!', '14', '100', '54405', 'YMIRON - KILL'),
(@YMIRON, '6', '0', 'I have learned from my past defeats... It seems you have not.', '14', '100', '54406', 'YMIRON - WIPE'),
(@YMIRON, '7', '0', 'You have not won... The naglfar comes... for you...', '14', '100', '54363', 'YMIRON - DEATH'),
(@YMIRON, '7', '1', 'Not... again... HARBARON! CAST THEIR SOULS INTO THE TIDES!', '14', '100', '54366', 'YMIRON - DEATH'),
(@YMIRON, '7', '2', 'You have not won... You have only... secured your own doom...', '14', '100', '54365', 'YMIRON - DEATH'),
(@YMIRON, '8', '0', 'Your souls will drift for eternity in the tides of the underworld!', '14', '100', '54404', 'YMIRON - INTRO'),
(@YMIRON, '8', '1', 'Another drop in the sea of souls!', '14', '100', '54367', 'YMIRON - INTRO');

