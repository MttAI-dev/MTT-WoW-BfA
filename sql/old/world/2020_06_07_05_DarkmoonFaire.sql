update `creature_template` set `gossip_menu_id`=12992 where `entry`=54334;-- spell 101260
DELETE FROM `gossip_menu_option` WHERE `menuid`=12992 AND `optionindex` IN (2,5);

delete from `gameobject` where `guid` in (280200739,280200740,280200744,280200753,280200756);
insert into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('280200739','210177','0','0','0','0','0','0','0','-1','-9547.33','83.9259','59.4421','3.17458','-0','-0','-0.999864','0.0164925','300','255','1','0','','0');
insert into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('280200740','209538','0','0','0','0','0','0','0','-1','-9547.76','84.1684','59.4208','6.24077','-0','-0','-0.0212051','0.999775','300','255','1','0','','0');
insert into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('280200744','209543','0','0','0','0','0','0','0','-1','-9539.67','71.7156','58.8816','1.18124','-0','-0','-0.556875','-0.830596','300','255','1','0','','0');
insert into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('280200753','209548','0','0','0','0','0','0','0','-1','-9537.16','96.7347','58.8818','2.99786','-0','-0','-0.997419','-0.0718026','300','255','1','0','','0');
insert into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('280200756','209544','0','0','0','0','0','0','0','-1','-9521.76','85.6809','59.0508','3.01593','-0','-0','-0.998027','-0.0627884','300','255','1','0','','0');

delete from `game_event_gameobject` where `guid` in (280200739,280200740,280200744,280200753,280200756) and `evententry`=3;
insert into `game_event_gameobject` (`evententry`,`guid`) values
(3,280200739),
(3,280200740),
(3,280200744),
(3,280200753),
(3,280200756);

delete from `gameobject` where `guid` in (280200772,280200773,280200774,280200776,280200777);
insert into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('280200772','210177','1','0','0','0','0','0','0','-1','-1455.47','204.874','-7.79145','3.73597','-0','-0','-0.956164','0.292831','300','255','1','0','','0');
insert into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('280200773','209538','1','0','0','0','0','0','0','-1','-1455.47','204.874','-7.79145','3.70769','-0','-0','-0.960208','0.279285','300','255','1','0','','0');
insert into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('280200774','209543','1','0','0','0','0','0','0','-1','-1473.3','203.252','-7.79145','5.90131','-0','-0','-0.189781','0.981826','300','255','1','0','','0');
insert into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('280200776','209548','1','0','0','0','0','0','0','-1','-1453.11','188.46','-7.74572','1.11038','-0','-0','-0.527104','-0.849801','300','255','1','0','','0');
insert into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('280200777','209544','1','0','0','0','0','0','0','-1','-1469.79','188.339','-7.79244','0.809573','-0','-0','-0.393822','-0.919187','300','255','1','0','','0');

delete from `game_event_gameobject` where `guid` in (280200772,280200773,280200774,280200776,280200777) and `evententry`=3;
insert into `game_event_gameobject` (`evententry`,`guid`) values
(3,280200772),
(3,280200773),
(3,280200774),
(3,280200776),
(3,280200777);

