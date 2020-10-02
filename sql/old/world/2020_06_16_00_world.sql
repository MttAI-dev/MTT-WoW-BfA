UPDATE creature SET spawndifficulties = "2,8,23" WHERE map=1651;
UPDATE creature SET spawndifficulties = "2,8,23" WHERE `areaId` = 8443;
UPDATE creature SET map=1651 WHERE `areaId` = 8443;
UPDATE `creature` SET `spawnDifficulties`='0' WHERE  `guid`=2800016200;
UPDATE `creature` SET `spawnDifficulties`='0' WHERE id=115024;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=3203 AND `spell_id`=74024;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(3203, 74024, 3, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=3203 AND `SourceEntry`=74024 AND `ConditionValue1`=25260;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 3203, 74024, 0, 0, 9, 0, 25260, 0, 0, 0, 0, 0, '', 'Fizzle Darkclaw - Allow Spellclick 74024 Only if Quest 25260 is Taken');

DELETE FROM `spell_proc` WHERE `SpellId` = 209341;
INSERT INTO `spell_proc` (`SpellId`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `ProcFlags`, `SpellTypeMask`, `SpellPhaseMask`, `HitMask`, `AttributesMask`, `ProcsPerMinute`, `Chance`, `Cooldown`, `Charges`) VALUES
(209341, 1, 10, 0, 0, 0x00800000, 0, 16384, 4, 1, 0, 0, 0, 0, 0, 0);

DELETE FROM `spell_proc` WHERE `SpellId` = 209539;
INSERT INTO `spell_proc` (`SpellId`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `ProcFlags`, `SpellTypeMask`, `SpellPhaseMask`, `HitMask`, `AttributesMask`, `ProcsPerMinute`, `Chance`, `Cooldown`, `Charges`) VALUES
(209539, 0, 10, 0, 0, 0, 0x20000000, 16384, 4, 1, 0, 0, 0, 0, 0, 0);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` = 5839;
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) 
VALUES (5839, 202603, 0, 0, 0, 0, 0, 0, 0, 24461);

DELETE FROM `creature_text` WHERE `creatureID`=17000;
INSERT INTO `creature_text` (`creatureid`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `TextRange`, `comment`) VALUES 
(17000, 0, 0, 'Fools! You seek to abjure my father\'s presence? Death awaits you, mortals!', 12, 0, 100, 0, 0, 0, 0, 'Aggonis');

DELETE FROM `reference_loot_template` WHERE `Entry` IN (300001, 300002, 300003, 300004, 300005, 300006, 300007, 300008);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) VALUES 
('300001', '128304', '0', '10', '0', '1', '0', '1', '10'),
('300001', '124105', '0', '10', '0', '1', '0', '1', '1'),
('300001', '124103', '0', '10', '0', '1', '0', '1', '5'),
('300001', '124104', '0', '10', '0', '1', '0', '1', '5'),
('300001', '124102', '0', '10', '0', '1', '0', '1', '5'),
('300001', '124101', '0', '10', '0', '1', '0', '1', '5'),
('300002', '130176', '0', '4', '0', '1', '0', '1', '2'),
('300002', '130172', '0', '4', '0', '1', '0', '1', '2'),
('300002', '130177', '0', '4', '0', '1', '0', '1', '2'),
('300002', '130173', '0', '4', '0', '1', '0', '1', '2'),
('300002', '130175', '0', '4', '0', '1', '0', '1', '2'),
('300002', '130174', '0', '4', '0', '1', '0', '1', '2'),
('300002', '129100', '0', '10', '0', '1', '0', '1', '10'),
('300002', '130183', '0', '10', '0', '1', '0', '1', '1'),
('300002', '130181', '0', '10', '0', '1', '0', '1', '1'),
('300002', '130182', '0', '10', '0', '1', '0', '1', '1'),
('300002', '130179', '0', '10', '0', '1', '0', '1', '1'),
('300002', '130180', '0', '10', '0', '1', '0', '1', '1'),
('300002', '130178', '0', '10', '0', '1', '0', '1', '1'),
('300003', '124440', '0', '10', '0', '1', '0', '1', '10'),
('300003', '124442', '0', '2', '0', '1', '0', '1', '1'),
('300004', '124437', '0', '10', '0', '1', '0', '1', '20'),
('300005', '139398', '0', '4', '0', '1', '0', '1', '1'),
('300005', '139395', '0', '4', '0', '1', '0', '1', '1'),
('300005', '139394', '0', '4', '0', '1', '0', '1', '1'),
('300005', '139392', '0', '4', '0', '1', '0', '1', '1'),
('300005', '139393', '0', '4', '0', '1', '0', '1', '1'),
('300006', '124115', '0', '10', '0', '1', '0', '1', '10'),
('300006', '124113', '0', '10', '0', '1', '0', '1', '10'),
('300007', '123919', '0', '10', '0', '1', '0', '1', '10'),
('300007', '123918', '0', '10', '0', '1', '0', '1', '20'),
('300008', '139396', '0', '40', '0', '1', '0', '1', '1'),
('300008', '139397', '0', '40', '0', '1', '0', '1', '1'),
('300008', '139399', '0', '40', '0', '1', '0', '1', '1');

DELETE FROM `creature_text` WHERE `CreatureID` = 60801;
DELETE FROM `creature_text` WHERE `CreatureID` = 60735;
INSERT INTO `creature_text` (`CreatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) values
('60801','0','0','Who dares to challenge me?','14','0','100','0','0','30854','60253','0','Jung Duk - YELL_AGGRO.'),
('60801','1','0','Shut up, Katak!','14','0','100','0','0','30855','60446','0','Jung Duk - YELL_SHUTUP_KATAK'),
('60735','0','0','Not running this time, Jung Duk?','12','0','100','0','0','28126','60259','0','Katak - Jung Duk After Aggro.'),
('60735','1','0','Where are your lackeys, great chief? They cannot help you this time!','12','0','100','0','0','28127','60260','0','Katak - Jung Duk After Aggro.'),
('60735','2','0','Deceit is no match for true strength! This one is more powerful than you!','12','0','100','0','0','28128','60261','0','Katak - Jung Duk After Aggro.'),
('60735','3','0','I feel... at peace.','12','0','100','0','0','28129','60445','0','Katak - Jung Duk After Aggro.'),
('60735','4','0','Ahahahaha! More than filth like you deserved.','12','0','100','0','0','28130','60262','0','Katak - Jung Duk After Aggro.');

UPDATE `npc_text` SET `BroadcastTextId0`=125222, `VerifiedBuild`=27980 WHERE `ID`=31023; -- 31023

UPDATE `creature_template` SET `faction`='16', `AIName`='SmartAI' WHERE  `entry`=37808;

DELETE FROM `smart_scripts` WHERE `entryorguid`=37808;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(37808, 0, 1, 0, 0, 0, 100, 0, 1000, 3000, 10000, 12000, '', 11, 16044, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Koroth the Hillbreaker - Gilnean Mastiff - Cleave');

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4756 AND `quest_start`=14467 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4756, 14467, 24676, 0, -1, 0, 2, 3, 64, 64);

UPDATE `spell_area` SET `quest_end`='14375', `quest_end_status`='64' WHERE  `spell`=59087 AND `area`=4757 AND `quest_start`=14293 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;

UPDATE `spell_area` SET `quest_end`='24676', `quest_end_status`='64' WHERE  `spell`=69484 AND `area`=4817 AND `quest_start`=14467 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;

UPDATE `spell_area` SET `quest_end`='24676', `quest_end_status`='64' WHERE  `spell`=69484 AND `area`=4714 AND `quest_start`=24677 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;

UPDATE `spell_area` SET `quest_end`='24676', `quest_end_status`='64' WHERE  `spell`=69484 AND `area`=4787 AND `quest_start`=14467 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;

UPDATE `spell_area` SET `quest_end`='24676', `quest_end_status`='64' WHERE  `spell`=69484 AND `area`=4794 AND `quest_start`=14467 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;
UPDATE `spell_area` SET `quest_end`='24676', `quest_end_status`='64' WHERE  `spell`=69484 AND `area`=4731 AND `quest_start`=14467 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;
UPDATE `spell_area` SET `quest_end`='24676', `quest_end_status`='64' WHERE  `spell`=69484 AND `area`=4730 AND `quest_start`=14467 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;
UPDATE `spell_area` SET `quest_end`='24676', `quest_end_status`='64' WHERE  `spell`=69485 AND `area`=4788 AND `quest_start`=24592 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;
UPDATE `spell_area` SET `quest_end`='24676', `quest_end_status`='64' WHERE  `spell`=69484 AND `area`=4734 AND `quest_start`=14467 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;

UPDATE `creature_template` SET `ScriptName`='npc_jessica_rogers' WHERE  `entry`=54485;
UPDATE `creature_template` SET `ScriptName`='npc_selina_dourman' WHERE  `entry`=10445;
UPDATE `creature_template` SET `ScriptName`='npc_rinling' WHERE  `entry`=14841;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (102053, 181458, 101838, 197488);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(181458, 'spell_ring_toss'),
(102053, 'spell_cook_crunchy_frog'),
(101838, 'spell_gen_repair_damaged_tonk'),
(197488, "spell_dru_balance_affinity_dps");

UPDATE `creature_template` SET `ScriptName`='npc_finlay_coolshot' WHERE  `entry`=54605;

