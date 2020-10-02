replace INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (163016, 0, 95187, 1, 1, 28153);
replace INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (95187, 0, 0, 0, 0);


UPDATE `creature_template` SET `npcflag`=16 WHERE `entry`=2489;
DELETE FROM `npc_trainer` WHERE `id`=2489;
INSERT INTO `npc_trainer` (`id`, `spellid`, `moneycost`, `reqskillline`, `reqskillrank`, `reqlevel`) VALUES
(2489, 3561, 5100, 904, 0, 17), 
(2489, 3562, 5100, 904, 0, 17), 
(2489, 3565, 5100, 904, 0, 17), 
(2489, 10059, 16500, 904, 0, 42), 
(2489, 11416, 16500, 904, 0, 42), 
(2489, 11419, 16500, 904, 0, 42), 
(2489, 32266, 16500, 904, 0, 42), 
(2489, 32271, 5100, 904, 0, 17), 
(2489, 33690, 81000, 904, 0, 62), 
(2489, 33691, 105000, 904, 0, 66), 
(2489, 49359, 5100, 904, 0, 17), 
(2489, 49360, 16500, 904, 0, 42), 
(2489, 53140, 150000, 904, 0, 60), 
(2489, 53142, 168000, 904, 0, 74), 
(2489, 88342, 282000, 904, 0, 85), 
(2489, 88345, 282000, 904, 0, 85), 
(2489, 132620, 423000, 904, 0, 90), 
(2489, 132621, 423000, 904, 0, 90), 
(2489, 176246, 635000, 904, 0, 92), 
(2489, 176248, 635000, 904, 0, 92), 
(2489, 224869, 500000, 904, 0, 71), 
(2489, 281400, 750000, 904, 0, 110), 
(2489, 281403, 750000, 904, 0, 110), 
(2489, 224871, 0 , 904, 0, 74);

UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=163016;
DELETE FROM `creature_queststarter` WHERE `id`=163016;
INSERT INTO `creature_queststarter` (`id`,`quest`) VALUES
(163016, 58877), 
(163016, 58902), 
(163016, 58903);

DELETE FROM `creature_questender` WHERE `id`=163016;
INSERT INTO `creature_questender` (`id`,`quest`) VALUES
(163016, 58877);

DELETE FROM `creature` WHERE `guid`=300005732;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (300005732, 161711, 2297, 0, 0, '0', 0, 0, 0, -1, 0, 0, 460.395, -2105.7, 840.857, 6.25625, 300, 0, 0, 3700, 60, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=300005733;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (300005733, 161711, 2297, 0, 0, '0', 0, 0, 0, -1, 0, 0, 462.985, -2141.52, 840.857, 0.220466, 300, 0, 0, 3700, 60, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=300005738;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (300005738, 163016, 2297, 0, 0, '0', 0, 0, 0, -1, 0, 0, 426.201, -2123.69, 866.533, 3.333, 300, 0, 0, 63180, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=300005729;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (300005729, 161709, 2297, 0, 0, '0', 0, 0, 0, -1, 0, 0, 462.079, -2135.79, 840.857, 6.22248, 300, 0, 0, 3700, 1500, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=300005731;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (300005731, 161707, 2297, 0, 0, '0', 0, 0, 0, -1, 0, 0, 459.752, -2112.55, 840.857, 6.19028, 300, 0, 0, 3700, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=300005728;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (300005728, 161708, 2297, 0, 0, '0', 0, 0, 0, -1, 0, 0, 462.389, -2138.25, 840.857, 0.108155, 300, 0, 0, 3700, 300, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=300005730;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (300005730, 161706, 2297, 0, 0, '0', 0, 0, 0, -1, 0, 0, 460.145, -2109.18, 840.857, 6.10231, 300, 0, 0, 3700, 60, 0, 0, 0, 0, 0, 0, '', 0);


