DELETE FROM spell_script_names WHERE ScriptName IN ('spell_warl_soul_link');
INSERT INTO spell_script_names VALUES
(108415, 'spell_warl_soul_link');

DELETE FROM `instance_encounters` WHERE `entry` IN (2105,2106,2107,2108);
INSERT INTO `instance_encounters` (`entry`, `creditType`, `creditEntry`, `lastEncounterDungeon`, `comment`) VALUES
('2105','0','129214','0','Coin-Operated Crowd Pummeler'),
('2106','0','129227','0','Azerokk'),
('2107','0','129231','0','Rixxa Fluxfume'),
('2108','0','129232','1707','Mogul Razdunk');

DELETE FROM `creature_template_journal` WHERE `entry` IN (129214,129227,129231,129232);
INSERT INTO `creature_template_journal` VALUES 
(129214,2109),
(129227,2114),
(129231,2115),
(129232,2116);

REPLACE INTO scenarios VALUES (1594,0,1553,1553);

UPDATE `creature` SET `spawndifficulties`='1,2,8,23' WHERE `map`=1594;
