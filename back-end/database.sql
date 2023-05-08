CREATE DATABASE  IF NOT EXISTS `bach_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bach_db`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: bach_db
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `bachroads`
--

DROP TABLE IF EXISTS `bachroads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bachroads` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(200) NOT NULL,
  `picture` varchar(8000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bachroads`
--

LOCK TABLES `bachroads` WRITE;
/*!40000 ALTER TABLE `bachroads` DISABLE KEYS */;
INSERT INTO `bachroads` VALUES (1,'Route Jean-Sébastien Bach 11300 Limoux',NULL),(2,'Rue Jean-Sébastien-Bach (Paris)','https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Plaque_Rue_Jean_S%C3%A9bastien_Bach_-_Paris_XIII_%28FR75%29_-_2021-06-30_-_2.jpg/800px-Plaque_Rue_Jean_S%C3%A9bastien_Bach_-_Paris_XIII_%28FR75%29_-_2021-06-30_-_2.jpg?20210701003447'),(3,'Allée Jean-Sébastien Bach, Rennes','https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/All%C3%A9e_Jean-S%C3%A9bastien_Bach%2C_Rennes%2C_2022.jpg/800px-All%C3%A9e_Jean-S%C3%A9bastien_Bach%2C_Rennes%2C_2022.jpg?20220325215756'),(4,'Sebastian-Bach-Straße (Linz)','https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/17.9.20_Linz_228_%2850354887366%29.jpg/800px-17.9.20_Linz_228_%2850354887366%29.jpg?20220209133931');
/*!40000 ALTER TABLE `bachroads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musiclist`
--

DROP TABLE IF EXISTS `musiclist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `musiclist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `spotify_link` varchar(200) DEFAULT NULL,
  `is_favorite` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musiclist`
--

LOCK TABLES `musiclist` WRITE;
/*!40000 ALTER TABLE `musiclist` DISABLE KEYS */;
INSERT INTO `musiclist` VALUES (1,' 3e Partita pour violon seul en mi majeur, BWV 1006, I. Prélude','https://open.spotify.com/track/2sqhid2MBYJCZWPrLjsUbP?si=859ad9a43cd44160',0),(2,'3e Partita pour violon seul en si mineur, BWV 1002, IV. Double Presto','https://open.spotify.com/track/03Wo8VjWahRYSvfRSPhe9U?si=d6f1f600a6954ff1',NULL),(3,'Partita pour violon seul en ré mineur, BWV 1004,  I Allemande','https://open.spotify.com/track/0ZMx2fda4XyT1r6QRmmLky?si=a9bf197ed5514792',NULL),(4,'1ere Suite pour violoncelle seul en sol majeur, BWV 1007, I. Prélude','https://open.spotify.com/track/17i5jLpzndlQhbS4SrTd0B?si=5654d9d523794450',NULL),(5,'3e Suite orchestrale  en ré majeur BWV 1068, II. Air sur la corde de sol ','https://open.spotify.com/track/0DqFXzLtKkj9JO421NJpl1?si=6d222007be1c4096',NULL),(6,'Toccata et Fugue en ré mineur','https://open.spotify.com/track/0ID2vlc80zoWYSPNal0qQQ?si=51c4be82d7b54865',NULL);
/*!40000 ALTER TABLE `musiclist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-05  4:15:10
