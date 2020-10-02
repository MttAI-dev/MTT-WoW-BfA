UPDATE `creature_template` SET `lootid`=129232 WHERE `entry`=129232;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(129232, 158307, 10, 1, 0, 1, 1) /* hrapnel-Dampening Chestguard */, 
(129232, 158349, 10, 1, 0, 1, 1) /* etticoat of the Self-Stylized Azerite Baron */, 
(129232, 158364, 10, 1, 0, 1, 1) /* igh Altitude Turban */, 
(129232, 159232, 10, 1, 0, 1, 1) /* xquisitely Aerodynamic Shoulderpads */, 
(129232, 159298, 10, 1, 0, 1, 1) /* enture Co. Plenipotentiary Vest */, 
(129232, 159360, 10, 1, 0, 1, 1) /* rashguard Spaulders */, 
(129232, 159415, 10, 1, 0, 1, 1) /* kyscorcher Pauldrons */, 
(129232, 159611, 10, 1, 0, 1, 1) /* azdunk's Big Red Button */, 
(129232, 159641, 10, 1, 0, 1, 1) /* 3T-00t */;

DELETE FROM `creature` WHERE `id`=125977;
