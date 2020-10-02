DELETE FROM `vehicle_template_accessory` WHERE `entry` IN(129232,136643,136139) AND `seat_id`=0;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(129232, 132713, 0, 1, '129232 - 132713', 7, 0), -- 129232 - 132713
(136643, 136688, 0, 1, '136643 - 136688', 7, 0), -- 136643 - 136688
(136139, 130488, 0, 1, '136139 - 130488', 7, 0); -- 136139 - 130488

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=142635 AND `spell_id`=278518;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=138047 AND `spell_id`=271722;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=136776 AND `spell_id`=270834;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=129804 AND `spell_id`=257455;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(142635, 278518, 1, 0),
(138047, 271722, 1, 0),
(136776, 270834, 1, 0),
(129804, 257455, 1, 0);