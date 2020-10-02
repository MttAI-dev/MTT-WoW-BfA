DELETE FROM `reference_loot_template` WHERE `entry` = 78491;
INSERT INTO `reference_loot_template`(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(78491,116294,0,3,0,1,1,1,1,''),
(78491,116291,0,3,0,1,1,1,1,''),
(78491,116288,0,3,0,1,1,1,1,''),
(78491,116233,0,3,0,1,1,1,1,''),
(78491,116208,0,3,0,1,1,1,1,''),
(78491,116028,0,3,0,1,1,1,1,''),
(78491,115999,0,3,0,1,1,1,1,''),
(78491,113664,0,4.71398,0,1,1,1,1,''),
(78491,113662,0,3.85818,0,1,1,1,1,''),
(78491,113661,0,4.5,0,1,1,1,1,''),
(78491,113660,0,4.02204,0,1,1,1,1,''),
(78491,113659,0,3.9483,0,1,1,1,1,''),
(78491,113658,0,3.2,0,1,1,1,1,''),
(78491,113657,0,3.66527,0,1,1,1,1,''),
(78491,113656,0,3.76135,0,1,1,1,1,''),
(78491,113655,0,5.75599,0,1,1,1,1,''),
(78491,113654,0,4.36094,0,1,1,1,1,''),
(78491,113653,0,3.6,0,1,1,1,1,''),
(78491,113652,0,3.94607,0,1,1,1,1,'');

DELETE FROM `spell_loot_template` WHERE `entry` = '253117';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('253117', '152819', '0', '100', '0', '1', '0', '1', '1', '');

DELETE FROM `spell_loot_template` WHERE `entry` = '253118';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('253118', '152819', '0', '100', '0', '1', '0', '1', '1', '');

DELETE FROM `spell_loot_template` WHERE `entry` = '253125';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('253125', '152827', '0', '100', '0', '1', '0', '1', '1', '');

DELETE FROM `spell_loot_template` WHERE `entry` = '253132';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('253132', '152831', '0', '100', '0', '1', '0', '1', '1', '');


DELETE FROM `spell_loot_template` WHERE `entry` = '269553';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('269553', '159896', '0', '100', '0', '1', '0', '1', '1', '');

DELETE FROM `spell_loot_template` WHERE `entry` = '299025';
INSERT INTO `spell_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('299025', '168716', '0', '100', '0', '1', '0', '1', '1', '');

REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('213170', 'spell_class_hall_panel');

DELETE FROM spell_area WHERE spell = 213170;
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `quest_start_status`, `quest_end_status`) VALUES 
('213170', '7879', '0', '0', '0', '0', '2', '64', '11'),  -- mage
('213170', '7813', '0', '0', '0', '0', '2', '64', '11'),  -- warrior
('213170', '7558', '0', '0', '0', '0', '2', '64', '11'),  -- druid
('213170', '7834', '0', '0', '0', '0', '2', '64', '11'),  -- prist
('213170', '7902', '0', '0', '0', '0', '2', '64', '11'),  -- monk
('213170', '7503', '0', '0', '0', '0', '2', '64', '11'),  -- hunter
('213170', '8022', '0', '0', '0', '0', '2', '64', '11'),  -- dh
('213170', '7638', '0', '0', '0', '0', '2', '64', '11'),  -- paladin
('213170', '8011', '0', '0', '0', '0', '2', '64', '11'),  -- rogue
('213170', '7875', '0', '0', '0', '0', '2', '64', '11'),  -- warlock
('213170', '7745', '0', '0', '0', '0', '2', '64', '11'),  -- shaman
('213170', '7679', '0', '0', '0', '0', '2', '64', '11');  -- dk


