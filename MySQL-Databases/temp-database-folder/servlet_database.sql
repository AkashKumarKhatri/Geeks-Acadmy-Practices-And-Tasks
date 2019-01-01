/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.15-log : Database - servlet_database
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`servlet_database` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `servlet_database`;

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `department` */

insert  into `department`(`department_id`,`name`,`active`) values (1,'BS(Computer Science)',1),(2,'SW',1),(3,'Electrical',1),(4,'IT',1),(5,'MBA',1),(6,'BS(Commerce)',1),(7,'BBa',1);

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`employee_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`employee_id`,`department_id`,`name`,`dob`,`gender`,`email`,`active`) values (1,1,'Sadaquat Ali Ruk','2018-02-17 18:25:23','male','ruk@gmail.com',0),(2,2,'Aftab Chandio','1985-02-20 18:25:58','male','chandio@gmail.com',0),(3,3,'Hyder Nizamani','2018-02-05 18:26:56','male','nizamani@otlook.com',0),(4,1,'dasd','2018-02-17 00:00:00','Male','khari@gmail.com',0),(5,1,'Akash Khatri','2018-02-06 00:00:00','Male','khatri@gmail.com',0),(7,2,'Aashique Ali','2018-02-13 00:00:00','Male','chouhan@gmail.com',1),(8,2,'Aashique Ali','2018-02-13 00:00:00','Male','chouhan@gmail.com',0),(9,3,'Deepak Kumar','2018-02-14 00:00:00','Male','khatri@gmail.com',0),(10,3,'Deepak Kumar','2018-02-14 00:00:00','Male','khatri@gmail.com',0),(11,2,'Sunny Lohana','2018-02-07 00:00:00','Male','Lohana@gmail.com',0),(12,2,'Sunny Lohana','2018-02-07 00:00:00','Male','Lohana@gmail.com',0),(13,2,'Sunny Lohana','2018-02-07 00:00:00','Male','Lohana@gmail.com',0),(14,1,'Jabbar Tunio','2018-02-13 00:00:00','Male','tunio@gmail.com',0),(15,1,'Jabbar Tunio','2018-02-13 00:00:00','Male','tunio@gmail.com',0),(16,1,'Jabbar Tunio','2018-02-13 00:00:00','Male','tunio@gmail.com',0),(17,1,'RAHIM','2018-02-07 00:00:00','Male','AAA@GMAIL.COM',0),(18,6,'Abdul Bari','2017-11-08 00:00:00','Male','bhatti@gmail.com',0),(19,3,'Rida Zaman','2018-03-21 00:00:00','Female','kaimkhani@gmail.com',0),(20,2,'Husnain','2018-03-07 00:00:00','Male','nain@gmail.com',0),(21,7,'sADAQUAT','2018-03-09 00:00:00','Male','sadaquat_ruk@live.com',0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(145) DEFAULT NULL,
  `password` varchar(145) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`name`,`password`,`active`,`created_by`,`created_date`,`modified_by`,`modified_date`) values (1,'akash_khatri','1234',1,1,NULL,1,NULL),(2,'ashok_20','2244',1,1,NULL,1,NULL),(3,'ridz','kaimkhani',0,1,NULL,1,NULL),(4,'kirshana','radha',1,1,NULL,NULL,NULL),(5,'hari','6789',1,1,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
