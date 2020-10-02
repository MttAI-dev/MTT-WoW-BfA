-- New File a
CREATE TABLE IF NOT EXISTS `guild_challenges` (
  `GuildId` int(10) unsigned NOT NULL,
  `ChallengeType` int(1) NOT NULL DEFAULT 0,
  `ChallengeCount` int(1) DEFAULT NULL,
  PRIMARY KEY (`GuildId`,`ChallengeType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Volcando datos para la tabla legion_characters.guild_challenges: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `guild_challenges` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_challenges` ENABLE KEYS */;