-- Quest 29570 bug fix 61

update `creature_template` set `npcflag`=0 WHERE `entry` in (17885,17894);

delete from `smart_scripts` where `entryorguid`=17885;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, 
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, 
`action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, 
`target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('17885','0','0','0','10','0','100','0','20','20','100','100','0','','33','17885','0','0','0','0','0','7','0','0','0','0','0','0','0','Earthbinder Rayge - On Range - Give Kill Credit');

delete from `smart_scripts` where `entryorguid`=17894;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, 
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`,
 `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,
 `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
 ('17894','0','0','0','10','0','100','0','20','20','100','100','0','','33','17894','0','0','0','0','0','7','0','0','0','0','0','0','0','On Range - Kill Credit');

-- bug fix 66
update `creature_template` set `unit_flags`=unit_flags - 256 WHERE `unit_flags`=67109696;

-- bug fix 65
delete from `creature` WHERE `guid`=369417;
insert into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, 
`terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`,
 `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`,
 `ScriptName`, `VerifiedBuild`) values
 ('369417','40446','547','3717','3717','1,2','0','0','0','-1','20990','0','-76.9916','-157.0809','-2.1063','5.637410','7200','0','0','12600','12600','0','0','0','0','0','0','','0');

-- bug fix 68,71
update `creature_template` set `unit_flags`=unit_flags - 256 WHERE `unit_flags`=33088;

-- bug fix 69 no loot in burning crusader dungeons except (The Arcatraz) (The Shattered halls) (The slave pens)
-- https://www.wowhead.com/zones/burning-crusade/instances

-- bug fix 72
update `creature_template` set `unit_flags`=unit_flags - 256 WHERE `unit_flags`=33554496;
update `creature_template` set `unit_flags`=unit_flags - 256 WHERE `unit_flags`=33536;

-- bug fix 75,npc isnt spawned.
-- bug 77,78 invalid

UPDATE `gameobject_template`SET `data0`=59064 WHERE `entry`=279282;-- highmountaing portal to orgrimmar

update `creature_template` set `unit_flags`=unit_flags - 256 WHERE `unit_flags`=768;





