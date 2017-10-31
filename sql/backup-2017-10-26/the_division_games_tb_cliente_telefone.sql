CREATE DATABASE  IF NOT EXISTS `the_division_games` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `the_division_games`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: the_division_games
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `tb_cliente_telefone`
--

DROP TABLE IF EXISTS `tb_cliente_telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_cliente_telefone` (
  `id_cliente_telefone` int(4) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(4) NOT NULL,
  `id_telefone` int(4) NOT NULL,
  PRIMARY KEY (`id_cliente_telefone`),
  KEY `fk_cliente_idx` (`id_cliente`),
  KEY `fk_telefone_idx` (`id_telefone`),
  CONSTRAINT `fk_cliente_tb_cliente_telefone` FOREIGN KEY (`id_cliente`) REFERENCES `tb_cliente` (`id_cli`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_telefone_tb_cliente_telefone` FOREIGN KEY (`id_telefone`) REFERENCES `tb_telefone` (`id_telefone`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cliente_telefone`
--

LOCK TABLES `tb_cliente_telefone` WRITE;
/*!40000 ALTER TABLE `tb_cliente_telefone` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_cliente_telefone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-26 18:43:34
