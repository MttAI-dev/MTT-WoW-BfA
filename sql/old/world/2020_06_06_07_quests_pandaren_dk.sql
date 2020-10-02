UPDATE `quest_template` SET `rewardchoiceitemid1`=174488,`rewardchoiceitemquantity1`=1,
`rewardchoiceitemid2`=174487,`rewardchoiceitemquantity2`=1,
`rewardchoiceitemid3`=174486,`rewardchoiceitemquantity3`=1,
`rewardchoiceitemid4`=174485,`rewardchoiceitemquantity4`=1,
`rewardchoiceitemid5`=174660,`rewardchoiceitemquantity5`=1, 
`rewardchoiceitemid6`=174661,`rewardchoiceitemquantity6`=1 Where id=58877;
UPDATE `quest_template` SET `allowableraces`=6130900294268439629 WHERE `id`=58902;
UPDATE `quest_template` SET `allowableraces`=12261800583900083122 WHERE `id`=58903;
UPDATE `quest_template_addon` SET `allowableclasses`=32 WHERE `id` IN (58903,58902);


UPDATE `creature_template` SET `minlevel`='120', `maxlevel`='120' WHERE  `entry`=161709;
UPDATE `creature_template` SET `minlevel`='120', `maxlevel`='120' WHERE  `entry`=161708;
UPDATE `creature_template` SET `minlevel`='120', `maxlevel`='120' WHERE  `entry`=161711;
UPDATE `creature_template` SET `minlevel`='120', `maxlevel`='120' WHERE  `entry`=161706;
UPDATE `creature_template` SET `minlevel`='120', `maxlevel`='120' WHERE  `entry`=161707;
