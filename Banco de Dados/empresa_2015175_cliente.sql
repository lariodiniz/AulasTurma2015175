CREATE DATABASE  IF NOT EXISTS `empresa_2015175` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `empresa_2015175`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: empresa_2015175
-- ------------------------------------------------------
-- Server version	5.6.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `nascimento` date NOT NULL,
  `cpf` char(14) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Francisca da Silva','(21) 1234-5678','fsilva@email.com','1990-10-12','12.456.789-00',NULL),(2,'Francisco da Silva','(21) 1234-5678','fsilva@email.com','1990-10-12','12.456.789-01',NULL),(21,'Daniel da Silva','(21) 1234-5678','daniel@email.com','1990-10-12','12.456.789-02','Rua das coves, 66'),(22,'Rafael da Silva','(21) 5584-5678','rafael@email.com','1990-10-12','12.456.789-03','Rua das Canjas, 157'),(23,'Mateus Oliveira','(21) 9856-7536','mateus@email.com','1990-10-12','12.456.789-04','Avenida Rola Bosta, 10'),(24,'Carlos Barros','(21) 9764-2356','carloss@email.com','1990-10-12','12.456.789-05','Rua das flores, 78'),(25,'João Mamão','(21) 1768-9762','jmamao@email.com','1964-08-15','12.456.789-06','Avenida dos Tomos, 65'),(26,'Samuel Samu','(21) 4789-8654','ssamu@email.com','1998-05-19','12.456.789-07','Avenida Rola Bosta, 10'),(27,'Vanessa Candida','(21) 2678-7854','vcandida@email.com','1988-05-15','12.456.789-08','Rua ratos de porão, 98'),(28,'Dave Mustain','(21) 6345-3455','dmustain@email.com','1955-08-13','12.456.789-09','Rua Megadeath, 15'),(29,'Angus Young','(21) 4868-7895','ayoung@email.com','1945-02-20','12.456.789-10','Rua ACDC, n 666'),(30,'Slash da Silva','(21) 7898-4568','slash@email.com','1975-07-15','12.456.789-11','Rua Velvet Revolver'),(31,'Axel Rose','(21) 1489-3257','arose@email.com','1978-01-01','12.456.789-12','Rua Guns n Rose'),(32,'Tom Arraia','(21) 2158-7544','tarraia@email.com','1979-08-29','12.456.789-13','Rua Slayer'),(33,'James Handfield','(21) 1233-8665','jamesh@email.com','1966-08-13','12.456.789-14','Rua Metallica'),(34,'Ozzy Osborn','(21) 6666-6666','oosborn@email.com','1666-06-06','12.456.789-15','Rua Black Sabbat'),(35,'Jonny Cash','(21) 1587-9875','jcaxh@email.com','1934-06-20','12.456.789-16','Presidio São Angelo'),(36,'Lemmy the God','(21) TELEFONE-6666','lemmy.god@email.com','1933-04-18','12.456.789-17','ENDERECO'),(37,'Angela','(21) 4859-6879','angela@email.com','1985-08-13','12.456.789-18','Rua Arc Enemy'),(38,'Fatima Farias','(21) 5758-1278','ffatima@email.com','1999-04-15','12.456.789-19','Rua Ceará');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-22 21:50:26
