CREATE DATABASE  IF NOT EXISTS `Hospital` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `Hospital`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 192.168.10.128    Database: Hospital
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `DeleteLog`
--

DROP TABLE IF EXISTS `DeleteLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DeleteLog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `login` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `password_hash` char(40) COLLATE utf8_bin DEFAULT NULL,
  `role` enum('admin','pacient','doctor') COLLATE utf8_bin DEFAULT NULL,
  `blocked_from` datetime DEFAULT NULL,
  `block_time` timestamp NULL DEFAULT NULL,
  `block_status` enum('blocked','active') COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `date_id` int(11) DEFAULT NULL,
  `name1_id` smallint(5) unsigned DEFAULT NULL,
  `name2_id` smallint(5) unsigned DEFAULT NULL,
  `DeleteLog` smallint(5) unsigned DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DeleteLog`
--

LOCK TABLES `DeleteLog` WRITE;
/*!40000 ALTER TABLE `DeleteLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `DeleteLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InsertLog`
--

DROP TABLE IF EXISTS `InsertLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `InsertLog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `login` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `role` enum('blocked','active') COLLATE utf8_bin DEFAULT NULL,
  `password_hash` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InsertLog`
--

LOCK TABLES `InsertLog` WRITE;
/*!40000 ALTER TABLE `InsertLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `InsertLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UpdateLog`
--

DROP TABLE IF EXISTS `UpdateLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UpdateLog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `login` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `password_hash` char(40) COLLATE utf8_bin DEFAULT NULL,
  `role` enum('admin','pacient','doctor') COLLATE utf8_bin DEFAULT NULL,
  `name1_id` smallint(5) DEFAULT NULL,
  `name2_id` smallint(5) DEFAULT NULL,
  `name3_id` smallint(5) DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `blocked_from` datetime DEFAULT NULL,
  `block_status` enum('blocked','active') COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `data_id` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UpdateLog`
--

LOCK TABLES `UpdateLog` WRITE;
/*!40000 ALTER TABLE `UpdateLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `UpdateLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` smallint(5) unsigned DEFAULT NULL,
  `region_id` tinyint(3) unsigned DEFAULT NULL,
  `district_id` smallint(5) unsigned DEFAULT NULL,
  `town_id` smallint(5) unsigned DEFAULT NULL,
  `town_type` enum('деревня','агрогородок','город') COLLATE utf8_bin DEFAULT NULL,
  `street_id` smallint(5) unsigned DEFAULT NULL,
  `street_type` enum('улица','площадь','переулок','тупик','проспект','бульвар') COLLATE utf8_bin DEFAULT NULL,
  `home_number` tinyint(3) unsigned DEFAULT NULL,
  `home_index` char(1) COLLATE utf8_bin DEFAULT NULL,
  `corpus` tinyint(3) unsigned DEFAULT NULL,
  `apartment_number` smallint(5) unsigned DEFAULT NULL,
  `apartment_index` char(1) COLLATE utf8_bin DEFAULT NULL,
  `postal_code` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `address_country_id_idx` (`country_id`),
  KEY `address_region_id_idx` (`region_id`),
  KEY `address_district_id_idx` (`district_id`),
  KEY `address_town_id_idx` (`town_id`),
  KEY `address_street_id_idx` (`street_id`),
  CONSTRAINT `addresses_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`code`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `addresses_district_id` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `addresses_region_id` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `addresses_street_id` FOREIGN KEY (`street_id`) REFERENCES `streets` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `addresses_town_id` FOREIGN KEY (`town_id`) REFERENCES `towns` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,1,1,1,1,'город',1,'улица',1,'a',1,1,'a',1);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allergeys`
--

DROP TABLE IF EXISTS `allergeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allergeys` (
  `date` datetime DEFAULT NULL,
  `allergy` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `card_id` int(11) unsigned DEFAULT NULL,
  KEY `allergeys_card_id_idx` (`card_id`),
  CONSTRAINT `allergeys_card_id` FOREIGN KEY (`card_id`) REFERENCES `cards` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergeys`
--

LOCK TABLES `allergeys` WRITE;
/*!40000 ALTER TABLE `allergeys` DISABLE KEYS */;
INSERT INTO `allergeys` VALUES ('2020-05-13 20:39:56','allergy',1);
/*!40000 ALTER TABLE `allergeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branches` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `branch` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES (1,'some branch'),(2,''),(3,'qwe'),(4,'n'),(5,'Vet');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cabinets`
--

DROP TABLE IF EXISTS `cabinets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabinets` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabinets`
--

LOCK TABLES `cabinets` WRITE;
/*!40000 ALTER TABLE `cabinets` DISABLE KEYS */;
INSERT INTO `cabinets` VALUES (1,'some name'),(2,'Cabinet'),(3,'');
/*!40000 ALTER TABLE `cabinets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cards` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pacient_id` int(11) unsigned DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cards_pacient_id_idx` (`pacient_id`),
  CONSTRAINT `cards_pacient_id` FOREIGN KEY (`pacient_id`) REFERENCES `pacients` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES (1,1,'2020-05-13');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mail` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'mail@mail.ru','123321'),(2,'posw@kek.ru','+375299249910'),(3,'posw@kek.ru','+375299249910'),(4,'posw@kek.ru','+375299249910'),(5,'p@a.a','+375299249910'),(6,'doc@ai.bolit','+32214188');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `code` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(57) COLLATE utf8_bin DEFAULT NULL,
  `country2` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Republic of Belarus','Belarus'),(2,'',''),(3,'Россия','Россия'),(4,'Пакистан','Пакистан'),(5,'SSSR','SSSR');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnoses`
--

DROP TABLE IF EXISTS `diagnoses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnoses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `doctor_id` int(11) unsigned DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `card_id` int(10) unsigned DEFAULT NULL,
  `status` enum('подтвержден','не подтвержден') COLLATE utf8_bin DEFAULT 'не подтвержден',
  `doctor_confirm_id` int(11) unsigned DEFAULT NULL,
  `date2` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `diagnoses_doctor_id_idx` (`doctor_id`),
  KEY `diagnoses_card_id_idx` (`card_id`),
  KEY `diagnoses_confirm_id_idx` (`doctor_confirm_id`),
  CONSTRAINT `diagnoses_card_id` FOREIGN KEY (`card_id`) REFERENCES `cards` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `diagnoses_confirm_id` FOREIGN KEY (`doctor_confirm_id`) REFERENCES `doctors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `diagnoses_doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnoses`
--

LOCK TABLES `diagnoses` WRITE;
/*!40000 ALTER TABLE `diagnoses` DISABLE KEYS */;
INSERT INTO `diagnoses` VALUES (1,'tupe',1,'2020-05-13 20:44:02',1,'не подтвержден',NULL,NULL),(2,'autizm',4,'2020-05-15 21:58:06',1,'подтвержден',4,'2020-05-15 22:13:47');
/*!40000 ALTER TABLE `diagnoses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `district` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `district` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,'district');
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` smallint(6) unsigned DEFAULT NULL,
  `speciality_id` smallint(6) unsigned DEFAULT NULL,
  `passport_id` int(11) unsigned DEFAULT NULL,
  `contacts_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_branch_id_idx` (`branch_id`),
  KEY `doctor_speciality_id_idx` (`speciality_id`),
  KEY `doctor_passport_id_idx` (`passport_id`),
  KEY `doctor_contacts_id_idx` (`contacts_id`),
  CONSTRAINT `doctor_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `doctor_contacts_id` FOREIGN KEY (`contacts_id`) REFERENCES `contacts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `doctor_passport_id` FOREIGN KEY (`passport_id`) REFERENCES `passports` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `doctor_speciality_id` FOREIGN KEY (`speciality_id`) REFERENCES `specialites` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,3,3,1,1),(3,3,3,4,5),(4,5,5,5,6);
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examinations`
--

DROP TABLE IF EXISTS `examinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examinations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `doctor_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `result` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `card_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `examinations_doctor_id_idx` (`doctor_id`),
  KEY `examinations_card_id_idx` (`card_id`),
  CONSTRAINT `examinations_card_id` FOREIGN KEY (`card_id`) REFERENCES `cards` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `examinations_doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examinations`
--

LOCK TABLES `examinations` WRITE;
/*!40000 ALTER TABLE `examinations` DISABLE KEYS */;
INSERT INTO `examinations` VALUES (1,'2020-05-13 20:26:19',1,'examination','bad result',1),(2,'2020-05-16 02:44:17',4,'Посещение','Здоров как бык',1);
/*!40000 ALTER TABLE `examinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal`
--

DROP TABLE IF EXISTS `journal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `journal_user_id_idx` (`user_id`),
  CONSTRAINT `journal_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal`
--

LOCK TABLES `journal` WRITE;
/*!40000 ALTER TABLE `journal` DISABLE KEYS */;
INSERT INTO `journal` VALUES (1,6,'2020-05-15 21:57:46'),(2,6,'2020-05-15 22:07:34'),(3,6,'2020-05-15 22:10:32'),(4,6,'2020-05-16 02:44:10'),(5,4,'2020-05-16 13:55:59'),(6,3,'2020-05-16 14:00:07'),(7,3,'2020-05-16 14:01:36'),(8,3,'2020-05-16 14:29:14'),(9,3,'2020-05-16 14:31:51'),(10,3,'2020-05-16 14:38:32'),(11,3,'2020-05-16 14:40:05'),(12,3,'2020-05-16 18:13:53');
/*!40000 ALTER TABLE `journal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `names1`
--

DROP TABLE IF EXISTS `names1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `names1` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name1` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `names1`
--

LOCK TABLES `names1` WRITE;
/*!40000 ALTER TABLE `names1` DISABLE KEYS */;
INSERT INTO `names1` VALUES (1,'n1'),(2,''),(3,'123'),(4,'n'),(5,'Doctor'),(6,'Зносок');
/*!40000 ALTER TABLE `names1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `names2`
--

DROP TABLE IF EXISTS `names2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `names2` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name2` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `names2`
--

LOCK TABLES `names2` WRITE;
/*!40000 ALTER TABLE `names2` DISABLE KEYS */;
INSERT INTO `names2` VALUES (1,'n2'),(2,''),(3,'2'),(4,'n'),(5,'Ai'),(6,'Александр');
/*!40000 ALTER TABLE `names2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `names3`
--

DROP TABLE IF EXISTS `names3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `names3` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name3` varchar(38) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `names3`
--

LOCK TABLES `names3` WRITE;
/*!40000 ALTER TABLE `names3` DISABLE KEYS */;
INSERT INTO `names3` VALUES (1,'n3'),(2,''),(3,'123'),(4,'n'),(5,'Bolit'),(6,'Владимирович');
/*!40000 ALTER TABLE `names3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacients`
--

DROP TABLE IF EXISTS `pacients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacients` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `passport_id` int(10) unsigned DEFAULT NULL,
  `contact_id` int(10) unsigned DEFAULT NULL,
  `address_id` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pacients_passport_id_idx` (`passport_id`),
  KEY `pacients_contact_id_idx` (`contact_id`),
  KEY `pacients_addresses_id_idx` (`address_id`),
  CONSTRAINT `pacients_addresses_id` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pacients_contact_id` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pacients_passport_id` FOREIGN KEY (`passport_id`) REFERENCES `passports` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacients`
--

LOCK TABLES `pacients` WRITE;
/*!40000 ALTER TABLE `pacients` DISABLE KEYS */;
INSERT INTO `pacients` VALUES (1,1,1,1);
/*!40000 ALTER TABLE `pacients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passports`
--

DROP TABLE IF EXISTS `passports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date1` date DEFAULT NULL,
  `series` char(5) COLLATE utf8_bin DEFAULT NULL,
  `number` mediumint(8) unsigned DEFAULT NULL,
  `authority` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `gender` enum('мужской','женский') COLLATE utf8_bin DEFAULT NULL,
  `identity` char(16) COLLATE utf8_bin DEFAULT NULL,
  `date5` date DEFAULT NULL,
  `date6` date DEFAULT NULL,
  `country_id` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `passports_country_id_idx` (`country_id`),
  CONSTRAINT `passports_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`code`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passports`
--

LOCK TABLES `passports` WRITE;
/*!40000 ALTER TABLE `passports` DISABLE KEYS */;
INSERT INTO `passports` VALUES (1,'2013-05-20','12345',1234567,'mnoj','мужской','123','2013-05-20','2013-05-20',3),(2,'1999-12-23','123',123,'mnoj','мужской','123','2000-12-23','2020-02-23',NULL),(3,'1995-12-23','123',123,'mnoj','мужской','123','1999-12-12','2020-12-23',NULL),(4,'1999-12-23','5',6,'4','мужской','6','1999-12-12','2020-12-27',4),(5,'1999-11-23','123',322,'IlyaMuromec','мужской','id2123','2000-11-23','2020-11-23',5);
/*!40000 ALTER TABLE `passports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regions` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `region` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'region');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `day` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') COLLATE utf8_bin DEFAULT NULL,
  `time` time DEFAULT NULL,
  `dutation` time DEFAULT NULL,
  `cabinet_id` mediumint(8) unsigned DEFAULT NULL,
  `doctor_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `schedules_cabinet_id_idx` (`cabinet_id`),
  KEY `schedules_doctor_id_idx` (`doctor_id`),
  CONSTRAINT `schedules_cabinet_id` FOREIGN KEY (`cabinet_id`) REFERENCES `cabinets` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `schedules_doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,'Monday','00:01:23','00:01:23',1,1),(5,'Sunday','10:13:13','00:02:01',1,1);
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialites`
--

DROP TABLE IF EXISTS `specialites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialites` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `speciality` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialites`
--

LOCK TABLES `specialites` WRITE;
/*!40000 ALTER TABLE `specialites` DISABLE KEYS */;
INSERT INTO `specialites` VALUES (1,'some speciality'),(2,''),(3,'qw'),(4,'n'),(5,'Vsemoguhhiy');
/*!40000 ALTER TABLE `specialites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streets`
--

DROP TABLE IF EXISTS `streets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `streets` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `street` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streets`
--

LOCK TABLES `streets` WRITE;
/*!40000 ALTER TABLE `streets` DISABLE KEYS */;
INSERT INTO `streets` VALUES (1,'street');
/*!40000 ALTER TABLE `streets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `pacient_id` int(11) unsigned DEFAULT NULL,
  `schedule_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_pacient_id_idx` (`pacient_id`),
  KEY `tickets_schedule_id_idx` (`schedule_id`),
  CONSTRAINT `tickets_pacient_id` FOREIGN KEY (`pacient_id`) REFERENCES `pacients` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tickets_schedule_id` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'2020-05-13',1,1),(3,'2001-01-01',1,1),(4,'2001-01-01',1,1);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `towns`
--

DROP TABLE IF EXISTS `towns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `towns` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `town` varchar(57) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `towns`
--

LOCK TABLES `towns` WRITE;
/*!40000 ALTER TABLE `towns` DISABLE KEYS */;
INSERT INTO `towns` VALUES (1,'town');
/*!40000 ALTER TABLE `towns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(45) COLLATE utf8_bin NOT NULL,
  `password_hash` char(40) COLLATE utf8_bin NOT NULL,
  `role` enum('admin','pacient','doctor') COLLATE utf8_bin DEFAULT 'pacient',
  `blocked_from` datetime DEFAULT NULL,
  `block_time` timestamp NULL DEFAULT NULL,
  `block_status` enum('blocked','active') COLLATE utf8_bin DEFAULT 'active',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_doctor_id` int(10) unsigned DEFAULT NULL,
  `name1_id` smallint(5) NOT NULL,
  `name2_id` smallint(5) NOT NULL,
  `name3_id` smallint(5) NOT NULL,
  `data_pacient_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_pacient_id_idx` (`data_doctor_id`),
  KEY `users_name1_id_idx` (`name1_id`),
  KEY `users_name2_id_idx` (`name2_id`),
  KEY `users_name3_id_idx` (`name3_id`),
  KEY `users_pacient_id_idx1` (`data_pacient_id`),
  CONSTRAINT `users_doctor_id` FOREIGN KEY (`data_doctor_id`) REFERENCES `doctors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `users_pacient_id` FOREIGN KEY (`data_pacient_id`) REFERENCES `pacients` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'l1','f10e2821bbbea527ea02200352313bc059445190','admin',NULL,NULL,'active','2020-05-13 20:48:57',NULL,1,1,1,NULL),(2,'l2','f10e2821bbbea527ea02200352313bc059445190','doctor',NULL,NULL,'active','2020-05-13 20:48:57',1,1,1,1,NULL),(3,'l3','40bd001563085fc35165329ea1ff5c5ecbdbbeef','pacient',NULL,NULL,'active','2020-05-13 20:48:57',NULL,1,1,1,1),(4,'123','40bd001563085fc35165329ea1ff5c5ecbdbbeef','pacient',NULL,NULL,'active','2020-05-14 18:27:28',NULL,3,3,3,NULL),(5,'n','40bd001563085fc35165329ea1ff5c5ecbdbbeef','doctor',NULL,NULL,'active','2020-05-14 18:33:52',3,4,4,4,NULL),(6,'doc','f7f029ecb98abe979074a3ab45b74dbd9af02d42','doctor',NULL,NULL,'active','2020-05-15 21:57:33',4,5,5,5,NULL),(7,'sasa','7bf1ab1b8f7331ab5dc410e01f959d958bfd210e','admin',NULL,NULL,'active','2020-05-16 13:56:57',NULL,6,6,6,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_backup`
--

DROP TABLE IF EXISTS `users_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_backup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name1_id` smallint(5) unsigned DEFAULT NULL,
  `name2_id` smallint(5) unsigned DEFAULT NULL,
  `name3_id` smallint(5) unsigned DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` char(40) DEFAULT NULL,
  `blocked_from` datetime DEFAULT NULL,
  `block_time` timestamp NULL DEFAULT NULL,
  `block_status` enum('blocked','active') DEFAULT NULL,
  `role` enum('admin','pacient','doctor') DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `data_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `backup_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_backup`
--

LOCK TABLES `users_backup` WRITE;
/*!40000 ALTER TABLE `users_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccinations`
--

DROP TABLE IF EXISTS `vaccinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaccinations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `result` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `card_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vaccinations_card_id_idx` (`card_id`),
  CONSTRAINT `vaccinations_card_id` FOREIGN KEY (`card_id`) REFERENCES `cards` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccinations`
--

LOCK TABLES `vaccinations` WRITE;
/*!40000 ALTER TABLE `vaccinations` DISABLE KEYS */;
INSERT INTO `vaccinations` VALUES (1,'2020-05-13 20:38:25','type','result',1),(2,'2020-05-15 21:28:29','123','123',1),(3,'2020-05-15 21:30:18','333','333',1),(4,'2020-05-15 21:30:57','666','666',1),(5,'2020-05-15 21:32:13','0','',1);
/*!40000 ALTER TABLE `vaccinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Hospital'
--

--
-- Dumping routines for database 'Hospital'
--
/*!50003 DROP PROCEDURE IF EXISTS `AbortTicket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `AbortTicket`(in _id int)
BEGIN
	delete from tickets where id = _id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddDiagnos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `AddDiagnos`(IN _type varchar(100),
								IN _user_id int,
                                IN _card_id int)
BEGIN
	declare doc_id int;
    set doc_id = (select data_doctor_id from users where id = _user_id);
    insert into diagnoses (type, doctor_id, date, card_id)
    value (_type, doc_id, now(), _card_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddDoctor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `AddDoctor`(IN n1 varchar(45),
							IN n2 varchar(100),
							IN n3 varchar(38),
                            in _branch varchar(100),
                            in _spec varchar(100),
                            in _mail varchar(100),
                            in _phone varchar(100),
                            in _date1 date,
                            in _date5 date,
                            in _date6 date,
                            in _country varchar(20),
                            in _series char(5),
                            in _number mediumint(8),
                            in _identity char(16),
                            in _gender varchar(8),
                            in _authority varchar(100),
                            in _login varchar(45),
                            in _pass varchar(100))
BEGIN
	declare is_n1 int;
	declare is_n2 int;
	declare is_n3 int;
	declare is_bra int;
	declare is_spec int;
	declare is_country int;
    declare is_contacts int;
    declare is_passport int;
    declare is_login int;
    declare is_doctors int;
    
    set is_login = (select id from users where users.login = _login);
    if is_login is null then
		set is_n1 = (select names1.id from names1 where name1 = n1);
		set is_n2 = (select names2.id from names2 where name2 = n2);
		set is_n3 = (select names3.id from names3 where name3 = n3);
		set is_bra = (select branches.id from branches where branch = _branch);
		set is_spec = (select specialites.id from specialites where speciality = _spec);
		set is_country = (select country.code from country where country2 = _country); 
        
        if is_n1 is null then
			insert into names1 (name1)
			values (n1);
			set is_n1 = (select names1.id from names1 where name1 = n1);
		end if;    
		if is_n2 is null then
			insert into names2 (name2)
			values (n2);
			set is_n2 = (select names2.id from names2 where name2 = n2);
		end if;    
		if is_n3 is null then
			insert into names3 (name3)
			values (n3);
			set is_n3 = (select names3.id from names3 where name3 = n3);
		end if;
		if is_bra is null then
			insert into branches (branch) values (_branch);
			set is_bra = (select branches.id from branches where branch = _branch);
		end if;
		if is_spec is null then
			insert into specialites (speciality)
			values (_spec);
			set is_spec = (select specialites.id from specialites where speciality = _spec);
		end if;
		if is_country is null then
			insert into country (country, country2)	value (_country, _country);
			set is_country = (select country.code from country where country2 = _country);
		end if; 
        insert into contacts (mail, phone) value (_mail, _phone);
        set is_contacts = (select max(id) from contacts where mail = _mail and _phone = phone);
        insert into passports (date1, series, number, authority, gender, identity, date5, date6, country_id)
        value (_date1, _series, _number, _authority, _gender, _identity, _date5, _date6, is_country);
        set is_passport = (select max(id) from passports where identity = _identity);
        insert into doctors (branch_id, speciality_id, passport_id, contacts_id)
        value (is_bra, is_spec, is_passport, is_contacts);
        set is_doctors = (select id from doctors where passport_id = is_passport and is_contacts = contacts_id);
        insert into users (login, password_hash, role, data_doctor_id, name1_id, name2_id, name3_id) 
        value (_login, sha1(_pass), 'doctor', is_doctors, is_n1, is_n2, is_n3);
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddExam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `AddExam`(IN _type varchar(100),
									IN _res varchar(45),
                                    IN _card int,
                                    IN _user int)
BEGIN
	declare _doc int;
    set _doc = (select data_doctor_id from users where id = _user);
	insert into examinations (date, type, result, card_id, doctor_id)
    value (now(), _type, _res, _card, _doc);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddSchedule` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `AddSchedule`(IN _day varchar(20),
								IN _time time,
                                IN _duration time,
                                IN _cabinet varchar(30),
                                IN _doc int)
BEGIN
	declare _cabinet_id int;
    set _cabinet_id = (select id from cabinets where _cabinet = cabinets.name);
    if _cabinet_id is null then
		insert into cabinets (name) value (_cabinet);
        set _cabinet_id = (select id from cabinets where _cabinet = cabinets.name);
	end if;
    insert into schedules (day, time, dutation, cabinet_id, doctor_id)
    value (_day, _time, _duration, _cabinet_id, _doc);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddTicket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `AddTicket`(in _date date, in _user_ud int, in _schid int)
BEGIN
	declare _pacient_id int;
    set _pacient_id = (select data_pacient_id from users where users.id = _user_ud);
	insert into tickets (date, pacient_id, schedule_id) value (_date, _pacient_id,_schid);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddVaccination` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `AddVaccination`(IN _type varchar(100),
									IN _res varchar(45),
                                    IN _id int)
BEGIN
	insert into vaccinations (date, type, result, card_id)
    value (now(), _type, _res, _id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `authorization_procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `authorization_procedure`(in login varchar(45),
																in pswd varchar(45),
                                                                out result int)
BEGIN
	declare is_valid int;
    declare is_blocked enum('blocked','active');
    
	set is_valid = (select users.id from users where login = users.login and users.password_hash = SHA1(pswd));
    set result = -3;
    if is_valid is null then
		set result = -1;
	else 
		set is_blocked = (select users.block_status from users where users.login = login);
        if is_blocked = 'blocked' then
			set result = -2;
		else 
			set result = (select users.id from users where users.login = login);
            
             insert into journal (journal.user_id, journal.time)
				values (result, now());
		end if;
	end if;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `block_procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `block_procedure`(IN _id int,
									IN _status varchar(10))
BEGIN
	
    if _status = 'blocked' then
		update users
		set block_status = _status,
			blocked_from = now()
		where users.id = _id;
	else 
		update users
        set block_status = _status
        where users.id = _id;
	end if;    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConfirmDiagnose` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `ConfirmDiagnose`(IN _user_id int,
                                    IN _diagnose_id int)
BEGIN
	declare doc_id int;
    set doc_id = (select data_doctor_id from users where id = _user_id);
    update diagnoses set status = 'подтвержден', doctor_confirm_id = doc_id, date2 = now()
    where diagnoses.id = _diagnose_id; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteDoctor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `DeleteDoctor`(in _id int)
BEGIN
	delete from doctors where id = _id;
    delete from users where data_doctor_id = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteSchedule` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `DeleteSchedule`(in _id int)
BEGIN
	delete from schedules where id = _id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `delete_procedure`(IN id int)
BEGIN
	delete from users where users.id  = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DoctorInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `DoctorInfo`(IN _id int)
BEGIN
	select name1, name2, name3, branch, speciality, mail, phone, passport_id, data_doctor_id, date1, series, number, authority, gender, identity, date5, date6, country2
    from (select data_doctor_id, name1_id, name2_id, name3_id from users   
		where data_doctor_id = _id) as doc
    inner join names1 on names1.id = doc.name1_id
    inner join names2 on names2.id = doc.name2_id
    inner join names3 on names3.id = doc.name3_id
    inner join doctors on doctors.id = doc.data_doctor_id
    inner join branches on branches.id = doctors.branch_id
    inner join specialites on specialites.id = doctors.speciality_id
    inner join contacts on contacts.id = doctors.contacts_id
    inner join passports on passports.id = doctors.passport_id
    inner join country on country.code = passports.country_id;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EditDoctor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `EditDoctor`(IN _id int,
							IN n1 varchar(45),
							IN n2 varchar(100),
							IN n3 varchar(38),
                            in _branch varchar(100),
                            in _spec varchar(100),
                            in _mail varchar(100),
                            in _phone varchar(100),
                            in _date1 date,
                            in _date5 date,
                            in _date6 date,
                            in _country varchar(20),
                            in _series char(5),
                            in _number mediumint(8),
                            in _identity char(16),
                            in _gender varchar(8),
                            in _authority varchar(100))
BEGIN
	declare is_n1 int;
	declare is_n2 int;
	declare is_n3 int;
	declare is_bra int;
	declare is_spec int;
	declare is_country int;
    declare id_contacts int;
    declare is_passport int;
    
    set is_n1 = (select names1.id from names1 where name1 = n1);
    set is_n2 = (select names2.id from names2 where name2 = n2);
    set is_n3 = (select names3.id from names3 where name3 = n3);
    set is_bra = (select branches.id from branches where branch = _branch);
    set is_spec = (select specialites.id from specialites where speciality = _spec);
    set is_country = (select country.code from country where country2 = _country);  
    set id_contacts = (select contacts_id from doctors where id = _id);
    set is_passport = (select passport_id from doctors where id = _id);
    
    if is_n1 is null then
		insert into names1 (name1)
        values (n1);
        set is_n1 = (select names1.id from names1 where name1 = n1);
	end if;    
    if is_n2 is null then
		insert into names2 (name2)
        values (n2);
        set is_n2 = (select names2.id from names2 where name2 = n2);
	end if;    
    if is_n3 is null then
		insert into names3 (name3)
        values (n3);
        set is_n3 = (select names3.id from names3 where name3 = n3);
	end if;
    if is_bra is null then
		insert into branches (branch)
        values (_branch);
        set is_bra = (select branches.id from branches where branch = _branch);
	end if;
    if is_spec is null then
		insert into specialites (speciality)
        values (_spec);
        set is_spec = (select specialites.id from specialites where speciality = _spec);
	end if;
    if is_country is null then
		insert into country (country, country2)
        values (_country, _country);
         set is_country = (select country.code from country where country2 = _country);
	end if; 
    
    update users 
	set name1_id = is_n1,
	    name2_id = is_n2,
	    name3_id = is_n3
	where data_doctor_id = _id;
    update doctors
    set branch_id = is_bra,
		speciality_id = is_spec;
	update passports
	set date1 = _date1,
		series = _series,
        number = _number,
        authority = _authority,
        gender = _gender,
        identity = _identity,
		date5 = _date5,
        date6 = _date6,
        country_id = is_country
	where id = is_passport;
    update contacts
	set mail = _mail,
		phone = _phone
	where id = id_contacts;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetBranches` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `GetBranches`()
BEGIN
	select branch from branches;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCardStats` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `GetCardStats`(IN _str varchar(100),
IN _min date, IN _max date)
BEGIN
	select diagnoses.type, count(*) as _count from diagnoses where diagnoses.type like concat('%',_str,'%') and  diagnoses.date between _min and _max group by diagnoses.type;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetDocStats` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `GetDocStats`(in _id int)
BEGIN
	select count(*) as c from tickets
    inner join schedules on schedules.id = tickets.schedule_id
    where schedules.doctor_id = _id and
    date between date_sub(CURRENT_DATE(), interval 1 month) and current_date();
    select time(sum(dutation)) as summ 
    from tickets 
    inner join schedules on schedules.id = tickets.schedule_id
    where schedules.doctor_id = _id and
		date between date_sub(CURRENT_DATE(), interval 1 month) and current_date();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetSceduleById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `GetSceduleById`(IN _id int)
BEGIN
	select sch.id, sch.day, sch.time,sch.dutation, sch.cabinet_id, name, sch.doctor_id
    from (select * from schedules where doctor_id = _id) as sch
    inner join cabinets on cabinets.id = sch.cabinet_id 
    order by day, time;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetSpecs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `GetSpecs`()
BEGIN
	select speciality from specialites;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTikets` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `GetTikets`(in _user int)
BEGIN
	declare _pacient int;
    set _pacient = (select data_pacient_id from users where id = _user);
	select t.id, t.date, name1, name2, name3, day, time, dutation, cabinet_id, name
    from (select id, date, pacient_id, schedule_id from tickets where pacient_id = _pacient) as t
    inner join schedules on schedules.id = t.schedule_id
    inner join users on schedules.doctor_id = users.data_doctor_id
    inner join names1 on names1.id = users.name1_id
    inner join names2 on names2.id = users.name2_id
    inner join names3 on names3.id = users.name3_id
    inner join cabinets on cabinets.id = cabinet_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registration_procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `registration_procedure`(IN n1 varchar(45),
										   IN n2 varchar(100),
                                           IN n3 varchar(38),
                                           IN log varchar(45),
                                           IN pass varchar(100),
                                           IN rol varchar(10),
                                           OUT is_Ok int)
BEGIN
	declare is_login int;
    declare is_n1 int;
    declare is_n2 int;
    declare is_n3 int;
	declare id_n1 int;
    declare id_n2 int;
    declare id_n3 int;
    
    set is_Ok = -1;
    
    set is_login = (select users.id from users where users.login = log);
    set is_n1 = (select names1.id from names1 where names1.name1 = n1);
    set is_n2 = (select names2.id from names2 where names2.name2 = n2);
    set is_n3 = (select names3.id from names3 where names3.name3 = n3);
    
    if is_n1 is null then
		insert into names1 (name1)
        values (n1);
	end if;
    
    if is_n2 is null then
		insert into names2 (name2)
        values (n2);
	end if;
    
    if is_n3 is null then
		insert into names3 (name3)
        values (n3);
	end if;
    
    set id_n1 = (select names1.id from names1 where names1.name1 = n1);
    set id_n2 = (select names2.id from names2 where names2.name2 = n2);
    set id_n3 = (select names3.id from names3 where names3.name3 = n3);
    
    if is_login is null then
		insert into users (users.login, users.password_hash, users.role, create_time,
						   users.name1_id, users.name2_id,	users.name3_id, users.block_status)
					values (log, SHA1(pass), rol, now(), id_n1, id_n2, id_n3, 2);
		set is_Ok = (select id from users where users.login = log);
	end if;
    select 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `save_backup_del` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `save_backup_del`(IN _name1_id smallint,
									IN _name2_id smallint,
                                    IN _name3_id smallint, 
                                    IN _login varchar(45), 
                                    IN _password_hash char(40), 
                                    IN _blocked_from datetime, 
                                    IN _block_time timestamp, 
                                    IN _block_status enum('blocked','active'), 
                                    IN _role enum('admin','pacient','doctor'), 
                                    IN _create_time datetime, 
                                    IN _data_doctor_id int, 
                                    IN _data_pacient_id int,
                                    IN _id int)
BEGIN	
	INSERT INTO DeleteLog
	SET name1_id = _name1_id,
		name2_id = _name2_id,
		name3_id = _name3_id,
		login = _login,
		password_hash = _password_hash,
		blocked_from = _blocked_from,
		block_time = _block_time,
		block_status = _block_status,
		role = _role,
		create_time = _create_time,
		data_doctor_id = _data_doctor_id,
        data_pacient_id = _data_pacient_id,
		user_id = _id,
		log_time = NOW();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `save_backup_upd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `save_backup_upd`(IN _id int)
BEGIN
	INSERT INTO UpdeteLog
		(user_id, login, password_hash, role, name1_id, name2_id, name3_id,
		log_time, blocked_from, block_status, create_time, data_pacient_id, data_doctor_id)
    SELECT id, login, password_hash, role, name1_id, name2_id, name3_id,
		log_time, blocked_from, block_status, create_time, data_pacient_id, data_doctor_id
	FROM users WHERE id = _id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchCard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `SearchCard`(IN _str varchar(100), IN _pacient_id int)
BEGIN
	declare _card_id int;
    declare is_confiurmed int;
    set is_confiurmed = (select doctor_confirm_id from diagnoses where card_id = _card_id);
    set _card_id = (select cards.id from cards where cards.pacient_id = _pacient_id);
	select p.id, name1, name2, name3, data_pacient_id 
    from (select users.id, name1_id, name2_id, name3_id, data_pacient_id 
		from users where data_pacient_id = _pacient_id) as p
	inner join names1 on names1.id = p.name1_id
	inner join names2 on names2.id = p.name2_id
	inner join names3 on names3.id = p.name3_id;
    select date, allergy from allergeys where card_id = _card_id and allergy like concat('%', _str, '%');    
    select date, type, result from vaccinations where card_id = _card_id and 
		(type like concat('%', _str, '%') or result like concat('%', _str, '%'));
	select name1, name2, name3, ex.date, ex.type, ex.result 
    from (select date, doctor_id, type, result from examinations where card_id = _card_id) as ex
    inner join users on users.data_doctor_id = ex.doctor_id
    inner join names1 on names1.id = users.name1_id
	inner join names2 on names2.id = users.name2_id
	inner join names3 on names3.id = users.name3_id
    where name1 like concat('%', _str, '%') or
		name2 like concat('%', _str, '%') or
		name3 like concat('%', _str, '%') or
		ex.type like concat('%', _str, '%') or
		ex.result like concat('%', _str, '%');    
	select kk.status, name1, name2, name3, kk.date, kk.type, kk.id,
	if(status = 'подтвержден', (select doctor_confirm_id from diagnoses where diagnoses.id = '2'), null) as conf_id,
	if(status = 'подтвержден', (select date2 from diagnoses where diagnoses.id = '2'), null) as date2,
    if(status = 'подтвержден', (select name1 from users inner join names1 on names1.id = users.name1_id where data_doctor_id = conf_id), null) as un1,
    if(status = 'подтвержден', (select name2 from users inner join names2 on names2.id = users.name2_id where data_doctor_id = conf_id), null) as un2,
    if(status = 'подтвержден', (select name3 from users inner join names3 on names3.id = users.name3_id where data_doctor_id = conf_id), null) as un3
    from (select id, type, doctor_id, date, card_id, status from diagnoses where card_id = 1) as kk
    inner join users on users.data_doctor_id = kk.doctor_id
    inner join names1 on names1.id = users.name1_id
    inner join names2 on names2.id = users.name2_id
    inner join names3 on names3.id = users.name3_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchDoctor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `SearchDoctor`(IN n1 varchar(45),
								IN n2 varchar(100),
								IN n3 varchar(38),
								IN spec varchar(100),
								IN bra varchar(100))
BEGIN
	select name1, name2, name3, branch, speciality, data_doctor_id, mail, phone from
		(select name1_id, name2_id, name3_id, data_doctor_id from users
		 where role = 'doctor') as d
	inner join names1 on names1.id = d.name1_id
	inner join names2 on names2.id = d.name2_id
	inner join names3 on names3.id = d.name3_id
    inner join doctors on d.data_doctor_id = doctors.id
    inner join branches on branches.id = doctors.branch_id
    inner join specialites on specialites.id = doctors.speciality_id
    inner join contacts on contacts.id = doctors.contacts_id
    where (name1 like concat('%',n1,'%')) and
		  (name2 like concat('%',n2,'%')) and
          (name3 like concat('%',n3,'%')) and
          (branch like concat('%',bra,'%')) and
          (speciality like concat('%',spec,'%'));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchPacient` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `SearchPacient`(IN n1 varchar(45),
								IN n2 varchar(100),
								IN n3 varchar(38),
								IN _country varchar(57),
                                IN _town varchar(57),
                                IN _region varchar(100),
                                IN _district varchar(100),
                                IN _home_number varchar(30),
                                IN _home_index char(1),
                                IN _card varchar(50))
BEGIN
	select name1, name2, name3, data_pacient_id, mail, phone, country2,
			town, street, home_number, home_index, region, district, contacts.id as 'contacts.id' from
		(select name1_id, name2_id, name3_id, data_pacient_id from users
		 where role = 'pacient') as p
	inner join names1 on names1.id = p.name1_id
	inner join names2 on names2.id = p.name2_id
	inner join names3 on names3.id = p.name3_id
    inner join pacients on p.data_pacient_id = pacients.id
    inner join contacts on contacts.id = pacients.contact_id
    inner join addresses on addresses.id = pacients.address_id
    inner join country on country.code = addresses.country_id
    inner join towns on towns.id = addresses.town_id
    inner join streets on streets.id = addresses.street_id
    inner join regions on regions.id = addresses.region_id
    inner join district on district.id = addresses.district_id
    inner join cards on cards.pacient_id = pacients.id
    where (name1 like concat('%',n1,'%')) and
		  (name2 like concat('%',n2,'%')) and
		  (name3 like concat('%',n3,'%')) and
          (country like concat('%',_country,'%')) and
          (town like concat('%',_town,'%')) and
          (region like concat('%',_region,'%')) and
          (district like concat('%',_district,'%')) and
          (home_number like concat('%', _home_index, '%')) and
          (home_index like concat('%',_home_index,'%')) and
          (contacts.id like concat('%',_card,'%'));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `search_procedure`(IN n1 varchar(45),
								     IN n2 varchar(100),
								     IN n3 varchar(38),
								     IN log varchar(45),
								     IN rol varchar(10),
                                     IN b1 tinyint,
                                     IN b2 tinyint)
BEGIN
	select users.id, name1, name2, name3, users.role, data_doctor_id, data_pacient_id,
		   block_status, login, blocked_from, create_time, block_time
	from users
    inner join names1 on names1.id = users.name1_id
	inner join names2 on names2.id = users.name2_id
    inner join names3 on names3.id = users.name3_id
    where (name1 like concat('%',n1,'%')) and
		  (name2 like concat('%',n2,'%')) and
		  (name3 like concat('%',n3,'%')) and
          (login like concat('%',log,'%')) and
          (users.role like concat('%',rol,'%')) and
          (block_status = b1 or block_status = b2);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `undo_backup_del` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `undo_backup_del`(IN date_min datetime)
BEGIN
	START TRANSACTION;
    INSERT INTO users (id, name1_id, name2_id, name3_id, login, password_hash, blocked_from, block_time, block_status, role,
						create_time, data_doctor_id, data_pacient_id)
			SELECT user_id, name1_id, name2_id, name3_id, login, password_hash, blocked_from, block_time, block_status, role,
						create_time, data_doctor_id, data_pacient_id, user_id, log_time
			FROM DeleteLog
            WHERE create_time > date_min;    
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `undo_backup_upd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `undo_backup_upd`(IN date_min datetime)
BEGIN
	START TRANSACTION;
    set @flg_trigger_update = 2;
    UPDATE users, (select * from UpdateLog
					where UpdateLog.backup_time = 
						(select max(UpdateLog.log_time) 
						where users_backup.backup_time > date_min))
                        as b
	set users.name1_id = b.name1_id,
		users.name2_id = b.name2_id,
		users.name3_id = b.name3_id,
		users.login = b.login,
		users.password_hash = b.password,
		users.blocked_from = b.blocked_from,
		users.block_time = b.block_time,
		users.block_status = b.block_status,
		users.role = b.role,
		users.create_time = b.create_time,
		users.data_pacient_id = b.data_pacient_id,
		users.data_doctor_id = b.data_doctor_id        
	where users.id = b.user_id;    
    COMMIT;
    set @flg_trigger_update = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`student`@`%` PROCEDURE `update_procedure`(IN id int,
									 IN n1 varchar(45),
									 IN n2 varchar(100),
									 IN n3 varchar(38),
									 IN log varchar(45),
									 IN rol varchar(10))
BEGIN
    declare is_n1 int;
    declare is_n2 int;
    declare is_n3 int;
	declare id_n1 int;
    declare id_n2 int;
    declare id_n3 int;
    
    set is_n1 = (select names1.id from names1 where names1.name1 = n1);
    set is_n2 = (select names2.id from names2 where names2.name2 = n2);
    set is_n3 = (select names3.id from names3 where names3.name3 = n3);
    
    if is_n1 is null then
		insert into names1 (name1)
        values (n1);
	end if;
    
    if is_n2 is null then
		insert into names2 (name2)
        values (n2);
	end if;
    
    if is_n3 is null then
		insert into names3 (name3)
        values (n3);
	end if;
    
    set id_n1 = (select names1.id from names1 where names1.name1 = n1);
    set id_n2 = (select names2.id from names2 where names2.name2 = n2);
    set id_n3 = (select names3.id from names3 where names3.name3 = n3);
    
    update users
		set users.name1_id = id_n1,
			users.name2_id = id_n2,
            users.name3_id = id_n3,
            users.login = log,
            users.role = rol
		where users.id = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-18 20:55:18
