delete from `waypoints` where `entry`=0 and `pointid`=0;

update `waypoints` set `pointid`=1 where `entry`=1244680 and `pointid`=0;
update `waypoints` set `pointid`=1 where `entry`=1244681 and `pointid`=0;
update `waypoints` set `pointid`=1 where `entry`=1265760 and `pointid`=0;
update `waypoints` set `pointid`=1 where `entry`=1265761 and `pointid`=0;
update `waypoints` set `pointid`=1 where `entry`=1270320 and `pointid`=0;
update `waypoints` set `pointid`=3 where `entry`=1279890 and `pointid`=2;
update `waypoints` set `pointid`=2 where `entry`=1279890 and `pointid`=1;
update `waypoints` set `pointid`=1 where `entry`=1279890 and `pointid`=0;
update `waypoints` set `pointid`=1 where `entry`=1341620 and `pointid`=0;
update `waypoints` set `pointid`=2 where `entry`=1363100 and `pointid`=1;
update `waypoints` set `pointid`=1 where `entry`=1363100 and `pointid`=0;
update `waypoints` set `pointid`=1 where `entry`=1366210 and `pointid`=0;
update `waypoints` set `pointid`=1 where `entry`=1366220 and `pointid`=0;
update `waypoints` set `pointid`=1 where `entry`=1366290 and `pointid`=0;
update `waypoints` set `pointid`=1 where `entry`=1368960 and `pointid`=0;
update `waypoints` set `pointid`=1 where `entry`=1381240 and `pointid`=0;

update `creature_formations` set `leaderGUID`=126864 where `leaderGUID`=126981;
delete from `creature_formations` where `leaderGUID`=126981;

DELETE FROM `waypoints` WHERE `entry`=1354410;

delete from `spell_script_names` where `spell_id` in
(-84583,
 -47569,
 -47509,
 -46951,
 -19572,
 -7235,
 324,
 689,
 1126,
 3411,
 6229,
 7001,
 8232,
 17629,
 19740,
 20217,
 20230,
 25042,
 27683,
 30823,
 35110,
 39142,
 40336,
 42735,
 45462,
 47193,
 47948,
 47960,
 48500,
 50041,
 50453,
 50720,
 50725,
 55440,
 56232,
 58677,
 59046,
 59450,
 59725,
 61698,
 62380,
 62791,
 64899,
 64904,
 64985,
 65074,
 65195,
 68184,
 68572,
 68574,
 70827,
 72868,
 72869,
 75880,
 77801,
 79683,
 89420,
 91436,
 93194,
 93195,
 93202,
 93228,
 103103,
 103958,
 103964,
 103990,
 104025,
 104048,
 108090,
 108299,
 108482,
 108920,
 108945,
 110913,
 111397,
 112891,
 113861,
 113861,
 114168,
 114175,
 114851,
 115921,
 116694,
 119678,
 123273,
 123766,
 123980,
 124336,
 126393,
 140023,
 145158,
 159429,
 159607,
 185767,
 185901,
 185987,
 193884,
 195255,
 196104,
 197912,
 200829,
 202800,
 204488,
 204740,
 206237,
 206505,
 206933,
 208166,
 213757,
 215550,
 215864,
 218679,
 223138,
 227225,
 342521,
 534556);
 
delete from `spell_script_names` where `ScriptName`='0';

update `creature` set `ScriptName`='npc_tele_q42454' where `guid`=20508418;
update `creature_template` set `ScriptName`='npc_tele_q47223' where `entry`=122006;
update `creature_template` set `ScriptName`='mana_drained_900880' where `entry`=90880;
update `creature_template` set `ScriptName`='npc_demon_86963' where `entry`=86963;
UPDATE `creature_template` SET `ScriptName`='npc_vereesa_windrunner_121754' WHERE  `entry`=121754;
UPDATE `creature_template` SET `ScriptName`='npc_lady_liadrin_122065' WHERE  `entry`=122065;
UPDATE `creature_template` SET `ScriptName`='npc_lightforged_beacon_122045' WHERE  `entry`=122045;
UPDATE `creature_template` SET `ScriptName`='npc_prophet_velen_120977' WHERE  `entry`=120977;
UPDATE `creature_template` SET `ScriptName`='npc_light_crystal_122052' WHERE  `entry`=122052;
UPDATE `creature_template` SET `ScriptName`='npc_prophet_velen_126307' WHERE  `entry`=126307;
UPDATE `creature_template` SET `ScriptName`='npc_sturmschnabel_983830' WHERE  `entry`=98383;
UPDATE `creature_template` SET `ScriptName`='npc_thrall_965271' WHERE  `entry`=96527;
