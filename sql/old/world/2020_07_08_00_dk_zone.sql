UPDATE `playercreateinfo` SET `zone`=4298, `orientation`='3.93485' WHERE `race`=9 AND `class`=6;
REPLACE INTO `scene_template` (`sceneid`,`flags`,`scriptpackageid`,`scriptname`) VALUES (3095,9,2780,'');

replace into `phase_area` (`AreaId`, `PhaseId`, `Comment`) values('4298','553','DK PHASE 553');

DELETE FROM creature WHERE id =38192 AND map  =654;

ALTER TABLE `conditions` CHANGE `SourceEntry` `SourceEntry` INT(11) DEFAULT 0 NOT NULL; 

SET @ENTRY := 42601;
UPDATE creature_template SET AIName="SmartAI" , scriptname ="" WHERE entry= @ENTRY;
DELETE FROM smart_scripts WHERE entryorguid=@ENTRY AND source_type=0;
INSERT INTO smart_scripts (entryorguid,source_type,id,link,event_type,event_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action_type,action_param1,action_param2,action_param3,action_param4,action_param5,action_param6,target_type,target_param1,target_param2,target_param3,target_x,target_y,target_z,target_o,comment) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,33,42601,0,0,0,0,0,23,0,0,0,0,0,0,0,"On summon - Give quest credit");
