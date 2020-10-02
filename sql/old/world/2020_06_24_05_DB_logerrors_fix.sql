update `creature` set `spawndifficulties`='1,2,8,23' where `guid`=805034;
update `creature` set `spawndifficulties`=3 where `guid` in
(2800016240,
2800016240,
2800016250,
2800016250,
2800016260,
2800016260,
2800016280,
2800016280,
2800016290,
2800016290,
2800016300,
2800016300,
2800016310,
2800016310,
2800016320,
2800016320,
2800016340,
2800016340,
2800016350,
2800016350,
2800016360,
2800016360,
2800016370,
2800016370,
2800016380,
2800016380,
2800016400,
2800016400,
2800016420,
2800016420,
2800016440,
2800016440,
2800016450,
2800016450,
2800016460,
2800016460,
2800016480,
2800016480,
2800016490,
2800016490,
2800016500,
2800016500,
2800016520,
2800016520,
2800016530,
2800016530,
2800016540,
2800016540,
2800016560,
2800016560,
2800016570,
2800016570,
2800016580,
2800016580,
2800016600,
2800016600,
2800016620,
2800016620,
2800016650,
2800016650,
2800016660,
2800016660,
2800016670,
2800016670,
2800016680,
2800016680,
2800016720,
2800016720);

delete from `creature_loot_template` where `reference` in
(22526
, 14047
, 12840
, 7972
, 8948
, 8766
, 13446
, 13443
, 5758
, 4500
, 3075
, 14552
, 2824
, 61387
, 3
, 4
, 5
, 6
, 7
, 8
, 9
, 10
, 3
, 4
, 6
, 5
, 6
, 7
, 8
, 1
, 2
, 3
, 4
, 9
, 10
, 1
, 2
, 3
, 4
, 7
, 5
, 6
, 8
, 1
, 2
, 3
, 4
, 1
, 2
, 3
, 4
, 9
, 10
, 1
, 2
, 3
, 4
, 9
, 10
, 5
, 6
, 7
, 8
, 9
, 10
, 9
, 10
, 9
, 10
, 9
, 10
, 9
, 10
, 9
, 10
, 9
, 10
, 9
, 10
, 1
, 2
, 1
, 1
, 2
, 2
, 1
, 2
, 1
, 1
, 2
, 2
, 1
, 26041);

delete from `npc_vendor` where `entry`=1000001;

update `waypoints` set `pointid`=1 where `entry` in (1266270,1363090,1363091);

update `creature_template` set `ainame`='' where `entry`=54587;
update `smart_scripts` set `action_param1`=26415 where `entryorguid`=3742 and `action_type`=11;
update `smart_scripts` set `action_param1`=4715 where `entryorguid`=3811 and `action_type`=11;
update `smart_scripts` set `action_param1`=26415 where `entryorguid`=4025 and `action_type`=11;
update `smart_scripts` set `action_param1`=53 where `entryorguid`=6207 and `action_type`=11;
update `smart_scripts` set `action_param1`=1776 where `entryorguid`=6210 and `action_type`=11;
update `smart_scripts` set `action_type`=62 where `entryorguid`=8018 and `id`=4;
update `creature_template` set `ainame`='SmartAI' where `entry`=15187;
