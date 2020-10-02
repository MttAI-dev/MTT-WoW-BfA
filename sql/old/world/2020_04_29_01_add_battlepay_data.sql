INSERT INTO `battlepay_products`(`ProductID`,`NormalPriceFixedPoint`,`CurrentPriceFixedPoint`,`Type`,`ChoiceType`,`Flags`,`DisplayInfoID`,`ScriptName`,`ClassMask`) VALUES
(1,125,125,0,2,47,1,'',0),
(2,125,125,0,2,47,2,'',0),
(3,125,125,0,2,47,3,'',0),
(4,125,125,0,2,47,4,'',0),
(5,125,125,0,2,47,5,'',0),
(6,125,125,0,2,47,6,'',0),
(7,125,125,0,2,47,7,'',0),
(8,100,100,0,2,47,8,'',0),
(9,125,125,0,2,47,9,'',0),
(10,125,125,0,2,47,10,'',0);

INSERT INTO `battlepay_display_info`(`DisplayInfoId`,`CreatureDisplayInfoID`,`FileDataID`,`Flags`,`Name1`,`Name2`,`Name3`,`Name4`) VALUES
(1,51482,0,0,'Reins of the Kor\'kron War Wolf','','The Kor\'kron use only the mightiest wolves for their mounts, bedecking them in armor that would break the backs of lesser creatures.',''),
(2,15676,0,0,'Black Qiraji Resonating Crystal','','Although many varieties of Qiraji Battle Tank can still be found in the ruins of Ahn\'Qiraj today, the darkest of the species were only seen on the day the Scarab gong was rung.',''),
(3,39530,0,0,'Tyrael\'s Charger','','A symbol of justice throughout all known realms.',''),
(4,28040,0,0,'Reins of the Black Proto-Drake','','Bred specifically to honor those heroes who showed exceptional resilience and fortitude facing the dangers in Northrend.',''),
(5,31958,0,0,'Celestial Steed','','A beacon of hope; a guiding light in the darkness.',''),
(6,38260,0,0,'Winged Guardian','','Unearthed recently in an ancient tomb, this mighty winged lion may have once served one of the ancient Tol\'vir princes.',''),
(7,40029,0,0,'Heart of the Aspects','','You are Azeroth\'s true guardians and the future of this world is in your hands, for the dawning of the age of mortals has begun. - Alexstrasza',''),
(8,46729,0,0,'Swift Windsteed','','One of Pandaria\'s most elusive creatures, said to bring good fortune to its rider.',''),
(9,48020,0,0,'Armored Bloodwing','','This monstrous, flesh-eating bat is the undisputed ruler of the night skies.',''),
(10,48714,0,0,'Enchanted Fey Dragon','','This majestic creature is Brightwing\'s older brother. He affirms that she was, in fact, adopted.','');

INSERT INTO `battlepay_product_group`(`GroupID`,`Name`,`IconFileDataID`,`DisplayType`,`Ordering`) VALUES
(1,'Mount',939379,0,1),
(2,'Pets',939380,0,2),
(3,'Services',939382,0,3),
(4,'Golds',940857,0,4),
(5,'Professions',940858,0,5),
(7,'Armor Sets',940856,0,7),
(8,'Weapons',940868,0,8),
(9,'Toys',940867,0,9);

INSERT INTO `battlepay_product_items`(`ID`,`ProductID`,`ItemID`,`Quantity`,`DisplayID`,`PetResult`) VALUES
(1,1,104246,1,0,0),
(2,2,21176,1,0,0),
(3,3,76755,1,0,0),
(4,4,44164,1,0,0),
(5,5,54811,1,0,0),
(6,6,69846,1,0,0),
(7,7,78924,1,0,0),
(8,8,92724,1,0,0),
(9,9,95341,1,0,0),
(10,10,97989,1,0,0);

INSERT INTO `battlepay_shop_entry`(`EntryID`,`GroupID`,`ProductID`,`Ordering`,`Flags`,`BannerType`,`DisplayInfoID`) VALUES
(1,1,1,1,0,0,0),
(2,1,2,2,0,0,0),
(3,1,3,3,0,0,0),
(4,1,4,4,0,0,0),
(5,1,5,5,0,0,0),
(6,1,6,6,0,0,0),
(7,1,7,7,0,0,0),
(8,1,8,8,0,0,0),
(9,1,9,9,0,0,0),
(10,1,10,10,0,0,0);

