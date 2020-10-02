UPDATE `creature_template` SET `ScriptName`='npc_dazar_minions' WHERE  `entry`=136984;
UPDATE `creature_template` SET `ScriptName`='npc_dazar_minions' WHERE  `entry`=136976;
UPDATE `creature_template` SET `ScriptName`='boss_dazar' WHERE  `entry`=136160;
UPDATE `creature_template` SET `ScriptName`='npc_zanazal_totem' WHERE  `entry`IN(135764,135761,135765,135759);
UPDATE `creature_template` SET `ScriptName`='npc_orb_of_swirling' WHERE  `entry`=120988;

DELETE FROM spell_script_names WHERE spell_id IN (265773, 267618, 586, 219809, 45524);
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES 
(265773, 'aura_spirit_of_gold'),
(267618, 'aura_drain_fluids'),
(586, 'spell_pri_fade'),
(219809, 'spell_dk_tombstone'),
(45524, 'spell_dk_chilblains');

UPDATE creature_template SET scriptname = 'npc_warl_chaos_tear' WHERE entry = 108493;
UPDATE `creature_template` SET `ScriptName`='boss_ragefire_overseer_elaglo' WHERE `entry`=71030;
UPDATE `creature_template` SET `ScriptName`='npc_ragefire_core_kor_kron_emberguard' WHERE `entry`=70798;
UPDATE `creature_template` SET `ScriptName`='npc_ragefire_core_flame_hound' WHERE `entry`=70702;
UPDATE `creature_template` SET `ScriptName`='npc_ragefire_core_mantid_bomb' WHERE `entry`=71174;
UPDATE `creature_template` SET `ScriptName`='npc_ragefire_core_kor_kron_dire_soldier' WHERE `entry`=70665;
UPDATE `creature_template` SET `ScriptName`='npc_ragefire_core_pandaria_artifacts' WHERE `entry`=71032;-- 潘达利亚遗物
UPDATE `creature_template` SET `ScriptName`='ragefire_core_npc_korkron_shadowblade' WHERE `entry`=71244;
UPDATE `creature_template` SET `ScriptName`='ragefire_core_npc_korkron_dark_shaman' WHERE `entry`=71245;
UPDATE `creature_template` SET `ScriptName`='npc_eredar_felcaller_98005' WHERE `entry`=98005;
UPDATE `creature_template` SET `ScriptName`='npc_glacial_freeze_totem' WHERE `entry`=71323;

DELETE FROM `instance_template` WHERE `map`=1131;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`, `insideResurrection`) VALUES 
(1131, 0, 'scenario_the_secrets_of_ragefire', 0, 1);

UPDATE `creature_template` SET `ScriptName`='ragefire_core_detonator' WHERE `entry`=70662;-- UNIT_NPC_FLAG_SPELLCLICK
UPDATE `creature_template` SET `ScriptName`='ragefire_core_ticking_bomb' WHERE `entry`=71098;
UPDATE `creature_template` SET `ScriptName`='ragefire_core_npc_patch' WHERE `entry`=70607;
UPDATE `creature_template` SET `ScriptName`='ragefire_core_npc_newt' WHERE `entry`=70606;
UPDATE `creature_template` SET `ScriptName`='ragefire_core_npc_grit' WHERE `entry`=70605;
UPDATE `creature_template` SET `ScriptName`='ragefire_core_npc_ticker' WHERE `entry`=70609;
UPDATE `creature_template` SET `ScriptName`='ragefire_core_npc_volt' WHERE `entry`=70608;
UPDATE `creature_template` SET `ScriptName`='boss_ragefire_dark_shaman_xorenth' WHERE `entry`=70683;
UPDATE `creature_template` SET `ScriptName`='npc_ruined_earth_71262' WHERE `entry`=71262;
UPDATE `creature_template` SET `ScriptName`='npc_ragefire_embercore' WHERE `entry`=70663;
UPDATE `creature_template` SET `ScriptName`='npc_ragefire_core_ragefire_peon' WHERE `entry`=71097;

UPDATE `creature_template` SET `ScriptName`='npc_ragefire_core_protodrake_eggs' WHERE `entry`=71031;
UPDATE `creature_template` SET `ScriptName`='npc_ragefire_core_supply_crates' WHERE `entry`=70901; 


DELETE FROM `scenario_poi` WHERE (`CriteriaTreeID`=46516 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `scenario_poi` (`CriteriaTreeID`, `BlobIndex`, `Idx1`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `VerifiedBuild`) VALUES
(46516, 0, 0, 1526, 0, 0, 2, 0, 0, 29896);

DELETE FROM `scenario_poi_points` WHERE (`CriteriaTreeID`=46516 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=46516 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=46516 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=46516 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=46516 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=46516 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=46516 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=46516 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=46516 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=46516 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=46516 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=46516 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `scenario_poi_points` (`CriteriaTreeID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(46516, 0, 11, 3765, 510, 29896),
(46516, 0, 10, 3768, 544, 29896),
(46516, 0, 9, 3768, 555, 29896),
(46516, 0, 8, 3773, 569, 29896),
(46516, 0, 7, 3796, 569, 29896),
(46516, 0, 6, 3810, 569, 29896),
(46516, 0, 5, 3824, 561, 29896),
(46516, 0, 4, 3826, 552, 29896),
(46516, 0, 3, 3826, 538, 29896),
(46516, 0, 2, 3824, 527, 29896),
(46516, 0, 1, 3810, 508, 29896),
(46516, 0, 0, 3790, 505, 29896);


DELETE FROM `gossip_menu` WHERE (`MenuId`=19100 AND `TextId`=27930) OR (`MenuId`=19077 AND `TextId`=27889) OR (`MenuId`=19076 AND `TextId`=27886);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(19100, 27930, 29896), -- 60968
(19077, 27889, 29896), -- 60968
(19076, 27886, 29896); -- 60968

DELETE FROM `gossip_menu_option` WHERE (`MenuId`=19100 AND `OptionIndex`=0) OR (`MenuId`=19077 AND `OptionIndex`=0) OR (`MenuId`=19076 AND `OptionIndex`=0);
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `VerifiedBuild`) VALUES
(19100, 0, 0, 'Me and Regal are ready!', 102739, 29896),
(19077, 0, 0, 'I am ready to fight!', 102424, 29896),
(19076, 0, 0, 'Im ready, Baihu.', 102395, 29896);



UPDATE `creature_template_scaling` SET `LevelScalingMin`=98, `VerifiedBuild`=29896 WHERE `Entry`=96745;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=98, `LevelScalingMax`=110, `VerifiedBuild`=29896 WHERE `Entry`=100546;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=98, `LevelScalingMax`=110, `VerifiedBuild`=29896 WHERE `Entry`=101578;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=98, `LevelScalingMax`=110, `VerifiedBuild`=29896 WHERE `Entry`=100363;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `VerifiedBuild`=29896 WHERE `Entry`=61119;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=98, `LevelScalingMax`=110, `VerifiedBuild`=29896 WHERE `Entry`=100307;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=98, `LevelScalingMax`=110, `VerifiedBuild`=29896 WHERE `Entry`=100306;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingDeltaMin`=1, `LevelScalingDeltaMax`=1, `VerifiedBuild`=29896 WHERE `Entry`=64501;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=98, `LevelScalingMax`=110, `VerifiedBuild`=29896 WHERE `Entry`=100308;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `VerifiedBuild`=29896 WHERE `Entry`=61212;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=61118;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `VerifiedBuild`=29896 WHERE `Entry`=61651;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=64542;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `VerifiedBuild`=29896 WHERE `Entry`=64540;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=64536;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `VerifiedBuild`=29896 WHERE `Entry`=64537;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `VerifiedBuild`=29896 WHERE `Entry`=64528;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `VerifiedBuild`=29896 WHERE `Entry`=61531;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `VerifiedBuild`=29896 WHERE `Entry`=61624;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=66891;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59578;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59858;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59859;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59382;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `LevelScalingDeltaMin`=2, `LevelScalingDeltaMax`=2, `VerifiedBuild`=29896 WHERE `Entry`=59656;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59319;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59335;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59339;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=61537;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `LevelScalingDeltaMin`=-1, `LevelScalingDeltaMax`=1, `VerifiedBuild`=29896 WHERE `Entry`=58944;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=58956;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59679;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=66861;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=66860;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=59146;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=58450;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=50951;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=72279;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=58464;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=72280;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `LevelScalingDeltaMin`=3, `LevelScalingDeltaMax`=3, `VerifiedBuild`=29896 WHERE `Entry`=59908;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=59959;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=1, `LevelScalingMax`=110, `LevelScalingDeltaMin`=3, `LevelScalingDeltaMax`=3, `VerifiedBuild`=29896 WHERE `Entry`=31146;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=72275;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=72298;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `LevelScalingMax`=90, `LevelScalingDeltaMin`=2, `LevelScalingDeltaMax`=2, `VerifiedBuild`=29896 WHERE `Entry`=50359;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=64702;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `LevelScalingMax`=90, `LevelScalingDeltaMin`=2, `LevelScalingDeltaMax`=2, `VerifiedBuild`=29896 WHERE `Entry`=58474;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=63641;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=98, `LevelScalingMax`=110, `VerifiedBuild`=29896 WHERE `Entry`=110668;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=98, `LevelScalingMax`=110, `VerifiedBuild`=29896 WHERE `Entry`=110660;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=98, `LevelScalingMax`=110, `VerifiedBuild`=29896 WHERE `Entry`=110669;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=64403;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=98, `LevelScalingMax`=110, `VerifiedBuild`=29896 WHERE `Entry`=110582;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=64852;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=98, `LevelScalingMax`=110, `VerifiedBuild`=29896 WHERE `Entry`=110675;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=63574;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=63575;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=63572;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=98, `LevelScalingMax`=110, `VerifiedBuild`=29896 WHERE `Entry`=110569;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=98, `LevelScalingMax`=110, `VerifiedBuild`=29896 WHERE `Entry`=110570;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=98, `LevelScalingMax`=110, `VerifiedBuild`=29896 WHERE `Entry`=110551;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `LevelScalingDeltaMin`=2, `LevelScalingDeltaMax`=2, `VerifiedBuild`=29896 WHERE `Entry`=64965;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=66881;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=58448;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=63654;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=63653;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=66380;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=63562;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=63556;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=63634;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=63447;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=63674;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=65133;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=63611;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=63610;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=65134;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=58411;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=65770;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=58693;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=65789;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=59158;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=63935;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=63934;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=58460;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=58412;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=59156;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `LevelScalingDeltaMin`=2, `LevelScalingDeltaMax`=2, `VerifiedBuild`=29896 WHERE `Entry`=65824;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=59341;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=59157;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=58818;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `VerifiedBuild`=29896 WHERE `Entry`=65976;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=85, `VerifiedBuild`=29896 WHERE `Entry`=58695;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=65928;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `LevelScalingDeltaMin`=-1, `LevelScalingDeltaMax`=1, `VerifiedBuild`=29896 WHERE `Entry`=59577;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `VerifiedBuild`=29896 WHERE `Entry`=64848;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59486;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `LevelScalingDeltaMax`=1, `VerifiedBuild`=29896 WHERE `Entry`=59019;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59821;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59758;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `VerifiedBuild`=29896 WHERE `Entry`=59773;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59685;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59672;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `VerifiedBuild`=29896 WHERE `Entry`=61490;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `VerifiedBuild`=29896 WHERE `Entry`=61488;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `VerifiedBuild`=29896 WHERE `Entry`=61489;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=61475;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59790;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59826;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59538;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=60875;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=60523;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59405;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=65121;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59576;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59371;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=66415;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59403;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `VerifiedBuild`=29896 WHERE `Entry`=70155;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `VerifiedBuild`=29896 WHERE `Entry`=61494;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59407;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59509;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `VerifiedBuild`=29896 WHERE `Entry`=64882;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59597;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=64518;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=61493;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=71082;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59406;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59402;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `VerifiedBuild`=29896 WHERE `Entry`=61529;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `VerifiedBuild`=29896 WHERE `Entry`=61211;
UPDATE `creature_template_scaling` SET `LevelScalingMax`=110, `VerifiedBuild`=29896 WHERE `Entry`=60968;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingDeltaMin`=1, `LevelScalingDeltaMax`=1, `VerifiedBuild`=29896 WHERE `Entry`=60981;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=60168;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=60458;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=60431;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=60459;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59700;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59670;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=60482;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59671;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=65839;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59384;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=82, `LevelScalingMax`=90, `VerifiedBuild`=29896 WHERE `Entry`=59534;

DELETE FROM `quest_details` WHERE `ID` IN (39771 /*-Unknown-*/, 43338 /*-Unknown-*/, 43334 /*-Unknown-*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(39771, 0, 0, 0, 0, 0, 0, 0, 0, 29896), -- -Unknown-
(43338, 1, 0, 0, 0, 0, 0, 0, 0, 29896), -- -Unknown-
(43334, 0, 0, 0, 0, 0, 0, 0, 0, 29896); -- -Unknown-


DELETE FROM `quest_request_items` WHERE `ID`=43338;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(43338, 6, 0, 0, 0, 'I have already asked about it. The local panda people are full of fear for this place. Since the Battle of Pandaria provoked by Hellscream, it has been haunted here.$b$Have you found something to dedicate to Baihu?', 29896); -- -Unknown-

DELETE FROM `quest_offer_reward` WHERE `ID` IN (41510 /*-Unknown-*/, 39771 /*-Unknown-*/, 43338 /*-Unknown-*/, 43334 /*-Unknown-*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(41510, 1, 2, 0, 0, 0, 0, 0, 0, 'Wise decision, prophet. Behind me is the astral portal to Dalaran, allowing us to move quickly between the base of operations and the Broken Isles. Use it to return to Dalaran. When you need to strengthen the artifact or command your followers, you can return here at any time through this portal.$b$b愿元素指引你，先知。', 29896), -- -Unknown-
(39771, 1, 66, 0, 0, 0, 0, 0, 0, 'You are indeed the chosen one,$n。我将荣幸地为你效命终生。$b$No matter where you take the Ring of Earth, I will follow you!', 29896), -- -Unknown-
(43338, 1, 6, 0, 0, 0, 0, 0, 0, 'Bai Hu is serious, right?$b$After you came here, many people came to Baihu Temple to present gifts. It seems that we are going to have competitors.', 29896), -- -Unknown-
(43334, 1, 0, 0, 0, 0, 0, 0, 0, 'Welcome, shaman! Do you want the weapon of Raiden, god of the storm?$b$Many people came to Pandaria admiringly, but none of them qualified.', 29896); -- -Unknown-

DELETE FROM `gameobject_template_addon` WHERE `entry` IN (252799 /*神器调查笔记*/, 244794 /*通向大漩涡的星界之门*/, 256789 /*莱登之拳*/, 246033 /*神器架*/);
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`) VALUES
(252799, 0, 262144), -- 神器调查笔记
(244794, 35, 0), -- 通向大漩涡的星界之门
(256789, 0, 2097152), -- 莱登之拳
(246033, 114, 0); -- 神器架


DELETE FROM `spell_areatrigger` WHERE (`AreaTriggerId`=10541) OR (`AreaTriggerId`=10050) OR (`AreaTriggerId`=11353) OR (`AreaTriggerId`=11286) OR (`AreaTriggerId`=10516) OR (`AreaTriggerId`=10416) OR (`AreaTriggerId`=12595);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(5835, 10541, 0, 0, 0, 0, 0, 0, 30000, 29896), -- SpellId : 202545
(5336, 10050, 0, 0, 0, 0, 0, 0, 20000, 29896), -- SpellId : 197332 wandering-keg 迷踪酒桶
(6826, 11353, 0, 0, 0, 0, 0, 0, 6000, 29896), -- SpellId : 210797
(6734, 11286, 0, 0, 0, 0, 0, 0, 20000, 29896), -- SpellId : 210161
(5806, 10516, 1709, 0, 0, 0, 0, 3000, 5000, 29896), -- SpellId : 202201 giantbreaker-spear 巨人杀手之矛
(5706, 10416, 0, 0, 0, 0, 0, 0, 0, 29896), -- SpellId : 198370 fair-winds 顺风
(8442, 12595, 0, 0, 0, 0, 0, 0, 10000, 29896); -- SpellId : 224529 shadows-fury 暗影之怒  cast by www.wowhead.com/npc=110569/shao-tien-spirit-warrior


DELETE FROM `conversation_actors` WHERE (`ConversationId`=3838) OR (`ConversationId`=1046) OR (`ConversationId`=3034) OR (`ConversationId`=3033) OR (`ConversationId`=1047) OR (`ConversationId`=3032) OR (`ConversationId`=3037) OR (`ConversationId`=3006);
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `ConversationActorNearId`, `Idx`, `VerifiedBuild`) VALUES
(3838, 96541, 96541, 0, 29896),-- Rehgar Earthfury
(1046, 96541, 100306, 0, 29896), -- Full: 0x203D6CBEC061F480006590000026C410 Creature/0 R3931/S26000 Map: 1526 Entry: 100306 (雷加尔·大地之怒 Rehgar Earthfury) Low: 2540560
(3034, 64528, 64528, 0, 29896), -- Xuen
(3033, 64528, 64528, 0, 29896),-- Xuen
(1047, 100307, 100307, 0, 29896), -- Full: 0x203D6CBEC061F4C0006590000026C410 Creature/0 R3931/S26000 Map: 1526 Entry: 100307 (陈·风暴烈酒) Low: 2540560
(3032, 64528, 64528, 0, 29896),-- Xuen
(3037, 64528, 64528, 0, 29896),-- Xuen
(3006, 64528, 71107, 0, 29896);-- Xuen

-- Creature Entry: 96541 (Rehgar Earthfury)
DELETE FROM `conversation_actor_template` WHERE `Id`=96541;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES 
(96541, 96541, 64946, 26972); 

-- Creature Entry: 64528 (Xuen)
DELETE FROM `conversation_actor_template` WHERE `Id`=64528;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES 
(64528, 64528, 41271, 26972); 

-- Creature Entry: 100307 (Chen Stormstout)
DELETE FROM `conversation_actor_template` WHERE `Id`=100307;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES 
(100307, 100307, 67672, 26972); 


DELETE FROM `conversation_line_template` WHERE `Id` IN (8677, 2563, 2562, 6420, 6419, 6418, 6417, 2567, 2566, 6416, 6415, 6425, 6424, 6423, 8297, 6384);
INSERT INTO `conversation_line_template` (`Id`, `StartTime`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(8677, 0, 86, 0, 0, 29896),
(2563, 3513, 0, 1, 0, 29896),
(2562, 0, 0, 0, 0, 29896),
(6420, 18168, 589, 0, 0, 29896),
(6419, 0, 589, 0, 0, 29896),
(6418, 11464, 589, 0, 0, 29896),
(6417, 0, 589, 0, 0, 29896),
(2567, 2071, 0, 1, 0, 29896),
(2566, 0, 0, 0, 0, 29896),
(6416, 11125, 589, 0, 0, 29896),
(6415, 0, 589, 0, 0, 29896),
(6425, 20810, 589, 0, 0, 29896),
(6424, 8747, 589, 0, 0, 29896),
(6423, 0, 589, 0, 0, 29896),
(8297, 11022, 589, 0, 0, 29896),
(6384, 0, 589, 0, 0, 29896);

DELETE FROM `conversation_template` WHERE `Id` IN (1047, 1046, 3838, 3037, 3034, 3032, 3033, 3006);
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `LastLineEndTime`, `VerifiedBuild`) VALUES
(1047, 2566, 3891, 29896),
(1046, 2562, 8373, 29896),
(3838, 8677, 4715, 29896),
(3037, 6423, 31900, 29896),
(3034, 6419, 34254, 29896),
(3032, 6415, 26496, 29896),
(3033, 6417, 26312, 29896),
(3006, 6384, 19264, 29896);

DELETE FROM `creature_addon` WHERE `guid`=331800;
DELETE FROM `creature` WHERE `guid`=331800 AND `id`=40788;

UPDATE `creature_template` SET `ScriptName`='boss_ozumat' WHERE `entry`=44566;

DELETE FROM `creature_addon` WHERE `guid`=255406;
DELETE FROM `creature` WHERE `guid`=255406 AND `id`=44566;

DELETE FROM `spell_script_names` WHERE `spell_id`=200851;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (200851, 'aura_arti_dru_rage_of_the_sleeper');

INSERT IGNORE INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(70605, 36787, 0, 1, 'Gravel - Oil Canister (Small)', 3, 0);

REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(71195, 141904, 1, 1),
(71175, 141898, 1, 1),
(71197, 141914, 1, 1),
(71176, 141832, 1, 1),
(70662, 140856, 1, 1),
(71221, 141288, 1, 1),
(71208, 141288, 1, 1),
(71209, 141288, 1, 1),
(71203, 141288, 1, 1);


UPDATE `creature_template` SET `HealthScalingExpansion`=4, `VerifiedBuild`=26365 WHERE `entry`=70665; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `VerifiedBuild`=26365 WHERE `entry`=70702; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `VerifiedBuild`=26365 WHERE `entry`=71030; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `VerifiedBuild`=26365 WHERE `entry`=70703; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `VerifiedBuild`=26365 WHERE `entry`=71401; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `type_flags2`=6, `VerifiedBuild`=26365 WHERE `entry`=71174; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `VerifiedBuild`=26365 WHERE `entry`=70663; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `type_flags2`=2, `VerifiedBuild`=26365 WHERE `entry`=71209; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `type_flags2`=2, `VerifiedBuild`=26365 WHERE `entry`=71208; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `type_flags2`=2, `VerifiedBuild`=26365 WHERE `entry`=71203; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `type_flags2`=2, `VerifiedBuild`=26365 WHERE `entry`=71032; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `type_flags2`=2, `VerifiedBuild`=26365 WHERE `entry`=71031; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `type_flags2`=2, `VerifiedBuild`=26365 WHERE `entry`=70901; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `type_flags2`=2, `VerifiedBuild`=26365 WHERE `entry`=71221; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `type_flags2`=2, `VerifiedBuild`=26365 WHERE `entry`=71296; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `type_flags2`=6, `VerifiedBuild`=26365 WHERE `entry`=70662; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `type_flags2`=6, `VerifiedBuild`=26365 WHERE `entry`=71176; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `type_flags2`=6, `VerifiedBuild`=26365 WHERE `entry`=70672; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `type_flags2`=6, `VerifiedBuild`=26365 WHERE `entry`=71197; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `type_flags2`=6, `VerifiedBuild`=26365 WHERE `entry`=71175; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `VerifiedBuild`=26365 WHERE `entry`=70683; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `type_flags2`=6, `VerifiedBuild`=26365 WHERE `entry`=71195; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `VerifiedBuild`=26365 WHERE `entry`=71097; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `VerifiedBuild`=26365 WHERE `entry`=70798; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `VerifiedBuild`=26365 WHERE `entry`=71244; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `VerifiedBuild`=26365 WHERE `entry`=71245; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `VerifiedBuild`=26365 WHERE `entry`=70609; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `VerifiedBuild`=26365 WHERE `entry`=70606; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `VerifiedBuild`=26365 WHERE `entry`=70608; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `VerifiedBuild`=26365 WHERE `entry`=70607; 
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `VerifiedBuild`=26365 WHERE `entry`=70605; 

DELETE FROM `npc_text` WHERE `ID`=22523;
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(22523, 1, 0, 0, 0, 0, 0, 0, 0, 73689, 0, 0, 0, 0, 0, 0, 0, 26365); -- 22523

DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (492,790);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(492, 'greenstone-village90', 2009.54, -2040.32, 221.069, 1.53658, 0, 26365),
(790, 'greenstone-village110', 2009.54, -2040.32, 221.069, 1.53658, 0, 26365);
-- 499,791 Unga Monkey Island
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (499,791);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(499, 'unga-ingoo90', -3101.01, 729.672, 0.747235 , 0.0, 0, 26365),
(791, 'unga-ingoo110', -3101.01, 729.672, 0.747235 , 0.0, 0, 26365);
-- 504,648,792,813 Unga Monkey Island
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (504,648,792,813);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(504, 'crypt-of-forgotten-kings90h', 899.1042, 2353.913, 97.56212, 3.11791, 0, 26365),
(648, 'crypt-of-forgotten-kings90p', 899.1042, 2353.913, 97.56212, 3.11791, 0, 26365),
(792, 'crypt-of-forgotten-kings110h', 899.1042, 2353.913, 97.56212, 3.11791, 0, 26365),
(813, 'crypt-of-forgotten-kings110p', 899.1042, 2353.913, 97.56212, 3.11791, 0, 26365);
-- 511,793 Breaking the Army Tournament
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (511,793);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(511, 'arena-of-annihilation90', 3795.642,533.6146,639.011, 6.159423, 0, 26365),
(793, 'arena-of-annihilation110', 3795.642,533.6146,639.011, 6.159423, 0, 26365);
-- 517,639,794,810 Brewing storm
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (517,639,794,810);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(517, 'a-brewing-stormh', 2249.792, -1124.648, 485.5298, 4.632702, 0, 26365),
(639, 'a-brewing-stormp', 2249.792, -1124.648, 485.5298, 4.632702, 0, 26365),
(794, 'a-brewing-storm110h', 2249.792, -1124.648, 485.5298, 4.632702, 0, 26365),
(810, 'a-brewing-storm110p', 2249.792, -1124.648, 485.5298, 4.632702, 0, 26365);
-- 539,796 Stuffed Moon Festival
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (539,796);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(539, 'brewmoon-festival90', 1736.451, 302.5903, 475.8858, 1.138288, 0, 26365),
(796, 'brewmoon-festival110', 1736.451, 302.5903, 475.8858, 1.138288, 0, 26365);
-- 543,566,797 The Fall of Theramore
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (543,566,797);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(543, 'theramores-fall-a85', -4023.08, -4748.8, 5.21768, 0.8971219, 0, 26365),
(566, 'theramores-fall-a90', -4023.08, -4748.8, 5.21768, 0.8971219, 0, 26365),
(797, 'theramores-fall-a110', -4023.08, -4748.8, 5.21768, 0.8971219, 0, 26365);
-- 537,593,795,803 Assault on Zanives
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (537,593,795,803);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(537, 'assault-on-zanvess90h', -679.186, 4408.64, 186.2, 4.533161, 0, 26365),
(593, 'assault-on-zanvess90p', -679.186, 4408.64, 186.2, 4.533161, 0, 26365),
(795, 'assault-on-zanvess110h', -679.186, 4408.64, 186.2, 4.533161, 0, 26365),
(803, 'assault-on-zanvess110p', -679.186, 4408.64, 186.2, 4.533161, 0, 26365);
-- 586,616,799,805 Dagger in the dark
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (586,616,799,805);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(586, 'dagger-in-the-dark90h', 778.3403, -191.1806, 402.4454, 6.221129, 0, 26365),
(616, 'dagger-in-the-dark90p', 778.3403, -191.1806, 402.4454, 6.221129, 0, 26365),
(799, 'dagger-in-the-dark110h', 778.3403, -191.1806, 402.4454, 6.221129, 0, 26365),
(805, 'dagger-in-the-dark110p', 778.3403, -191.1806, 402.4454, 6.221129, 0, 26365);
-- 589,619,801,806 King's patience
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (589,619,801,806);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(589, 'a-little-patience90h', -1085.8, 1168.9, 16.8407, 5.046428, 0, 26365),
(619, 'a-little-patience90p', -1085.8, 1168.9, 16.8407, 5.046428, 0, 26365),
(801, 'a-little-patience110h', -1085.8, 1168.9, 16.8407, 5.046428, 0, 26365),
(806, 'a-little-patience110p', -1085.8, 1168.9, 16.8407, 5.046428, 0, 26365);
-- 590,802 Xiongshigang
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (590,802);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(590, 'lions-landing90', -1189.257, -1196.948, 36.7994, 5.568539, 0, 26365),
(802, 'lions-landing110', -1189.257, -1196.948, 36.7994, 5.568539, 0, 26365);
-- 588,652,654,655,800,815,816,817 Fierce war on the high seas
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (588,652,654,655,800,815,816,817);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(588, 'battle-on-the-high-seas90ap', 2169.845, -4230.378, 8.877979, 2.985906, 0, 26365),-- lm
(652, 'battle-on-the-high-seas90hp', 2169.845, -4230.378, 8.877979, 2.985906, 0, 26365),-- bl
(654, 'battle-on-the-high-seas90hh', 2169.845, -4230.378, 8.877979, 2.985906, 0, 26365),-- bl
(655, 'battle-on-the-high-seas90ah', 2169.845, -4230.378, 8.877979, 2.985906, 0, 26365),-- lm
(800, 'battle-on-the-high-seas110ap', 2169.845, -4230.378, 8.877979, 2.985906, 0, 26365),-- lm
(815, 'battle-on-the-high-seas110hp', 2169.845, -4230.378, 8.877979, 2.985906, 0, 26365),-- bl
(816, 'battle-on-the-high-seas110hh', 2169.845, -4230.378, 8.877979, 2.985906, 0, 26365),-- bl
(817, 'battle-on-the-high-seas110ah', 2169.845, -4230.378, 8.877979, 2.985906, 0, 26365);-- lm
-- 624,647,807,812 Pandaria's Dark Heart
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (624,647,807,812);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(624, 'dark-heart-of-pandaria90p', 1127.2, 905.2379, 404.1013, 3.650223, 0, 26365),
(647, 'dark-heart-of-pandaria90h', 1127.2, 905.2379, 404.1013, 3.650223, 0, 26365),
(807, 'dark-heart-of-pandaria110p', 1127.2, 905.2379, 404.1013, 3.650223, 0, 26365),
(812, 'dark-heart-of-pandaria110h', 1127.2, 905.2379, 404.1013, 3.650223, 0, 26365);
-- 625,649,808,814 Raging Flame
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (625,649,808,814);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(625, 'the-secrets-of-ragefire90p', 1396.58, 802.536, 38.8645, 1.921415, 0, 26365),
(649, 'the-secrets-of-ragefire90h', 1396.58, 802.536, 38.8645, 1.921415, 0, 26365),
(808, 'the-secrets-of-ragefire110p', 1396.58, 802.536, 38.8645, 1.921415, 0, 26365),
(814, 'the-secrets-of-ragefire110h', 1396.58, 802.536, 38.8645, 1.921415, 0, 26365);
-- 637,646,809,811 Snow Mountain Battle
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (637,646,809,811);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(637, 'blood-in-the-snow90p', -5251.29, -426.649, 388.467, 2.041704, 0, 26365),
(646, 'blood-in-the-snow90h', -5251.29, -426.649, 388.467, 2.041704, 0, 26365),
(809, 'blood-in-the-snow110p', -5251.29, -426.649, 388.467, 2.041704, 0, 26365),
(811, 'blood-in-the-snow110h', -5251.29, -426.649, 388.467, 2.041704, 0, 26365);

DELETE FROM `gossip_menu` WHERE (`MenuId`=15681 AND `TextId`=22523) OR (`MenuId`=15680 AND `TextId`=22522) OR (`MenuId`=15679 AND `TextId`=22521);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(15681, 22523, 26365), -- 71032 (Pandaria Relics)
(15680, 22522, 26365), -- 71031 (Archaeopteryx Egg)
(15679, 22521, 26365); -- 70901 (Supply box)


UPDATE `gameobject_template_addon` SET `faction`=1375 WHERE `entry`=220066; -- 
UPDATE `gameobject_template_addon` SET `faction`=1375 WHERE `entry`=220065; -- 
UPDATE `gameobject_template_addon` SET `faction`=1375 WHERE `entry`=219399; -- 
UPDATE `gameobject_template_addon` SET `faction`=1375 WHERE `entry`=219398; -- 
UPDATE `gameobject_template_addon` SET `faction`=1375 WHERE `entry`=219401; -- 
UPDATE `gameobject_template_addon` SET `faction`=1375 WHERE `entry`=219400; -- 
UPDATE `gameobject_template_addon` SET `faction`=1375, `flags`=32 WHERE `entry`=220169; -- 
UPDATE `gameobject_template_addon` SET `faction`=1375 WHERE `entry`=220168; -- 
UPDATE `gameobject_template_addon` SET `faction`=1375 WHERE `entry`=220183; -- 
UPDATE `gameobject_template_addon` SET `faction`=1375 WHERE `entry`=219397; -- 


UPDATE `gossip_menu_option` SET `OptionType`=1, `OptionNpcFlag`=1 WHERE `MenuId`=16364;

DELETE FROM `creature_template_addon` WHERE `entry` IN (71030, 70665, 70702, 70703, 71401, 71174, 70663, 71203, 71032, 70901 /*70901 (补给箱)*/, 71031 /*71031 (始祖龙蛋)*/, 71209 /*71209 (潘达利亚遗物)*/, 71208 /*71208 (始祖龙蛋)*/, 71221 /*71221 (Mantid Bomb Throw Target)*/, 71296 /*71296 (紧急传送器)*/, 70662 /*70662 (引爆器)*/, 71176 /*71176 (炮弹)*/, 70672 /*70672 (炸弹)*/, 71197 /*71197 (破碎的始祖龙蛋) - -Unknown-*/, 70683 /*70683 (黑暗萨满克索伦斯)*/, 71175 /*71175 (池塘小马)*/, 71195 /*71195 (电池)*/, 70608 /*70608 (伏特) - -Unknown-*/, 71245 /*71245 (库卡隆黑暗萨满)*/, 70607 /*70607 (补丁)*/, 71244 /*71244 (库卡隆影刃刺客)*/, 70606 /*70606 (蝾螈)*/, 70609 /*70609 (钟摆) - -Unknown-*/, 70798 /*70798 (库卡隆燃烬卫士)*/, 71097 /*71097 (怒焰劳工)*/, 70605 /*70605 (沙砾)*/);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(71030, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(70665, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(70702, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(70703, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(71401, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), 
(71174, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(70663, 0, 0, 50331648, 1, 0, 0, 0, 0, '141186'),
(71203, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(71032, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(70901, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(71031, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(71209, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(71208, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(71221, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(71296, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(70662, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(71176, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(70672, 0, 0, 0, 1, 0, 3503, 0, 0, ''),
(71197, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(70683, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(71175, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(71195, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(70608, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(71245, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(70607, 0, 0, 8, 1, 0, 0, 0, 0, ''), 
(71244, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(70606, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(70609, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(70798, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(71097, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(70605, 0, 0, 0, 1, 0, 0, 0, 0, ''); 

UPDATE `creature_template_addon` SET `auras`='140896' WHERE `entry`=63420; -- 63420
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=36787; -- 36787 (Oil Canister (Small))


UPDATE `creature_model_info` SET `BoundingRadius`=0.558, `CombatReach`=2.25, `VerifiedBuild`=26365 WHERE `DisplayID`=48881;
UPDATE `creature_model_info` SET `BoundingRadius`=0.465, `CombatReach`=1.875, `VerifiedBuild`=26365 WHERE `DisplayID`=48761;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5022, `CombatReach`=2.025, `VerifiedBuild`=26365 WHERE `DisplayID`=49061;
UPDATE `creature_model_info` SET `BoundingRadius`=0.3825, `VerifiedBuild`=26365 WHERE `DisplayID`=49059;
UPDATE `creature_model_info` SET `BoundingRadius`=0.75, `CombatReach`=1.125, `VerifiedBuild`=26365 WHERE `DisplayID`=48955;
UPDATE `creature_model_info` SET `BoundingRadius`=1.529843, `CombatReach`=0.75, `VerifiedBuild`=26365 WHERE `DisplayID`=26735;
UPDATE `creature_model_info` SET `BoundingRadius`=1.5, `VerifiedBuild`=26365 WHERE `DisplayID`=48652;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `CombatReach`=1, `VerifiedBuild`=26365 WHERE `DisplayID`=48464;
UPDATE `creature_model_info` SET `BoundingRadius`=6, `CombatReach`=6, `VerifiedBuild`=26365 WHERE `DisplayID`=48712;
UPDATE `creature_model_info` SET `BoundingRadius`=8, `CombatReach`=8, `VerifiedBuild`=26365 WHERE `DisplayID`=48710;
UPDATE `creature_model_info` SET `BoundingRadius`=10, `CombatReach`=10, `VerifiedBuild`=26365 WHERE `DisplayID`=48711;
UPDATE `creature_model_info` SET `BoundingRadius`=1, `CombatReach`=1, `VerifiedBuild`=26365 WHERE `DisplayID`=48259;
UPDATE `creature_model_info` SET `BoundingRadius`=0.3, `CombatReach`=1.5, `VerifiedBuild`=26365 WHERE `DisplayID`=48654;
UPDATE `creature_model_info` SET `BoundingRadius`=3, `VerifiedBuild`=26365 WHERE `DisplayID`=48261;
UPDATE `creature_model_info` SET `BoundingRadius`=2, `VerifiedBuild`=26365 WHERE `DisplayID`=48657;
UPDATE `creature_model_info` SET `BoundingRadius`=0.558, `CombatReach`=2.25, `VerifiedBuild`=26365 WHERE `DisplayID`=48758;
UPDATE `creature_model_info` SET `BoundingRadius`=0.45, `VerifiedBuild`=26365 WHERE `DisplayID`=48655;
UPDATE `creature_model_info` SET `BoundingRadius`=0.1, `CombatReach`=0.5, `VerifiedBuild`=26365 WHERE `DisplayID`=48656;
UPDATE `creature_model_info` SET `BoundingRadius`=0.465, `CombatReach`=1.875, `VerifiedBuild`=26365 WHERE `DisplayID`=48765;
UPDATE `creature_model_info` SET `BoundingRadius`=0.295, `CombatReach`=1.875, `VerifiedBuild`=26365 WHERE `DisplayID`=48786;
UPDATE `creature_model_info` SET `BoundingRadius`=0.295, `CombatReach`=1.875, `VerifiedBuild`=26365 WHERE `DisplayID`=48766;
UPDATE `creature_model_info` SET `BoundingRadius`=0.465, `CombatReach`=1.875, `VerifiedBuild`=26365 WHERE `DisplayID`=48785;
UPDATE `creature_model_info` SET `BoundingRadius`=0.3186, `CombatReach`=2.025, `VerifiedBuild`=26365 WHERE `DisplayID`=49062;
UPDATE `creature_model_info` SET `CombatReach`=0, `VerifiedBuild`=26365 WHERE `DisplayID`=30317;


UPDATE `creature_equip_template` SET `ItemID2`=0 WHERE (`CreatureID`=70608 AND `ID`=1); 
UPDATE `creature_equip_template` SET `ItemID2`=0 WHERE (`CreatureID`=70607 AND `ID`=1); 
UPDATE `creature_equip_template` SET `ItemID1`=31824 WHERE (`CreatureID`=70609 AND `ID`=1); 
UPDATE `creature_equip_template` SET `ItemID1`=31824 WHERE (`CreatureID`=70605 AND `ID`=1); 


UPDATE `creature_template` SET `faction`=16, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=71030; 
UPDATE `creature_template` SET `faction`=16, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=70665; 
UPDATE `creature_template` SET `faction`=16, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=70702; 
UPDATE `creature_template` SET `faction`=16, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=70703; 
UPDATE `creature_template` SET `faction`=16, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=71401; 
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `speed_run`=1, `unit_flags`=33555200, `unit_flags2`=71305216, `VehicleId`=2869 WHERE `entry`=71174; 
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=70663; 
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `npcflag`=16777216, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=71203;
UPDATE `creature_template` SET `gossip_menu_id`=15681, `minlevel`=90, `maxlevel`=90, `npcflag`=1, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=71032; 
UPDATE `creature_template` SET `gossip_menu_id`=15679, `minlevel`=90, `maxlevel`=90, `npcflag`=1, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=70901;
UPDATE `creature_template` SET `gossip_menu_id`=15680, `minlevel`=90, `maxlevel`=90, `npcflag`=1, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=71031; 
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `npcflag`=16777216, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=71209;
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `npcflag`=16777216, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=71208;
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `npcflag`=16777216, `unit_flags`=33555200, `unit_flags2`=67110912 WHERE `entry`=71221; -- Mantid Bomb Throw Target
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `unit_flags`=33555200, `unit_flags2`=67110912 WHERE `entry`=71296; 
UPDATE `creature_template` SET `unit_flags`=33555200, `unit_flags3`=1 WHERE `entry`=63420; 
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `npcflag`=16777216, `speed_walk`=0.4, `speed_run`=0.1428571, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=70662; 
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `npcflag`=16777216, `speed_run`=1, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=71176; 
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `speed_run`=1, `unit_flags`=33555200, `unit_flags2`=2048 WHERE `entry`=70672; 
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `npcflag`=16777216, `speed_walk`=0.4, `speed_run`=0.1428571, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=71197; 
UPDATE `creature_template` SET `faction`=16, `unit_class`=8, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=70683; 
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `npcflag`=16777216, `speed_run`=1, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=71175; 
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `npcflag`=16777216, `speed_run`=1, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=71195; 
UPDATE `creature_template` SET `faction`=1665, `unit_flags`=33280, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=70608; 
UPDATE `creature_template` SET `faction`=16, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=71245; 
UPDATE `creature_template` SET `faction`=1665, `unit_flags`=33280, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=70607; 
UPDATE `creature_template` SET `faction`=16, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=71244; 
UPDATE `creature_template` SET `faction`=1665, `unit_flags`=33280, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=70606; 
UPDATE `creature_template` SET `faction`=1665, `unit_flags`=33280, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=70609; 
UPDATE `creature_template` SET `unit_class`=8, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=70798; 
UPDATE `creature_template` SET `faction`=16, `unit_class`=8, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=71097; 
UPDATE `creature_template` SET `faction`=1665, `unit_flags`=33280, `unit_flags2`=2048, `unit_flags3`=1, `VehicleId`=547 WHERE `entry`=70605; 


UPDATE `creature_template_scaling` SET `LevelScalingMin`=90, `LevelScalingMax`=90 WHERE `entry` IN (71195,71175,71174,71203,71032,70901,71031,71209,71208,71221,71296,70662,71176,70672,71197);

DELETE FROM spell_custom_attr WHERE entry IN (73797, 73798, 73799);

UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry` IN (149815, 149816, 149877, 150145, 150563, 150573, 150956, 151006, 151100, 151947, 152295, 152484, 152499, 152747, 152820, 152851, 152864);

UPDATE `creature_template` SET `npcflag`='66' WHERE  `entry`=150359;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry` IN (153641, 152482);
UPDATE `gameobject_template` SET `type`='5' WHERE  `entry`=224784;

