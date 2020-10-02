DELETE FROM `areatrigger_teleport` WHERE `id` IN (-65);
INSERT INTO `areatrigger_teleport` (`Id`,`PortLocID`,`Name`) VALUES
(-65,6580,'The MotherLode Entrance Target');

DELETE FROM `areatrigger` WHERE `guid` IN (65);
INSERT INTO `areatrigger` VALUES
(65,100007,1642,1,-2647.25,2388.37,10.0474,'');