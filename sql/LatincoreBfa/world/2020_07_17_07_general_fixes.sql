UPDATE `gameobject_loot_template` SET `lootmode`=1 WHERE `lootmode`=0;
UPDATE `creature_loot_template` SET `lootmode`=1 WHERE `lootmode`=0;

REPLACE INTO `disables` VALUES
(0,199721,9,0,0,'Decomposing Aura DK');
