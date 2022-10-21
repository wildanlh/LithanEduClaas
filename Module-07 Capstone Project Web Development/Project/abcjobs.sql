-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: abcjobs
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `tb_admin`
--

DROP TABLE IF EXISTS `tb_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_admin` (
  `id_admin` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_admin`
--

LOCK TABLES `tb_admin` WRITE;
/*!40000 ALTER TABLE `tb_admin` DISABLE KEYS */;
INSERT INTO `tb_admin` VALUES (1,'helpabcjobs@gmail.com','abc123','Wildan','Luqmanul Hakim');
/*!40000 ALTER TABLE `tb_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_apply_job`
--

DROP TABLE IF EXISTS `tb_apply_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_apply_job` (
  `id_apply_job` int NOT NULL AUTO_INCREMENT,
  `id_profile` int NOT NULL,
  `id_job` int NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_apply_job`),
  KEY `id_profile` (`id_profile`) /*!80000 INVISIBLE */,
  KEY `id_job` (`id_job`),
  CONSTRAINT `tb_apply_job_ibfk_1` FOREIGN KEY (`id_profile`) REFERENCES `tb_user_profile` (`id_profile`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_apply_job_ibfk_2` FOREIGN KEY (`id_job`) REFERENCES `tb_jobs` (`id_job`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_apply_job`
--

LOCK TABLES `tb_apply_job` WRITE;
/*!40000 ALTER TABLE `tb_apply_job` DISABLE KEYS */;
INSERT INTO `tb_apply_job` VALUES (1,1,1,'ACCEPTED'),(2,6,1,'ACCEPTED');
/*!40000 ALTER TABLE `tb_apply_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_comment`
--

DROP TABLE IF EXISTS `tb_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_comment` (
  `id_comment` int NOT NULL AUTO_INCREMENT,
  `id_thread` int NOT NULL,
  `id_profile` int NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `id_thread` (`id_thread`) /*!80000 INVISIBLE */,
  KEY `id_profile` (`id_profile`),
  CONSTRAINT `tb_comment_ibfk_1` FOREIGN KEY (`id_thread`) REFERENCES `tb_thread` (`id_thread`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_comment_ibfk_2` FOREIGN KEY (`id_profile`) REFERENCES `tb_user_profile` (`id_profile`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_comment`
--

LOCK TABLES `tb_comment` WRITE;
/*!40000 ALTER TABLE `tb_comment` DISABLE KEYS */;
INSERT INTO `tb_comment` VALUES (1,1,2,'I prefer watching on youtube than on w3schools');
/*!40000 ALTER TABLE `tb_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_jobs`
--

DROP TABLE IF EXISTS `tb_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_jobs` (
  `id_job` int NOT NULL AUTO_INCREMENT,
  `job_level` varchar(200) NOT NULL,
  `job_time` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_description` text NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `company_image` varchar(200) NOT NULL,
  PRIMARY KEY (`id_job`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_jobs`
--

LOCK TABLES `tb_jobs` WRITE;
/*!40000 ALTER TABLE `tb_jobs` DISABLE KEYS */;
INSERT INTO `tb_jobs` VALUES (1,'Senior','Full-Time','Back End Developer','Back-end Development refers to the server-side development. It focuses on databases, scripting, website architecture. It contains behind-the-scene activities that occur when performing any action on a website.','Google','images/logo/google.png'),(2,'Junior','Part-Time','Fullstack Developer','Full stack web developers have the ability to design complete web applications and websites. They work on the frontend, backend, database and debugging of web applications or websites.','Amazon','images/logo/amazon.png'),(3,'Junior','Full-Time','UI Designer','User interface (UI) design is about building interfaces with a focus on styling and interactivity. The UI designers goal is to create an interface the user finds easy to use and aesthetically pleasing.','Microsoft','images/logo/microsoft.png'),(4,'Intern','Full-Time','Front End Developer','Frontend developers are professionals who are responsible for effectively implementing visual components on a website. They perform front-end development tasks like website designing, appearance, navigation, buttons.','Samsung','images/logo/samsung.png'),(5,'Junior','Part-Time','Software Engineer','Software engineering is the application of principles used in the field of engineering, which usually deals with physical systems, to the design, development, testing, deployment and management of software systems.','Nvidia','images/logo/nvidia.png');
/*!40000 ALTER TABLE `tb_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tags`
--

DROP TABLE IF EXISTS `tb_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tags` (
  `id_tag` int NOT NULL AUTO_INCREMENT,
  `first_tag` varchar(100) NOT NULL,
  `second_tag` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tags`
--

LOCK TABLES `tb_tags` WRITE;
/*!40000 ALTER TABLE `tb_tags` DISABLE KEYS */;
INSERT INTO `tb_tags` VALUES (1,'Tutorial','C++'),(2,'ASK','Java'),(3,'Tips','Python'),(4,'Learn','HTML'),(5,'Programming','Java'),(6,'Share','CSS');
/*!40000 ALTER TABLE `tb_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_thread`
--

DROP TABLE IF EXISTS `tb_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_thread` (
  `id_thread` int NOT NULL AUTO_INCREMENT,
  `id_profile` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id_thread`),
  KEY `id_profile` (`id_profile`),
  CONSTRAINT `tb_thread_ibfk_1` FOREIGN KEY (`id_profile`) REFERENCES `tb_user_profile` (`id_profile`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_thread`
--

LOCK TABLES `tb_thread` WRITE;
/*!40000 ALTER TABLE `tb_thread` DISABLE KEYS */;
INSERT INTO `tb_thread` VALUES (1,1,'W3Schools','W3Schools is a freemium educational website for learning coding online. Initially released in 1998, it derives its name from the World Wide Web but is not affiliated with the W3 Consortium. W3Schools offers courses covering all aspects of web development. W3Schools also publishes free HTML templates. It is run by Refsnes Data in Norway. It has an online text editor called TryIt Editor, and readers can edit examples and run the code in a test environment.');
/*!40000 ALTER TABLE `tb_thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_thread_tags`
--

DROP TABLE IF EXISTS `tb_thread_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_thread_tags` (
  `id_thread_tag` int NOT NULL AUTO_INCREMENT,
  `id_thread` int NOT NULL,
  `first_tag` varchar(200) NOT NULL,
  `second_tag` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_thread_tag`),
  KEY `id_thread` (`id_thread`),
  CONSTRAINT `tb_thread_tags_ibfk_1` FOREIGN KEY (`id_thread`) REFERENCES `tb_thread` (`id_thread`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_thread_tags`
--

LOCK TABLES `tb_thread_tags` WRITE;
/*!40000 ALTER TABLE `tb_thread_tags` DISABLE KEYS */;
INSERT INTO `tb_thread_tags` VALUES (1,1,'Tips','HTML');
/*!40000 ALTER TABLE `tb_thread_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_profile`
--

DROP TABLE IF EXISTS `tb_user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_user_profile` (
  `id_profile` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `id_job` int DEFAULT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `country` text NOT NULL,
  `city` text NOT NULL,
  `about` text,
  `picture` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_profile`),
  KEY `id_user` (`id_user`),
  KEY `id_job` (`id_job`),
  CONSTRAINT `tb_user_profile_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_user_profile_ibfk_2` FOREIGN KEY (`id_job`) REFERENCES `tb_jobs` (`id_job`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_profile`
--

LOCK TABLES `tb_user_profile` WRITE;
/*!40000 ALTER TABLE `tb_user_profile` DISABLE KEYS */;
INSERT INTO `tb_user_profile` VALUES (1,1,1,'Barry','Portillo','Indonesia','Jakarta','Hello! Im Barry','images/user/barry.jpg'),(2,2,1,'Jannat','Hamilton','Japan','Tokyo','I Like Coffe','images/user/jannat.jpg'),(3,3,4,'Aniyah','Hayden','Indonesia','Bandung','My Hobby is Swimming','images/user/aniyah.jpg'),(4,4,2,'Elliot','Hogan','USA','New York','Have a nice day!','images/user/elliot.jpg'),(5,5,3,'Howard','Richards','German','Berlin','Danke!','images/user/howard.jpg'),(6,6,1,'Wildan','Luqmanul Hakim','Indonesia','Sumedang',NULL,'images/user/default.png'),(7,7,NULL,'Test','Application','Indonesia','Jakarta',NULL,'images/user/default.png');
/*!40000 ALTER TABLE `tb_user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (1,'barry@abc.com','barry123',1),(2,'jannat@abc.com','jannat123',1),(3,'aniyah@abc.com','aniyah123',1),(4,'elliot@abc.com','elliot123',1),(5,'howard@abc.com','howard123',1),(6,'wildanluqmanul@gmail.com','password123',1),(7,'tester@abc.com','test123',1);
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-21 20:49:15
