DELETE FROM `areatrigger_teleport` WHERE `id` IN (-68);
INSERT INTO `areatrigger_teleport` (`Id`,`PortLocID`,`Name`) VALUES
(-68,6359,'The MotherLode Entrance Starting Loc Horde');

DELETE FROM `areatrigger` WHERE `guid` IN (68);
INSERT INTO `areatrigger` VALUES
(68,100007,1642,1,-2001.79,967.257,8.89095,'');