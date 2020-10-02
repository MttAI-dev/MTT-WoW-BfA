DELETE FROM `creature_template` WHERE entry = 1687767;
insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) values
('1687767','0','0','0','0','0','Hypnos el Vendedor','','Weapon seller',NULL,NULL,'0','110','110','0','8','0','35','128','1','1.14286','1','0','0','0','0','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','1','1','1','1','1','0','0','0','0','0','1','0','0','','0');
UPDATE `creature_template` SET `HealthScalingExpansion` = '0' , `RequiredExpansion` = '8' , `npcflag` = '128' WHERE `entry` = '1687767';
replace into `creature_template_model` values (1687767,0,37719,1,1,0);

replace into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values('2103360742850','1687767','1220','0','0','0','0','0','0','-1','0','0','-835.288','4276.87','746.254','1.09581','300','0','0','9136','0','0','0','0','0','0','0','','0');

DELETE FROM `npc_vendor` WHERE entry = 1687767;
-- Classe WAR /vendeur d'arme Prodi (NPC AP)
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '0', '128910');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '1', '128908');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '2', '128289');

-- Classe DEMONISTE / NPC AP
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '3', '128942');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '4', '128943');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '5', '128941');

-- Classe CHAMAN / NPC AP
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '6', '128935');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '7', '128911');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '8', '128819');

-- Classe VOLEUR / NPC AP
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '9', '128870');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '10', '128872');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '11', '128476');

-- Classe PRETRE / NPC AP
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '12', '128868');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '13', '128825');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '14', '128827');

-- Classe PALADIN / NPC AP
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '15', '128823');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '16', '128866');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '17', '120978');

-- Classe MOINE / NPC AP
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '18', '128938');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '19', '128937');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '20', '128940');

-- Classe MAGE / NPC AP
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '21', '127857');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '22', '128820');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '23', '128862');

-- Classe HUNT / NPC AP
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '24', '128861');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '25', '128808');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '26', '128826');

-- Classe DRUIDE/ NPC AP
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '28', '128858');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '29', '128821');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '30', '128306');

-- Classe DH / NPC AP
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '31', '127829');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '32', '128832');

-- Classe DK / NPC AP
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '33', '128402');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '34', '128292');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('1687767', '35', '128403'); 

UPDATE `npc_vendor` SET `overridegoldcost`=0 where `entry`=1687767;


