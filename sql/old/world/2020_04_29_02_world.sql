DELETE FROM `creature_template_addon` WHERE `entry` = 35814;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES
(35814, 68065);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` IN (69018, 70641, 68280, 68059);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`,`ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES
(13, 1, 69018, 0, 31, 3, 28960),
(13, 1, 70641, 0, 31, 3, 23837),
(13, 1, 68280, 1, 31, 3, 37872),
(13, 1, 68280, 2, 31, 3, 37895),
(13, 1, 68280, 3, 31, 3, 37896),
(13, 1, 68280, 4, 31, 3, 37897),
(13, 1, 68059, 0, 31, 3, 35810);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 26 AND `SourceEntry` = 4720 AND SourceGroup <= 179;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `NegativeCondition`) VALUES
(26, 170, 4720, 0, 47, 14237, 1, 0),
(26, 171, 4720, 0, 47, 14237, 1, 1),

(26, 172, 4720, 0, 47, 14240, 1, 1),
(26, 172, 4720, 0, 47, 14326, 1, 0),

(26, 179, 4720, 0, 47, 14326, 1, 1),
(26, 179, 4720, 0, 47, 14245, 66, 1);

DELETE FROM `creature_text` WHERE `CreatureID` IN (36600, 36608);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(36600, 0, 0, 'That\'s $n?! Sorry, Doc, I thought $g he : she; was dead!', 12, 0, 100, 0, 0, 0, 36577, 'Geargrinder Gizmo to Player'),
(36600, 1, 0, 'Yeah, there\'s tons of people still trapped in the escape pods, boss. Oh, wait. I guess you\'re not the boss anymore. Anyways, they\'re all probably going to drown if you don\'t get them out.', 12, 0, 100, 1, 0, 0, 49824, 'Geargrinder Gizmo to Player'),
(36608, 0, 0, 'Gizmo, what are you doing just sitting there? Don\'t you recognize who that is laying next to you?!', 12, 0, 100, 396, 0, 0, 36543, 'Doc Zapnozzle to Player'),
(36608, 1, 0, 'That\'s $n! $G He\'s : She\'s; the whole reason we\'re still breathing and not crispy fried critters back on Kezan.', 12, 0, 100, 396, 0, 0, 36544, 'Doc Zapnozzle to Player'),
(36608, 2, 0, 'Stay back, I\'m going to resuscitate $g him : her;! I hope these wet jumper cables don\'t kill us all!', 12, 0, 100, 396, 0, 0, 36545, 'Doc Zapnozzle to Player'),
(36608, 3, 0, 'Come on! Clear!', 12, 0, 100, 396, 0, 0, 36546, 'Doc Zapnozzle to Player'),
(36608, 4, 0, 'That\'s all I\'ve got. It\'s up to $g him : her; now. You hear me, $n? Come on, snap out of it! Don\'t go into the Light!', 12, 0, 100, 396, 0, 0, 36547, 'Doc Zapnozzle to Player'),
(36608, 5, 0, 'You made the right choice. We all owe you a great deal, $n. Try not to get yourself killed out here.', 12, 0, 100, 396, 0, 0, 36548, 'Doc Zapnozzle to Player'),
(36608, 6, 0, 'There are more survivors to tend to. I\'ll see you on the shore.', 12, 0, 100, 397, 0, 0, 36549, 'Doc Zapnozzle to Player');

DELETE FROM `spell_area` WHERE `spell` IN (69010, 70661, 70678, 70680, 70681, 68212, 69303);
INSERT INTO `spell_area` (`spell`, `area`, `flags`, `quest_end`, `quest_end_status`) VALUES
(69010, 4721, 3, 14239, 64),
(70661, 4778, 3, 14021, 66),
(70661, 4780, 3, 14021, 66),
(70678, 4778, 3, 14021, 66),
(70678, 4780, 3, 14021, 66),
(70680, 4778, 3, 14021, 66),
(70680, 4780, 3, 14021, 66),
(70681, 4778, 3, 14021, 66),
(70681, 4780, 3, 14021, 66),
(68212, 4780, 2, 14303, 64),
(69303, 4782, 2, 14238, 64);

DELETE FROM disables WHERE `sourceType` = 1 AND `entry` = 14474;
INSERT INTO `disables` (`sourceType`, `entry`) VALUES
(1, 14474);


REPLACE INTO `world_quest` (`id`, `duration`, `variable`, `value`, `VerifiedBuild`) VALUES
(46947,604800,12938,1,24015),
(41024,86400,10765,2,21570),
(43627,86400,12184,3,21737),
(44028,86400,12395,3,22101),
(43615,86400,12124,3,22124);
