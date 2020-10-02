/*spawn mas update creature templete and quest add*/

DELETE FROM `creature_template` WHERE `entry`=150997;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (150997, 0, 0, 0, 0, 0, 'Saqueador Brazohierro', NULL, '', NULL, NULL, 0, 120, 120, 0, 0, 0, 14, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 151663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8000, 9000, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 0);
DELETE FROM `creature_template_model` WHERE `CreatureID`=150997 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (150997, 0, 90785, 1, 1, 0);

DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=152576;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 152576, 0, 10.7217, 0, 1, 0, 1, 3, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=152577;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 152577, 0, 1, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154770;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154770, 0, 0.071943, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154771;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154771, 0, 0.0661875, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154772;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154772, 0, 0.0726624, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154773;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154773, 0, 0.0827344, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154774;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154774, 0, 0.0784178, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154775;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154775, 0, 0.0640292, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154776;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154776, 0, 0.061871, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154777;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154777, 0, 0.0625904, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154778;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154778, 0, 0.0834538, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154779;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154779, 0, 0.0697847, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154780;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154780, 0, 0.0647487, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154781;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154781, 0, 0.0762595, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154782;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154782, 0, 0.0805761, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154783;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154783, 0, 0.0992813, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154784;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154784, 0, 0.0791373, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154785;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154785, 0, 0.071943, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154786;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154786, 0, 0.0633098, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154787;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154787, 0, 0.0697847, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154788;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154788, 0, 0.0791373, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154789;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154789, 0, 0.0935258, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154790;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154790, 0, 0.0705041, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154791;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154791, 0, 0.0712235, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154792;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154792, 0, 0.066907, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154793;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154793, 0, 0.0633098, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154794;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154794, 0, 0.0741012, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154795;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154795, 0, 0.0690652, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154796;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154796, 0, 0.0676264, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154797;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154797, 0, 0.0755401, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154798;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154798, 0, 0.0690652, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154799;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154799, 0, 0.0755401, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154800;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154800, 0, 0.0589932, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154801;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154801, 0, 0.071943, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154802;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154802, 0, 0.0697847, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154803;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154803, 0, 0.0841733, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154804;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154804, 0, 0.0812955, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=154805;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 154805, 0, 0.0856121, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=158078;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 158078, 0, 0.0928064, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159158;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159158, 0, 0.0482018, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159161;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159161, 0, 0.0453241, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159162;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159162, 0, 0.0395686, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159163;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159163, 0, 0.0359715, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159164;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159164, 0, 0.0424463, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159166;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159166, 0, 0.0374103, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159167;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159167, 0, 0.0417269, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159168;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159168, 0, 0.0446046, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159171;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159171, 0, 0.0438852, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159172;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159172, 0, 0.0489212, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159173;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159173, 0, 0.0489212, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159174;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159174, 0, 0.0460435, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159184;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159184, 0, 0.0510795, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159185;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159185, 0, 0.0561155, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159186;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159186, 0, 0.0424463, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159187;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159187, 0, 0.0510795, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159188;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159188, 0, 0.0568349, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159189;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159189, 0, 0.0460435, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159228;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159228, 0, 0.0381298, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159229;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159229, 0, 0.0359715, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159230;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159230, 0, 0.0431658, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159473;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159473, 0, 0.0179857, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159474;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159474, 0, 0.0179857, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159475;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159475, 0, 0.0287772, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159493;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159493, 0, 0.0215829, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159496;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159496, 0, 0.02518, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159497;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159497, 0, 0.0237412, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159502;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159502, 0, 0.0208635, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159504;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159504, 0, 0.0230218, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159511;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159511, 0, 0.0208635, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159522;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159522, 0, 0.0194246, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159523;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159523, 0, 0.0179857, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159524;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159524, 0, 0.0230218, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159535;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159535, 0, 0.020144, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159537;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159537, 0, 0.0194246, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159539;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159539, 0, 0.0244606, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159564;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159564, 0, 0.0194246, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159566;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159566, 0, 0.0187052, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159568;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159568, 0, 0.0194246, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159571;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159571, 0, 0.0237412, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159584;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159584, 0, 0.0338132, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159585;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159585, 0, 0.0266189, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159587;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159587, 0, 0.0237412, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159589;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159589, 0, 0.0208635, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159590;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159590, 0, 0.0179857, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159593;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159593, 0, 0.0223023, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159602;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159602, 0, 0.0258995, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159605;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159605, 0, 0.020144, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159802;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159802, 0, 0.0194246, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159805;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159805, 0, 0.0223023, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159806;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159806, 0, 0.0237412, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159818;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159818, 0, 0.0215829, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=159820;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 159820, 0, 0.0194246, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=160924;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 160924, 0, 0.0726624, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=160925;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 160925, 0, 0.0834538, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=160926;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 160926, 0, 0.0741012, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=160927;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 160927, 0, 0.0712235, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=160928;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 160928, 0, 0.0748207, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=160929;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 160929, 0, 0.0733818, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=160930;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 160930, 0, 0.0661875, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=160931;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 160931, 0, 0.066907, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=160932;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 160932, 0, 0.0654681, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=160933;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 160933, 0, 0.0834538, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=160934;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 160934, 0, 0.082015, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=160935;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 160935, 0, 0.087051, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=160936;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 160936, 0, 0.0712235, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=160937;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 160937, 0, 0.0625904, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=160938;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 160938, 0, 0.0640292, 0, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=166846;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 166846, 0, 99.6043, 0, 1, 0, 2, 5, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=167745;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 167745, 0, 8.84035, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=169224;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 169224, 0, 0.0798567, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=169225;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 169225, 0, 0.0395686, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=169227;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 169227, 0, 0.0805761, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=169228;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 169228, 0, 0.02518, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=169229;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 169229, 0, 0.0877704, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=169230;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 169230, 0, 0.0848927, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=169231;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 169231, 0, 0.0388492, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=169232;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 169232, 0, 0.0654681, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=169233;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 169233, 0, 0.0374103, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=169235;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 169235, 0, 0.0359715, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=169236;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 169236, 0, 0.0223023, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=169237;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 169237, 0, 0.0748207, 1, 1, 0, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=171248;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 171248, 0, 5.89788, 1, 1, 0, 1, 2, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=150997 AND `Item`=172954;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (150997, 172954, 0, 0.0791373, 1, 1, 0, 1, 6, '');

DELETE FROM `creature_template` WHERE `entry`=150716;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (150716, 0, 0, 0, 0, 0, 'Stolen Royal Vendorbot', '', 'Rustbolt Quartermaster', NULL, NULL, 0, 120, 120, 7, 0, 0, 35, 128, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
DELETE FROM `creature_model_info` WHERE `DisplayID`=150716;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (150716, 1, 1, 0, 0);
DELETE FROM `npc_vendor` WHERE `entry` = '150716';
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`, `PlayerConditionID`) VALUES
('150716', '1', '167672', '0', '0', '0', '1', '0'),
('150716', '2', '167693', '0', '0', '0', '1', '0'),
('150716', '3', '168369', '0', '0', '0', '1', '0'),
('150716', '4', '168400', '0', '0', '0', '1', '0'),
('150716', '5', '168493', '0', '0', '0', '1', '0'),
('150716', '6', '168533', '0', '0', '0', '1', '0'),
('150716', '7', '168534', '0', '0', '0', '1', '0'),
('150716', '8', '168535', '0', '0', '0', '1', '0'),
('150716', '9', '168566', '0', '0', '0', '1', '0'),
('150716', '10', '168568', '0', '0', '0', '1', '0'),
('150716', '11', '168619', '0', '0', '0', '1', '0'),
('150716', '12', '168660', '0', '0', '0', '1', '0'),
('150716', '13', '168829', '0', '0', '0', '1', '0'),
('150716', '14', '168842', '0', '0', '0', '1', '0'),
('150716', '15', '168858', '0', '0', '0', '1', '0'),
('150716', '16', '168859', '0', '0', '0', '1', '0'),
('150716', '17', '168860', '0', '0', '0', '1', '0'),
('150716', '18', '168932', '0', '0', '0', '1', '0'),
('150716', '19', '168933', '0', '0', '0', '1', '0'),
('150716', '20', '168934', '0', '0', '0', '1', '0'),
('150716', '21', '169108', '0', '0', '0', '1', '0'),
('150716', '22', '169112', '0', '0', '0', '1', '0'),
('150716', '23', '169134', '0', '0', '0', '1', '0'),
('150716', '24', '169380', '0', '0', '0', '1', '0'),
('150716', '25', '169547', '0', '0', '0', '1', '0');

DELETE FROM `creature_template` WHERE `entry`=151828;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (151828, 0, 0, 0, 0, 0, 'Defensor de pernoóxido', '', '', NULL, NULL, 0, 121, 121, 7, 0, 0, 35, 0, 1, 1.14286, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
DELETE FROM `creature_template_model` WHERE `CreatureID`=151828 AND `Idx`=0;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (151828, 0, 91285, 1, 1, 33528);
DELETE FROM `creature_model_info` WHERE `DisplayID`=151828;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (151828, 1, 1, 0, 0);

DELETE FROM `creature_template` WHERE `entry`=152499;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (152499, 0, 0, 0, 0, 0, 'Moxie Lockspinner', '', NULL, NULL, NULL, 0, 120, 120, 7, 7, 0, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152499' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '152499';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('152499', '55575');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152499' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '152499';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('152499', '55575');

DELETE FROM `creature_template` WHERE `entry`=152575;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (152575, 0, 0, 0, 0, 0, 'Steelsage Gao', '', 'Madam Goya Operative', NULL, NULL, 0, 120, 120, 7, 0, 0, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
DELETE FROM `creature_template_addon` WHERE `entry`=152575;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (152575, 0, 0, 1, 0, 0, 0, 0, 0, 0, NULL);
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152575' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '152575';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('152575', '55815'),
('152575', '56172'),
('152575', '56173'),
('152575', '56174');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='152575' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '152575';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('152575', '55815'),
('152575', '56172'),
('152575', '56173'),
('152575', '56174'),
('152575', '56746');

DELETE FROM `creature_template` WHERE `entry`=149816;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (149816, 0, 0, 0, 0, 0, 'Prince Erazmin', '', NULL, NULL, NULL, 0, 120, 120, 7, 0, 0, 35, 0, 1, 1.14286, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 10, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='149816' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '149816';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('149816', '55609'),
('149816', '58214');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='149816' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '149816';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('149816', '55348'),
('149816', '55609'),
('149816', '55736'),
('149816', '57487');

DELETE FROM `creature_template` WHERE `entry`=150282;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (150282, 0, 0, 0, 0, 0, 'Tinkmaster Overspark', '', 'Chief Architect of Gnomish Engineering', NULL, NULL, 0, 120, 120, 7, 0, 0, 11, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 5, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='150282' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '150282';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('150282', '57327');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='150282' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '150282';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('150282', '57327');

DELETE FROM `creature_template` WHERE `entry`=150567;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (150567, 0, 0, 0, 0, 0, 'Gazlowe', '', NULL, NULL, NULL, 0, 120, 120, 7, 0, 0, 85, 0, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 10, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='150567' AND `npcflag`='0';
DELETE FROM `creature_queststarter` WHERE `id` = '150567';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('150567', '57326');

UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='150567' AND `npcflag`='0';
DELETE FROM `creature_questender` WHERE `id` = '150567';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('150567', '57326');

DELETE FROM `creature_template` WHERE `entry`=150359;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (150359, 0, 0, 0, 0, 0, 'Pascal-K1N6', '', 'Junkyard Tinkering', NULL, 'trainer', 0, 120, 120, 7, 0, 0, 35, 16, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 5, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', 33528);
DELETE FROM `creature_questender` WHERE `id` = '150359';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('150359', '55030'),
('150359', '55056'),
('150359', '55057'),
('150359', '55058'),
('150359', '55059'),
('150359', '55060'),
('150359', '55061'),
('150359', '55062'),
('150359', '55063'),
('150359', '55064'),
('150359', '55065'),
('150359', '55066'),
('150359', '55067'),
('150359', '55068'),
('150359', '55069'),
('150359', '55070'),
('150359', '55071'),
('150359', '55072'),
('150359', '55073'),
('150359', '55074'),
('150359', '55075'),
('150359', '55076'),
('150359', '55077'),
('150359', '55078'),
('150359', '55079'),
('150359', '55080'),
('150359', '55081'),
('150359', '55082'),
('150359', '55083'),
('150359', '55084'),
('150359', '56086'),
('150359', '56087'),
('150359', '56145'),
('150359', '56165');