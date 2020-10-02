update `creature_template` set `lootid`=129232 where `entry`=129232;
-- add teleport to mechagon mapId
replace into `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) values('1900','3098.12','4947.04','28.0082','2.47379','1643','mechagon');

-- Mechagon dungeon 2097
-- Portal entrance
replace into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('2103104790146','252247','1643','10290','10418','0','0','0','0','-1','3112','4915.26','36.0143','5.23838','-0','-0','-0.498962','0.866624','300','255','1','0','','0');


-- access_requeriment
delete from `access_requirement` where `mapid`=2097;
insert into `access_requirement` (`mapId`, `difficulty`, `level_min`, `level_max`, `item`, `item2`, `quest_done_A`, `quest_done_H`, `completed_achievement`, `quest_failed_text`, `comment`) values('2097','1','120','0','0','0','0','0','0',NULL,'Mechagon (Entrance) - Normal');
insert into `access_requirement` (`mapId`, `difficulty`, `level_min`, `level_max`, `item`, `item2`, `quest_done_A`, `quest_done_H`, `completed_achievement`, `quest_failed_text`, `comment`) values('2097','2','120','0','0','0','0','0','0',NULL,'Mechagon (Entrance) - Heroic');
insert into `access_requirement` (`mapId`, `difficulty`, `level_min`, `level_max`, `item`, `item2`, `quest_done_A`, `quest_done_H`, `completed_achievement`, `quest_failed_text`, `comment`) values('2097','8','120','0','0','0','0','0','0',NULL,'Mechagon (Entrance) - Mythic');
insert into `access_requirement` (`mapId`, `difficulty`, `level_min`, `level_max`, `item`, `item2`, `quest_done_A`, `quest_done_H`, `completed_achievement`, `quest_failed_text`, `comment`) values('2097','23','120','0','0','0','0','0','0',NULL,'Mechagon (Entrance) - Mythic');

-- instance template
delete from `instance_template` where `map`=2097;
insert into `instance_template` (`map`, `parent`, `script`, `allowMount`, `insideResurrection`) values
('2097','0','instance_the_mechagon','0','1');

-- instance_encounters
delete from `instance_encounters` where `entry` in (2290,2257,2258,2259,2260,2291,2292,2312);
insert into `instance_encounters` (`entry`, `creditType`, `creditEntry`, `lastEncounterDungeon`, `comment`) values
('2290','0','150159','0','King Gobbamak'),
('2257','0','144244','0','Tussle Tonks'),
('2258','0','144246','0','K.U.-J.0.'),
('2259','0','144248','0','Machinists Garden'),
('2260','0','154817','3000','King Mechagon'),
('2291','0','155157','0','HK-8 Aerial Oppression Unit'),
('2292','0','150222','0','Gunker'),
('2312','0','155407','0','Trixie & Naeno');

DELETE FROM `areatrigger_teleport` WHERE `id` IN (-93);
INSERT INTO `areatrigger_teleport` (`Id`,`PortLocID`,`Name`) VALUES
(-93,7228,'Mechagon - Entrance Target from Portal - (MDE)');

DELETE FROM `areatrigger` WHERE `guid` IN (93);
INSERT INTO `areatrigger` VALUES
(93,100007,1643,1,3111.81,4917.15,35.71,'');

replace into `creature_template_journal` values
(139904,2105),(129227,2106),(139273,2107),(131227,2108),
(150159,2290),(144244,2257),(144246,2258),(144248,2259),
(154817,2260),(155157,2291),(150222,2292),(155407,2312);
