UPDATE `creature_template` SET `ScriptName`='npc_ilgynoth_nightmare_ichor' WHERE  `entry`=105721;
UPDATE `creature_template` SET `ScriptName`='npc_ilgynoth_nightmare_horror' WHERE  `entry`=105591;
UPDATE `creature_template` SET `ScriptName`='npc_ilgynoth_tentacles' WHERE  `entry` IN (105304, 105322, 105383, 108821);
UPDATE `creature_template` SET `ScriptName`='npc_eye_of_ilgynoth' WHERE  `entry`=105906;
UPDATE `creature_template` SET `ScriptName`='boss_ilgynoth' WHERE  `entry`=105393;
UPDATE `creature_template` SET `ScriptName`='npc_coen_event_first' WHERE  `entry`=119768;
UPDATE `creature_template` SET `ScriptName`='npc_dulzak' WHERE  `entry`=118704;
UPDATE `creature_template` SET `ScriptName`='npc_mefistrot_intro' WHERE  `entry`=120793;
UPDATE `creature_template` SET `ScriptName`='npc_captain_gerdo_vigilant_duskwatch' WHERE  `entry`=104918;
UPDATE `creature_template` SET `ScriptName`='npc_signal_lantern' WHERE  `entry`=105729;
UPDATE `creature_template` SET `ScriptName`='npc_duskwatch_sentry' WHERE  `entry`=104251;
UPDATE `creature_template` SET `ScriptName`='npc_gerdo_arcane_beacon' WHERE  `entry`=104245;
UPDATE `creature_template` SET `ScriptName`='npc_gerdo_streetsweeper' WHERE  `entry`=110403;
UPDATE `creature_template` SET `ScriptName`='npc_talixae_guards' WHERE  `entry` IN (104273, 104274, 104275);
UPDATE `creature_template` SET `ScriptName`='boss_advisor_melandrus' WHERE  `entry`=104218;
UPDATE `creature_template` SET `ScriptName`='npc_image_of_advisor_melandrus' WHERE  `entry`=105754;
UPDATE `creature_template` SET `ScriptName`='npc_suspicious_noble' WHERE  `entry`=107435;
UPDATE `creature_template` SET `ScriptName`='npc_advisor_enveloping_winds' WHERE  `entry`=112687;
UPDATE `creature_template` SET `ScriptName`='boss_agronox' WHERE  `entry`=117193;
UPDATE `creature_template` SET `ScriptName`='boss_thrashbite_the_scornful' WHERE  `entry`=117194;
UPDATE `creature_template` SET `ScriptName`='boss_domatrax' WHERE  `entry`=118804;
UPDATE `creature_template` SET `ScriptName`='npc_coen_egida' WHERE  `entry`=118884;
UPDATE `creature_template` SET `ScriptName`='boss_mephistroth' WHERE  `entry`=116944;
UPDATE `creature_template` SET `ScriptName`='npc_mephistroth_illidan' WHERE  `entry`=117855;
UPDATE `creature_template` SET `ScriptName`='npc_coen_maiev_events' WHERE  `entry`=120312;
UPDATE `creature_template` SET `ScriptName`='npc_coen_maiev_events' WHERE  `entry`=119147;
UPDATE `creature_template` SET `ScriptName`='npc_vha_impale_dummy' WHERE  `entry`=99850;
UPDATE `creature_template` SET `ScriptName`='boss_elerethe_renferal' WHERE entry=106087;
UPDATE `creature_template` SET `ScriptName`='npc_elerethe_venomous_spiderling' WHERE  `entry`=107459;
UPDATE `creature_template` SET `ScriptName`='npc_elerethe_twisting_shadows' WHERE  `entry` IN (106350, 107767, 111439);
UPDATE `creature_template` SET `ScriptName`='npc_elerethe_surging_egg_sac' WHERE  `entry`=108540;
UPDATE `creature_template` SET `ScriptName`='npc_en_venomous_spider' WHERE  `entry`=112039;
UPDATE `creature_template` SET `ScriptName`='npc_en_nightmother' WHERE  `entry`=111980;
UPDATE `creature_template` SET `ScriptName`='npc_en_shadowfeather' WHERE  `entry`=111975;
UPDATE `creature_template` SET `ScriptName`='boss_jiarak' WHERE  `entry`=132253;
UPDATE `creature_template` SET `ScriptName`='npc_en_venomous_spiderling' WHERE  `entry`=106311;
UPDATE `creature_template` SET `ScriptName`='boss_ursoc' WHERE  `entry`=100497;
UPDATE `creature_template` SET `ScriptName`='npc_ursoc_nightmare_image' WHERE  `entry`=100576;
UPDATE `creature_template` SET `ScriptName`='boss_dragon_ysondre' WHERE  `entry`=102679;
UPDATE `creature_template` SET `ScriptName`='boss_dragon_taerar' WHERE  `entry`=102681;
UPDATE `creature_template` SET `ScriptName`='boss_dragon_lethon' WHERE  `entry`=102682;
UPDATE `creature_template` SET `ScriptName`='boss_dragon_emeriss' WHERE  `entry`=102683;
UPDATE `creature_template` SET `ScriptName`='npc_ysondre_nightmare_bloom' WHERE  `entry`=102804;
UPDATE `creature_template` SET `ScriptName`='npc_ysondre_defiled_druid_spirit' WHERE  `entry`=103080;
UPDATE `creature_template` SET `ScriptName`='npc_ysondre_shade_of_taerar' WHERE  `entry`=103145;
UPDATE `creature_template` SET `ScriptName`='npc_ysondre_spirit_shade' WHERE  `entry`=103100;
UPDATE `creature_template` SET `ScriptName`='npc_ysondre_dread_horror' WHERE  `entry`=103044;
UPDATE `creature_template` SET `ScriptName`='npc_ysondre_corrupted_mushroom' WHERE  `entry` IN (103095, 103096, 103097);
UPDATE `creature_template` SET `ScriptName`='npc_en_rothos' WHERE  `entry`=111852;

REPLACE INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(191948,'spell_tirathon_darkstrike'),
(200354,'spell_ashgolm_frozen'),
(192517,'spell_brittle'),
(202341,'spell_anubesset_impale'),
(201863,'spell_anubesset_call_of_swarm'),
(207278,'spell_patrol_arcane_lockdown'),
(213304,'spell_righteous_indignation'),
(238598,'spell_agronox_choking_vines'),
(237726,'spell_coen_scornful_gaze'),
(238484,'spell_coen_beguiling_bio'),
(235827,'spell_domatrax_portals'),
(235881,'spell_domatrax_portals'),
(233155,'spell_mephistroth_carrion_swarm'),
(234114,'spell_mephistroth_egida'),
(236737,'spell_coen_fel_strike'),
(239217,'spell_coen_blinding_glare'),
(238653,'spell_coen_shadow_wave'),
(239052,'spell_coen_summon_spider'),
(239522,'spell_coen_fel_blaze'),
(218415,'spell_ilgynoth_death_blossom'),
(215128,'spell_ilgynoth_cursed_blood'),
(209471 ,'spell_ilgynoth_nightmare_explosion'),
(210048,'spell_ilgynoth_nightmare_explosion_pct'),
(261718,'spell_terror_wall_visual_back'),
(261560,'spell_terror_wall_visual'),
(261552,'spell_terror_wall'),
(261600,'spell_coalseced_essence'),
(225364,'spell_elerethe_energy_tracker_transform'),
(215288,'spell_elerethe_web_of_pain_filter'),
(215300,'spell_elerethe_web_of_pain'),
(214348,'spell_elerethe_vile_ambush'),
(214311,'spell_elerethe_feeding_time_filter'),
(215307,'spell_elerethe_web_of_pain'),
(215449,'spell_elerethe_necrotic_venom'),
(212993,'spell_elerethe_shimmering_feather_proc'),
(223029 ,'spell_en_wretched_ambush');

REPLACE INTO `instance_template` (`map`, `parent`, `script`, `insideResurrection`) VALUES 
(1651, 0, 'instance_new_karazhan', 0),
(1677, 1220, 'instance_cathedral_of_eternal_night', 0);

