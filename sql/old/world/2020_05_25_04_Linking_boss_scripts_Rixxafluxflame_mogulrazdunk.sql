-- Rixxafluxflame 129231 and Mogulrazdunk 129232

UPDATE `creature_template` SET `ScriptName`='boss_rixxafluxflame' WHERE `entry`=129231;
UPDATE `creature_template` SET `ScriptName`='boss_mogulrazdunk' WHERE `entry`=129232;

DELETE FROM `creature_text` WHERE `CreatureID`=129231;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(129231, 0, 0, '¡¡¡Te voy a partir la madre!!!!', 14, 0, 100, 0, 0, 0, 0, 'Rixxafluxflame - YELL_AGGRO'),
(129231, 0, 1, 'Ven con papi...', 14, 0, 100, 0, 0, 0, 0, 'Rixxafluxflame- YELL_CHEMICAL_BURN'),
(129231, 1, 0, 'Hola mi amol', 14, 0, 100, 0, 0, 0, 0, 'Rixxafluxflame - YELL_PROPELLANT_BLAST'),
(129231, 2, 0, 'no se que mas poner', 41, 0, 100, 0, 0, 0, 0, 'Rixxafluxflame - YELL_SEARING_REAGENT'),
(129231, 3, 0, 'La concha de tu madre', 14, 0, 100, 0, 0, 0, 0, 'Rixxafluxflame - YELL_KILLED');

DELETE FROM `creature_text` WHERE `CreatureID`=129232;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(129232, 0, 0, '¡¡¡Te voy a partir la madre!!!!', 14, 0, 100, 0, 0, 0, 0, 'Mogulrazdunk - YELL_AGGRO'),
(129232, 0, 1, 'Ven con papi...', 14, 0, 100, 0, 0, 0, 0, 'Mogulrazdunk- YELL_GATLING_GUN'),
(129232, 1, 0, 'Hola mi amol', 14, 0, 100, 0, 0, 0, 0, 'Mogulrazdunk - YELL_DRILL_SMASH'),
(129232, 2, 0, 'no se que mas poner', 41, 0, 100, 0, 0, 0, 0, 'Mogulrazdunk - YELL_MICRO_MISSILES'),
(129232, 3, 0, 'La concha de tu madre', 14, 0, 100, 0, 0, 0, 0, 'Mogulrazdunk - YELL_KILLED');