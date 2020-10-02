UPDATE creature_template SET faction = 35 WHERE entry IN (157421, 158230, 159243, 157536, 145658, 156819, 158749, 145719, 159254, 159290, 161989, 157136, 156428, 158732, 159225, 158148, 159205, 159445, 156895);
UPDATE creature_template SET faction = 14 WHERE entry IN (157287, 159768, 159208, 157034, 156305, 158437, 155950, 159087, 157329, 160404, 159335, 159295, 157476, 155684, 158706, 161683, 156890, 156708, 160755);
UPDATE creature_template SET faction = 7 WHERE entry IN (156409, 156639, 156521, 158875, 156725, 158721, 159172, 157282, 160670);
UPDATE creature_template SET faction = 72 WHERE entry =158512;

UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_archmage_khadgar_90417' WHERE `entry`='90417';
UPDATE `gameobject_template` SET `ScriptName`='go_facade_251033' WHERE `entry`=251033;
UPDATE `gameobject_template` SET `ScriptName`='go_torch_246387' WHERE `entry`=246387;
UPDATE `gameobject_template` SET `ScriptName`='go_chair_246670' WHERE `entry`=246670;
