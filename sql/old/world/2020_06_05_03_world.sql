UPDATE `creature_template` SET  `rank`=1, `type`=4, `faction`=14 WHERE `entry`=79505;
UPDATE creature_loot_template SET chance =78 WHERE item=92426;

UPDATE `class_expansion_requirement` SET `ActiveExpansionLevel`='0' WHERE  `ClassID`=6 AND `RaceID`=26;
UPDATE `class_expansion_requirement` SET `ActiveExpansionLevel`='0' WHERE  `ClassID`=6 AND `RaceID`=25;
UPDATE `class_expansion_requirement` SET `ActiveExpansionLevel`='0' WHERE  `ClassID`=6 AND `RaceID`=24;
UPDATE `playercreateinfo` SET `position_x`='2358.17' WHERE  `race`=25 AND `class`=6;
UPDATE `playercreateinfo` SET `position_y`='-5663.21' WHERE  `race`=25 AND `class`=6;
UPDATE `playercreateinfo` SET `position_z`='426.027' WHERE  `race`=25 AND `class`=6;
UPDATE `playercreateinfo` SET `orientation`='3.65997' WHERE  `race`=25 AND `class`=6;

UPDATE `playercreateinfo` SET `position_x`='2358.17' WHERE  `race`=24 AND `class`=6;
UPDATE `playercreateinfo` SET `position_y`='-5663.21' WHERE  `race`=24 AND `class`=6;
UPDATE `playercreateinfo` SET `position_z`='426.027' WHERE  `race`=24 AND `class`=6;
UPDATE `playercreateinfo` SET `orientation`='3.65997' WHERE  `race`=24 AND `class`=6;

UPDATE `playercreateinfo` SET `position_x`='2358.17' WHERE  `race`=26 AND `class`=6;
UPDATE `playercreateinfo` SET `position_y`='-5663.21' WHERE  `race`=26 AND `class`=6;
UPDATE `playercreateinfo` SET `position_z`='426.027' WHERE  `race`=26 AND `class`=6;
UPDATE `playercreateinfo` SET `orientation`='3.65997' WHERE  `race`=26 AND `class`=6;