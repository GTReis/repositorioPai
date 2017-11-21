-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: horizon_games
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
  `cod_prod_division_games` int(4) DEFAULT NULL,
  `nome_produto` varchar(45) NOT NULL,
  `plataforma_produto` varchar(30) NOT NULL,
  `genero_produto` varchar(30) DEFAULT NULL,
  `descricao_produto` text,
  `data_lancamento` date DEFAULT NULL,
  `valor` double(5,2) NOT NULL,
  `qtd` int(2) DEFAULT NULL,
  `flg_ativo` char(1) NOT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_produto`
--

LOCK TABLES `tb_produto` WRITE;
/*!40000 ALTER TABLE `tb_produto` DISABLE KEYS */;
INSERT INTO `tb_produto` VALUES (1,3,'Overwatch','XBOX ONE','FPS','FPS com elementos de MOBA, um jogo surpreendente cheio de ação. Escolha seu herói e parta para a luta junto com seus amigos em busca da vitória.','2016-05-15',124.90,1,'S'),(2,5,'Prey','XBOX ONE','Survivor','Mistérios...','2017-06-05',109.90,1,'S'),(3,2,'Injustice 2','XBOX ONE','Luta','Continuando a história iniciada em Injustice: Gods Among Us. Enquanto Batman e seus aliados travam uma batalha contra aqueles que querem restaurar o Regime do Superman, surge uma nova ameaça que coloca a existência da Terra em risco.','2017-02-25',129.90,1,'S'),(4,4,'Nioh','PS4','RPG','Seje um ninja mto bom...','2017-07-10',89.90,1,'S'),(5,1,'Uncharted 4','PS4','Ação/Aventura','Todo tesouro tem seu preço...Vários anos após sua última aventura, o aposentado caçador de tesouros, Nathan Drake, é forçado a voltar para o mundo dos ladrões. Agora com sua vida pessoal em jogo, Drake embarca em uma jornada pelo mundo em busca de uma conspiração histórica por trás de um famoso tesouro pirata. Sua maior aventura testará seus limites físicos, sua determinação e, finalmente, o que ele está disposto a sacrificar para salvar quem ama.','2016-05-10',109.90,1,'S'),(6,27,'Assassins Creed Origins','PS4','RPG, Ação','Entre em uma jornada no Egito Antigo, o lugar mais misterioso de toda História, durante um período crucial que moldou o mundo que vivemos hoje. Descubra os segredos por trás das Grande Pirâmides, mitos esquecidos, os último faraós, e – entalhada em hieróglifos perdidos no tempo – a história de origem da Irmandade dos Assassinos. Pelos últimos quatro anos, o time por trás do aclamado Assassin’s Creed® IV Black Flag® esteve focado em criar um novo começo para a franquia. Lute de uma forma completamente nova, transitando naturalmente entre armas únicas de corpo-a-corpo e de alcance, enfrentando diversos inimigos ao mesmo tempo. Escolha suas habilidades de Assassino, enquanto explora o país inteiro do Egito Antigo, se envolvendo em diversas aventuras e histórias cativantes, junto de uma jornada que irá mudar a civilização. A edição limitada inclui a DLC do Segredo das Primeiras Pirâmides: VIVENCIE OS MISTÉRIOS DO EGITO ANTIGO – Descubra tumbas perdidas, explore as Grandes Pirâmides, e descubra os segredos das múmias, dos deuses, e dos últimos faraós. UMA HISTÓRIA DE ORIGEM – Inicie aqui, no começo de tudo, com a história de origem de Assassin’s Creed que nunca foi contada antes. Você é Bayek, protetor do Egito, cuja história pessoal levará à criação da Irmandade dos Assassinos. ESTILO DE RPG DE AÇÃO – Experimente uma maneira completamente nova de lutar, enquanto você saqueia e usa uma variedade de armas com características e raridades diferentes. Desfrute de mecânicas profundas de progressão de RPG, escolha suas habilidades preferidas, e desafie suas habilidades contra chefões únicos e poderosos. CADA MISSÃO É UMA AVENTURA MEMORÁVEL – Escolha e faça missões no seu próprio ritmo: cada uma conta uma história intensa e emocionante, cheia de personagens multifacetados e objetivos relevantes. EXPLORE UM PAÍS INTEIRO – De desertos até oásis luxuosos, do Mar Mediterrâneo até as tumbas de Giza, lute contra facções perigosas e bestas selvagens enquanto explora este ambiente gigantesco e imprevisível.','2017-10-27',229.90,1,'S'),(7,11,'Tomb Rider','XBOX ONE','Acao, Aventura','Blá bla bla','2015-11-13',64.90,1,'S');
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

-- Dump completed on 2017-11-20 23:11:28
