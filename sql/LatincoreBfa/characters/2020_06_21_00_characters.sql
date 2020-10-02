DROP TABLE IF EXISTS `players_reports_status`;
CREATE TABLE `players_reports_status` (
  `guid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `creation_time` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `average` FLOAT NOT NULL DEFAULT '0',
  `total_reports` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `speed_reports` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `fly_reports` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `jump_reports` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `waterwalk_reports` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `teleportplane_reports` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `climb_reports` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='';

DROP TABLE IF EXISTS `daily_players_reports`;
CREATE TABLE `daily_players_reports` (
  `guid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `creation_time` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `average` FLOAT NOT NULL DEFAULT '0',
  `total_reports` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `speed_reports` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `fly_reports` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `jump_reports` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `waterwalk_reports` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `teleportplane_reports` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `climb_reports` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='';