-- ALTER TABLE `account`
    -- DROP COLUMN `sessionkey`,
    -- ADD COLUMN `salt` BINARY(32) AFTER `username`,
    -- ADD COLUMN `verifier` BINARY(32) AFTER `salt`,
    -- ADD COLUMN `session_key` BINARY(40) AFTER `verifier`,
    -- MODIFY COLUMN `s` VARCHAR(64) NOT NULL DEFAULT 'dummy value, use `salt` instead',
    -- MODIFY COLUMN `v` VARCHAR(64) NOT NULL DEFAULT 'dummy value, use `verifier` instead';

UPDATE `account` SET `salt`=REVERSE(UNHEX(`s`)), `s`=DEFAULT WHERE LENGTH(`s`)=64;
UPDATE `account` SET `verifier`=REVERSE(UNHEX(`v`)), `v`=DEFAULT WHERE LENGTH(`v`)=64;

-- ALTER TABLE `account` MODIFY COLUMN `session_key` VARBINARY(64) AFTER `verifier`;

-- ALTER TABLE `account`
    -- DROP COLUMN `session_key`,
    -- ADD COLUMN `session_key_auth` BINARY(40) DEFAULT NULL AFTER `verifier`,
    -- ADD COLUMN `session_key_bnet` VARBINARY(64) DEFAULT NULL AFTER `session_key_auth`;
