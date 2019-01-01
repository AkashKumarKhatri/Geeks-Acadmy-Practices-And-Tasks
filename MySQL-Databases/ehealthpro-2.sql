/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.15-log : Database - e_healthprobygeeks
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`e_healthprobygeeks` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `e_healthprobygeeks`;

/*Table structure for table `appointments` */

DROP TABLE IF EXISTS `appointments`;

CREATE TABLE `appointments` (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `symptoms` varchar(145) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  `fees_status` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`),
  CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `employees` (`employee_id`),
  CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `appointments` */

insert  into `appointments`(`appointment_id`,`date`,`patient_id`,`doctor_id`,`symptoms`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`,`fees_status`) values (3,'2017-10-30',5,33,'Fever',1,NULL,1,NULL,1,'PAID'),(4,'2017-11-04',2,32,'Head Injury',1,NULL,NULL,NULL,1,'UNPAID'),(5,'2017-12-11',7,27,'Diariya',1,NULL,NULL,NULL,0,'UNPAID'),(6,'2017-11-09',7,32,'Head Ache',1,NULL,NULL,NULL,1,'PAID'),(7,'2017-11-13',4,34,'Dairia',1,NULL,1,NULL,0,'UNPAID'),(8,'2017-11-16',6,35,'Bimari',1,NULL,NULL,NULL,1,'UNPAID');

/*Table structure for table `blood` */

DROP TABLE IF EXISTS `blood`;

CREATE TABLE `blood` (
  `blood_id` int(11) NOT NULL AUTO_INCREMENT,
  `blood_group` varchar(45) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`blood_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `blood` */

insert  into `blood`(`blood_id`,`blood_group`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,'B +ve',NULL,NULL,NULL,NULL,1),(2,'B -ve',NULL,NULL,NULL,NULL,1),(3,'AB +ve',NULL,NULL,NULL,NULL,1),(5,'O -ve',NULL,NULL,NULL,NULL,1),(6,'O +ve',NULL,NULL,NULL,NULL,1);

/*Table structure for table `employee_type` */

DROP TABLE IF EXISTS `employee_type`;

CREATE TABLE `employee_type` (
  `employee_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_type_name` varchar(145) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`employee_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `employee_type` */

insert  into `employee_type`(`employee_type_id`,`employee_type_name`,`created_by`,`created_date`,`modified_by`,`modified`,`active`) values (1,'Manager',NULL,NULL,NULL,NULL,0),(2,'Manager Sahabbb',NULL,NULL,NULL,NULL,1),(3,'Doctor',NULL,NULL,NULL,NULL,1),(4,'Peon',NULL,NULL,NULL,NULL,1),(5,'Try',NULL,NULL,NULL,NULL,0),(6,'as',NULL,NULL,NULL,NULL,0);

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(145) DEFAULT NULL,
  `cnic` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `address` varchar(145) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `date_of_joining` datetime DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `specialization_id` int(11) DEFAULT NULL,
  `employee_type_id` int(11) DEFAULT NULL,
  `blood_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`employee_id`),
  KEY `specialization_id` (`specialization_id`),
  KEY `blood_id` (`blood_id`),
  KEY `employee_type_id` (`employee_type_id`),
  KEY `shift_id` (`shift_id`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`specialization_id`) REFERENCES `specializations` (`specialization_id`),
  CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`blood_id`) REFERENCES `blood` (`blood_id`),
  CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`employee_type_id`) REFERENCES `employee_type` (`employee_type_id`),
  CONSTRAINT `employees_ibfk_4` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`shift_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

/*Data for the table `employees` */

insert  into `employees`(`employee_id`,`name`,`cnic`,`contact`,`address`,`gender`,`date_of_joining`,`salary`,`fees`,`shift_id`,`specialization_id`,`employee_type_id`,`blood_id`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,'Akash Kumar','44105-6869443-3','03360231273','Hyderabad','Male','2017-10-29 12:57:39',80000,1000,1,1,2,1,NULL,NULL,NULL,NULL,0),(3,'Sunny Lohana','4410569358974','03362165789','Mithi Tharparkar','Male','2017-10-29 12:57:39',5000,200,2,4,2,5,NULL,NULL,NULL,NULL,1),(4,'Akash Kumar','44105-6869443-3','03360231273','Hyderabad','Male','2017-10-29 12:57:39',80000,1000,1,1,2,1,NULL,NULL,NULL,NULL,0),(5,'Akash Kumar','44105-6869443-3','03360231273','Hyderabad','Male','2017-10-29 12:57:39',80000,1000,1,1,2,1,NULL,NULL,NULL,NULL,0),(6,'Sunny Lohana','4410565894499','03360268901','Mihi Tharparkar','Male','2017-10-29 12:57:39',60000,1000,2,4,3,6,NULL,NULL,NULL,NULL,0),(7,'asdasd','0321654987032','1234','asdasd','Male','2017-10-29 12:57:39',345678,345678,2,2,2,1,NULL,NULL,NULL,NULL,0),(8,'asdasd','0321654987037','1234','asdasd','Male','2017-10-29 12:57:39',345678,345678,2,2,2,1,NULL,NULL,NULL,NULL,0),(9,'asdasd','0321654987034','1234','asdasd','Male','2017-10-29 12:57:39',345678,345678,2,2,2,1,NULL,NULL,NULL,NULL,0),(10,'asdasd','0321654987034','1234','asdasd','Male','2017-10-29 12:57:39',345678,345678,2,2,2,1,NULL,NULL,NULL,NULL,0),(11,'asdasd','0321654987034','1234','asdasd','Male','2017-10-29 12:57:39',34567855,345678,2,2,2,1,NULL,NULL,NULL,NULL,0),(12,'asdasd','0321654987034','1234','asdasd','Male','2017-10-29 12:57:39',345678555,345678,2,2,2,1,NULL,NULL,NULL,NULL,0),(13,'asdasd','0321654987034','1234','asdasd','Male','2017-10-29 12:57:39',34567,345678,2,2,2,1,NULL,NULL,NULL,NULL,0),(14,'asdasd','0321654987034','1234','asdasd','Male','2017-10-29 12:57:39',34567555,344,2,2,2,1,NULL,NULL,NULL,NULL,0),(15,'asdasd','0321654987034','1234','asdasd','Male','2017-10-29 12:57:39',3456745,345678,2,2,2,1,NULL,NULL,NULL,NULL,0),(16,'asdasd','0321654987034','1234','asdasd','Male','2017-10-29 12:57:39',0,0,2,2,2,1,NULL,NULL,NULL,NULL,0),(17,'asdasd','0321654987034','1234','asdasd','Male','2017-10-29 12:57:39',548,0,2,2,2,1,NULL,NULL,NULL,NULL,0),(18,'asdasd','0321654987034','1234','asdasd','Male','2017-10-29 12:57:39',0,0,2,2,2,1,NULL,NULL,NULL,NULL,0),(19,'asdasd','0321654987034','1234','asdasd','Male','2017-10-29 12:57:39',34567555,344,2,2,2,1,NULL,NULL,NULL,NULL,0),(20,'asdasd','0321654987034','1234','asdasd','Male','2017-10-29 12:57:39',0,0,2,2,2,1,NULL,NULL,NULL,NULL,0),(21,'asdasd','0321654987034','1234','asdasd','Male','2017-10-29 12:57:39',548,789,2,2,2,1,NULL,NULL,NULL,NULL,0),(22,'asdasd','0321654987034','1234','asdasd','Male','2017-10-29 12:57:39',548,789565656,2,2,2,1,NULL,NULL,NULL,NULL,0),(23,'asdasd','0321654987034','1234','asdasd','Male','2017-10-29 12:57:39',0,6565656,2,2,2,1,NULL,NULL,NULL,NULL,0),(24,'asdasd','0321654987034','1234','asdasd','Male','2017-10-29 12:57:39',34567555,34434567,2,2,2,1,NULL,NULL,NULL,NULL,0),(25,'Akash Kumar','4410568694433','03360231273','Hyderabad','Male','2017-10-29 12:57:39',80000,1000,1,1,2,1,NULL,NULL,NULL,NULL,0),(26,'Akash Kuma','4410568694433','03360231273','Hyderabad','Male','2017-10-29 12:57:39',80000,1000,1,1,2,1,NULL,NULL,NULL,NULL,0),(27,'Aakash Khatri 2','4410569684433','03360231273','Hyderabad Sindh Pakistan','Male','2011-10-08 12:57:39',50000,800,3,1,3,3,NULL,NULL,NULL,NULL,1),(28,'Ashok Kumar','4410558791188','03442192511','Tharparkar Sindh Pakistan','Male','2017-10-29 12:57:39',40000,500,2,2,2,5,NULL,NULL,NULL,NULL,1),(29,'Aakash Khatri1','4410569684433','03360231273','Hyderabad Sindh Pakistan','Male','2017-10-29 12:57:39',50000,800,1,1,3,3,NULL,NULL,NULL,NULL,0),(30,NULL,NULL,NULL,NULL,NULL,'2017-10-29 12:57:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(31,NULL,NULL,NULL,NULL,NULL,'2017-10-29 12:57:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(32,'Rida Zaman','4410958678811','03456894802','Hyderabadddd','Female','2015-06-01 20:59:47',50000,1500,3,5,3,6,NULL,NULL,NULL,NULL,1),(33,'Deepak Khatri','4410589675544','03362564802','Hyderabad','Male','2017-10-06 21:13:08',30000,500,1,3,3,3,NULL,NULL,NULL,NULL,1),(34,'Har Kirshan','4410598675522','03362578193','Pithoro District Umerkot Sindh Pakistan','Male','1999-07-29 21:26:50',90000,2000,1,5,3,2,NULL,NULL,NULL,NULL,1),(35,'Pirbhu Lal','5510538694488','03458964852','Hyderabad','Male','2017-10-09 21:47:32',80000,1000,2,6,3,5,NULL,NULL,NULL,NULL,1);

/*Table structure for table `equipment` */

DROP TABLE IF EXISTS `equipment`;

CREATE TABLE `equipment` (
  `equipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `equipment_name` varchar(65) DEFAULT NULL,
  `equipment_type_id` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `warrenty` varchar(45) DEFAULT NULL,
  `manufactures` varchar(45) DEFAULT NULL,
  `quality` varchar(45) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`equipment_id`),
  KEY `equipment_type_id` (`equipment_type_id`),
  CONSTRAINT `equipment_ibfk_1` FOREIGN KEY (`equipment_type_id`) REFERENCES `equipment_type` (`equipment_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `equipment` */

insert  into `equipment`(`equipment_id`,`equipment_name`,`equipment_type_id`,`purchase_date`,`warrenty`,`manufactures`,`quality`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,'Printer',1,'2017-11-01','1 Year','HP','Geniun',1,NULL,NULL,NULL,1),(2,'Ambul',2,'2010-06-14','6 Months','Toyota','Geniun',1,NULL,NULL,NULL,0);

/*Table structure for table `equipment_type` */

DROP TABLE IF EXISTS `equipment_type`;

CREATE TABLE `equipment_type` (
  `equipment_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`equipment_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `equipment_type` */

insert  into `equipment_type`(`equipment_type_id`,`type`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,'Machinary',1,NULL,1,NULL,1),(2,'Vehicle',1,NULL,NULL,NULL,1);

/*Table structure for table `operation` */

DROP TABLE IF EXISTS `operation`;

CREATE TABLE `operation` (
  `operation_id` int(11) NOT NULL AUTO_INCREMENT,
  `operation_type` varchar(145) DEFAULT NULL,
  `charges` varchar(45) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`operation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `operation` */

insert  into `operation`(`operation_id`,`operation_type`,`charges`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,'Major','3000',NULL,NULL,NULL,NULL,1),(2,'Minor','4000',NULL,NULL,NULL,NULL,1),(4,'Surgery','123',1,NULL,NULL,NULL,1);

/*Table structure for table `operation_result` */

DROP TABLE IF EXISTS `operation_result`;

CREATE TABLE `operation_result` (
  `operation_result_id` int(11) NOT NULL AUTO_INCREMENT,
  `appointment_id` int(11) DEFAULT NULL,
  `operation_id` int(11) DEFAULT NULL,
  `operation_date` datetime DEFAULT NULL,
  `result` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `fees` varchar(45) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`operation_result_id`),
  KEY `appointment_id` (`appointment_id`),
  KEY `operation_id` (`operation_id`),
  CONSTRAINT `operation_result_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`),
  CONSTRAINT `operation_result_ibfk_2` FOREIGN KEY (`operation_id`) REFERENCES `operation` (`operation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `operation_result` */

insert  into `operation_result`(`operation_result_id`,`appointment_id`,`operation_id`,`operation_date`,`result`,`status`,`fees`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,3,1,'2017-11-01 14:32:50','Normal','Safe','PAID',NULL,NULL,NULL,NULL,1),(2,4,2,'2017-11-23 00:00:00','Successfull','Safe','UNPAID',NULL,NULL,NULL,NULL,1),(3,6,4,'2017-11-10 12:09:22','','','UNPAID',NULL,NULL,NULL,NULL,1),(4,3,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(5,3,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(6,8,2,'2017-11-14 10:38:15','','','UNPAID',NULL,NULL,NULL,NULL,1),(7,4,4,NULL,NULL,NULL,'UNPAID',NULL,NULL,NULL,NULL,1);

/*Table structure for table `patients` */

DROP TABLE IF EXISTS `patients`;

CREATE TABLE `patients` (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(145) DEFAULT NULL,
  `father_name` varchar(145) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `address` varchar(145) DEFAULT NULL,
  `blood_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`patient_id`),
  KEY `blood_id` (`blood_id`),
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`blood_id`) REFERENCES `blood` (`blood_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `patients` */

insert  into `patients`(`patient_id`,`name`,`father_name`,`contact`,`address`,`blood_id`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,'Aashique Chohan','Moh Ishaque','03452353211','Mir Colony Mirpur Khas',2,1,NULL,1,NULL,1),(2,'Saifullah Abbasi','Allah Warhayo Abbasi','03323039305','Rato Dero District Tharparkar',1,1,NULL,1,NULL,1),(3,'Ab Bari','Moh Salleh','03123908278','Rato Dero District Larkana',5,1,NULL,1,NULL,0),(4,'Sunny Lohana','Ramesh Lohana','03332105214','Mithi District Tharparkar',3,1,NULL,1,NULL,1),(5,'Aashique Chohan','Chander Kumar','03452353219','Mithi Tharparkar',2,1,NULL,1,NULL,0),(6,'Jakho','Lakho','03362568941','Umerkot',1,1,NULL,1,NULL,1),(7,'Deepak Khatri','Kanhiya Lal','03333760281','Hyderabad Sindh Pakistan',2,1,NULL,1,NULL,1);

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(145) DEFAULT NULL,
  `screen_id` int(11) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`permission_id`),
  KEY `screen_id` (`screen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

/*Data for the table `permissions` */

insert  into `permissions`(`permission_id`,`name`,`screen_id`,`active`,`created_by`,`created_date`,`modified_by`,`modified_date`) values (1,'VIEW_EMPLOYEE',NULL,1,NULL,NULL,NULL,NULL),(2,'ADD_EMPLOYEE',NULL,1,NULL,NULL,NULL,NULL),(3,'UPDATE_EMPLOYEE',NULL,1,NULL,NULL,NULL,NULL),(4,'DELETE_EMPLOYEE',NULL,1,NULL,NULL,NULL,NULL),(5,'VIEW_PATIENT',NULL,1,NULL,NULL,NULL,NULL),(6,'ADD_PATIENT',NULL,1,NULL,NULL,NULL,NULL),(7,'UPDATE_PATIENT',NULL,1,NULL,NULL,NULL,NULL),(8,'DELETE_PATIENT',NULL,1,NULL,NULL,NULL,NULL),(9,'VIEW_APPOINTMENT',NULL,1,NULL,NULL,NULL,NULL),(10,'ADD_APPOINTMENT',NULL,1,NULL,NULL,NULL,NULL),(11,'UPDATE_APPOINTMENT',NULL,1,NULL,NULL,NULL,NULL),(12,'DELETE_APPOINTMENT',NULL,1,NULL,NULL,NULL,NULL),(13,'VIEW_EMPLOYEE_TYPE',NULL,1,NULL,NULL,NULL,NULL),(14,'ADD_EMPLOYEE_TYPE',NULL,1,NULL,NULL,NULL,NULL),(15,'UPDATE_EMPLOYEE_TYPE',NULL,1,NULL,NULL,NULL,NULL),(16,'DELETE_EMPLOYEE_TYPE',NULL,1,NULL,NULL,NULL,NULL),(17,'VIEW_BLOOD',NULL,1,NULL,NULL,NULL,NULL),(18,'ADD_BLOOD',NULL,1,NULL,NULL,NULL,NULL),(19,'UPDATE_BLOOD',NULL,1,NULL,NULL,NULL,NULL),(20,'DELETE_BLOOD',NULL,1,NULL,NULL,NULL,NULL),(21,'VIEW_SPECIALIZATION',NULL,1,NULL,NULL,NULL,NULL),(22,'ADD_SPECIALIZATION',NULL,1,NULL,NULL,NULL,NULL),(23,'UPDATE_SPECIALIZATION',NULL,1,NULL,NULL,NULL,NULL),(24,'DELETE_SPECIALIZATION',NULL,1,NULL,NULL,NULL,NULL),(25,'VIEW_WARD',NULL,1,NULL,NULL,NULL,NULL),(26,'ADD_WARD',NULL,1,NULL,NULL,NULL,NULL),(27,'UPDATE_WARD',NULL,1,NULL,NULL,NULL,NULL),(28,'DELETE_WARD',NULL,1,NULL,NULL,NULL,NULL),(29,'VIEW_ROOM_TYPE',NULL,1,NULL,NULL,NULL,NULL),(30,'ADD_ROOM_TYPE',NULL,1,NULL,NULL,NULL,NULL),(31,'UPDATE_ROOM_TYPE',NULL,1,NULL,NULL,NULL,NULL),(32,'DELETE_ROOM_TYPE',NULL,1,NULL,NULL,NULL,NULL),(33,'VIEW_ROOM',NULL,1,NULL,NULL,NULL,NULL),(34,'ADD_ROOM',NULL,1,NULL,NULL,NULL,NULL),(35,'UPDATE_ROOM',NULL,1,NULL,NULL,NULL,NULL),(36,'DELETE_ROOM',NULL,1,NULL,NULL,NULL,NULL),(37,'VIEW_OPERATION',NULL,1,NULL,NULL,NULL,NULL),(38,'ADD_OPERATION',NULL,1,NULL,NULL,NULL,NULL),(39,'UPDATE_OPERATION',NULL,1,NULL,NULL,NULL,NULL),(40,'DELETE_OPERATION',NULL,1,NULL,NULL,NULL,NULL),(41,'VIEW_OPERATION_RESULT',NULL,1,NULL,NULL,NULL,NULL),(42,'ADD_OPERATION_RESULT',NULL,1,NULL,NULL,NULL,NULL),(43,'DELETE_OPERATION_RESULT',NULL,1,NULL,NULL,NULL,NULL),(44,'UPDATE_OPERATION_RESULT',NULL,1,NULL,NULL,NULL,NULL),(45,'VIEW_EQUIPMENT_TYPE',NULL,1,NULL,NULL,NULL,NULL),(46,'ADD_EQUIPMENT_TYPE',NULL,1,NULL,NULL,NULL,NULL),(47,'UPDATE_EQUIPMENT_TYPE',NULL,1,NULL,NULL,NULL,NULL),(48,'DELETE_EQUIPMENT_TYPE',NULL,1,NULL,NULL,NULL,NULL),(49,'VIEW_EQUIPMENT',NULL,1,NULL,NULL,NULL,NULL),(50,'ADD_EQUIPMENT',NULL,1,NULL,NULL,NULL,NULL),(51,'UPDATE_EQUIPMENT',NULL,1,NULL,NULL,NULL,NULL),(53,'DELETE_EQUIPMENT',NULL,1,NULL,NULL,NULL,NULL),(54,'VIEW_ROOM_ALOTMENT',NULL,1,NULL,NULL,NULL,NULL),(55,'ADD_ROOM_ALOTMENT',NULL,1,NULL,NULL,NULL,NULL),(56,'UPDATE_ROOM_ALOTMENT',NULL,1,NULL,NULL,NULL,NULL),(57,'DELETE_ROOM_ALOTMENT',NULL,1,NULL,NULL,NULL,NULL),(58,'VIEW_SHIFT',NULL,1,NULL,NULL,NULL,NULL),(59,'ADD_SHIFT',NULL,1,NULL,NULL,NULL,NULL),(60,'UPDATE_SHIFT',NULL,1,NULL,NULL,NULL,NULL),(61,'DELETE_SHIFT',NULL,1,NULL,NULL,NULL,NULL),(62,'VIEW_TEST',NULL,1,NULL,NULL,NULL,NULL),(63,'ADD_TEST',NULL,1,NULL,NULL,NULL,NULL),(64,'UPDATE_TEST',NULL,1,NULL,NULL,NULL,NULL),(65,'DELETE_TEST',NULL,1,NULL,NULL,NULL,NULL),(66,'VIEW_TEST_PATIENT',NULL,1,NULL,NULL,NULL,NULL),(67,'ADD_TEST_PATIENT',NULL,1,NULL,NULL,NULL,NULL),(68,'UPDATE_TEST_PATIENT',NULL,1,NULL,NULL,NULL,NULL),(69,'DELETE_TEST_PATIENT',NULL,1,NULL,NULL,NULL,NULL),(70,'VIEW_USER',NULL,1,NULL,NULL,NULL,NULL),(71,'ADD_USER',NULL,1,NULL,NULL,NULL,NULL),(72,'UPDATE_USER',NULL,1,NULL,NULL,NULL,NULL),(73,'DELETE_USER',NULL,1,NULL,NULL,NULL,NULL),(74,'VIEW_USER_PERMISSION',NULL,1,NULL,NULL,NULL,NULL),(75,'ADD_USER_PERMISSION',NULL,1,NULL,NULL,NULL,NULL),(77,'DELETE_USER_PERMISSION',NULL,1,NULL,NULL,NULL,NULL),(78,'VIEW_USER_TYPE',NULL,1,NULL,NULL,NULL,NULL),(79,'ADD_USER_TYPE',NULL,1,NULL,NULL,NULL,NULL),(80,'UPDATE_USER_TYPE',NULL,1,NULL,NULL,NULL,NULL),(81,'DELETE_USER_TYPE',NULL,1,NULL,NULL,NULL,NULL),(82,'VIEW_PATIENT_BILL',NULL,1,NULL,NULL,NULL,NULL);

/*Table structure for table `room_alotment` */

DROP TABLE IF EXISTS `room_alotment`;

CREATE TABLE `room_alotment` (
  `alotment_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) DEFAULT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `alotment_date` date DEFAULT NULL,
  `discharge_date` date DEFAULT NULL,
  `fees` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`alotment_id`),
  KEY `room_id` (`room_id`),
  CONSTRAINT `room_alotment_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `room_alotment` */

insert  into `room_alotment`(`alotment_id`,`room_id`,`appointment_id`,`alotment_date`,`discharge_date`,`fees`,`status`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,1,3,'2017-11-02','2017-11-05','PAID','Best',NULL,NULL,NULL,NULL,1),(2,2,4,'2017-11-08','2017-11-10','UNPAID','Clean',1,NULL,1,NULL,1),(3,3,6,'2017-11-09','2017-11-17','PAID','',1,NULL,NULL,NULL,1),(5,2,8,'2017-11-10','2017-11-15','UNPAID','',1,NULL,NULL,NULL,1);

/*Table structure for table `room_type` */

DROP TABLE IF EXISTS `room_type`;

CREATE TABLE `room_type` (
  `room_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_type_name` varchar(45) DEFAULT NULL,
  `charges` varchar(45) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`room_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `room_type` */

insert  into `room_type`(`room_type_id`,`room_type_name`,`charges`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,'AC Room','2000',NULL,NULL,NULL,NULL,1),(2,'Normat Room','1500',NULL,NULL,NULL,NULL,1),(3,'2AC Room','2000',NULL,NULL,NULL,NULL,0),(4,'2AC Room','2000',NULL,NULL,NULL,NULL,0),(5,'2AC Room','2000',NULL,NULL,NULL,NULL,0),(6,'Sunny','200',NULL,NULL,NULL,NULL,0),(7,'Rafay','4000',NULL,NULL,NULL,NULL,0),(8,'Sunny','2000',NULL,NULL,NULL,NULL,0),(9,'VVIP','500',NULL,NULL,NULL,NULL,0),(10,'sda','asasd',NULL,NULL,NULL,NULL,0),(11,'asda','33333333',NULL,NULL,NULL,NULL,0),(12,'ACc Roomg','2000',NULL,NULL,NULL,NULL,0),(13,'Luxrey','5000',NULL,NULL,NULL,NULL,1);

/*Table structure for table `rooms` */

DROP TABLE IF EXISTS `rooms`;

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_type_id` int(11) DEFAULT NULL,
  `room_no` varchar(45) DEFAULT NULL,
  `ward_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`room_id`),
  KEY `room_type_id` (`room_type_id`),
  KEY `ward_id` (`ward_id`),
  CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`),
  CONSTRAINT `rooms_ibfk_2` FOREIGN KEY (`ward_id`) REFERENCES `wards` (`ward_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `rooms` */

insert  into `rooms`(`room_id`,`room_type_id`,`room_no`,`ward_id`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,2,'11',1,1,NULL,1,NULL,1),(2,2,'109',2,1,NULL,1,NULL,1),(3,2,'100',1,1,NULL,1,NULL,1),(4,7,'106',1,1,NULL,1,NULL,0),(5,1,'106',1,1,NULL,1,NULL,1);

/*Table structure for table `screens` */

DROP TABLE IF EXISTS `screens`;

CREATE TABLE `screens` (
  `screen_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`screen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `screens` */

/*Table structure for table `shifts` */

DROP TABLE IF EXISTS `shifts`;

CREATE TABLE `shifts` (
  `shift_id` int(11) NOT NULL AUTO_INCREMENT,
  `shift` varchar(45) DEFAULT NULL,
  `timing_from` varchar(45) DEFAULT NULL,
  `timing_to` varchar(45) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`shift_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `shifts` */

insert  into `shifts`(`shift_id`,`shift`,`timing_from`,`timing_to`,`employee_id`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,'Morning','12:00am','3:30am',NULL,NULL,NULL,1,NULL,1),(2,'Evening','12:00pm','12:00am',NULL,NULL,NULL,NULL,NULL,1),(3,'Morning','12:00am','12:00pm',NULL,1,NULL,NULL,NULL,1);

/*Table structure for table `specializations` */

DROP TABLE IF EXISTS `specializations`;

CREATE TABLE `specializations` (
  `specialization_id` int(11) NOT NULL AUTO_INCREMENT,
  `specialization` varchar(145) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`specialization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `specializations` */

insert  into `specializations`(`specialization_id`,`specialization`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,'Cardiologist',NULL,NULL,NULL,NULL,1),(2,'Addiction  psychiatrist',NULL,NULL,1,NULL,1),(3,'Adolescent medicine specialist',NULL,NULL,1,NULL,1),(4,'Anesthesiologist',NULL,NULL,NULL,NULL,1),(5,'Cardiac electrophysiologist',NULL,NULL,NULL,NULL,1),(6,'Cardiovascular surgeon',NULL,NULL,NULL,NULL,1),(7,'Colon and rectal surgeon',NULL,NULL,1,NULL,1),(8,'Critical care medicine specialisttt',NULL,NULL,1,NULL,1),(9,'Dermatologist',NULL,NULL,NULL,NULL,1),(10,'Developmental pediatrician',NULL,NULL,NULL,NULL,1),(11,'Emergency medicine specialist',NULL,NULL,1,NULL,1),(12,'sdfsdf',1,NULL,NULL,NULL,0),(13,'Cardiologistdsd',1,NULL,1,NULL,0);

/*Table structure for table `test` */

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(145) DEFAULT NULL,
  `charge` varchar(45) DEFAULT NULL,
  `duration` varchar(45) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `test` */

insert  into `test`(`test_id`,`name`,`charge`,`duration`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,'Electrocardiography','500','2 Days',NULL,NULL,NULL,NULL,1),(2,'Computed tomography','1000','7 Days',NULL,NULL,NULL,NULL,1),(3,'Malaria','100','1 Hour',NULL,NULL,NULL,NULL,1),(4,'Physical examination','800','2 Hours',NULL,NULL,NULL,NULL,1);

/*Table structure for table `test_patient` */

DROP TABLE IF EXISTS `test_patient`;

CREATE TABLE `test_patient` (
  `test_patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) DEFAULT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `result_date` date DEFAULT NULL,
  `outcome` varchar(145) DEFAULT NULL,
  `status` varchar(145) DEFAULT NULL,
  `fees` varchar(45) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`test_patient_id`),
  KEY `test_id` (`test_id`),
  KEY `appointment_id` (`appointment_id`),
  CONSTRAINT `test_patient_ibfk_1` FOREIGN KEY (`test_id`) REFERENCES `test` (`test_id`),
  CONSTRAINT `test_patient_ibfk_2` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `test_patient` */

insert  into `test_patient`(`test_patient_id`,`test_id`,`appointment_id`,`test_date`,`result_date`,`outcome`,`status`,`fees`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,1,3,'2017-11-02','2017-11-05','Normal','Safe','UNPAID',NULL,NULL,NULL,NULL,1),(2,1,6,'2017-11-07','2017-11-08','Negative','Safe','PAID',1,NULL,1,NULL,1),(3,4,4,'2017-11-08','2017-11-10','Fit','Ok','UNPAID',1,NULL,NULL,NULL,1),(4,2,3,NULL,NULL,NULL,NULL,'UNPAID',NULL,NULL,NULL,NULL,1),(5,2,3,NULL,NULL,NULL,NULL,'UNPAID',NULL,NULL,NULL,NULL,1),(6,1,8,'2017-11-03','2017-11-10','99','99','UNPAID',1,NULL,NULL,NULL,1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `name` varchar(145) DEFAULT NULL,
  `password` varchar(145) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_type_id` (`user_type_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`user_type_id`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_type_id`,`employee_id`,`name`,`password`,`active`,`created_by`,`created_date`,`modified_by`,`modified_date`) values (1,1,27,'akash_khatri','1234',1,1,NULL,1,NULL),(2,2,28,'ashok_20','2244',1,1,NULL,1,NULL),(3,2,32,'ridz','kaimkhani',0,1,NULL,1,NULL),(4,3,34,'kirshana','radha',1,1,NULL,NULL,NULL),(5,2,34,'hari','6789',1,1,NULL,NULL,NULL);

/*Table structure for table `user_permission` */

DROP TABLE IF EXISTS `user_permission`;

CREATE TABLE `user_permission` (
  `user_permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_permission_id`),
  KEY `permission_id` (`permission_id`),
  KEY `user_type_id` (`user_type_id`),
  CONSTRAINT `user_permission_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`permission_id`),
  CONSTRAINT `user_permission_ibfk_2` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=420 DEFAULT CHARSET=utf8;

/*Data for the table `user_permission` */

insert  into `user_permission`(`user_permission_id`,`user_type_id`,`permission_id`,`active`,`created_by`,`created_date`,`modified_by`,`modified_date`) values (326,2,5,1,NULL,NULL,NULL,NULL),(327,2,9,1,NULL,NULL,NULL,NULL),(328,2,41,1,NULL,NULL,NULL,NULL),(329,2,54,1,NULL,NULL,NULL,NULL),(330,2,66,1,NULL,NULL,NULL,NULL),(331,3,5,1,NULL,NULL,NULL,NULL),(332,3,9,1,NULL,NULL,NULL,NULL),(333,3,41,1,NULL,NULL,NULL,NULL),(334,3,54,1,NULL,NULL,NULL,NULL),(335,3,66,1,NULL,NULL,NULL,NULL),(336,1,1,1,NULL,NULL,NULL,NULL),(337,1,2,1,NULL,NULL,NULL,NULL),(338,1,3,1,NULL,NULL,NULL,NULL),(339,1,4,1,NULL,NULL,NULL,NULL),(340,1,5,1,NULL,NULL,NULL,NULL),(341,1,6,1,NULL,NULL,NULL,NULL),(342,1,7,1,NULL,NULL,NULL,NULL),(343,1,8,1,NULL,NULL,NULL,NULL),(344,1,9,1,NULL,NULL,NULL,NULL),(345,1,10,1,NULL,NULL,NULL,NULL),(346,1,11,1,NULL,NULL,NULL,NULL),(347,1,12,1,NULL,NULL,NULL,NULL),(348,1,13,1,NULL,NULL,NULL,NULL),(349,1,14,1,NULL,NULL,NULL,NULL),(350,1,15,1,NULL,NULL,NULL,NULL),(351,1,16,1,NULL,NULL,NULL,NULL),(352,1,17,1,NULL,NULL,NULL,NULL),(353,1,18,1,NULL,NULL,NULL,NULL),(354,1,19,1,NULL,NULL,NULL,NULL),(355,1,20,1,NULL,NULL,NULL,NULL),(356,1,21,1,NULL,NULL,NULL,NULL),(357,1,22,1,NULL,NULL,NULL,NULL),(358,1,23,1,NULL,NULL,NULL,NULL),(359,1,24,1,NULL,NULL,NULL,NULL),(360,1,25,1,NULL,NULL,NULL,NULL),(361,1,26,1,NULL,NULL,NULL,NULL),(362,1,27,1,NULL,NULL,NULL,NULL),(363,1,28,1,NULL,NULL,NULL,NULL),(364,1,29,1,NULL,NULL,NULL,NULL),(365,1,30,1,NULL,NULL,NULL,NULL),(366,1,31,1,NULL,NULL,NULL,NULL),(367,1,32,1,NULL,NULL,NULL,NULL),(368,1,33,1,NULL,NULL,NULL,NULL),(369,1,34,1,NULL,NULL,NULL,NULL),(370,1,35,1,NULL,NULL,NULL,NULL),(371,1,36,1,NULL,NULL,NULL,NULL),(372,1,37,1,NULL,NULL,NULL,NULL),(373,1,38,1,NULL,NULL,NULL,NULL),(374,1,39,1,NULL,NULL,NULL,NULL),(375,1,40,1,NULL,NULL,NULL,NULL),(376,1,41,1,NULL,NULL,NULL,NULL),(377,1,42,1,NULL,NULL,NULL,NULL),(378,1,43,1,NULL,NULL,NULL,NULL),(379,1,44,1,NULL,NULL,NULL,NULL),(380,1,45,1,NULL,NULL,NULL,NULL),(381,1,46,1,NULL,NULL,NULL,NULL),(382,1,47,1,NULL,NULL,NULL,NULL),(383,1,48,1,NULL,NULL,NULL,NULL),(384,1,49,1,NULL,NULL,NULL,NULL),(385,1,50,1,NULL,NULL,NULL,NULL),(386,1,51,1,NULL,NULL,NULL,NULL),(387,1,53,1,NULL,NULL,NULL,NULL),(388,1,54,1,NULL,NULL,NULL,NULL),(389,1,56,1,NULL,NULL,NULL,NULL),(390,1,58,1,NULL,NULL,NULL,NULL),(391,1,59,1,NULL,NULL,NULL,NULL),(392,1,60,1,NULL,NULL,NULL,NULL),(393,1,61,1,NULL,NULL,NULL,NULL),(394,1,62,1,NULL,NULL,NULL,NULL),(395,1,63,1,NULL,NULL,NULL,NULL),(396,1,64,1,NULL,NULL,NULL,NULL),(397,1,65,1,NULL,NULL,NULL,NULL),(398,1,66,1,NULL,NULL,NULL,NULL),(399,1,67,1,NULL,NULL,NULL,NULL),(400,1,68,1,NULL,NULL,NULL,NULL),(401,1,69,1,NULL,NULL,NULL,NULL),(402,1,70,1,NULL,NULL,NULL,NULL),(403,1,71,1,NULL,NULL,NULL,NULL),(404,1,72,1,NULL,NULL,NULL,NULL),(405,1,73,1,NULL,NULL,NULL,NULL),(406,1,74,1,NULL,NULL,NULL,NULL),(407,1,75,1,NULL,NULL,NULL,NULL),(408,1,77,1,NULL,NULL,NULL,NULL),(409,1,78,1,NULL,NULL,NULL,NULL),(410,1,79,1,NULL,NULL,NULL,NULL),(411,1,80,1,NULL,NULL,NULL,NULL),(412,1,81,1,NULL,NULL,NULL,NULL),(413,1,82,1,NULL,NULL,NULL,NULL),(414,2,6,1,NULL,NULL,NULL,NULL),(415,2,10,1,NULL,NULL,NULL,NULL),(416,2,11,1,NULL,NULL,NULL,NULL),(417,2,7,1,NULL,NULL,NULL,NULL),(418,1,55,1,NULL,NULL,NULL,NULL),(419,1,57,1,NULL,NULL,NULL,NULL);

/*Table structure for table `user_types` */

DROP TABLE IF EXISTS `user_types`;

CREATE TABLE `user_types` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(45) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `user_types` */

insert  into `user_types`(`user_type_id`,`user_type`,`active`,`created_by`,`created_date`,`modified_by`,`modified_date`) values (1,'Admin',1,NULL,NULL,1,NULL),(2,'Doctor',1,1,NULL,1,NULL),(3,'Receptionist',1,1,NULL,NULL,NULL);

/*Table structure for table `wards` */

DROP TABLE IF EXISTS `wards`;

CREATE TABLE `wards` (
  `ward_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(145) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`ward_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `wards` */

insert  into `wards`(`ward_id`,`name`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,'Cardiology',NULL,NULL,NULL,NULL,1),(2,'Burn Ward',NULL,NULL,NULL,NULL,1),(3,'Chaplaincy',NULL,NULL,NULL,NULL,1),(4,'Critical care',NULL,NULL,NULL,NULL,1),(5,'Breast screening',NULL,NULL,NULL,NULL,1),(6,'Anaesthetics',NULL,NULL,NULL,NULL,1),(7,'Accident and emergency (A&E)',NULL,NULL,NULL,NULL,1),(8,'Diagnostic imaging',NULL,NULL,NULL,NULL,1),(9,'Discharge lounge',NULL,NULL,NULL,NULL,1),(10,'Ear nose and throat (ENT)',NULL,NULL,NULL,NULL,1),(11,'Elderly services department',NULL,NULL,NULL,NULL,1),(12,'Gastroenterology',NULL,NULL,NULL,NULL,1),(13,'General surgery',NULL,NULL,NULL,NULL,1),(14,'Gynaecology',NULL,NULL,NULL,NULL,1),(15,'Haematology',NULL,NULL,NULL,NULL,1);

/* Function  structure for function  `totalRoomCharges` */

/*!50003 DROP FUNCTION IF EXISTS `totalRoomCharges` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `totalRoomCharges`(appointmentId Int (11)) RETURNS int(11)
BEGIN
  declare sumRoomCharges int (11) ;
  select 
  SUM(
    if(
      ra.fees = "PAID",
      null,
      
        DATEDIFF(
          ra.discharge_date,
          ra.alotment_date
        ) * rt.charges
      ) 
    ) INTO sumRoomCharges
  FROM
    `room_alotment` ra,
    `rooms` r,
    `room_type` rt,
    `appointments` ap 
  WHERE ra.`room_id` = r.`room_id` 
    AND r.`room_type_id` = rt.`room_type_id` 
    AND ra.`appointment_id` = ap.`appointment_id` 
    AND ap.`appointment_id` = appointmentId
    and ra.active = "1"
    group by ap.appointment_id;
  return sumRoomCharges;
END */$$
DELIMITER ;

/* Function  structure for function  `totalTestCharges` */

/*!50003 DROP FUNCTION IF EXISTS `totalTestCharges` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `totalTestCharges`(appointmentId int (11)) RETURNS int(11)
BEGIN
  declare sumTestCharges int (11) ;
  select 
    sum(if(tp.fees = "PAID", null, t.charge)) into sumTestCharges 
  FROM
    `test_patient` tp,
    `test` t,
    `appointments` ap 
  WHERE tp.`appointment_id` = ap.`appointment_id` 
    AND tp.`test_id` = t.`test_id` 
    AND ap.`appointment_id` = appointmentId 
    and tp.active = "1"
  GROUP BY ap.`appointment_id` ;
  return sumTestCharges ;
END */$$
DELIMITER ;

/* Function  structure for function  `totatOperationCharges` */

/*!50003 DROP FUNCTION IF EXISTS `totatOperationCharges` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `totatOperationCharges`(appointmentId int (11)) RETURNS int(11)
BEGIN
  declare sumOperationCharges int (11) ;
  select 
    sum(
      if(opr.fees = "PAID", null, op.charges)
    ) into sumOperationCharges 
  FROM
    operation_result opr,
    operation op,
    appointments ap 
  WHERE opr.`appointment_id` = ap.`appointment_id` 
    AND opr.`operation_id` = op.`operation_id` 
    AND ap.`appointment_id` = appointmentId 
    and opr.active = "1"
  GROUP BY ap.`appointment_id` ;
  return sumOperationCharges;
  END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
