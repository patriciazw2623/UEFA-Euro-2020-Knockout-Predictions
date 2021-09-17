mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `all_users`
--

DROP TABLE IF EXISTS `all_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `all_users` (
  `userid` int DEFAULT NULL,
  `age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_users`
--

LOCK TABLES `all_users` WRITE;
/*!40000 ALTER TABLE `all_users` DISABLE KEYS */;
INSERT INTO `all_users` VALUES (1,45),(2,35);
/*!40000 ALTER TABLE `all_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `comment` varchar(10000) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'test','test',NULL),(2,'usr1','hh',NULL),(3,'usr1','heeehe',NULL),(4,'usr1','heeehe',NULL),(5,'usr1','mm',NULL),(6,'usr1','aa',NULL),(7,'','mm',NULL);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `euro`
--

DROP TABLE IF EXISTS `euro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `euro` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `round` varchar(100) DEFAULT NULL,
  `teamA` varchar(100) DEFAULT NULL,
  `teamB` varchar(100) DEFAULT NULL,
  `predicted` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `euro`
--

LOCK TABLES `euro` WRITE;
/*!40000 ALTER TABLE `euro` DISABLE KEYS */;
INSERT INTO `euro` VALUES (1,'sixteen','Wales','Danmark','Danmark wins'),(2,'sixteen','Italy','Austria','Italy wins'),(3,'sixteen','Belgium','Portugal','Belgium wins'),(4,'sixteen','Croatia','Spain','Spain wins'),(5,'sixteen','France','Switzerland','draw'),(6,'sixteen','England','Germany','England wins'),(7,'sixteen','Sweden','Ukraine','Ukraine wins'),(8,'sixteen','Netherlands','Czech','Netherlands wins'),(9,'eighth','Switzerland','Spain','Spain wins'),(10,'eighth','Belgium','Italy','draw'),(11,'eighth','Czech','Danmark','Danmark wins'),(12,'eighth','Ukraine','England','England wins'),(13,'semi','Italy','Spain','draw'),(14,'semi','England','Danmark','draw'),(15,'final','England','Italy','draw');
/*!40000 ALTER TABLE `euro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game` (
  `id` int NOT NULL,
  `predicted` varchar(255) DEFAULT NULL,
  `round` varchar(255) DEFAULT NULL,
  `teama` varchar(255) DEFAULT NULL,
  `teamb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (125);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `class` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (110,'user','0:0:0:0:0:0:0:1','GET','com.example.demo.controller.userController.logpage','2021-07-05','0:0:0:0:0:0:0:1','/user/login'),(111,'user','0:0:0:0:0:0:0:1','GET','com.example.demo.controller.userController.logpage','2021-07-05','0:0:0:0:0:0:0:1','/user/login'),(112,'user','0:0:0:0:0:0:0:1','GET','com.example.demo.controller.userController.logpage','2021-07-05','0:0:0:0:0:0:0:1','/user/login'),(113,'user','0:0:0:0:0:0:0:1','GET','com.example.demo.controller.userController.logpage','2021-07-05','0:0:0:0:0:0:0:1','/user/login'),(114,'user','0:0:0:0:0:0:0:1','GET','com.example.demo.controller.userController.logpage','2021-07-05','0:0:0:0:0:0:0:1','/user/login'),(115,'user','0:0:0:0:0:0:0:1','GET','com.example.demo.controller.userController.logpage','2021-07-05','0:0:0:0:0:0:0:1','/user/login'),(116,'user','0:0:0:0:0:0:0:1','GET','com.example.demo.controller.userController.logpage','2021-07-05','0:0:0:0:0:0:0:1','/user/login'),(117,'user','0:0:0:0:0:0:0:1','GET','com.example.demo.controller.userController.logpage','2021-07-05','0:0:0:0:0:0:0:1','/user/login'),(118,'user','0:0:0:0:0:0:0:1','GET','com.example.demo.controller.userController.logpage','2021-07-05','0:0:0:0:0:0:0:1','/user/login'),(119,'user','0:0:0:0:0:0:0:1','GET','com.example.demo.controller.userController.logpage','2021-07-05','0:0:0:0:0:0:0:1','/user/login'),(120,'user','0:0:0:0:0:0:0:1','GET','com.example.demo.controller.userController.logpage','2021-07-05','0:0:0:0:0:0:0:1','/user/login'),(121,'user','0:0:0:0:0:0:0:1','GET','com.example.demo.controller.userController.logpage','2021-07-05','0:0:0:0:0:0:0:1','/user/login'),(122,'user','0:0:0:0:0:0:0:1','GET','com.example.demo.controller.userController.logpage','2021-07-05','0:0:0:0:0:0:0:1','/user/login'),(123,'user','0:0:0:0:0:0:0:1','POST','com.example.demo.controller.userController.login','2021-07-05','0:0:0:0:0:0:0:1','/user/log'),(124,'user','0:0:0:0:0:0:0:1','GET','com.example.demo.controller.gameController.findByRound','2021-07-05','0:0:0:0:0:0:0:1','/round');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_records`
--

DROP TABLE IF EXISTS `new_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_records` (
  `userid` int DEFAULT NULL,
  `page` varchar(1000) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_records`
--

LOCK TABLES `new_records` WRITE;
/*!40000 ALTER TABLE `new_records` DISABLE KEYS */;
INSERT INTO `new_records` VALUES (1,'mainpage','2020-10-02 00:00:00',45),(2,'mainpage','2020-10-02 00:00:00',35),(1,'mainpage','2020-10-01 00:00:00',45),(3,'other','2021-09-01 00:00:00',90),(4,'mainpage','2020-10-31 00:00:00',90),(4,'other','2020-10-31 00:00:00',90),(4,'mainpage','2021-10-31 00:00:00',90);
/*!40000 ALTER TABLE `new_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ngx`
--

DROP TABLE IF EXISTS `ngx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ngx` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int DEFAULT NULL,
  `page` varchar(1000) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ngx`
--

LOCK TABLES `ngx` WRITE;
/*!40000 ALTER TABLE `ngx` DISABLE KEYS */;
INSERT INTO `ngx` VALUES (1,1,'mainpage','2020-10-02 00:00:00'),(2,2,'mainpage','2020-10-02 00:00:00'),(3,1,'mainpage','2020-10-01 00:00:00'),(4,3,'other','2020-10-03 00:00:00'),(5,4,'mainpage','2020-11-03 00:00:00');
/*!40000 ALTER TABLE `ngx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selected`
--

DROP TABLE IF EXISTS `selected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `selected` (
  `userid` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selected`
--

LOCK TABLES `selected` WRITE;
/*!40000 ALTER TABLE `selected` DISABLE KEYS */;
INSERT INTO `selected` VALUES (1),(2),(3);
/*!40000 ALTER TABLE `selected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selected2`
--

DROP TABLE IF EXISTS `selected2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `selected2` (
  `userid` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selected2`
--

LOCK TABLES `selected2` WRITE;
/*!40000 ALTER TABLE `selected2` DISABLE KEYS */;
INSERT INTO `selected2` VALUES (1),(2);
/*!40000 ALTER TABLE `selected2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) DEFAULT NULL,
  `MAJOR` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'newstudent','English Literature');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentID`
--

DROP TABLE IF EXISTS `studentID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentID` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) DEFAULT NULL,
  `BD` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentID`
--

LOCK TABLES `studentID` WRITE;
/*!40000 ALTER TABLE `studentID` DISABLE KEYS */;
INSERT INTO `studentID` VALUES (1,'Jaemin','2000-08-13'),(2,'Jeno','2000-04-12');
/*!40000 ALTER TABLE `studentID` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'usr1','3f572fcb0f9af03848738946954b8c43'),(13,'usr2','098f6bcd4621d373cade4e832627b4f6'),(14,'usr3','098f6bcd4621d373cade4e832627b4f6'),(15,'usr4','098f6bcd4621d373cade4e832627b4f6'),(16,'','d41d8cd98f00b204e9800998ecf8427e'),(17,'test','22af645d1859cb5ca6da0c484f1f37ea'),(18,'usr5','30056e1cab7a61d256fc8edd970d14f5');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_new`
--

DROP TABLE IF EXISTS `user_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_new` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_new`
--

LOCK TABLES `user_new` WRITE;
/*!40000 ALTER TABLE `user_new` DISABLE KEYS */;
INSERT INTO `user_new` VALUES (1,1,45),(2,2,35);
/*!40000 ALTER TABLE `user_new` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-17 10:35:01
