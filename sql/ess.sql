/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 8.0.16 : Database - ess
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ess` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ess`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` char(16) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `dormuserid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dormuserid` (`dormuserid`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`dormuserid`) REFERENCES `dormuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `account` */

insert  into `account`(`id`,`username`,`pwd`,`dormuserid`) values 
('FD64FC54CFBC11EA962DC85B76DF83AC','3117004979','ljl5869','B96446ADCFBC11EA962DC85B76DF83AC');

/*Table structure for table `dorm` */

DROP TABLE IF EXISTS `dorm`;

CREATE TABLE `dorm` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `adr` int(11) DEFAULT NULL,
  `dormarea` int(11) DEFAULT NULL,
  `roomno` int(11) DEFAULT NULL,
  `membernum` int(11) DEFAULT NULL,
  `epid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `wpid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `eletwaterid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `epid` (`epid`),
  KEY `wpid` (`wpid`),
  KEY `eletwaterid` (`eletwaterid`),
  CONSTRAINT `dorm_ibfk_1` FOREIGN KEY (`epid`) REFERENCES `eletperday` (`id`),
  CONSTRAINT `dorm_ibfk_2` FOREIGN KEY (`wpid`) REFERENCES `waterperday` (`id`),
  CONSTRAINT `dorm_ibfk_3` FOREIGN KEY (`eletwaterid`) REFERENCES `eletwater` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `dorm` */

insert  into `dorm`(`id`,`adr`,`dormarea`,`roomno`,`membernum`,`epid`,`wpid`,`eletwaterid`) values 
('507991BBCFBC11EA962DC85B76DF83AC',1,1,639,4,'142B3297CFB811EA962DC85B76DF83AC','51B9BBF1CFB811EA962DC85B76DF83AC','F2528B55CFBA11EA962DC85B76DF83AC');

/*Table structure for table `dormuser` */

DROP TABLE IF EXISTS `dormuser`;

CREATE TABLE `dormuser` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `uno` char(10) NOT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `usex` int(11) DEFAULT NULL,
  `uphone` varchar(20) DEFAULT NULL,
  `dormid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `userstatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uno` (`uno`),
  KEY `dormid` (`dormid`),
  CONSTRAINT `dormuser_ibfk_1` FOREIGN KEY (`dormid`) REFERENCES `dorm` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `dormuser` */

insert  into `dormuser`(`id`,`uno`,`uname`,`usex`,`uphone`,`dormid`,`userstatus`) values 
('B96446ADCFBC11EA962DC85B76DF83AC','3117004979','李嘉立',0,'13751844792','507991BBCFBC11EA962DC85B76DF83AC',0);

/*Table structure for table `eletperday` */

DROP TABLE IF EXISTS `eletperday`;

CREATE TABLE `eletperday` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `eletday` date DEFAULT NULL,
  `eletuse` double DEFAULT NULL,
  `eletfee` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `eletperday` */

insert  into `eletperday`(`id`,`eletday`,`eletuse`,`eletfee`) values 
('142B3297CFB811EA962DC85B76DF83AC','2019-12-31',2.82,1.82);

/*Table structure for table `eletwater` */

DROP TABLE IF EXISTS `eletwater`;

CREATE TABLE `eletwater` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `preeletbalance` double DEFAULT NULL,
  `eletsupply` double DEFAULT NULL,
  `eletbalance` double DEFAULT NULL,
  `eletstatus` int(11) DEFAULT NULL,
  `prewaterbalance` double DEFAULT NULL,
  `watersupply` double DEFAULT NULL,
  `waterbalance` double DEFAULT NULL,
  `waterstatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `eletwater` */

insert  into `eletwater`(`id`,`preeletbalance`,`eletsupply`,`eletbalance`,`eletstatus`,`prewaterbalance`,`watersupply`,`waterbalance`,`waterstatus`) values 
('F2528B55CFBA11EA962DC85B76DF83AC',-742.17,20.72,-721.45,0,-123.12,15.24,-107.88,0);

/*Table structure for table `eletwater_payment` */

DROP TABLE IF EXISTS `eletwater_payment`;

CREATE TABLE `eletwater_payment` (
  `eletwaterid` varchar(32) NOT NULL,
  `paymentid` varchar(32) NOT NULL,
  PRIMARY KEY (`eletwaterid`,`paymentid`),
  KEY `paymentid` (`paymentid`),
  CONSTRAINT `eletwater_payment_ibfk_1` FOREIGN KEY (`eletwaterid`) REFERENCES `eletwater` (`id`),
  CONSTRAINT `eletwater_payment_ibfk_2` FOREIGN KEY (`paymentid`) REFERENCES `payment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `eletwater_payment` */

insert  into `eletwater_payment`(`eletwaterid`,`paymentid`) values 
('F2528B55CFBA11EA962DC85B76DF83AC','064500F5CFB911EA962DC85B76DF83AC');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `paytype` int(11) DEFAULT NULL,
  `tradetype` int(11) DEFAULT NULL,
  `paymount` double DEFAULT NULL,
  `tradetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `payment` */

insert  into `payment`(`id`,`paytype`,`tradetype`,`paymount`,`tradetime`) values 
('064500F5CFB911EA962DC85B76DF83AC',1,0,100,'2019-12-31 11:39:52');

/*Table structure for table `permission` */

DROP TABLE IF EXISTS `permission`;

CREATE TABLE `permission` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `permissionname` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `permission` */

/*Table structure for table `syslog` */

DROP TABLE IF EXISTS `syslog`;

CREATE TABLE `syslog` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `visittime` datetime DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `excutiontime` mediumtext,
  `method` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `syslog` */

/*Table structure for table `userrole` */

DROP TABLE IF EXISTS `userrole`;

CREATE TABLE `userrole` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rolename` varchar(255) DEFAULT NULL,
  `roledesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `userrole` */

/*Table structure for table `userrole_account` */

DROP TABLE IF EXISTS `userrole_account`;

CREATE TABLE `userrole_account` (
  `accountid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userroleid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`accountid`,`userroleid`),
  KEY `userroleid` (`userroleid`),
  CONSTRAINT `userrole_account_ibfk_1` FOREIGN KEY (`accountid`) REFERENCES `account` (`id`),
  CONSTRAINT `userrole_account_ibfk_2` FOREIGN KEY (`userroleid`) REFERENCES `userrole` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `userrole_account` */

/*Table structure for table `userrole_permission` */

DROP TABLE IF EXISTS `userrole_permission`;

CREATE TABLE `userrole_permission` (
  `userroleid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `permissionid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`userroleid`,`permissionid`),
  KEY `permissionid` (`permissionid`),
  CONSTRAINT `userrole_permission_ibfk_1` FOREIGN KEY (`userroleid`) REFERENCES `userrole` (`id`),
  CONSTRAINT `userrole_permission_ibfk_2` FOREIGN KEY (`permissionid`) REFERENCES `permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `userrole_permission` */

/*Table structure for table `waterperday` */

DROP TABLE IF EXISTS `waterperday`;

CREATE TABLE `waterperday` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `waterday` date DEFAULT NULL,
  `wateruse` double DEFAULT NULL,
  `waterfee` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `waterperday` */

insert  into `waterperday`(`id`,`waterday`,`wateruse`,`waterfee`) values 
('51B9BBF1CFB811EA962DC85B76DF83AC','2019-12-31',1.2,0.85);

/* Trigger structure for table `account` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `accountid_trigger` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `accountid_trigger` BEFORE INSERT ON `account` FOR EACH ROW BEGIN
		SET new.id=upper(REPLACE(UUID(),'-','')); -- 触发器执行的逻辑
    END */$$


DELIMITER ;

/* Trigger structure for table `dorm` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `dormid_trigger` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `dormid_trigger` BEFORE INSERT ON `dorm` FOR EACH ROW BEGIN
		SET new.id=upper(REPLACE(UUID(),'-','')); -- 触发器执行的逻辑
    END */$$


DELIMITER ;

/* Trigger structure for table `dormuser` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `dormuserid_trigger` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `dormuserid_trigger` BEFORE INSERT ON `dormuser` FOR EACH ROW BEGIN
		SET new.id=upper(REPLACE(UUID(),'-','')); -- 触发器执行的逻辑
    END */$$


DELIMITER ;

/* Trigger structure for table `eletperday` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `eletperdayid_trigger` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `eletperdayid_trigger` BEFORE INSERT ON `eletperday` FOR EACH ROW BEGIN
		SET new.id=upper(REPLACE(UUID(),'-','')); -- 触发器执行的逻辑
    END */$$


DELIMITER ;

/* Trigger structure for table `eletwater` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `eletwaterid_trigger` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `eletwaterid_trigger` BEFORE INSERT ON `eletwater` FOR EACH ROW BEGIN
		SET new.id=upper(REPLACE(UUID(),'-','')); -- 触发器执行的逻辑
    END */$$


DELIMITER ;

/* Trigger structure for table `payment` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `paymentid_trigger` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `paymentid_trigger` BEFORE INSERT ON `payment` FOR EACH ROW BEGIN
		SET new.id=upper(REPLACE(UUID(),'-','')); -- 触发器执行的逻辑
    END */$$


DELIMITER ;

/* Trigger structure for table `permission` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `permissionid_trigger` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `permissionid_trigger` BEFORE INSERT ON `permission` FOR EACH ROW BEGIN
		SET new.id=upper(REPLACE(UUID(),'-','')); -- 触发器执行的逻辑
    END */$$


DELIMITER ;

/* Trigger structure for table `syslog` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `syslogid_trigger` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `syslogid_trigger` BEFORE INSERT ON `syslog` FOR EACH ROW BEGIN
		SET new.id=upper(REPLACE(UUID(),'-','')); -- 触发器执行的逻辑
    END */$$


DELIMITER ;

/* Trigger structure for table `userrole` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `userroleid_trigger` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `userroleid_trigger` BEFORE INSERT ON `userrole` FOR EACH ROW BEGIN
		SET new.id=upper(REPLACE(UUID(),'-','')); -- 触发器执行的逻辑
    END */$$


DELIMITER ;

/* Trigger structure for table `waterperday` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `waterperdayid_trigger` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `waterperdayid_trigger` BEFORE INSERT ON `waterperday` FOR EACH ROW BEGIN
		SET new.id=upper(REPLACE(UUID(),'-','')); -- 触发器执行的逻辑
    END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
