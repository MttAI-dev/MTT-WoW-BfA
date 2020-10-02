/*
SQL WoW LatinBFA				  
Desarrollado por: MistiX
Fecha: 15/4/120
### Scripts Privados / Derechos Reservados WoW LatinBFA Dev Team ########
### Datos SQL --------------------------------------------->*/
/*SET @CREATURE  	:= 'Sur\'jan';*/
/*SET @ENTRY 		:= '126713';*/
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/

/*----------------------
   NAZMIR QUEST START 
------------------------*/

delete from `quest_objectives` where `QuestID` = 48573;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES ('292557', '48573', '0', '1', '1', '126723', '8', '28', '0', '0', NULL, '28153');


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = '126713';
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
('126713',  '0',  '0',  '0',  '0',  '0',   'Sur\'jan',  '',  '',  '',  '',  '21487',  '110',  '120',  '7',  '0',  '0',  '35',  '3',  '1',  '1.14286',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '33536',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'SmartAI',  '0',  '3',  '1',  '10',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '0',  '0',  '0',  '1',  '0',  '0',  '',  '27377');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = '126713';
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
('126713', '0', '0', '0', '1', '0', '0', '0', '0', '0'); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= '126713';
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
('126713', '0', '0', 'Dat\'s everything I need... now it is time to get more power!', '14', '0', '100', '0', '0', '0', '136710', '0', 'Sur\'jan to Player'), 
('126713', '1', '0', 'Ah... MORE! We need more power if we\'re going to kill Urok!', '14', '0', '100', '0', '0', '0', '136711', '0', 'Sur\'jan to Player'), 
('126713', '2', '0', 'Good... I feel my power coming back to me!', '14', '0', '100', '0', '0', '0', '136712', '0', 'Sur\'jan to Player'), 
('126713', '3', '0', 'Ha HA! I\'m almost dere... and we are almost ready to kill Urok!', '14', '0', '100', '0', '0', '0', '136713', '0', 'Sur\'jan to Player'), 
('126713', '4', '0', 'Me voy a prepararlo todo pa el ritual. Cuando recupere mi poder, podremoh matar a Urok.', '12', '0', '100', '0', '0', '0', '136653', '0', 'Sur\'jan to Player'), 
('126713', '5', '0', '¡Ehtúpido Sur\'jan! No parah de abrir el pico delante de todoh. ¡Van a pensar que ehtáh majara!', '12', '0', '100', '0', '0', '0', '136654', '0', 'Sur\'jan to Player'), 
('126713', '6', '0', 'Con tu ayuda, tendré bahtante fuerza pa derrotar a Urok de nuevo. Te ehtaré ehperando aquí pa preparar el siguiente ritual.', '12', '0', '100', '0', '0', '0', '136740', '0', 'Sur\'jan to Player'); 


/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 126713 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('126713', '0', '0', '0', '19', '0', '100', '0', '48574', '0', '0', '0', '0', '0', '1', '4', '3500', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0'), 
('126713', '0', '1', '0', '52', '0', '100', '0', '4', '126713', '0', '0', '0', '0', '1', '5', '2000', '0', '0', '0', '0', '16', '0', '0', '0', '0', '0', '0', '0'), 
('126713', '0', '2', '0', '52', '0', '100', '0', '5', '126713', '0', '0', '0', '0', '53', '1', '1267130', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0'), 
('126713', '0', '3', '0', '40', '0', '100', '0', '2', '0', '0', '0', '0', '0', '41', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0'), 
('126713', '0', '4', '0', '19', '0', '100', '0', '48576', '0', '0', '0', '0', '0', '11', '252020', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0'), 
('126713', '0', '5', '0', '8', '0', '100', '0', '252020', '0', '0', '0', '0', '0', '1', '0', '5000', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0'), 
('126713', '0', '6', '0', '52', '0', '100', '0', '0', '126713', '0', '0', '0', '0', '1', '1', '1200', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0'), 
('126713', '0', '7', '0', '19', '0', '100', '0', '48578', '0', '0', '0', '0', '0', '1', '6', '1200', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0'), 
('126713', '0', '8', '0', '50', '0', '100', '0', '48590', '0', '0', '0', '0', '0', '1', '2', '1244', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0'), 
('126713', '0', '9', '0', '19', '0', '100', '0', '48578', '0', '0', '0', '0', '0', '1', '7', '1500', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0'); 


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = '126713';
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = '126713';
/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = '126713';
/*
/*
*/
/*Skinning Loot Template Items Data: Id - Quality - SellPrice - ItemLevel - RequiredLevel - Name */
/*


/* Step 3.3 Table  `creature_summon_groups` */
DELETE FROM  `creature_summon_groups` WHERE `summonerId` = '126713' AND `summonerType` = 0;
/* Step 2.7 Table  `gossip_menu */
DELETE FROM gossip_menu WHERE  `MenuId` = 21487;
INSERT INTO `gossip_menu` (`MenuId`,`TextId`,`VerifiedBuild`) VALUES 
(21487,32733, 27377), 
(21487,32756, 27377); 
/* Step 4.6 Table  `npc_text` */
DELETE FROM npc_text WHERE `ID` = 32733;
INSERT INTO `npc_text` (`ID`,`Probability0`,`Probability1`,`Probability2`,`Probability3`,`Probability4`,`Probability5`,`Probability6`,`Probability7`,`BroadcastTextID0`,`BroadcastTextID1`,`BroadcastTextID2`,`BroadcastTextID3`,`BroadcastTextID4`,`BroadcastTextID5`,`BroadcastTextID6`,`BroadcastTextID7`,`VerifiedBuild`) VALUES 
('32733', '1', '0', '0', '0', '0', '0', '0', '0', '136614', '0', '0', '0', '0', '0', '0', '0', '1111'); 


/* Step 4.6 Table  `npc_text` */
DELETE FROM npc_text WHERE `ID` = 32756;
INSERT INTO `npc_text` (`ID`,`Probability0`,`Probability1`,`Probability2`,`Probability3`,`Probability4`,`Probability5`,`Probability6`,`Probability7`,`BroadcastTextID0`,`BroadcastTextID1`,`BroadcastTextID2`,`BroadcastTextID3`,`BroadcastTextID4`,`BroadcastTextID5`,`BroadcastTextID6`,`BroadcastTextID7`,`VerifiedBuild`) VALUES 
('32756', '1', '0', '0', '0', '0', '0', '0', '0', '136728', '0', '0', '0', '0', '0', '0', '0', '1111'); 


/* Step 2.7 Table  `gossip_menu_option */
DELETE FROM gossip_menu_option WHERE  `MenuId` = 21487;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
('21487', '0', '0', 'Show me Urok, the Terror of the Wetlands.', '0', '1', '1', '27377');


/* Step 1.2 Table `gossip_menu_option_action */
DELETE FROM `gossip_menu_option_action` WHERE `MenuId`= 21487;
/* Step 1.2 Table `creature_equip_template */
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 126713;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('126713', '1', '134843', '0', '134843', '0', '0', '0', '0', '0', '0');

DELETE FROM npc_trainer WHERE `ID` = '126713';
DELETE FROM npc_vendor WHERE  `entry` = '126713';
/* Step 2.2 Table  `creature_queststarter */
DELETE FROM  `creature_queststarter` WHERE `id`= '126713';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES 
('126713', '48573'),  /* Quest(48573): Crocolisk Life ,QuestMinLevel: 110 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('126713', '48574'),  /* Quest(48574): Pulling Fangs ,QuestMinLevel: 110 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('126713', '48576'),  /* Quest(48576): Safe Flying ,QuestMinLevel: 110 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('126713', '48577'),  /* Quest(48577): Terrorizing their Eggs ,QuestMinLevel: 110 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('126713', '48578'),  /* Quest(48578): There's No Eye in Skyterror ,QuestMinLevel: 110 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('126713', '48584'),  /* Quest(48584): The Blood of My Enemies ,QuestMinLevel: 110 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('126713', '48590'),  /* Quest(48590): My Head and Shoulders ,QuestMinLevel: 110 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('126713', '48669');  /* Quest(48669): Urok, Terror of the Wetlands ,QuestMinLevel: 110 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 


/* Step 2.2 Table  `creature_questender */
DELETE FROM  `creature_questender` WHERE `id`= '126713';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES 
('126713', '48573'),  /* Quest(48573): Crocolisk Life ,QuestMinLevel: 110 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('126713', '48574'),  /* Quest(48574): Pulling Fangs ,QuestMinLevel: 110 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('126713', '48576'),  /* Quest(48576): Safe Flying ,QuestMinLevel: 110 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('126713', '48577'),  /* Quest(48577): Terrorizing their Eggs ,QuestMinLevel: 110 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('126713', '48578'),  /* Quest(48578): There's No Eye in Skyterror ,QuestMinLevel: 110 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('126713', '48584'),  /* Quest(48584): The Blood of My Enemies ,QuestMinLevel: 110 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('126713', '48590'),  /* Quest(48590): My Head and Shoulders ,QuestMinLevel: 110 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('126713', '48669');  /* Quest(48669): Urok, Terror of the Wetlands ,QuestMinLevel: 110 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 


/* Step 1.8 Table  `waypoints */
DELETE FROM waypoints WHERE  `entry` = 1267130;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES ('1267130', '1', '832.931', '1447.34', '2.83375', 'Sur\'jan!');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES ('1267130', '2', '813.449', '1475.31', '0.26095', 'Sur\'jan!');


/* Step 2.5 Table  `npc_spellclick_spells */
DELETE FROM npc_spellclick_spells WHERE  `npc_entry` = '126713';
/* Step 1.7 Table  `creature_default_trainer */
DELETE FROM creature_default_trainer WHERE  `CreatureId` = '126713';
/* Step 2.7 Table  `creature_template_scaling */
DELETE FROM creature_template_scaling WHERE  `Entry` = 126713;
INSERT INTO `creature_template_scaling` (`Entry`,`LevelScalingMin`,`LevelScalingMax`,`LevelScalingDeltaMin`,`LevelScalingDeltaMax`,`VerifiedBuild`) VALUES 
('126713', '0', '110', '120', '0', '0');



