UPDATE `creature_template` SET `minlevel`=100,`maxlevel`=120 WHERE `entry`=129767;
UPDATE `creature_template` SET `unit_class`=2 WHERE `entry`=121756;

UPDATE `gameobject_template` SET `data0`=256948 WHERE `entry`=273855;
UPDATE `gameobject_template` SET `data0`=255668 WHERE `entry`=273853;
UPDATE `gameobject_template` SET `data0`=255669 WHERE `entry`=298865;

UPDATE `gameobject_template` SET `data7`=7681 WHERE `entry`=291202;
UPDATE `gameobject_template` SET `data7`=7682 WHERE `entry`=291129;
UPDATE `gameobject_template` SET `data7`=7683 WHERE `entry`=291203;
UPDATE `gameobject_template` SET `data7`=7684 WHERE `entry`=291205;
UPDATE `gameobject_template` SET `data7`=7815 WHERE `entry`=289518;
UPDATE `gameobject_template` SET `data7`=7839 WHERE `entry`=294004;

replace into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_class`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) values('145380','0','0','0','0','0','Lor\'themar Theron','','Regent Lord of Quel\'Thalas',NULL,NULL,'0','1','1','7','7','0','35','0','1','1.14286','1','1','0','0','0','1','1','2','0','0','0','0','0','0','7','4096','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','10','1','10','1','1','1','1','0','0','0','0','0','1','0','0','','33528');

replace into `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) values('145323','0','65201','2.2','1','33528');
replace into `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) values('145326','0','91647','1.4','1','33528');
replace into `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) values('145328','0','91638','1.6','1','33528');
replace into `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) values('145333','0','91572','1.2','1','33528');
replace into `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) values('145338','0','78241','1','1','33528');
replace into `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) values('145340','0','90033','0.7','1','33528');
replace into `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) values('145343','0','74319','0.7','1','33528');
replace into `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) values('145343','1','74313','0.7','1','33528');

replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('6196','0','0','65536','1','0','0','0','0','3','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('32239','0','0','65536','257','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('32241','0','0','65536','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('32370','0','0','65536','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('32971','0','0','65536','257','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('32972','0','0','65544','257','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('32974','0','0','65536','257','0','0','0','0','0','49414 29266');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('33053','0','0','65536','257','0','0','0','0','0','49414 51329');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('35286','0','0','65543','257','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('35287','0','0','65536','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('35648','0','0','65536','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('36056','0','0','65536','285212673','0','0','0','0','0','49414 7165');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('36868','0','0','65536','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('38927','0','0','65536','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('38938','0','0','0','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('38953','0','0','0','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('39886','0','0','65536','1','0','0','0','0','0','49414 31261');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('40661','0','0','65536','1','0','0','0','0','0','49414 31261');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('40863','0','0','50397184','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('40864','0','0','50397184','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('40865','0','0','50397184','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('41548','0','0','0','1','0','0','0','0','4','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('41629','0','0','65536','257','0','0','0','0','0','49414 31261');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('42637','0','0','65536','257','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('44451','0','0','65536','257','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('44863','0','0','65536','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('44905','0','0','65536','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('45208','0','0','65536','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('47269','0','0','65536','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('47366','0','0','0','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('48007','0','0','65536','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('49477','0','9991','65536','0','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('49478','0','6448','65536','0','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('55556','0','0','65536','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('55999','0','0','65536','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('56663','0','0','65536','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('57864','0','0','50331648','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('60914','0','0','50397184','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('60915','0','0','65536','1','0','0','0','0','0','49414');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('126713','0','0','0','1','0','0','0','0','0','42459');

replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('136830','0','0','0','1','0','0','0','0','0','277614 252273 263998 281068');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('136834','0','0','0','1','0','0','0','0','0','277614 252273 263998 281068');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('139394','0','0','0','1','0','0','0','0','0','277614 263998 281068');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('139398','0','0','0','1','0','0','0','0','0','277614');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('139412','0','0','0','1','0','0','0','0','0','252235 277614 263998 281068');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('140825','0','0','0','1','0','0','0','0','0','277614 252273 281068');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values('140826','0','0','1','1','0','0','0','0','0','277614 252273 281068');

-- insert into `creature_classlevelstats` (`level`, `class`, `basemana`, `basearmor`, `attackpower`, `rangedattackpower`, `comment`) values
-- ('1','220','0','71374','0','0','fix errorlog'),
-- ('8','230','0','78000','0','0','fix errorlog'),
-- ('2','230','0','78000','0','0','fix errorlog'),
-- ('2','231','0','78700','0','0','fix errorlog'),
-- ('2','232','0','79400','0','0','fix errorlog'),
-- ('2','233','0','81400','0','0','fix errorlog'),
-- ('2','234','0','82100','0','0','fix errorlog'),
-- ('2','235','0','82800','0','0','fix errorlog'),
-- ('2','236','0','83500','0','0','fix errorlog'),
-- ('2','237','0','84200','0','0','fix errorlog'),
-- ('2','238','0','84900','0','0','fix errorlog'),
-- ('2','239','0','85600','0','0','fix errorlog'),
-- ('2','240','0','86300','0','0','fix errorlog');

UPDATE `creature` SET `equipment_id`=0 where `guid` IN (3000001,3000004,3000005,3000008);
UPDATE `creature` SET `orientation`=0 WHERE `guid`=210118260;
