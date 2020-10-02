DELETE FROM `access_requirement` WHERE `mapid`=1883 AND `difficulty`=39;
DELETE FROM `access_requirement` WHERE `mapid`=1883 AND `difficulty`=40;
INSERT INTO `access_requirement` (`mapId`, `difficulty`, `level_min`, `level_max`, `item`, `item2`, `quest_done_A`, `quest_done_H`, `completed_achievement`, `quest_failed_text`, `comment`) VALUES
(1883, 39,110 , 120, 0, 0, 0, 0, 0, NULL, 'scenario_whispering reef_island heroic'),
(1883, 40,110 , 120, 0, 0, 0, 0, 0, NULL, 'scenario_whispering reef_island mythic');