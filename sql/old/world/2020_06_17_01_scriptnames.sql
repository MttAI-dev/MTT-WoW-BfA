REPLACE INTO spell_script_names VALUE (197632, "spell_dru_balance_affinity_resto");
REPLACE INTO spell_script_names VALUE (108299, "spell_dru_killer_instinct");

DELETE FROM spell_script_names WHERE spell_id IN(48500,48499,48496);
INSERT INTO `spell_script_names` VALUES (48500, 'spell_dru_living_seed');
INSERT INTO `spell_script_names` VALUES (48499, 'spell_dru_living_seed');
INSERT INTO `spell_script_names` VALUES (48496, 'spell_dru_living_seed');


DELETE FROM `spell_script_names` WHERE `spell_id` = '145108' AND `ScriptName` = 'spell_dru_ysera_gift'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('145108', 'spell_dru_ysera_gift'); 

DELETE FROM spell_script_names WHERE scriptname IN ("aura_dru_feral_affinity");
INSERT INTO spell_script_names VALUES
(202157, "aura_dru_feral_affinity");

DELETE FROM `spell_script_names` WHERE `spell_id` IN (164815, 37336, 203964, 155835, 102352, 185767, 164812, 197721, 203953, 22812, 102351, 50725);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(164815, 'spell_dru_moonfire_sunfire_dot'),
(164812, 'spell_dru_moonfire_sunfire_dot'),
(197721, 'spell_dru_flourish'),
(203953, 'spell_dru_brambles'),
(22812, 'spell_dru_barkskin'),
(155835, 'spell_dru_bristling_fur'),
(185767, 'spell_rog_cannonball_barrage'),
(50725, 'spell_warr_vigilance_trigger'),
(102352, 'spell_dru_cenarion_ward_hot'),
(203964, 'spell_dru_galactic_guardian'),
(37336, 'spell_dru_forms_trinket'), 
(102351, 'spell_dru_cenarion_ward');


DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dru_ursols_vortex';
INSERT INTO spell_script_names VALUE (102793, 'spell_dru_ursols_vortex');

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_mark_of_nature';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(25042, 'spell_mark_of_nature');

UPDATE areatrigger_template SET scriptname = "at_dh_fury_of_the_illidari" WHERE id = 10470;
UPDATE creature_template SET scriptname = "npc_warl_chaos_tear" WHERE entry = 108493;

DELETE FROM `spell_script_names` WHERE `spell_id`=54845;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(54845,'spell_dru_glyph_of_starfire_proc');

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warr_vigilance';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(50720,'spell_warr_vigilance');

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warr_sword_and_board';
INSERT INTO spell_script_names VALUES (20243, 'spell_warr_sword_and_board');

DELETE FROM `spell_script_names` WHERE `spell_id`=20230;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(20230,'spell_warr_retaliation');

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warr_improved_spell_reflection';
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(59725, 'spell_warr_improved_spell_reflection');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (48504, 61391, 28744, 28719, 37288, 40442, 70723, 70664, 5176, 2912, 78674);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(48504,'spell_dru_living_seed_proc'),
(61391, 'spell_dru_typhoon'),
(28744,  'spell_dru_t3_6p_bonus'),
(28719,  'spell_dru_t3_8p_bonus'),
(37288,  'spell_dru_t4_2p_bonus'),
(40442,  'spell_dru_item_t6_trinket'),
(70723,  'spell_dru_t10_balance_4p_bonus'),
(70664,  'spell_dru_t10_restoration_4p_bonus_dummy'),
(5176, 'spell_dru_eclipse'),
(2912, 'spell_dru_eclipse'),
(78674, 'spell_dru_eclipse');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (91565, 204053, 80313, 203974, 203975, 190984, 194153, 200851, 202808, 50464, 201522, 203651, 221514, 157982, 200389, 58180, 103917, 208253);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(91565, 'spell_dru_faerie_fire'),
(202808, 'spell_dru_primal_vitality'),
(50464, "spell_dru_nourish"),
(201522, 'spell_dru_denmother'),
(203651, 'spell_dru_overgrowth'),
(221514, 'spell_dru_skull_bash_charge'),
(157982, 'spell_dru_tranquility_heal'),
(200389, 'spell_dru_cultivation'),
(58180, 'spell_dru_infected_wounds'),
(103917,'spell_dru_blessing_of_elune'),
(208253, 'spell_dru_essence_of_ghanir'),
(200851, 'spell_dru_rage_of_the_sleeper'),
(194153,'spell_druid_lunar_strike'),
(190984,'spell_druid_solar_wrath'),
(203975, 'spell_druid_earthwarden_triggered'),
(203974, 'spell_druid_earthwarden'),
(80313,'spell_druid_pulverize'),
(204053, 'spell_druid_rend_and_tear');


DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_dru_healing_touch';
INSERT INTO `spell_script_names` VALUES (5185, 'spell_dru_healing_touch');











