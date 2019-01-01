/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.15-log : Database - hr3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hr3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hr3`;

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `employeeId` int(11) NOT NULL,
  `age` varchar(255) DEFAULT NULL,
  `employeeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `employees` */

insert  into `employees`(`employeeId`,`age`,`employeeName`) values (1,'22','Akash Kumar');

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values (2);

/*Table structure for table `user_address` */

DROP TABLE IF EXISTS `user_address`;

CREATE TABLE `user_address` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `CITY_NAME` varchar(255) DEFAULT NULL,
  `PIN_CODE` varchar(255) DEFAULT NULL,
  `STATE_NAME` varchar(255) DEFAULT NULL,
  `STREET_NAME` varchar(255) DEFAULT NULL,
  `ADDRESS_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADDRESS_ID`),
  KEY `FKbb9x5c24yelijjjwsc6955f3k` (`EMPLOYEE_ID`),
  CONSTRAINT `FKbb9x5c24yelijjjwsc6955f3k` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employees` (`employeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_address` */

insert  into `user_address`(`EMPLOYEE_ID`,`CITY_NAME`,`PIN_CODE`,`STATE_NAME`,`STREET_NAME`,`ADDRESS_ID`) values (1,'Hyderabad','7001','Sindh','Rashm Gali',1),(1,'Karachi','5252','Sindh','Paper Market',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
