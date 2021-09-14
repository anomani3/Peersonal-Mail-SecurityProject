/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - gmail
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`gmail` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `gmail`;

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `name` varchar(50) NOT NULL,
  `gmail` varchar(50) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `proff` varchar(15) NOT NULL,
  `key1` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`name`,`gmail`,`pwd`,`dob`,`phone`,`proff`,`key1`) values ('pavan','pavan.coign@gmail.com','pavan31kumar','1/01/1902','9908056223','2','6'),('pavan','mallikpavan@gmail.com','android31','12/07/1987','9908056223','2','0'),('rupa','rupa.coign@gmail.com','sandeepm','14/09/1986','9959123654','2','7946667'),('rajinikanth','rajinikanth.coign@gmail.com','jackson47','3/04/1902','9491939191','2','27698'),('nikil','nikhith.1000projects@gmail.com','123','2/02/1915','9874561230','1','AB40352'),('raj','nikilp306@gmail.com','123','1/01/1903','9874561230','1','0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
