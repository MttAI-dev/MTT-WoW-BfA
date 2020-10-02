update `creature_template` set `unit_flags`=32832 WHERE `entry` in (61567,62208,61967,61701);
update `creature` set `unit_flags`=32832 WHERE `id` in (62208,61967);
update `creature_template` set `unit_flags`=512 WHERE `entry` in (61701);
update `creature` set `unit_flags`=512 WHERE `id` in (61701);
update `creature_template` set `unit_flags`=33344 WHERE `entry` in (61634);
update `creature` set `unit_flags`=33344 WHERE `id` in (61634);
update `creature` set `unit_flags`=262912 WHERE `id` in (54932);

delete from `creature` where `guid`=260491;
insert into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, 
`terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, 
`currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, 
`ScriptName`, `VerifiedBuild`) values
('260491','54629','542','3713','3713','1,2','0','0','0','-1',0,0,'-8.3738','-2.19556','-43.8512','1.69287','300','0',
'0','13088','1000','0','0','0','0','0','0','0','0');

DELETE FROM `creature` WHERE `guid`IN(91976,91973,91975,91974,91972);