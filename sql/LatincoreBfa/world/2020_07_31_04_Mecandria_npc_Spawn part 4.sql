/*spawn mas update creature templete and quest add*/

UPDATE `creature_template` SET `spell1`=271220, `spell2`=288865, `spell3`=292494 WHERE `entry`=152960;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `type`=7, `faction`=7 WHERE `entry`=152960;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=14 WHERE `entry`=150997;
UPDATE `creature_template` SET `spell1`=261148, `spell2`=288865 WHERE `entry`=150997;
UPDATE `creature_template` SET `spell1`=292494, `spell2`=295359, `spell3`=298485, `spell4`=298491 WHERE `entry`=151660;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=14 WHERE `entry`=151660;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=14 WHERE `entry`=148292;
UPDATE `creature_template` SET `spell1`=257088, `spell2`=257100 WHERE `entry`=148292;
UPDATE `creature_template` SET `spell1`=261148, `spell2`=288865 WHERE `entry`=150997;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=14 WHERE `entry`=150997;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `family`=288, `type`=1, `faction`=14 WHERE `entry`=153699;
UPDATE `creature_template` SET `spell1`=256409 WHERE `entry`=153699;
UPDATE `creature_template` SET `spell1`=256350 WHERE `entry`=152035;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `type`=1, `faction`=7 WHERE `entry`=152035;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=150567;

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=9, `faction`=189 WHERE `entry`=150282;
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=150282;
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='150282' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '150282';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('150282', '57327');
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='150282' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '150282';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('150282', '57327');

UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=150567;
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='150567' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '150567';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('150567', '57326');


UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='150567' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '150567';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('150567', '57326');


DELETE FROM `creature` WHERE `guid`=2103360742696;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742696, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3201.14, 5029.51, 21.7165, 4.59782, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742720;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742720, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3230.39, 5064.89, 7.07232, 0.374366, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742736;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742736, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3276.66, 5086.99, 7.66226, 3.27091, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742737;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742737, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3268.99, 5082.21, 8.65679, 3.25913, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742738;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742738, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3253.57, 5078.23, 5.15786, 3.01566, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742739;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742739, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3252.07, 5082.99, 4.71951, 2.90021, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742740;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742740, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3169.14, 5070.91, 15.3185, 0.997971, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742741;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742741, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3169.68, 5084.53, 14.4146, 3.99191, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742742;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742742, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3166.19, 5091.71, 16.3215, 5.68602, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742743;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742743, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3178.17, 5091.75, 11.8334, 1.61923, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742744;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742744, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3193.8, 5116.7, 12.3521, 1.56504, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742745;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742745, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3206.36, 5111.77, 12.0271, 5.57057, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742746;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742746, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3212.44, 5121.08, 12.4819, 4.43803, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742755;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742755, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3200.64, 5117.53, 12.093, 0.987865, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742756;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742756, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3205.41, 5127.14, 12.7391, 4.47503, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742719;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742719, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3232.53, 5059.46, 8.2255, 0.533016, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742716;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742716, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3309.06, 5054.67, 24.7649, 4.66619, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742715;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742715, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3312.23, 5045.87, 24.3015, 3.01921, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742697;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742697, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3201.22, 5036.96, 20.5607, 1.63922, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742698;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742698, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3211.2, 5017.4, 24.8101, 1.16855, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742699;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742699, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3215.87, 5025.63, 20.348, 0.469544, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742700;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742700, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3234.96, 5023.56, 19.817, 1.12692, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742701;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742701, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3234.83, 5011.13, 22.0584, 5.30289, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742704;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742704, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3235.97, 5009.61, 21.5658, 2.66473, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742705;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742705, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3223.88, 5035.68, 17.7705, 1.17246, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742706;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742706, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3248.94, 4998.47, 22.2424, 6.06314, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742707;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742707, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3249.83, 4990.18, 23.2572, 6.18959, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742708;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742708, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3264.5, 4997.53, 24.9047, 2.77546, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742709;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742709, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3247.56, 4971.48, 23.0996, 1.19681, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742711;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742711, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3287.84, 5040.02, 22.8668, 2.18511, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742712;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742712, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3280.81, 5032.14, 22.6216, 4.21616, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742713;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742713, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3279.51, 5052.93, 22.3214, 4.37402, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742757;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742757, 152960, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3171.61, 5169.94, 17.7545, 3.43595, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature_template` WHERE `entry`=153519;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (153519, 0, 0, 0, 0, 0, 'Rustbolt Citizen', NULL, '', NULL, NULL, 0, 120, 120, 0, 0, 0, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 151663, 0, 0, 0, 0, 0, 0, 0, 0, 261148, 288865, 0, 0, 0, 0, 0, 0, 0, 8000, 9000, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 0);
DELETE FROM `creature_template_model` WHERE `CreatureID`=153519 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (153519, 0, 91847, 1, 1, 33528);

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=153712;
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `rank`=0, `type`=10, `faction`=35 WHERE `entry`=135171;
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `rank`=1, `type`=7, `faction`=35 WHERE `entry`=153641;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=150555;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=7 WHERE `entry`=153877;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=7 WHERE `entry`=153880;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=159529;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=159528;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=14 WHERE `entry`=150997;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=155338;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=189 WHERE `entry`=149815;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=153708;


DELETE FROM `creature` WHERE `guid`=2103360742702;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742702, 151660, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3237.43, 5016.09, 21.9519, 3.74152, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742710;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742710, 151663, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3297.91, 4992.44, 29.4274, 2.28247, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742714;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742714, 151663, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3318.8, 5051.82, 23.3152, 3.42448, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742721;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742721, 151663, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3250.96, 5061.7, 6.11358, 5.13389, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742722;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742722, 151663, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3222.11, 5087.35, 4.58413, 3.28257, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742724;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742724, 151663, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3250.66, 5098, 4.90529, 2.85768, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742718;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742718, 148292, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3258.85, 5043.69, 15.1994, 0.17408, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742781;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742781, 148292, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3253.14, 5040.57, 14.7373, 0.300733, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742725;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742725, 148292, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3240.47, 5080.26, 4.73299, 4.15735, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742717;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742717, 153699, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3259.03, 5041.75, 15.5879, 0.0201421, 300, 0, 0, 47, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742723;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742723, 153699, 1643, 10290, 0, '0', 0, 0, 0, -1, 0, 0, 3238.35, 5080.81, 5.12536, 3.93132, 300, 0, 0, 47, 0, 0, 0, 0, 0, 0, 0, '', 0);

UPDATE `creature_template` SET `lootid`=150997 WHERE `entry`=150997;
UPDATE creature_template SET lootid = 150997 WHERE entry = 150997 AND lootid = 0;
DELETE FROM `creature_loot_template` WHERE `entry` = '150997';
INSERT INTO `creature_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('150997', '152576', '0', '10.72166', '0', '1', '0', '1', '3', ''),
('150997', '152577', '0', '1', '0', '1', '0', '1', '1', ''),
('150997', '154770', '0', '0.07194296', '0', '1', '0', '1', '1', ''),
('150997', '154771', '0', '0.06618752', '0', '1', '0', '1', '1', ''),
('150997', '154772', '0', '0.07266239', '0', '1', '0', '1', '1', ''),
('150997', '154773', '0', '0.08273441', '0', '1', '0', '1', '1', ''),
('150997', '154774', '0', '0.07841783', '0', '1', '0', '1', '1', ''),
('150997', '154775', '0', '0.06402924', '0', '1', '0', '1', '1', ''),
('150997', '154776', '0', '0.06187095', '0', '1', '0', '1', '1', ''),
('150997', '154777', '0', '0.06259038', '0', '1', '0', '1', '1', ''),
('150997', '154778', '0', '0.08345384', '0', '1', '0', '1', '1', ''),
('150997', '154779', '0', '0.06978467', '0', '1', '0', '1', '1', ''),
('150997', '154780', '0', '0.06474867', '0', '1', '0', '1', '1', ''),
('150997', '154781', '0', '0.07625954', '0', '1', '0', '1', '1', ''),
('150997', '154782', '0', '0.08057612', '0', '1', '0', '1', '1', ''),
('150997', '154783', '0', '0.09928129', '0', '1', '0', '1', '1', ''),
('150997', '154784', '0', '0.07913726', '0', '1', '0', '1', '1', ''),
('150997', '154785', '0', '0.07194296', '0', '1', '0', '1', '1', ''),
('150997', '154786', '0', '0.06330981', '0', '1', '0', '1', '1', ''),
('150997', '154787', '0', '0.06978467', '0', '1', '0', '1', '1', ''),
('150997', '154788', '0', '0.07913726', '0', '1', '0', '1', '1', ''),
('150997', '154789', '0', '0.09352585', '0', '1', '0', '1', '1', ''),
('150997', '154790', '0', '0.07050411', '0', '1', '0', '1', '1', ''),
('150997', '154791', '0', '0.07122353', '0', '1', '0', '1', '1', ''),
('150997', '154792', '0', '0.06690696', '0', '1', '0', '1', '1', ''),
('150997', '154793', '0', '0.06330981', '0', '1', '0', '1', '1', ''),
('150997', '154794', '0', '0.07410125', '0', '1', '0', '1', '1', ''),
('150997', '154795', '0', '0.06906524', '0', '1', '0', '1', '1', ''),
('150997', '154796', '0', '0.06762639', '0', '1', '0', '1', '1', ''),
('150997', '154797', '0', '0.07554011', '0', '1', '0', '1', '1', ''),
('150997', '154798', '0', '0.06906524', '0', '1', '0', '1', '1', ''),
('150997', '154799', '0', '0.07554011', '0', '1', '0', '1', '1', ''),
('150997', '154800', '0', '0.05899323', '0', '1', '0', '1', '1', ''),
('150997', '154801', '0', '0.07194296', '0', '1', '0', '1', '1', ''),
('150997', '154802', '0', '0.06978467', '0', '1', '0', '1', '1', ''),
('150997', '154803', '0', '0.08417327', '0', '1', '0', '1', '1', ''),
('150997', '154804', '0', '0.08129555', '0', '1', '0', '1', '1', ''),
('150997', '154805', '0', '0.08561213', '0', '1', '0', '1', '1', ''),
('150997', '158078', '0', '0.09280642', '0', '1', '0', '1', '1', ''),
('150997', '159158', '0', '0.04820178', '0', '1', '0', '1', '1', ''),
('150997', '159161', '0', '0.04532407', '0', '1', '0', '1', '1', ''),
('150997', '159162', '0', '0.03956863', '0', '1', '0', '1', '1', ''),
('150997', '159163', '0', '0.03597148', '0', '1', '0', '1', '1', ''),
('150997', '159164', '0', '0.04244635', '0', '1', '0', '1', '1', ''),
('150997', '159166', '0', '0.03741034', '0', '1', '0', '1', '1', ''),
('150997', '159167', '0', '0.04172692', '0', '1', '0', '1', '1', ''),
('150997', '159168', '0', '0.04460464', '0', '1', '0', '1', '1', ''),
('150997', '159171', '0', '0.04388521', '0', '1', '0', '1', '1', ''),
('150997', '159172', '0', '0.04892122', '0', '1', '0', '1', '1', ''),
('150997', '159173', '0', '0.04892122', '0', '1', '0', '1', '1', ''),
('150997', '159174', '0', '0.0460435', '0', '1', '0', '1', '1', ''),
('150997', '159184', '0', '0.0510795', '0', '1', '0', '1', '1', ''),
('150997', '159185', '0', '0.05611551', '0', '1', '0', '1', '1', ''),
('150997', '159186', '0', '0.04244635', '0', '1', '0', '1', '1', ''),
('150997', '159187', '0', '0.0510795', '0', '1', '0', '1', '1', ''),
('150997', '159188', '0', '0.05683494', '0', '1', '0', '1', '1', ''),
('150997', '159189', '0', '0.0460435', '0', '1', '0', '1', '1', ''),
('150997', '159228', '0', '0.03812977', '0', '1', '0', '1', '1', ''),
('150997', '159229', '0', '0.03597148', '0', '1', '0', '1', '1', ''),
('150997', '159230', '0', '0.04316578', '0', '1', '0', '1', '1', ''),
('150997', '159473', '0', '0.01798574', '0', '1', '0', '1', '1', ''),
('150997', '159474', '0', '0.01798574', '0', '1', '0', '1', '1', ''),
('150997', '159475', '0', '0.02877719', '0', '1', '0', '1', '1', ''),
('150997', '159493', '0', '0.02158289', '0', '1', '0', '1', '1', ''),
('150997', '159496', '0', '0.02518004', '0', '1', '0', '1', '1', ''),
('150997', '159497', '0', '0.02374118', '0', '1', '0', '1', '1', ''),
('150997', '159502', '0', '0.02086346', '0', '1', '0', '1', '1', ''),
('150997', '159504', '0', '0.02302175', '0', '1', '0', '1', '1', ''),
('150997', '159511', '0', '0.02086346', '0', '1', '0', '1', '1', ''),
('150997', '159522', '0', '0.0194246', '0', '1', '0', '1', '1', ''),
('150997', '159523', '0', '0.01798574', '0', '1', '0', '1', '1', ''),
('150997', '159524', '0', '0.02302175', '0', '1', '0', '1', '1', ''),
('150997', '159535', '0', '0.02014403', '0', '1', '0', '1', '1', ''),
('150997', '159537', '0', '0.0194246', '0', '1', '0', '1', '1', ''),
('150997', '159539', '0', '0.02446061', '0', '1', '0', '1', '1', ''),
('150997', '159564', '0', '0.0194246', '0', '1', '0', '1', '1', ''),
('150997', '159566', '0', '0.01870517', '0', '1', '0', '1', '1', ''),
('150997', '159568', '0', '0.0194246', '0', '1', '0', '1', '1', ''),
('150997', '159571', '0', '0.02374118', '0', '1', '0', '1', '1', ''),
('150997', '159584', '0', '0.03381319', '0', '1', '0', '1', '1', ''),
('150997', '159585', '0', '0.0266189', '0', '1', '0', '1', '1', ''),
('150997', '159587', '0', '0.02374118', '0', '1', '0', '1', '1', ''),
('150997', '159589', '0', '0.02086346', '0', '1', '0', '1', '1', ''),
('150997', '159590', '0', '0.01798574', '0', '1', '0', '1', '1', ''),
('150997', '159593', '0', '0.02230232', '0', '1', '0', '1', '1', ''),
('150997', '159602', '0', '0.02589947', '0', '1', '0', '1', '1', ''),
('150997', '159605', '0', '0.02014403', '0', '1', '0', '1', '1', ''),
('150997', '159802', '0', '0.0194246', '0', '1', '0', '1', '1', ''),
('150997', '159805', '0', '0.02230232', '0', '1', '0', '1', '1', ''),
('150997', '159806', '0', '0.02374118', '0', '1', '0', '1', '1', ''),
('150997', '159818', '0', '0.02158289', '0', '1', '0', '1', '1', ''),
('150997', '159820', '0', '0.0194246', '0', '1', '0', '1', '1', ''),
('150997', '160924', '0', '0.07266239', '0', '1', '0', '1', '1', ''),
('150997', '160925', '0', '0.08345384', '0', '1', '0', '1', '1', ''),
('150997', '160926', '0', '0.07410125', '0', '1', '0', '1', '1', ''),
('150997', '160927', '0', '0.07122353', '0', '1', '0', '1', '1', ''),
('150997', '160928', '0', '0.07482068', '0', '1', '0', '1', '1', ''),
('150997', '160929', '0', '0.07338183', '0', '1', '0', '1', '1', ''),
('150997', '160930', '0', '0.06618752', '0', '1', '0', '1', '1', ''),
('150997', '160931', '0', '0.06690696', '0', '1', '0', '1', '1', ''),
('150997', '160932', '0', '0.0654681', '0', '1', '0', '1', '1', ''),
('150997', '160933', '0', '0.08345384', '0', '1', '0', '1', '1', ''),
('150997', '160934', '0', '0.08201498', '0', '1', '0', '1', '1', ''),
('150997', '160935', '0', '0.08705099', '0', '1', '0', '1', '1', ''),
('150997', '160936', '0', '0.07122353', '0', '1', '0', '1', '1', ''),
('150997', '160937', '0', '0.06259038', '0', '1', '0', '1', '1', ''),
('150997', '160938', '0', '0.06402924', '0', '1', '0', '1', '1', ''),
('150997', '166846', '0', '99.60432', '0', '1', '0', '2', '5', ''),
('150997', '167745', '0', '8.840351', '1', '1', '0', '1', '1', ''),
('150997', '169224', '0', '0.07985669', '1', '1', '0', '1', '1', ''),
('150997', '169225', '0', '0.03956863', '1', '1', '0', '1', '1', ''),
('150997', '169227', '0', '0.08057612', '1', '1', '0', '1', '1', ''),
('150997', '169228', '0', '0.02518004', '1', '1', '0', '1', '1', ''),
('150997', '169229', '0', '0.08777042', '1', '1', '0', '1', '1', ''),
('150997', '169230', '0', '0.0848927', '1', '1', '0', '1', '1', ''),
('150997', '169231', '0', '0.0388492', '1', '1', '0', '1', '1', ''),
('150997', '169232', '0', '0.0654681', '1', '1', '0', '1', '1', ''),
('150997', '169233', '0', '0.03741034', '1', '1', '0', '1', '1', ''),
('150997', '169235', '0', '0.03597148', '1', '1', '0', '1', '1', ''),
('150997', '169236', '0', '0.02230232', '1', '1', '0', '1', '1', ''),
('150997', '169237', '0', '0.07482068', '1', '1', '0', '1', '1', ''),
('150997', '171248', '0', '5.897884', '1', '1', '0', '1', '2', ''),
('150997', '172954', '0', '0.07913726', '1', '1', '0', '1', '6', '');

DELETE FROM `creature` WHERE `guid`=2103360742792;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742792, 153519, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3083.93, 4920.04, 22.7051, 0.980116, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=149815;
DELETE FROM `creature_queststarter` WHERE `id` = '149815';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('149815', '54083'),
('149815', '56756');

UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=149815;
DELETE FROM `creature_questender` WHERE `id` = '149815';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('149815', '54083');

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=150573;
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=150573;
DELETE FROM `creature_queststarter` WHERE `id` = '150573';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('150573', '54086'),
('150573', '54922'),
('150573', '54929'),
('150573', '55373'),
('150573', '55608'),
('150573', '55622'),
('150573', '55696'),
('150573', '55697'),
('150573', '55753'),
('150573', '56168'),
('150573', '56175');

DELETE FROM `creature_questender` WHERE `id` = '150573';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('150573', '54086'),
('150573', '54922'),
('150573', '54929'),
('150573', '55373'),
('150573', '55608'),
('150573', '55622'),
('150573', '55696'),
('150573', '55697'),
('150573', '55753'),
('150573', '56168'),
('150573', '56175');

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=9, `faction`=35 WHERE `entry`=150615;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=9, `faction`=35 WHERE `entry`=150617;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=9, `faction`=35 WHERE `entry`=150618;
UPDATE `creature_template` SET `rank`=4, `type`=9 WHERE `entry`=149746;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=150630;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=150631;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=189 WHERE `entry`=155453;

DELETE FROM `npc_vendor` WHERE `entry` = '150631';
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`, `PlayerConditionID`) VALUES
('150631', '1', '160502', '0', '0', '0', '1', '0'),
('150631', '2', '163203', '0', '0', '0', '1', '0'),
('150631', '3', '163569', '0', '0', '0', '1', '0'),
('150631', '4', '168025', '0', '0', '0', '1', '0');


DELETE FROM `creature_queststarter` WHERE `id` = '150631';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('150631', '55211'),
('150631', '55213'),
('150631', '55880'),
('150631', '56319'),
('150631', '56573');


DELETE FROM `creature_questender` WHERE `id` = '150631';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('150631', '55211'),
('150631', '55213'),
('150631', '55880'),
('150631', '56319'),
('150631', '56320'),
('150631', '56573');


DELETE FROM `npc_vendor` WHERE `entry` = '150630';
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`, `PlayerConditionID`) VALUES
('150630', '1', '160502', '0', '0', '0', '1', '0'),
('150630', '2', '163203', '0', '0', '0', '1', '0'),
('150630', '3', '163569', '0', '0', '0', '1', '0'),
('150630', '4', '168025', '0', '0', '0', '1', '0');

UPDATE creature_template SET gossip_menu_id = 9541280 WHERE entry = 150630;
DELETE FROM `gossip_menu_option` WHERE `MenuId`=9541280 AND `OptionIndex`=1;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES (9541280, 1, 1, 'Let me browse your goods.', 2823, 3, 128, 28153);
DELETE FROM `gossip_menu_option` WHERE `MenuId`=9541280 AND `OptionIndex`=0;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES (9541280, 0, 3, 'Train me.', 3266, 5, 16, 28153);

UPDATE creature_template SET npcflag = 211 WHERE entry = 150630;
DELETE FROM `npc_trainer` WHERE `ID` = '150630';
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `Index`) VALUES 
('150630', '253150', '400000', '202', '125', '0', '0'),
('150630', '253151', '650000', '202', '135', '0', '0'),
('150630', '255393', '400000', '202', '50', '0', '0'),
('150630', '255395', '250000', '202', '25', '0', '0'),
('150630', '255396', '400000', '202', '50', '0', '0'),
('150630', '255407', '250000', '202', '25', '0', '0'),
('150630', '255408', '400000', '202', '50', '0', '0'),
('150630', '255457', '400000', '202', '125', '0', '0'),
('150630', '255458', '650000', '202', '135', '0', '0'),
('150630', '255936', '350000', '202', '100', '0', '0'),
('150630', '255940', '350000', '202', '100', '0', '0'),
('150630', '256070', '280000', '202', '35', '0', '0'),
('150630', '256071', '500000', '202', '80', '0', '0'),
('150630', '256073', '280000', '202', '35', '0', '0'),
('150630', '256074', '500000', '202', '80', '0', '0'),
('150630', '256080', '280000', '202', '35', '0', '0'),
('150630', '256082', '500000', '202', '80', '0', '0'),
('150630', '256154', '280000', '202', '35', '0', '0'),
('150630', '256155', '500000', '202', '80', '0', '0'),
('150630', '264492', '500000', '0', '0', '0', '0'),
('150630', '264960', '300000', '202', '50', '0', '0'),
('150630', '264961', '650000', '202', '100', '0', '0'),
('150630', '264964', '300000', '202', '50', '0', '0'),
('150630', '264966', '650000', '202', '100', '0', '0'),
('150630', '265097', '300000', '202', '50', '0', '0'),
('150630', '265098', '650000', '202', '100', '0', '0'),
('150630', '265100', '300000', '202', '50', '0', '0'),
('150630', '265101', '650000', '202', '100', '0', '0'),
('150630', '265807', '500000', '0', '0', '0', '0'),
('150630', '269123', '350000', '202', '100', '0', '0'),
('150630', '269724', '400000', '202', '125', '0', '0'),
('150630', '269727', '400000', '202', '125', '0', '0'),
('150630', '272056', '1000000', '202', '130', '0', '0'),
('150630', '272059', '1000000', '202', '130', '0', '0'),
('150630', '272062', '1000000', '202', '130', '0', '0'),
('150630', '272065', '1000000', '202', '130', '0', '0'),
('150630', '278413', '500000', '202', '95', '0', '0'),
('150630', '280732', '0', '0', '0', '0', '0'),
('150630', '280733', '0', '0', '0', '0', '0'),
('150630', '280734', '0', '0', '0', '0', '0'),
('150630', '282806', '400000', '202', '135', '0', '0'),
('150630', '282809', '400000', '202', '135', '0', '0'),
('150630', '283914', '650000', '202', '100', '0', '0'),
('150630', '286647', '250000', '0', '0', '0', '0'),
('150630', '286864', '1100000', '202', '150', '0', '0'),
('150630', '286867', '1100000', '202', '150', '0', '0'),
('150630', '286870', '1100000', '202', '150', '0', '0'),
('150630', '286873', '1100000', '202', '150', '0', '0'),
('150630', '287279', '250000', '0', '0', '0', '0'),
('150630', '291089', '1050000', '202', '125', '0', '0'),
('150630', '291091', '1050000', '202', '125', '0', '0'),
('150630', '291093', '1050000', '202', '125', '0', '0'),
('150630', '291095', '1050000', '202', '125', '0', '0');

UPDATE creature_template SET npcflag = 211 WHERE entry = 150631;
UPDATE creature_template SET gossip_menu_id = 9541281 WHERE entry = 150631;
DELETE FROM `gossip_menu_option` WHERE `MenuId`=9541281 AND `OptionIndex`=1;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES (9541281, 1, 1, 'Let me browse your goods.', 2823, 3, 128, 28153);
DELETE FROM `gossip_menu_option` WHERE `MenuId`=9541281 AND `OptionIndex`=0;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES (9541281, 0, 3, 'Train me.', 3266, 5, 16, 28153);


DELETE FROM `npc_trainer` WHERE `ID` = '150631';
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `Index`) VALUES 
('150631', '253150', '400000', '202', '125', '0', '0'),
('150631', '253151', '650000', '202', '135', '0', '0'),
('150631', '255393', '400000', '202', '50', '0', '0'),
('150631', '255395', '250000', '202', '25', '0', '0'),
('150631', '255396', '400000', '202', '50', '0', '0'),
('150631', '255407', '250000', '202', '25', '0', '0'),
('150631', '255408', '400000', '202', '50', '0', '0'),
('150631', '255457', '400000', '202', '125', '0', '0'),
('150631', '255458', '650000', '202', '135', '0', '0'),
('150631', '255936', '350000', '202', '100', '0', '0'),
('150631', '255940', '350000', '202', '100', '0', '0'),
('150631', '256070', '280000', '202', '35', '0', '0'),
('150631', '256071', '500000', '202', '80', '0', '0'),
('150631', '256073', '280000', '202', '35', '0', '0'),
('150631', '256074', '500000', '202', '80', '0', '0'),
('150631', '256080', '280000', '202', '35', '0', '0'),
('150631', '256082', '500000', '202', '80', '0', '0'),
('150631', '256154', '280000', '202', '35', '0', '0'),
('150631', '256155', '500000', '202', '80', '0', '0'),
('150631', '264492', '500000', '0', '0', '0', '0'),
('150631', '264960', '300000', '202', '50', '0', '0'),
('150631', '264961', '650000', '202', '100', '0', '0'),
('150631', '264964', '300000', '202', '50', '0', '0'),
('150631', '264966', '650000', '202', '100', '0', '0'),
('150631', '265097', '300000', '202', '50', '0', '0'),
('150631', '265098', '650000', '202', '100', '0', '0'),
('150631', '265100', '300000', '202', '50', '0', '0'),
('150631', '265101', '650000', '202', '100', '0', '0'),
('150631', '265807', '500000', '0', '0', '0', '0'),
('150631', '269123', '350000', '202', '100', '0', '0'),
('150631', '269724', '400000', '202', '125', '0', '0'),
('150631', '269727', '400000', '202', '125', '0', '0'),
('150631', '272056', '1000000', '202', '130', '0', '0'),
('150631', '272059', '1000000', '202', '130', '0', '0'),
('150631', '272062', '1000000', '202', '130', '0', '0'),
('150631', '272065', '1000000', '202', '130', '0', '0'),
('150631', '278413', '500000', '202', '95', '0', '0'),
('150631', '280732', '0', '0', '0', '0', '0'),
('150631', '280733', '0', '0', '0', '0', '0'),
('150631', '280734', '0', '0', '0', '0', '0'),
('150631', '282806', '400000', '202', '135', '0', '0'),
('150631', '282809', '400000', '202', '135', '0', '0'),
('150631', '283914', '650000', '202', '100', '0', '0'),
('150631', '286647', '250000', '0', '0', '0', '0'),
('150631', '286864', '1100000', '202', '150', '0', '0'),
('150631', '286867', '1100000', '202', '150', '0', '0'),
('150631', '286870', '1100000', '202', '150', '0', '0'),
('150631', '286873', '1100000', '202', '150', '0', '0'),
('150631', '287279', '250000', '0', '0', '0', '0'),
('150631', '291089', '1050000', '202', '125', '0', '0'),
('150631', '291091', '1050000', '202', '125', '0', '0'),
('150631', '291093', '1050000', '202', '125', '0', '0'),
('150631', '291095', '1050000', '202', '125', '0', '0');

DELETE FROM `creature_queststarter` WHERE `id` = '150630';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('150630', '54082'),
('150630', '55210'),
('150630', '56320'),
('150630', '56621');

DELETE FROM `creature_questender` WHERE `id` = '150630';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('150630', '54082'),
('150630', '55210'),
('150630', '56621');

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=153651;
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=153651;
DELETE FROM `npc_vendor` WHERE `entry` = 153651 AND `type` = 1;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`) VALUES
(153651, 0, 169115, 0, 0, 0, 1), 
(153651, 0, 169116, 0, 0, 0, 1), 
(153651, 0, 169117, 0, 0, 0, 1), 
(153651, 0, 169118, 0, 0, 0, 1), 
(153651, 0, 169119, 0, 0, 0, 1), 
(153651, 0, 169120, 0, 0, 0, 1);

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=9, `faction`=35 WHERE `entry`=150632;
UPDATE creature_template SET npcflag = 16 WHERE entry = 150632;
DELETE FROM `npc_trainer` WHERE `ID` = '150632';
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `Index`) VALUES
('150632', '2550', '10', '0', '0', '0', '0'),
('150632', '259411', '250000', '185', '35', '0', '0'),
('150632', '259412', '350000', '185', '50', '0', '0'),
('150632', '259414', '375000', '185', '90', '0', '0'),
('150632', '259415', '450000', '185', '110', '0', '0'),
('150632', '259418', '375000', '185', '110', '0', '0'),
('150632', '259419', '450000', '185', '150', '0', '0'),
('150632', '259421', '600000', '185', '150', '0', '0'),
('150632', '259424', '250000', '185', '35', '0', '0'),
('150632', '259425', '350000', '185', '50', '0', '0'),
('150632', '259427', '375000', '185', '90', '0', '0'),
('150632', '259428', '450000', '185', '110', '0', '0'),
('150632', '259431', '300000', '185', '35', '0', '0'),
('150632', '259433', '375000', '185', '85', '0', '0'),
('150632', '259434', '450000', '185', '110', '0', '0'),
('150632', '259436', '250000', '185', '35', '0', '0'),
('150632', '259437', '350000', '185', '50', '0', '0'),
('150632', '259439', '375000', '185', '90', '0', '0'),
('150632', '259440', '450000', '185', '110', '0', '0'),
('150632', '259443', '350000', '185', '50', '0', '0'),
('150632', '259445', '375000', '185', '90', '0', '0'),
('150632', '259446', '450000', '185', '110', '0', '0'),
('150632', '264646', '500000', '0', '0', '0', '0'),
('150632', '265817', '500000', '0', '0', '0', '0'),
('150632', '286381', '450000', '185', '100', '0', '0'),
('150632', '287108', '700000', '185', '150', '0', '0'),
('150632', '288027', '250000', '185', '35', '0', '0'),
('150632', '288028', '350000', '185', '50', '0', '0'),
('150632', '288030', '375000', '185', '90', '0', '0'),
('150632', '288032', '450000', '185', '110', '0', '0'),
('150632', '290471', '250000', '185', '120', '0', '0'),
('150632', '297075', '850000', '185', '170', '0', '0'),
('150632', '297077', '750000', '185', '165', '0', '0'),
('150632', '297078', '750000', '185', '165', '0', '0'),
('150632', '297079', '850000', '185', '170', '0', '0'),
('150632', '297081', '750000', '185', '165', '0', '0'),
('150632', '297082', '850000', '185', '170', '0', '0'),
('150632', '297084', '750000', '185', '165', '0', '0'),
('150632', '297085', '850000', '185', '170', '0', '0'),
('150632', '297087', '750000', '185', '165', '0', '0'),
('150632', '297088', '850000', '185', '170', '0', '0'),
('150632', '297105', '1000000', '185', '165', '0', '0');

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=150628;
UPDATE creature_template SET npcflag = 65537 WHERE entry = 150628;

UPDATE `creature_template` SET `lootid`=150997 WHERE `entry`=150997;
REPLACE INTO `creature_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(150997, 152576, 0, 11, 0, 1, 0, 1, 3, 0), 
(150997, 152577, 0, 1, 0, 1, 0, 1, 1, 0), 
(150997, 200001, 0, 5, 0, 1, 0, 1, 1, 0), 
(150997, 200008, 0, 3, 0, 1, 0, 1, 1, 0), 
(150997, 200002, 0, 3, 0, 1, 0, 1, 1, 0), 
(150997, 200003, 0, 0.1, 0, 1, 0, 1, 1, 0), 
(150997, 166846, 0, 100, 0, 1, 0, 2, 5, 0), 
(150997, 167745, 0, -10, 0, 1, 0, 1, 1, 0), 
(150997, 169224, 0, -0.09, 0, 1, 0, 1, 1, 0), 
(150997, 169225, 0, -0.05, 0, 1, 0, 1, 1, 0), 
(150997, 169226, 0, -0.02, 0, 1, 0, 1, 1, 0), 
(150997, 169227, 0, -0.09, 0, 1, 0, 1, 1, 0), 
(150997, 169228, 0, -0.03, 0, 1, 0, 1, 1, 0), 
(150997, 169229, 0, -0.09, 0, 1, 0, 1, 1, 0), 
(150997, 169230, 0, -0.08, 0, 1, 0, 1, 1, 0), 
(150997, 169231, 0, -0.05, 0, 1, 0, 1, 1, 0), 
(150997, 169232, 0, -0.07, 0, 1, 0, 1, 1, 0), 
(150997, 169233, 0, -0.04, 0, 1, 0, 1, 1, 0), 
(150997, 169235, 0, -0.05, 0, 1, 0, 1, 1, 0), 
(150997, 169236, 0, -0.02, 0, 1, 0, 1, 1, 0), 
(150997, 169237, 0, -0.09, 0, 1, 0, 1, 1, 0), 
(150997, 169238, 0, -0.02, 0, 1, 0, 1, 1, 0), 
(150997, 169239, 0, -0.02, 0, 1, 0, 1, 1, 0), 
(150997, 171248, 0, -6, 0, 1, 0, 1, 2, 0);

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=153709;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=155187;

UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=155187;
DELETE FROM `creature_queststarter` WHERE `id` = '155187';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('155187', '56471');

DELETE FROM `creature_questender` WHERE `id` = '155187';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('155187', '56471');

UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=155188;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=155188;
DELETE FROM `creature_queststarter` WHERE `id` = '155188';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('155188', '56493');

DELETE FROM `creature_questender` WHERE `id` = '155188';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('155188', '56493'),
('155188', '56501');

UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=153373;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=153373;
DELETE FROM `creature_queststarter` WHERE `id` = '153373';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('153373', '55905');

DELETE FROM `creature_questender` WHERE `id` = '153373';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('153373', '55905');

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=154061;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=153889;

DELETE FROM `creature` WHERE `guid`=2103360742807;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742807, 153889, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3095.65, 4972.05, 33.8593, 0.245424, 300, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742806;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742806, 154061, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3094.69, 4966.77, 34.2852, 3.38244, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742805;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742805, 153373, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3094.25, 4963.64, 31.8899, 3.55523, 300, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742802;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742802, 155188, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3100.56, 4932.28, 28.2087, 1.99228, 300, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742803;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742803, 155187, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3102.04, 4934.42, 28.1904, 2.23122, 300, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `gossip_menu_option` WHERE `MenuId`=9541283 AND `OptionIndex`=0;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
(9541283, 0, 5, 'Make this inn your home.', 2822, 8, 65536, 28153);

DELETE FROM `gossip_menu_option` WHERE `MenuId`=9541283 AND `OptionIndex`=1;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
(9541283, 1, 0, 'I m hungry. do you have anything Ican eat?.', 0, 1, 1, 28153);

DELETE FROM `gossip_menu` WHERE `MenuId`=9541283 AND `TextId`=1000006;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES (9541283, 1000006, 0);

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=153703;
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `rank`=1, `type`=7, `faction`=35 WHERE `entry`=151828;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=153875;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=153876;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=153707;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=150627;
UPDATE `creature_template` SET `rank`=0, `type`=9 WHERE `entry`=153940;
UPDATE `creature_template` SET `rank`=0, `type`=9 WHERE `entry`=153938;
UPDATE `creature_template` SET `rank`=0, `type`=9 WHERE `entry`=153939;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=153063;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=151010;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=153705;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=121, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=151019;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=153061;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=151006;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=153704;
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='151006' AND `npcflag`='0';

DELETE FROM `creature_queststarter` WHERE `id` = '151006';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('151006', '54090'),
('151006', '55528'),
('151006', '56355');
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='151006' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '151006';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('151006', '54090'),
('151006', '55528'),
('151006', '56355');

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=152770;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=152747;

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152747' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '152747';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('152747', '55707'),
('152747', '55708'),
('152747', '55979');
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152747' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '152747';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('152747', '55707'),
('152747', '55708'),
('152747', '55979'),
('152747', '56508');

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=155578;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=155577;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=155580;

DELETE FROM `creature_template` WHERE `entry`=150629;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(150629, 0, 0, 0, 0, 0, 'Vera Lonelycog', '', 'Stable Master', NULL, NULL, 0, 1, 1, 7, 0, 0, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
DELETE FROM `creature_model_info` WHERE `DisplayID`=90823;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (90823, 1, 1, 0, 34601);
DELETE FROM `creature_template_model` WHERE `CreatureID`=150629 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (150629, 0, 90823, 1, 1, 33528);
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=150629;

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='150629' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '150629';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('150629', '56436'),
('150629', '56437'),
('150629', '56438'),
('150629', '56439'),
('150629', '56440'),
('150629', '56441'),
('150629', '56442'),
('150629', '56443');

DELETE FROM `creature_template` WHERE `entry`=152111;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(152111, 0, 0, 0, 0, 0, 'Malachi Moneybolt', '', NULL, NULL, NULL, 0, 1, 1, 7, 0, 0, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
DELETE FROM `creature_model_info` WHERE `DisplayID`=92471;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (92471, 1, 1, 0, 34601);
DELETE FROM `creature_template_model` WHERE `CreatureID`=152111 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (152111, 0, 92471, 1, 1, 33528);
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=152111;

DELETE FROM `creature_template` WHERE `entry`=151011;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(151011, 0, 0, 0, 0, 0, 'Builder Ba', '', NULL, NULL, NULL, 0, 1, 1, 7, 0, 0, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
DELETE FROM `creature_model_info` WHERE `DisplayID`=90982;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (90982, 1, 1, 0, 34601);
DELETE FROM `creature_template_model` WHERE `CreatureID`=151011 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (151011, 0, 90982, 1, 1, 33528);
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=151011;

DELETE FROM `creature_template` WHERE `entry`=151356;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(151356, 0, 0, 0, 0, 0, 'Yunhwan Grapplebottle', '', NULL, NULL, NULL, 0, 1, 1, 7, 0, 0, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
DELETE FROM `creature_model_info` WHERE `DisplayID`=92471;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (92471, 1, 1, 0, 34601);
DELETE FROM `creature_template_model` WHERE `CreatureID`=151356 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (151356, 0, 92471, 1, 1, 33528);
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=151356;

DELETE FROM `creature_template` WHERE `entry`=151005;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(151005, 0, 0, 0, 0, 0, 'Greusel Grimecheek', '', NULL, NULL, NULL, 0, 1, 1, 7, 0, 0, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
DELETE FROM `creature_model_info` WHERE `DisplayID`=92471;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (92471, 1, 1, 0, 34601);
DELETE FROM `creature_template_model` WHERE `CreatureID`=151005 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (151005, 0, 92471, 1, 1, 33528);
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=151005;

DELETE FROM `creature_template` WHERE `entry`=151002;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(151002, 0, 0, 0, 0, 0, 'Barcinski Keenwatts', '', NULL, NULL, NULL, 0, 1, 1, 7, 0, 0, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
DELETE FROM `creature_model_info` WHERE `DisplayID`=92471;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (92471, 1, 1, 0, 34601);
DELETE FROM `creature_template_model` WHERE `CreatureID`=151002 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (151002, 0, 92471, 1, 1, 33528);
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=151002;

DELETE FROM `creature_template` WHERE `entry`=151009;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(151009, 0, 0, 0, 0, 0, 'Chewy Voltbiter', '', NULL, NULL, NULL, 0, 1, 1, 7, 0, 0, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
DELETE FROM `creature_model_info` WHERE `DisplayID`=92471;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (92471, 1, 1, 0, 34601);
DELETE FROM `creature_template_model` WHERE `CreatureID`=151009 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (151009, 0, 92471, 1, 1, 33528);
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=151009;

DELETE FROM `creature_template` WHERE `entry`=153706;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(153706, 0, 0, 0, 0, 0, 'Igor Gigafuse', '', NULL, NULL, NULL, 0, 1, 1, 7, 0, 0, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
DELETE FROM `creature_model_info` WHERE `DisplayID`=92471;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (92471, 1, 1, 0, 34601);
DELETE FROM `creature_template_model` WHERE `CreatureID`=153706 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (153706, 0, 92471, 1, 1, 33528);
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=153706;

DELETE FROM `creature_template` WHERE `entry`=151004;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(151004, 0, 0, 0, 0, 0, 'Caskey Fusespark', '', NULL, NULL, NULL, 0, 1, 1, 7, 0, 0, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
DELETE FROM `creature_model_info` WHERE `DisplayID`=92471;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (92471, 1, 1, 0, 34601);
DELETE FROM `creature_template_model` WHERE `CreatureID`=151004 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (151004, 0, 92471, 1, 1, 33528);
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=151004;

DELETE FROM `creature_template` WHERE `entry`=151003;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(151003, 0, 0, 0, 0, 0, 'Mando Gearmash', '', NULL, NULL, NULL, 0, 1, 1, 7, 0, 0, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
DELETE FROM `creature_model_info` WHERE `DisplayID`=92471;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (92471, 1, 1, 0, 34601);
DELETE FROM `creature_template_model` WHERE `CreatureID`=151003 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (151003, 0, 92471, 1, 1, 33528);
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=151003;

DELETE FROM `creature_template` WHERE `entry`=151357;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(151357, 0, 0, 0, 0, 0, 'Manish Megafault', '', NULL, NULL, NULL, 0, 1, 1, 7, 0, 0, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
DELETE FROM `creature_model_info` WHERE `DisplayID`=92471;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (92471, 1, 1, 0, 34601);
DELETE FROM `creature_template_model` WHERE `CreatureID`=151357 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (151357, 0, 92471, 1, 1, 33528);
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=151357;

DELETE FROM `creature_template` WHERE `entry`=151008;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(151008, 0, 0, 0, 0, 0, 'Yurik Fingersprings', '', NULL, NULL, NULL, 0, 1, 1, 7, 0, 0, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
DELETE FROM `creature_model_info` WHERE `DisplayID`=92471;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (92471, 1, 1, 0, 34601);
DELETE FROM `creature_template_model` WHERE `CreatureID`=151008 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (151008, 0, 92471, 1, 1, 33528);
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=151008;

DELETE FROM `creature` WHERE `guid`=2103360742819;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742819, 150629, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3203.69, 5001.36, 28.6315, 0.922645, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742772;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742772, 151828, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3106.48, 4896.39, 33.8678, 6.16665, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742815;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742815, 151828, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3184.54, 4982.05, 25.6882, 4.14042, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742816;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742816, 151828, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3191.41, 4973.57, 24.8065, 0.0924797, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742788;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742788, 151828, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3078.33, 4928.85, 24.479, 6.17019, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742787;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742787, 151828, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3094.72, 4927.86, 26.7617, 2.75528, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742786;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742786, 151828, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3104.35, 4971.19, 29.3355, 0.507566, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742785;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742785, 151828, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3113.43, 4967.68, 29.1618, 2.94875, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742784;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742784, 151828, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3133.43, 4951.15, 29.0973, 4.57923, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742783;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742783, 151828, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3169.98, 4937.01, 25.615, 4.35138, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742782;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742782, 151828, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3164.64, 4926.75, 25.2052, 1.33665, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742778;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742778, 151828, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3128.72, 4904.22, 33.5029, 4.67954, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742776;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742776, 151828, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3124.79, 4903.41, 33.6541, 4.99545, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742775;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742775, 151828, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3126.81, 4904, 33.5792, 4.99545, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742774;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742774, 151828, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3125.22, 4885.86, 33.7754, 1.28053, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742773;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742773, 151828, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3109.52, 4881.86, 33.4338, 0.709544, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742814;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742814, 151828, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3178.67, 4987.15, 26.2345, 4.07715, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742822;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742822, 152111, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3165.67, 4979.58, 26.236, 0.540158, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742823;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742823, 151011, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3162.07, 4979.66, 28.6647, 1.12959, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742824;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742824, 151356, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3160.52, 4981.95, 27.5684, 0.634292, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742825;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742825, 151005, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3160.47, 4991.88, 26.115, 6.02784, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742826;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742826, 151002, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3159.81, 4996.58, 26.0919, 5.56103, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742827;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742827, 151009, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3162.56, 4996.58, 26.0919, 5.28915, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742828;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742828, 153706, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3165.4, 5000.12, 26.0919, 4.3829, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742830;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742830, 151004, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3168.56, 4996.81, 26.0909, 4.41814, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742831;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742831, 151003, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3171.91, 4995.84, 26.2981, 4.51317, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742832;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742832, 151357, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3175.09, 4998.84, 28.5272, 4.41923, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=2103360742833;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (2103360742833, 151008, 1643, 10290, 10418, '0', 0, 0, 0, -1, 0, 0, 3174.7, 4992.95, 26.2853, 4.20795, 300, 0, 0, 43361, 0, 0, 0, 0, 0, 0, 0, '', 0);

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=9, `faction`=14 WHERE `entry`=153523;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=1, `type`=7, `faction`=85 WHERE `entry`=153529;

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=150563;
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='150563' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '150563';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('150563', '55381'),
('150563', '55382'),
('150563', '55383'),
('150563', '56083'),
('150563', '56362'),
('150563', '56364'),
('150563', '56749'),
('150563', '56750'),
('150563', '56752'),
('150563', '56754'),
('150563', '56758'),
('150563', '56759'),
('150563', '56762'),
('150563', '56765');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='150563' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '150563';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('150563', '55381'),
('150563', '55382'),
('150563', '55383'),
('150563', '56083'),
('150563', '56362'),
('150563', '56364'),
('150563', '56749'),
('150563', '56750'),
('150563', '56752'),
('150563', '56754'),
('150563', '56758'),
('150563', '56759'),
('150563', '56762'),
('150563', '56765');

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=1, `type`=7, `faction`=85 WHERE `entry`=150634;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `type`=9, `faction`=35 WHERE `entry`=153972;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=154334;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=152510;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=85 WHERE `entry`=152509;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `family`=8, `type`=1, `faction`=7 WHERE `entry`=153462;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=10, `faction`=14 WHERE `entry`=152289;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=121, `rank`=0, `type`=9, `faction`=14 WHERE `entry`=149843;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=9, `faction`=35 WHERE `entry`=155179;

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `rank`=0, `type`=7, `faction`=35 WHERE `entry`=153701;
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='153701' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '153701';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('153701', '56532');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='153701' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '153701';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('153701', '56532');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='149816' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '149816';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('149816', '55609'),
('149816', '58214');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='149816' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '149816';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('149816', '55348'),
('149816', '55609'),
('149816', '55736'),
('149816', '57487');