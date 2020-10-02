-- quest 49930 questender fix
DELETE FROM `creature_questender` WHERE `id`=126065 AND `quest`=49930;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (126065, 49930);

-- npc 126065 Silvanas
DELETE FROM `creature_template` WHERE `entry`=126065;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (126065, 0, 0, 0, 0, 0, 'Lady Sylvanas Windrunner', '', 'Warchief', NULL, NULL, 21958, 0, 0, -1, 0, 0, 35, 3, 1, 1.14286, 1, 1, 0, 0, 0, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4, 16384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1000, 1, 20, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 28153);

-- npc 126066 Eitrigg
DELETE FROM `creature_template` WHERE `entry`=126066;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (126066, 0, 0, 0, 0, 0, 'Eitrigg', '', NULL, NULL, NULL, 22193, 0, 0, -1, 0, 0, 35, 3, 1, 1.14286, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 30, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 28153);

-- npc 126066 spawn blizzlike
DELETE FROM `creature` WHERE `guid`=300000064;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (300000064, 126066, 1, 1637, 5332, '0', 0, 0, 0, -1, 0, 0, 1552.26, -4164.76, 58.0082, 3.05395, 300, 0, 0, 1296904, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `gameobject_questitem` WHERE (`GameObjectEntry`=290775 AND `Idx`=0) ;
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(290775, 0, 152845, 27377); -- 290775

DELETE FROM `gameobject_questitem` WHERE (`GameObjectEntry`=296159 AND `Idx`=0);
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(296159, 0, 163099, 27377); -- 296159

DELETE FROM `scene_template` WHERE (`SceneId`=1994 AND `ScriptPackageID`=2188) OR (`SceneId`=1992 AND `ScriptPackageID`=2187);
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`) VALUES
(1994, 25, 2188),
(1992, 21, 2187);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (52146 /*52146*/, 52042 /*52042*/, 52041 /*52041*/, 52040 /*52040*/, 52039 /*52039*/, 52038 /*52038*/, 52034 /*52034*/, 52035 /*52035*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(52146, 1, 0, 0, 0, 0, 0, 0, 0, 'Guzbert\'s... what? No!', 27377), -- 52146
(52042, 11, 0, 0, 0, 0, 0, 0, 0, 'Ha ha! That should set the Reliquary back a few months.', 27377), -- 52042
(52041, 1, 0, 0, 0, 0, 0, 0, 0, 'Arlethal is already dead?\n\nThat\'s good, I suppose... though it does take some of the fun out of my plan.', 27377), -- 52041
(52040, 1, 0, 0, 0, 0, 0, 0, 0, 'Won\'t Halford be happy to find out that we\'ve done his work for him?', 27377), -- 52040
(52039, 669, 0, 0, 0, 0, 0, 0, 0, 'It\'s done? Good. Let\'s get a move on.', 27377), -- 52039
(52038, 0, 0, 0, 0, 0, 0, 0, 0, '<Shandris licks her lips in anticipation.>', 27377), -- 52038
(52034, 1, 0, 0, 0, 0, 0, 0, 0, 'I hope you left a few alive.\n\nThey need to learn to fear us.', 27377), -- 52034
(52035, 1, 0, 0, 0, 0, 0, 0, 0, 'Excellent reconnaissance. Well-done.\n\n<Halford begins distributing water and rations to the others in your group.>', 27377); -- 52035


DELETE FROM `quest_details` WHERE `ID` IN (52146 /*52146*/, 52042 /*52042*/, 52041 /*52041*/, 52040 /*52040*/, 52039 /*52039*/, 52038 /*52038*/, 51142 /*51142*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(52146, 1, 0, 0, 0, 0, 0, 0, 0, 27377), -- 52146
(52042, 1, 0, 0, 0, 0, 0, 0, 0, 27377), -- 52042
(52041, 1, 0, 0, 0, 0, 0, 0, 0, 27377), -- 52041
(52040, 1, 0, 0, 0, 0, 0, 0, 0, 27377), -- 52040
(52039, 669, 0, 0, 0, 0, 0, 0, 0, 27377), -- 52039
(52038, 669, 669, 397, 0, 0, 0, 0, 0, 27377), -- 52038
(51142, 1, 0, 0, 0, 0, 0, 0, 0, 27377); -- 51142


DELETE FROM `gossip_menu` WHERE (`MenuId`=22748 AND `TextId`=35202) OR (`MenuId`=22811 AND `TextId`=35522) OR (`MenuId`=22751 AND `TextId`=35206);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(22748, 35202, 27377), -- 139705
(22811, 35522, 27377), -- 135388
(22751, 35206, 27377); -- 139719

DELETE FROM `gossip_menu_option` WHERE (`MenuId`=22811 AND `OptionIndex`=1) OR (`MenuId`=22811 AND `OptionIndex`=0)  OR (`MenuId`=22508 AND `OptionIndex`=7);
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `VerifiedBuild`) VALUES
(22811, 1, 2, 'Show me where I can fly.', 0, 27377),
(22811, 0, 0, 'Push the big red button when you tell me to. Got it.', 0, 27377),
(22508, 7, 0, 'Set sail for Vol\'dun.', 0, 27377);

UPDATE `quest_offer_reward` SET `RewardText`='A thief has come to steal from thieves?' WHERE  `ID`=51142;
UPDATE `quest_offer_reward` SET `RewardText`='Haha! Well done, wealthy stranger. When ya out and about in dese lands, keep ya eyes open. Ya never know when one of de children might be pointin\\\' ya ta a useful place.' WHERE  `ID`=51145;
UPDATE `creature_template` SET `gossip_menu_id`='22514' WHERE  `entry`=136559;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=136559;


DELETE FROM `npc_vendor` WHERE (`entry`=144350 AND `item`=163026 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=144350 AND `item`=162377 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=144350 AND `item`=162376 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=144350 AND `item`=162373 AND `ExtendedCost`=6418 AND `type`=1) OR (`entry`=144350 AND `item`=162371 AND `ExtendedCost`=6418 AND `type`=1) OR (`entry`=144350 AND `item`=162358 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=144350 AND `item`=162352 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=144350 AND `item`=162301 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=144350 AND `item`=162298 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=144350 AND `item`=162293 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=144350 AND `item`=162292 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=144350 AND `item`=162289 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=144350 AND `item`=162288 AND `ExtendedCost`=6418 AND `type`=1) OR (`entry`=144350 AND `item`=162287 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=144350 AND `item`=162136 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=144350 AND `item`=162137 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=144350 AND `item`=160543 AND `ExtendedCost`=6306 AND `type`=1) OR (`entry`=144350 AND `item`=162023 AND `ExtendedCost`=6315 AND `type`=1) OR (`entry`=144350 AND `item`=163513 AND `ExtendedCost`=6424 AND `type`=1) OR (`entry`=144350 AND `item`=161549 AND `ExtendedCost`=6310 AND `type`=1) OR (`entry`=144350 AND `item`=161534 AND `ExtendedCost`=6310 AND `type`=1) OR (`entry`=144350 AND `item`=161519 AND `ExtendedCost`=6310 AND `type`=1) OR (`entry`=144350 AND `item`=161503 AND `ExtendedCost`=6310 AND `type`=1) OR (`entry`=144350 AND `item`=161544 AND `ExtendedCost`=6309 AND `type`=1) OR (`entry`=144350 AND `item`=161529 AND `ExtendedCost`=6309 AND `type`=1) OR (`entry`=144350 AND `item`=161514 AND `ExtendedCost`=6309 AND `type`=1) OR (`entry`=144350 AND `item`=161494 AND `ExtendedCost`=6309 AND `type`=1) OR (`entry`=144350 AND `item`=163215 AND `ExtendedCost`=6423 AND `type`=1) OR (`entry`=144350 AND `item`=160538 AND `ExtendedCost`=6305 AND `type`=1) OR (`entry`=126717 AND `item`=64670 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=126717 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=126717 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=126717 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=126717 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=126717 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=126717 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=126717 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=126717 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=126717 AND `item`=138293 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=126717 AND `item`=90146 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=126717 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=126717 AND `item`=38682 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=126717 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=126717 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(144350, 30, 163026, 0, 6419, 1, 0, 0, 27377), -- 163026
(144350, 29, 162377, 0, 6419, 1, 0, 0, 27377), -- 162377
(144350, 28, 162376, 0, 6419, 1, 0, 0, 27377), -- 162376
(144350, 27, 162373, 0, 6418, 1, 0, 0, 27377), -- 162373
(144350, 26, 162371, 0, 6418, 1, 0, 0, 27377), -- 162371
(144350, 25, 162358, 0, 6419, 1, 0, 0, 27377), -- 162358
(144350, 24, 162352, 0, 6419, 1, 0, 0, 27377), -- 162352
(144350, 23, 162301, 0, 6419, 1, 0, 0, 27377), -- 162301
(144350, 22, 162298, 0, 6419, 1, 0, 0, 27377), -- 162298
(144350, 21, 162293, 0, 6419, 1, 0, 0, 27377), -- 162293
(144350, 20, 162292, 0, 6419, 1, 0, 0, 27377), -- 162292
(144350, 19, 162289, 0, 6419, 1, 0, 0, 27377), -- 162289
(144350, 18, 162288, 0, 6418, 1, 0, 0, 27377), -- 162288
(144350, 17, 162287, 0, 6419, 1, 0, 0, 27377), -- 162287
(144350, 16, 162136, 0, 6419, 1, 0, 0, 27377), -- 162136
(144350, 15, 162137, 0, 6419, 1, 0, 0, 27377), -- 162137
(144350, 14, 160543, 0, 6306, 1, 0, 0, 27377), -- 160543
(144350, 13, 162023, 0, 6315, 1, 0, 0, 27377), -- 162023
(144350, 12, 163513, 0, 6424, 1, 0, 0, 27377), -- 163513
(144350, 11, 161549, 0, 6310, 1, 0, 0, 27377), -- 161549
(144350, 10, 161534, 0, 6310, 1, 0, 0, 27377), -- 161534
(144350, 9, 161519, 0, 6310, 1, 0, 0, 27377), -- 161519
(144350, 8, 161503, 0, 6310, 1, 0, 0, 27377), -- 161503
(144350, 7, 161544, 0, 6309, 1, 0, 0, 27377), -- 161544
(144350, 6, 161529, 0, 6309, 1, 0, 0, 27377), -- 161529
(144350, 5, 161514, 0, 6309, 1, 0, 0, 27377), -- 161514
(144350, 4, 161494, 0, 6309, 1, 0, 0, 27377), -- 161494
(144350, 3, 163215, 0, 6423, 1, 0, 0, 27377), -- 163215
(144350, 2, 160538, 0, 6305, 1, 0, 0, 27377), -- 160538
(126717, 15, 64670, 0, 0, 1, 0, 0, 27377), -- 64670
(126717, 14, 39505, 0, 0, 1, 0, 0, 27377), -- 39505
(126717, 13, 20815, 0, 0, 1, 0, 0, 27377), -- 20815
(126717, 12, 5956, 0, 0, 1, 0, 0, 27377), -- 5956
(126717, 11, 6217, 0, 0, 1, 0, 0, 27377), -- 6217
(126717, 10, 6256, 0, 0, 1, 0, 0, 27377), -- 6256
(126717, 9, 85663, 0, 0, 1, 0, 0, 27377), -- 85663
(126717, 8, 7005, 0, 0, 1, 0, 0, 27377), -- 7005
(126717, 7, 2901, 0, 0, 1, 0, 0, 27377), -- 2901
(126717, 6, 138293, 0, 0, 1, 0, 0, 27377), -- 138293
(126717, 5, 90146, 0, 0, 1, 0, 0, 27377), -- 90146
(126717, 4, 4470, 0, 0, 1, 0, 0, 27377), -- 4470
(126717, 3, 38682, 0, 0, 1, 0, 0, 27377), -- 38682
(126717, 2, 3371, 0, 0, 1, 0, 0, 27377), -- 3371
(126717, 1, 39354, 0, 0, 1, 0, 0, 27377); -- 39354

DELETE FROM `conversation_actor_template` WHERE `Id` IN (95309, 99456, 99615, 96686);
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(95309, 95309, 66644, 27377),
(99456, 99456, 64011, 27377),
(99615, 99615, 66283, 27377),
(96686, 96686, 28213, 27377);

DELETE FROM `scenario_poi` WHERE (`CriteriaTreeID`=43848 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=43846 AND `BlobIndex`=1 AND `Idx1`=1) OR (`CriteriaTreeID`=43846 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=43844 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=43842 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=43804 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=43802 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=45967 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=45965 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=45963 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=45961 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=45957 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `scenario_poi` (`CriteriaTreeID`, `BlobIndex`, `Idx1`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `VerifiedBuild`) VALUES
(43848, 0, 0, 1475, 671, 0, 0, 0, 0, 27377),
(43846, 1, 1, 1475, 671, 0, 2, 0, 0, 27377),
(43846, 0, 0, 1475, 671, 0, 2, 0, 0, 27377),
(43844, 0, 0, 1475, 671, 0, 0, 0, 0, 27377),
(43842, 0, 0, 1475, 671, 0, 0, 0, 0, 27377),
(43804, 0, 0, 1475, 671, 0, 2, 0, 0, 27377),
(43802, 0, 0, 1475, 671, 0, 0, 0, 0, 27377),
(45967, 0, 0, 1480, 700, 0, 2, 0, 0, 27377),
(45965, 0, 0, 1480, 700, 0, 2, 0, 0, 27377),
(45963, 0, 0, 1480, 700, 0, 2, 0, 0, 27377),
(45961, 0, 0, 1480, 700, 0, 2, 0, 0, 27377),
(45957, 0, 0, 1480, 700, 0, 2, 0, 0, 27377);


DELETE FROM `scenario_poi_points` WHERE (`CriteriaTreeID`=43848 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=43846 AND `Idx1`=1 AND `Idx2`=0) OR (`CriteriaTreeID`=43846 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=43846 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=43846 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=43846 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=43846 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=43846 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=43846 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=43846 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=43846 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=43846 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=43846 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=43846 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=43844 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=43844 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=43844 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=43842 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=43804 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=43802 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=45967 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=45967 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=45967 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=45967 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=45967 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=45967 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=45967 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=45967 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=45967 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=45967 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=45967 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=45967 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=45965 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=45963 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=45963 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=45963 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=45963 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=45963 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=45963 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=45963 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=45963 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=45963 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=45963 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=45963 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=45963 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=45961 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=45961 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=45961 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=45961 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=45961 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=45961 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=45961 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=45961 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=45961 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=45961 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=45961 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=45961 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=45957 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=45957 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=45957 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=45957 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=45957 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=45957 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=45957 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=45957 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=45957 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=45957 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=45957 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=45957 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `scenario_poi_points` (`CriteriaTreeID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(43848, 0, 0, 4528, 2688, 27377),
(43846, 1, 0, 4729, 2930, 27377),
(43846, 0, 11, 4523, 2657, 27377),
(43846, 0, 10, 4506, 2668, 27377),
(43846, 0, 9, 4504, 2683, 27377),
(43846, 0, 8, 4509, 2701, 27377),
(43846, 0, 7, 4530, 2704, 27377),
(43846, 0, 6, 4538, 2704, 27377),
(43846, 0, 5, 4555, 2704, 27377),
(43846, 0, 4, 4569, 2704, 27377),
(43846, 0, 3, 4580, 2695, 27377),
(43846, 0, 2, 4582, 2671, 27377),
(43846, 0, 1, 4578, 2661, 27377),
(43846, 0, 0, 4563, 2653, 27377),
(43844, 0, 2, 4722, 2942, 27377),
(43844, 0, 1, 4746, 2940, 27377),
(43844, 0, 0, 4729, 2932, 27377),
(43842, 0, 0, 4709, 3012, 27377),
(43804, 0, 0, 4821, 2999, 27377),
(43802, 0, 0, 4623, 2854, 27377),
(45967, 0, 11, 4623, 2752, 27377),
(45967, 0, 10, 4614, 2758, 27377),
(45967, 0, 9, 4613, 2771, 27377),
(45967, 0, 8, 4622, 2784, 27377),
(45967, 0, 7, 4655, 2793, 27377),
(45967, 0, 6, 4668, 2788, 27377),
(45967, 0, 5, 4677, 2775, 27377),
(45967, 0, 4, 4676, 2759, 27377),
(45967, 0, 3, 4664, 2750, 27377),
(45967, 0, 2, 4650, 2750, 27377),
(45967, 0, 1, 4641, 2750, 27377),
(45967, 0, 0, 4632, 2750, 27377),
(45965, 0, 0, 4637, 2769, 27377),
(45963, 0, 11, 4471, 2755, 27377),
(45963, 0, 10, 4471, 2768, 27377),
(45963, 0, 9, 4471, 2778, 27377),
(45963, 0, 8, 4471, 2786, 27377),
(45963, 0, 7, 4524, 2807, 27377),
(45963, 0, 6, 4536, 2807, 27377),
(45963, 0, 5, 4550, 2804, 27377),
(45963, 0, 4, 4568, 2783, 27377),
(45963, 0, 3, 4567, 2758, 27377),
(45963, 0, 2, 4566, 2750, 27377),
(45963, 0, 1, 4533, 2742, 27377),
(45963, 0, 0, 4517, 2742, 27377),
(45961, 0, 11, 4304, 2468, 27377),
(45961, 0, 10, 4303, 2500, 27377),
(45961, 0, 9, 4323, 2525, 27377),
(45961, 0, 8, 4333, 2677, 27377),
(45961, 0, 7, 4398, 2715, 27377),
(45961, 0, 6, 4454, 2791, 27377),
(45961, 0, 5, 4477, 2787, 27377),
(45961, 0, 4, 4477, 2756, 27377),
(45961, 0, 3, 4463, 2693, 27377),
(45961, 0, 2, 4401, 2488, 27377),
(45961, 0, 1, 4379, 2449, 27377),
(45961, 0, 0, 4329, 2448, 27377),
(45957, 0, 11, 4271, 2466, 27377),
(45957, 0, 10, 4268, 2483, 27377),
(45957, 0, 9, 4268, 2495, 27377),
(45957, 0, 8, 4278, 2505, 27377),
(45957, 0, 7, 4290, 2506, 27377),
(45957, 0, 6, 4303, 2506, 27377),
(45957, 0, 5, 4311, 2504, 27377),
(45957, 0, 4, 4311, 2492, 27377),
(45957, 0, 3, 4310, 2473, 27377),
(45957, 0, 2, 4308, 2461, 27377),
(45957, 0, 1, 4296, 2457, 27377),
(45957, 0, 0, 4286, 2457, 27377);

DELETE FROM `quest_offer_reward` WHERE `ID`=50605;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(50605, 0, 0, 0, 0, 0, 0, 0, 0, 'For the Alliance!', 27377); -- 50605


DELETE FROM `quest_poi` WHERE (`QuestID`=51108 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=51108 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(51108, 0, 1, 32, 0, 0, 1642, 864, 0, 2, 0, 0, 0, 0, 27377), -- 51108
(51108, 0, 0, 0, 334765, 130443, 1642, 864, 0, 0, 0, 0, 1418767, 0, 27377); -- 51108

DELETE FROM `quest_poi_points` WHERE (`QuestID`=51108 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=51108 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(51108, 1, 0, 1901, 3044, 27377), -- 51108
(51108, 0, 0, 1898, 3038, 27377); -- 51108

UPDATE `creature_template` SET `gossip_menu_id`='18742' WHERE  `entry`=91473;
UPDATE `creature_template` SET `gossip_menu_id`='19343' WHERE  `entry`=96689;
UPDATE `creature_template` SET `gossip_menu_id`='20000' WHERE  `entry`=106377;
UPDATE `creature_template` SET `gossip_menu_id`='18983' WHERE  `entry`=99635;
UPDATE `creature_template` SET `gossip_menu_id`='17423' WHERE  `entry`=89048;
UPDATE `creature_template` SET `gossip_menu_id`='19917' WHERE  `entry`=88859;
UPDATE `creature_template` SET `gossip_menu_id`='19926' WHERE  `entry`=109377;
UPDATE `quest_objectives` SET `Description`='Sunken Cache reclaimed' WHERE  `ID`=288710;

