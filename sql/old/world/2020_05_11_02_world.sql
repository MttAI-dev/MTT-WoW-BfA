DELETE FROM `creature_queststarter` WHERE `id`=92718;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES 
(92718, 38672),
(92718, 38723),
(92718, 40253);

DELETE FROM `creature_queststarter` WHERE `id`=96665 AND `quest`=39682;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (96665, 39682);

DELETE FROM `creature_queststarter` WHERE `id`=96675 AND `quest`=39683;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (96675, 39683);
DELETE FROM `creature_queststarter` WHERE `id`=96675 AND `quest`=39686;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (96675, 39686);
DELETE FROM `creature_queststarter` WHERE `id`=96675 AND `quest`=40254;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (96675, 40254);

DELETE FROM `creature_queststarter` WHERE `id`=97643 AND `quest`=39684;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (97643, 39684);
DELETE FROM `creature_queststarter` WHERE `id`=97643 AND `quest`=39685;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (97643, 39685);


DELETE FROM `creature_queststarter` WHERE `id`=97644;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES 
(97644, 40373),
(97644, 39688),
(97644, 39694),
(97644, 40255),
(97644, 40256);



DELETE FROM `creature_text` WHERE `creatureid` IN (35550, 35753, 35907);
INSERT INTO `creature_text` VALUES
(35550, 0, 0, 'Fire!', 14, 0, 100, 0, 0, 0, 0, 0, ''),
(35550, 0, 1, 'Hold the barricades! Do not give them an inch!', 14, 0, 100, 0, 0, 0, 0, 0, ''),
(35550, 0, 2, 'Keep them back!', 14, 0, 100, 0, 0, 0, 0, 0, ''),
(35753, 0, 0, 'Help! Up here!', 14, 0, 100, 0, 0, 0, 0, 0, ''),
(35907, 1, 0, 'Thank you! I owe you my life.', 12, 0, 100, 0, 0, 0, 0, 0, '');

DELETE FROM `waypoints` WHERE `entry` IN (35905);
INSERT INTO `waypoints` VALUES 
(35905, 16, -1771.46, 1430.1, 19.8183, ''),
(35905, 15, -1766.16, 1404.17, 19.8109, ''),
(35905, 14, -1746.3, 1375.96, 19.97, ''),
(35905, 13, -1725.38, 1356.36, 19.8184, ''),
(35905, 12, -1705.86, 1350.95, 19.8964, ''),
(35905, 11, -1685.27, 1355.4, 15.1356, ''),
(35905, 10, -1672.07, 1362.12, 15.135, ''),
(35905, 9, -1666.29, 1355.75, 15.135, ''),
(35905, 8, -1668.71, 1348.29, 15.1366, ''),
(35905, 7, -1674.46, 1344.95, 15.1352, ''),
(35905, 6, -1707.42, 1345.95, 19.896, ''),
(35905, 5, -1728.55, 1351.81, 19.6012, ''),
(35905, 4, -1755.42, 1368.4, 19.7833, ''),
(35905, 3, -1777.13, 1369.23, 19.8021, ''),
(35905, 2, -1790.45, 1383.17, 19.8166, ''),
(35905, 1, -1800.37, 1407.18, 20.0265, '');

DELETE FROM `gameobject` WHERE `guid`=905000;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) 
VALUES (905000, 301027, 654, 1, 1, 1, 0, 171, 0, -1, -1674.46, 1344.95, 15.1352, 0, 0, 0, 0, 0, 300, 0, 0, 1, '', 0);

DELETE FROM `gameobject_addon` WHERE `guid`=905000;
INSERT INTO `gameobject_addon` (`guid`, `parent_rotation0`, `parent_rotation1`, `parent_rotation2`, `parent_rotation3`, `invisibilityType`, `invisibilityValue`, `WorldEffectID`)
 VALUES (905000, 0, 0, 0, 1, 8, 1000, 0);

DELETE FROM spell_area WHERE spell = 49416 AND area = 4757;
INSERT INTO spell_area (`spell`, `area`, `quest_start`, `quest_end`, `quest_start_status`, `quest_end_status`) 
VALUES (49416, 4757, 14293, 14294, 74, 64);

-- Lord Godfrey 35906 Quest Ender for Save Krennan Aranas
UPDATE creature SET PhaseID = 172 where GUID = 210115272 and PhaseID = 171;
UPDATE creature SET PhaseID = 170 where GUID = 210115271 and PhaseID = 0;



DELETE FROM `creature_queststarter` WHERE `id`=92986 AND `quest`=38689;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (92986, 38689);

DELETE FROM `creature_queststarter` WHERE `id`=92980 AND `quest`=38690;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (92980, 38690);

DELETE FROM `creature_queststarter` WHERE `id`=97978 AND `quest`=39689;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (97978, 39689);
DELETE FROM `creature_queststarter` WHERE `id`=97978 AND `quest`=39690;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (97978, 39690);


