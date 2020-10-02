UPDATE `creature` SET `PhaseId` = '180' WHERE `guid` = '210115279'; 
UPDATE `creature` SET `PhaseId` = '180' WHERE `guid` = '210115280'; 

REPLACE INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
('4755', '169', 'Worgen PHASE169 PARTE1'),
('4755', '170', 'Worgen PHASE170 PARTE1'),
('4755', '171', 'Worgen PHASE171 PARTE1'),
('4755', '172', 'Worgen PHASE172 PARTE1'),
('4755', '179', 'Worgen PHASE179 PARTE1'),
('4755', '187', 'Worgen PHASE187 PARTE1'),
('4755', '188', 'Worgen PHASE188 PARTE1'),
('4755', '190', 'Worgen PHASE190 PARTE1'),
('4714', '180', 'Worgen PHASE181 PARTE2'),
('4714', '181', 'Worgen PHASE181 PARTE2'),
('4714', '182', 'Worgen PHASE182 PARTE2'),
('4714', '183', 'Worgen PHASE183 PARTE2'),
('4714', '184', 'Worgen PHASE184 PARTE2'),
('4714', '186', 'Worgen PHASE186 PARTE2'),
('4714', '187', 'Worgen PHASE187 PARTE2'),
('4714', '188', 'Worgen PHASE188 PARTE2'),
('4714', '189', 'Worgen PHASE189 PARTE2'),
('4714', '191', 'Worgen PHASE191 PARTE2'),
('4714', '194', 'Worgen PHASE194 PARTE2');

-- Fase1 Areas Worgen
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`IN (169, 170, 171, 172, 179) AND `SourceEntry`IN (4755, 4756);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(26,169,4755,0,0,8,0,14078,0,0,1,0,0,"",""),
(26,170,4756,0,0,8,0,14091,0,0,0,0,0,"",""),
(26,170,4755,0,0,8,0,14159,0,0,1,0,0,"",""),
(26,171,4755,0,0,8,0,14159,0,0,1,0,0,"",""),
(26,179,4755,0,0,8,0,14221,0,0,0,0,0,"",""),
(26,172,4755,0,0,8,0,14294,0,0,0,0,0,"","");

-- Fase2 Areas Worgen
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`IN (181, 180) AND `SourceEntry`IN (4714);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(26,181,4714,0,0,8,0,14375,0,0,0,0,0,"",""),
(26,180,4714,4786,0,8,0,14222,0,0,1,0,0,"",""),
(26,180,4714,0,0,8,0,14375,0,0,1,0,0,"","");

UPDATE `creature_template` SET gossip_menu_id = 0,minlevel = 4,maxlevel = 4,faction = 2203,npcflag = 0,speed_walk = 1,speed_run = 1.28571,scale = 1,dmgschool = 0,baseattacktime = 2000,rangeattacktime = 0,unit_class = 2,unit_flags = 768,unit_flags2 = 2048,unit_flags3 = 0,dynamicflags = 0,trainer_type = 0,trainer_class = 0,trainer_race = 0,lootid = 0,pickpocketloot = 0,skinloot = 0,resistance1 = 0,resistance2 = 90,resistance3 = 0,resistance4 = 1,resistance5 = 0,resistance6 = 0,spell1 = 68219,spell2 = 0,spell3 = 0,spell4 = 0,spell5 = 0,spell6 = 0,spell7 = 0,spell8 = 0,VehicleId = 494,mingold = 0,maxgold = 0,MovementType = 0,InhabitType = 3,HoverHeight = 1,ManaModifierExtra = 1,ArmorModifier = 1,RegenHealth = 1,mechanic_immune_mask = 2147483647,flags_extra = 0 WHERE Entry = 35905;
UPDATE `gameobject` SET `PhaseId` = '183' WHERE `guid` = '51003260'; 

DELETE FROM `gameobject` WHERE `id` = 196473 AND guid = 20406565;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(20406565, 196473, 654, 4714, 4806, 0, 183, 0, -2156.35, 2371.38, 10.8817, 1.53765, 0, 0, -0.69529, -0.718729, 30, 255, 1, 0, '', 0);