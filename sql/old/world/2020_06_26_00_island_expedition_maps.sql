UPDATE creature_template SET unit_flags = 768 WHERE entry IN(143967,143968);
UPDATE instance_template SET allowMount = 0 WHERE map IN(1864,1760,1763,1754,1877,1771,1862);
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('203283', 'spell_mage_firestarter_pvp');
UPDATE gameobject SET state = 0 WHERE id IN(281057,281056,281055,281054,281028,281053,281052,281051,281050,281030,281049);
UPDATE `creature_template` SET `flags_extra`='128' WHERE (`entry`='133599');