-- fix quest 13520 (npc aura quest invisible) and similar issues with others npcs
UPDATE `creature_addon` SET `auras`=0 WHERE `auras`=49414;
UPDATE `creature_template_addon` SET `auras`=0 WHERE `auras`=49414;