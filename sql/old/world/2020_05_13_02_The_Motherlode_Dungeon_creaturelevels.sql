UPDATE `creature` SET `spawndifficulties`='1,2,23' WHERE `map`=1594;
UPDATE `gameobject` SET `spawndifficulties`='1,2,23' WHERE `map`=1594;

UPDATE `creature_template` SET `minlevel`=116,`maxlevel`=122,`rank`=3,`mechanic_immune_mask`=2147483647 WHERE `entry` IN(129227,129214,129232,129231);-- Bosses
UPDATE `creature_template` SET `lootid`=129214 WHERE `entry`=129214;
UPDATE `creature_template` SET `lootid`=129227 WHERE `entry`=129227;
UPDATE `creature_template` SET `lootid`=129232 WHERE `entry`=129232;
UPDATE `creature_template` SET `lootid`=129231 WHERE `entry`=129231;



UPDATE `creature_template` SET `minlevel`=114,`maxlevel`=120 WHERE `entry` IN (129802,130435,130437,130488,130635,130653,130661,132713,
133345,133432,133436,133593,133963,134005,134232,136005,136006,136470,136688,136934,137029);
UPDATE `creature_template` SET `minlevel`=115,`maxlevel`=120 WHERE `entry`=129804;
UPDATE `creature_template` SET `minlevel`=120,`maxlevel`=120 WHERE `entry` IN(129883,132258,135975,136776,137716,137940,138047,138053,138054,
138063,138064,138068,138082,142625,144286);
UPDATE `creature_template` SET `faction`=35 WHERE `entry` IN(136776,138047,138053,138054,140319);
UPDATE `creature_template` SET `minlevel`=110,`maxlevel`=120 WHERE `entry`=130436;
UPDATE `creature_template` SET `minlevel`=111,`maxlevel`=121 WHERE `entry`=130485;
UPDATE `creature_template` SET `minlevel`=115,`maxlevel`=121 WHERE `entry` IN(132056,133430,133463,133482,134012,136139,136643);
UPDATE `creature_template` SET `minlevel`=116,`maxlevel`=121 WHERE `entry`=137713;
UPDATE `creature_template` SET `minlevel`=116,`maxlevel`=120 WHERE `entry` IN(138061,138369,140319,144231,144232);