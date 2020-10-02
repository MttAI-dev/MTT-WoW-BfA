-- quest 49676
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= 289311;
DELETE FROM `smart_scripts` WHERE `entryorguid`=289311;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`,
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('289311','1','0','1','64','0','100','0','1','0','0','0','0','','33','289311','0','0','0','0','0','7','0','0','0','0','0','0','0','On goosip hello - killcredit 289311');

UPDATE gameobject_template SET data1=0 WHERE entry IN (278685,289311);

update `creature_template` set `inhabittype`=7 where `entry`=32601;
UPDATE `creature_template` SET `faction`=7,`npcflag`=0 WHERE `entry`=3098; 

SET @ENTRY := 55999;
UPDATE creature_template SET AIName="SmartAI" , scriptname ="" WHERE entry= @ENTRY;
DELETE FROM smart_scripts WHERE entryorguid=@ENTRY AND source_type=0;
INSERT INTO smart_scripts (entryorguid,source_type,id,link,event_type,event_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action_type,action_param1,action_param2,action_param3,action_param4,action_param5,action_param6,target_type,target_param1,target_param2,target_param3,target_x,target_y,target_z,target_o,comment) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,75,108806,0,0,0,0,0,1,0,0,0,0,0,0,0,"Injured Sailor - On Respawn - Add Aura"),
(@ENTRY,0,1,2,73,0,100,0,0,0,0,0,33,55999,2,0,0,0,0,7,0,0,0,0,0,0,0,"Injured Sailor - On Spellclick - Cast Forcecast Rescue Injured Sailor"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Injured Sailor - On Spellclick - Despawn");
