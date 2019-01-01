/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.15-log : Database - shopmanagementsystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shopmanagementsystem` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shopmanagementsystem`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_category_id` int(11) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_category_id` (`parent_category_id`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`parent_category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`category_id`,`parent_category_id`,`category_name`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,NULL,'select category',1,'2017-12-08 14:24:12',1,NULL,1),(2,NULL,'Boys',1,'2017-12-13 14:24:19',1,NULL,1),(3,2,'shit',1,'2017-11-25 20:40:38',1,NULL,1),(4,2,'shirts',1,'2017-11-25 20:47:13',1,NULL,1),(5,2,'Genus',1,'2017-11-25 20:50:53',1,NULL,1),(7,NULL,'Girls',1,'2017-11-25 20:57:31',1,NULL,1),(8,NULL,'Girl',10,'2017-11-26 22:21:28',10,NULL,1),(9,NULL,'Electronics',10,'2017-11-26 22:22:37',10,NULL,1),(10,7,'Shirts',10,'2017-11-26 22:23:25',10,NULL,1),(11,2,'Gernal',10,'2017-11-26 22:23:46',10,NULL,1),(12,NULL,'abc',10,'2017-11-26 22:24:53',10,NULL,1),(13,2,'Genus',10,'2017-11-26 22:25:07',10,NULL,1),(14,2,'Face wash',10,'2017-11-26 22:25:24',10,NULL,1),(16,7,'shocks',10,'2017-11-26 22:31:01',10,NULL,1),(17,7,'lux soap',10,'2017-11-26 22:31:16',10,NULL,1),(18,7,'shocks',10,'2017-11-26 22:31:57',10,NULL,1),(20,2,'shoes',10,'2017-11-26 22:36:15',10,NULL,1),(21,NULL,'Electro',10,'2017-11-26 22:36:26',10,'2017-11-28 10:38:43',0),(22,7,'Gernal',10,'2017-11-28 10:37:06',10,'2017-11-28 10:37:18',1);

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `company` */

insert  into `company`(`company_id`,`company_name`,`address`,`contact`,`contact_person`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (2,'Soft','Karachi','098765432','Raheem',10,'2017-11-27 14:45:19',10,NULL,1),(3,'Nokia','Karachi','098765432','Raheem',10,'2017-11-27 14:45:35',10,'2017-11-27 14:53:52',1),(4,'Samsung','Karachi','098765432','Raheem',10,'2017-11-27 14:47:58',10,'2017-11-27 14:54:03',0),(5,'LU','Karachi','+923576726345','Sana',10,'2017-12-15 16:26:05',10,NULL,1),(6,'Samsung','Karachi','043534534','Unknown',NULL,NULL,NULL,NULL,1);

/*Table structure for table `discount` */

DROP TABLE IF EXISTS `discount`;

CREATE TABLE `discount` (
  `discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `discount` */

insert  into `discount`(`discount_id`,`discount_type`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,'Percent',10,'2017-11-27 16:56:33',10,'2017-12-06 22:34:31',0),(2,'Amount',10,'2017-11-27 16:57:02',10,'2017-12-06 22:34:35',0),(3,'Amount',10,'2017-12-06 22:34:40',10,'2017-12-08 10:39:43',0),(4,'Percentage',10,'2017-12-06 22:34:52',10,'2017-12-08 10:39:46',0),(5,'--Select--',10,'2017-12-08 10:40:06',10,'2017-12-15 09:15:51',1),(6,'Amount',10,'2017-12-08 10:40:14',10,NULL,1),(7,'Percentage',10,'2017-12-08 10:40:24',10,NULL,1),(8,'amounting',NULL,NULL,NULL,NULL,1);

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `order_code` varchar(255) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  KEY `discount_id` (`discount_id`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`discount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `order` */

insert  into `order`(`order_id`,`user_id`,`order_code`,`order_date`,`discount_id`,`discount`,`total_price`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,10,'3f4a','2018-03-14',NULL,NULL,NULL,10,'2017-11-27 22:46:41',10,'2017-11-27 22:55:40',1),(2,10,'56gu','2017-11-22',NULL,NULL,NULL,10,'2017-11-27 22:54:00',10,'2017-11-27 22:54:55',0),(3,10,'34yu','2017-11-02',NULL,NULL,NULL,10,'2017-11-27 22:57:58',10,'2017-11-28 00:52:18',0),(4,10,'5678','2017-11-23',NULL,NULL,NULL,10,'2017-11-27 22:59:05',10,'2017-11-27 22:59:25',0),(5,10,'56fy','2017-11-24',NULL,NULL,NULL,10,'2017-11-27 22:59:15',10,'2017-11-28 00:52:13',0),(6,10,'67y','2017-11-02',NULL,NULL,NULL,10,'2017-11-27 23:00:01',10,'2017-11-28 00:52:06',0),(7,10,'rt56','2017-11-17',NULL,NULL,NULL,10,'2017-11-27 23:00:10',10,'2017-11-28 00:52:09',0),(8,10,'gtuj','2018-03-08',2,60,NULL,10,'2017-11-28 00:38:50',10,'2017-11-28 00:51:51',1),(9,9,'67rt','2017-11-09',2,56,NULL,10,'2017-11-28 22:35:02',10,'2017-11-28 22:35:21',0),(10,11,'786','2017-11-08',2,5,NULL,10,'2017-11-30 02:23:45',10,NULL,1),(11,11,'786','2017-11-16',2,5,NULL,10,'2017-11-30 02:27:36',10,NULL,1),(12,11,'786','2017-11-16',2,5,NULL,10,'2017-11-30 02:29:51',10,NULL,1),(13,11,'786','2017-11-30',2,5,NULL,10,'2017-11-30 02:31:55',10,NULL,1),(14,11,'786','2017-11-30',2,5,NULL,10,'2017-11-30 02:33:58',10,NULL,1),(15,11,'786','2017-11-30',2,5,NULL,10,'2017-11-30 02:35:06',10,NULL,1),(16,11,'6750','2017-11-23',1,5,NULL,10,'2017-11-30 02:37:34',10,NULL,1),(17,11,'56','2017-11-30',2,5,NULL,10,'2017-11-30 02:40:21',10,NULL,1),(18,11,'23','2017-11-30',2,5,NULL,10,'2017-11-30 02:42:32',10,NULL,1),(19,11,'52','2017-11-30',2,5,NULL,10,'2017-11-30 02:43:41',10,NULL,1),(20,12,'7890','2017-12-01',2,5,NULL,10,'2017-11-30 12:00:51',10,NULL,1),(21,12,'6754','2017-11-03',2,5,NULL,10,'2017-11-30 18:51:41',10,NULL,1),(22,12,'456','2017-11-09',1,5,NULL,10,'2017-11-30 19:10:28',10,NULL,1),(23,12,'sa','2017-11-30',1,12,200,10,'2017-11-30 20:10:16',10,NULL,1),(24,12,'or-1380','2017-12-07',3,5,NULL,10,'2017-12-07 16:36:45',10,NULL,1),(25,12,'or-2663','2017-12-07',3,5,NULL,10,'2017-12-07 16:46:57',10,NULL,1),(26,12,'or-7033','2017-12-07',3,5,NULL,10,'2017-12-07 16:50:41',10,NULL,1),(27,12,'or-7873','2017-12-07',3,5,NULL,10,'2017-12-07 16:53:02',10,NULL,1),(28,12,'or-5005','2017-12-07',3,5,NULL,10,'2017-12-07 16:56:20',10,NULL,1),(29,12,'or-7273','2017-12-07',3,5,NULL,10,'2017-12-07 16:57:53',10,NULL,1),(30,12,'or-5532','2017-12-08',3,5,140,10,'2017-12-08 09:13:15',10,NULL,1),(31,14,'or-3235','2017-12-22',5,0,36,10,'2017-12-22 20:54:39',10,NULL,1),(34,12,'or-2015','2017-12-22',6,10,62,10,'2017-12-22 20:56:34',10,NULL,1);

/*Table structure for table `order_details` */

DROP TABLE IF EXISTS `order_details`;

CREATE TABLE `order_details` (
  `order_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  CONSTRAINT `order_details_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `order_details` */

insert  into `order_details`(`order_detail_id`,`order_id`,`product_id`,`quantity`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,8,4,3,10,'2017-11-28 21:51:07',10,'2017-11-28 21:59:29',1),(2,8,4,30,10,'2017-11-28 21:59:40',10,'2017-11-28 21:59:44',0),(3,15,4,2,10,'2017-11-30 02:35:08',10,NULL,1),(4,15,4,2,10,'2017-11-30 02:35:09',10,NULL,1),(5,16,4,1,10,'2017-11-30 02:37:36',10,NULL,1),(6,16,4,1,10,'2017-11-30 02:37:37',10,NULL,1),(7,17,4,2,10,'2017-11-30 02:40:23',10,NULL,1),(8,17,4,2,10,'2017-11-30 02:40:24',10,NULL,1),(9,18,4,1,10,'2017-11-30 02:42:33',10,NULL,1),(10,18,4,1,10,'2017-11-30 02:42:34',10,NULL,1),(11,18,5,1,10,'2017-11-30 02:42:35',10,NULL,1),(12,19,5,3,10,'2017-11-30 02:43:42',10,NULL,1),(13,19,4,3,10,'2017-11-30 02:43:43',10,NULL,1),(14,19,4,3,10,'2017-11-30 02:43:45',10,NULL,1),(15,19,5,3,10,'2017-11-30 02:43:45',10,NULL,1),(16,20,5,1,10,'2017-11-30 12:00:52',10,NULL,1),(17,20,4,1,10,'2017-11-30 12:00:54',10,NULL,1),(18,20,4,1,10,'2017-11-30 12:00:55',10,NULL,1),(19,21,5,3,10,'2017-11-30 18:51:43',10,NULL,1),(20,21,4,2,10,'2017-11-30 18:51:44',10,NULL,1),(21,22,5,2,10,'2017-11-30 19:10:30',10,NULL,1),(22,22,5,2,10,'2017-11-30 19:10:31',10,NULL,1),(23,23,4,2,10,'2017-11-30 20:10:21',10,NULL,1),(24,24,4,2,10,'2017-12-07 16:36:48',10,NULL,1),(25,24,4,2,10,'2017-12-07 16:36:48',10,NULL,1),(26,25,4,2,10,'2017-12-07 16:47:01',10,NULL,1),(27,25,4,2,10,'2017-12-07 16:47:01',10,NULL,1),(28,25,5,2,10,'2017-12-07 16:47:01',10,NULL,1),(29,26,4,2,10,'2017-12-07 16:50:44',10,NULL,1),(30,26,4,2,10,'2017-12-07 16:50:44',10,NULL,1),(31,26,5,1,10,'2017-12-07 16:50:44',10,NULL,1),(32,27,4,1,10,'2017-12-07 16:53:05',10,NULL,1),(33,27,4,1,10,'2017-12-07 16:53:06',10,NULL,1),(34,27,5,1,10,'2017-12-07 16:53:06',10,NULL,1),(35,28,4,1,10,'2017-12-07 16:56:22',10,NULL,1),(36,28,4,1,10,'2017-12-07 16:56:22',10,NULL,1),(37,29,1,2,10,'2017-12-07 16:57:55',10,NULL,1),(38,29,4,1,10,'2017-12-07 16:57:55',10,NULL,1),(39,30,1,2,10,'2017-12-08 09:13:16',10,NULL,1),(40,31,8,3,10,'2017-12-22 20:54:42',10,NULL,1),(41,31,8,3,10,'2017-12-22 20:56:08',10,NULL,1);

/*Table structure for table `permission` */

DROP TABLE IF EXISTS `permission`;

CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `permission` */

insert  into `permission`(`permission_id`,`permission_name`) values (1,'VIEW_USER'),(2,'VIEW_ROLE'),(3,'VIEW_USER_TYPE'),(4,'VIEW_PERMISSION'),(5,'VIEW_PRODUCT'),(6,'VIEW_DISCUNT'),(7,'VIEW_CATEGORY'),(8,'VIEW_COMPANY'),(9,'VIEW_ORDER'),(10,'VIEW_ORDER_DETAILS'),(11,'VIEW_STOCK'),(12,'VIEW_STOCK_DETAIL'),(13,'ADD'),(14,'UPDATE'),(15,'DELETE');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `net_price` int(11) DEFAULT NULL,
  `consumer_price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`product_id`,`category_id`,`product_name`,`net_price`,`consumer_price`,`quantity`,`expiry_date`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,9,'Machine',800,850,20,'2018-07-18',10,'2017-11-28 16:00:19',10,'2017-12-13 22:28:35',1),(4,2,'soap',55,65,9,'2018-04-25',10,'2017-11-28 18:23:05',10,'2017-12-07 19:33:30',1),(5,2,'Toothpast',38,40,2,'2018-04-12',10,'2017-11-30 01:15:52',10,'2017-12-07 16:53:06',1),(6,2,'cheaps',18,20,0,'2017-12-02',10,'2017-12-02 15:39:12',10,'2017-12-02 15:40:05',1),(7,2,'Biscuit',35,40,30,'2018-12-13',10,'2017-12-15 16:23:44',10,'2017-12-15 16:27:01',1),(8,8,'TEnnis Ball',11,12,0,'2017-12-22',10,'2017-12-22 20:52:05',10,'2017-12-22 20:56:08',1),(9,2,'Machine',800,850,40,NULL,NULL,NULL,NULL,NULL,0),(10,2,'mm',88,90,88,NULL,NULL,NULL,NULL,NULL,0),(11,7,'klsa',987,98,22,NULL,NULL,NULL,NULL,NULL,0),(12,2,'tyuiu',677,887,2323,NULL,NULL,NULL,NULL,NULL,0),(13,9,'ewrwer',423,56,4,'2018-07-19',NULL,NULL,NULL,NULL,1);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`role_id`,`role_name`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,'admin',10,'2017-12-15 01:37:18',10,'2018-01-08 22:11:18',1),(2,'Manager',10,'2017-12-15 01:37:14',10,'2018-01-08 22:11:22',0),(3,'No Roll',10,'2017-12-15 01:37:09',10,'2018-01-08 22:11:32',0),(4,'Shock',10,'2017-11-27 21:00:25',10,'2018-01-08 22:11:28',0),(5,'partnership',10,'2017-11-27 21:05:31',10,'2018-01-08 22:11:25',0),(8,'Manager',10,'2018-01-08 22:12:12',10,NULL,1),(9,'Employee',10,'2018-01-08 22:12:19',10,NULL,1),(10,'No Roll',10,'2018-01-08 22:12:28',10,NULL,1),(14,'Accountant Manager',NULL,NULL,NULL,NULL,1);

/*Table structure for table `role_permission` */

DROP TABLE IF EXISTS `role_permission`;

CREATE TABLE `role_permission` (
  `role_permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_permission_id`),
  KEY `permission_id` (`permission_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `role_permission_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`),
  CONSTRAINT `role_permission_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `role_permission` */

insert  into `role_permission`(`role_permission_id`,`permission_id`,`role_id`) values (3,1,1),(4,2,1),(5,3,1),(6,4,1),(7,5,1),(8,6,1),(9,7,1),(10,8,1),(11,9,1),(12,10,1),(13,11,1),(14,12,1),(15,13,1),(16,14,1),(17,15,1),(18,9,8),(19,10,8),(20,1,8);

/*Table structure for table `stock` */

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `purchased_date` timestamp NULL DEFAULT NULL,
  `stock_code` varchar(255) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `discount` double(16,4) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`stock_id`),
  KEY `company_id` (`company_id`),
  KEY `discount_id` (`discount_id`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`discount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `stock` */

insert  into `stock`(`stock_id`,`company_id`,`purchased_date`,`stock_code`,`discount_id`,`discount`,`total_price`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,3,'2017-11-21 00:00:00',NULL,1,50.0000,NULL,10,'2017-11-28 08:57:17',10,NULL,1),(2,2,'2017-11-29 00:00:00',NULL,2,10000.0000,NULL,10,'2017-11-28 09:36:46',10,'2017-11-28 09:37:02',0),(3,3,'2018-02-01 00:00:00',NULL,1,50.0000,NULL,10,'2017-11-28 09:37:38',10,'2017-11-28 09:54:59',1),(4,2,'2017-12-13 00:00:00',NULL,6,10.0000,NULL,10,'2017-12-13 17:28:06',10,NULL,1),(5,2,'2017-12-13 00:00:00',NULL,7,5.0000,NULL,10,'2017-12-13 17:32:02',10,NULL,1),(6,2,'2017-12-13 00:00:00',NULL,7,5.0000,NULL,10,'2017-12-13 17:35:24',10,NULL,1),(7,2,'2017-12-13 00:00:00',NULL,6,5.0000,NULL,10,'2017-12-13 17:40:24',10,NULL,1),(8,2,'2017-12-13 00:00:00',NULL,7,5.0000,NULL,10,'2017-12-13 17:45:11',10,NULL,1),(9,2,'2017-12-13 00:00:00','or-7551',7,5.0000,NULL,10,'2017-12-13 17:49:46',10,NULL,1),(10,2,'2017-12-13 00:00:00','or-7857',7,5.0000,295,10,'2017-12-13 17:52:47',10,NULL,1),(11,2,'2017-12-13 00:00:00','or-8718',7,5.0000,380,10,'2017-12-13 22:28:33',10,NULL,1),(12,5,'2017-12-15 00:00:00','or-7435',7,5.0000,167,10,'2017-12-15 16:26:59',10,NULL,1),(13,2,'2017-12-22 00:00:00','or-8016',5,0.0000,44,10,'2017-12-22 20:52:38',10,NULL,1);

/*Table structure for table `stock_details` */

DROP TABLE IF EXISTS `stock_details`;

CREATE TABLE `stock_details` (
  `stock_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`stock_detail_id`),
  KEY `stock_id` (`stock_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `stock_details_ibfk_1` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`stock_id`),
  CONSTRAINT `stock_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `stock_details` */

insert  into `stock_details`(`stock_detail_id`,`stock_id`,`product_id`,`quantity`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,3,4,90,10,'2017-11-28 19:08:49',10,'2017-11-28 19:33:14',1),(2,1,4,78,10,'2017-11-28 19:33:35',10,'2017-11-28 19:33:39',0),(3,6,1,2,10,'2017-12-13 17:35:26',10,NULL,1),(4,6,4,2,10,'2017-12-13 17:35:27',10,NULL,1),(5,8,1,1,10,'2017-12-13 17:45:13',10,NULL,1),(6,8,4,1,10,'2017-12-13 17:45:13',10,NULL,1),(7,9,1,1,10,'2017-12-13 17:49:47',10,NULL,1),(8,9,4,1,10,'2017-12-13 17:49:48',10,NULL,1),(9,10,1,2,10,'2017-12-13 17:52:50',10,NULL,1),(10,10,4,2,10,'2017-12-13 17:52:51',10,NULL,1),(11,11,1,4,10,'2017-12-13 22:28:35',10,NULL,1),(12,12,7,5,10,'2017-12-15 16:27:00',10,NULL,1),(13,13,8,4,10,'2017-12-22 20:52:39',10,NULL,1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_type_id` (`user_type_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`user_type_id`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_type_id`,`role_id`,`user_name`,`user_password`,`contact`,`address`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,1,1,'Raheem','123','0987654567','hyd',NULL,'2017-11-24 21:10:09',NULL,'2017-11-24 20:39:00',1),(2,1,1,'Roshan','567','09876789876','jamshoro',NULL,'2017-11-25 11:53:34',NULL,'2017-11-24 20:39:00',1),(4,5,2,'Ammar','ammar','03130231363','Karachi',1,'2017-11-25 13:51:07',1,'2017-11-25 15:15:48',0),(6,1,2,'Sana','drtyhjnbvfg','456789','Jamshoro',2,'2017-11-25 13:55:19',10,'2018-01-08 22:07:35',0),(7,1,2,'Shan','8765','03456789','jamshoro',1,'2017-11-25 14:20:17',1,'2017-11-25 19:07:56',0),(8,1,1,'Ashok','ashok','76545678','T.Ghulam Ali',1,'2017-11-25 15:59:07',10,'2018-01-08 22:07:51',0),(9,1,1,'Sad','1','23','qwe',1,'2017-11-25 19:07:14',10,'2018-01-08 22:07:47',0),(10,1,1,'admin','admin','033328908384','Hyderabad',1,'2017-11-26 22:08:54',10,'2018-01-08 22:07:44',1),(11,1,1,'Raheem','null','03153511743','Karachi',10,'2017-11-30 02:20:37',10,'2018-01-08 22:07:39',0),(12,5,3,'walkin','','03557547','T.M.Khan',10,'2017-11-30 12:00:02',10,'2018-01-08 22:07:29',0),(13,5,3,'Vijay','','03527548','TMK',10,'2017-12-01 16:04:26',10,'2018-01-08 22:07:24',0),(14,5,3,'shakeel','','0987654','karachi',10,'2017-12-04 21:15:32',10,'2018-01-08 22:07:18',0),(15,1,8,'raheem','123','03153511743','Hyd',10,'2018-05-13 23:33:31',10,NULL,0),(16,6,14,'Shan','shan','034556677','Jamshoro',NULL,NULL,NULL,NULL,1);

/*Table structure for table `user_type` */

DROP TABLE IF EXISTS `user_type`;

CREATE TABLE `user_type` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `user_type` */

insert  into `user_type`(`user_type_id`,`user_type_name`,`created_by`,`created_date`,`modified_by`,`modified_date`,`active`) values (1,'Employee',NULL,NULL,NULL,NULL,1),(2,'customer',1,'2017-11-24 19:36:56',1,'2017-11-24 20:04:11',0),(3,'Admin',2,'2017-11-24 19:57:57',1,'2017-11-24 20:02:06',0),(4,'Engineerrr',1,'2017-11-24 20:03:13',1,'2017-11-24 20:03:27',0),(5,'customer',1,'2017-11-24 20:25:24',1,'2017-11-24 20:33:34',1),(6,'Engineering',1,'2017-11-24 20:36:57',2,'2017-11-24 20:39:00',1),(7,'Worker',NULL,NULL,NULL,NULL,0),(8,'workeeeeeeer',NULL,NULL,NULL,NULL,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
