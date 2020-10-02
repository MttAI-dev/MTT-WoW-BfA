
SET @ENTRY := 36440;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,64,0,100,0,0,0,0,0,33,36450,0,0,0,0,0,7,0,0,0,0,0,0,0,"Give me quest credit for Gasping for breath.");

DELETE FROM `creature_text` WHERE `CreatureID` IN (58722,58791,588750);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(58722, 0, 0, 'I...won\'t let you...', 14, 0, 100, 0, 0, 29464, 58423, 1, 'Lilian Voss to Player'),
(58722, 1, 0, 'I can\'t...fight him...', 12, 0, 100, 0, 0, 29465, 58424, 1, 'Lilian Voss to 0'),
(58722, 2, 0, 'END IT! NOW! Before he can...', 14, 0, 100, 0, 0, 29463, 58425, 1, 'Lilian Voss to 0'),
(58722, 3, 0, 'DIE, NECROMANCER!', 14, 0, 100, 0, 0, 29466, 58527, 1, 'Lilian Voss to 0'),
(58722, 4, 0, 'Leave me...to die...alone...please...', 12, 0, 100, 0, 0, 29467, 58528, 1, 'Lilian Voss to 0'),
(58722, 5, 0, 'It burns...my soul...it burns!!!!', 14, 0, 100, 0, 0, 29468, 58492, 1, 'Lilian Voss to 0'),
(58722, 6, 0, '...', 12, 0, 100, 0, 0, 0, 58522, 1, 'Lilian Voss to 0'),
(58791, 0, 0, 'Lilian\'s Soul fixates on $n!', 41, 0, 100, 0, 0, 0, 59467, 1, 'Lilian Voss to 0'),
(58791, 1, 0, 'Lilian\'s Soul fades into the spirit realm! It can no longer be harmed!', 41, 0, 100, 0, 0, 0, 66157, 1, 'Lilian Voss to 0'),
(588750, 0, 0, 'Did you forget, girl? I am the Darkmaster! I command the undead!', 14, 0, 100, 6, 0, 27486, 58421, 1, 'Darkmaster Gandling to Player'),
(588750, 1, 0, 'Now turn your lovely runeblades on our guests, and fetch me their bones!', 14, 0, 100, 6, 0, 27487, 58422, 1, 'Darkmaster Gandling to Player'),
(588750, 2, 0, 'I can feel her will breaking! Her soul burns so brightly.', 12, 0, 100, 6, 0, 27492, 58505, 1, 'Darkmaster Gandling to Lilian Voss'),
(588750, 3, 0, 'Now, Lilian, it is time for your transformation.', 12, 0, 100, 6, 0, 27491, 58513, 1, 'Darkmaster Gandling to Lilian Voss'),
(588750, 4, 0, 'WHAT?!', 14, 0, 100, 6, 0, 27489, 77752, 1, 'Darkmaster Gandling to Lilian Voss'),
(588750, 5, 0, 'The bones! You wretch!', 14, 0, 100, 6, 0, 27490, 58530, 1, 'Darkmaster Gandling to Lilian Voss'),
(588750, 6, 0, 'YOUR SOUL IS MINE!', 14, 0, 100, 6, 0, 27488, 58426, 1, 'Darkmaster Gandling to Lilian Voss'),
(588750, 7, 0, 'Why let a perfectly good corpse go to waste?', 12, 0, 100, 6, 0, 27495, 58523, 1, 'Darkmaster Gandling to Lilian Voss'),
(588750, 8, 0, 'How intriguing, her spirit will not relinquish its grasp on this world.', 12, 0, 100, 6, 0, 27494, 58526, 1, 'Darkmaster Gandling to Lilian Voss'),
(588750, 9, 0, 'How does it feel, Voss?  To watch them hack your mortal body to pieces?', 12, 0, 100, 6, 0, 27493, 58524, 1, 'Darkmaster Gandling to Lilian Voss');


UPDATE `creature_loot_template` SET `Chance`='40' WHERE  `Item`=25433;

DELETE FROM `smart_scripts` WHERE `entryorguid`=18203 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(18203, 0, 0, 0, 4, 0, 40, 1, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Murkblood Raider - On Aggro - Say Line 0'),
(18203, 0, 1, 0, 9, 0, 100, 0, 0, 5, 8000, 12000, 0, '', 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'On Murkblood Raider - Close - Cast Cleave'),
(18203, 0, 2, 0, 0, 0, 100, 0, 4000, 4500, 15000, 17000, 0, '', 11, 11971, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Murkblood Raider - Cast Sunder Armor');

DELETE FROM `creature_text` WHERE `CreatureID`=18203;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(18203, 0, 0, 'Don\'t let them escape! Kill the strong one first!', 12, 0, 100, 0, 0, 0, 15002, 0, 'Murkblood Raider - On Aggro');

DELETE FROM `smart_scripts` WHERE `entryorguid`=18207 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(18207, 0, 0, 0, 4, 0, 40, 1, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Murkblood Scavenger - On Aggro - Say Line 0');

DELETE FROM `creature_text` WHERE `CreatureID`=18207;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(18207, 0, 0, 'Where do you think you\'re going? Kill them all!', 12, 0, 100, 0, 0, 0, 15003, 0, 'Murkblood Scavenger - On Aggro');

DELETE FROM `creature_text` WHERE `CreatureID` IN (74988,75428,74409,75606);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(74988, 0, 0, 'Intruders?! Move the prisoners! Their flesh belongs to Lord Bathiel.', 14, 0, 100, 53, 0, 43550, 77941, 1, 'Executioner Gore to Player'),
(74988, 1, 0, 'Come along, heroes! The water is fine. HAHAHAHAHA!!!', 14, 0, 100, 0, 0, 43551, 77942, 1, 'Executioner Gore to Player'),
(74988, 2, 0, 'The intruders are still alive?! Stop them! The ritual must not be disturbed!', 14, 0, 100, 5, 0, 43552, 78100, 1, 'Executioner Gore to Player'),
(75428, 0, 0, 'Oh please, you must save the others before Domina sacrifices them!', 12, 0, 100, 0, 0, 46815, 78380, 1, 'Prisoner'),
(74409, 0, 0, 'Hey mon, help us! Da Twilight\'s Hammer be fixin to sacrifice our green hides.', 12, 0, 100, 5, 0, 45524, 77561, 1, 'Zeya - On Quest Taken'),
(75606, 0, 0, 'Please, help! We barely escaped the Twilight\'s Hammer sacrificial altar.', 12, 0, 100, 5, 0, 44671, 78486, 1, 'Sentinel Aluwyn to Player');


DELETE FROM `creature_text` WHERE `CreatureID` IN (74518);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(74518, 0, 0, 'Fall back to the sanctum, Lord Bathiel\'s ritual must not be disturbed! Thruk, do not let them past!', 14, 0, 100, 0, 0, 43553, 78376, 1, 'Executioner Gore - On Kill Player'),
(74518, 1, 0, 'I was hoping you would make it to me. Now I get the pleasure of removing your heads!', 14, 0, 100, 0, 0, 43548, 78433, 1, 'Executioner Gore - On Kill Player'),
(74518, 2, 0, 'I delayed you long enough... Aku\'mai will rise...', 14, 0, 100, 0, 0, 43549, 78434, 1, 'Executioner Gore - On Kill Player');

UPDATE `creature_loot_template` SET `Chance`='100' WHERE  `Item`=24504;


