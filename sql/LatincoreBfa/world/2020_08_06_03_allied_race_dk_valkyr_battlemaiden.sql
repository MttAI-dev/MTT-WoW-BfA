/* Allied race Death Knight Valkyr Battle-maiden */
replace into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) values
('228534','0','0','0','0','0','Val\'kyr Battle-maiden','','',NULL,'','0','80','80','2','0','0','2082','0','1','1.07143','1','1','0','2000','2000','0','0','1','33280','2048','0','0','0','0','0','0','6','0','0','0','0','0','0','0','0','0','0','0','51918','0','0','0','0','0','0','0','0','0','0','','0','4','4','10','1','1','1','1','7.5','1','0','0','0','0','0','1','8388624','0','npc_valkyr_battle_maiden_allied','0');
replace into `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) values
('228534','0','24991','1','1','0');
replace into `creature_template_spell` (`entry`, `spellid`, `action`, `action_param1`, `action_param2`) values
('228534','51918','NONE','0','0');
replace into `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) values
('228534','0','0','It is not yet your time, champion. Rise! Rise and fight once more!','15','0','100','0','0','0','28497','0','Valkyr Battle Maiden');
replace into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) values
('228534','0','0','50331648','257','0','0','0','0','0','');

replace into `zone_scripts` (`zoneId`, `scriptname`) values
('12951','zone_allied_dk'),
('12952','zone_allied_dk');

