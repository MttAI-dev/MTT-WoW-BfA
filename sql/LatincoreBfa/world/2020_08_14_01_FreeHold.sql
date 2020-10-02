-- Vehicle Template Accesory
delete from vehicle_template_accessory where entry in (129092, 126969, 129645);
replace INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(129092, 129526, 0, 0, 'Hozen Hang Bunny - Bilge Rat Swabby', 8, 0), -- Hozen Hang Bunny - Bilge Rat Swabby
(126969, 129448, 1, 0, 'Trothak - Hammer Shark', 8, 0), -- Trothak - Hammer Shark
(126969, 129359, 0, 0, 'Trothak - Sawtooth Shark', 8, 0), -- Trothak - Sawtooth Shark
(129645, 129673, 0, 0, 'Gryff - Stevin', 8, 0); -- Gryff - Stevin

-- Npc SpellClick Spells
delete from npc_spellclick_spells where npc_entry in (134021, 138718, 138705, 130099, 140552);
replace INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(134021, 263297, 1, 0),
(138718, 272722, 1, 0),
(138705, 272725, 1, 0),
(130099, 257831, 1, 0),
(140552, 275150, 1, 0);

update `creature_template` set `gossip_menu_id`=23567 where `entry`=132238;

-- Gossip Menu
DELETE FROM `gossip_menu` WHERE (`MenuId`=23567 AND `TextId`=35269);
replace INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(23567, 35269, 28153); -- 132238 (Flynn Fairwind)

-- Gossip Menu Option
DELETE FROM `gossip_menu_option` WHERE (`MenuId`=23567 AND `OptionIndex`=0);
replace INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `VerifiedBuild`) VALUES
(23567, 0, 0, 'Please take me back.', 0, 28153);

UPDATE `creature_template` SET `ScriptName` = 'boss_council_captain', `flags_extra` = 1  WHERE `entry` = 126848;
UPDATE `creature_template` SET `ScriptName` = 'boss_council_captain', `flags_extra` = 1  WHERE `entry` = 126847;
UPDATE `creature_template` SET `ScriptName` = 'boss_council_captain', `flags_extra` = 1  WHERE `entry` = 126845;
UPDATE `creature_template` SET `ScriptName` = 'npc_rummy_mancomb' WHERE `entry` = 133219;
UPDATE `creature_template` SET `ScriptName` = 'npc_blackout_barrel' WHERE `entry` = 130896;
UPDATE `creature_template` SET `ScriptName` = 'npc_swiftwind_saber' WHERE `entry` = 129747;
UPDATE `creature_template` SET `ScriptName` = 'npc_irontide_granadier' WHERE `entry` = 129758;
UPDATE `creature_template` SET `ScriptName` = 'boss_harlan_sweete', `flags_extra` = 1 WHERE `entry` = 126983;
UPDATE `creature_template` SET `ScriptName` = 'npc_gukguk' WHERE `entry` = 130090;
UPDATE `creature_template` SET `ScriptName` = 'npc_lightning' WHERE `entry` = 130099;
UPDATE `creature_template` SET `ScriptName` = 'npc_ludwig_von_tortollan' WHERE `entry` = 129699;
UPDATE `creature_template` SET `ScriptName` = 'boss_trothak', `flags_extra` = 1 WHERE `entry` = 126969;
UPDATE `creature_template` SET `ScriptName` = 'npc_shark_trothak' WHERE `entry` = 129448;
UPDATE `creature_template` SET `ScriptName` = 'npc_shark_trothak' WHERE `entry` = 129359;
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 129547;
UPDATE `creature_template` SET `ScriptName` = 'npc_davey' WHERE `entry` = 130086;
UPDATE `creature_template` SET `ScriptName` = 'npc_gurgthock' WHERE `entry` = 129350;

delete from spell_script_names where spell_id in (272046, 258875, 281329, 258850, 257305, 257454);
replace INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES (272046, 'spell_dive_bomb');
replace INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES (258875, 'spell_blackout_vehicle');
replace INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES (281329, 'spell_trade_winds_vigor');
replace INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES (258850, 'spell_cannon_barrage_target');
replace INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES (257305, 'spell_cannon_barrage_aura');
replace INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES (257454, 'spell_swiftwind_saber');

delete from areatrigger_template where Id in (16608, 18182, 18148, 16728, 16715, 16776);
replace INTO `areatrigger_template`(`Id`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES 
(16608, 0, 2, 5, 5, 0, 0, 0, 0, 'at_vile_bombardment', 28153),
(18148, 0, 4, 5, 5, 0, 0, 0, 0, 'at_whirlpool_of_blades', 28153),
(16728, 0, 0, 5, 5, 0, 0, 0, 0, 'at_cannon_barrage', 28153),
(16715, 4, 4, 2, 2, 100, 100, 50, 50, 'at_swiftwind_saber', 28153),
(16776, 0, 0, 2, 2, 0, 0, 0, 0, 'at_shell_bounce', 28153),
(256494, 0, 4, 5, 5, 0, 0, 0, 0, 'at_rearm_trothak', 0),
(272548, 0, 2, 3, 3, 0, 0, 0, 0, 'at_bloody_mess', 0),
(18182, 4, 0, 6, 6, 10, 10, 0.3, 0.3, 'at_tapped_keg', 28153);

delete from spell_areatrigger where SpellMiscId in (11912, 13674, 13632, 12018, 12004, 12070);
replace INTO `spell_areatrigger`(`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES 
(11912, 16608, 0, 4978, 0, 0, 0, 0, 210, 0, 30000, 28153),
(13674, 18182, 0, 0, 0, 0, 0, 0, 0, 0, 12000, 28153), 
(12018, 16728, 0, 0, 0, 0, 0, 0, 217, 0, 20000, 28153),
(12004, 16715, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28153),
(12070, 16776, 0, 0, 0, 0, 0, 0, 0, 5105, 12000, 28153), 
(11954, 256494, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13654, 272548, 0, 0, 0, 0, 0, 0, 0, 0, 60000, 0),
(13632, 18148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28153);
