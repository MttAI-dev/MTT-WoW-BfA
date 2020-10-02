DROP TABLE IF EXISTS `character_challengemode_map_stats`;
DROP TABLE IF EXISTS `character_completed_challenges`;
CREATE TABLE `character_completed_challenges` (
`guid`  bigint(20) UNSIGNED NOT NULL ,
`KeyId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`MapId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BestCompletion`  int(12) UNSIGNED NULL DEFAULT 0 ,
`LastCompletion`  int(12) UNSIGNED NULL DEFAULT 0 ,
`Medal`  int(10) UNSIGNED NULL DEFAULT 0 ,
`MedalDate`  int(12) UNSIGNED NULL DEFAULT 0 ,

PRIMARY KEY (`guid`, `KeyId`)
);