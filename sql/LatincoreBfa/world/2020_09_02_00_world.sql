
UPDATE `creature_template` SET `ScriptName`='npc_ritssyn_flamescowl_101456' WHERE `entry`=101456;
UPDATE `creature_template` SET `ScriptName`='npc_summoning_portal_101433' WHERE `entry`=101433;
-- scenario_dreadscar_rift_warlock
DELETE FROM `scenarios` WHERE `map`=1522;
INSERT INTO `scenarios` (`map`, `difficulty`, `scenario_A`, `scenario_H`) VALUES (1522, 12, 962, 962);

UPDATE `creature_template` SET `ScriptName`='npc_beshtal_98836' WHERE `entry`=98836;
UPDATE `creature_template` SET `ScriptName`='npc_ritssyn_flamescowl_98771' WHERE `entry`=98771;
UPDATE `creature_template` SET `ScriptName`='npc_calydus_99178' WHERE `entry`=99178;
UPDATE `creature_template` SET `ScriptName`='npc_jubeka_shadowbreaker_98775' WHERE `entry`=98775;
UPDATE `creature_template` SET `ScriptName`='npc_zinnin_smythe_98793' WHERE `entry`=98793;
UPDATE `creature_template` SET `ScriptName`='npc_shinfel_blightsworn_98783' WHERE `entry`=98783;

-- 98876 99397 98889 98878

UPDATE `gameobject_template` SET `ScriptName`='go_barrier_control_245234' WHERE `entry`=245234;
-- 245924 loot
UPDATE `gameobject_template` SET `Data1`='245924' WHERE `entry`=245924;
DELETE FROM `gameobject_loot_template` WHERE `Entry` =245924;
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(245924, 132512, 0, 100, 0, 1, 0, 1, 1, 'tome-of-blighted-implements');

UPDATE `gameobject_template` SET `ScriptName`='go_tome_of_blighted_implements' WHERE `entry`=245924;
UPDATE `creature_template` SET `ScriptName`='npc_calydus_101097' WHERE `entry`=101097;

INSERT IGNORE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(68239, 75648, 0, 0),
(68232, 75648, 0, 0),
(68238, 75648, 0, 0),
(106359, 210857, 0, 0),
(101433, 199966, 0, 0),
(98783, 195039, 0, 0),
(98775, 195039, 0, 0),
(98793, 195039, 0, 0),
(110030, 219203, 0, 0),
(109964, 219203, 0, 0),
(110800, 220374, 0, 0),
(110479, 219917, 0, 0),
(110476, 219705, 0, 0),
(105038, 208058, 0, 0),
(106618, 211450, 0, 0),
(101921, 201060, 0, 0),
(106772, 211822, 0, 0),
(100385, 103583, 0, 0),
(112991, 224326, 0, 0);

