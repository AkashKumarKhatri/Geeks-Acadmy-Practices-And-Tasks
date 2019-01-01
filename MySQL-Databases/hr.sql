/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.15-log : Database - hr
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

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `dep_id` INT(11) NOT NULL AUTO_INCREMENT,
  `dep_name` VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (`dep_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `department` */

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `emp_id` INT(11) NOT NULL AUTO_INCREMENT,
  `emp_name` VARCHAR(20) DEFAULT NULL,
  `dep_id` INT(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `FK_employees` (`dep_id`),
  CONSTRAINT `FK_employees` FOREIGN KEY (`dep_id`) REFERENCES `department` (`dep_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `employees` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
