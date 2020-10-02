DELETE FROM `conditions` WHERE `SourceEntry`=53081 AND `SourceTypeOrReferenceId`=17 AND `ConditionTypeOrReference`=8 AND `ConditionValue1`=12756;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `NegativeCondition`) VALUES 
('17', '53081', '8', '12756', '1'); 

-- Fase Areas DK
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`IN (174, 170, 171, 169, 175, 176) AND `SourceEntry`=4298;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(26,174,4298,0,0,1,0,52693,2,0,0,0,0,"",""),
(26,169,4298,0,0,8,0,12714,0,0,1,0,0,"",""),
(26,170,4298,0,0,8,0,12714,0,0,1,0,0,"",""),
(26,171,4298,0,0,8,0,12714,0,0,0,0,0,"",""),
(26,175,4298,0,0,8,0,12778,0,0,0,0,0,"",""),
(26,175,4298,0,0,28,0,12779,0,0,1,0,0,"",""),
(26,176,4298,0,0,9,0,12800,0,0,0,0,0,"","");

REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `quest_start_status`, `quest_end_status`) VALUES 
('53081', '4394', '12755', '12756', '74', '11'),
('53081', '4345', '12755', '12756', '74', '11'),
('53081', '4360', '12755', '12756', '74', '11'),
('53081', '4359', '12755', '12756', '74', '11'),
('53405', '4356', '12778', '0', '74', '11'),
('53405', '4356', '12779', '0', '74', '11');

REPLACE INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
('4298', '169', 'DK PHASE 169'),
('4298', '170', 'DK PHASE 170'),
('4298', '171', 'DK PHASE 171'),
('4298', '174', 'DK PHASE 174'),
('4298', '175', 'DK PHASE 175'),
('4298', '176', 'DK PHASE 176'); 

-- Orbaz Bloodbane SAI
SET @ENTRY := 28914;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,12757,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Orbaz Bloodbane - On Quest Accept - Run Script");

-- Actionlist SAI
SET @ENTRY := 2891400;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Orbaz Bloodbane - On Script - Say Line 0"),
(@ENTRY,9,1,0,0,0,100,0,3000,3000,0,0,11,53097,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orbaz Bloodbane - On Script - Cast Portal: Acherus");

-- Puntos de entregas y objetivos de misiones
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
('12706','0','0','-1','0','0','609','0','1','0','0','0','23877'),
('12706','0','1','32','0','0','609','0','0','0','0','0','26124'),
('12715','0','0','-1','0','0','609','0','1','0','0','0','23877'),
('12715','0','1','32','0','0','609','0','0','0','0','0','26124'),
('12755','0','0','-1','0','0','609','0','1','0','0','0','23877'),
('12755','0','1','32','0','0','609','0','0','0','0','0','26124'),
('12756','0','0','-1','0','0','609','0','1','0','0','0','23877'),
('12756','0','1','32','0','0','609','0','0','0','0','0','26124');
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
('12715','0','0','1879','-5765','22908'),
('12706','0','0','2461','-5593','22908'),
('12755','0','0','1320','-6124','22908'),
('12756','0','0','1404','-5827','22908');


