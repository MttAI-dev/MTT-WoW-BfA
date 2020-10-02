DELETE FROM `conversation_actor_template` WHERE `Id` IN (120649, 119889, 129907);
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(120649, 120649, 75898, 27404),
(119889, 119889, 26353, 27404),
(129907, 129907, 84351, 27404);

DELETE FROM `npc_vendor` WHERE (`entry`=138363 AND `item`=163203 AND `ExtendedCost`=6426 AND `type`=1) OR (`entry`=138363 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138363 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138363 AND `item`=160298 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138363 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138363 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138363 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138363 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138363 AND `item`=160502 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138363 AND `item`=163569 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(138363, 10, 163203, 0, 6426, 1, 0, 0, 27404), -- 163203
(138363, 9, 3857, 0, 0, 1, 0, 0, 27404), -- 3857
(138363, 8, 18567, 0, 0, 1, 0, 0, 27404), -- 18567
(138363, 7, 160298, 0, 0, 1, 0, 0, 27404), -- 160298
(138363, 6, 3466, 0, 0, 1, 0, 0, 27404), -- 3466
(138363, 5, 2880, 0, 0, 1, 0, 0, 27404), -- 2880
(138363, 4, 5956, 0, 0, 1, 0, 0, 27404), -- 5956
(138363, 3, 2901, 0, 0, 1, 0, 0, 27404), -- 2901
(138363, 2, 160502, 0, 0, 1, 0, 0, 27404), -- 160502
(138363, 1, 163569, 0, 0, 1, 0, 0, 27404); -- 163569

DELETE FROM `gossip_menu` WHERE (`MenuId`=21093 AND `TextId`=31977) OR (`MenuId`=21074 AND `TextId`=31922) OR (`MenuId`=22493 AND `TextId`=34543) OR (`MenuId`=23099 AND `TextId`=35724);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(21093, 31977, 27404), -- 122009
(21074, 31922, 27404), -- 121706
(22493, 34543, 27404), -- 136331
(23099, 35724, 27404); -- 142096

DELETE FROM `gossip_menu` WHERE (`MenuId`=21651 AND `TextId`=32975) OR (`MenuId`=21437 AND `TextId`=32858) OR (`MenuId`=21094 AND `TextId`=32008) OR (`MenuId`=22423 AND `TextId`=34393) OR (`MenuId`=22423 AND `TextId`=34392) OR (`MenuId`=22860 AND `TextId`=35427) OR (`MenuId`=21246 AND `TextId`=32245) OR (`MenuId`=21437 AND `TextId`=32640) OR (`MenuId`=22860 AND `TextId`=35426);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(21651, 32975, 27404), -- 126814
(21437, 32858, 27404), -- 126235
(21094, 32008, 27404), -- 122289
(22423, 34393, 27404), -- 126696
(22423, 34392, 27404), -- 126696
(22860, 35427, 27404), -- 123876
(21246, 32245, 27404), -- 124108
(21437, 32640, 27404), -- 122583
(22860, 35426, 27404); -- 123876

DELETE FROM `npc_vendor` WHERE (`entry`=127428 AND `item`=163203 AND `ExtendedCost`=6426 AND `type`=1) OR (`entry`=127428 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127428 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127428 AND `item`=160298 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127428 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127428 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127428 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127428 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127428 AND `item`=160502 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127428 AND `item`=163569 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127431 AND `item`=162566 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127431 AND `item`=162570 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127431 AND `item`=162569 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135081 AND `item`=160712 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135081 AND `item`=160710 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135081 AND `item`=160709 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135081 AND `item`=160400 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135081 AND `item`=160399 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135081 AND `item`=160398 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135081 AND `item`=160705 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135081 AND `item`=2678 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135081 AND `item`=30817 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135081 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=139864 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=139864 AND `item`=162563 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=139864 AND `item`=162570 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=139841 AND `item`=37460 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(127428, 10, 163203, 0, 6426, 1, 0, 0, 27404), -- 163203
(127428, 9, 3857, 0, 0, 1, 0, 0, 27404), -- 3857
(127428, 8, 18567, 0, 0, 1, 0, 0, 27404), -- 18567
(127428, 7, 160298, 0, 0, 1, 0, 0, 27404), -- 160298
(127428, 6, 3466, 0, 0, 1, 0, 0, 27404), -- 3466
(127428, 5, 2880, 0, 0, 1, 0, 0, 27404), -- 2880
(127428, 4, 5956, 0, 0, 1, 0, 0, 27404), -- 5956
(127428, 3, 2901, 0, 0, 1, 0, 0, 27404), -- 2901
(127428, 2, 160502, 0, 0, 1, 0, 0, 27404), -- 160502
(127428, 1, 163569, 0, 0, 1, 0, 0, 27404), -- 163569
(127431, 4, 162566, 0, 0, 1, 0, 0, 27404), -- 162566
(127431, 2, 162570, 0, 0, 1, 0, 0, 27404), -- 162570
(127431, 1, 162569, 0, 0, 1, 0, 0, 27404), -- 162569
(135081, 10, 160712, 0, 0, 1, 0, 0, 27404), -- 160712
(135081, 9, 160710, 0, 0, 1, 0, 0, 27404), -- 160710
(135081, 8, 160709, 0, 0, 1, 0, 0, 27404), -- 160709
(135081, 7, 160400, 0, 0, 1, 0, 0, 27404), -- 160400
(135081, 6, 160399, 0, 0, 1, 0, 0, 27404), -- 160399
(135081, 5, 160398, 0, 0, 1, 0, 0, 27404), -- 160398
(135081, 4, 160705, 0, 0, 1, 0, 0, 27404), -- 160705
(135081, 3, 2678, 0, 0, 1, 0, 0, 27404), -- 2678
(135081, 2, 30817, 0, 0, 1, 0, 0, 27404), -- 30817
(135081, 1, 159, 0, 0, 1, 0, 0, 27404), -- 159
(139864, 4, 3371, 0, 0, 1, 0, 0, 27404), -- 3371
(139864, 2, 162563, 0, 0, 1, 0, 0, 27404), -- 162563
(139864, 1, 162570, 0, 0, 1, 0, 0, 27404), -- 162570
(139841, 1, 37460, 0, 0, 1, 0, 0, 27404); -- 37460


DELETE FROM `gossip_menu` WHERE (`MenuId`=21604 AND `TextId`=32948) OR (`MenuId`=21606 AND `TextId`=32950) OR (`MenuId`=21094 AND `TextId`=33454) OR (`MenuId`=21608 AND `TextId`=32959) OR (`MenuId`=21618 AND `TextId`=32960) OR (`MenuId`=21678 AND `TextId`=33025) OR (`MenuId`=21617 AND `TextId`=32951) OR (`MenuId`=21619 AND `TextId`=32961) OR (`MenuId`=21623 AND `TextId`=32963) OR (`MenuId`=21601 AND `TextId`=32939) OR (`MenuId`=21655 AND `TextId`=32980) OR (`MenuId`=21601 AND `TextId`=32937) OR (`MenuId`=22430 AND `TextId`=34409) OR (`MenuId`=21645 AND `TextId`=32969) OR (`MenuId`=21620 AND `TextId`=32960) OR (`MenuId`=22746 AND `TextId`=35200) OR (`MenuId`=18943 AND `TextId`=27642) OR (`MenuId`=21616 AND `TextId`=32959) OR (`MenuId`=9821 AND `TextId`=13584) OR (`MenuId`=21646 AND `TextId`=32970) OR (`MenuId`=21437 AND `TextId`=32858) OR (`MenuId`=22423 AND `TextId`=34393);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(21604, 32948, 27404), -- 127989
(21606, 32950, 27404), -- 127980
(21094, 33454, 27404), -- 135066
(21608, 32959, 27404), -- 127440
(21618, 32960, 27404), -- 127441
(21678, 33025, 27404), -- 135739
(21617, 32951, 27404), -- 127438
(21619, 32961, 27404), -- 127439
(21623, 32963, 27404), -- 130571
(21601, 32939, 27404), -- 127992
(21655, 32980, 27404), -- 127992
(21601, 32937, 27404), -- 127992
(22430, 34409, 27404), -- 135572
(21645, 32969, 27404), -- 127691
(21620, 32960, 27404), -- 127428
(22746, 35200, 27404), -- 127434
(18943, 27642, 27404), -- 127427
(21616, 32959, 27404), -- 127431
(9821, 13584, 27404), -- 139841
(21646, 32970, 27404), -- 127691
(21437, 32858, 27404), -- 126235
(22423, 34393, 27404); -- 126696


DELETE FROM `page_text` WHERE `ID` IN (7587 /*7587*/, 7586 /*7586*/, 7585 /*7585*/, 7584 /*7584*/);
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`, `PlayerConditionID`, `Flags`, `VerifiedBuild`) VALUES
(7587, 'Day 4\n\nI won\'t survive much longer without food or water. \n\nAfter travelin\' in circles for most of da day, I decided my only option was ta follow da advice of a ramblin\' madman and head south toward da promise of shelter.', 0, 0, 0, 27404), -- 7587
(7586, 'Day 3 \n\nOur camp was attacked in da middle of da night by one among us. \n\nUnarmed and befuddled by sleep, we were unable ta defend ourselves. \n\nI fought off the traitor, but it was too late; the survivors had scattered, each now forced ta navigate this unforgiving terrain alone.', 7587, 0, 0, 27404), -- 7586
(7585, 'Day 2\n\nThe sun has set across da dunes, providing some relief from da heat that has made many delirious. \n\nIn a sun-stricken stupor, one among us began ramblin\' about a temple to da south dat welcomes exiles. \n\nI doubt he will make it through da night.', 7586, 0, 0, 27404), -- 7585
(7584, 'Day 1\n\nI write this as I sit in a cage with a dozen other exiles, travelin\' to da sands where we will live out our days, however numbered they may be. \n\nThe air, heavy with heat, tells me we\'re close.', 7585, 0, 0, 27404); -- 7584


UPDATE `creature_template` SET `lootid`=111166 WHERE `entry`=111166;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(111166, 121221, 0.27, 1, 0, 1, 1) /* andvik Breastplate */, 
(111166, 121222, 0.32, 1, 0, 1, 1) /* andvik Gauntlets */, 
(111166, 121223, 0.66, 1, 0, 1, 1) /* andvik Girdle */, 
(111166, 121224, 1, 1, 0, 1, 1) /* andvik Helm */, 
(111166, 121225, 0.05, 1, 0, 1, 1) /* andvik Legplates */, 
(111166, 121226, 0.07, 1, 0, 1, 1) /* andvik Pauldrons */, 
(111166, 121227, 0.48, 1, 0, 1, 1) /* andvik Sabatons */, 
(111166, 121228, 6, 1, 0, 1, 1) /* andvik Vambraces */, 
(111166, 121232, 0.2, 1, 0, 1, 1) /* ightfallen Outcast's Cloak */, 
(111166, 121234, 2, 1, 0, 1, 1) /* oralune Keepsake */, 
(111166, 121235, 1, 1, 0, 1, 1) /* ashj'tar Brooch */, 
(111166, 121236, 0.36, 1, 0, 1, 1) /* awnswood Hunter's Fletchings */, 
(111166, 121237, 0.48, 1, 0, 1, 1) /* mbervale Bindings */, 
(111166, 121238, 0.02, 1, 0, 1, 1) /* mbervale Boots */, 
(111166, 121239, 0.07, 1, 0, 1, 1) /* mbervale Britches */, 
(111166, 121240, 0.32, 1, 0, 1, 1) /* mbervale Gloves */, 
(111166, 121241, 0.32, 1, 0, 1, 1) /* mbervale Hood */, 
(111166, 121242, 0.11, 1, 0, 1, 1) /* mbervale Jerkin */, 
(111166, 121244, 0.41, 1, 0, 1, 1) /* mbervale Waistband */, 
(111166, 121247, 0.23, 1, 0, 1, 1) /* ightfall Loop */, 
(111166, 121248, 0.05, 1, 0, 1, 1) /* ightfall Chain */, 
(111166, 121260, 0.27, 1, 0, 1, 1) /* arpwind Belt */, 
(111166, 121261, 0.02, 1, 0, 1, 1) /* arpwind Bracers */, 
(111166, 121262, 0.77, 1, 0, 1, 1) /* arpwind Gauntlets */, 
(111166, 121263, 1, 1, 0, 1, 1) /* arpwind Greaves */, 
(111166, 121264, 0.48, 1, 0, 1, 1) /* arpwind Helm */, 
(111166, 121265, 0.16, 1, 0, 1, 1) /* arpwind Legguards */, 
(111166, 121266, 0.57, 1, 0, 1, 1) /* arpwind Spaulders */, 
(111166, 121268, 2, 1, 0, 1, 1) /* oonfall Cord */, 
(111166, 121269, 0.86, 1, 0, 1, 1) /* oonfall Cowl */, 
(111166, 121270, 0.05, 1, 0, 1, 1) /* oonfall Handwraps */, 
(111166, 121271, 2, 1, 0, 1, 1) /* oonfall Leggings */, 
(111166, 121272, 0.29, 1, 0, 1, 1) /* oonfall Robe */, 
(111166, 121273, 0.43, 1, 0, 1, 1) /* oonfall Sandals */, 
(111166, 121274, 0.18, 1, 0, 1, 1) /* oonfall Shoulderpads */, 
(111166, 121275, 0.63, 1, 0, 1, 1) /* oonfall Wristwraps */, 
(111166, 121331, 0.05, 1, 0, 1, 1) /* eystone Lockbox */, 
(111166, 121332, 0.79, 1, 0, 1, 1) /* ver-Sharpened Shank */, 
(111166, 121333, 3, 1, 0, 1, 1) /* oorly Weighted Blackjack */, 
(111166, 121334, 0.38, 1, 0, 1, 1) /* ining Sword */, 
(111166, 121335, 1, 1, 0, 1, 1) /* ixing Axe */, 
(111166, 121336, 0.23, 1, 0, 1, 1) /* ossy Longbow */, 
(111166, 121337, 1, 1, 0, 1, 1) /* ermanently Jammed Blunderbuss */, 
(111166, 121339, 0.25, 1, 0, 1, 1) /* valdir Skinning Knife */, 
(111166, 121340, 2, 1, 0, 1, 1) /* ightning-Struck Hammer */, 
(111166, 121341, 6, 1, 0, 1, 1) /* obble's Staff of Discourse */, 
(111166, 121342, 2, 1, 0, 1, 1) /* ust-Encrusted Chain Belt */, 
(111166, 121343, 0.14, 1, 0, 1, 1) /* arped-Plate Belt */, 
(111166, 121344, 0.68, 1, 0, 1, 1) /* unbleached Cord */, 
(111166, 121345, 1, 1, 0, 1, 1) /* eatherworn Belt */, 
(111166, 121346, 0.27, 1, 0, 1, 1) /* arped-Plate Vambraces */, 
(111166, 121347, 0.5, 1, 0, 1, 1) /* ust-Encrusted Wristguards */, 
(111166, 121349, 0.07, 1, 0, 1, 1) /* eatherworn Wristguards */, 
(111166, 121350, 0.84, 1, 0, 1, 1) /* ust-Encrusted Leggings */, 
(111166, 121351, 0.14, 1, 0, 1, 1) /* unbleached Pants */, 
(111166, 121352, 0.11, 1, 0, 1, 1) /* eatherworn Pants */, 
(111166, 121353, 1, 1, 0, 1, 1) /* arped-Plate Pauldrons */, 
(111166, 121354, 2, 1, 0, 1, 1) /* ust-Encrusted Spaulders */, 
(111166, 121356, 1, 1, 0, 1, 1) /* unbleached Armice */, 
(111166, 121357, 2, 1, 0, 1, 1) /* ust-Encrusted Gloves */, 
(111166, 121358, 1, 1, 0, 1, 1) /* unbleached Handwraps */, 
(111166, 121360, 0.66, 1, 0, 1, 1) /* arped-Plate Gauntlets */, 
(111166, 121361, 0.93, 1, 0, 1, 1) /* ust-Encrusted Coif */, 
(111166, 121362, 0.25, 1, 0, 1, 1) /* eatherworn Hood */, 
(111166, 121363, 2, 1, 0, 1, 1) /* arped-Plate Helmet */, 
(111166, 121364, 0.75, 1, 0, 1, 1) /* unbleached Cowl */, 
(111166, 121365, 7, 1, 0, 1, 1) /* arped-Plate Leggings */, 
(111166, 121366, 5, 1, 0, 1, 1) /* ust-Encrusted Hauberk */, 
(111166, 121367, 0.41, 1, 0, 1, 1) /* arped-Plate Breastplate */, 
(111166, 121368, 0.14, 1, 0, 1, 1) /* unbleached Shirt */, 
(111166, 121369, 0.36, 1, 0, 1, 1) /* eatherworn Vest */, 
(111166, 121370, 0.2, 1, 0, 1, 1) /* arped-Plate Stompers */, 
(111166, 121371, 0.11, 1, 0, 1, 1) /* ust-Encrusted Sabatons */, 
(111166, 121372, 0.38, 1, 0, 1, 1) /* unbleached Sandals */, 
(111166, 121373, 0.36, 1, 0, 1, 1) /* eatherworn Boots */, 
(111166, 121377, 0.66, 1, 0, 1, 1) /* eastmaster's Discarded Axe */, 
(111166, 121379, 0.09, 1, 0, 1, 1) /* echanized Musket */, 
(111166, 121381, 0.09, 1, 0, 1, 1) /* hipped Colossus Blade */, 
(111166, 121382, 0.16, 1, 0, 1, 1) /* rthropod Leg Club */, 
(111166, 121385, 0.41, 1, 0, 1, 1) /* eteriorated Hearthstone Deck */, 
(111166, 121388, 11, 1, 0, 1, 1) /* nseen Bindings */, 
(111166, 121390, 0.16, 1, 0, 1, 1) /* nund's Bandages */, 
(111166, 121392, 0.11, 1, 0, 1, 1) /* any-Pocketed Leather Pants */, 
(111166, 121393, 0.16, 1, 0, 1, 1) /* exing Armada */, 
(111166, 121401, 0.41, 1, 0, 1, 1) /* loves of the Transient */, 
(111166, 138781, 5, 1, 0, 1, 1) /* rief History of the Aeons */, 
(111166, 138782, 0.02, 1, 0, 1, 1) /* rief History of the Ages */, 
(111166, 140220, 0.05, 1, 0, 1, 1) /* cavenged Cloth */, 
(111166, 140221, 0.14, 1, 0, 1, 1) /* ound Sack of Gems */, 
(111166, 140222, 0.61, 1, 0, 1, 1) /* arvested Goods */, 
(111166, 140226, 0.09, 1, 0, 1, 1) /* ana-Tinged Pack */, 
(111166, 140227, 3, 1, 0, 1, 1) /* loodhunter's Quarry */, 
(111166, 141292, 0.18, 1, 0, 1, 1) /* rystallizing Mana */, 
(111166, 141293, 2, 1, 0, 1, 1) /* pellfire Oil */, 
(111166, 142119, 0.02, 1, 0, 1, 1) /* ecipe: Potion of Prolonged Power */, 
(111166, 144345, 0.18, 1, 0, 1, 1) /* ile of Pet Goodies */, 
(111166, 144399, 0.11, 1, 0, 1, 1) /* ristocrat's Winter Drape */, 
(111166, 144400, 2, 1, 0, 1, 1) /* eathermane Feather Cloak */, 
(111166, 144401, 1, 1, 0, 1, 1) /* loak of Multitudinous Sheaths */, 
(111166, 144403, 4, 1, 0, 1, 1) /* ashionable Autumn Cloak */, 
(111166, 144404, 4, 1, 0, 1, 1) /* ana-Cord of Deception */, 
(111166, 144405, 0.11, 1, 0, 1, 1) /* aistclasp of Unethical Power */, 
(111166, 144406, 0.11, 1, 0, 1, 1) /* intage Duskwatch Cinch */, 
(111166, 144407, 0.25, 1, 0, 1, 1) /* leaming Celestial Waistguard */, 
(111166, 153202, 0.18, 1, 0, 1, 1) /* rgunite Cluster */;


DELETE FROM `gossip_menu` WHERE `MenuId`=8713;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(8713, 10960, 0),
(8713, 10835, 0);

DELETE FROM `gossip_menu_option` WHERE `MenuId`=8713 AND `OptionIndex`=1;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES
(8713, 1, 0, 'We\'re ready to face Illidan.', 20903, 1, 1, 0);

-- Cage Trap Trigger - 1 SAI
SET @ENTRY := 23292;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,3,0,0,0,0,11,40704,2,0,0,0,0,1,0,0,0,0,0,0,0,"Cage Trap Trigger - 1 - On Just Summoned - Cast 'Caged' (No Repeat) (Normal Dungeon)");

-- Cage Trap Trigger - 2 SAI
SET @ENTRY := 23293;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,3,0,0,0,0,11,40707,2,0,0,0,0,1,0,0,0,0,0,0,0,"Cage Trap Trigger - 2 - On Just Summoned - Cast 'Caged' (No Repeat) (Normal Dungeon)");

-- Cage Trap Trigger - 3 SAI
SET @ENTRY := 23294;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,3,0,0,0,0,11,40708,2,0,0,0,0,1,0,0,0,0,0,0,0,"Cage Trap Trigger - 3 - On Just Summoned - Cast 'Caged' (No Repeat) (Normal Dungeon)");

-- Cage Trap Trigger - 4 SAI
SET @ENTRY := 23295;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,3,0,0,0,0,11,40709,2,0,0,0,0,1,0,0,0,0,0,0,0,"Cage Trap Trigger - 4 - On Just Summoned - Cast 'Caged' (No Repeat) (Normal Dungeon)");

-- Cage Trap Trigger - 5 SAI
SET @ENTRY := 23296;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,3,0,0,0,0,11,40710,2,0,0,0,0,1,0,0,0,0,0,0,0,"Cage Trap Trigger - 5 - On Just Summoned - Cast 'Caged' (No Repeat) (Normal Dungeon)");

-- Cage Trap Trigger - 6 SAI
SET @ENTRY := 23297;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,3,0,0,0,0,11,40711,2,0,0,0,0,1,0,0,0,0,0,0,0,"Cage Trap Trigger - 6 - On Just Summoned - Cast 'Caged' (No Repeat) (Normal Dungeon)");

-- Cage Trap Trigger - 7 SAI
SET @ENTRY := 23298;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,3,0,0,0,0,11,40712,2,0,0,0,0,1,0,0,0,0,0,0,0,"Cage Trap Trigger - 7 - On Just Summoned - Cast 'Caged' (No Repeat) (Normal Dungeon)");

-- Cage Trap Trigger - 8 SAI
SET @ENTRY := 23299;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,3,0,0,0,0,11,40713,2,0,0,0,0,1,0,0,0,0,0,0,0,"Cage Trap Trigger - 8 - On Just Summoned - Cast 'Caged' (No Repeat) (Normal Dungeon)");


DELETE FROM `creature_text` WHERE CreatureID IN(23089,23410,23411); -- Akama and Minions
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(23089, 0, 0, 'This door is all that stands between us and the Betrayer.  Stand aside, friends.', 12, 0, 100, 1, 0, 0, 21563, 0, 'SAY_AKAMA_DOOR'),
(23089, 1, 0, 'I cannot do this alone...', 12, 0, 100, 274, 0, 0, 21548, 0, 'SAY_AKAMA_ALONE'),
(23089, 2, 0, 'I thank you for your aid, brothers.  Our people will be redeemed!', 12, 0, 100, 66, 0, 0, 21554, 0, 'SAY_AKAMA_SALUTE'),
(23089, 3, 0, 'Be wary, friends. The Betrayer meditates in the court just beyond.', 12, 0, 100, 0, 0, 11388, 21555, 0, 'SAY_AKAMA_BETRAYER'),
(23089, 4, 0, 'We\'ve come to end your reign, Illidan. My people, and all of Outland, shall be free!', 14, 0, 100, 25, 0, 11389, 20893, 0, 'SAY_AKAMA_FREE'),
(23089, 5, 0, 'The time has come! The moment is at hand!', 14, 0, 100, 22, 0, 11380, 20894, 0, 'SAY_AKAMA_TIME_HAS_COME'),
(23089, 6, 0, 'I will deal with these mongrels! Strike now, friends! Strike at the Betrayer!', 14, 0, 100, 22, 0, 11390, 21250, 0, 'SAY_AKAMA_MINIONS'),
(23089, 7, 0, 'The Light will bless these dismal halls once again.... I swear it.', 14, 0, 100, 1, 0, 11387, 21514, 0, 'SAY_AKAMA_LIGHT'),
(23089, 8, 0, 'Let us finish what we\'ve started.  I will lead you to Illidan\'s abode once you\'ve recovered your strength.', 12, 0, 100, 1, 0, 0, 21520, 0, 'SAY_AKAMA_FINISH'),
--  AKAMA MINIONS
(23410, 0, 0, 'You are not alone, Akama.', 12, 0, 100, 0, 0, 0, 21545, 0, 'SAY_SPIRIT_ALONE'), -- Spirit of Udalo
(23411, 0, 0, 'Your people will always be with you!', 12, 0, 100, 0, 0, 0, 21546, 0, 'SAY_SPIRIT_ALONE'); -- Spirit of Olum


DELETE FROM `creature_text` WHERE CreatureID=22917 AND `GroupID` IN(8,9,10,11,12,13,14); -- Illidan
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(22917, 8, 0, 'Akama. Your duplicity is hardly surprising. I should have slaughtered you and your malformed brethren long ago.', 14, 0, 100, 6, 0, 11463, 20867, 0, 'Illidan SAY_ILLIDAN_DUPLICITY'),
(22917, 9, 0, 'Boldly said. But I remain... unconvinced.', 14, 0, 100, 6, 0, 11464, 20868, 0, 'Illidan SAY_ILLIDAN_UNCONVINCED'),
(22917, 10, 0, 'You are not prepared!', 14, 0, 100, 406, 0, 11466, 20884, 0, 'Illidan SAY_ILLIDAN_PREPARED'),
(22917, 11, 0, 'Is this it, mortals? Is this all the fury you can muster?', 14, 0, 100, 0, 0, 11476, 21068, 0, 'Illidan SAY_ILLIDAN_SHADOW_PRISON'),
(22917, 12, 0, 'Maiev... How is it even possible?', 14, 0, 100, 1, 0, 11477, 21069, 0, 'Illidan SAY_ILLIDAN_CONFRONT_MAIEV'),
(22917, 13, 0, 'Feel the hatred of ten thousand years!', 14, 0, 100, 0, 0, 11470, 21501, 0, 'Illidan SAY_ILLIDAN_FRENZY'),
(22917, 14, 0, 'You have won... Maiev. But the huntress... is nothing without the hunt. You... are nothing... without me.', 14, 0, 100, 0, 0, 11478, 21506, 0, 'Illidan SAY_ILLIDAN_DEFEATED');

DELETE FROM `creature_text` WHERE CreatureID=23197 AND ((`GroupID` IN(1,2,3,4,5,6,7)) OR (`GroupID`=0 AND ID=2)); -- Maiev
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(23197, 1, 0, 'Their fury pales before mine, Illidan. We have some unsettled business between us.', 14, 0, 100, 6, 0, 11491, 21070, 0, 'Maiev Shadowsong SAY_MAIEV_SHADOWSONG_APPEAR'),
(23197, 2, 0, 'My long hunt is finally over. Today, Justice will be done!', 14, 0, 100, 5, 0, 11492, 21071, 0, 'Maiev Shadowsong SAY_MAIEV_SHADOWSONG_JUSTICE'),
(23197, 3, 0, 'There shall be no prison for you this time!', 14, 0, 100, 0, 0, 11495, 22208, 0, 'Maiev Shadowsong SAY_MAIEV_SHADOWSONG_TRAP'),
(23197, 4, 0, '%s falls to the floor.', 16, 0, 100, 0, 0, 0, 21317, 0, 'Maiev Shadowsong SAY_MAIEV_SHADOWSONG_DOWN'),
(23197, 5, 0, 'It is finished. You are beaten.', 14, 0, 100, 0, 0, 11496, 21507, 0, 'Maiev Shadowsong SAY_MAIEV_SHADOWSONG_FINISHED'),
(23197, 6, 0, 'He\'s right. I feel nothing... I am... nothing.', 14, 0, 100, 0, 0, 11497, 21508, 0, 'Maiev Shadowsong SAY_MAIEV_SHADOWSONG_OUTRO'),
(23197, 7, 0, 'Farewell, champions.', 14, 0, 100, 0, 0, 11498, 21509, 0, 'Maiev Shadowsong SAY_MAIEV_SHADOWSONG_FAREWELL');

DELETE FROM `creature_text` WHERE `CreatureID`=29724;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(29724, 0, 0, 'Defragmenting swap file ...', 12, 0, 100, 1, 0, 0, 30375, 'Library Guardian'),
(29724, 0, 1, 'Running a level three diagnostic ...', 12, 0, 100, 1, 0, 0, 30374, 'Library Guardian'),
(29724, 0, 2, 'Attempting to restore lost data ...', 12, 0, 100, 1, 0, 0, 30377, 'Library Guardian'),
(29724, 0, 3, 'Implementing new security protocols ...', 12, 0, 100, 1, 0, 0, 30378, 'Library Guardian'),
(29724, 0, 4, 'Verifying encryption key ...', 12, 0, 100, 1, 0, 0, 30376, 'Library Guardian'),
(29724, 0, 5, 'Assessing database integrity ...', 12, 0, 100, 1, 0, 0, 30373, 'Library Guardian');

UPDATE `creature` SET `spawnDifficulties`= "1,2,8,23" WHERE `map`=1492;
UPDATE `creature` SET `spawnDifficulties`= "14,15,16" WHERE `map`=1136;

