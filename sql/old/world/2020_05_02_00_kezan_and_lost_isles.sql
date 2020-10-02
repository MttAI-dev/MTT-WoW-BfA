/* goblins kezan y islas perdidas */
UPDATE quest_template SET QuestType = '0' WHERE ID = '24502'; 
UPDATE quest_template SET QuestType = '0' WHERE ID = '14113'; 

/*spawns de npc */
DELETE FROM creature WHERE guid =  280009392;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
('280009392','34668','648','0','0','0','0','0','0','-1','0','0','-8423.64','1368.82','104.663','4.67078','300','0','0','60','0','0','0','0','0','0','0','','0');

/* delete npc*/ 
DELETE FROM creature WHERE guid IN (21015353);
DELETE FROM creature WHERE guid IN (21015378);
DELETE FROM creature WHERE guid IN (21015403);

/*phases spawn */
UPDATE `creature` SET `phaseid` = 384  WHERE `guid` = 210219202;
UPDATE `creature` SET `phaseid` = 384  WHERE `guid` = 280009393;

/* quest cambio de npc entrega final no se ve */
/* https://www.wowhead.com/quest=14125/447 ---  npc https://www.wowhead.com/npc=37602/claims-adjuster no se ve en ninguna phase */
INSERT INTO  `creature_questender` ( id, quest) VALUES
(34668, 14125);

/* spell_area die goblin lost isles*/
delete from spell_area where spell=69010;
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) 
VALUES('69010','4720','14126','14239','0','0','0','2','3','64','74');

/* spawn https://es.wowhead.com/quest=14239/no-vayas-hacia-la-luz#see-also */
delete from creature where guid= 280009397;
insert into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values('280009397','36608','648','0','0','0','0','0','0','-1','0','1','537.554','3272.15','0.183077','2.75595','300','0','0','31','0','0','0','0','0','0','0','','0');
delete from creature_template where entry=36608;
insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) values('36608','0','0','0','0','0','Doc Zapnozzle','','',NULL,'','0','1','1','0','0','0','35','2','1','1.14286','1','0','0','2000','2000','0','0','1','0','2048','0','0','0','0','0','0','7','0','0','36608','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','3','3','','0','3','1','1','1','1','1','1','1','1','0','0','0','0','0','1','0','0','npc_zapnozzle','28153');

/* spell */
DELETE FROM spell_script_names WHERE spell_id = '69010' AND ScriptName = 'spell_lost_isles_near_death'; 
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES ('69010', 'spell_lost_isles_near_death');


/* fix quest https://es.wowhead.com/quest=14243/la-venganza-del-jefe-de-guerra */
delete from `quest_template` where id=14243;
insert into `quest_template` (`ID`, `QuestType`, `QuestLevel`, `ScalingFactionGroup`, `MaxScalingLevel`, `QuestPackageID`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardDisplaySpell1`, `RewardDisplaySpell2`, `RewardDisplaySpell3`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitTurnIn`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionCapIn1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionCapIn2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionCapIn3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionCapIn4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `RewardFactionCapIn5`, `RewardFactionFlags`, `RewardCurrencyID1`, `RewardCurrencyQty1`, `RewardCurrencyID2`, `RewardCurrencyQty2`, `RewardCurrencyID3`, `RewardCurrencyQty3`, `RewardCurrencyID4`, `RewardCurrencyQty4`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `QuestCompletionLog`, `VerifiedBuild`) values
("14243", "2", "-1", "0", "20", "17294", "5", "4720", "0", "0", "14445", "6", "1", "2500", "6", "1", "330", "0", "0", "0", "0", "0", "0", "0", "0", "1", "0", "1048576", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "52947", "1", "0", "52901", "1", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "1133", "6", "0", "7", "76", "6", "0", "7", "0", "0", "0", "7", "0", "0", "0", "7", "0", "0", "0", "7", "3", "0", "0", "0", "0", "0", "0", "0", "0", "890", "878", "0", "0", "256", "0", "0", "0", "0", "Warchief's Revenge", "Use the powers of the Cyclone of the Elements to slay 50 Alliance Sailors.$B$BOnce this is done, you will be flown to the Wild Overlook.", "Brothers of Earth and Fire, hear me! Sisters of the Water and Air, heed my call!$B$BAzeroth stands on the brink, its existence near an end! Lend me your power as in times past with my ancient ancestors. Allow me to channel your will through this child of Kezan.$B$BLet us put an end to those who would keep us from healing the world!", "", "", "", "", "", "", "28153");

/* change phase */
UPDATE `creature` SET `phaseid` = 180  WHERE `guid` = 40002538;
UPDATE `creature` SET `phaseid` = 180  WHERE `guid` = 40003279;
UPDATE `creature` SET `phaseid` = 180  WHERE `guid` = 40003397;
UPDATE `creature` SET `phaseid` = 180  WHERE `guid` = 40003323;
UPDATE `creature` SET `phaseid` = 169  WHERE `guid` = 210219202;
UPDATE `creature` SET `phaseid` = 382  WHERE `guid` = 21016359;

/*delete npc doble */
DELETE FROM creature WHERE guid =  280009392;
/* https://www.wowhead.com/quest=14125/447 */
DELETE FROM  creature_questender WHERE id='34668' AND quest='14125';

/* quest https://es.wowhead.com/quest=24671/perseguir-al-pollo */
delete FROM smart_scripts WHERE entryorguid= 38111 AND source_type=0;
UPDATE creature_template SET AIName='SmartAI' WHERE entry=38111;
insert into smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) values
('38111','0','0','0','73','0','100','0','0','0','0','0','41','2000','60','0','0','0','0','1','0','0','0','0','0','0','0','Quest 33882 spawn  pollo');
insert into smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) values
('38111','0','1','0','73','0','100','0','0','0','0','0','33','38117','0','0','0','0','0','7','0','0','0','0','0','0','0','Quest 24671 da el kill credit');

/* fix phases */
UPDATE `creature` SET `phaseid` = 169  WHERE `guid` = 40004117;

/* cambio de loot */
delete from creature_loot_template where entry=39363 and item=52531;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('39363','52531','0','100','0','1','0','1','1',''); 




