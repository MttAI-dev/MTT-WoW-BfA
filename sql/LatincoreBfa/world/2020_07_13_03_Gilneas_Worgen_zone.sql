update `smart_scripts` set `target_param2`=5 where `entryorguid`=34916;
delete from `creature` where `guid` in
(20556535,20556446,20556805,20556804,20556900,20556901,20556518,20556893,20556890,20556795,20556802,20556813,
20556476,20556792,20556811,20556796,20556807);

UPDATE gameobject_template SET Data30='0' WHERE  entry=277375;
UPDATE gameobject_template SET Data30='0' WHERE  entry=277376; 
UPDATE gameobject_template SET Data30='0' WHERE  entry=277377;
UPDATE `gameobject_template` SET `type`=3,`data3`=0,`data30`=0 WHERE `entry`=224784;
