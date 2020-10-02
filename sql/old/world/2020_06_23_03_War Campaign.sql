update `creature_template` set `flags_extra`=513 where `entry` in 
(71475,
71734,
71454,
71466,
71515,
71529,
71858,
71859,
71865,
72249);

update `creature_template` set `gossip_menu_id`=18747 where `entry`=98613;-- fix scouting map for dh quests

-- quest 51715 mission command table 138704
update `quest_template` set `questtype`=0 where `id`=51715;
-- quest 53074
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= 135614;
DELETE FROM `smart_scripts` WHERE `entryorguid`=135614;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`,
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('135614','0','0','0','62','0','100','0','22715','0','0','0','0','','33','142746','0','0','0','0','0','7','0','0','0','0','0','0','0','On gossip select - killcredit 142746');

-- quest 53333
delete from `creature_queststarter` where `id`=135691 and `quest`=53333;
insert into `creature_queststarter` (`id`,`quest`) values (135691,53333);

-- quest 51771 mission command table 138706
update `quest_template` set `questtype`=0 where `id`=51771;

-- quest 53079
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= 138708;
DELETE FROM `smart_scripts` WHERE `entryorguid`=138708;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`,
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('138708','0','0','0','64','0','100','0','1','0','0','0','0','','33','142858','0','0','0','0','0','7','0','0','0','0','0','0','0','On gossip select - killcredit 142858');

-- quest 52749
update `quest_template_addon` set `prevquestid`=53079 where `id`=52749;
