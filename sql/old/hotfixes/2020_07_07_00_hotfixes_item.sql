SET @ITEMGUID = 789001;
REPLACE INTO `item_sparse` (`ID`, `AllowableRace`, `Description`,`Display`, `Stackable`, `Flags1`, `AllowableClass`, `Bonding`, `RequiredLevel`, `OverallQualityID`) VALUES 
('789001', '-1', '|cff1eff00Level Boost character include :\r\n- ilevel 164 PvE gear.\r\n- ilevel 164 trinkets and cloak\r\n- 20 000 golds\r\n- Instant level 110.\r\n- One mount PvP only: Wrathful Gladiators Frost Wyrm.\r\n- 4 Bags 34 Slot.', 'Level Boost', '1', '134217760', '-1', '1', '-1', '6'); 
REPLACE INTO hotfix_data (`Id`, `TableHash`, `RecordId`, `Deleted`) VALUES 
(@ITEMGUID, 2442913102, @ITEMGUID, 0),
(@ITEMGUID, 1344507586, @ITEMGUID, 0),
(@ITEMGUID, 1109793673, @ITEMGUID, 0),
(@ITEMGUID, 3834752085, @ITEMGUID, 0),
(@ITEMGUID, 1073915313, @ITEMGUID, 0);
REPLACE INTO item_appearance (`ID`, `ItemDisplayInfoID`, `DefaultIconFileDataID`, `UIOrder`, `DisplayType`, `VerifiedBuild`) VALUES 
(@ITEMGUID, 0, 0, 0, 0, 0);
REPLACE INTO item_modified_appearance (`ItemID`, `ItemAppearanceID`, `ItemAppearanceModifierID`, `OrderIndex`, `TransmogSourceTypeEnum`, `ID`, `VerifiedBuild`) VALUES 
(@ITEMGUID, 0, 0, 0, 0, @ITEMGUID, 0);
REPLACE INTO item (`ID`, `IconFileDataID`, `ClassID`, `SubClassID`, `SoundOverrideSubclassID`, `Material`, `InventoryType`, `SheatheType`, `ItemGroupSoundsID`, `VerifiedBuild`) VALUES 
(@ITEMGUID, 1120721, 0, 0, 0, 0, 0, 0, 0, 0); 
REPLACE INTO `item_effect` (`ID`, `SpellID`, `CoolDownMSec`, `CategoryCoolDownMSec`, `Charges`, `SpellCategoryID`, `ChrSpecializationID`, `LegacySlotIndex`, `TriggerType`, `ParentItemID`, `VerifiedBuild`) VALUES
(@ITEMGUID,18282,0,0,0,0,0,0,0,@ITEMGUID,0);
