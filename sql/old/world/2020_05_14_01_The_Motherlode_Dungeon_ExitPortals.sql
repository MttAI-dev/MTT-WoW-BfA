DELETE FROM `areatrigger_teleport` WHERE `id` IN (-66,-67);
INSERT INTO `areatrigger_teleport` (`Id`,`PortLocID`,`Name`) VALUES
(-66,6583,'The MotherLode exit target alliance'),
(-67,6579,'The MotherLode exit target horde');

DELETE FROM `areatrigger` WHERE `guid` IN (66,67);
INSERT INTO `areatrigger` VALUES
(66,100007,1594,8388870,629.5438,-3622.44,0.385342,''),
(67,100006,1594,8388870,629.5438,-3622.44,0.385342,'');