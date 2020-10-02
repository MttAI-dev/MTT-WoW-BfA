/* spawn npc 49480 */
DELETE FROM creature WHERE guid=280009405;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
("280009405", "49480", "1", "0", "0", "0", "0", "0", "0", "-1", "0", "0", "10750.2", "933.94", "1336.97", "3.09837", "300", "0", "0", "94", "0", "0", "0", "0", "0", "0", "0", "", "0");

/* fix https://es.wowhead.com/quest=28723/sacerdotisa-de-la-luna */
DELETE FROM `creature_queststarter` WHERE id=2079 AND quest=28723;
INSERT INTO `creature_queststarter` ( id, quest) VALUES
( 2079, 28723);

UPDATE quest_template_addon SET PrevQuestID= 28715 WHERE id=28723;

/* delete npc doble spawn */
DELETE FROM creature WHERE guid=277146;

/* quest old */
 DELETE FROM quest_template WHERE id=26949;
 
/* quest addom old */
DELETE FROM quest_template_addon WHERE id=26949;
