REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(219272, 'spell_warl_demonskin'),
(686, 'spell_warl_demonic_call'),
(47193,'spell_warl_demonic_empowerment'),
(103958, 'spell_warl_metamorphosis_cost'),
(47960, 'spell_warl_molten_core_dot'),
(-7235, 'spell_warl_shadow_ward'),
(228974, 'spell_warl_soul_leech_aura'),
(86121, 'spell_warl_soul_swap'),
(92795, 'spell_warl_soul_swap_dot_marker'),
(86213, 'spell_warl_soul_swap_exhale'), 
(86211, "spell_warl_soul_swap_override"),
(29858,'spell_warl_soulshatter'),
(6229, 'spell_warl_twilight_ward_s12'),
(104048, 'spell_warl_twilight_ward_s12'),
(193440, "spell_warl_demonwrath_periodic"),
(196098, "spell_warl_soul_harvest"),
(108501, "spell_warl_grimoire_of_service_aura"),
(265412, 'spell_warl_doom'),
(710, 'spell_warl_banish'),
(111400, 'spell_warl_burning_rush'),
(104316, 'spell_warl_call_dreadstalkers'),
(116858, 'spell_warl_chaos_bolt'),
(215279, 'spell_warl_chaos_bolt'),
(17962, 'spell_warl_conflagrate'),
(17962, 'spell_warl_conflagrate_aura'),
(146739, 'spell_warl_corruption_effect'),
(34130, 'spell_warl_create_healthstone_soulwell'),
(108416, 'spell_warl_dark_pact'),
(108359, 'spell_warl_dark_regeneration'),
(264178, 'spell_warl_demonbolt'),
(48018, 'spell_warl_demonic_circle_summon'),
(48020, 'spell_warl_demonic_circle_teleport'),
(111771, 'spell_warl_demonic_gateway'),
(19505, 'spell_warl_devour_magic'),
(67518, 'spell_warl_devour_magic'),
(198590, 'spell_warl_drain_soul'),
(5782, 'spell_warl_fear'),
(204730, 'spell_warl_fear_buff'),
(58094, 'spell_warl_glyph_of_soulwell'),
(105174, 'spell_warl_hand_of_guldan'),
(86040, 'spell_warl_hand_of_guldan_damage'),
(48181, 'aura_warl_haunt'),
(80240, 'spell_warl_havoc'),
(755, 'spell_warl_health_funnel'),
(6262, 'spell_warl_healthstone_heal'),
(348, 'spell_warl_immolate'),
(193541, 'spell_warl_immolate_aura'),
(1454, 'spell_warl_life_tap'),
(27243, 'spell_warl_seed_of_corruption'),
(27285, 'spell_warl_seed_of_corruption_damage'),
(686, 'spell_warl_shadow_bolt'),
(17767, 'spell_warl_shadow_bulwark'),
(17877, 'spell_warl_shadowburn'),
(137043, 'spell_warl_soul_leach_applier'),
(137044, 'spell_warl_soul_leach_applier'),
(137046, 'spell_warl_soul_leach_applier'),
(30108, 'spell_warl_unstable_affliction'),
(233490, 'aura_warl_unstable_affliction'),
(233496, 'aura_warl_unstable_affliction'),
(233497, 'aura_warl_unstable_affliction'),
(233498, 'aura_warl_unstable_affliction'),
(233499, 'aura_warl_unstable_affliction'),
(205371, 'spell_warl_void_ray'),
(119905, 'spell_warl_cauterize_master'),
(119907, 'spell_warl_suffering'),
(119909, 'spell_warl_whiplash'),
(119910, 'spell_warl_spell_lock'),
(119914, 'spell_warl_felstorm'),
(193439, 'spell_warl_demonwrath'),
(171152, 'spell_warl_meteor_strike'),
(171140, 'spell_warl_shadow_lock'),
(152108, 'spell_warl_cataclysm'),
(157736, 'spell_warl_immolate_dot'),
(215941, 'spell_warl_soul_conduit'),
(196447, 'spell_warl_channel_demonfire'),
(111859, 'spell_warl_grimoire_of_service'),
(111895, 'spell_warl_grimoire_of_service'),
(111896, 'spell_warl_grimoire_of_service'),
(111897, 'spell_warl_grimoire_of_service'),
(111898, 'spell_warl_grimoire_of_service'),
(196277, 'spell_warl_implosion'),
(171975, 'spell_warl_grimoire_of_synergy'),
(205231, 'spell_warl_eye_laser'),
(205145, 'spell_warl_demonic_calling'),
(77220, 'spell_warl_chaotic_energies'),
(196414, 'spell_warl_eradication'),
(205179, 'aura_warl_phantomatic_singularity'),
(29722, 'spell_warl_incinerate'),
(59262, 'spell_npc_warl_demonic_gateway_green'),
(59271, 'spell_npc_warl_demonic_gateway_purple');


UPDATE `creature_template` SET `ScriptName`='npc_pet_warlock_darkglare' WHERE  `entry`=103673;
UPDATE `creature_template` SET `ScriptName`='npc_pet_warlock_wild_imp' WHERE  `entry`=99739;


DELETE FROM spell_script_names WHERE ScriptName = 'spell_warl_create_healthstone';
INSERT INTO `spell_script_names` VALUES (34130,'spell_warl_create_healthstone'), (6201,'spell_warl_create_healthstone'); 


DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=34130 AND `spell_effect`=23517 AND `type`=0;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (34130, 23517, 0, 'Create Healthstone');

DELETE FROM spell_script_names WHERE ScriptName = 'spell_warl_create_healthstone';
INSERT INTO `spell_script_names` VALUES 
(34130,'spell_warl_create_healthstone'), 
(23517,'spell_warl_create_healthstone'), 
(6201,'spell_warl_create_healthstone'); 


DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '6201';
INSERT INTO `spell_linked_spell` VALUES 
('6201','23517','0','Create Healthstone'),
('6201','34130','0','Create Healthstone');








