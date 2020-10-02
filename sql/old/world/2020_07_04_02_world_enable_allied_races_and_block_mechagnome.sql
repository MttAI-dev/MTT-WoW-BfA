/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.6.47 : Database - bfa_world
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `race_unlock_requirement` */

DROP TABLE IF EXISTS `race_unlock_requirement`;

CREATE TABLE `race_unlock_requirement` (
  `raceID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expansion` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `achievementId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`raceID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `race_unlock_requirement` */

insert  into `race_unlock_requirement`(`raceID`,`expansion`,`achievementId`) values 
(1,0,0),
(2,0,0),
(3,0,0),
(4,0,0),
(5,0,0),
(6,0,0),
(7,0,0),
(8,0,0),
(9,0,0),
(10,0,0),
(11,0,0),
(22,0,0),
(24,0,0),
(25,0,0),
(26,0,0),
(27,0,0),
(28,0,0),
(29,0,0),
(30,0,0),
(36,0,0),
(34,0,0),
(31,0,0),
(32,0,0),
(37,10,0),
(35,0,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
