DELETE FROM `creature_loot_template` WHERE `item` = 28558;

DELETE FROM spell_script_names WHERE scriptname = "spell_arti_pal_tyr_deliverance";
INSERT INTO spell_script_names VALUES (200653, "spell_arti_pal_tyr_deliverance");

UPDATE areatrigger_template SET scriptname = "at_dh_fury_of_the_illidari" WHERE id = 10470;
UPDATE creature_template SET scriptname = "npc_warl_shadowy_tear" WHERE entry = 99887;
UPDATE areatrigger_template SET scriptname = "at_warlock_bane_of_havoc" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 5650);
UPDATE areatrigger_template SET scriptname = "at_warlock_fel_fissure" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 6959);
UPDATE areatrigger_template SET scriptname = "at_warlock_summon_observer" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 90001);
UPDATE areatrigger_template SET scriptname = "at_warlock_casting_circle" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 8138);
UPDATE areatrigger_template SET scriptname = "at_demon_hunter_demonic_trample" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 6482);
UPDATE areatrigger_template SET scriptname = "at_demon_hunter_mana_rift" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 9695);
UPDATE `creature_template` SET `ScriptName` = 'mob_master_shang_xi' WHERE `entry` = 53566;
UPDATE`creature_template` SET AIName = "" ,ScriptName= "mob_tushui_trainee" WHERE entry = 54587;
UPDATE`creature_template` SET AIName = "" ,ScriptName= "mob_tushui_trainee" WHERE entry = 65471;
UPDATE creature_template SET ScriptName='npc_emperor_shaohao' WHERE entry=73303;
update creature_template set speed_walk = '0.5', speed_run = '0.2', InhabitType = 7, scriptname = 'npc_timeless_spirit' where entry = 71868;
UPDATE creature_template SET ScriptName='npc_myranda_the_hag' WHERE entry=11872;
UPDATE `creature_template` SET `ScriptName` = 'npc_parqual_fintallas' WHERE `entry` = 4488;
UPDATE `creature_template` SET `ScriptName`='npc_rathis_tomber' WHERE `entry`=16224;
UPDATE `creature_template` SET `ScriptName`='npc_second_trial_paladin' WHERE `entry` IN (17809,17810,17811,17812);
UPDATE `creature_template` SET `ScriptName`='npc_second_trial_controller' WHERE `entry` IN (17807);
UPDATE `gameobject_template` SET `ScriptName`='go_second_trial' WHERE `entry` IN (182052);
UPDATE `creature_template` SET `ScriptName`= 'npc_chogall_blood_of_the_old_god' WHERE `entry`= 43707;
UPDATE `creature_template` SET `ScriptName`= 'npc_chogall_malformation' WHERE `entry`= 43888;
UPDATE `creature_template` SET `ScriptName`='npc_chogall_shadow_portal' WHERE `entry`=47019;
UPDATE `creature_template` SET `ScriptName`='npc_chogall_fire_portal' WHERE `entry`=47020;
UPDATE `creature_template` SET `ScriptName`='npc_shadow_of_obsidius' WHERE `entry`=40817;
UPDATE `creature_template` SET `ScriptName`='mob_corla_netheressence_trigger' WHERE `entry`=49526;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_twilight_zealot' WHERE `entry`=50284;
UPDATE `creature_template` SET `ScriptName`= 'mob_water_elemental' WHERE `entry`=25040;
UPDATE `gameobject_template` SET `ScriptName` = 'go_wod_q34375' WHERE `gameobject_template`.`entry` = 230527;
UPDATE `creature_template` SET `ScriptName` = 'mob_wod_q34375' WHERE `creature_template`.`entry` = 79526;
UPDATE `creature_template` SET `ScriptName`='npc_night_watch_mariner_tov' WHERE  `entry`=114809;



REPLACE INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES 
(9509, 'at_ordos_entrance'),
(9211, 'at_tom_bone_apart'),
(4354, 'at_wod_dark_portal');

DELETE FROM `fishing_loot_template` WHERE `entry` IN (46,25,249,1584,2717,1583);
INSERT INTO `fishing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) VALUES
(249, 11010,11010,100,1,1,1,1),
(25, 3857, 0, 95, 1, 0, 1, 1),
(25, 6297, 0, 100, 32768, 0, 1, 1),
(25, 7078, 0, 5, 1, 0, 1, 1),
(46, 3857, 0, 95, 1, 0, 1, 1),
(46, 6297, 0, 100, 32768, 0, 1, 1),
(46, 7078, 0, 5, 1, 0, 1, 1),
(1584, 3857, 0, 95, 1, 0, 1, 1),
(1584, 6297, 0, 100, 32768, 0, 1, 1),
(1584, 7078, 0, 5, 1, 0, 1, 1),
(2717, 3857, 0, 95, 1, 0, 1, 1),
(2717, 6297, 0, 100, 32768, 0, 1, 1),
(2717, 7078, 0, 5, 1, 0, 1, 1),
(1583, 3857, 0, 95, 1, 0, 1, 1),
(1583, 6297, 0, 100, 32768, 0, 1, 1),
(1583, 7078, 0, 5, 1, 0, 1, 1);

REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(104994, 'spell_alizabal_blade_dance_dmg'),
(106248,'spell_alizabal_blade_dance'),
(108090, 'spell_alizabal_seething_hate');



REPLACE INTO `criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES 
(15947, 11, 0, 0, 'achievement_too_hot_to_handle');

REPLACE INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`) VALUES
(1286, 17, 1637);

UPDATE `scene_template` SET `ScriptName` = 'scene_druid_feral_investigate' WHERE `SceneId` = 1286; 

DELETE FROM `skill_fishing_base_level` WHERE `entry` IN (25,1584,2717,1583);
INSERT INTO `skill_fishing_base_level` (`entry`, `skill`) VALUES
(25, 425),
(1584, 425),
(2717, 425),
(1583, 425);

UPDATE `spell_enchant_proc_data` SET `Chance`=2, `ProcsPerMinute`=0, `AttributesMask`=0x3 WHERE `EnchantID`=1894; -- Icy Weapon
UPDATE `spell_enchant_proc_data` SET `AttributesMask`=0x2 WHERE `EnchantID`=1898; 
UPDATE `spell_enchant_proc_data` SET `ProcsPerMinute`=3 WHERE `EnchantID`=1899; 
UPDATE `spell_enchant_proc_data` SET `AttributesMask`=0x2 WHERE `EnchantID`=1900; 
UPDATE `spell_enchant_proc_data` SET `AttributesMask`=0x1 WHERE `EnchantID`=2675; 

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=46629 AND `SourceId`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 46629, 0, 0, 27, 0, 74, 2, 0, 0, 0, 0, '', 'Spell Deathfrost will hit the caster of the spell if player level must be lesser than 74.');

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=17734;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(17734, 0, 0, 0, 9, 0, 100, 6, 0, 10, 10500, 20000, 11, 25778, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Underbog Lord - On Target within 10 yards range - Cast \'Knock Away\' '),
(17734, 0, 1, 0, 0, 0, 100, 6, 7100, 7100, 12000, 16000, 11, 32065, 33, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Underbog Lord - In Combat - Cast \'Fungal Decay\''),
(17734, 0, 2, 0, 2, 0, 100, 6, 10000, 10000, 10000, 12000, 11, 40318, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Underbog Lord - IC - Cast \'Growth\' '),
(17734, 0, 3, 4, 2, 0, 100, 7, 0, 30, 0, 0, 11, 8599, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Underbog Lord - Between 0-30% Health - Cast \'Enrage\' (No Repeat) '),
(17734, 0, 4, 0, 61, 0, 100, 7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Underbog Lord - Between 0-30% Health - Say Line 0 (No Repeat) (Dungeon)'); 

UPDATE `creature_template` SET `gossip_menu_id`='7520' WHERE `entry`=22938;

UPDATE`smart_scripts` SET `event_type`=0 WHERE  `entryorguid`=17734 AND `source_type`=0 AND `id`=2 AND `link`=0;

UPDATE `gossip_menu_option` SET `OptionBroadcastTextID`=35513 WHERE `MenuId`=10317 AND `OptionIndex`=0;
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID`=35515 WHERE `MenuId`=10317 AND `OptionIndex`=1;
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID`=35534 WHERE `MenuId`=10317 AND `OptionIndex`=2;
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID`=33681, `OptionText`="Darkspear Champion's Pennant" WHERE `MenuId`=10317 AND `OptionIndex`=3;
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID`=33682, `OptionText`="Forsaken Champion's Pennant" WHERE `MenuId`=10317 AND `OptionIndex`=4;
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID`=33683 WHERE `MenuId`=10317 AND `OptionIndex`=5;
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID`=33685 WHERE `MenuId`=10317 AND `OptionIndex`=6;
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID`=33686 WHERE `MenuId`=10317 AND `OptionIndex`=7;
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID`=35513 WHERE `MenuId`=10318 AND `OptionIndex`=0;
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID`=35515 WHERE `MenuId`=10318 AND `OptionIndex`=1;
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID`=35534 WHERE `MenuId`=10318 AND `OptionIndex`=2;
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID`=33675 WHERE `MenuId`=10318 AND `OptionIndex`=3;
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID`=33676 WHERE `MenuId`=10318 AND `OptionIndex`=4;
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID`=33678 WHERE `MenuId`=10318 AND `OptionIndex`=5;
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID`=33679 WHERE `MenuId`=10318 AND `OptionIndex`=6;
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID`=33401 WHERE `MenuId`=10318 AND `OptionIndex`=7;

UPDATE `spell_proc` SET `ProcFlags`=`ProcFlags`|0x00040000 WHERE `SpellId`=33953;

UPDATE `creature_template` SET `gossip_menu_id`= 15296 WHERE `entry`= 15296;

DELETE FROM `gossip_menu` WHERE `MenuId`= 15296;
REPLACE INTO `gossip_menu` (`MenuId`,`textid`,`VerifiedBuild`) VALUES (15296, 7787, 0);

UPDATE `creature_template` SET `gossip_menu_id`= 15297 WHERE `entry`= 15297;

DELETE FROM `gossip_menu` WHERE `MenuId`= 15297;
INSERT INTO `gossip_menu` (`MenuId`,`textid`,`VerifiedBuild`) VALUES (15297, 7786, 0);

DELETE FROM `gossip_menu` WHERE `MenuId`= 6570 AND `textid`= 7785;
INSERT INTO `gossip_menu` (`MenuId`,`textid`,`VerifiedBuild`) VALUES (6570, 7785, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`= 14 AND `SourceGroup`= 6570;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`comment`) VALUES
(14, 6570, 7785, 0, 0, 8, 0, 8335, 0, 0, 1, 0, 0, '', "Gossip text requires quest 'Felendren the Banished' NOT rewarded"),
(14, 6570, 7869, 0, 0, 8, 0, 8335, 0, 0, 0, 0, 0, '', "Gossip text requires quest 'Felendren the Banished' rewarded");

DELETE FROM `gossip_menu` WHERE `MenuId`= 6573 AND `textid`= 7788;
INSERT INTO `gossip_menu` (`MenuId`,`textid`,`VerifiedBuild`) VALUES (6573, 7788, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`= 14 AND `SourceGroup`= 6573;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`comment`) VALUES
(14, 6573, 7788, 0, 0, 8, 0, 9705, 0, 0, 1, 0, 0, '', "Gossip text requires quest 'Package Recovery' NOT rewarded"),
(14, 6573, 7821, 0, 0, 8, 0, 9705, 0, 0, 0, 0, 0, '', "Gossip text requires quest 'Package Recovery' rewarded");

SET @AURIFEROUS :=16231;
SET @SCRIPT := 1623100;
SET @MALTENDIS :=16251;
SET @MAVREN := 16252;
SET @VALWYN := 16289;

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry` IN (@AURIFEROUS, @MAVREN, @VALWYN, @MALTENDIS);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@AURIFEROUS, @SCRIPT, @MAVREN, @VALWYN, @MALTENDIS);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@AURIFEROUS,0,  0, 0, 1, 0, 100, 0, 10000, 60000, 580000, 620000, 80, @SCRIPT, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dame Aureous - Out Of Combat - Run Script"),
(@SCRIPT,    9,  0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, @VALWYN, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Talk 0 (Advisor Valwyn)"),
(@SCRIPT,    9,  1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Talk 0"),
(@SCRIPT,    9,  2, 0, 0, 0, 100, 0, 60000, 70000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, @MAVREN, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Face High Executor Mavren"),
(@SCRIPT,    9,  3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Talk 1"),
(@SCRIPT,    9,  4, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, @MAVREN, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Set Data 1 1 (High Executor Mavren)"),
(@SCRIPT,    9,  5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, @MALTENDIS, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Talk 0 (Deathstalker Maltendis)"),
(@SCRIPT,    9,  6, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Reset Orientation"),
(@SCRIPT,    9,  7, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, @MAVREN, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Talk 0 (High Executor Mavren)"),
(@SCRIPT,    9,  8, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, @VALWYN, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Talk 1 (Advisor Valwyn)"),
(@SCRIPT,    9,  9, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 45, 2, 2, 0, 0, 0, 0, 19, @MAVREN, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Set Data 2 2 (High Executor Mavren)"),
(@SCRIPT,    9, 10, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Talk 2"),
(@SCRIPT,    9, 11, 0, 0, 0, 100, 0, 50000, 70000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, @MAVREN, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Face High Executor Mavren"),
(@SCRIPT,    9, 12, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Talk 3"),
(@SCRIPT,    9, 13, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, @MAVREN, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Set Data 1 1 (High Executor Mavren)"),
(@SCRIPT,    9, 14, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, @MALTENDIS, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Talk 0 (Deathstalker Maltendis)"),
(@SCRIPT,    9, 15, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Reset Orientation"),
(@SCRIPT,    9, 16, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, @MAVREN, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Talk 1 (High Executor Mavren)"),
(@SCRIPT,    9, 17, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, @VALWYN, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Talk 1 (Advisor Valwyn)"),
(@SCRIPT,    9, 18, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 45, 2, 2, 0, 0, 0, 0, 19, @MAVREN, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Set Data 2 2 (High Executor Mavren"),
(@SCRIPT,    9, 19, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Talk 4"),
(@SCRIPT,    9, 20, 0, 0, 0, 100, 0, 50000, 70000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, @MAVREN, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Face High Executor Mavren"),
(@SCRIPT,    9, 21, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Talk 5"),
(@SCRIPT,    9, 22, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, @MAVREN, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Set Data 1 1 (High Executor Mavren)"),
(@SCRIPT,    9, 23, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, @MALTENDIS, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Talk 0 (Deathstalker Maltendis)"),
(@SCRIPT,    9, 24, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Reset Orientation"),
(@SCRIPT,    9, 25, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 19, @MAVREN, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Talk 2 (High Executor Mavren)"),
(@SCRIPT,    9, 26, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, @VALWYN, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Talk 1 (Advisor Valwyn)"),
(@SCRIPT,    9, 27, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 45, 2, 2, 0, 0, 0, 0, 19, @MAVREN, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Set Data 2 2 (High Executor Mavren"),
(@SCRIPT,    9, 28, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Talk 6"),
(@SCRIPT,    9, 29, 0, 0, 0, 100, 0, 150000, 190000, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, @MALTENDIS, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Set Data 1 1 (Deathstalker Maltendis)"),
(@SCRIPT,    9, 30, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, @MALTENDIS, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Talk 1 (Deathstalker Maltendis)"),
(@SCRIPT,    9, 31, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, @VALWYN, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Set Data 1 1 (Advisor Valwyn)"),
(@SCRIPT,    9, 32, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 19, @VALWYN, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Talk 2 (Advisor Valwyn)"),
(@SCRIPT,    9, 33, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 19, @MALTENDIS, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Set Data 2 2 (Deathstalker Maltendis)"),
(@SCRIPT,    9, 34, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 45, 2, 2, 0, 0, 0, 0, 19, @VALWYN, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Set Data 2 2 (Advisor Valwyn)"),
(@SCRIPT,    9, 35, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 45, 3, 3, 0, 0, 0, 0, 19, @MALTENDIS, 0, 0, 0, 0, 0, 0, "Dame Auriferous - On Script - Set Data 3 3 (Deathstalker Maltendis)"),
(@VALWYN,    0, 0, 0, 38, 0, 100, 0, 1, 1, 1000, 1000, 66, 0, 0, 0, 0, 0, 0, 19, @MALTENDIS, 0, 0, 0, 0, 0, 0, "Advisor Valwyn - On Data 1 1 Set - Face Deathstalker Maltendis"),
(@VALWYN,    0, 1, 0, 38, 0, 100, 0, 2, 2, 1000, 1000, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Advisor Valwyn - On Data 2 2 Set - Reset Orientation"),
(@MAVREN,    0, 0, 0, 38, 0, 100, 0, 1, 1, 1000, 1000, 66, 0, 0, 0, 0, 0, 0, 19, 16231, 0, 0, 0, 0, 0, 0, "High Executor Mavren - On Data 1 1 Set - Face Dame Auriferious"),
(@MAVREN,    0, 1, 0, 38, 0, 100, 0, 2, 2, 1000, 1000, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "High Executor Mavren - On Data 2 2 Set - Reset Orientation"),
(@MALTENDIS, 0, 0, 0, 38, 0, 100, 0, 1, 1, 1000, 1000, 66, 0, 0, 0, 0, 0, 0, 19, @VALWYN, 0, 0, 0, 0, 0, 0, "Deathstalker Maltendis - On Data 1 1 Set - Face Advisor Valwyn"),
(@MALTENDIS, 0, 1, 0, 38, 0, 100, 0, 2, 2, 1000, 1000, 5, 153, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Deathstalker Maltendis - On Data 2 2 Set - Emote Laugh"),
(@MALTENDIS, 0, 2, 0, 38, 0, 100, 0, 3, 3, 1000, 1000, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Deathstalker Maltendis - On Data 3 3 Set - Reset Orientation");

DELETE FROM `creature_text` WHERE `CreatureId` IN (@AURIFEROUS, @MAVREN, @VALWYN, @MALTENDIS);
INSERT INTO `creature_text` (`CreatureId`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(@AURIFEROUS, 0, 0, "%s nods her head yes at what her advisor has to say.", 16, 0, 100, 273, 0, 0, 13362, 0, "Dame Auriferous"),
(@AURIFEROUS, 0, 1, "%s disagrees with whatever it is that Valwyn has whispered to her.", 16, 0, 100, 274, 0, 0, 13363, 0, "Dame Auriferous"),
(@AURIFEROUS, 0, 2, "%s seems nonplussed by whatever it is that her advisor has whispered in her ear.", 16, 0, 100, 6, 0, 0, 13365, 0, "Dame Auriferous"),
(@AURIFEROUS, 1, 0, "Executor, your direct assault approach will cost us more lives than I am comfortable with. A more nuanced strategy is called for; one that involves us reclaiming the surrounding territory, starting with the villages so as to cut off all points of reinforcement to Deatholme.", 12, 1, 100, 0, 0, 0, 12552, 0, "Dame Auriferous"),
(@AURIFEROUS, 2, 0, "I hear what you are saying, Mavren. Nevertheless, the final decision is mine. I appreciate your assistance, but the majority of the lives on the line are blood elf. I will not have those lives carelessly thrown away!", 12, 1, 100, 0, 0, 0, 12571, 0, "Dame Auriferous"),
(@AURIFEROUS, 3, 0, "How long until Forsaken reinforcements arrive? Our position here is tenuous. Your Lady promised us more soldiers. We must be able to concentrate solely on Deatholme and the Scourge!", 12, 1, 100, 0, 0, 0, 12557, 0, "Dame Auriferous"),
(@AURIFEROUS, 4, 0, "Mavren, I don't want excuses, I want results! The Farstriders aren't available and we've received all that we're going to get from Silvermoon for now. I cannot ignore the Shadowpine trolls and Zul'Aman... they're arrayed across our eastern border!", 12, 1, 100, 0, 0, 0, 12572, 0, "Dame Auriferous"),
(@AURIFEROUS, 5, 0, "No, I was right to begin with. Deatholme must come last. We must secure all of the Ghostlands first. I will not commit the forces here to a battle against Dar'khan with enemies to our flank and rear!", 12, 1, 100, 0, 0, 0, 12562, 0, "Dame Auriferous"),
(@AURIFEROUS, 6, 0, "Disagree with me all you like, High Executor. I will weigh your counsel, and then we will take the steps to free all of Quel'Thalas as I deem necessary. We shall continue this discussion anon.", 12, 1, 100, 0, 0, 0, 12573, 0, "Dame Auriferous"),
(@MAVREN,     0, 0, "With all due respect, milady, you have not fought the Scourge as I have. The Lady appointed me to assist you in defeating Dar'khan because of that, and you would do well to consider what I have to say.", 12, 1, 100, 0, 0, 0, 12553, 0, "High Executor Mavren"),
(@MAVREN,     0, 1, "I strongly disagree. Dar'khan is not going to get reinforcements because he'll be bottlenecked. Deatholme has only one way in and out. Your traitor was a fool to corner himself there, and I intend to exploit that weakness!", 12, 1, 100, 0, 0, 0, 12554, 0, "High Executor Mavren"),
(@MAVREN,     0, 2, "This is war, Dame Auriferous, and in any war lives will be lost! The only areas that we need to secure are the two ziggurats. We will turtle in and take the Tower of the Damned and its master by brute force. Then you will have your Quel'Thalas.", 12, 1, 100, 0, 0, 0, 12555, 0, "High Executor Mavren"),
(@MAVREN,     0, 3, "And if your Farstriders were here to reinforce us, I might agree. But, they are busying themselves instead with the Shadowpine trolls on your eastern border. The longer we wait for them, the stronger the Scourge will become.", 12, 1, 100, 0, 0, 0, 12556, 0, "High Executor Mavren"),
(@MAVREN,     1, 0, "I believe that you're making my argument for me, but yes it would be nice if we had more reinforcements. I would counter that it would be faster to pull the Farstriders from their senseless skirmishing with the trolls.", 12, 1, 100, 0, 0, 0, 12558, 0, "High Executor Mavren"),
(@MAVREN,     1, 1, "Dame Auriferous, we are the reinforcements. It may come to pass that The Lady will send more men in time. Better that you convince Silvermoon City to muster all of its forces and put them at our disposal here.", 12, 1, 100, 0, 0, 0, 12559, 0, "High Executor Mavren"),
(@MAVREN,     1, 2, "You are correct; we must concentrate on the Scourge. Ignore the trolls and the villages, and focus our attentions on Deatholme! With Dar'khan defeated you will find that the rest of the Scourge 'body' will fall quickly, lacking their 'head'.", 12, 1, 100, 0, 0, 0, 12560, 0, "High Executor Mavren"),
(@MAVREN,     1, 3, "Forsaken reinforcements? Undercity is stretched thin with the Scourge on all sides. No, this will be a matter largely dealt with by the blood elves. We Forsaken are here as backup and advisors.", 12, 1, 100, 0, 0, 0, 12561, 0, "High Executor Mavren"),
(@MAVREN,     2, 0, "Again I strongly disagree with your view of the strategic situation. Your plan will spread our forces too thin. It will leave us with only a small force to assault Deatholme. I cannot in good conscience execute such a strategy.", 12, 1, 100, 0, 0, 0, 12567, 0, "High Executor Mavren"),
(@MAVREN,     2, 1, "Spread throughout the Ghostlands, our forces will be of little use in an assault on Deatholme. No, milady, I am here to kill Dar'khan and that is what I intend to do!", 12, 1, 100, 0, 0, 0, 12568, 0, "High Executor Mavren"),
(@MAVREN,     2, 2, "We've been over this before. Only a focused assault upon Deatholme will meet with success. These other targets are distractions that we can ill afford. I suggest that you inform your Captain Helios that he is to leave off his campaign against the Shadowpine trolls and focus solely on the Scourge.", 12, 1, 100, 0, 0, 0, 12569, 0, "High Executor Mavren"),
(@MAVREN,     2, 3, "Perhaps we should let the matter rest for the time being until your chef has prepared your meal? You look a bit piqued if you don't mind my saying. We can resume our discussion when you are feeling more yourself.", 12, 1, 100, 0, 0, 0, 12570, 0, "High Executor Mavren"),
(@VALWYN,     0, 0, "%s whispers something in the Dame's ear.", 16, 0, 100, 0, 0, 0, 13361, 0, "Advisor Valwyn"),
(@VALWYN,     1, 0, "%s looks appalled at the Executor's tone!", 16, 0, 100, 0, 0, 0, 12574, 0, "Advisor Valwyn"),
(@VALWYN,     1, 1, "%s tries to busy herself with other matters.", 16, 0, 100, 0, 0, 0, 12575, 0, "Advisor Valwyn"),
(@VALWYN,     1, 2, "%s glares daggers in the direction of High Executor Mavren and Deathstalker Maltendis.", 16, 0, 100, 0, 0, 0, 12576, 0, "Advisor Valwyn"),
(@VALWYN,     1, 3, "%s lifts her nose and sniffs in response to the High Executor's reply.", 16, 0, 100, 0, 0, 0, 12577, 0, "Advisor Valwyn"),
(@VALWYN,     1, 4, "%s shakes her head in disbelief at what she is hearing out of the Forsaken's mouth.", 16, 0, 100, 0, 0, 0, 12578, 0, "Advisor Valwyn"),
(@VALWYN,     1, 5, "%s blanches as much of the blood drains from her face.", 16, 0, 100, 0, 0, 0, 12579, 0, "Advisor Valwyn"),
(@VALWYN,     1, 6, "%s reddens furiously at what she is hearing in response to her lady's question.", 16, 0, 100, 0, 0, 0, 12580, 0, "Advisor Valwyn"),
(@VALWYN,     1, 7, "%s concentrates on the wall opposite her, clearly ignoring the looks of the Executor and his assistant.", 16, 0, 100, 0, 0, 0, 12581, 0, "Advisor Valwyn"),
(@VALWYN,     2, 0, "%s looks disgusted at the deathstalker's flirtations.", 16, 0, 100, 274, 0, 0, 13367, 0, "Advisor Valwyn"),
(@MALTENDIS,  0, 0, "%s nods in agreement.", 16, 0, 100, 0, 0, 0, 12582, 0, "Deathstalker Maltendis"),
(@MALTENDIS,  0, 1, "%s opens his mouth as if to add something, and then apparently thinks the better of it.", 16, 0, 100, 0, 0, 0, 12583, 0, "Deathstalker Maltendis"),
(@MALTENDIS,  0, 2, "%s looks over at Advisor Valwyn with a smirk on his face.", 16, 0, 100, 0, 0, 0, 12584, 0, "Deathstalker Maltendis"),
(@MALTENDIS,  0, 3, "%s grins at the High Executor's words.", 16, 0, 100, 0, 0, 0, 12585, 0, "Deathstalker Maltendis"),
(@MALTENDIS,  0, 4, "%s appears bored with the whole discussion.", 16, 0, 100, 0, 0, 0, 12586, 0, "Deathstalker Maltendis"),
(@MALTENDIS,  0, 5, "%s winks slyly at Advisor Valwyn.", 16, 0, 100, 0, 0, 0, 12587, 0, "Deathstalker Maltendis"),
(@MALTENDIS,  0, 6, "%s fidgets with his armor, clearly uncomfortable at the tone of the discussion.", 16, 0, 100, 0, 0, 0, 12588, 0, "Deathstalker Maltendis"),
(@MALTENDIS,  0, 7, "%s looks like he'd rather be anywhere else but here.", 16, 0, 100, 0, 0, 0, 12589, 0, "Deathstalker Maltendis"),
(@MALTENDIS,  1, 0, "%s turns to Advisor Valwyn and winks lasciviously in her direction.", 16, 0, 100, 2, 0, 0, 13366, 0, "Deathstalker Maltendis");

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=1476;
DELETE FROM `smart_scripts` WHERE `entryorguid`=1476;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1476, 0, 0, 0, 1, 0, 100, 0, 5000, 30000, 300000, 600000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Hargin Mundar - Out Of Combat - Talk"),
(1476, 0, 1, 2, 1, 0, 100, 0, 35000, 45000, 300000, 600000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Hargin Mundar - Out Of Combat - Talk"),
(1476, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 41995, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Hargin Mundar - Out Of Combat - Cast Vomit");

DELETE FROM `creature_text` WHERE `CreatureId`=1476;
INSERT INTO `creature_text` (`CreatureId`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(1476, 0, 0, "Stormy seas out there.  The sea spirits must be restless....hic!", 12, 6, 100, 0, 0, 0, 318, 0, "Hargin Mundar"),
(1476, 0, 1, "I saw a Sea Giant once.  It's not something I would care to see again.  Burp!", 12, 6, 100, 0, 0, 0, 319, 0, "Hargin Mundar"),
(1476, 0, 2, "I'd go out and clear out some of those gnolls, but this leg has seen better days and I am afraid I'd just wind up dead.", 12, 6, 100, 0, 0, 0, 320, 0, "Hargin Mundar"),
(1476, 0, 3, "Watch your step out there.  Many an adventure seeker has not returned from the marsh.  hic!", 12, 6, 100, 0, 0, 0, 321, 0, "Hargin Mundar"),
(1476, 1, 0, "Huuup...Huuup...Bleeeeehh!", 12, 0, 100, 0, 0, 0, 397, 0, "Hargin Mundar");

DELETE FROM `gossip_menu` WHERE `MenuId`=7192 AND `textid`=8473;
DELETE FROM `gossip_menu` WHERE `MenuId`=7194 AND `textid`=8475;
INSERT INTO `gossip_menu` (`MenuId`, `textid`, `VerifiedBuild`) VALUES
(7192, 8473, 0),
(7194, 8475, 0);

DELETE FROM `npc_text` WHERE `ID`=8473;
INSERT INTO `npc_text` (`ID`, `Probability0`,`BroadcastTextID0`) VALUES
(8473, 100, 12182);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup` IN (7192, 7194);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `comment`) VALUES
(14, 7192, 8472, 0, 0, 8, 0, 9207, 0, 0, 1, 0, 0, "", "Gossip text requires quest Underlight Ore Samples NOT rewarded"),
(14, 7192, 8473, 0, 0, 8, 0, 9207, 0, 0, 0, 0, 0, "", "Gossip text requires quest Underlight Ore Samples rewarded"),
(14, 7194, 8474, 0, 0, 8, 0, 9207, 0, 0, 1, 0, 0, "", "Gossip text requires quest Underlight Ore Samples NOT rewarded"),
(14, 7194, 8475, 0, 0, 8, 0, 9207, 0, 0, 0, 0, 0, "", "Gossip text requires quest Underlight Ore Samples rewarded");

UPDATE `quest_offer_reward` SET `RewardText`="My apprentice was unable to take care of this herself?  I shall have a word with her when she returns then, gnolls or not.  Speaking of which, why didn't she return with you?$B$B<The magister sighs.>$B$BThat one is a handful, and is going to be quite a challenge to properly train.  Thank you, for bringing these samples to me.  We are hoping that we can uncover some special property from them that will help in the fight against the Scourge.$B$BPlease take this coin as a token of my appreciation." WHERE `ID`=9207;

DELETE FROM `gossip_menu` WHERE `MenuId`=8558 AND `textid`=10722;
INSERT INTO `gossip_menu` (`MenuId`,`textid`) VALUES
(8558,10722);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup` IN (8558,8560);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(14,8558,7778,0,0,5,0,932,16,0,0,0,0,'',"Show gossip text if player is Friendly with The Aldor"),
(14,8558,10722,0,0,5,0,932,16,0,1,0,0,'',"Show gossip text if player is not Friendly with The Aldor"),
(14,8560,7778,0,0,5,0,934,16,0,0,0,0,'',"Show gossip text if player is Friendly with The Scryers"),
(14,8560,10723,0,0,5,0,934,16,0,1,0,0,'',"Show gossip text if player is not Friendly with The Scryers"),
(15,8558,0,0,0,5,0,932,16,0,0,0,0,'',"Show gossip menu option if player is Friendly with The Aldor"),
(15,8560,0,0,0,5,0,934,16,0,0,0,0,'',"Show gossip menu option if player is Friendly with The Scryers");

UPDATE `creature_template` SET `lootid`=108829 WHERE `entry`=108829;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(108829, 141431, -200, 1, 0, 1, 1) /* ook-Fingered Gauntlets */, 
(108829, 141435, -200, 1, 0, 1, 1) /* hirlpool Gloves */, 
(108829, 141440, -200, 1, 0, 1, 1) /* eaweed "Leather" Mitts */, 
(108829, 141441, -200, 1, 0, 1, 1) /* hum-Chopper Gauntlets */, 
(108829, 141473, -200, 1, 0, 1, 1) /* rakentooth Necklace */, 
(108829, 141523, -200, 1, 0, 1, 1) /* el-Scented Bait */, 
(108829, 141545, -200, 1, 0, 1, 1) /* ing of Deep Sea Pearls */;

DELETE FROM gameobject_loot_template WHERE item IN (5798, 56249);

