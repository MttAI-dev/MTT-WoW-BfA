replace into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('98484','0','2','0','0','0','100','1','0','0','0','0','0','','1','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Mo Arg Brute - In Combat - Talk (No Repeat)'),
('96400','0','1','0','0','0','100','1','0','0','0','0','0','','1','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Mo Arg Brute - In Combat - Talk (No Repeat)'),
('98486','0','1','0','0','0','100','1','0','0','0','0','0','','1','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Wrath Warrior - In Combat - Talk (No Repeat)'),
('95226','0','3','0','0','0','100','1','0','0','0','0','0','','1','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Anguis Jailer - In Combat - Talk (No Repeat)'),
('93112','0','0','0','0','0','100','1','0','0','0','0','0','','1','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Felguard Sentry - In Combat - Talk (No Repeat)'),
('96277','0','2','0','0','0','100','1','0','0','0','0','0','','1','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Queens Centurion - In Combat - Talk (No Repeat)'),
('96279','0','2','0','0','0','100','1','0','0','0','0','0','','1','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Mardum Executioner - In Combat - Talk (No Repeat)');


delete from creature_text where CreatureID in (96279, 98484, 98486, 95226, 93112, 96400, 96277);
insert into `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) values
('98486','0','4','My life for the Legion.','12','0','100','0','0','55364','0','0','Wrath Warrior to Player'),
('98486','0','3','I live to serve.','12','0','100','0','0','55363','0','0','Wrath Warrior to Player'),
('98486','0','2','You will not gain the keystone.','12','0','100','0','0','55365','0','0','Wrath Warrior to Player'),
('98486','0','1','This is where you die.','12','0','100','0','0','55362','0','0','Wrath Warrior to Player'),
('98486','0','0','You are outmatched and outnumbered.','12','0','100','0','0','55367','0','0','Wrath Warrior to Player'),
('98486','0','5','We will cleanse the universe in fire.','12','0','100','0','0','55370','0','0','Wrath Warrior to Player'),

('98484','0','2','Taste my blade.','14','0','100','0','0','55327','0','0','Mo\'arg Brute to Player'),
('98484','0','1','I\'m going to destroy you, little demon hunter.','14','0','100','0','0','55325','0','0','Mo\'arg Brute to Player'),
('98484','0','0','For Tyranna!','14','0','100','0','0','55329','0','0','Mo\'arg Brute to Player'),
('98484','0','3','Ahahahahaha! I will cut you down.','14','0','100','0','0','55326','0','0','Mo\'arg Brute to Player'),

('96400','0','2','Taste my blade.','14','0','100','0','0','55327','0','0','Mo\'arg Brute to Player'),
('96400','0','1','I\'m going to destroy you, little demon hunter.','14','0','100','0','0','55325','0','0','Mo\'arg Brute to Player'),
('96400','0','0','For Tyranna!','14','0','100','0','0','55329','0','0','Mo\'arg Brute to Player'),
('96400','0','3','Ahahahahaha! I will cut you down.','14','0','100','0','0','55326','0','0','Mo\'arg Brute to Player'),

('95226','0','2','I am your judge, jury, and executioner.','12','0','100','0','0','55020','0','0','Anguish Jailer to Player'),
('95226','0','1','In this place, you are the hunted.','12','0','100','0','0','55019','0','0','Anguish Jailer to Player'),
('95226','0','0','I\'ll crack open your flesh and feed upon your soul.','12','0','100','0','0','55016','0','0','Anguish Jailer to Player'),
('95226','0','3','Into my cage you go.','12','0','100','0','0','55017','0','0','Anguish Jailer to Player'),

('93112','0','1','Die, Illidari fool.','12','0','100','0','0','55189','0','0','Felguard Sentry to Player'),
('93112','0','0','The fel you wield will not be enough.','12','0','100','0','0','55190','0','0','Felguard Sentry to Player'),

('96277','0','1','For the Legion!','12','0','100','0','0','55192','0','0','Queen\'s Centurion to Player'),
('96277','0','0','I\'ll rend you limb from limb.','12','0','100','0','0','55188','0','0','Queen\'s Centurion to Player'),

('96279','0','2','So eager to be enslaved.','12','0','100','0','0','55018','0','0','Mardum Executioner to Player'),
('96279','0','1','Into my cage you go.','12','0','100','0','0','55017','0','0','Mardum Executioner to Player'),
('96279','0','0','Your soul will be mine.','12','0','100','0','0','55013','0','0','Mardum Executioner to Player');
