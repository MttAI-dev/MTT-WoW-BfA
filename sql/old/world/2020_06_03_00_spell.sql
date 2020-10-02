UPDATE `creature_template` SET `ScriptName`='npc_warl_demonic_gateway' WHERE  `entry`=59271;
UPDATE `creature_template` SET `ScriptName`='npc_warl_fel_lord' WHERE  `entry`=107024;




DELETE FROM spell_script_names WHERE spell_id IN(264106, 103964, 157695, 264178);
INSERT INTO spell_script_names (scriptname, spell_id) VALUES
("spell_warl_deathbolt", 264106),
("spell_warlock_touch_of_chaos", 103964),
("spell_warl_demonbolt", 157695),
("spell_warlock_demonbolt_new", 264178);




DELETE FROM `spell_script_names` WHERE  `spell_id`=86211 AND `ScriptName`='spell_warlock_soul_swap_buff';
DELETE FROM `spell_script_names` WHERE  `spell_id`=86121 AND `ScriptName`='spell_warlock_soul_swap';
DELETE FROM `spell_script_names` WHERE  `spell_id`=6262 AND `ScriptName`='spell_warlock_healthstone_heal';
DELETE FROM `spell_script_names` WHERE  `spell_id`=196277 AND `ScriptName`='spell_warlock_implosion';
DELETE FROM `spell_script_names` WHERE  `spell_id`=80240 AND `ScriptName`='spell_warlock_havoc';
DELETE FROM `spell_script_names` WHERE  `spell_id`=5782 AND `ScriptName`='spell_warlock_fear';
DELETE FROM `spell_script_names` WHERE  `spell_id`=77220 AND `ScriptName`='spell_warlock_chaotic_energies';
DELETE FROM `spell_script_names` WHERE  `spell_id`=1454 AND `ScriptName`='spell_warlock_life_tap';
DELETE FROM `spell_script_names` WHERE  `spell_id`=196098 AND `ScriptName`='spell_warlock_soul_harvest';
DELETE FROM `spell_script_names` WHERE  `spell_id`=17877 AND `ScriptName`='spell_warlock_shadowburn';
DELETE FROM `spell_script_names` WHERE  `spell_id`=86213 AND `ScriptName`='spell_warlock_soul_swap_exhale';
DELETE FROM `spell_script_names` WHERE  `spell_id`=111771 AND `ScriptName`='spell_warlock_demonic_gateway';
DELETE FROM `spell_script_names` WHERE  `spell_id`=17962 AND `ScriptName`='spell_warlock_conflagrate';
DELETE FROM `spell_script_names` WHERE  `spell_id`=264178 AND `ScriptName`='spell_warlock_demonbolt';
DELETE FROM `spell_script_names` WHERE  `spell_id`=108503 AND `ScriptName`='spell_warlock_grimoire_of_sacrifice';
DELETE FROM `spell_script_names` WHERE  `spell_id`=29722 AND `ScriptName`='spell_warlock_incinerate';
DELETE FROM `spell_script_names` WHERE  `spell_id`=59271 AND `ScriptName`='spell_npc_warl_demonic_gateway_purple';
UPDATE `spell_script_names` SET `ScriptName`='spell_warl_shadow_bolt' WHERE  `spell_id`=232670 AND `ScriptName`='spell_warlock_shadow_bolt';
DELETE FROM `spell_script_names` WHERE  `spell_id`=686 AND `ScriptName`='spell_warlock_shadow_bolt';
DELETE FROM `spell_script_names` WHERE  `spell_id`=116858 AND `ScriptName`='spell_warlock_chaos_bolt';
DELETE FROM `spell_script_names` WHERE  `spell_id`=215279 AND `ScriptName`='spell_warlock_chaos_bolt';
DELETE FROM `spell_script_names` WHERE  `spell_id`=104316 AND `ScriptName`='spell_warl_call_dreadstalkers';
DELETE FROM `spell_script_names` WHERE  `spell_id`=86040 AND `ScriptName`='spell_warlock_hand_of_guldan_damage';
DELETE FROM `spell_script_names` WHERE  `spell_id`=216708 AND `ScriptName`='spell_warlock_artifact_deadwind_harvest';
DELETE FROM `spell_script_names` WHERE  `spell_id`=27243 AND `ScriptName`='spell_warlock_seed_of_corruption';
DELETE FROM `spell_script_names` WHERE  `spell_id`=205179 AND `ScriptName`='spell_warlock_phantom_singularity';
DELETE FROM `spell_script_names` WHERE  `spell_id`=48181 AND `ScriptName`='spell_warlock_haunt';
DELETE FROM `spell_script_names` WHERE  `spell_id`=105174 AND `ScriptName`='spell_warlock_hand_of_guldan';
DELETE FROM `spell_script_names` WHERE  `spell_id`=171975 AND `ScriptName`='spell_warlock_grimoir_of_synergy';
DELETE FROM `spell_script_names` WHERE  `spell_id`=111400 AND `ScriptName`='spell_warlock_burning_rush';
DELETE FROM `spell_script_names` WHERE  `spell_id`=196447 AND `ScriptName`='spell_warlock_channel_demonfire';
DELETE FROM `spell_script_names` WHERE  `spell_id`=146739 AND `ScriptName`='spell_warlock_corruption';
DELETE FROM `spell_script_names` WHERE  `spell_id`=264106 AND `ScriptName`='spell_warlock_deathbolt';
DELETE FROM `spell_script_names` WHERE  `spell_id`=219272 AND `ScriptName`='spell_warlock_demon_skin';
DELETE FROM `spell_script_names` WHERE  `spell_id`=205145 AND `ScriptName`='spell_warlock_demonic_calling';
DELETE FROM `spell_script_names` WHERE  `spell_id`=193396 AND `ScriptName`='spell_warlock_demonic_empowerment';
DELETE FROM `spell_script_names` WHERE  `spell_id`=193440 AND `ScriptName`='spell_warlock_demonwrath';
DELETE FROM `spell_script_names` WHERE  `spell_id`=193439 AND `ScriptName`='spell_warlock_demonwrath_damage';
DELETE FROM `spell_script_names` WHERE  `spell_id`=198590 AND `ScriptName`='spell_warlock_drain_soul';

UPDATE `spell_script_names` SET `ScriptName`='spell_warl_demon_skin' WHERE  `spell_id`=219272 AND `ScriptName`='spell_warl_demonskin';
DELETE FROM `spell_script_names` WHERE  `spell_id`=265412 AND `ScriptName`='spell_warl_doom';
