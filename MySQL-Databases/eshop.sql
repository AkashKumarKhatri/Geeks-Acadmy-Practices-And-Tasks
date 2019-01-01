/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.15-log : Database - eshop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`eshop` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `eshop`;

/*Table structure for table `catagory` */

DROP TABLE IF EXISTS `catagory`;

CREATE TABLE `catagory` (
  `catg_id` int(11) NOT NULL AUTO_INCREMENT,
  `catg_name` varchar(45) DEFAULT NULL,
  `catg_remarks` varchar(45) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`catg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `catagory` */

insert  into `catagory`(`catg_id`,`catg_name`,`catg_remarks`,`active`) values (1,'Hardware','Excellent',1),(2,'Software','Good',1),(3,'EBooks','Good',1),(4,'Movies','Excellent',1),(5,'Games','Better',1);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `catg_id` int(11) DEFAULT NULL,
  `prod_name` varchar(45) DEFAULT NULL,
  `unit_price` int(20) DEFAULT NULL,
  `prod_desc` varchar(45) DEFAULT NULL,
  `prod_remarks` varchar(45) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`prod_id`),
  KEY `catg_id` (`catg_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`catg_id`) REFERENCES `catagory` (`catg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`prod_id`,`catg_id`,`prod_name`,`unit_price`,`prod_desc`,`prod_remarks`,`active`) values (1,1,'Key Board',500,'Dell','Excellent',1),(2,1,'Mouse',400,'HP','Good',1),(3,1,'Printer',20000,'Epson','Excellent',1),(4,1,'LCD',10000,'HP','Good',1),(5,1,'Joy Stick',6000,'Toshiba','Better',1),(6,1,'Moniter',2000,'IBM','Best',1),(7,2,'MS Office',1500,'1 User,1 Year','Excellet',1),(8,2,'Team Viewer',2500,'1 User,1 Month','Good',1),(9,2,'Window 10',10000,'1 User,1 Year','Excellent',1),(10,3,'Inside Servlet',500,'DMIS','Excellent',1),(11,3,'Let Us C',200,'Yaswant Kenether','Good',1),(12,3,'Introducton to Sql',600,'USA','Better',1),(13,4,'Bahubali',200,'Premeim','Good',1),(14,4,'Bahubali 2',500,'Premiem','Excellent',1),(15,4,'Jaga Jasoos',200,'Free','Good',1),(16,4,'Raees',500,'Premiem','Good',1),(17,4,'Dangal',200,'Premiem','Excellent',1),(18,5,'Mario',1000,'1 User,1 Year','Excellent',1),(19,5,'IGI 1',1000,'1 User,6 Months','Better',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
