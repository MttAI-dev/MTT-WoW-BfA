-- Coach Crosscheck SAI
UPDATE `quest_template` SET `QuestType` = '2' WHERE `ID` = '24502'; 
SET @ENTRY := 37106;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,24502,0,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,"Coach Crosscheck - Talk on quest 24502 accept"),
(@ENTRY,0,1,0,19,0,100,0,24502,0,0,0,12,37114,1,120000,0,0,0,8,0,0,0,-8278.454,1482.76,43.113,6.1813,"Coach Crosscheck - Invoke 37114 on quest 24502 accept"),
(@ENTRY,0,2,0,19,0,100,0,24502,0,0,0,12,37114,1,120000,0,0,0,8,0,0,0,-8280.40,1490.19,43.3679,6.1421,"Coach Crosscheck - Invoke 37114 on quest 24502 accept"),
(@ENTRY,0,3,0,19,0,100,0,24502,0,0,0,12,37114,1,120000,0,0,0,8,0,0,0,-8286.527,1490.280,43.7739,0.0395,"Coach Crosscheck - Invoke 37114 on quest 24502 accept"),
(@ENTRY,0,4,0,19,0,100,0,24502,0,0,0,12,37114,1,120000,0,0,0,8,0,0,0,-8291.527,1490.08,44.038,0.039,"Coach Crosscheck - Invoke 37114 on quest 24502 accept"),
(@ENTRY,0,5,0,19,0,100,0,24502,0,0,0,12,37114,1,120000,0,0,0,8,0,0,0,-8291.246,1483.010,43.996,0.039,"Coach Crosscheck - Invoke 37114 on quest 24502 accept"),
(@ENTRY,0,6,0,19,0,100,0,24502,0,0,0,12,37114,1,120000,0,0,0,8,0,0,0,-8291.056,1475.067,43.975,0.0238,"Coach Crosscheck - Invoke 37114 on quest 24502 accept"),
(@ENTRY,0,7,0,19,0,100,0,24502,0,0,0,12,37114,1,120000,0,0,0,8,0,0,0,-8286.268,1482.354,43.645,0.036,"Coach Crosscheck - Invoke 37114 on quest 24502 accept"),
(@ENTRY,0,8,0,19,0,100,0,24502,0,0,0,12,37114,1,120000,0,0,0,8,0,0,0,-8285.964,1474.876,43.616,0.0364,"Coach Crosscheck - Invoke 37114 on quest 24502 accept"),
(@ENTRY,0,9,0,19,0,100,0,24502,0,0,0,12,37114,1,120000,0,0,0,8,0,0,0,-8290.922,1475.1918,43.242,6.1822,"Coach Crosscheck - Invoke 37114 on quest 24502 accept"),
(@ENTRY,0,10,0,19,0,100,0,24502,0,0,0,12,37114,1,120000,0,0,0,8,0,0,0,-8277.417,1474.8439,43.018,0.02817,"Coach Crosscheck - Invoke 37114 on quest 24502 accept"),
(@ENTRY,0,11,0,19,0,100,0,24502,0,0,0,12,37114,1,120000,0,0,0,8,0,0,0,-8280.687,1483.069,43.266,6.1822,"Coach Crosscheck - Invoke 37114 on quest 24502 accept"),
(@ENTRY,0,12,0,19,0,100,0,24502,0,0,0,12,37114,1,120000,0,0,0,8,0,0,0,-8282.038,1474.713,43.329,0.0281,"Coach Crosscheck - Invoke 37114 on quest 24502 accept"),
(@ENTRY,0,13,0,19,0,100,0,24502,0,0,0,12,37114,1,120000,0,0,0,8,0,0,0,-8275.2861,1487.485,42.8677,6.0782,"Coach Crosscheck - Invoke 37114 on quest 24502 accept"),
(@ENTRY,0,14,0,19,0,100,0,24502,0,0,0,12,37114,1,120000,0,0,0,8,0,0,0,-8274.189,1480.261,42.9148,6.0188,"Coach Crosscheck - Invoke 37114 on quest 24502 accept"),
(@ENTRY,0,15,0,19,0,100,0,24502,0,0,0,12,37114,1,120000,0,0,0,8,0,0,0,-8273.483,1491.8057,42.9518,0.01568,"Coach Crosscheck - Invoke 37114 on quest 24502 accept"),
(@ENTRY,0,16,0,19,0,100,0,24502,0,0,0,12,37114,1,120000,0,0,0,8,0,0,0,-8272.234,1474.873,42.735,0.0033,"Coach Crosscheck - Invoke 37114 on quest 24502 accept"),
(@ENTRY,0,17,0,19,0,100,0,24502,0,0,0,12,37114,1,120000,0,0,0,8,0,0,0,-8272.696,1483.288,42.7826,0.0102,"Coach Crosscheck - Invoke 37114 on quest 24502 accept"),
(@ENTRY,0,18,0,19,0,100,0,24502,0,0,0,12,37213,1,150000,0,0,0,8,0,0,0,-8250.9101,1484.290,41.499,3.08128,"Coach Crosscheck - Invoke 37213 on quest 24502 accept"),
(@ENTRY,0,19,0,20,0,100,0,24502,0,0,0,41,0,0,0,0,0,0,11,37213,200,0,0,0,0,0,"despawn npc 37213 desmount"),
(@ENTRY,0,20,0,19,0,100,0,24503,0,0,0,11,70075,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cast spell at quest accepted"),
(@ENTRY,0,21,0,19,0,100,0,24503,0,0,0,12,37203,3,60000,0,0,0,8,0,0,0,-8274.37,1484.12,42.8815,0,"Spawn npc at quest accepted"),
(@ENTRY,0,22,0,19,0,100,0,24503,0,0,0,12,37203,3,60000,0,0,0,8,0,0,0,-8322.25,1486.96,62.9833,0,"Spawn npc at quest accepted"),
(@ENTRY,0,23,0,20,0,100,0,24503,0,0,0,41,0,0,0,0,0,0,11,37213,200,0,0,0,0,0,"despawn npc 37213 desmount");

-- Fourth And Goal Target SAI
SET @ENTRY := 37203;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,1,70052,0,1000,1000,33,37203,0,0,0,0,0,7,0,0,0,0,0,0,0,"Reward Kill if hit"),
(@ENTRY,0,1,0,8,0,100,0,70052,0,1000,1000,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Die if hit"),
(@ENTRY,0,2,0,25,0,100,0,0,0,0,0,11,88455,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cast spell on spawn"),
(@ENTRY,0,3,0,8,0,100,0,70052,0,1000,1000,12,48572,5,0,0,0,0,8,0,0,0,-8248,1484.19,85.2057,3.13503,"Spawn Deathwing on hit");

-- Deathwing SAI
SET @ENTRY := 48572;
UPDATE `creature_template` SET `AIName`="SmartAI", `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,53,1,485720,0,0,0,0,1,0,0,0,0,0,0,0,"Start walking"),
(@ENTRY,0,1,0,40,0,100,0,5,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Die on waypoint reached"),
(@ENTRY,0,2,0,25,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Talk");

REPLACE INTO `creature_text_locale` (`CreatureID`, `ID`, `Locale`, `Text`) VALUES 
('48572', '1', 'esES', 'El sol se ha puesto en este mundo mortal. ¡Aceptad vuestro final, porque el ocaso se acerca!'),
('48572', '1', 'esMX', 'El sol se ha puesto en este mundo mortal. Acepten su final, ha llegado el crepúsculo.');

REPLACE INTO `creature_text` (`CreatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
('48572','0','1','The sun has set on this mortal world, fools. Make peace with your end, for the hour of twilight falls!','14','0','100','0','0','23228','Deathwing talk');

REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
('485720','1','-8290.16','1482.56','107.596','Deathwing Kezan Point 2'),
('485720','2','-8354.84','1487.07','118.422','Deathwing Kezan Point 3'),
('485720','3','-8351.09','1547.61','111.063','Deathwing Kezan Point 4'),
('485720','4','-8289.01','1509.12','69.3591','Deathwing Kezan Point 5'),
('485720','5','-8181.28','1415.45','116.531','Deathwing Kezan Point 5');

-- Bilgewater Buccaneer SAI
SET @ENTRY := 37213;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,28,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,37114,200,0,0,0,0,0,"despawn npc 37114 desmount"),
(@ENTRY,0,1,0,28,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,37213,200,0,0,0,0,0,"despawn npc 37213 desmount"),
(@ENTRY,0,2,0,28,0,100,0,0,0,0,0,33,48271,0,0,0,0,0,7,0,0,0,0,0,0,0,"kill credit npc 48271");

-- Steamwheedle Shark SAI
SET @ENTRY := 37114;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,70052,0,0,0,33,37114,0,0,0,0,0,7,1,50,0,0,0,0,0,"Reward Kill if spellhit"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"die if spellhit");

REPLACE INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
('37106','0','0','Coach Crosscheck','','The Bilgewater Buccaneers',NULL,'10884','5','5','0','0','2159','3','1','1.14286','1','0','0','2000','2000','1','1','1','32768','2048','0','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','1','1','1','1','0','0','1','0','0','','16048'),
('37114','0','0','Steamwheedle Shark','','',NULL,'0','4','4','0','0','7','0','1','1.14286','1','0','0','2000','2000','1','1','1','0','2048','0','0','0','0','0','0','9','524288','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','2','3','1','1','1','1','1','0','0','1','0','2','','15595'),
('37213','0','0','Bilgewater Buccaneer','','','vehichleCursor','0','5','5','0','0','35','16777216','1','1','1','0','0','2000','2000','1','1','1','16384','0','0','0','0','0','0','0','9','262176','0','0','0','0','0','0','0','0','0','0','70051','0','0','0','0','0','0','0','509','0','0','SmartAI','0','3','1','1','1','1','1','0','0','1','0','2','','15595');

-- Chip Endale SAI
SET @ENTRY := 35054;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0 AND `id`=4;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,4,0,19,0,100,0,14153,0,0,0,75,66908,0,0,0,0,0,7,0,0,0,0,0,0,0,"Apply Aura on Quest Add");

-- Candy Cane SAI
SET @ENTRY := 35053;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0 AND `id`=3 AND `link`=4;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,3,4,19,0,100,0,14113,0,0,0,75,66908,0,0,0,0,0,7,0,0,0,0,0,0,0,"Apply Aura on Quest Add");

-- quest //
-- Second Trough SAI
SET @ENTRY := 37155;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,1,69228,0,0,0,33,37155,0,0,0,0,0,7,0,0,0,0,0,0,0,"Second Trough - Kill credit 37155"),
(@ENTRY,0,1,0,8,0,100,0,69228,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Second Trough - Fuego visual (Cambio de fase)"),
(@ENTRY,0,2,0,8,0,100,0,69228,0,0,0,75,98950,0,0,0,0,0,1,0,0,0,0,0,0,0,"Second Trough - Fuego visual"),
(@ENTRY,0,3,0,1,1,100,0,10000,10000,0,0,28,98950,0,0,0,0,0,1,0,0,0,0,0,0,0,"Second Trough - Fuego visual (Retire l'aura)"),
(@ENTRY,0,4,0,1,1,100,0,10020,10020,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Second Trough - Muere"),
(@ENTRY,0,5,0,6,1,100,0,0,0,0,0,70,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Second Trough - Respawn");

-- First Trough SAI
SET @ENTRY := 36727;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,1,69228,0,0,0,33,36727,0,0,0,0,0,7,0,0,0,0,0,0,0,"First Trough - Kill credit 36727"),
(@ENTRY,0,1,0,8,0,100,0,69228,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"First Trough - Fuego visual (Cambio de fase)"),
(@ENTRY,0,2,0,8,0,100,0,69228,0,0,0,75,98950,0,0,0,0,0,1,0,0,0,0,0,0,0,"First Trough - Fuego visual"),
(@ENTRY,0,3,0,1,1,100,0,10000,10000,0,0,28,98950,0,0,0,0,0,1,0,0,0,0,0,0,0,"First Trough - Fuego visual (Retire l'aura)"),
(@ENTRY,0,4,0,1,1,100,0,10020,10020,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"First Trough - Muere"),
(@ENTRY,0,5,0,6,1,100,0,0,0,0,0,70,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"First Trough - Respawn");

-- Third Trough SAI
SET @ENTRY := 37156;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,69228,0,0,0,33,37156,0,0,0,0,0,7,0,0,0,0,0,0,0,"Third Trough - Kill credit 37156"),
(@ENTRY,0,1,0,8,0,100,0,69228,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Third Trough - Fuego visual (Cambio de fase)"),
(@ENTRY,0,2,0,8,0,100,0,69228,0,0,0,75,98950,0,0,0,0,0,1,0,0,0,0,0,0,0,"Third Trough - Fuego visual"),
(@ENTRY,0,3,0,1,1,100,0,10000,10000,0,0,28,98950,0,0,0,0,0,1,0,0,0,0,0,0,0,"Third Trough - Fuego visual (Retire l'aura)"),
(@ENTRY,0,4,0,1,1,100,0,10020,10020,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Third Trough - Muere"),
(@ENTRY,0,5,0,6,1,100,0,0,0,0,0,70,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Third Trough - Respawn");

UPDATE `conditions` SET `ConditionValue1` = '3' WHERE `SourceTypeOrReferenceId` = '13' AND `SourceGroup` = '7' AND `SourceEntry` = '69228' AND `SourceId` = '0' AND `ElseGroup` = '0' AND `ConditionTypeOrReference` = '31' AND `ConditionTarget` = '0' AND `ConditionValue1` = '5' AND `ConditionValue2` = '36727' AND `ConditionValue3` = '0'; 
UPDATE `conditions` SET `ConditionValue1` = '3' WHERE `SourceTypeOrReferenceId` = '13' AND `SourceGroup` = '7' AND `SourceEntry` = '69228' AND `SourceId` = '0' AND `ElseGroup` = '1' AND `ConditionTypeOrReference` = '31' AND `ConditionTarget` = '0' AND `ConditionValue1` = '5' AND `ConditionValue2` = '37155' AND `ConditionValue3` = '0'; 
UPDATE `conditions` SET `ConditionValue1` = '3' WHERE `SourceTypeOrReferenceId` = '13' AND `SourceGroup` = '7' AND `SourceEntry` = '69228' AND `SourceId` = '0' AND `ElseGroup` = '2' AND `ConditionTypeOrReference` = '31' AND `ConditionTarget` = '0' AND `ConditionValue1` = '5' AND `ConditionValue2` = '37156' AND `ConditionValue3` = '0'; 

 -- fix quest=24861
UPDATE `conditions` SET `ConditionValue1` = '3' WHERE `SourceTypeOrReferenceId` = '13' AND `SourceGroup` = '2' AND `SourceEntry` = '71898' AND `SourceId` = '0' AND `ElseGroup` = '0' AND `ConditionTypeOrReference` = '31' AND `ConditionTarget` = '0' AND `ConditionValue1` = '5' AND `ConditionValue2` = '38438' AND `ConditionValue3` = '0'; 

-- Kilag Gorefang SAI
SET @ENTRY := 35893;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,14236,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"text add quest"),
(@ENTRY,0,1,0,19,0,100,0,14236,0,0,0,75,68212,0,0,0,0,0,7,0,0,0,0,0,0,0,"Apply Aura on Quest Add"),
(@ENTRY,0,2,1,20,0,100,0,0,0,0,0,28,68212,0,0,0,0,0,7,0,0,0,0,0,0,0,"spell hit");

-- Freezya SAI
SET @ENTRY := 35897;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"disable move"),
(@ENTRY,0,1,0,25,0,100,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"disable auto-attack"),
(@ENTRY,0,2,0,60,0,100,0,5400,12000,0,0,11,68209,64,0,0,0,0,2,0,0,0,0,0,0,0,"cast 68209"),
(@ENTRY,0,3,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"deffensiv state");

SET @ENTRY := 35896;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"disable move"),
(@ENTRY,0,1,0,25,0,100,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"disable auto-attack"),
(@ENTRY,0,2,0,60,0,100,0,5400,12000,0,0,11,68209,64,0,0,0,0,2,0,0,0,0,0,0,0,"cast 68209"),
(@ENTRY,0,3,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"deffensiv state");


-- //https://es.wowhead.com/quest=13949/recogida-de-caravana-de-el-cruce 
-- Halga Bloodeye SAI
SET @ENTRY := 34258;
UPDATE `creature_template` SET `AIName`="SmartAI" , `gossip_menu_id` = '0'  WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,13949,0,0,0,85,65486,0,0,0,0,0,7,0,0,0,326.791,-3678.95,27.217,4.95,"summon kodo"),
(@ENTRY,0,1,0,38,0,100,0,1,1,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"near creature text");

SET @ENTRY := 34258;
DELETE FROM `creature_text` WHERE `CreatureID`=@ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `Text`, `Type`, `Probability`) VALUES 
(@ENTRY, '0', '¡Adelante! ¡En Marcha!', '12', '100'); 

-- Lead Caravan Kodo SAI
SET @ENTRY := 34430;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,5000,14000,15000,11,61998,1,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Welding Beam"),
(@ENTRY,0,1,0,54,0,100,1,0,0,0,0,11,65494,0,0,0,0,0,1,0,0,0,0,0,0,0,"action cast"),
(@ENTRY,0,2,0,54,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,34258,20,0,0,0,0,0,"action data"),
(@ENTRY,0,3,0,27,0,100,0,0,0,0,0,53,1,34430,0,0,0,0,1,0,0,0,0,0,0,0,"wp start"),
(@ENTRY,0,4,5,40,0,100,0,11,34430,0,0,33,53613,0,0,0,0,0,18,10,0,0,0,0,0,0,"KC_53613"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,34432,20,0,0,0,0,0,"event despawn"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"force despawn");

SET @ENTRY := 34430;
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(@ENTRY ,'1','318.824','-3659.14','27.1842','Lead Kodo'),
(@ENTRY ,'2','317.622','-3593.5','26.8807','Lead Kodo'),
(@ENTRY ,'3','284.159','-3537.74','25.5663','Lead Kodo'),
(@ENTRY ,'4','243.51','-3463.41','27.6989','Lead Kodo'),
(@ENTRY ,'5','186.297','-3401.82','33.5115','Lead Kodo'),
(@ENTRY ,'6','183.61','-3309.41','54.925','Lead Kodo'),
(@ENTRY ,'7','151.804','-3254.28','68.5757','Lead Kodo'),
(@ENTRY ,'8','144.859','-3191.79','83.0296','Lead Kodo'),
(@ENTRY ,'9','168.554','-3151.03','91.4272','Lead Kodo'),
(@ENTRY ,'10','201.102','-3097.7','93.31','Lead Kodo'),
(@ENTRY ,'11','200.296','-3048.39','91.6675','Lead Kodo');