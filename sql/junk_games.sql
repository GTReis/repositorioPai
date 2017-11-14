-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: junk_games
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
  `id_prod` int(4) NOT NULL AUTO_INCREMENT,
  `cod_prod_division_games` int(4) DEFAULT NULL,
  `nome_produto` varchar(45) NOT NULL,
  `plataforma_produto` varchar(30) DEFAULT NULL,
  `genero_produto` varchar(30) DEFAULT NULL,
  `descricao_produto` text,
  `data_lancamento` date DEFAULT NULL,
  `valor` double(5,2) DEFAULT NULL,
  `flg_ativo` char(1) NOT NULL,
  PRIMARY KEY (`id_prod`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_produto`
--

LOCK TABLES `tb_produto` WRITE;
/*!40000 ALTER TABLE `tb_produto` DISABLE KEYS */;
INSERT INTO `tb_produto` VALUES (1,5,'Prey','XBOX ONE','Survivor','Mistérios...','2017-06-05',114.90,'S'),(3,4,'Nioh','PS4','RPG','Seje um ninja mto bom...','2017-07-10',84.90,'S'),(5,3,'Overwatch','XBOX ONE','FPS','FPS com elementos de MOBA, um jogo surpreendente cheio de ação. Escolha seu herói e parta para a luta junto com seus amigos em busca da vitória.','2016-05-15',159.90,'S'),(6,2,'Injustice 2','XBOX ONE','Luta','Continuando a história iniciada em Injustice: Gods Among Us. Enquanto Batman e seus aliados travam uma batalha contra aqueles que querem restaurar o Regime do Superman, surge uma nova ameaça que coloca a existência da Terra em risco.','2017-02-25',109.90,'S'),(7,1,'Uncharted 4','PS4','Ação/Aventura','Todo tesouro tem seu preço...Vários anos após sua última aventura, o aposentado caçador de tesouros, Nathan Drake, é forçado a voltar para o mundo dos ladrões. Agora com sua vida pessoal em jogo, Drake embarca em uma jornada pelo mundo em busca de uma conspiração histórica por trás de um famoso tesouro pirata. Sua maior aventura testará seus limites físicos, sua determinação e, finalmente, o que ele está disposto a sacrificar para salvar quem ama.','2016-05-10',114.90,'S');
/*!40000 ALTER TABLE `tb_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'junk_games'
--

--
-- Dumping routines for database 'junk_games'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-14 20:22:29
