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
-- Table structure for table `tb_cliente`
--

DROP TABLE IF EXISTS `tb_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_cliente` (
  `id_cli` int(4) NOT NULL AUTO_INCREMENT,
  `nome_cli` varchar(45) NOT NULL,
  `cpf_cli` varchar(20) NOT NULL,
  `email_cli` varchar(45) NOT NULL,
  `senha_cli` blob,
  `data_cadastro` datetime NOT NULL,
  `data_atualizacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `flg_ativo` char(1) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_cli`),
  UNIQUE KEY `cpf_cli_UNIQUE` (`cpf_cli`),
  UNIQUE KEY `email_cli_UNIQUE` (`email_cli`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cliente`
--

LOCK TABLES `tb_cliente` WRITE;
/*!40000 ALTER TABLE `tb_cliente` DISABLE KEYS */;
INSERT INTO `tb_cliente` VALUES (1,'Mauricio','1111111113','mauricio@mauricio.com.br',NULL,'2017-11-09 22:07:38','2017-11-10 00:10:04','S',NULL),(2,'Dimas','1111111112','dimas@divisiongames.com.br',NULL,'2017-11-10 19:58:41','2017-11-10 22:02:57','S',NULL),(4,'Jo√£o','1111111111','joao@divisiongames.com.br',NULL,'2017-11-10 20:03:33','2017-11-10 22:03:32','S',NULL),(6,'Jo√£o','1111111114','joao2@divisiongames.com.br',NULL,'2017-11-10 20:08:11','2017-11-10 22:08:11','S',NULL),(7,'Jo√£o','1111111115','joao3@divisiongames.com.br',NULL,'2017-11-10 20:09:12','2017-11-10 22:09:11','S',NULL),(8,'Jo√£o','1111111116','joao4@divisiongames.com.br',NULL,'2017-11-10 20:54:52','2017-11-10 22:54:52','S',NULL),(10,'Jo√£o','1111111117','joao6@divisiongames.com.br','çñû\Ôn\ \”¬ö:bíÄ\ÊÜ\œ?]ZÜØÛ\ í:\‹lí','2017-11-10 21:27:02','2017-11-10 23:27:02','S',NULL),(11,'Mauricio','111.111.111-18','a@a','çñû\Ôn\ \”¬ö:bíÄ\ÊÜ\œ?]ZÜØÛ\ í:\‹lí','2017-11-12 01:29:47','2017-11-12 03:29:47','S',NULL),(12,'Naruto','111.111.111-19','b@b','çñû\Ôn\ \”¬ö:bíÄ\ÊÜ\œ?]ZÜØÛ\ í:\‹lí','2017-11-12 20:00:32','2017-11-13 02:44:24','S','(11) 99999-9999'),(13,'Dimas Junior Pedreira','405.296.018-18','dimas@dimas.com','~ç\⁄E\«r;`›Æ¡∫¡YªBF3pVñ\‹%®9!ó%∞\„','2017-11-13 18:43:29','2017-11-13 20:43:28','S','(11) 4512-1872'),(14,'Erica Monice','0','erica@gmail.com','çñû\Ôn\ \”¬ö:bíÄ\ÊÜ\œ?]ZÜØÛ\ í:\‹lí','2017-11-13 19:00:01','2017-11-13 21:00:01','S','(11) 95435-4722');
/*!40000 ALTER TABLE `tb_cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-20 23:11:33
