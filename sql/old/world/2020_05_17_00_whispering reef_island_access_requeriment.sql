DELETE FROM `access_requirement` WHERE `mapid`=1883 AND `difficulty`=38;
INSERT INTO `access_requirement` (`mapId`, `difficulty`, `level_min`, `level_max`, `item`, `item2`, `quest_done_A`, `quest_done_H`, `completed_achievement`, `quest_failed_text`, `comment`) VALUES
(1883, 38,110 , 120, 0, 0, 0, 0, 0, NULL, 'scenario_whispering reef_island');

DELETE FROM `instance_template` WHERE `map`=1883;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`, `insideResurrection`) VALUES 
(1883, 0, 'scenario_whispering reef_island', 1, 0);

DELETE FROM `access_requirement` WHERE `mapid`=1112 AND `difficulty`=12;
INSERT INTO `access_requirement` (`mapId`, `difficulty`, `level_min`, `level_max`, `item`, `item2`, `quest_done_A`, `quest_done_H`, `completed_achievement`, `quest_failed_text`, `comment`) VALUES
(1112, 12,110 , 120, 0, 0, 0, 0, 0, NULL, 'scenario_black_temple');

DELETE FROM `instance_template` WHERE `map`=1112;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`, `insideResurrection`) VALUES 
(1112, 0, 'scenario_black_temple', 0, 0);
