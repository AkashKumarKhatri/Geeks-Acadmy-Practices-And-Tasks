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
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hr` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hr`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `ADDRESS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `STREET_NAME` varchar(255) DEFAULT NULL,
  `STATE_NAME` varchar(255) DEFAULT NULL,
  `PIN_CODE` varchar(255) DEFAULT NULL,
  `CITY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ADDRESS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `address` */

insert  into `address`(`ADDRESS_ID`,`STREET_NAME`,`STATE_NAME`,`PIN_CODE`,`CITY_NAME`) values (1,'Rasham Gali','Sindh','7011','Hyderabad'),(2,'Maseed','Sindh','7001','Karachi'),(3,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,'Omerkot'),(5,NULL,NULL,NULL,'Jamshoro'),(7,NULL,NULL,NULL,'Ghotki'),(8,NULL,NULL,NULL,'Ghotki');

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `department` */

insert  into `department`(`department_id`,`name`) values (1,'CS'),(2,'SW'),(3,'IT');

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) DEFAULT NULL,
  `name` varchar(145) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `employees` */

insert  into `employees`(`employee_id`,`department_id`,`name`,`age`) values (1,1,'Raheem Kumar','2'),(5,1,'Aashique Ali','24'),(18,3,'Aashique Ali','24'),(19,2,'Deepak Khatri',NULL),(20,1,'Deepak Khatri',NULL),(21,3,'Deepak Khatri',NULL),(22,2,'Aashique Ali','24'),(23,3,'Aashique Ali','24');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`student_id`,`name`,`age`,`address_id`) values (1,'Akash','22',1),(2,'Aashique','23',2),(3,'Sunny','23',NULL),(4,'Roshan',NULL,NULL),(5,'Raheem',NULL,NULL),(6,'Roshan',NULL,NULL),(7,'Raheem',NULL,NULL);

/*Table structure for table `student_address` */

DROP TABLE IF EXISTS `student_address`;

CREATE TABLE `student_address` (
  `student_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student_address` */

insert  into `student_address`(`student_id`,`address_id`) values (1,3),(3,4),(3,5),(4,7),(5,7),(6,8),(7,8);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
