/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.15-log : Database - onlinetestingservice
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`onlinetestingservice` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `onlinetestingservice`;

/*Table structure for table `answers` */

DROP TABLE IF EXISTS `answers`;

CREATE TABLE `answers` (
  `q_id` int(11) DEFAULT NULL,
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(150) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `is_correct` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `q_id` (`q_id`),
  CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`q_id`) REFERENCES `question` (`q_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `answers` */

insert  into `answers`(`q_id`,`answer_id`,`answer`,`remarks`,`is_correct`) values (2,1,'James Goslin','Correct','Y'),(2,2,'Desnic Richy','Wrong','N'),(2,3,'Yaswant Kenther','Wrong','N'),(2,4,'Billgates','Wrong','N'),(1,5,'Three','Wrong','N'),(1,6,'Two','Wrong','N'),(1,7,'Four','Correct','Y'),(1,8,'Five','Wrong','N'),(3,9,'Mark Zukerberg','Wrong','N'),(3,10,'Bill Gates','Wrong','N'),(3,11,'Denis Richy','Correct','Y'),(3,12,'James Gosling','Wrong','N');

/*Table structure for table `question` */

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `q_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(150) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `question` */

insert  into `question`(`q_id`,`question`,`remarks`) values (1,'How Many Prvince in Pakistan?','good'),(2,'Who introduced JAVA ?','Excellent'),(3,'Who introduce C ?','Better');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
