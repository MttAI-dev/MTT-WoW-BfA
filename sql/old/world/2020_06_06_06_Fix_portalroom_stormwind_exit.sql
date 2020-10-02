UPDATE `world_safe_locs` SET `LocX`=-9013.20,`LocY`=870.627,`LocZ`=148.617,`facing`=5.3610 WHERE `id`=3630;
UPDATE `areatrigger_teleport` SET `PortlocID`=3630 WHERE `id`=-72;
REPLACE INTO `areatrigger` VALUES (72,100007,0,1,-8998.63,862.3577,65.8980,'');
