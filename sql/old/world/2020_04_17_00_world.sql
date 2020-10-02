DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_eradication';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_shadow_bolt';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_meteor_strike';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_cauterize_master';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_create_healthstone_soulwell';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_void_ray';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_demonic_circle_teleport';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_banish';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_demonic_calling';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_pri_penance_damage';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_hand_of_guldan_damage';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_metamorphosis_buffs_veng';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_mage_frozen_veins';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_seed_of_corruption_damage';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_healthstone_heal';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_consume_soul';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_sigil_of_misery_fear';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_channel_demonfire';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_dark_regeneration';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_demonic_circle_summon';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_unstable_affliction';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_soul_leech_base';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_summon_darkglare';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_havoc';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_feast_of_souls';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_spell_lock';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_vengeful_retreat_trigger';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_monk_teachings_of_the_monastery';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warl_incinerate';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dh_demon_spikes';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_arti_pal_tyr_deliveranc';

UPDATE `creature_template` SET `faction` = 7 WHERE `entry` IN (154364, 158105, 157995, 162525, 156006, 159772, 158729, 156456, 156156, 158951, 157793, 159173, 159002, 159204, 153798, 153656, 152605, 161832, 154119, 159259, 157902, 158878, 159469, 145655);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (143096, 131684, 131241, 127222, 58876, 51674, 51671, 48883, 47930, 46646, 46402, 45859, 14439, 315, 15214);
DELETE FROM smart_scripts WHERE entryorguid = 93221;
DELETE FROM smart_scripts WHERE entryorguid = 86563;
DELETE FROM smart_scripts WHERE entryorguid = 35836;

replace  into `battlepay_product_group`(`GroupID`,`Name`,`IconFileDataID`,`DisplayType`,`Ordering`) values 
(1,'Monturas',345787,0,1),
(2,'Mascotas',132599,0,2),
(3,'Servicios',136243,0,3),
(4,'Oro',133789,0,4),
(5,'Profesiones',134939,0,5),
(7,'Armaduras',801524,0,7),
(8,'Armas',313914,0,9),
(9,'Juguetes',133865,0,10),
(10,'Mejoras',135884,0,11),
(11,'Bolsas',133643,0,12),
(12,'Heirlooms',134863,0,8);

UPDATE `creature_template` SET `faction` = 35 WHERE `entry` IN (158748, 156614, 154409, 157480, 155085, 156524, 154150, 164072, 164013, 158360);
UPDATE `creature_template` SET `faction` = 66 WHERE `entry` IN (157230, 154341, 157590, 146277, 157456);
UPDATE `creature_template` SET `faction` = 189 WHERE `entry` IN (159524, 159943, 159209, 159082);
UPDATE `creature_template` SET `faction` = 14 WHERE `entry` IN (156655, 158452, 162508, 154332, 159275, 158707);
UPDATE `creature_template` SET `faction` = 2417 WHERE `entry` IN (154424, 154421, 163071);
