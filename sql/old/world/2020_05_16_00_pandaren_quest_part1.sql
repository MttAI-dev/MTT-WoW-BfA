SET @ENTRY := 53566;
UPDATE `creature_template` SET `AIName`="SmartAI", `ScriptName` = '' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 20, 0, 100, 0, 29524, 0, 0, 0, 0, 85, 93425, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Master Shang Xi - Accept Rewarded - Invoker Cast Update Zone Auras'),
(@ENTRY, 0, 1, 0, 19, 0, 100, 0, 29408, 0, 0, 0, 0, 33, 59591, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Master Shang Xi - Accept Quest - Add Killcredit');

DELETE FROM `creature_addon` WHERE `guid` = '21000035'; 
DELETE FROM `creature_addon` WHERE `guid` = '21000156'; 
DELETE FROM `creature_addon` WHERE `guid` = '21000298'; 
DELETE FROM `creature_addon` WHERE `guid` = '21000355'; 
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES ('53566', '30039'); 
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES ('53566', '30040');
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES ('53566', '30041');
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES ('53566', '30042');
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES ('53566', '30043');
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES ('53566', '30044');
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES ('53566', '30045');
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES ('53566', '30039'); 
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES ('53566', '30040'); 
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES ('53566', '30041'); 
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES ('53566', '30042'); 
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES ('53566', '30043'); 
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES ('53566', '30044'); 
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES ('53566', '30045'); 

UPDATE `quest_template_addon` SET `AllowableClasses` = '512' WHERE `ID` = '30039'; 
UPDATE `quest_template_addon` SET `AllowableClasses` = '128' WHERE `ID` = '30040'; 
UPDATE `quest_template_addon` SET `AllowableClasses` = '4' WHERE `ID` = '30041'; 
UPDATE `quest_template_addon` SET `AllowableClasses` = '16' WHERE `ID` = '30042'; 
UPDATE `quest_template_addon` SET `AllowableClasses` = '8' WHERE `ID` = '30043'; 
UPDATE `quest_template_addon` SET `AllowableClasses` = '64' WHERE `ID` = '30044'; 
UPDATE `quest_template_addon` SET `AllowableClasses` = '1' WHERE `ID` = '30045'; 
DELETE FROM `creature_template_addon` WHERE `entry` = '54608'; 
UPDATE `creature_addon` SET `auras` = '80797' WHERE `guid` = '21000344'; 

UPDATE `conditions` SET `ConditionValue1` = '29410' WHERE `SourceTypeOrReferenceId` = '26' AND `SourceGroup` = '630' AND `SourceEntry` = '5825' AND `SourceId` = '0' AND `ElseGroup` = '0' AND `ConditionTypeOrReference` = '28' AND `ConditionTarget` = '0' AND `ConditionValue1` = '29419' AND `ConditionValue2` = '0' AND `ConditionValue3` = '0'; 
UPDATE `conditions` SET `ConditionValue1` = '29410' WHERE `SourceTypeOrReferenceId` = '26' AND `SourceGroup` = '630' AND `SourceEntry` = '5825' AND `SourceId` = '0' AND `ElseGroup` = '1' AND `ConditionTypeOrReference` = '8' AND `ConditionTarget` = '0' AND `ConditionValue1` = '29419' AND `ConditionValue2` = '0' AND `ConditionValue3` = '0'; 

REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
('29523','0','0','-1','0','0','860','0','1','0','0','0','23877'),
('29523','0','1','0','252231','72112','860','0','0','0','0','0','23877'),
('29523','0','2','32','0','0','860','0','0','0','0','0','26124');

REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
('29523','0','0','1410','3639','22908'),
('29523','1','0','1226','3716','22908');

UPDATE `smart_scripts` SET `action_param1` = '2' WHERE `entryorguid` = '54631' AND `source_type` = '0' AND `id` = '0' AND `link` = '1'; 

REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES
(102398, 5835, 29523, 29423, 0, 0, 2, 3, 66, 1),
(102399, 5849, 29420, 29423, 0, 0, 2, 3, 66, 9),
(108694, 5849, 29664, 0, 0, 0, 2, 3, 8, 0),
(108695, 5849, 29664, 0, 0, 0, 2, 3, 8, 0),
(105156, 5849, 29664, 29422, 0, 0, 2, 6, 74, 1),
(105157, 5849, 29664, 29422, 0, 0, 2, 6, 74, 1),
(105158, 5849, 29664, 29422, 0, 0, 2, 6, 74, 1);

DELETE FROM `gameobject_addon` WHERE `guid` = '21000147';
DELETE FROM `gameobject_addon` WHERE `guid` = '21000142'; 
DELETE FROM `gameobject_addon` WHERE `guid` = '21000143';
DELETE FROM `gameobject_addon` WHERE `guid` = '21000141';  

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('54734','0','0','1','11','0','100','0','0','0','0','0','','8','1','0','0','0','0','0','1','0','0','0','0','0','0','0','Master Li Fei - On Respawn - Set React State'),
('54734','0','1','0','61','0','100','0','0','0','0','0','','42','1','0','0','0','0','0','1','0','0','0','0','0','0','0','Master Li Fei - On Respawn - Set Invincibility'),
('54734','0','2','3','0','0','100','0','6000','6000','12000','12000','','21','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Master Li Fei - Update IC - Stop Combat Movement'),
('54734','0','3','4','61','0','100','0','0','0','0','0','','11','108958','0','0','0','0','0','1','0','0','0','0','0','0','0','Master Li Fei - Update IC - Cast Feet of Fury'),
('54734','0','4','0','61','0','100','0','0','0','0','0','','80','5473400','2','0','0','0','0','1','0','0','0','0','0','0','0','Master Li Fei - Update IC - Run Script'),
('54734','0','5','0','0','0','100','0','10000','10000','15000','15000','','11','108936','0','0','0','0','0','2','0','0','0','0','0','0','0','Master Li Fei - Update IC - Cast Flying Shadow Kick'),
('54734','0','6','7','2','0','100','0','0','15','3000','3000','','33','54734','0','0','0','0','0','18','40','0','0','0','0','0','0','Master Li Fei - On 15% HP - Quest Credit'),
('54734','0','7','8','61','0','100','0','0','0','0','0','','44','1323','1','0','0','0','0','24','0','0','0','0','0','0','0','Master Li Fei - On 15% HP - Add Phase'),
('54734','0','8','9','61','0','100','0','0','0','0','0','','44','169','1','0','0','0','0','24','0','0','0','0','0','0','0','Master Li Fei - On 15% HP - Add Phase'),
('54734','0','9','10','61','0','100','0','0','0','0','0','','86','108153','2','24','0','0','0','1','0','0','0','0','0','0','0','Master Li Fei - On 15% HP - Corss Cast Cancel Fire Crash Phase Shift'),
('54734','0','10','11','61','0','100','0','0','0','0','0','','86','106275','2','2','0','0','0','1','0','0','0','0','0','0','0','Master Li Fei - On 15% HP - Corss Cast Trigger Master Li Fei, Fight Completion'),
('54734','0','11','0','61','0','100','0','0','0','0','0','','24','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Master Li Fei - On 15% HP - Evade');

 REPLACE INTO `creature_template_spell` (`entry`, `spellid`) VALUES 
('54734', '108944'),
('54734', '108958'); 

DELETE FROM `gameobject` WHERE `guid` = '220001' AND `id` = '209802';
DELETE FROM `gameobject` WHERE `guid` = '220002' AND `id` = '209803';
DELETE FROM `gameobject` WHERE `guid` = '220003' AND `id` = '209801';
DELETE FROM `gameobject` WHERE `guid` = '220004' AND `id` = '209369';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES
('220001','209802','860','5736','5849','0','0','504','0','-1','1333.31','3932.52','110.387','6.14356','0','0','-0.0697555','0.997564','120','255','1','0','','20886'),
('220002','209803','860','5736','5849','0','0','504','0','-1','1343.03','3957.44','110.398','1.43117','0','0','0.656058','0.75471','120','255','1','0','','20886'),
('220003','209801','860','5736','5849','0','0','504','0','-1','1367.34','3937.73','110.267','0.244346','0','0','0.121869','0.992546','120','255','1','0','','20886'),
('220004','209369','860','5736','5849','0','0','504','0','-1','1333.55','3945.18','110.544','0.488691','0','0','0.241921','0.970296','120','255','1','0','','20886');

DELETE FROM `creature_addon` WHERE `guid` = '21000009'; 

UPDATE `creature_template` SET `type` = '0' , `type_flags` = '0' , `flags_extra` = '0' WHERE `entry` = '54734'; 
DELETE FROM `creature_template_addon` WHERE `entry` = '54787'; 

REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES
(102521, 5849, 0, 29422, 0, 0, 2, 3, 0, 1),
(105156, 5849, 29664, 29422, 0, 0, 2, 6, 74, 1),
(105157, 5849, 29664, 29422, 0, 0, 2, 6, 74, 1),
(105158, 5849, 29664, 29422, 0, 0, 2, 6, 74, 1),
(119305, 5849, 29422, 0, 0, 0, 2, 3, 74, 0),
(119306, 5849, 29422, 0, 0, 0, 2, 3, 74, 0),
(119307, 5849, 29422, 0, 0, 0, 2, 3, 74, 0),
(102398, 5835, 29523, 29423, 0, 0, 2, 3, 66, 1),
(102399, 5849, 29420, 29423, 0, 0, 2, 3, 66, 9), 
(102400, 5849, 0, 29423, 0, 0, 2, 3, 0, 1),
(106493, 5820, 0, 29423, 0, 0, 2, 3, 0, 11),
(102868, 5820, 29423, 29775, 0, 0, 2, 3, 74, 9),
(106494, 5820, 29423, 0, 0, 0, 2, 7, 66, 0), 
(108822, 5881, 29423, 29768, 0, 0, 2, 3, 64, 1);