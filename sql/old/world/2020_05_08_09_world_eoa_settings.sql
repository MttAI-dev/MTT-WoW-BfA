/*==========================
-- Eye of Azshara Settings
==========================*/
DELETE FROM `areatrigger_template_actions` WHERE  `AreaTriggerId`=4842 AND `ActionType`=10 AND `ActionParam`=0;
UPDATE `creature_text` SET `Sound`='0' WHERE  `CreatureID`=91789 AND `GroupID`=9 AND `ID`=0;
UPDATE .`areatrigger_template` SET `ScriptName`='' WHERE  `Id`=9683;
UPDATE .`areatrigger_template` SET `ScriptName`='' WHERE  `Id`=100101;
UPDATE .`areatrigger_template` SET `ScriptName`='' WHERE  `Id`=9574;
DELETE FROM .`spell_script_names` WHERE  `spell_id`=193245 AND `ScriptName`='aura_king_deepbeard_gain_energy';
DELETE FROM .`spell_script_names` WHERE  `spell_id`=192705 AND `ScriptName`='spell_wrath_of_azshara_arcane_bomb_target';
DELETE FROM .`spell_script_names` WHERE  `spell_id`=197324 AND `ScriptName`='spell_lady_hatecoil_crackling_thunder';
DELETE FROM .`spell_script_names` WHERE  `spell_id`=193611 AND `ScriptName`='spell_lady_hatecoil_focused_lightning';
DELETE FROM .`spell_script_names` WHERE  `spell_id`=196624 AND `ScriptName`='spell_lady_hatecoil_monsoon_target';

