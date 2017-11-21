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
  `data_lancamento` date DEFAULT NULL,
  `flg_ativo` char(1) NOT NULL,
  `plataforma_produto` varchar(30) DEFAULT NULL,
  `valor` double(5,2) DEFAULT NULL,
  `qtd` int(2) DEFAULT NULL,
  `img_capa` varchar(100) DEFAULT NULL,
  `img_galeria_1` varchar(100) DEFAULT NULL,
  `img_galeria_2` varchar(100) DEFAULT NULL,
  `img_galeria_3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_produto`
--

LOCK TABLES `tb_produto` WRITE;
/*!40000 ALTER TABLE `tb_produto` DISABLE KEYS */;
INSERT INTO `tb_produto` VALUES (1,'Uncharted 4','Todo tesouro tem seu preço...Vários anos após sua última aventura, o aposentado caçador de tesouros, Nathan Drake, é forçado a voltar para o mundo dos ladrões. Agora com sua vida pessoal em jogo, Drake embarca em uma jornada pelo mundo em busca de uma conspiração histórica por trás de um famoso tesouro pirata. Sua maior aventura testará seus limites físicos, sua determinação e, finalmente, o que ele está disposto a sacrificar para salvar quem ama.','Ação/Aventura','2016-05-10','S','PS4',99.90,1,NULL,NULL,NULL,NULL),(2,'Injustice 2','Continuando a história iniciada em Injustice: Gods Among Us. Enquanto Batman e seus aliados travam uma batalha contra aqueles que querem restaurar o Regime do Superman, surge uma nova ameaça que coloca a existência da Terra em risco.','Luta','2017-02-25','S','XBOX ONE',134.90,1,NULL,NULL,NULL,NULL),(3,'Overwatch','FPS com elementos de MOBA, um jogo surpreendente cheio de ação. Escolha seu herói e parta para a luta junto com seus amigos em busca da vitória.','FPS','2016-05-15','S','XBOX ONE',129.30,1,NULL,NULL,NULL,NULL),(4,'Nioh','Seje um ninja mto bom...','RPG','2017-07-10','S','PS4',109.90,1,NULL,NULL,NULL,NULL),(5,'Prey','Mistérios...','Survivor','2017-06-05','S','XBOX ONE',94.90,1,NULL,NULL,NULL,NULL),(8,'The Last of Us','The Last of Us é uma experiência que promete redefinir o gênero com uma mistura de sobrevivência e ação, contando uma história centrada nos personagens, sobre uma praga moderna que dizima a espécie humana há 20 anos atrás. A natureza invade a civilização, forçando os poucos sobreviventes a lutar por comida, armas e o que mais puderem encontrar.','Survivor, Acao','2013-06-14','S','PS3',59.90,1,NULL,NULL,NULL,NULL),(9,'Need for Speed','Blá bla bla','Corrida, Esporte','2013-11-19','S','PS3',89.90,1,NULL,NULL,NULL,NULL),(10,'Battlefield 4','Blá bla bla','FPS','2013-10-29','S','PS3',69.80,1,NULL,NULL,NULL,NULL),(11,'Tomb Rider','Blá bla bla','Acao, Aventura','2015-11-13','S','XBOX ONE',59.90,1,NULL,NULL,NULL,NULL),(12,'Fallout 4','Blá bla bla','FPS','2015-11-10','S','XBOX ONE',79.90,1,NULL,NULL,NULL,NULL),(13,'Fallout 4','Blá bla bla','FPS','2015-11-10','S','PS4',85.90,1,NULL,NULL,NULL,NULL),(14,'Overwatch','Blá bla bla','FPS','2016-05-24','S','PC',109.99,1,NULL,NULL,NULL,NULL),(15,'Overwatch','Bla bla bla','FPS','2016-05-24','S','PS4',149.90,1,NULL,NULL,NULL,NULL),(16,'PES 2017','Ah tá...','Esporte, Futebol','2013-09-13','S','XBOX ONE',117.80,1,NULL,NULL,NULL,NULL),(17,'PES 2017','360...','Esporte, Futebol','2013-09-13','S','XBOX 360',89.99,1,NULL,NULL,NULL,NULL),(18,'Metal Gear Solid V','Bla Bla','Stealth','2015-09-01','S','PS4',115.50,1,NULL,NULL,NULL,NULL),(19,'The Legend of Zelda Breath of the Wild','Bla Bla','Aventura','2017-03-03','S','Switch',229.95,1,NULL,NULL,NULL,NULL),(21,'Prey','O estúdio Arkane, time responsável pela aclamada série Dishonored, está trazendo sua visão única de Prey: um jogo de ação sci-fi em primeira pessoa agora totalmente reimaginado e com novas reviravoltas. Nele você é Morgan Yu, um homem que sofre com experimentos duvidosos que visam melhorar a raça humana. Você desperta a bordo de Talos 1 no ano de 2032, cabendo a você descobrir os segredos ocultos nas profundezas da estação espacial. Enquanto isso você será caçado por misteriosas forças alienígenas que estão dominando o local. Tudo que você tem à disposição é o que há na estação para combater esta ameaça assustadora e, com alguma esperança, sobreviver.','FPS','2017-05-05','S','PS4',249.90,1,NULL,NULL,NULL,NULL),(22,'Injustice 2','Nesse novo capítulo, os jogadores podem construir uma versão definitiva e personalizada de cada um dos personagens favoritos da DC Comics. Por meio das batalhas, é possível conseguir equipamentos, armas e vestimentas para incrementar ainda mais os poderes do personagem. Além disso, o jogador pode controlar o visual e o estilo de luta e também como cada personagem se desenvolve em uma variedade de modos de jogo.','Luta','2017-05-11','S','PS4',229.90,1,NULL,NULL,NULL,NULL),(24,'Horizon Zero Down','Dentro do game você assumirá o controle de Aloy, uma caçadora e arqueira, conforme ela adentra um universo pós-apocalíptico controlado por criaturas mecanizadas, tais como dinossauros robóticos e muito mais. O game se passa mil anos no futuro, período em que a civilização humana entra em colapso e as criaturas autômatas se tornam as mais poderosas do mundo, tomando o controle total da cadeia alimentar. Para sobreviver, Aloy precisará ceifar o metal e fontes de energia, utilizando os recursos para sobreviver em um cenário bastante hostil.','RPG, Aventura','2017-02-28','S','PS4',189.90,1,NULL,NULL,NULL,NULL),(25,'For Honor','Em For Honor você irá criar um caminho de destruição através dos campos de batalha. Faça parte do caos de uma guerra turbulenta escolhendo um dos três grandes legados guerreiros: cavaleiros, vikings ou samurais. For Honor é um jogo competitivo de ação, estratégia e trabalho em equipe focado em combate corpo-a-corpo.','Acao','2017-02-14','S','XBOX ONE',219.90,1,NULL,NULL,NULL,NULL),(26,'Call of Duty Infinity Warfare','Call...','FPS','2016-11-04','S','PS4',209.90,1,NULL,NULL,NULL,NULL),(27,'Assassins Creed Origins','Entre em uma jornada no Egito Antigo, o lugar mais misterioso de toda História, durante um período crucial que moldou o mundo que vivemos hoje. Descubra os segredos por trás das Grande Pirâmides, mitos esquecidos, os último faraós, e – entalhada em hieróglifos perdidos no tempo – a história de origem da Irmandade dos Assassinos. Pelos últimos quatro anos, o time por trás do aclamado Assassin’s Creed® IV Black Flag® esteve focado em criar um novo começo para a franquia. Lute de uma forma completamente nova, transitando naturalmente entre armas únicas de corpo-a-corpo e de alcance, enfrentando diversos inimigos ao mesmo tempo. Escolha suas habilidades de Assassino, enquanto explora o país inteiro do Egito Antigo, se envolvendo em diversas aventuras e histórias cativantes, junto de uma jornada que irá mudar a civilização. A edição limitada inclui a DLC do Segredo das Primeiras Pirâmides: VIVENCIE OS MISTÉRIOS DO EGITO ANTIGO – Descubra tumbas perdidas, explore as Grandes Pirâmides, e descubra os segredos das múmias, dos deuses, e dos últimos faraós. UMA HISTÓRIA DE ORIGEM – Inicie aqui, no começo de tudo, com a história de origem de Assassin’s Creed que nunca foi contada antes. Você é Bayek, protetor do Egito, cuja história pessoal levará à criação da Irmandade dos Assassinos. ESTILO DE RPG DE AÇÃO – Experimente uma maneira completamente nova de lutar, enquanto você saqueia e usa uma variedade de armas com características e raridades diferentes. Desfrute de mecânicas profundas de progressão de RPG, escolha suas habilidades preferidas, e desafie suas habilidades contra chefões únicos e poderosos. CADA MISSÃO É UMA AVENTURA MEMORÁVEL – Escolha e faça missões no seu próprio ritmo: cada uma conta uma história intensa e emocionante, cheia de personagens multifacetados e objetivos relevantes. EXPLORE UM PAÍS INTEIRO – De desertos até oásis luxuosos, do Mar Mediterrâneo até as tumbas de Giza, lute contra facções perigosas e bestas selvagens enquanto explora este ambiente gigantesco e imprevisível.','RPG, Ação','2017-10-27','S','PS4',234.90,1,NULL,NULL,NULL,NULL),(28,'Hellblade: Senua\'s Sacrifice','Dos criadores de Heavenly Sword, DMC: Devil May Cry e Enslaved: Odyssey to the West, chega uma jornada brutal de uma guerreira através de uma história repleta de mitos e loucura. O jogo se passa na era Viking e você estará na pele de uma guerreira Céltica com a mente partida, Senua, que está numa jornada para lutar pela alma de seu companheiro falecido. O jogo foi criado em colaboração com neurocientistas e pessoas com experiência em psicose, de forma a colocar o jogador de maneira muito mais profunda na mente de Senua.','Ação','2017-08-07','S','PC',64.90,1,NULL,NULL,NULL,NULL),(29,'F1 2017','Em F1 2017 você irá competir no Campeonato Mundial de 2017! Tente quebrar os recordes pilotando os carros de Fórmula 1 mais rápidos do mundo, acelerando em veículos icônicos da competição dos últimos 30 anos. O jogo ainda conta com um modo carreira profundo de dez anos, jogabilidade variada no modo Championships e ainda muitos outros recursos online e offline que tornam F1 2017 um dos melhores títulos do esporte!','Corrida','2017-08-25','S','PC',87.90,1,NULL,NULL,NULL,NULL),(30,'Cuphead','Com estilo de arte inspirado nas animações clássicas dos anos 30, Cuphead traz a ação de jogos de tiro com uma overdose de criatividade e carisma. Visuais e efeitos sonoros foram recriados de forma a lembrar fortemente o estilo da época, levando você em uma incrível viagem pelo tempo. Você irá jogar na pele de Cuphead ou Mugman tanto sozinho como com ajuda de um amigo, atravessando mundos incríveis, encontrando armas novas e enfrentando inimigos inusitados. Tudo isso para pagar sua dívida com o diabo em pessoa!','Ação','2017-09-29','S','PC',36.99,1,NULL,NULL,NULL,NULL),(31,'The Elder Scrolls V Skyrim Special Edition','Vencedor de mais de 200 prêmios Jogo do Ano e número 1 em \"Os 100 melhores jogos de PC de todos os tempos\" e \"Melhor Jogo da Geração\" por várias lojas, Skyrim Special Edition traz a fantasia à vida mais uma vez agora com estonteantes visuais e detalhes novos. Esta edição inclui o jogo e seus addons remasterizados em efeitos, visuais, profundidade e muito mais. O jogo também traz todo o poder dos mods de maneira oficial, além de novas quests, ambientes, personagens, diálogos, armaduras, armas e muito mais — com mods, não há limite para a experiência.','RPG','2016-08-28','S','PC',79.90,1,NULL,NULL,NULL,NULL),(32,'Fifa 2018','O novo FIFA chega com tudo, trazendo novidades tecnológicas que farão de tudo para oferecer a melhor — e mais realista — experiência do futebol!','Futebol','2017-09-29','S','PC',169.50,1,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2017-11-20 23:11:30
