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
-- Temporary view structure for view `todos_produtos_fornecedores`
--

DROP TABLE IF EXISTS `todos_produtos_fornecedores`;
/*!50001 DROP VIEW IF EXISTS `todos_produtos_fornecedores`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `todos_produtos_fornecedores` AS SELECT 
 1 AS `fornecedor`,
 1 AS `id_produto`,
 1 AS `nome_produto`,
 1 AS `plataforma_produto`,
 1 AS `genero_produto`,
 1 AS `descricao_produto`,
 1 AS `data_lancamento`,
 1 AS `valor`,
 1 AS `qtd`,
 1 AS `flg_ativo`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `todos_produtos_fornecedores`
--

/*!50001 DROP VIEW IF EXISTS `todos_produtos_fornecedores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `todos_produtos_fornecedores` AS select 'Horizon Games' AS `fornecedor`,`horizon_games`.`tb_produto`.`cod_prod_division_games` AS `id_produto`,`horizon_games`.`tb_produto`.`nome_produto` AS `nome_produto`,`horizon_games`.`tb_produto`.`plataforma_produto` AS `plataforma_produto`,`horizon_games`.`tb_produto`.`genero_produto` AS `genero_produto`,`horizon_games`.`tb_produto`.`descricao_produto` AS `descricao_produto`,`horizon_games`.`tb_produto`.`data_lancamento` AS `data_lancamento`,`horizon_games`.`tb_produto`.`valor` AS `valor`,`horizon_games`.`tb_produto`.`qtd` AS `qtd`,`horizon_games`.`tb_produto`.`flg_ativo` AS `flg_ativo` from `horizon_games`.`tb_produto` union all select 'Junk Games' AS `fornecedor`,`junk_games`.`tb_produto`.`cod_prod_division_games` AS `id_produto`,`junk_games`.`tb_produto`.`nome_produto` AS `nome_produto`,`junk_games`.`tb_produto`.`plataforma_produto` AS `plataforma_produto`,`junk_games`.`tb_produto`.`genero_produto` AS `genero_produto`,`junk_games`.`tb_produto`.`descricao_produto` AS `descricao_produto`,`junk_games`.`tb_produto`.`data_lancamento` AS `data_lancamento`,`junk_games`.`tb_produto`.`valor` AS `valor`,`junk_games`.`tb_produto`.`qtd` AS `qtd`,`junk_games`.`tb_produto`.`flg_ativo` AS `flg_ativo` from `junk_games`.`tb_produto` union all select 'The Division Games' AS `fornecedor`,`the_division_games`.`tb_produto`.`id_produto` AS `id_produto`,`the_division_games`.`tb_produto`.`nome_produto` AS `nome_produto`,`the_division_games`.`tb_produto`.`plataforma_produto` AS `plataforma_produto`,`the_division_games`.`tb_produto`.`genero_produto` AS `genero_produto`,`the_division_games`.`tb_produto`.`descricao_produto` AS `descricao_produto`,`the_division_games`.`tb_produto`.`data_lancamento` AS `data_lancamento`,`the_division_games`.`tb_produto`.`valor` AS `valor`,`the_division_games`.`tb_produto`.`qtd` AS `qtd`,`the_division_games`.`tb_produto`.`flg_ativo` AS `flg_ativo` from `the_division_games`.`tb_produto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'the_division_games'
--

--
-- Dumping routines for database 'the_division_games'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-20 23:11:33
