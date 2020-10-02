/* DemonHunter - Zone - Mardum */
UPDATE gameobject_template SET ScriptName="go_mardum_illidari_banner" WHERE entry=243967; /* THIS IS ILLIDARI BANNER!!!    not on VoW! */
UPDATE gameobject_template SET ScriptName="go_mardum_the_keystone" WHERE entry=245728;    /* THIS IS SARGERITE KEYSTONE!!! not on VoW! */




/* DemonHunter - Zone - Vault Of The Wardens */
DELETE FROM quest_objectives WHERE id IN (286136, 286137, 280526, 286143);

DELETE FROM creature WHERE guid IN (20542658, 20542674, 20542909, 20542908);

DELETE FROM creature WHERE id=103660; /* khadgar unused npc */

DELETE FROM gameobject WHERE guid IN (20373084, 20373129, 20373134);

UPDATE creature_template SET ScriptName="npc_q38672" WHERE entry=103658;
UPDATE creature_template SET ScriptName="npc_q38672" WHERE entry=103655;
UPDATE creature_template SET ScriptName="" WHERE entry=92986;
UPDATE creature_template SET ScriptName="" WHERE entry=96665;
UPDATE creature_template SET ScriptName="npc_96682" WHERE entry=96682;
UPDATE creature_template SET ScriptName="" WHERE entry=96681;
UPDATE creature_template SET ScriptName="npc_92718" WHERE entry=92718;
UPDATE creature_template SET ScriptName="" WHERE entry=92984;
UPDATE creature_template SET ScriptName="npc_q38723" WHERE entry=92990;
UPDATE creature_template SET ScriptName="" WHERE entry=92985;
UPDATE creature_template SET ScriptName="npc_q38723" WHERE entry=97632;
UPDATE creature_template SET ScriptName="npc_97978" WHERE entry=97978;
UPDATE creature_template SET ScriptName="" WHERE entry=96672;
UPDATE creature_template SET ScriptName="npc_q38689" WHERE entry=92782;
UPDATE creature_template SET ScriptName="npc_q38689" WHERE entry=92776;
UPDATE creature_template SET ScriptName="npc_99443" WHERE entry=99443;
UPDATE creature_template SET ScriptName="npc_q39685" WHERE entry=99709;
UPDATE creature_template SET ScriptName="npc_q39685" WHERE entry=99731;
UPDATE creature_template SET ScriptName="npc_q39685" WHERE entry=99732;
UPDATE creature_template SET ScriptName="npc_96675" WHERE entry=96675;
UPDATE creature_template SET ScriptName="npc_97644" WHERE entry=97644;
UPDATE creature_template SET ScriptName="npc_96783" WHERE entry=96783;
UPDATE creature_template SET ScriptName="" WHERE entry=102391;
UPDATE creature_template SET ScriptName="" WHERE entry=96666;

/* glazer (donot use the instance VoW script on this!) */
UPDATE creature_template SET ScriptName="" WHERE entry=96680;

/* ash'golm (donot use the instance VoW script on this!) */
UPDATE creature_template SET ScriptName="" WHERE entry=96681;


UPDATE gameobject_template SET ScriptName="go_244923" WHERE entry=244923;
UPDATE gameobject_template SET ScriptName="" WHERE entry=244644;
UPDATE gameobject_template SET ScriptName="go_245467" WHERE entry=245467;

UPDATE gameobject_template SET ScriptName="go_244588" WHERE entry=244588;
UPDATE gameobject_template SET `type`=10   WHERE entry=244588;
UPDATE gameobject_template SET Data1=38690 WHERE entry=244588;
UPDATE gameobject_template SET Data20=0    WHERE entry=244588;

UPDATE quest_template_addon SET ScriptName="" WHERE ID=38689;
UPDATE quest_template_addon SET ScriptName="" WHERE ID=38672;
UPDATE quest_template_addon SET ScriptName="" WHERE ID=39685;

UPDATE spell_script_names SET ScriptName="" WHERE spell_id=187864;
UPDATE spell_script_names SET ScriptName="spell_199760" WHERE spell_id=199760;

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
('244925','0','29296','Ward of the Hunters','','','','1.9','1','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','go_244925','22423'),
('399999','0','29296','Ward of the Hunters Anim','','','','1.9','1','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','0'),
('244455','10','32022','Pool of Judgment','questinteract','','','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','go_244455','22423'),
('244582','10','26921','Demon Hunter Weapon Rack','','','','1.8','0','38669','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','go_244582','22423');

UPDATE quest_template SET RewardNextQuest=0 WHERE id IN (38668, 38669, 38672, 38689, 38690, 38723, 40253, 39682, 39683, 40254, 39684, 39685, 39686, 39687, 40373, 39688, 40255, 39694, 40256, 39689);
UPDATE quest_template SET RewardItem1=128956 WHERE id=38669;
UPDATE quest_template SET RewardAmount1=1    WHERE id=38669;
UPDATE quest_template SET RewardItem2=132243 WHERE id=38669;
UPDATE quest_template SET RewardAmount2=1    WHERE id=38669;

REPLACE INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
('280322','38669','1','0','1','128956','1','0','0','0','Off-hand glaive equipped','22522'),
('278272','38669','1','0','0','132243','1','0','0','0','Main-hand glaive equipped','22522');

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES('92718','38668');
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES('92718','38669');

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES
('380200848','244925','1468','0','0','0','0','0','0','-1','4325.98','-578.061','-281.808','1.62673','-0','-0','-0.726604','-0.687056','0','255','1','0','','0'),
('20373129','245467','1468','7814','7871','0','0','0','0','-1','4217.04','-297.773','-281.18','0','0','0','0','1','300','255','1','0','','0');

REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `ScalingFactionGroup`, `MaxScalingLevel`, `QuestPackageID`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardDisplaySpell1`, `RewardDisplaySpell2`, `RewardDisplaySpell3`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitTurnIn`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionCapIn1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionCapIn2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionCapIn3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionCapIn4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `RewardFactionCapIn5`, `RewardFactionFlags`, `RewardCurrencyID1`, `RewardCurrencyQty1`, `RewardCurrencyID2`, `RewardCurrencyQty2`, `RewardCurrencyID3`, `RewardCurrencyQty3`, `RewardCurrencyID4`, `RewardCurrencyQty4`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `QuestCompletionLog`, `VerifiedBuild`) VALUES
('39689','2','100','0','255','0','98','-407','0','0','0','1','2.5','0','0','1','0','0','0','0','0','0','0','0','0','1','0','35651848','33554432','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','7','0','0','0','7','0','0','0','7','0','0','0','7','0','0','0','7','0','0','0','0','0','0','0','0','0','890','878','0','0','6130900294268439629','0','5','0','0','Illidari, We Are Leaving','Speak to Archmage Khadgar.','The Legion has begun its invasion of our world. Across Kalimdor and the Eastern Kingdoms, brave defenders are answering the call to arms.\n \nHowever, they will ultimately fail without your aid. You Illidari were uniquely trained as weapons against the Legion.\n\nI only ask that you come with me. Further instructions await you on the other side.','','','','','','','28153'),
('39690','2','100','0','255','0','98','-407','0','0','0','1','2.5','0','0','1','0','0','0','0','0','0','0','0','0','1','0','35651848','33554432','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','7','0','0','0','7','0','0','0','7','0','0','0','7','0','0','0','7','0','0','0','0','0','0','0','0','0','890','878','0','0','12261800583900083122','0','5','0','0','Illidari, We Are Leaving','Speak to Archmage Khadgar.','The Legion has begun its invasion of our world. Across Kalimdor and the Eastern Kingdoms, brave defenders are answering the call to arms.\n \nHowever, they will ultimately fail without your aid. You Illidari were uniquely trained as weapons against the Legion.\n\nI only ask that you come with me. Further instructions await you on the other side.','','','','','','','28153');

REPLACE  INTO `quest_template_addon`(`ID`,`MaxLevel`,`AllowableClasses`,`SourceSpellID`,`PrevQuestID`,`NextQuestID`,`ExclusiveGroup`,`RewardMailTemplateID`,`RewardMailDelay`,`RequiredSkillID`,`RequiredSkillPoints`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`ProvidedItemCount`,`SpecialFlags`,`ScriptName`) VALUES
(38668,0,0,0,0,38669,0,0,0,0,1,0,0,0,0,0,0,''),
(38669,0,0,0,38668,38672,0,0,0,0,1,0,0,0,0,0,0,''),
(38672,0,0,0,38669,38689,0,0,0,0,1,0,0,0,0,0,0,''),
(38689,0,0,0,38672,38690,0,0,0,0,1,0,0,0,0,0,0,''),
(38690,0,0,0,38689,38723,0,0,0,0,1,0,0,0,0,0,0,''),
(38723,0,0,0,38690,39682,0,0,0,0,1,0,0,0,0,0,0,''),
(39682,0,0,0,38723,39683,0,0,0,0,1,0,0,0,0,0,0,''),
(39683,0,0,0,39682,39684,0,0,0,0,1,0,0,0,0,0,0,''),
(39684,0,0,0,39683,39685,0,0,0,0,1,0,0,0,0,0,0,''),
(39685,0,0,0,39684,39686,0,0,0,0,1,0,0,0,0,0,0,''),
(39686,0,0,0,39685,40373,0,0,0,0,1,0,0,0,0,0,0,''),
(39688,0,0,0,40373,0,0,0,0,0,1,0,0,0,0,0,0,''),
(39689,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,''),
(39694,0,0,0,40373,0,0,0,0,0,1,0,0,0,0,0,0,''),
(40253,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,''), /* make this not available on gossip */
(40254,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,''), /* make this not available on gossip */
(40255,0,0,0,40373,0,0,0,0,0,1,0,0,0,0,0,0,''),
(40256,0,0,0,40373,0,0,0,0,0,1,0,0,0,0,0,0,''),
(40373,0,0,0,39686,0,0,0,0,0,1,0,0,0,0,0,0,'');

DELETE FROM creature_queststarter WHERE quest=40253; /* make this not available on gossip */
DELETE FROM creature_queststarter WHERE quest=40254; /* make this not available on gossip */


/* close doors */
UPDATE gameobject SET `state`=1 WHERE guid IN (20373104, 20373105, 20373113, 20373077, 20373099, 20373075, 20373096, 20373073, 20373074, 20373097);

/* allow to use door */
DELETE FROM `gameobject_template_addon` WHERE `entry` IN (252405, 245434, 245208, 244353, 245913, 244352, 245914, 244354, 244355, 245915);

/* block the use of door */
REPLACE INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `mingold`, `maxgold`, `WorldEffectID`, `AIAnimKitID`) VALUES
('244925','114','0','0','0','0','0'),
('245467','114','0','0','0','0','0');


/* vampiric felbat */
REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
('99443','1','4436.34','-285.14','-245.952','0',NULL),
('99443','2','4436.78','-284.24','-245.952','0',NULL),
('99443','3','4446.45','-295.896','-235.339','0',NULL),
('99443','4','4456.69','-311.004','-207.667','0',NULL),
('99443','5','4460.65','-321.54','-187.735','0',NULL),
('99443','6','4454.37','-328.542','-165.568','0',NULL),
('99443','7','4447.92','-327.422','-153.965','0',NULL),
('99443','8','4448.48','-319.545','-144.887','0',NULL),
('99443','9','4454.76','-318.391','-127.121','0',NULL),
('99443','10','4455.59','-325.278','-107.721','0',NULL),
('99443','11','4449.19','-328.938','-85.2078','0',NULL),
('99443','12','4444.79','-325.208','-66.8808','0',NULL),
('99443','13','4446.59','-317.991','-27.7739','0',NULL),
('99443','14','4451.85','-316.278','-6.79571','0',NULL),
('99443','15','4454.85','-320.903','38.564','0',NULL),
('99443','16','4454.28','-324.109','68.72','0',NULL),
('99443','17','4451.35','-326.188','91.9784','0',NULL),
('99443','18','4451.14','-327.823','136.227','0',NULL),
('99443','19','4451.24','-351.073','129.361','0',NULL),
('99443','20','4451.24','-351.073','129.361','0',NULL);


