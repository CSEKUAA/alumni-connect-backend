-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: csekuaa
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `alumni`
--

DROP TABLE IF EXISTS `alumni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumni` (
  `alumni_id` int NOT NULL AUTO_INCREMENT,
  `roll` varchar(10) NOT NULL,
  `discipline_id` tinyint(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nick` varchar(100) DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `present_address` varchar(200) DEFAULT NULL,
  `present_city` varchar(45) DEFAULT NULL,
  `present_country` varchar(45) DEFAULT NULL,
  `permanent_address` varchar(200) DEFAULT NULL,
  `permanent_city` varchar(45) DEFAULT NULL,
  `permanent_country` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `profession` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `company_address` varchar(200) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_time` datetime DEFAULT NULL,
  `approval_date` date DEFAULT NULL,
  `membership_type` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`alumni_id`),
  KEY `fk_user_alumni_idx` (`user_id`),
  KEY `fk_discipline_alumni_idx` (`discipline_id`),
  CONSTRAINT `fk_discipline_alumni` FOREIGN KEY (`discipline_id`) REFERENCES `discipline` (`discipline_id`),
  CONSTRAINT `fk_user_alumni` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `alumni_external_link`
--

DROP TABLE IF EXISTS `alumni_external_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumni_external_link` (
  `alumni_external_link_id` int NOT NULL AUTO_INCREMENT,
  `alumni_id` int NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `external_link_id` int NOT NULL,
  PRIMARY KEY (`alumni_external_link_id`),
  KEY `fk_alumni_idx` (`alumni_id`),
  KEY `fk_external_link_idx` (`external_link_id`),
  CONSTRAINT `fk_alumni` FOREIGN KEY (`alumni_id`) REFERENCES `alumni` (`alumni_id`),
  CONSTRAINT `fk_external_link` FOREIGN KEY (`external_link_id`) REFERENCES `external_link` (`external_link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit` (
  `audit_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `api` varchar(200) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `audit_time` datetime NOT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`audit_id`),
  KEY `fk_user_audit_idx` (`user_id`),
  CONSTRAINT `fk_user_audit` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `discipline`
--

DROP TABLE IF EXISTS `discipline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discipline` (
  `discipline_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `discipline_code` varchar(10) NOT NULL,
  `discipline_short_name` varchar(10) NOT NULL,
  `discipline_full_name` varchar(200) NOT NULL,
  PRIMARY KEY (`discipline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `external_link`
--

DROP TABLE IF EXISTS `external_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_link` (
  `external_link_id` int NOT NULL AUTO_INCREMENT,
  `external_link_name` varchar(45) NOT NULL,
  `external_link_type_id` tinyint NOT NULL,
  `external_link_url` varchar(200) NOT NULL,
  PRIMARY KEY (`external_link_id`),
  KEY `fk_external_link_type_idx` (`external_link_type_id`),
  CONSTRAINT `fk_external_link_type` FOREIGN KEY (`external_link_type_id`) REFERENCES `external_link_type` (`external_link_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `external_link_type`
--

DROP TABLE IF EXISTS `external_link_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_link_type` (
  `external_link_type_id` tinyint NOT NULL AUTO_INCREMENT,
  `external_link_type_name` varchar(45) NOT NULL,
  PRIMARY KEY (`external_link_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership` (
  `membership_id` int NOT NULL AUTO_INCREMENT,
  `membership_type_id` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `is_approved` bit(1) NOT NULL,
  `membership_end_time` datetime NOT NULL,
  `membership_approved_by` int NOT NULL,
  `membership_approved_time` datetime NOT NULL,
  PRIMARY KEY (`membership_id`),
  KEY `fk_membership_membership_type_idx` (`membership_type_id`),
  KEY `fk_membership_user_idx` (`user_id`),
  CONSTRAINT `fk_membership_membership_type` FOREIGN KEY (`membership_type_id`) REFERENCES `membership_type` (`membership_type_id`),
  CONSTRAINT `fk_membership_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `membership_type`
--

DROP TABLE IF EXISTS `membership_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership_type` (
  `membership_type_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `membership_type` varchar(45) DEFAULT NULL,
  `membership_fee` decimal(10,2) NOT NULL,
  PRIMARY KEY (`membership_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `menu_id` smallint NOT NULL,
  `menu_name` varchar(200) NOT NULL,
  `parent_menu_id` smallint DEFAULT NULL,
  `menu_order` smallint DEFAULT NULL,
  `menu_link` varchar(200) DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu_role`
--

DROP TABLE IF EXISTS `menu_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_role` (
  `menu_role_id` smallint NOT NULL,
  `role_id` tinyint(1) NOT NULL,
  `menu_id` smallint NOT NULL,
  PRIMARY KEY (`menu_role_id`),
  KEY `fk_role_menurole_idx` (`role_id`),
  KEY `fk_menu_menurole_idx` (`menu_id`),
  CONSTRAINT `fk_menu_menurole` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`),
  CONSTRAINT `fk_role_menurole` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `password_reset`
--

DROP TABLE IF EXISTS `password_reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset` (
  `reset_id` int NOT NULL AUTO_INCREMENT,
  `email_mobile` varchar(100) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `created_time` datetime NOT NULL,
  `is_reset` bit(1) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`reset_id`),
  KEY `fk_user_password_idx` (`user_id`),
  CONSTRAINT `fk_user_password` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token` (
  `token_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `token` varchar(500) NOT NULL,
  `token_start_time` datetime NOT NULL,
  `token_end_time` datetime NOT NULL,
  `ip` varchar(45) NOT NULL,
  PRIMARY KEY (`token_id`),
  KEY `fk_user_token_idx` (`user_id`),
  CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `roll` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_id` tinyint(1) NOT NULL,
  `is_enabled` bit(1) NOT NULL,
  `is_account_non_expired` bit(1) NOT NULL,
  `is_account_non_locked` bit(1) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `roll_UNIQUE` (`roll`),
  KEY `fk_user_role_idx` (`role_id`),
  CONSTRAINT `fk_user_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-06 13:06:42
