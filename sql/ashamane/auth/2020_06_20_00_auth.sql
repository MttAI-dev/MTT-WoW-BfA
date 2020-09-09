ALTER TABLE `account_access`
  CHANGE COLUMN `id` `id` INT(10) UNSIGNED NOT NULL,
  CHANGE COLUMN `gmlevel` `gmlevel` TINYINT(3) UNSIGNED NOT NULL,
  ADD COLUMN `Comment` VARCHAR(255) DEFAULT NULL AFTER `RealmID`;

UPDATE `rbac_permissions` SET `name` = 'Command: account set gmlevel' WHERE `id` = 228;
