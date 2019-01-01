/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.15-log : Database - automatedattendancesystemdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`automatedattendancesystemdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `automatedattendancesystemdb`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`admin_id`,`admin_name`,`admin_password`) values (1,'admin','combogroup');

/*Table structure for table `attendence` */

DROP TABLE IF EXISTS `attendence`;

CREATE TABLE `attendence` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `attendence` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `attendence` */

insert  into `attendence`(`attendance_id`,`attendence`,`date`,`time`) values (1,'yes',NULL,NULL),(2,'no',NULL,NULL);

/*Table structure for table `permission` */

DROP TABLE IF EXISTS `permission`;

CREATE TABLE `permission` (
  `permission_id` int(255) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `permission` */

insert  into `permission`(`permission_id`,`permission_name`) values (1,'view_teacher'),(2,'view_student'),(3,'view_all');

/*Table structure for table `role_permission` */

DROP TABLE IF EXISTS `role_permission`;

CREATE TABLE `role_permission` (
  `role_permission_id` int(255) NOT NULL AUTO_INCREMENT,
  `role_id` int(255) DEFAULT NULL,
  `permission_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`role_permission_id`),
  KEY `permission_id` (`permission_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `role_permission_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`),
  CONSTRAINT `role_permission_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `role_permission` */

insert  into `role_permission`(`role_permission_id`,`role_id`,`permission_id`) values (2,1,1),(3,2,3),(4,3,2);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `role_id` int(255) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `roles` */

insert  into `roles`(`role_id`,`role_name`,`active`) values (1,'Admin',1),(2,'Teacher',1),(3,'Student',1),(4,'General Manager',0);

/*Table structure for table `ss` */

DROP TABLE IF EXISTS `ss`;

CREATE TABLE `ss` (
  `name` varchar(20) DEFAULT NULL,
  `rollno` varchar(20) DEFAULT NULL,
  `sports` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ss` */

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `std_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `present` varchar(255) DEFAULT 'yes',
  `password` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `attendance_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`std_id`),
  KEY `attendance_id` (`attendance_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`attendance_id`) REFERENCES `attendence` (`attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`std_id`,`name`,`address`,`contact_no`,`email`,`gender`,`dob`,`class`,`present`,`password`,`active`,`attendance_id`) values (1,'Akash Kumar','Qasimabad','03360231273','kkatriakash@gmail.com','Male','1996-04-20','BS(cs)','yes','khatri',1,1),(2,'Aashiqe Chohan','Mirpurkhas','03452353211','aashiquealichohan@gmail.com','Male','1995-10-01','BS(cs)','yes','chohan',1,1),(3,'Vijay Maheshwari','Chelar','03312245656','vijaymaheshwari@gmail.com','Male','1996-09-04','BS(cs)','yes','maheshwari',1,1),(4,'Rida Zaman','Latifabad','','ridazaman@gmail.com','Female','1996-02-06','BS(cs)','yes','qaimkhani',1,1),(5,'Syeda Rida Fatima','Latifabad','','syedafatima@gmail.com','Female','1996-12-04','BS(cs)','yes','syed',1,1),(8,'Tanveer Kaka','Chandiya Goth ','0336549875','tanveerkaka@gmail.com','Male','2016-12-05','BS(cs)','yes','kaka',1,1);

/*Table structure for table `student_teacher` */

DROP TABLE IF EXISTS `student_teacher`;

CREATE TABLE `student_teacher` (
  `std_teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `std_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`std_teacher_id`),
  KEY `std_id` (`std_id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `student_teacher_ibfk_1` FOREIGN KEY (`std_id`) REFERENCES `student` (`std_id`),
  CONSTRAINT `student_teacher_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `student_teacher` */

insert  into `student_teacher`(`std_teacher_id`,`std_id`,`teacher_id`,`date`,`time`) values (1,1,1,'2017-02-15','22:57:45'),(2,1,1,'2017-02-27','22:57:50'),(3,2,1,'2017-03-03','22:57:50'),(5,1,1,'2017-03-13','22:42:22'),(6,1,1,'2017-04-29','11:28:45'),(7,2,1,'2017-04-29','11:28:45'),(8,1,2,'2017-04-29','11:30:45'),(9,2,2,'2017-04-29','11:30:45'),(12,1,1,'2017-04-29','15:21:29'),(13,2,1,'2017-04-29','15:21:29'),(14,3,1,'2017-04-29','15:21:30'),(15,4,1,'2017-04-29','15:21:30'),(16,5,1,'2017-04-29','15:21:30'),(17,1,1,'2017-04-30','18:49:53'),(18,4,1,'2017-04-30','18:49:53'),(19,5,1,'2017-04-30','18:49:53'),(20,2,1,'2017-04-30','18:53:25'),(21,3,1,'2017-04-30','18:53:25'),(22,4,1,'2017-04-30','18:53:25'),(23,5,1,'2017-04-30','18:53:25'),(24,1,1,'2017-05-01','01:23:27'),(25,4,1,'2017-05-01','01:23:28'),(26,5,1,'2017-05-01','01:23:28'),(27,2,2,'2017-05-01','01:49:10'),(28,3,2,'2017-05-01','01:49:10'),(29,4,2,'2017-05-01','01:49:10'),(30,5,2,'2017-05-01','01:49:10'),(31,2,1,'2017-05-02','08:52:07'),(32,3,1,'2017-05-02','08:52:07'),(33,4,1,'2017-05-02','08:52:07'),(34,5,1,'2017-05-02','08:52:07'),(35,8,1,'2017-05-02','08:52:07'),(36,1,1,'2017-05-17','00:39:08'),(37,2,1,'2017-05-17','00:39:08'),(38,4,1,'2017-05-17','00:39:08'),(39,5,1,'2017-05-17','00:39:08'),(40,8,1,'2017-05-17','00:39:08');

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `date` date DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

insert  into `teacher`(`teacher_id`,`name`,`subject`,`address`,`contact_no`,`email`,`gender`,`age`,`password`,`active`,`date`) values (1,'Hyder Nizamani','S.E','Qasimabad','03362448353','hydernizamani@gmail.com','Male',40,'nizamani',1,NULL),(2,'Imtiaze Korejo','C.A','Tando Allayar','03016845279','imtiazekorejo@gmail.com','Male',40,'korejo',1,NULL),(3,'Aftab Chandiyo','Oracle Developer','Hyderabad','03363458789','aftabchandiyo@gmail.com','Male',37,'chandiyo',1,NULL),(4,'sunny','java','Hyderabad','656464646','sdnjsdksd@gmail.com','on',18,'cghhvhh\\',1,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
