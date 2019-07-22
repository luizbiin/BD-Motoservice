CREATE DATABASE  IF NOT EXISTS `motoservice` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `motoservice`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: motoservice
-- ------------------------------------------------------
-- Server version	5.7.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `saida`
--

DROP TABLE IF EXISTS `saida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `saida` (
  `CodSaida` int(11) NOT NULL AUTO_INCREMENT,
  `Data` date NOT NULL,
  `HoraIda` time NOT NULL,
  `HoraVolta` time NOT NULL,
  `CodMotoboy` smallint(6) NOT NULL,
  `CodMoto` smallint(6) NOT NULL,
  PRIMARY KEY (`CodSaida`),
  KEY `CodMotoboy` (`CodMotoboy`),
  KEY `CodMoto` (`CodMoto`),
  CONSTRAINT `saida_ibfk_2` FOREIGN KEY (`CodMoto`) REFERENCES `moto` (`CodMoto`) ON UPDATE CASCADE,
  CONSTRAINT `saida_ibfk_3` FOREIGN KEY (`CodMotoboy`) REFERENCES `motoboy` (`CodMotoboy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saida`
--

LOCK TABLES `saida` WRITE;
/*!40000 ALTER TABLE `saida` DISABLE KEYS */;
/*!40000 ALTER TABLE `saida` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-22 15:42:20
