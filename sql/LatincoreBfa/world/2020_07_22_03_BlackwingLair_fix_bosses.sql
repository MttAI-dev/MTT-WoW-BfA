UPDATE `gameobject_template` SET `type`=1,`data3`=0,`ScriptName`='' WHERE `entry`=179879;
replace into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('179879','1','0','0','64','0','100','0','0','0','0','0','0','','62','469','0','0','0','0','0','7','0','0','0','-7672.32','-1107.05','396.651','0.59','Teleport player to Blackwing Lair');

UPDATE `creature_template` SET `gossip_menu_id`=21334 WHERE `entry`=13020;

UPDATE `creature_template` SET `unit_flags`=64 WHERE `entry`=14020;

REPLACE INTO `disables` VALUES
(0,260685,9,0,0,'SPELL_TAINT_OF_GHUUN crash server');

-- UPDATE `creature_template` SET `ScriptName`='npc_expedition_map' WHERE `entry`=143968;
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=143968; -- disabled coz exploit

REPLACE INTO `scenarios` VALUES (1768,12,1570,1573);

UPDATE `creature_template` SET `movementid`=140 WHERE `entry` IN (60941);

DELETE FROM `disables` WHERE `entry`=312916;

UPDATE `creature_template` SET `unit_flags`=0,`unit_flags2`=0,`faction`=35 WHERE `entry`=36283;


