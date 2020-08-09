ALTER TABLE `creature_default_trainer` DROP PRIMARY KEY;
RENAME TABLE `creature_default_trainer` TO `creature_trainer`;
ALTER TABLE `creature_trainer`
  ADD `MenuId` int(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `TrainerId`,
  ADD `OptionIndex` int(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `MenuId`,
  ADD PRIMARY KEY(`CreatureId`,`MenuId`,`OptionIndex`);

DROP TABLE `gossip_menu_option_trainer`;

INSERT INTO `creature_trainer` (`CreatureId`,`TrainerId`,`MenuId`,`OptionIndex`) VALUES
(514,27,2744,0),
(812,133,7691,0),
(1103,163,4261,0),
(1218,133,7691,0),
(1241,27,2741,0),
(1292,196,648,0),
(1317,62,4161,0),
(1346,163,4353,0),
(1355,136,5853,0),
(1430,136,5853,0),
(1470,122,4115,0),
(1676,407,4145,0),
(1680,10,5665,0),
(1681,91,4361,0),
(1683,10,5665,0),
(1699,136,5853,0),
(1700,10,5665,0),
(1701,91,7690,0),
(1702,407,4135,0),
(2326,160,5855,0),
(2327,160,657,0),
(2329,160,5855,0),
(2367,10,5665,0),
(2485,148,4822,0),
(2489,129,4823,0),
(2627,163,4348,0),
(2834,10,5665,0),
(2836,27,2784,0),
(2837,122,4127,0),
(3001,91,7690,0),
(3013,133,7691,0),
(3028,10,5665,0),
(3087,136,5853,0),
(3136,27,2781,0),
(3137,91,7690,0),
(3179,10,5665,0),
(3181,160,5855,0),
(3357,91,7690,0),
(3363,163,4347,0),
(3404,133,7691,0),
(3523,163,4267,0),
(3607,10,5665,0),
(3967,56,4211,0),
(4156,10,5665,0),
(4210,136,5853,0),
(4211,160,5855,0),
(4900,122,4122,0),
(5157,62,4160,0),
(5161,10,4742,0),
(5174,407,4150,0),
(5177,122,4123,0),
(5388,29,12848,0),
(5392,91,7690,0),
(5482,136,646,0),
(5493,10,645,0),
(5499,122,4201,0),
(5511,27,581,0),
(5513,91,660,0),
(5518,407,4146,0),
(5564,56,4203,0),
(5566,133,643,0),
(5690,10,5665,0),
(5941,10,5665,0),
(6094,160,5855,0),
(7948,122,4133,0),
(7949,62,4164,0),
(8146,133,7691,0),
(8736,407,4152,0),
(10296,4,12045,7),
(10296,10,12046,2),
(10296,37,12045,1),
(10296,105,12045,0),
(10296,119,12045,6),
(10296,125,12045,2),
(10296,126,12045,3),
(10296,136,12046,0),
(10296,157,12045,10),
(10296,160,12046,1),
(10296,383,12045,5),
(10296,424,12045,4),
(10296,425,12045,8),
(10296,426,12045,9),
(10299,4,12045,7),
(10299,10,12046,2),
(10299,37,12045,1),
(10299,105,12045,0),
(10299,119,12045,6),
(10299,125,12045,2),
(10299,126,12045,3),
(10299,136,12046,0),
(10299,157,12045,10),
(10299,160,12046,1),
(10299,383,12045,5),
(10299,424,12045,4),
(10299,425,12045,8),
(10299,426,12045,9),
(11037,407,4138,0),
(11052,163,4355,0),
(11072,62,4169,0),
(11557,163,3626,0),
(12939,160,5382,0),
(16588,122,7810,0),
(16644,133,7691,0),
(16662,160,5855,0),
(16663,91,7690,0),
(16692,196,7842,0),
(16719,136,5853,0),
(16731,160,5855,0),
(16742,62,10365,0),
(16752,91,7690,0),
(16763,196,7842,0),
(16774,10,5665,0),
(16780,10,5665,0),
(16823,27,7826,0),
(17101,10,7361,0),
(17214,160,7380,0),
(17215,105,7384,0),
(17222,407,7383,0),
(17245,27,7389,0),
(17246,136,7388,0),
(17424,160,7455,0),
(17434,133,7459,0),
(17441,196,7429,0),
(17442,56,7430,0),
(17487,163,8519,0),
(17488,91,7690,0),
(17634,407,7512,0),
(18748,133,7691,0),
(18749,163,7817,0),
(18751,29,8646,0),
(18754,56,7816,0),
(18755,196,7842,0),
(18772,62,7818,0),
(18773,62,7818,0),
(18774,62,7818,0),
(18776,133,7691,0),
(18777,196,7842,0),
(18779,91,7690,0),
(18802,62,7818,0),
(18804,91,7833,0),
(18911,10,10437,0),
(18987,62,7818,0),
(18988,62,7818,0),
(18993,136,7879,0),
(19052,122,8540,0),
(19063,29,7815,0),
(19180,62,7818,0),
(19184,160,8522,0),
(19185,136,8460,0),
(19186,136,8785,0),
(19187,56,7816,0),
(19252,62,7818,0),
(19340,149,8433,0),
(19539,29,8646,0),
(19540,62,7818,0),
(19576,62,7818,0),
(20511,386,8622,0),
(20791,149,8268,0),
(21209,27,8254,1),
(22477,160,8522,0),
(23734,160,8802,0),
(23896,10,8826,0),
(25580,10,12641,0),
(26905,136,9985,0),
(26914,163,10116,0),
(26915,29,9894,0),
(26916,63,9879,0),
(26959,63,9879,0),
(26977,63,9879,0),
(26989,136,9986,0),
(26995,63,9879,0),
(26997,29,9892,0),
(27001,163,10114,0),
(27703,144,9581,0),
(28701,29,9873,0),
(28703,122,10627,0),
(28703,122,10628,1),
(28705,136,9772,0),
(28742,10,9833,0),
(28746,386,9750,0),
(29156,114,9777,0),
(31238,137,10723,0),
(31247,386,10210,0),
(33630,122,10359,0),
(33631,27,10362,0),
(33633,62,10365,0),
(33634,407,10363,0),
(33635,56,10361,0),
(33636,163,10364,0),
(33637,29,8646,0),
(33638,63,9879,0),
(33639,133,10350,0),
(33640,91,10351,0),
(33674,122,10359,0),
(33675,27,10362,0),
(33676,62,10365,0),
(33677,407,10363,0),
(33678,133,10350,0),
(33679,63,9879,0),
(33680,29,8646,0),
(33681,56,10361,0),
(33682,91,10351,0),
(33684,163,10364,0),
(36615,877,10826,0),
(39718,373,11821,0),
(42288,136,11615,0),
(43428,163,8519,0),
(44238,373,11821,0),
(44582,29,11861,0),
(44781,37,8521,0),
(45286,48,12197,11),
(45286,51,12180,2),
(45286,51,12193,2),
(45286,59,12191,11),
(45286,80,12192,11),
(45286,102,12195,11),
(45286,103,12198,11),
(45286,117,12180,10),
(45286,117,12199,10),
(45286,117,12199,11),
(45286,387,12196,11),
(45286,388,12188,11),
(45286,389,12189,11),
(45286,390,12190,11),
(45563,4,12045,7),
(45563,10,12046,2),
(45563,37,12045,1),
(45563,105,12045,0),
(45563,119,12045,6),
(45563,125,12045,2),
(45563,126,12045,3),
(45563,136,12046,0),
(45563,157,12045,10),
(45563,160,12046,1),
(45563,383,12045,5),
(45563,424,12045,4),
(45563,425,12045,8),
(45563,426,12045,9),
(46357,91,7690,0),
(46741,133,7691,0),
(47384,48,12197,11),
(47384,51,12180,2),
(47384,51,12193,2),
(47384,59,12191,11),
(47384,80,12192,11),
(47384,102,12195,11),
(47384,103,12198,11),
(47384,117,12180,10),
(47384,117,12199,10),
(47384,117,12199,11),
(47384,387,12196,11),
(47384,388,12188,11),
(47384,389,12189,11),
(47384,390,12190,11),
(47396,48,12197,11),
(47396,51,12180,2),
(47396,51,12193,2),
(47396,59,12191,11),
(47396,80,12192,11),
(47396,102,12195,11),
(47396,103,12198,11),
(47396,117,12180,10),
(47396,117,12199,10),
(47396,117,12199,11),
(47396,387,12196,11),
(47396,388,12188,11),
(47396,389,12189,11),
(47396,390,12190,11),
(47400,48,12197,11),
(47400,51,12180,2),
(47400,51,12193,2),
(47400,59,12191,11),
(47400,80,12192,11),
(47400,102,12195,11),
(47400,103,12198,11),
(47400,117,12180,10),
(47400,117,12199,10),
(47400,117,12199,11),
(47400,387,12196,11),
(47400,388,12188,11),
(47400,389,12189,11),
(47400,390,12190,11),
(47418,48,12197,11),
(47418,51,12180,2),
(47418,51,12193,2),
(47418,59,12191,11),
(47418,80,12192,11),
(47418,102,12195,11),
(47418,103,12198,11),
(47418,117,12180,10),
(47418,117,12199,10),
(47418,117,12199,11),
(47418,387,12196,11),
(47418,388,12188,11),
(47418,389,12189,11),
(47418,390,12190,11),
(47419,48,12197,11),
(47419,51,12180,2),
(47419,51,12193,2),
(47419,59,12191,11),
(47419,80,12192,11),
(47419,102,12195,11),
(47419,103,12198,11),
(47419,117,12180,10),
(47419,117,12199,10),
(47419,117,12199,11),
(47419,387,12196,11),
(47419,388,12188,11),
(47419,389,12189,11),
(47419,390,12190,11),
(47420,48,12197,11),
(47420,51,12180,2),
(47420,51,12193,2),
(47420,59,12191,11),
(47420,80,12192,11),
(47420,102,12195,11),
(47420,103,12198,11),
(47420,117,12180,10),
(47420,117,12199,10),
(47420,117,12199,11),
(47420,387,12196,11),
(47420,388,12188,11),
(47420,389,12189,11),
(47420,390,12190,11),
(47421,48,12197,11),
(47421,51,12180,2),
(47421,51,12193,2),
(47421,59,12191,11),
(47421,80,12192,11),
(47421,102,12195,11),
(47421,103,12198,11),
(47421,117,12180,10),
(47421,117,12199,10),
(47421,117,12199,11),
(47421,387,12196,11),
(47421,388,12188,11),
(47421,389,12189,11),
(47421,390,12190,11),
(47431,48,12197,11),
(47431,51,12180,2),
(47431,51,12193,2),
(47431,59,12191,11),
(47431,80,12192,11),
(47431,102,12195,11),
(47431,103,12198,11),
(47431,117,12180,10),
(47431,117,12199,10),
(47431,117,12199,11),
(47431,387,12196,11),
(47431,388,12188,11),
(47431,389,12189,11),
(47431,390,12190,11),
(47569,373,11821,0),
(47572,373,11821,0),
(47579,373,11821,0),
(48619,48,12197,11),
(48619,51,12180,2),
(48619,51,12193,2),
(48619,59,12191,11),
(48619,80,12192,11),
(48619,102,12195,11),
(48619,103,12198,11),
(48619,117,12180,10),
(48619,117,12199,10),
(48619,117,12199,11),
(48619,387,12196,11),
(48619,388,12188,11),
(48619,389,12189,11),
(48619,390,12190,11),
(49789,136,7879,0),
(50247,48,12197,11),
(50247,51,12180,2),
(50247,51,12193,2),
(50247,59,12191,11),
(50247,80,12192,11),
(50247,102,12195,11),
(50247,103,12198,11),
(50247,117,12180,10),
(50247,117,12199,10),
(50247,117,12199,11),
(50247,387,12196,11),
(50247,388,12188,11),
(50247,389,12189,11),
(50247,390,12190,11),
(50567,136,5853,0),
(50570,10,5665,0),
(50574,160,5855,0),
(51997,373,12725,0),
(52640,37,8521,0),
(52642,91,7690,0),
(52645,29,7815,0),
(52657,29,7815,0),
(53410,62,12843,0),
(53421,373,12850,0),
(53436,56,12852,0),
(56068,10,5665,0),
(57620,48,12197,11),
(57620,51,12180,2),
(57620,51,12193,2),
(57620,59,12191,11),
(57620,80,12192,11),
(57620,102,12195,11),
(57620,103,12198,11),
(57620,117,12180,10),
(57620,117,12199,10),
(57620,117,12199,11),
(57620,387,12196,11),
(57620,388,12188,11),
(57620,389,12189,11),
(57620,390,12190,11),
(63080,580,14991,0),
(65043,48,12197,11),
(65043,51,12180,2),
(65043,51,12193,2),
(65043,59,12191,11),
(65043,80,12192,11),
(65043,102,12195,11),
(65043,103,12198,11),
(65043,117,12180,10),
(65043,117,12199,10),
(65043,117,12199,11),
(65043,387,12196,11),
(65043,388,12188,11),
(65043,389,12189,11),
(65043,390,12190,11);