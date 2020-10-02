-- access_requeriment
delete from `access_requirement` where `mapid`=1594;
insert into `access_requirement` (`mapId`, `difficulty`, `level_min`, `level_max`, `item`, `item2`, `quest_done_A`, `quest_done_H`, `completed_achievement`, `quest_failed_text`, `comment`) values('1594','1','115','0','0','0','0','0','0',NULL,'The MOTHERLODE!! (Entrance) - Normal');
insert into `access_requirement` (`mapId`, `difficulty`, `level_min`, `level_max`, `item`, `item2`, `quest_done_A`, `quest_done_H`, `completed_achievement`, `quest_failed_text`, `comment`) values('1594','2','120','0','0','0','0','0','0',NULL,'The MOTHERLODE!! (Entrance) - Heroic');
insert into `access_requirement` (`mapId`, `difficulty`, `level_min`, `level_max`, `item`, `item2`, `quest_done_A`, `quest_done_H`, `completed_achievement`, `quest_failed_text`, `comment`) values('1594','8','120','0','0','0','0','0','0',NULL,'The MOTHERLODE!! (Entrance) - Mythic Keystone');
insert into `access_requirement` (`mapId`, `difficulty`, `level_min`, `level_max`, `item`, `item2`, `quest_done_A`, `quest_done_H`, `completed_achievement`, `quest_failed_text`, `comment`) values('1594','23','120','0','0','0','0','0','0',NULL,'The MOTHERLODE!! (Entrance) - Mythic');

-- instance template
delete from `instance_template` where `map`=1594;
insert into `instance_template` (`map`, `parent`, `script`, `allowMount`, `insideResurrection`) values
('1594','0','instance_the_motherlode','0','1');

-- instance_encounters
delete from `instance_encounters` where `entry` in (2105,2106,2107,2108);
insert into `instance_encounters` (`entry`, `creditType`, `creditEntry`, `lastEncounterDungeon`, `comment`) values
('2105','0','139904','0','Coin-Operated Crowd Pummeler'),
('2106','0','129227','0','Azerokk'),
('2107','0','139273','0','Rixxa Fluxfume'),
('2108','0','131227','3000','Mogul Razdunk');
