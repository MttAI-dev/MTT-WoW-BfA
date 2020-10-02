replace into `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) values
('126832','1','111','112','2','8','0',NULL);
replace into `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) values
('126832','2','117','119','2','2','0',NULL);
replace into `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) values
('126832','8','120','121','2','2','0',NULL);
replace into `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) values
('126832','23','120','121','2','2','0',NULL);


UPDATE `creature_template_addon` SET `mount`=129743 WHERE `entry`=126832;
DELETE FROM `creature` WHERE `guid` IN (280003010,280003009);
UPDATE `creature_template` SET `npcflag`=16777216,`inhabittype`=7,`ScriptName`='npc_sharkbait' WHERE `entry`=129743;
