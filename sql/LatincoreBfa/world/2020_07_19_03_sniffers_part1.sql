DELETE FROM `areatrigger_template` WHERE `Id` IN (9225, 11492, 10471, 11513);
INSERT INTO `areatrigger_template` (`Id`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `VerifiedBuild`) VALUES
(9225, 0, 0, 8, 8, 0, 0, 0, 0, 27101),
(11492, 0, 24, 5, 5, 0, 0, 0, 0, 27101),
(10471, 0, 4, 10, 10, 0, 0, 0, 0, 27101),
(11513, 0, 0, 40, 40, 0, 0, 0, 0, 27101);


DELETE FROM `spell_areatrigger` WHERE (`AreaTriggerId`=9225) OR (`AreaTriggerId`=11492) OR (`AreaTriggerId`=10471) OR (`AreaTriggerId`=11513);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(43265, 9225, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 27101), -- SpellId : 43265
(212431, 11492, 1843, 0, 0, 0, 0, 0, 0, 1885, 4000, 27101), -- SpellId : 212431
(198839, 10471, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27101), -- SpellId : 198839
(212799, 11513, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 27101); -- SpellId : 212799


DELETE FROM `gameobject_template_addon` WHERE `entry` IN (184322 /*184322*/, 184449 /*184449*/, 184465 /*184465*/, 184632 /*184632*/, 185015 /*185015*/, 191722 /*191722*/, 191565 /*191565*/, 191560 /*191560*/, 191558 /*191558*/, 191559 /*191559*/, 191606 /*191606*/, 191564 /*191564*/, 191563 /*191563*/, 191556 /*191556*/, 191557 /*191557*/, 191562 /*191562*/, 191723 /*191723*/, 193611 /*193611*/, 191566 /*191566*/, 193615 /*193615*/);
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`) VALUES
(184322, 1375, 32), -- 184322
(184449, 1375, 32), -- 184449
(184465, 0, 2113536), -- 184465
(184632, 1375, 32), -- 184632
(185015, 94, 4), -- 185015
(191722, 114, 32), -- 191722
(191565, 114, 32), -- 191565
(191560, 114, 32), -- 191560
(191558, 114, 32), -- 191558
(191559, 114, 32), -- 191559
(191606, 114, 32), -- 191606
(191564, 114, 32), -- 191564
(191563, 114, 32), -- 191563
(191556, 114, 32), -- 191556
(191557, 114, 32), -- 191557
(191562, 114, 32), -- 191562
(191723, 1375, 34), -- 191723
(193611, 0, 32), -- 193611
(191566, 114, 32), -- 191566
(193615, 0, 48); -- 193615


DELETE FROM `quest_offer_reward` WHERE `ID` IN (29658 /*29658*/, 29659 /*29659*/, 29657 /*29657*/, 29848 /*29848*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(29658, 0, 0, 0, 0, 0, 0, 0, 0, 'You have my gratitude, $n.', 27101), -- 29658
(29659, 0, 0, 0, 0, 0, 0, 0, 0, 'You have done well. Any advantage we can take away from Kael\'thas\' forces is to our benefit.', 27101), -- 29659
(29657, 0, 0, 0, 0, 0, 0, 0, 0, 'You have done well, $n. But more work remains to be done.', 27101), -- 29657
(29848, 0, 0, 0, 0, 0, 0, 0, 0, '<Kaldir stares into the crystal in silence for a moment.>$B$BNo being has ever felt such sincere sorrow as the Maiden of Grief has.$B$BLet us remember her spirit as we continue our efforts against Loken.', 27101); -- 29848


DELETE FROM `quest_poi` WHERE (`QuestID`=29659 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29658 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29657 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29848 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29848 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29848 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29834 AND `BlobIndex`=3 AND `Idx1`=8) OR (`QuestID`=29834 AND `BlobIndex`=2 AND `Idx1`=7) OR (`QuestID`=29834 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=29834 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=29834 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=29834 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=29834 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29834 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=29834 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13135 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=13135 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=13135 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=13135 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13135 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13130 AND `BlobIndex`=0 AND `Idx1`=8) OR (`QuestID`=13130 AND `BlobIndex`=1 AND `Idx1`=7) OR (`QuestID`=13130 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=13130 AND `BlobIndex`=4 AND `Idx1`=5) OR (`QuestID`=13130 AND `BlobIndex`=3 AND `Idx1`=4) OR (`QuestID`=13130 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=13130 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=13130 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13130 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=12892 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=12892 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=12892 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=12008 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=12008 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(29659, 0, 0, 0, 255602, 72663, 554, 267, 0, 7, 0, 0, 0, 0, 27101), -- 29659
(29658, 0, 0, 0, 265346, 19220, 554, 268, 0, 7, 0, 0, 0, 0, 27101), -- 29658
(29657, 0, 0, 0, 265338, 19219, 554, 267, 0, 7, 0, 0, 0, 0, 27101), -- 29657
(29848, 0, 2, 32, 0, 0, 599, 140, 0, 0, 0, 0, 609117, 0, 27101), -- 29848
(29848, 0, 1, 0, 252882, 74830, 599, 140, 0, 7, 0, 0, 0, 0, 27101), -- 29848
(29848, 0, 0, -1, 0, 0, 599, 140, 0, 7, 0, 0, 0, 0, 27101), -- 29848
(29834, 3, 8, 32, 0, 0, 604, 154, 0, 0, 0, 0, 608998, 0, 27101), -- 29834
(29834, 2, 7, 32, 0, 0, 604, 154, 0, 0, 0, 0, 608885, 0, 27101), -- 29834
(29834, 1, 6, 32, 0, 0, 604, 153, 0, 0, 0, 0, 608998, 0, 27101), -- 29834
(29834, 0, 5, 32, 0, 0, 604, 153, 0, 0, 0, 0, 608885, 0, 27101), -- 29834
(29834, 0, 4, 2, 263793, 29306, 604, 154, 0, 3, 0, 0, 0, 0, 27101), -- 29834
(29834, 0, 3, 1, 263792, 29305, 604, 154, 0, 1, 0, 0, 0, 0, 27101), -- 29834
(29834, 0, 2, 0, 263791, 29304, 604, 154, 0, 1, 0, 0, 0, 0, 27101), -- 29834
(29834, 1, 1, -1, 0, 0, 604, 154, 0, 1, 0, 0, 0, 0, 27101), -- 29834
(29834, 0, 0, -1, 0, 0, 604, 154, 0, 1, 0, 0, 0, 0, 27101), -- 29834
(13135, 0, 4, 32, 0, 0, 571, 127, 0, 0, 0, 0, 261920, 0, 27101), -- 13135
(13135, 2, 3, 0, 264499, 43225, 571, 127, 0, 1, 0, 0, 0, 0, 27101), -- 13135
(13135, 1, 2, 0, 264499, 43225, 571, 127, 0, 1, 0, 0, 0, 0, 27101), -- 13135
(13135, 0, 1, 0, 264499, 43225, 571, 127, 0, 3, 0, 0, 0, 0, 27101), -- 13135
(13135, 0, 0, -1, 0, 0, 571, 118, 0, 3, 0, 0, 0, 0, 27101), -- 13135
(13130, 0, 8, 32, 0, 0, 571, 127, 0, 0, 0, 0, 261728, 0, 27101), -- 13130
(13130, 1, 7, 1, 263955, 43218, 571, 127, 0, 3, 0, 0, 0, 0, 27101), -- 13130
(13130, 0, 6, 1, 263955, 43218, 571, 127, 0, 3, 0, 0, 0, 0, 27101), -- 13130
(13130, 4, 5, 0, 263954, 43217, 571, 127, 0, 3, 0, 0, 0, 0, 27101), -- 13130
(13130, 3, 4, 0, 263954, 43217, 571, 127, 0, 1, 0, 0, 0, 0, 27101), -- 13130
(13130, 2, 3, 0, 263954, 43217, 571, 127, 0, 1, 0, 0, 0, 0, 27101), -- 13130
(13130, 1, 2, 0, 263954, 43217, 571, 127, 0, 3, 0, 0, 0, 0, 27101), -- 13130
(13130, 0, 1, 0, 263954, 43217, 571, 127, 0, 1, 0, 0, 0, 0, 27101), -- 13130
(13130, 0, 0, -1, 0, 0, 571, 118, 0, 3, 0, 0, 0, 0, 27101), -- 13130
(12892, 0, 2, 32, 0, 0, 571, 118, 0, 2, 0, 0, 0, 0, 27101), -- 12892
(12892, 0, 1, 0, 262988, 29803, 571, 118, 0, 2, 0, 0, 0, 0, 27101), -- 12892
(12892, 0, 0, -1, 0, 0, 571, 118, 0, 0, 0, 0, 0, 0, 27101), -- 12892
(12008, 0, 1, 32, 0, 0, 571, 115, 0, 0, 0, 0, 225614, 0, 27101), -- 12008
(12008, 0, 0, -1, 0, 0, 571, 115, 0, 1, 0, 0, 0, 0, 27101); -- 12008

DELETE FROM `quest_poi_points` WHERE (`QuestID`=29659 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29658 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29657 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29848 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29848 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29848 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29834 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=29834 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=29834 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=29834 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=29834 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=29834 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=29834 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29834 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29834 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13135 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=13135 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=13135 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=13135 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=13135 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=13135 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=13135 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13135 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=13135 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=13135 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13135 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13135 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13135 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13135 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13135 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13135 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13135 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13135 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13135 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13135 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13135 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13135 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13135 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13130 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=13130 AND `Idx1`=7 AND `Idx2`=4) OR (`QuestID`=13130 AND `Idx1`=7 AND `Idx2`=3) OR (`QuestID`=13130 AND `Idx1`=7 AND `Idx2`=2) OR (`QuestID`=13130 AND `Idx1`=7 AND `Idx2`=1) OR (`QuestID`=13130 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=13130 AND `Idx1`=6 AND `Idx2`=9) OR (`QuestID`=13130 AND `Idx1`=6 AND `Idx2`=8) OR (`QuestID`=13130 AND `Idx1`=6 AND `Idx2`=7) OR (`QuestID`=13130 AND `Idx1`=6 AND `Idx2`=6) OR (`QuestID`=13130 AND `Idx1`=6 AND `Idx2`=5) OR (`QuestID`=13130 AND `Idx1`=6 AND `Idx2`=4) OR (`QuestID`=13130 AND `Idx1`=6 AND `Idx2`=3) OR (`QuestID`=13130 AND `Idx1`=6 AND `Idx2`=2) OR (`QuestID`=13130 AND `Idx1`=6 AND `Idx2`=1) OR (`QuestID`=13130 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=13130 AND `Idx1`=5 AND `Idx2`=5) OR (`QuestID`=13130 AND `Idx1`=5 AND `Idx2`=4) OR (`QuestID`=13130 AND `Idx1`=5 AND `Idx2`=3) OR (`QuestID`=13130 AND `Idx1`=5 AND `Idx2`=2) OR (`QuestID`=13130 AND `Idx1`=5 AND `Idx2`=1) OR (`QuestID`=13130 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=13130 AND `Idx1`=4 AND `Idx2`=9) OR (`QuestID`=13130 AND `Idx1`=4 AND `Idx2`=8) OR (`QuestID`=13130 AND `Idx1`=4 AND `Idx2`=7) OR (`QuestID`=13130 AND `Idx1`=4 AND `Idx2`=6) OR (`QuestID`=13130 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=13130 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=13130 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=13130 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=13130 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=13130 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=13130 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=13130 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=13130 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=13130 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13130 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=13130 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13130 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13130 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13130 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13130 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13130 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13130 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13130 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13130 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13130 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13130 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13130 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=12892 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=12892 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=12892 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=12008 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=12008 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(29659, 0, 0, 223, 68, 27101), -- 29659
(29658, 0, 0, 137, 151, 27101), -- 29658
(29657, 0, 0, 208, -13, 27101), -- 29657
(29848, 2, 0, 1162, 797, 27101), -- 29848
(29848, 1, 0, 847, 663, 27101), -- 29848
(29848, 0, 0, 1154, 797, 27101), -- 29848
(29834, 8, 0, 1947, 665, 27101), -- 29834
(29834, 7, 0, 1860, 646, 27101), -- 29834
(29834, 6, 0, 1947, 665, 27101), -- 29834
(29834, 5, 0, 1860, 646, 27101), -- 29834
(29834, 4, 0, 1900, 745, 27101), -- 29834
(29834, 3, 0, 1772, 810, 27101), -- 29834
(29834, 2, 0, 1775, 675, 27101), -- 29834
(29834, 1, 0, 1947, 665, 27101), -- 29834
(29834, 0, 0, 1860, 646, 27101), -- 29834
(13135, 4, 0, 6372, 240, 27101), -- 13135
(13135, 3, 5, 5249, -330, 27101), -- 13135
(13135, 3, 4, 5242, -302, 27101), -- 13135
(13135, 3, 3, 5267, -254, 27101), -- 13135
(13135, 3, 2, 5306, -217, 27101), -- 13135
(13135, 3, 1, 5341, -222, 27101), -- 13135
(13135, 3, 0, 5275, -377, 27101), -- 13135
(13135, 2, 6, 5441, -243, 27101), -- 13135
(13135, 2, 5, 5446, -221, 27101), -- 13135
(13135, 2, 4, 5483, -77, 27101), -- 13135
(13135, 2, 3, 5558, -120, 27101), -- 13135
(13135, 2, 2, 5555, -343, 27101), -- 13135
(13135, 2, 1, 5547, -365, 27101), -- 13135
(13135, 2, 0, 5495, -374, 27101), -- 13135
(13135, 1, 7, 5455, -960, 27101), -- 13135
(13135, 1, 6, 5302, -801, 27101), -- 13135
(13135, 1, 5, 5249, -591, 27101), -- 13135
(13135, 1, 4, 5316, -483, 27101), -- 13135
(13135, 1, 3, 5517, -448, 27101), -- 13135
(13135, 1, 2, 5542, -517, 27101), -- 13135
(13135, 1, 1, 5560, -792, 27101), -- 13135
(13135, 1, 0, 5519, -932, 27101), -- 13135
(13135, 0, 0, 6372, 240, 27101), -- 13135
(13130, 8, 0, 6372, 238, 27101), -- 13130
(13130, 7, 4, 5465, -557, 27101), -- 13130
(13130, 7, 3, 5392, -569, 27101), -- 13130
(13130, 7, 2, 5373, -484, 27101), -- 13130
(13130, 7, 1, 5492, -492, 27101), -- 13130
(13130, 7, 0, 5530, -560, 27101), -- 13130
(13130, 6, 9, 5259, -799, 27101), -- 13130
(13130, 6, 8, 5241, -652, 27101), -- 13130
(13130, 6, 7, 5234, -585, 27101), -- 13130
(13130, 6, 6, 5300, -497, 27101), -- 13130
(13130, 6, 5, 5343, -541, 27101), -- 13130
(13130, 6, 4, 5402, -749, 27101), -- 13130
(13130, 6, 3, 5436, -884, 27101), -- 13130
(13130, 6, 2, 5426, -954, 27101), -- 13130
(13130, 6, 1, 5421, -958, 27101), -- 13130
(13130, 6, 0, 5397, -965, 27101), -- 13130
(13130, 5, 5, 5326, -799, 27101), -- 13130
(13130, 5, 4, 5341, -736, 27101), -- 13130
(13130, 5, 3, 5361, -666, 27101), -- 13130
(13130, 5, 2, 5506, -729, 27101), -- 13130
(13130, 5, 1, 5498, -815, 27101), -- 13130
(13130, 5, 0, 5347, -839, 27101), -- 13130
(13130, 4, 9, 5226, -289, 27101), -- 13130
(13130, 4, 8, 5319, -148, 27101), -- 13130
(13130, 4, 7, 5345, -142, 27101), -- 13130
(13130, 4, 6, 5424, -136, 27101), -- 13130
(13130, 4, 5, 5468, -137, 27101), -- 13130
(13130, 4, 4, 5485, -140, 27101), -- 13130
(13130, 4, 3, 5513, -150, 27101), -- 13130
(13130, 4, 2, 5562, -227, 27101), -- 13130
(13130, 4, 1, 5575, -351, 27101), -- 13130
(13130, 4, 0, 5535, -391, 27101), -- 13130
(13130, 3, 3, 5215, -652, 27101), -- 13130
(13130, 3, 2, 5225, -610, 27101), -- 13130
(13130, 3, 1, 5297, -637, 27101), -- 13130
(13130, 3, 0, 5248, -708, 27101), -- 13130
(13130, 2, 5, 5256, -566, 27101), -- 13130
(13130, 2, 4, 5340, -478, 27101), -- 13130
(13130, 2, 3, 5403, -471, 27101), -- 13130
(13130, 2, 2, 5416, -504, 27101), -- 13130
(13130, 2, 1, 5426, -539, 27101), -- 13130
(13130, 2, 0, 5355, -654, 27101), -- 13130
(13130, 1, 5, 5190, -551, 27101), -- 13130
(13130, 1, 4, 5217, -377, 27101), -- 13130
(13130, 1, 3, 5248, -349, 27101), -- 13130
(13130, 1, 2, 5272, -389, 27101), -- 13130
(13130, 1, 1, 5276, -459, 27101), -- 13130
(13130, 1, 0, 5232, -552, 27101), -- 13130
(13130, 0, 0, 6372, 238, 27101), -- 13130
(12892, 2, 0, 7420, 1401, 27101), -- 12892
(12892, 1, 0, 8534, 2643, 27101), -- 12892
(12892, 0, 0, 8395, 2675, 27101), -- 12892
(12008, 1, 0, 3714, 2881, 27101), -- 12008
(12008, 0, 0, 3842, 1492, 27101); -- 12008


DELETE FROM `quest_details` WHERE `ID` IN (29659 /*29659*/, 29658 /*29658*/, 29657 /*29657*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(29659, 0, 0, 0, 0, 0, 0, 0, 0, 27101), -- 29659
(29658, 0, 0, 0, 0, 0, 0, 0, 0, 27101), -- 29658
(29657, 0, 0, 0, 0, 0, 0, 0, 0, 27101); -- 29657


DELETE FROM `quest_request_items` WHERE `ID` IN (29659 /*29659*/, 29848 /*29848*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(29659, 0, 0, 0, 0, 'You\'ve obtained it, I assume?', 27101), -- 29659
(29848, 0, 0, 0, 0, 'I wish there were another way, but it seems death is the maiden\'s only salvation now.', 27101); -- 29848

DELETE FROM `npc_vendor` WHERE (`entry`=32253 AND `item`=2531 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32253 AND `item`=2523 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32253 AND `item`=2530 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32253 AND `item`=2522 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(32253, 4, 2531, 0, 0, 1, 0, 1, 27101), -- 2531
(32253, 3, 2523, 0, 0, 1, 0, 1, 27101), -- 2523
(32253, 2, 2530, 0, 0, 1, 0, 1, 27101), -- 2530
(32253, 1, 2522, 0, 0, 1, 0, 1, 27101); -- 2522


DELETE FROM `creature_equip_template` WHERE (`CreatureID`=32711 AND `ID`=1) OR (`CreatureID`=19220 AND `ID`=1) OR (`CreatureID`=19510 AND `ID`=4) OR (`CreatureID`=19221 AND `ID`=1) OR (`CreatureID`=19510 AND `ID`=3) OR (`CreatureID`=19510 AND `ID`=2) OR (`CreatureID`=19167 AND `ID`=4) OR (`CreatureID`=19167 AND `ID`=3) OR (`CreatureID`=19510 AND `ID`=1) OR (`CreatureID`=20059 AND `ID`=1) OR (`CreatureID`=19167 AND `ID`=2) OR (`CreatureID`=19167 AND `ID`=1) OR (`CreatureID`=20990 AND `ID`=1) OR (`CreatureID`=29395 AND `ID`=1) OR (`CreatureID`=29315 AND `ID`=1) OR (`CreatureID`=30658 AND `ID`=1) OR (`CreatureID`=31008 AND `ID`=1) OR (`CreatureID`=30659 AND `ID`=1) OR (`CreatureID`=31007 AND `ID`=1) OR (`CreatureID`=27975 AND `ID`=1) OR (`CreatureID`=28149 AND `ID`=1) OR (`CreatureID`=27966 AND `ID`=1) OR (`CreatureID`=27965 AND `ID`=1) OR (`CreatureID`=27962 AND `ID`=1) OR (`CreatureID`=55835 AND `ID`=1) OR (`CreatureID`=27964 AND `ID`=1) OR (`CreatureID`=27961 AND `ID`=1) OR (`CreatureID`=27963 AND `ID`=1) OR (`CreatureID`=27960 AND `ID`=1) OR (`CreatureID`=32337 AND `ID`=1) OR (`CreatureID`=29657 AND `ID`=1) OR (`CreatureID`=34244 AND `ID`=1) OR (`CreatureID`=30352 AND `ID`=1) OR (`CreatureID`=31081 AND `ID`=1) OR (`CreatureID`=31238 AND `ID`=1) OR (`CreatureID`=32216 AND `ID`=1) OR (`CreatureID`=50142 AND `ID`=1) OR (`CreatureID`=29535 AND `ID`=1) OR (`CreatureID`=50152 AND `ID`=1) OR (`CreatureID`=50153 AND `ID`=1) OR (`CreatureID`=50148 AND `ID`=1) OR (`CreatureID`=32170 AND `ID`=1) OR (`CreatureID`=50150 AND `ID`=1) OR (`CreatureID`=50149 AND `ID`=1) OR (`CreatureID`=50147 AND `ID`=1) OR (`CreatureID`=50144 AND `ID`=1) OR (`CreatureID`=31085 AND `ID`=1) OR (`CreatureID`=36776 AND `ID`=1) OR (`CreatureID`=49750 AND `ID`=1) OR (`CreatureID`=32252 AND `ID`=1) OR (`CreatureID`=32253 AND `ID`=1) OR (`CreatureID`=35495 AND `ID`=1) OR (`CreatureID`=37941 AND `ID`=1) OR (`CreatureID`=29631 AND `ID`=1) OR (`CreatureID`=32415 AND `ID`=1) OR (`CreatureID`=32251 AND `ID`=1) OR (`CreatureID`=31582 AND `ID`=1) OR (`CreatureID`=31581 AND `ID`=1) OR (`CreatureID`=30755 AND `ID`=1) OR (`CreatureID`=33963 AND `ID`=1) OR (`CreatureID`=32419 AND `ID`=1) OR (`CreatureID`=32420 AND `ID`=1);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(32711, 1, 0, 0, 0, 0, 0, 0, 44635, 0, 0), -- 32711
(19220, 1, 29455, 0, 0, 0, 0, 0, 0, 0, 0), -- 19220
(19510, 4, 29403, 0, 0, 24328, 0, 0, 0, 0, 0), -- 19510
(19221, 1, 29446, 0, 0, 12860, 0, 0, 0, 0, 0), -- 19221
(19510, 3, 29404, 0, 0, 24328, 0, 0, 0, 0, 0), -- 19510
(19510, 2, 29406, 0, 0, 24328, 0, 0, 0, 0, 0), -- 19510
(19167, 4, 29408, 0, 0, 0, 0, 0, 0, 0, 0), -- 19167
(19167, 3, 29410, 0, 0, 0, 0, 0, 0, 0, 0), -- 19167
(19510, 1, 29405, 0, 0, 24328, 0, 0, 0, 0, 0), -- 19510
(20059, 1, 30424, 0, 0, 0, 0, 0, 0, 0, 0), -- 20059
(19167, 2, 29407, 0, 0, 0, 0, 0, 0, 0, 0), -- 19167
(19167, 1, 29409, 0, 0, 0, 0, 0, 0, 0, 0), -- 19167
(20990, 1, 30423, 0, 0, 0, 0, 0, 0, 0, 0), -- 20990
(29395, 1, 12331, 0, 0, 0, 0, 0, 0, 0, 0), -- 29395
(29315, 1, 20719, 0, 0, 0, 0, 0, 0, 0, 0), -- 29315
(30658, 1, 43093, 0, 0, 0, 0, 0, 0, 0, 0), -- 30658
(31008, 1, 43477, 0, 0, 0, 0, 0, 0, 0, 0), -- 31008
(30659, 1, 43091, 0, 0, 43092, 0, 0, 0, 0, 0), -- 30659
(31007, 1, 43474, 0, 0, 0, 0, 0, 0, 0, 0), -- 31007
(27975, 1, 20738, 0, 0, 0, 0, 0, 0, 0, 0), -- 27975
(28149, 1, 12883, 0, 0, 0, 0, 0, 0, 0, 0), -- 28149
(27966, 1, 39746, 0, 0, 0, 0, 0, 0, 0, 0), -- 27966
(27965, 1, 39746, 0, 0, 0, 0, 0, 0, 0, 0), -- 27965
(27962, 1, 39743, 0, 0, 0, 0, 0, 0, 0, 0), -- 27962
(55835, 1, 39743, 0, 0, 0, 0, 0, 0, 0, 0), -- 55835
(27964, 1, 33168, 0, 0, 0, 0, 0, 0, 0, 0), -- 27964
(27961, 1, 1910, 0, 0, 0, 0, 0, 0, 0, 0), -- 27961
(27963, 1, 39744, 0, 0, 0, 0, 0, 0, 0, 0), -- 27963
(27960, 1, 39741, 0, 0, 0, 0, 0, 0, 0, 0), -- 27960
(32337, 1, 13612, 0, 0, 0, 0, 0, 0, 0, 0), -- 32337
(29657, 1, 41342, 0, 0, 0, 0, 0, 0, 0, 0), -- 29657
(34244, 1, 46107, 0, 0, 42543, 0, 0, 0, 0, 0), -- 34244
(30352, 1, 1493, 0, 0, 143, 0, 0, 2552, 0, 0), -- 30352
(31081, 1, 1493, 0, 0, 0, 0, 0, 0, 0, 0), -- 31081
(31238, 1, 30423, 0, 0, 0, 0, 0, 0, 0, 0), -- 31238
(32216, 1, 1908, 0, 0, 0, 0, 0, 0, 0, 0), -- 32216
(50142, 1, 19987, 0, 0, 0, 0, 0, 0, 0, 0), -- 50142
(29535, 1, 2200, 0, 0, 3698, 0, 0, 0, 0, 0), -- 29535
(50152, 1, 13337, 0, 0, 0, 0, 0, 0, 0, 0), -- 50152
(50153, 1, 2813, 0, 0, 0, 0, 0, 0, 0, 0), -- 50153
(50148, 1, 13751, 0, 0, 0, 0, 0, 0, 0, 0), -- 50148
(32170, 1, 30424, 0, 0, 0, 0, 0, 0, 0, 0), -- 32170
(50150, 1, 13160, 0, 0, 0, 0, 0, 0, 0, 0), -- 50150
(50149, 1, 23225, 0, 0, 24322, 0, 0, 0, 0, 0), -- 50149
(50147, 1, 17283, 0, 0, 17282, 0, 0, 0, 0, 0), -- 50147
(50144, 1, 0, 0, 0, 0, 0, 0, 13147, 0, 0), -- 50144
(31085, 1, 43205, 0, 0, 0, 0, 0, 0, 0, 0), -- 31085
(36776, 1, 35117, 0, 0, 35117, 0, 0, 0, 0, 0), -- 36776
(49750, 1, 1906, 0, 0, 0, 0, 0, 0, 0, 0), -- 49750
(32252, 1, 0, 0, 0, 0, 0, 0, 5856, 0, 0), -- 32252
(32253, 1, 0, 0, 0, 0, 0, 0, 5856, 0, 0), -- 32253
(35495, 1, 34505, 0, 0, 12747, 0, 0, 0, 0, 0), -- 35495
(37941, 1, 20719, 0, 0, 0, 0, 0, 0, 0, 0), -- 37941
(29631, 1, 2827, 0, 0, 0, 0, 0, 0, 0, 0), -- 29631
(32415, 1, 2705, 0, 0, 0, 0, 0, 0, 0, 0), -- 32415
(32251, 1, 0, 0, 0, 0, 0, 0, 5856, 0, 0), -- 32251
(31582, 1, 30424, 0, 0, 0, 0, 0, 0, 0, 0), -- 31582
(31581, 1, 31608, 0, 0, 0, 0, 0, 0, 0, 0), -- 31581
(30755, 1, 11019, 0, 0, 11019, 0, 0, 23052, 0, 0), -- 30755
(33963, 1, 30424, 0, 0, 0, 0, 0, 0, 0, 0), -- 33963
(32419, 1, 2703, 0, 0, 13859, 0, 0, 0, 0, 0), -- 32419
(32420, 1, 2703, 0, 0, 13859, 0, 0, 0, 0, 0); -- 32420

DELETE FROM `gossip_menu` WHERE (`MenuId`=9669 AND `TextId`=13100);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(9669, 13100, 27101); -- 28070

DELETE FROM `gossip_menu_option` WHERE (`MenuId`=9669 AND `OptionIndex`=0);
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `VerifiedBuild`) VALUES
(9669, 0, 0, 'Brann, it would be our honor!', 0, 27101);

DELETE FROM `creature_text` WHERE (`CreatureID`=19166 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=19218 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=19218 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=19218 AND `GroupID`='2' AND `ID`='0') OR (`CreatureID`=19218 AND `GroupID`='3' AND `ID`='0') OR (`CreatureID`=19219 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=19219 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=19219 AND `GroupID`='2' AND `ID`='0') OR (`CreatureID`=19219 AND `GroupID`='3' AND `ID`='0') OR (`CreatureID`=19219 AND `GroupID`='4' AND `ID`='0') OR (`CreatureID`=19220 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=19220 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=19220 AND `GroupID`='2' AND `ID`='0') OR (`CreatureID`=19220 AND `GroupID`='3' AND `ID`='0') OR (`CreatureID`=19220 AND `GroupID`='4' AND `ID`='0') OR (`CreatureID`=19220 AND `GroupID`='5' AND `ID`='0') OR (`CreatureID`=19221 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=19221 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=19221 AND `GroupID`='2' AND `ID`='0') OR (`CreatureID`=19221 AND `GroupID`='3' AND `ID`='0') OR (`CreatureID`=19710 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=19710 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=19710 AND `GroupID`='2' AND `ID`='0') OR (`CreatureID`=19710 AND `GroupID`='3' AND `ID`='0') OR (`CreatureID`=19710 AND `GroupID`='4' AND `ID`='0') OR (`CreatureID`=27975 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=27975 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=27975 AND `GroupID`='2' AND `ID`='0') OR (`CreatureID`=27977 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=27977 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=27977 AND `GroupID`='2' AND `ID`='0') OR (`CreatureID`=27978 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=27978 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=27978 AND `GroupID`='2' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='2' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='3' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='4' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='5' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='6' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='7' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='8' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='9' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='10' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='11' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='12' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='13' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='14' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='15' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='16' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='17' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='18' AND `ID`='0') OR (`CreatureID`=28070 AND `GroupID`='19' AND `ID`='0') OR (`CreatureID`=29313 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=29313 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=29313 AND `GroupID`='2' AND `ID`='0') OR (`CreatureID`=29313 AND `GroupID`='3' AND `ID`='0') OR (`CreatureID`=29313 AND `GroupID`='4' AND `ID`='0') OR (`CreatureID`=29313 AND `GroupID`='5' AND `ID`='0') OR (`CreatureID`=29314 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=29314 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=29314 AND `GroupID`='2' AND `ID`='0') OR (`CreatureID`=29314 AND `GroupID`='3' AND `ID`='0') OR (`CreatureID`=30658 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=30658 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=30660 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=30660 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=30660 AND `GroupID`='2' AND `ID`='0') OR (`CreatureID`=30663 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=30666 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=30666 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=30667 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=30667 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=30668 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=30695 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=30695 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=30892 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=30892 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=30892 AND `GroupID`='2' AND `ID`='0') OR (`CreatureID`=30897 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=30898 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=30899 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=30899 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=30899 AND `GroupID`='2' AND `ID`='0') OR (`CreatureID`=30899 AND `GroupID`='3' AND `ID`='0') OR (`CreatureID`=30899 AND `GroupID`='4' AND `ID`='0') OR (`CreatureID`=31118 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=32204 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=32204 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=32204 AND `GroupID`='2' AND `ID`='0');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(19166, 0, 0, '%s calls for help!', 16, 0, 100, 0, 0, 0, 0, 'Tempest-Forge Patroller'),
(19218, 0, 0, 'I predict a painful death.', 14, 0, 100, 0, 0, 11101, 0, 'Gatewatcher Gyro-Kill to Player'),
(19218, 1, 0, 'If my division is correct... you should be quite dead.', 14, 0, 100, 0, 0, 11105, 0, 'Gatewatcher Gyro-Kill to Player'),
(19218, 2, 0, 'An unforeseen... contingency.', 14, 0, 100, 0, 0, 11106, 0, 'Gatewatcher Gyro-Kill to Player'),
(19218, 3, 0, 'You hear a faint unlocking sound...', 16, 0, 100, 0, 0, 11106, 0, 'Gatewatcher Gyro-Kill to Player'),
(19219, 0, 0, 'You should split while you can.', 14, 0, 100, 0, 0, 11162, 0, 'Mechano-Lord Capacitus to Player'),
(19219, 1, 0, 'Go ahead, gimme your best shot.  I can take it!', 14, 0, 100, 0, 0, 11166, 0, 'Mechano-Lord Capacitus'),
(19219, 2, 0, 'Can\'t say I didn\'t warn you....', 14, 0, 100, 0, 0, 11163, 0, 'Mechano-Lord Capacitus to Player'),
(19219, 3, 0, 'Think you can hurt me, huh?  Think I\'m afraid a\' you?', 14, 0, 100, 0, 0, 11165, 0, 'Mechano-Lord Capacitus'),
(19219, 4, 0, 'Bully!', 14, 0, 100, 0, 0, 11167, 0, 'Mechano-Lord Capacitus to Player'),
(19220, 0, 0, 'I have been waiting for you!', 14, 0, 100, 53, 0, 0, 0, 'Pathaleon the Calculator to Bloodwarder Physician'),
(19220, 1, 0, 'We are on a strict timetable. You will not interfere!', 14, 0, 100, 0, 0, 11193, 0, 'Pathaleon the Calculator to Player'),
(19220, 2, 0, 'Time to supplement my work force.', 14, 0, 100, 0, 0, 11196, 0, 'Pathaleon the Calculator'),
(19220, 3, 0, 'I\'m looking for a team player...', 14, 0, 100, 0, 0, 11197, 0, 'Pathaleon the Calculator to Player'),
(19220, 4, 0, 'I prefer to be hands-on...', 14, 0, 100, 0, 0, 11199, 0, 'Pathaleon the Calculator'),
(19220, 5, 0, 'The project will... continue.', 14, 0, 100, 0, 0, 11200, 0, 'Pathaleon the Calculator to Player'),
(19221, 0, 0, 'Don\'t value your life very much, do you?', 14, 0, 100, 0, 0, 11186, 0, 'Nethermancer Sepethrea to Player'),
(19221, 1, 0, 'Think you can take the heat?', 14, 0, 100, 0, 0, 11189, 0, 'Nethermancer Sepethrea'),
(19221, 2, 0, 'Anar\'endal dracon!', 14, 0, 100, 0, 0, 11190, 0, 'Nethermancer Sepethrea'),
(19221, 3, 0, 'Anu... bala belore...alon.', 14, 0, 100, 0, 0, 11192, 0, 'Nethermancer Sepethrea to Player'),
(19710, 0, 0, 'You have approximately five seconds to live.', 14, 0, 100, 0, 0, 11109, 0, 'Gatewatcher Iron-Hand to Player'),
(19710, 1, 0, '%s raises his hammer menacingly...', 41, 0, 100, 0, 0, 0, 0, 'Gatewatcher Iron-Hand to Gatewatcher Iron-Hand'),
(19710, 2, 0, 'Low-tech, yet quite effective.', 14, 0, 100, 0, 0, 11113, 0, 'Gatewatcher Iron-Hand'),
(19710, 3, 0, 'The processing will continue as scheduled!', 14, 0, 100, 0, 0, 11111, 0, 'Gatewatcher Iron-Hand to Player'),
(19710, 4, 0, 'My calculations did not...', 14, 0, 100, 0, 0, 11114, 0, 'Gatewatcher Iron-Hand to Player'),
(27975, 0, 0, 'You shouldn\'t have come... now you will die!', 14, 0, 100, 0, 0, 13487, 0, 'Maiden of Grief to Player'),
(27975, 1, 0, 'So much lost time... that you\'ll never get back!', 14, 0, 100, 0, 0, 13492, 0, 'Maiden of Grief'),
(27975, 2, 0, 'I hope you all rot! I never... wanted... this.', 14, 0, 100, 0, 0, 13493, 0, 'Maiden of Grief to Player'),
(27977, 0, 0, 'Crush....', 14, 0, 100, 0, 0, 14176, 0, 'Krystallus to Player'),
(27977, 1, 0, 'Break.... you....', 14, 0, 100, 0, 0, 14178, 0, 'Krystallus'),
(27977, 2, 0, 'Uuuuhhhhhhhhhh......', 14, 0, 100, 0, 0, 14179, 0, 'Krystallus to Player'),
(27978, 0, 0, 'Soft, vulnerable shells. Brief fragile lives. You cannot escape the curse of flesh!', 14, 0, 100, 0, 0, 14180, 0, 'Sjonnir The Ironshaper to Player'),
(27978, 1, 0, '%s goes into a frenzy!', 16, 0, 100, 0, 0, 0, 0, 'Sjonnir The Ironshaper'),
(27978, 2, 0, 'Loken will not rest... until the forge is retaken! You change... nothing!', 14, 0, 100, 0, 0, 14184, 0, 'Sjonnir The Ironshaper to Earthen Dwarf'),
(28070, 0, 0, 'Time to get some answers! Let\'s get this show on the road!', 14, 0, 100, 0, 0, 14259, 0, 'Brann Bronzebeard to Player'),
(28070, 1, 0, 'Not yet... not ye--', 14, 0, 100, 0, 0, 14258, 0, 'Brann Bronzebeard to Lightning Construct'),
(28070, 2, 0, 'Take a moment and relish this with me. Soon... all will be revealed. Okay then, let\'s do this!', 14, 0, 100, 4, 0, 14247, 0, 'Brann Bronzebeard to Player'),
(28070, 3, 0, 'Now keep an eye out! I\'ll have this licked in two shakes of a--', 14, 0, 100, 432, 0, 14248, 0, 'Brann Bronzebeard to Player'),
(28070, 4, 0, 'Oh, that doesn\'t sound good. We might have a complication or two...', 14, 0, 100, 1, 0, 14249, 0, 'Brann Bronzebeard to Player'),
(28070, 5, 0, 'Ah, you want to play hardball, eh? That\'s just my game!', 14, 0, 100, 0, 0, 14250, 0, 'Brann Bronzebeard to Player'),
(28070, 6, 0, 'Couple more minutes and I\'ll--', 14, 0, 100, 0, 0, 14251, 0, 'Brann Bronzebeard to Player'),
(28070, 7, 0, 'Heightened? What\'s the good news?', 14, 0, 100, 0, 0, 14252, 0, 'Brann Bronzebeard to Player'),
(28070, 8, 0, 'So that was the problem? Now I\'m makin\' progress...', 14, 0, 100, 0, 0, 14253, 0, 'Brann Bronzebeard to Player'),
(28070, 9, 0, 'Hang on! Nobody\'s gonna\' be sanitized as long as I have a say in it!', 14, 0, 100, 0, 0, 14254, 0, 'Brann Bronzebeard to Player'),
(28070, 10, 0, 'Ha! The old magic fingers finally won through! Now let\'s get down to--', 14, 0, 100, 0, 0, 14255, 0, 'Brann Bronzebeard to Player'),
(28070, 11, 0, 'Purge? No no no no no.. where did I-- Aha, this should do the trick...', 14, 0, 100, 0, 0, 14256, 0, 'Brann Bronzebeard to Player'),
(28070, 12, 0, 'Query? What do you think I\'m here for, tea and biscuits? Spill the beans already!', 14, 0, 100, 0, 0, 14263, 0, 'Brann Bronzebeard to Player'),
(28070, 13, 0, 'You\'re right, I can come back to this later. I think it\'s time to see what\'s behind the door near the entrance. I\'m going to sneak over there, nice and quiet. Meet me at the door and I\'ll get us in.', 14, 0, 100, 0, 0, 13773, 0, 'Brann Bronzebeard to Invis Lightning Stalker'),
(28070, 14, 0, 'Don\'t worry! Ol\' Brann\'s got yer back! Keep that metal monstrosity busy, and I\'ll see if I can\'t sweet talk this machine into helping ye!', 14, 0, 100, 0, 0, 14274, 0, 'Brann Bronzebeard to Player'),
(28070, 15, 0, 'This is a wee bit trickier than before... Oh, bloody--incomin\'!', 14, 0, 100, 0, 0, 14275, 0, 'Brann Bronzebeard to Sjonnir The Ironshaper'),
(28070, 16, 0, 'What in the name o\' Madoran did THAT do? Oh! Wait: I just about got it...', 14, 0, 100, 0, 0, 14276, 0, 'Brann Bronzebeard to Sjonnir The Ironshaper'),
(28070, 17, 0, 'Ha, that did it! Help\'s a-comin\'! Take this, ya glowin\' iron brute!', 14, 0, 100, 0, 0, 14277, 0, 'Brann Bronzebeard to Sjonnir The Ironshaper'),
(28070, 18, 0, 'Loken?! That\'s downright bothersome... We might\'ve neutralized the iron dwarves, but I\'d lay odds there\'s another machine somewhere else churnin\' out a whole mess o\' these iron vrykul!', 14, 0, 100, 1, 0, 14278, 0, 'Brann Bronzebeard to 27980'),
(28070, 19, 0, 'I\'ll use the forge to make batches o\' earthen to stand guard... But our greatest challenge still remains: find and stop Loken!', 14, 0, 100, 1, 0, 14279, 0, 'Brann Bronzebeard to 27980'),
(29313, 0, 0, 'I... am fury... unrestrained!', 14, 0, 100, 0, 0, 14229, 0, 'Ichoron to Player'),
(29313, 1, 0, 'Water can hold any form, take any shape... overcome any obstacle.', 14, 0, 100, 0, 0, 14232, 0, 'Ichoron'),
(29313, 2, 0, '%s\'s Protective Bubble shatters!', 41, 0, 100, 0, 0, 14233, 0, 'Ichoron'),
(29313, 3, 0, 'I will not be contained! Ngyah!!', 14, 0, 100, 0, 0, 14233, 0, 'Ichoron'),
(29313, 4, 0, 'I shall consume, decimate, devastate, and destroy! Yield now to the wrath of the pounding sea!', 14, 0, 100, 0, 0, 14232, 0, 'Ichoron'),
(29313, 5, 0, 'I... recede.', 14, 0, 100, 0, 0, 14237, 0, 'Ichoron to Player'),
(29314, 0, 0, 'I am... renewed.', 14, 0, 100, 0, 0, 13995, 0, 'Zuramat the Obliterator to Player'),
(29314, 1, 0, 'Eradicate.', 14, 0, 100, 0, 0, 13996, 0, 'Zuramat the Obliterator to Player'),
(29314, 2, 0, 'Know... my... pain.', 14, 0, 100, 0, 0, 13997, 0, 'Zuramat the Obliterator'),
(29314, 3, 0, 'Gaze... into the void.', 14, 0, 100, 0, 0, 13998, 0, 'Zuramat the Obliterator to Player'),
(30658, 0, 0, 'Prison guards, we are leaving! These adventurers are taking over! Go go go!', 14, 0, 100, 5, 0, 0, 0, 'Lieutenant Sinclari to Player'),
(30658, 1, 0, 'I\'m locking the door. Good luck, and thank you for doing this.', 12, 0, 100, 396, 0, 0, 0, 'Lieutenant Sinclari to Player'),
(30660, 0, 0, 'The portal has stabilized! Attack!', 14, 0, 100, 0, 0, 0, 0, 'Portal Guardian to Teleportation Portal'),
(30660, 1, 0, 'You shall not disrupt this portal!', 14, 0, 100, 0, 0, 0, 0, 'Portal Guardian to Player'),
(30660, 2, 0, 'My death will not stop this invasion!', 14, 0, 100, 0, 0, 0, 0, 'Portal Guardian to Player'),
(30663, 0, 0, 'The Kirin Tor must be stopped!', 12, 0, 100, 0, 0, 0, 0, 'Azure Binder to Player'),
(30666, 0, 0, 'Destroy all who stand against us!', 12, 0, 100, 0, 0, 0, 0, 'Azure Captain to Player'),
(30666, 1, 0, 'Dalaran must fall!', 12, 0, 100, 0, 0, 0, 0, 'Azure Captain to Player'),
(30667, 0, 0, 'For the Spellweaver!', 12, 0, 100, 0, 0, 0, 0, 'Azure Sorceror to Player'),
(30667, 1, 0, 'You cannot stop us all!', 12, 0, 100, 0, 0, 0, 0, 'Azure Sorceror to Player'),
(30668, 0, 0, 'The Nexus War will not be stopped!', 12, 0, 100, 0, 0, 0, 0, 'Azure Raider to Player'),
(30695, 0, 0, 'Why do you defend the Kirin Tor...', 14, 0, 100, 0, 0, 0, 0, 'Portal Keeper to Player'),
(30695, 1, 0, 'More portals will take this one\'s place!', 14, 0, 100, 0, 0, 0, 0, 'Portal Keeper to 3637'),
(30892, 0, 0, 'The way into Dalaran has been opened!', 14, 0, 100, 0, 0, 0, 0, 'Portal Guardian to Teleportation Portal'),
(30892, 1, 0, 'Your pathetic defense ends here!', 14, 0, 100, 0, 0, 0, 0, 'Portal Guardian to Player'),
(30892, 2, 0, 'The destruction of Dalaran is inevitable!', 14, 0, 100, 0, 0, 0, 0, 'Portal Guardian to Teleportation Portal'),
(30897, 0, 0, 'Threat index threshold exceeded.  Celestial archive aborted. Security level heightened.', 14, 0, 100, 0, 0, 13761, 0, 'Marnak to Player'),
(30898, 0, 0, 'Security breach in progress. Analysis of historical archives transferred to lower-priority queue. Countermeasures engaged.', 14, 0, 100, 0, 0, 13756, 0, 'Kaddrak to Player'),
(30899, 0, 0, 'Warning: life form pattern not recognized. Archival processing terminated.  Continued interference will result in targeted response.', 14, 0, 100, 0, 0, 13765, 0, 'Abedneum to Player'),
(30899, 1, 0, 'Critical threat index. Void analysis diverted. Initiating sanitization protocol.', 14, 0, 100, 0, 0, 13767, 0, 'Abedneum to Player'),
(30899, 2, 0, 'Alert: security fail-safes deactivated. Beginning memory purge and... ', 14, 0, 100, 0, 0, 13768, 0, 'Abedneum to Player'),
(30899, 3, 0, 'System online. Life form pattern recognized.  Welcome, Branbronzan.  Query?', 14, 0, 100, 0, 0, 13769, 0, 'Abedneum to Player'),
(30899, 4, 0, 'Acknowledged, Branbronzan. Session terminated.', 14, 0, 100, 0, 0, 13773, 0, 'Abedneum to Player'),
(31118, 0, 0, 'We\'ve broken through the prison gate! The way into Dalaran is clear! Now we finally put an end to the Nexus War!', 14, 0, 100, 0, 0, 0, 0, 'Azure Raider to Zuramat the Obliterator'),
(32204, 0, 0, 'A Portal Guardian defends the new portal!', 41, 0, 100, 0, 0, 0, 0, 'Lieutenant Sinclari to Teleportation Portal'),
(32204, 1, 0, 'An elite Blue Dragonflight squad appears from the portal!', 41, 0, 100, 0, 0, 0, 0, 'Lieutenant Sinclari to Player'),
(32204, 2, 0, 'A Portal Keeper emerges from the portal!', 41, 0, 100, 0, 0, 0, 0, 'Lieutenant Sinclari to Teleportation Portal');

DELETE FROM `creature_text_locale` WHERE (`CreatureID`=19166 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19166 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19166 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19166 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19166 AND `GroupID`='4' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19166 AND `GroupID`='5' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19218 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19218 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19218 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19218 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19219 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19219 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19219 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19219 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19219 AND `GroupID`='4' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19219 AND `GroupID`='5' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19219 AND `GroupID`='6' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19219 AND `GroupID`='7' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19220 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19220 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19220 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19220 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19220 AND `GroupID`='4' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19220 AND `GroupID`='5' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19221 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19221 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19221 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19221 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19221 AND `GroupID`='4' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19710 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19710 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19710 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19710 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19710 AND `GroupID`='4' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19710 AND `GroupID`='5' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19710 AND `GroupID`='6' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19710 AND `GroupID`='7' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19710 AND `GroupID`='8' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19710 AND `GroupID`='9' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19710 AND `GroupID`='10' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19710 AND `GroupID`='11' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=19710 AND `GroupID`='12' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=27975 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=27975 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=27975 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=27975 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=27977 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=27977 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=27977 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=27977 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=27978 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=27978 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=27978 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='4' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='5' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='6' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='7' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='8' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='9' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='10' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='11' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='12' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='13' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='14' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='15' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='16' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='17' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='18' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='19' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=28070 AND `GroupID`='20' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29313 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29313 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29313 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29313 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29313 AND `GroupID`='4' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29313 AND `GroupID`='5' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29313 AND `GroupID`='6' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29313 AND `GroupID`='7' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29313 AND `GroupID`='8' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29313 AND `GroupID`='9' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29313 AND `GroupID`='10' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29313 AND `GroupID`='11' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29313 AND `GroupID`='12' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29314 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29314 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29314 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29314 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29314 AND `GroupID`='4' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29314 AND `GroupID`='5' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29314 AND `GroupID`='6' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29314 AND `GroupID`='7' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=29314 AND `GroupID`='8' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30658 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30658 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30658 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30658 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30660 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30660 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30660 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30660 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30663 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30666 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30666 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30666 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30667 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30667 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30667 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30667 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30668 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30668 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30668 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30668 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30668 AND `GroupID`='4' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30668 AND `GroupID`='5' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30668 AND `GroupID`='6' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30695 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30695 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30695 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30695 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30892 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30892 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30892 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30892 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30892 AND `GroupID`='4' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30892 AND `GroupID`='5' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30893 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30893 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30893 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30897 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30898 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30899 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30899 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30899 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30899 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=30899 AND `GroupID`='4' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=31118 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=32191 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=32191 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=32191 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=32191 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=32191 AND `GroupID`='4' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=32204 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=32204 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=32204 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=32204 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=32204 AND `GroupID`='4' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=32204 AND `GroupID`='5' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=32204 AND `GroupID`='6' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=32204 AND `GroupID`='7' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=32204 AND `GroupID`='8' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=32204 AND `GroupID`='9' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=32204 AND `GroupID`='10' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=32204 AND `GroupID`='11' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=32204 AND `GroupID`='12' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=32204 AND `GroupID`='13' AND `ID`='0' AND `locale`='enUS');
INSERT INTO `creature_text_locale` (`CreatureID`, `GroupID`, `ID`, `locale`, `Text`) VALUES
(19166, 0, 0, 'enUS', '%s calls for help!'),
(19166, 1, 0, 'enUS', '%s calls for help!'),
(19166, 2, 0, 'enUS', '%s calls for help!'),
(19166, 3, 0, 'enUS', '%s calls for help!'),
(19166, 4, 0, 'enUS', '%s calls for help!'),
(19166, 5, 0, 'enUS', '%s calls for help!'),
(19218, 0, 0, 'enUS', 'I predict a painful death.'),
(19218, 1, 0, 'enUS', 'If my division is correct... you should be quite dead.'),
(19218, 2, 0, 'enUS', 'An unforeseen... contingency.'),
(19218, 3, 0, 'enUS', 'You hear a faint unlocking sound...'),
(19219, 0, 0, 'enUS', 'You should split while you can.'),
(19219, 1, 0, 'enUS', 'Go ahead, gimme your best shot.  I can take it!'),
(19219, 2, 0, 'enUS', 'Go ahead, gimme your best shot.  I can take it!'),
(19219, 3, 0, 'enUS', 'Can\'t say I didn\'t warn you....'),
(19219, 4, 0, 'enUS', 'Go ahead, gimme your best shot.  I can take it!'),
(19219, 5, 0, 'enUS', 'Think you can hurt me, huh?  Think I\'m afraid a\' you?'),
(19219, 6, 0, 'enUS', 'Go ahead, gimme your best shot.  I can take it!'),
(19219, 7, 0, 'enUS', 'Bully!'),
(19220, 0, 0, 'enUS', 'I have been waiting for you!'),
(19220, 1, 0, 'enUS', 'We are on a strict timetable. You will not interfere!'),
(19220, 2, 0, 'enUS', 'Time to supplement my work force.'),
(19220, 3, 0, 'enUS', 'I\'m looking for a team player...'),
(19220, 4, 0, 'enUS', 'I prefer to be hands-on...'),
(19220, 5, 0, 'enUS', 'The project will... continue.'),
(19221, 0, 0, 'enUS', 'Don\'t value your life very much, do you?'),
(19221, 1, 0, 'enUS', 'Think you can take the heat?'),
(19221, 2, 0, 'enUS', 'Anar\'endal dracon!'),
(19221, 3, 0, 'enUS', 'Think you can take the heat?'),
(19221, 4, 0, 'enUS', 'Anu... bala belore...alon.'),
(19710, 0, 0, 'enUS', 'You have approximately five seconds to live.'),
(19710, 1, 0, 'enUS', '%s raises his hammer menacingly...'),
(19710, 2, 0, 'enUS', 'Low-tech, yet quite effective.'),
(19710, 3, 0, 'enUS', 'The processing will continue as scheduled!'),
(19710, 4, 0, 'enUS', '%s raises his hammer menacingly...'),
(19710, 5, 0, 'enUS', 'The processing will continue as scheduled!'),
(19710, 6, 0, 'enUS', 'You have approximately five seconds to live.'),
(19710, 7, 0, 'enUS', 'The processing will continue as scheduled!'),
(19710, 8, 0, 'enUS', '%s raises his hammer menacingly...'),
(19710, 9, 0, 'enUS', 'Low-tech, yet quite effective.'),
(19710, 10, 0, 'enUS', 'The processing will continue as scheduled!'),
(19710, 11, 0, 'enUS', 'My calculations did not...'),
(19710, 12, 0, 'enUS', 'You hear a faint unlocking sound...'),
(27975, 0, 0, 'enUS', 'You shouldn\'t have come... now you will die!'),
(27975, 1, 0, 'enUS', 'So much lost time... that you\'ll never get back!'),
(27975, 2, 0, 'enUS', 'So much lost time... that you\'ll never get back!'),
(27975, 3, 0, 'enUS', 'I hope you all rot! I never... wanted... this.'),
(27977, 0, 0, 'enUS', 'Crush....'),
(27977, 1, 0, 'enUS', 'Break.... you....'),
(27977, 2, 0, 'enUS', 'Break.... you....'),
(27977, 3, 0, 'enUS', 'Uuuuhhhhhhhhhh......'),
(27978, 0, 0, 'enUS', 'Soft, vulnerable shells. Brief fragile lives. You cannot escape the curse of flesh!'),
(27978, 1, 0, 'enUS', '%s goes into a frenzy!'),
(27978, 2, 0, 'enUS', 'Loken will not rest... until the forge is retaken! You change... nothing!'),
(28070, 0, 0, 'enUS', 'Time to get some answers! Let\'s get this show on the road!'),
(28070, 1, 0, 'enUS', 'Not yet... not ye--'),
(28070, 2, 0, 'enUS', 'Time to get some answers! Let\'s get this show on the road!'),
(28070, 3, 0, 'enUS', 'Take a moment and relish this with me. Soon... all will be revealed. Okay then, let\'s do this!'),
(28070, 4, 0, 'enUS', 'Now keep an eye out! I\'ll have this licked in two shakes of a--'),
(28070, 5, 0, 'enUS', 'Oh, that doesn\'t sound good. We might have a complication or two...'),
(28070, 6, 0, 'enUS', 'Ah, you want to play hardball, eh? That\'s just my game!'),
(28070, 7, 0, 'enUS', 'Couple more minutes and I\'ll--'),
(28070, 8, 0, 'enUS', 'Heightened? What\'s the good news?'),
(28070, 9, 0, 'enUS', 'So that was the problem? Now I\'m makin\' progress...'),
(28070, 10, 0, 'enUS', 'Hang on! Nobody\'s gonna\' be sanitized as long as I have a say in it!'),
(28070, 11, 0, 'enUS', 'Ha! The old magic fingers finally won through! Now let\'s get down to--'),
(28070, 12, 0, 'enUS', 'Purge? No no no no no.. where did I-- Aha, this should do the trick...'),
(28070, 13, 0, 'enUS', 'Query? What do you think I\'m here for, tea and biscuits? Spill the beans already!'),
(28070, 14, 0, 'enUS', 'You\'re right, I can come back to this later. I think it\'s time to see what\'s behind the door near the entrance. I\'m going to sneak over there, nice and quiet. Meet me at the door and I\'ll get us in.'),
(28070, 15, 0, 'enUS', 'Don\'t worry! Ol\' Brann\'s got yer back! Keep that metal monstrosity busy, and I\'ll see if I can\'t sweet talk this machine into helping ye!'),
(28070, 16, 0, 'enUS', 'This is a wee bit trickier than before... Oh, bloody--incomin\'!'),
(28070, 17, 0, 'enUS', 'What in the name o\' Madoran did THAT do? Oh! Wait: I just about got it...'),
(28070, 18, 0, 'enUS', 'Ha, that did it! Help\'s a-comin\'! Take this, ya glowin\' iron brute!'),
(28070, 19, 0, 'enUS', 'Loken?! That\'s downright bothersome... We might\'ve neutralized the iron dwarves, but I\'d lay odds there\'s another machine somewhere else churnin\' out a whole mess o\' these iron vrykul!'),
(28070, 20, 0, 'enUS', 'I\'ll use the forge to make batches o\' earthen to stand guard... But our greatest challenge still remains: find and stop Loken!'),
(29313, 0, 0, 'enUS', 'I... am fury... unrestrained!'),
(29313, 1, 0, 'enUS', 'Water can hold any form, take any shape... overcome any obstacle.'),
(29313, 2, 0, 'enUS', '%s\'s Protective Bubble shatters!'),
(29313, 3, 0, 'enUS', 'I will not be contained! Ngyah!!'),
(29313, 4, 0, 'enUS', 'Water can hold any form, take any shape... overcome any obstacle.'),
(29313, 5, 0, 'enUS', '%s\'s Protective Bubble shatters!'),
(29313, 6, 0, 'enUS', 'I will not be contained! Ngyah!!'),
(29313, 7, 0, 'enUS', 'Water can hold any form, take any shape... overcome any obstacle.'),
(29313, 8, 0, 'enUS', '%s\'s Protective Bubble shatters!'),
(29313, 9, 0, 'enUS', 'I will not be contained! Ngyah!!'),
(29313, 10, 0, 'enUS', 'Water can hold any form, take any shape... overcome any obstacle.'),
(29313, 11, 0, 'enUS', 'I shall consume, decimate, devastate, and destroy! Yield now to the wrath of the pounding sea!'),
(29313, 12, 0, 'enUS', 'I... recede.'),
(29314, 0, 0, 'enUS', 'I am... renewed.'),
(29314, 1, 0, 'enUS', 'Eradicate.'),
(29314, 2, 0, 'enUS', 'Know... my... pain.'),
(29314, 3, 0, 'enUS', 'Gaze... into the void.'),
(29314, 4, 0, 'enUS', 'Know... my... pain.'),
(29314, 5, 0, 'enUS', 'Gaze... into the void.'),
(29314, 6, 0, 'enUS', 'Know... my... pain.'),
(29314, 7, 0, 'enUS', 'Gaze... into the void.'),
(29314, 8, 0, 'enUS', 'Know... my... pain.'),
(30658, 0, 0, 'enUS', 'Prison guards, we are leaving! These adventurers are taking over! Go go go!'),
(30658, 1, 0, 'enUS', 'I\'m locking the door. Good luck, and thank you for doing this.'),
(30658, 2, 0, 'enUS', 'Prison guards, we are leaving! These adventurers are taking over! Go go go!'),
(30658, 3, 0, 'enUS', 'I\'m locking the door. Good luck, and thank you for doing this.'),
(30660, 0, 0, 'enUS', 'The portal has stabilized! Attack!'),
(30660, 1, 0, 'enUS', 'You shall not disrupt this portal!'),
(30660, 2, 0, 'enUS', 'My death will not stop this invasion!'),
(30660, 3, 0, 'enUS', 'The portal has stabilized! Attack!'),
(30663, 0, 0, 'enUS', 'The Kirin Tor must be stopped!'),
(30666, 0, 0, 'enUS', 'Destroy all who stand against us!'),
(30666, 1, 0, 'enUS', 'Dalaran must fall!'),
(30666, 2, 0, 'enUS', 'Dalaran must fall!'),
(30667, 0, 0, 'enUS', 'For the Spellweaver!'),
(30667, 1, 0, 'enUS', 'The Kirin Tor must be stopped!'),
(30667, 2, 0, 'enUS', 'Destroy all who stand against us!'),
(30667, 3, 0, 'enUS', 'You cannot stop us all!'),
(30668, 0, 0, 'enUS', 'The Kirin Tor must be stopped!'),
(30668, 1, 0, 'enUS', 'The Kirin Tor must be stopped!'),
(30668, 2, 0, 'enUS', 'Destroy all who stand against us!'),
(30668, 3, 0, 'enUS', 'The Kirin Tor must be stopped!'),
(30668, 4, 0, 'enUS', 'The Nexus War will not be stopped!'),
(30668, 5, 0, 'enUS', 'The Kirin Tor must be stopped!'),
(30668, 6, 0, 'enUS', 'For the Spellweaver!'),
(30695, 0, 0, 'enUS', 'The portal has stabilized! Attack!'),
(30695, 1, 0, 'enUS', 'Why do you defend the Kirin Tor...'),
(30695, 2, 0, 'enUS', 'The portal has stabilized! Attack!'),
(30695, 3, 0, 'enUS', 'More portals will take this one\'s place!'),
(30892, 0, 0, 'enUS', 'The way into Dalaran has been opened!'),
(30892, 1, 0, 'enUS', 'Your pathetic defense ends here!'),
(30892, 2, 0, 'enUS', 'Why do you defend the Kirin Tor...'),
(30892, 3, 0, 'enUS', 'The destruction of Dalaran is inevitable!'),
(30892, 4, 0, 'enUS', 'Your pathetic defense ends here!'),
(30892, 5, 0, 'enUS', 'My death will not stop this invasion!'),
(30893, 0, 0, 'enUS', 'The portal has stabilized! Attack!'),
(30893, 1, 0, 'enUS', 'You shall not disrupt this portal!'),
(30893, 2, 0, 'enUS', 'Why do you defend the Kirin Tor...'),
(30897, 0, 0, 'enUS', 'Threat index threshold exceeded.  Celestial archive aborted. Security level heightened.'),
(30898, 0, 0, 'enUS', 'Security breach in progress. Analysis of historical archives transferred to lower-priority queue. Countermeasures engaged.'),
(30899, 0, 0, 'enUS', 'Warning: life form pattern not recognized. Archival processing terminated.  Continued interference will result in targeted response.'),
(30899, 1, 0, 'enUS', 'Critical threat index. Void analysis diverted. Initiating sanitization protocol.'),
(30899, 2, 0, 'enUS', 'Alert: security fail-safes deactivated. Beginning memory purge and... '),
(30899, 3, 0, 'enUS', 'System online. Life form pattern recognized.  Welcome, Branbronzan.  Query?'),
(30899, 4, 0, 'enUS', 'Acknowledged, Branbronzan. Session terminated.'),
(31118, 0, 0, 'enUS', 'We\'ve broken through the prison gate! The way into Dalaran is clear! Now we finally put an end to the Nexus War!'),
(32191, 0, 0, 'enUS', 'The Kirin Tor must be stopped!'),
(32191, 1, 0, 'enUS', 'Dalaran must fall!'),
(32191, 2, 0, 'enUS', 'Destroy all who stand against us!'),
(32191, 3, 0, 'enUS', 'Dalaran must fall!'),
(32191, 4, 0, 'enUS', 'Destroy all who stand against us!'),
(32204, 0, 0, 'enUS', 'A Portal Guardian defends the new portal!'),
(32204, 1, 0, 'enUS', 'An elite Blue Dragonflight squad appears from the portal!'),
(32204, 2, 0, 'enUS', 'A Portal Keeper emerges from the portal!'),
(32204, 3, 0, 'enUS', 'A Portal Keeper emerges from the portal!'),
(32204, 4, 0, 'enUS', 'An elite Blue Dragonflight squad appears from the portal!'),
(32204, 5, 0, 'enUS', 'An elite Blue Dragonflight squad appears from the portal!'),
(32204, 6, 0, 'enUS', 'A Portal Guardian defends the new portal!'),
(32204, 7, 0, 'enUS', 'An elite Blue Dragonflight squad appears from the portal!'),
(32204, 8, 0, 'enUS', 'An elite Blue Dragonflight squad appears from the portal!'),
(32204, 9, 0, 'enUS', 'A Portal Keeper emerges from the portal!'),
(32204, 10, 0, 'enUS', 'A Portal Guardian defends the new portal!'),
(32204, 11, 0, 'enUS', 'An elite Blue Dragonflight squad appears from the portal!'),
(32204, 12, 0, 'enUS', 'An elite Blue Dragonflight squad appears from the portal!'),
(32204, 13, 0, 'enUS', 'A Portal Guardian defends the new portal!');

DELETE FROM `creature_questitem` WHERE (`CreatureEntry`=19220 AND `Idx`=0) OR (`CreatureEntry`=3637 AND `Idx`=0);
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(19220, 0, 31086, 27101), -- 19220
(3637, 0, 6443, 27101); -- 3637

DELETE FROM `gameobject_questitem` WHERE (`GameObjectEntry`=184465 AND `Idx`=0) OR (`GameObjectEntry`=185015 AND `Idx`=0);
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(184465, 0, 72663, 27101), -- 184465
(185015, 0, 30824, 27101); -- 185015
