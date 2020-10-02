DROP TABLE IF EXISTS `battlepay_product`;
DROP TABLE IF EXISTS `battlepay_products`;
DROP TABLE IF EXISTS `battlepay_groups`;
DROP TABLE IF EXISTS `battlepay_display_info`;
DROP TABLE IF EXISTS `battlepay_display_info_locales`;
DROP TABLE IF EXISTS `battlepay_display_info_visuals`;
DROP TABLE IF EXISTS `battlepay_product_group`;
DROP TABLE IF EXISTS `battle_pay_product`;
DROP TABLE IF EXISTS `battle_pay_group`;
DROP TABLE IF EXISTS `battle_pay_entry`;
DROP TABLE IF EXISTS `battlepay_shop_entry`;
DROP TABLE IF EXISTS `battlepay_product_visuals`;
DROP TABLE IF EXISTS `battlepay_product_items`;
DROP TABLE IF EXISTS `battlepay_product_item`;
DROP TABLE IF EXISTS `battlepay_product_info`;
DROP TABLE IF EXISTS `battlepay_product_group_locales`;
DROP TABLE IF EXISTS `battlepay_product_display_info`;


/* Create news tables */
CREATE TABLE IF NOT EXISTS `battlepay_display_info` (/*ok*/
  `DisplayInfoId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CreatureDisplayInfoID` int(11) unsigned NOT NULL DEFAULT '0',
  `FileDataID` int(11) unsigned DEFAULT NULL,
  `Flags` int(11) unsigned NOT NULL DEFAULT '0',
  `Name1` varchar(1024) NOT NULL,
  `Name2` varchar(1024) NOT NULL,
  `Name3` varchar(1024) NOT NULL,
  `Name4` varchar(1024) NOT NULL,
  UNIQUE KEY `DisplayInfoId` (`DisplayInfoId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

CREATE TABLE IF NOT EXISTS `battlepay_display_info_locales` (
  `Id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Locale` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Name1` varchar(1024) DEFAULT '',
  `Name2` varchar(1024) DEFAULT '',
  `Name3` varchar(1024) DEFAULT '',
  `Name4` varchar(1024) DEFAULT '',
  PRIMARY KEY (`Id`,`Locale`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

CREATE TABLE IF NOT EXISTS `battlepay_display_info_visuals` (
  `DisplayInfoId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `DisplayId` int(11) unsigned NOT NULL DEFAULT '0',
  `VisualId` int(11) unsigned NOT NULL DEFAULT '0',
  `ProductName` varchar(1024) NOT NULL,
  UNIQUE KEY `DisplayInfoId` (`DisplayInfoId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

CREATE TABLE IF NOT EXISTS `battlepay_product_group` (/*ok*/
  `GroupID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `IconFileDataID` int(11) NOT NULL,
  `DisplayType` tinyint(3) unsigned NOT NULL,
  `Ordering` int(11) NOT NULL,
  PRIMARY KEY (`GroupID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

CREATE TABLE IF NOT EXISTS `battlepay_product_group_locales` (
  `GroupID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Locale` text,
  `Name` text,
  PRIMARY KEY (`GroupID`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

CREATE TABLE IF NOT EXISTS `battlepay_products` (/*ok*/
  `ProductID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NormalPriceFixedPoint` bigint(20) unsigned NOT NULL,
  `CurrentPriceFixedPoint` bigint(20) unsigned NOT NULL,
  `Type` tinyint(3) unsigned NOT NULL,
  `ChoiceType` tinyint(3) unsigned NOT NULL,
  `Flags` int(11) unsigned NOT NULL,
  `DisplayInfoID` int(11) unsigned NOT NULL,
  `ScriptName` text NOT NULL,
  `ClassMask` int(12) unsigned NOT NULL DEFAULT '0',
  `WebsiteType` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`ProductID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

CREATE TABLE IF NOT EXISTS `battlepay_product_items` (/*ok*/
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ProductID` int(11) unsigned NOT NULL,
  `ItemID` int(11) unsigned NOT NULL,
  `Quantity` int(11) unsigned NOT NULL,
  `DisplayID` int(11) DEFAULT NULL,
  `PetResult` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

CREATE TABLE IF NOT EXISTS `battlepay_shop_entry` ( /*ok*/
  `EntryID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) unsigned NOT NULL,
  `ProductID` int(11) unsigned NOT NULL,
  `Ordering` int(11) NOT NULL,
  `Flags` int(11) unsigned NOT NULL DEFAULT '0',
  `BannerType` tinyint(3) unsigned NOT NULL,
  `DisplayInfoID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`EntryID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;




