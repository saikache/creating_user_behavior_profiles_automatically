-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: user
-- ------------------------------------------------------
-- Server version	5.5.35-0ubuntu0.12.04.1

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
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20140306004126'),('20140306062103'),('20140307061313');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_confirmation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `contactno` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `historyfile_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `historyfile_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `historyfile_file_size` int(11) DEFAULT NULL,
  `historyfile_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'karthik@gmail.com','$2a$10$sP5oIPw7YQlRJNDSVjH3xOg/9vCQcKVZD1Gy1ndlTLIeHNl9s5gg6','$2a$10$sP5oIPw7YQlRJNDSVjH3xO',NULL,'111','2014-03-07 11:46:55','2014-03-07 11:46:55','9959875533','karthik',NULL,'history_mj.txt','text/plain',32951,'2014-03-07 11:46:55'),(2,'bhanu@gmail.com','$2a$10$A8oYvxIEwNmoqfSTKKPnKOLoBap0QNexL10GAiCdMyeLUO24nWD76','$2a$10$A8oYvxIEwNmoqfSTKKPnKO',NULL,'111','2014-03-07 11:48:02','2014-03-07 11:48:02','9963091266','bhanu',NULL,'bhanu.txt','text/plain',8267,'2014-03-07 11:48:01'),(3,'chanakya@gmail.com','$2a$10$/1Fb/v8qY4x0LhegoVucJOTmt3u6I9bYOlzg8xElIgtMITTww9zN2','$2a$10$/1Fb/v8qY4x0LhegoVucJO',NULL,'111','2014-03-07 11:48:33','2014-03-07 11:48:33','9000106100','chanakya',NULL,'chanakya.txt','text/plain',10612,'2014-03-07 11:48:33'),(4,'sairam@gmail.com','$2a$10$vFoEau.MZhSBrc8h4CwT8eN5SKBjG.7TiiIEiH4Zqk2CPfz3NpI7m','$2a$10$vFoEau.MZhSBrc8h4CwT8e',NULL,'111','2014-03-07 11:49:05','2014-03-07 11:49:05','9642196491','sairam',NULL,'sairam.txt','text/plain',35893,'2014-03-07 11:49:05'),(5,'kiran@gmail.com','$2a$10$FDHWfhlZXjMUCah95pc5wOr68XcVpH22qSg8ydnnHSsaNY525LTna','$2a$10$FDHWfhlZXjMUCah95pc5wO',NULL,'111','2014-03-07 11:51:44','2014-03-07 11:51:44','9652510801','kiran',NULL,'kiran.txt','text/plain',7266,'2014-03-07 11:51:44'),(6,'kisha@gmail.com','$2a$10$OOSSDbJfATVFIbEHiOma5uMG2hkvG/a1zcp4xxgaNsjubiLzfOtom','$2a$10$OOSSDbJfATVFIbEHiOma5u',NULL,'111','2014-03-07 11:55:22','2014-03-07 11:55:22','9390126644','kisha',NULL,'KishanSyster.txt','text/plain',9708,'2014-03-07 11:55:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-07 17:31:05
