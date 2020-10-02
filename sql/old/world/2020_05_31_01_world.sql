DELETE FROM `creature_text` WHERE `CreatureID` IN (32865,32872,32873,33196);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES
-- Thorim
(32865, 0,0,'Interlopers! You mortals who dare to interfere with my sport will pay... Wait--you...',14,0,100,0,0,15733,33145,'Thorim SAY_AGGRO_1'),
(32865, 1,0,'I remember you... In the mountains... But you... what is this? Where am--',14,0,100,0,0,15734,33270,'Thorim SAY_AGGRO_2'),
(32865, 2,0,'Behold the power of the storms and despair!',14,0,100,0,0,15735,0,'Thorim SAY_SPECIAL_1'),
(32865, 3,0,'Do not hold back! Destroy them!',14,0,100,0,0,15736,34241,'Thorim SAY_SPECIAL_2'),
(32865, 4,0,'Have you begun to regret your intrusion?',14,0,100,0,0,15737,0,'Thorim SAY_SPECIAL_3'),
(32865, 5,0,'Impertinent whelps, you dare challenge me atop my pedestal? I will crush you myself!',14,0,100,0,0,15738,33148,'Thorim SAY_JUMPDOWN'),
(32865, 6,0,'Can''t you at least put up a fight!?',14,0,100,0,0,15739,34239,'Thorim SAY_SLAY_1'),
(32865, 6,1,'Pathetic.',14,0,100,0,0,15740,35768,'Thorim SAY_SLAY_2'),
(32865, 7,0,'My patience has reached its limit!',14,0,100,0,0,15741,33365,'Thorim SAY_BERSERK'),
(32865, 8,0,'Failures! Weaklings!',14,0,100,0,0,15742,33274,'Thorim SAY_WIPE'),
(32865, 9,0,'Stay your arms! I yield!',14,0,100,0,0,15743,33948,'Thorim SAY_DEATH'),
(32865,10,0,'I feel as though I am awakening from a nightmare, but the shadows in this place yet linger.',14,0,100,0,0,15744,33949,'Thorim SAY_END_NORMAL_1'),
(32865,11,0,'Sif... was Sif here? Impossible--she died by my brother''s hand. A dark nightmare indeed....',14,0,100,0,0,15745,33950,'Thorim SAY_END_NORMAL_2'),
(32865,12,0,'I need time to reflect.... I will aid your cause if you should require it. I owe you at least that much. Farewell.',14,0,100,0,0,15746,33951,'Thorim SAY_END_NORMAL_3'),
(32865,13,0,'You! Fiend! You are not my beloved! Be gone!',14,0,100,0,0,15747,33952,'Thorim SAY_END_HARD_1'),
(32865,14,0,'Behold the hand behind all the evil that has befallen Ulduar, left my kingdom in ruins, corrupted my brother, and slain my wife.',14,0,100,0,0,15748,33953,'Thorim SAY_END_HARD_2'),
(32865,15,0,'And now it falls to you, champions, to avenge us all. The task before you is great, but I will lend you my aid as I am able. You must prevail.',14,0,100,0,0,15749,33954,'Thorim SAY_END_HARD_3'),
-- Runic Colossus
(32872, 0,0,'%s surrounds itself with a crackling Runic Barrier!',41,0,100,0,0,0,33267,'Runic Colossus'),
-- Ancient Rune Giant
(32873, 0,0,'%s fortifies nearby allies with runic might!',41,0,100,0,0,0,33523,'Ancient Rune Giant'),
-- Sif
(33196, 0,0,'Thorim, my lord!  Why else would these invaders have come into your sanctum but to slay you?  They must be stopped!',14,0,100,0,0,15668,33325,'Sif - Start'),
(33196, 1,0,'These pathetic mortals are harmless, beneath my station.  Dispose of them!',14,0,100,0,0,15669,33368,'Sif - Despawn'),
(33196, 2,0,'Impossible!  Lord Thorim, I will bring your foes a frigid death!',14,0,100,0,0,15670,33369,'Sif - Event');

UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=194265;
DELETE FROM `smart_scripts` WHERE `entryorguid`=194265 AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(194265,1,0,0,70,0,100,0,2,0,0,0,9,0,0,0,0,0,0,14,34155,0,0,0,0,0,0, 'Lever - On activate - Activate Dark Iron Portcullis');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (62577,62603,62576,62602,62580,62604,62016,62057,62058,62042,62466,64767);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(62577,'spell_thorim_blizzard'),
(62603,'spell_thorim_blizzard'),
(62576,'spell_thorim_blizzard_effect'),
(62602,'spell_thorim_blizzard_effect'),
(62580,'spell_thorim_frostbolt_volley'),
(62604,'spell_thorim_frostbolt_volley'),
(62016,'spell_thorim_charge_orb'),
(62057,'spell_thorim_runic_smash'),
(62058,'spell_thorim_runic_smash'),
(62042,'spell_thorim_stormhammer'),
(62466,'spell_thorim_lightning_charge'),
(64767,'spell_thorim_stormhammer_sif');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=62042;

UPDATE `creature_template` SET `InhabitType`=4, `flags_extra`=128, `ScriptName`='' WHERE `entry` IN (33140,33141);
UPDATE `creature_template` SET `InhabitType`=4, `flags_extra`=128 WHERE `entry` IN (33054,33378);
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (32892);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (62577,62603,62016,62976,63238,64098,62466,62565,62942,64767,62560,61964);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,1,62577,0,0,31,0,3,32892,0,0,0,'','Thorim - Blizzard'),
(13,1,62603,0,0,31,0,3,32892,0,0,0,'','Thorim - Blizzard'),
(13,1,62016,0,0,31,0,3,33378,0,0,0,'','Thorim - Charge Orb'),
(13,1,62976,0,0,31,0,3,33378,0,0,0,'','Thorim - Lightning Pillar'),
(13,1,62976,0,0,33,0,1,0,0,1,0,'','Thorim - Lightning Pillar'),
(13,1,63238,0,0,31,0,3,33378,0,0,0,'','Thorim - Lightning Pillar'),
(13,1,63238,0,0,33,0,1,0,0,1,0,'','Thorim - Lightning Pillar'),
(13,1,64098,0,0,31,0,3,32865,0,0,0,'','Thorim - Lightning Bolt'),
(13,4,62466,0,0,31,0,3,32780,0,0,0,'','Thorim - Lightning Charge'),
(13,3,62565,0,0,31,0,3,32865,0,0,0,'','Thorim - Touch of Dominion'),
(13,7,62942,0,0,31,0,3,32874,0,0,0,'','Thorim - Runic Fortification'),
(13,7,62942,0,1,31,0,3,32875,0,0,0,'','Thorim - Runic Fortification'),
(13,7,62942,0,2,31,0,3,33110,0,0,0,'','Thorim - Runic Fortification'),
(13,1,64767,0,0,31,0,3,33196,0,0,0,'','Thorim - Stormhammer'),
(13,7,62560,0,0,31,0,3,32876,0,0,0,'','Thorim - Berserk'),
(13,7,62560,0,1,31,0,3,32877,0,0,0,'','Thorim - Berserk'),
(13,7,62560,0,2,31,0,3,32878,0,0,0,'','Thorim - Berserk'),
(13,7,62560,0,3,31,0,3,32904,0,0,0,'','Thorim - Berserk'),
(13,1,61964,0,0,31,0,3,32882,0,0,0,'','Thorim - Circle of Healing'),
(13,1,61964,0,1,31,0,3,32883,0,0,0,'','Thorim - Circle of Healing'),
(13,1,61964,0,2,31,0,3,32885,0,0,0,'','Thorim - Circle of Healing'),
(13,1,61964,0,3,31,0,3,32886,0,0,0,'','Thorim - Circle of Healing'),
(13,1,61964,0,4,31,0,3,32907,0,0,0,'','Thorim - Circle of Healing'),
(13,1,61964,0,5,31,0,3,32908,0,0,0,'','Thorim - Circle of Healing');

-- Lever SAI
SET @ENTRY := 194264;
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=@ENTRY;
UPDATE `gameobject_template_addon` SET `flags`=32 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,70,0,100,0,2,0,0,0,9,0,0,0,0,0,0,14,34155,0,0,0,0,0,0,'Lever - On Gameobject State Changed - Activate Gameobject');

-- Thorim Trap Bunny SAI
SET @ENTRY := 33054;
UPDATE `creature_template` SET `AIName`='SmartAI', `flags_extra`=2 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,10,0,100,0,0,12,17000,17000,11,62241,0,0,0,0,0,1,0,0,0,0,0,0,0,'Thorim Trap Bunny - Within 0-12 Range Out of Combat LoS - Cast Paralytic Field');

SET @ENTRY := 33725;
UPDATE `creature_template` SET `AIName`='SmartAI', `flags_extra`=2 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,10,0,100,0,0,12,17000,17000,11,63540,0,0,0,0,0,1,0,0,0,0,0,0,0,'Thorim Trap Bunny - Within 0-12 Range Out of Combat LoS - Cast Paralytic Field');

DELETE FROM `spell_script_names` WHERE `ScriptName` IN ('spell_thorim_blizzard_effect','spell_thorim_frostbolt_volley','spell_thorim_charge_orb','spell_thorim_runic_smash','spell_thorim_stormhammer','spell_thorim_lightning_charge','spell_thorim_stormhammer_sif','spell_thorim_stormhammer_boomerang','spell_thorim_activate_lightning_orb_periodic','spell_iron_ring_guard_impale','spell_thorim_arena_leap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(62576,'spell_thorim_blizzard_effect'),
(62602,'spell_thorim_blizzard_effect'),
(62580,'spell_thorim_frostbolt_volley'),
(62604,'spell_thorim_frostbolt_volley'),
(62016,'spell_thorim_charge_orb'),
(62057,'spell_thorim_runic_smash'),
(62058,'spell_thorim_runic_smash'),
(62042,'spell_thorim_stormhammer'),
(62466,'spell_thorim_lightning_charge'),
(64767,'spell_thorim_stormhammer_sif'),
(64909,'spell_thorim_stormhammer_boomerang'),
(62184,'spell_thorim_activate_lightning_orb_periodic'),
(62331,'spell_iron_ring_guard_impale'),
(62418,'spell_iron_ring_guard_impale'),
(61934,'spell_thorim_arena_leap');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=62042;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = -62320;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(-62320, -62398, 0, 'Aura of Celerity - Remove Visual');

UPDATE `creature_template` SET `ScriptName`='boss_thorim' WHERE `entry`=32865;
UPDATE `creature_template` SET `ScriptName`='npc_sif' WHERE `entry`=33196;
UPDATE `creature_template` SET `ScriptName`='npc_thorim_pre_phase' WHERE `entry` IN (32885,32883,32908,32907,32882,32886);
UPDATE `creature_template` SET `ScriptName`='npc_thorim_arena_phase' WHERE `entry` IN (32876,32904,32878,32877,32874,32875,33110);
UPDATE `creature_template` SET `ScriptName`='npc_runic_colossus' WHERE `entry`=32872;
UPDATE `creature_template` SET `ScriptName`='npc_ancient_rune_giant' WHERE `entry`=32873;
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|0x40000000 WHERE `entry` IN (32872, 32873, 33148, 33149);
UPDATE `creature_template` SET `difficulty_entry_1`=33150 WHERE `entry`=32908; -- Swapped Difficulty entry npcs
UPDATE `creature_template` SET `difficulty_entry_1`=33151 WHERE `entry`=32907; -- Caused swapped displayIDs in 25n
UPDATE `creature_template` SET `InhabitType`=4, `flags_extra`=128, `ScriptName`='' WHERE `entry` IN (33140,33141);
UPDATE `creature_template` SET `InhabitType`=4, `flags_extra`=128 WHERE `entry` IN (33378,32879);
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (32892);
UPDATE `creature_template` SET `faction`=1692 WHERE `entry` IN (32885,32883,33152,33153,32908,33150,32907,33151);
UPDATE `creature_template` SET `faction`=1693 WHERE `entry` IN (32882,33154);
UPDATE `creature_template` SET `speed_walk`=2.5/2.5, `speed_run`=14.0/7.0, `BaseAttackTime`=1500, `RangeAttackTime`=1500, `flags_extra`=`flags_extra`|0x00000200 WHERE `entry` IN (32865,33147);

SET @THORIM_BLIZZARD_BUNNY := 136515;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (62577,62603,62016,62976,63238,64098,62466,62565,62942,64767,62560,61964,61934);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 62577, 0, 0, 31, 0, 3, 32892, @THORIM_BLIZZARD_BUNNY, 0, 0, 0, '', 'Spell Blizzard (effect 0) will hit the potential target of the spell if target is unit Thorim Event Bunny guid 136515.'),
(13, 1, 62603, 0, 0, 31, 0, 3, 32892, @THORIM_BLIZZARD_BUNNY, 0, 0, 0, '', 'Spell Blizzard (effect 0) will hit the potential target of the spell if target is unit Thorim Event Bunny guid 136515.'),
(13, 1, 62016, 0, 0, 31, 0, 3, 33378, 0, 0, 0, 0, '', 'Spell Charge Orb (effect 0) will hit the potential target of the spell if target is unit Thunder Orb.'),
(13, 1, 62976, 0, 0, 31, 0, 3, 33378, 0, 0, 0, 0, '', 'Spell Lightning Pillar (effect 0) will hit the potential target of the spell if target is unit Thunder Orb.'),
(13, 1, 62976, 0, 0, 33, 0, 1, 0, 0, 1, 0, 0, '', 'Spell Lightning Pillar (effect 0) will hit the potential target of the spell if target is not the same as condition target.'),
(13, 1, 63238, 0, 0, 31, 0, 3, 33378, 0, 0, 0, 0, '', 'Spell Lightning Pillar (effect 0) will hit the potential target of the spell if target is unit Thunder Orb.'),
(13, 1, 63238, 0, 0, 33, 0, 1, 0, 0, 1, 0, 0, '', 'Spell Lightning Pillar (effect 0) will hit the potential target of the spell if target is not the same as condition target.'),
(13, 1, 64098, 0, 0, 31, 0, 3, 32865, 0, 0, 0, 0, '', 'Spell Lightning Bolt (effect 0) will hit the potential target of the spell if target is unit Thorim.'),
(13, 4, 62466, 0, 0, 31, 0, 3, 32780, 0, 0, 0, 0, '', 'Spell Lightning Charge (effect 2) will hit the potential target of the spell if target is unit Invisible Stalker (All Phases).'),
(13, 3, 62565, 0, 0, 31, 0, 3, 32865, 0, 0, 0, 0, '', 'Spell Touch of Dominion (effects 0 & 1) will hit the potential target of the spell if target is unit Thorim.'),
(13, 7, 62942, 0, 0, 31, 0, 3, 32874, 0, 0, 0, 0, '', 'Spell Runic Fortification (effect 0 & 1 & 2) will hit the potential target of the spell if target is unit Iron Ring Guard.'),
(13, 7, 62942, 0, 1, 31, 0, 3, 32875, 0, 0, 0, 0, '', 'Spell Runic Fortification (effect 0 & 1 & 2) will hit the potential target of the spell if target is unit Iron Honor Guard.'),
(13, 7, 62942, 0, 2, 31, 0, 3, 33110, 0, 0, 0, 0, '', 'Spell Runic Fortification (effect 0 & 1 & 2) will hit the potential target of the spell if target is unit Dark Rune Acolyte.'),
(13, 1, 64767, 0, 0, 31, 0, 3, 33196, 0, 0, 0, 0, '', 'Spell Stormhammer (effect 0) will hit the potential target of the spell if target is unit Sif.'),
(13, 7, 62560, 0, 0, 31, 0, 3, 32876, 0, 0, 0, 0, '', 'Spell Berserk (effect 0 & 1 & 2) will hit the potential target of the spell if target is unit Dark Rune Champion.'),
(13, 7, 62560, 0, 1, 31, 0, 3, 32877, 0, 0, 0, 0, '', 'Spell Berserk (effect 0 & 1 & 2) will hit the potential target of the spell if target is unit Dark Rune Warbringer.'),
(13, 7, 62560, 0, 2, 31, 0, 3, 32878, 0, 0, 0, 0, '', 'Spell Berserk (effect 0 & 1 & 2) will hit the potential target of the spell if target is unit Dark Rune Evoker.'),
(13, 7, 62560, 0, 3, 31, 0, 3, 32904, 0, 0, 0, 0, '', 'Spell Berserk (effect 0 & 1 & 2) will hit the potential target of the spell if target is unit Dark Rune Commoner.'),
(13, 1, 61964, 0, 0, 31, 0, 3, 32882, 0, 0, 0, 0, '', 'Spell Circle of Healing (effect 0) will hit the potential target of the spell if target is unit Jormungar Behemoth.'),
(13, 1, 61964, 0, 1, 31, 0, 3, 32883, 0, 0, 0, 0, '', 'Spell Circle of Healing (effect 0) will hit the potential target of the spell if target is unit Captured Mercenary Soldier.'),
(13, 1, 61964, 0, 2, 31, 0, 3, 32885, 0, 0, 0, 0, '', 'Spell Circle of Healing (effect 0) will hit the potential target of the spell if target is unit Captured Mercenary Soldier.'),
(13, 1, 61964, 0, 3, 31, 0, 3, 32886, 0, 0, 0, 0, '', 'Spell Circle of Healing (effect 0) will hit the potential target of the spell if target is unit Dark Rune Acolyte.'),
(13, 1, 61964, 0, 4, 31, 0, 3, 32907, 0, 0, 0, 0, '', 'Spell Circle of Healing (effect 0) will hit the potential target of the spell if target is unit Captured Mercenary Captain.'),
(13, 1, 61964, 0, 5, 31, 0, 3, 32908, 0, 0, 0, 0, '', 'Spell Circle of Healing (effect 0) will hit the potential target of the spell if target is unit Captured Mercenary Captain.'),
(13, 1, 61934, 0, 0, 31, 0, 3, 32892, 0, 0, 0, 0, 'condition_thorim_arena_leap', 'Spell Leap (effect 0) will hit the potential target of the spell if target is unit Thorim Event Bunny.'),
(13, 1, 61934, 0, 0, 31, 0, 3, 32892, @THORIM_BLIZZARD_BUNNY, 1, 0, 0, '', 'Spell Leap (effect 0) will hit the potential target of the spell if target is not unit Thorim Event Bunny guid 136515.');

DELETE FROM `disables` WHERE `sourceType`=0 AND `entry` IN (62042,64767,45537);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
(0, 62042, 64, '', '', 'Stormhammer - Ignore LOS'),
(0, 64767, 64, '', '', 'Stormhammer - Ignore LOS'),
(0, 45537, 64, '', '', 'Lightning Beam Channel - Ignore LOS');

UPDATE `gameobject_loot_template` SET `LootMode`=1 WHERE `Entry`=27074;
DELETE FROM `gameobject_loot_template` WHERE `Entry` IN (26955,26956);
INSERT INTO `gameobject_loot_template` (`Entry`,`Item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES
(26955,1,34372,100,0,1,0,1,1,'Thorim25 HM - normal mode loot'),
(26955,2,12033,100,0,1,0,1,2,'Thorim25 HM - T8.5 tokens'),
(26955,3,34154,10,0,1,0,1,1,'Thorim25 HM - Random Ulduar craft recipe'),
(26955,45038,0,18,0,1,0,1,1,'Thorim25 HM - Val''anyr fragment'),
(26955,45087,0,10,0,1,0,1,1,'Thorim25 HM - Runed Orb'),
(26955,45470,0,0,0,1,1,1,1,'Thorim25 HM - Wisdom''s Hold'),
(26955,45471,0,0,0,1,1,1,1,'Thorim25 HM - Fate''s Clutch'),
(26955,45472,0,0,0,1,1,1,1,'Thorim25 HM - Warhelm of the Champion'),
(26955,45473,0,0,0,1,1,1,1,'Thorim25 HM - Embrace of the Gladiator'),
(26955,45474,0,0,0,1,1,1,1,'Thorim25 HM - Pauldrons of the Combatant'),
(26955,45570,0,0,0,1,1,1,1,'Thorim25 HM - Skyforge Crossbow'),
(26955,45817,0,100,1,1,0,1,1,'Thorim25 HM - Thorim''s Sigil'),
(26955,47241,0,100,0,1,0,1,1,'Thorim25 HM - Emblem of Triumph'),

(26956,1,34372,100,0,1,0,1,1,'Thorim25 - normal mode loot'),
(26956,2,12033,100,0,1,0,1,2,'Thorim25 - T8.5 tokens'),
(26956,3,34154,10,0,1,0,1,1,'Thorim25 - Random Ulduar craft recipe'),
(26956,45038,0,8,0,1,0,1,1,'Thorim25 - Val''anyr fragment'),
(26956,45087,0,10,0,1,0,1,1,'Thorim25 - Runed Orb'),
(26956,47241,0,100,0,1,0,1,1,'Thorim25 - Emblem of Triumph');

DELETE FROM `npc_vendor` WHERE (`entry`=3342 AND `item`=81920 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3342 AND `item`=81919 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3342 AND `item`=58265 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3342 AND `item`=58264 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3342 AND `item`=35948 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3342 AND `item`=35949 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3342 AND `item`=27856 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3342 AND `item`=8953 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3342 AND `item`=4602 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3342 AND `item`=4539 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3342 AND `item`=4538 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3342 AND `item`=4537 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3342 AND `item`=4536 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3312 AND `item`=81918 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3312 AND `item`=81917 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3312 AND `item`=58269 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3312 AND `item`=58268 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3312 AND `item`=35953 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3312 AND `item`=33454 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3312 AND `item`=27854 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3312 AND `item`=8952 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3312 AND `item`=4599 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3312 AND `item`=3771 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3312 AND `item`=3770 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3312 AND `item`=2287 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3312 AND `item`=117 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138151 AND `item`=163203 AND `ExtendedCost`=6426 AND `type`=1) OR (`entry`=138151 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138151 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138151 AND `item`=160298 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138151 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138151 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138151 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138151 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138151 AND `item`=160502 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138151 AND `item`=163569 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=123730 AND `item`=37460 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129357 AND `item`=163203 AND `ExtendedCost`=6426 AND `type`=1) OR (`entry`=129357 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129357 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129357 AND `item`=160298 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129357 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129357 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129357 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129357 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129357 AND `item`=160502 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129357 AND `item`=163569 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129354 AND `item`=162570 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129354 AND `item`=162569 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129354 AND `item`=162564 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129354 AND `item`=162567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129354 AND `item`=162565 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129354 AND `item`=162566 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129354 AND `item`=153602 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133833 AND `item`=162565 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133833 AND `item`=162567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133833 AND `item`=162566 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133833 AND `item`=162570 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133833 AND `item`=162569 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133833 AND `item`=163567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133833 AND `item`=157798 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(3342, 13, 81920, 0, 0, 1, 0, 0, 27404), -- 81920
(3342, 12, 81919, 0, 0, 1, 0, 0, 27404), -- 81919
(3342, 11, 58265, 0, 0, 1, 0, 0, 27404), -- 58265
(3342, 10, 58264, 0, 0, 1, 0, 0, 27404), -- 58264
(3342, 9, 35948, 0, 0, 1, 0, 0, 27404), -- 35948
(3342, 8, 35949, 0, 0, 1, 0, 0, 27404), -- 35949
(3342, 7, 27856, 0, 0, 1, 0, 0, 27404), -- 27856
(3342, 6, 8953, 0, 0, 1, 0, 0, 27404), -- 8953
(3342, 5, 4602, 0, 0, 1, 0, 0, 27404), -- 4602
(3342, 4, 4539, 0, 0, 1, 0, 0, 27404), -- 4539
(3342, 3, 4538, 0, 0, 1, 0, 0, 27404), -- 4538
(3342, 2, 4537, 0, 0, 1, 0, 0, 27404), -- 4537
(3342, 1, 4536, 0, 0, 1, 0, 0, 27404), -- 4536
(3312, 13, 81918, 0, 0, 1, 0, 0, 27404), -- 81918
(3312, 12, 81917, 0, 0, 1, 0, 0, 27404), -- 81917
(3312, 11, 58269, 0, 0, 1, 0, 0, 27404), -- 58269
(3312, 10, 58268, 0, 0, 1, 0, 0, 27404), -- 58268
(3312, 9, 35953, 0, 0, 1, 0, 0, 27404), -- 35953
(3312, 8, 33454, 0, 0, 1, 0, 0, 27404), -- 33454
(3312, 7, 27854, 0, 0, 1, 0, 0, 27404), -- 27854
(3312, 6, 8952, 0, 0, 1, 0, 0, 27404), -- 8952
(3312, 5, 4599, 0, 0, 1, 0, 0, 27404), -- 4599
(3312, 4, 3771, 0, 0, 1, 0, 0, 27404), -- 3771
(3312, 3, 3770, 0, 0, 1, 0, 0, 27404), -- 3770
(3312, 2, 2287, 0, 0, 1, 0, 0, 27404), -- 2287
(3312, 1, 117, 0, 0, 1, 0, 0, 27404), -- 117
(138151, 10, 163203, 0, 6426, 1, 0, 0, 27404), -- 163203
(138151, 9, 3857, 0, 0, 1, 0, 0, 27404), -- 3857
(138151, 8, 18567, 0, 0, 1, 0, 0, 27404), -- 18567
(138151, 7, 160298, 0, 0, 1, 0, 0, 27404), -- 160298
(138151, 6, 3466, 0, 0, 1, 0, 0, 27404), -- 3466
(138151, 5, 2880, 0, 0, 1, 0, 0, 27404), -- 2880
(138151, 4, 5956, 0, 0, 1, 0, 0, 27404), -- 5956
(138151, 3, 2901, 0, 0, 1, 0, 0, 27404), -- 2901
(138151, 2, 160502, 0, 0, 1, 0, 0, 27404), -- 160502
(138151, 1, 163569, 0, 0, 1, 0, 0, 27404), -- 163569
(123730, 1, 37460, 0, 0, 1, 0, 0, 27404), -- 37460
(129357, 10, 163203, 0, 6426, 1, 0, 0, 27404), -- 163203
(129357, 9, 3857, 0, 0, 1, 0, 0, 27404), -- 3857
(129357, 8, 18567, 0, 0, 1, 0, 0, 27404), -- 18567
(129357, 7, 160298, 0, 0, 1, 0, 0, 27404), -- 160298
(129357, 6, 3466, 0, 0, 1, 0, 0, 27404), -- 3466
(129357, 5, 2880, 0, 0, 1, 0, 0, 27404), -- 2880
(129357, 4, 5956, 0, 0, 1, 0, 0, 27404), -- 5956
(129357, 3, 2901, 0, 0, 1, 0, 0, 27404), -- 2901
(129357, 2, 160502, 0, 0, 1, 0, 0, 27404), -- 160502
(129357, 1, 163569, 0, 0, 1, 0, 0, 27404), -- 163569
(129354, 7, 162570, 0, 0, 1, 0, 0, 27404), -- 162570
(129354, 6, 162569, 0, 0, 1, 0, 0, 27404), -- 162569
(129354, 5, 162564, 0, 0, 1, 0, 0, 27404), -- 162564
(129354, 4, 162567, 0, 0, 1, 0, 0, 27404), -- 162567
(129354, 3, 162565, 0, 0, 1, 0, 0, 27404), -- 162565
(129354, 2, 162566, 0, 0, 1, 0, 0, 27404), -- 162566
(129354, 1, 153602, 0, 0, 1, 0, 0, 27404), -- 153602
(133833, 8, 162565, 0, 0, 1, 0, 0, 27404), -- 162565
(133833, 7, 162567, 0, 0, 1, 0, 0, 27404), -- 162567
(133833, 6, 162566, 0, 0, 1, 0, 0, 27404), -- 162566
(133833, 4, 162570, 0, 0, 1, 0, 0, 27404), -- 162570
(133833, 3, 162569, 0, 0, 1, 0, 0, 27404), -- 162569
(133833, 2, 163567, 0, 0, 1, 0, 0, 27404), -- 163567
(133833, 1, 157798, 0, 0, 1, 0, 0, 27404); -- 157798

REPLACE INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(21393, 33253, 27404), -- 123730
(21391, 33254, 27404), -- 122725
(22699, 35083, 27404), -- 123728
(22700, 35084, 27404), -- 122725
(22701, 35085, 27404), -- 123729
(22541, 34673, 27404); -- 137004

UPDATE `creature_template` SET `gossip_menu_id`='22699' WHERE  `entry`=123728;
UPDATE `creature_template` SET `gossip_menu_id`='22701' WHERE  `entry`=123729;
UPDATE `creature_template` SET `gossip_menu_id`='22700' WHERE  `entry`=122725;
UPDATE `creature_template` SET `gossip_menu_id`='22258' WHERE  `entry`=138749;
UPDATE `creature_template` SET `gossip_menu_id`='83' WHERE  `entry`=129606;
UPDATE `creature_template` SET `gossip_menu_id`='22541' WHERE  `entry`=137004;
UPDATE `creature_template` SET `gossip_menu_id`='22488' WHERE  `entry`=136309;

DELETE FROM `creature_text_locale` WHERE (`CreatureID`=122723 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=122723 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=122723 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=122725 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=122725 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=123730 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=127025 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=127025 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=127025 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=127025 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128299 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128299 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128346 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128454 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128454 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128469 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128469 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128530 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128530 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128530 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128530 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128530 AND `GroupID`='4' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128530 AND `GroupID`='5' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128633 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128640 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128641 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128642 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128643 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128644 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128645 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128646 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128745 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128747 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128794 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128794 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128822 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128822 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128850 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128869 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128870 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128878 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=128878 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129319 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129319 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129319 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129330 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129330 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129330 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129330 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129330 AND `GroupID`='4' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129330 AND `GroupID`='5' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129330 AND `GroupID`='6' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129330 AND `GroupID`='7' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129434 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129434 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129434 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129434 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129434 AND `GroupID`='4' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129436 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129436 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129436 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129451 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129451 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129451 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129451 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129451 AND `GroupID`='4' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129451 AND `GroupID`='5' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129451 AND `GroupID`='6' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129451 AND `GroupID`='7' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129506 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129506 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129507 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129544 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129544 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129545 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129577 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129603 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129603 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129603 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129603 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129603 AND `GroupID`='4' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129603 AND `GroupID`='5' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129603 AND `GroupID`='6' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129603 AND `GroupID`='7' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129603 AND `GroupID`='8' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129603 AND `GroupID`='9' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129603 AND `GroupID`='10' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129606 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129672 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129672 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129672 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=129672 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=133924 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=133929 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=133929 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=133930 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=133931 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=133931 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=135907 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=136317 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=136466 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=136466 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=136466 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=136466 AND `GroupID`='3' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=136466 AND `GroupID`='4' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=136596 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=136601 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=136601 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=136689 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=136963 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=138923 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=142830 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=142851 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=142854 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=142854 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=142855 AND `GroupID`='0' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=142855 AND `GroupID`='1' AND `ID`='0' AND `locale`='enUS') OR (`CreatureID`=142855 AND `GroupID`='2' AND `ID`='0' AND `locale`='enUS');
INSERT INTO `creature_text_locale` (`CreatureID`, `GroupID`, `ID`, `locale`, `Text`) VALUES
(122723, 0, 0, 'enUS', 'It be safe to come out now?'),
(122723, 1, 0, 'enUS', 'Grenja! Volni! Man\'zul! You be back! De gang\'s all here!'),
(122723, 2, 0, 'enUS', 'You\'re right! It be time we brought $p into de gang officially. Prepare de ritual!'),
(122725, 0, 0, 'enUS', 'Mmm, this fruit looks delicious! Let\'s get it on the buffet table.'),
(122725, 1, 0, 'enUS', 'Breakfast is served!'),
(123730, 0, 0, 'enUS', 'Now everyone\'ll know this is the Goldtusk Inn!'),
(127025, 0, 0, 'enUS', 'Ho! What bilgesuckers be darin\' to challenge me?'),
(127025, 1, 0, 'enUS', 'A mutiny by me own first mate?! I\'ll keelhaul ya!'),
(127025, 2, 0, 'enUS', 'Da Port of Zem\'lan be mine!'),
(127025, 3, 0, 'enUS', 'I don\'t stay dead long... I be seein\' ya soon, Jamboya...'),
(128299, 0, 0, 'enUS', 'Nobody be takin\' dis treasure from me! Not you, not Zem\'lan, not nobody!'),
(128299, 1, 0, 'enUS', 'Run fast, ya rag. I got all of eternity to hunt you down.'),
(128346, 0, 0, 'enUS', 'We be bound to Zem\'lan\'s will, forever.'),
(128454, 0, 0, 'enUS', 'We return from da grave, ready to fight.'),
(128454, 1, 0, 'enUS', 'Ain\'t I killed ya already? Or were dat ya killed me?'),
(128469, 0, 0, 'enUS', 'Stay away from me treasure map!'),
(128469, 1, 0, 'enUS', 'Gulnaku\'s not gonna be pleased about this.'),
(128530, 0, 0, 'enUS', 'Da sethrak think we gonna roll over and die. What say you?'),
(128530, 1, 0, 'enUS', 'Dis be our home. We gonna do whatever it takes to hold dis port... Forever!'),
(128530, 2, 0, 'enUS', 'Step forward and receive me gift. Join me crew for eternity!'),
(128530, 3, 0, 'enUS', 'First Mate Jamboya, be reborn!'),
(128530, 4, 0, 'enUS', 'Welcome to da eternal crew of the damned, First Mate.'),
(128530, 5, 0, 'enUS', 'Who be next?'),
(128633, 0, 0, 'enUS', 'Raaagh!'),
(128640, 0, 0, 'enUS', 'NO!'),
(128641, 0, 0, 'enUS', 'NO!'),
(128642, 0, 0, 'enUS', 'NO!'),
(128643, 0, 0, 'enUS', 'NO!'),
(128644, 0, 0, 'enUS', 'NO!'),
(128645, 0, 0, 'enUS', 'NO!'),
(128646, 0, 0, 'enUS', 'NO!'),
(128745, 0, 0, 'enUS', 'Half off Oggo for the rest of the day...'),
(128747, 0, 0, 'enUS', 'I feel nothing...'),
(128794, 0, 0, 'enUS', 'Zem\'lan don\'t suffer de living no more.'),
(128794, 1, 0, 'enUS', 'De captain\'s... gonna hear about dis...'),
(128822, 0, 0, 'enUS', 'I\'ve been defending dis port for countless years.'),
(128822, 1, 0, 'enUS', 'Keep your hands off my treasure...'),
(128850, 0, 0, 'enUS', 'If you ain\'t part of de crew, you be dead!'),
(128869, 0, 0, 'enUS', 'Your treasure... it be mine now.'),
(128870, 0, 0, 'enUS', 'You\'ll answer... to Pirate-King Zem\'lan for dis...'),
(128878, 0, 0, 'enUS', 'Watch where you digging! I be sleepin\' down there!'),
(128878, 1, 0, 'enUS', 'It\'s so bright out here... Put me bones back in the hole.'),
(129319, 0, 0, 'enUS', 'Hello? Is anyone dere?'),
(129319, 1, 0, 'enUS', 'Please, I\'m injured... Have mercy on a fellow Zandalari!'),
(129319, 2, 0, 'enUS', '$p...?'),
(129330, 0, 0, 'enUS', 'What you doing out here, $p? I thought you were dead!'),
(129330, 1, 0, 'enUS', 'You helped dese exiles set up an inn way out here in da middle of nowhere?'),
(129330, 2, 0, 'enUS', 'I\'d say you\'re crazy, but you just saved my life. So, thanks.'),
(129330, 3, 0, 'enUS', 'Da Faithless chased me across da desert, through wild beasts and monsters. I barely survived.'),
(129330, 4, 0, 'enUS', 'My first drink in Vol\'dun. I\'ve been lost in da dunes since we were attacked!'),
(129330, 5, 0, 'enUS', 'I can\'t believe I found you again, $p. But I\'m exhausted...'),
(129330, 6, 0, 'enUS', 'Think I might stay here awhile. Help out where I can.'),
(129330, 7, 0, 'enUS', 'Thanks for saving me...'),
(129434, 0, 0, 'enUS', 'Get back in your golems, spirits! You belong to me!'),
(129434, 1, 0, 'enUS', 'Get back in your golems, spirits! You belong to me!'),
(129434, 2, 0, 'enUS', 'Get back in your golems, spirits! You belong to me!'),
(129434, 3, 0, 'enUS', 'Filthy scavengers! I rule here!'),
(129434, 4, 0, 'enUS', 'Let me die this time, Bwonsamdi... Please...'),
(129436, 0, 0, 'enUS', 'No kings. Only Zak\'rajan.'),
(129436, 1, 0, 'enUS', 'Defend de court at all costs.'),
(129436, 2, 0, 'enUS', 'No kings. Only Zak\'rajan.'),
(129451, 0, 0, 'enUS', 'I\'ll sneak ahead to scout the area. Clear out those specters and I\'ll grab the supplies.'),
(129451, 1, 0, 'enUS', 'Nice fighting. Now let\'s see what all they\'ve got stockpiled in here.'),
(129451, 2, 0, 'enUS', 'Mostly standard Zandalari weapons here... Ooo, those look enchanted!'),
(129451, 3, 0, 'enUS', 'This is a good haul, $p. I\'ll take the best of these for the group, of course.'),
(129451, 4, 0, 'enUS', 'Alright, let\'s see which of this magic stuff is worth carrying.'),
(129451, 5, 0, 'enUS', 'Cursed idols! Tacha loves these... And look at all these reagents.'),
(129451, 6, 0, 'enUS', 'Oh, and can\'t forget the soul-filled golem eye! Tacha turns these into hilarious  little bombs.'),
(129451, 7, 0, 'enUS', 'And maybe a couple little trinkets for my trouble.'),
(129506, 0, 0, 'enUS', 'Your soul will join the others in this golem!'),
(129506, 1, 0, 'enUS', 'Zak\'rajan wields our very souls as weapons. You are doomed.'),
(129507, 0, 0, 'enUS', 'Your weapons are worthless. Our spirits protect him.'),
(129544, 0, 0, 'enUS', 'This is why I keep old totems stuffed with angry spirits, $p...'),
(129544, 1, 0, 'enUS', 'His shield is down. Strike now!'),
(129545, 0, 0, 'enUS', 'Tsk, tsk. I did not expect ta be seein\' you here so soon.'),
(129577, 0, 0, 'enUS', 'Zak\'rajan must pay for imprisoning us!'),
(129603, 0, 0, 'enUS', 'Zak\'rajan imprisoned our spirits into these golems. He forces us to serve him.'),
(129603, 1, 0, 'enUS', 'Zak\'rajan forbid us from worshipping de loa. Only he could be honored.'),
(129603, 2, 0, 'enUS', 'He uses our souls to protect himself. You cannot break through his shield with weapons.'),
(129603, 3, 0, 'enUS', 'He uses our souls to protect himself. You cannot break through his shield with weapons.'),
(129603, 4, 0, 'enUS', 'Zak\'rajan has enslaved us for countless ages. Free us....'),
(129603, 5, 0, 'enUS', 'Spirits be powerful weapons... if you can control \'em.'),
(129603, 6, 0, 'enUS', 'Spirits be powerful weapons... if you can control \'em.'),
(129603, 7, 0, 'enUS', 'Why does Bwonsamdi refuse to let us into de Other Side?'),
(129603, 8, 0, 'enUS', 'Why does Bwonsamdi refuse to let us into de Other Side?'),
(129603, 9, 0, 'enUS', 'Zak\'rajan imprisoned our spirits into these golems. He forces us to serve him.'),
(129603, 10, 0, 'enUS', 'We were promised wealth beyond measure. Instead, we were enslaved.'),
(129606, 0, 0, 'enUS', 'Well look at you! Da mighty hero... ha!'),
(129672, 0, 0, 'enUS', 'We are coming for you, Zak\'rajan...'),
(129672, 1, 0, 'enUS', 'Let my spirit go free. Please...'),
(129672, 2, 0, 'enUS', 'Trapped here forever!'),
(129672, 3, 0, 'enUS', 'We are coming for you, Zak\'rajan...'),
(133924, 0, 0, 'enUS', 'Ya never break me, $pr...'),
(133929, 0, 0, 'enUS', 'You\'ll regret stepping foot on dis land!'),
(133929, 1, 0, 'enUS', 'So far from home...'),
(133930, 0, 0, 'enUS', 'Slaves! Kill these outsiders!'),
(133931, 0, 0, 'enUS', 'They made me kill those traders... I couldn\'t stop.'),
(133931, 1, 0, 'enUS', 'Where am I?'),
(135907, 0, 0, 'enUS', 'What is it you have there, richmon? A shiny trinket for ol\' Jani? Bring it closer...'),
(136317, 0, 0, 'enUS', 'Pirate-King Zem\'lan never gonna forget dis day.'),
(136466, 0, 0, 'enUS', 'No treasure... only darkness.'),
(136466, 1, 0, 'enUS', 'Golden bones...'),
(136466, 2, 0, 'enUS', 'Gold, far as de eye can see...'),
(136466, 3, 0, 'enUS', 'Cursed treasure... Cursed gold...'),
(136466, 4, 0, 'enUS', 'Release me...'),
(136596, 0, 0, 'enUS', 'We will not... be stopped...'),
(136601, 0, 0, 'enUS', 'Every troll for himself. Kill or be killed!'),
(136601, 1, 0, 'enUS', 'You are no better than me. My blood... is on your hands.'),
(136689, 0, 0, 'enUS', 'De captain\'s... gonna hear about dis...'),
(136963, 0, 0, 'enUS', 'All right, crew. Grab de treasure and get in de boat!'),
(138923, 0, 0, 'enUS', 'We are released...'),
(142830, 0, 0, 'enUS', 'Your kindness is unexpected.'),
(142851, 0, 0, 'enUS', 'Thank you. I won\'t look back!'),
(142854, 0, 0, 'enUS', 'The things I\'ve seen...'),
(142854, 1, 0, 'enUS', 'I\'ll just grab one more piece of treasure before I go...'),
(142855, 0, 0, 'enUS', 'I will repay this debt. You have my word.'),
(142855, 1, 0, 'enUS', 'Thanks. I wouldn\'t have lasted much longer.'),
(142855, 2, 0, 'enUS', 'I will repay this debt. You have my word.');

DELETE FROM `conversation_actor_template` WHERE `Id`=134346;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(134346, 134346, 87379, 27404);

DELETE FROM `npc_vendor` WHERE (`entry`=140287 AND `item`=2325 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140287 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140287 AND `item`=2605 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140287 AND `item`=4340 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140287 AND `item`=4341 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140287 AND `item`=4342 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140287 AND `item`=6260 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140287 AND `item`=6261 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140287 AND `item`=10290 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140287 AND `item`=2324 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140287 AND `item`=159959 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140287 AND `item`=14341 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140287 AND `item`=38426 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140287 AND `item`=8343 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140287 AND `item`=4291 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140287 AND `item`=2321 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140287 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140287 AND `item`=160059 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140287 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140285 AND `item`=163203 AND `ExtendedCost`=6426 AND `type`=1) OR (`entry`=140285 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140285 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140285 AND `item`=160298 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140285 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140285 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140285 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140285 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140285 AND `item`=160502 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140285 AND `item`=163569 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133231 AND `item`=64670 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133231 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133231 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133231 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133231 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133231 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133231 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133231 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133231 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133231 AND `item`=138293 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133231 AND `item`=90146 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133231 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133231 AND `item`=38682 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133231 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133231 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143138 AND `item`=163132 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143138 AND `item`=163133 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143138 AND `item`=162554 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143138 AND `item`=128844 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143138 AND `item`=92924 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143136 AND `item`=52188 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143136 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143136 AND `item`=158205 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143136 AND `item`=158186 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143136 AND `item`=64670 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143136 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143136 AND `item`=39489 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143136 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143136 AND `item`=6533 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143136 AND `item`=6532 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143136 AND `item`=6530 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143136 AND `item`=6529 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143136 AND `item`=136377 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143136 AND `item`=6365 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=143136 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=132114 AND `item`=156647 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=132114 AND `item`=156646 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=132114 AND `item`=156641 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=132114 AND `item`=156640 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=132114 AND `item`=156643 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=132114 AND `item`=156642 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=132114 AND `item`=156649 AND `ExtendedCost`=6261 AND `type`=1) OR (`entry`=129556 AND `item`=154132 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129556 AND `item`=154131 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129556 AND `item`=154133 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138033 AND `item`=34498 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138033 AND `item`=104324 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138033 AND `item`=104323 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138077 AND `item`=163133 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138077 AND `item`=162556 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138077 AND `item`=162554 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129375 AND `item`=87541 AND `ExtendedCost`=3890 AND `type`=1) OR (`entry`=129375 AND `item`=163643 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129375 AND `item`=128842 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129375 AND `item`=128763 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129376 AND `item`=36981 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129376 AND `item`=163522 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129376 AND `item`=128842 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129376 AND `item`=128763 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122465 AND `item`=39987 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122465 AND `item`=140341 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122465 AND `item`=33451 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122465 AND `item`=160711 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122465 AND `item`=160518 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138078 AND `item`=81414 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138078 AND `item`=82449 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138078 AND `item`=81402 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138078 AND `item`=82448 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138078 AND `item`=6533 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138078 AND `item`=161383 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138078 AND `item`=161373 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=138078 AND `item`=160398 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122449 AND `item`=58257 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122449 AND `item`=58256 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122449 AND `item`=58274 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122449 AND `item`=58261 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122449 AND `item`=58260 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122449 AND `item`=58275 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122449 AND `item`=58263 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122449 AND `item`=58262 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122449 AND `item`=58277 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122463 AND `item`=63044 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122463 AND `item`=63045 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129226 AND `item`=153570 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129226 AND `item`=153569 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129226 AND `item`=153568 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129226 AND `item`=153567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=129226 AND `item`=153566 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125311 AND `item`=6530 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125311 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125311 AND `item`=161128 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125311 AND `item`=162588 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125311 AND `item`=38682 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125311 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141910 AND `item`=163117 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141910 AND `item`=162582 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141910 AND `item`=162550 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141910 AND `item`=163118 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141910 AND `item`=162558 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141910 AND `item`=161346 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141910 AND `item`=162565 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=142521 AND `item`=163784 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=142521 AND `item`=163133 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=142521 AND `item`=162556 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=142521 AND `item`=162554 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141605 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141605 AND `item`=64670 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141605 AND `item`=39489 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141605 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141605 AND `item`=158205 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141605 AND `item`=158186 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=137334 AND `item`=163203 AND `ExtendedCost`=6426 AND `type`=1) OR (`entry`=137334 AND `item`=160298 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=137334 AND `item`=159959 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=137334 AND `item`=160059 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=137334 AND `item`=158205 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=137334 AND `item`=158186 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=137334 AND `item`=163569 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=137334 AND `item`=160502 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=137334 AND `item`=160712 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=137334 AND `item`=160710 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=137334 AND `item`=160709 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=137334 AND `item`=160400 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=137334 AND `item`=160399 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=137334 AND `item`=160398 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=137334 AND `item`=160705 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125879 AND `item`=163042 AND `ExtendedCost`=6420 AND `type`=1) OR (`entry`=125879 AND `item`=163589 AND `ExtendedCost`=6007 AND `type`=1) OR (`entry`=125879 AND `item`=163568 AND `ExtendedCost`=5834 AND `type`=1) OR (`entry`=141919 AND `item`=52188 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141919 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141919 AND `item`=153166 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141919 AND `item`=153168 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141919 AND `item`=153167 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141914 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141914 AND `item`=158205 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141914 AND `item`=158186 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141914 AND `item`=64670 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141914 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141914 AND `item`=39489 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=141914 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122703 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122693 AND `item`=163203 AND `ExtendedCost`=6426 AND `type`=1) OR (`entry`=122693 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122693 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122693 AND `item`=160298 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122693 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122693 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122693 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122693 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122693 AND `item`=160502 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122693 AND `item`=163569 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122694 AND `item`=163837 AND `ExtendedCost`=6048 AND `type`=1) OR (`entry`=122694 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122694 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122694 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122694 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122694 AND `item`=30746 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=122694 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127112 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127112 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127112 AND `item`=160298 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127112 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127112 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127112 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127112 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(140287, 19, 2325, 0, 0, 1, 0, 0, 27404), -- 2325
(140287, 18, 2604, 0, 0, 1, 0, 0, 27404), -- 2604
(140287, 17, 2605, 0, 0, 1, 0, 0, 27404), -- 2605
(140287, 16, 4340, 0, 0, 1, 0, 0, 27404), -- 4340
(140287, 15, 4341, 0, 0, 1, 0, 0, 27404), -- 4341
(140287, 14, 4342, 0, 0, 1, 0, 0, 27404), -- 4342
(140287, 13, 6260, 0, 0, 1, 0, 0, 27404), -- 6260
(140287, 12, 6261, 0, 0, 1, 0, 0, 27404), -- 6261
(140287, 11, 10290, 0, 0, 1, 0, 0, 27404), -- 10290
(140287, 10, 2324, 0, 0, 1, 0, 0, 27404), -- 2324
(140287, 9, 159959, 0, 0, 1, 0, 0, 27404), -- 159959
(140287, 8, 14341, 0, 0, 1, 0, 0, 27404), -- 14341
(140287, 7, 38426, 0, 0, 1, 0, 0, 27404), -- 38426
(140287, 6, 8343, 0, 0, 1, 0, 0, 27404), -- 8343
(140287, 5, 4291, 0, 0, 1, 0, 0, 27404), -- 4291
(140287, 4, 2321, 0, 0, 1, 0, 0, 27404), -- 2321
(140287, 3, 2320, 0, 0, 1, 0, 0, 27404), -- 2320
(140287, 2, 160059, 0, 0, 1, 0, 0, 27404), -- 160059
(140287, 1, 7005, 0, 0, 1, 0, 0, 27404), -- 7005
(140285, 10, 163203, 0, 6426, 1, 0, 0, 27404), -- 163203
(140285, 9, 3857, 0, 0, 1, 0, 0, 27404), -- 3857
(140285, 8, 18567, 0, 0, 1, 0, 0, 27404), -- 18567
(140285, 7, 160298, 0, 0, 1, 0, 0, 27404), -- 160298
(140285, 6, 3466, 0, 0, 1, 0, 0, 27404), -- 3466
(140285, 5, 2880, 0, 0, 1, 0, 0, 27404), -- 2880
(140285, 4, 5956, 0, 0, 1, 0, 0, 27404), -- 5956
(140285, 3, 2901, 0, 0, 1, 0, 0, 27404), -- 2901
(140285, 2, 160502, 0, 0, 1, 0, 0, 27404), -- 160502
(140285, 1, 163569, 0, 0, 1, 0, 0, 27404), -- 163569
(133231, 15, 64670, 0, 0, 1, 0, 0, 27404), -- 64670
(133231, 14, 39505, 0, 0, 1, 0, 0, 27404), -- 39505
(133231, 13, 20815, 0, 0, 1, 0, 0, 27404), -- 20815
(133231, 12, 5956, 0, 0, 1, 0, 0, 27404), -- 5956
(133231, 11, 6217, 0, 0, 1, 0, 0, 27404), -- 6217
(133231, 10, 6256, 0, 0, 1, 0, 0, 27404), -- 6256
(133231, 9, 85663, 0, 0, 1, 0, 0, 27404), -- 85663
(133231, 8, 7005, 0, 0, 1, 0, 0, 27404), -- 7005
(133231, 7, 2901, 0, 0, 1, 0, 0, 27404), -- 2901
(133231, 6, 138293, 0, 0, 1, 0, 0, 27404), -- 138293
(133231, 5, 90146, 0, 0, 1, 0, 0, 27404), -- 90146
(133231, 4, 4470, 0, 0, 1, 0, 0, 27404), -- 4470
(133231, 3, 38682, 0, 0, 1, 0, 0, 27404), -- 38682
(133231, 2, 3371, 0, 0, 1, 0, 0, 27404), -- 3371
(133231, 1, 39354, 0, 0, 1, 0, 0, 27404), -- 39354
(143138, 5, 163132, 0, 0, 1, 0, 0, 27404), -- 163132
(143138, 4, 163133, 0, 0, 1, 0, 0, 27404), -- 163133
(143138, 3, 162554, 0, 0, 1, 0, 0, 27404), -- 162554
(143138, 2, 128844, 0, 0, 1, 0, 0, 27404), -- 128844
(143138, 1, 92924, 0, 0, 1, 0, 0, 27404), -- 92924
(143136, 15, 52188, 0, 0, 1, 0, 0, 27404), -- 52188
(143136, 14, 20815, 0, 0, 1, 0, 0, 27404), -- 20815
(143136, 13, 158205, 0, 0, 1, 0, 0, 27404), -- 158205
(143136, 12, 158186, 0, 0, 1, 0, 0, 27404), -- 158186
(143136, 11, 64670, 0, 0, 1, 0, 0, 27404), -- 64670
(143136, 10, 39354, 0, 0, 1, 0, 0, 27404), -- 39354
(143136, 9, 39489, 0, 0, 1, 0, 0, 27404), -- 39489
(143136, 8, 39505, 0, 0, 1, 0, 0, 27404), -- 39505
(143136, 7, 6533, 0, 0, 1, 0, 0, 27404), -- 6533
(143136, 6, 6532, 0, 0, 1, 0, 0, 27404), -- 6532
(143136, 5, 6530, 0, 0, 1, 0, 0, 27404), -- 6530
(143136, 4, 6529, 0, 0, 1, 0, 0, 27404), -- 6529
(143136, 3, 136377, 0, 0, 1, 0, 0, 27404), -- 136377
(143136, 2, 6365, 0, 0, 1, 0, 0, 27404), -- 6365
(143136, 1, 6256, 0, 0, 1, 0, 0, 27404), -- 6256
(132114, 7, 156647, 0, 0, 1, 0, 0, 27404), -- 156647
(132114, 6, 156646, 0, 0, 1, 0, 0, 27404), -- 156646
(132114, 5, 156641, 0, 0, 1, 0, 0, 27404), -- 156641
(132114, 4, 156640, 0, 0, 1, 0, 0, 27404), -- 156640
(132114, 3, 156643, 0, 0, 1, 0, 0, 27404), -- 156643
(132114, 2, 156642, 0, 0, 1, 0, 0, 27404), -- 156642
(132114, 1, 156649, 0, 6261, 1, 0, 0, 27404), -- 156649
(129556, 3, 154132, 0, 0, 1, 0, 0, 27404), -- 154132
(129556, 2, 154131, 0, 0, 1, 0, 0, 27404), -- 154131
(129556, 1, 154133, 0, 0, 1, 0, 0, 27404), -- 154133
(138033, 4, 34498, 0, 0, 1, 0, 0, 27404), -- 34498
(138033, 3, 104324, 0, 0, 1, 0, 0, 27404), -- 104324
(138033, 2, 104323, 0, 0, 1, 0, 0, 27404), -- 104323
(138077, 3, 163133, 0, 0, 1, 0, 0, 27404), -- 163133
(138077, 2, 162556, 0, 0, 1, 0, 0, 27404), -- 162556
(138077, 1, 162554, 0, 0, 1, 0, 0, 27404), -- 162554
(129375, 4, 87541, 0, 3890, 1, 0, 0, 27404), -- 87541
(129375, 3, 163643, 0, 0, 1, 0, 0, 27404), -- 163643
(129375, 2, 128842, 0, 0, 1, 0, 0, 27404), -- 128842
(129375, 1, 128763, 0, 0, 1, 0, 0, 27404), -- 128763
(129376, 4, 36981, 0, 0, 1, 0, 0, 27404), -- 36981
(129376, 3, 163522, 0, 0, 1, 0, 0, 27404), -- 163522
(129376, 2, 128842, 0, 0, 1, 0, 0, 27404), -- 128842
(129376, 1, 128763, 0, 0, 1, 0, 0, 27404), -- 128763
(122465, 6, 39987, 0, 0, 1, 0, 0, 27404), -- 39987
(122465, 4, 140341, 0, 0, 1, 0, 0, 27404), -- 140341
(122465, 3, 33451, 0, 0, 1, 0, 0, 27404), -- 33451
(122465, 2, 160711, 3, 0, 1, 0, 0, 27404), -- 160711
(122465, 1, 160518, 0, 0, 1, 0, 0, 27404), -- 160518
(138078, 8, 81414, 0, 0, 1, 0, 0, 27404), -- 81414
(138078, 7, 82449, 0, 0, 1, 0, 0, 27404), -- 82449
(138078, 6, 81402, 0, 0, 1, 0, 0, 27404), -- 81402
(138078, 5, 82448, 0, 0, 1, 0, 0, 27404), -- 82448
(138078, 4, 6533, 0, 0, 1, 0, 0, 27404), -- 6533
(138078, 3, 161383, 0, 0, 1, 0, 0, 27404), -- 161383
(138078, 2, 161373, 0, 0, 1, 0, 0, 27404), -- 161373
(138078, 1, 160398, 0, 0, 1, 0, 0, 27404), -- 160398
(122449, 9, 58257, 0, 0, 1, 0, 0, 27404), -- 58257
(122449, 8, 58256, 0, 0, 1, 0, 0, 27404), -- 58256
(122449, 7, 58274, 0, 0, 1, 0, 0, 27404), -- 58274
(122449, 6, 58261, 0, 0, 1, 0, 0, 27404), -- 58261
(122449, 5, 58260, 0, 0, 1, 0, 0, 27404), -- 58260
(122449, 4, 58275, 0, 0, 1, 0, 0, 27404), -- 58275
(122449, 3, 58263, 0, 0, 1, 0, 0, 27404), -- 58263
(122449, 2, 58262, 0, 0, 1, 0, 0, 27404), -- 58262
(122449, 1, 58277, 0, 0, 1, 0, 0, 27404), -- 58277
(122463, 2, 63044, 0, 0, 1, 11652, 0, 27404), -- 63044
(122463, 1, 63045, 0, 0, 1, 11652, 0, 27404), -- 63045
(129226, 5, 153570, 0, 0, 1, 0, 0, 27404), -- 153570
(129226, 4, 153569, 0, 0, 1, 0, 0, 27404), -- 153569
(129226, 3, 153568, 0, 0, 1, 0, 0, 27404), -- 153568
(129226, 2, 153567, 0, 0, 1, 0, 0, 27404), -- 153567
(129226, 1, 153566, 0, 0, 1, 0, 0, 27404), -- 153566
(125311, 7, 6530, 0, 0, 1, 0, 0, 27404), -- 6530
(125311, 6, 6256, 0, 0, 1, 0, 0, 27404), -- 6256
(125311, 5, 161128, 0, 0, 1, 0, 0, 27404), -- 161128
(125311, 4, 162588, 0, 0, 1, 0, 0, 27404), -- 162588
(125311, 3, 38682, 0, 0, 1, 0, 0, 27404), -- 38682
(125311, 2, 39354, 0, 0, 1, 0, 0, 27404), -- 39354
(141910, 7, 163117, 0, 0, 1, 0, 0, 27404), -- 163117
(141910, 6, 162582, 0, 0, 1, 0, 0, 27404), -- 162582
(141910, 5, 162550, 0, 0, 1, 0, 0, 27404), -- 162550
(141910, 4, 163118, 0, 0, 1, 0, 0, 27404), -- 163118
(141910, 3, 162558, 0, 0, 1, 0, 0, 27404), -- 162558
(141910, 2, 161346, 0, 0, 1, 0, 0, 27404), -- 161346
(141910, 1, 162565, 0, 0, 1, 0, 0, 27404), -- 162565
(142521, 7, 163784, 0, 0, 1, 0, 0, 27404), -- 163784
(142521, 5, 163133, 0, 0, 1, 0, 0, 27404), -- 163133
(142521, 2, 162556, 0, 0, 1, 0, 0, 27404), -- 162556
(142521, 1, 162554, 0, 0, 1, 0, 0, 27404), -- 162554
(141605, 6, 39354, 0, 0, 1, 0, 0, 27404), -- 39354
(141605, 5, 64670, 0, 0, 1, 0, 0, 27404), -- 64670
(141605, 4, 39489, 0, 0, 1, 0, 0, 27404), -- 39489
(141605, 3, 39505, 0, 0, 1, 0, 0, 27404), -- 39505
(141605, 2, 158205, 0, 0, 1, 0, 0, 27404), -- 158205
(141605, 1, 158186, 0, 0, 1, 0, 0, 27404), -- 158186
(137334, 15, 163203, 0, 6426, 1, 0, 0, 27404), -- 163203
(137334, 14, 160298, 0, 0, 1, 0, 0, 27404), -- 160298
(137334, 13, 159959, 0, 0, 1, 0, 0, 27404), -- 159959
(137334, 12, 160059, 0, 0, 1, 0, 0, 27404), -- 160059
(137334, 11, 158205, 0, 0, 1, 0, 0, 27404), -- 158205
(137334, 10, 158186, 0, 0, 1, 0, 0, 27404), -- 158186
(137334, 9, 163569, 0, 0, 1, 0, 0, 27404), -- 163569
(137334, 8, 160502, 0, 0, 1, 0, 0, 27404), -- 160502
(137334, 7, 160712, 0, 0, 1, 0, 0, 27404), -- 160712
(137334, 6, 160710, 0, 0, 1, 0, 0, 27404), -- 160710
(137334, 5, 160709, 0, 0, 1, 0, 0, 27404), -- 160709
(137334, 4, 160400, 0, 0, 1, 0, 0, 27404), -- 160400
(137334, 3, 160399, 0, 0, 1, 0, 0, 27404), -- 160399
(137334, 2, 160398, 0, 0, 1, 0, 0, 27404), -- 160398
(137334, 1, 160705, 0, 0, 1, 0, 0, 27404), -- 160705
(125879, 4, 163042, 0, 6420, 1, 0, 0, 27404), -- 163042
(125879, 3, 163589, 0, 6007, 1, 0, 0, 27404), -- 163589
(125879, 2, 163568, 0, 5834, 1, 0, 0, 27404), -- 163568
(141919, 5, 52188, 0, 0, 1, 0, 0, 27404), -- 52188
(141919, 4, 20815, 0, 0, 1, 0, 0, 27404), -- 20815
(141919, 3, 153166, 0, 0, 1, 0, 0, 27404), -- 153166
(141919, 2, 153168, 0, 0, 1, 0, 0, 27404), -- 153168
(141919, 1, 153167, 0, 0, 1, 0, 0, 27404), -- 153167
(141914, 7, 3371, 0, 0, 1, 0, 0, 27404), -- 3371
(141914, 6, 158205, 0, 0, 1, 0, 0, 27404), -- 158205
(141914, 5, 158186, 0, 0, 1, 0, 0, 27404), -- 158186
(141914, 4, 64670, 0, 0, 1, 0, 0, 27404), -- 64670
(141914, 3, 39354, 0, 0, 1, 0, 0, 27404), -- 39354
(141914, 2, 39489, 0, 0, 1, 0, 0, 27404), -- 39489
(141914, 1, 39505, 0, 0, 1, 0, 0, 27404), -- 39505
(122703, 1, 3371, 0, 0, 1, 0, 0, 27404), -- 3371
(122693, 10, 163203, 0, 6426, 1, 0, 0, 27404), -- 163203
(122693, 9, 3857, 0, 0, 1, 0, 0, 27404), -- 3857
(122693, 8, 18567, 0, 0, 1, 0, 0, 27404), -- 18567
(122693, 7, 160298, 0, 0, 1, 0, 0, 27404), -- 160298
(122693, 6, 3466, 0, 0, 1, 0, 0, 27404), -- 3466
(122693, 5, 2880, 0, 0, 1, 0, 0, 27404), -- 2880
(122693, 4, 5956, 0, 0, 1, 0, 0, 27404), -- 5956
(122693, 3, 2901, 0, 0, 1, 0, 0, 27404), -- 2901
(122693, 2, 160502, 0, 0, 1, 0, 0, 27404), -- 160502
(122693, 1, 163569, 0, 0, 1, 0, 0, 27404), -- 163569
(122694, 7, 163837, 0, 6048, 1, 0, 0, 27404), -- 163837
(122694, 6, 20815, 0, 0, 1, 0, 0, 27404), -- 20815
(122694, 5, 3857, 0, 0, 1, 0, 0, 27404), -- 3857
(122694, 4, 3466, 0, 0, 1, 0, 0, 27404), -- 3466
(122694, 3, 2880, 0, 0, 1, 0, 0, 27404), -- 2880
(122694, 2, 30746, 0, 0, 1, 0, 0, 27404), -- 30746
(122694, 1, 2901, 0, 0, 1, 0, 0, 27404), -- 2901
(127112, 7, 3857, 0, 0, 1, 0, 0, 27404), -- 3857
(127112, 6, 18567, 0, 0, 1, 0, 0, 27404), -- 18567
(127112, 5, 160298, 0, 0, 1, 0, 0, 27404), -- 160298
(127112, 4, 3466, 0, 0, 1, 0, 0, 27404), -- 3466
(127112, 3, 2880, 0, 0, 1, 0, 0, 27404), -- 2880
(127112, 2, 5956, 0, 0, 1, 0, 0, 27404), -- 5956
(127112, 1, 2901, 0, 0, 1, 0, 0, 27404); -- 2901

REPLACE INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`, `VerifiedBuild`) VALUES
(5749, -898.859, 958.191, 7, 99, 0, 'Dazar\'alor Tailoring Trainer', 27404),
(5748, -913.144, 978.847, 7, 99, 0, 'Dazar\'alor Skinning Trainer', 27404),
(5747, -994.036, 968.684, 7, 99, 0, 'Dazar\'alor Mining Trainer', 27404),
(5746, -912.731, 970.017, 7, 99, 0, 'Dazar\'alor Leatherworking Trainer', 27404),
(5745, -975.519, 885.873, 7, 99, 0, 'Dazar\'alor Jewelcrafting Trainer', 27404),
(5744, -1083.71, 765.731, 7, 99, 0, 'Dazar\'alor Inscription Trainer', 27404),
(5743, -935.004, 1022.56, 7, 99, 0, 'Dazar\'alor Herbalism Trainer', 27404),
(5742, -701.03, 788.536, 7, 99, 0, 'Dazar\'alor Fishing Trainer', 27404),
(5741, -1024.35, 940.042, 7, 99, 0, 'Dazar\'alor Engineering Trainer', 27404),
(5740, -925.201, 884.543, 7, 99, 0, 'Dazar\'alor Enchanting Trainer', 27404),
(5739, -1100.1, 841.271, 7, 99, 0, 'Dazar\'alor Cooking Trainer', 27404),
(5737, -981.319, 981.747, 7, 99, 0, 'Dazar\'alor Blacksmithing Trainer', 27404),
(5738, -1069.81, 835.047, 7, 99, 0, 'Dazar\'alor Archaeology Trainer', 27404),
(5758, -1923.38, 677.092, 7, 99, 0, 'Dazar\'alor Transmogrifier', 27404),
(5736, -976.161, 1021.67, 7, 99, 0, 'Dazar\'alor Alchemy Trainer', 27404),
(5789, -1073.06, 782.748, 7, 99, 0, 'Dazar\'alor Trade Goods Vendor', 27404),
(5755, -1083.88, 765.488, 7, 99, 0, 'Dazar\'alor Repair Vendor', 27404),
(5788, -1076.24, 782.519, 7, 99, 0, 'Dazar\'alor General Goods Vendor', 27404),
(5735, -943.861, 922.269, 7, 99, 0, 'Dazar\'alor Stable Master', 27404),
(5754, -1124.5, 773.323, 7, 99, 0, 'Dazar\'alor Portals', 27404),
(5753, -919.49, 806.966, 7, 99, 0, 'Dazar\'alor Training Dummies', 27404),
(5756, -2285.31, 803.381, 7, 99, 0, 'Dazar\'alor Ship to Echo Isles', 27404),
(5752, -1007.32, 941.503, 7, 99, 0, 'Dazar\'alor Scrapper', 27404),
(5751, -1097.8, 805.084, 7, 99, 0, 'The Golden Throne', 27404),
(5733, -1126.67, 804.477, 7, 99, 0, 'Dazar\'alor Inn', 27404),
(5790, -1083.11, 792.083, 7, 99, 0, 'Dazar\'alor Guild Master & Vendor', 27404),
(5732, -1034.87, 750.224, 7, 99, 0, 'Dazar\'alor Flight Master', 27404),
(5734, -1125.99, 771.285, 7, 99, 0, 'Zandalari Empire Emissary', 27404),
(5821, 2078.76, 2827.69, 7, 99, 0, 'Voldunai Emissary', 27404),
(5750, -333.03, -341.634, 7, 99, 0, 'Tortollan Seekers Emissary', 27404),
(5822, 742.286, 1393.92, 7, 99, 0, 'Talanji\'s Expedition Emissary', 27404),
(5731, -1783.79, 877.757, 7, 99, 0, 'Dazar\'alor Barber', 27404),
(5730, -1124.34, 840.668, 7, 99, 0, 'Dazar\'alor Bank', 27404);

DELETE FROM `gossip_menu` WHERE (`MenuId`=21179 AND `TextId`=32125) OR (`MenuId`=21074 AND `TextId`=31922) OR (`MenuId`=21178 AND `TextId`=32124) OR (`MenuId`=21534 AND `TextId`=32822) OR (`MenuId`=21492 AND `TextId`=32741) OR (`MenuId`=21493 AND `TextId`=32743) OR (`MenuId`=21515 AND `TextId`=32794) OR (`MenuId`=6944 AND `TextId`=7778) OR (`MenuId`=21925 AND `TextId`=33525) OR (`MenuId`=22290 AND `TextId`=34160) OR (`MenuId`=21933 AND `TextId`=33493) OR (`MenuId`=22615 AND `TextId`=34787) OR (`MenuId`=6381 AND `TextId`=7574) OR (`MenuId`=23251 AND `TextId`=36021) OR (`MenuId`=23252 AND `TextId`=7615) OR (`MenuId`=21947 AND `TextId`=33575) OR (`MenuId`=21409 AND `TextId`=32610) OR (`MenuId`=22498 AND `TextId`=34550) OR (`MenuId`=21413 AND `TextId`=35643) OR (`MenuId`=21356 AND `TextId`=32495) OR (`MenuId`=22416 AND `TextId`=34384) OR (`MenuId`=22414 AND `TextId`=34381) OR (`MenuId`=21807 AND `TextId`=33318) OR (`MenuId`=22415 AND `TextId`=34383) OR (`MenuId`=21796 AND `TextId`=33306) OR (`MenuId`=22205 AND `TextId`=34017) OR (`MenuId`=21764 AND `TextId`=33233) OR (`MenuId`=23441 AND `TextId`=36312) OR (`MenuId`=21867 AND `TextId`=33413) OR (`MenuId`=21357 AND `TextId`=32498) OR (`MenuId`=21358 AND `TextId`=32499) OR (`MenuId`=22976 AND `TextId`=35541) OR (`MenuId`=23120 AND `TextId`=35751) OR (`MenuId`=21043 AND `TextId`=31799) OR (`MenuId`=22422 AND `TextId`=34391) OR (`MenuId`=22020 AND `TextId`=33733) OR (`MenuId`=21410 AND `TextId`=32611) OR (`MenuId`=21847 AND `TextId`=33385) OR (`MenuId`=21856 AND `TextId`=33394) OR (`MenuId`=21857 AND `TextId`=33395) OR (`MenuId`=21848 AND `TextId`=33386) OR (`MenuId`=21845 AND `TextId`=33373) OR (`MenuId`=21852 AND `TextId`=33390) OR (`MenuId`=21850 AND `TextId`=33388) OR (`MenuId`=21849 AND `TextId`=33387) OR (`MenuId`=21851 AND `TextId`=33389) OR (`MenuId`=22632 AND `TextId`=34834) OR (`MenuId`=23184 AND `TextId`=35867) OR (`MenuId`=22155 AND `TextId`=33942) OR (`MenuId`=22951 AND `TextId`=35511) OR (`MenuId`=21672 AND `TextId`=33009) OR (`MenuId`=23058 AND `TextId`=35648) OR (`MenuId`=23017 AND `TextId`=35600) OR (`MenuId`=23057 AND `TextId`=35647) OR (`MenuId`=23056 AND `TextId`=35646) OR (`MenuId`=23035 AND `TextId`=35621) OR (`MenuId`=23034 AND `TextId`=35620) OR (`MenuId`=23033 AND `TextId`=35619) OR (`MenuId`=23032 AND `TextId`=35618) OR (`MenuId`=23031 AND `TextId`=35616) OR (`MenuId`=23029 AND `TextId`=35614) OR (`MenuId`=23028 AND `TextId`=35613) OR (`MenuId`=23026 AND `TextId`=35611) OR (`MenuId`=23025 AND `TextId`=35610) OR (`MenuId`=23023 AND `TextId`=35608) OR (`MenuId`=23064 AND `TextId`=35660) OR (`MenuId`=23018 AND `TextId`=35602) OR (`MenuId`=23129 AND `TextId`=35761) OR (`MenuId`=23059 AND `TextId`=35649) OR (`MenuId`=23060 AND `TextId`=35650) OR (`MenuId`=23127 AND `TextId`=35759) OR (`MenuId`=23012 AND `TextId`=35596) OR (`MenuId`=23010 AND `TextId`=35594) OR (`MenuId`=23007 AND `TextId`=35591) OR (`MenuId`=23003 AND `TextId`=35585) OR (`MenuId`=23006 AND `TextId`=35588) OR (`MenuId`=23005 AND `TextId`=35587) OR (`MenuId`=23004 AND `TextId`=35586) OR (`MenuId`=23002 AND `TextId`=35584) OR (`MenuId`=23132 AND `TextId`=35764) OR (`MenuId`=23001 AND `TextId`=35583) OR (`MenuId`=23000 AND `TextId`=35581) OR (`MenuId`=22998 AND `TextId`=35582) OR (`MenuId`=23179 AND `TextId`=35855) OR (`MenuId`=22999 AND `TextId`=35580) OR (`MenuId`=23197 AND `TextId`=35884) OR (`MenuId`=22997 AND `TextId`=35579) OR (`MenuId`=22996 AND `TextId`=35578) OR (`MenuId`=22445 AND `TextId`=34568);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(21179, 32125, 27404), -- 123062
(21074, 31922, 27404), -- 121706
(21178, 32124, 27404), -- 123060
(21534, 32822, 27404), -- 127377
(21492, 32741, 27404), -- 126564
(21493, 32743, 27404), -- 126560
(21515, 32794, 27404), -- 127030
(6944, 7778, 27404), -- 133242
(21925, 33525, 27404), -- 131216
(22290, 34160, 27404), -- 122689
(21933, 33493, 27404), -- 131287
(22615, 34787, 27404), -- 126684
(6381, 7574, 27404), -- 143138
(23251, 36021, 27404), -- 143156
(23252, 7615, 27404), -- 143156
(21947, 33575, 27404), -- 131379
(21409, 32610, 27404), -- 126009
(22498, 34550, 27404), -- 125312
(21413, 35643, 27404), -- 126005
(21356, 32495, 27404), -- 125485
(22416, 34384, 27404), -- 134552
(22414, 34381, 27404), -- 129589
(21807, 33318, 27404), -- 129589
(22415, 34383, 27404), -- 134553
(21796, 33306, 27404), -- 129556
(22205, 34017, 27404), -- 133538
(21764, 33233, 27404), -- 129226
(23441, 36312, 27404), -- 134346
(21867, 33413, 27404), -- 129929
(21357, 32498, 27404), -- 125489
(21358, 32499, 27404), -- 125489
(22976, 35541, 27404), -- 138051
(23120, 35751, 27404), -- 141584
(21043, 31799, 27404), -- 131470
(22422, 34391, 27404), -- 135441
(22020, 33733, 27404), -- 132394
(21410, 32611, 27404), -- 125822
(21847, 33385, 27404), -- 129994
(21856, 33394, 27404), -- 130117
(21857, 33395, 27404), -- 130120
(21848, 33386, 27404), -- 129998
(21845, 33373, 27404), -- 129997
(21852, 33390, 27404), -- 130108
(21850, 33388, 27404), -- 130103
(21849, 33387, 27404), -- 130100
(21851, 33389, 27404), -- 130105
(22632, 34834, 27404), -- 122703
(23184, 35867, 27404), -- 122694
(22155, 33942, 27404), -- 127112
(22951, 35511, 27404), -- 128087
(21672, 33009, 27404), -- 128087
(23058, 35648, 27404), -- 131216
(23017, 35600, 27404), -- 131216
(23057, 35647, 27404), -- 131216
(23056, 35646, 27404), -- 131216
(23035, 35621, 27404), -- 131216
(23034, 35620, 27404), -- 131216
(23033, 35619, 27404), -- 131216
(23032, 35618, 27404), -- 131216
(23031, 35616, 27404), -- 131216
(23029, 35614, 27404), -- 131216
(23028, 35613, 27404), -- 131216
(23026, 35611, 27404), -- 131216
(23025, 35610, 27404), -- 131216
(23023, 35608, 27404), -- 131216
(23064, 35660, 27404), -- 131216
(23018, 35602, 27404), -- 131216
(23129, 35761, 27404), -- 131216
(23059, 35649, 27404), -- 131216
(23060, 35650, 27404), -- 131216
(23127, 35759, 27404), -- 131216
(23012, 35596, 27404), -- 131216
(23010, 35594, 27404), -- 131216
(23007, 35591, 27404), -- 131216
(23003, 35585, 27404), -- 131216
(23006, 35588, 27404), -- 131216
(23005, 35587, 27404), -- 131216
(23004, 35586, 27404), -- 131216
(23002, 35584, 27404), -- 131216
(23132, 35764, 27404), -- 131216
(23001, 35583, 27404), -- 131216
(23000, 35581, 27404), -- 131216
(22998, 35582, 27404), -- 131216
(23179, 35855, 27404), -- 131216
(22999, 35580, 27404), -- 131216
(23197, 35884, 27404), -- 131216
(22997, 35579, 27404), -- 131216
(22996, 35578, 27404), -- 131216
(22445, 34568, 27404); -- 135775

DELETE FROM `page_text` WHERE `ID`=7286;
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`, `PlayerConditionID`, `Flags`, `VerifiedBuild`) VALUES
(7286, 'Faithful Servant,\n\nI have returned, as promised. The time has come to recall our brothers and sisters that sailed with me into exile during the Cataclysm. The time has come to once again unite the Zandalari under a single banner.\n\nYou each have your tasks, see to them. \n\nYour Prophet,\nZul\n\n\nOh, and as for $p, know that I forsaw you reading this.', 0, 0, 0, 27404); -- 7286


DELETE FROM `npc_vendor` WHERE (`entry`=32642 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=60335 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=33449 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=35953 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=35947 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=35948 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=35951 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=35952 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=35950 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=33454 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=33452 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=35949 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=33451 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=33443 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=33445 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=33444 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=35954 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=44574 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=44573 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=44575 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=44571 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32642 AND `item`=44570 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135750 AND `item`=37460 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135740 AND `item`=163203 AND `ExtendedCost`=6426 AND `type`=1) OR (`entry`=135740 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135740 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135740 AND `item`=160298 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135740 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135740 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135740 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135740 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135740 AND `item`=160502 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135740 AND `item`=163569 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=135459 AND `item`=162768 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=135459 AND `item`=162767 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=135459 AND `item`=162762 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=135459 AND `item`=162754 AND `ExtendedCost`=6418 AND `type`=1) OR (`entry`=135459 AND `item`=162733 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=135459 AND `item`=162732 AND `ExtendedCost`=6418 AND `type`=1) OR (`entry`=135459 AND `item`=162718 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=135459 AND `item`=162724 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=135459 AND `item`=162723 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=135459 AND `item`=162703 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=135459 AND `item`=162697 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=135459 AND `item`=163315 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=135459 AND `item`=162693 AND `ExtendedCost`=6419 AND `type`=1) OR (`entry`=135459 AND `item`=161774 AND `ExtendedCost`=6308 AND `type`=1) OR (`entry`=135459 AND `item`=160547 AND `ExtendedCost`=6306 AND `type`=1) OR (`entry`=135459 AND `item`=163501 AND `ExtendedCost`=6442 AND `type`=1) OR (`entry`=135459 AND `item`=161551 AND `ExtendedCost`=6310 AND `type`=1) OR (`entry`=135459 AND `item`=161536 AND `ExtendedCost`=6310 AND `type`=1) OR (`entry`=135459 AND `item`=161520 AND `ExtendedCost`=6310 AND `type`=1) OR (`entry`=135459 AND `item`=161492 AND `ExtendedCost`=6310 AND `type`=1) OR (`entry`=135459 AND `item`=161538 AND `ExtendedCost`=6309 AND `type`=1) OR (`entry`=135459 AND `item`=161528 AND `ExtendedCost`=6309 AND `type`=1) OR (`entry`=135459 AND `item`=161506 AND `ExtendedCost`=6309 AND `type`=1) OR (`entry`=135459 AND `item`=161493 AND `ExtendedCost`=6309 AND `type`=1) OR (`entry`=135459 AND `item`=160531 AND `ExtendedCost`=6305 AND `type`=1) OR (`entry`=140513 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=6532 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=6530 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=4400 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=4399 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=4289 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=4340 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=4342 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=4341 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=2325 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=2678 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=38426 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=14341 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=8343 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=4291 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=2321 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=160059 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=160298 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=159959 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=158205 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=140513 AND `item`=158186 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125039 AND `item`=6530 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125039 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125039 AND `item`=162588 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125039 AND `item`=38682 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125039 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125039 AND `item`=163784 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125039 AND `item`=162561 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125039 AND `item`=162556 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125039 AND `item`=161128 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(32642, 24, 4470, 0, 0, 1, 0, 0, 27404), -- 4470
(32642, 23, 60335, 0, 0, 1, 0, 0, 27404), -- 60335
(32642, 22, 33449, 0, 0, 1, 0, 0, 27404), -- 33449
(32642, 21, 159, 0, 0, 1, 0, 0, 27404), -- 159
(32642, 20, 35953, 0, 0, 1, 0, 0, 27404), -- 35953
(32642, 19, 35947, 0, 0, 1, 0, 0, 27404), -- 35947
(32642, 18, 35948, 0, 0, 1, 0, 0, 27404), -- 35948
(32642, 17, 35951, 0, 0, 1, 0, 0, 27404), -- 35951
(32642, 16, 35952, 0, 0, 1, 0, 0, 27404), -- 35952
(32642, 15, 35950, 0, 0, 1, 0, 0, 27404), -- 35950
(32642, 14, 33454, 0, 0, 1, 0, 0, 27404), -- 33454
(32642, 13, 33452, 0, 0, 1, 0, 0, 27404), -- 33452
(32642, 12, 35949, 0, 0, 1, 0, 0, 27404), -- 35949
(32642, 11, 33451, 0, 0, 1, 0, 0, 27404), -- 33451
(32642, 10, 33443, 0, 0, 1, 0, 0, 27404), -- 33443
(32642, 8, 33445, 0, 0, 1, 0, 0, 27404), -- 33445
(32642, 7, 33444, 0, 0, 1, 0, 0, 27404), -- 33444
(32642, 6, 35954, 0, 0, 1, 0, 0, 27404), -- 35954
(32642, 5, 44574, 0, 0, 1, 0, 0, 27404), -- 44574
(32642, 4, 44573, 0, 0, 1, 0, 0, 27404), -- 44573
(32642, 3, 44575, 0, 0, 1, 0, 0, 27404), -- 44575
(32642, 2, 44571, 0, 0, 1, 0, 0, 27404), -- 44571
(32642, 1, 44570, 0, 0, 1, 0, 0, 27404), -- 44570
(135750, 1, 37460, 0, 0, 1, 0, 0, 27404), -- 37460
(135740, 10, 163203, 0, 6426, 1, 0, 0, 27404), -- 163203
(135740, 9, 3857, 0, 0, 1, 0, 0, 27404), -- 3857
(135740, 8, 18567, 0, 0, 1, 0, 0, 27404), -- 18567
(135740, 7, 160298, 0, 0, 1, 0, 0, 27404), -- 160298
(135740, 6, 3466, 0, 0, 1, 0, 0, 27404), -- 3466
(135740, 5, 2880, 0, 0, 1, 0, 0, 27404), -- 2880
(135740, 4, 5956, 0, 0, 1, 0, 0, 27404), -- 5956
(135740, 3, 2901, 0, 0, 1, 0, 0, 27404), -- 2901
(135740, 2, 160502, 0, 0, 1, 0, 0, 27404), -- 160502
(135740, 1, 163569, 0, 0, 1, 0, 0, 27404), -- 163569
(135459, 25, 162768, 0, 6419, 1, 0, 0, 27404), -- 162768
(135459, 24, 162767, 0, 6419, 1, 0, 0, 27404), -- 162767
(135459, 23, 162762, 0, 6419, 1, 0, 0, 27404), -- 162762
(135459, 22, 162754, 0, 6418, 1, 0, 0, 27404), -- 162754
(135459, 21, 162733, 0, 6419, 1, 0, 0, 27404), -- 162733
(135459, 20, 162732, 0, 6418, 1, 0, 0, 27404), -- 162732
(135459, 19, 162718, 0, 6419, 1, 0, 0, 27404), -- 162718
(135459, 18, 162724, 0, 6419, 1, 0, 0, 27404), -- 162724
(135459, 17, 162723, 0, 6419, 1, 0, 0, 27404), -- 162723
(135459, 16, 162703, 0, 6419, 1, 0, 0, 27404), -- 162703
(135459, 15, 162697, 0, 6419, 1, 0, 0, 27404), -- 162697
(135459, 14, 163315, 0, 6419, 1, 0, 0, 27404), -- 163315
(135459, 13, 162693, 0, 6419, 1, 0, 0, 27404), -- 162693
(135459, 12, 161774, 0, 6308, 1, 0, 0, 27404), -- 161774
(135459, 11, 160547, 0, 6306, 1, 0, 0, 27404), -- 160547
(135459, 10, 163501, 0, 6442, 1, 0, 0, 27404), -- 163501
(135459, 9, 161551, 0, 6310, 1, 0, 0, 27404), -- 161551
(135459, 8, 161536, 0, 6310, 1, 0, 0, 27404), -- 161536
(135459, 7, 161520, 0, 6310, 1, 0, 0, 27404), -- 161520
(135459, 6, 161492, 0, 6310, 1, 0, 0, 27404), -- 161492
(135459, 5, 161538, 0, 6309, 1, 0, 0, 27404), -- 161538
(135459, 4, 161528, 0, 6309, 1, 0, 0, 27404), -- 161528
(135459, 3, 161506, 0, 6309, 1, 0, 0, 27404), -- 161506
(135459, 2, 161493, 0, 6309, 1, 0, 0, 27404), -- 161493
(135459, 1, 160531, 0, 6305, 1, 0, 0, 27404), -- 160531
(140513, 34, 39505, 0, 0, 1, 0, 0, 27404), -- 39505
(140513, 33, 20815, 0, 0, 1, 0, 0, 27404), -- 20815
(140513, 32, 6532, 0, 0, 1, 0, 0, 27404), -- 6532
(140513, 31, 6530, 0, 0, 1, 0, 0, 27404), -- 6530
(140513, 30, 4400, 0, 0, 1, 0, 0, 27404), -- 4400
(140513, 29, 4399, 0, 0, 1, 0, 0, 27404), -- 4399
(140513, 28, 4289, 0, 0, 1, 0, 0, 27404), -- 4289
(140513, 27, 3371, 0, 0, 1, 0, 0, 27404), -- 3371
(140513, 26, 4340, 0, 0, 1, 0, 0, 27404), -- 4340
(140513, 25, 4342, 0, 0, 1, 0, 0, 27404), -- 4342
(140513, 24, 4341, 0, 0, 1, 0, 0, 27404), -- 4341
(140513, 23, 2325, 0, 0, 1, 0, 0, 27404), -- 2325
(140513, 22, 2604, 0, 0, 1, 0, 0, 27404), -- 2604
(140513, 21, 3857, 0, 0, 1, 0, 0, 27404), -- 3857
(140513, 20, 3466, 0, 0, 1, 0, 0, 27404), -- 3466
(140513, 19, 2880, 0, 0, 1, 0, 0, 27404), -- 2880
(140513, 18, 2678, 0, 0, 1, 0, 0, 27404), -- 2678
(140513, 17, 38426, 0, 0, 1, 0, 0, 27404), -- 38426
(140513, 16, 14341, 0, 0, 1, 0, 0, 27404), -- 14341
(140513, 15, 8343, 0, 0, 1, 0, 0, 27404), -- 8343
(140513, 14, 4291, 0, 0, 1, 0, 0, 27404), -- 4291
(140513, 13, 2321, 0, 0, 1, 0, 0, 27404), -- 2321
(140513, 12, 2320, 0, 0, 1, 0, 0, 27404), -- 2320
(140513, 11, 5956, 0, 0, 1, 0, 0, 27404), -- 5956
(140513, 10, 6217, 0, 0, 1, 0, 0, 27404), -- 6217
(140513, 9, 6256, 0, 0, 1, 0, 0, 27404), -- 6256
(140513, 8, 85663, 0, 0, 1, 0, 0, 27404), -- 85663
(140513, 7, 7005, 0, 0, 1, 0, 0, 27404), -- 7005
(140513, 6, 2901, 0, 0, 1, 0, 0, 27404), -- 2901
(140513, 5, 160059, 0, 0, 1, 0, 0, 27404), -- 160059
(140513, 4, 160298, 0, 0, 1, 0, 0, 27404), -- 160298
(140513, 3, 159959, 0, 0, 1, 0, 0, 27404), -- 159959
(140513, 2, 158205, 0, 0, 1, 0, 0, 27404), -- 158205
(140513, 1, 158186, 0, 0, 1, 0, 0, 27404), -- 158186
(125039, 9, 6530, 0, 0, 1, 0, 0, 27404), -- 6530
(125039, 8, 6256, 0, 0, 1, 0, 0, 27404), -- 6256
(125039, 7, 162588, 0, 0, 1, 0, 0, 27404), -- 162588
(125039, 6, 38682, 0, 0, 1, 0, 0, 27404), -- 38682
(125039, 5, 39354, 0, 0, 1, 0, 0, 27404), -- 39354
(125039, 4, 163784, 0, 0, 1, 0, 0, 27404), -- 163784
(125039, 3, 162561, 0, 0, 1, 0, 0, 27404), -- 162561
(125039, 2, 162556, 0, 0, 1, 0, 0, 27404), -- 162556
(125039, 1, 161128, 0, 0, 1, 0, 0, 27404); -- 161128

DELETE FROM `gossip_menu` WHERE (`MenuId`=21487 AND `TextId`=32756) OR (`MenuId`=21487 AND `TextId`=32733) OR (`MenuId`=22251 AND `TextId`=34093) OR (`MenuId`=21185 AND `TextId`=32137) OR (`MenuId`=22408 AND `TextId`=34375) OR (`MenuId`=22439 AND `TextId`=34426) OR (`MenuId`=21828 AND `TextId`=33358) OR (`MenuId`=9821 AND `TextId`=13584) OR (`MenuId`=22417 AND `TextId`=34385) OR (`MenuId`=21814 AND `TextId`=33343) OR (`MenuId`=21132 AND `TextId`=32033) OR (`MenuId`=22166 AND `TextId`=33964) OR (`MenuId`=6944 AND `TextId`=7778) OR (`MenuId`=23395 AND `TextId`=27278) OR (`MenuId`=22554 AND `TextId`=35126) OR (`MenuId`=21976 AND `TextId`=33651) OR (`MenuId`=23134 AND `TextId`=35766) OR (`MenuId`=21980 AND `TextId`=33657) OR (`MenuId`=22416 AND `TextId`=34384) OR (`MenuId`=22071 AND `TextId`=33801) OR (`MenuId`=22072 AND `TextId`=33800) OR (`MenuId`=21547 AND `TextId`=32856) OR (`MenuId`=21914 AND `TextId`=33508) OR (`MenuId`=22249 AND `TextId`=34089) OR (`MenuId`=21330 AND `TextId`=32419);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(21487, 32756, 27404), -- 126713
(21487, 32733, 27404), -- 126713
(22251, 34093, 27404), -- 133840
(21185, 32137, 27404), -- 121288
(22408, 34375, 27404), -- 121840
(22439, 34426, 27404), -- 135740
(21828, 33358, 27404), -- 120903
(9821, 13584, 27404), -- 135750
(22417, 34385, 27404), -- 135459
(21814, 33343, 27404), -- 131146
(21132, 32033, 27404), -- 121241
(22166, 33964, 27404), -- 133490
(6944, 7778, 27404), -- 121252
(23395, 27278, 27404), -- 138706
(22554, 35126, 27404), -- 138708
(21976, 33651, 27404), -- 131878
(23134, 35766, 27404), -- 131556
(21980, 33657, 27404), -- 130947
(22416, 34384, 27404), -- 143787
(22071, 33801, 27404), -- 132268
(22072, 33800, 27404), -- 132268
(21547, 32856, 27404), -- 126334
(21914, 33508, 27404), -- 131007
(22249, 34089, 27404), -- 134011
(21330, 32419, 27404); -- 125039

UPDATE `creature_template` SET `gossip_menu_id`='22417' WHERE  `entry`=135459;
UPDATE `creature_template` SET `gossip_menu_id`='22408' WHERE  `entry`=121840;
UPDATE `creature_template` SET `gossip_menu_id`='22166' WHERE  `entry`=133490;
UPDATE `creature_template` SET `gossip_menu_id`='22554' WHERE  `entry`=138708;
UPDATE `creature_template` SET `npcflag`='1168231104513' WHERE  `entry`=138708;
UPDATE `creature_template` SET `gossip_menu_id`='23134' WHERE  `entry`=131556;
UPDATE `creature_template` SET `gossip_menu_id`='23134' WHERE  `entry`=131557;
UPDATE `creature_template` SET `gossip_menu_id`='6944' WHERE  `entry`=127818;
UPDATE `creature_template` SET `gossip_menu_id`='22416' WHERE  `entry`=143787;
UPDATE `creature_template` SET `gossip_menu_id`='22249' WHERE  `entry`=134011;
UPDATE `creature_template` SET `gossip_menu_id`='6944' WHERE  `entry`=133242;
UPDATE `creature_template` SET `gossip_menu_id`='22615' WHERE  `entry`=126684;
UPDATE `creature_template` SET `gossip_menu_id`='21848' WHERE  `entry`=129998;


DELETE FROM `areatrigger_template` WHERE `Id` IN (19401, 19652, 16713, 17558, 16446);
INSERT INTO `areatrigger_template` (`Id`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `VerifiedBuild`) VALUES
(19401, 0, 0, 8, 8, 0, 0, 0, 0, 27404),
(19652, 0, 16, 4, 4, 0, 0, 0, 0, 27404),
(16713, 4, 0, 6, 6, 4, 4, 0.3, 0.3, 27404),
(17558, 0, 4, 1.5, 1.5, 0, 0, 0, 0, 27404),
(16446, 0, 0, 1, 1, 0, 0, 0, 0, 27404);

DELETE FROM `npc_vendor` WHERE (`entry`=120168 AND `item`=139496 AND `ExtendedCost`=6048 AND `type`=1) OR (`entry`=120168 AND `item`=158205 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=120168 AND `item`=158186 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=120168 AND `item`=64670 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=120168 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=120168 AND `item`=39489 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=120168 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(120168, 7, 139496, 0, 6048, 1, 0, 0, 27404), -- 139496
(120168, 6, 158205, 0, 0, 1, 0, 0, 27404), -- 158205
(120168, 5, 158186, 0, 0, 1, 0, 0, 27404), -- 158186
(120168, 4, 64670, 0, 0, 1, 0, 0, 27404), -- 64670
(120168, 3, 39354, 0, 0, 1, 0, 0, 27404), -- 39354
(120168, 2, 39489, 0, 0, 1, 0, 0, 27404), -- 39489
(120168, 1, 39505, 0, 0, 1, 0, 0, 27404); -- 39505

UPDATE `creature_template` SET `gossip_menu_id`='21433' WHERE  `entry`=135440;
UPDATE `creature_template` SET `gossip_menu_id`='21895', `npcflag`='1' WHERE  `entry`=130980;
UPDATE `creature_template` SET `gossip_menu_id`='21895', `npcflag`='1' WHERE  `entry`=130981;
UPDATE `creature_template` SET `gossip_menu_id`='23099' WHERE  `entry`=142096;

DELETE FROM `scenario_poi_points` WHERE (`CriteriaTreeID`=65440 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=65436 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=66193 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=65426 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=66191 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=65420 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=65395 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=65391 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=66149 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=65389 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=65356 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=65351 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=65342 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=65340 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=64025 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=64025 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=64025 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=64025 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=64025 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=64025 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=64025 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=64025 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=64025 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=64025 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=64025 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=64025 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=64023 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=64023 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=64023 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=64023 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=64023 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=64023 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=64023 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=64023 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=64023 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=64023 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=64023 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=64023 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=64021 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=64021 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=64021 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=64021 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=64021 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=64021 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=64021 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=64021 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=64021 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=64021 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=64021 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=64021 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=64019 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=64019 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=64019 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=64019 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=64019 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=64019 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=64019 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=64019 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=64019 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=64019 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=64019 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=64019 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=63977 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=63977 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=63977 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=63977 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=63977 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=63977 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=63977 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=63977 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=63977 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=63977 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=63977 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=63977 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=63975 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=63975 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=63975 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=63975 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=63975 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=63975 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=63975 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=63975 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=63975 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=63975 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=63975 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=63975 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=64877 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=64877 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=64877 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=64877 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=64877 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=64877 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=64877 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=64877 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=64877 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=64877 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=64877 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=64877 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=63972 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=63972 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=63972 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=63972 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=63972 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=63972 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=63972 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=63972 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=63972 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=63972 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=63972 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=63972 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=63970 AND `Idx1`=1 AND `Idx2`=11) OR (`CriteriaTreeID`=63970 AND `Idx1`=1 AND `Idx2`=10) OR (`CriteriaTreeID`=63970 AND `Idx1`=1 AND `Idx2`=9) OR (`CriteriaTreeID`=63970 AND `Idx1`=1 AND `Idx2`=8) OR (`CriteriaTreeID`=63970 AND `Idx1`=1 AND `Idx2`=7) OR (`CriteriaTreeID`=63970 AND `Idx1`=1 AND `Idx2`=6) OR (`CriteriaTreeID`=63970 AND `Idx1`=1 AND `Idx2`=5) OR (`CriteriaTreeID`=63970 AND `Idx1`=1 AND `Idx2`=4) OR (`CriteriaTreeID`=63970 AND `Idx1`=1 AND `Idx2`=3) OR (`CriteriaTreeID`=63970 AND `Idx1`=1 AND `Idx2`=2) OR (`CriteriaTreeID`=63970 AND `Idx1`=1 AND `Idx2`=1) OR (`CriteriaTreeID`=63970 AND `Idx1`=1 AND `Idx2`=0) OR (`CriteriaTreeID`=63970 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=63970 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=63970 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=63970 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=63970 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=63970 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=63970 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=63970 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=63970 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=63970 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=63970 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=63970 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=62811 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=62811 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=62811 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=62811 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=62811 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=62811 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=62811 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=62811 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=62811 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=62811 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=62811 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=62811 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=62814 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=62814 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=62814 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=62814 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=62814 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=62814 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=62814 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=62814 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=62814 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=62814 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=62814 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=62814 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=62681 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=62681 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=62681 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=62681 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=62681 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=62681 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=62681 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=62681 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=62681 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=62529 AND `Idx1`=1 AND `Idx2`=11) OR (`CriteriaTreeID`=62529 AND `Idx1`=1 AND `Idx2`=10) OR (`CriteriaTreeID`=62529 AND `Idx1`=1 AND `Idx2`=9) OR (`CriteriaTreeID`=62529 AND `Idx1`=1 AND `Idx2`=8) OR (`CriteriaTreeID`=62529 AND `Idx1`=1 AND `Idx2`=7) OR (`CriteriaTreeID`=62529 AND `Idx1`=1 AND `Idx2`=6) OR (`CriteriaTreeID`=62529 AND `Idx1`=1 AND `Idx2`=5) OR (`CriteriaTreeID`=62529 AND `Idx1`=1 AND `Idx2`=4) OR (`CriteriaTreeID`=62529 AND `Idx1`=1 AND `Idx2`=3) OR (`CriteriaTreeID`=62529 AND `Idx1`=1 AND `Idx2`=2) OR (`CriteriaTreeID`=62529 AND `Idx1`=1 AND `Idx2`=1) OR (`CriteriaTreeID`=62529 AND `Idx1`=1 AND `Idx2`=0) OR (`CriteriaTreeID`=62529 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `scenario_poi_points` (`CriteriaTreeID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(65440, 0, 0, -8306, 1385, 27404),
(65436, 0, 0, -8288, 1380, 27404),
(66193, 0, 0, -8474, 1031, 27404),
(65426, 0, 0, -8490, 924, 27404),
(66191, 0, 0, -8648, 752, 27404),
(65420, 0, 0, -8650, 753, 27404),
(65395, 0, 0, -8254, 194, 27404),
(65391, 0, 0, -8735, 750, 27404),
(66149, 0, 0, -8443, 841, 27404),
(65389, 0, 0, -8443, 843, 27404),
(65356, 0, 0, -8687, 907, 27404),
(65351, 0, 0, -8662, 913, 27404),
(65342, 0, 0, -8662, 917, 27404),
(65340, 0, 0, -8676, 912, 27404),
(64025, 0, 11, 1656, 219, 27404),
(64025, 0, 10, 1654, 235, 27404),
(64025, 0, 9, 1654, 243, 27404),
(64025, 0, 8, 1658, 260, 27404),
(64025, 0, 7, 1668, 268, 27404),
(64025, 0, 6, 1682, 274, 27404),
(64025, 0, 5, 1699, 256, 27404),
(64025, 0, 4, 1701, 245, 27404),
(64025, 0, 3, 1701, 233, 27404),
(64025, 0, 2, 1690, 219, 27404),
(64025, 0, 1, 1678, 217, 27404),
(64025, 0, 0, 1670, 217, 27404),
(64023, 0, 11, 1765, 227, 27404),
(64023, 0, 10, 1761, 240, 27404),
(64023, 0, 9, 1761, 252, 27404),
(64023, 0, 8, 1765, 258, 27404),
(64023, 0, 7, 1773, 260, 27404),
(64023, 0, 6, 1782, 260, 27404),
(64023, 0, 5, 1788, 258, 27404),
(64023, 0, 4, 1794, 248, 27404),
(64023, 0, 3, 1792, 235, 27404),
(64023, 0, 2, 1786, 229, 27404),
(64023, 0, 1, 1778, 224, 27404),
(64023, 0, 0, 1770, 224, 27404),
(64021, 0, 11, 1429, 262, 27404),
(64021, 0, 10, 1429, 294, 27404),
(64021, 0, 9, 1433, 315, 27404),
(64021, 0, 8, 1447, 363, 27404),
(64021, 0, 7, 1463, 386, 27404),
(64021, 0, 6, 1504, 387, 27404),
(64021, 0, 5, 1532, 369, 27404),
(64021, 0, 4, 1535, 335, 27404),
(64021, 0, 3, 1530, 272, 27404),
(64021, 0, 2, 1516, 240, 27404),
(64021, 0, 1, 1490, 223, 27404),
(64021, 0, 0, 1449, 221, 27404),
(64019, 0, 11, 1449, 211, 27404),
(64019, 0, 10, 1449, 235, 27404),
(64019, 0, 9, 1449, 260, 27404),
(64019, 0, 8, 1459, 298, 27404),
(64019, 0, 7, 1473, 313, 27404),
(64019, 0, 6, 1500, 313, 27404),
(64019, 0, 5, 1530, 311, 27404),
(64019, 0, 4, 1538, 284, 27404),
(64019, 0, 3, 1538, 265, 27404),
(64019, 0, 2, 1518, 224, 27404),
(64019, 0, 1, 1488, 199, 27404),
(64019, 0, 0, 1461, 197, 27404),
(63977, 0, 11, 1453, 159, 27404),
(63977, 0, 10, 1445, 177, 27404),
(63977, 0, 9, 1445, 193, 27404),
(63977, 0, 8, 1455, 203, 27404),
(63977, 0, 7, 1467, 215, 27404),
(63977, 0, 6, 1488, 215, 27404),
(63977, 0, 5, 1518, 211, 27404),
(63977, 0, 4, 1506, 175, 27404),
(63977, 0, 3, 1496, 159, 27404),
(63977, 0, 2, 1486, 152, 27404),
(63977, 0, 1, 1477, 152, 27404),
(63977, 0, 0, 1461, 152, 27404),
(63975, 0, 11, 2015, 140, 27404),
(63975, 0, 10, 1995, 195, 27404),
(63975, 0, 9, 1999, 268, 27404),
(63975, 0, 8, 2013, 317, 27404),
(63975, 0, 7, 2043, 363, 27404),
(63975, 0, 6, 2106, 355, 27404),
(63975, 0, 5, 2135, 324, 27404),
(63975, 0, 4, 2153, 280, 27404),
(63975, 0, 3, 2163, 240, 27404),
(63975, 0, 2, 2155, 193, 27404),
(63975, 0, 1, 2122, 146, 27404),
(63975, 0, 0, 2054, 132, 27404),
(64877, 0, 11, 1965, 181, 27404),
(64877, 0, 10, 1944, 209, 27404),
(64877, 0, 9, 1944, 235, 27404),
(64877, 0, 8, 1958, 269, 27404),
(64877, 0, 7, 1988, 281, 27404),
(64877, 0, 6, 2021, 287, 27404),
(64877, 0, 5, 2049, 281, 27404),
(64877, 0, 4, 2088, 257, 27404),
(64877, 0, 3, 2100, 235, 27404),
(64877, 0, 2, 2088, 207, 27404),
(64877, 0, 1, 2060, 181, 27404),
(64877, 0, 0, 2023, 177, 27404),
(63972, 0, 11, 1891, 85, 27404),
(63972, 0, 10, 1907, 233, 27404),
(63972, 0, 9, 1898, 367, 27404),
(63972, 0, 8, 1934, 392, 27404),
(63972, 0, 7, 1940, 373, 27404),
(63972, 0, 6, 1954, 285, 27404),
(63972, 0, 5, 1956, 270, 27404),
(63972, 0, 4, 1956, 238, 27404),
(63972, 0, 3, 1956, 217, 27404),
(63972, 0, 2, 1950, 145, 27404),
(63972, 0, 1, 1940, 95, 27404),
(63972, 0, 0, 1919, 77, 27404),
(63970, 1, 11, 1580, 227, 27404),
(63970, 1, 10, 1580, 229, 27404),
(63970, 1, 9, 1580, 231, 27404),
(63970, 1, 8, 1580, 233, 27404),
(63970, 1, 7, 1582, 234, 27404),
(63970, 1, 6, 1587, 235, 27404),
(63970, 1, 5, 1589, 233, 27404),
(63970, 1, 4, 1588, 228, 27404),
(63970, 1, 3, 1587, 227, 27404),
(63970, 1, 2, 1585, 226, 27404),
(63970, 1, 1, 1583, 226, 27404),
(63970, 1, 0, 1581, 226, 27404),
(63970, 0, 11, 1839, 202, 27404),
(63970, 0, 10, 1826, 217, 27404),
(63970, 0, 9, 1826, 235, 27404),
(63970, 0, 8, 1832, 262, 27404),
(63970, 0, 7, 1843, 274, 27404),
(63970, 0, 6, 1869, 298, 27404),
(63970, 0, 5, 1891, 290, 27404),
(63970, 0, 4, 1902, 260, 27404),
(63970, 0, 3, 1907, 238, 27404),
(63970, 0, 2, 1897, 217, 27404),
(63970, 0, 1, 1887, 201, 27404),
(63970, 0, 0, 1865, 199, 27404),
(62811, 0, 11, 1567, 200, 27404),
(62811, 0, 10, 1553, 227, 27404),
(62811, 0, 9, 1553, 259, 27404),
(62811, 0, 8, 1568, 274, 27404),
(62811, 0, 7, 1584, 283, 27404),
(62811, 0, 6, 1607, 285, 27404),
(62811, 0, 5, 1622, 279, 27404),
(62811, 0, 4, 1639, 258, 27404),
(62811, 0, 3, 1642, 234, 27404),
(62811, 0, 2, 1638, 215, 27404),
(62811, 0, 1, 1613, 195, 27404),
(62811, 0, 0, 1590, 191, 27404),
(62814, 0, 11, 1569, 199, 27404),
(62814, 0, 10, 1554, 216, 27404),
(62814, 0, 9, 1552, 232, 27404),
(62814, 0, 8, 1553, 255, 27404),
(62814, 0, 7, 1569, 274, 27404),
(62814, 0, 6, 1594, 284, 27404),
(62814, 0, 5, 1626, 277, 27404),
(62814, 0, 4, 1640, 261, 27404),
(62814, 0, 3, 1643, 243, 27404),
(62814, 0, 2, 1639, 221, 27404),
(62814, 0, 1, 1622, 203, 27404),
(62814, 0, 0, 1597, 192, 27404),
(62681, 0, 8, 1652, 57, 27404),
(62681, 0, 7, 1628, 126, 27404),
(62681, 0, 6, 1629, 157, 27404),
(62681, 0, 5, 1684, 213, 27404),
(62681, 0, 4, 1702, 212, 27404),
(62681, 0, 3, 1727, 205, 27404),
(62681, 0, 2, 1762, 157, 27404),
(62681, 0, 1, 1728, 101, 27404),
(62681, 0, 0, 1712, 87, 27404),
(62529, 1, 11, 1707, 56, 27404),
(62529, 1, 10, 1704, 60, 27404),
(62529, 1, 9, 1704, 64, 27404),
(62529, 1, 8, 1704, 68, 27404),
(62529, 1, 7, 1709, 72, 27404),
(62529, 1, 6, 1713, 72, 27404),
(62529, 1, 5, 1717, 72, 27404),
(62529, 1, 4, 1721, 72, 27404),
(62529, 1, 3, 1722, 68, 27404),
(62529, 1, 2, 1722, 60, 27404),
(62529, 1, 1, 1720, 56, 27404),
(62529, 1, 0, 1713, 55, 27404),
(62529, 0, 0, 1714, 63, 27404);

DELETE FROM `scenario_poi` WHERE (`CriteriaTreeID`=65440 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=65436 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=66193 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=65426 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=66191 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=65420 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=65395 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=65391 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=66149 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=65389 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=65356 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=65351 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=65342 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=65340 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=64025 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=64023 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=64021 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=64019 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=63977 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=63975 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=64877 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=63972 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=63970 AND `BlobIndex`=1 AND `Idx1`=1) OR (`CriteriaTreeID`=63970 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=62811 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=62814 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=62681 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=62529 AND `BlobIndex`=1 AND `Idx1`=1) OR (`CriteriaTreeID`=62529 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `scenario_poi` (`CriteriaTreeID`, `BlobIndex`, `Idx1`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `VerifiedBuild`) VALUES
(65440, 0, 0, 1904, 1012, 0, 2, 0, 0, 27404),
(65436, 0, 0, 1904, 1012, 0, 2, 0, 0, 27404),
(66193, 0, 0, 1904, 1012, 0, 2, 0, 0, 27404),
(65426, 0, 0, 1904, 1012, 0, 2, 0, 0, 27404),
(66191, 0, 0, 1904, 1012, 0, 2, 0, 0, 27404),
(65420, 0, 0, 1904, 1012, 0, 2, 0, 0, 27404),
(65395, 0, 0, 1904, 1013, 0, 2, 0, 0, 27404),
(65391, 0, 0, 1904, 1013, 0, 2, 0, 0, 27404),
(66149, 0, 0, 1904, 1013, 0, 2, 0, 0, 27404),
(65389, 0, 0, 1904, 1013, 0, 2, 0, 0, 27404),
(65356, 0, 0, 1904, 1013, 0, 2, 0, 0, 27404),
(65351, 0, 0, 1904, 1012, 0, 2, 0, 0, 27404),
(65342, 0, 0, 1904, 1012, 0, 2, 0, 0, 27404),
(65340, 0, 0, 1904, 1012, 0, 2, 0, 0, 27404),
(64025, 0, 0, 1760, 908, 0, 2, 0, 0, 27404),
(64023, 0, 0, 1760, 908, 0, 2, 0, 0, 27404),
(64021, 0, 0, 1760, 908, 0, 2, 0, 0, 27404),
(64019, 0, 0, 1760, 908, 0, 2, 0, 0, 27404),
(63977, 0, 0, 1760, 908, 0, 2, 0, 0, 27404),
(63975, 0, 0, 1760, 908, 0, 2, 0, 0, 27404),
(64877, 0, 0, 1760, 908, 0, 2, 0, 0, 27404),
(63972, 0, 0, 1760, 908, 0, 2, 0, 0, 27404),
(63970, 1, 1, 1760, 998, 0, 2, 0, 0, 27404),
(63970, 0, 0, 1760, 908, 0, 2, 0, 0, 27404),
(62811, 0, 0, 1760, 998, 0, 2, 0, 0, 27404),
(62814, 0, 0, 1760, 998, 0, 2, 0, 0, 27404),
(62681, 0, 0, 1760, 998, 0, 0, 0, 0, 27404),
(62529, 1, 1, 1760, 998, 0, 2, 0, 0, 27404),
(62529, 0, 0, 1760, 998, 0, 0, 0, 0, 27404);



-- Naturalist Bite SAI
SET @ENTRY := 17893;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,10,0,100,1,1,15,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Naturalist Bite - Yell on OOC LOS"),
(@ENTRY,0,1,0,64,0,100,0,0,0,0,0,33,17893,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gossip Hello - Kill Credit");

