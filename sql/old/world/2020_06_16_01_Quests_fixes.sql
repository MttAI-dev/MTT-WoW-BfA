-- quest 48317
update `creature_template` set `unit_flags`=33536,`AIName`='SmartAI' where `entry`=131878;
delete from `smart_scripts` where `entryorguid` in (131878,13187800);
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('131878','0','0','1','62','0','100','0','21976','0','0','0','0','','33','131865','0','0','0','0','0','7','0','0','0','0','0','0','0','On Gossip Option 0 Selected - killcredit speak to astrandis'),
('131878','0','1','2','61','0','100','0','0','0','0','0','0','','69','0','0','0','0','0','0','8','0','0','0','-2960.98','2265.93','44.61','6.27','Move To Position'),
('131878','0','2','3','61','0','100','0','0','0','0','0','0','','5','16','0','0','0','0','0','1','0','0','0','0','0','0','0','Apprentice Telemancer Astrandis kneels'),
('131878','0','3','4','38','0','100','0','0','1','0','0','0','','69','0','0','0','0','0','0','8','0','0','0','-2967','2296.38','40.09','2.05','Move To Position'),
('131878','0','4','5','61','0','100','0','0','0','0','0','0','','17','16','0','0','0','0','0','1','0','0','0','0','0','0','0','Apprentice Telemancer Astrandis kneels'),
('131878','0','5','6','38','0','100','0','0','2','0','0','0','','69','0','0','0','0','0','0','8','0','0','0','-2968.62','2329.33','36.55','1.44','Move To Position'),
('131878','0','6','7','61','0','100','0','0','0','0','0','0','','17','16','0','0','0','0','0','1','0','0','0','0','0','0','0','Apprentice Telemancer Astrandis kneels'),
('131878','0','7','8','38','0','100','0','0','3','0','0','0','','69','0','0','0','0','0','0','8','0','0','0','-2938.47','2322.10','36.89','0.70','Move To Position'),
('131878','0','8','0','61','0','100','0','0','0','0','0','0','','41','1000','0','0','0','0','0','1','0','0','0','0','0','0','0','despawn');

delete from `creature` where `guid` in (210407015,210407004,210406998);

UPDATE `gameobject_template` SET `data1`=48317 WHERE `entry` IN (280570,280571,280572);
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= 280570;
DELETE FROM `smart_scripts` WHERE `entryorguid`=280570;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`,
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('280570','1','0','1','64','0','100','0','1','0','0','0','0','','33','131866','0','0','0','0','0','7','0','0','0','0','0','0','0','First scrying vessel placed  - On Spellclick - killcredit 131866'),
('280570','1','1','2','61','0','100','0','0','0','0','0','0','','12','131877','7','0','0','0','0','8','0','0','0','-2969.19','2270.54','43.80','5.51','summon 131877'),
('280570','1','2','3','61','0','100','0','0','0','0','0','0','','45','0','1','0','0','0','0','11','131878','20','0','0','0','0','0','on spellclick - set data 1 to 131878'),
('280570','1','3','0','61','0','100','0','0','0','0','0','0','','45','0','1','0','0','0','0','11','131877','20','0','0','0','0','0','on spellclick - set data 1 to 131877');

UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= 280571;
DELETE FROM `smart_scripts` WHERE `entryorguid`=280571;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`,
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('280571','1','0','1','64','0','100','0','1','0','0','0','0','','33','131867','0','0','0','0','0','7','0','0','0','0','0','0','0','Second scrying vessel placed - On Spellclick - killcredit 131870'),
('280571','1','1','2','61','0','100','0','0','0','0','0','0','','12','131877','7','0','0','0','0','8','0','0','0','-2978.93','2297.58','40.24','0.19','summon 131877'),
('280571','1','2','3','61','0','100','0','0','0','0','0','0','','45','0','2','0','0','0','0','11','131878','20','0','0','0','0','0','on spellclick - set data 2 to 131878'),
('280571','1','3','0','61','0','100','0','0','0','0','0','0','','45','0','2','0','0','0','0','11','131877','20','0','0','0','0','0','on spellclick - set data 2 to 131877');

UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= 280572;
DELETE FROM `smart_scripts` WHERE `entryorguid`=280572;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`,
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('280572','1','0','1','64','0','100','0','1','0','0','0','0','','33','131868','0','0','0','0','0','7','0','0','0','0','0','0','0','Third scrying vessel placed - On Spellclick - killcredit 131868'),
('280572','1','1','2','61','0','100','0','0','0','0','0','0','','12','131877','7','0','0','0','0','8','0','0','0','-2971.47','2318.67','36.93','1.32','summon 131877'),
('280572','1','2','3','61','0','100','0','0','0','0','0','0','','12','131877','7','0','0','0','0','8','0','0','0','-2963.76','2321.50','34.97','2.20','summon 131877'),
('280572','1','3','4','61','0','100','0','0','0','0','0','0','','45','0','3','0','0','0','0','11','131878','20','0','0','0','0','0','on spellclick - set data 3 to 131878'),
('280572','1','4','0','61','0','100','0','0','0','0','0','0','','45','0','3','0','0','0','0','11','131877','20','0','0','0','0','0','on spellclick - set data 3 to 131877');

update `creature_template` set `AIName`='SmartAI' where `entry`=131877;
DELETE FROM `smart_scripts` WHERE `entryorguid`=131877;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('131877','0','0','0','54','0','100','0','0','0','0','0','0','','47','1','0','0','0','0','0','1','0','0','0','0','0','0','0','Dark Iron Saboteur - On justsummoned - Set Visibility on'),
('131877','0','1','0','38','0','100','0','0','1','0','0','0','','33','131869','0','0','0','0','0','17','1','15','0','0','0','0','0','on data set 1 - killcredit 131869'),
('131877','0','2','0','38','0','100','0','0','2','0','0','0','','33','131870','0','0','0','0','0','17','1','15','0','0','0','0','0','on data set 2 - killcredit 131870'),
('131877','0','3','0','38','0','100','0','0','3','0','0','0','','33','131871','0','0','0','0','0','17','1','15','0','0','0','0','0','on set data 3 - killcredit 131871');

delete from `conditions` where `sourcegroup` in (21976) and `sourceentry`=0;
insert into `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, 
`ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, 
`ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) values
('15','21976','0','0','0','9','0','48317','0','0','0','0','0','','Show gossip menu text if quest 48317 is taken');

-- quest 51487
delete from `conditions` where `sourcegroup` in (22643,22645,22644) and `sourceentry`=0;
insert into `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, 
`ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, 
`ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) values
('15','22643','0','0','0','9','0','51487','0','0','0','0','0','','Show gossip menu text if quest 51487 is taken'),
('15','22645','0','0','0','9','0','51487','0','0','0','0','0','','Show gossip menu text if quest 51487 is taken'),
('15','22644','0','0','0','9','0','51487','0','0','0','0','0','','Show gossip menu text if quest 51487 is taken');

-- quest 128229
delete from `conditions` where `sourcegroup` in (21711) and `sourceentry`=0;
insert into `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, 
`ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, 
`ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) values
('15','21711','0','0','0','9','0','128229','0','0','0','0','0','','Show gossip menu text if quest 128229 is taken');

update `creature_template` set `unit_flags`=295680,`unit_flags2`=2048 where `entry`=133951;

-- dk quest
delete from `gameobject` where `guid` in (280200812,280200815);
insert into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values
('280200812','206116','1','0','0','0','0','0','0','-1','1602.98','-4369.74','21.0694','3.63029','0','0','-0.970295','0.241925','300','255','1','0','','0');
insert into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values
('280200815','206111','0','0','0','0','0','0','0','-1','-8824','630.8599','94.4241','4.02674','-0','-0','-0.903653','0.428266','300','255','1','0','','0');
