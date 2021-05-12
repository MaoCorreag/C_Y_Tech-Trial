/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.18-MariaDB : Database - c&y
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`c&y` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `c&y`;

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefonos` int(10) NOT NULL,
  `profesion` varchar(50) DEFAULT NULL,
  `edad` int(5) DEFAULT NULL,
  `salario` int(50) DEFAULT NULL,
  `banco` varchar(50) DEFAULT NULL,
  `fcontacto` date DEFAULT NULL,
  `fultimo` date DEFAULT NULL,
  `fproximo` date DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id_user`,`nombres`,`apellidos`,`email`,`telefonos`,`profesion`,`edad`,`salario`,`banco`,`fcontacto`,`fultimo`,`fproximo`,`ciudad`,`departamento`) values 
(1,'camilo','sanchez','camilo@sanchez.com',2147483647,'humorista',25,2000000,'davivienda','2021-05-04','2021-05-05','2021-05-14','Neiva','Huila'),
(2,'ramiro','rincon','rincon@rincon.com',2147483647,'escolta',39,1500000,'bbva','2021-05-04','2021-05-05','2021-05-08','neiva','Huila'),
(3,'yeion ','peña','peña@yeison.com',2147483647,'asesor',30,1500000,'bogotá','2021-05-04','2021-05-06','2021-05-10','ibague','tolima'),
(4,'fernando','fernandez','fernan@fernandez.com',2147483647,'ingeniero',36,5000000,'bancolombia','2021-05-03','2021-05-04','2021-05-10','NEIVA','Huila');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
