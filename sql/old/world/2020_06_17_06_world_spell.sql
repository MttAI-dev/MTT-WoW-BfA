-- Type: Quest
-- Title: Fizzled - 25260
-- Fizzle Darkclaw SAI
SET @ENTRY := 3203;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,512,11240,0,0,0,11,74024,1,0,0,0,0,7,0,0,0,0,0,0,0,"On Gossip Select 11240 Add Item 52580"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,56,52580,1,0,0,0,0,7,0,0,0,0,0,0,0,"Npc_AI_BFA");

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_gen_pony_mount_check';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(67039,'spell_gen_pony_mount_check');

DELETE FROM `creature_template_addon` WHERE `entry` IN(33238,33239);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(33238,0,0,0,1,0,67039),
(33239,0,0,0,1,0,67039);

SET @ID :=1111;

DELETE FROM `spell_group` WHERE `id`=@ID;
INSERT INTO `spell_group` (`id`,`spell_id`) VALUES
(@ID,62727),
(@ID,63443),
(@ID,63439),
(@ID,63442),
(@ID,63440),
(@ID,63446),
(@ID,63441),
(@ID,63444),
(@ID,63438),
(@ID,63445);

DELETE FROM `spell_group_stack_rules` WHERE `group_id`=@ID;
INSERT INTO `spell_group_stack_rules` (`group_id`,`stack_rule`) VALUES
(@ID,1);

DELETE FROM `spell_linked_spell` WHERE `spell_effect`=67401;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`, `type`, `comment`) VALUES
(-67368, 67401, 0, 'Argent Squire - Bank'),
(-67377, 67401, 0, 'Argent Squire - Shop'),
(-67376, 67401, 0, 'Argent Squire - Mail');

DELETE FROM `gossip_menu` WHERE `MenuId`=10317;
INSERT INTO `gossip_menu` (`MenuId`, `textid`) VALUES
(10317, 14372);

DELETE FROM `gossip_menu_option` WHERE `menuid`IN (10318,10317);
INSERT INTO `gossip_menu_option` (`menuid`, `OptionIndex`, `optionicon`, `optiontext`, `optiontype`, `optionnpcflag`) VALUES
(10318, 0, 6, 'Visit a bank', 9, 1),
(10318, 1, 1, 'Visit a trader', 3, 1),
(10318, 2, 0, 'Visit a mailbox', 1, 1),
(10318, 3, 0, 'Darnassus Champion\'s Pennant', 1, 1),
(10318, 4, 0, 'Exodar Champion\'s Pennant', 1, 1),
(10318, 5, 0, 'Gnomeregan Champion\'s Pennant', 1, 1),
(10318, 6, 0, 'Ironforge Champion\'s Pennant', 1, 1),
(10318, 7, 0, 'Stormwind Champion\'s Pennant', 1, 1),
(10317, 0, 6, 'Visit a bank', 9, 1),
(10317, 1, 1, 'Visit a trader', 3, 1),
(10317, 2, 0, 'Visit a mailbox', 1, 1),
(10317, 3, 0, 'Sen Champion\'s Pennant', 1, 1),
(10317, 4, 0, 'Undercity Champion\'s Pennant', 1, 1),
(10317, 5, 0, 'Orgrimmar Champion\'s Pennant', 1, 1),
(10317, 6, 0, 'Silvermoon Champion\'s Pennant', 1, 1),
(10317, 7, 0, 'Thunder Bluff Champion\'s Pennant', 1, 1);

UPDATE `creature_template` SET `npcflag`=129, `ScriptName`='npc_argent_squire_gruntling' WHERE `entry`=33238;
UPDATE `creature_template` SET `gossip_menu_id`=10317, `npcflag`=129, `ScriptName`='npc_argent_squire_gruntling' WHERE `entry`=33239;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (10318,10317);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 10318, 0, 0, 0, 1, 1, 67368, 0, 0, 0, 0, '', 'Argent squire show Visit a bank if has bank errand aura'),
(15, 10318, 0, 0, 1, 17, 0, 3736, 0, 0, 0, 0, '', 'Argent squire show Visit a bank if player has achievement pony up'),
(15, 10318, 0, 0, 1, 1, 1, 67401, 0, 0, 1, 0, '', 'Argent squire show Visit a bank no tired aura'),
(15, 10318, 0, 0, 1, 1, 0, 67334, 0, 0, 1, 0, '', 'Argent squire show Visit a bank no tired aura on player'),
(15, 10318, 0, 0, 1, 1, 1, 67377, 0, 0, 1, 0, '', 'Argent squire show Visit a bank no shop aura'),
(15, 10318, 0, 0, 1, 1, 1, 67376, 0, 0, 1, 0, '', 'Argent squire show Visit a bank no Postman aura'),
(15, 10318, 1, 0, 0, 1, 1, 67377, 0, 0, 0, 0, '', 'Argent squire show Visit a trader if has shop aura'),
(15, 10318, 1, 0, 1, 17, 0, 3736, 0, 0, 0, 0, '', 'Argent squire show Visit a trader if player has achievement pony up'),
(15, 10318, 1, 0, 1, 1, 1, 67401, 0, 0, 1, 0, '', 'Argent squire show Visit a trader no tired aura'),
(15, 10318, 1, 0, 1, 1, 0, 67334, 0, 0, 1, 0, '', 'Argent squire show Visit a trader no tired aura on player'),
(15, 10318, 1, 0, 1, 1, 1, 67368, 0, 0, 1, 0, '', 'Argent squire show Visit a trader no bank errand aura'),
(15, 10318, 1, 0, 1, 1, 1, 67376, 0, 0, 1, 0, '', 'Argent squire show Visit a trader no Postman aura'),
(15, 10318, 2, 0, 0, 1, 1, 67376, 0, 0, 0, 0, '', 'Argent squire show Visit a Mailbox if has Postman aura'),
(15, 10318, 2, 0, 1, 17, 0, 3736, 0, 0, 0, 0, '', 'Argent squire show Visit a Mailbox if player has achievement pony up'),
(15, 10318, 2, 0, 1, 1, 1, 67401, 0, 0, 1, 0, '', 'Argent squire show Visit a Mailbox no tired aura'),
(15, 10318, 2, 0, 1, 1, 0, 67334, 0, 0, 1, 0, '', 'Argent squire show Visit a Mailbox no tired aura on player'),
(15, 10318, 2, 0, 1, 1, 1, 67368, 0, 0, 1, 0, '', 'Argent squire show Visit a Mailbox no bank errand aura'),
(15, 10318, 2, 0, 1, 1, 1, 67377, 0, 0, 1, 0, '', 'Argent squire show Visit a Mailbox no shop aura'),
(15, 10318, 3, 0, 0, 8, 0, 13725, 0, 0, 0, 0, '', 'Argent squire show Darnassus Champion\'s Pennant if player has completed Champion of Darnassus'),
(15, 10318, 4, 0, 0, 8, 0, 13724, 0, 0, 0, 0, '', 'Argent squire show Exodar Champion\'s Pennant if player has completed Champion of the Exodar'),
(15, 10318, 5, 0, 0, 8, 0, 13723, 0, 0, 0, 0, '', 'Argent squire show Gnomeeregan Champion\'s Pennant if player has completed Champion of Gnomeregan'),
(15, 10318, 6, 0, 0, 8, 0, 13713, 0, 0, 0, 0, '', 'Argent squire show Ironforge Champion\'s Pennant if player has completed Champion of Ironforge'),
(15, 10318, 7, 0, 0, 8, 0, 13699, 0, 0, 0, 0, '', 'Argent squire show Stormwind Champion\'s Pennant if player has completed Champion of Stormwind'),
(15, 10317, 0, 0, 0, 1, 1, 68849, 0, 0, 0, 0, '', 'Argent Gruntling show Visit a bank if has bank errand aura'),
(15, 10317, 0, 0, 1, 17, 0, 3736, 0, 0, 0, 0, '', 'Argent Gruntling show Visit a bank if player has achievement pony up'),
(15, 10317, 0, 0, 1, 1, 1, 68852, 0, 0, 1, 0, '', 'Argent Gruntling show Visit a bank no tired aura'),
(15, 10317, 0, 0, 1, 1, 0, 67334, 0, 0, 1, 0, '', 'Argent Gruntling show Visit a bank no tired aura on player'),
(15, 10317, 0, 0, 1, 1, 1, 68851, 0, 0, 1, 0, '', 'Argent Gruntling show Visit a bank no shop aura'),
(15, 10317, 0, 0, 1, 1, 1, 68850, 0, 0, 1, 0, '', 'Argent Gruntling show Visit a bank no Postman aura'),
(15, 10317, 1, 0, 0, 1, 1, 68851, 0, 0, 0, 0, '', 'Argent Gruntling show Visit a trader if has shop aura'),
(15, 10317, 1, 0, 1, 17, 0, 3736, 0, 0, 0, 0, '', 'Argent Gruntling show Visit a trader if player has achievement pony up'),
(15, 10317, 1, 0, 1, 1, 1, 68852, 0, 0, 1, 0, '', 'Argent Gruntling show Visit a trader no tired aura'),
(15, 10317, 1, 0, 1, 1, 0, 67334, 0, 0, 1, 0, '', 'Argent Gruntling show Visit a trader no tired aura on player'),
(15, 10317, 1, 0, 1, 1, 1, 68849, 0, 0, 1, 0, '', 'Argent Gruntling show Visit a trader no bank errand aura'),
(15, 10317, 1, 0, 1, 1, 1, 68850, 0, 0, 1, 0, '', 'Argent Gruntling show Visit a trader no Postman aura'),
(15, 10317, 2, 0, 0, 1, 1, 68850, 0, 0, 0, 0, '', 'Argent Gruntling show Visit a Mailbox if has Postman aura'),
(15, 10317, 2, 0, 1, 17, 0, 3736, 0, 0, 0, 0, '', 'Argent Gruntling show Visit a Mailbox if player has achievement pony up'),
(15, 10317, 2, 0, 1, 1, 1, 68852, 0, 0, 1, 0, '', 'Argent Gruntling show Visit a Mailbox no tired aura'),
(15, 10317, 2, 0, 1, 1, 0, 67334, 0, 0, 1, 0, '', 'Argent Gruntling show Visit a Mailbox no tired aura on player'),
(15, 10317, 2, 0, 1, 1, 1, 68849, 0, 0, 1, 0, '', 'Argent Gruntling show Visit a Mailbox no bank errand aura'),
(15, 10317, 2, 0, 1, 1, 1, 68851, 0, 0, 1, 0, '', 'Argent Gruntling show Visit a Mailbox no shop aura'),
(15, 10317, 3, 0, 0, 8, 0, 13727, 0, 0, 0, 0, '', 'Argent Gruntling show Sen\'jin Champion\'s Pennant if player has completed Champion of Sen\'jin'),
(15, 10317, 4, 0, 0, 8, 0, 13729, 0, 0, 0, 0, '', 'Argent Gruntling show Undercity Champion\'s Pennant if player has completed Champion of the Undercity'),
(15, 10317, 5, 0, 0, 8, 0, 13726, 0, 0, 0, 0, '', 'Argent Gruntling show Orgrimmar Champion\'s Pennant if player has completed Champion of Orgrimmar'),
(15, 10317, 6, 0, 0, 8, 0, 13731, 0, 0, 0, 0, '', 'Argent Gruntling show Silvermoon Champion\'s Pennant if player has completed Champion of Silvermoon City'),
(15, 10317, 7, 0, 0, 8, 0, 13728, 0, 0, 0, 0, '', 'Argent Gruntling show Thunder Bluff Champion\'s Pennant if player has completed Champion of Thunder Bluff');
