REPLACE INTO `areatrigger` (`guid`, `id`, `map_id`, `position_x`, `position_y`, `position_z`) VALUES ('88', '100007', '1190', '-11902.17', '-3207.65', '-11.59');
REPLACE INTO `areatrigger_teleport` (`ID`, `PortLocID`, `Name`) VALUES ('-88', '4715', 'Tanaan Jungle Intro - Dark Portal - Graveyard - PRK');
UPDATE `creature_template` SET `ScriptName`='npc_the_keystone' WHERE (`entry`='101760');
UPDATE `creature_template` SET `minlevel`='86', `maxlevel`='92', `faction`='14' WHERE (`entry`='50356');