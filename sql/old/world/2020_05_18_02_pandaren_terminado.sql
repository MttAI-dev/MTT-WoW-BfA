DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (105151, -105151, 108936, 106494, -128589, 115343, 115351, 115491, -118202);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(105151, 93425, 0, 'Update Zone Auras'),
(-105151, -108694, 0, 'Remove See Quest Invis 19'),
(108936, 108943, 0, 'Flying Shadow Kick'),
(106494, -106493, 1, 'Remove See Quest Invis 15'),
(-128589, 128588, 0, 'Cast Aysa Congrats Trigger Aura'),
(115343, 115332, 0, 'Summon Aysa'),
(115343, 115335, 0, 'Summon Ji'),
(115343, 115337, 0, 'Summon Jojo'),
(115343, 115426, 0, 'Summon Mandori Door'),
(115351, 115334, 0, 'Summon Aysa'),
(115351, 115336, 0, 'Summon Ji'),
(115351, 115338, 0, 'Summon Jojo'),
(115351, 115435, 0, 'Summon Pei-Wu Door'),
(115491, 115493, 0, 'Summon Aysa'),
(115491, 115494, 0, 'Summon Ji'),
(115491, 115495, 0, 'Summon Jojo'),
(-118202, 117790, 0, 'Start Turtle Healed Scene');

DELETE FROM `spell_area` WHERE `spell` IN (105096, 108914, 117783, 117501, 108931, 105525, 115449, 115447, 109067, 105095, 105001, 104566, 105306, 104334, 106394, 104567, 105005, 105307, 105308, 108842, 108844, 109100, 104028, 104762, 115446, 115448, 118028, 104018, 114455, 109303, 108835, 108822, 108823, 128574, 102875, 102871, 116571, 102874, 102870, 103051, 108879, 108834, 102873, 102872, 102869, 106494, 106493, 102868, 105156, 105157, 105158, 108695, 108694, 105162, 105161, 105160, 102521, 119305, 119306, 119307, 102400, 102399, 102398, 102397, 102396, 102395, 114735, 102194, 100709, 107027, 107028, 107032, 102403, 100711, 107033, 102393, 102429);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES
(100709, 5834, 0, 29524, 0, 0, 2, 3, 0, 9),
(107027, 5834, 0, 29406, 0, 0, 2, 3, 0, 11),
(107028, 5834, 0, 29524, 0, 0, 2, 3, 0, 9), 
(107032, 5834, 29524, 0, 0, 0, 2, 3, 74, 0),
(102403, 5825, 29524, 0, 0, 0, 2, 3, 8, 0), 
(102403, 5834, 29524, 0, 0, 0, 2, 3, 8, 0), 
(102403, 5843, 29524, 0, 0, 0, 2, 3, 8, 0), 
(100711, 5834, 29524, 29409, 0, 0, 2, 3, 66, 9),
(107033, 5834, 29409, 0, 0, 0, 2, 3, 74, 0), 
(102429, 5825, 29409, 0, 0, 0, 2, 3, 10, 0), 
(102429, 5843, 29409, 0, 0, 0, 2, 3, 10, 0), 
(102194, 5825, 29409, 29414, 0, 0, 2, 3, 66, 9),
(102194, 5834, 29409, 29414, 0, 0, 2, 3, 66, 9),
(102194, 5843, 29409, 29414, 0, 0, 2, 3, 66, 9),
(102393, 5825, 0, 29419, 0, 0, 2, 3, 0, 9), 
(102393, 5846, 0, 29419, 0, 0, 2, 3, 0, 9), 
(114735, 5825, 29419, 29414, 0, 0, 2, 3, 66, 1),
(114735, 5846, 29419, 29414, 0, 0, 2, 3, 66, 1),
(102395, 5825, 29419, 0, 0, 0, 2, 3, 66, 0), 
(102395, 5846, 29419, 0, 0, 0, 2, 3, 66, 0), 
(102396, 5825, 29414, 29417, 0, 0, 2, 3, 66, 1),
(102396, 5846, 29414, 29417, 0, 0, 2, 3, 66, 1),
(102396, 5848, 29414, 29417, 0, 0, 2, 3, 66, 1),
(102397, 5835, 29522, 0, 0, 0, 2, 3, 66, 0), 
(102398, 5835, 29523, 29423, 0, 0, 2, 3, 66, 1),
(102399, 5849, 29420, 29423, 0, 0, 2, 3, 66, 9),
(102400, 5849, 0, 29423, 0, 0, 2, 3, 0, 1), 
(102521, 5849, 0, 29422, 0, 0, 2, 3, 0, 1), 
(105160, 5849, 0, 29664, 0, 0, 2, 3, 0, 9), 
(105161, 5849, 0, 29664, 0, 0, 2, 3, 0, 9), 
(105162, 5849, 0, 29664, 0, 0, 2, 3, 0, 9), 
(108694, 5849, 29664, 0, 0, 0, 2, 3, 8, 0), 
(108695, 5849, 29664, 0, 0, 0, 2, 3, 8, 0), 
(105156, 5849, 29664, 29422, 0, 0, 2, 6, 74, 1), 
(105157, 5849, 29664, 29422, 0, 0, 2, 6, 74, 1), 
(105158, 5849, 29664, 29422, 0, 0, 2, 6, 74, 1), 
(119305, 5849, 29422, 0, 0, 0, 2, 3, 74, 0), 
(119306, 5849, 29422, 0, 0, 0, 2, 3, 74, 0), 
(119307, 5849, 29422, 0, 0, 0, 2, 3, 74, 0), 
(106493, 5820, 0, 29423, 0, 0, 2, 3, 0, 11), 
(102868, 5820, 29423, 29775, 0, 0, 2, 3, 74, 9), 
(106494, 5820, 29423, 0, 0, 0, 2, 7, 66, 0), 
(102869, 5826, 29521, 29677, 0, 0, 2, 3, 66, 1),
(102872, 5826, 0, 29662, 0, 0, 2, 3, 0, 11), 
(102873, 5826, 0, 29677, 0, 0, 2, 3, 0, 9), 
(102873, 5860, 0, 29677, 0, 0, 2, 3, 0, 9), 
(108834, 5826, 0, 29662, 0, 0, 2, 5, 0, 11), 
(108879, 5826, 0, 0, 0, 0, 2, 3, 0, 0), 
(103051, 5826, 29663, 0, 0, 0, 2, 3, 8, 0),
(102870, 5826, 29677, 29678, 0, 0, 2, 3, 74, 9),
(102874, 5826, 29677, 29678, 0, 0, 2, 3, 74, 9),
(116571, 5862, 29678, 0, 0, 0, 2, 3, 74, 0), 
(102871, 5862, 29678, 29776, 0, 0, 2, 3, 66, 11),
(102871, 5826, 29678, 29776, 0, 0, 2, 3, 66, 11),
(102875, 5862, 29678, 0, 0, 0, 2, 3, 66, 0), 
(102875, 5826, 29678, 0, 0, 0, 2, 3, 66, 0), 
(128574, 5862, 29678, 29679, 0, 0, 2, 3, 66, 9),
(104018, 5881, 29680, 29774, 0, 0, 2, 7, 64, 9),
(108822, 5881, 29423, 29768, 0, 0, 2, 3, 64, 1),
(108823, 5881, 29662, 29771, 0, 0, 2, 3, 64, 11),
(108835, 5881, 29662, 29771, 0, 0, 2, 5, 64, 11),
(109303, 5881, 0, 29774, 0, 0, 2, 3, 0, 9), 
(114455, 5881, 0, 0, 0, 0, 2, 3, 0, 0), 
(118028, 5881, 29768, 29776, 0, 0, 2, 3, 74, 11),
(115446, 5828, 0, 29792, 0, 0, 2, 3, 0, 9), 
(104028, 5820, 29775, 29776, 0, 0, 2, 3, 66, 11),
(104762, 5886, 29786, 0, 0, 0, 2, 3, 8, 0), 
(104334, 5886, 0, 29785, 0, 0, 2, 3, 0, 9), 
(106394, 5859, 0, 29787, 0, 0, 2, 3, 0, 9), 
(104566, 5886, 29785, 29786, 0, 0, 2, 3, 66, 1),
(104567, 5886, 0, 29786, 0, 0, 2, 3, 0, 1), 
(105005, 5830, 0, 29787, 0, 0, 2, 3, 0, 1), 
(105005, 5946, 0, 29787, 0, 0, 2, 3, 0, 1), 
(105307, 5830, 29776, 29787, 0, 0, 2, 3, 66, 1),
(105307, 5946, 29776, 29787, 0, 0, 2, 3, 66, 1),
(105308, 5830, 29776, 0, 0, 0, 2, 3, 66, 0),
(105308, 5946, 29776, 0, 0, 0, 2, 3, 66, 0),
(108842, 5830, 29771, 29782, 0, 0, 2, 3, 66, 11),
(108842, 5946, 29771, 29782, 0, 0, 2, 3, 66, 11),
(108844, 5830, 29771, 29782, 0, 0, 2, 5, 66, 11),
(108844, 5946, 29771, 29782, 0, 0, 2, 5, 66, 11),
(109100, 5829, 0, 0, 0, 0, 2, 3, 0, 0), 
(105306, 5831, 29779, 0, 0, 0, 2, 3, 74, 0),
(105306, 5831, 29780, 0, 0, 0, 2, 3, 10, 0),
(105306, 5831, 29781, 0, 0, 0, 2, 3, 74, 0),
(105001, 5859, 29787, 29791, 0, 0, 2, 3, 74, 9),
(105001, 5832, 29787, 29791, 0, 0, 2, 3, 74, 9),
(105095, 5820, 29791, 0, 0, 0, 2, 3, 66, 0), 
(109067, 5820, 29776, 29791, 0, 0, 2, 3, 64, 9), 
(115448, 5828, 29792, 0, 0, 0, 2, 3, 8, 0),
(115448, 5737, 29792, 0, 0, 0, 2, 3, 8, 0),
(115447, 5828, 29792, 0, 0, 0, 2, 3, 74, 0),
(115447, 5737, 29792, 0, 0, 0, 2, 3, 74, 0),
(115449, 5737, 29792, 0, 0, 0, 2, 3, 66, 0),
(105525, 5833, 0, 29794, 0, 0, 2, 3, 0, 9), 
(108931, 5833, 0, 0, 0, 0, 2, 3, 0, 0), 
(117501, 5833, 0, 29799, 0, 0, 2, 3, 0, 1),
(117783, 5833, 29799, 0, 0, 0, 2, 3, 8, 0),
(108914, 5820, 29800, 0, 0, 0, 2, 3, 74, 0),
(105096, 5820, 29800, 0, 0, 0, 2, 3, 74, 0);

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=26 AND `SourceEntry` IN (5736, 5834, 5825, 5843, 5848, 5849, 5820, 5826, 5860, 5827, 5881, 5884, 5828, 5837, 5829, 5830, 5831, 5946, 5886, 5859, 5832, 5833, 5737, 5944)) OR (`SourceTypeOrReferenceId`=26 AND `SourceGroup` IN (524, 592, 593, 594, 595, 596, 597, 598, 964, 1430, 1510, 1518, 1523, 1526, 1527, 1836, 1885, 879, 903, 1835) AND `SourceEntry`=0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=25 AND `SourceEntry` IN (975, 976);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry` IN (7746, 7737, 7747, 7748, 54567, 6958, 7645, 7749, 7736, 7750, 7835, 7784, 7783, 7258, 7822, 7116, 8287, 7041, 7037, 7106, 7710, 7709, 7714, 7265, 8564) AND `SourceId`=2;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (114710, 108967, 122484, 106205, 114728, 106299, 109062, 108152, 102499, 102515, 106275, 102522, 109090, 109095, 109105, 109109, 109178, 105090, 106465, 106497, 108808, 108798, 107049, 103070, 103077, 128576, 108877, 108878, 107784, 107783, 108627, 105881, 118032, 118029, 118030, 118033, 108830, 108831, 104012, 104017, 118036, 118027, 114453, 114454, 106683, 106667, 105893, 106688, 104489, 108845, 108846, 108857, 125969, 104855, 104612, 104615, 128801, 126043, 126059, 126040, 105333, 106623, 109335, 109336, 105002, 106636, 106617, 114888, 114898, 106759, 118571, 118572, 115332, 115335, 115337, 115345, 115346, 115420, 117973, 117497, 131505, 108933, 108932);
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=22 AND `SourceEntry`=54567) OR (`SourceTypeOrReferenceId`=17 AND `SourceEntry` IN (106299, 105156, 105157, 105158, 108695, 102522, 107049, 125961, 115446, 115447, 115334, 115336, 115338, 115435, 115493, 115494, 115495)) OR (`SourceTypeOrReferenceId`=18 AND `SourceGroup` IN (54993, 57431, 55083, 55918, 55999)) OR (`SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (13140, 13726));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
-- Phases Specific
(26, 629, 5825, 0, 0, 28, 0, 29419, 0, 0, 1, 0, 0, '', 'The Dawning Valley Phase 629 until Quest 29419 not complete'), -- phase not updated automatically (removed in SAI)
(26, 629, 5825, 0, 0, 8, 0, 29419, 0, 0, 1, 0, 0, '', 'The Dawning Valley Phase 629 until Quest 29419 not rewarded'),
(26, 630, 5825, 0, 0, 28, 0, 29419, 0, 0, 0, 0, 0, '', 'The Dawning Valley Phase 630 when Quest 29419 complete'), -- phase not updated automatically (delayed add in SAI)
(26, 630, 5825, 0, 1, 8, 0, 29419, 0, 0, 0, 0, 0, '', 'The Dawning Valley Phase 630 when Quest 29419 rewarded'),
(26, 630, 5825, 0, 1, 9, 0, 29423, 0, 0, 1, 0, 0, '', 'The Dawning Valley Phase 630 when Quest 29423 not taken'),
(26, 630, 5825, 0, 1, 28, 0, 29423, 0, 0, 1, 0, 0, '', 'The Dawning Valley Phase 630 when Quest 29423 not complete'),
(26, 630, 5825, 0, 1, 8, 0, 29423, 0, 0, 1, 0, 0, '', 'The Dawning Valley Phase 630 when Quest 29423 not rewarded'),
(26, 838, 5848, 0, 0, 9, 0, 29414, 0, 0, 0, 0, 0, '', 'Cave of Meditation Phase 838 when Quest 29414 taken'),
(26, 504, 5849, 0, 0, 9, 0, 29421, 0, 0, 0, 0, 0, '', 'Shrine of Inner-Light Phase 504 when Quest 29421 taken'),
(26, 631, 5849, 0, 0, 9, 0, 29422, 0, 0, 0, 0, 0, '', 'Shrine of Inner-Light Phase 631 when Quest 29422 taken'), -- phase not updated automatically (removed in SAI)
(26, 632, 5849, 0, 0, 28, 0, 29422, 0, 0, 0, 0, 0, '', 'Shrine of Inner-Light Phase 632 when Quest 29422 complete'), -- phase not updated automatically (added in SAI)
(26, 632, 5849, 0, 1, 8, 0, 29422, 0, 0, 0, 0, 0, '', 'Shrine of Inner-Light Phase 632 when Quest 29422 rewarded'),
(26, 632, 5849, 0, 1, 9, 0, 29423, 0, 0, 1, 0, 0, '', 'Shrine of Inner-Light Phase 632 when Quest 29423 not taken'),
(26, 632, 5849, 0, 1, 28, 0, 29423, 0, 0, 1, 0, 0, '', 'Shrine of Inner-Light Phase 632 when Quest 29423 not complete'),
(26, 632, 5849, 0, 1, 8, 0, 29423, 0, 0, 1, 0, 0, '', 'Shrine of Inner-Light Phase 632 when Quest 29423 not rewarded'),
(26, 1827, 5881, 0, 0, 28, 0, 29774, 0, 0, 1, 0, 0, '', 'The Dai-Lo Farmstead Phase 1827 when Quest 29774 not complete'),
(26, 1827, 5881, 0, 0, 8, 0, 29774, 0, 0, 1, 0, 0, '', 'The Dai-Lo Farmstead Phase 1827 when Quest 29774 not rewarded'),
(26, 1027, 5820, 0, 0, 28, 0, 29521, 0, 0, 0, 0, 0, '', 'Temple of Five Dawns Phase 1027 when Quest 29521 complete'),
(26, 1027, 5820, 0, 1, 8, 0, 29521, 0, 0, 0, 0, 0, '', 'Temple of Five Dawns Phase 1027 when Quest 29521 rewarded'),
(26, 1028, 5820, 0, 0, 28, 0, 29775, 0, 0, 0, 0, 0, '', 'Temple of Five Dawns Phase 1028 when Quest 29775 complete'),
(26, 1028, 5820, 0, 1, 8, 0, 29775, 0, 0, 0, 0, 0, '', 'Temple of Five Dawns Phase 1028 when Quest 29775 rewarded'),
(26, 1029, 5820, 0, 0, 8, 0, 29775, 0, 0, 0, 0, 0, '', 'Temple of Five Dawns Phase 1029 when Quest 29775 rewarded'), -- phase not updated automatically (delayed add in SAI)
(26, 1030, 5820, 0, 0, 28, 0, 29791, 0, 0, 0, 0, 0, '', 'Temple of Five Dawns Phase 1030 when Quest 29791 complete'),
(26, 1030, 5820, 0, 1, 8, 0, 29791, 0, 0, 0, 0, 0, '', 'Temple of Five Dawns Phase 1030 when Quest 29791 rewarded'),
(26, 1429, 5837, 0, 0, 8, 0, 29776, 0, 0, 1, 0, 0, '', 'The Dawning Span Phase 1429 when Quest 29776 not rewarded'),
(26, 1714, 5831, 0, 0, 28, 0, 29782, 0, 0, 1, 0, 0, '', 'Fe-Feng Village Phase 1714 when Quest 29782 not complete'),
(26, 1714, 5831, 0, 0, 8, 0, 29782, 0, 0, 1, 0, 0, '', 'Fe-Feng Village Phase 1714 when Quest 29782 not rewarded'),
(26, 536, 5829, 0, 0, 28, 0, 29786, 0, 0, 0, 0, 0, '', 'Ridge of Laughing Winds Phase 536 when Quest 29786 complete'),
(26, 536, 5829, 0, 1, 8, 0, 29786, 0, 0, 0, 0, 0, '', 'Ridge of Laughing Winds Phase 536 when Quest 29786 rewarded'),
(26, 878, 5828, 0, 0, 9, 0, 29792, 0, 0, 0, 0, 0, '', 'Mandori Village Phase 878 when Quest 29792 taken'),
(26, 878, 5828, 0, 0, 48, 0, 263982, 0, 0, 1, 0, 0, '', 'Mandori Village Phase 878 when Quest objective not complete'),
(26, 543, 5833, 0, 0, 14, 0, 29798, 0, 0, 0, 0, 0, '', 'Wreck of the Skyseeker Phase 543 when Quest 29798 available'),
(26, 543, 5833, 0, 1, 9, 0, 29798, 0, 0, 0, 0, 0, '', 'Wreck of the Skyseeker Phase 543 when Quest 29798 taken'),
(26, 993, 5833, 0, 0, 28, 0, 29798, 0, 0, 0, 0, 0, '', 'Wreck of the Skyseeker Phase 993 when Quest 29798 complete'), -- delayed
(26, 993, 5833, 0, 1, 8, 0, 29798, 0, 0, 0, 0, 0, '', 'Wreck of the Skyseeker Phase 993 when Quest 29798 rewarded'),
(26, 993, 5833, 0, 1, 28, 0, 30767, 0, 0, 1, 0, 0, '', 'Wreck of the Skyseeker Phase 993 when Quest 30767 not complete'),
(26, 993, 5833, 0, 1, 8, 0, 30767, 0, 0, 1, 0, 0, '', 'Wreck of the Skyseeker Phase 993 when Quest 30767 not rewarded'),
(26, 544, 5833, 0, 0, 28, 0, 30767, 0, 0, 0, 0, 0, '', 'Wreck of the Skyseeker Phase 544 when Quest 30767 complete'),
(26, 544, 5833, 0, 1, 8, 0, 30767, 0, 0, 0, 0, 0, '', 'Wreck of the Skyseeker Phase 544 when Quest 30767 rewarded'),
(26, 544, 5833, 0, 1, 8, 0, 29799, 0, 0, 1, 0, 0, '', 'Wreck of the Skyseeker Phase 544 when Quest 29799 not rewarded'),
(26, 545, 5833, 0, 0, 8, 0, 29799, 0, 0, 0, 0, 0, '', 'Wreck of the Skyseeker Phase 545 when Quest 29799 rewarded'),
(26, 169, 5833, 0, 0, 47, 0, 29798, 73, 0, 1, 0, 0, '', 'Wreck of the Skyseeker Phase 169 when Quest 29798 not taken, not complete and not rewarded'),
-- Phases Across Multiple Areas
(26, 592, 0, 0, 0, 15, 0, 1, 0, 0, 0, 0, 0, '', 'Wandering Isle Warrior Phase'),
(26, 593, 0, 0, 0, 15, 0, 128, 0, 0, 0, 0, 0, '', 'Wandering Isle Mage Phase'),
(26, 594, 0, 0, 0, 15, 0, 4, 0, 0, 0, 0, 0, '', 'Wandering Isle Hunter Phase'),
(26, 595, 0, 0, 0, 15, 0, 16, 0, 0, 0, 0, 0, '', 'Wandering Isle Priest Phase'),
(26, 596, 0, 0, 0, 15, 0, 8, 0, 0, 0, 0, 0, '', 'Wandering Isle Rogue Phase'),
(26, 597, 0, 0, 0, 15, 0, 64, 0, 0, 0, 0, 0, '', 'Wandering Isle Shaman Phase'),
(26, 598, 0, 0, 0, 15, 0, 512, 0, 0, 0, 0, 0, '', 'Wandering Isle Monk Phase'),
(26, 964, 0, 0, 0, 28, 0, 29663, 0, 0, 0, 0, 0, '', 'The Singing Pools Phase 964 when Quest 29663 complete'), -- phase not updated automatically (added to SAI)
(26, 964, 0, 0, 1, 8, 0, 29663, 0, 0, 0, 0, 0, '', 'The Singing Pools Phase 964 when Quest 29663 rewarded'),
(26, 964, 0, 0, 1, 8, 0, 29676, 0, 0, 1, 0, 0, '', 'The Singing Pools Phase 964 when Quest 29676 not rewarded'),
(26, 1510, 0, 0, 0, 9, 0, 29768, 0, 0, 0, 0, 0, '', 'The Rows Phase 1510 when Quest 29768 taken'),
(26, 524, 0, 0, 0, 47, 0, 29786, 9, 0, 0, 0, 0, '', 'Ridge of Laughing Winds Phase 524 when Quest 29786 available or taken'),
(26, 524, 0, 0, 0, 9, 0, 29786, 0, 0, 0, 0, 0, '', 'Ridge of Laughing Winds Phase 524 when Quest 29786 taken'), -- uncomment above and remove this when fixed
(26, 1430, 0, 0, 0, 8, 0, 29776, 0, 0, 0, 0, 0, '', 'Ridge of Laughing Winds Phase 1430 when Quest 29776 rewarded'),
(26, 1430, 0, 0, 0, 47, 0, 29786, 75, 0, 1, 0, 0, '', 'Ridge of Laughing Winds Phase 1430 when Quest 29776 not available, not taken, not complete and not rewarded'),
(26, 1836, 0, 0, 0, 28, 0, 29785, 0, 0, 1, 0, 0, '', 'Chamber of Whispers Phase 1836 when Quest 29785 not complete'),
(26, 1836, 0, 0, 0, 8, 0, 29785, 0, 0, 1, 0, 0, '', 'Chamber of Whispers Phase 1836 when Quest 29785 not rewarded'),
(26, 1518, 0, 0, 0, 8, 0, 29776, 0, 0, 0, 0, 0, '', 'Morning Breeze Village Phase 1518 when Quest 29776 rewarded'),
(26, 1518, 0, 0, 0, 47, 0, 29786, 74, 0, 1, 0, 0, '', 'Morning Breeze Village Phase 1518 when Quest 29786 not in progress, not complete and not rewarded'), -- should be until quest is available, not in pogress, not completed and not rewarded - but available doesnt work
(26, 1523, 0, 0, 0, 8, 0, 29779, 0, 0, 0, 0, 0, '', 'Morning Breeze Lake Phase 1523 when Quest 29779 rewarded'),
(26, 1523, 0, 0, 0, 8, 0, 29780, 0, 0, 0, 0, 0, '', 'Morning Breeze Lake Phase 1523 when Quest 29780 rewarded'),
(26, 1523, 0, 0, 0, 8, 0, 29781, 0, 0, 0, 0, 0, '', 'Morning Breeze Lake Phase 1523 when Quest 29781 rewarded'),
(26, 1526, 0, 0, 0, 28, 0, 29786, 0, 0, 0, 0, 0, '', 'Ridge of Laughing Winds Phase 1526 when Quest 29786 complete'),
(26, 1526, 0, 0, 1, 8, 0, 29786, 0, 0, 0, 0, 0, '', 'Ridge of Laughing Winds Phase 1526 when Quest 29786 rewarded'),
(26, 1526, 0, 0, 1, 9, 0, 29787, 0, 0, 1, 0, 0, '', 'Ridge of Laughing Winds Phase 1526 when Quest 29787 not taken'),
(26, 1526, 0, 0, 1, 28, 0, 29787, 0, 0, 1, 0, 0, '', 'Ridge of Laughing Winds Phase 1526 when Quest 29787 not complete'),
(26, 1526, 0, 0, 1, 8, 0, 29787, 0, 0, 1, 0, 0, '', 'Ridge of Laughing Winds Phase 1526 when Quest 29787 not rewarded'),
(26, 1527, 0, 0, 0, 8, 0, 29787, 0, 0, 0, 0, 0, '', 'The Wood of Staves Phase 1527 when Quest 29787 rewarded'),
(26, 1527, 0, 0, 0, 47, 0, 29790, 74, 0, 1, 0, 0, '', 'The Wood of Staves Phase 1527 when Quest 29790 not taken, not complete and not rewarded'),
(26, 1527, 0, 0, 1, 28, 0, 29787, 0, 0, 0, 0, 0, '', 'The Wood of Staves Phase 1527 when Quest 29787 complete'),
(26, 1527, 0, 0, 1, 1, 0, 105333, 1, 0, 1, 0, 0, '', 'The Wood of Staves Phase 1527 when player has not aura'),
(26, 1885, 0, 0, 0, 28, 0, 29791, 0, 0, 1, 0, 0, '', 'The Wood of Staves Phase 1885 when Quest 29791 not complete'),
(26, 1885, 0, 0, 0, 48, 0, 263980, 0, 0, 1, 0, 0, '', 'The Wood of Staves Phase 1885 when Quest objective not complete'),
(26, 1885, 0, 0, 0, 8, 0, 29791, 0, 0, 1, 0, 0, '', 'The Wood of Staves Phase 1885 when Quest 29791 not rewarded'),
(26, 879, 0, 0, 0, 48, 0, 263982, 0, 0, 0, 0, 0, '', 'Pei-Wu Forest Phase 879 when Quest objective complete'),
(26, 879, 0, 0, 0, 8, 0, 29792, 0, 0, 1, 0, 0, '', 'Pei-Wu Forest Phase 879 when Quest 29792 not rewarded'),
(26, 903, 0, 0, 0, 8, 0, 29792, 0, 0, 0, 0, 0, '', 'Pei-Wu Forest Phase 903 when Quest 29792 rewarded'),
(26, 903, 0, 0, 0, 28, 0, 30589, 0, 0, 1, 0, 0, '', 'Pei-Wu Forest Phase 903 when Quest 30589 not complete'),
(26, 903, 0, 0, 0, 8, 0, 30589, 0, 0, 1, 0, 0, '', 'Pei-Wu Forest Phase 903 when Quest 30589 not rewarded'),
(26, 1835, 0, 0, 0, 14, 0, 29798, 0, 0, 1, 0, 0, '', 'Pei-Wu Forest Phase 1835 when Quest 29798 not available'),
(26, 1835, 0, 0, 0, 28, 0, 30589, 0, 0, 0, 0, 0, '', 'Pei-Wu Forest Phase 1835 when Quest 30589 complete'),
(26, 1835, 0, 0, 0, 1, 0, 117973, 1, 0, 1, 0, 0, '', 'Pei-Wu Forest Phase 1835 when player has not aura'),
(26, 1835, 0, 0, 1, 8, 0, 30589, 0, 0, 0, 0, 0, '', 'Pei-Wu Forest Phase 1835 when Quest 30589 rewarded'),
(26, 1835, 0, 0, 1, 47, 0, 29798, 74, 0, 1, 0, 0, '', 'Pei-Wu Forest Phase 1835 when Quest 29798 not taken, not complete and not rewarded'),
-- Phases General
(26, 1323, 5736, 0, 0, 8, 0, 29423, 0, 0, 1, 0, 0, '', 'Wandering Isle Phase 1323 when Quest 29423 not rewarded'),
(26, 1324, 5736, 0, 0, 8, 0, 29423, 0, 0, 0, 0, 0, '', 'Wandering Isle Phase 1324 when Quest 29423 rewarded'),
(26, 1324, 5736, 0, 0, 8, 0, 29679, 0, 0, 1, 0, 0, '', 'Wandering Isle Phase 1324 when Quest 29679 not rewarded'),
(26, 1325, 5736, 0, 0, 8, 0, 29679, 0, 0, 0, 0, 0, '', 'Wandering Isle Phase 1325 when Quest 29679 rewarded'),
(26, 1325, 5736, 0, 0, 8, 0, 29775, 0, 0, 1, 0, 0, '', 'Wandering Isle Phase 1325 when Quest 29775 not rewarded'),
(26, 1326, 5736, 0, 0, 8, 0, 29775, 0, 0, 0, 0, 0, '', 'Wandering Isle Phase 1326 when Quest 29775 rewarded'),
(26, 1326, 5736, 0, 0, 9, 0, 29787, 0, 0, 1, 0, 0, '', 'Wandering Isle Phase 1326 when Quest 29787 not taken'),
(26, 1326, 5736, 0, 0, 28, 0, 29787, 0, 0, 1, 0, 0, '', 'Wandering Isle Phase 1326 when Quest 29787 not complete'),
(26, 1326, 5736, 0, 0, 8, 0, 29787, 0, 0, 1, 0, 0, '', 'Wandering Isle Phase 1326 when Quest 29787 not rewarded'),
(26, 1327, 5736, 0, 0, 9, 0, 29787, 0, 0, 0, 0, 0, '', 'Wandering Isle Phase 1327 when Quest 29787 taken'),
(26, 1327, 5736, 0, 1, 28, 0, 29787, 0, 0, 0, 0, 0, '', 'Wandering Isle Phase 1327 when Quest 29787 complete'),
(26, 1327, 5736, 0, 2, 8, 0, 29787, 0, 0, 0, 0, 0, '', 'Wandering Isle Phase 1327 when Quest 29787 rewarded'),
-- TerrainSwaps
(25, 0, 975, 0, 0, 28, 0, 30767, 0, 0, 0, 0, 0, '', 'TerrainSwap 975 only when player has quest 30767 complete'),
(25, 0, 975, 0, 1, 8, 0, 30767, 0, 0, 0, 0, 0, '', 'TerrainSwap 975 only when player has quest 30767 rewarded'),
(25, 0, 975, 0, 1, 8, 0, 29799, 0, 0, 1, 0, 0, '', 'TerrainSwap 975 only when player has quest 29799 not rewarded'),
(25, 0, 975, 0, 2, 1, 0, 118233, 0, 0, 0, 0, 0, '', 'TerrainSwap 975 only when player has aura'), -- temp
(25, 0, 976, 0, 0, 8, 0, 29799, 0, 0, 0, 0, 0, '', 'TerrainSwap 976 only when player has quest 29799 rewarded'),
(25, 0, 976, 0, 0, 1, 0, 118233, 0, 0, 1, 0, 0, '', 'TerrainSwap 976 only when player has not aura'), -- temp
-- Triggers
(22, 1, 7746, 2, 0, 9, 0, 29409, 0, 0, 0, 0, 0, '', 'SAI only when quest taken'),
(22, 1, 7746, 2, 0, 1, 0, 116219, 0, 0, 1, 0, 0, '', 'SAI only when player has not aura'),
(22, 1, 7737, 2, 0, 9, 0, 29409, 0, 0, 0, 0, 0, '', 'SAI only when quest taken'),
(22, 1, 7737, 2, 0, 1, 0, 88811, 0, 0, 1, 0, 0, '', 'SAI only when player has not aura'),
(22, 1, 7747, 2, 0, 28, 0, 29410, 0, 0, 0, 0, 0, '', 'SAI only when quest completed'),
(22, 1, 7747, 2, 0, 1, 0, 116220, 0, 0, 1, 0, 0, '', 'SAI only when player has not aura'),
(22, 1, 7748, 2, 0, 1, 0, 116221, 0, 0, 1, 0, 0, '', 'SAI only when player has not aura'),
(22, 1, 7748, 2, 0, 28, 0, 29410, 0, 0, 0, 0, 0, '', 'SAI only when player has completed quest'),
(22, 2, 7748, 2, 0, 1, 0, 116219, 0, 0, 1, 0, 0, '', 'SAI only when player has not aura'),
(22, 2, 7748, 2, 0, 28, 0, 29419, 0, 0, 0, 0, 0, '', 'SAI only when player has completed quest'),
(22, 2, 7748, 2, 0, 28, 0, 29424, 0, 0, 0, 0, 0, '', 'SAI only when player has completed quest'),
(22, 1, 6958, 2, 0, 9, 0, 29419, 0, 0, 0, 0, 0, '', 'SAI only when player has taken the quest'),
(22, 1, 7645, 2, 0, 9, 0, 29414, 0, 0, 0, 0, 0, '', 'SAI only when quest taken'),
(22, 1, 7645, 2, 0, 1, 0, 102445, 1, 0, 1, 0, 0, '', 'SAI only when player has not aura'),
(22, 1, 7749, 2, 0, 28, 0, 29522, 0, 0, 0, 0, 0, '', 'SAI only when quest complete'),
(22, 1, 7736, 2, 0, 28, 0, 29420, 0, 0, 0, 0, 0, '', 'SAI only when quest complete'),
(22, 1, 7736, 2, 0, 1, 0, 92571, 0, 0, 1, 0, 0, '', 'SAI only when player has not aura'),
(22, 1, 7750, 2, 0, 1, 0, 128700, 1, 0, 0, 0, 0, '', 'SAI only when player has aura'),
(22, 1, 7750, 2, 0, 1, 0, 116220, 0, 0, 1, 0, 0, '', 'SAI only when player has not aura'),
(22, 1, 7750, 2, 1, 1, 0, 102632, 1, 0, 0, 0, 0, '', 'SAI only when player has aura'),
(22, 1, 7750, 2, 1, 1, 0, 116220, 0, 0, 1, 0, 0, '', 'SAI only when player has not aura'),
(22, 1, 7835, 2, 0, 9, 0, 29423, 0, 0, 0, 0, 0, '', 'SAI only when quest taken'),
(22, 1, 7784, 2, 0, 28, 0, 29521, 0, 0, 0, 0, 0, '', 'SAI only when quest complete'),
(22, 1, 7784, 2, 0, 1, 0, 116219, 0, 0, 1, 0, 0, '', 'SAI only when player has not aura'),
(22, 1, 7783, 2, 0, 9, 0, 29678, 0, 0, 0, 0, 0, '', 'SAI only when quest taken'),
(22, 1, 7258, 2, 0, 1, 0, 88811, 0, 0, 1, 0, 0, '', 'SAI only when player has not aura'),
(22, 1, 7822, 2, 0, 28, 0, 29775, 0, 0, 0, 0, 0, '', 'SAI only when quest complete'),
(22, 1, 7822, 2, 0, 1, 0, 88811, 0, 0, 1, 0, 0, '', 'SAI only when player has not aura'),
(22, 1, 7116, 2, 0, 28, 0, 29775, 0, 0, 0, 0, 0, '', 'SAI only when player has completed quest'),
(22, 1, 8287, 2, 0, 1, 0, 116219, 0, 0, 1, 0, 0, '', 'SAI only when player has not aura'),
(22, 1, 7041, 2, 0, 9, 0, 29785, 0, 0, 0, 0, 0, '', 'SAI only when quest taken'),
(22, 1, 7041, 2, 0, 1, 0, 104571, 1, 0, 1, 0, 0, '', 'SAI only when player has not aura'),
(22, 1, 7037, 2, 0, 9, 0, 29785, 0, 0, 0, 0, 0, '', 'SAI only when quest taken'),
(22, 1, 7037, 2, 0, 1, 0, 104615, 1, 0, 1, 0, 0, '', 'SAI only when player has not aura'),
(22, 1, 7106, 2, 0, 28, 0, 29790, 0, 0, 0, 0, 0, '', 'SAI only when quest complete'),
(22, 1, 7106, 2, 0, 1, 0, 106603, 1, 0, 1, 0, 0, '', 'SAI only when player has not aura'),
(22, 1, 7710, 2, 0, 9, 0, 29792, 0, 0, 0, 0, 0, '', 'SAI only when quest taken'),
(22, 1, 7710, 2, 0, 48, 0, 263982, 0, 0, 1, 0, 0, '', 'SAI only when player has not completed quest objective'),
(22, 1, 7709, 2, 0, 48, 0, 263982, 0, 0, 0, 0, 0, '', 'SAI only when player has completed quest objective'),
(22, 1, 7709, 2, 0, 48, 0, 263983, 0, 0, 1, 0, 0, '', 'SAI only when player has not completed quest objective'),
(22, 1, 7714, 2, 0, 28, 0, 29792, 0, 0, 0, 0, 0, '', 'SAI only when quest complete'),
(22, 1, 7714, 2, 0, 1, 0, 115644, 0, 0, 1, 0, 0, '', 'SAI only when player has not aura'),
(22, 1, 7265, 2, 0, 1, 0, 88811, 0, 0, 1, 0, 0, '', 'SAI only when player has not aura'),
(22, 1, 8564, 2, 0, 1, 0, 131425, 0, 0, 1, 0, 0, '', 'SAI only when player has not aura'),
-- Spell Targets
(13, 1, 108967, 0, 0, 51, 0, 5, 53714, 0, 0, 0, 0, '', 'Jab target only Training Target'),
(13, 1, 108967, 0, 1, 51, 0, 5, 57873, 0, 0, 0, 0, '', 'Jab target only Training Target'),
(13, 1, 122484, 0, 0, 51, 0, 8, 210986, 0, 0, 0, 0, '', 'Forced Open Edict of Temperance Target Edict of Temperance'),
(13, 1, 106205, 0, 0, 51, 0, 5, 54855, 0, 0, 0, 0, '', 'Summon Cart Driver target only Min Dimwind'),
(13, 1, 114728, 0, 0, 51, 0, 5, 54567, 0, 0, 0, 0, '', 'Summon Aysa target only Aysa'),
(13, 3, 114710, 0, 0, 51, 0, 6, 0, 0, 0, 0, 0, '', 'Forcecast Summon Amberleaf Troublemaker target Player'),
(13, 1, 106299, 0, 0, 51, 0, 5, 41200, 0, 0, 0, 0, '', 'Summon Living Air target Generic Bunny - PRK'),
(13, 1, 109062, 0, 0, 51, 0, 5, 41200, 0, 0, 0, 0, '', 'Summon Lightning target Generic Bunny - PRK'),
(13, 1, 108152, 0, 0, 51, 0, 5, 54135, 0, 0, 0, 0, '', 'Fire Crash Kick target Master Li Fei'),
(13, 1, 102499, 0, 0, 51, 0, 5, 54734, 0, 0, 0, 0, '', 'Fire Crash target Master Li Fei'),
(13, 2, 102515, 0, 0, 51, 0, 5, 54135, 0, 0, 0, 0, '', 'Fire Crash Phase Shift target Master Li Fei'),
(13, 1, 106275, 0, 0, 51, 0, 5, 54135, 0, 0, 0, 0, '', 'Trigger Master Li Fei, Fight Completion target Master Li Fei'),
(13, 2, 102522, 0, 0, 51, 0, 5, 57779, 0, 0, 0, 0, '', 'Fan the Flames target Huo'),
(13, 1, 109090, 0, 0, 51, 0, 5, 57779, 0, 0, 0, 0, '', 'Fan the Flames: Throw Wood target Huo'),
(13, 1, 109095, 0, 0, 51, 0, 5, 57779, 0, 0, 0, 0, '', 'Fan the Flames: Blow Air target Huo'),
(13, 1, 109105, 0, 0, 51, 0, 5, 57779, 0, 0, 0, 0, '', 'Fan the Flames: Blow Air Big target Huo'),
(13, 1, 109109, 0, 0, 51, 0, 5, 57779, 0, 0, 0, 0, '', 'Fan the Flames: Blow Air Bigger target Huo'),
(13, 1, 109178, 0, 0, 51, 0, 5, 54958, 0, 0, 0, 0, '', 'Despawn Fire Spirit target Huo pet'),
(13, 1, 109178, 0, 0, 33, 0, 1, 3, 0, 0, 0, 0, '', 'Despawn Fire Spirit target Huo pet owned by summoner'),
(13, 1, 105090, 0, 0, 51, 0, 5, 54958, 0, 0, 0, 0, '', 'Trigger Spirit of Fire at Temple target Huo'),
(13, 1, 105090, 0, 0, 33, 0, 1, 3, 0, 0, 0, 0, '', 'Trigger Spirit of Fire at Temple target Huo owned by summoner'),
(13, 2, 106465, 0, 0, 51, 0, 5, 56479, 0, 0, 0, 0, '', 'Trigger Cental Statue Fire Change target Legacy of Liu Lang'),
(13, 1, 106497, 0, 0, 51, 0, 5, 56622, 0, 0, 0, 0, '', 'Trigger Cental Statue Fire Change target Brazier'),
(13, 1, 108808, 0, 0, 51, 0, 5, 55021, 0, 0, 0, 0, '', 'Summon Jojo Ironbrow target Jojo Ironbrow'),
(13, 1, 108798, 0, 0, 51, 0, 5, 57636, 0, 0, 0, 0, '', 'Jojo Headbash, Stack of Reeds Impact target Stack of Reeds'),
(13, 1, 107049, 0, 0, 51, 0, 5, 56869, 0, 0, 0, 0, '', 'Ride Vehicle target Balance Pole Landing Bunny'),
(13, 1, 103070, 0, 0, 51, 0, 8, 209577, 0, 0, 0, 0, '', 'Rock Jump B target Rock Jump C'),
(13, 1, 103077, 0, 0, 51, 0, 8, 209575, 0, 0, 0, 0, '', 'Rock Jump C target Rock Jump A'),
(13, 1, 128576, 0, 0, 51, 0, 5, 65493, 0, 0, 0, 0, '', 'Water Spout Laugh Trigger target Shu'),
(13, 1, 108877, 0, 0, 51, 0, 5, 57709, 0, 0, 0, 0, '', 'Ox Cart Rope Left target Nourished Yak'),
(13, 1, 108877, 0, 1, 51, 0, 5, 59499, 0, 0, 0, 0, '', 'Ox Cart Rope Left target Nourished Yak'),
(13, 1, 108878, 0, 0, 51, 0, 5, 57710, 0, 0, 0, 0, '', 'Ox Cart Rope Right target Delivery Cart'),
(13, 1, 108878, 0, 1, 51, 0, 5, 59497, 0, 0, 0, 0, '', 'Ox Cart Rope Right target Delivery Cart'),
(13, 1, 107784, 0, 0, 51, 0, 5, 57710, 0, 0, 0, 0, '', 'Summon Ox Cart, Cursed Pools -> Farmlands target Delivery Cart'),
(13, 1, 107783, 0, 0, 51, 0, 5, 57709, 0, 0, 0, 0, '', 'Summon Ox, Cursed Pools -> Farmlands target Nourished Yak'),
(13, 1, 108627, 0, 0, 51, 0, 5, 57207, 0, 0, 0, 0, '', 'Ox Cart Rope Left target Nourished Yak'),
(13, 1, 108627, 0, 1, 51, 0, 5, 59498, 0, 0, 0, 0, '', 'Ox Cart Rope Left target Nourished Yak'),
(13, 1, 108627, 0, 2, 51, 0, 5, 57742, 0, 0, 0, 0, '', 'Ox Cart Rope Left target Nourished Yak'),
(13, 1, 105881, 0, 0, 51, 0, 5, 55213, 0, 0, 0, 0, '', 'Trigger Spirit of Water at Farm target Shu'),
(13, 1, 105881, 0, 0, 33, 0, 1, 3, 0, 0, 0, 0, '', 'Trigger Spirit of Water at Farm target Shu owned by summoner'),
(13, 1, 118032, 0, 0, 51, 0, 5, 60914, 0, 0, 0, 0, '', 'Water Spout target Water Spout Bunny'),
(13, 2, 118029, 0, 0, 51, 0, 5, 60915, 0, 0, 0, 0, '', 'Water Spout Warning target Mossback Toad'),
(13, 1, 118030, 0, 0, 51, 0, 5, 60915, 0, 0, 0, 0, '', 'Water Spout Burst target Mossback Toad'),
(13, 1, 118030, 0, 1, 51, 0, 6, 0, 0, 0, 0, 0, '', 'Water Spout Burst target player'),
(13, 1, 118033, 0, 0, 51, 0, 5, 55556, 0, 0, 0, 0, '', 'Water Spout Laugh Trigger target Shu'),
(13, 1, 108830, 0, 0, 51, 0, 5, 55478, 0, 0, 0, 0, '', 'Summon Jojo Ironbrow target Jojo Ironbrow'),
(13, 1, 108831, 0, 0, 51, 0, 5, 57667, 0, 0, 0, 0, '', 'Jojo Headbash, Stack of Planks Impact target Stack of Planks'),
(13, 2, 104012, 0, 0, 51, 0, 5, 55539, 0, 0, 0, 0, '', 'Break Gong Credit target Wugou'),
(13, 4, 104012, 0, 0, 51, 0, 5, 55477, 0, 0, 0, 0, '', 'Break Gong Credit target Ji Firepaw'),
(13, 8, 104012, 0, 0, 51, 0, 8, 209626, 0, 0, 0, 0, '', 'Break Gong Credit target Break Gong'),
(13, 1, 104017, 0, 0, 51, 0, 5, 55556, 0, 0, 0, 0, '', 'Summon Spirit of Water target Shu'),
(13, 1, 118036, 0, 0, 51, 0, 5, 55539, 0, 0, 0, 0, '', 'Summon Spirit of Earth target Wugou'),
(13, 1, 118027, 0, 0, 51, 0, 5, 60916, 0, 0, 0, 0, '', 'Shu''s Water Splash target Wugou'),
(13, 1, 114453, 0, 0, 51, 0, 5, 59497, 0, 0, 0, 0, '', 'Summon Ox Cart, Farmlands -> Temple target Delivery Cart'),
(13, 1, 114454, 0, 0, 51, 0, 5, 59499, 0, 0, 0, 0, '', 'Summon Ox, Farmlands -> Temple target Nourished Yak'),
(13, 1, 106683, 0, 0, 51, 0, 5, 55558, 0, 0, 0, 0, '', 'Trigger Spirit of Water BEFORE Temple target Shu'),
(13, 1, 106683, 0, 0, 33, 0, 1, 3, 0, 0, 0, 0, '', 'Trigger Spirit of Water BEFORE Temple target Shu owned by summoner'),
(13, 2, 106667, 0, 0, 51, 0, 5, 56479, 0, 0, 0, 0, '', 'Trigger Cental Statue Earth Change target Legacy of Liu Lang'),
(13, 1, 105893, 0, 0, 51, 0, 5, 60916, 0, 0, 0, 0, '', 'Trigger Spirit of Earth at Temple target Wugou'),
(13, 1, 106688, 0, 0, 51, 0, 5, 56377, 0, 0, 0, 0, '', 'Trigger Spirit of Water at Temple target Shu'),
(13, 1, 104489, 0, 0, 51, 0, 5, 55694, 0, 0, 0, 0, '', 'Trigger Ji Air Plateau Departure target Ji Firepaw'),
(13, 1, 108845, 0, 0, 51, 0, 5, 55585, 0, 0, 0, 0, '', 'Summon Jojo Ironbrow target Jojo Ironbrow'),
(13, 1, 108846, 0, 0, 51, 0, 5, 57668, 0, 0, 0, 0, '', 'Jojo Headbash, Stack of Blocks Impact target Stack of Blocks'),
(13, 1, 108857, 0, 0, 51, 0, 5, 55585, 0, 0, 0, 0, '', 'Summon Jojo Ironbrow target Jojo Ironbrow'),
(13, 1, 125969, 0, 0, 51, 0, 5, 64507, 0, 0, 0, 0, '', 'Overpacked Firework Launcher Successful Ping target Firework Launcher'),
(13, 1, 104855, 0, 0, 51, 0, 5, 55786, 0, 0, 0, 0, '', 'Overpacked Firework target Zhao-Ren'),
(13, 1, 104612, 0, 0, 51, 0, 5, 55744, 0, 0, 0, 0, '', 'Trigger Aysa Wind Chamber Middle target Aysa Cloudsinger'),
(13, 1, 104615, 0, 0, 51, 0, 5, 55595, 0, 0, 0, 0, '', 'Trigger Aysa Wind Chamber Rear target Aysa Cloudsinger'),
(13, 1, 128801, 0, 0, 51, 0, 5, 55744, 0, 0, 0, 0, '', 'Trigger Aysa Wind Chamber Rear, Summon target Aysa Cloudsinger'),
(13, 1, 109335, 0, 0, 51, 0, 8, 209981, 0, 0, 0, 0, '', 'Summon Walking Stick target Sacred Dirt'),
(13, 1, 109336, 0, 0, 51, 0, 5, 57874, 0, 0, 0, 0, '', 'Trigger Walking Stick Blossom target Walking Stick'),
(13, 1, 105002, 0, 0, 51, 0, 5, 55918, 0, 0, 0, 0, '', 'Summon Hot Air Balloon target Hot Air Balloon'),
(13, 1, 106636, 0, 0, 51, 0, 5, 56662, 0, 0, 0, 0, '', 'Summon Aysa target Aysa Cloudsinger'),
(13, 1, 106617, 0, 0, 51, 0, 5, 56661, 0, 0, 0, 0, '', 'Reverse Cast Ride Vehicle, Seat 2 target Aysa Cloudsinger'),
(13, 1, 114888, 0, 0, 51, 0, 5, 57769, 0, 0, 0, 0, '', 'See Shen-zin Su''s Turtle Head Emerge target Shen-zin Su'),
(13, 1, 114898, 0, 0, 51, 0, 5, 56676, 0, 0, 0, 0, '', 'General Trigger to Shen-zin Su + Talk Anim 0 target Shen-zin Su'),
(13, 2, 114898, 0, 0, 51, 0, 5, 57769, 0, 0, 0, 0, '', 'General Trigger to Shen-zin Su + Talk Anim 0 target Shen-zin Su'),
(13, 1, 106759, 0, 0, 51, 0, 5, 56676, 0, 0, 0, 0, '', 'General Trigger to Shen-zin Su target Shen-zin Su'),
(13, 1, 118571, 0, 0, 51, 0, 5, 56676, 0, 0, 0, 0, '', 'General Trigger to Shen-zin Su + Talk Anim 1 target Shen-zin Su'),
(13, 2, 118571, 0, 0, 51, 0, 5, 57769, 0, 0, 0, 0, '', 'General Trigger to Shen-zin Su + Talk Anim 1 target Shen-zin Su'),
(13, 1, 118572, 0, 0, 51, 0, 5, 56676, 0, 0, 0, 0, '', 'General Trigger to Shen-zin Su + Turn Head target Shen-zin Su'),
(13, 2, 118572, 0, 0, 51, 0, 5, 57769, 0, 0, 0, 0, '', 'General Trigger to Shen-zin Su + Turn Head target Shen-zin Su'),
(13, 1, 115332, 0, 0, 51, 0, 5, 59962, 0, 0, 0, 0, '', 'Summon Aysa target Aysa Cloudsinger'),
(13, 1, 115335, 0, 0, 51, 0, 5, 59960, 0, 0, 0, 0, '', 'Summon Ji target Ji Firepaw'),
(13, 1, 115337, 0, 0, 51, 0, 5, 59963, 0, 0, 0, 0, '', 'Summon Jojo target Jojo Ironbrow'),
(13, 1, 115345, 0, 0, 51, 0, 5, 59986, 0, 0, 0, 0, '', 'Trigger Mandori Gate NPCs target Aysa Cloudsinger'),
(13, 1, 115345, 0, 1, 51, 0, 5, 59988, 0, 0, 0, 0, '', 'Trigger Mandori Gate NPCs target Ji Firepaw'),
(13, 1, 115345, 0, 2, 51, 0, 5, 59989, 0, 0, 0, 0, '', 'Trigger Mandori Gate NPCs target Jojo Ironbrow'),
(13, 1, 115346, 0, 0, 51, 0, 5, 59986, 0, 0, 0, 0, '', 'Trigger Pei-Wu Gate NPCs target Aysa Cloudsinger'),
(13, 1, 115346, 0, 1, 51, 0, 5, 59988, 0, 0, 0, 0, '', 'Trigger Pei-Wu Gate NPCs target Ji Firepaw'),
(13, 1, 115346, 0, 2, 51, 0, 5, 59989, 0, 0, 0, 0, '', 'Trigger Pei-Wu Gate NPCs target Jojo Ironbrow'),
(13, 1, 115420, 0, 0, 51, 0, 5, 59986, 0, 0, 0, 0, '', 'Trigger Hermit Hut NPCs target Aysa Cloudsinger'),
(13, 1, 115420, 0, 1, 51, 0, 5, 59988, 0, 0, 0, 0, '', 'Trigger Hermit Hut NPCs target Ji Firepaw'),
(13, 1, 115420, 0, 2, 51, 0, 5, 59989, 0, 0, 0, 0, '', 'Trigger Hermit Hut NPCs target Jojo Ironbrow'),
(13, 1, 117973, 0, 0, 51, 0, 5, 55942, 0, 0, 0, 0, '', 'Summon Ji Yuan target Ji Firepaw'),
(13, 1, 117497, 0, 0, 51, 0, 5, 56416, 0, 0, 0, 0, '', 'Summon Aysa Yuan target Aysa Cloudsinger'),
(13, 1, 131505, 0, 0, 51, 0, 6, 0, 0, 0, 0, 0, '', 'Turtle Rumble target player'),
(13, 1, 108933, 0, 0, 51, 0, 5, 57741, 0, 0, 0, 0, '', 'Summon Ox Cart, Skyfire Crash > Temple target Delivery Cart'),
(13, 1, 108932, 0, 0, 51, 0, 5, 57743, 0, 0, 0, 0, '', 'Summon Ox, Skyfire Crash > Temple target Nourished Yak'),
-- Other
(22, 1, 54567, 0, 0, 28, 0, 29419, 0, 0, 1, 0, 0, '', 'SAI only when player has not completed quest'),
(22, 1, 54567, 0, 0, 8, 0, 29419, 0, 0, 1, 0, 0, '', 'SAI only when player has not rewarded quest'),
(17, 0, 106299, 0, 0, 2, 0, 72112, 1, 0, 1, 0, 0, '', 'Summon Living Air only when player has not quest item'),
(17, 0, 105156, 0, 0, 2, 0, 75000, 1, 0, 0, 0, 0, '', 'Use red brazier - See Quest Invis 13 only when player has item'),
(17, 0, 105157, 0, 0, 2, 0, 75000, 1, 0, 0, 0, 0, '', 'Use blue brazier - See Quest Invis 14 only when player has item'),
(17, 0, 105158, 0, 0, 2, 0, 75000, 1, 0, 0, 0, 0, '', 'Use violet brazier - See Quest Invis 15 only when player has item'),
(17, 0, 108695, 0, 0, 48, 0, 255751, 0, 0, 0, 0, 0, '', 'See Quest Invis 20 only when quest objective complete'),
(17, 0, 102522, 0, 0, 29, 0, 57779, 10, 0, 0, 0, 0, '', 'Fan the Flames when Huo within 10y'),
(18, 54993, 102717, 0, 0, 1, 0, 102938, 0, 0, 1, 0, 0, '', 'Show spellclick only when has not aura'),
(18, 57431, 102717, 0, 0, 1, 0, 102938, 0, 0, 1, 0, 0, '', 'Show spellclick only when has not aura'),
(18, 55083, 102717, 0, 0, 1, 0, 102938, 0, 0, 1, 0, 0, '', 'Show spellclick only when has not aura'),
(17, 0, 107049, 0, 0, 1, 0, 133381, 0, 0, 1, 30, 0, '', 'Ride Vehicle when player has not aura'),
(17, 0, 107049, 0, 0, 29, 0, 56869, 8, 0, 0, 30, 0, '', 'Ride Vehicle when bunny within 8y'),
(15, 13140, 0, 0, 0, 9, 0, 29774, 0, 0, 0, 0, 0, '', 'Show gossip menu option when quest taken'),
(17, 0, 125961, 0, 0, 1, 1, 125964, 0, 0, 1, 30, 0, '', 'Overpacked Firework Launcher Ping only when has not aura'),
(17, 0, 125961, 0, 0, 29, 1, 55786, 20, 0, 0, 209, 145, '', 'Overpacked Firework Launcher Ping only when Zhaoren within 20y'),
(18, 55918, 46598, 0, 0, 51, 0, 6, 0, 0, 1, 0, 0, '', 'Hide spellclick'),
(18, 55918, 56685, 0, 0, 9, 0, 29791, 0, 0, 0, 0, 0, '', 'Show spellclick only when player has taken quest'),
(17, 0, 115446, 0, 0, 48, 0, 263982, 0, 0, 1, 0, 0, '', 'See Quest Invis 29 only when quest objective not complete'),
(17, 0, 115447, 0, 0, 48, 0, 263982, 0, 0, 0, 0, 0, '', 'See Quest Invis 28 only when quest objective complete'),
(17, 0, 115447, 0, 1, 28, 0, 29792, 0, 0, 0, 0, 0, '', 'See Quest Invis 28 only when quest complete'),
(17, 0, 115447, 0, 2, 8, 0, 29792, 0, 0, 0, 0, 0, '', 'See Quest Invis 28 only when quest rewarded'),
(17, 0, 115334, 0, 0, 29, 0, 59986, 50, 0, 1, 0, 0, '', 'Summon Aysa when Aysa not within 50y'),
(17, 0, 115336, 0, 0, 29, 0, 59988, 50, 0, 1, 0, 0, '', 'Summon Ji when Ji not within 50y'),
(17, 0, 115338, 0, 0, 29, 0, 59989, 50, 0, 1, 0, 0, '', 'Summon Jojo when Jojo not within 50y'),
(17, 0, 115435, 0, 0, 30, 0, 211298, 50, 0, 1, 0, 0, '', 'Summon Pei-Wu Door when Pei-Wu Door not within 50y'),
(17, 0, 115493, 0, 0, 29, 0, 59986, 50, 0, 1, 0, 0, '', 'Summon Aysa when Aysa not within 50y'),
(17, 0, 115494, 0, 0, 29, 0, 59988, 50, 0, 1, 0, 0, '', 'Summon Ji when Ji not within 50y'),
(17, 0, 115495, 0, 0, 29, 0, 59989, 50, 0, 1, 0, 0, '', 'Summon Jojo when Jojo not within 50y'),
(18, 55999, 56685, 0, 0, 9, 0, 29794, 0, 0, 0, 0, 0, '', 'Show spellclick only when player has taken quest'),
(18, 55999, 56685, 0, 0, 1, 0, 105520, 0, 0, 1, 0, 0, '', 'Show spellclick only when player has not aura'),
(18, 55999, 56685, 0, 0, 1, 0, 129340, 0, 0, 1, 0, 0, '', 'Show spellclick only when player has not aura'),
(15, 13726, 0, 0, 0, 9, 0, 31450, 0, 0, 0, 0, 0, '', 'Show gossip menu option when quest taken'),
(13, 1, 126043, 0, 0, 51, 0, 3, 55592, 0, 0, 0, 0, '', 'Summon Dafeng target Dafeng'),
(13, 1, 126059, 0, 0, 51, 0, 3, 55595, 0, 0, 0, 0, '', 'Summon Aysa target Aysa Cloudsinger'),
(13, 1, 126040, 0, 0, 51, 0, 3, 55786, 0, 0, 0, 0, '', 'Summon Master Shang Xi target Zhao-Ren'),
(13, 1, 105333, 0, 0, 51, 0, 3, 55586, 0, 0, 0, 0, '', 'Summon Master Shang Xi target Master Shang'),
(13, 1, 106623, 0, 0, 51, 0, 3, 55672, 0, 0, 0, 0, '', 'Summon Master Shang Xi target Master Shang');

DELETE FROM `creature_template_addon` WHERE `entry` = '55021'; 
DELETE FROM `creature_addon` WHERE `guid` = '21000931'; 
DELETE FROM `creature_addon` WHERE `guid` = '21000198'; 

REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
('29666','0','0','957','2804','22908'),
('29666','0','1','1010','2884','22908'),
('29666','0','2','1131','2964','22908'),
('29666','0','3','1119','3004','22908'),
('29666','0','4','1100','3040','22908'),
('29666','0','5','1054','3082','22908'),
('29666','0','6','947','3105','22908'),
('29666','0','7','849','3107','22908'),
('29666','0','8','846','3043','22908'),
('29666','0','9','834','2950','22908'),
('29666','0','10','824','2865','22908'),
('29666','0','11','849','2810','22908'),
('29666','1','0','1023','2883','22908'),
('29677','0','0','947','2942','22908'),
('29677','1','0','1023','2883','22908');
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
('29666','0','0','0','258382','60411','860','0','1','0','0','0','23877'),
('29666','0','1','-1','0','0','860','0','7','0','0','0','23877'),
('29666','0','2','32','0','0','860','0','0','0','0','0','26124'),
('29677','0','0','0','251732','73184','860','0','1','0','0','0','23877'),
('29677','0','1','-1','0','0','860','0','1','0','0','0','23877'),
('29677','0','2','32','0','0','860','0','0','0','0','0','26124');

REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
('29776','0','0','-1','0','0','860','0','0','0','0','0','26124'),
('29776','0','1','32','0','0','860','0','0','0','0','0','26124'),
('29776','1','0','-1','0','0','860','0','1','0','0','0','23877');
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
('29776','0','0','1132','4152','22908');

REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES
(102869, 5826, 29521, 29677, 0, 0, 2, 3, 66, 1),
(102872, 5826, 0, 29662, 0, 0, 2, 3, 0, 11),
(102873, 5826, 0, 29677, 0, 0, 2, 3, 0, 9),
(102873, 5860, 0, 29677, 0, 0, 2, 3, 0, 9),
(108834, 5826, 0, 29662, 0, 0, 2, 5, 0, 11),
(108879, 5826, 0, 0, 0, 0, 2, 3, 0, 0), 
(103051, 5826, 29663, 0, 0, 0, 2, 3, 8, 0), 
(102870, 5826, 29677, 29678, 0, 0, 2, 3, 74, 9),
(102874, 5826, 29677, 29678, 0, 0, 2, 3, 74, 9),
(116571, 5862, 29678, 0, 0, 0, 2, 1, 74, 0),
(102871, 5862, 29678, 29776, 0, 0, 2, 1, 66, 11), 
(102871, 5826, 29678, 29776, 0, 0, 2, 1, 66, 11), 
(102875, 5862, 29678, 0, 0, 0, 2, 1, 66, 0), 
(102875, 5826, 29678, 0, 0, 0, 2, 1, 66, 0), 
(128574, 5862, 29678, 29679, 0, 0, 2, 1, 66, 9);

REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES
(108822, 5881, 29423, 29768, 0, 0, 2, 3, 64, 1), 
(118028, 5881, 29768, 29776, 0, 0, 2, 3, 74, 11),
(108823, 5881, 29662, 29771, 0, 0, 2, 3, 64, 11), 
(108835, 5881, 29662, 29771, 0, 0, 2, 5, 64, 11), 
(108842, 5830, 29771, 29782, 0, 0, 2, 3, 66, 11), 
(108842, 5946, 29771, 29782, 0, 0, 2, 3, 66, 11), 
(108844, 5830, 29771, 29782, 0, 0, 2, 5, 66, 11), 
(104018, 5881, 29680, 29774, 0, 0, 2, 7, 64, 9),
(109303, 5881, 0, 29774, 0, 0, 2, 3, 0, 9), 
(108844, 5946, 29771, 29782, 0, 0, 2, 5, 66, 11);
 
DELETE FROM `creature_addon` WHERE `guid` = '21001055'; 
DELETE FROM `creature_addon` WHERE `guid` = '21001458'; 
DELETE FROM `creature_template_addon` WHERE `entry` = '55592'; 

REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
('29787','1','0','846','4375','22908'),
('29787','0','0','884','4463','22908');

REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
('29787','0','0','-1','0','0','860','0','1','0','0','0','23877'),
('29787','0','1','0','264044','56274','860','0','1','0','0','0','23877'),
('29787','0','2','32','0','0','860','0','0','0','0','0','26124');
 DELETE FROM `creature_template_addon` WHERE `entry` = '56503'; 
 DELETE FROM `creature_template_addon` WHERE `entry` = '56686'; 
 DELETE FROM `creature_template_addon` WHERE `entry` = '55672'; 
 DELETE FROM `creature_addon` WHERE `guid` = '21001920'; 
 
-- Shang Xi's Hot Air Balloon SAI
SET @ENTRY := 55649;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,136,1,3,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Just Spawned - Set Movement Speed"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Just Spawned - Run Script"),
(@ENTRY,0,2,0,31,0,100,0,82721,0,0,0,85,46598,2,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On Spellhit Target - Invoker Cast Ride Vehicle Hardcoded"),
(@ENTRY,0,3,0,40,0,100,0,1,55649,0,0,136,1,9,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Set Movement Speed"),
(@ENTRY,0,4,0,40,0,100,0,2,55649,0,0,45,2,2,0,0,0,0,11,0,1,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Set Data"),
(@ENTRY,0,5,0,40,0,100,0,4,55649,0,0,45,2,3,0,0,0,0,29,1,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Set Data"),
(@ENTRY,0,6,7,40,0,100,0,5,55649,0,0,86,114898,2,23,0,0,0,23,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Cross Cast General Trigger to Shen-zin Su + Talk Anim 0"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Run Script"),
(@ENTRY,0,8,9,40,0,100,0,6,55649,0,0,86,118571,2,23,0,0,0,23,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Cross Cast General Trigger to Shen-zin Su + Talk Anim 1"),
(@ENTRY,0,9,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+02,2,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Run Script"),
(@ENTRY,0,10,11,40,0,100,0,9,55649,0,0,45,2,5,0,0,0,0,29,2,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Set Data"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,136,1,16,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Set Movement Speed"),
(@ENTRY,0,12,0,40,0,100,0,11,55649,0,0,136,1,36,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Set Movement Speed"),
(@ENTRY,0,13,0,40,0,100,0,12,55649,0,0,45,2,7,0,0,0,0,29,2,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Set Data"),
(@ENTRY,0,14,0,40,0,100,0,14,55649,0,0,45,2,8,0,0,0,0,11,0,1,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Set Data"),
(@ENTRY,0,15,0,40,0,100,0,15,55649,0,0,11,105010,2,0,0,0,0,23,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Cast Speak to Shen-zin Su Credit"),
(@ENTRY,0,16,0,40,0,100,0,18,55649,0,0,45,2,9,0,0,0,0,29,1,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Set Data"),
(@ENTRY,0,17,18,58,0,100,0,21,55649,0,0,11,60603,2,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Ended - Cast Eject Passenger 1"),
(@ENTRY,0,18,19,61,0,100,0,0,0,0,0,11,45472,2,0,0,0,0,23,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Ended - Cast Parachute"),
(@ENTRY,0,19,20,61,0,100,0,0,0,0,0,45,3,1,0,0,0,0,29,1,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Ended - Set Data"),
(@ENTRY,0,20,0,61,0,100,0,0,0,0,0,41,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Ended - Despawn"),
(@ENTRY,0,21,0,28,0,100,0,0,0,0,0,28,105002,0,0,0,0,0,7,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On Passenger Removed - Remove Aura");

-- Actionlist SAI
SET @ENTRY := 5564902;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,14000,14000,0,0,86,118571,2,23,0,0,0,23,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Cross Cast General Trigger to Shen-zin Su + Talk Anim 1"),
(@ENTRY,9,1,0,0,0,100,0,15000,15000,0,0,45,2,4,0,0,0,0,29,1,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Set Data");

-- Actionlist SAI
SET @ENTRY := 5564901;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,14000,14000,0,0,86,106759,2,23,0,0,0,23,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - On WP Reached - Cross Cast General Trigger to Shen-zin Su");
-- Actionlist SAI
SET @ENTRY := 5564900;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1000,1000,0,0,11,105895,2,0,0,0,0,23,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Cast Hot Air Balloon Credit"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,11,82721,2,0,0,0,0,23,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Cast Reverse Cast Ride Vehicle (HC) on Demon Creator"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,18,34816,1,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Set Unit Flags 2"),
(@ENTRY,9,3,0,0,0,100,0,2000,2000,0,0,11,106617,2,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Cast Reverse Cast Ride Vehicle, Seat 2"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.244346,"Shang Xi's Hot Air Balloon - Set Orientation"),
(@ENTRY,9,5,0,0,0,100,0,0,0,0,0,19,32768,1,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Remove Unit Flags 2"),
(@ENTRY,9,6,0,0,0,100,0,2000,2000,0,0,53,1,55649,0,0,0,0,1,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Start WP"),
(@ENTRY,9,7,0,0,0,100,0,0,0,0,0,45,2,1,0,0,0,0,11,0,1,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Set Data"),
(@ENTRY,9,8,0,0,0,100,0,0,0,0,0,4,33099,0,0,0,0,0,23,0,0,0,0,0,0,0,"Shang Xi's Hot Air Balloon - Play Sound");

 -- Master Shang Xi SAI
SET @ENTRY := 56686;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Master Shang - Just Spawned - Run Script"),
(@ENTRY,0,1,2,40,0,100,0,1,56686,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Master Shang - WP Reached - Pause WP"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.699036,"Master Shang - WP Reached - Set Orientation"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,5,396,0,0,0,0,0,1,0,0,0,0,0,0,0,"Master Shang - WP Reached - Play Emote"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Master Shang - WP Reached - Run Script"),
(@ENTRY,0,5,6,40,0,100,0,5,56686,0,0,54,15000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Master Shang - WP Reached - Pause WP"),
(@ENTRY,0,6,7,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.8168,"Master Shang - WP Reached - Set Orientation"),
(@ENTRY,0,7,8,61,0,100,0,0,0,0,0,4,33098,0,0,0,0,0,23,0,0,0,0,0,0,0,"Master Shang - WP Reached - Play Sound"),
(@ENTRY,0,8,9,61,0,100,0,0,0,0,0,11,56913,0,0,0,0,0,1,0,0,0,0,0,0,0,"Master Shang - WP Reached - Cast CSA Dummy Effect Self"),
(@ENTRY,0,9,0,61,0,100,0,0,0,0,0,1,3,3500,0,0,0,0,23,0,0,0,0,0,0,0,"Master Shang - WP Reached - Talk"),
(@ENTRY,0,10,11,52,0,100,0,3,56686,0,0,28,126160,0,0,0,0,0,1,0,0,0,0,0,0,0,"Master Shang - On Text Over - Remove Aura"),
(@ENTRY,0,11,12,61,0,100,0,0,0,0,0,11,128850,0,0,0,0,0,23,0,0,0,0,0,0,0,"Master Shang - On Text Over - Cast Forcecast Summon Walking Stick, Blossoming"),
(@ENTRY,0,12,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+02,2,0,0,0,0,1,0,0,0,0,0,0,0,"Master Shang - On Text Over - Run Script"),
(@ENTRY,0,13,14,58,0,100,0,6,56686,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.29266,"Master Shang - WP Ended - Set Orientation"),
(@ENTRY,0,14,15,61,0,100,0,0,0,0,0,1,4,0,0,0,0,0,23,0,0,0,0,0,0,0,"Master Shang - WP Ended - Talk"),
(@ENTRY,0,15,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+03,2,0,0,0,0,1,0,0,0,0,0,0,0,"Master Shang - WP Ended - Run Script");

-- Actionlist SAI
SET @ENTRY := 5668600;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1000,1000,0,0,4,33097,0,0,0,0,0,7,0,0,0,0,0,0,0,"Master Shang - Play Sound"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Master Shang - Talk"),
(@ENTRY,9,2,0,0,0,100,0,6500,6500,0,0,5,396,0,0,0,0,0,1,0,0,0,0,0,0,0,"Master Shang - Play Emote"),
(@ENTRY,9,3,0,0,0,100,0,5500,5500,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Master Shang - Talk"),
(@ENTRY,9,4,0,0,0,100,0,6500,6500,0,0,59,1,3,2,0,0,0,1,0,0,0,0,0,0,0,"Master Shang - Set Run"),
(@ENTRY,9,5,0,0,0,100,0,0,0,0,0,53,1,56686,0,0,0,0,1,0,0,0,0,0,0,0,"Master Shang - Start WP");

-- Actionlist SAI
SET @ENTRY := 5668601;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,23,0,0,0,0,0,0,0,"Master Shang - Talk");

-- Actionlist SAI
SET @ENTRY := 5668602;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,4000,4000,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0,"Master Shang - Play Emote"),
(@ENTRY,9,1,0,0,0,100,0,2500,2500,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0,"Master Shang - Play Emote");

-- Actionlist SAI
SET @ENTRY := 5668603;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,8000,8000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Master Shang - Play Emote"),
(@ENTRY,9,1,0,0,0,100,0,7000,7000,0,0,1,5,0,0,0,0,0,23,0,0,0,0,0,0,0,"Master Shang - Talk"),
(@ENTRY,9,2,0,0,0,100,0,5500,5500,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Master Shang - Set Bytes1"),
(@ENTRY,9,3,0,0,0,100,0,2500,2500,0,0,11,128851,0,0,0,0,0,1,0,0,0,0,0,0,0,"Master Shang - Cast Master Shang Spirit Transform"),
(@ENTRY,9,4,0,0,0,100,0,1500,1500,0,0,11,109336,0,0,0,0,0,1,0,0,0,0,0,0,0,"Master Shang - Cast Trigger Walking Stick Blossom"),
(@ENTRY,9,5,0,0,0,100,0,0,0,0,0,11,106625,0,0,0,0,0,23,0,0,0,0,0,0,0,"Master Shang - Cast Planting Stave Credit"),
(@ENTRY,9,6,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Master Shang - Despawn");

 -- Aysa Cloudsinger SAI
SET @ENTRY := 59986;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Aysa Cloudsinger - Just Spawned - Store Target"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - Just Spawned - Set Event Phase 1"),
(@ENTRY,0,2,3,8,0,100,1,115345,0,0,0,11,115442,2,0,0,0,0,23,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Spellhit - Cast Mandori Gate Entrance Credit"),
(@ENTRY,0,3,4,61,0,100,1,0,0,0,0,1,0,1000,0,0,0,0,7,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Spellhit - Talk"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Spellhit - Set Event Phase 2"),
(@ENTRY,0,5,6,52,0,100,0,0,59986,0,0,11,84034,2,0,0,0,0,23,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Text Over - Update Zone Auras and Phase Shift (Demon Creator)"),
(@ENTRY,0,6,7,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Text Over - Set Emote State"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Text Over - Run Script"),
(@ENTRY,0,8,0,8,2,100,1,115346,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Spellhit - Set Event Phase 3"),
(@ENTRY,0,9,0,58,4,100,0,10,59986,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On WP Ended - Run Script"),
(@ENTRY,0,10,11,58,2,100,0,10,59986,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.31249,"Aysa Cloudsinger - On WP Ended - Set Orientation"),
(@ENTRY,0,11,0,61,2,100,0,0,0,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On WP Ended - Set Event Phase 4"),
(@ENTRY,0,12,0,8,9,100,1,115346,0,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Spellhit - Run Script"),
(@ENTRY,0,13,14,34,0,100,0,8,20,0,0,5,432,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Movement Inform - Play Emote"),
(@ENTRY,0,14,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+02,2,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Movement Inform - Run Script"),
(@ENTRY,0,15,16,38,0,100,0,4,4,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Data Set - Set Run"),
(@ENTRY,0,16,0,61,0,100,0,0,0,0,0,69,21,0,0,0,0,0,8,0,0,0,571.8,3586.57,94.8258,0,"Aysa Cloudsinger - On Data Set - Move to Pos"),
(@ENTRY,0,17,0,38,0,100,0,5,5,0,0,53,1,@ENTRY*100+00,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Data Set - Start WP"),
(@ENTRY,0,18,19,40,0,100,0,5,@ENTRY*100+00,0,0,54,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On WP Reached - Pause WP"),
(@ENTRY,0,19,0,61,0,100,0,0,0,0,0,97,15,10,0,0,0,0,1,0,0,0,499.339,3611.27,85.4411,0,"Aysa Cloudsinger - On WP Reached - Jump to Pos"),
(@ENTRY,0,20,0,8,16,100,1,115420,0,0,0,22,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Spellhit - Set Event Phase 6"),
(@ENTRY,0,21,0,58,32,100,0,11,@ENTRY*100+00,0,0,80,@ENTRY*100+03,2,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On WP Ended - Run Script"),
(@ENTRY,0,23,24,58,16,100,0,11,@ENTRY*100+00,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.75196,"Aysa Cloudsinger - On WP Ended - Set Orientation"),
(@ENTRY,0,24,0,61,16,100,0,0,0,0,0,22,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On WP Ended - Set Event Phase 7"),
(@ENTRY,0,25,0,8,65,100,1,115420,0,0,0,80,@ENTRY*100+03,2,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Spellhit - Run Script"),
(@ENTRY,0,26,27,40,0,100,0,2,@ENTRY*100+01,0,0,54,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On WP Reached - Pause WP"),
(@ENTRY,0,27,0,61,0,100,0,0,0,0,0,97,15,15,0,0,0,0,1,0,0,0,424.394,3676.56,78.7014,0,"Aysa Cloudsinger - On WP Reached - Jump to Pos"),
(@ENTRY,0,28,0,58,0,100,0,6,@ENTRY*100+01,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On WP Ended - Despawn");

-- Actionlist SAI
SET @ENTRY := 5998600;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1500,1500,0,0,9,0,0,0,0,0,0,20,211294,3,0,0,0,0,0,"Aysa Cloudsinger - Activate Gameobject"),
(@ENTRY,9,1,0,0,0,100,0,1000,1000,0,0,17,30,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - Set Emote State"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,11,56913,2,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - Cast CSA Dummy Effect Self"),
(@ENTRY,9,3,0,0,0,100,0,500,500,0,0,45,1,1,0,0,0,0,11,0,5,0,0,0,0,0,"Aysa Cloudsinger - Set Data"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,53,1,59986,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - Start WP"),
(@ENTRY,9,5,0,0,0,100,0,500,500,0,0,41,0,0,0,0,0,0,20,211294,3,0,0,0,0,0,"Aysa Cloudsinger - Despawn Door");

-- Actionlist SAI
SET @ENTRY := 5998601;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,22,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - Set Event Phase 5"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.31249,"Aysa Cloudsinger - Set Orientation"),
(@ENTRY,9,2,0,0,0,100,0,2000,2000,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - Set Walk"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,69,20,0,0,0,0,0,8,0,0,0,568.724,3584.41,94.7694,0,"Aysa Cloudsinger - Move to Pos");

-- Actionlist SAI
SET @ENTRY := 5998602;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,2000,2000,0,0,1,1,0,0,0,0,0,23,0,0,0,0,0,0,0,"Aysa Cloudsinger - Talk"),
(@ENTRY,9,1,0,0,0,100,0,2500,2500,0,0,1,2,0,0,0,0,0,23,0,0,0,0,0,0,0,"Aysa Cloudsinger - Talk"),
(@ENTRY,9,2,0,0,0,100,0,2000,2000,0,0,45,2,2,0,0,0,0,11,59988,10,0,0,0,0,0,"Aysa Cloudsinger - Set Data");

-- Actionlist SAI
SET @ENTRY := 5998603;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.75196,"Aysa Cloudsinger - Set Orientation"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,100,1,0,0,0,0,0,11,0,10,0,0,0,0,0,"Aysa Cloudsinger - Send Target"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,45,6,1,0,0,0,0,11,60042,5,0,0,0,0,0,"Aysa Cloudsinger - Set Data"),
(@ENTRY,9,3,0,0,0,100,0,26000,26000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - Talk"),
(@ENTRY,9,4,0,0,0,100,0,8000,8000,0,0,53,1,5998601,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - Start WP"),
(@ENTRY,9,5,0,0,0,100,0,1000,1000,0,0,45,6,3,0,0,0,0,11,0,15,0,0,0,0,0,"Aysa Cloudsinger - Set Data");

 -- Ji Firepaw SAI
SET @ENTRY := 59988;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,53,1,59988,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - On Data Set - Start WP"),
(@ENTRY,0,1,0,58,0,100,0,12,59988,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.55695,"Ji Firepaw - On WP Ended - Set Orientation"),
(@ENTRY,0,2,0,8,0,100,1,115346,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.55695,"Ji Firepaw - On Spellhit - Set Orientation"),
(@ENTRY,0,3,4,38,0,100,0,2,2,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - On Data Set - Set Walk"),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,23,0,0,0,0,0,0,0,"Ji Firepaw - On Data Set - Talk"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,69,20,0,0,0,0,0,8,0,0,0,569.153,3582.24,94.9562,0,"Ji Firepaw - On Data Set - Move to Pos"),
(@ENTRY,0,6,0,34,0,100,0,8,20,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - On Movement Inform - Run Script"),
(@ENTRY,0,7,8,38,0,100,0,4,4,0,0,69,21,0,0,0,0,0,8,0,0,0,571.661,3578.93,94.9927,0,"Ji Firepaw - On Data Set - Move to Pos"),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,17,30,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - On Data Set - Set Emote State"),
(@ENTRY,0,9,10,38,0,100,0,5,5,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Ji Firepaw - On Data Set - Talk"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,53,1,@ENTRY*100+00,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - On Data Set - Start WP"),
(@ENTRY,0,11,0,58,0,100,0,9,@ENTRY*100+00,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.49739,"Ji Firepaw - On WP Ended - Set Orientation"),
(@ENTRY,0,12,0,8,0,100,1,115420,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.51327,"Ji Firepaw - On Spellhit - Set Orientation"),
(@ENTRY,0,13,0,38,0,100,0,6,3,0,0,1,3,7000,0,0,0,0,23,0,0,0,0,0,0,0,"Ji Firepaw - On Data Set - Talk"),
(@ENTRY,0,14,0,52,0,100,0,3,59988,0,0,45,6,4,0,0,0,0,11,60042,5,0,0,0,0,0,"Ji Firepaw - On Text Over - Set Data"),
(@ENTRY,0,15,16,38,0,100,0,6,5,0,0,1,4,0,0,0,0,0,23,0,0,0,0,0,0,0,"Ji Firepaw - On Data Set - Talk"),
(@ENTRY,0,16,0,61,0,100,0,0,0,0,0,41,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - On Data Set - Despawn");

-- Actionlist SAI
SET @ENTRY := 5998800;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.05433,"Ji Firepaw - Set Orientation"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,17,433,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Set Emote State"),
(@ENTRY,9,2,0,0,0,100,0,2000,2000,0,0,1,1,0,0,0,0,0,23,0,0,0,0,0,0,0,"Ji Firepaw - Talk"),
(@ENTRY,9,3,0,0,0,100,0,4000,4000,0,0,137,15801,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Play Spell Visual Kit"),
(@ENTRY,9,4,0,0,0,100,0,8000,8000,0,0,45,3,3,0,0,0,0,11,59989,10,0,0,0,0,0,"Ji Firepaw - Set Data"),
(@ENTRY,9,5,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Set Run");

-- Jojo Ironbrow SAI
SET @ENTRY := 59989;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,53,1,59989,0,0,0,0,7,0,0,0,0,0,0,0,"Jojo Ironbrow - On Data Set - Start WP"),
(@ENTRY,0,1,2,58,0,100,0,12,59989,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.98689,"Jojo Ironbrow - On WP Ended - Set Orientation"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,17,376,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jojo Ironbrow - On WP Ended - Set Emote State"),
(@ENTRY,0,3,4,8,0,100,1,115346,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.98689,"Jojo Ironbrow - On Spellhit - Set Orientation"),
(@ENTRY,0,4,0,61,0,100,1,0,0,0,0,17,376,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jojo Ironbrow - On Spellhit - Set Emote State"),
(@ENTRY,0,5,6,38,0,100,0,3,3,0,0,5,15,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jojo Ironbrow - On Data Set - Play Emote"),
(@ENTRY,0,6,7,61,0,100,0,0,0,0,0,4,32037,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jojo Ironbrow - On Data Set - Play Sound"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Jojo Ironbrow - On Data Set - Run Script"),
(@ENTRY,0,8,9,34,0,100,0,8,20,0,0,137,28180,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jojo Ironbrow - On Movement Inform - Play Spell Visual Kit"),
(@ENTRY,0,9,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Jojo Ironbrow - On Movement Inform - Run Script"),
(@ENTRY,0,10,11,40,0,100,0,5,@ENTRY*100+00,0,0,54,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jojo Ironbrow - On WP Reached - Pause WP"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,97,15,10,0,0,0,0,1,0,0,0,499.557,3608.76,85.5928,0,"Jojo Ironbrow - On WP Reached - Jump to Pos"),
(@ENTRY,0,12,0,58,0,100,0,11,@ENTRY*100+00,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.09139,"Jojo Ironbrow - On WP Ended - Set Orientation"),
(@ENTRY,0,13,0,8,0,100,1,115420,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.10125,"Jojo Ironbrow - On Spellhit - Set Orientation"),
(@ENTRY,0,14,0,38,0,100,0,6,3,0,0,53,1,@ENTRY*100+01,0,0,0,0,1,0,0,0,0,0,0,0,"Jojo Ironbrow - On Data Set - Start WP"),
(@ENTRY,0,15,16,40,0,100,0,2,@ENTRY*100+01,0,0,54,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jojo Ironbrow - On WP Reached - Pause WP"),
(@ENTRY,0,16,0,61,0,100,0,0,0,0,0,97,15,15,0,0,0,0,1,0,0,0,418.057,3675.71,80.2156,0,"Jojo Ironbrow - On WP Reached - Jump to Pos"),
(@ENTRY,0,17,0,58,0,100,0,7,@ENTRY*100+01,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jojo Ironbrow - On WP Ended - Despawn");

-- Actionlist SAI
SET @ENTRY := 5998900;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1000,1000,0,0,45,4,4,0,0,0,0,11,0,10,0,0,0,0,0,"Jojo Ironbrow - Set Data"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jojo Ironbrow - Set Run"),
(@ENTRY,9,2,0,0,0,100,0,1500,1500,0,0,11,115443,2,0,0,0,0,23,0,0,0,0,0,0,0,"Jojo Ironbrow - Cast Pei-Wu Gate Entrance Credit"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,11,84034,2,0,0,0,0,23,0,0,0,0,0,0,0,"Jojo Ironbrow - Cast Update Zone Auras and Phase Shift (Demon Creator)"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,69,20,0,0,0,0,0,8,0,0,0,569.903,3582.06,95.0268,0,"Jojo Ironbrow - Move to Pos");

-- Actionlist SAI
SET @ENTRY := 5998901;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,2500,2500,0,0,9,0,0,0,0,0,0,20,211298,3,0,0,0,0,0,"Jojo Ironbrow - Activate Gameobject"),
(@ENTRY,9,1,0,0,0,100,0,500,500,0,0,11,56913,2,0,0,0,0,1,0,0,0,0,0,0,0,"Jojo Ironbrow - Cast CSA Dummy Effect Self"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,45,5,5,0,0,0,0,11,0,10,0,0,0,0,0,"Jojo Ironbrow - Set Data"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,53,1,5998900,0,0,0,0,1,0,0,0,0,0,0,0,"Jojo Ironbrow - Start WP");

DELETE FROM `creature_template_addon` WHERE `entry` = '55999'; 

-- Min Dimwind SAI
SET @ENTRY := 56503;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,33,54855,0,0,0,0,0,7,0,0,0,0,0,0,0,"Min Dimwind - Just Spawned - Quest Credit"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,54130,6,0,0,0,0,0,"Min Dimwind - Just Spawned - Set Data"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,44,629,0,0,0,0,0,7,0,0,0,0,0,0,0,"Min Dimwind - Just Spawned - Remove Phase"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Min Dimwind - Just Spawned - Run Script"),
(@ENTRY,0,4,5,40,0,100,0,1,56503,0,0,54,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Min Dimwind - WP Reached - WP pause"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Min Dimwind - WP Reached - Talk"),
(@ENTRY,0,6,7,40,0,100,0,4,56503,0,0,54,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Min Dimwind - WP Reached - WP pause"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Min Dimwind - WP Reached - Talk"),
(@ENTRY,0,8,9,40,0,100,0,12,56503,0,0,54,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Min Dimwind - WP Reached - WP pause"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Min Dimwind - WP Reached - Talk"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Min Dimwind - WP Reached - Set Walk"),
(@ENTRY,0,11,12,58,0,100,0,16,56503,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.575959,"Min Dimwind - WP Ended - Set Orientation"),
(@ENTRY,0,12,13,61,0,100,0,0,0,0,0,44,630,1,0,0,0,0,23,0,0,0,0,0,0,0,"Min Dimwind - WP Ended - Add Phase"),
(@ENTRY,0,13,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Min Dimwind - WP Ended - Despawn");

-- Actionlist SAI
SET @ENTRY := 5650300;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,1,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Min Dimwind - Talk"),
(@ENTRY,9,2,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Min Dimwind - Talk"),
(@ENTRY,9,3,0,0,0,100,0,3000,3000,0,0,53,1,56503,0,29419,0,0,1,0,0,0,0,0,0,0,"Min Dimwind - WP start");

-- Delivery Cart SAI
SET @ENTRY := 57208;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,64,1,0,0,0,0,0,11,57207,4,0,0,0,0,0,"Delivery Cart - Just Spawned - Store Target"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,12,1,0,0,0,0,0,0,"Delivery Cart - Just Spawned - Set Data"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,85,46598,2,0,0,0,0,1,0,0,0,0,0,0,0,"Delivery Cart - Just Spawned - Invoker Cast Ride Vehicle Hardcoded"),
(@ENTRY,0,3,4,27,0,100,0,0,0,0,0,11,108887,2,0,0,0,0,7,0,0,0,0,0,0,0,"Delivery Cart - Passenger Boarded - Cast Ox Cart Invisibility"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Delivery Cart - Passenger Boarded - Run Script"),
(@ENTRY,0,5,0,40,0,100,0,27,57208,0,0,11,50630,2,0,0,0,0,1,0,0,0,0,0,0,0,"Delivery Cart - On WP Reached - Cast Eject All Passengers"),
(@ENTRY,0,6,0,28,0,100,0,0,0,0,0,11,108888,2,0,0,0,0,7,0,0,0,0,0,0,0,"Delivery Cart - Passenger Removed - Cast Cancel Ox Cart Invisibility"),
(@ENTRY,0,7,0,58,0,100,0,34,57208,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Delivery Cart - On WP Ended - Despawn");
-- Actionlist SAI
SET @ENTRY := 5720800;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1000,1000,0,0,11,108627,2,0,0,0,0,1,0,0,0,0,0,0,0,"Delivery Cart - Cast Ox Cart Rope Left"),
(@ENTRY,9,1,0,0,0,100,0,5000,5000,0,0,45,2,2,0,0,0,0,12,1,0,0,0,0,0,0,"Delivery Cart - Set Data"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,53,1,57208,0,0,0,0,1,0,0,0,0,0,0,0,"Delivery Cart - Start WP");

-- Injured Sailor SAI
SET @ENTRY := 56236;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,11,46598,2,0,0,0,0,7,0,0,0,0,0,0,0,"Injured Sailor - Just Spawned - Cast Ride Vehicle Hardcoded"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Injured Sailor - Just Spawned - Set Event Phase"),
(@ENTRY,0,2,0,23,1,100,0,46598,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Injured Sailor - Has Not Aura - Despawn"),
(@ENTRY,0,3,4,31,0,100,0,117987,0,0,0,85,68741,2,0,0,0,0,1,0,0,0,0,0,0,0,"Injured Sailor - On Spellhit Target - Invoker Cast Drowning Vehicle Exit Dummy"),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,33,55999,0,0,0,0,0,7,0,0,0,0,0,0,0,"Injured Sailor - On Spellhit Target - Quest Credit"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Injured Sailor - On Spellhit Target - Set Event Phase"),
(@ENTRY,0,6,7,8,0,100,0,68741,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Injured Sailor - On Spellhit - Talk"),
(@ENTRY,0,7,8,61,0,100,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Injured Sailor - On Spellhit - Set Walk"),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,236.047,3851.52,73.0825,0.401426,"Injured Sailor - On Spellhit - Move to Pos"),
(@ENTRY,0,9,0,34,0,100,0,8,1,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Injured Sailor - Movement Inform - Run Script");

-- Actionlist SAI
SET @ENTRY := 5623600;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,500,500,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.401426,"Injured Sailor - Set Orientation"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,90,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Injured Sailor - Set Bytes 1"),
(@ENTRY,9,2,0,0,0,100,0,5000,5000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Injured Sailor - Despawn");

-- Aysa Cloudsinger SAI
SET @ENTRY := 60729;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - Just Spawned - Run Script"),
(@ENTRY,0,1,0,40,0,100,0,7,60729,0,0,11,117600,2,0,0,0,0,23,0,0,0,0,0,0,0,"Aysa Cloudsinger - On WP Reached - Cast Forcecast Summon Ji, Cinematic Intro"),
(@ENTRY,0,2,3,58,0,100,0,14,60729,0,0,1,1,14000,0,0,0,0,23,0,0,0,0,0,0,0,"Aysa Cloudsinger - On WP Ended - Talk"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,60741,5,0,0,0,0,0,"Aysa Cloudsinger - On WP Ended - Set Data"),
(@ENTRY,0,4,0,52,0,100,0,1,60729,0,0,1,2,14000,0,0,0,0,23,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Text Over - Talk"),
(@ENTRY,0,5,0,52,0,100,0,2,60729,0,0,1,3,10000,0,0,0,0,23,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Text Over - Talk"),
(@ENTRY,0,6,0,52,0,100,0,3,60729,0,0,1,4,6000,0,0,0,0,23,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Text Over - Talk"),
(@ENTRY,0,7,0,52,0,100,0,4,60729,0,0,1,5,1000,0,0,0,0,23,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Text Over - Talk"),
(@ENTRY,0,8,9,38,0,100,0,2,2,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Data Set - Set Run"),
(@ENTRY,0,9,0,61,0,100,0,0,0,0,0,69,15,0,0,0,0,0,8,0,0,0,233.022,3985.45,86.7175,0,"Aysa Cloudsinger - On Data Set - Move to Pos"),
(@ENTRY,0,10,0,34,0,100,0,8,15,0,0,97,10,15,0,0,0,0,1,0,0,0,232.002,3974.86,87.766,0,"Aysa Cloudsinger - On Movement Inform - Jump to Pos"),
(@ENTRY,0,11,12,34,0,100,0,16,1004,0,0,69,16,0,1,0,0,0,8,0,0,0,239.453,3942.2,62.5987,0,"Aysa Cloudsinger - On Movement Inform - Move to Pos"),
(@ENTRY,0,12,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Movement Inform - Despawn");

-- Actionlist SAI
SET @ENTRY := 6072900;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Aysa Cloudsinger - Talk"),
(@ENTRY,9,1,0,0,0,100,0,3000,3000,0,0,53,1,60729,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - Start WP");

-- Injured Sailor SAI
SET @ENTRY := 55999;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,75,108806,0,0,0,0,0,1,0,0,0,0,0,0,0,"Injured Sailor - On Respawn - Add Aura"),
(@ENTRY,0,1,2,73,0,100,0,0,0,0,0,11,106155,2,0,0,0,0,7,0,0,0,0,0,0,0,"Injured Sailor - On Spellclick - Cast Forcecast Rescue Injured Sailor"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Injured Sailor - On Spellclick - Despawn");

-- Areatrigger SAI
SET @ENTRY := 7258;
DELETE FROM `areatrigger_scripts` WHERE `entry`=@ENTRY;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES (@ENTRY,"SmartTrigger");
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,2,0,0,46,0,100,0,7258,0,0,0,86,88811,2,10,21000954,57712,0,7,0,0,0,0,0,0,0,"On Trigger - Cross Cast Area Trigger Dummy Timer Aura");

-- Areatrigger SAI
SET @ENTRY := 7822;
DELETE FROM `areatrigger_scripts` WHERE `entry`=@ENTRY;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES (@ENTRY,"SmartTrigger");
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,2,0,0,46,0,100,0,7822,0,0,0,86,88811,2,10,21001069,57712,0,7,0,0,0,0,0,0,0,"On Trigger - Cross Cast Area Trigger Dummy Timer Aura");

-- Shu SAI
SET @ENTRY := 55556;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,0,5000,8000,12000,11,118032,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shu - Update OOC - Cast Water Spout"),
(@ENTRY,0,1,2,62,0,100,0,13140,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Shu - On Gossip Select - Close Gossip"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,85,104017,2,0,0,0,0,7,0,0,0,0,0,0,0,"Shu - On Gossip Select - Invoker Cast Summon Spirit of Water");

-- Actionlist SAI
SET @ENTRY := 5555800;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,2000,2000,0,0,11,118035,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shu - Cast Water Spirit Laugh"),
(@ENTRY,9,1,0,0,0,100,0,2000,2000,0,0,53,1,5555800,0,0,0,0,1,0,0,0,0,0,0,0,"Shu - Start WP");

-- Wugou SAI
SET @ENTRY := 60916;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,29,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wugou - Just Spawned - Stop Follow"),
(@ENTRY,0,1,0,8,0,100,0,118027,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Wugou - On Spellhit - Run Script"),
(@ENTRY,0,2,0,38,0,100,0,1,1,0,0,29,0,270,0,0,0,0,23,0,0,0,0,0,0,0,"Wugou - On Data Set - Follow Summoner"),
(@ENTRY,0,3,4,8,0,100,0,105893,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wugou - On Spellhit - Set Walk"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,927.573,3610.24,196.442,0,"Wugou - On Spellhit - Move to Pos"),
(@ENTRY,0,5,0,34,0,100,0,8,1,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Wugou - Movement Inform - Run Script");

-- Actionlist SAI
SET @ENTRY := 6091601;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,250,250,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.9968,"Wugou - Set Orientation"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,28,118036,0,0,0,0,0,23,0,0,0,0,0,0,0,"Wugou - Remove Aura"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,44,1029,1,0,0,0,0,23,0,0,0,0,0,0,0,"Wugou - Add Phase"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wugou - Despawn");

-- Actionlist SAI
SET @ENTRY := 6091600;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,28,42386,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wugou - Remove Aura"),
(@ENTRY,9,1,0,0,0,100,0,1000,1000,0,0,5,53,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wugou - Play Emote"),
(@ENTRY,9,2,0,0,0,100,0,2500,2500,0,0,29,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Wugou - Follow");

-- Ji Firepaw SAI
SET @ENTRY := 55477;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - On Respawn - Set Run"),
(@ENTRY,0,1,0,1,0,100,0,1000,1000,116000,116000,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Update OOC - Run Script");

-- Actionlist SAI
SET @ENTRY := 5547700;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Talk"),
(@ENTRY,9,1,0,0,0,100,0,16000,16000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Talk"),
(@ENTRY,9,2,0,0,0,100,0,17000,17000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Talk"),
(@ENTRY,9,3,0,0,0,100,0,18000,18000,0,0,69,1,0,0,0,0,0,8,0,0,0,628.734,3138.05,87.837,0,"Ji Firepaw - Move to Pos"),
(@ENTRY,9,4,0,0,0,100,0,1000,1000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,6.21337,"Ji Firepaw - Set Orientation"),
(@ENTRY,9,5,0,0,0,100,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Talk"),
(@ENTRY,9,6,0,0,0,100,0,4000,4000,0,0,11,118026,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Cast SpecialUnarmed w/ Gong Song"),
(@ENTRY,9,7,0,0,0,100,0,3500,3500,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Talk"),
(@ENTRY,9,8,0,0,0,100,0,0,0,0,0,69,2,0,0,0,0,0,8,0,0,0,629.354,3139.15,87.837,0,"Ji Firepaw - Move to Pos"),
(@ENTRY,9,9,0,0,0,100,0,1000,1000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.558505,"Ji Firepaw - Set Orientation"),
(@ENTRY,9,10,0,0,0,100,0,4000,4000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Talk"),
(@ENTRY,9,11,0,0,0,100,0,0,0,0,0,17,510,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Set Emote State"),
(@ENTRY,9,12,0,0,0,100,0,1000,1000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Talk"),
(@ENTRY,9,13,0,0,0,100,0,1000,1000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Talk"),
(@ENTRY,9,14,0,0,0,100,0,1000,1000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Talk"),
(@ENTRY,9,15,0,0,0,100,0,0,0,0,0,17,30,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Set Emote State"),
(@ENTRY,9,16,0,0,0,100,0,1000,1000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Talk"),
(@ENTRY,9,17,0,0,0,100,0,20000,20000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Talk"),
(@ENTRY,9,18,0,0,0,100,0,13000,13000,0,0,5,20,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Play Emote");

-- Actionlist SAI
SET @ENTRY := 5949600;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1000,1000,0,0,11,108627,2,0,0,0,0,1,0,0,0,0,0,0,0,"Delivery Cart - Cast Ox Cart Rope Left"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,86,63313,2,11,60916,20,0,1,0,0,0,0,0,0,0,"Delivery Cart - Cross Cast Ride Vehicle"),
(@ENTRY,9,2,0,0,0,100,0,5000,5000,0,0,45,2,2,0,0,0,0,12,1,0,0,0,0,0,0,"Delivery Cart - Set Data"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,53,1,59496,0,0,0,0,1,0,0,0,0,0,0,0,"Delivery Cart - Start WP"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,19,32768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Delivery Cart - Remove Unit Flag");

-- Delivery Cart SAI
SET @ENTRY := 59496;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,64,1,0,0,0,0,0,11,59498,4,0,0,0,0,0,"Delivery Cart - Just Spawned - Store Target"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,12,1,0,0,0,0,0,0,"Delivery Cart - Just Spawned - Set Data"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,85,46598,2,0,0,0,0,1,0,0,0,0,0,0,0,"Delivery Cart - Just Spawned - Invoker Cast Ride Vehicle Hardcoded"),
(@ENTRY,0,3,4,27,0,100,1,0,0,0,0,11,108887,2,0,0,0,0,7,0,0,0,0,0,0,0,"Delivery Cart - Passenger Boarded - Cast Ox Cart Invisibility"),
(@ENTRY,0,4,0,61,0,100,1,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Delivery Cart - Passenger Boarded - Run Script"),
(@ENTRY,0,5,0,40,0,100,0,30,59496,0,0,11,50630,2,0,0,0,0,1,0,0,0,0,0,0,0,"Delivery Cart - On WP Reached - Cast Eject All Passengers"),
(@ENTRY,0,6,0,28,0,100,0,0,0,0,0,11,108888,2,0,0,0,0,7,0,0,0,0,0,0,0,"Delivery Cart - Passenger Removed - Cast Cancel Ox Cart Invisibility"),
(@ENTRY,0,7,0,58,0,100,0,35,59496,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Delivery Cart - On WP Ended - Despawn");

-- Nourished Yak SAI
SET @ENTRY := 59498;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,22,1,1,0,0,0,0,1,0,0,0,0,0,0,0,"Nourished Yak - Just Spawned - Set Event Phase 1"),
(@ENTRY,0,1,0,38,1,100,0,1,1,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nourished Yak - On Data Set - Set Event Phase 2"),
(@ENTRY,0,2,0,8,0,100,0,108627,0,0,0,11,108691,2,0,0,0,0,7,0,0,0,0,0,0,0,"Nourished Yak - On Spellhit - Cast Ox Cart Rope Right"),
(@ENTRY,0,3,0,38,2,100,0,2,2,0,0,53,1,59498,0,0,0,0,1,0,0,0,0,0,0,0,"Nourished Yak - On Data Set - Start WP"),
(@ENTRY,0,4,0,58,0,100,0,35,59498,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nourished Yak - On WP Ended - Despawn");

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (59496, 5485600, 5485601, 5485602, 5485603, 5965200, 5650300, 5461101, 5461102, 5461103, 5458701, 5458702, 5458703, 5458704, 5458705, 5458706, 5458707, 5458708, 5458601, 5356501, 5356502, 5356503, 5356504, 5774801, 5774802, 5774803, 6141101, 6141102, 6141103, 5413001, 5413002, 5413003, 5413004, 5413005, 5413006, 5413007, 5413008, 5413009, 5673001, 5673002, 5673003, 5463100, 6112600, 6112700, 5495800, 6025000, 6024900, 5763800, 5639301, 5639302, 6048800, 5720800, 5720700, 5766900, 5639303, 6546701, 6091601, 5547701, 5555800, 6091600, 5949600, 6668901, 6669101, 6669201, 5656600, 5569400, 5560101, 5560102, 5767000, 5639304, 5639305, 5639306, 5639307, 6546702, 5639401, 5639402, 5639403, 6555800, 5769200, 6454300, 5566501, 5574400, 6453200, 6453000, 5615900, 5668600, 5668601, 5668602, 5668603, 5564900, 5564901, 5564902, 5666100, 5666101, 5666000, 5666001, 5998600, 5998601, 5998602, 5998603, 5998800, 5998900, 5998901, 6090000, 5623600, 6072900, 6074100, 5780300, 5774000, 6459200) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('5356501','9','0','0','0','0','100','0','1000','1000','0','0','0','','5','508','0','0','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Emote'),
('5356501','9','1','0','0','0','100','0','0','0','0','0','0','','115','33643','33645','33646','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Random Sound'),
('5356502','9','0','0','0','0','100','0','1000','1000','0','0','0','','5','509','0','0','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Emote'),
('5356502','9','1','0','0','0','100','0','0','0','0','0','0','','115','33643','33645','33646','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Random Sound'),
('5356503','9','0','0','0','0','100','0','1000','1000','0','0','0','','5','511','0','0','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Emote'),
('5356503','9','1','0','0','0','100','0','0','0','0','0','0','','115','33643','33645','33646','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Random Sound'),
('5356504','9','0','0','0','0','100','0','1000','1000','0','0','0','','5','543','0','0','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Emote'),
('5356504','9','1','0','0','0','100','0','0','0','0','0','0','','115','33643','33645','33646','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Random Sound'),
('5413001','9','0','0','0','0','100','0','7500','7500','0','0','0','','59','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Amberleaf Scamp - Set Walk'),
('5413001','9','1','0','0','0','100','0','7500','7500','0','0','0','','89','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Amberleaf Scamp - Cancel Random Move'),
('5413001','9','2','0','0','0','100','0','0','0','0','0','0','','69','2','0','0','0','0','0','8','0','0','0','1413.68','3540.36','87.3027','0','Amberleaf Scamp - Move to Pos'),
('5413002','9','0','0','0','0','100','0','6000','6000','0','0','0','','59','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Amberleaf Scamp - Set Walk'),
('5413002','9','1','0','0','0','100','0','6000','6000','0','0','0','','89','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Amberleaf Scamp - Cancel Random Move'),
('5413002','9','2','0','0','0','100','0','0','0','0','0','0','','69','2','0','0','0','0','0','8','0','0','0','1411.18','3538.36','87.5271','0','Amberleaf Scamp - Move to Pos'),
('5413003','9','0','0','0','0','100','0','6000','6000','0','0','0','','59','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Amberleaf Scamp - Set Walk'),
('5413003','9','1','0','0','0','100','0','6000','6000','0','0','0','','89','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Amberleaf Scamp - Cancel Random Move'),
('5413003','9','2','0','0','0','100','0','0','0','0','0','0','','69','2','0','0','0','0','0','8','0','0','0','1407.8','3538.77','87.9421','0','Amberleaf Scamp - Move to Pos'),
('5413004','9','0','0','0','0','100','0','3000','3000','0','0','0','','1','1','0','0','0','0','0','1','0','0','0','0','0','0','0','Amberleaf Scamp - Talk'),
('5413004','9','1','0','0','0','100','0','0','0','0','0','0','','17','30','0','0','0','0','0','1','0','0','0','0','0','0','0','Amberleaf Scamp - Set Emote State'),
('5413004','9','2','0','0','0','100','0','0','0','0','0','0','','69','1','0','0','0','0','0','8','0','0','0','1350.28','3588.94','89.1791','0','Amberleaf Scamp - Move to Pos'),
('5413005','9','0','0','0','0','100','0','5000','5000','0','0','0','','59','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Amberleaf Scamp - Set Walk'),
('5413005','9','1','0','0','0','100','0','5000','5000','0','0','0','','89','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Amberleaf Scamp - Cancel Random Move'),
('5413005','9','2','0','0','0','100','0','0','0','0','0','0','','69','2','0','0','0','0','0','8','0','0','0','1407.93','3534.29','86.8503','0','Amberleaf Scamp - Move to Pos'),
('5413006','9','0','0','0','0','100','0','3000','3000','0','0','0','','11','109137','0','0','0','0','0','1','0','0','0','0','0','0','0','Amberleaf Scamp - Cast Keg Carry'),
('5413006','9','1','0','0','0','100','0','1000','1000','0','0','0','','53','1','5413000','0','0','0','1','1','0','0','0','0','0','0','0','Amberleaf Scamp - Start WP'),
('5413007','9','0','0','0','0','100','0','3000','3000','0','0','0','','11','109137','0','0','0','0','0','1','0','0','0','0','0','0','0','Amberleaf Scamp - Cast Keg Carry'),
('5413007','9','1','0','0','0','100','0','1000','1000','0','0','0','','53','1','5413001','0','0','0','1','1','0','0','0','0','0','0','0','Amberleaf Scamp - Start WP'),
('5413008','9','0','0','0','0','100','0','3000','3000','0','0','0','','11','109137','0','0','0','0','0','1','0','0','0','0','0','0','0','Amberleaf Scamp - Cast Keg Carry'),
('5413008','9','1','0','0','0','100','0','1000','1000','0','0','0','','53','1','5413002','0','0','0','1','1','0','0','0','0','0','0','0','Amberleaf Scamp - Start WP'),
('5413009','9','0','0','0','0','100','0','3000','3000','0','0','0','','11','109137','0','0','0','0','0','1','0','0','0','0','0','0','0','Amberleaf Scamp - Cast Keg Carry'),
('5413009','9','1','0','0','0','100','0','1000','1000','0','0','0','','53','1','5413003','0','0','0','1','1','0','0','0','0','0','0','0','Amberleaf Scamp - Start WP'),
('5458601','9','0','0','0','0','100','0','0','0','0','0','0','','22','2','0','0','0','0','0','1','0','0','0','0','0','0','0','Huojin Trainee - Set Phase 2'),
('5458601','9','1','0','0','0','100','0','0','0','0','0','0','','17','30','0','0','0','0','0','1','0','0','0','0','0','0','0','Huojin Trainee - Clear Emote'),
('5458601','9','2','0','0','0','100','0','2000','2000','0','0','0','','5','2','0','0','0','0','0','1','0','0','0','0','0','0','0','Huojin Trainee - Play Emote'),
('5458701','9','0','0','0','0','100','0','0','0','0','0','0','','5','507','0','0','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Emote'),
('5458701','9','1','0','0','0','100','0','0','0','0','0','0','','115','33643','33645','33646','0','0','1','1','0','0','0','0','0','0','0','Tushui Trainee - Play Random Sound'),
('5458701','9','2','0','0','0','100','0','0','0','0','0','0','','45','2','1','0','0','0','0','11','0','15','0','0','0','0','0','Tushui Trainee - Set Data'),
('5458702','9','0','0','0','0','100','0','0','0','0','0','0','','5','508','0','0','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Emote'),
('5458702','9','1','0','0','0','100','0','0','0','0','0','0','','115','33643','33645','33646','0','0','1','1','0','0','0','0','0','0','0','Tushui Trainee - Play Random Sound'),
('5458702','9','2','0','0','0','100','0','0','0','0','0','0','','45','2','2','0','0','0','0','11','0','15','0','0','0','0','0','Tushui Trainee - Set Data'),
('5458703','9','0','0','0','0','100','0','0','0','0','0','0','','5','509','0','0','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Emote'),
('5458703','9','1','0','0','0','100','0','0','0','0','0','0','','115','33643','33645','33646','0','0','1','1','0','0','0','0','0','0','0','Tushui Trainee - Play Random Sound'),
('5458703','9','2','0','0','0','100','0','0','0','0','0','0','','45','2','3','0','0','0','0','11','0','15','0','0','0','0','0','Tushui Trainee - Set Data'),
('5458704','9','0','0','0','0','100','0','0','0','0','0','0','','5','511','0','0','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Emote'),
('5458704','9','1','0','0','0','100','0','0','0','0','0','0','','115','33643','33645','33646','0','0','1','1','0','0','0','0','0','0','0','Tushui Trainee - Play Random Sound'),
('5458704','9','2','0','0','0','100','0','0','0','0','0','0','','45','2','4','0','0','0','0','11','0','15','0','0','0','0','0','Tushui Trainee - Set Data'),
('5458705','9','0','0','0','0','100','0','0','0','0','0','0','','5','507','0','0','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Emote 507'),
('5458705','9','1','0','0','0','100','0','0','0','0','0','0','','115','33643','33645','33646','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Random Sound'),
('5458706','9','0','0','0','0','100','0','0','0','0','0','0','','5','508','0','0','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Emote 508'),
('5458706','9','1','0','0','0','100','0','0','0','0','0','0','','115','33643','33645','33646','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Random Sound'),
('5458707','9','0','0','0','0','100','0','0','0','0','0','0','','5','509','0','0','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Emote 509'),
('5458707','9','1','0','0','0','100','0','0','0','0','0','0','','115','33643','33645','33646','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Random Sound'),
('5458708','9','0','0','0','0','100','0','0','0','0','0','0','','5','511','0','0','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Emote 511'),
('5458708','9','1','0','0','0','100','0','0','0','0','0','0','','115','33643','33645','33646','0','0','0','1','0','0','0','0','0','0','0','Tushui Trainee - Play Random Sound'),
('5461101','9','0','0','0','0','100','0','0','0','0','0','0','','11','108938','0','0','0','0','0','5','0','0','0','0','0','0','0','Jaomin Ro - Cast Baby Elephant Takes a Bath'),
('5461102','9','0','0','0','0','100','0','0','0','0','0','0','','11','108955','0','0','0','0','0','1','0','0','0','0','0','0','0','Jaomin Ro - Cast Hawk Diving to Earth'),
('5461103','9','0','0','0','0','100','0','1000','1000','0','0','0','','90','1','0','0','0','0','0','1','0','0','0','0','0','0','0','Jaomin Ro - Set Bytes 1'),
('5463100','9','0','0','0','0','100','0','250','250','0','0','0','','8','2','0','0','0','0','0','1','0','0','0','0','0','0','0','Living Air - Set React State'),
('5463100','9','1','0','0','0','100','0','0','0','0','0','0','','49','0','0','0','0','0','0','7','0','0','0','0','0','0','0','Living Air - Start Attack'),
('5485600','9','0','0','0','0','100','0','3000','3000','0','0','0','','53','0','54856','0','0','0','0','1','0','0','0','0','0','0','0','Master Li Fei - Start WP'),
('5485601','9','0','0','0','0','100','0','6000','6000','0','0','0','','66','0','0','0','0','0','0','23','0','0','0','0','0','0','0','Master Li Fei - Set Orientation'),
('5485601','9','1','0','0','0','100','0','1000','1000','0','0','0','','1','0','0','0','0','0','0','23','0','0','0','0','0','0','0','Master Li Fei - Talk'),
('5485601','9','2','0','0','0','100','0','11000','11000','0','0','0','','1','1','0','0','0','0','0','23','0','0','0','0','0','0','0','Master Li Fei - Talk'),
('5485602','9','0','0','0','0','100','0','4000','4000','0','0','0','','66','0','0','0','0','0','0','23','0','0','0','0','0','0','0','Master Li Fei - Set Orientation'),
('5485602','9','1','0','0','0','100','0','2000','2000','0','0','0','','1','2','0','0','0','0','0','1','0','0','0','0','0','0','0','Master Li Fei - Talk'),
('5485602','9','2','0','0','0','100','0','12000','12000','0','0','0','','66','0','0','0','0','0','0','23','0','0','0','0','0','0','0','Master Li Fei - Set Orientation'),
('5485602','9','3','0','0','0','100','0','0','0','0','0','0','','1','3','0','0','0','0','0','23','0','0','0','0','0','0','0','Master Li Fei - Talk'),
('5485602','9','4','0','0','0','100','0','10000','10000','0','0','0','','1','4','0','0','0','0','0','23','0','0','0','0','0','0','0','Master Li Fei - Talk'),
('5485603','9','0','0','0','0','100','0','2000','2000','0','0','0','','66','0','0','0','0','0','0','23','0','0','0','0','0','0','0','Master Li Fei - Set Orientation'),
('5485603','9','1','0','0','0','100','0','2000','2000','0','0','0','','1','5','0','0','0','0','0','23','0','0','0','0','0','0','0','Master Li Fei - Talk'),
('5485603','9','2','0','0','0','100','0','6000','6000','0','0','0','','1','6','0','0','0','0','0','23','0','0','0','0','0','0','0','Master Li Fei - Talk'),
('5485603','9','3','0','0','0','100','0','0','0','0','0','0','','11','84034','0','0','0','0','0','23','0','0','0','0','0','0','0','Master Li Fei - Cast Update Zone Auras and Phase Shift'),
('5485603','9','4','0','0','0','100','0','0','0','0','0','0','','41','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Master Li Fei - Despawn'),
('5495800','9','0','0','0','0','100','0','250','250','0','0','0','','136','0','2','0','0','0','0','1','0','0','0','0','0','0','0','Huo - Set Movement Speed'),
('5495800','9','1','0','0','0','100','0','0','0','0','0','0','','66','0','0','0','0','0','0','8','0','0','0','0','0','0','6.21337','Huo - Set Orientation'),
('5495800','9','2','0','0','0','100','0','0','0','0','0','0','','11','109135','0','0','0','0','0','1','0','0','0','0','0','0','0','Huo - Cast Fire Form'),
('5495800','9','3','0','0','0','100','0','5000','5000','0','0','0','','69','2','0','0','0','0','0','8','0','0','0','950.007','3601','203.82','0','Huo - Move to Pos'),
('5547701','9','0','0','0','0','100','0','5000','5000','0','0','0','','1','11','0','0','0','0','0','7','0','0','0','0','0','0','0','Ji Firepaw - Talk'),
('5555800','9','0','0','0','0','100','0','2000','2000','0','0','0','','11','118035','0','0','0','0','0','1','0','0','0','0','0','0','0','Shu - Cast Water Spirit Laugh'),
('5555800','9','1','0','0','0','100','0','2000','2000','0','0','0','','53','1','5555800','0','0','0','0','1','0','0','0','0','0','0','0','Shu - Start WP'),
('5560101','9','0','0','0','0','100','0','0','0','0','0','0','','97','15','15','0','0','0','0','1','0','0','0','870.788','4128.51','204.465','0','Fe-Feng Wiseman - Jump to Pos'),
('5560101','9','1','0','0','0','100','0','5000','5000','0','0','0','','97','15','15','0','0','0','0','1','0','0','0','885.913','4136.3','209.251','0','Fe-Feng Wiseman - Jump to Pos'),
('5560101','9','2','0','0','0','100','0','6000','6000','0','0','0','','97','15','15','0','0','0','0','1','0','0','0','871.609','4129.59','204.369','0','Fe-Feng Wiseman - Jump to Pos'),
('5560101','9','3','0','0','0','100','0','5000','5000','0','0','0','','97','15','15','0','0','0','0','1','0','0','0','856.233','4122.32','198.307','0','Fe-Feng Wiseman - Jump to Pos'),
('5560102','9','0','0','0','0','100','0','0','0','0','0','0','','97','15','15','0','0','0','0','1','0','0','0','885.802','4214.34','204.627','0','Fe-Feng Wiseman - Jump to Pos'),
('5560102','9','1','0','0','0','100','0','3500','3500','0','0','0','','97','15','15','0','0','0','0','1','0','0','0','881.219','4222.63','213.961','0','Fe-Feng Wiseman - Jump to Pos'),
('5560102','9','2','0','0','0','100','0','5000','5000','0','0','0','','97','15','15','0','0','0','0','1','0','0','0','887.045','4215.36','204.606','0','Fe-Feng Wiseman - Jump to Pos'),
('5560102','9','3','0','0','0','100','0','3500','3500','0','0','0','','97','15','15','0','0','0','0','1','0','0','0','877.462','4209.25','200.89','0','Fe-Feng Wiseman - Jump to Pos'),
('5564900','9','0','0','0','0','100','0','1000','1000','0','0','0','','11','105895','2','0','0','0','0','23','0','0','0','0','0','0','0','Shang Xi\'s Hot Air Balloon - Cast Hot Air Balloon Credit'),
('5564900','9','1','0','0','0','100','0','0','0','0','0','0','','11','82721','2','0','0','0','0','23','0','0','0','0','0','0','0','Shang Xi\'s Hot Air Balloon - Cast Reverse Cast Ride Vehicle (HC) on Demon Creator'),
('5564900','9','2','0','0','0','100','0','0','0','0','0','0','','18','34816','1','0','0','0','0','1','0','0','0','0','0','0','0','Shang Xi\'s Hot Air Balloon - Set Unit Flags 2'),
('5564900','9','3','0','0','0','100','0','2000','2000','0','0','0','','11','106617','2','0','0','0','0','1','0','0','0','0','0','0','0','Shang Xi\'s Hot Air Balloon - Cast Reverse Cast Ride Vehicle, Seat 2'),
('5564900','9','4','0','0','0','100','0','0','0','0','0','0','','66','0','0','0','0','0','0','8','0','0','0','0','0','0','0.244346','Shang Xi\'s Hot Air Balloon - Set Orientation'),
('5564900','9','5','0','0','0','100','0','0','0','0','0','0','','19','32768','1','0','0','0','0','1','0','0','0','0','0','0','0','Shang Xi\'s Hot Air Balloon - Remove Unit Flags 2'),
('5564900','9','6','0','0','0','100','0','2000','2000','0','0','0','','53','1','55649','0','0','0','0','1','0','0','0','0','0','0','0','Shang Xi\'s Hot Air Balloon - Start WP'),
('5564900','9','7','0','0','0','100','0','0','0','0','0','0','','45','2','1','0','0','0','0','11','0','1','0','0','0','0','0','Shang Xi\'s Hot Air Balloon - Set Data'),
('5564900','9','8','0','0','0','100','0','0','0','0','0','0','','4','33099','0','0','0','0','0','23','0','0','0','0','0','0','0','Shang Xi\'s Hot Air Balloon - Play Sound'),
('5564901','9','0','0','0','0','100','0','14000','14000','0','0','0','','86','106759','2','23','0','0','0','23','0','0','0','0','0','0','0','Shang Xi\'s Hot Air Balloon - On WP Reached - Cross Cast General Trigger to Shen-zin Su'),
('5564902','9','0','0','0','0','100','0','14000','14000','0','0','0','','86','118571','2','23','0','0','0','23','0','0','0','0','0','0','0','Shang Xi\'s Hot Air Balloon - Cross Cast General Trigger to Shen-zin Su + Talk Anim 1'),
('5564902','9','1','0','0','0','100','0','15000','15000','0','0','0','','45','2','4','0','0','0','0','29','1','0','0','0','0','0','0','Shang Xi\'s Hot Air Balloon - Set Data'),
('5566501','9','0','0','0','0','100','0','1000','1000','0','0','0','','45','2','2','0','0','0','0','11','55744','50','0','0','0','0','0','Frightened Winds - Set Data'),
('5569400','9','0','0','0','0','100','0','1500','1500','0','0','0','','1','0','0','0','0','0','0','7','0','0','0','0','0','0','0','Ji Firepaw - Talk'),
('5569400','9','1','0','0','0','100','0','3000','3000','0','0','0','','53','1','55694','0','0','0','0','1','0','0','0','0','0','0','0','Ji Firepaw - Start WP'),
('5574400','9','0','0','0','0','100','0','250','250','0','0','0','','66','0','0','0','0','0','0','8','0','0','0','0','0','0','2.42601','Aysa Cloudsinger - Movement Inform - Set Orientation'),
('5615900','9','0','0','0','0','100','0','2000','2000','0','0','0','','1','0','0','0','0','0','0','7','0','0','0','0','0','0','0','Master Shang - Talk'),
('5615900','9','1','0','0','0','100','0','3000','3000','0','0','0','','53','1','56159','0','0','0','0','1','0','0','0','0','0','0','0','Master Shang - Start WP'),
('5623600','9','0','0','0','0','100','0','500','500','0','0','0','','66','0','0','0','0','0','0','8','0','0','0','0','0','0','0.401426','Injured Sailor - Set Orientation'),
('5623600','9','1','0','0','0','100','0','0','0','0','0','0','','90','3','0','0','0','0','0','1','0','0','0','0','0','0','0','Injured Sailor - Set Bytes 1'),
('5623600','9','2','0','0','0','100','0','5000','5000','0','0','0','','41','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Injured Sailor - Despawn'),
('5639301','9','0','0','0','0','100','0','4000','4000','0','0','0','','5','21','0','0','0','0','0','1','0','0','0','0','0','0','0','Excited Onlooker - Play Emote'),
('5639302','9','0','0','0','0','100','0','5000','5000','0','0','0','','5','4','0','0','0','0','0','1','0','0','0','0','0','0','0','Excited Onlooker - Play Emote'),
('5639303','9','0','0','0','0','100','0','6000','6000','0','0','0','','5','21','0','0','0','0','0','1','0','0','0','0','0','0','0','Excited Onlooker - Play Emote'),
('5639304','9','0','0','0','0','100','0','2000','2000','0','0','0','','5','4','0','0','0','0','0','1','0','0','0','0','0','0','0','Excited Onlooker - Play Emote'),
('5639304','9','1','0','0','0','100','0','3500','3500','0','0','0','','5','21','0','0','0','0','0','1','0','0','0','0','0','0','0','Excited Onlooker - Play Emote'),
('5639305','9','0','0','0','0','100','0','3000','3000','0','0','0','','5','21','0','0','0','0','0','1','0','0','0','0','0','0','0','Excited Onlooker - Play Emote'),
('5639306','9','0','0','0','0','100','0','2500','2500','0','0','0','','5','18','0','0','0','0','0','1','0','0','0','0','0','0','0','Excited Onlooker - Play Emote'),
('5639307','9','0','0','0','0','100','0','3500','3500','0','0','0','','5','18','0','0','0','0','0','1','0','0','0','0','0','0','0','Excited Onlooker - Play Emote'),
('5639401','9','0','0','0','0','100','0','3000','3000','0','0','0','','53','1','5639403','0','0','0','0','1','0','0','0','0','0','0','0','Mesmerized Child - Start WP'),
('5639402','9','0','0','0','0','100','0','3000','3000','0','0','0','','53','1','5639404','0','0','0','0','1','0','0','0','0','0','0','0','Mesmerized Child - Start WP'),
('5639403','9','0','0','0','0','100','0','1000','1000','0','0','0','','5','18','0','0','0','0','0','1','0','0','0','0','0','0','0','Mesmerized Child - Play Emote'),
('5650300','9','1','0','0','0','100','0','4000','4000','0','0','0','','1','0','0','0','0','0','0','7','0','0','0','0','0','0','0','Min Dimwind - Talk'),
('5650300','9','2','0','0','0','100','0','4000','4000','0','0','0','','1','1','0','0','0','0','0','7','0','0','0','0','0','0','0','Min Dimwind - Talk'),
('5650300','9','3','0','0','0','100','0','3000','3000','0','0','0','','53','1','56503','0','29419','0','0','1','0','0','0','0','0','0','0','Min Dimwind - WP start'),
('5656600','9','0','0','0','0','100','0','8000','8000','0','0','0','','11','105893','2','0','0','0','0','1','0','0','0','0','0','0','0','Earth Central Temple Turn-in Controller - Cast Trigger Spirit of Earth at Temple'),
('5656600','9','1','0','0','0','100','0','0','0','0','0','0','','11','106688','2','0','0','0','0','1','0','0','0','0','0','0','0','Earth Central Temple Turn-in Controller - Cast Trigger Spirit of Water at Temple'),
('5666000','9','0','0','0','0','100','0','6000','6000','0','0','0','','1','2','0','0','0','0','0','7','0','0','0','0','0','0','0','Ji Firepaw - Talk'),
('5666001','9','0','0','0','0','100','0','7000','7000','0','0','0','','1','6','0','0','0','0','0','7','0','0','0','0','0','0','0','Ji Firepaw - Talk'),
('5666100','9','0','0','0','0','100','0','3000','3000','0','0','0','','1','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Aysa Cloudsinger - Talk'),
('5666101','9','0','0','0','0','100','0','16000','16000','0','0','0','','1','6','0','0','0','0','0','1','0','0','0','0','0','0','0','Aysa Cloudsinger - Talk'),
('5666101','9','1','0','0','0','100','0','6000','6000','0','0','0','','86','118571','2','23','0','0','0','23','0','0','0','0','0','0','0','Aysa Cloudsinger - Cross Cast General Trigger to Shen-zin Su + Talk Anim 1'),
('5668600','9','0','0','0','0','100','0','1000','1000','0','0','0','','4','33097','0','0','0','0','0','7','0','0','0','0','0','0','0','Master Shang - Play Sound'),
('5668600','9','1','0','0','0','100','0','0','0','0','0','0','','1','0','0','0','0','0','0','7','0','0','0','0','0','0','0','Master Shang - Talk'),
('5668600','9','2','0','0','0','100','0','6500','6500','0','0','0','','5','396','0','0','0','0','0','1','0','0','0','0','0','0','0','Master Shang - Play Emote'),
('5668600','9','3','0','0','0','100','0','5500','5500','0','0','0','','1','1','0','0','0','0','0','7','0','0','0','0','0','0','0','Master Shang - Talk'),
('5668600','9','4','0','0','0','100','0','6500','6500','0','0','0','','136','0','1','5','0','0','0','1','0','0','0','0','0','0','0','Master Shang - Set Movement Speed'),
('5668600','9','5','0','0','0','100','0','0','0','0','0','0','','53','0','56686','0','0','0','0','1','0','0','0','0','0','0','0','Master Shang - Start WP'),
('5668601','9','0','0','0','0','100','0','6000','6000','0','0','0','','1','2','0','0','0','0','0','23','0','0','0','0','0','0','0','Master Shang - Talk'),
('5668602','9','0','0','0','0','100','0','4000','4000','0','0','0','','5','25','0','0','0','0','0','1','0','0','0','0','0','0','0','Master Shang - Play Emote'),
('5668602','9','1','0','0','0','100','0','2500','2500','0','0','0','','5','25','0','0','0','0','0','1','0','0','0','0','0','0','0','Master Shang - Play Emote'),
('5668603','9','0','0','0','0','100','0','8000','8000','0','0','0','','5','1','0','0','0','0','0','1','0','0','0','0','0','0','0','Master Shang - Play Emote'),
('5668603','9','1','0','0','0','100','0','7000','7000','0','0','0','','1','5','0','0','0','0','0','23','0','0','0','0','0','0','0','Master Shang - Talk'),
('5668603','9','2','0','0','0','100','0','5500','5500','0','0','0','','90','8','0','0','0','0','0','1','0','0','0','0','0','0','0','Master Shang - Set Bytes1'),
('5668603','9','3','0','0','0','100','0','2500','2500','0','0','0','','11','128851','0','0','0','0','0','1','0','0','0','0','0','0','0','Master Shang - Cast Master Shang Spirit Transform'),
('5668603','9','4','0','0','0','100','0','1500','1500','0','0','0','','11','109336','0','0','0','0','0','1','0','0','0','0','0','0','0','Master Shang - Cast Trigger Walking Stick Blossom'),
('5668603','9','5','0','0','0','100','0','0','0','0','0','0','','11','106625','0','0','0','0','0','23','0','0','0','0','0','0','0','Master Shang - Cast Planting Stave Credit'),
('5668603','9','6','0','0','0','100','0','0','0','0','0','0','','41','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Master Shang - Despawn'),
('5673001','9','0','0','0','0','100','0','2000','2000','0','0','0','','53','1','5673004','0','0','0','0','1','0','0','0','0','0','0','0','Fe-Feng Brewthief - Start WP'),
('5673002','9','0','0','0','0','100','0','2000','2000','0','0','0','','11','107747','0','0','0','0','0','1','0','0','0','0','0','0','0','Fe-Feng Brewthief - Cast Stolen Brew'),
('5673002','9','1','0','0','0','100','0','2000','2000','0','0','0','','97','15','10','0','0','0','0','1','0','0','0','1395.43','3743.21','84.791','0','Fe-Feng Brewthief - Jump to Pos'),
('5673002','9','2','0','0','0','100','0','1500','1500','0','0','0','','53','1','5673007','0','0','0','0','1','0','0','0','0','0','0','0','Fe-Feng Brewthief - Start WP'),
('5673003','9','0','0','0','0','100','0','2000','2000','0','0','0','','11','107747','0','0','0','0','0','1','0','0','0','0','0','0','0','Fe-Feng Brewthief - Cast Stolen Brew'),
('5673003','9','1','0','0','0','100','0','2000','2000','0','0','0','','97','15','10','0','0','0','0','1','0','0','0','1393.03','3746.33','84.6671','0','Fe-Feng Brewthief - Jump to Pos'),
('5673003','9','2','0','0','0','100','0','1500','1500','0','0','0','','53','1','5673005','0','0','0','0','1','0','0','0','0','0','0','0','Fe-Feng Brewthief - Start WP'),
('5720800','9','0','0','0','0','100','0','1000','1000','0','0','0','','11','108627','2','0','0','0','0','1','0','0','0','0','0','0','0','Delivery Cart - Cast Ox Cart Rope Left'),
('5720800','9','1','0','0','0','100','0','5000','5000','0','0','0','','45','2','2','0','0','0','0','12','1','0','0','0','0','0','0','Delivery Cart - Set Data'),
('5720800','9','2','0','0','0','100','0','0','0','0','0','0','','53','1','57208','0','0','0','0','1','0','0','0','0','0','0','0','Delivery Cart - Start WP'),
('5763800','9','0','0','0','0','100','0','1000','1000','0','0','0','','1','0','0','0','0','0','0','7','0','0','0','0','0','0','0','Jojo Ironbrow - Talk'),
('5763800','9','1','0','0','0','100','0','2000','2000','0','0','0','','128','1','1','0','0','0','0','1','0','0','0','0','0','0','0','Jojo Ironbrow - Set AI AnimKit'),
('5763800','9','2','0','0','0','100','0','0','0','0','0','0','','69','1','0','0','0','0','0','8','0','0','0','1039.19','3284.26','129.397','0','Jojo Ironbrow - Move to Pos'),
('5763800','9','3','0','0','0','100','0','3200','3200','0','0','0','','11','129272','0','0','0','0','0','1','0','0','0','0','0','0','0','Jojo Ironbrow - Cast Jojo Headbash, Reeds Cast'),
('5763800','9','4','0','0','0','100','0','2500','2500','0','0','0','','1','1','0','0','0','0','0','7','0','0','0','0','0','0','0','Jojo Ironbrow - Talk'),
('5763800','9','5','0','0','0','100','0','0','0','0','0','0','','45','1','1','0','0','0','0','11','0','10','0','0','0','0','0','Jojo Ironbrow - Set Data'),
('5763800','9','6','0','0','0','100','0','8000','8000','0','0','0','','53','0','57638','0','0','0','0','1','0','0','0','0','0','0','0','Jojo Ironbrow - Start WP'),
('5766900','9','0','0','0','0','100','0','1000','1000','0','0','0','','1','0','0','0','0','0','0','7','0','0','0','0','0','0','0','Jojo Ironbrow - Talk'),
('5766900','9','1','0','0','0','100','0','7000','7000','0','0','0','','128','1','1','0','0','0','0','1','0','0','0','0','0','0','0','Jojo Ironbrow - Set AI AnimKit'),
('5766900','9','2','0','0','0','100','0','0','0','0','0','0','','69','1','0','0','0','0','0','8','0','0','0','599.215','3132.27','89.0657','0','Jojo Ironbrow - Move to Pos'),
('5766900','9','3','0','0','0','100','0','5000','5000','0','0','0','','11','129293','0','0','0','0','0','1','0','0','0','0','0','0','0','Jojo Ironbrow - Cast Jojo Headbash, Planks Cast'),
('5766900','9','4','0','0','0','100','0','2500','2500','0','0','0','','1','1','0','0','0','0','0','7','0','0','0','0','0','0','0','Jojo Ironbrow - Talk'),
('5766900','9','5','0','0','0','100','0','0','0','0','0','0','','45','1','1','0','0','0','0','11','0','10','0','0','0','0','0','Jojo Ironbrow - Set Data'),
('5766900','9','6','0','0','0','100','0','8000','8000','0','0','0','','53','0','57669','0','0','0','0','1','0','0','0','0','0','0','0','Jojo Ironbrow - Start WP'),
('5767000','9','0','0','0','0','100','0','1000','1000','0','0','0','','1','0','0','0','0','0','0','7','0','0','0','0','0','0','0','Jojo Ironbrow - Talk'),
('5767000','9','1','0','0','0','100','0','2500','2500','0','0','0','','128','1','1','0','0','0','0','1','0','0','0','0','0','0','0','Jojo Ironbrow - Set AI AnimKit'),
('5767000','9','2','0','0','0','100','0','0','0','0','0','0','','69','1','0','0','0','0','0','8','0','0','0','1077.31','4179.94','205.774','0','Jojo Ironbrow - Move to Pos'),
('5767000','9','3','0','0','0','100','0','3000','3000','0','0','0','','11','129294','0','0','0','0','0','1','0','0','0','0','0','0','0','Jojo Ironbrow - Cast Jojo Headbash, Blocks Cast'),
('5767000','9','4','0','0','0','100','0','2500','2500','0','0','0','','1','1','0','0','0','0','0','7','0','0','0','0','0','0','0','Jojo Ironbrow - Talk'),
('5767000','9','5','0','0','0','100','0','0','0','0','0','0','','45','1','1','0','0','0','0','11','0','10','0','0','0','0','0','Jojo Ironbrow - Set Data'),
('5769200','9','0','0','0','0','100','0','1500','1500','0','0','0','','1','0','0','0','0','0','0','7','0','0','0','0','0','0','0','Jojo Ironbrow - Talk'),
('5769200','9','1','0','0','0','100','0','2000','2000','0','0','0','','128','1','1','0','0','0','0','1','0','0','0','0','0','0','0','Jojo Ironbrow - Set AI AnimKit'),
('5769200','9','2','0','0','0','100','0','0','0','0','0','0','','69','1','0','0','0','0','0','8','0','0','0','1077.47','4180.03','205.793','0','Jojo Ironbrow - Move to Pos'),
('5769200','9','3','0','0','0','100','0','5000','5000','0','0','0','','1','1','0','0','0','0','0','7','0','0','0','0','0','0','0','Jojo Ironbrow - Talk'),
('5769200','9','4','0','0','0','100','0','6000','6000','0','0','0','','11','129297','0','0','0','0','0','1','0','0','0','0','0','0','0','Jojo Ironbrow - Cast Jojo Headbash, Pillar Cast'),
('5769200','9','5','0','0','0','100','0','0','0','0','0','0','','128','1078','1','0','0','0','0','1','0','0','0','0','0','0','0','Jojo Ironbrow - Set AI AnimKit'),
('5769200','9','6','0','0','0','100','0','0','0','0','0','0','','45','2','2','0','0','0','0','11','0','10','0','0','0','0','0','Jojo Ironbrow - Set Data'),
('5769200','9','7','0','0','0','100','0','2000','2000','0','0','0','','1','2','0','0','0','0','0','7','0','0','0','0','0','0','0','Jojo Ironbrow - Talk'),
('5769200','9','8','0','0','0','100','0','6000','6000','0','0','0','','1','3','0','0','0','0','0','7','0','0','0','0','0','0','0','Jojo Ironbrow - Talk'),
('5769200','9','9','0','0','0','100','0','2000','2000','0','0','0','','136','0','0','7','0','0','0','1','0','0','0','0','0','0','0','Jojo Ironbrow - Set Movement Speed'),
('5769200','9','10','0','0','0','100','0','0','0','0','0','0','','69','2','0','0','0','0','0','8','0','0','0','1078.09','4177.64','205.742','0','Jojo Ironbrow - Move to Pos'),
('5774000','9','0','0','0','0','100','0','1000','1000','0','0','0','','11','108627','2','0','0','0','0','1','0','0','0','0','0','0','0','Delivery Cart - Cast Ox Cart Rope Left'),
('5774000','9','2','0','0','0','100','0','5000','5000','0','0','0','','45','2','2','0','0','0','0','12','1','0','0','0','0','0','0','Delivery Cart - Set Data'),
('5774000','9','3','0','0','0','100','0','0','0','0','0','0','','53','1','57740','0','0','0','0','1','0','0','0','0','0','0','0','Delivery Cart - Start WP'),
('5774000','9','4','0','0','0','100','0','0','0','0','0','0','','19','32768','0','0','0','0','0','1','0','0','0','0','0','0','0','Delivery Cart - Remove Unit Flag'),
('5774801','9','0','0','0','0','100','0','0','0','0','0','0','','10','509','0','0','0','0','0','1','0','0','0','0','0','0','0','Instructor Qun - Play Emote'),
('5774801','9','1','0','0','0','100','0','0','0','0','0','0','','115','33643','33645','33646','0','0','1','1','0','0','0','0','0','0','0','Instructor Qun - Play Random Sound'),
('5774801','9','2','0','0','0','100','0','0','0','0','0','0','','45','3','2','0','0','0','0','11','0','15','0','0','0','0','0','Instructor Qun - Set Data'),
('5774802','9','0','0','0','0','100','0','0','0','0','0','0','','10','511','0','0','0','0','0','1','0','0','0','0','0','0','0','Instructor Qun - Play Emote'),
('5774802','9','1','0','0','0','100','0','0','0','0','0','0','','115','33643','33645','33646','0','0','1','1','0','0','0','0','0','0','0','Instructor Qun - Play Random Sound'),
('5774802','9','2','0','0','0','100','0','0','0','0','0','0','','45','3','3','0','0','0','0','11','0','15','0','0','0','0','0','Instructor Qun - Set Data'),
('5774803','9','0','0','0','0','100','0','0','0','0','0','0','','10','543','0','0','0','0','0','1','0','0','0','0','0','0','0','Instructor Qun - Play Emote'),
('5774803','9','1','0','0','0','100','0','0','0','0','0','0','','115','33643','33645','33646','0','0','1','1','0','0','0','0','0','0','0','Instructor Qun - Play Random Sound'),
('5774803','9','2','0','0','0','100','0','0','0','0','0','0','','45','3','4','0','0','0','0','11','0','15','0','0','0','0','0','Instructor Qun - Set Data'),
('5780300','9','0','0','0','0','100','0','2000','2000','0','0','0','','68','117','0','0','0','0','0','7','0','0','0','0','0','0','0','Ship Cinematic Controller - Play Movie'),
('5780300','9','1','0','0','0','100','0','2000','2000','0','0','0','','85','117615','2','0','0','0','0','7','0','0','0','0','0','0','0','Ship Cinematic Controller - Invoker Cast Cinematic End Credit/Teleport'),
('5949600','9','0','0','0','0','100','0','1000','1000','0','0','0','','11','108627','2','0','0','0','0','1','0','0','0','0','0','0','0','Delivery Cart - Cast Ox Cart Rope Left'),
('5949600','9','1','0','0','0','100','0','0','0','0','0','0','','86','63313','2','11','60916','20','0','1','0','0','0','0','0','0','0','Delivery Cart - Cross Cast Ride Vehicle'),
('5949600','9','2','0','0','0','100','0','5000','5000','0','0','0','','45','2','2','0','0','0','0','12','1','0','0','0','0','0','0','Delivery Cart - Set Data'),
('5949600','9','3','0','0','0','100','0','0','0','0','0','0','','53','1','59496','0','0','0','0','1','0','0','0','0','0','0','0','Delivery Cart - Start WP'),
('5949600','9','4','0','0','0','100','0','0','0','0','0','0','','19','32768','0','0','0','0','0','1','0','0','0','0','0','0','0','Delivery Cart - Remove Unit Flag'),
('5965200','9','0','0','0','0','100','0','1000','1000','0','0','0','','1','0','0','0','0','0','0','7','0','0','0','0','0','0','0','Alysa Cloudsinger - Talk'),
('5965200','9','1','0','0','0','100','0','3000','3000','0','0','0','','97','15','15','0','0','0','0','1','0','0','0','1196.72','3492.85','90.9836','0','Alysa Cloudsinger - Jump to Pos'),
('5965200','9','2','0','0','0','100','0','1500','1500','0','0','0','','97','15','15','0','0','0','0','1','0','0','0','1192.29','3478.69','108.788','0','Alysa Cloudsinger - Jump to Pos'),
('5965200','9','3','0','0','0','100','0','2000','2000','0','0','0','','97','15','15','0','0','0','0','1','0','0','0','1197.99','3460.63','103.04','0','Alysa Cloudsinger - Jump to Pos'),
('5965200','9','4','0','0','0','100','0','2000','2000','0','0','0','','53','1','59652','0','0','0','0','1','0','0','0','0','0','0','0','Alysa Cloudsinger - Movement Inform - Start WP'),
('5998600','9','0','0','0','0','100','0','1500','1500','0','0','0','','9','0','0','0','0','0','0','20','211294','3','0','0','0','0','0','Aysa Cloudsinger - Activate Gameobject'),
('5998600','9','1','0','0','0','100','0','1000','1000','0','0','0','','17','30','0','0','0','0','0','1','0','0','0','0','0','0','0','Aysa Cloudsinger - Set Emote State'),
('5998600','9','2','0','0','0','100','0','0','0','0','0','0','','11','56913','2','0','0','0','0','1','0','0','0','0','0','0','0','Aysa Cloudsinger - Cast CSA Dummy Effect Self'),
('5998600','9','3','0','0','0','100','0','500','500','0','0','0','','45','1','1','0','0','0','0','11','0','5','0','0','0','0','0','Aysa Cloudsinger - Set Data'),
('5998600','9','4','0','0','0','100','0','0','0','0','0','0','','53','1','59986','0','0','0','0','1','0','0','0','0','0','0','0','Aysa Cloudsinger - Start WP'),
('5998600','9','5','0','0','0','100','0','500','500','0','0','0','','41','0','0','0','0','0','0','20','211294','3','0','0','0','0','0','Aysa Cloudsinger - Despawn Door'),
('5998601','9','0','0','0','0','100','0','0','0','0','0','0','','22','5','0','0','0','0','0','1','0','0','0','0','0','0','0','Aysa Cloudsinger - Set Event Phase 5'),
('5998601','9','1','0','0','0','100','0','0','0','0','0','0','','66','0','0','0','0','0','0','8','0','0','0','0','0','0','3.31249','Aysa Cloudsinger - Set Orientation'),
('5998601','9','2','0','0','0','100','0','2000','2000','0','0','0','','59','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Aysa Cloudsinger - Set Walk'),
('5998601','9','3','0','0','0','100','0','0','0','0','0','0','','69','20','0','0','0','0','0','8','0','0','0','568.724','3584.41','94.7694','0','Aysa Cloudsinger - Move to Pos'),
('5998602','9','0','0','0','0','100','0','2000','2000','0','0','0','','1','1','0','0','0','0','0','23','0','0','0','0','0','0','0','Aysa Cloudsinger - Talk'),
('5998602','9','1','0','0','0','100','0','2500','2500','0','0','0','','1','2','0','0','0','0','0','23','0','0','0','0','0','0','0','Aysa Cloudsinger - Talk'),
('5998602','9','2','0','0','0','100','0','2000','2000','0','0','0','','45','2','2','0','0','0','0','11','59988','10','0','0','0','0','0','Aysa Cloudsinger - Set Data'),
('5998603','9','0','0','0','0','100','0','0','0','0','0','0','','66','0','0','0','0','0','0','8','0','0','0','0','0','0','1.75196','Aysa Cloudsinger - Set Orientation'),
('5998603','9','1','0','0','0','100','0','0','0','0','0','0','','100','1','0','0','0','0','0','11','0','10','0','0','0','0','0','Aysa Cloudsinger - Send Target'),
('5998603','9','2','0','0','0','100','0','0','0','0','0','0','','45','6','1','0','0','0','0','11','60042','5','0','0','0','0','0','Aysa Cloudsinger - Set Data'),
('5998603','9','3','0','0','0','100','0','26000','26000','0','0','0','','1','3','0','0','0','0','0','1','0','0','0','0','0','0','0','Aysa Cloudsinger - Talk'),
('5998603','9','4','0','0','0','100','0','8000','8000','0','0','0','','53','1','5998601','0','0','0','0','1','0','0','0','0','0','0','0','Aysa Cloudsinger - Start WP'),
('5998603','9','5','0','0','0','100','0','1000','1000','0','0','0','','45','6','3','0','0','0','0','11','0','15','0','0','0','0','0','Aysa Cloudsinger - Set Data'),
('5998800','9','0','0','0','0','100','0','0','0','0','0','0','','66','0','0','0','0','0','0','8','0','0','0','0','0','0','3.05433','Ji Firepaw - Set Orientation'),
('5998800','9','1','0','0','0','100','0','0','0','0','0','0','','17','433','0','0','0','0','0','1','0','0','0','0','0','0','0','Ji Firepaw - Set Emote State'),
('5998800','9','2','0','0','0','100','0','2000','2000','0','0','0','','1','1','0','0','0','0','0','23','0','0','0','0','0','0','0','Ji Firepaw - Talk'),
('5998800','9','3','0','0','0','100','0','4000','4000','0','0','0','','137','15801','0','0','0','0','0','1','0','0','0','0','0','0','0','Ji Firepaw - Play Spell Visual Kit'),
('5998800','9','4','0','0','0','100','0','8000','8000','0','0','0','','45','3','3','0','0','0','0','11','59989','10','0','0','0','0','0','Ji Firepaw - Set Data'),
('5998800','9','5','0','0','0','100','0','0','0','0','0','0','','59','1','0','0','0','0','0','1','0','0','0','0','0','0','0','Ji Firepaw - Set Run'),
('5998900','9','0','0','0','0','100','0','1000','1000','0','0','0','','45','4','4','0','0','0','0','11','0','10','0','0','0','0','0','Jojo Ironbrow - Set Data'),
('5998900','9','1','0','0','0','100','0','0','0','0','0','0','','59','1','0','0','0','0','0','1','0','0','0','0','0','0','0','Jojo Ironbrow - Set Run'),
('5998900','9','2','0','0','0','100','0','1500','1500','0','0','0','','11','115443','2','0','0','0','0','23','0','0','0','0','0','0','0','Jojo Ironbrow - Cast Pei-Wu Gate Entrance Credit'),
('5998900','9','3','0','0','0','100','0','0','0','0','0','0','','11','84034','2','0','0','0','0','23','0','0','0','0','0','0','0','Jojo Ironbrow - Cast Update Zone Auras and Phase Shift (Demon Creator)'),
('5998900','9','4','0','0','0','100','0','0','0','0','0','0','','69','20','0','0','0','0','0','8','0','0','0','569.903','3582.06','95.0268','0','Jojo Ironbrow - Move to Pos'),
('5998901','9','0','0','0','0','100','0','2500','2500','0','0','0','','9','0','0','0','0','0','0','20','211298','3','0','0','0','0','0','Jojo Ironbrow - Activate Gameobject'),
('5998901','9','1','0','0','0','100','0','500','500','0','0','0','','11','56913','2','0','0','0','0','1','0','0','0','0','0','0','0','Jojo Ironbrow - Cast CSA Dummy Effect Self'),
('5998901','9','2','0','0','0','100','0','0','0','0','0','0','','45','5','5','0','0','0','0','11','0','10','0','0','0','0','0','Jojo Ironbrow - Set Data'),
('5998901','9','3','0','0','0','100','0','0','0','0','0','0','','53','1','5998900','0','0','0','0','1','0','0','0','0','0','0','0','Jojo Ironbrow - Start WP'),
('6024900','9','0','0','0','0','100','0','9000','9000','0','0','0','','1','0','0','0','0','0','0','7','0','0','0','0','0','0','0','Deng - Talk'),
('6024900','9','1','0','0','0','100','0','10000','10000','0','0','0','','1','1','0','0','0','0','0','7','0','0','0','0','0','0','0','Deng - Talk'),
('6024900','9','2','0','0','0','100','0','19000','19000','0','0','0','','1','2','0','0','0','0','0','7','0','0','0','0','0','0','0','Deng - Talk'),
('6024900','9','3','0','0','0','100','0','2000','2000','0','0','0','','89','10','0','0','0','0','0','1','0','0','0','0','0','0','0','Deng - Random Move'),
('6024900','9','4','0','0','0','100','0','4000','4000','0','0','0','','41','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Deng - Despawn'),
('6025000','9','0','0','0','0','100','0','3000','3000','0','0','0','','1','0','0','0','0','0','0','7','0','0','0','0','0','0','0','Cai - Talk'),
('6025000','9','1','0','0','0','100','0','10000','10000','0','0','0','','1','1','0','0','0','0','0','7','0','0','0','0','0','0','0','Cai - Talk'),
('6025000','9','2','0','0','0','100','0','14000','14000','0','0','0','','1','2','0','0','0','0','0','7','0','0','0','0','0','0','0','Cai - Talk'),
('6025000','9','3','0','0','0','100','0','10000','10000','0','0','0','','1','3','0','0','0','0','0','7','0','0','0','0','0','0','0','Cai - Talk'),
('6025000','9','4','0','0','0','100','0','2000','2000','0','0','0','','89','10','0','0','0','0','0','1','0','0','0','0','0','0','0','Cai - Random Move'),
('6025000','9','5','0','0','0','100','0','6000','6000','0','0','0','','41','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Cai - Despawn'),
('6048800','9','0','0','0','0','100','0','5000','5000','0','0','0','','11','117057','2','0','0','0','0','1','0','0','0','0','0','0','0','Water Spout - Cast Water Spout Geyser Aura'),
('6048800','9','1','0','0','0','100','0','0','0','0','0','0','','11','116696','2','0','0','0','0','1','0','0','0','0','0','0','0','Water Spout - Cast Water Spout Burst'),
('6048800','9','2','0','0','0','100','0','0','0','0','0','0','','28','116695','0','0','0','0','0','1','0','0','0','0','0','0','0','Water Spout - Remove Aura'),
('6048800','9','3','0','0','0','100','0','3000','3000','0','0','0','','41','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Water Spout - Despawn'),
('6072900','9','0','0','0','0','100','0','1000','1000','0','0','0','','1','0','0','0','0','0','0','7','0','0','0','0','0','0','0','Aysa Cloudsinger - Talk'),
('6072900','9','1','0','0','0','100','0','3000','3000','0','0','0','','53','1','60729','0','0','0','0','1','0','0','0','0','0','0','0','Aysa Cloudsinger - Start WP'),
('6074100','9','0','0','0','0','100','0','5000','5000','0','0','0','','1','0','0','0','0','0','0','7','0','0','0','0','0','0','0','Ji Firepaw - Talk'),
('6074100','9','1','0','0','0','100','0','13000','13000','0','0','0','','1','1','0','0','0','0','0','7','0','0','0','0','0','0','0','Ji Firepaw - Talk'),
('6074100','9','2','0','0','0','100','0','14000','14000','0','0','0','','1','2','0','0','0','0','0','7','0','0','0','0','0','0','0','Ji Firepaw - Talk'),
('6074100','9','3','0','0','0','100','0','13000','13000','0','0','0','','69','1','0','0','0','0','0','8','0','0','0','228.819','4006.37','87.1423','0','Ji Firepaw - Move to Pos'),
('6074100','9','4','0','0','0','100','0','3000','3000','0','0','0','','5','432','0','0','0','0','0','1','0','0','0','0','0','0','0','Ji Firepaw - Play Emote'),
('6074100','9','5','0','0','0','100','0','1500','1500','0','0','0','','45','2','2','0','0','0','0','11','60729','5','0','0','0','0','0','Ji Firepaw - Set Data'),
('6074100','9','6','0','0','0','100','0','0','0','0','0','0','','59','1','0','0','0','0','0','1','0','0','0','0','0','0','0','Ji Firepaw - Set Run'),
('6074100','9','7','0','0','0','100','0','0','0','0','0','0','','69','2','0','0','0','0','0','8','0','0','0','231.112','3985.74','86.4415','0','Ji Firepaw - Move to Pos'),
('6090000','9','0','0','0','0','100','0','1000','1000','0','0','0','','1','0','0','0','0','0','0','23','0','0','0','0','0','0','0','Ji Firepaw - Talk'),
('6090000','9','1','0','0','0','100','0','5000','5000','0','0','0','','53','1','60900','0','0','0','0','1','0','0','0','0','0','0','0','Ji Firepaw - Start WP'),
('6091600','9','0','0','0','0','100','0','0','0','0','0','0','','28','42386','0','0','0','0','0','1','0','0','0','0','0','0','0','Wugou - Remove Aura'),
('6091600','9','1','0','0','0','100','0','1000','1000','0','0','0','','5','53','0','0','0','0','0','1','0','0','0','0','0','0','0','Wugou - Play Emote'),
('6091600','9','2','0','0','0','100','0','2500','2500','0','0','0','','29','0','0','0','0','0','0','7','0','0','0','0','0','0','0','Wugou - Follow'),
('6091601','9','0','0','0','0','100','0','250','250','0','0','0','','66','0','0','0','0','0','0','8','0','0','0','0','0','0','3.9968','Wugou - Set Orientation'),
('6091601','9','1','0','0','0','100','0','0','0','0','0','0','','28','118036','0','0','0','0','0','23','0','0','0','0','0','0','0','Wugou - Remove Aura'),
('6091601','9','2','0','0','0','100','0','0','0','0','0','0','','44','1029','1','0','0','0','0','23','0','0','0','0','0','0','0','Wugou - Add Phase'),
('6091601','9','3','0','0','0','100','0','0','0','0','0','0','','41','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Wugou - Despawn'),
('6112600','9','0','0','0','0','100','0','8000','8000','0','0','0','','1','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Aysa Cludsinger - Talk'),
('6112600','9','1','0','0','0','100','0','3000','3000','0','0','0','','53','1','6112601','0','0','0','0','1','0','0','0','0','0','0','0','Aysa Cludsinger - Start WP'),
('6112700','9','0','0','0','0','100','0','10000','10000','0','0','0','','1','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Ji Firepaw - Talk'),
('6112700','9','1','0','0','0','100','0','0','0','0','0','0','','53','1','6112701','0','0','0','0','1','0','0','0','0','0','0','0','Ji Firepaw - Start WP'),
('6141101','9','0','0','0','0','100','0','0','0','0','0','0','','5','508','0','0','0','0','0','1','0','0','0','0','0','0','0','Instructor Zhi - Play Emote'),
('6141101','9','1','0','0','0','100','0','0','0','0','0','0','','115','33643','33645','33646','0','0','1','1','0','0','0','0','0','0','0','Instructor Qun - Play Random Sound'),
('6141101','9','2','0','0','0','100','0','0','0','0','0','0','','45','1','2','0','0','0','0','11','0','15','0','0','0','0','0','Instructor Zhi - Set Data'),
('6141102','9','0','0','0','0','100','0','0','0','0','0','0','','5','509','0','0','0','0','0','1','0','0','0','0','0','0','0','Instructor Zhi - Play Emote'),
('6141102','9','1','0','0','0','100','0','0','0','0','0','0','','115','33643','33645','33646','0','0','1','1','0','0','0','0','0','0','0','Instructor Qun - Play Random Sound'),
('6141102','9','2','0','0','0','100','0','0','0','0','0','0','','45','1','3','0','0','0','0','11','0','15','0','0','0','0','0','Instructor Zhi - Set Data'),
('6141103','9','0','0','0','0','100','0','0','0','0','0','0','','5','511','0','0','0','0','0','1','0','0','0','0','0','0','0','Instructor Zhi - Play Emote'),
('6141103','9','1','0','0','0','100','0','0','0','0','0','0','','115','33643','33645','33646','0','0','1','1','0','0','0','0','0','0','0','Instructor Qun - Play Random Sound'),
('6141103','9','2','0','0','0','100','0','0','0','0','0','0','','45','1','4','0','0','0','0','11','0','15','0','0','0','0','0','Instructor Zhi - Set Data'),
('6453000','9','0','0','0','0','100','0','250','250','0','0','0','','66','0','0','0','0','0','0','8','0','0','0','0','0','0','5.41052','Master Shang - Set Orientation'),
('6453000','9','1','0','0','0','100','0','0','0','0','0','0','','28','126040','0','0','0','0','0','23','0','0','0','0','0','0','0','Master Shang - Remove Aura'),
('6453000','9','2','0','0','0','100','0','0','0','0','0','0','','44','536','1','0','0','0','0','23','0','0','0','0','0','0','0','Master Shang - Add Phase'),
('6453000','9','3','0','0','0','100','0','0','0','0','0','0','','44','1526','1','0','0','0','0','23','0','0','0','0','0','0','0','Master Shang - Add Phase'),
('6453000','9','4','0','0','0','100','0','0','0','0','0','0','','44','524','0','0','0','0','0','23','0','0','0','0','0','0','0','Master Shang - Remove Phase'),
('6453000','9','5','0','0','0','100','0','0','0','0','0','0','','41','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Master Shang - Despawn'),
('6453200','9','0','0','0','0','100','0','5000','5000','0','0','0','','53','1','64532','0','0','0','0','1','0','0','0','0','0','0','0','Dafeng - Start WP'),
('6454300','9','0','0','0','0','100','0','1000','1000','0','0','0','','136','1','12','0','0','0','0','1','0','0','0','0','0','0','0','Aysa Cloudsinger - Set Movement Speed'),
('6454300','9','1','0','0','0','100','0','0','0','0','0','0','','53','1','64543','0','0','0','0','1','0','0','0','0','0','0','0','Aysa Cloudsinger - Start WP'),
('6459200','9','0','0','0','0','100','0','0','0','0','0','0','','100','1','0','0','0','0','0','11','56013','10','0','0','0','0','0','Faction Choice Lead-in Controller - Send Target'),
('6459200','9','1','0','0','0','100','0','0','0','0','0','0','','45','1','1','0','0','0','0','11','56013','10','0','0','0','0','0','Faction Choice Lead-in Controller - Set Data'),
('6459200','9','2','0','0','0','100','0','10000','10000','0','0','0','','100','1','0','0','0','0','0','11','56013','10','0','0','0','0','0','Faction Choice Lead-in Controller - Send Target'),
('6459200','9','3','0','0','0','100','0','0','0','0','0','0','','45','1','2','0','0','0','0','11','56013','10','0','0','0','0','0','Faction Choice Lead-in Controller - Set Data'),
('6459200','9','4','0','0','0','100','0','11000','11000','0','0','0','','100','1','0','0','0','0','0','11','57721','10','0','0','0','0','0','Faction Choice Lead-in Controller - Send Target'),
('6459200','9','5','0','0','0','100','0','0','0','0','0','0','','45','2','1','0','0','0','0','11','57721','10','0','0','0','0','0','Faction Choice Lead-in Controller - Set Data'),
('6459200','9','6','0','0','0','100','0','7000','7000','0','0','0','','100','1','0','0','0','0','0','11','56013','10','0','0','0','0','0','Faction Choice Lead-in Controller - Send Target'),
('6459200','9','7','0','0','0','100','0','0','0','0','0','0','','45','1','3','0','0','0','0','11','56013','10','0','0','0','0','0','Faction Choice Lead-in Controller - Set Data'),
('6459200','9','8','0','0','0','100','0','7000','7000','0','0','0','','100','1','0','0','0','0','0','11','57720','10','0','0','0','0','0','Faction Choice Lead-in Controller - Send Target'),
('6459200','9','9','0','0','0','100','0','0','0','0','0','0','','45','3','1','0','0','0','0','11','57720','10','0','0','0','0','0','Faction Choice Lead-in Controller - Set Data'),
('6459200','9','10','0','0','0','100','0','11000','11000','0','0','0','','100','1','0','0','0','0','0','11','56013','10','0','0','0','0','0','Faction Choice Lead-in Controller - Send Target'),
('6459200','9','11','0','0','0','100','0','0','0','0','0','0','','45','1','4','0','0','0','0','11','56013','10','0','0','0','0','0','Faction Choice Lead-in Controller - Set Data'),
('6546701','9','0','0','0','0','100','0','1000','1000','0','0','0','','5','4','0','0','0','0','0','1','0','0','0','0','0','0','0','Excited Onlooker - Play Emote'),
('6546701','9','1','0','0','0','100','0','4000','4000','0','0','0','','5','21','0','0','0','0','0','1','0','0','0','0','0','0','0','Excited Onlooker - Play Emote'),
('6546702','9','0','0','0','0','100','0','5000','5000','0','0','0','','5','4','0','0','0','0','0','1','0','0','0','0','0','0','0','Excited Onlooker - Play Emote'),
('6668901','9','0','0','0','0','100','0','1000','1000','0','0','0','','66','0','0','0','0','0','0','8','0','0','0','0','0','0','5.25344','Mei Chele - Set Orientation'),
('6668901','9','1','0','0','0','100','0','1000','1000','0','0','0','','62','860','0','0','0','0','0','1','0','0','0','675.279','3514.17','119.632','5.6949','Mei Chele - Teleport'),
('6668901','9','2','0','0','0','100','0','0','0','0','0','0','','17','415','0','0','0','0','0','1','0','0','0','0','0','0','0','Mei Chele - Set Emote State'),
('6669101','9','0','0','0','0','100','0','0','0','0','0','0','','66','0','0','0','0','0','0','8','0','0','0','0','0','0','5.70723','Azrael - Set Orientation'),
('6669101','9','1','0','0','0','100','0','5000','5000','0','0','0','','90','1','0','0','0','0','0','1','0','0','0','0','0','0','0','Azrael - Set Bytes1'),
('6669101','9','2','0','0','0','100','0','16000','16000','0','0','0','','91','1','0','0','0','0','0','1','0','0','0','0','0','0','0','Azrael - Remove Bytes1'),
('6669101','9','3','0','0','0','100','0','0','0','0','0','0','','59','1','0','0','0','0','0','1','0','0','0','0','0','0','0','Azrael - Set Run'),
('6669201','9','0','0','0','0','100','0','0','0','0','0','0','','66','0','0','0','0','0','0','8','0','0','0','0','0','0','0.349066','Samus - Set Orientation'),
('6669201','9','1','0','0','0','100','0','2000','2000','0','0','0','','97','10','5','0','0','0','0','1','0','0','0','681.036','3513.87','120.556','0','Samus - Jump to Pos'),
('6669201','9','2','0','0','0','100','0','5000','5000','0','0','0','','28','125567','0','0','0','0','0','1','0','0','0','0','0','0','0','Samus - Set Orientation'),
('6669201','9','3','0','0','0','100','0','5000','5000','0','0','0','','66','0','0','0','0','0','0','8','0','0','0','0','0','0','3.50811','Samus - Set Orientation'),
('6669201','9','4','0','0','0','100','0','1000','1000','0','0','0','','90','1','0','0','0','0','0','1','0','0','0','0','0','0','0','Samus - Set Bytes1'),
('6669201','9','5','0','0','0','100','0','38000','38000','0','0','0','','91','1','0','0','0','0','0','1','0','0','0','0','0','0','0','Samus - Remove Bytes1'),
('6669201','9','6','0','0','0','100','0','1000','1000','0','0','0','','97','10','5','0','0','0','0','1','0','0','0','678.356','3512.9','119.632','0','Samus - Jump to Pos');

DELETE FROM `creature_text` WHERE `CreatureID` IN (53565, 60176, 54135, 60248, 60729, 60250, 56663, 60852, 57721, 54611, 60900, 54586, 57638, 55477, 54975, 59642, 55943, 60253, 54786, 55672, 61127, 56013, 60042, 60741, 60878, 64881, 55539, 55744, 57712, 59986, 57692, 56662, 56418, 59652, 55694, 57720, 60770, 60183, 54943, 55483, 60249, 55595, 64885, 59988, 60244, 65471, 65558, 60888, 60889, 57669, 56236, 55944, 60851, 56660, 56686, 56159, 56416, 60834, 56676, 60877, 64880, 56661, 61126, 64875, 64506, 54856, 54567, 64879, 54587, 54568, 56503, 57670, 65470, 55504, 54130);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(53565, 0, 0, 'Such skill for a new trainee.', 12, 0, 100, 511, 0, 0, 56431, 0, 'Aspiring Trainee to Training Target'),
(53565, 0, 1, 'That target didn''t stand a chance.', 12, 0, 100, 511, 0, 0, 56433, 0, 'Aspiring Trainee to Training Target'),
(53565, 0, 2, 'One day you will have to teach me your secrets.', 12, 0, 100, 509, 0, 0, 56432, 0, 'Aspiring Trainee to Training Target'),
(53565, 0, 3, 'You are bound for a great things, trainee.', 12, 0, 100, 508, 0, 0, 56435, 0, 'Aspiring Trainee to Training Target'),
(53565, 0, 4, 'I must train harder so I can be like you.', 12, 0, 100, 1, 0, 0, 56437, 0, 'Aspiring Trainee to Training Target'),
(53565, 0, 5, 'I hope the instructors saw that!', 12, 0, 100, 1, 0, 0, 56434, 0, 'Aspiring Trainee to Training Target'),
(53565, 0, 6, 'I must work as hard as you.', 12, 0, 100, 1, 0, 0, 56436, 0, 'Aspiring Trainee to Training Target'),
(53565, 0, 7, 'Your form is impeccable.', 12, 0, 100, 1, 0, 0, 56430, 0, 'Aspiring Trainee to Training Target'),
(53565, 1, 0, 'My money''s on Lam. Did you see him take down Chu during training last week?', 12, 0, 100, 1, 0, 0, 56420, 0, 'Aspiring Trainee'),
(53565, 2, 0, 'His stamina is nothing against Lam''s strength.', 12, 0, 100, 0, 0, 0, 56423, 0, 'Aspiring Trainee'),
(53565, 3, 0, 'He has the legs of an ox! Have you ever been kicked by him in training?', 12, 0, 100, 1, 0, 0, 56424, 0, 'Aspiring Trainee'),
(53565, 4, 0, 'Raise you a keg of Stormshout Gold. It''ll be your loss.', 12, 0, 100, 1, 0, 0, 0, 0, 'Aspiring Trainee'),
(53565, 5, 0, 'That''s where you''re mistaken, friend. Zhou is as sturdy as an oak.', 12, 0, 100, 1, 0, 0, 56421, 0, 'Aspiring Trainee'),
(53565, 6, 0, 'Zhou has the stamina of three men, so he can out-stay most opponents.', 12, 0, 100, 0, 0, 0, 56422, 0, 'Aspiring Trainee'),
(53565, 7, 0, 'Four coppers on Zhou.', 12, 0, 100, 0, 0, 0, 56427, 0, 'Aspiring Trainee'),
(54586, 0, 0, 'That was a good match. Thank you.', 12, 0, 100, 1, 0, 0, 56444, 0, 'Huojin Trainee'),
(54586, 0, 1, 'My skills are no match for yours. I admit defeat.', 12, 0, 100, 1, 0, 0, 56441, 0, 'Huojin Trainee'),
(54586, 0, 2, 'Your skills are too great. I yield.', 12, 0, 100, 1, 0, 0, 56442, 0, 'Huojin Trainee'),
(54586, 0, 3, 'You fought well. I must learn more from you in the future.', 12, 0, 100, 1, 0, 0, 56443, 0, 'Huojin Trainee'),
(54586, 0, 4, 'Thank you for reminding me that I must train more diligently.', 12, 0, 100, 1, 0, 0, 56439, 0, 'Huojin Trainee'),
(54586, 0, 5, 'You fight honorably, friend.', 12, 0, 100, 1, 0, 0, 56440, 0, 'Huojin Trainee'),
(54586, 0, 6, 'You are an honorable opponent.', 12, 0, 100, 1, 0, 0, 56438, 0, 'Huojin Trainee'),
(54586, 0, 7, 'I have never seen a trainee with skills such as yours. I must tell the others.', 12, 0, 100, 1, 0, 0, 56445, 0, 'Huojin Trainee'),
(54587, 0, 0, 'That was a good match. Thank you.', 12, 0, 100, 1, 0, 0, 56444, 0, 'Tushui Trainee'),
(54587, 0, 1, 'My skills are no match for yours. I admit defeat.', 12, 0, 100, 1, 0, 0, 56441, 0, 'Tushui Trainee'),
(54587, 0, 2, 'Your skills are too great. I yield.', 12, 0, 100, 1, 0, 0, 56442, 0, 'Tushui Trainee'),
(54587, 0, 3, 'You fought well. I must learn more from you in the future.', 12, 0, 100, 1, 0, 0, 56443, 0, 'Tushui Trainee'),
(54587, 0, 4, 'Thank you for reminding me that I must train more diligently.', 12, 0, 100, 1, 0, 0, 56439, 0, 'Tushui Trainee'),
(54587, 0, 5, 'You fight honorably, friend.', 12, 0, 100, 1, 0, 0, 56440, 0, 'Tushui Trainee'),
(54587, 0, 6, 'You are an honorable opponent.', 12, 0, 100, 1, 0, 0, 56438, 0, 'Tushui Trainee'),
(54587, 0, 7, 'I have never seen a trainee with skills such as yours. I must tell the others.', 12, 0, 100, 1, 0, 0, 56445, 0, 'Tushui Trainee'),
(65470, 0, 0, 'That was a good match. Thank you.', 12, 0, 100, 1, 0, 0, 56444, 0, 'Huojin Trainee'),
(65470, 0, 1, 'My skills are no match for yours. I admit defeat.', 12, 0, 100, 1, 0, 0, 56441, 0, 'Huojin Trainee'),
(65470, 0, 2, 'Your skills are too great. I yield.', 12, 0, 100, 1, 0, 0, 56442, 0, 'Huojin Trainee'),
(65470, 0, 3, 'You fought well. I must learn more from you in the future.', 12, 0, 100, 1, 0, 0, 56443, 0, 'Huojin Trainee'),
(65470, 0, 4, 'Thank you for reminding me that I must train more diligently.', 12, 0, 100, 1, 0, 0, 56439, 0, 'Huojin Trainee'),
(65470, 0, 5, 'You fight honorably, friend.', 12, 0, 100, 1, 0, 0, 56440, 0, 'Huojin Trainee'),
(65470, 0, 6, 'You are an honorable opponent.', 12, 0, 100, 1, 0, 0, 56438, 0, 'Huojin Trainee'),
(65470, 0, 7, 'I have never seen a trainee with skills such as yours. I must tell the others.', 12, 0, 100, 1, 0, 0, 56445, 0, 'Huojin Trainee'),
(65471, 0, 0, 'That was a good match. Thank you.', 12, 0, 100, 1, 0, 0, 56444, 0, 'Tushui Trainee'),
(65471, 0, 1, 'My skills are no match for yours. I admit defeat.', 12, 0, 100, 1, 0, 0, 56441, 0, 'Tushui Trainee'),
(65471, 0, 2, 'Your skills are too great. I yield.', 12, 0, 100, 1, 0, 0, 56442, 0, 'Tushui Trainee'),
(65471, 0, 3, 'You fought well. I must learn more from you in the future.', 12, 0, 100, 1, 0, 0, 56443, 0, 'Tushui Trainee'),
(65471, 0, 4, 'Thank you for reminding me that I must train more diligently.', 12, 0, 100, 1, 0, 0, 56439, 0, 'Tushui Trainee'),
(65471, 0, 5, 'You fight honorably, friend.', 12, 0, 100, 1, 0, 0, 56440, 0, 'Tushui Trainee'),
(65471, 0, 6, 'You are an honorable opponent.', 12, 0, 100, 1, 0, 0, 56438, 0, 'Tushui Trainee'),
(65471, 0, 7, 'I have never seen a trainee with skills such as yours. I must tell the others.', 12, 0, 100, 1, 0, 0, 56445, 0, 'Tushui Trainee'),
(60183, 0, 0, 'I hope you''re ready, $p. Jaomin Ro awaits you just over the bridge.', 12, 0, 100, 113, 0, 0, 59710, 0, 'Trainee Nim to Player'),
(54611, 0, 0, 'A challenger approaches.', 12, 0, 100, 113, 0, 0, 59692, 0, 'Jaomin Ro to Player'),
(54611, 1, 0, 'You''ve been trained well.', 12, 0, 100, 2, 0, 0, 55205, 0, 'Jaomin Ro to Player'),
(54611, 1, 1, 'Well fought. Master Shang will be pleased.', 12, 0, 100, 2, 0, 0, 55206, 0, 'Jaomin Ro to Player'),
(54611, 1, 2, 'Amazing! You''re much stronger than you look.', 12, 0, 100, 2, 0, 0, 55207, 0, 'Jaomin Ro to Player'),
(54611, 1, 3, 'It seems I have more training to do. Thank you for the lesson.', 12, 0, 100, 2, 0, 0, 55208, 0, 'Jaomin Ro to Player'),
(54611, 1, 4, 'I bow to your skill. You bested me fairly.', 12, 0, 100, 2, 0, 0, 55209, 0, 'Jaomin Ro to Player'),
(54611, 1, 5, 'It was an honor to be defeated by you.', 12, 0, 100, 2, 0, 0, 55210, 0, 'Jaomin Ro to Player'),
(60244, 0, 0, 'You''re departing so soon?  I am envious of your prowess, $c. Good luck to you.', 12, 0, 100, 2, 0, 0, 59711, 0, 'Trainee Guang to Player'),
(54943, 0, 0, 'Shhhh! Come quietly. She''s practicing.', 12, 0, 100, 396, 0, 0, 59712, 0, 'Merchant Lorvo to Player'),
(56503, 0, 0, 'Master Shang has trained you well. Thank you, friend!', 12, 0, 100, 2, 0, 0, 53265, 0, 'Min Dimwind to Player'),
(56503, 1, 0, 'I couldn''t have fought them off alone. Now, if you''ll excuse me, I should go find my cart.', 12, 0, 100, 1, 0, 0, 56452, 0, 'Min Dimwind to Player'),
(56503, 2, 0, 'Cart!', 14, 0, 100, 22, 0, 0, 56453, 0, 'Min Dimwind to Player'),
(56503, 3, 0, 'Hello, cart. Still upside-downed, I see.', 12, 0, 100, 2, 0, 0, 56454, 0, 'Min Dimwind to Player'),
(54130, 0, 0, 'Look out! Its friendses are coming!', 14, 0, 100, 2, 0, 0, 56473, 0, 'Amberleaf Scamp to Player'),
(54130, 1, 0, 'Run away!', 14, 0, 100, 2, 0, 0, 56474, 0, 'Amberleaf Scamp to Player'),
(54567, 0, 0, 'A challenge in compassion and humility. By helping Merchant Lorvo, it would seem you''ve passed, $c. Master Shang would be pleased.', 12, 0, 100, 2, 0, 27404, 60599, 0, 'Aysa Cloudsinger to Player'),
(54567, 1, 0, 'And so our path lays before us. Speak to Master Shang Xi, he will tell you what comes next.', 12, 0, 100, 0, 0, 27399, 60046, 0, 'Aysa Cloudsinger to Player'),
(59652, 0, 0, 'Meet me up in the cave if you would, friend.', 12, 0, 100, 396, 0, 27397, 59147, 0, 'Aysa Cloudsinger to Player'),
(59642, 0, 0, 'Keep those creatures at bay while I meditate. We''ll soon have the answers we seek.', 12, 0, 100, 1, 0, 27398, 59161, 0, 'Aysa Cloudsinger to Player'),
(54856, 0, 0, 'Master Li Fei''s voice echoes, "The way of the Tushui... enlightenment through patience and meditation... the principled life."', 16, 0, 100, 6, 0, 0, 53129, 0, 'Master Li Fei to Player'),
(54856, 1, 0, 'Master Li Fei''s voice echoes, "It is good to see you again, Aysa. You''ve come with respect, and so I shall give you the answers you seek."', 16, 0, 100, 1, 0, 0, 53845, 0, 'Master Li Fei to Player'),
(54856, 2, 0, 'Master Li Fei''s voice echoes, "Huo, the spirit of fire, is known for his hunger. He wants for tinder to eat. He needs the caress of the wind to rouse him."', 16, 0, 100, 1, 0, 0, 53841, 0, 'Master Li Fei to Player'),
(54856, 3, 0, 'Master Li Fei''s voice echoes, "If you find these things and bring them to his cave, on the far side of Wu-Song Village, you will face a challenge within."', 16, 0, 100, 1, 0, 0, 53842, 0, 'Master Li Fei to Player'),
(54856, 4, 0, 'Master Li Fei''s voice echoes, "Overcome that challenge, and you shall be graced by Huo''s presence. Rekindle his flame, and if your spirit is pure, he shall follow you."', 16, 0, 100, 1, 0, 0, 53843, 0, 'Master Li Fei to Player'),
(54856, 5, 0, 'Master Li Fei''s voice echoes, "Go, children. We shall meet again very soon."', 16, 0, 100, 2, 0, 0, 53844, 0, 'Master Li Fei to Player'),
(54856, 6, 0, 'Master Li Fei fades away.', 16, 0, 100, 0, 0, 0, 53130, 0, 'Master Li Fei to Player'),
(54568, 0, 0, 'Take that monkeybutt!', 12, 0, 100, 5, 0, 0, 59757, 0, 'Ji Firepaw to Player'),
(60176, 0, 0, 'The fire spirit is upset. It''s dangerous to enter the shrine now...', 12, 0, 100, 396, 0, 0, 59680, 0, 'Huojin Monk to Player'),
(54135, 0, 0, 'You have earned the right to proceed.  Huo lies beyond.', 12, 0, 100, 1, 0, 0, 55251, 0, 'Master Li Fei to Player'),
(60248, 0, 0, 'Is that... is that Huo?', 12, 0, 100, 25, 0, 0, 59751, 0, 'Chia-hui Autumnleaf to Player'),
(60253, 0, 0, 'It is! Well done, $p!', 12, 0, 100, 71, 0, 0, 59752, 0, 'Brewer Lin to Player'),
(54786, 0, 0, 'Welcome, Huo. The people have missed your warmth.', 12, 0, 100, 2, 0, 27788, 60608, 0, 'Master Shang Xi to Player'),
(54786, 1, 0, 'You have conquered every challenge I put before you, $n. You have found Huo and brought him safely to the temple.', 12, 0, 100, 1, 0, 27789, 60600, 0, 'Master Shang Xi to Player'),
(54786, 2, 0, 'There is a much larger problem we face now, my students. Shen-zin Su is in pain. If we do not act, the very land on which we stand could die, and all of us with it.', 12, 0, 100, 1, 0, 27790, 60601, 0, 'Master Shang Xi to Player'),
(54786, 3, 0, 'We need to speak to Shen-zin Su and discover how to heal it. And to do that, we need the four elemental spirits returned. Huo was the first.', 12, 0, 100, 1, 0, 27791, 60602, 0, 'Master Shang Xi to Player'),
(54786, 4, 0, 'Ji, I''d like you to go to the Dai-Lo Farmstead in search of Wugou, the spirit of earth.', 12, 0, 100, 1, 0, 27792, 60603, 0, 'Master Shang Xi to Player'),
(54786, 5, 0, 'Aysa, I want you to go to the Singing Pools to find Shu, the spirit of water.', 12, 0, 100, 1, 0, 27793, 60604, 0, 'Master Shang Xi to Player'),
(54786, 6, 0, 'And $n, you shall be the hand that guides us all. Speak with me for a moment before you join Aysa at the Singing Pools to the east.', 12, 0, 100, 1, 0, 27794, 60605, 0, 'Master Shang Xi to Player'),
(54786, 7, 0, 'You''ve returned with the spirits of water and earth. You make an old master proud.', 12, 0, 100, 1, 0, 27776, 55295, 0, 'Master Shang Xi to Player'),
(54786, 8, 0, 'Wugou and Shu are welcome here. We will care for them well.', 12, 0, 100, 1, 0, 27777, 55296, 0, 'Master Shang Xi to Player'),
(54786, 9, 0, 'The only remaining spirit is Dafeng, who hides somewhere across the Dawning Span to the west.', 12, 0, 100, 1, 0, 27778, 55297, 0, 'Master Shang Xi to Player'),
(54786, 10, 0, 'I can carry you to the top of the temple. Ji awaits you there to lead the way.', 12, 0, 100, 1, 0, 27779, 55298, 0, 'Master Shang Xi to Player'),
(61127, 0, 0, 'On it!', 12, 0, 100, 0, 0, 27306, 60606, 0, 'Ji Firepaw to Fire Central Temple Turn-in Controller'),
(61126, 0, 0, 'Yes master.', 12, 0, 100, 2, 0, 27406, 60607, 0, 'Aysa Cloudsinger to Fire Central Temple Turn-in Controller'),
(60250, 0, 0, 'Hey there! Are you the one that brought back the fire spirit?', 12, 0, 100, 3, 0, 0, 59875, 0, 'Cai to Deng'),
(60250, 1, 0, 'Of course he was hot! Don''t be dumb, Deng.', 12, 0, 100, 5, 0, 0, 59877, 0, 'Cai to Deng'),
(60250, 2, 0, 'Nuh uh. Bet they could for sure kick you over that hill, though! Hah!', 12, 0, 100, 274, 0, 0, 59880, 0, 'Cai to Deng'),
(60250, 3, 0, 'Okay bye.', 12, 0, 100, 3, 0, 0, 59878, 0, 'Cai to Deng'),
(60249, 0, 0, 'Was he hot?  I bet he was hot!', 12, 0, 100, 6, 0, 0, 59876, 0, 'Deng to Cai'),
(60249, 1, 0, 'I bet you''re really strong, huh?  You could probably kick that bridge right in half if you wanted to!', 12, 0, 100, 6, 0, 0, 59879, 0, 'Deng to Cai'),
(60249, 2, 0, 'Bye!', 12, 0, 100, 3, 0, 0, 59884, 0, 'Deng to Cai'),
(57638, 0, 0, 'The reeds of the Singing Pools are the hardest in all of the land, but they are as air before my mighty brow.', 12, 0, 100, 1, 0, 0, 56333, 0, 'Jojo Ironbrow to Player'),
(57638, 1, 0, 'Many have tested my claim, and I yet stand proven.', 12, 0, 100, 2, 0, 0, 56334, 0, 'Jojo Ironbrow to Player'),
(54975, 0, 0, 'I have to admit, that looked pretty fun!', 12, 0, 100, 0, 0, 27394, 66056, 1, 'Aysa Cloudsinger to Player'),
(54975, 1, 0, 'And it looks to me like you made a new friend.', 12, 0, 100, 0, 0, 27395, 66057, 1, 'Aysa Cloudsinger to Player'),
(57712, 0, 0, 'Hello friend!  You''re welcome to use my cart if you like.  It will take you to the Dai-Lo Farmstead.', 12, 0, 100, 3, 0, 0, 56406, 0, 'Delivery Cart Tender to Player'),
(57712, 1, 0, 'Hello friend!  You''re welcome to use my cart if you like.  It will take you to the Temple of Five Dawns.', 12, 0, 100, 3, 0, 0, 56415, 0, 'Delivery Cart Tender to Player'),
(55477, 0, 0, 'Wake... up... DANGIT!', 12, 0, 100, 15, 0, 27345, 60447, 0, 'Ji Firepaw'),
(55477, 1, 0, 'This is ridiculous...', 12, 0, 100, 274, 0, 27346, 60448, 0, 'Ji Firepaw'),
(55477, 2, 0, 'You sleep like a rock!', 12, 0, 100, 5, 0, 27347, 60449, 0, 'Ji Firepaw'),
(55477, 3, 0, 'There''s no way you''ll sleep through THIS.', 12, 0, 100, 274, 0, 27348, 60450, 0, 'Ji Firepaw'),
(55477, 4, 0, 'Seriously?', 12, 0, 100, 18, 0, 27349, 60451, 0, 'Ji Firepaw'),
(55477, 5, 0, 'Why...', 12, 0, 100, 507, 0, 27350, 60452, 0, 'Ji Firepaw'),
(55477, 6, 0, 'won''t...', 12, 0, 100, 509, 0, 27351, 60453, 0, 'Ji Firepaw'),
(55477, 7, 0, 'you...', 12, 0, 100, 507, 0, 27352, 60454, 0, 'Ji Firepaw'),
(55477, 8, 0, 'just...', 12, 0, 100, 509, 0, 27353, 60455, 0, 'Ji Firepaw'),
(55477, 9, 0, 'WAKE UP?!', 12, 0, 100, 22, 0, 27354, 60456, 0, 'Ji Firepaw'),
(55477, 10, 0, 'I will break you, little rock man!', 12, 0, 100, 25, 0, 27355, 60457, 0, 'Ji Firepaw'),
(55477, 11, 0, '%s sighs.', 16, 0, 100, 0, 0, 0, 55942, 0, 'Ji Firepaw to Player'),
(55483, 0, 0, 'Gimme all your vegetables!', 12, 0, 100, 0, 0, 0, 54873, 0, 'Plump Virmen to Player'),
(55483, 0, 1, 'AIIIIEEEEEEE!', 12, 0, 100, 0, 0, 0, 54874, 0, 'Plump Virmen to Player'),
(55483, 0, 2, 'This virmen land!', 12, 0, 100, 0, 0, 0, 54876, 0, 'Plump Virmen to Player'),
(55483, 0, 3, 'You no take carrot! You take turnip instead!', 12, 0, 100, 0, 0, 0, 54877, 0, 'Plump Virmen to Player'),
(55504, 0, 0, 'Gimme all your vegetables!', 12, 0, 100, 0, 0, 0, 54873, 0, 'Plump Carrotcruncher to Player'),
(55504, 0, 1, 'AIIIIEEEEEEE!', 12, 0, 100, 0, 0, 0, 54874, 0, 'Plump Carrotcruncher to Player'),
(55504, 0, 2, 'This virmen land!', 12, 0, 100, 0, 0, 0, 54876, 0, 'Plump Carrotcruncher to Player'),
(55504, 0, 3, 'You no take carrot! You take turnip instead!', 12, 0, 100, 0, 0, 0, 54877, 0, 'Plump Carrotcruncher to Player'),
(57669, 0, 0, 'Our crafters build the finest wooden planks.  They would weather the most brutal of storms.  But they are as water before the storm of my crushing skull.', 12, 0, 100, 1, 0, 0, 56343, 0, 'Jojo Ironbrow to Player'),
(57669, 1, 0, 'Nothing made by pandaren hands can withstand me.', 12, 0, 100, 0, 0, 0, 56344, 0, 'Jojo Ironbrow to Player'),
(55539, 0, 0, '%s snorts loudly, and continues sleeping.', 16, 0, 100, 0, 0, 0, 54991, 0, 'Wugou to Player'),
(55694, 0, 0, 'Hey $p! This way to Morning Breeze Village.', 12, 0, 100, 0, 0, 27294, 54196, 0, 'Ji Firepaw to Player'),
(64885, 0, 0, 'Hello $n! The Lorewalker is beginning her lesson just down these stairs if you want to listen in.', 12, 0, 100, 3, 0, 0, 65573, 0, 'Lorewalker Zan to Player'),
(64875, 0, 0, 'This is the Song of Liu Lang, the first pandaren explorer.', 12, 0, 100, 1, 0, 0, 65583, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 1, 0, 'The song is written in the old tongue, the language of emperors and scholars. Hardly anyone speaks it anymore.', 12, 0, 100, 6, 0, 0, 65584, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 2, 0, 'It is all about his adventures.', 12, 0, 100, 273, 0, 0, 65585, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 3, 0, 'Brave Liu Lang set out to explore the world on the back of a sea turtle.', 12, 0, 100, 1, 0, 0, 65586, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 4, 0, 'Does anyone remember the turtle''s name? Yin?', 12, 0, 100, 25, 0, 0, 65587, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 5, 0, 'That''s right, the turtle was called Shen-zin Su. At first, he was only big enough for Liu Lang to sit on.', 12, 0, 100, 1, 0, 0, 65588, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 6, 0, 'He grew and grew and grew, SO big, that now some people call him "The Wandering Isle."', 12, 0, 100, 1, 0, 0, 65589, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 7, 0, 'Question, Hao?', 12, 0, 100, 25, 0, 0, 65590, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 8, 0, 'Yes, Hao - our home is on Shen-zin Su''s back.', 12, 0, 100, 273, 0, 0, 65591, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 9, 0, 'Liu Lang discovered many things as he explored the world - oh - yes, Hao?', 12, 0, 100, 6, 0, 0, 65592, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 10, 0, 'That''s a good question. Nobody has spoken to Shen-zin Su for many generations. He only ever spoke to Liu Lang.', 12, 0, 100, 1, 0, 0, 65593, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 11, 0, 'But I am certain that Shen-zin Su knows we are here. And he cares for every one of us!', 12, 0, 100, 66, 0, 0, 65594, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 12, 0, 'Especially Hao! Liu Lang once said, "Noble is he who always asks questions."', 12, 0, 100, 6, 0, 0, 65595, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 13, 0, '"We should all be like children, for the world is our elder, and has many things to teach us."', 12, 0, 100, 1, 0, 0, 65596, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 14, 0, 'Students! Students! Pay attention now.', 12, 0, 100, 22, 0, 0, 65597, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 15, 0, 'Does anyone know how often Liu Lang went back to Pandaria?', 12, 0, 100, 1, 0, 0, 65598, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 16, 0, 'Haha, no Yin. Liu Lang would eat wherever he explored.', 12, 0, 100, 11, 0, 0, 65599, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 17, 0, 'He returned to the main continent of Pandaria once every five years.', 12, 0, 100, 1, 0, 0, 65600, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 18, 0, 'You are right, Yin. It IS hidden away, behind a cloak of mists.', 12, 0, 100, 274, 0, 0, 65601, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 19, 0, 'Does anyone remember how Liu Lang was always able to find it? Nan?', 12, 0, 100, 6, 0, 0, 65602, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 20, 0, 'That''s right! Liu Lang always had a way back home. Every five years, he would return, to pick up more explorers.', 12, 0, 100, 1, 0, 0, 65603, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 21, 0, 'Yes Hao! Only the BRAVEST pandaren joined Liu Lang on his turtle to explore the world.', 12, 0, 100, 273, 0, 0, 65604, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 22, 0, 'Shen-zin Su hasn''t made landfall for a long time. But that hasn''t stopped some pandaren from exploring, anyway.', 12, 0, 100, 1, 0, 0, 65605, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 23, 0, 'Yes, like Chen and Li Li! They''re out, exploring the world. Maybe someday you will, too.', 12, 0, 100, 21, 0, 0, 65606, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 24, 0, 'I''m glad you asked, Yin. Liu Lang explored the world his entire life, and raised many children here on the Wandering Isle.', 12, 0, 100, 1, 0, 0, 65607, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 25, 0, 'Eventually he grew very old, and visited Pandaria one final time.', 12, 0, 100, 1, 0, 0, 65608, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 26, 0, 'But nobody else wanted to go exploring with him. So he left.', 12, 0, 100, 6, 0, 0, 65609, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 27, 0, 'Shen-zin Su has never returned to Pandaria.', 12, 0, 100, 274, 0, 0, 65610, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 28, 0, 'Tired now, Liu Lang said goodbye to Shen-zin Su, his oldest friend.', 12, 0, 100, 1, 0, 0, 65611, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 29, 0, 'Then, Liu Lang went up to the Wood of Staves, carrying with him a bamboo umbrella that he always took on his adventures.', 12, 0, 100, 1, 0, 0, 65612, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 30, 0, 'He opened his umbrella, planted it in the ground, and sat underneath its cool shade.', 12, 0, 100, 6, 0, 0, 65613, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 31, 0, 'He closed his eyes, and became one with the land. And then - do you know what happened?', 12, 0, 100, 2, 0, 0, 65614, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 32, 0, 'His umbrella... sprouted! It grew roots, flowered, and became a tree!', 12, 0, 100, 5, 0, 0, 65615, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 33, 0, 'Well, it''s true. If you ever go to the Wood of Staves, you can see it.', 12, 0, 100, 1, 0, 0, 65616, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 34, 0, 'Along with the budding staves of all the elders who came before us, growing now into giant trees.', 12, 0, 100, 274, 0, 0, 65617, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 35, 0, 'It''s not a sad story! Liu Lang himself said, "Never mourn a life well-lived."', 12, 0, 100, 1, 0, 0, 65618, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 36, 0, 'And I think he lived a very very good life. We owe everything we have to Liu Lang, the first pandaren explorer.', 12, 0, 100, 273, 0, 0, 65619, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 37, 0, 'We tell his story, so that he will always be remembered.', 12, 0, 100, 2, 0, 0, 65620, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 38, 0, 'Thank you, Ruolin! That was beautiful.', 12, 0, 100, 21, 0, 0, 65621, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64875, 39, 0, 'Could you sing it once more, for the students who just arrived?', 12, 0, 100, 6, 0, 0, 65622, 0, 'Lorewalker Amai to Lorewalker Ruolin'),
(64881, 0, 0, 'Why can''t I understand any of the words?', 12, 0, 100, 1, 0, 0, 65631, 0, 'Hao to Lorewalker Amai'),
(64881, 1, 0, 'We live on the back of a big turtle?!', 12, 0, 100, 5, 0, 0, 65637, 0, 'Hao to Lorewalker Amai'),
(64881, 2, 0, 'I just thought it was weird that the mountains had flippers!', 12, 0, 100, 1, 0, 0, 65639, 0, 'Hao to Lorewalker Amai'),
(64881, 3, 0, 'Does the turtle know we''re here?', 12, 0, 100, 1, 0, 0, 65640, 0, 'Hao to Lorewalker Amai'),
(64881, 4, 0, 'Hey!', 12, 0, 100, 1, 0, 0, 65642, 0, 'Hao to Lorewalker Amai'),
(64881, 5, 0, 'Yeah, you should all be more like me.', 12, 0, 100, 1, 0, 0, 65643, 0, 'Hao to Lorewalker Amai'),
(64881, 6, 0, 'Does that mean our moms and dads and grandparents were all explorers, too?', 12, 0, 100, 1, 0, 0, 65648, 0, 'Hao to Lorewalker Amai'),
(64881, 7, 0, 'I want to explore the world!', 12, 0, 100, 1, 0, 0, 65651, 0, 'Hao to Lorewalker Amai'),
(64881, 8, 0, 'Oh. Well, forget it then.', 12, 0, 100, 1, 0, 0, 65653, 0, 'Hao to Lorewalker Amai'),
(64881, 9, 0, 'What?', 12, 0, 100, 1, 0, 0, 65655, 0, 'Hao to Lorewalker Amai'),
(64881, 10, 0, 'That''s un-possible!', 12, 0, 100, 1, 0, 0, 65657, 0, 'Hao to Lorewalker Amai'),
(64880, 0, 0, 'What is the song about?', 12, 0, 100, 1, 0, 0, 65634, 0, 'Nan to Lorewalker Amai'),
(64880, 1, 0, 'Sheesh, Hao. Haven''t you ever paid attention?', 12, 0, 100, 1, 0, 0, 65638, 0, 'Nan to Lorewalker Amai'),
(64880, 2, 0, 'Even Hao?', 12, 0, 100, 6, 0, 0, 65641, 0, 'Nan to Lorewalker Amai'),
(64880, 3, 0, 'Blerch! I''d rather jump off this bridge.', 12, 0, 100, 1, 0, 0, 65644, 0, 'Nan to Lorewalker Amai'),
(64880, 4, 0, 'Because sea turtles always return to the beach where they were born!', 12, 0, 100, 1, 0, 0, 65647, 0, 'Nan to Lorewalker Amai'),
(64880, 5, 0, 'Like Chen and Li Li Stormstout!', 12, 0, 100, 1, 0, 0, 65650, 0, 'Nan to Lorewalker Amai'),
(64880, 6, 0, 'No you don''t. It''s full of trolls.', 12, 0, 100, 1, 0, 0, 65652, 0, 'Nan to Lorewalker Amai'),
(64880, 7, 0, 'What? What?', 12, 0, 100, 1, 0, 0, 65656, 0, 'Nan to Lorewalker Amai'),
(64879, 0, 0, 'Shen-zin Su!', 12, 0, 100, 1, 0, 0, 65635, 0, 'Yin to Lorewalker Amai'),
(64879, 1, 0, '...Whenever he got hungry?', 12, 0, 100, 1, 0, 0, 65645, 0, 'Yin to Lorewalker Amai'),
(64879, 2, 0, 'But isn''t Pandaria hidden somewhere? Nobody can find it!', 12, 0, 100, 1, 0, 0, 65646, 0, 'Yin to Lorewalker Amai'),
(64879, 3, 0, 'But we don''t explore very much anymore, do we?', 12, 0, 100, 1, 0, 0, 65649, 0, 'Yin to Lorewalker Amai'),
(64879, 4, 0, 'Lorewalker! What ever happened to Liu Lang?', 12, 0, 100, 1, 0, 0, 65654, 0, 'Yin to Lorewalker Amai'),
(64879, 5, 0, 'That''s a sad story!', 12, 0, 100, 1, 0, 0, 65658, 0, 'Yin to Lorewalker Amai'),
(57670, 0, 0, 'These are the densest stones across all of Shen-zin Su, yet they are as nothing before my mighty head.', 12, 0, 100, 1, 0, 0, 56355, 0, 'Jojo Ironbrow to Player'),
(57670, 1, 0, 'Any who yet doubt my strength are simply foolish.', 12, 0, 100, 2, 0, 0, 56356, 0, 'Jojo Ironbrow to Player'),
(65558, 0, 0, 'Let''s tackle this one together!', 12, 0, 100, 5, 0, 27320, 60609, 0, 'Ji Firepaw to Player'),
(65558, 1, 0, 'I like the way you fight!', 12, 0, 100, 5, 0, 27322, 60610, 0, 'Ji Firepaw to Player'),
(65558, 1, 1, 'He had that one coming.', 12, 0, 100, 273, 0, 27323, 60611, 0, 'Ji Firepaw to Player'),
(65558, 1, 2, 'Ouch! That one looked painful!', 12, 0, 100, 5, 0, 27324, 60612, 0, 'Ji Firepaw to Player'),
(65558, 1, 3, 'You make this look easy.', 12, 0, 100, 1, 0, 27325, 60613, 0, 'Ji Firepaw to Player'),
(65558, 1, 4, 'They never stood a chance.', 12, 0, 100, 1, 0, 27326, 60614, 0, 'Ji Firepaw to Player'),
(65558, 1, 5, 'You''ve got this handled.', 12, 0, 100, 273, 0, 27327, 60615, 0, 'Ji Firepaw to Player'),
(65558, 1, 6, 'I need to fight by you more often.', 12, 0, 100, 1, 0, 27328, 60616, 0, 'Ji Firepaw to Player'),
(65558, 2, 0, 'Let''s do this, monkeyface!', 12, 0, 100, 5, 0, 27318, 60619, 0, 'Ji Firepaw to Player'),
(65558, 3, 0, 'That all you''ve got?!', 12, 0, 100, 5, 0, 27316, 60620, 0, 'Ji Firepaw to Player'),
(65558, 4, 0, 'This monkey''s about to get slapped!', 12, 0, 100, 5, 0, 27317, 60621, 0, 'Ji Firepaw to Player'),
(65558, 5, 0, 'And he''s down for the count! Good going.', 12, 0, 100, 5, 0, 27315, 60622, 0, 'Ji Firepaw to Player'),
(65558, 6, 0, 'See you at the dock!', 12, 0, 100, 0, 0, 27319, 60618, 0, 'Ji Firepaw to Player'),
(57692, 0, 0, 'This is magnificent!  I''ve never seen craftsmanship so fine.', 12, 0, 100, 1, 0, 0, 56363, 0, 'Jojo Ironbrow to Player'),
(57692, 1, 0, 'There is only one thing to do.  I must smash it!  Once and for all, all shall know the power of my mighty brow.', 12, 0, 100, 1, 0, 0, 56361, 0, 'Jojo Ironbrow to Player'),
(57692, 2, 0, 'Oh... my head... it hurts so badly!  I''ve... the pillar must contain enormous power... perhaps stronger even than my brow...', 12, 0, 100, 18, 0, 0, 56362, 0, 'Jojo Ironbrow to Player'),
(57692, 3, 0, 'I''m... I''m just going to lie down a while... until this headache goes away.', 12, 0, 100, 0, 0, 0, 56364, 0, 'Jojo Ironbrow to Player'),
(55744, 0, 0, 'Wait!', 12, 0, 100, 5, 0, 27400, 54355, 0, 'Aysa Cloudsinger to Player'),
(55744, 1, 0, 'We need to wait for the winds to settle, then make a break for the cover of the far hallway.', 12, 0, 100, 1, 0, 27401, 54356, 0, 'Aysa Cloudsinger to Player'),
(55744, 2, 0, 'Wait for another opening. I''ll meet you on the far side.', 12, 0, 100, 1, 0, 27402, 54357, 0, 'Aysa Cloudsinger to Player'),
(55595, 0, 0, 'Dafeng! What''s wrong? Why are you hiding back here?', 12, 0, 100, 1, 0, 27403, 54362, 0, 'Aysa Cloudsinger to Player'),
(64506, 0, 0, 'That''s the way to do it!', 12, 0, 100, 0, 0, 27380, 64766, 0, 'Aysa Cloudsinger to Zhao-Ren'),
(64506, 1, 0, 'You''ve done it!  Now quickly, lets attack it while it''s grounded.', 12, 0, 100, 0, 0, 27381, 64767, 0, 'Aysa Cloudsinger to Zhao-Ren'),
(64506, 2, 0, 'It''s down!  Let''s finish it off.', 12, 0, 100, 0, 0, 27382, 64768, 0, 'Aysa Cloudsinger to Zhao-Ren'),
(56159, 0, 0, 'Come child. We have one final journey to take together before your training is complete.', 12, 0, 100, 1, 0, 27797, 55520, 0, 'Master Shang Xi to Player'),
(56159, 1, 0, 'Beyond the Elders'' Path lies the Wood of Staves, a sacred place that only the worthy may enter.', 12, 0, 100, 1, 0, 27800, 55521, 0, 'Master Shang Xi to Player'),
(56159, 2, 0, 'Of the many ways to prove your worth, I require the simplest of you now. I must know that you will fight for our people. I must know that you can keep them safe.', 12, 0, 100, 1, 0, 27801, 55522, 0, 'Master Shang Xi to Player'),
(56159, 3, 0, 'Defeat the Guardian of the Elders, and we may pass.', 12, 0, 100, 1, 0, 27802, 55523, 0, 'Master Shang Xi to Player'),
(56159, 4, 0, 'You''ve become strong indeed, child. This is good. You will need that strength soon.', 12, 0, 100, 1, 0, 27803, 56484, 0, 'Master Shang Xi to Player'),
(55672, 0, 0, 'And here we are. Help me with a couple small tasks while I prepare, if you would.', 12, 0, 100, 1, 0, 27805, 56485, 0, 'Master Shang Xi to Player'),
(56686, 0, 0, 'For 3,000 years, we have passed the knowledge of our people down. Elder to youth. Master to student.', 12, 0, 100, 1, 0, 27807, 55528, 0, 'Master Shang Xi to Player'),
(56686, 1, 0, 'Every elder reaches the day where he must pass on and plant his stave with the staves of his ancestors. Today is the day when my staff joins these woods.', 12, 0, 100, 1, 0, 27808, 55529, 0, 'Master Shang Xi to Player'),
(56686, 2, 0, '$p, our people have lived the wholes of their lives on this great turtle, Shen-zin Su, but not in hundreds of years has anyone spoken to him.', 12, 0, 100, 1, 0, 27809, 55530, 0, 'Master Shang Xi to Player'),
(56686, 3, 0, 'Now Shen-zin Su is ill, and we are all in danger. With the help of the elements, you will break the silence. You will speak to him.', 12, 0, 100, 1, 0, 27810, 55531, 0, 'Master Shang Xi to Player'),
(56686, 4, 0, 'Aysa and Ji have retrieved the spirits and brought them here. You are to go with them, speak to the great Shen-zin Su, and do what must be done to save our people.', 12, 0, 100, 1, 0, 27811, 55532, 0, 'Master Shang Xi to Player'),
(56686, 5, 0, 'You''ve come far, my young student. I see within you a great hero. I leave the fate of this land to you.', 12, 0, 100, 396, 0, 27812, 55533, 0, 'Master Shang Xi to Player'),
(56662, 0, 0, 'We''re ready to go whenever you are, $n.', 12, 0, 100, 1, 0, 27428, 55549, 0, 'Aysa Cloudsinger to Player'),
(56662, 1, 0, 'Don''t listen to him.  We''ve got work to do.', 12, 0, 100, 1, 0, 27430, 55553, 0, 'Aysa Cloudsinger to Player'),
(56662, 2, 0, 'Hop in.', 12, 0, 100, 1, 0, 27429, 55551, 0, 'Aysa Cloudsinger to Player'),
(56663, 0, 0, 'Or if you want to wander the woods a while, Aysa and I can hang out here.  You know... just the two of us.', 12, 0, 100, 1, 0, 27296, 55552, 0, 'Ji Firepaw to Player'),
(56660, 0, 0, '$p, where''s Master Shang?', 12, 0, 100, 6, 0, 27297, 55554, 0, 'Ji Firepaw to Aysa Cloudsinger'), -- 33099
(56660, 1, 0, 'Bah, let a pandaren hope, would you?  I''m going to miss the old man.', 12, 0, 100, 1, 0, 27298, 55556, 0, 'Ji Firepaw to Aysa Cloudsinger'),
(56660, 2, 0, 'When am I not respectful?  You hurt me, Aysa.', 12, 0, 100, 6, 0, 27299, 55561, 0, 'Ji Firepaw to Aysa Cloudsinger'),
(56660, 3, 0, 'A thorn?  And I left my tweezers at home.', 12, 0, 100, 6, 0, 27300, 55574, 0, 'Ji Firepaw to Aysa Cloudsinger'),
(56660, 4, 0, 'How could such a thing cause pain to something so large?', 12, 0, 100, 6, 0, 27301, 55575, 0, 'Ji Firepaw to Aysa Cloudsinger'),
(56660, 5, 0, 'Are you seeing what I''m seeing?!  Is that a boat?!', 12, 0, 100, 5, 0, 27302, 55577, 0, 'Ji Firepaw to Aysa Cloudsinger'),
(56660, 6, 0, 'And those aren''t pandaren down there.  They''ve got no fur.', 12, 0, 100, 1, 0, 27303, 55579, 0, 'Ji Firepaw to Aysa Cloudsinger'),
(56661, 0, 0, '...Ji, they were in the Wood of Staves.  You know where Master Shang is now.', 12, 0, 100, 1, 0, 27431, 55555, 0, 'Aysa Cloudsinger to Shang Xi''s Hot Air Balloon'),
(56661, 1, 0, 'Ji, be respectful when we speak to Shen-zin Su.', 12, 0, 100, 1, 0, 27432, 55560, 0, 'Aysa Cloudsinger to Shang Xi''s Hot Air Balloon'),
(56661, 2, 0, 'I might if you embarrass us.', 12, 0, 100, 1, 0, 27433, 55562, 0, 'Aysa Cloudsinger to Shang Xi''s Hot Air Balloon'),
(56661, 3, 0, 'Shen-zin Su, we are the descendants of Liu Lang.  We''ve sensed your pain, and we want to help.', 14, 0, 100, 1, 0, 27434, 55563, 0, 'Aysa Cloudsinger to Shang Xi''s Hot Air Balloon'),
(56661, 4, 0, 'What ails you Shen-zin Su?  What can we do?', 14, 0, 100, 6, 0, 27435, 55564, 0, 'Aysa Cloudsinger to Shang Xi''s Hot Air Balloon'),
(56661, 5, 0, 'Of course, Shen-zin Su!  But your shell is large, and I do not know where this thorn could be.', 14, 0, 100, 1, 0, 27436, 55571, 0, 'Aysa Cloudsinger to Shang Xi''s Hot Air Balloon'),
(56661, 6, 0, 'We will find it, and we will remove it.  You have our word!', 14, 0, 100, 1, 0, 27437, 55573, 0, 'Aysa Cloudsinger to Shang Xi''s Hot Air Balloon'),
(56661, 7, 0, 'We''ll know soon enough.', 12, 0, 100, 1, 0, 27438, 55576, 0, 'Aysa Cloudsinger to Shang Xi''s Hot Air Balloon'),
(56661, 8, 0, 'It is a boat... a whole airship!  That''s a bigger thorn than I was expecting.', 12, 0, 100, 1, 0, 27439, 55578, 0, 'Aysa Cloudsinger to Shang Xi''s Hot Air Balloon'),
(56661, 9, 0, 'Someone has crashed into our island.  Removing this thorn may be more complicated than we thought.', 12, 0, 100, 1, 0, 27440, 55581, 0, 'Aysa Cloudsinger to Shang Xi''s Hot Air Balloon'),
(56661, 10, 0, 'We should let Elder Shaopai know and then plan our next move.', 12, 0, 100, 1, 0, 27441, 55582, 0, 'Aysa Cloudsinger to Shang Xi''s Hot Air Balloon'),
(56676, 0, 0, 'I am in pain, but it warms my heart that Liu Lang''s grandchildren have not forgotten me.', 12, 0, 100, 0, 0, 27822, 55550, 300, 'Shen-zin Su to Player'),
(56676, 1, 0, 'There is a thorn in my side.  I cannot remove it.', 12, 0, 100, 0, 0, 27823, 55568, 300, 'Shen-zin Su to Player'),
(56676, 2, 0, 'The pain is unbearable, and I can no longer swim straight.', 12, 0, 100, 0, 0, 27824, 55569, 300, 'Shen-zin Su to Player'),
(56676, 3, 0, 'Please grandchildren, can you remove this thorn?  I cannot do so on my own.', 12, 0, 100, 0, 0, 27825, 55570, 300, 'Shen-zin Su to Player'),
(56676, 4, 0, 'It is in the forest where your feet do not walk.  Continue along the mountains and you will find it.', 12, 0, 100, 0, 0, 27826, 55572, 300, 'Shen-zin Su to Player'),
(56676, 5, 0, 'Thank you, grandchildren.', 12, 0, 100, 0, 0, 27827, 63407, 350, 'Shen-zin Su to Player'),
(59986, 0, 0, '$n''s here. Let''s go.', 12, 0, 100, 432, 0, 27420, 59481, 0, 'Aysa Cloudsinger to Player'),
(59986, 1, 0, 'Wha...', 12, 0, 100, 432, 0, 27421, 59495, 0, 'Aysa Cloudsinger to Player'),
(59986, 2, 0, 'The gate is jammed.', 12, 0, 100, 274, 0, 27422, 59511, 0, 'Aysa Cloudsinger to Player'),
(59986, 3, 0, 'The Alliance? If the crashed ship is theirs, we need to contact them. Jojo, would you come with me?', 12, 0, 100, 6, 0, 27419, 59583, 0, 'Aysa Cloudsinger to Ji Firepaw'),
(59988, 0, 0, 'Let me try.', 12, 0, 100, 5, 0, 27339, 59513, 0, 'Ji Firepaw to Player'),
(59988, 1, 0, 'Did they prop this door up against a boulder?  It won''t budge!', 12, 0, 100, 5, 0, 27340, 59515, 0, 'Ji Firepaw to Player'),
(59988, 2, 0, 'Well done, Jojo!', 12, 0, 100, 0, 0, 27341, 59521, 0, 'Ji Firepaw to Jojo Ironbrow'),
(59988, 3, 0, 'We need to dislodge that ship, Korga.  If we help your crewmates, can you help us?', 12, 0, 100, 1, 0, 27333, 59584, 0, 'Ji Firepaw to Player'),
(59988, 4, 0, 'Well, we''ve got a master person-finder here, eh $p?  We''re on it.', 12, 0, 100, 1, 0, 27334, 59586, 0, 'Ji Firepaw to Player'),
(60042, 0, 0, 'Wei, are these friends of yours?', 12, 0, 100, 6, 0, 28120, 54956, 0, 'Korga Strongmane to Player'),
(60042, 1, 0, 'Korga Strongmane, once prisoner of the Alliance, now free and woefully unarmed tauren. Good to meet you, pandaren.', 12, 0, 100, 66, 0, 28121, 59555, 0, 'Korga Strongmane to Player'),
(60042, 2, 0, 'Gladly, my new friend. Our engineer is still in the wilds though - we''ll need to rescue him first.', 12, 0, 100, 1, 0, 28122, 59585, 0, 'Korga Strongmane to Player'),
(55943, 0, 0, 'Never met them before in my life. Pandaren don''t really come in any bad flavors though.', 12, 0, 100, 0, 0, 28090, 59554, 0, 'Wei Palerage to Player'),
(60900, 0, 0, 'Let''s go find this engineer.  Maybe getting this thorn removed won''t be as hard as we thought.', 12, 0, 100, 396, 0, 27335, 60379, 0, 'Ji Firepaw to Player'),
(56236, 0, 0, 'I... I am in your debt.', 12, 0, 100, 0, 0, 0, 55139, 0, 'Injured Sailor to Player'),
(56236, 0, 1, 'I''m... alive?  Thank you... thank you so much!', 12, 0, 100, 18, 0, 0, 63840, 0, 'Injured Sailor to Player'),
(56236, 0, 2, 'I can... I can barely breathe.  I''m alive thanks to you.', 12, 0, 100, 18, 0, 0, 64337, 0, 'Injured Sailor to Player'),
(56236, 0, 3, 'I''m alive thanks only to you... I won''t forget this.', 12, 0, 100, 18, 0, 0, 64342, 0, 'Injured Sailor to Player'),
(56236, 0, 4, 'I thought that was it... I thought I was going to die.  Thank you, stranger.', 12, 0, 100, 18, 0, 0, 64344, 0, 'Injured Sailor to Player'),
(56236, 0, 5, 'I owe you my life.', 12, 0, 100, 2, 0, 0, 64348, 0, 'Injured Sailor to Player'),
(56236, 0, 6, 'Thank you for the timely rescue, hero.', 12, 0, 100, 2, 0, 0, 64355, 0, 'Injured Sailor to Player'),
(56416, 0, 0, 'Thank Shen-zin Su that you''re here.  I could use your help!', 12, 0, 100, 0, 0, 27384, 64848, 0, 'Aysa Cloudsinger to Vordraka, the Deep Sea Nightmare'),
(56416, 1, 0, 'Get clear when it when it raises its weapon, it''s even stronger than it looks.', 12, 0, 100, 0, 0, 27385, 64849, 0, 'Aysa Cloudsinger to Vordraka, the Deep Sea Nightmare'),
(56416, 2, 0, 'It''s calling allies!  I''ll keep him busy while you handle them.', 12, 0, 100, 0, 0, 27386, 64850, 0, 'Aysa Cloudsinger to Vordraka, the Deep Sea Nightmare'),
(56416, 3, 0, 'We''re wearing him down.  Keep it up!', 12, 0, 100, 0, 0, 27387, 64852, 0, 'Aysa Cloudsinger to Vordraka, the Deep Sea Nightmare'),
(56416, 4, 0, 'I don''t know what I would have done without you.  It''s good that you came.', 12, 0, 100, 0, 0, 27388, 64853, 0, 'Aysa Cloudsinger to Vordraka, the Deep Sea Nightmare'),
(60729, 0, 0, 'Ji may kill Shen-zin Su if we let him go through with this! Come with me, $p, quickly!', 12, 0, 100, 5, 0, 27412, 55140, 0, 'Aysa Cloudsinger to Player'),
(60729, 1, 0, 'Ji, stop! This is reckless and stupid.', 12, 0, 100, 5, 0, 27413, 60188, 0, 'Aysa Cloudsinger to Player'),
(60729, 2, 0, 'If you stop this, then maybe we can come up with one.', 12, 0, 100, 274, 0, 27414, 60190, 0, 'Aysa Cloudsinger to Player'),
(60729, 3, 0, 'Doing THIS risks everything!', 12, 0, 100, 5, 0, 27415, 60192, 0, 'Aysa Cloudsinger to Player'),
(60729, 4, 0, 'Ji... if this is what you must do, I will not stop you, but we could lose everything. I hope you''re right.', 12, 0, 100, 1, 0, 27416, 60194, 0, 'Aysa Cloudsinger to Player'),
(60729, 5, 0, 'Aysa sighs.', 16, 0, 100, 274, 0, 0, 60211, 0, 'Aysa Cloudsinger to Player'),
(60741, 0, 0, 'Aysa, this is our only option. We blow the ship free, then we heal his wound. We have no other solution.', 12, 0, 100, 1, 0, 27329, 60189, 0, 'Ji Firepaw to Aysa Cloudsinger'),
(60741, 1, 0, 'So we just wait until we think of something? Shen-zin Su is dying! Doing nothing risks everything!', 12, 0, 100, 6, 0, 27330, 60191, 0, 'Ji Firepaw to Aysa Cloudsinger'),
(60741, 2, 0, 'I''d rather die knowing that at least we tried.', 12, 0, 100, 1, 0, 27331, 60193, 0, 'Ji Firepaw to Aysa Cloudsinger'),
(60851, 0, 0, 'We''ll cover this front. You keep my priests safe.', 12, 0, 100, 396, 0, 27503, 59720, 0, 'Delora Lionheart to Player'),
(60852, 0, 0, 'We stand by your side, friend.  This battle is not yours alone.', 12, 0, 100, 6, 0, 28119, 59719, 0, 'Korga Strongmane to Player'),
(60770, 0, 0, 'Thank you for the help. I''ll go help with the wound.', 12, 0, 100, 396, 0, 0, 60248, 0, 'Horde Druid to Player'),
(60770, 0, 1, 'I''m heading to the wound. Try to keep these beasts off of me.', 12, 0, 100, 396, 0, 0, 60342, 0, 'Horde Druid to Player'),
(60770, 0, 2, 'You''re a life-saver. I''ll do everything I can to heal the wound.', 12, 0, 100, 396, 0, 0, 60343, 0, 'Horde Druid to Player'),
(60770, 0, 3, 'I thought I was done for. Thank you!', 12, 0, 100, 396, 0, 0, 60344, 0, 'Horde Druid to Player'),
(60770, 0, 4, 'If all pandaren are like you, I think you may have made some new allies!', 12, 0, 100, 396, 0, 0, 60345, 0, 'Horde Druid to Player'),
(60770, 0, 5, 'You handle the beasts, we''ll handle the wound.', 12, 0, 100, 396, 0, 0, 60346, 0, 'Horde Druid to Player'),
(60770, 0, 6, 'Keep these creatures off of us while we perform our healing.', 12, 0, 100, 396, 0, 0, 60347, 0, 'Horde Druid to Player'),
(60770, 0, 7, 'I''d stand with you any day.', 12, 0, 100, 396, 0, 0, 60348, 0, 'Horde Druid to Player'),
(60834, 0, 0, 'Thank you for the help. I''ll go help with the wound.', 12, 0, 100, 396, 0, 0, 60248, 0, 'Horde Druid to 60848'),
(60834, 0, 1, 'I''m heading to the wound. Try to keep these beasts off of me.', 12, 0, 100, 396, 0, 0, 60342, 0, 'Horde Druid to 60848'),
(60834, 0, 2, 'You''re a life-saver. I''ll do everything I can to heal the wound.', 12, 0, 100, 396, 0, 0, 60343, 0, 'Horde Druid to 60848'),
(60834, 0, 3, 'I thought I was done for. Thank you!', 12, 0, 100, 396, 0, 0, 60344, 0, 'Horde Druid to 60848'),
(60834, 0, 4, 'If all pandaren are like you, I think you may have made some new allies!', 12, 0, 100, 396, 0, 0, 60345, 0, 'Horde Druid to 60848'),
(60834, 0, 5, 'You handle the beasts, we''ll handle the wound.', 12, 0, 100, 396, 0, 0, 60346, 0, 'Horde Druid to 60848'),
(60834, 0, 6, 'Keep these creatures off of us while we perform our healing.', 12, 0, 100, 396, 0, 0, 60347, 0, 'Horde Druid to 60848'),
(60834, 0, 7, 'I''d stand with you any day.', 12, 0, 100, 396, 0, 0, 60348, 0, 'Horde Druid to 60848'),
(60877, 0, 0, 'Thank you for the help. I''ll go help with the wound.', 12, 0, 100, 396, 0, 0, 60248, 0, 'Alliance Priest to Player'),
(60877, 0, 1, 'I''m heading to the wound. Try to keep these beasts off of me.', 12, 0, 100, 396, 0, 0, 60342, 0, 'Alliance Priest to Player'),
(60877, 0, 2, 'You''re a life-saver. I''ll do everything I can to heal the wound.', 12, 0, 100, 396, 0, 0, 60343, 0, 'Alliance Priest to Player'),
(60877, 0, 3, 'I thought I was done for. Thank you!', 12, 0, 100, 396, 0, 0, 60344, 0, 'Alliance Priest to Player'),
(60877, 0, 4, 'If all pandaren are like you, I think you may have made some new allies!', 12, 0, 100, 396, 0, 0, 60345, 0, 'Alliance Priest to Player'),
(60877, 0, 5, 'You handle the beasts, we''ll handle the wound.', 12, 0, 100, 396, 0, 0, 60346, 0, 'Alliance Priest to Player'),
(60877, 0, 6, 'Keep these creatures off of us while we perform our healing.', 12, 0, 100, 396, 0, 0, 60347, 0, 'Alliance Priest to Player'),
(60877, 0, 7, 'I''d stand with you any day.', 12, 0, 100, 396, 0, 0, 60348, 0, 'Alliance Priest to Player'),
(60878, 0, 0, 'Thank you for the help. I''ll go help with the wound.', 12, 0, 100, 396, 0, 0, 60248, 0, 'Alliance Priest to 60848'),
(60878, 0, 1, 'I''m heading to the wound. Try to keep these beasts off of me.', 12, 0, 100, 396, 0, 0, 60342, 0, 'Alliance Priest to 60848'),
(60878, 0, 2, 'You''re a life-saver. I''ll do everything I can to heal the wound.', 12, 0, 100, 396, 0, 0, 60343, 0, 'Alliance Priest to 60848'),
(60878, 0, 3, 'I thought I was done for. Thank you!', 12, 0, 100, 396, 0, 0, 60344, 0, 'Alliance Priest to 60848'),
(60878, 0, 4, 'If all pandaren are like you, I think you may have made some new allies!', 12, 0, 100, 396, 0, 0, 60345, 0, 'Alliance Priest to 60848'),
(60878, 0, 5, 'You handle the beasts, we''ll handle the wound.', 12, 0, 100, 396, 0, 0, 60346, 0, 'Alliance Priest to 60848'),
(60878, 0, 6, 'Keep these creatures off of us while we perform our healing.', 12, 0, 100, 396, 0, 0, 60347, 0, 'Alliance Priest to 60848'),
(60878, 0, 7, 'I''d stand with you any day.', 12, 0, 100, 396, 0, 0, 60348, 0, 'Alliance Priest to 60848'),
(56418, 0, 0, 'There are healers under some of the wreckage!  Get them free.', 14, 0, 100, 0, 0, 27285, 66060, 0, 'Ji Firepaw'),
(56418, 0, 1, 'Find the healers and get them free of the fight.  We need them here at the wound!', 14, 0, 100, 0, 0, 27286, 66061, 0, 'Ji Firepaw'),
(56418, 0, 2, 'Stay close and keep these healers safe.  Our lives depend on it.', 14, 0, 100, 0, 0, 27287, 66062, 0, 'Ji Firepaw'),
(56418, 0, 3, 'If we lose the healers, Shen-zin Su dies, and all of us with him!  Keep them safe.', 14, 0, 100, 0, 0, 27288, 66063, 0, 'Ji Firepaw'),
(60888, 0, 0, 'I bear your presence only as a kindness to our new allies. Don''t push me, human.', 12, 0, 100, 0, 0, 28117, 60359, 0, 'Korga Strongmane to Player'),
(60889, 0, 0, 'Stand down, tauren, before I put you back in chains.', 12, 0, 100, 396, 0, 27522, 60623, 0, 'Delora Lionheart to Player'),
(56013, 0, 0, 'You''ve all accomplished a great thing in saving Shen-zin Su. You do us all proud.', 12, 0, 100, 1, 0, 27784, 60632, 0, 'Spirit of Master Shang Xi to Player'),
(56013, 1, 0, 'It seems your journeys are not done. These new allies of ours come from a broken world that could use our help.', 12, 0, 100, 1, 0, 27785, 60633, 0, 'Spirit of Master Shang Xi to Player'),
(56013, 2, 0, 'What of you, Ji? Will you join the Horde in their journey back?', 12, 0, 100, 6, 0, 27786, 60629, 0, 'Spirit of Master Shang Xi to Player'),
(56013, 3, 0, 'And you, my young student? Where will you go?', 12, 0, 100, 6, 0, 27787, 60631, 0, 'Spirit of Master Shang Xi to Player'),
(57721, 0, 0, 'Master Shang Xi, I would like to accompany the Alliance back to their home.', 12, 0, 100, 1, 0, 27405, 60628, 0, 'Aysa Cloudsinger to Player'),
(57720, 0, 0, 'Yes... perhaps that is for the best. I like what I''ve seen of them, and it sounds as though their world could use my help.', 12, 0, 100, 273, 0, 27305, 60630, 0, 'Ji Firepaw to Player'),
(55944, 0, 0, 'We need more healers at the tents. Recall the priests from the west.', 14, 0, 100, 22, 0, 27508, 60625, 0, 'Delora Lionheart'),
(55944, 1, 0, 'Hold the line, sailors! Your brothers depend on you!', 14, 0, 100, 22, 0, 27505, 59721, 0, 'Delora Lionheart'),
(55944, 2, 0, 'Tend to the wounded! This isn''t over yet.', 14, 0, 100, 22, 0, 27506, 59722, 0, 'Delora Lionheart'),
(55944, 3, 0, 'We have men in that wreckage! Get more men out there recovering the wounded.', 14, 0, 100, 22, 0, 27507, 60624, 0, 'Delora Lionheart');

DELETE FROM `creature_template_addon` WHERE `entry` = '55556'; 
--  SAI
SET @ENTRY := 64875;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,1000,1000,326000,326000,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Update OOC - Run Script");

-- Actionlist SAI
SET @ENTRY := 6487500;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,45,4,1,0,0,0,0,10,0,64876,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,1,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,2,0,0,0,100,0,5000,5000,0,0,45,1,1,0,0,0,0,10,0,64881,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,3,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,4,0,0,0,100,0,5000,5000,0,0,45,2,1,0,0,0,0,10,0,64880,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,5,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,6,0,0,0,100,0,5000,5000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,7,0,0,0,100,0,5000,5000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,8,0,0,0,100,0,5000,5000,0,0,45,3,1,0,0,0,0,10,0,64879,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,9,0,0,0,100,0,5000,5000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,10,0,0,0,100,0,5000,5000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,11,0,0,0,100,0,5000,5000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,12,0,0,0,100,0,5000,5000,0,0,45,1,2,0,0,0,0,10,0,64881,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,13,0,0,0,100,0,2000,2000,0,0,5,11,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Play Emote"),
(@ENTRY,9,14,0,0,0,100,0,5000,5000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,15,0,0,0,100,0,5000,5000,0,0,45,2,2,0,0,0,0,10,0,64880,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,16,0,0,0,100,0,5000,5000,0,0,45,1,3,0,0,0,0,10,0,64881,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,17,0,0,0,100,0,3000,3000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,18,0,0,0,100,0,5000,5000,0,0,45,1,4,0,0,0,0,10,0,64881,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,19,0,0,0,100,0,5000,5000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,20,0,0,0,100,0,5000,5000,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,21,0,0,0,100,0,5000,5000,0,0,45,2,3,0,0,0,0,10,0,64880,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,22,0,0,0,100,0,3500,3500,0,0,45,1,5,0,0,0,0,10,0,64881,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,23,0,0,0,100,0,3500,3500,0,0,1,12,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,24,0,0,0,100,0,5000,5000,0,0,1,13,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,25,0,0,0,100,0,5000,5000,0,0,45,1,6,0,0,0,0,10,0,64881,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,26,0,0,0,100,0,3500,3500,0,0,45,2,4,0,0,0,0,10,0,64880,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,27,0,0,0,100,0,3500,3500,0,0,1,14,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,28,0,0,0,100,0,5000,5000,0,0,1,15,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,29,0,0,0,100,0,5000,5000,0,0,45,3,2,0,0,0,0,10,0,64879,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,30,0,0,0,100,0,5000,5000,0,0,1,16,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,31,0,0,0,100,0,5000,5000,0,0,1,17,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,32,0,0,0,100,0,5000,5000,0,0,45,3,3,0,0,0,0,10,0,64879,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,33,0,0,0,100,0,5000,5000,0,0,1,18,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,34,0,0,0,100,0,5000,5000,0,0,1,19,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,35,0,0,0,100,0,5000,5000,0,0,45,2,5,0,0,0,0,10,0,64880,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,36,0,0,0,100,0,5000,5000,0,0,1,20,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,37,0,0,0,100,0,5000,5000,0,0,45,1,7,0,0,0,0,10,0,64881,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,38,0,0,0,100,0,5000,5000,0,0,1,21,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,39,0,0,0,100,0,5000,5000,0,0,45,3,4,0,0,0,0,10,0,64879,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,40,0,0,0,100,0,5000,5000,0,0,1,22,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,41,0,0,0,100,0,5000,5000,0,0,45,2,6,0,0,0,0,10,0,64880,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,42,0,0,0,100,0,5000,5000,0,0,1,23,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,43,0,0,0,100,0,5000,5000,0,0,45,1,8,0,0,0,0,10,0,64881,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,44,0,0,0,100,0,3500,3500,0,0,45,2,7,0,0,0,0,10,0,64880,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,45,0,0,0,100,0,2500,2500,0,0,45,1,9,0,0,0,0,10,0,64881,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,46,0,0,0,100,0,4000,4000,0,0,45,3,5,0,0,0,0,10,0,64879,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,47,0,0,0,100,0,5000,5000,0,0,1,24,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,48,0,0,0,100,0,6000,6000,0,0,1,25,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,49,0,0,0,100,0,5000,5000,0,0,1,26,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,50,0,0,0,100,0,5000,5000,0,0,1,27,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,51,0,0,0,100,0,5000,5000,0,0,1,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,52,0,0,0,100,0,5000,5000,0,0,1,29,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,53,0,0,0,100,0,1000,1000,0,0,45,4,2,0,0,0,0,10,0,64876,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,54,0,0,0,100,0,5000,5000,0,0,1,30,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,55,0,0,0,100,0,5000,5000,0,0,1,31,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,56,0,0,0,100,0,5000,5000,0,0,45,1,10,0,0,0,0,10,0,64881,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,57,0,0,0,100,0,1000,1000,0,0,45,2,8,0,0,0,0,10,0,64880,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,58,0,0,0,100,0,5000,5000,0,0,1,32,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,59,0,0,0,100,0,5000,5000,0,0,45,1,11,0,0,0,0,10,0,64881,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,60,0,0,0,100,0,5000,5000,0,0,1,33,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,61,0,0,0,100,0,4500,4500,0,0,1,34,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,62,0,0,0,100,0,10000,10000,0,0,45,3,6,0,0,0,0,10,0,64879,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,63,0,0,0,100,0,5000,5000,0,0,1,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,64,0,0,0,100,0,5000,5000,0,0,1,36,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,65,0,0,0,100,0,7000,7000,0,0,1,37,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,66,0,0,0,100,0,5000,5000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.38078,"Lorewalker Amai - Set Orientation"),
(@ENTRY,9,67,0,0,0,100,0,2000,2000,0,0,1,38,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,68,0,0,0,100,0,6000,6000,0,0,1,39,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lorewalker Amai - Talk"),
(@ENTRY,9,69,0,0,0,100,0,2000,2000,0,0,45,4,3,0,0,0,0,10,0,64876,0,0,0,0,0,"Lorewalker Amai - Set Data"),
(@ENTRY,9,70,0,0,0,100,0,1500,1500,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.82153,"Lorewalker Amai - Set Orientation");

-- Quest 29785
-- Dafeng SAI
SET @ENTRY := 55592;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dafeng - on Respawn - Set Active"),
(@ENTRY,0,1,0,31,0,100,0,104616,0,0,0,33,55666,0,0,0,0,0,7,0,0,0,0,0,0,0,"Dafeng - On Spellhit Target - Quest Credit");
-- Aysa Cloudsinger SAI
SET @ENTRY := 55744;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,653.153,4224.64,202.909,0,"Aysa Cloudsinger - Just Spawned - Move to Pos"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - Just Spawned - Set Event Phase 1"),
(@ENTRY,0,2,0,34,1,100,0,8,1,0,0,1,0,2000,0,0,0,0,23,0,0,0,0,0,0,0,"Aysa Cloudsinger - Movement Inform - Talk"),
(@ENTRY,0,3,0,52,1,100,0,0,55744,0,0,1,1,4000,0,0,0,0,23,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Text Over - Talk"),
(@ENTRY,0,4,0,52,1,100,0,1,55744,0,0,69,2,0,0,0,0,0,8,0,0,0,647.493,4224.63,202.909,0,"Aysa Cloudsinger - On Text Over - Move to Pos"),
(@ENTRY,0,5,6,34,1,100,0,8,2,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - Movement Inform - Run Script"),
(@ENTRY,0,6,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - Movement Inform - Set Event Phase 2"),
(@ENTRY,0,7,8,38,2,100,0,1,1,0,0,53,1,55744,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Data Set - Start WP"),
(@ENTRY,0,8,0,61,2,100,0,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Data Set - Set Event Phase 3"),
(@ENTRY,0,9,10,8,4,100,0,104612,0,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Spellhit - Talk"),
(@ENTRY,0,10,0,61,4,100,0,0,0,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Data Set - Set Event Phase 4"),
(@ENTRY,0,11,12,38,8,100,0,2,2,0,0,53,1,@ENTRY*100+00,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Data Set - Start WP"),
(@ENTRY,0,12,0,61,8,100,0,0,0,0,0,22,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Data Set - Set Event Phase 5"),
(@ENTRY,0,13,14,58,16,100,0,5,@ENTRY*100+00,0,0,11,104748,2,0,0,0,0,23,0,0,0,0,0,0,0,"Aysa Cloudsinger - On WP Ended - Cast Forcecast to Master for Aysa See Invis"),
(@ENTRY,0,14,15,61,16,100,0,0,0,0,0,28,104571,0,0,0,0,0,23,0,0,0,0,0,0,0,"Aysa Cloudsinger - On WP Ended - Remove Aura"),
(@ENTRY,0,15,0,61,16,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On WP Ended - Despawn");
-- Areatrigger SAI
SET @ENTRY := 7041;
DELETE FROM `areatrigger_scripts` WHERE `entry`=@ENTRY;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES (@ENTRY,"SmartTrigger");
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,2,0,0,46,0,100,0,7041,0,0,0,86,104593,2,10,21001441,55665,0,7,0,0,0,0,0,0,0,"On Trigger - Cross Cast Forcecast Summon Aysa, Wind Chamber");
-- Actionlist SAI
SET @ENTRY := 5574400;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,250,250,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.42601,"Aysa Cloudsinger - Movement Inform - Set Orientation");
-- Areatrigger SAI
SET @ENTRY := 7042;
DELETE FROM `areatrigger_scripts` WHERE `entry`=@ENTRY;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES (@ENTRY,"SmartTrigger");
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,2,0,0,46,0,100,0,7042,0,0,0,86,104614,2,10,21001444,55665,0,7,0,0,0,0,0,0,0,"On Trigger - Cross Cast Forcecast Trigger Aysa Wind Chamber Middle");
-- Areatrigger SAI
SET @ENTRY := 7037;
DELETE FROM `areatrigger_scripts` WHERE `entry`=@ENTRY;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES (@ENTRY,"SmartTrigger");
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,2,0,0,46,0,100,0,7037,0,0,0,86,104616,2,10,21001445,55592,0,7,0,0,0,0,0,0,0,"On Trigger - Cross Cast Forcecast Trigger Aysa Wind Chamber Rear");

-- Actionlist SAI
SET @ENTRY := 6450700;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,21000,21000,0,0,22,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Firework Launcher - Set Event Phase 1");
--  SAI
SET @ENTRY := 64507;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Firework Launcher - On Respawn - Set Event Phase 1"),
(@ENTRY,0,1,2,8,1,100,0,125961,0,0,0,11,125970,2,0,0,0,0,7,0,0,0,0,0,0,0,"Firework Launcher - On Spellhit - Cast AICast Overpacked Firework"),
(@ENTRY,0,2,3,61,1,100,0,0,0,0,0,117,2538,0,0,0,0,0,1,0,0,0,0,0,0,0,"Firework Launcher - On Spellhit - Play Oneshot AnimKit"),
(@ENTRY,0,3,4,61,1,100,0,0,0,0,0,11,125964,2,0,0,0,0,1,0,0,0,0,0,0,0,"Firework Launcher - On Spellhit - Cast Firework Launcher Inactive"),
(@ENTRY,0,4,5,61,1,100,0,0,0,0,0,11,104080,0,0,0,0,0,10,21001463,64505,0,0,0,0,0,"Firework Launcher - On Spellhit - Set Data"),
(@ENTRY,0,5,6,61,1,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Firework Launcher - On Spellhit - Run Script"),
(@ENTRY,0,6,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Firework Launcher - On Spellhit - Set Event Phase 2"),
(@ENTRY,0,7,0,60,2,100,0,5000,5000,5000,5000,11,104080,0,0,0,0,0,10,21001463,64505,0,0,0,0,0,"Firework Launcher - Update - Cast Firework Launcher Inactive"),
(@ENTRY,0,8,0,38,0,100,0,1,1,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Firework Launcher - On Data Set - Set Event Phase 1");
-- Actionlist SAI
SET @ENTRY := 6450600;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,15000,15000,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - Evade");
--  SAI
SET @ENTRY := 64506;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,11,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Respawn - Set React State"),
(@ENTRY,0,1,0,11,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Respawn - Set Event Phase 1"),
(@ENTRY,0,2,0,38,0,100,0,1,1,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Data Set - Talk"),
(@ENTRY,0,3,4,38,0,100,0,2,2,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Data Set - Talk"),
(@ENTRY,0,4,6,61,0,100,0,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Data Set - Remove Bytes 1"),
(@ENTRY,0,5,6,38,0,100,0,3,3,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Data Set - Talk"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,49,0,0,0,0,0,0,10,21001459,55786,0,0,0,0,0,"Aysa Cloudsinger - On Data Set - Start Attack"),
(@ENTRY,0,7,8,38,0,100,0,4,4,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Data Set - Stop Attack"),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Data Set - Set Event Phase 2"),
(@ENTRY,0,9,0,60,2,100,0,4000,8000,8000,12000,11,117312,0,0,0,0,0,2,0,0,0,0,0,0,0,"Aysa Cloudsinger - Update - Cast Combat Roll"),
(@ENTRY,0,10,11,38,0,100,0,5,5,0,0,69,2,0,0,0,0,0,1,0,0,0,714.385,4163.74,195.89,0,"Aysa Cloudsinger - On Data Set - Move to Pos"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Data Set - Run Script");
--  SAI
SET @ENTRY := 64505;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,25,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - On Reset - Set React State"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - On Respawn - Set Event Phase 1"),
(@ENTRY,0,2,3,8,1,100,0,104080,0,0,0,69,1,0,1,1,10,0,7,0,0,0,0,0,0,0,"Ji Firepaw - On Spellhit - Move to Pos"),
(@ENTRY,0,3,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - On Spellhit - Set Event Phase 2"),
(@ENTRY,0,4,0,34,2,100,0,8,1,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Movement Inform - Run Script"),
(@ENTRY,0,5,6,38,0,100,0,1,1,0,0,49,0,0,0,0,0,0,10,21001459,55786,0,0,0,0,0,"Ji Firepaw - On Data Set - Start Attack"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - On Data Set - Set Event Phase 3"),
(@ENTRY,0,7,0,0,4,100,0,3000,5000,3000,5000,11,128630,0,0,0,0,0,2,0,0,0,0,0,0,0,"Ji Firepaw - Update IC - Cast Jab"),
(@ENTRY,0,8,0,0,4,100,0,5000,8000,8000,12000,11,128631,0,0,0,0,0,2,0,0,0,0,0,0,0,"Ji Firepaw - Update IC - Cast Blackout Kick"),
(@ENTRY,0,9,10,38,4,100,0,4,4,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - On Data Set - Stop Attack"),
(@ENTRY,0,10,0,61,4,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - On Data Set - Set Event Phase 1"),
(@ENTRY,0,11,12,38,0,100,0,5,5,0,0,69,2,0,0,0,0,0,1,0,0,0,714.385,4163.74,195.89,0,"Ji Firepaw - On Data Set - Move to Pos"),
(@ENTRY,0,12,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+01,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - On Data Set - Run Script");
-- Actionlist SAI
SET @ENTRY := 6450500;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,200,200,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Ji Firepaw - Set Orientation"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,5,381,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Play Emote"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,28,125964,0,0,0,0,0,11,64507,3,0,0,0,0,0,"Ji Firepaw - Remove Aura"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,64507,3,0,0,0,0,0,"Ji Firepaw - Remove Aura"),
(@ENTRY,9,4,0,0,0,100,0,1000,1000,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Set Event Phase 1");

-- Actionlist SAI
SET @ENTRY := 6450501;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Set Event Phase 4"),
(@ENTRY,9,1,0,0,0,100,0,15000,15000,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ji Firepaw - Evade");

-- Actionlist SAI
SET @ENTRY := 6454300;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1000,1000,0,0,59,1,12,1,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - Just Spawned - Run Script"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,53,1,64543,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - Start WP");
--  SAI
SET @ENTRY := 64543;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - Just Spawned - Run Script"),
(@ENTRY,0,1,0,58,0,100,0,13,64543,0,0,97,15,20,0,0,0,0,1,0,0,0,675.445,4204.72,196.58,0,"Aysa Cloudsinger - On WP Ended - Jump to Pos"),
(@ENTRY,0,2,0,34,0,100,0,16,1004,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - Movement Inform - Despawn");

-- Actionlist SAI
SET @ENTRY := 5559500;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Aysa Cloudsinger - Talk");
--  SAI
SET @ENTRY := 55595;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,104615,0,10000,10000,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Spellhit - Run Script"),
(@ENTRY,0,1,2,19,0,100,0,29786,0,0,0,85,126059,2,0,0,0,0,7,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Accepted Quest - Invoker Cast Summon Aysa"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,44,169,1,0,0,0,0,7,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Accepted Quest - Add Phase"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,44,524,1,0,0,0,0,7,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Accepted Quest - Add Phase"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,44,1430,0,0,0,0,0,7,0,0,0,0,0,0,0,"Aysa Cloudsinger - On Accepted Quest - Remove Phase");

DELETE FROM `spell_script_names` WHERE `spell_id` IN (114698, 116421, 128598, 96733, 102207, 102522, 107050, 103069, 117033, 117034, 117035, 117036, 116810, 117054, 128589, 128588, 119073, 104126, 109144, 60603);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(114698, 'spell_summon_troublemaker'),
(116421, 'spell_meditation_timer_bar'),
(128598, 'spell_cave_of_scrolls_comp_timer_aura'),
(96733, 'spell_gen_creature_permanent_feign_death'),
(102207, 'spell_summon_living_air'),
(102522, 'spell_fan_the_flames'),
(103069, 'spell_rock_jump_a'),
(117033, 'spell_jump_to_front_right'),
(117034, 'spell_jump_to_front_left'),
(117035, 'spell_jump_to_back_right'),
(117036, 'spell_jump_to_back_left'),
(116810, 'spell_summon_water_spout'),
(117054, 'spell_water_spout_quest_credit'),
(128589, 'spell_aysa_congrats_timer'),
(128588, 'spell_aysa_congrats_trigger_aura'),
(119073, 'spell_gen_creature_permanent_feign_death'),
(104126, 'spell_monkey_wisdom_text'),
(109144, 'spell_master_shang_final_escort_say'),
(60603, 'spell_gen_eject_passenger');

UPDATE `creature_template` SET `npcflag` = '3' WHERE `entry` = '56416'; 
DELETE FROM `creature` WHERE `guid` = '210002100' AND `id` = 59649 AND `map` = 860; 
DELETE FROM `creature` WHERE `guid` = '210002101' AND `id` = 59649 AND `map` = 860;  
DELETE FROM `creature` WHERE `guid` = '210002102' AND `id` = 56416 AND `map` = 860; 
DELETE FROM `creature` WHERE `guid` = '210002103' AND `id` = 64507 AND `map` = 860; 
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
('210002100','59649','860','0','0','0','0','838','0','-1','0','0','1140.18','3437.33','105.347','0.538516','300','0','0','60','0','0','0','0','0','0','0','','0'),
('210002101','59649','860','0','0','0','0','838','0','-1','0','0','1142.05','3431.47','105.463','6.24993','300','0','0','60','0','0','0','0','0','0','0','','0'),
('210002102','56416','860','5736','5833','0','0','0','680','-1','0','0','286.097','4014.87','75.2197','0.874763','300','0','0','118','0','0','0','557056','0','0','0','','0'),
('210002103','64507','860','0','0','0','0','524','0','-1','0','0','699.134','4170.06','196.094','6.03346','300','0','0','31','0','0','0','262144','0','0','0','','0');

UPDATE `creature_addon` SET `auras` = '82358' WHERE `guid` = '21000344';
UPDATE `quest_template` SET `QuestType` = '2' WHERE `ID` = '29661'; 
UPDATE `conditions` SET `ConditionValue1`='3' WHERE  `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=106623 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=51 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=55672 AND `ConditionValue3`=0;
DELETE FROM `creature` WHERE `id` = 56008 AND `map` = 860 AND `guid` IN (21001635, 21001656, 21001713, 21001899, 21001901, 21001902, 210002104, 210002105, 210002106, 210002107, 210002108, 210002109, 210002110);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21001635, 56008, 860, 5736, 5737, 0, 0, 0, 0, 0, 522.2969, 3971.42, 79.02443, 1.18991, 120, 0, 0, 0, 0, 0, 0, 0, 0, 20886),
(21001656, 56008, 860, 5736, 5833, 0, 0, 0, 0, 0, 471.1406, 3984.335, 79.4213, 0.1346712, 120, 0, 0, 0, 0, 0, 0, 0, 0, 20886),
(21001713, 56008, 860, 5736, 5737, 0, 1835, 0, 0, 0, 438.2535, 3962.784, 79.14427, 5.284973, 120, 0, 0, 0, 0, 0, 0, 0, 0, 20886),
(21001899, 56008, 860, 5736, 5737, 0, 0, 0, 0, 0, 438.4359, 3921.911, 78.30173, 0.09148105, 120, 0, 0, 0, 0, 0, 0, 0, 0, 20886),
(21001901, 56008, 860, 5736, 5737, 0, 0, 0, 0, 0, 370.7049, 3944.853, 86.57393, 6.220808, 120, 0, 0, 0, 0, 0, 0, 0, 0, 20886), 
(21001902, 56008, 860, 5736, 5833, 0, 0, 0, 0, 0, 406.131, 4002.863, 79.74606, 4.949976, 120, 10, 0, 0, 0, 1, 0, 0, 0, 20886), 
(210002104, 56008, 860, 5736, 5737, 0, 0, 0, 0, 0, 286.5781, 4083.228, 69.04906, 6.02406, 120, 0, 0, 0, 0, 0, 0, 0, 0, 20886), 
(210002105, 56008, 860, 5736, 5833, 0, 0, 0, 0, 0, 375.4537, 3892.517, 78.66745, 5.941334, 120, 0, 0, 0, 0, 0, 0, 0, 0, 20886),
(210002106, 56008, 860, 5736, 5737, 0, 0, 0, 0, 0, 265.9381, 3793.68, 71.60126, 0.8058805, 120, 10, 0, 0, 0, 1, 0, 0, 0, 20886),
(210002107, 56008, 860, 5736, 5833, 0, 0, 0, 0, 0, 403.0607, 4015.402, 78.57691, 4.952935, 120, 10, 0, 0, 0, 1, 0, 0, 0, 20886), 
(210002108, 56008, 860, 5736, 5737, 0, 0, 0, 0, 0, 345.4218, 4021.883, 89.05107, 5.75924, 120, 0, 0, 0, 0, 0, 0, 0, 0, 20886), 
(210002109, 56008, 860, 5736, 5833, 0, 0, 0, 0, 0, 426.5238, 3917.625, 78.39655, 0.5092382, 120, 10, 0, 0, 0, 1, 0, 0, 0, 20886), 
(210002110, 56008, 860, 5736, 5737, 0, 0, 0, 0, 0, 366.3299, 3895.764, 78.27188, 5.941334, 120, 0, 0, 0, 0, 0, 0, 0, 0, 20886);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceEntry`=102717 AND `SourceGroup` IN (54993, 55083, 57431);
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(18, 54993, 102717, 0, 0, 1, 0, 102938, 0, 0, 0, 0, 0, '', 'Show spellclick only when has not aura'),
(18, 55083, 102717, 0, 0, 1, 0, 102938, 0, 0, 0, 0, 0, '', 'Show spellclick only when has not aura'),
(18, 57431, 102717, 0, 0, 1, 0, 102938, 0, 0, 0, 0, 0, '', 'Show spellclick only when has not aura');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=50047;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(18, 50047, 93072, 0, 0, 1, 0, 94562, 0, 0, 1, 0, 0, '', 'Show spellclick only when has not aura');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=25 AND `SourceEntry` IN (975, 976);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
-- TerrainSwaps
(25, 0, 975, 0, 0, 28, 0, 30767, 0, 0, 0, 0, 0, '', 'TerrainSwap 975 only when player has quest 30767 complete'),
(25, 0, 975, 0, 1, 8, 0, 30767, 0, 0, 0, 0, 0, '', 'TerrainSwap 975 only when player has quest 30767 rewarded'),
(25, 0, 975, 0, 1, 8, 0, 29799, 0, 0, 1, 0, 0, '', 'TerrainSwap 975 only when player has quest 29799 not rewarded'),
(25, 0, 975, 0, 2, 1, 0, 118233, 0, 0, 0, 0, 0, '', 'TerrainSwap 975 only when player has aura'),
(25, 0, 976, 0, 0, 8, 0, 29799, 0, 0, 0, 0, 0, '', 'TerrainSwap 976 only when player has quest 29799 rewarded'),
(25, 0, 976, 0, 0, 1, 0, 118233, 0, 0, 1, 0, 0, '', 'TerrainSwap 976 only when player has not aura');

replace into `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) values
('11648','0','0','0','262818','25478','571','0','1','0','0','0','23877'),
('11648','0','1','0','262818','25478','571','0','1','0','0','0','26124'),
('11648','0','2','32','0','0','571','0','0','0','0','0','26124'),
('11648','1','1','-1','0','0','571','0','1','0','0','0','23877');

replace into `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) values
('11648','0','0','3634','5899','22908'),
('11648','1','0','3635','5900','22908');

REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
('14123','0','0','0','264761','48937','648','0','1','0','0','0','23877'),
('14123','0','1','0','264761','48937','648','0','1','0','0','0','26124'),
('14123','0','2','1','264762','48939','648','0','1','0','0','0','26124'),
('14123','0','3','2','264763','48941','648','0','1','0','0','0','26124'),
('14123','0','4','32','0','0','648','0','0','0','0','0','26124'),
('14123','1','1','0','264762','48939','648','0','1','0','0','0','23877'),
('14123','1','5','32','0','0','648','0','0','0','0','0','26124'),
('14123','2','2','0','264763','48941','648','0','1','0','0','0','23877'),
('14123','2','6','32','0','0','648','0','0','0','0','0','26124'),
('14123','3','3','-1','0','0','648','0','7','0','0','0','23877');

REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
('14123','0','0','-8145','1912','22908'),
('14123','1','0','-8048','1956','22908'),
('14123','2','0','-8008','1859','22908'),
('14123','3','0','-8420','1325','22908');