
/*2 npc missing in orgrimmar */

DELETE FROM `creature` WHERE `guid`=300005970;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (300005970, 149270, 1, 0, 0, '0', 0, 0, 0, -1, 0, 0, 1433.37, -4434.89, 25.6585, 1.77315, 300, 0, 0, 46830, 295105, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=300005974;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (300005974, 149270, 1, 0, 0, '0', 0, 0, 0, -1, 0, 0, 1441.84, -4433.74, 25.659, 1.7589, 300, 0, 0, 46830, 295105, 0, 0, 0, 0, 0, 0, '', 0);
