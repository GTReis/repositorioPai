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
-- Table structure for table `tb_produto`
--

DROP TABLE IF EXISTS `tb_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_produto` (
  `id_produto` int(4) NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(45) NOT NULL,
  `descricao_produto` text NOT NULL,
  `genero_produto` varchar(30) NOT NULL,
  `data_lancamento` date NOT NULL,
  `flg_ativo` char(1) NOT NULL,
  `plataforma_produto` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_produto`
--

LOCK TABLES `tb_produto` WRITE;
/*!40000 ALTER TABLE `tb_produto` DISABLE KEYS */;
INSERT INTO `tb_produto` VALUES (1,'Uncharted 4','Todo tesouro tem seu preço...Vários anos após sua última aventura, o aposentado caçador de tesouros, Nathan Drake, é forçado a voltar para o mundo dos ladrões. Agora com sua vida pessoal em jogo, Drake embarca em uma jornada pelo mundo em busca de uma conspiração histórica por trás de um famoso tesouro pirata. Sua maior aventura testará seus limites físicos, sua determinação e, finalmente, o que ele está disposto a sacrificar para salvar quem ama.','Ação/Aventura','2016-05-10','S','PS4'),(2,'Injustice 2','Heróis lutando...','Luta','2017-02-25','S','XBOX ONE'),(3,'Overwatch','FPS com elementos de MOBA, um jogo surpreendente cheio de ação. Escolha seu herói e parta para a luta junto com seus amigos em busca da vitória.','FPS','2016-05-15','S','XBOX ONE'),(4,'Nioh','Seje um ninja mto bom...','RPG','2017-07-10','S','PS4'),(5,'Prey','Mistérios...','Survivor','2017-06-05','S','XBOX ONE');
/*!40000 ALTER TABLE `tb_produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-26 18:43:36
