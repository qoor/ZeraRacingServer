CREATE DATABASE IF NOT EXISTS `zera` /*!40100 DEFAULT CHARACTER SET utf8 */;

CREATE TABLE `account` (
  `P_id` int(11) NOT NULL AUTO_INCREMENT,
  `P_Name` varchar(24) NOT NULL,
  `P_Level` int(11) DEFAULT '1',
  `P_Exp` int(11) DEFAULT NULL,
  `P_Money` int(11) DEFAULT NULL,
  `P_ZeraMember` int(11) DEFAULT NULL,
  `P_NickName` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`P_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `playeritem` (
  `PI_id` int(11) NOT NULL AUTO_INCREMENT,
  `PI_Player` int(11) NOT NULL,
  `PI_ItemID` int(11) DEFAULT NULL,
  `PI_Use` int(11) DEFAULT NULL,
  `PI_Value` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`PI_id`),
  KEY `PI_Player` (`PI_Player`),
  CONSTRAINT `playeritem_PI_Player` FOREIGN KEY (`PI_Player`) REFERENCES `account` (`P_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ranking` (
  `R_id` int(11) NOT NULL AUTO_INCREMENT,
  `R_MapID` int(11) NOT NULL,
  `R_Rank` VARCHAR(24) NOT NULL,
  `R_Player` int(11) NOT NULL,
  `R_Time` int(11) NOT NULL,
  `R_Date` char(10) NOT NULL,
  PRIMARY KEY (`R_id`),
  KEY `R_Player` (`R_Player`),
  CONSTRAINT `ranking_R_Player` FOREIGN KEY (`R_Player`) REFERENCES `account` (`P_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
