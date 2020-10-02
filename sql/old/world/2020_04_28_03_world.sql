DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_suffering';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_soul_leach_applier';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_soul_conduit';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_shadow_lock';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_shadow_bulwark';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_immolate_aura';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_health_funnel';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_grimoire_of_synergy';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_whiplash';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_grimoire_of_service';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_fear_buff';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_fear';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_drain_soul';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_devour_magic';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_demonskin';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_demonic_gateway';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_demonbolt';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_dark_pact';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_corruption_effect';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_conflagrate_aura';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_conflagrate';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_chaotic_energies';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_chaos_bolt';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_call_dreadstalkers';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_burning_rush';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_back_draft_aura';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_throw_staff';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_felstorm';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_immolate';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_doom';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_cataclysm';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_implosion';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_opera_wikket_bond';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_npc_warl_demonic_gateway_purple';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_monk_renewing_mist_periodic';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_monk_blackout_kick';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_mage_unstable_magic';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_mage_frost_bomb_damage';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_item_last_deck_of_nemelex_nobeh';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_shadowburn';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_ghost_essence';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_seed_of_corruption';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_fel_mastery';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_hand_of_guldan';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_demon_spikes_buff';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_life_tap';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_attumen_spectral_charge';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_corstilax_cleansing_force';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_annihilation';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_annihilation_damage';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_glyph_of_soulwell';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_blade_dance';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_consume_soul_vengeance';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_demon_blades';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_eye_beam_trigger';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_felblade_reset';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_immolation_aura_damage';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_metamorphosis_buffs';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_shattered_souls';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_eye_laser';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_spirit_bomb_damage';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_vengeful_retreat';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_vengeful_retreat_fury_refiller';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_naltira_tangled_web_check_dist';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_immolate_dot';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_demonwrath';

REPLACE INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(201644,'spell_legion_food_table'),
(200904,'spell_tormentorum_sap_soul'),
(206019,'spell_tormentorum_corrupted_touch'),
(195032,'spell_glazer_radiation'),
(194463,'spell_glazer_beam'),
(194468,'spell_glazer_beam');

   
UPDATE creature_template SET scriptname='npc_anachronos' WHERE entry=15192;
UPDATE creature_template SET scriptname='npc_hallegosa' WHERE entry IN (53371,53466);
UPDATE creature_template SET scriptname='npc_kalecgos_for_teracgosa' WHERE entry=53392;

UPDATE `quest_template_addon` SET `PrevQuestID`=14071 WHERE `ID` IN (28606,28607);
UPDATE `quest_template_addon` SET `PrevQuestID`=14071 WHERE `ID`=26711;
UPDATE `quest_template_addon` SET `PrevQuestID`=14110 WHERE `ID`=14153;
UPDATE `quest_template` SET `Flags`=128 WHERE `ID`=14070;
