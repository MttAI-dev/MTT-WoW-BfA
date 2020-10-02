DELETE FROM `spell_script_names` WHERE `spell_id` IN (32215);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(32215, 'spell_warr_victorious_state');

UPDATE areatrigger_template SET scriptname = "at_dh_fury_of_the_illidari" WHERE id = 10470;

DELETE FROM `spell_script_names` WHERE `spell_id`=204488 AND `ScriptName`='spell_warr_focused_rage_prot';
INSERT INTO spell_script_names VALUES (204488, "spell_warr_focused_rage_prot");

DELETE FROM `spell_script_names` WHERE `spell_id`=107574;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(107574,'spell_warr_avatar');

UPDATE creature_template SET scriptname = "npc_warlock_chaos_tear" WHERE entry = 108493;

DELETE FROM `spell_script_names` WHERE `spell_id`=47193;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (47193,'spell_warl_demonic_empowerment');


DELETE FROM `spell_script_names` WHERE `spell_id` IN (6229, 324, 8232, 215864, 195255, 110913, 114168, 112891, 104048, 47960, 103958, 108482, 103964, 119678, 56232, 689, 89420, 103990, 104025, 114175, 111397, 196104, 103103);
INSERT INTO spell_script_names VALUES
(6229, 'spell_warl_twilight_ward_s12'),
(104048, 'spell_warl_twilight_ward_s12'),
(47960, 'spell_warl_molten_core_dot'),
(103958, 'spell_warl_metamorphosis_cost'),
(108482, "spell_warlock_unbound_will"),
(103964, "spell_warlock_touch_of_chaos"),
(119678, "spell_warlock_soul_swap_soulburn"),
(56232, "spell_warlock_glyph_of_nightmares"),
(689, "spell_warlock_drain_life"),
(89420, "spell_warlock_drain_life"),
(103990, "spell_warlock_drain_life"),
(104025, "spell_warlock_immolation_aura"),
(114175, "spell_warlock_demonic_slash"),
(111397, "spell_warlock_blood_horror"),
(196104, "spell_warlock_mana_tap"),
(103103, "spell_warlock_malefic_grasp"),
(112891, "spell_warlock_howl_of_terror"),
(114168, "spell_warlock_dark_apotheosis"),
(110913, "spell_warlock_dark_bargain"),
(195255, "aura_sha_stormlash"),
(215864, "spell_sha_rainfall"),
(8232, "spell_shaman_windfury_weapon"),
(324,'spell_sha_lightning_shield');

DELETE FROM `spell_script_names` WHERE `spell_id`=47948;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(47948, 'spell_pri_pain_and_suffering_proc');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (30823, 123766, 45524, 140023, 115921, 124336, 193884, 116694, 200829, 123273, 123980, 47515, 64904, 7001, 55440, 205065, 108945,108920, 586);
INSERT INTO spell_script_names VALUES
(30823, 'spell_sha_glyph_of_shamanistic_rage'),
(55440, 'spell_sha_glyph_of_healing_wave'),
(205065, 'aura_pri_void_torrent'),
(108945, "spell_priest_angelic_bulwark"),
(108920, 'spell_pri_void_tendrils'),
(586, 'spell_pri_phantasm'),
(7001, 'spell_pri_lightwell_renew'),
(64904, 'spell_pri_hymn_of_hope'),
(47515, 'spell_pri_divine_aegis'),
(200829, "spell_pri_plea"),
(123980, "spell_monk_tigereye_brew_stacks"),
(123273, 'spell_monk_surging_mist_glyphed'),
(116694, 'spell_monk_surging_mist'),
(193884, "spell_monk_soothing_mist_aura"),
(140023, "spell_monk_ring_of_peace_aura"),
(124336, 'spell_monk_path_of_blossom'),
(123766, 'spell_monk_mana_tea_stacks'),
(115921, 'spell_monk_legacy_of_the_emperor'),
(45524, "spell_dk_chains_of_ice");


DELETE FROM creature_loot_template WHERE item IN (200006, 200000, 200002);

UPDATE `creature_template` SET `lootid`=104251 WHERE `entry`=104251;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(104251, 121221, 0.42, 1, 0, 1, 1) /* andvik Breastplate */, 
(104251, 121222, 0.45, 1, 0, 1, 1) /* andvik Gauntlets */, 
(104251, 121223, 0.13, 1, 0, 1, 1) /* andvik Girdle */, 
(104251, 121224, 0.45, 1, 0, 1, 1) /* andvik Helm */, 
(104251, 121225, 0.26, 1, 0, 1, 1) /* andvik Legplates */, 
(104251, 121226, 0.35, 1, 0, 1, 1) /* andvik Pauldrons */, 
(104251, 121227, 3, 1, 0, 1, 1) /* andvik Sabatons */, 
(104251, 121228, 0.1, 1, 0, 1, 1) /* andvik Vambraces */, 
(104251, 121234, 0.23, 1, 0, 1, 1) /* oralune Keepsake */, 
(104251, 121235, 0.23, 1, 0, 1, 1) /* ashj'tar Brooch */, 
(104251, 121236, 0.26, 1, 0, 1, 1) /* awnswood Hunter's Fletchings */, 
(104251, 121238, 0.93, 1, 0, 1, 1) /* mbervale Boots */, 
(104251, 121239, 0.19, 1, 0, 1, 1) /* mbervale Britches */, 
(104251, 121240, 0.61, 1, 0, 1, 1) /* mbervale Gloves */, 
(104251, 121241, 0.26, 1, 0, 1, 1) /* mbervale Hood */, 
(104251, 121243, 2, 1, 0, 1, 1) /* mbervale Shoulders */, 
(104251, 121244, 0.26, 1, 0, 1, 1) /* mbervale Waistband */, 
(104251, 121247, 0.35, 1, 0, 1, 1) /* ightfall Loop */, 
(104251, 121248, 0.61, 1, 0, 1, 1) /* ightfall Chain */, 
(104251, 121260, 1, 1, 0, 1, 1) /* arpwind Belt */, 
(104251, 121261, 0.61, 1, 0, 1, 1) /* arpwind Bracers */, 
(104251, 121262, 0.42, 1, 0, 1, 1) /* arpwind Gauntlets */, 
(104251, 121263, 1, 1, 0, 1, 1) /* arpwind Greaves */, 
(104251, 121264, 0.48, 1, 0, 1, 1) /* arpwind Helm */, 
(104251, 121265, 3, 1, 0, 1, 1) /* arpwind Legguards */, 
(104251, 121268, 0.39, 1, 0, 1, 1) /* oonfall Cord */, 
(104251, 121269, 3, 1, 0, 1, 1) /* oonfall Cowl */, 
(104251, 121270, 0.81, 1, 0, 1, 1) /* oonfall Handwraps */, 
(104251, 121271, 6, 1, 0, 1, 1) /* oonfall Leggings */, 
(104251, 121272, 0.93, 1, 0, 1, 1) /* oonfall Robe */, 
(104251, 121273, 0.26, 1, 0, 1, 1) /* oonfall Sandals */, 
(104251, 121274, 0.35, 1, 0, 1, 1) /* oonfall Shoulderpads */, 
(104251, 121275, 0.64, 1, 0, 1, 1) /* oonfall Wristwraps */, 
(104251, 121331, 0.68, 1, 0, 1, 1) /* eystone Lockbox */, 
(104251, 121332, 0.42, 1, 0, 1, 1) /* ver-Sharpened Shank */, 
(104251, 121333, 0.29, 1, 0, 1, 1) /* oorly Weighted Blackjack */, 
(104251, 121334, 0.48, 1, 0, 1, 1) /* ining Sword */, 
(104251, 121335, 0.61, 1, 0, 1, 1) /* ixing Axe */, 
(104251, 121336, 0.13, 1, 0, 1, 1) /* ossy Longbow */, 
(104251, 121337, 0.71, 1, 0, 1, 1) /* ermanently Jammed Blunderbuss */, 
(104251, 121338, 4, 1, 0, 1, 1) /* ent-Blade Axe */, 
(104251, 121339, 0.35, 1, 0, 1, 1) /* valdir Skinning Knife */, 
(104251, 121340, 0.19, 1, 0, 1, 1) /* ightning-Struck Hammer */, 
(104251, 121341, 4, 1, 0, 1, 1) /* obble's Staff of Discourse */, 
(104251, 121343, 0.68, 1, 0, 1, 1) /* arped-Plate Belt */, 
(104251, 121344, 0.03, 1, 0, 1, 1) /* unbleached Cord */, 
(104251, 121345, 3, 1, 0, 1, 1) /* eatherworn Belt */, 
(104251, 121346, 2, 1, 0, 1, 1) /* arped-Plate Vambraces */, 
(104251, 121347, 0.52, 1, 0, 1, 1) /* ust-Encrusted Wristguards */, 
(104251, 121349, 0.26, 1, 0, 1, 1) /* eatherworn Wristguards */, 
(104251, 121350, 2, 1, 0, 1, 1) /* ust-Encrusted Leggings */, 
(104251, 121351, 0.58, 1, 0, 1, 1) /* unbleached Pants */, 
(104251, 121352, 0.45, 1, 0, 1, 1) /* eatherworn Pants */, 
(104251, 121353, 0.77, 1, 0, 1, 1) /* arped-Plate Pauldrons */, 
(104251, 121354, 2, 1, 0, 1, 1) /* ust-Encrusted Spaulders */, 
(104251, 121356, 0.26, 1, 0, 1, 1) /* unbleached Armice */, 
(104251, 121357, 0.87, 1, 0, 1, 1) /* ust-Encrusted Gloves */, 
(104251, 121358, 0.55, 1, 0, 1, 1) /* unbleached Handwraps */, 
(104251, 121360, 0.55, 1, 0, 1, 1) /* arped-Plate Gauntlets */, 
(104251, 121361, 0.84, 1, 0, 1, 1) /* ust-Encrusted Coif */, 
(104251, 121362, 0.93, 1, 0, 1, 1) /* eatherworn Hood */, 
(104251, 121366, 0.19, 1, 0, 1, 1) /* ust-Encrusted Hauberk */, 
(104251, 121367, 0.29, 1, 0, 1, 1) /* arped-Plate Breastplate */, 
(104251, 121368, 0.26, 1, 0, 1, 1) /* unbleached Shirt */, 
(104251, 121369, 0.35, 1, 0, 1, 1) /* eatherworn Vest */, 
(104251, 121370, 3, 1, 0, 1, 1) /* arped-Plate Stompers */, 
(104251, 121371, 3, 1, 0, 1, 1) /* ust-Encrusted Sabatons */, 
(104251, 121372, 0.23, 1, 0, 1, 1) /* unbleached Sandals */, 
(104251, 121373, 0.93, 1, 0, 1, 1) /* eatherworn Boots */, 
(104251, 121380, 0.06, 1, 0, 1, 1) /* agnificent Cleaver */, 
(104251, 121382, 0.1, 1, 0, 1, 1) /* rthropod Leg Club */, 
(104251, 121412, 0.16, 1, 0, 1, 1) /* ight Plate Travelers */, 
(104251, 121413, 0.03, 1, 0, 1, 1) /* wo-Toed Warboots */, 
(104251, 124120, 23, 1, 0, 2, 4) /* eyblood */, 
(104251, 124438, 0.93, 1, 0, 2, 4) /* nbroken Claw */, 
(104251, 124439, 0.52, 1, 0, 1, 2) /* nbroken Tooth */, 
(104251, 127037, 0.48, 1, 0, 1, 1) /* unic Catgut */, 
(104251, 132183, 9, 1, 0, 1, 1) /* azor Tooth */, 
(104251, 132213, 0.19, 1, 0, 1, 1) /* rop of Magic */, 
(104251, 132230, 1, 1, 0, 1, 1) /* ana-Charged Hide */, 
(104251, 132233, 22, 1, 0, 1, 1) /* ingering Essence */, 
(104251, 138781, 2, 1, 0, 1, 1) /* rief History of the Aeons */, 
(104251, 138782, 0.06, 1, 0, 1, 1) /* rief History of the Ages */, 
(104251, 140220, 0.32, 1, 0, 1, 1) /* cavenged Cloth */, 
(104251, 140221, 1, 1, 0, 1, 1) /* ound Sack of Gems */, 
(104251, 140222, 2, 1, 0, 1, 1) /* arvested Goods */, 
(104251, 140224, 0.16, 1, 0, 1, 1) /* utchered Meat */, 
(104251, 140225, 0.52, 1, 0, 1, 1) /* alvaged Armor */, 
(104251, 140226, 0.77, 1, 0, 1, 1) /* ana-Tinged Pack */, 
(104251, 140227, 1, 1, 0, 1, 1) /* loodhunter's Quarry */, 
(104251, 141292, 0.48, 1, 0, 1, 1) /* rystallizing Mana */, 
(104251, 144330, 0.64, 1, 0, 1, 1) /* procket Container */, 
(104251, 144345, 0.1, 1, 0, 1, 1) /* ile of Pet Goodies */;

UPDATE `creature_template` SET `lootid`=99802 WHERE `entry`=99802;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(99802, 121112, 0.02, 1, 0, 1, 1) /* alarsmidd Gauntlets */, 
(99802, 121117, 0.02, 1, 0, 1, 1) /* alarsmidd Sabatons */, 
(99802, 121122, 0.02, 1, 0, 1, 1) /* tormwing Drape */, 
(99802, 121130, 0.02, 1, 0, 1, 1) /* austvelt Gloves */, 
(99802, 121131, 0.07, 1, 0, 1, 1) /* austvelt Hood */, 
(99802, 121132, 0.66, 1, 0, 1, 1) /* austvelt Jerkin */, 
(99802, 121133, 0.3, 1, 0, 1, 1) /* austvelt Shoulders */, 
(99802, 121138, 0.14, 1, 0, 1, 1) /* tormwing Chain */, 
(99802, 121153, 0.07, 1, 0, 1, 1) /* aldisdall Greaves */, 
(99802, 121154, 0.67, 1, 0, 1, 1) /* aldisdall Helm */, 
(99802, 121155, 0.02, 1, 0, 1, 1) /* aldisdall Legguards */, 
(99802, 121157, 0.02, 1, 0, 1, 1) /* aldisdall Vest */, 
(99802, 121160, 0.05, 1, 0, 1, 1) /* rydshal Handwraps */, 
(99802, 121161, 0.02, 1, 0, 1, 1) /* rydshal Leggings */, 
(99802, 121163, 0.02, 1, 0, 1, 1) /* rydshal Sandals */, 
(99802, 121164, 0.01, 1, 0, 1, 1) /* rydshal Shoulderpads */, 
(99802, 124118, 16, 1, 0, 1, 2) /* atty Bearsteak */, 
(99802, 124438, 2, 1, 0, 1, 4) /* nbroken Claw */, 
(99802, 124439, 2, 1, 0, 1, 4) /* nbroken Tooth */, 
(99802, 132183, 12, 1, 0, 1, 1) /* azor Tooth */, 
(99802, 132185, 5, 1, 0, 1, 1) /* ntact Skull */, 
(99802, 132231, 6, 1, 0, 1, 1) /* orn Hooked Claw */, 
(99802, 138781, 0.01, 1, 0, 1, 1) /* rief History of the Aeons */, 
(99802, 138782, 0.11, 1, 0, 1, 1) /* rief History of the Ages */, 
(99802, 138786, 10, 1, 0, 1, 1) /* alisman of Victory */, 
(99802, 140224, 0.02, 1, 0, 1, 1) /* utchered Meat */, 
(99802, 140227, 0.05, 1, 0, 1, 1) /* loodhunter's Quarry */, 
(99802, 141689, 48, 1, 0, 1, 1) /* ewel of Victory */, 
(99802, 141690, 35, 1, 0, 1, 1) /* ymbol of Victory */;

UPDATE `creature_template` SET `lootid`=118523 WHERE `entry`=118523;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(118523, 146987, 18, 1, 0, 1, 1) /* lippers of Enduring Vigilance */, 
(118523, 146997, 28, 1, 0, 1, 1) /* houlderpads of Whispering Twilight */, 
(118523, 147005, 2, 1, 0, 1, 1) /* halice of Moonlight */, 
(118523, 147012, 38, 1, 0, 1, 1) /* mbral Moonglaives */, 
(118523, 147017, 4, 1, 0, 1, 1) /* arnished Sentinel Medallion */, 
(118523, 147021, 6, 1, 0, 1, 1) /* athae's Thumb Ring */, 
(118523, 147031, 89, 1, 0, 1, 1) /* oonfire Stranglers */, 
(118523, 147033, 9, 1, 0, 1, 1) /* unar-Wrath Headgear */, 
(118523, 147054, 11, 1, 0, 1, 1) /* antle of Waning Radiance */, 
(118523, 147056, 2, 1, 0, 1, 1) /* aistguard of Interminable Unity */, 
(118523, 147061, 14, 1, 0, 1, 1) /* usk-Crusher Handguards */, 
(118523, 147068, 17, 1, 0, 1, 1) /* uirass of Blinding Dawn */, 
(118523, 147078, 13, 1, 0, 1, 1) /* ote of Astral Suffusion */, 
(118523, 147089, 22, 1, 0, 1, 1) /* erocity of the Devout */, 
(118523, 147097, 27, 1, 0, 1, 1) /* lessing of the White Lady */, 
(118523, 147101, 23, 1, 0, 1, 1) /* hiseled Starlight */, 
(118523, 147105, 12, 1, 0, 1, 1) /* oontalon's Feather */;











