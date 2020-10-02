update `creature_template` set `minlevel`=120,`maxlevel`=120 where `entry`=3296;
replace into `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) values('3296','0','120','120','0','0','0',NULL);

update `creature_template` set `healthscalingexpansion`=0 where healthscalingexpansion=-1;
