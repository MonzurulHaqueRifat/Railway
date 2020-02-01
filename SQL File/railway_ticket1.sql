-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: railway
-- ------------------------------------------------------
-- Server version	5.5.16

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
-- Table structure for table `ticket1`
--

DROP TABLE IF EXISTS `ticket1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket1` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `total_pass` int(11) DEFAULT NULL,
  `dept_stn` varchar(255) DEFAULT NULL,
  `arrival_stn` varchar(255) DEFAULT NULL,
  `train_no` int(11) DEFAULT NULL,
  `travel_class` varchar(255) DEFAULT NULL,
  `authority_id` int(11) DEFAULT NULL,
  `payment` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `fare` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `ticket1_ibfk_3` (`authority_id`),
  KEY `ticket1_ibfk_1` (`user_id`),
  KEY `ticket1_ibfk_2` (`train_no`),
  CONSTRAINT `ticket1_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket1_ibfk_2` FOREIGN KEY (`train_no`) REFERENCES `train1` (`train_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket1_ibfk_3` FOREIGN KEY (`authority_id`) REFERENCES `trainauthority1` (`authority_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket1`
--

LOCK TABLES `ticket1` WRITE;
/*!40000 ALTER TABLE `ticket1` DISABLE KEYS */;
INSERT INTO `ticket1` VALUES (1,341,4,'Chittagong','Dhaka',702,'AC_B',19912791,4000,'2019-11-19',1000),(3,341,4,'Chittagong','Dhaka',702,'AC_B',19912791,4000,'2019-11-19',1000),(4,341,4,'Chittagong','Dhaka',702,'AC_B',19912791,4000,'2019-11-19',1000),(5,341,4,'Chittagong','Dhaka',702,'AC_B',19912791,4000,'2019-11-19',1000),(6,341,4,'Chittagong','Dhaka',702,'AC_B',19912791,4000,'2019-11-19',1000),(7,341,4,'Chittagong','Dhaka',701,'AC_B',19912791,2000,'2019-11-19',1000),(8,341,4,'Chittagong','Dhaka',702,'AC_B',19912791,4000,'2019-11-19',1000),(10,341,4,'Chittagong','Dhaka',702,'AC_B',19912791,4000,'2019-11-19',1000),(11,341,4,'Chittagong','Dhaka',702,'AC_B',19912791,4000,'2019-11-19',1000),(12,341,4,'Chittagong','Dhaka',702,'AC_B',19912791,4000,'2019-11-19',1000),(13,341,2,'Chittagong','Dhaka',702,'AC_S',19912791,1600,'2019-11-19',800),(14,341,3,'Dhaka','Chittagong',701,'F_CHAIR',19912791,1800,'2019-11-19',600),(15,124,2,'Dhaka','Chittagong',703,'AC_B',19912791,2460,'2019-11-19',1230),(16,125,2,'Shylet','Dhaka',706,'S_CHAIR',19912791,800,'2019-11-19',400),(17,125,3,'Dhaka','Shylet',705,'F_CHAIR',19912791,900,'2019-11-19',300),(19,341,2,'Chittagong','Dhaka',702,'S_CHAIR',19912791,760,'2019-11-19',380),(21,126,1,'Chittagong','Dhaka',702,'S_CHAIR',19912791,380,'2019-11-19',345),(22,127,2,'Dhaka','khulna',763,'S_CHAIR',19912791,1000,'2019-11-19',500),(23,127,2,'Dhaka','khulna',763,'S_CHAIR',19912791,1000,'2019-11-01',500),(24,127,2,'Rajshai','Dhaka',754,'S_CHAIR',19912791,680,'2019-11-01',340),(25,127,1,'Dhaka','Khulna',763,'AC_S',19912791,400,'2019-11-01',400),(26,127,2,'khulna','Dhaka',763,'AC_B',19912791,600,'2019-11-01',300),(27,127,1,'Kolkata','Khulna',3130,'S_CHAIR',19912791,600,'2019-11-01',600),(28,127,2,'Dhaka','Khulna',764,'S_CHAIR',19912791,1000,'2019-11-01',500),(29,127,2,'Dhaka','Chittagong',702,'S_CHAIR',19912791,760,'2019-11-10',380),(30,124,2,'Kolkata','Dhaka',3108,'S_CHAIR',19912791,1200,'2019-11-19',600),(31,124,2,'Chittagong','Dhaka',702,'S_CHAIR',19912791,760,'2019-11-21',380),(32,246,2,'Shylet','Dhaka',710,'S_CHAIR',19912791,640,'2019-11-21',320),(34,399,2,'Chittagong','Dhaka',701,'S_CHAIR',19912791,760,'2019-11-21',380),(35,399,2,'Chittagong','Dhaka',701,'S_CHAIR',19912791,760,'2019-11-21',380),(36,399,2,'Chittagong','Dhaka',701,'AC_B',19912791,2000,'2019-11-21',1000),(37,399,3,'Dhaka','Chittagong',701,'S_CHAIR',19912791,760,'2019-11-22',380),(38,399,2,'Shylet','Chittagong',719,'S_CHAIR',19912791,1500,'2019-11-21',750),(39,399,3,'Chittagong','Shylet',719,'S_CHAIR',19912791,1500,'2019-11-24',500),(40,399,3,'Dhaka','Chittagong',701,'AC_B',19912791,3000,'2019-11-24',1000),(41,125,2,'Shylet','Chittagong',719,'S_CHAIR',19912791,1500,'2019-11-24',750),(42,399,2,'Chittagong','Dhaka',701,'S_CHAIR',19912791,760,'2019-11-26',380);
/*!40000 ALTER TABLE `ticket1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-01 18:51:25
