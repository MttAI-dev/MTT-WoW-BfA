update `creature_template` set `movementtype`=1 where `entry`=135412;
update `creature_template` set `minlevel`=120,`maxlevel`=120 where `entry`=35137;
update `creature_template` set `minlevel`=1 where `minlevel`=0;
update `creature_template` set `maxlevel`=1 where `maxlevel`=0;

UPDATE `creature_template` SET `Rank`=3 WHERE `entry`=126832;

-- SAIs errors
DELETE FROM `smart_scripts` WHERE `entryorguid` IN 
(5356501,5458701,5458702,5458703,5458704,5458705,5458706,5458707,5458708,54587,3811,19480);

UPDATE `creature_template` SET `AIName`='' WHERE `entry` IN (3811,19480);

UPDATE `smart_scripts` SET `action_param1`=9526 WHERE `entryorguid`=8018 AND `action_type`=12;

DELETE FROM `smart_scripts` WHERE `action_param1`=33127 AND `entryorguid`=16996;
DELETE FROM `smart_scripts` WHERE `action_param1`=33127 AND `entryorguid`=18537;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (18207,29154);

UPDATE `smart_scripts` SET `action_param1`=20918,`action_param2`=0 WHERE `action_type`=43 AND `entryorguid`=22448;
UPDATE `smart_scripts` SET `event_param1`=1000,`event_param2`=1000 WHERE `event_type`=13 AND `entryorguid`=22979;

UPDATE `smart_scripts` SET `action_param1`=11939 WHERE `action_param1`=54840 AND `entryorguid`=29614;
replace into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('29614','0','3','0','0','0','100','1','0','0','1000','1000','0','','11','8722','0','0','0','0','0','1','0','0','0','0','0','0','0','summon succubus');

replace into `creature_text` (`creatureid`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) values('33178','3','0','I\'ve shattered the shield protecting their leader! Quickly, kill him!','14','0','100','0','0','0','34219','');
replace into `creature_text` (`creatureid`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) values('33178','1','0','Let me know when you are ready to begin the attack.','12','0','100','0','0','0','34223','');
replace into `creature_text` (`creatureid`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) values('33178','2','0','Let us put an end this Shatterspear threat for good. Sentinels, attack now!','12','0','100','0','0','0','0','');
UPDATE `smart_scripts` SET `event_param1`=33178,`event_param2`=1 WHERE `event_type`=19 AND `entryorguid`=33178;
UPDATE `smart_scripts` SET `event_param2`=2 WHERE `event_type`=62 AND `entryorguid`=33178;
UPDATE `smart_scripts` SET `event_param1`=3 WHERE `event_type`=52 AND `entryorguid`=33178;

UPDATE `smart_scripts` SET `event_type`=40,`event_param1`=42,`event_param2`=368340 WHERE `id`=3 AND `entryorguid`=36834;
