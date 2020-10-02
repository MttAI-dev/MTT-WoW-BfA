/*goblins_lost_isles*/
/* saludito al bro andy alias mistix XP) */

DELETE FROM creature WHERE guid IN (21016381);
UPDATE  creature SET phaseid = 169 WHERE guid = 21016380;
UPDATE creature SET phaseid = 169  WHERE id = 37602;
UPDATE `creature` SET `phaseid` = 169  WHERE `guid` = 210219202;
/* delete creatures */
DELETE FROM creature WHERE guid IN (21015365);
DELETE FROM creature WHERE guid IN (21015382);
DELETE FROM creature WHERE guid IN (21015374);

/* spawn npc */
delete from creature where guid in (300000058);
insert into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values
("300000058", "34874", "648", "4737", "4765", "0", "0", "169", "0", "-1", "0", "0", "-8419.66", "1340.84", "102.491", "4.30904", "300", "0", "0", "180", "0", "0", "0", "0", "0", "0", "0", "", "15595");

/*phases and more */
UPDATE `creature` SET `phaseid` = 382  WHERE `guid` = 21015417;
UPDATE `creature` SET `phaseid` = 180  WHERE `guid` = 40002531;
UPDATE `creature` SET `phaseid` = 180  WHERE `guid` = 40002538;
UPDATE `creature` SET `phaseid` = 180  WHERE `guid` = 40002982;
UPDATE `creature_template_addon` SET auras = "" WHERE entry = 39449; 
UPDATE `creature` SET `unit_flags3` = 2048 WHERE `id` = 39449;
UPDATE `creature_template` SET `unit_flags2` = '2048' WHERE `entry` = '39449';
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 40064;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 39449;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 39068;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 38432;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 39068;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 38387;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 38381;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 39456;
UPDATE `gameobject` SET `phaseid` = 169  WHERE `id` = 1731;
UPDATE `gameobject` SET `phaseid` = 169  WHERE `id` = 1618;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 38514;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 45286;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 36471;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 39426;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 38518;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 38510;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 38513;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 38122;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 36615;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 38120;
UPDATE `gameobject` SET `phaseid` = 169  WHERE `id` = 202657;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 39063;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 38120;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 39064;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 36600;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 4075;
UPDATE `creature` SET `phaseid` = 169  WHERE `guid` = 40004431;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 39376;
UPDATE  `gameobject` SET `phaseid` =169 WHERE `id` = 202656;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 39589;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 39591;
UPDATE `creature` SET `phaseid` = 169  WHERE `id` = 39066;
UPDATE `creature` SET `phaseid` = 384  WHERE `guid` = 21016380;

delete from `creature` where `guid`=300000070;
insert into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values
("300000070", "39598", "648", "0", "0", "0", "0", "0", "0", "-1", "0", "0", "2122.97", "2403.8", "45.0999", "3.30061", "300", "0", "0", "10529", "0", "0", "16777216", "0", "0", "0", "0", "", "0");

UPDATE quest_template SET QuestType = '0' WHERE ID = '25251'; 
/*fix quest by mamni*/
UPDATE `creature_template` SET IconName = '', type_flags = '0', type_flags2 = '0', TYPE = '9', Family = '0', KillCredit1 = '0', KillCredit2 = '0', VignetteID = '0', movementId = '186', RequiredExpansion = '0'  WHERE Entry = '39598';
UPDATE `creature_template` SET IconName = '', type_flags = '2148009988', type_flags2 = '0', TYPE = '7', Family = '0', KillCredit1 = '39592', KillCredit2 = '0', VignetteID = '0', movementId = '0', RequiredExpansion = '0'  WHERE Entry = '39582';
UPDATE `creature_template` SET gossip_menu_id = 0,minlevel = 85,maxlevel = 85,faction = 35,npcflag = 16777216,speed_walk = 1,speed_run = 1,scale = 1,dmgschool = 0,baseattacktime = 2000,rangeattacktime = 0,unit_class = 1,unit_flags = 33280,unit_flags2 = 2048,unit_flags3 = 0,dynamicflags = 0,trainer_type = 0,trainer_class = 0,trainer_race = 0,lootid = 0,pickpocketloot = 0,skinloot = 0,resistance1 = 0,resistance2 = 0,resistance3 = 0,resistance4 = 0,resistance5 = 0,resistance6 = 0,spell1 = 0,spell2 = 0,spell3 = 0,spell4 = 0,spell5 = 0,spell6 = 0,spell7 = 0,spell8 = 0,VehicleId = 0,mingold = 0,maxgold = 0,MovementType = 0,InhabitType = 3,HoverHeight = 1,ManaModifierExtra = 1,ArmorModifier = 1,RegenHealth = 1,mechanic_immune_mask = 0,flags_extra = 0 WHERE Entry = 39592;
UPDATE `creature_template` SET gossip_menu_id = 0,minlevel = 85,maxlevel = 85,faction = 2204,npcflag = 0,speed_walk = 1,speed_run = 1.14286,scale = 1,dmgschool = 0,baseattacktime = 2000,rangeattacktime = 0,unit_class = 1,unit_flags = 0,unit_flags2 = 2048,unit_flags3 = 0,dynamicflags = 0,trainer_type = 0,trainer_class = 0,trainer_race = 0,lootid = 0,pickpocketloot = 0,skinloot = 0,resistance1 = 0,resistance2 = 0,resistance3 = 0,resistance4 = 0,resistance5 = 0,resistance6 = 0,spell1 = 73998,spell2 = 73994,spell3 = 73997,spell4 = 0,spell5 = 0,spell6 = 0,spell7 = 0,spell8 = 0,VehicleId = 696,mingold = 0,maxgold = 0,MovementType = 0,InhabitType = 3,HoverHeight = 1,ManaModifierExtra = 1,ArmorModifier = 1,RegenHealth = 1,mechanic_immune_mask = 0,flags_extra = 0 WHERE Entry = 39598;

/* fix go durotar mamni */
SET @ENTRY := 38387;
UPDATE creature_template SET AIName="SmartAI", gossip_menu_id = 0 WHERE entry= @ENTRY;
SET @ENTRY := 38387;
UPDATE creature_template SET AIName="SmartAI" , scriptname ="" WHERE entry= @ENTRY;
/* https://www.wowhead.com/quest=14125/447 ---  npc https://www.wowhead.com/npc=37602/claims-adjuster no se ve en ninguna phase */
replace INTO  `creature_questender` ( id, quest) VALUES
(34668, 14125);

/*goblins saliendo hay mejoras que hacer pero ya salen, thanks */