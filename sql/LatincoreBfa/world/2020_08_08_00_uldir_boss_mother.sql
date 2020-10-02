/* Mother - 140853 */
UPDATE creature_template SET
`rank`=3,
minlevel=120,
maxlevel=120,
ScriptName="uldir_boss_mother"
WHERE entry=140853;

replace into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values
('2103360742853','140853','1861','0','0','17','0','0','0','-1','0','0','-135.969','-256.225','695.215','3.15567','300','0','0','9001','0','0','0','0','0','0','0','','0');

