-- db log erros
UPDATE `smart_scripts` SET `event_param3` =1000,`event_param4`=1000 WHERE `event_type` in (0,1,2,3,9,12,14,15,16,18,23,24,31,32,33,60,74)
 and `event_param3`=0 and `event_param4`=0;

UPDATE `smart_scripts` SET  `id`=1,`link`=0 WHERE `id`=0 AND `link`=1 and entryorguid in (-280003161,129384,134346,127091);
UPDATE `smart_scripts` SET  `id`=2,`link`=0 WHERE `id`=0 AND `link`=2 and entryorguid in (126005,-280003161,129384,134346,127091);
UPDATE `smart_scripts` SET  `id`=3,`link`=0 WHERE `id`=0 AND `link`=3 and entryorguid in (126005,-280003161,129384,134346);
UPDATE `smart_scripts` SET  `id`=4,`link`=0 WHERE `id`=0 AND `link`=4 and entryorguid in (134346);
UPDATE `smart_scripts` SET  `id`=5,`link`=0 WHERE `id`=0 AND `link`=5 and entryorguid in (134346);
UPDATE `smart_scripts` SET  `id`=6,`link`=0 WHERE `id`=0 AND `link`=6 and entryorguid in (134346);


UPDATE `smart_scripts` SET `action_type` =12,`action_param1`=9526,`action_param2`=5
WHERE `action_type`=11 AND `action_param1`=14313;

UPDATE `smart_scripts` SET `action_type` =12,`action_param1`=9526,`action_param2`=5 
WHERE `action_type`=11 AND `action_param1`=14252;

DELETE FROM `smart_scripts` WHERE `action_type`=11 AND `action_param1`=2607; -- npc 1911 doesn't use more that spell 

UPDATE `smart_scripts` SET `action_type` =12,`action_param1`=9297,`action_param2`=5
WHERE `action_type`=11 AND `action_param1`=14307;

UPDATE `smart_scripts` SET `action_param1`=6923 WHERE `action_type`=11 AND `action_param1`=4148;

UPDATE `smart_scripts` SET `action_type` =12,`action_param1`=33039,`action_param2`=5
WHERE `action_type`=11 AND `action_param1`=14329;

UPDATE `smart_scripts` SET `action_type` =11,`action_param1`=69971,`action_param2`=2
WHERE `action_type`=12 AND `action_param1`=37114;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (65471,126489,126602,126646,127827,127924,128038,128427,128561,129022);
