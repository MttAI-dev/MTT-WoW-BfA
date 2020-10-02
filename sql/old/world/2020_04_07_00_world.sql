REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(55795, 'spell_falling_dragon_feign_death'),
(60587, 'spell_fatal_strike'),
(56705, 'spell_claw_swipe_check'),
(60864, 'spell_jaws_of_death_claw_swipe_pct_damage'),
(60776, 'spell_jaws_of_death_claw_swipe_pct_damage'),
(60596, 'spell_low_health_trigger'),
(60586, 'spell_mighty_spear_thrust'),
(60603, 'spell_eject_passenger_wild_wyrm'),
(56689, 'spell_grip'),
(60533, 'spell_grab_on'),
(56690, 'spell_thrust_spear');



UPDATE `gameobject_template` SET `ScriptName`='go_sharas_dal_249342' WHERE  `entry`=249342;
UPDATE `creature_template` SET `ScriptName`='npc_xavius_event_conroller' WHERE  `entry`=109847;
UPDATE creature_template SET ScriptName='npc_palehoof_orb' WHERE entry=26688;
UPDATE `creature_template` SET `ScriptName`= "npc_ferocious_rhino" WHERE `entry` =26686;
UPDATE areatrigger_template SET ScriptName='at_flamestrike' WHERE Id=8352;
UPDATE `scene_template` SET `ScriptName` = 'scene_druid_feral_investigate' WHERE `SceneId` = 1286;
UPDATE `creature_template` SET `ScriptName`='npc_mannethrel' WHERE  `entry`=96652;
UPDATE `creature_template` SET `ScriptName`='npc_cyana' WHERE  `entry`=96420;
UPDATE `creature_template` SET `ScriptName`='npc_allari' WHERE  `entry`=96655;
UPDATE `creature_template` SET `ScriptName`='npc_kayn_sunfury' WHERE  `entry`=93127;
UPDATE `creature_template` SET `ScriptName`='npc_brood_queen_tyranna' WHERE  `entry`=93802;
UPDATE `creature_template` SET `ScriptName`='npc_korvas_tyranna_fight' WHERE  `entry`=98712;
UPDATE `creature_template` SET `ScriptName`='npc_jace_tyranna_fight' WHERE  `entry`=97959;
UPDATE `creature_template` SET `ScriptName`='npc_allari_tyranna_fight' WHERE  `entry`=97962;
UPDATE `creature_template` SET `ScriptName`='npc_kayn_tyranna_fight' WHERE  `entry`=97244;
UPDATE `creature_template` SET `ScriptName`='npc_fel_lord_caza' WHERE  `entry`=96441;
UPDATE `creature_template` SET `ScriptName`='npc_doom_commander_beliash' WHERE  `entry`=93221;
UPDATE `creature_template` SET `ScriptName`='npc_inquisitor_baleful' WHERE  `entry`=93105;
UPDATE `creature_template` SET `ScriptName`='npc_korvas' WHERE  `entry`=99045;

REPLACE INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES
(1520, 1220, 'instance_the_emerald_nightmare', 1);
