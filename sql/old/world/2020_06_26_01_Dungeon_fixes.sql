UPDATE `instance_template` SET `allowmount`=0 WHERE `map` IN (631,658,967,859,309);
-- Freehold
update `creature_template` set `minlevel`=112,`maxlevel`=122 where `entry`=126983;
update `creature_template` set `gossip_menu_id`=21844 where `entry`=130086;
delete from `gossip_menu` where `menuid`=21844;
insert into `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) values ('21844','33381','29704');
delete from `gossip_menu_option` where `menuid`=21844;
insert into `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) values
('21844','0','0','A fight? Bring it on!','141260','1','1','29704');
update `creature_template` set `AIName`='SmartAI' where `entry`=130086;
delete from `smart_scripts` where `entryorguid` in (130086);
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('130086','0','0','0','62','0','100','1','21844','0','0','0','0','','12','130099','8','0','0','0','0','7','0','0','0','0','0','0','0','On Gossip Option 0 Selected - summon 130069');


-- boss_skycapn_kragg 126832
UPDATE `creature_template` SET `faction`=16,`maxlevel`=122,`minlevel`=112,`rank`=4,`mechanic_immune_mask`=2147467263 WHERE `entry`=126832;

UPDATE `creature_template` SET `ScriptName`='boss_skycapn_kragg' WHERE `entry`=126832;

-- instance_encounters
DELETE FROM `instance_encounters` WHERE `entry` IN (2093,2094,2095,2096);
INSERT INTO `instance_encounters` (`entry`, `creditType`, `creditEntry`, `lastEncounterDungeon`, `comment`) VALUES
('2093','0','126832','0','Skycapn Kragg'),
('2094','0','129431','0','Council o Captains'),
('2095','0','126983','0','Harlan Sweete'),
('2096','0','129696','3000','Trothak');

DELETE FROM `spell_script_names` WHERE `spell_id` IN
(256106,255952,257608,255966,256060,263274);
INSERT INTO `spell_script_names`(`spell_id`,`ScriptName`) VALUES
(256106,'spell_azerite_powder_shot'),
(255952,'spell_charrrrrge_1'),
(257608,'spell_charrrrrge_2'),
(255966,'spell_pistol_shot'),
(256060,'spell_revitalizing_brew_1'),
(263274,'spell_revitalizing_brew_2');
