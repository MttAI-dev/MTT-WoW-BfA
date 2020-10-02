delete from `creature` where `guid` in (210344454,210344270);
delete from `playercreateinfo_item` where `itemid`=40582;
delete from `reference_loot_template` where `item`=158078;
delete from `reference_loot_template` where `entry`=19710;
delete from `creature_loot_template` where `reference`=19710;

REPLACE INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(93228,'brawl_invitation_item'),
(93195,'brawl_invitation_item'),
(93194,'brawl_invitation_item');

delete from `script_waypoint` where `entry`=135441;

UPDATE `creature_template` SET `speed_run`=3 WHERE `entry`=122347;
