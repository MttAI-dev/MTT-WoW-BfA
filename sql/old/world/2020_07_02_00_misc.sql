REPLACE INTO `zone_scripts` (`zoneId`, `scriptname`) VALUES ('8717', 'zone_boralus_harbor');
UPDATE creature_template SET unit_flags = 0 AND unit_flags2 = 0 WHERE entry = 96682;
REPLACE INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES ('0', '65914', '1', '', '', 'Disable Shredder');