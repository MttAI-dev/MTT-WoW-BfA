DELETE FROM `spell_script_names` WHERE spell_id IN (192794, 192737, 251888, 41986, 39645, 47541, 56815, 49143);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(192794, 'spell_eoa_lightning_strikes_damage'),
(192737, 'aura_eoa_lightning_strikes'),
(251888, 'spell_fire_enchanted'),
(41986,'spell_soul_fragment_anger'),
(47541, 'spell_dk_blood_charges'),
(56815, 'spell_dk_blood_charges'),
(49143, 'spell_dk_blood_charges'),
(39645,'spell_illidari_nightlord_shadow_inferno');


UPDATE `creature_template` SET
`ScriptName` = 'npc_eoa_hatecoil_arcanist', 
`faction` = 14,
`unit_class` = 1,
`minLevel` = 102, 
`maxLevel` = 110,
`unit_flags2` = `unit_flags2` |2048,
`InhabitType` = 3
WHERE `entry` = 97171;

UPDATE `instance_template` SET `script`='instance_siege_of_orgrimmar' WHERE `map`=1136;

DELETE FROM `spell_script_names` WHERE spell_id IN (50453, 45524, 58677, 159429, 45462, 227225, 197912, 61698, 33891);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(50453,  'spell_dk_blood_gorged'),
(45524, 'spell_dk_chilblains'),
(58677, 'spell_dk_glyph_of_deaths_embrace'),
(159429, 'spell_dk_glyph_of_runic_power'),
(45462, 'spell_dk_plague_strike'),
(227225, 'spell_dh_soul_barrier'),
(33891, 'incarnation_tree_of_life'),
(197912, 'spell_principles_of_war'),
(61698,'spell_gen_ds_flush_knockback');


UPDATE areatrigger_template SET scriptname = "at_dh_artifact_fury_of_the_illidari" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 5758);
UPDATE areatrigger_template SET scriptname = "at_demon_hunter_mana_rift" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 9695);
UPDATE areatrigger_template SET scriptname = "at_demon_hunter_demonic_trample" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 6482);

DELETE FROM `spell_script_names` WHERE `spell_id`=70691 AND `ScriptName`='spell_dru_t10_restoration_4p_bonus';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70691,'spell_dru_t10_restoration_4p_bonus');

DELETE FROM `spell_script_names` WHERE `spell_id`=20217 OR `ScriptName`='spell_pal_blessing_of_kings';
INSERT INTO `spell_script_names` VALUES
(20217,'spell_pal_blessing_of_kings');


DELETE FROM `spell_script_names` WHERE `spell_id`=19740 OR `ScriptName`='spell_pal_blessing_of_might';
INSERT INTO `spell_script_names` VALUES
(19740,'spell_pal_blessing_of_might');

DELETE FROM `spell_script_names` WHERE `spell_id`=1126 OR `ScriptName`='spell_dru_mark_of_the_wild';
INSERT INTO `spell_script_names` VALUES
(1126,'spell_dru_mark_of_the_wild');

DELETE FROM `spell_script_names` WHERE `spell_id`=27683 OR `ScriptName`='spell_pri_shadow_protection';
INSERT INTO `spell_script_names` VALUES
(27683,'spell_pri_shadow_protection');

DELETE FROM `spell_script_names` WHERE `spell_id`=37506 AND `ScriptName`='spell_hun_scatter_shot';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (37506,'spell_hun_scatter_shot');

DELETE FROM `spell_script_names` WHERE spell_id IN (185901, 53301, 223138, 35110, 202800, 204740, 206933, 53480);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(185901, "spell_hun_marked_shot"),
(53301, 'spell_hun_hunters_mark'),
(223138, "spell_hun_marking_targets"), 
(35110, 'spell_hun_bombardment'), 
(202800, "spell_hun_flanking_strike"),
(204740, "spell_hun_flanking_strike_proc"),
(206933, "spell_hun_flanking_strike_proc_up"),
(53480, 'spell_hun_roar_of_sacrifice');

DELETE FROM `spell_script_names` WHERE `ScriptName`= 'spell_hun_serpent_sting';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(1978, 'spell_hun_serpent_sting');

DELETE FROM `spell_script_names` WHERE spell_id IN (120761, 205434, 121414, 120755, 212431, 19434, 120756, 130392, 214579, 155228, 204147, 186265);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(120761, 'spell_hun_glaive_toss_damage'),
(121414, 'spell_hun_glaive_toss_damage'),
(120755, 'spell_hun_glaive_toss_missile'),
(120756, 'spell_hun_glaive_toss_missile'),
(130392, 'spell_hun_blink_strike'),
(214579, 'spell_hun_sidewinders'),
(155228, 'spell_hun_lone_wolf_aura'),
(204147, 'spell_hun_windburst'),
(186265, 'spell_hun_aspect_of_the_turtle'),
(205434, 'spell_hun_flanking_strike_pet'),
(212431, 'spell_hun_explosive_shot_aura'),
(19434, 'spell_hun_aimed_shot');

DELETE FROM spell_script_names WHERE scriptname = "spell_mage_ray_of_frost_buff";
INSERT INTO spell_script_names VALUES
(208166, "spell_mage_ray_of_frost_buff");





