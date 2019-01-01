/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.15-log : Database - fees_management_system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fees_management_system` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `fees_management_system`;

/*Table structure for table `batches` */

DROP TABLE IF EXISTS `batches`;

CREATE TABLE `batches` (
  `batch_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `batches` */

insert  into `batches`(`batch_id`,`batch`,`active`) values (1,'Java 10',1),(2,'Java Debuggers',1),(3,'Java Basic',1),(4,'Java Beginners basic',1);

/*Table structure for table `courses` */

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `courses` */

insert  into `courses`(`course_id`,`course_name`,`active`) values (1,'Java',1),(2,'PHP',1),(3,'MySQL',1),(4,'Front End Technologies',1);

/*Table structure for table `fees_detail` */

DROP TABLE IF EXISTS `fees_detail`;

CREATE TABLE `fees_detail` (
  `fees_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `amount_paid` int(11) DEFAULT '0',
  `fees_status` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`fees_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `fees_detail_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `fees_detail` */

insert  into `fees_detail`(`fees_id`,`batch_id`,`course_id`,`student_id`,`payment_date`,`amount_paid`,`fees_status`,`active`) values (1,1,1,1,'2018-04-10',2000,'PAID',1),(2,1,1,2,'2018-04-11',2500,'PAID',1),(3,1,1,4,'2018-04-19',0,'PENDING',1),(4,1,2,1,'2018-04-03',2000,'PAID',1),(5,1,2,2,'2018-04-14',2000,'PAID',1),(6,1,2,1,'2018-04-03',2000,'PAID',0),(7,1,2,1,'2018-04-03',2500,'PAID',0);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `roll_no` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_admission` date DEFAULT NULL,
  `fees_amount` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_unique_no` (`roll_no`),
  KEY `batch_id` (`batch_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`batch_id`),
  CONSTRAINT `student_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`student_id`,`batch_id`,`course_id`,`roll_no`,`name`,`date_of_birth`,`date_of_admission`,`fees_amount`,`active`) values (1,1,1,'15SW29','Kashif Ali Khoso','2018-03-26','2018-03-14',2000,1),(2,2,2,'15SW161','Rehan Ali','2018-03-06','2018-03-15',2500,1),(3,2,1,'15SW190','Sadiq Ali','2018-01-01','2018-01-01',2000,1),(4,1,2,'17EL45','Zain ul Abdin','2018-04-11','2018-04-10',2000,1),(5,1,2,'15SW191','Asif Ali','2018-04-20','2018-04-20',2500,1),(6,2,3,'15SW20','Ali Naqi','2018-04-04','2018-04-18',2000,1),(7,2,3,'15SW169','Ali Hyder','2018-01-01','2018-01-01',2000,1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_name`,`password`,`active`) values (1,'kashif','kashif',1),(2,'admin','admin',1),(3,'Zain','zain',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
