/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.15-log : Database - geeks_academy_fees_managment_system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`geeks_academy_fees_managment_system` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `geeks_academy_fees_managment_system`;

/*Table structure for table `batchs` */

DROP TABLE IF EXISTS `batchs`;

CREATE TABLE `batchs` (
  `batch_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch` varchar(145) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `batchs` */

insert  into `batchs`(`batch_id`,`batch`,`active`) values (1,'Java 10',1),(2,'Java Advance',1),(3,'Java Basic',0),(4,'Java Basic',1),(5,'Java 12',0),(6,'Java 13',0),(7,'Java Geeks',1);

/*Table structure for table `fees` */

DROP TABLE IF EXISTS `fees`;

CREATE TABLE `fees` (
  `fees_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `month_id` int(11) DEFAULT NULL,
  `pay_date` datetime DEFAULT NULL,
  `remaining` int(45) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`fees_id`),
  KEY `student_id` (`student_id`),
  KEY `month_id` (`month_id`),
  CONSTRAINT `fees_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `fees_ibfk_2` FOREIGN KEY (`month_id`) REFERENCES `months` (`month_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `fees` */

/*Table structure for table `months` */

DROP TABLE IF EXISTS `months`;

CREATE TABLE `months` (
  `month_id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(45) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`month_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `months` */

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_id` int(11) DEFAULT NULL,
  `name` varchar(245) DEFAULT NULL,
  `fname` varchar(245) DEFAULT NULL,
  `surname` varchar(245) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `registration_date` datetime DEFAULT NULL,
  `address` varchar(245) DEFAULT NULL,
  `university` varchar(245) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `fees_per_month` int(45) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`student_id`),
  KEY `batch_id` (`batch_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`batch_id`) REFERENCES `batchs` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`student_id`,`batch_id`,`name`,`fname`,`surname`,`dob`,`contact`,`registration_date`,`address`,`university`,`email`,`fees_per_month`,`active`) values (1,NULL,'sads','gffgh','wety','2018-05-18 00:00:00','1105151151','2018-04-01 00:00:00','asdasdeertertert','USindh','asdasd#gmail.com',2500,1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) DEFAULT NULL,
  `password` varchar(245) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`name`,`password`,`active`) values (1,'admin','admin',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
