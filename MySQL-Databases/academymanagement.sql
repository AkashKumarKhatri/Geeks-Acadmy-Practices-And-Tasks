/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.15-log : Database - academymanagement
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`academymanagement` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `academymanagement`;

/*Table structure for table `batch` */

DROP TABLE IF EXISTS `batch`;

CREATE TABLE `batch` (
  `batch_id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(11) DEFAULT NULL,
  `shift` varchar(11) DEFAULT NULL,
  `group` varchar(11) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`batch_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `batch_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `batch` */

insert  into `batch`(`batch_id`,`year`,`shift`,`group`,`active`,`department_id`) values (1,'2K16','Morning','P.E',0,2),(2,'2K13','Morning','P.E',1,2),(3,'2K14','Morning','P.E',1,2),(4,'2k17','Evening','P.M',1,5);

/*Table structure for table `batch_teacher` */

DROP TABLE IF EXISTS `batch_teacher`;

CREATE TABLE `batch_teacher` (
  `batch_teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`batch_teacher_id`),
  KEY `batch_id` (`batch_id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `batch_teacher_ibfk_1` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`batch_id`),
  CONSTRAINT `batch_teacher_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `batch_teacher` */

insert  into `batch_teacher`(`batch_teacher_id`,`teacher_id`,`batch_id`) values (2,1,4),(3,1,3),(4,2,4),(5,2,4),(6,1,2);

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `code` varchar(11) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `department` */

insert  into `department`(`department_id`,`name`,`code`,`active`) values (1,'Mathmetics','8899',0),(2,'SW','5588',1),(3,'EL','7788',1),(4,'CHEM','2233',0),(5,'CS','5823',1),(6,'Software','12',1);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `roll_no` varchar(20) DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  `department_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `department_id` (`department_id`),
  KEY `batch_id` (`batch_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`student_id`,`name`,`roll_no`,`contact_no`,`email`,`active`,`department_id`,`batch_id`) values (1,'Akash Khatri','2k15cse11','03360231273','akash.khatri6@outlook.com',1,1,NULL),(2,'Saifullah','2k15cse76','02325626693','saifullkhanabbasi@gmail.com',1,2,NULL),(3,'Deepak Khatri','2k15cse13','03362026245','deepakhatri@yahoo.com',1,1,NULL),(4,'sa','se','se','we',0,2,NULL),(5,'Abdul Bari','2k15cse24','234567890','asdfghjkljhnbvc',1,2,NULL),(6,'Ashique','2k15cse18','1234567890','asdfghjkloiuy',1,2,4),(7,'Aashique Soomro','2k15cse15','03364528665','aashique234@gmail.com',1,2,NULL),(8,'','','','ZingJB@outlook.com',0,4,NULL),(9,'sachal','2k14cse11','1234567876','asdfbfg@dfgbv',1,2,3),(10,'Rohit','15cs21','021212415','rohit@gmai.com',1,5,3),(11,'Sadaquat Ali Ruk','11sw87','03337586021','sadaquat_ruk@live.com',1,3,1),(12,'Sadaquat ALi Ruk','11sw85','03337586021','s',1,2,2),(13,'Majid','2k15it105','0357245121854','aksdk@aksj',1,2,2),(14,'Bari','22','234567890','sdfxghjk',1,5,3),(15,'Narender','44','1234567890','asfdghj@asfs',1,3,2);

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

insert  into `teacher`(`teacher_id`,`name`,`address`,`contact_no`,`email`,`active`) values (1,'Sadaukat Ruk','Ghootki','0326545889955','sadakataliruk@gmail.com',1),(2,'Imtiaz Korejo','Tando Jam','033658799456','korejo123@gmail.com',1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  `user_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`name`,`password`,`active`,`user_code`) values (1,'khatri','1234',0,'1234'),(2,'akash','789',1,'4563'),(3,'Jabar','kashif',1,'4562'),(4,'saifullah','0987',1,'7862'),(5,'Mola','5678',0,'1478'),(6,'sid','123',1,'123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
