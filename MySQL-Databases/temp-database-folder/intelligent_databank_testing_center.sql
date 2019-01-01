/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.15-log : Database - intelligent_databank_testing_center
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`intelligent_databank_testing_center` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `intelligent_databank_testing_center`;

/*Table structure for table `answers` */

DROP TABLE IF EXISTS `answers`;

CREATE TABLE `answers` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `is_correct` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`answer_id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `answers` */

insert  into `answers`(`answer_id`,`question_id`,`answer`,`is_correct`,`remarks`,`created_by`,`modified_by`,`created_date`,`modified_date`,`active`) values (13,31,'language',NULL,NULL,NULL,NULL,NULL,NULL,1),(14,31,'programming',NULL,NULL,NULL,NULL,NULL,NULL,1),(15,31,'os',NULL,NULL,NULL,NULL,NULL,NULL,1),(16,31,'computer',NULL,NULL,NULL,NULL,NULL,NULL,1),(17,32,'unexpected error',NULL,NULL,NULL,NULL,NULL,NULL,1),(18,32,'error',NULL,NULL,NULL,NULL,NULL,NULL,1),(19,32,'loop',NULL,NULL,NULL,NULL,NULL,NULL,1),(20,32,'lanuage',NULL,NULL,NULL,NULL,NULL,NULL,1),(21,33,'nawab sharif',NULL,NULL,NULL,NULL,NULL,NULL,1),(22,33,'zardari',NULL,NULL,NULL,NULL,NULL,NULL,1),(23,33,'akash khatri',NULL,NULL,NULL,NULL,NULL,NULL,1),(24,33,'jabar tunio',NULL,NULL,NULL,NULL,NULL,NULL,1);

/*Table structure for table `discipline` */

DROP TABLE IF EXISTS `discipline`;

CREATE TABLE `discipline` (
  `discipline_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`discipline_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `discipline` */

insert  into `discipline`(`discipline_id`,`name`,`remarks`,`created_by`,`modified_by`,`created_date`,`modified_date`,`active`) values (1,'Engineering','',NULL,NULL,NULL,NULL,1),(2,'Medical Technology','Medical Science Field',NULL,NULL,NULL,NULL,1),(3,'dfsdf','',NULL,NULL,NULL,NULL,0),(4,'Commerce BB','',NULL,NULL,NULL,NULL,1);

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `discipline_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`group_id`),
  KEY `discipline_id` (`discipline_id`),
  CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`discipline_id`) REFERENCES `discipline` (`discipline_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `groups` */

insert  into `groups`(`group_id`,`discipline_id`,`name`,`remarks`,`created_by`,`modified_by`,`created_date`,`modified_date`,`active`) values (1,1,'Telecom','',NULL,NULL,NULL,NULL,1),(2,1,'Electronics','',NULL,NULL,NULL,NULL,1),(3,1,'Software','',NULL,NULL,NULL,NULL,1),(4,1,'Computer Science','',NULL,NULL,NULL,NULL,1),(5,2,'MBBS','',NULL,NULL,NULL,NULL,1),(6,2,'BDS','',NULL,NULL,NULL,NULL,1),(7,2,'Microbiology','',NULL,NULL,NULL,NULL,0);

/*Table structure for table `paper` */

DROP TABLE IF EXISTS `paper`;

CREATE TABLE `paper` (
  `paper_id` int(11) NOT NULL AUTO_INCREMENT,
  `paper_description_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`paper_id`),
  KEY `paper_description_id` (`paper_description_id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `paper_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `paper` */

/*Table structure for table `paper_description` */

DROP TABLE IF EXISTS `paper_description`;

CREATE TABLE `paper_description` (
  `paper_description_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `question_level_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `paper_year` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`paper_description_id`),
  KEY `question_level_id` (`question_level_id`),
  CONSTRAINT `paper_description_ibfk_1` FOREIGN KEY (`question_level_id`) REFERENCES `question_level` (`question_level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `paper_description` */

/*Table structure for table `question_level` */

DROP TABLE IF EXISTS `question_level`;

CREATE TABLE `question_level` (
  `question_level_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`question_level_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `question_level_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `question_level` */

insert  into `question_level`(`question_level_id`,`group_id`,`name`,`remarks`,`created_by`,`modified_by`,`created_date`,`modified_date`,`active`) values (1,1,'Hard','',NULL,NULL,NULL,NULL,1),(2,3,'Moderat','',NULL,NULL,NULL,NULL,1),(3,5,'Simple','',NULL,NULL,NULL,NULL,1),(4,2,'Simple','',NULL,NULL,NULL,NULL,1),(5,4,'Hard','',NULL,NULL,NULL,NULL,1);

/*Table structure for table `questions` */

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `paper_description_id` int(11) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`question_id`),
  KEY `paper_description_id` (`paper_description_id`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`paper_description_id`) REFERENCES `paper_description` (`paper_description_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `questions` */

insert  into `questions`(`question_id`,`user_id`,`paper_description_id`,`question`,`entry_date`,`remarks`,`created_by`,`modified_by`,`created_date`,`modified_date`,`active`) values (31,NULL,NULL,'What is Java ??',NULL,NULL,NULL,NULL,NULL,NULL,1),(32,NULL,NULL,'What is Exception ',NULL,NULL,NULL,NULL,NULL,NULL,1),(33,NULL,NULL,'who is current prime minister? What did he do ',NULL,NULL,NULL,NULL,NULL,NULL,1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `registration_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`name`,`password`,`email`,`registration_date`,`remarks`,`created_by`,`modified_by`,`created_date`,`modified_date`,`active`) values (1,'aftab_chandio','2255','chandio@gmail.com','2006-04-11 00:09:08','Good in Nature',NULL,NULL,NULL,NULL,1),(2,'akash_khatri','1234','kkatriakash@gmail.com','2018-02-19 00:09:08','Good boy in Java Programming',NULL,NULL,NULL,NULL,1),(3,'aashique_123','chouhan','chouhan','2018-02-04 01:04:29','Very Good Personality',NULL,NULL,NULL,NULL,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
