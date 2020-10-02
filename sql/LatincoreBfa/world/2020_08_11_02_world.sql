DELETE FROM `quest_request_items` WHERE `ID` IN (52146 /*52146*/, 52035 /*52035*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`) VALUES
(52146, 0, 0, 0, 0, 'Shouldn\'t be long now!'), -- 52146
(52035, 0, 0, 0, 0, '<Halford nods sternly at you.>'); -- 52035


DELETE FROM `gossip_menu` WHERE  (`MenuId`=22751 AND `TextId`=35206);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(22751, 35206, 27377); -- 139719

DELETE FROM `gossip_menu_option` WHERE (`MenuId`=22508 AND `OptionIndex`=9) OR (`MenuId`=22508 AND `OptionIndex`=8);
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `VerifiedBuild`) VALUES
(22508, 9, 0, 'Set sail for Zuldazar.', 0, 27377),
(22508, 8, 0, 'Set sail for Nazmir.', 0, 27377);

DELETE FROM `quest_template` WHERE `ID` IN (59003 /*-Unknown-*/, 58961 /*-Unknown-*/, 58743 /*-Unknown-*/, 58676 /*-Unknown-*/, 58667 /*-Unknown-*/, 58256 /*-Unknown-*/, 57590 /*-Unknown-*/, 57456 /*-Unknown-*/, 57359 /*-Unknown-*/, 57101 /*-Unknown-*/, 57051 /*-Unknown-*/, 56905 /*-Unknown-*/, 56753 /*-Unknown-*/, 56752 /*-Unknown-*/, 56017 /*-Unknown-*/, 54750 /*-Unknown-*/, 54739 /*-Unknown-*/, 54709 /*-Unknown-*/, 54437 /*-Unknown-*/, 54386 /*-Unknown-*/, 54376 /*-Unknown-*/, 54369 /*-Unknown-*/, 54366 /*-Unknown-*/);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `ScalingFactionGroup`, `MaxScalingLevel`, `QuestPackageID`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardDisplaySpell1`, `RewardDisplaySpell2`, `RewardDisplaySpell3`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(59003, 3, -1, 0, 120, 0, 120, 10833, 109, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 315449, 0, 0, 0, 0, 1, 0, 36241408, 524288, 12288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1419, 7, 0, 0, 'Combustible Cocoons', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 35435), -- -Unknown-
(58961, 3, -1, 0, 120, 0, 120, 10833, 109, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 315449, 0, 0, 0, 0, 1, 0, 36241408, 524288, 12288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1419, 7, 0, 0, 'Ambushed Settlers', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 35435), -- -Unknown-
(58743, 3, -1, 0, 120, 0, 120, 10833, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3735808, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 7500, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 955, 7, 0, 0, 'Dune Buggy', 'Defeat Grixis Tinypop in a pet battle.', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 35435), -- -Unknown-
(58676, 3, -1, 0, 120, 0, 120, 10833, 109, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 317832, 0, 0, 0, 0, 1, 0, 36241408, 524288, 12288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1437, 7, 0, 0, 'Dormant Destroyer', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 35435), -- -Unknown-
(58667, 3, -1, 0, 120, 0, 120, 10833, 109, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 315449, 0, 0, 0, 0, 1, 0, 36241408, 524288, 12288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1419, 7, 0, 0, 'Obsidian Extraction', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 35435), -- -Unknown-
(58256, 3, -1, 0, 120, 0, 120, 10833, 109, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 307903, 0, 0, 0, 0, 1, 0, 36241408, 524288, 12288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1419, 7, 0, 0, 'Consuming Maw', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 35435), -- -Unknown-
(57590, 3, -1, 0, 120, 0, 120, 10833, 109, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 317834, 0, 0, 0, 0, 1, 0, 36241408, 524288, 12288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1437, 7, 0, 0, 'Spirit Drinker', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 35435), -- -Unknown-
(57456, 3, -1, 0, 120, 0, 120, 10833, 109, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 317834, 0, 0, 0, 0, 1, 0, 36241408, 524288, 12288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1437, 7, 0, 0, 'Spirit Drinker', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 35435), -- -Unknown-
(57359, 3, -1, 0, 120, 0, 120, 10833, 109, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 307903, 0, 0, 0, 0, 1, 0, 36241408, 524288, 12288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1419, 7, 0, 0, 'Summoning Ritual', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 35435), -- -Unknown-
(57101, 3, -1, 0, 120, 0, 120, 5840, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 304973, 0, 0, 0, 0, 0, 0, 40435968, 524288, 12288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1419, 7, 0, 0, 'Zan-Tien Serpent Cage', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 35435), -- -Unknown-
(57051, 2, -1, 0, 120, 0, 120, -560, 0, 0, 0, 5, 1, 234000, 5, 1, 219400, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 37748744, 4202496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 256, 0, 7, 0, 0, 'Debt Collection!', 'Collect $1oa Unpaid Debts.', 'You need thermoplugs? Well, you came to the right place, kid.\n\nBut I ain\'t giving \'em to you on credit. There\'s way too many shlubs who haven\'t paid me back the money they owe. I\'m in over my head here, if I don\'t get paid fast, I\'ll be out of business in no time.\n\n<Crank Greasefuse thinks for a moment.>\n\nLook, I tell you what... If you can muscle those no-good goons into paying me my money, I\'ll give you the thermoplugs as payment.\n\nYou won\'t find a better deal than that!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 35435), -- -Unknown-
(56905, 2, -1, 0, 120, 0, 1, -366, 0, 0, 0, 5, 1, 234000, 5, 1, 219400, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 32, 0, 0, 0, 0, 0, 170207, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 0, 0, 0, 'Crown of Dark Blossoms', 'Gather blooms from Duskwood, Silverpine Forest, and Desolace.', 'Such somber flowers... but they hold a beauty of their own, don\'t you think? If only they could last.\n\nAllow me to lend my aid.\n\nEvery Lunar Festival, similar flowers to yours bloom around the world. They hold a special connection to Elune... one that I can empower. If you bring them to me, I can preserve them so you may enjoy them long after an ordinary flower would die.', '', 'Return to Myrael Lunarbloom in Moonglade.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 35435), -- -Unknown-
(56753, 0, -1, 0, 120, 0, 120, 10290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 299123, 0, 0, 0, 0, 0, 0, 2101576, 32768, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 7500, 0, 0, 0, 0, 0, 0, 0, 6130900294268439629, 1244, 7, 0, 0, 'Rustbolt Requisitions: Deep Sea Satin', 'Bring $1oa Storm Silver Ore to Gila Crosswire.', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 35435), -- -Unknown-
(56752, 0, -1, 0, 120, 0, 120, 10290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 299123, 0, 0, 0, 0, 0, 0, 2101576, 32768, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 7500, 0, 0, 0, 0, 0, 0, 0, 12261800583900083122, 1244, 7, 0, 0, 'Rustbolt Requisitions: Deep Sea Satin', 'Bring $1oa Storm Silver Ore to Skaggit.', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 35435), -- -Unknown-
(56017, 3, -1, 0, 120, 0, 120, 10052, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 298664, 0, 0, 0, 0, 0, 0, 36241664, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2373, 2400, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 7500, 7500, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1350, 7, 0, 0, 'Runelocked Chest', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 35435), -- -Unknown-
(54750, 0, -1, 0, 120, 0, 1, -22, 0, 0, 0, 3, 1, 117000, 3, 1, 109750, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23247, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 12261800583900083122, 0, 0, 0, 0, 'Honor the Flame', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 35435), -- -Unknown-
(54739, 0, -1, 0, 120, 0, 1, -22, 0, 0, 0, 5, 1, 234000, 5, 1, 219400, 0, 0, 0, 45437, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23247, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 12261800583900083122, 0, 0, 0, 0, 'Desecrate this Fire!', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 35435), -- -Unknown-
(54709, 0, -1, 0, 120, 0, 1, -21, 0, 0, 0, 3, 1, 0, 0, 1, 109750, 0, 0, 0, 48802, 0, 0, 0, 0, 1, 0, 2097152, 0, 0, 0, 0, 0, 0, 0, 37586, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 12261800583900083122, 0, 0, 0, 0, 'Candy Bucket', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 35435), -- -Unknown-
(54437, 3, -1, 0, 120, 0, 110, 9042, 260, 0, 0, 7, 1, 0, 0, 0, 0, 0, 0, 0, 285170, 0, 0, 0, 0, 1, 0, 36241728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 15000, 0, 0, 0, 0, 0, 0, 0, 12261800583900083122, 1125, 7, 0, 0, 'Owynn Graddock', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 35435), -- -Unknown-
(54386, 0, -1, 0, 120, 0, 120, -432, 153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 15000, 0, 0, 0, 0, 0, 0, 0, 6130900294268439629, 0, 7, 0, 0, 'Darkshore Donations: Deep Sea Bandage', 'Gather $1oa F.R.I.E.D. for Norber Togglesprocket in Boralus Harbor.', 'You never know when you\'ll need to deliver a big bang on the battlefield, if you know what I mean. Luckily we can plan for the unexpected!\n\nWe\'ve begun to store a special stockpile of explosives for scenarios where we\'ll need a little something extra to get our point across. I\'ve added one particular item to the list. \n\nIf you have any to spare I\'ll make sure they\'re put to good use.', '', '', 1553, 0, 0, 0, 500, 0, 0, 0, '', '', '', '', 0, 0, 35435), -- -Unknown-
(54376, 0, -1, 0, 120, 0, 120, -432, 153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 15000, 0, 0, 0, 0, 0, 0, 0, 6130900294268439629, 0, 7, 0, 0, 'Darkshore Donations: Potion of Replenishment', 'Gather $1oa War-Scroll of Battle Shout for Liao in Boralus Harbor.', '', '', '', 1553, 0, 0, 0, 500, 0, 0, 0, '', '', '', '', 0, 0, 35435), -- -Unknown-
(54369, 0, -1, 0, 120, 0, 120, -432, 153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 15000, 0, 0, 0, 0, 0, 0, 0, 6130900294268439629, 0, 7, 0, 0, 'Darkshore Donations: Electroshock Mount Motivator', 'Donate $1oa Shimmerscale to Charlane in Boralus Harbor.', 'I\'ll keep it simple: we need more Shimmerscale!\n\nI apologize for being so forward with you, but there\'s little time to waste.\n\nIf you happen upon this item throughout your travels I\'d be more than happy to put it to good use. Outfitting our allies is of the utmost importance in the battle to come, don\'t you agree?', '', '', 1553, 0, 0, 0, 500, 0, 0, 0, '', '', '', '', 0, 0, 35435), -- -Unknown-
(54366, 0, -1, 0, 120, 0, 120, -432, 153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 15000, 0, 0, 0, 0, 0, 0, 0, 6130900294268439629, 0, 7, 0, 0, 'Darkshore Donations: Winter\'s Kiss', 'Gather $1oa Battle Flag: Phalanx Defense for Faella in Boralus Harbor.', '', '', '', 1553, 0, 0, 0, 500, 0, 0, 0, '', '', '', '', 0, 0, 35435); -- -Unknown-


UPDATE `quest_template` SET `RewardCurrencyQty1`=3, `VerifiedBuild`=35435 WHERE `ID`=56159; -- Plug the Geysers
UPDATE `quest_template` SET `RewardCurrencyQty1`=3, `VerifiedBuild`=35435 WHERE `ID`=56000; -- We've Got Crabs!
UPDATE `quest_template` SET `RewardCurrencyQty1`=3, `VerifiedBuild`=35435 WHERE `ID`=55874; -- Plug the Geysers
UPDATE `quest_template` SET `RewardBonusMoney`=2250, `VerifiedBuild`=35435 WHERE `ID`=53627; -- A Gift of Azerite
UPDATE `quest_template` SET `Flags`=34684928, `FlagsEx`=64, `VerifiedBuild`=35435 WHERE `ID`=50206; -- Strike Back
UPDATE `quest_template` SET `RewardFactionValue1`=4, `VerifiedBuild`=35435 WHERE `ID`=49046; -- Gnasher
UPDATE `quest_template` SET `AllowableRaces`=18446744073709551615, `VerifiedBuild`=35435 WHERE `ID`=41457; -- Radiant Leystone Outcropping
UPDATE `quest_template` SET `AllowableRaces`=18446744073709551615, `VerifiedBuild`=35435 WHERE `ID`=41296; -- Fjarnskaggl Cluster
UPDATE `quest_template` SET `AllowableRaces`=18446744073709551615, `VerifiedBuild`=35435 WHERE `ID`=39042; -- The Very Best
UPDATE `quest_template` SET `RewardMoney`=86000, `RewardBonusMoney`=1400, `VerifiedBuild`=35435 WHERE `ID`=32406; -- A Tactical Assault
UPDATE `quest_template` SET `RewardMoney`=114000, `RewardBonusMoney`=1850, `VerifiedBuild`=35435 WHERE `ID`=32404; -- Violence in the Arena
UPDATE `quest_template` SET `RewardMoney`=114000, `RewardBonusMoney`=1850, `VerifiedBuild`=35435 WHERE `ID`=32403; -- It Starts in the Sewers
UPDATE `quest_template` SET `QuestLevel`=-1, `MaxScalingLevel`=90, `MinLevel`=82, `AllowableRaces`=18446744073709551615, `VerifiedBuild`=35435 WHERE `ID`=31518; -- The Vale of Eternal Blossoms
UPDATE `quest_template` SET `RewardMoney`=114000, `RewardBonusMoney`=1850, `VerifiedBuild`=35435 WHERE `ID`=31517; -- Contending With Bullies
UPDATE `quest_template` SET `MaxScalingLevel`=120, `MinLevel`=60, `RewardBonusMoney`=109750, `Flags`=2097160, `VerifiedBuild`=35435 WHERE `ID`=28880; -- Back To The Orphanage
UPDATE `quest_template` SET `QuestLevel`=-1, `MaxScalingLevel`=60, `MinLevel`=40, `RewardBonusMoney`=60, `AllowableRaces`=18446744073709551615, `VerifiedBuild`=35435 WHERE `ID`=28143; -- To the Withering
UPDATE `quest_template` SET `AllowableRaces`=16448, `VerifiedBuild`=35435 WHERE `ID`=27274; -- The Chief Surgeon
UPDATE `quest_template` SET `Flags`=16384, `VerifiedBuild`=35435 WHERE `ID`=27072; -- The Old Barracks
UPDATE `quest_template` SET `Flags`=0, `VerifiedBuild`=35435 WHERE `ID`=24800; -- A Victory For The Sunreavers
UPDATE `quest_template` SET `RewardBonusMoney`=0, `VerifiedBuild`=35435 WHERE `ID`=24766; -- The Arts of a Druid
UPDATE `quest_template` SET `Flags`=10, `VerifiedBuild`=35435 WHERE `ID`=13930; -- Home Of The Bear-Men
UPDATE `quest_template` SET `Flags`=8, `VerifiedBuild`=35435 WHERE `ID`=13733; -- A Champion Rises
UPDATE `quest_template` SET `Flags`=8, `VerifiedBuild`=35435 WHERE `ID`=13685; -- A Valiant Of Ironforge
UPDATE `quest_template` SET `Flags`=0, `VerifiedBuild`=35435 WHERE `ID`=13269; -- Cloth Scavenging
UPDATE `quest_template` SET `Flags`=20488, `VerifiedBuild`=35435 WHERE `ID`=13190; -- All Things in Good Time
UPDATE `quest_template` SET `Flags`=16392, `VerifiedBuild`=35435 WHERE `ID`=13096; -- Gal'darah Must Pay
UPDATE `quest_template` SET `Flags`=8, `AllowableRaces`=16448, `VerifiedBuild`=35435 WHERE `ID`=12808; -- A Desperate Alliance
UPDATE `quest_template` SET `Flags`=0, `VerifiedBuild`=35435 WHERE `ID`=12774; -- Stormwind
UPDATE `quest_template` SET `FlagsEx2`=32, `VerifiedBuild`=35435 WHERE `ID`=11933; -- Stealing the Exodar's Flame
UPDATE `quest_template` SET `Flags`=4106, `VerifiedBuild`=35435 WHERE `ID`=11496; -- The Sanctum Wards
UPDATE `quest_template` SET `Flags`=16392, `VerifiedBuild`=35435 WHERE `ID`=11488; -- Magisters' Terrace
UPDATE `quest_template` SET `RewardMoney`=23400, `RewardBonusMoney`=22000, `LogDescription`='Sniperhunter Goro has asked you to capture $1oa Stunned Wolpertingers using the Wolpertinger Net. You must be wearing Synthebrew Goggles to see them.', `QuestDescription`='On Draenor, many creatures posed a tough hunt. However, I\'ve never encountered a creature such as the wild wolpertinger of Azeroth!\n\nThese beasts are not to be found most of the year, but the sounds and smells of Brewfest seem to draw them out. If you look around, you still may not see them... which is where these goggles come in handy!\n\nProve to me you are a worthy hunter and bring me five of these wolpertingers alive. If you need some goggles, I have some to spare.', `VerifiedBuild`=35435 WHERE `ID`=11431; -- Catch the Wild Wolpertinger!
UPDATE `quest_template` SET `Flags`=20482, `VerifiedBuild`=35435 WHERE `ID`=11337; -- Call to Arms: Eye of the Storm
UPDATE `quest_template` SET `Flags`=8, `VerifiedBuild`=35435 WHERE `ID`=11106; -- Defender No More
UPDATE `quest_template` SET `MaxScalingLevel`=120, `RewardBonusMoney`=109750, `Flags`=10, `AllowableRaces`=6130900294268439629, `VerifiedBuild`=35435 WHERE `ID`=10968; -- Call on the Farseer
UPDATE `quest_template` SET `Flags`=8, `VerifiedBuild`=35435 WHERE `ID`=10967; -- Back to the Orphanage
UPDATE `quest_template` SET `Flags`=10, `VerifiedBuild`=35435 WHERE `ID`=10962; -- Time to Visit the Caverns
UPDATE `quest_template` SET `Flags`=16384, `VerifiedBuild`=35435 WHERE `ID`=10752; -- Onward to Ashenvale
UPDATE `quest_template` SET `Flags`=16384, `VerifiedBuild`=35435 WHERE `ID`=10741; -- Distinguished Service
UPDATE `quest_template` SET `Flags`=16384, `VerifiedBuild`=35435 WHERE `ID`=10739; -- Distinguished Service
UPDATE `quest_template` SET `Flags`=16384, `VerifiedBuild`=35435 WHERE `ID`=10727; -- Eminence Among the Violet Eye
UPDATE `quest_template` SET `RewardBonusMoney`=1380, `Flags`=16384, `VerifiedBuild`=35435 WHERE `ID`=10283; -- Taretha's Diversion
UPDATE `quest_template` SET `RewardBonusMoney`=30, `Flags`=540672, `VerifiedBuild`=35435 WHERE `ID`=10072; -- Learning the Word
UPDATE `quest_template` SET `RewardBonusMoney`=30, `Flags`=540672, `VerifiedBuild`=35435 WHERE `ID`=10068; -- Frost Nova
UPDATE `quest_template` SET `Flags`=16384, `VerifiedBuild`=35435 WHERE `ID`=9832; -- The Second and Third Fragments
UPDATE `quest_template` SET `Flags`=16384, `VerifiedBuild`=35435 WHERE `ID`=9829; -- Khadgar
UPDATE `quest_template` SET `Flags`=16392, `VerifiedBuild`=35435 WHERE `ID`=9719; -- Stalk the Stalker
UPDATE `quest_template` SET `Flags`=16392, `VerifiedBuild`=35435 WHERE `ID`=9717; -- Oh, It's On!
UPDATE `quest_template` SET `Flags`=16392, `VerifiedBuild`=35435 WHERE `ID`=9715; -- Bring Me A Shrubbery!
UPDATE `quest_template` SET `RewardBonusMoney`=660, `VerifiedBuild`=35435 WHERE `ID`=9665; -- Bolstering Our Defenses
UPDATE `quest_template` SET `Flags`=16450, `VerifiedBuild`=35435 WHERE `ID`=9645; -- The Master's Terrace
UPDATE `quest_template` SET `Flags`=16448, `VerifiedBuild`=35435 WHERE `ID`=9644; -- Nightbane
UPDATE `quest_template` SET `Flags`=16384, `VerifiedBuild`=35435 WHERE `ID`=9638; -- In Good Hands
UPDATE `quest_template` SET `Flags`=16396, `VerifiedBuild`=35435 WHERE `ID`=9607; -- Heart of Rage
UPDATE `quest_template` SET `Flags`=16392, `VerifiedBuild`=35435 WHERE `ID`=9589; -- The Blood is Life
UPDATE `quest_template` SET `Flags`=16392, `VerifiedBuild`=35435 WHERE `ID`=9572; -- Weaken the Ramparts
UPDATE `quest_template` SET `Flags`=16392, `VerifiedBuild`=35435 WHERE `ID`=9492; -- Turning the Tide
UPDATE `quest_template` SET `QuestLevel`=1, `RewardBonusMoney`=0, `Flags`=16386, `RewardFactionCapIn1`=7, `RewardFactionCapIn2`=7, `RewardFactionCapIn3`=7, `RewardFactionCapIn4`=7, `RewardFactionCapIn5`=7, `Expansion`=1, `QuestCompletionLog`='', `VerifiedBuild`=35435 WHERE `ID`=9486; -- Taming the Beast
UPDATE `quest_template` SET `Flags`=16392, `VerifiedBuild`=35435 WHERE `ID`=9429; -- Travel to Darkshire
UPDATE `quest_template` SET `AllowableRaces`=12261800583900083122, `VerifiedBuild`=35435 WHERE `ID`=8915; -- An Earnest Proposition
UPDATE `quest_template` SET `RewardBonusMoney`=0, `Flags`=540672, `VerifiedBuild`=35435 WHERE `ID`=8564; -- Priest Training
UPDATE `quest_template` SET `RewardBonusMoney`=570, `VerifiedBuild`=35435 WHERE `ID`=8255; -- Of Coursers We Know
UPDATE `quest_template` SET `RewardBonusMoney`=510, `VerifiedBuild`=35435 WHERE `ID`=7731; -- Stinglasher
UPDATE `quest_template` SET `RewardBonusMoney`=480, `VerifiedBuild`=35435 WHERE `ID`=7730; -- Zukk'ash Infestation
UPDATE `quest_template` SET `MaxScalingLevel`=120, `RewardBonusMoney`=329200, `AllowableRaces`=6130900294268439629, `VerifiedBuild`=35435 WHERE `ID`=7172; -- The Eye of Command
UPDATE `quest_template` SET `RewardBonusMoney`=780, `VerifiedBuild`=35435 WHERE `ID`=7029; -- Vyletongue Corruption
UPDATE `quest_template` SET `RewardBonusMoney`=30, `VerifiedBuild`=35435 WHERE `ID`=6141; -- Brother Anton
UPDATE `quest_template` SET `QuestLevel`=1, `RewardBonusMoney`=0, `VerifiedBuild`=35435 WHERE `ID`=5924; -- Heeding the Call
UPDATE `quest_template` SET `RewardBonusMoney`=30, `VerifiedBuild`=35435 WHERE `ID`=5621; -- Garments of the Moon
UPDATE `quest_template` SET `RewardBonusMoney`=960, `VerifiedBuild`=35435 WHERE `ID`=5526; -- Shards of the Felvine
UPDATE `quest_template` SET `RewardBonusMoney`=570, `VerifiedBuild`=35435 WHERE `ID`=5216; -- Target: Felstone Field
UPDATE `quest_template` SET `RewardBonusMoney`=570, `VerifiedBuild`=35435 WHERE `ID`=5211; -- Defenders of Darrowshire
UPDATE `quest_template` SET `RewardBonusMoney`=300, `VerifiedBuild`=35435 WHERE `ID`=5149; -- Pamela's Doll
UPDATE `quest_template` SET `RewardBonusMoney`=660, `VerifiedBuild`=35435 WHERE `ID`=5047; -- Finkle Einhorn, At Your Service!
UPDATE `quest_template` SET `RewardBonusMoney`=900, `AllowableRaces`=18446744073709551615, `VerifiedBuild`=35435 WHERE `ID`=4788; -- The Final Tablets
UPDATE `quest_template` SET `RewardBonusMoney`=390, `VerifiedBuild`=35435 WHERE `ID`=4135; -- The Writhing Deep
UPDATE `quest_template` SET `RewardBonusMoney`=120, `AllowableRaces`=18446744073709551615, `VerifiedBuild`=35435 WHERE `ID`=3787; -- Jonespyre's Request
UPDATE `quest_template` SET `RewardBonusMoney`=720, `VerifiedBuild`=35435 WHERE `ID`=3601; -- Kim'jael Indeed!
UPDATE `quest_template` SET `RewardBonusMoney`=30, `VerifiedBuild`=35435 WHERE `ID`=3365; -- Bring Back the Mug
UPDATE `quest_template` SET `RewardBonusMoney`=0, `VerifiedBuild`=35435 WHERE `ID`=3103; -- Hallowed Letter
UPDATE `quest_template` SET `RewardBonusMoney`=390, `VerifiedBuild`=35435 WHERE `ID`=3063; -- Vengeance on the Northspring
UPDATE `quest_template` SET `RewardBonusMoney`=660, `VerifiedBuild`=35435 WHERE `ID`=3062; -- Dark Heart
UPDATE `quest_template` SET `RewardBonusMoney`=540, `VerifiedBuild`=35435 WHERE `ID`=2585; -- The Decisive Striker
UPDATE `quest_template` SET `RewardBonusMoney`=540, `VerifiedBuild`=35435 WHERE `ID`=2581; -- Snickerfang Jowls
UPDATE `quest_template` SET `RewardBonusMoney`=240, `VerifiedBuild`=35435 WHERE `ID`=2381; -- Plundering the Plunderers
UPDATE `quest_template` SET `RewardBonusMoney`=0, `VerifiedBuild`=35435 WHERE `ID`=1881; -- Speak with Anastasia
UPDATE `quest_template` SET `RewardBonusMoney`=0, `VerifiedBuild`=35435 WHERE `ID`=1534; -- Call of Water
UPDATE `quest_template` SET `QuestLevel`=1, `RewardBonusMoney`=0, `VerifiedBuild`=35435 WHERE `ID`=1522; -- Call of Fire
UPDATE `quest_template` SET `RewardBonusMoney`=330, `VerifiedBuild`=35435 WHERE `ID`=1140; -- The Tower of Althalaxx
UPDATE `quest_template` SET `RewardBonusMoney`=300, `VerifiedBuild`=35435 WHERE `ID`=907; -- Enraged Thunder Lizards
UPDATE `quest_template` SET `RewardBonusMoney`=120, `VerifiedBuild`=35435 WHERE `ID`=599; -- The Bloodsail Buccaneers
UPDATE `quest_template` SET `RewardBonusMoney`=90, `VerifiedBuild`=35435 WHERE `ID`=393; -- Shadow of the Past
UPDATE `quest_template` SET `RewardBonusMoney`=30, `VerifiedBuild`=35435 WHERE `ID`=381; -- The Scarlet Crusade
UPDATE `quest_template` SET `RewardBonusMoney`=90, `VerifiedBuild`=35435 WHERE `ID`=321; -- Lightforge Iron
UPDATE `quest_template` SET `MaxScalingLevel`=60, `MinLevel`=1, `RewardBonusMoney`=780, `VerifiedBuild`=35435 WHERE `ID`=320; -- Return to Bellowfiz
UPDATE `quest_template` SET `RewardBonusMoney`=30, `VerifiedBuild`=35435 WHERE `ID`=288; -- The Third Fleet
UPDATE `quest_template` SET `RewardBonusMoney`=60, `AllowableRaces`=18446744073709551615, `VerifiedBuild`=35435 WHERE `ID`=131; -- Delivering Daffodils

DELETE FROM `quest_objectives` WHERE `ID` IN (395316 /*395316*/, 395315 /*395315*/, 395227 /*395227*/, 395226 /*395226*/, 394876 /*394876*/, 394710 /*394710*/, 394709 /*394709*/, 394677 /*394677*/, 394676 /*394676*/, 393907 /*393907*/, 393906 /*393906*/, 392697 /*392697*/, 392455 /*392455*/, 392175 /*392175*/, 391646 /*391646*/, 391645 /*391645*/, 391644 /*391644*/, 391643 /*391643*/, 391931 /*391931*/, 391461 /*391461*/, 391460 /*391460*/, 391459 /*391459*/, 391292 /*391292*/, 391291 /*391291*/, 390068 /*390068*/, 387160 /*387160*/, 387068 /*387068*/, 387048 /*387048*/, 387034 /*387034*/, 387028 /*387028*/, 261242 /*261242*/);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(395316, 59003, 0, 1, 2, 163320, 1, 26, 0, 0, '', 35435), -- 395316
(395315, 59003, 0, 0, 1, 163319, 1, 24, 0, 0, '', 35435), -- 395315
(395227, 58961, 0, 1, 2, 163171, 1, 26, 0, 0, '', 35435), -- 395227
(395226, 58961, 0, 0, 1, 163196, 1, 24, 0, 0, '', 35435), -- 395226
(394876, 58743, 12, 0, 0, 2856, 1, 0, 0, 0, 'Defeat Aqir Sandcrawler', 35435), -- 394876
(394710, 58676, 0, 1, 2, 162167, 1, 26, 0, 0, '', 35435), -- 394710
(394709, 58676, 0, 0, 1, 162162, 1, 24, 0, 0, '', 35435), -- 394709
(394677, 58667, 0, 1, 2, 162110, 1, 26, 0, 0, '', 35435), -- 394677
(394676, 58667, 0, 0, 1, 162088, 1, 24, 0, 0, '', 35435), -- 394676
(393907, 58256, 0, 1, 2, 160795, 1, 26, 0, 0, '', 35435), -- 393907
(393906, 58256, 0, 0, 1, 160797, 1, 24, 0, 0, '', 35435), -- 393906
(392697, 57590, 0, 0, 1, 157794, 1, 24, 0, 0, '', 35435), -- 392697
(392455, 57456, 0, 0, 1, 157794, 1, 24, 0, 0, '', 35435), -- 392455
(392175, 57359, 0, 0, 0, 158360, 1, 24, 0, 0, '', 35435), -- 392175
(391646, 57101, 2, 3, 4, 333504, 1, 24, 0, 0, '', 35435), -- 391646
(391645, 57101, 2, 2, 3, 333505, 1, 24, 0, 0, '', 35435), -- 391645
(391644, 57101, 2, 1, 2, 333506, 1, 24, 0, 0, '', 35435), -- 391644
(391643, 57101, 2, 0, 1, 333507, 1, 24, 0, 0, '', 35435), -- 391643
(391931, 57051, 1, 0, 0, 171089, 8, 0, 1, 0, '', 35435), -- 391931
(391461, 56905, 1, 2, 2, 170308, 3, 0, 1, 0, '', 35435), -- 391461
(391460, 56905, 1, 1, 1, 170298, 3, 0, 1, 0, '', 35435), -- 391460
(391459, 56905, 1, 0, 0, 170296, 3, 0, 1, 0, '', 35435), -- 391459
(391292, 56753, 1, 0, 0, 152577, 10, 0, 0, 0, '', 35435), -- 391292
(391291, 56752, 1, 0, 0, 152577, 10, 0, 0, 0, '', 35435), -- 391291
(390068, 56017, 0, 0, 0, 94848, 26, 0, 0, 0, 'Blue runes destroyed', 35435), -- 390068
(387160, 54437, 0, 0, 1, 148044, 1, 1, 0, 0, '', 35435), -- 387160
(387068, 54386, 1, 0, 0, 158382, 10, 0, 0, 0, '', 35435), -- 387068
(387048, 54376, 1, 0, 0, 152561, 2, 0, 0, 0, '', 35435), -- 387048
(387034, 54369, 1, 0, 0, 153573, 2, 0, 0, 0, '', 35435), -- 387034
(387028, 54366, 1, 0, 0, 152508, 30, 0, 0, 0, '', 35435), -- 387028
(261242, 9486, 1, 0, 0, 23702, 1, 0, 1, 0, '', 35435); -- 261242

UPDATE `quest_objectives` SET `Order`=2, `VerifiedBuild`=35435 WHERE `ID`=261020; -- 261020
UPDATE `quest_objectives` SET `Order`=1, `VerifiedBuild`=35435 WHERE `ID`=261019; -- 261019
UPDATE `quest_objectives` SET `Flags2`=1, `VerifiedBuild`=35435 WHERE `ID`=261018; -- 261018
UPDATE `quest_objectives` SET `Order`=1, `VerifiedBuild`=35435 WHERE `ID`=258669; -- 258669

DELETE FROM `quest_visual_effect` WHERE (`ID`=395316 AND `Index`=0) OR (`ID`=395315 AND `Index`=0) OR (`ID`=394876 AND `Index`=0) OR (`ID`=394710 AND `Index`=0) OR (`ID`=394709 AND `Index`=0) OR (`ID`=394677 AND `Index`=0) OR (`ID`=394676 AND `Index`=0) OR (`ID`=393907 AND `Index`=2) OR (`ID`=393907 AND `Index`=1) OR (`ID`=393907 AND `Index`=0) OR (`ID`=393906 AND `Index`=2) OR (`ID`=393906 AND `Index`=1) OR (`ID`=393906 AND `Index`=0) OR (`ID`=392175 AND `Index`=0) OR (`ID`=390068 AND `Index`=0);
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(395316, 0, 13714, 35435),
(395315, 0, 13714, 35435),
(394876, 0, 13530, 35435),
(394710, 0, 13476, 35435),
(394709, 0, 13476, 35435),
(394677, 0, 13468, 35435),
(394676, 0, 13468, 35435),
(393907, 2, 13174, 35435),
(393907, 1, 13173, 35435),
(393907, 0, 13172, 35435),
(393906, 2, 13174, 35435),
(393906, 1, 13173, 35435),
(393906, 0, 13172, 35435),
(392175, 0, 2099, 35435),
(390068, 0, 11816, 35435);


