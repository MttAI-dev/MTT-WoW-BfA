/* goblins inician en kezan */
REPLACE into `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) values('9','9','648','4765','-8423.81','1361.3','104.671','0');
REPLACE into `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) values('9','8','648','4765','-8423.81','1361.3','104.671','0');
REPLACE into `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) values('9','7','648','4765','-8423.81','1361.3','104.671','0');
REPLACE into `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) values('9','5','648','4765','-8423.81','1361.3','104.671','0');
REPLACE into `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) values('9','4','648','4765','-8423.81','1361.3','104.671','0');
REPLACE into `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) values('9','3','648','4765','-8423.81','1361.3','104.671','0');
REPLACE into `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) values('9','1','648','4765','-8423.81','1361.3','104.671','0');
REPLACE into `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) values('9','6','609','0','2355.05','-5661.7','426.026','0');
/* zona goblin de kezan */
DELETE FROM creature WHERE guid IN (21015333);
DELETE FROM creature WHERE guid IN (21015358);
DELETE FROM creature WHERE guid IN (21015324);
DELETE FROM creature WHERE guid IN (21015330);
DELETE FROM creature WHERE guid IN (21015315);
DELETE FROM creature WHERE guid IN (21015303);
DELETE FROM creature WHERE guid IN (21015312);
DELETE FROM creature WHERE guid IN (21015314);
DELETE FROM creature WHERE guid IN (21015302);
DELETE FROM creature WHERE guid IN (21015311);
DELETE FROM creature WHERE guid IN (21015319);
DELETE FROM creature WHERE guid IN (21015318);
DELETE FROM creature WHERE guid IN (21015345);
DELETE FROM creature WHERE guid IN (21015373);
DELETE FROM creature WHERE guid IN (21015349);
DELETE FROM creature WHERE guid IN (21015377);
DELETE FROM creature WHERE guid IN (21015385);
DELETE FROM creature WHERE guid IN (21015363);
DELETE FROM creature WHERE guid IN (21015395);
DELETE FROM creature WHERE guid IN (21015326);
DELETE FROM creature WHERE guid IN (21015333);
DELETE FROM creature WHERE guid IN (21015336);
DELETE FROM creature WHERE guid IN (21015360);
DELETE FROM creature WHERE guid IN (21015376);
DELETE FROM creature WHERE guid IN (21015393);
DELETE FROM creature WHERE guid IN (21015379);
DELETE FROM creature WHERE guid IN (21015369);
DELETE FROM creature WHERE guid IN (21015323);
DELETE FROM creature WHERE guid IN (21015320);
DELETE FROM creature WHERE guid IN (21015341);
DELETE FROM creature WHERE guid IN (21015386);
DELETE FROM creature WHERE guid IN (21015394);
DELETE FROM creature WHERE guid IN (21015390);
DELETE FROM creature WHERE guid IN (21015384);
DELETE FROM creature WHERE guid IN (21015381);
DELETE FROM creature WHERE guid IN (21015380);
DELETE FROM creature WHERE guid IN (21015399);
DELETE FROM creature WHERE guid IN (21015383);
DELETE FROM creature WHERE guid IN (21015396);
DELETE FROM creature WHERE guid IN (21015404);
DELETE FROM creature WHERE guid IN (21015402);
DELETE FROM creature WHERE guid IN (21015407);
DELETE FROM creature WHERE guid IN (21015401);
DELETE FROM creature WHERE guid IN (21015404);
DELETE FROM creature WHERE guid IN (21015387);
DELETE FROM creature WHERE guid IN (21015397);
DELETE FROM creature WHERE guid IN (21015317);
DELETE FROM creature WHERE guid IN (21015313);
DELETE FROM creature WHERE guid IN (21015335);
DELETE FROM creature WHERE guid IN (21015332);
DELETE FROM creature WHERE guid IN (21015370);
DELETE FROM creature WHERE guid IN (21015357);
DELETE FROM creature WHERE guid IN (21015329);
DELETE FROM creature WHERE guid IN (21015372);
DELETE FROM creature WHERE guid IN (21015338);
DELETE FROM creature WHERE guid IN (21015354);
DELETE FROM creature WHERE guid IN (21015342);
DELETE FROM creature WHERE guid IN (21015356);
DELETE FROM creature WHERE guid IN (21015392);
DELETE FROM creature WHERE guid IN (21015367);
DELETE FROM creature WHERE guid IN (21015348);
DELETE FROM creature WHERE guid IN (21015346);
DELETE FROM creature WHERE guid IN (21015355);
DELETE FROM creature WHERE guid IN (21015316);
DELETE FROM creature WHERE guid IN (21015310);
DELETE FROM creature WHERE guid IN (21015337);
DELETE FROM creature WHERE guid IN (21015351);
DELETE FROM creature WHERE guid IN (21015389);
DELETE FROM creature WHERE guid IN (21015398);
DELETE FROM creature WHERE guid IN (21015406);
DELETE FROM creature WHERE guid IN (21015344);
DELETE FROM creature WHERE guid IN (21015391);
DELETE FROM creature WHERE guid IN (21015388);
DELETE FROM creature WHERE guid IN (21015375);
DELETE FROM creature WHERE guid IN (21015306);
DELETE FROM creature WHERE guid IN (21015308);
DELETE FROM creature WHERE guid IN (21015331);
DELETE FROM creature WHERE guid IN (21015309);
DELETE FROM creature WHERE guid IN (21015327);
DELETE FROM creature WHERE guid IN (21015347);
DELETE FROM creature WHERE guid IN (21015305);
DELETE FROM creature WHERE guid IN (21015334);


/* cambio de displayid a npcs */
UPDATE `creature_template_model` SET `creaturedisplayid` = 29630 WHERE `creatureid` = 35202 AND `Idx` = 0;
UPDATE `creature_template_model` SET `creaturedisplayid` = 29630 WHERE `creatureid` = 35236 AND `Idx` = 0;

/* cambio de phaseid */
UPDATE `gameobject` SET `phaseid` = 382  WHERE `id` = 201735;
UPDATE `gameobject` SET `phaseid` = 382  WHERE `id` = 201740;
UPDATE `gameobject` SET `phaseid` = 382  WHERE `id` = 201733;
UPDATE `gameobject` SET `phaseid` = 382  WHERE `id` = 201745;
UPDATE `gameobject` SET `phaseid` = 382  WHERE `id` = 201734;
UPDATE `gameobject` SET `phaseid` = 382  WHERE `id` = 201736;
/* cambio de phase npc */
UPDATE `creature` SET `phaseid` = 382  WHERE `id` = 37602;
UPDATE `creature` SET `phaseid` = 382  WHERE `id` = 37708;
UPDATE `creature` SET `phaseid` = 382  WHERE `id` = 37710;
UPDATE `creature` SET `phaseid` = 382  WHERE `id` = 37709;
UPDATE `creature` SET `phaseid` = 382  WHERE `id` = 35222;


DELETE FROM `spell_proc` WHERE `SpellId`=13234;
INSERT INTO `spell_proc` (`SpellId`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `ProcFlags`, `SpellTypeMask`, `SpellPhaseMask`, `HitMask`, `AttributesMask`, `ProcsPerMinute`, `Chance`, `Cooldown`, `Charges`) VALUES
(13234, 0, 0, 0x00000000, 0x00000000, 0x00000000, 0, 0x1, 0x0, 0x403, 0x2, 0, 0, 0, 0);

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_item_harm_prevention_belt';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(13234, 'spell_item_harm_prevention_belt');