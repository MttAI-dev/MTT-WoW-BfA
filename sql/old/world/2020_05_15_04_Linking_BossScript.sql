UPDATE `creature_template` SET `ScriptName`='boss_Coin_operated_crowd_pummeler' WHERE `entry`=129214;
UPDATE `creature_template` SET `faction`=16 ,`BaseAttackTime`=1500 ,`RangeAttackTime`=2000,
`unit_flags`=32832 ,`unit_flags2`=2097152 ,`mechanic_immune_mask`=2147467263 WHERE `entry`=129214;

DELETE FROM `spell_script_names` WHERE `spell_id` IN
(262347,269493,256137,255996,256163,257337,271785,271903,271867);
INSERT INTO `spell_script_names`(`spell_id`,`ScriptName`) VALUES
(262347,'spell_static_pulse'),
(269493,'spell_footbomb_launcher'),
(256137,'spell_timed_detonation'),
(255996,'spell_punt'),
(256163,'spell_blazing_azerite'),
(257337,'spell_shocking_claw'),
(271785,'spell_thorw_coins '),
(271903,'spell_coint_magnet'),
(271867,'spell_pay_to_win');


--  aura divine shield =40733

DELETE FROM `creature_text` WHERE (`CreatureID`=129214 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=129214 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=129214 AND `GroupID`='2' AND `ID`='0') OR (`CreatureID`=129214 AND `GroupID`='3' AND `ID`='0') OR (`CreatureID`=129214 AND `GroupID`='4' AND `ID`='0') OR (`CreatureID`=129214 AND `GroupID`='5' AND `ID`='0') OR (`CreatureID`=129214 AND `GroupID`='6' AND `ID`='0');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(129214, 0, 0, 'Venture Company thanks you for your patronage. Please enjoy your purchase of the basic pummeling package.', 14, 0, 100, 0, 0, 97390, 0, 'Coin-Operated Crowd Pummeler to Player - TALK_AGGRO'),
(129214, 0, 1, 'Systems engaged. Commence pummeling.', 14, 0, 100, 0, 0, 97384, 0, 'Coin-Operated Crowd Pummeler - TALK_AGGRO'),
(129214, 1, 0, 'Voltage increased.', 14, 0, 100, 0, 0, 97381, 0, 'Coin-Operated Crowd Pummeler - TALK_STATIC_PULSE'),
(129214, 2, 0, '|TINTERFACE\\ICONS\\INV_MISC_SOCCERBALL.BLP:20|t Coin-Operated Crowd Pummeler casts |cFFFF0000|Hspell:256214|h[Footbomb Launcher]|h|r!', 41, 0, 100, 0, 0, 115344, 0, 'Coin-Operated Crowd Pummeler - TALK_FOOTBOMB_LAUNCHER'),
(129214, 3, 0, 'Lethal force authorized.', 14, 0, 100, 0, 0, 97380, 0, 'Coin-Operated Crowd Pummeler - TALK_SHOCKING_CLAW'),
(129214, 4, 0, 'Damaging this unit violates the terms of use.', 14, 0, 100, 0, 0, 97379, 0, 'Coin-Operated Crowd Pummeler to 129246 - TALK_COIN_MAGNET'),
(129214, 5, 0, 'Systems... failing. Coin release... malfunction...', 14, 0, 100, 0, 0, 97385, 0, 'Coin-Operated Crowd Pummeler to Player - TALK_DEATH');