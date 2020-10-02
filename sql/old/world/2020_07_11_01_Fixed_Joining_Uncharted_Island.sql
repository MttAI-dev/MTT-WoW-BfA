-- quest 51904
UPDATE creature_template SET AIName="SmartAI" , scriptname ="" WHERE entry=131290;
DELETE FROM smart_scripts WHERE entryorguid=131290;
INSERT INTO smart_scripts (entryorguid,source_type,id,link,event_type,event_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action_type,action_param1,action_param2,action_param3,action_param4,action_param5,action_param6,target_type,target_param1,target_param2,target_param3,target_x,target_y,target_z,target_o,comment) VALUES
(131290,0,0,0,64,0,100,0,1,0,0,0,33,139309,0,0,0,0,0,7,0,0,0,0,0,0,0,"On gossip hello - Give quest credit");

UPDATE `creature_template` SET `ScriptName`='npc_expedition_map' WHERE `entry`=143968;

replace into `lfg_dungeon_template` values (1768,'Uncharted Island',-2039.02,2178.81,2.110,351.09,0,0);
