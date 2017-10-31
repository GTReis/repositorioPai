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
-- Table structure for table `tb_estoque`
--

DROP TABLE IF EXISTS `tb_estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_estoque` (
  `id_estoque` int(4) NOT NULL AUTO_INCREMENT,
  `id_produto` int(4) NOT NULL,
  `id_fornecedor` int(4) NOT NULL,
  `qtd` int(3) NOT NULL,
  `valor` double(5,2) NOT NULL,
  PRIMARY KEY (`id_estoque`),
  KEY `fk_estoque_fornecedor_idx` (`id_fornecedor`),
  KEY `fk_estoque_produto_idx` (`id_produto`),
  CONSTRAINT `fk_estoque_fornecedor` FOREIGN KEY (`id_fornecedor`) REFERENCES `tb_fornecedor` (`id_for`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_estoque_produto` FOREIGN KEY (`id_produto`) REFERENCES `tb_produto` (`id_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_estoque`
--

LOCK TABLES `tb_estoque` WRITE;
/*!40000 ALTER TABLE `tb_estoque` DISABLE KEYS */;
INSERT INTO `tb_estoque` VALUES (1,1,1,5,99.90),(2,2,1,10,134.90),(3,3,1,10,129.30),(4,4,1,10,109.90),(5,5,1,10,94.90);
/*!40000 ALTER TABLE `tb_estoque` ENABLE KEYS */;
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
