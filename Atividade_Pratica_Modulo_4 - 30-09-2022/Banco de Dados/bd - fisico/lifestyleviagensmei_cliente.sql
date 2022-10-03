CREATE DATABASE  IF NOT EXISTS `lifestyleviagensmei` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lifestyleviagensmei`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: lifestyleviagensmei
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idclientes` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb3_czech_ci NOT NULL,
  `sobrenome` varchar(50) COLLATE utf8mb3_czech_ci NOT NULL,
  `dataNascimento` varchar(10) COLLATE utf8mb3_czech_ci NOT NULL,
  `cpf` varchar(45) COLLATE utf8mb3_czech_ci NOT NULL,
  `nacionalidade` varchar(50) COLLATE utf8mb3_czech_ci NOT NULL,
  `celular` varchar(50) COLLATE utf8mb3_czech_ci DEFAULT NULL,
  `sexo` varchar(50) COLLATE utf8mb3_czech_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`idclientes`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (11,'Luiza','Sonsa','1996-03-24','111.111.111-11','brasileira','+55 (21) 99999-8888','feminino','ls90@yahoo.com.br'),(12,'Maria ','Lucia','1980-12-12','222.222.222-22','brasileira','+55 (21) 94499-8876','outro genêro','ml_bra.job@yahoo.com.br'),(13,'Felipe','Neto','1998-10-09','555.555.555-55','português','+55 (21) 99944-8678','masculino','fnpt@outlook.com'),(14,'Lionel ','Messi','2001-09-18','444.444.444-44','argentino','+54 (21) 99999-8877','masculino','leom_ar@outlook.com'),(15,'Alex','Fernandes','1993-06-21','333.333.333-33','brasileiro','+55 (21) 94499-8876','masculino','abc_21@yahoo.com.br');
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

-- Dump completed on 2022-10-03 18:59:49
