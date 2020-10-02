-- Spectral Eggshell SAI
SET @ENTRY := 269796;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,64,0,100,0,2,0,0,0,12,121571,2,10800000,0,0,0,8,0,0,0,1689.43,-4130.7,50.8471,2.8513,"Spectral Eggshell- On click - Summon Gon"),
(@ENTRY,1,1,0,64,0,100,0,2,0,0,0,41,1000,0,0,0,0,0,20,269796,10,0,0,0,0,0,"Spectral Eggshell- On click - Despawn self cast");

replace into `playercreateinfo_cast_spell` (`raceMask`, `classMask`, `spell`, `note`) values('8589934592','4','274907','Pet cazador enano hierro negro');
replace into `playercreateinfo_cast_spell` (`raceMask`, `classMask`, `spell`, `note`) values('34359738368','4','274905','Pet cazador orco maghar');

REPLACE INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(34, 6, 2297, 12952, 456.015, -2123.81, 842.279, 3.05334),
(27, 6, 2297, 12952, 456.015, -2123.81, 842.279, 3.05334),
(28, 6, 2297, 12952, 456.015, -2123.81, 842.279, 3.05334),
(29, 6, 2297, 12952, 456.015, -2123.81, 842.279, 3.05334),
(30, 6, 2297, 12952, 456.015, -2123.81, 842.279, 3.05334),
(31, 6, 2297, 12952, 456.015, -2123.81, 842.279, 3.05334),
(32, 6, 2297, 12952, 456.015, -2123.81, 842.279, 3.05334),
(35, 6, 2297, 12952, 456.015, -2123.81, 842.279, 3.05334),
(36, 6, 2297, 12952, 456.015, -2123.81, 842.279, 3.05334),
(37, 6, 2297, 12952, 456.015, -2123.81, 842.279, 3.05334);

