/*Areatrigger*/
DELETE FROM `spell_areatrigger` WHERE (`SpellMiscId`) IN ('9769');
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES ('9769', '3769', '0', '0', '0', '0', '0', '0', '20000', '0');

/*Areatrigger*/
DELETE FROM `areatrigger_template` WHERE (`Id`) IN ('3769');
INSERT INTO `areatrigger_template` (`Id`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES ('3769', '4', '0', '10', '10', '7', '7', '3', '3', 'at_hun_sentinel', '0');

DELETE FROM `spell_script_names` WHERE (`spell_id`='206817') AND (`ScriptName`='spell_hun_sentinel')