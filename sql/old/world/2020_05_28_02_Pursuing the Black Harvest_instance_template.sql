DELETE FROM `access_requirement` WHERE `mapid`=1112 AND `difficulty`=12;
INSERT INTO `access_requirement` (`mapId`, `difficulty`, `level_min`, `level_max`, `item`, `item2`, `quest_done_A`, `quest_done_H`, `completed_achievement`, `quest_failed_text`, `comment`) VALUES
(1112,12,90,120,0,0,0,0,0,NULL,'scenario_Pursuing the Black Harvest');

DELETE FROM `instance_template` WHERE `map`=1112;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`, `insideResurrection`) VALUES 
(1112,0,'scenario_pursuing_the_black_harvest',0,0);


-- -- 4437 Warlock Scenario - Black Temple Entrance Location
-- -- 4445 Black Temple Scenario - Entrance
-- DELETE FROM `areatrigger_teleport` WHERE `id` IN (-71);
-- INSERT INTO `areatrigger_teleport` (`Id`,`PortLocID`,`Name`) VALUES
-- (-71,4445,'Warlock Scenario - Black Temple Entrance Location');

-- DELETE FROM `areatrigger` WHERE `guid` IN (71);
-- INSERT INTO `areatrigger` VALUES
-- (71,100007,530,1,-3564.28,209.126,44.4604,'');
