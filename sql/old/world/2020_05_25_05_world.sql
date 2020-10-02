UPDATE `creature_template` SET `gossip_menu_id`='23415' WHERE  `entry`=144361;

DELETE FROM `gossip_menu` WHERE `MenuId`=23415 AND `TextId`=36308;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES (23415, 36308, 29704);

DELETE FROM `gossip_menu_option` WHERE `MenuId`=23415 AND `OptionIndex`=0;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES (23415, 0, 0, 'I am ready.', 163727, 0, 1, 29704);

UPDATE creature_template SET `minlevel`=0 WHERE `minlevel`=1 AND `HealthScalingExpansion`=-1 AND `BaseAttackTime`=0; -- no attack time means we have no data and minlevel value was also defaulted
UPDATE creature_template SET `maxlevel`=0 WHERE `maxlevel`=1 AND `HealthScalingExpansion`=-1 AND `BaseAttackTime`=0; -- no attack time means we have no data and maxlevel value was also defaulted
UPDATE creature_template SET `minlevel`=`minlevel`-90 WHERE `minlevel`>=90 AND `minlevel`<100 AND `HealthScalingExpansion`=-1;
UPDATE creature_template SET `maxlevel`=`maxlevel`-90 WHERE `maxlevel`>=90 AND `maxlevel`<100 AND `HealthScalingExpansion`=-1;
UPDATE creature_template SET `minlevel`=`minlevel`-100 WHERE `minlevel`>=100 AND `minlevel`<110 AND `HealthScalingExpansion`=-1;
UPDATE creature_template SET `maxlevel`=`maxlevel`-100 WHERE `maxlevel`>=100 AND `maxlevel`<110 AND `HealthScalingExpansion`=-1;
UPDATE creature_template SET `minlevel`=`minlevel`-110 WHERE `minlevel`>=110 AND `minlevel`<120 AND `HealthScalingExpansion`=-1;
UPDATE creature_template SET `maxlevel`=`maxlevel`-110 WHERE `maxlevel`>=110 AND `maxlevel`<120 AND `HealthScalingExpansion`=-1;
UPDATE creature_template SET `minlevel`=`minlevel`-120 WHERE `minlevel`>=120 AND `minlevel`<130 AND `HealthScalingExpansion`=-1;
UPDATE creature_template SET `maxlevel`=`maxlevel`-120 WHERE `maxlevel`>=120 AND `maxlevel`<130 AND `HealthScalingExpansion`=-1; 

UPDATE `playercreateinfo_cast_spell` SET `raceMask` = '2048' WHERE `playercreateinfo_cast_spell`.`raceMask` = 8589934592 AND `playercreateinfo_cast_spell`.`classMask` = 4 AND `playercreateinfo_cast_spell`.`spell` = 27409;
UPDATE `playercreateinfo_cast_spell` SET `raceMask` = '4096' WHERE `playercreateinfo_cast_spell`.`raceMask` = 17179869184 AND `playercreateinfo_cast_spell`.`classMask` = 4 AND `playercreateinfo_cast_spell`.`spell` = 312338;
UPDATE `playercreateinfo_cast_spell` SET `raceMask` = '8192' WHERE `playercreateinfo_cast_spell`.`raceMask` = 34359738368 AND `playercreateinfo_cast_spell`.`classMask` = 4 AND `playercreateinfo_cast_spell`.`spell` = 82308;
UPDATE `playercreateinfo_cast_spell` SET `raceMask` = '16384' WHERE `playercreateinfo_cast_spell`.`raceMask` = 68719476736 AND `playercreateinfo_cast_spell`.`classMask` = 4 AND `playercreateinfo_cast_spell`.`spell` = 312339;

UPDATE `creature_template` SET `npcflag`='1' WHERE  `entry`=139522;
UPDATE `creature_template` SET `npcflag`='1' WHERE  `entry`=144361;

