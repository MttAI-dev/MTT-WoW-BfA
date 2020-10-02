delete from `creature` where `guid` in(78975,78981);
update `creature_template` SET `unit_flags`=0 where `entry`=24849;
delete from `creature` where `id`=23954;
insert into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values('300005724','23954','574','0','0','2','0','0','0','-1','0','1','237.806','-338.023','180.451','4.97375','300','0','0','40054','0','0','0','0','0','0','0','','0');
