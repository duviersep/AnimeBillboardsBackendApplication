-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: animedb
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `billboard`
--

DROP TABLE IF EXISTS `billboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billboard` (
  `id_billboard` int NOT NULL AUTO_INCREMENT,
  `anime_name` varchar(45) NOT NULL,
  `creator` varchar(45) DEFAULT NULL,
  `release_date` varchar(45) DEFAULT NULL,
  `finish_date` varchar(45) DEFAULT NULL,
  `anime_description` varchar(800) DEFAULT NULL,
  `url_image` varchar(255) NOT NULL,
  PRIMARY KEY (`id_billboard`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billboard`
--

LOCK TABLES `billboard` WRITE;
/*!40000 ALTER TABLE `billboard` DISABLE KEYS */;
INSERT INTO `billboard` VALUES (1,'NARUTO','Masashi Kishimoto','1999-09-21','2014-11-10','Es una serie de manga escrita e ilustrada por Masashi Kishimoto. \nLa obra narra la historia de un ninja huérfano adolescente llamado \nNaruto Uzumaki, cuyos padres murieron en el ataque del Zorro Demonio \nde Nueve Colas, y quien aspira a convertirse en Hokage (líder de su \naldea) con el propósito de ser reconocido como alguien importante \ndentro de la aldea y entre sus compañeros','url/narutoimage'),(2,'DRAGON BALL','Akira Toriyama','1984-11-20','1995-06-05','es un manga escrito e ilustrado por Akira Toriyama. Fue publicado \noriginalmente en la revista Shōnen Jump, de la editorial japonesa \nShūeisha, entre 1984 y 1995.1​2​ Su trama describe las aventuras de Gokū, \nun guerrero saiyajin, cuyo fin es proteger a la Tierra de otros seres \nque quieren conquistarla y exterminar a la humanidad','url/dragon-ball-image'),(3,'ONE PIECE','Eiichiro Oda','1997-07-22',NULL,'One Piece es un manga escrito e ilustrado por el mangaka \njaponés Eiichirō Oda. Comenzó a publicarse en la revista \njaponesa Weekly Shōnen Jump el 22 de julio de 1997 y a la \nfecha se han publicado 102 volúmenes. Por otra parte, \nToei Animation realiza el anime que adapta el manga, \nsiendo transmitido en Fuji TV desde el 20 de octubre de 1999 \nhasta la actualidad','url/one-piece-image');
/*!40000 ALTER TABLE `billboard` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-20 16:35:41
