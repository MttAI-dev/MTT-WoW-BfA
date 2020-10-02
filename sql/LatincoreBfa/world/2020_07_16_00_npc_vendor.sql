DELETE FROM `npc_vendor` WHERE entry=125879 AND `item`=163042 AND `extendedcost`=6420;
DELETE FROM `npc_vendor` WHERE entry=125879 AND `item`=163589 AND `extendedcost`=6007;
UPDATE `npc_vendor` SET `overridegoldcost`=1250000000,`extendedcost`=0 WHERE `item`=163568 AND `entry`=125879;
