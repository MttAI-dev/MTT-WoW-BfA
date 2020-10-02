DELETE FROM `creature_formations` WHERE `leaderGUID` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_formations` WHERE `memberGUID` NOT IN (SELECT `guid` FROM `creature`);

DELETE FROM `instance_template` WHERE `map`=1494;
REPLACE INTO `instance_template` (`map`, `parent`, `script`, `allowMount`, `insideResurrection`) 
VALUES (1494, 1220, 'scenario_the_violet_hold', 0, 0);

UPDATE `instance_template` SET `parent`='1220', `script`='instance_vault_of_the_wardens' WHERE (`map`='1493');
UPDATE `instance_template` SET `script`='scenario_artifact_brokenshore', `parent`=0, `insideResurrection`=1 WHERE `map`=1500;
UPDATE `instance_template` SET `Script` = 'scenario_artifact_karazhan_catacombs' WHERE `map` = 1533;
UPDATE `instance_template` SET `Script` = 'scenario_artifact_ruins_of_falanaar' WHERE `map` = 1612;

REPLACE INTO `spell_script_names`(`spell_id`,`ScriptName`) VALUES 
(219045, 'spell_mothers_embrace'),
(223374, 'spell_flotsam_yaksam_target'),
(217249, 'spell_massive_spoul'),
(219591, 'spell_foundational_collapse'),
(223614, 'spell_resonance'),
(197941, 'at_elunes_light'),
(190833, 'spell_tirathon_beam_dmg'),
(191941, 'spell_tirathon_darkstrikes'),
(234684, 'spell_q_artifact_trait_unlock'),
(237784, 'spell_q_faint_ritual_circle'),
(108129, 'spell_q30050_resuscitate'),
(99435, 'spell_q29347_bait'),
(194582, 'spell_gen_love_seat'),
(63517, 'spell_q13698_shredder_aura'),
(63520, 'spell_q13698_saw'),
(99424, 'spell_q29347_crayfish'),
(24751, 'spell_gen_trick_or_treat'),
(49882, 'spell_gen_leviroth_self_impale'),
(185496, 'spell_gen_mining_trap'),
(185528, 'spell_gen_mining_trap'),
(185529, 'spell_gen_mining_trap'),
(185768, 'spell_gen_mining_trap'),
(185769, 'spell_gen_mining_trap'),
(185770, 'spell_gen_mining_trap'),
(193378,'spell_gen_herbalism_trap'),
(193379,'spell_gen_herbalism_trap'),
(193380,'spell_gen_herbalism_trap'),
(193381,'spell_gen_herbalism_trap'),
(193382,'spell_gen_herbalism_trap'),
(193383,'spell_gen_herbalism_trap'),
(193384,'spell_gen_herbalism_trap'),
(192190,'spell_gen_create_artefact'),
(220058,'spell_gen_absorb_if_health'),
(220110,'spell_gen_absorb_if_health'),
(220584,'spell_hidden_appearance_unlock'),
(220645,'spell_hidden_appearance_unlock'),
(220651,'spell_hidden_appearance_unlock'),
(220658,'spell_hidden_appearance_unlock'),
(220662,'spell_hidden_appearance_unlock'),
(220663,'spell_hidden_appearance_unlock'),
(220670,'spell_hidden_appearance_unlock'),
(220676,'spell_hidden_appearance_unlock'),
(220679,'spell_hidden_appearance_unlock'),
(220681,'spell_hidden_appearance_unlock'),
(220683,'spell_hidden_appearance_unlock'),
(220684,'spell_hidden_appearance_unlock'),
(220688,'spell_hidden_appearance_unlock'),
(220690,'spell_hidden_appearance_unlock'),
(220691,'spell_hidden_appearance_unlock'),
(220692,'spell_hidden_appearance_unlock'),
(220693,'spell_hidden_appearance_unlock'),
(220694,'spell_hidden_appearance_unlock'),
(220696,'spell_hidden_appearance_unlock'),
(220699,'spell_hidden_appearance_unlock'),
(220701,'spell_hidden_appearance_unlock'),
(220703,'spell_hidden_appearance_unlock'),
(220705,'spell_hidden_appearance_unlock'),
(220706,'spell_hidden_appearance_unlock'),
(220708,'spell_hidden_appearance_unlock'),
(220709,'spell_hidden_appearance_unlock'),
(220710,'spell_hidden_appearance_unlock'),
(220712,'spell_hidden_appearance_unlock'),
(220715,'spell_hidden_appearance_unlock'),
(220718,'spell_hidden_appearance_unlock'),
(220724,'spell_hidden_appearance_unlock'),
(220729,'spell_hidden_appearance_unlock'),
(220731,'spell_hidden_appearance_unlock'),
(220732,'spell_hidden_appearance_unlock'),
(220734,'spell_hidden_appearance_unlock'),
(220792,'spell_gen_absorb_if_health'),
(220887,'spell_gen_absorb_if_health');

UPDATE areatrigger_template SET scriptname = "at_dh_fury_of_the_illidari" WHERE id = 10470;
UPDATE areatrigger_template SET scriptname = "at_warlock_bane_of_havoc" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 5650);
UPDATE areatrigger_template SET scriptname = "at_warlock_fel_fissure" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 6959);
UPDATE areatrigger_template SET scriptname = "at_warlock_summon_observer" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 90001);
UPDATE areatrigger_template SET scriptname = "at_warlock_casting_circle" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 8138);
UPDATE areatrigger_template SET scriptname = "at_demon_hunter_demonic_trample" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 6482);
UPDATE areatrigger_template SET scriptname = "at_demon_hunter_mana_rift" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 9695);

UPDATE `instance_template` SET `script`='scenario_artifact_tirisfal_glades', `insideResurrection`=1 WHERE `map`=1539;

DELETE FROM  `instance_template` WHERE `map`=1536;
REPLACE INTO `instance_template` (`map`, `parent`, `script`, `allowMount`, `insideResurrection`) VALUES 
(1536, 0, 'scenario_artifact_ursocslair', 1, 1);

REPLACE  INTO `criteria_data`(`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) values 
(19825,11,0,0,'achievement_run_with_the_wind'),
(17836,11,0,0,'achievement_master_of_the_molten_flow'),
(24823,11,0,0,'achievement_almost_blink_luck'),
(37930,11,0,0,'achievement_kill_antoran_demons'),
(23525,11,0,0,'achievement_weighed_down'),
(22644,11,0,0,'achievement_a_test_of_valor'),
(22645,11,0,0,'achievement_a_test_of_valor'),
(6455, 41, 0, 0, 'achievement_show_me_you_moves');

REPLACE  INTO `item_script_names`(`Id`,`ScriptName`) values 
(153190,'item_fel_spotted_egg'),
(71259, 'item_leyara_locket'),
(33096,'item_brewfest_sampler'),
(33306,'item_brewfest_ram_reins'),
(44430,'item_titanium_seal_of_dalaran');



