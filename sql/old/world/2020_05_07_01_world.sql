DELETE FROM smart_scripts WHERE entryorguid=54587;

DELETE FROM `gameobject` WHERE `id` IN (291080, 290913);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (280200409, 291080, 1955, 9778, 9778, '12', 0, 1, 0, -1, -2056.85, 2512.63, 9.51871, 0.133902, 0, 0, 0.0669012, 0.99776, 7200, 255, 1, 0, '', 28153);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (280200406, 291080, 1955, 9778, 9778, '12', 0, 1, 0, -1, -2049.97, 2521.5, 8.5943, 5.10086, 0, 0, -0.557326, 0.830293, 7200, 255, 1, 0, '', 28153);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (280200405, 291080, 1955, 9778, 9778, '12', 0, 1, 0, -1, -1996.65, 2546.92, 11.603, 3.48478, 0, 0, -0.985314, 0.17075, 7200, 255, 1, 0, '', 28153);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (280200404, 291080, 1955, 9778, 9778, '12', 0, 1, 0, -1, -1975.68, 2567.22, 17.061, 0, 0, 0, 0, 1, 7200, 255, 1, 0, '', 28153);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (280200493, 290913, 1882, 9440, 9440, '38', 0, 1, 0, -1, 14979.7, 14851.6, 7.28653, 4.90101, 0.0681891, 0.05657, -0.635978, 0.766604, 7200, 255, 1, 0, '', 28153);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (280200491, 290913, 1882, 9440, 9440, '38', 0, 1, 0, -1, 14979.7, 14850.5, 7.16153, 1.00723, -0.00262213, -0.0665159, 0.479801, 0.874848, 7200, 255, 1, 0, '', 28153);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (280200470, 290913, 1882, 9440, 9440, '38', 0, 1, 0, -1, 15010.9, 14823.4, 11.7489, 0.37897, 0.0236344, -0.0348997, 0.188819, 0.981107, 7200, 255, 1, 0, '', 28153);

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (291080, 10, 49910, 'Pouch of Azerite', 'lootall', 'Opening', '', 1, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 273459, 0, 0, 0, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'go_pouch_of_azerite', 0);
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (290913, 10, 49910, 'Pouch of Azerite', 'lootall', 'Opening', '', 1, 2908, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263369, 0, 0, 0, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'go_pouch_of_azerite', 0);


DELETE FROM `gameobject` WHERE `guid`=280200462;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (280200462, 289437, 1882, 9440, 9440, '38', 0, 1, 0, -1, 15188, 14799.3, 16.6848, 1.07048, 0.0957694, -0.0574741, 0.511361, 0.852077, 7200, 255, 0, 0, '', 28153);
DELETE FROM `gameobject` WHERE `guid`=280200461;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (280200461, 289437, 1882, 9440, 9440, '38', 0, 1, 0, -1, 15204.5, 14792, 18.8442, 0.577673, 0.076787, -0.143626, 0.286099, 0.944258, 7200, 255, 0, 0, '', 28153);
DELETE FROM `gameobject` WHERE `guid`=280200454;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (280200454, 289437, 1882, 9440, 9440, '38', 0, 1, 0, -1, 15207.6, 14804.5, 22.3441, 4.6076, 0.144579, -0.0116749, -0.74237, 0.654101, 7200, 255, 0, 0, '', 28153);
DELETE FROM `gameobject` WHERE `guid`=280200397;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (280200397, 291056, 1955, 9778, 9778, '12', 0, 1, 0, -1, -2002.7, 2156.05, 3.04167, 5.78787, 0.0185046, -0.00357533, -0.24511, 0.969312, 7200, 255, 1, 0, '', 28153);
DELETE FROM `gameobject` WHERE `guid`=280200396;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (280200396, 291055, 1955, 9778, 9778, '12', 0, 1, 0, -1, -1954.34, 2189.63, 3.48551, 1.21246, 0, 0, 0.569775, 0.821801, 7200, 255, 1, 0, '', 28153);
DELETE FROM `gameobject` WHERE `guid`=280200394;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (280200394, 291056, 1955, 9778, 9778, '12', 0, 1, 0, -1, -1922.97, 2171.32, 2.53125, 4.09513, 0, 0, -0.888482, 0.458911, 7200, 255, 1, 0, '', 28153);


DELETE FROM `gameobject_template` WHERE `entry`=289437;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (289437, 10, 47692, 'Azerite Crystal', 'mine', 'Mining', '', 1, 2910, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263369, 0, 0, 1, 78976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2970, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 'go_azerite_crystal', 0);
DELETE FROM `gameobject_template` WHERE `entry`=291056;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (291056, 10, 49201, 'Azerite Crystal', 'mine', 'Mining', '', 1, 2280, 0, 0, 0, 0, 1, 0, 0, 0, 0, 273023, 0, 0, 0, 78976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 'go_azerite_crystal', 0);
DELETE FROM `gameobject_template` WHERE `entry`=291055;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (291055, 10, 49202, 'Azerite Crystal', 'mine', 'Mining', '', 1, 2280, 0, 0, 0, 0, 1, 0, 0, 0, 0, 273023, 0, 0, 0, 78976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 'go_azerite_crystal', 0);

REPLACE INTO `instance_template` (`map`, `parent`, `script`, `allowMount`, `insideResurrection`) VALUES 
(1955,  0, 'scenario_uncharted_island_tutorial', 1,	0);

DELETE FROM `creature_template` WHERE `entry`=143967;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (143967, 0, 0, 0, 0, 0, 'Expedition Map', NULL, NULL, NULL, 'missions', 23352, 120, 120, 7, 0, 0, 190, 140737488355329, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 1, 768, 71337984, 0, 0, 0, 0, 0, 0, 7, 1611792400, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 'npc_expedition_map', 28153);

UPDATE `creature_template` SET `ScriptName`='boss_helya_tov' WHERE `entry`=114537;
UPDATE `creature_template` SET `ScriptName`='boss_garm' WHERE `entry`=114323;

REPLACE INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(205272 ,'spell_ursoc_periodic_energize'),
(199237 ,'spell_ursoc_trampling_slam'),
(198109 ,'spell_ursoc_barreling_impact'),
(198099 ,'spell_ursoc_momentum_filter'),
(76717 ,'spell_defiled_earth_rager_meteor'),
(227967 ,'spell_helya_bilewater_breath'),
(228062 ,'spell_helya_orb_of_corrosion_dmg'),
(227938 ,'spell_helya_orb_of_corruption_dmg'),
(228054 ,'spell_helya_taint_of_the_sea'),
(227570 ,'spell_guarm_guardians_breath'),
(227566 ,'spell_guarm_guardians_breath'),
(227539 ,'spell_guarm_guardians_breath'),
(229254 ,'spell_odyn_arcing_storm'),
(227629 ,'spell_odyn_unerring_blast'),
(227503 ,'spell_odyn_draw_power'),
(237820, 'spell_vantus_rune_tomb_of_sargeras'),
(236717 ,'spell_sistersmoon_lunar_barrage'),
(234664, 'spell_sistersmoon_side_moon'),
(234668, 'spell_sistersmoon_side_moon'),
(233263, 'spell_sistersmoon_embrace_eclipse'),
(233264, 'spell_sistersmoon_embrace_eclipse'),
(239378, 'spell_sistersmoon_glaive_storm_filter'),
(239382, 'spell_sistersmoon_glaive_storm_filter'),
(239385, 'spell_sistersmoon_glaive_storm_filter'),
(236306, 'spell_sistersmoon_incorporeal_shot_filter'),
(234998, 'spell_sistersmoon_astral_purge');



UPDATE `creature_template` SET `ScriptName`='boss_sisters_of_the_moon' WHERE  `entry`=118182;
UPDATE `creature_template` SET `ScriptName`='npc_sister_kasparian' WHERE  `entry`=118523;
UPDATE `creature_template` SET `ScriptName`='npc_sister_lunaspyre' WHERE  `entry`=118518;
UPDATE `creature_template` SET `ScriptName`='npc_sistersmoon_moontalon' WHERE  `entry`=119205;
UPDATE `creature_template` SET `ScriptName`='npc_sistersmoon_glaive_target' WHERE  `entry`=119054;
UPDATE `creature_template` SET `ScriptName`='npc_sistersmoon_twilight_soul' WHERE  `entry`=121498;
UPDATE `creature_template` SET `ScriptName`='npc_valarjar_runebearer' WHERE  `entry`=114996;
UPDATE `creature_template` SET `ScriptName`='boss_odyn_tov' WHERE  `entry`=114263;
UPDATE `gameobject_template` SET `ScriptName`='go_tos_tele_to_kiljedan' WHERE  `entry`=269783;
UPDATE `creature_template` SET `ScriptName`='npc_tos_breach' WHERE  `entry`=121605;


REPLACE INTO `instance_template` (`map`, `parent`, `script`, `allowMount`, `insideResurrection`) VALUES 
(1648, 1220, 'instance_trial_of_valor', 1, 0); 
