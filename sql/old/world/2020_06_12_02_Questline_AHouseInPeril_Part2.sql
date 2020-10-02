-- quest 51488
UPDATE `smart_scripts` SET `event_flags`=1,`action_param2`=3 WHERE `entryorguid`=133976 AND `id`=1;

DELETE FROM `creature_queststarter` WHERE `id`=137871 AND `quest`=51488;
DELETE FROM `creature_queststarter` WHERE `id`=137871 AND `quest`=51487;
DELETE FROM `creature_queststarter` WHERE `id`=137871 AND `quest`=51489;
INSERT INTO `creature_queststarter` VALUES (137871,51488),(137871,51487),(137871,51489);

DELETE FROM `creature_questender` WHERE `id`=137871 AND `quest`=51488;
DELETE FROM `creature_questender` WHERE `id`=137871 AND `quest`=47952;
INSERT INTO `creature_questender` VALUES (137871,51488),(137871,47952);

UPDATE `creature_template` SET `npcflag`=1,`AIName`='SmartAI' WHERE `entry`=133951;
DELETE FROM `smart_scripts` WHERE `entryorguid`=133951;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(133951,0,0,1,64,0,100,0,0,0,0,0,33,133951,0,0,0,0,0,7,0,0,0,0,0,0,0,"on gossip select - killcredit 133951"),
(133951,0,1,0,61,0,100,1,0,0,0,0,12,138306,8,0,0,0,0,7,0,0,0,0,0,0,0,"on gossip select - summon 138306");

UPDATE `creature_template` SET `npcflag`=1,`AIName`='SmartAI' WHERE `entry`=138306;
DELETE FROM `smart_scripts` WHERE `entryorguid`=138306;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(138306,0,0,0,54,0,100,0,0,0,0,0,53,0,1383060,0,0,0,0,7,0,0,0,0,0,0,0,"on just summoned - wp start"),
(138306,0,1,0,40,0,100,0,7,0,0,0,33,137929,0,0,0,0,0,17,1,15,0,0,0,0,0,"on wp reached - killcredit 137929"),
(138306,0,2,0,40,0,100,0,8,0,0,0,12,138318,8,0,0,0,0,8,0,0,0,358.51,-473.54,3.37,4.35,"on wp reached - summon 138318"),
(138306,0,3,4,40,0,100,0,8,0,0,0,33,144495,0,0,0,0,0,17,1,15,0,0,0,0,0,"on wp reached - killcredit 144495"),
(138306,0,4,0,64,0,100,0,0,0,0,0,33,137930,0,0,0,0,0,7,0,0,0,0,0,0,0,"on gossip select - killcredit 137930"),
(138306,0,5,6,64,0,100,0,0,0,0,0,12,137871,8,0,0,0,0,8,0,0,0,360.544,-477.87,3.37,3.86,"on gossip select - summon 137871"),
(138306,0,6,0,61,0,0,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"on quest accepted - despawn");

delete from `waypoints` where `entry`=1383060;
insert into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values
('1383060','1','351.988','-499.77','21.10',''),
('1383060','2','345.88','-490.33','15.43',''),
('1383060','3','362.81','-475.17','15.43',''),
('1383060','4','377.70','-473.92','15.43',''),
('1383060','5','365.99','-462.12','10.20',''),
('1383060','6','357.72','-471.88','3.37',''),
('1383060','7','356.37','-480.22','3.54',''),
('1383060','8','356.38','-479.76','3.37','');
