-- Admiral Stonefist 42978 SAI Quest https://es.wowhead.com/quest=26608/negociaciones-terminadas
SET @ENTRY := 42978;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,10,0,100,0,1,5,0,0,33,42977,0,0,0,0,0,7,0,0,0,0,0,0,0,"Admiral Stonefist 42978 - Within 1-5 Range Out of Combat LoS - Quest Credit 'Twilight Skies Quest Tracker 42977'");

-- Ornak 43187 SAI
SET @ENTRY := 43187;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,26549,0,0,0,85,80786,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ornak 43187 - On Quest '' Taken - Invoker Cast 'Spell Id80786'");

DELETE FROM `terrain_swap_defaults` WHERE `TerrainSwapMap` = 736;
INSERT INTO `terrain_swap_defaults` (`MapId`, `TerrainSwapMap`, `Comment`) VALUES (0, 736, 'Twilight Highlands Dragonmaw Phase');

DELETE FROM `creature_text` WHERE `CreatureID` IN (43190, 43191);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(43190, 0, 0, 'Gregor, you coward! Orcs of pure blood are dying off our shores. If you doom them, you doom us all.', 12, 0, 100, 5, 0, 0, 43239, 'Zaela to Player'),
(43190, 1, 0, 'Hurry, Gorthul. Undo $ghis:her; bonds.', 12, 0, 100, 0, 0, 0, 43463, 'Zaela to Player'),
(43190, 2, 0, '$N, I\'ve rescued your equipment for you. I think you\'ve seen all you need to see.', 12, 0, 100, 1, 0, 0, 0, 'Zaela to Player'),
(43190, 3, 0, 'Remember, $N. Not all Dragonmaw are your enemies!', 12, 0, 100, 1, 0, 0, 0, 'Zaela to Player'),
(43191, 0, 0, 'I ... I can\'t give you any of our supplies! Our Warchief... He would...', 12, 0, 100, 274, 0, 0, 43238, 'Gregor to Player'),
(43191, 1, 0, 'Very well, Zaela. I trust you to do the right thing. $C, I can help your fallen warriors...', 12, 0, 100, 2, 0, 0, 43237, 'Gregor to Player');

DELETE FROM `creature_text` WHERE `CreatureID` = 43189;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(43189, 0, 0, 'This pathetic revolution ends here!', 12, 0, 100, 0, 0, 0, 43761, 'Warchief Mor\'ghor to Dragonmaw Shaman'),
(43189, 1, 0, 'Pathetic worms. Prepare to face the Mor\'ghor Slam!', 14, 0, 100, 25, 0, 21599, 44062, 'Warchief Mor\'ghor'),
(43189, 2, 0, 'Zaela ... traitorous fool ... have you sold your soul to the Horde? Are you and I so different? Cast your lot with Hellscream, then. See where he takes you.', 12, 0, 100, 0, 0, 21130, 44287, 'Warchief Mor\'ghor to Dragonmaw Warrior');

DELETE FROM `creature_text` WHERE `CreatureID` = 43260;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(43260, 0, 0, 'Quit wasting words, worm. If you want the aid of the Dragonmaw, you should\'ve come on bent knee and with offerings of gold.', 12, 0, 100, 25, 0, 0, 43306, 'Warchief Mor\'ghor to Player'),
(43260, 1, 0, 'Was that a THREAT? I knew Hellscream in Outland. A whimpering whelp. He is no Warchief.', 12, 0, 100, 11, 0, 0, 43307, 'Warchief Mor\'ghor to Player'),
(43260, 2, 0, 'Bring him on!', 12, 0, 100, 5, 0, 0, 43308, 'Warchief Mor\'ghor to Player'),
(43260, 3, 0, 'This is...', 12, 0, 100, 0, 0, 0, 43309, 'Warchief Mor\'ghor to Player'),
(43260, 4, 0, 'DRAGONMAW!!', 14, 0, 100, 0, 0, 0, 43310, 'Warchief Mor\'ghor to Player'),
(43260, 5, 0, 'Keep the $c alive. $gHe:She; will be our bargaining chip.', 12, 0, 100, 1, 0, 0, 43311, 'Warchief Mor\'ghor to Player'),
(43260, 6, 0, 'Call for the others. We will crush Hellscream\'s Horde and hurl their bodies to the sea...', 12, 0, 100, 273, 0, 0, 43312, 'Warchief Mor\'ghor to Player');

DELETE FROM `creature_text` WHERE `CreatureID` = 43939;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(43939, 0, 0, 'Mor\'ghor! You should\'ve stayed in Outland with the rest of your half-demon scum. There\'s no place for you here.', 12, 0, 100, 5, 0, 21599, 44281, 'Zaela');
DELETE FROM `phase_area` WHERE `AreaId`=5336 AND `PhaseId`=236;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (5336, 236, 'DragonMaw Phase First');

-- Chief Engineer 42671 SAI
SET @ENTRY := 42671;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,73,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chief Engineer 42671 - On Spellclick - Despawn In 2000 ms"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,33,42675,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chief Engineer 42671 - On Spellclick - Quest Credit 'Chief Engineer Quest Tracker 42675'");

UPDATE `creature_template` SET `npcflag` = 16777216 WHERE `entry` = 42671;
UPDATE `npc_spellclick_spells` SET `spell_id` = 79545 WHERE `npc_entry` = 42673;
UPDATE `creature_template` SET `npcflag` = 16777216 WHERE `entry` = 42646;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=42646 AND `spell_id`=80017;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (42646, 80017, 1, 0);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=42671 AND `spell_id`=79568;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (42671, 79568, 1, 0);

-- Smoot 42644 SAI
SET @ENTRY := 42644;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,"Smoot 42644 - On Respawn - Remove Flag Not Selectable"),
(@ENTRY,0,1,0,73,0,100,0,0,0,0,0,50,204091,15000,0,0,0,0,1,0,0,0,0,0,0,0,"Smoot 42644 - On Spellclick - Summon Gameobject 'Induction Samophlange'");

-- Condition for source Gossip menu option condition type Quest not taken
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=11804 AND `SourceEntry`=0 AND `SourceId`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 11804, 0, 0, 0, 14, 0, 26830, 0, 0, 1, 0, 0, '', 'Show gossip menu 11804 option id 0 if quest Traitor''s Bait has been taken.');

-- https://es.wowhead.com/quest=26830/cebo-para-traidores
DELETE FROM `creature_text` WHERE `CreatureID` IN (44120, 44160);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(44120, 0, 0, 'Silence, idiot.', 12, 0, 100, 0, 0, 0, 44459, 'Sauranok the Mystic to Player'),
(44120, 1, 0, 'Hear anything interesting, $N? Your little revelation about me is about to cost you your life.', 12, 0, 100, 1, 0, 6675, 0, 'Sauranok the Mystic to Player'),
(44120, 2, 0, 'The Twilight\'s Hammer has agents everywhere! Kill me and a dozen take my place!', 12, 0, 100, 0, 0, 0, 44409, 'Sauranok the Mystic'),
(44120, 3, 0, 'My powers of sight... I beheld the future... I have seen what is to come...', 12, 0, 100, 0, 0, 0, 44410, 'Sauranok the Mystic'),
(44120, 4, 0, 'This world unravels. If you could see the horrors I have seen... ', 12, 0, 100, 0, 0, 0, 44411, 'Sauranok the Mystic'),
(44120, 5, 0, 'To serve is madness, but defiance ... impossible!', 12, 0, 100, 0, 0, 0, 44412, 'Sauranok the Mystic'),
(44160, 0, 0 ,'Wait, uh - you put words in my mouth! Not fair!', 12, 0, 100, 0, 0, 0, 44454,'');

REPLACE INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcflag`, `OptionBroadcastTextID`) VALUES
(11804, 0, 0, 'Has a secret cult infiltrated the Orgrimmar skyway?.', 1, 1, 44455);

-- Actionlist SAI
SET @ENTRY := 4416000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Npc_AI_BFA"),
(@ENTRY,9,1,0,0,0,100,0,1000,1000,0,0,33,44132,0,0,0,0,0,7,0,0,0,0,0,0,0,"Npc_AI_BFA"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,12,44120,8,0,0,0,0,8,0,0,0,1742.71,-4276.88,101.785,0.77,"Npc_AI_BFA");

--  SAI
SET @ENTRY := 44160;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="", `gossip_menu_id` = '44160' WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,44160,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Npc_AI_BFA"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Npc_AI_BFA");

UPDATE `creature_template` SET IconName = '', type_flags = '2147483648', type_flags2 = '0', TYPE = '7', Family = '0', KillCredit1 = '0', KillCredit2 = '0', VignetteID = '0', movementId = '0', RequiredExpansion = '3'  WHERE Entry = '44120';
UPDATE `creature_template` SET gossip_menu_id = 0,minlevel = 84,maxlevel = 84,faction = 2147,npcflag = 0,speed_walk = 1,speed_run = 1,scale = 1,dmgschool = 0,baseattacktime = 2000,rangeattacktime = 0,unit_class = 2,unit_flags = 0,unit_flags2 = 2048,unit_flags3 = 0,dynamicflags = 0,trainer_type = 0,trainer_class = 0,trainer_race = 0,lootid = 0,pickpocketloot = 0,skinloot = 0,resistance1 = 0,resistance2 = 0,resistance3 = 0,resistance4 = 0,resistance5 = 0,resistance6 = 0,spell1 = 0,spell2 = 0,spell3 = 0,spell4 = 0,spell5 = 0,spell6 = 0,spell7 = 0,spell8 = 0,VehicleId = 0,mingold = 0,maxgold = 0,MovementType = 0,InhabitType = 3,HoverHeight = 1,ManaModifierExtra = 1,ArmorModifier = 1,RegenHealth = 1,mechanic_immune_mask = 0,flags_extra = 0 WHERE Entry = 44120;

UPDATE `creature_template` SET gossip_menu_id = 11804 WHERE Entry = 44160;
--  SAI
SET @ENTRY := 44120;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Npc_AI_BFA"),
(@ENTRY,0,1,0,2,0,100,0,10,50,0,0,11,82531,0,0,0,0,0,2,0,0,0,0,0,0,0,"Npc_AI_BFA"),
(@ENTRY,0,2,0,2,0,100,0,10,50,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Npc_AI_BFA"),
(@ENTRY,0,3,0,6,0,100,0,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Npc_AI_BFA");

-- Actionlist SAI
SET @ENTRY := 4412000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Smart_list_BFA"),
(@ENTRY,9,1,0,0,0,100,0,3000,3000,0,0,11,140101,0,0,0,0,0,11,44160,100,0,0,0,0,0,"Smart_list_BFA"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,51,0,0,0,0,0,0,11,44160,100,0,0,0,0,0,"Smart_list_BFA"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Smart_list_BFA"),
(@ENTRY,9,4,0,0,0,100,0,3500,3500,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Smart_list_BFA"),
(@ENTRY,9,5,0,0,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,"Smart_list_BFA"),
(@ENTRY,9,6,0,0,0,100,0,0,0,0,0,8,2,0,0,0,0,0,17,10,0,0,0,0,0,0,"Smart_list_BFA");

DELETE FROM `spell_script_names` WHERE `spell_id` IN (774,102342,155777,18562);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (774, 'spell_dru_rejuvenation');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (102342, 'spell_dru_ironbark');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (155777, 'spell_dru_germination');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (18562, 'spell_dru_swiftmend');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (274281,274282,274283,8936);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (274281, 'spell_dru_newmoon');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (274282, 'spell_dru_newmoon');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (274283, 'spell_dru_newmoon');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (8936, 'spell_dru_regrowth');
