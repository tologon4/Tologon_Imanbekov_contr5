CREATE DATABASE  IF NOT EXISTS `contr5_database` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `contr5_database`;
-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: localhost    Database: contr5_database
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `counterparty_id` int DEFAULT NULL,
  `from_warehouse_id` int DEFAULT NULL,
  `to_warehouse_id` int DEFAULT NULL,
  `qty` int NOT NULL,
  `action_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_idx` (`product_id`),
  KEY `fk_counterparty_idx` (`counterparty_id`),
  KEY `fk_from_warehouse_idx` (`from_warehouse_id`),
  KEY `fk_to_warehouse_idx` (`to_warehouse_id`),
  CONSTRAINT `actions_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `actions_ibfk_2` FOREIGN KEY (`counterparty_id`) REFERENCES `counterparties` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `actions_ibfk_3` FOREIGN KEY (`from_warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `actions_ibfk_4` FOREIGN KEY (`to_warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES (1,5,1,NULL,5,1000,'2023-09-18 12:19:00'),(2,2,4,2,NULL,125,'2023-07-27 11:00:00'),(3,4,2,1,NULL,545,'2023-06-14 09:26:00'),(4,1,NULL,5,4,100,'2024-10-22 07:30:00'),(5,6,5,NULL,1,50,'2023-10-31 19:12:00'),(6,3,NULL,4,2,190,'2023-03-14 16:00:00'),(7,2,3,NULL,3,12500,'2023-06-06 22:00:00'),(8,1,1,NULL,5,350,'2023-08-31 18:30:00'),(9,5,NULL,1,4,1213,'2023-07-10 19:20:00'),(10,4,4,3,NULL,154,'2023-11-12 15:00:00'),(11,2,5,5,NULL,9687,'2023-10-14 12:00:00'),(12,3,NULL,2,1,3707,'2023-09-13 16:00:00'),(13,6,NULL,3,5,124,'2023-07-01 13:00:00'),(14,5,1,NULL,5,1000,'2023-11-18 12:19:00'),(15,2,4,2,NULL,125,'2023-12-27 11:00:00'),(16,4,2,1,NULL,545,'2023-12-14 09:26:00'),(17,1,NULL,3,4,100,'2024-11-22 07:30:00'),(18,6,5,NULL,1,50,'2023-07-31 19:12:00'),(19,3,NULL,4,2,190,'2023-03-14 16:00:00'),(20,2,3,NULL,3,12500,'2023-02-06 22:00:00'),(21,1,1,NULL,5,350,'2023-03-31 18:30:00'),(22,5,NULL,1,4,1213,'2023-07-10 19:20:00'),(23,4,4,3,NULL,154,'2023-05-12 15:00:00'),(24,2,5,5,NULL,9687,'2023-02-14 12:00:00'),(25,3,NULL,2,1,3707,'2023-09-13 16:00:00'),(38,5,1,NULL,5,1000,'2023-01-18 12:19:00'),(39,2,4,2,NULL,125,'2023-02-27 11:00:00'),(40,4,2,1,NULL,545,'2023-12-14 09:26:00'),(41,1,NULL,1,4,100,'2024-11-22 07:30:00'),(42,6,5,NULL,1,50,'2023-12-31 19:12:00'),(43,3,NULL,4,2,190,'2023-03-14 16:00:00'),(44,2,3,NULL,3,12500,'2023-07-06 22:00:00'),(45,1,1,NULL,5,350,'2023-09-30 18:30:00'),(46,5,NULL,5,4,1213,'2023-10-10 19:20:00'),(47,4,4,3,NULL,154,'2023-10-12 15:00:00'),(48,2,5,5,NULL,9687,'2023-12-14 12:00:00'),(49,3,NULL,2,1,3707,'2023-09-13 16:00:00'),(50,5,1,NULL,5,1000,'2023-01-18 12:19:00'),(51,2,4,2,NULL,125,'2023-02-27 11:00:00'),(52,4,2,1,NULL,545,'2023-02-14 09:26:00'),(53,1,NULL,1,4,100,'2024-04-22 07:30:00'),(54,6,5,NULL,1,50,'2023-03-30 19:12:00'),(55,3,1,4,NULL,190,'2023-03-14 16:00:00'),(56,2,3,NULL,3,12500,'2023-07-06 22:00:00'),(57,1,1,NULL,5,350,'2023-09-30 18:30:00'),(58,5,NULL,5,4,1213,'2023-04-10 19:20:00'),(59,4,4,1,NULL,154,'2023-02-12 15:00:00'),(60,2,5,2,NULL,9687,'2023-03-14 12:00:00'),(61,3,NULL,2,1,3707,'2023-09-13 16:00:00'),(62,6,1,NULL,5,1000,'2023-01-18 12:19:00'),(63,12,4,2,NULL,125,'2023-02-27 11:00:00'),(64,6,2,1,NULL,545,'2023-02-14 09:26:00'),(65,11,NULL,1,4,100,'2024-04-22 07:30:00'),(66,10,5,NULL,1,50,'2023-03-30 19:12:00'),(67,10,1,4,NULL,190,'2023-03-14 16:00:00'),(68,7,3,NULL,3,12500,'2023-07-06 22:00:00'),(69,8,1,NULL,5,350,'2023-09-30 18:30:00'),(70,7,NULL,5,4,1213,'2023-04-10 19:20:00'),(71,9,4,1,NULL,154,'2023-02-12 15:00:00'),(72,11,5,2,NULL,9687,'2023-03-14 12:00:00'),(73,9,NULL,2,1,3707,'2023-09-13 16:00:00'),(74,6,1,NULL,3,1000,'2023-11-18 12:19:00'),(75,12,4,5,NULL,125,'2023-12-27 11:00:00'),(76,6,2,1,NULL,545,'2023-02-14 09:26:00'),(77,11,NULL,1,4,100,'2024-04-22 07:30:00'),(78,10,5,NULL,1,50,'2023-09-30 19:12:00'),(79,10,1,3,NULL,190,'2023-08-14 16:00:00'),(80,7,3,NULL,3,12500,'2023-07-06 22:00:00'),(81,8,1,NULL,5,350,'2023-09-30 18:30:00'),(82,7,NULL,5,4,1213,'2023-04-10 19:20:00'),(83,9,4,3,NULL,154,'2023-10-12 15:00:00'),(84,11,5,3,NULL,9687,'2023-11-14 12:00:00'),(85,9,NULL,2,1,3707,'2023-09-13 16:00:00'),(86,6,3,NULL,3,1000,'2023-11-18 12:19:00'),(87,12,4,3,NULL,125,'2023-12-27 11:00:00'),(88,6,2,4,NULL,545,'2023-02-14 09:26:00'),(89,11,NULL,1,4,100,'2024-04-22 07:30:00'),(90,10,2,NULL,3,50,'2023-09-30 19:12:00'),(91,10,4,3,NULL,190,'2023-08-14 16:00:00'),(92,7,3,NULL,2,12500,'2023-07-06 22:00:00'),(93,8,1,NULL,4,350,'2023-09-30 18:30:00'),(94,7,NULL,5,2,1213,'2023-04-10 19:20:00'),(95,9,4,3,NULL,154,'2023-10-12 15:00:00'),(96,11,5,3,NULL,9687,'2023-11-14 12:00:00'),(97,9,NULL,2,3,3707,'2023-09-13 16:00:00'),(98,6,5,NULL,2,1000,'2023-11-18 12:19:00'),(99,12,4,5,NULL,125,'2023-12-27 11:00:00'),(100,6,2,4,NULL,545,'2023-02-14 09:26:00'),(101,11,NULL,1,2,100,'2024-04-22 07:30:00'),(102,10,2,NULL,3,50,'2023-09-30 19:12:00'),(103,10,4,4,NULL,190,'2023-08-14 16:00:00'),(104,7,3,NULL,2,12500,'2023-07-06 22:00:00'),(105,8,1,NULL,4,350,'2023-09-30 18:30:00'),(106,7,NULL,5,2,1213,'2023-08-10 19:20:00'),(107,9,4,1,NULL,154,'2023-10-12 15:00:00'),(108,11,5,4,NULL,9687,'2023-11-14 12:00:00'),(109,9,NULL,5,3,3707,'2023-09-13 16:00:00'),(110,3,4,1,NULL,154,'2023-09-13 15:00:00'),(111,1,5,4,NULL,9687,'2023-11-14 12:00:00'),(112,3,NULL,5,3,3707,'2023-09-13 16:00:00'),(113,3,NULL,1,3,154,'2023-09-13 15:00:00'),(114,1,NULL,3,1,9687,'2023-11-14 12:00:00'),(115,3,NULL,1,3,3707,'2023-09-13 16:00:00'),(116,3,NULL,1,3,154,'2023-09-15 15:00:00'),(117,3,NULL,3,1,9687,'2023-09-11 12:00:00'),(118,3,NULL,1,3,3707,'2023-09-11 16:00:00'),(119,2,2,NULL,3,154,'2023-04-15 15:00:00'),(120,12,2,NULL,3,9687,'2023-05-11 12:00:00'),(121,7,2,NULL,3,3707,'2023-06-11 16:00:00'),(122,6,2,5,NULL,1000,'2023-03-18 12:19:00'),(123,12,2,5,NULL,125,'2023-04-27 11:00:00'),(124,6,2,5,NULL,545,'2023-10-14 09:26:00'),(125,2,2,5,NULL,1000,'2023-03-18 12:19:00'),(126,12,2,5,NULL,125,'2023-04-27 11:00:00'),(127,4,2,5,NULL,545,'2023-10-14 09:26:00'),(128,2,NULL,3,1,1000,'2023-03-18 12:19:00'),(129,12,NULL,3,2,125,'2023-04-27 11:00:00'),(130,4,NULL,3,1,545,'2023-10-14 09:26:00'),(131,2,NULL,1,3,1000,'2023-03-18 12:19:00'),(132,12,NULL,2,3,125,'2023-04-27 11:00:00'),(133,4,NULL,1,3,545,'2023-10-14 09:26:00'),(134,2,NULL,2,3,1000,'2023-09-13 12:19:00'),(135,12,NULL,2,3,125,'2023-09-13 11:00:00'),(136,3,NULL,2,3,545,'2023-09-13 09:26:00');
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Xiaomi'),(2,'Iner Sport'),(3,'Lego'),(4,'New York Times'),(5,'Ikea');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL,
  `description` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Phone','Phones from China'),(2,'Clothing','Clothing from Turkey'),(3,'Books','Bestsellers'),(4,'Sport','Equipment and gear for outdoor activities and sports'),(5,'Home and Kitchen','Items used in household activities and cooking'),(6,'Toys and Games','Entertainment items for children');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counterparties`
--

DROP TABLE IF EXISTS `counterparties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counterparties` (
  `id` int NOT NULL AUTO_INCREMENT,
  `counterparty` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counterparties`
--

LOCK TABLES `counterparties` WRITE;
/*!40000 ALTER TABLE `counterparties` DISABLE KEYS */;
INSERT INTO `counterparties` VALUES (1,'Liberty'),(2,'Fastcharge'),(3,'Sbk'),(4,'Introment'),(5,'Speedlow');
/*!40000 ALTER TABLE `counterparties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `brand_id` int DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category_idx` (`category_id`),
  KEY `fk_brand_idx` (`brand_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,4,2,'Nike Jordans'),(2,2,NULL,'T-Shirt'),(3,1,1,'Note 6 pro'),(4,3,4,'War and Peace'),(5,5,5,'Sofa'),(6,6,3,'Car lego'),(7,4,2,'Adidas'),(8,2,NULL,'Shirt'),(9,1,1,'Note 11 pro'),(10,3,4,'Jacob'),(11,5,5,'Chair'),(12,6,3,'Plane lego');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `warehouse` varchar(50) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouses`
--

LOCK TABLES `warehouses` WRITE;
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
INSERT INTO `warehouses` VALUES (1,'Cast log','Bishkek'),(2,'Eastmesh log','Bremen'),(3,'SDK','Junkerath'),(4,'FromToSave group','Osh'),(5,'Saver lg.','Karakol');
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-02 18:24:38
