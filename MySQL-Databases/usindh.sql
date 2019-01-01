/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.15-log : Database - usindh
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`usindh` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `usindh`;

/*Table structure for table `batch` */

DROP TABLE IF EXISTS `batch`;

CREATE TABLE `batch` (
  `batch_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_year` varchar(45) DEFAULT NULL,
  `batch_shift` varchar(20) DEFAULT NULL,
  `batch_group` varchar(45) DEFAULT NULL,
  `batch_remarks` varchar(45) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  `prog_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`batch_id`),
  KEY `prog_id` (`prog_id`),
  CONSTRAINT `batch_ibfk_1` FOREIGN KEY (`prog_id`) REFERENCES `program` (`prog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `batch` */

insert  into `batch`(`batch_id`,`batch_year`,`batch_shift`,`batch_group`,`batch_remarks`,`active`,`prog_id`) values (1,'2K14','Morning','P.E','Good',1,42),(2,'2K15','Morning','P.E','Excellent',1,42),(3,'2K14','Mornig','P.E','Good',1,42);

/*Table structure for table `departments` */

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments` (
  `dep_id` int(11) NOT NULL AUTO_INCREMENT,
  `fac_id` int(11) DEFAULT NULL,
  `dep_name` varchar(100) DEFAULT NULL,
  `dep_remarks` varchar(45) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`dep_id`),
  KEY `fac_id` (`fac_id`),
  CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

/*Data for the table `departments` */

insert  into `departments`(`dep_id`,`fac_id`,`dep_name`,`dep_remarks`,`active`) values (1,9,'Arts & Design','Good',1),(2,9,'English Language and Literature','Best',1),(3,9,'Language (Arabic & Persian)','Good',1),(4,9,'Philosophy',NULL,1),(5,9,'Sindhi',NULL,1),(6,2,'Business Administration',NULL,1),(7,2,'Commerce',NULL,1),(8,3,'Curriculum Development & Special Education',NULL,1),(9,3,'Distance,Continuing and Computer Education',NULL,1),(10,3,'Education',NULL,1),(11,3,'Educational Management and Supervision',NULL,1),(12,3,'Psychological Testing,Guidance & Research',NULL,1),(13,4,'Comparatative Religion & Islamic Culture',NULL,1),(14,4,'Muslim History',NULL,1),(15,5,'Law',NULL,1),(16,1,'National Center of Excellence in Analytical Chemistry',NULL,1),(17,1,'Center of Enviromental Science',NULL,1),(18,1,'Center of Health and Physical Education Sports Science',NULL,1),(19,1,'Center for Pure & Applied Geology',NULL,1),(20,1,'Boichemistry',NULL,1),(21,1,'Boichnology & Genetics Engineering',NULL,1),(22,1,'Dr. M.A Kazi Institute of Chemistry',NULL,1),(23,1,'Advanced Research Studies in Chemical Sciences',NULL,1),(24,1,'Information & Communication Technology',NULL,1),(25,1,'Mathematics & Computer Science',NULL,1),(26,1,'Plant Science',NULL,1),(27,1,'Physics',NULL,1),(28,1,'Anthropology & Archaology',NULL,1),(29,1,'Freshwater Biology & Fisheries',NULL,1),(30,1,'Geography',NULL,1),(31,1,'Microbiology',NULL,1),(32,1,'Physiology',NULL,1),(33,1,'Statics',NULL,1),(34,1,'Zoology',NULL,1),(35,7,'Pharmaceutics',NULL,1),(36,7,'Pharmaceutics Chemistry',NULL,1),(37,7,'Pharmacology',NULL,1),(38,7,'Pharmacogonsy',NULL,1),(39,8,'Sindh Development Studies Centre',NULL,1),(40,8,'Pakistan Study Centre',NULL,1),(41,8,'Institute of Gender Studies',NULL,1),(42,8,'Economics',NULL,1),(43,8,'General History',NULL,1),(44,8,'International Relations',NULL,1),(45,8,'Library Information Science & Archive Studies',NULL,1),(46,8,'Media & Communication Studies',NULL,1),(47,8,'Political Science',NULL,1),(48,8,'Psychology',NULL,1),(49,8,'Public Administration',NULL,1),(50,8,'Sociology',NULL,1),(51,8,'Social Work',NULL,1),(52,8,'Criminology',NULL,1),(53,9,'Urdu',NULL,1);

/*Table structure for table `faculty` */

DROP TABLE IF EXISTS `faculty`;

CREATE TABLE `faculty` (
  `fac_id` int(11) NOT NULL AUTO_INCREMENT,
  `fac_name` varchar(45) DEFAULT NULL,
  `fac_remarks` varchar(45) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`fac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `faculty` */

insert  into `faculty`(`fac_id`,`fac_name`,`fac_remarks`,`active`) values (1,'Natural Science','Excellance',1),(2,'Commerce & Business Administration','Good',1),(3,'Education',NULL,1),(4,'Islamic Studies',NULL,1),(5,'Law',NULL,1),(7,'Pharmacy',NULL,1),(8,'Social Sciences',NULL,1),(9,'Art',NULL,1);

/*Table structure for table `program` */

DROP TABLE IF EXISTS `program`;

CREATE TABLE `program` (
  `prog_id` int(11) NOT NULL AUTO_INCREMENT,
  `prog_name` varchar(45) DEFAULT NULL,
  `prog_duration` varchar(20) DEFAULT NULL,
  `prog_remarks` varchar(45) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  `dep_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`prog_id`),
  KEY `dep_id` (`dep_id`),
  CONSTRAINT `program_ibfk_1` FOREIGN KEY (`dep_id`) REFERENCES `departments` (`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

/*Data for the table `program` */

insert  into `program`(`prog_id`,`prog_name`,`prog_duration`,`prog_remarks`,`active`,`dep_id`) values (1,'B.A.H','8-Semester',NULL,1,1),(2,'B.F.A','8-Semester',NULL,1,1),(3,'B.T.D','8-Semester',NULL,1,1),(4,'M.A(Pass)','4-Semester',NULL,1,1),(5,'B.C.D','8-Semester',NULL,1,1),(6,'BS','8-Semester',NULL,1,2),(7,'M.A','4-Semester',NULL,1,2),(8,'B.A(Hounors)','6-Semester',NULL,1,3),(9,'M.A(Hounors)','2-Semester',NULL,1,3),(10,'M.A(Pass)','4-Semester',NULL,1,3),(11,'B.A(Honours)','6-Semester',NULL,1,4),(12,'M.A(Honours)','2-Semester',NULL,1,4),(13,'M.A(Pass)','4-Semester',NULL,1,4),(14,'BS','8-Semester',NULL,1,5),(15,'M.A(Pass)','4-Semester',NULL,1,5),(16,'B.A(Hounors)','6-Semester',NULL,1,53),(17,'M.A(Hounors)','2-Semester',NULL,1,53),(18,'M.A(Pass)','4-Semester',NULL,1,53),(19,'B.B.A (Honours)','8-Semester',NULL,1,6),(20,'M.B.A(Morning)','4-Semester',NULL,1,6),(21,'M.B.A(Evening)','6-Semester',NULL,1,6),(22,'M.B.A(Honours)','4-Semester',NULL,1,6),(23,'BS','8-Semester',NULL,1,7),(24,'M.Com','4-Semester',NULL,1,7),(25,'B.A(Hounors)','6-Semester',NULL,1,13),(26,'M.A(Hounors)','2-Semester',NULL,1,13),(27,'M.A(Pass)','4-Semester',NULL,1,13),(28,'B.A(Hounors)','6-Semester',NULL,1,14),(29,'M.A(Hounors)','2-Semester',NULL,1,14),(30,'M.A(Pass)','4-Semester',NULL,1,14),(31,'LL.B','10-Semester',NULL,1,15),(32,'LL.M','4-Semester',NULL,1,15),(33,'BS','8-Semester',NULL,1,20),(34,'M.Sc','4-Semester',NULL,1,20),(35,'BS','8-Semester',NULL,1,21),(36,'M.Sc','4-Semester',NULL,1,21),(37,'BS','8-Semester',NULL,1,22),(38,'M.Sc','4-Semester',NULL,1,22),(39,'BS','8-Semester',NULL,1,24),(40,'M.I.T','4-Semester',NULL,1,24),(41,'M.Sc','2-Semester',NULL,1,24),(42,'BS','8-Semester',NULL,1,25),(43,'M.C.S','4-Semester',NULL,1,25),(44,'BS','8-Semester',NULL,1,26),(45,'BS','8-Semester',NULL,1,27),(46,'M.Sc','4-Semester',NULL,1,27);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `std_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_id` int(11) DEFAULT NULL,
  `std_name` varchar(45) DEFAULT NULL,
  `std_fname` varchar(45) DEFAULT NULL,
  `std_surname` varchar(45) DEFAULT NULL,
  `std_gender` varchar(20) DEFAULT NULL,
  `std_cell` varchar(45) DEFAULT NULL,
  `std_address` varchar(45) DEFAULT NULL,
  `std_remarks` varchar(45) DEFAULT NULL,
  `std_rollno` varchar(20) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`std_id`),
  KEY `batch_id` (`batch_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`std_id`,`batch_id`,`std_name`,`std_fname`,`std_surname`,`std_gender`,`std_cell`,`std_address`,`std_remarks`,`std_rollno`,`active`) values (2,2,'Akash Kumar','Kanhiya Lal','Khatri','Male','03360231273','Hyderabad Sindh','Good','2k15/cse/11',1),(3,2,'Deepak Kumar','Kanhiya Lal','Khatri','Male','03360231273','Hyderbad Sindh','Good','2k15/cse/05',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
