/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.15-log : Database - hr2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hr2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hr2`;

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `employeeId` int(11) NOT NULL,
  `age` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `employeeName` varchar(255) DEFAULT NULL,
  `joinedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`employeeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `employees` */

insert  into `employees`(`employeeId`,`age`,`description`,`employeeName`,`joinedDate`) values (1,'23','Vey good Employee etc','Akash Khatri','2018-05-24 11:36:50'),(2,'15',NULL,'Deepak Khatri',NULL);

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values (3);

/*Table structure for table `hibernate_sequences` */

DROP TABLE IF EXISTS `hibernate_sequences`;

CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) NOT NULL,
  `next_val` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sequence_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `hibernate_sequences` */

insert  into `hibernate_sequences`(`sequence_name`,`next_val`) values ('default',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
