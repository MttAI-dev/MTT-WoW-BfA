DELETE FROM `phase_area` where `AreaId` in (7041,7129,7040,7042,7045);
-- 7041
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 172, 'TanaanJungle');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 173, 'TanaanJungle');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 175, 'TanaanJungle');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 176, 'TanaanJungle');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 177, 'TanaanJungle');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 179, 'TanaanJungle');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 180, 'TanaanJungle');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 181, 'TanaanJungle');
-- 7129
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7129, 185, 'TanaanJungle');
-- 7040
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7040, 186, 'TanaanJungle');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7040, 179, 'TanaanJungle');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7040, 180, 'TanaanJungle');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7040, 181, 'TanaanJungle');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7040, 182, 'TanaanJungle');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7040, 183, 'TanaanJungle');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7040, 184, 'TanaanJungle');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7040, 176, 'TanaanJungle');
-- 7042
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7042, 177, 'TanaanJungle');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7042, 172, 'TanaanJungle');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7042, 173, 'TanaanJungle');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7042, 181, 'TanaanJungle');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7042, 184, 'TanaanJungle');
-- 7045
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7045, 176, 'TanaanJungle');
DELETE FROM  phase_area WHERE AreaId = 7041;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 169, 'TanaanJungleIntro');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 170, 'TanaanJungleIntro');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 172, 'TanaanJungleIntro');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 173, 'TanaanJungleIntro');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 174, 'TanaanJungleIntro');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 175, 'TanaanJungleIntro');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 176, 'TanaanJungleIntro');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 177, 'TanaanJungleIntro');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 179, 'TanaanJungleIntro');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 180, 'TanaanJungleIntro');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 181, 'TanaanJungleIntro');
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (7041, 182, 'TanaanJungleIntro');
UPDATE creature SET unit_flags = 0 WHERE id = 78507 AND unit_flags > 0;
REPLACE INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES ('7039', '185', 'TanaanJungleIntro');
UPDATE creature SET unit_flags = 0 WHERE id = 78651;
REPLACE INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES ('7039', '187', 'TanaanJungleIntro');
REPLACE INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES ('7039', '173', 'TanaanJungleIntro');
REPLACE INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES ('7039', '172', 'TanaanJungleIntro');
REPLACE INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES ('7039', '180', 'TanaanJungleIntro');
REPLACE INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES ('7130', '180', 'BladefistRise');