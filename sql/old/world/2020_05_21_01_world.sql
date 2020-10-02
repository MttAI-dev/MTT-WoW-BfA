-- Nestlewood Owlkin SAI
SET @ENTRY := 16518;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,1,29528,0,0,0,33,16534,0,0,0,0,0,7,0,0,0,0,0,0,0,"on spellhit - give credit"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"say"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,12,16534,3,30000,0,0,0,1,0,0,0,0,0,0,0,"say"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"link - despawn");

UPDATE `gameobject_template` SET `Data0`='291443' WHERE  `entry`=307614;
UPDATE `gameobject_template` SET `Data0`='102917' WHERE  `entry`=315457;
UPDATE `creature_template` SET `gossip_menu_id`='22561' WHERE  `entry`=133392;
UPDATE `gameobject_template` SET `Data0`='215411' WHERE  `entry`=251521;


-- Huntress Sandrya Moonfall SAI
SET @ENTRY := 33178;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,13515,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"On quest accept - Say text"),
(@ENTRY,0,1,2,62,0,100,0,33178,0,0,0,1,2,5000,0,0,0,0,1,0,0,0,0,0,0,0,"On gossip select - Say text"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Link - close gossip"),
(@ENTRY,0,3,0,52,0,100,0,2,33178,0,0,49,0,0,0,0,0,0,11,32862,250,0,0,0,0,0,"After emote - Start attack"),
(@ENTRY,0,4,5,0,0,100,1,10000,10000,15000,15000,28,64549,0,0,0,0,0,11,32862,250,0,0,0,0,0,"OCT - Say text"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Link - unaura - Destroy Shield");

-- Jor'kil the Soulripper SAI
SET @ENTRY := 32862;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,30,11000,15500,11,12058,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Chain Lightning on Close"),
(@ENTRY,0,1,0,2,0,100,0,0,80,10000,20000,11,35197,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Terror Totem at 30% HP"),
(@ENTRY,0,2,0,25,0,100,0,0,0,0,0,75,64549,0,0,0,0,0,1,0,0,0,0,0,0,0,"Respawn Quest NPC");

DELETE FROM gameobject WHERE id IN (293344, 225786, 185316, 186810, 204819, 205253, 207282, 207283, 207284, 207285, 207326, 207350, 215177, 215178, 215179, 215180, 215367, 215368, 215369, 215370, 215371, 215372, 215375, 215376, 215383, 215384, 215385, 215386, 216003, 216004, 216005, 216006, 216007, 216008, 216009, 211442, 242405, 242404, 293551, 249852, 297523, 212244, 212245, 212265, 212266, 212347, 213085, 213475, 213481, 213484, 213489, 213497, 213638, 213639);
DELETE FROM gameobject_template WHERE entry IN (293344, 225786, 185316, 186810, 204819, 205253, 207282, 207283, 207284, 207285, 207326, 207350, 215177, 215178, 215179, 215180, 215367, 215368, 215369, 215370, 215371, 215372, 215375, 215376, 215383, 215384, 215385, 215386, 216003, 216004, 216005, 216006, 216007, 216008, 216009, 211442, 242405, 242404, 293551, 249852, 297523, 212244, 212245, 212265, 212266, 212347, 213085, 213475, 213481, 213484, 213489, 213497, 213638, 213639);
DELETE FROM gameobject_addon WHERE guid NOT IN (SELECT guid FROM gameobject);
DELETE FROM gameobject_template_addon WHERE entry  IN (293344, 
225786, 
186810, 
185316, 
204819, 
205253, 
207282, 
207283, 
207284, 
207285, 
207326, 
207350, 
215177, 
215178, 
215179, 
215180, 
215367, 
215368, 
215369, 
215370, 
215371, 
215372, 
215375, 
215376, 
215383, 
215384, 
215385, 
215386, 
216003, 
216004, 
216005, 
216006, 
216007, 
216008, 
216009, 
211442, 
212244, 
212245, 
212265, 
212266, 
212347, 
213085, 
213475, 
213481, 
213484, 
213489, 
213497, 
213638, 
213639, 
242405);

