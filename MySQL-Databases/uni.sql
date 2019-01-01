/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.15-log : Database - uni
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`uni` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `uni`;

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `dep_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `remarks` varchar(40) DEFAULT NULL,
  `fac_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`dep_id`),
  KEY `fac_id` (`fac_id`),
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `department` */

insert  into `department`(`dep_id`,`name`,`remarks`,`fac_id`) values (1,'Computer Science','Good',1),(2,'Mathematics','Good',1),(3,'Software','Better',3),(4,'Socialogy','Average',2),(5,'Sindhi','Good',2),(6,'Urdu','Better',2);

/*Table structure for table `faculty` */

DROP TABLE IF EXISTS `faculty`;

CREATE TABLE `faculty` (
  `fac_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `remarks` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`fac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `faculty` */

insert  into `faculty`(`fac_id`,`name`,`remarks`) values (1,'Natural Science','Good'),(2,'Art Faculty','Better'),(3,'IT','Good');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `fname` varchar(40) DEFAULT NULL,
  `roll_no` varchar(20) DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`student_id`,`name`,`fname`,`roll_no`,`contact_no`,`email`,`address`) values (1,'Akash Khatri','Kanhiya Lal','2k15cse11','03360231273','kkatriakash@gmail.com','Hyderabad'),(2,'Akash Khatri','Kanhiya Lal','2k15cse11','03360231273','kkatriakash@gmail.com','Hyderabad'),(3,'Akash Kumar','Kanhiya Lal','2k15cse11','03360231273','kkatriakash@gmail.com','Qasimabad Hyderabad'),(4,'was','Kanhiya Lal','2k15cse11','03360231273','kkatriakash@gmail.com','Qasimabad Hyderabad'),(5,'rtdrt','rtfy','hfygy','gyvgy','gycfh@vghvj','gghjhjh'),(6,'dfksjd','czck','vvzxkjvk','dskcvvk','zkjsdf@kxcvjkxjcv','kjxvjvk'),(7,'Deepak Kumar','Kanhiya Lal','2k15cse12','03362784515415','deepak@yahho.co','Hyderabad'),(8,'Ashique','Chhohan ','2k15cse18','0322542154621','aashiq@gmail.com','Mirpurkhas'),(9,'Khait Kanwal','Bhawani Shanker','12ce16','035623659523','kanwal@gmai.com','Khipro'),(10,'Sadaquat Ali Ruk','Anwar Ali Ruk','11sw85','1144','sadaquat_ruk@live.com','asd'),(11,'sad','s','s','12','s@yahoo.com','123'),(12,'h','h','h','2','sasda@yahoo.com','123'),(13,'null','null','null','null','null','null'),(14,'Ajay','Govind Ram','2k15CSE34','03225235554455','ajay@gmail.com','Karachi'),(15,'null','null','null','null','null','null'),(16,'null','null','null','null','null','null'),(17,'Majid','Khayal ','2k15it104','02521545184','sdasdad@sdk.sdas','Hyderabad');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
