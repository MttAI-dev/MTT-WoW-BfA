-- Fix balance pole spell distance action in quest 29661 the-lesson-of-dry-fur
UPDATE `creature_model_info` SET `CombatReach`= 17.5 WHERE `displayid` IN (38347,39004);
