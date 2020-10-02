/*lobos parte 1*/
/* phases */
UPDATE `creature` SET `phaseid` = 170  WHERE `id` = 50371;
/*delete door */
delete from `gameobject` where guid =20406504;
/* delete phase_area*/
delete from phase_area where AreaId in (4755,4757);
/*solo la phase 1 hasta la iglesia trabajando */
