update `creature` set `unit_flags`=0 where `id`=62346;
update `creature_template` set `flags_extra`=512 WHERE `entry` in (124719,124492,124514,124555,124592,124625);
update `creature_template` set `RequiredExpansion`=6 WHERE `entry`=121589;
delete from `creature_addon` WHERE `guid`=210430740;
update `gameobject_template` set `displayid`=7959 where `entry`=276241;
update `creature_template` set `npcflag`=npcflag|2 where `entry`=138708;

-- fix pandaren quests
update `creature_template` set `npcflag`=1 where `entry`=161709;

DELETE FROM `quest_objectives` WHERE `ID` IN (387887,387886,387888,387885,387884,387883,387882,387881,387880);
update `quest_objectives` set `description`='Warchief\'s Command Board' where `id`=395091;

DELETE FROM `gossip_menu_option` WHERE `MenuId`=161709 AND `OptionIndex`=1;

DELETE FROM `smart_scripts` WHERE `entryorguid`=161709;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(161709,0,0,0,62,0,100,0,161709,0,0,0,33,161709,0,0,0,0,0,7,0,0,0,0,0,0,0,"on gossip select - killcredit Speak with Highlord Darion Mograine"),
(161709,0,1,2,62,0,100,0,161709,0,0,0,33,163027,0,0,0,0,0,7,0,0,0,0,0,0,0,"killcredit Listen to your commander"),
(161709,0,2,0,61,0,100,0,0,0,0,0,12,102959,3,60000,0,0,0,8,0,0,0,530.025,-2124.94,840.857,3.0875,"summon Death Gate");

DELETE FROM `smart_scripts` WHERE `entryorguid`=16170900;
DELETE FROM `smart_scripts` WHERE `entryorguid`=16170901;

DELETE FROM `smart_scripts` WHERE `entryorguid`=102959 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(102959,0,0,0,73,0,100,0,0,0,0,0,85,316999,2,0,0,0,0,7,0,0,0,0,0,0,0,"on spell_click - cast killcredit 162881 Death Gate used");

DELETE FROM `smart_scripts` WHERE `entryorguid`=102958;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=102958 AND `spell_id`=203489;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=102959 AND `spell_id`=203489;
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES 
('102959', '316999', '1'),
('102959', '317000', '1');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=161709 AND `ConditionTypeOrReference`=6 AND `ConditionValue1`=67;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=161709 AND `ConditionTypeOrReference`=6 AND `ConditionValue1`=469;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=102959 AND `SourceEntry`=316999;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(18, 102959, 316999, 0, 0, 6, 0, 469, 0, 0, 0, 0, 0, '', 'Spell teleport Horde team.');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=102959 AND `SourceEntry`=317000;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(18, 102959, 317000, 0, 0, 6, 0, 67, 0, 0, 0, 0, 0, '', 'Spell teleport Horde team.');

delete from `gameobject` where `guid`=20373183;
delete from `gameobject` where `guid`=162991;
delete from `gameobject`where `guid`=280200793;
update `gameobject_template` set `IconName`='Interact' where `entry`=281339;
insert into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`,
`terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`,
`spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values
('280200793','281339','0','0','0','0','0','0','0','-1','-8823','630.86','94.4241','4.02674','-0','-0','-0.903653','0.428266','300','255','1','0','','0');
