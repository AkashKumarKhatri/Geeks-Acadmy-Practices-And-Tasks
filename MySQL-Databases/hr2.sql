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

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `dep_id` int(11) NOT NULL AUTO_INCREMENT,
  `dep_name` varchar(45) DEFAULT NULL,
  `dep_code` int(11) DEFAULT NULL,
  `active` tinyint(11) DEFAULT NULL,
  PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `department` */

insert  into `department`(`dep_id`,`dep_name`,`dep_code`,`active`) values (1,'CS',4455,0),(2,'Mechenical',7755,1),(3,'EL',7744,1),(4,'English',5599,1);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `std_id` int(11) NOT NULL AUTO_INCREMENT,
  `std_name` varchar(45) DEFAULT NULL,
  `std_rollno` varchar(20) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `active` tinyint(11) DEFAULT NULL,
  PRIMARY KEY (`std_id`),
  KEY `dep_id` (`dep_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`dep_id`) REFERENCES `department` (`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`std_id`,`std_name`,`std_rollno`,`dep_id`,`active`) values (1,'Akash Kumar','12',1,0),(2,'Deepak Khatri','15',2,1),(3,'Rohit','44',1,1),(4,'Kashif','88',2,1),(5,'Rafay','56',3,1),(6,'Ashok ','33',3,0),(7,'Mudesir','16',4,0),(8,'Khatri','2k15cse34',NULL,NULL),(9,'Khatri','2k15cse34',NULL,NULL),(10,'Raffay','2k15cse48',NULL,NULL);

/*Table structure for table `student2` */

DROP TABLE IF EXISTS `student2`;

CREATE TABLE `student2` (
  `std_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`std_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `student2` */

insert  into `student2`(`std_id`,`name`,`country`,`gender`,`address`) values (1,'Akash','Pakistan','Male','Hyderabad'),(2,'Sunnny ','China','Male','Hey how are you ');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(155) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`name`,`password`) values (1,'khatri','poi');

/* Procedure structure for procedure `insertStudent` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertStudent` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertStudent`(in `name` varchar(45),in rollNo varchar(45))
BEGIN
	INSERT INTO `student` (`std_name`,`std_rollno`) VALUES (`name`,`rollNo`);
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
