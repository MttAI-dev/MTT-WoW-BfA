UPDATE `creature_template` SET `entry`='67267', `gossip_menu_id`='15284', `minlevel`='100', `maxlevel`='100',  `faction`='1801', `npcflag`='1', `speed_walk`='1', `speed_run`='1.14286',  `scale`='1', `dmgschool`='0', `baseattacktime`='2000', `rangeattacktime`='0', `unit_class`='1', `unit_flags`='768', `unit_flags2`='0', `unit_flags3`='0', `dynamicflags`='0', `trainer_type`='0',  `InhabitType`='3', `HoverHeight`='1', `RegenHealth`='1', `mechanic_immune_mask`='0', `flags_extra`='0', `ScriptName`='npc_brawlers_guild_queue'  WHERE (`entry` = 67267) ;
UPDATE `creature_template` SET `ScriptName`='npc_bizmo' WHERE  `entry`=68323;
UPDATE `creature_template` SET `ScriptName`='npc_bossy' WHERE  `entry`=67260;

REPLACE INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (132639,'spell_queued_for_brawl');

REPLACE INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(93228,'brawl_invitation_item'),
(93195,'brawl_invitation_item'),
(93194,'brawl_invitation_item');


UPDATE creature_template SET scriptname='npc_hunter_talua', `gossip_menu_id`='19868' WHERE entry=108868;
UPDATE `creature_template` SET npcflag=0, vehicleid='4839', scriptname='npc_great_eagle', inhabittype=4 WHERE `entry`=108853;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_archmage_khadgar_86563' WHERE `entry`='86563';
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_jace_darkweaver_99262' WHERE `entry`='99262';
UPDATE `creature_template` SET `ScriptName`='npc_khadgar_upgraded_servant' WHERE  `entry`=114561;
UPDATE `creature_template` SET `ScriptName`='npc_guard_dalaran_legion' WHERE `entry` IN (108323, 103626);
UPDATE `gameobject_template` SET `ScriptName` = 'go_a_mysterious_note' WHERE `entry` = 266619 ;
UPDATE `creature_template` SET `ScriptName`='npc_credit_portal_taken_110409' WHERE `entry`=110409;

DELETE FROM `zone_scripts` WHERE `zoneId`=493;
replace INTO `zone_scripts` (zoneId, scriptname) VALUES
(7502, "zone_legion_dalaran");

UPDATE `creature_template` SET `ScriptName`='npc_emissary_auldbridge_111109' WHERE `entry`=111109;
UPDATE `creature_template` SET `ScriptName`='npc_warden_alturas' WHERE  `entry`=96313;

UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_allari_souleater_104909' WHERE `entry`='104909';
UPDATE `gameobject_template` SET `ScriptName`="go_violethold_entrance_portal" WHERE `entry`=193609;
UPDATE `creature_template` SET `ScriptName` = 'npc_illidari_felbat_94324' WHERE `entry` = 94324;
UPDATE `creature_template` SET `ScriptName`='npc_jace_darkweaver_109196' WHERE `entry`=109196;
UPDATE `quest_template_addon` SET `PrevQuestID`=42869 WHERE `ID`=42872;
UPDATE `quest_template_addon` SET `ScriptName`='q_securing_the_way' WHERE `ID`=42872;

REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(217377, 'spell_redoubt_sentence_to_death');

UPDATE `creature_template` SET `ScriptName`='npc_redoubt_asha' WHERE `entry` = 102798;
UPDATE `creature_template` SET `ScriptName`='npc_redoubt_belath' WHERE `entry` = 102797;

REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(215782, 'spell_redoubt_teleport_to_dh_ch');

UPDATE `creature_template` SET `ScriptName`='npc_Gryphon_108973' WHERE  `entry`=108973;
UPDATE `creature_template` SET `ScriptName`='npc_prince_farondis' WHERE  `entry`=88889;
UPDATE `creature_template` SET `ScriptName`='npc_prince_farondis_escort' WHERE  `entry`=90077;

REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(211546, 'spell_word_of_versatility');

UPDATE `gameobject_template` SET `ScriptName`='go_sabotaged_portal_stabilizer' WHERE  `entry`=250361;



REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(214482, 'spell_gen_radiant_ley_crystal'),
(210543, 'spell_rally_the_nightwatchers'),
(212782, 'spell_Wand_Practice'),
(211441, 'spell_drop_stone'),
(181981, 'spell_pump'),
(221420, 'spell_return_valshara');

UPDATE `creature_template` SET `ScriptName`='npc_archmage_khadgar_93337' WHERE  `entry`=93337;
UPDATE `creature_template` SET `ScriptName`='merayl_q42159' WHERE  `entry`=106552;
UPDATE `creature_template` SET `ScriptName`='npc_kimmruder_88911' WHERE  `entry`=88911;
UPDATE `creature_template` SET `ScriptName`='npc_summon_91155' WHERE  `entry`=91155;
UPDATE `creature_template` SET `ScriptName`='cedonu_107962' WHERE  `entry`=107962;
UPDATE `creature_template` SET `ScriptName`='kharmeera_107963' WHERE  `entry`=107963;
UPDATE `creature_template` SET `ScriptName`='emmigosa_107961' WHERE  `entry`=107961;
UPDATE `creature_template` SET `ScriptName`='berazus_107964' WHERE  `entry`=107964;
UPDATE `creature_template` SET `ScriptName`='npc_senegosa_89978' WHERE  `entry`=89978;
UPDATE `creature_template` SET `ScriptName`='npc_agapant_90543' WHERE  `entry`=90543;

UPDATE `gameobject_template` SET `ScriptName`='go_pylon_mana245572' WHERE  `entry`=245572;
UPDATE `gameobject_template` SET `ScriptName`='go_pylon_mana245573' WHERE  `entry`=245573;
UPDATE `gameobject_template` SET `ScriptName`='go_pylon_mana239959' WHERE  `entry`=239959;
UPDATE `gameobject_template` SET `ScriptName`='go_pylon_mana245574' WHERE  `entry`=245574;
UPDATE `gameobject_template` SET `ScriptName`='go_fel_power_run244706' WHERE  `entry`=244706;

UPDATE `creature_template` SET `ScriptName`='npc_lucid_strength_89939' WHERE  `entry`=89939;
UPDATE `creature_template` SET `ScriptName`='mana_drained_90880' WHERE  `entry`=90880;
UPDATE `creature_template` SET `ScriptName`='npc_demon_90402' WHERE  `entry`=90402;
UPDATE `creature_template` SET `ScriptName`='npc_demon_89276' WHERE  `entry`=89276;
UPDATE `creature_template` SET `ScriptName`='npc_demon_89673' WHERE  `entry`=89673;
UPDATE `gameobject_template` SET `ScriptName`='go_soul_gem239338' WHERE  `entry`=239338;
UPDATE `gameobject_template` SET `ScriptName`='go_soul_gem239332' WHERE  `entry`=239332;
UPDATE `gameobject_template` SET `ScriptName`='go_soul_gem237017' WHERE  `entry`=237017;
UPDATE `creature_template` SET `ScriptName`='npc_legionfall_soldier_119141' WHERE `entry`=119141;
UPDATE `creature_template` SET `name`='Juvenile Worm', `ScriptName`='npc_bone_crawler_grub_116951' WHERE `entry`=116951;
UPDATE `creature_template` SET `ScriptName`='npc_treasure_master_iksreeged_121302' WHERE `entry`=121302;
UPDATE `creature_template` SET `name`='Anti-magic Coalition Construction Table', `ScriptName`='npc_legionfall_construction_table_119305' WHERE `entry`=119305;
UPDATE `creature_template` SET `ScriptName`='npc_94973' WHERE  `entry`=94973;
UPDATE `gameobject_template` SET `ScriptName`='go_volatile_barrel_stormheim' WHERE  `entry`=240600;
UPDATE `creature_template` SET `ScriptName`='npc_grapple_point' WHERE  `entry`=91984;
UPDATE `creature_template` SET `ScriptName`='npc_cyrille_107350' WHERE  `entry`=107350;
UPDATE `creature_template` SET `ScriptName`='npc_astoril' WHERE  `entry`=100192;
UPDATE `creature_template` SET `ScriptName`='npc_lorin_107349' WHERE  `entry`=107349;
UPDATE `creature_template` SET `ScriptName`='npc_sylessa_107348' WHERE  `entry`=107348;
UPDATE `creature_template` SET `ScriptName`='npc_gondolier_107225' WHERE  `entry`=107225;
UPDATE `creature_template` SET `ScriptName`='npc_thallyssra_97140' WHERE  `entry`=97140;
UPDATE `creature_template` SET `ScriptName`='npc_zoneexplorer_113893' WHERE  `entry`=113893;
UPDATE `creature_template` SET `ScriptName`='npc_zoneexplorer_113894' WHERE  `entry`=113894;
UPDATE `creature_template` SET `ScriptName`='npc_gossip_102600' WHERE  `entry`=102600;
UPDATE `creature_template` SET `ScriptName`='npc_malfurion_valshara' WHERE  `entry`=91109;
UPDATE `creature_template` SET `ScriptName`='npc_ysera_valshara' WHERE  `entry`=92742;
UPDATE `creature_template` SET `ScriptName`='npc_subdued_nightwing' WHERE  `entry`=111359;
UPDATE `creature_template` SET `ScriptName`='npc_92850' WHERE  `entry`=92850;
UPDATE `creature_template` SET `ScriptName`='npc_vereesa_windrunner_121754' WHERE  `entry`=121754;
UPDATE `creature_template` SET `ScriptName`='npc_lady_liadrin_122065' WHERE  `entry`=122065;
UPDATE `creature_template` SET `ScriptName`='npc_vindicator_boros_121756' WHERE  `entry`=121756;
UPDATE `creature_template` SET `ScriptName`='npc_lightforged_beacon_122045' WHERE  `entry`=122045;
UPDATE `creature_template` SET `ScriptName`='npc_prophet_velen_120977' WHERE  `entry`=120977;
UPDATE `creature_template` SET `ScriptName`='npc_light_crystal_122052' WHERE  `entry`=122052;
UPDATE `creature_template` SET `ScriptName`='npc_prophet_velen_126307' WHERE  `entry`=126307;
UPDATE `creature_template` SET `ScriptName`='npc_korvas_bloodthorn_99343' WHERE  `entry`=99343;
UPDATE `gameobject_template` SET `ScriptName`='go_mardum_control_console' WHERE `entry`=254245;
UPDATE `creature_template` SET `ScriptName`='npc_mardum_altruis_ch' WHERE `entry`=95237;
UPDATE `creature_template` SET `gossip_menu_id` = 98650, `minlevel` = 110, `maxlevel` = 110, `npcflag` = 3, `speed_run` = 0.992063, `ScriptName`='npc_mardum_battlelord_gaardoun' WHERE `entry`=98650;
UPDATE `creature_template` SET `gossip_menu_id` = 103025, `minlevel` = 110, `maxlevel` = 110, `speed_run` = 0.992063, `ScriptName`='npc_mardum_battlelord_gaardoun_103025' WHERE `entry`=103025;
UPDATE `gameobject_template` SET `ScriptName`='go_mardum_empowered_nether_crusible' WHERE `entry`=250677;
UPDATE `scene_template` SET `ScriptName`='scene_gaze_upon_legion' WHERE `SceneId`=1203 AND `ScriptPackageId`=1567;
UPDATE `quest_template_addon` SET `ScriptName`='q_paradise_lost' WHERE `ID`=39718;
UPDATE `quest_template_addon` SET `ScriptName`='q_stormheim' WHERE `ID`=39735;
UPDATE `quest_template_addon` SET `ScriptName`='q_the_lone_mountain' WHERE `ID`=39733;
UPDATE `quest_template_addon` SET `ScriptName`='q_the_tranquil_forest' WHERE `ID`=39731;
UPDATE `creature_template` SET `AIName`="",`ScriptName`='npc_archdruid_hamuul_runetotem_101061' WHERE `entry`= 101061 ;
UPDATE `creature_template` SET `ScriptName` = 'npc_archdruid_hamuul_runetotem_101064' WHERE `entry` = 101064;
UPDATE `creature_template` SET `InhabitType`=4, `AIName`='', `ScriptName`='npc_zentabra_103135' WHERE `entry`=103135;
UPDATE `creature_template` SET `ScriptName`='npc_zentabra_103136' WHERE `entry`=103136;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_naralex_103133' WHERE `entry`=103133;
UPDATE `creature_template` SET `ScriptName`='npc_malfurion_stormrage_103875' WHERE (`entry`='103875');
UPDATE `creature_template` SET `ScriptName`='npc_keeper_remulos_103489' WHERE (`entry`='103489');
UPDATE `creature_template` SET `ScriptName`='npc_generic_bunny_quest_to_the_dreamgrove_59115' WHERE  `entry`=59115;
UPDATE `creature_template` SET `ScriptName`='npc_keeper_remulos_103488' WHERE (`entry`='103488');
UPDATE `creature_template` SET `ScriptName`='npc_nightmare_blight_103246' WHERE (`entry`='103246');
UPDATE `creature_template` SET `ScriptName`='npc_skycaller_faeb_122095' WHERE `entry`=122095;
UPDATE `creature_template` SET `ScriptName`='npc_grove_tender_98029' WHERE `entry`=98029;
UPDATE `creature_template` SET `ScriptName`='npc_laughing_sister_98027' WHERE `entry`=98027;
UPDATE creature_template SET scriptname = "npc_warl_shadowy_tear" WHERE entry = 99887;
UPDATE areatrigger_template SET scriptname = "at_dh_fury_of_the_illidari" WHERE id = 10470;
UPDATE creature_template SET scriptname = "npc_warl_chaos_tear" WHERE entry = 108493;
UPDATE `creature_template` SET `ScriptName`='npc_sasszine_delicious_bufferfish' WHERE  `entry`=119791;
UPDATE `creature_template` SET `ScriptName`='npc_makka_100519' WHERE  `entry`=100519;
UPDATE `creature_template` SET `ScriptName`='npc_high_overlord_saurfang_93773' WHERE  `entry`=93773;
UPDATE `creature_template` SET `ScriptName`='npc_sergeant_dalton_108961' WHERE  `entry`=108961;
UPDATE `creature_template` SET `ScriptName`='npc_eitrigg_93775' WHERE  `entry`=93775;
UPDATE `creature_template` SET `ScriptName`='npc_ritssyn_flamescowl_103506' WHERE  `entry`=103506;
UPDATE `creature_template` SET `ScriptName`='lord_kravos105183' WHERE  `entry`=105183;
UPDATE `creature_template` SET `ScriptName`='npc_regar_966541' WHERE  `entry`=96541;
UPDATE `creature_template` SET `ScriptName`='npc_graddoc_113354' WHERE  `entry`=113354;
UPDATE `creature_template` SET `ScriptName`='npc_eranak_1028267' WHERE  `entry`=102826;
UPDATE `creature_template` SET `ScriptName`='npc_adelees_staff_111102' WHERE  `entry`=111102;
UPDATE `creature_template` SET `ScriptName`='npc_bubble_112142' WHERE  `entry`=112142;
UPDATE `creature_template` SET `ScriptName`='npc_gethzun_98379' WHERE  `entry`=98379;
UPDATE `creature_template` SET `ScriptName`='npc_sturmschnabel_983830' WHERE  `entry`=98383;
UPDATE `creature_template` SET `ScriptName`='npc_milra_113709' WHERE  `entry`=113709;
UPDATE `creature_template` SET `ScriptName`='npc_thrall_965271' WHERE  `entry`=96527;
UPDATE `creature_template` SET `ScriptName`='npc_trall_91731' WHERE  `entry`=91731;
UPDATE `creature_template` SET `ScriptName`='npc_stormbeak_104681' WHERE  `entry`=104681;
UPDATE `creature_template` SET `ScriptName`='npc_princess_tess_greymane_94138' WHERE  `entry`=94138;
UPDATE `creature_template` SET `ScriptName`='npc_fleet_admiral_tethys_94159' WHERE  `entry`=94159;
UPDATE `creature_template` SET `ScriptName`='npc_valeera_sanguinar_98102' WHERE  `entry`=98102;
UPDATE `creature_template` SET `ScriptName`='npc_lord_jorach_ravenholdt_101513' WHERE  `entry`=101513;
UPDATE `creature_template` SET `ScriptName`='npc_red_jack_findle_97004' WHERE  `entry`=97004;
UPDATE `creature_template` SET `ScriptName`='npc_enter_the_hall_of_shadows_102086' WHERE  `entry`=102086;
UPDATE `creature_template` SET `ScriptName`='npc_ravenholdt_courier_102018' WHERE  `entry`=102018;
UPDATE `creature_template` SET `ScriptName`='npc_calia_102343' WHERE  `entry`=102343;
UPDATE `creature_template` SET `minlevel`=98, `maxlevel`=110, `npcflag`=2, `ScriptName`='npc_hooded_priestess' WHERE `entry`=101344; 
UPDATE `creature_template` SET `minlevel`=98, `maxlevel`=110, `npcflag`=2, `ScriptName`='npc_hooded_priestess' WHERE `entry`=102333; 
UPDATE `creature_template` SET `ScriptName`='npc_argent_hippogryph_105886' WHERE  `entry`=105886;
UPDATE `creature_template` SET `ScriptName`='npc_orik_trueheart_105813' WHERE  `entry`=105813;
UPDATE `creature_template` SET `ScriptName`='npc_tahu_sagewind_105727' WHERE  `entry`=105727;
UPDATE `creature_template` SET `ScriptName`='npc_orik_trueheart_108693' WHERE  `entry`=108693;
UPDATE `creature_template` SET `ScriptName`='npc_travard_108692' WHERE  `entry`=108692;
UPDATE `creature_template` SET `ScriptName`='npc_npc_lord_maxwell_tyrosus_92909' WHERE  `entry`=92909;
UPDATE `creature_template` SET `minlevel`=98, `maxlevel`=110, `npcflag`=2, `ScriptName`='npc_initiate_da_nel' WHERE `entry`=98519;
UPDATE `creature_template` SET `ScriptName`='npc_meryl_felstorm_102700' WHERE  `entry`=102700;
UPDATE `creature_template` SET `ScriptName`='npc_courier_larkspur_100171' WHERE  `entry`=100171;
UPDATE `creature_template` SET `ScriptName`='npc_apata_highmountain_99986' WHERE  `entry`=99986;
UPDATE `creature_template` SET `ScriptName`='npc_grif_wildheart_100810' WHERE  `entry`=100810;
UPDATE `creature_template` SET `ScriptName`='npc_rensar_greathoof_101195' WHERE  `entry`=101195;
UPDATE `creature_template` SET `ScriptName`='npc_keeper_remulos_103832' WHERE `entry`=103832;
UPDATE `creature_template` SET `ScriptName`='npc_lea_stonepaw_101259' WHERE `entry`=101259;
UPDATE `creature_template` SET `ScriptName`='npc_lea_stonepaw_104535' WHERE `entry`=104535;
UPDATE `creature_template` SET `ScriptName`='npc_ursol_104385' WHERE `entry`=104385;
UPDATE `creature_template` SET `minlevel`=98, `maxlevel`=110, `faction`=2245, `ScriptName`='npc_ancestral_champion_104714' WHERE `entry`=104714;
UPDATE `creature_template` SET `ScriptName`='npc_ancestral_warrior_104936' WHERE `entry`=104936;
UPDATE `creature_template` SET `ScriptName`='npc_ancestral_shaman_104937' WHERE `entry`=104937;
UPDATE `creature_template` SET `ScriptName`='npc_generic_bunny_103560' WHERE  `entry`=103560;
UPDATE `creature_template` SET `ScriptName` = 'npc_mylune_113525' WHERE `entry` = 113525;
UPDATE `creature_template` SET `ScriptName` = 'npc_leafbeard_the_storied_97989' WHERE `entry` = 97989;
UPDATE `creature_template` SET `ScriptName` = 'npc_naralex_104349' WHERE `entry` = 104349;
UPDATE `creature_template` SET `ScriptName` = 'npc_bashana_runetotem_104398' WHERE `entry` = 104398;
UPDATE `creature_template` SET `ScriptName` = 'npc_lyessa_bloomwatcher_104573' WHERE `entry` = 104573;
UPDATE `creature_template` SET `ScriptName` = 'npc_lyessa_bloomwatcher_104577' WHERE `entry` = 104577;
UPDATE `creature_template` SET `ScriptName` = 'npc_delandros_shimmermoon_107392' WHERE `entry` = 107392;
UPDATE `creature_template` SET `ScriptName` = 'npc_eredar_soul_lasher_107535' WHERE `entry` = 107535;
UPDATE `creature_template` SET `ScriptName` = 'npc_investigate_shrine_kill_credit_107607' WHERE `entry` = 107607;
UPDATE `scene_template` SET `ScriptName` = 'scene_druid_feral_investigate' WHERE `SceneId` = 1286;
UPDATE `creature_template` SET `ScriptName`='npc_algromon_107593' WHERE `entry`=107593;
UPDATE `creature_template` SET `ScriptName` = 'npc_ebonfang_107729' WHERE `entry` = 107729;
UPDATE `creature_template` SET `ScriptName` = 'npc_naralex_103778' WHERE `entry` = 103778;
UPDATE `creature_template` SET `ScriptName` = 'npc_valorn_stillbough_101656' WHERE `entry` = 101656;
UPDATE `creature_template` SET `ScriptName` = 'npc_revil_kost_100323' WHERE `entry` = 100323;
UPDATE `creature_template` SET `ScriptName` = 'npc_revil_kost_100729' WHERE `entry` = 100729;
UPDATE `creature_template` SET `ScriptName` = 'npc_revil_kost_100812' WHERE `entry` = 100812;
UPDATE `creature_template` SET `ScriptName`='npc_credit_worgen_chased' WHERE `entry` IN (102162, 102163, 102164, 102165);
UPDATE `creature_template` SET `ScriptName`='npc_snowfeather_100786' WHERE (`entry`='100786');
UPDATE `gameobject_template` SET `ScriptName` = 'go_g_hanir' WHERE `entry` = 248098;
UPDATE `gameobject_template` SET `ScriptName`='go_finding_bonchill_note' WHERE `entry` IN (250542,250544,250545,250546,250549);
UPDATE `gameobject_template` SET `ScriptName` = 'go_broken_sword_250364' WHERE `entry` =250364;













































