-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: db_redcross
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_cities`
--

DROP TABLE IF EXISTS `tbl_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cities` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(100) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cities`
--

LOCK TABLES `tbl_cities` WRITE;
/*!40000 ALTER TABLE `tbl_cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_civilstatus`
--

DROP TABLE IF EXISTS `tbl_civilstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_civilstatus` (
  `civilStatus_id` int(11) NOT NULL AUTO_INCREMENT,
  `civilStatus` varchar(10) NOT NULL,
  PRIMARY KEY (`civilStatus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_civilstatus`
--

LOCK TABLES `tbl_civilstatus` WRITE;
/*!40000 ALTER TABLE `tbl_civilstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_civilstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_countries`
--

DROP TABLE IF EXISTS `tbl_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `countryName` varchar(100) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_countries`
--

LOCK TABLES `tbl_countries` WRITE;
/*!40000 ALTER TABLE `tbl_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_daysofweek`
--

DROP TABLE IF EXISTS `tbl_daysofweek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_daysofweek` (
  `day_id` int(11) NOT NULL AUTO_INCREMENT,
  `dayName` varchar(10) NOT NULL,
  PRIMARY KEY (`day_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_daysofweek`
--

LOCK TABLES `tbl_daysofweek` WRITE;
/*!40000 ALTER TABLE `tbl_daysofweek` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_daysofweek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_donations`
--

DROP TABLE IF EXISTS `tbl_donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_donations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `contactnum` varchar(200) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `brand` varchar(200) NOT NULL,
  `item` varchar(200) NOT NULL,
  `purchaseDate` date NOT NULL,
  `quant` int(11) NOT NULL,
  `distributor` varchar(200) NOT NULL,
  `streetAddr` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `cardnum` varchar(100) NOT NULL,
  `expdate` date NOT NULL,
  `ccv` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_donations`
--

LOCK TABLES `tbl_donations` WRITE;
/*!40000 ALTER TABLE `tbl_donations` DISABLE KEYS */;
INSERT INTO `tbl_donations` VALUES (1,'ssca','cassssss','csaaaaaaaa','sacccccccccc',47757,'kihhhh','lhhhhhhhk','2024-05-30',1,'hhhhhhhh','tttttttttt','kkkkkkk','yyyyyyyyy','kkkkkkkkk','uiiiiiiii','2024-05-23','111');
/*!40000 ALTER TABLE `tbl_donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_frequency`
--

DROP TABLE IF EXISTS `tbl_frequency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_frequency` (
  `frequency_id` int(11) NOT NULL AUTO_INCREMENT,
  `frequency` varchar(10) NOT NULL,
  PRIMARY KEY (`frequency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_frequency`
--

LOCK TABLES `tbl_frequency` WRITE;
/*!40000 ALTER TABLE `tbl_frequency` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_frequency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_inventory`
--

DROP TABLE IF EXISTS `tbl_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `measureUnit` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventory`
--

LOCK TABLES `tbl_inventory` WRITE;
/*!40000 ALTER TABLE `tbl_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_members`
--

DROP TABLE IF EXISTS `tbl_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_members` (
  `volunteer_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(200) NOT NULL,
  `lastName` varchar(200) NOT NULL,
  `contactNumber` int(11) NOT NULL,
  `nationality_id` tinyint(4) NOT NULL,
  `sexuality_id` tinyint(4) NOT NULL,
  `civilStatus_id` tinyint(4) NOT NULL,
  `streetAddress` varchar(255) NOT NULL,
  `city_id` tinyint(4) NOT NULL,
  `region_id` tinyint(4) NOT NULL,
  `country_id` tinyint(4) NOT NULL,
  `day_id` tinyint(4) NOT NULL,
  `timeofday_id` tinyint(4) NOT NULL,
  `frequency_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`volunteer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_members`
--

LOCK TABLES `tbl_members` WRITE;
/*!40000 ALTER TABLE `tbl_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_members2`
--

DROP TABLE IF EXISTS `tbl_members2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_members2` (
  `volunteer_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(200) NOT NULL,
  `lastName` varchar(200) NOT NULL,
  `contactNumber` varchar(20) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `sexuality_id` tinyint(4) NOT NULL,
  `civilStatus_id` tinyint(4) NOT NULL,
  `bdate` date DEFAULT NULL,
  `occupation` tinyint(4) NOT NULL,
  `streetAddress` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `day_id` tinyint(4) NOT NULL,
  `timeofday_id` tinyint(4) NOT NULL,
  `sun` tinyint(4) NOT NULL,
  `mon` tinyint(4) NOT NULL,
  `tue` tinyint(4) NOT NULL,
  `wed` tinyint(4) NOT NULL,
  `thu` tinyint(4) NOT NULL,
  `fri` tinyint(4) NOT NULL,
  `sat` tinyint(4) NOT NULL,
  `morning` tinyint(4) NOT NULL,
  `afternoon` tinyint(4) NOT NULL,
  `evening` tinyint(4) NOT NULL,
  `frequency_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`volunteer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_members2`
--

LOCK TABLES `tbl_members2` WRITE;
/*!40000 ALTER TABLE `tbl_members2` DISABLE KEYS */;
INSERT INTO `tbl_members2` VALUES (1,'','','0','0',0,0,NULL,0,'','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0),(2,'','','','',0,0,NULL,0,'','','','',0,0,0,0,0,0,0,0,0,0,0,0,0),(3,'','','0','0',0,0,NULL,0,'','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0),(4,'test','edited','','',0,0,'0000-00-00',0,'','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0),(5,'Array','','0','0',0,0,NULL,0,'','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0),(6,'Array','','0','0',0,0,NULL,0,'','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0),(7,'Array','','0','0',0,0,NULL,0,'','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0),(8,'test3','','0','0',0,0,NULL,0,'','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0),(9,'test','random','09123456789','Atlantic',0,0,NULL,0,'','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0),(10,'random','with sexuality','587468465','wadaw',1,0,NULL,0,'','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0),(11,'random','with sexuality','587468465','wadaw',0,0,NULL,0,'','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0),(12,'random','with sexuality','587468465','wadaw',0,0,NULL,0,'','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0),(13,'random','name','524545','filam',1,1,NULL,0,'','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0),(14,'random','name','524545','filam',1,1,'0000-00-00',0,'','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0),(15,'name','try','1354151','fil',1,2,'2015-12-17',0,'','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0),(16,'test','date','587468465','wadaw',0,0,'2024-05-17',0,'','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0),(17,'test2','date2','587468465','wadaw',0,0,'2024-05-31',0,'','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0),(18,'test','with address','65165165','wdadw',0,1,'0000-00-00',0,'test asdrea','city','reg','countyr',0,0,0,0,0,0,0,0,0,0,0,0,0),(19,'test','with address','65165165','wdadw',0,1,'0000-00-00',0,'test asdrea','city','reg','countyr',0,0,0,0,0,0,0,0,0,0,0,0,0),(21,'with','frequency','8327837','efage',1,1,'2024-05-22',1,'feeeeeeeeee','i,u','iul','.uooooooo',0,0,0,0,0,0,0,0,0,0,0,0,0),(22,'with','frequency','8327837','efage',1,1,'2024-05-22',1,'feeeeeeeeee','i,u','iul','.uooooooo',0,0,0,0,0,0,0,0,0,0,0,0,0),(23,'with','frequency','8327837','efage',1,1,'2024-05-22',1,'feeeeeeeeee','i,u','iul','.uooooooo',0,0,0,0,0,0,0,0,0,0,0,0,0),(24,'with','frequency','8327837','efage',1,1,'2024-05-22',1,'feeeeeeeeee','i,u','iul','.uooooooo',0,0,0,0,0,0,0,0,0,0,0,0,0),(25,'with','frequency','8327837','efage',1,1,'2024-05-22',1,'feeeeeeeeee','i,u','iul','.uooooooo',0,0,0,0,0,0,0,0,0,0,0,0,0),(26,':fname',':lname',':num',':nat',1,1,'2024-05-31',1,':strtAddress',':city',':region',':country',0,0,1,1,1,1,1,1,1,1,1,1,1),(27,'with','frequency','8327837','efage',1,1,'2024-05-22',1,'feeeeeeeeee','i,u','iul','.uooooooo',0,0,0,0,0,0,0,0,0,0,0,0,0),(28,'with','frequency','8327837','efage',1,1,'2024-05-22',1,'feeeeeeeeee','i,u','iul','.uooooooo',0,0,0,0,0,0,0,0,0,0,0,0,0),(29,'with','frequency','8327837','efage',1,1,'2024-05-22',1,'feeeeeeeeee','i,u','iul','.uooooooo',0,0,0,0,0,0,0,0,0,0,0,0,0),(30,'with','frequency','8327837','efage',1,1,'2024-05-22',1,'feeeeeeeeee','i,u','iul','.uooooooo',0,0,0,0,0,0,0,0,0,0,0,0,0),(31,'ewttt','wtttttttttt','w3333333','errrrr',0,2,'2024-05-23',2,'rge','yjjjjjjjjjjj','jyyyyyyyyyyy','htttttt',0,0,0,0,0,0,0,0,0,0,0,0,0),(32,'ewttt','wtttttttttt','w3333333','errrrr',0,2,'2024-05-23',2,'rge','yjjjjjjjjjjj','jyyyyyyyyyyy','htttttt',0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `tbl_members2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nationality`
--

DROP TABLE IF EXISTS `tbl_nationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_nationality` (
  `nationality_id` int(11) NOT NULL AUTO_INCREMENT,
  `nationality` varchar(100) NOT NULL,
  PRIMARY KEY (`nationality_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nationality`
--

LOCK TABLES `tbl_nationality` WRITE;
/*!40000 ALTER TABLE `tbl_nationality` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_nationality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_regions`
--

DROP TABLE IF EXISTS `tbl_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_regions` (
  `region_id` int(11) NOT NULL AUTO_INCREMENT,
  `regionName` varchar(100) NOT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_regions`
--

LOCK TABLES `tbl_regions` WRITE;
/*!40000 ALTER TABLE `tbl_regions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sexual_identity`
--

DROP TABLE IF EXISTS `tbl_sexual_identity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sexual_identity` (
  `sex_id` int(11) NOT NULL AUTO_INCREMENT,
  `sexual_identity` varchar(10) NOT NULL,
  PRIMARY KEY (`sex_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sexual_identity`
--

LOCK TABLES `tbl_sexual_identity` WRITE;
/*!40000 ALTER TABLE `tbl_sexual_identity` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sexual_identity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_timeofday`
--

DROP TABLE IF EXISTS `tbl_timeofday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_timeofday` (
  `timeofday_id` int(11) NOT NULL AUTO_INCREMENT,
  `timeofdayName` varchar(10) NOT NULL,
  PRIMARY KEY (`timeofday_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_timeofday`
--

LOCK TABLES `tbl_timeofday` WRITE;
/*!40000 ALTER TABLE `tbl_timeofday` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_timeofday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` text DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (1,'username','email@email.com','password'),(2,'username','email@email.com','password'),(3,'username','email@email.com','password'),(4,'username','email@email.com','password'),(5,'username','email@email.com','password'),(6,'username','email@email.com','password'),(7,'username','email@email.com','password'),(8,'username','email@email.com','password'),(9,'username','email@email.com','password'),(10,'username','email@email.com','password'),(11,'username','email@email.com','password'),(12,'username','email@email.com','password'),(13,'test','test','rest'),(14,'test','test','rteafeaf'),(15,'test','tset@gmail','test'),(16,'erer','test@gmail.com','erere'),(17,'test','email@test','$2y$10$FO9sdg1dLeW1Ogss2gAsxeP88F/jf2h3rmEIaekhleK/GDJmVbIkm'),(18,'etete','tete@gmi','$2y$10$aDRaP.8QOPEmJMANcp6jCeDnum9e.FNaaeOtv/Qv7bKt8dmtWVuR.'),(19,'etet','tete@gmi','$2y$10$g027QIgAVrvBxpirNYMQDOgR77UOh25Aaq0Mb7uTfYhlRS5CMsiMG'),(20,'etet','tete@gmi','$2y$10$AeCluUK1NG0hLFRzUeUeoOFznkiy2xlljCy1ebXF4MjEyG5U0s6Dq'),(21,'aefe','rger@fe','$2y$10$2TC9/PwhK7pogLfIeY5EquBEfgOvryMBdjNWbTl4qaehIxLRB/7Ea'),(22,'aefe','rger@fe','$2y$10$EwGMuH2YJCs/bCKpUnl0H.6CyO1CY6u1YgjFw6TRnnxVIrD.gugh6'),(23,'aefe','rger@fe','$2y$10$myb8EWWaYY4z5ZPcIWFFou9JY0cvgXcZjCLdKSsPRjfIgcpGKTtie');
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_works`
--

DROP TABLE IF EXISTS `tbl_works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beneficiary` varchar(200) NOT NULL,
  `location` varchar(255) NOT NULL,
  `expenses` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_works`
--

LOCK TABLES `tbl_works` WRITE;
/*!40000 ALTER TABLE `tbl_works` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_redcross'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-28 17:02:25