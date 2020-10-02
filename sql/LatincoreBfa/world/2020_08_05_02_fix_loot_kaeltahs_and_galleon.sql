UPDATE creature_loot_template SET `chance`=2,groupid=0 WHERE entry=62346;
UPDATE creature_loot_template SET chance=6 WHERE entry=62346 AND item=89783;
UPDATE creature_loot_template SET `chance`=5,groupid=0 WHERE entry=19622;
UPDATE creature_loot_template SET chance=20 WHERE entry=19622 AND item=32458;
update `creature_template` set `mingold`=50000,`maxgold`=50000 where `entry`=62346;
UPDATE `creature_template` SET `minlevel`=120,`maxlevel`=120,`ScriptName`='' WHERE `entry`=154741;
