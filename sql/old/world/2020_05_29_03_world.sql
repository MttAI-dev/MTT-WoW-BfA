UPDATE creature_template SET gossip_menu_id='23415',npcflag=npcflag|1 WHERE  entry=144361;-- guid 210335339

DELETE FROM gossip_menu WHERE MenuId=23415 AND TextId=36308;
INSERT INTO gossip_menu (MenuId, TextId, VerifiedBuild) VALUES (23415, 36308, 29704);

DELETE FROM gossip_menu_option WHERE MenuId=23415 AND OptionIndex=0;
INSERT INTO gossip_menu_option (MenuId, OptionIndex, OptionIcon, OptionText, OptionBroadcastTextId, 
OptionType, OptionNpcFlag, VerifiedBuild) VALUES 
(23415, 0, 0, 'I am ready.', 163727, 1, 1, 29704);

UPDATE `creature_template` SET `ScriptName`='npc_vindicator_boros_121756' WHERE  `entry`=121756;
UPDATE `creature_template` SET `ScriptName`='boss_drugon_frostblood' WHERE  `entry`=110378;
UPDATE `creature_template` SET `ScriptName`='npc_hatecoil_arcanist' WHERE  `entry`=97171;
update creature_template set inhabittype = 7, ScriptName = 'boss_the_desolate_host_generic', flags_extra = 130 where entry = 120988;

REPLACE INTO spell_script_names VALUES
(223216, 'spell_teleport_to_rift'),
(219493, 'spell_gen_snow_crash'),
(208593, 'teleport_xavius'),
(245611, 'spell_tos_soulbind_visual_finder'),
(245612, 'spell_tos_soulbind_visual_finder');


UPDATE `creature_template` SET `vehicleID`= 494, `speed_run`= 1.2857, `ScriptName`= 'npc_greymanes_horse' WHERE `entry`= 35905;

UPDATE areatrigger_template SET scriptname = "at_dh_artifact_fury_of_the_illidari" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 5758);
UPDATE areatrigger_template SET scriptname = "at_demon_hunter_mana_rift" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 9695);
UPDATE areatrigger_template SET scriptname = "at_demon_hunter_demonic_trample" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 6482);

DELETE FROM `creature` WHERE  `guid`=50928;

UPDATE `class_expansion_requirement` SET `AccountExpansionLevel`='0' WHERE  `ClassID`=6 AND `RaceID`=25;
UPDATE `class_expansion_requirement` SET AccountExpansionLevel='0' WHERE  ClassID=6 AND RaceID=24;
UPDATE `class_expansion_requirement` SET AccountExpansionLevel='0' WHERE  ClassID=6 AND RaceID=26;
UPDATE `class_expansion_requirement` SET `AccountExpansionLevel`='0' WHERE  `ClassID`=6 AND `RaceID`=32;
UPDATE `class_expansion_requirement` SET `AccountExpansionLevel`='0' WHERE  `ClassID`=6 AND `RaceID`=31;
UPDATE `class_expansion_requirement` SET `AccountExpansionLevel`='0' WHERE  `ClassID`=6 AND `RaceID`=30;
UPDATE `class_expansion_requirement` SET `AccountExpansionLevel`='0' WHERE  `ClassID`=6 AND `RaceID`=29;
UPDATE `class_expansion_requirement` SET `AccountExpansionLevel`='0' WHERE  `ClassID`=6 AND `RaceID`=28;
UPDATE `class_expansion_requirement` SET `AccountExpansionLevel`='0' WHERE  `ClassID`=6 AND `RaceID`=27;
UPDATE `class_expansion_requirement` SET `AccountExpansionLevel`='0' WHERE  `ClassID`=6 AND `RaceID`=26;
UPDATE `class_expansion_requirement` SET `AccountExpansionLevel`='0' WHERE  `ClassID`=6 AND `RaceID`=24;

DELETE FROM playercreateinfo where `race` = 25 AND `class` =6;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES 
('25', '6', '609', '4298', '235620', '-5662209961', '426026', '3752638');

DELETE FROM playercreateinfo where `race` = 24 AND `class` =6;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES 
('24', '6', '609', '4298', '235620', '-5662209961', '426026', '3752638');

DELETE FROM playercreateinfo where `race` = 26 AND `class` =6;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES 
('26', '6', '609', '4298', '235620', '-5662209961', '426026', '3752638');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=107049 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=56869 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 107049, 0, 0, 31, 0, 5, 56869, 0, 0, 0, 0, '', 'Ride Vehicle target Balance Pole Landing Bunny');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=107049 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=133381 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (17, 0, 107049, 0, 0, 1, 0, 133381, 0, 0, 1, 30, 0, '', 'Ride Vehicle when player has not aura');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=107049 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=29 AND `ConditionTarget`=0 AND `ConditionValue1`=56869 AND `ConditionValue2`=8 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (17, 0, 107049, 0, 0, 29, 0, 56869, 8, 0, 0, 30, 0, '', 'Ride Vehicle when bunny within 8y');

DELETE FROM conditions WHERE SourceTypeOrReferenceId=18 AND SourceEntry=102717 AND SourceGroup IN (54993, 55083, 57431);
REPLACE INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorType, ErrorTextId, ScriptName, Comment) VALUES
(18, 54993, 102717, 0, 0, 1, 0, 102938, 0, 0, 1, 0, 0, '', 'Show spellclick only when has not aura'),
(18, 55083, 102717, 0, 0, 1, 0, 102938, 0, 0, 1, 0, 0, '', 'Show spellclick only when has not aura'),
(18, 57431, 102717, 0, 0, 1, 0, 102938, 0, 0, 1, 0, 0, '', 'Show spellclick only when has not aura');

DELETE FROM `creature_template` WHERE `entry`=18706;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (18706, 0, 0, 0, 0, 0, 'Bonechewer Riding Wolf', '', '', NULL, '', 0, 58, 59, 1, 0, 0, 1662, 0, 1, 1.38571, 1, 0, 0, 2000, 2000, 0, 0, 1, 0, 2048, 0, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16460, 3149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, '', 28153);

-- Stitches SAI
SET @ENTRY := 43862;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,1,0,0,0,0,11,3106,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Aura of Rot on Spawn"),
(@ENTRY,0,1,0,6,0,100,0,0,0,0,0,33,43862,0,0,0,0,0,18,100,0,0,0,0,0,0,"give credit to player");


REPLACE INTO `areatrigger_involvedrelation` ( `id`, `quest`) VALUES
 ('197', '62'),
 ('342', '76'),
 ('2206', '5156'),
 ('2207', '5156'),
 ('2208', '5156');
 
 REPLACE INTO `playercreateinfo_item` (`race`, `itemid`) VALUES ('32', '164762');