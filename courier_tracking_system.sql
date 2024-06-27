CREATE DATABASE  IF NOT EXISTS `courier_tracking_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `courier_tracking_system`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: courier_tracking_system
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `AddressID` int NOT NULL,
  `CustomerID` int DEFAULT NULL,
  `AddressDetails` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`AddressID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (301,1,'House No. 123, Street No. 4, Gulberg, Lahore, Punjab, 54000, Pakistan'),(302,2,'House No. 45, Street No. 9, F-11, Islamabad, ICT, 44000, Pakistan'),(303,3,'House No. 789, Block H, DHA, Karachi, Sindh, 75500, Pakistan'),(304,4,'House No. 456, Street No. 3, Gulshan, Karachi, Sindh, 75600, Pakistan'),(305,5,'House No. 89, Street No. 1, Model Town, Lahore, Punjab, 54000, Pakistan'),(306,6,'House No. 234, Street No. 7, G-10, Islamabad, ICT, 44000, Pakistan'),(307,7,'House No. 67, Block B, Johar Town, Lahore, Punjab, 54782, Pakistan'),(308,8,'House No. 12, Street No. 2, Satellite Town, Rawalpindi, Punjab, 46000, Pakistan'),(309,9,'House No. 78, Street No. 5, Clifton, Karachi, Sindh, 75600, Pakistan'),(310,10,'House No. 23, Street No. 6, Bahria Town, Lahore, Punjab, 54000, Pakistan'),(311,11,'House No. 90, Street No. 8, F-7, Islamabad, ICT, 44000, Pakistan'),(312,12,'House No. 34, Street No. 2, Gulberg, Lahore, Punjab, 54000, Pakistan'),(313,13,'House No. 56, Street No. 5, North Nazimabad, Karachi, Sindh, 74700, Pakistan'),(314,14,'House No. 9, Street No. 10, G-11, Islamabad, ICT, 44000, Pakistan'),(315,15,'House No. 56, Block A, DHA, Lahore, Punjab, 54000, Pakistan'),(316,16,'House No. 67, Street No. 4, Gulshan, Karachi, Sindh, 75600, Pakistan'),(317,17,'House No. 89, Street No. 6, F-10, Islamabad, ICT, 44000, Pakistan'),(318,18,'House No. 12, Block B, Model Town, Lahore, Punjab, 54000, Pakistan'),(319,19,'House No. 34, Street No. 7, Satellite Town, Rawalpindi, Punjab, 46000, Pakistan'),(320,20,'House No. 78, Street No. 3, Clifton, Karachi, Sindh, 75600, Pakistan'),(321,21,'House No. 23, Street No. 9, Gulberg, Lahore, Punjab, 54000, Pakistan'),(322,22,'House No. 90, Block H, Johar Town, Lahore, Punjab, 54782, Pakistan'),(323,23,'House No. 89, Street No. 8, North Nazimabad, Karachi, Sindh, 74700, Pakistan'),(324,24,'House No. 56, Street No. 5, F-11, Islamabad, ICT, 44000, Pakistan'),(325,25,'Gujrat,Punjab,50200,Pakistan');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditlogs`
--

DROP TABLE IF EXISTS `auditlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditlogs` (
  `LogID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `AuditLogAction` varchar(255) DEFAULT NULL,
  `AuditLogTimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AuditLogDetails` text,
  PRIMARY KEY (`LogID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `auditlogs_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditlogs`
--

LOCK TABLES `auditlogs` WRITE;
/*!40000 ALTER TABLE `auditlogs` DISABLE KEYS */;
INSERT INTO `auditlogs` VALUES (600,1,'User login','2024-06-01 04:00:00','User Ahmed Ali logged in.'),(601,4,'Parcel created','2024-06-01 06:00:00','Parcel with ID 101 created by Courier Mohammed Rafi.'),(602,3,'Parcel picked up','2024-06-01 09:00:00','Parcel with ID 102 picked up by Customer Zainab Bibi.'),(603,4,'Parcel delivered','2024-06-01 11:00:00','Parcel with ID 103 delivered by Courier Mohammed Rafi.'),(604,5,'User login','2024-06-02 03:00:00','User Qaiser Ali logged in.'),(605,9,'Parcel picked up','2024-06-02 05:30:00','Parcel with ID 105 picked up by Courier Farah Naeem.'),(606,13,'Parcel delivered','2024-06-02 07:00:00','Parcel with ID 106 delivered by Courier Kiran Iqbal.'),(607,8,'Parcel picked up','2024-06-02 09:00:00','Parcel with ID 107 picked up by Customer Bilal Ahmed.'),(608,9,'Parcel delivered','2024-06-02 11:45:00','Parcel with ID 108 delivered by Courier Farah Naeem.'),(609,10,'Parcel picked up','2024-06-03 04:00:00','Parcel with ID 109 picked up by Customer Hassan Tariq.'),(610,11,'Parcel delivered','2024-06-03 06:00:00','Parcel with ID 110 delivered by Courier Rida Qureshi.'),(611,12,'Parcel picked up','2024-06-03 09:00:00','Parcel with ID 111 picked up by Customer Irfan Sheikh.');
/*!40000 ALTER TABLE `auditlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `couriers`
--

DROP TABLE IF EXISTS `couriers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `couriers` (
  `CourierID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `CourierName` varchar(255) NOT NULL,
  `CourierPhone` varchar(20) DEFAULT NULL,
  `CourierEmail` varchar(255) DEFAULT NULL,
  `CourierAvailabilityStatus` enum('Available','Unavailable') NOT NULL,
  PRIMARY KEY (`CourierID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `couriers_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `couriers`
--

LOCK TABLES `couriers` WRITE;
/*!40000 ALTER TABLE `couriers` DISABLE KEYS */;
INSERT INTO `couriers` VALUES (1,2,'Fatima Khan','03007654321','fatima.khan@uog.edu.pk','Available'),(2,4,'Mohammed Rafi','03004321098','mohammed.rafi@uog.edu.pk','Unavailable'),(3,9,'Farah Naeem','03009876521','farah.naeem@uog.edu.pk','Available'),(4,11,'Rida Qureshi','03005432123','rida.qureshi@uog.edu.pk','Available'),(5,13,'Kiran Iqbal','03007865432','kiran.iqbal@uog.edu.pk','Unavailable'),(6,15,'Sana Javed','03006543218','sana.javed@uog.edu.pk','Available'),(7,17,'Rabia Khan','03005432976','rabia.khan@uog.edu.pk','Unavailable'),(8,19,'Maria Khan','03005432109','maria.khan@uog.edu.pk','Available'),(9,21,'Fahad Mustafa','03007865234','fahad.mustafa@uog.edu.pk','Available'),(10,23,'Jawad Ahmed','03006543432','jawad.ahmed@uog.edu.pk','Unavailable'),(11,25,'Saad Bin Qasim','03005432789','saad.qasim@uog.edu.pk','Available'),(12,27,'Uzma Shah','03005432987','uzma.shah@uog.edu.pk','Unavailable'),(13,29,'Humaira Naseem','03007865434','humaira.naseem@uog.edu.pk','Available'),(14,31,'Laila Faisal','03006543234','laila.faisal@uog.edu.pk','Unavailable'),(15,33,'Saba Imran','03005432876','saba.imran@uog.edu.pk','Available'),(16,35,'Mariam Khan','03005432765','mariam.khan@uog.edu.pk','Available'),(17,37,'Fariha Tariq','03007865498','fariha.tariq@uog.edu.pk','Unavailable'),(18,39,'Sadia Qureshi','03006543245','sadia.qureshi@uog.edu.pk','Available'),(19,41,'Nazia Nisar','03005432143','nazia.nisar@uog.edu.pk','Unavailable'),(20,43,'Alina Abbas','03005432787','alina.abbas@uog.edu.pk','Available'),(21,45,'Mehwish Hayat','03007865476','mehwish.hayat@uog.edu.pk','Unavailable'),(22,47,'Ayesha Gul','03006543256','ayesha.gul@uog.edu.pk','Available'),(23,49,'Mona Sheikh','03005432765','mona.sheikh@uog.edu.pk','Unavailable');
/*!40000 ALTER TABLE `couriers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `CustomerPhone` varchar(20) DEFAULT NULL,
  `CustomerEmail` varchar(255) DEFAULT NULL,
  `CustomerAddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,1,'Ahmed Ali','03001234567','ahmed.ali@uog.edu.pk','301'),(2,3,'Zainab Bibi','03009876543','zainab.bibi@uog.edu.pk','302'),(3,8,'Bilal Ahmed','03008765432','bilal.ahmed@uog.edu.pk','303'),(4,10,'Hassan Tariq','03001237654','hassan.tariq@uog.edu.pk','304'),(5,12,'Irfan Sheikh','03006754321','irfan.sheikh@uog.edu.pk','305'),(6,14,'Ali Hamza','03004321054','ali.hamza@uog.edu.pk','306'),(7,16,'Yasir Mehmood','03007654367','yasir.mehmood@uog.edu.pk','307'),(8,18,'Asad Ullah','03001239876','asad.ullah@uog.edu.pk','308'),(9,20,'Shahid Afridi','03006754123','shahid.afridi@uog.edu.pk','309'),(10,22,'Amina Yasmin','03004321765','amina.yasmin@uog.edu.pk','310'),(11,24,'Nadia Ali','03007654328','nadia.ali@uog.edu.pk','311'),(12,26,'Tariq Jameel','03001234578','tariq.jameel@uog.edu.pk','312'),(13,28,'Waqas Raza','03006754345','waqas.raza@uog.edu.pk','313'),(14,30,'Raheel Khan','03004321099','raheel.khan@uog.edu.pk','314'),(15,32,'Mohsin Raza','03007654390','mohsin.raza@uog.edu.pk','315'),(16,34,'Zubair Haider','03001237643','zubair.haider@uog.edu.pk','316'),(17,36,'Arif Malik','03006754231','arif.malik@uog.edu.pk','317'),(18,38,'Naveed Alam','03004321087','naveed.alam@uog.edu.pk','318'),(19,40,'Umer Farooq','03007654312','umer.farooq@uog.edu.pk','319'),(20,42,'Kamran Hussain','03001234567','kamran.hussain@uog.edu.pk','320'),(21,44,'Junaid Jamshed','03006754323','junaid.jamshed@uog.edu.pk','321'),(22,46,'Rashid Latif','03004321077','rashid.latif@uog.edu.pk','322'),(23,48,'Shoaib Akhtar','03007654321','shoaib.akhtar@uog.edu.pk','323'),(24,50,'Amjad Sabri','03001234598','amjad.sabri@uog.edu.pk','324'),(25,51,'Mam Ammarah Javed','03001234567','ammarah.javed@uog.edu.pk','325');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveries` (
  `DeliveryID` int NOT NULL,
  `ParcelID` int DEFAULT NULL,
  `CourierID` int DEFAULT NULL,
  `DeliveryScheduledPickupTime` timestamp NULL DEFAULT NULL,
  `DeliveryActualPickupTime` timestamp NULL DEFAULT NULL,
  `DeliveryScheduledDeliveryTime` timestamp NULL DEFAULT NULL,
  `DeliveryActualDeliveryTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`DeliveryID`),
  KEY `ParcelID` (`ParcelID`),
  KEY `CourierID` (`CourierID`),
  CONSTRAINT `deliveries_ibfk_1` FOREIGN KEY (`ParcelID`) REFERENCES `parcels` (`ParcelID`),
  CONSTRAINT `deliveries_ibfk_2` FOREIGN KEY (`CourierID`) REFERENCES `couriers` (`CourierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
INSERT INTO `deliveries` VALUES (1001,101,5,'2024-06-13 10:06:49','2024-06-13 10:06:49','2024-06-14 10:06:49',NULL),(1002,102,8,'2024-06-13 10:06:49','2024-06-13 10:06:49','2024-06-14 10:06:49',NULL),(1003,103,2,'2024-06-13 10:06:49','2024-06-13 10:06:49','2024-06-15 10:06:49',NULL),(1004,104,15,'2024-06-13 10:06:49','2024-06-13 10:06:49','2024-06-16 10:06:49','2024-06-13 10:06:49'),(1005,105,9,'2024-06-13 10:06:49','2024-06-13 10:06:49','2024-06-14 10:06:49',NULL),(1006,106,10,'2024-06-13 10:06:49','2024-06-13 10:06:49','2024-06-15 10:06:49','2024-06-13 10:06:49'),(1007,107,1,'2024-06-13 10:06:49','2024-06-13 10:06:49','2024-06-16 10:06:49',NULL),(1008,108,7,'2024-06-13 10:06:49','2024-06-13 10:06:49','2024-06-14 10:06:49','2024-06-13 10:06:49'),(1009,109,3,'2024-06-13 10:06:49','2024-06-13 10:06:49','2024-06-15 10:06:49',NULL),(1010,110,13,'2024-06-13 10:06:49','2024-06-13 10:06:49','2024-06-16 10:06:49','2024-06-13 10:06:49'),(1011,111,4,'2024-06-13 10:06:49','2024-06-13 10:06:49','2024-06-14 10:06:49',NULL),(1012,112,14,'2024-06-13 10:06:49','2024-06-13 10:06:49','2024-06-15 10:06:49','2024-06-13 10:06:49'),(1013,113,12,'2024-06-13 10:06:49','2024-06-13 10:06:49','2024-06-16 10:06:49',NULL),(1014,114,6,'2024-06-13 10:06:49','2024-06-13 10:06:49','2024-06-14 10:06:49',NULL),(1015,115,8,'2024-06-13 10:06:49','2024-06-13 10:06:49','2024-06-15 10:06:49',NULL);
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverystatus`
--

DROP TABLE IF EXISTS `deliverystatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliverystatus` (
  `StatusID` int NOT NULL,
  `ParcelID` int DEFAULT NULL,
  `DeliveryStatus` enum('Created','Picked Up','In Transit','Delivered') NOT NULL,
  `StatusTimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`StatusID`),
  KEY `ParcelID` (`ParcelID`),
  CONSTRAINT `deliverystatus_ibfk_1` FOREIGN KEY (`ParcelID`) REFERENCES `parcels` (`ParcelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverystatus`
--

LOCK TABLES `deliverystatus` WRITE;
/*!40000 ALTER TABLE `deliverystatus` DISABLE KEYS */;
INSERT INTO `deliverystatus` VALUES (1551,101,'Created','2024-06-01 04:00:00'),(1552,102,'In Transit','2024-06-01 06:00:00'),(1553,103,'Picked Up','2024-06-01 09:00:00'),(1554,104,'Delivered','2024-06-01 11:00:00'),(1555,105,'Picked Up','2024-06-02 03:00:00'),(1556,106,'Delivered','2024-06-02 05:30:00'),(1557,107,'Picked Up','2024-06-02 07:00:00'),(1558,108,'Delivered','2024-06-02 09:00:00'),(1559,109,'Picked Up','2024-06-02 11:45:00'),(1560,110,'Delivered','2024-06-03 04:00:00'),(1561,111,'Picked Up','2024-06-03 06:00:00'),(1562,112,'Delivered','2024-06-03 09:00:00'),(1563,113,'Created','2024-06-03 11:00:00'),(1564,114,'Picked Up','2024-06-04 03:00:00'),(1565,115,'In Transit','2024-06-04 05:30:00');
/*!40000 ALTER TABLE `deliverystatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `FeedbackID` int NOT NULL,
  `CustomerID` int DEFAULT NULL,
  `ParcelID` int DEFAULT NULL,
  `FeedbackRating` int DEFAULT NULL,
  `FeedbackComments` text,
  `FeedbackTimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`FeedbackID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `ParcelID` (`ParcelID`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`ParcelID`) REFERENCES `parcels` (`ParcelID`),
  CONSTRAINT `feedback_chk_1` CHECK ((`FeedbackRating` between 1 and 10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (2001,1,104,5,'Service was excellent and satisfiable','2024-06-13 11:48:00'),(2002,2,106,4,'Service was excellent and satisfiable','2024-06-13 11:48:00'),(2003,8,108,1,'Service should be improved','2024-06-13 11:48:00'),(2004,10,110,2,'Service should be improved','2024-06-13 11:48:00'),(2005,5,112,5,'Service was excellent and satisfiable','2024-06-13 11:48:00');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `NotificationID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `NotificationMessage` text,
  `NotificationSentTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `NotificationReadStatus` enum('Unread','Read') DEFAULT NULL,
  PRIMARY KEY (`NotificationID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,2,'Your parcel has been picked up by the courier.','2024-06-13 13:48:29','Unread'),(3,6,'There is an update on your parcel status.','2024-06-13 13:48:29','Unread'),(5,10,'Your feedback has been received.','2024-06-13 13:48:29','Unread'),(6,12,'Your parcel has been picked up by the courier.','2024-06-13 13:48:29','Unread'),(8,16,'There is an update on your parcel status.','2024-06-13 13:48:29','Unread'),(10,20,'Your feedback has been received.','2024-06-13 13:48:29','Unread');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcels`
--

DROP TABLE IF EXISTS `parcels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parcels` (
  `ParcelID` int NOT NULL,
  `CustomerID` int DEFAULT NULL,
  `CourierID` int DEFAULT NULL,
  `ParcelPickupAddress` varchar(255) NOT NULL,
  `ParcelDeliveryAddress` varchar(255) NOT NULL,
  `ParcelWeight` decimal(10,2) NOT NULL,
  `ParcelStatus` enum('Created','Picked Up','In Transit','Delivered') NOT NULL,
  `ParcelCreatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ParcelDeliveredDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ParcelID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `CourierID` (`CourierID`),
  CONSTRAINT `parcels_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  CONSTRAINT `parcels_ibfk_2` FOREIGN KEY (`CourierID`) REFERENCES `couriers` (`CourierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcels`
--

LOCK TABLES `parcels` WRITE;
/*!40000 ALTER TABLE `parcels` DISABLE KEYS */;
INSERT INTO `parcels` VALUES (101,3,5,'House No. 123, Street No. 4, Gulberg, Lahore, Punjab, 54000, Pakistan','House No. 45, Street No. 9, F-11, Islamabad, ICT, 44000, Pakistan',2.50,'Created','2024-06-13 10:01:33',NULL),(102,7,8,'House No. 78, Block H, DHA, Karachi, Sindh, 75500, Pakistan','House No. 123, Block D, Clifton, Karachi, Sindh, 75600, Pakistan',1.50,'In Transit','2024-06-13 10:01:33',NULL),(103,12,2,'House No. 89, Street No. 1, Model Town, Lahore, Punjab, 54000, Pakistan','House No. 67, Block B, Johar Town, Lahore, Punjab, 54782, Pakistan',2.00,'Picked Up','2024-06-13 10:01:33',NULL),(104,1,15,'House No. 12, Street No. 2, Satellite Town, Rawalpindi, Punjab, 46000, Pakistan','House No. 78, Street No. 5, Clifton, Karachi, Sindh, 75600, Pakistan',2.80,'Delivered','2024-06-13 10:01:33','2024-06-13 10:01:33'),(105,6,9,'House No. 23, Street No. 6, Bahria Town, Lahore, Punjab, 54000, Pakistan','House No. 90, Street No. 8, F-7, Islamabad, ICT, 44000, Pakistan',4.00,'Picked Up','2024-06-13 10:01:33',NULL),(106,2,10,'House No. 34, Street No. 2, Gulberg, Lahore, Punjab, 54000, Pakistan','House No. 56, Street No. 5, North Nazimabad, Karachi, Sindh, 74700, Pakistan',2.30,'Delivered','2024-06-13 10:01:33','2024-06-13 10:01:33'),(107,4,1,'House No. 9, Street No. 10, G-11, Islamabad, ICT, 44000, Pakistan','House No. 56, Block A, DHA, Lahore, Punjab, 54000, Pakistan',2.60,'Picked Up','2024-06-13 10:01:33',NULL),(108,8,7,'House No. 67, Street No. 4, Gulshan, Karachi, Sindh, 75600, Pakistan','House No. 89, Street No. 6, F-10, Islamabad, ICT, 44000, Pakistan',2.90,'Delivered','2024-06-13 10:01:33','2024-06-13 10:01:33'),(109,9,3,'House No. 12, Block B, Model Town, Lahore, Punjab, 54000, Pakistan','House No. 34, Street No. 7, Satellite Town, Rawalpindi, Punjab, 46000, Pakistan',2.10,'Picked Up','2024-06-13 10:01:33',NULL),(110,10,13,'House No. 78, Street No. 3, Clifton, Karachi, Sindh, 75600, Pakistan','House No. 23, Street No. 9, Gulberg, Lahore, Punjab, 54000, Pakistan',3.30,'Delivered','2024-06-13 10:01:33','2024-06-13 10:01:33'),(111,11,4,'House No. 90, Block H, Johar Town, Lahore, Punjab, 54782, Pakistan','House No. 89, Street No. 8, North Nazimabad, Karachi, Sindh, 74700, Pakistan',4.10,'Picked Up','2024-06-13 10:01:33',NULL),(112,5,14,'House No. 56, Street No. 5, F-11, Islamabad, ICT, 44000, Pakistan','House No. 123, Street No. 4, Gulberg, Lahore, Punjab, 54000, Pakistan',2.40,'Delivered','2024-06-13 10:01:33','2024-06-13 10:01:33'),(113,3,12,'House No. 45, Street No. 9, F-11, Islamabad, ICT, 44000, Pakistan','House No. 123, Block D, Clifton, Karachi, Sindh, 75600, Pakistan',3.50,'Created','2024-06-13 10:01:33',NULL),(114,7,6,'House No. 123, Block D, Clifton, Karachi, Sindh, 75600, Pakistan','House No. 67, Block B, Johar Town, Lahore, Punjab, 54782, Pakistan',1.80,'Picked Up','2024-06-13 10:01:33',NULL),(115,12,8,'House No. 67, Block B, Johar Town, Lahore, Punjab, 54782, Pakistan','House No. 9, Street No. 10, G-11, Islamabad, ICT, 44000, Pakistan',2.70,'In Transit','2024-06-13 10:01:33',NULL);
/*!40000 ALTER TABLE `parcels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentdetails`
--

DROP TABLE IF EXISTS `paymentdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentdetails` (
  `PaymentID` int NOT NULL,
  `CustomerID` int DEFAULT NULL,
  `ParcelID` int DEFAULT NULL,
  `PaymentAmount` decimal(10,2) DEFAULT NULL,
  `PaymentMethod` enum('Credit Card','Debit Card','PayPal','Cash') DEFAULT NULL,
  `PaymentStatus` enum('Pending','Completed','Failed') DEFAULT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `ParcelID` (`ParcelID`),
  CONSTRAINT `paymentdetails_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  CONSTRAINT `paymentdetails_ibfk_2` FOREIGN KEY (`ParcelID`) REFERENCES `parcels` (`ParcelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentdetails`
--

LOCK TABLES `paymentdetails` WRITE;
/*!40000 ALTER TABLE `paymentdetails` DISABLE KEYS */;
INSERT INTO `paymentdetails` VALUES (750,1,104,500.00,'Credit Card','Completed'),(751,2,106,1200.00,'Debit Card','Completed'),(752,8,108,850.00,'PayPal','Completed'),(753,10,110,1000.00,'Cash','Completed'),(754,5,112,750.00,'Cash','Completed'),(755,3,101,500.00,'Credit Card','Pending'),(756,3,113,500.00,'Credit Card','Pending'),(757,12,103,1200.00,'Debit Card','Pending'),(758,6,105,850.00,'PayPal','Pending'),(759,4,107,1000.00,'PayPal','Pending'),(760,9,109,750.00,'Credit Card','Pending'),(761,11,111,600.00,'Debit Card','Pending'),(762,7,114,950.00,'PayPal','Pending'),(763,7,102,1100.00,'Credit Card','Failed'),(764,12,115,1300.00,'Credit Card','Failed');
/*!40000 ALTER TABLE `paymentdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pickuprequests`
--

DROP TABLE IF EXISTS `pickuprequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pickuprequests` (
  `RequestID` int NOT NULL,
  `CustomerID` int DEFAULT NULL,
  `PickupRequestPickupAddress` varchar(255) DEFAULT NULL,
  `PickupRequestRequestedTime` timestamp NULL DEFAULT NULL,
  `PickupRequestStatus` enum('Pending','Approved','Rejected') DEFAULT NULL,
  PRIMARY KEY (`RequestID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `pickuprequests_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pickuprequests`
--

LOCK TABLES `pickuprequests` WRITE;
/*!40000 ALTER TABLE `pickuprequests` DISABLE KEYS */;
INSERT INTO `pickuprequests` VALUES (900,1,'House No. 123, Street No. 4, Gulberg, Lahore, Punjab, 54000, Pakistan','2023-01-15 05:00:00','Pending'),(901,3,'House No. 78, Block H, DHA, Karachi, Sindh, 75500, Pakistan','2023-02-10 09:30:00','Approved'),(902,5,'House No. 89, Street No. 1, Model Town, Lahore, Punjab, 54000, Pakistan','2023-03-20 04:00:00','Rejected'),(903,7,'House No. 12, Street No. 2, Satellite Town, Rawalpindi, Punjab, 46000, Pakistan','2023-04-25 11:45:00','Pending'),(904,9,'House No. 23, Street No. 6, Bahria Town, Lahore, Punjab, 54000, Pakistan','2023-05-12 06:15:00','Approved'),(905,11,'House No. 34, Street No. 2, Gulberg, Lahore, Punjab, 54000, Pakistan','2023-06-05 08:00:00','Rejected'),(906,13,'House No. 9, Street No. 10, G-11, Islamabad, ICT, 44000, Pakistan','2023-07-17 03:30:00','Pending'),(907,15,'House No. 67, Street No. 4, Gulshan, Karachi, Sindh, 75600, Pakistan','2023-08-21 10:00:00','Approved'),(908,17,'House No. 12, Block B, Model Town, Lahore, Punjab, 54000, Pakistan','2023-09-30 04:45:00','Rejected'),(909,19,'House No. 78, Street No. 3, Clifton, Karachi, Sindh, 75600, Pakistan','2023-10-18 05:30:00','Pending');
/*!40000 ALTER TABLE `pickuprequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routes` (
  `RouteID` int NOT NULL,
  `CourierID` int DEFAULT NULL,
  `RouteDetails` text,
  PRIMARY KEY (`RouteID`),
  KEY `CourierID` (`CourierID`),
  CONSTRAINT `routes_ibfk_1` FOREIGN KEY (`CourierID`) REFERENCES `couriers` (`CourierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (930,3,'From Lahore to Islamabad'),(931,7,'From Karachi to Lahore'),(932,9,'From Islamabad to Karachi'),(933,11,'From Lahore to Rawalpindi'),(934,15,'From Islamabad to Faisalabad');
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipments` (
  `ShipmentID` int NOT NULL,
  `ParcelID` int DEFAULT NULL,
  `CourierID` int DEFAULT NULL,
  `ShipmentDetails` text,
  `ShipmentStatus` enum('Pending','Shipped','Delivered') DEFAULT NULL,
  PRIMARY KEY (`ShipmentID`),
  KEY `ParcelID` (`ParcelID`),
  KEY `CourierID` (`CourierID`),
  CONSTRAINT `shipments_ibfk_1` FOREIGN KEY (`ParcelID`) REFERENCES `parcels` (`ParcelID`),
  CONSTRAINT `shipments_ibfk_2` FOREIGN KEY (`CourierID`) REFERENCES `couriers` (`CourierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipments`
--

LOCK TABLES `shipments` WRITE;
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
INSERT INTO `shipments` VALUES (501,101,5,'Electronics - Handle with care','Pending'),(502,102,8,'Books - Urgent delivery','Shipped'),(503,103,2,'Clothing - Fragile','Delivered'),(504,104,15,'Documents - Confidential','Pending'),(505,105,9,'Furniture - Heavy load','Shipped'),(506,106,10,'Groceries - Perishable','Delivered'),(507,107,1,'Toys - Gift wrap','Pending'),(508,108,7,'Medical supplies - Handle with care','Delivered'),(509,109,3,'Sports equipment - Large parcel','Shipped'),(510,110,13,'Home appliances - Fragile','Delivered'),(511,111,4,'Office supplies - Stationary','Pending'),(512,112,14,'Cosmetics - Handle with care','Shipped'),(513,113,12,'Jewelry - High value','Pending'),(514,114,6,'Footwear - Urgent delivery','Shipped'),(515,115,8,'Gardening tools - Large parcel','Delivered');
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `UserEmail` varchar(255) NOT NULL,
  `UserPhone` varchar(20) DEFAULT NULL,
  `UserType` enum('Customer','Courier','Administrator') NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserEmail` (`UserEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ahmed Ali','abc#123','ahmed.ali@uog.edu.pk','03001234567','Customer'),(2,'Fatima Khan','def#456','fatima.khan@uog.edu.pk','03007654321','Courier'),(3,'Zainab Bibi','ghi#789','zainab.bibi@uog.edu.pk','03009876543','Customer'),(4,'Mohammed Rafi','jkl#012','mohammed.rafi@uog.edu.pk','03004321098','Courier'),(5,'Qaiser Ali','mno#345','23027119-003@uog.edu.pk','03187159007','Administrator'),(6,'Ali Haider','pqr#678','23027119-011@uog.edu.pk','03472793409','Administrator'),(7,'Muhammad Sharif Saleem','stu#901','23027119-009@uog.edu.pk','03126603664','Administrator'),(8,'Bilal Ahmed','vwx#234','bilal.ahmed@uog.edu.pk','03008765432','Customer'),(9,'Farah Naeem','yz#5678','farah.naeem@uog.edu.pk','03009876521','Courier'),(10,'Hassan Tariq','abc#234','hassan.tariq@uog.edu.pk','03001237654','Customer'),(11,'Rida Qureshi','def#567','rida.qureshi@uog.edu.pk','03005432123','Courier'),(12,'Irfan Sheikh','ghi#890','irfan.sheikh@uog.edu.pk','03006754321','Customer'),(13,'Kiran Iqbal','jkl#123','kiran.iqbal@uog.edu.pk','03007865432','Courier'),(14,'Ali Hamza','mno#456','ali.hamza@uog.edu.pk','03004321054','Customer'),(15,'Sana Javed','pqr#789','sana.javed@uog.edu.pk','03006543218','Courier'),(16,'Yasir Mehmood','stu#012','yasir.mehmood@uog.edu.pk','03007654367','Customer'),(17,'Rabia Khan','vwx#345','rabia.khan@uog.edu.pk','03005432976','Courier'),(18,'Asad Ullah','yz#6789','asad.ullah@uog.edu.pk','03001239876','Customer'),(19,'Maria Khan','abc#567','maria.khan@uog.edu.pk','03005432109','Courier'),(20,'Shahid Afridi','def#890','shahid.afridi@uog.edu.pk','03006754123','Customer'),(21,'Fahad Mustafa','ghi#123','fahad.mustafa@uog.edu.pk','03007865234','Courier'),(22,'Amina Yasmin','jkl#456','amina.yasmin@uog.edu.pk','03004321765','Customer'),(23,'Jawad Ahmed','mno#789','jawad.ahmed@uog.edu.pk','03006543432','Courier'),(24,'Nadia Ali','pqr#012','nadia.ali@uog.edu.pk','03007654328','Customer'),(25,'Saad Bin Qasim','stu#345','saad.qasim@uog.edu.pk','03005432789','Courier'),(26,'Tariq Jameel','vwx#678','tariq.jameel@uog.edu.pk','03001234578','Customer'),(27,'Uzma Shah','yz#0123','uzma.shah@uog.edu.pk','03005432987','Courier'),(28,'Waqas Raza','abc#890','waqas.raza@uog.edu.pk','03006754345','Customer'),(29,'Humaira Naseem','def#123','humaira.naseem@uog.edu.pk','03007865434','Courier'),(30,'Raheel Khan','ghi#456','raheel.khan@uog.edu.pk','03004321099','Customer'),(31,'Laila Faisal','jkl#789','laila.faisal@uog.edu.pk','03006543234','Courier'),(32,'Mohsin Raza','mno#012','mohsin.raza@uog.edu.pk','03007654390','Customer'),(33,'Saba Imran','pqr#345','saba.imran@uog.edu.pk','03005432876','Courier'),(34,'Zubair Haider','stu#678','zubair.haider@uog.edu.pk','03001237643','Customer'),(35,'Mariam Khan','vwx#012','mariam.khan@uog.edu.pk','03005432765','Courier'),(36,'Arif Malik','yz#3456','arif.malik@uog.edu.pk','03006754231','Customer'),(37,'Fariha Tariq','abc#789','fariha.tariq@uog.edu.pk','03007865498','Courier'),(38,'Naveed Alam','def#012','naveed.alam@uog.edu.pk','03004321087','Customer'),(39,'Sadia Qureshi','ghi#345','sadia.qureshi@uog.edu.pk','03006543245','Courier'),(40,'Umer Farooq','jkl#678','umer.farooq@uog.edu.pk','03007654312','Customer'),(41,'Nazia Nisar','mno#012','nazia.nisar@uog.edu.pk','03005432143','Courier'),(42,'Kamran Hussain','pqr#234','kamran.hussain@uog.edu.pk','03001234567','Customer'),(43,'Alina Abbas','stu#567','alina.abbas@uog.edu.pk','03005432787','Courier'),(44,'Junaid Jamshed','vwx#789','junaid.jamshed@uog.edu.pk','03006754323','Customer'),(45,'Mehwish Hayat','yz#1234','mehwish.hayat@uog.edu.pk','03007865476','Courier'),(46,'Rashid Latif','abc#890','rashid.latif@uog.edu.pk','03004321077','Customer'),(47,'Ayesha Gul','def#234','ayesha.gul@uog.edu.pk','03006543256','Courier'),(48,'Shoaib Akhtar','ghi#567','shoaib.akhtar@uog.edu.pk','03007654321','Customer'),(49,'Mona Sheikh','jkl#890','mona.sheikh@uog.edu.pk','03005432765','Courier'),(50,'Amjad Sabri','mno#345','amjad.sabri@uog.edu.pk','03001234598','Customer'),(51,'Ammarah Javed','pk#123','ammarah.javed@uog.edu.pk','03001234567','Customer');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersessions`
--

DROP TABLE IF EXISTS `usersessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usersessions` (
  `SessionID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `UserSessionLoginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UserSessionLogoutTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`SessionID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `usersessions_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersessions`
--

LOCK TABLES `usersessions` WRITE;
/*!40000 ALTER TABLE `usersessions` DISABLE KEYS */;
INSERT INTO `usersessions` VALUES (451,1,'2024-06-01 04:00:00','2024-06-01 05:00:00'),(452,2,'2024-06-01 06:00:00','2024-06-01 07:30:00'),(453,3,'2024-06-01 09:00:00','2024-06-01 10:00:00'),(454,4,'2024-06-01 11:00:00','2024-06-01 12:45:00'),(455,5,'2024-06-02 03:00:00','2024-06-02 04:15:00'),(456,6,'2024-06-02 05:30:00','2024-06-02 06:30:00'),(457,7,'2024-06-02 07:00:00','2024-06-02 08:00:00'),(458,8,'2024-06-02 09:00:00','2024-06-02 10:30:00'),(459,9,'2024-06-02 11:45:00','2024-06-02 12:45:00'),(460,10,'2024-06-03 04:00:00','2024-06-03 05:00:00'),(461,11,'2024-06-03 06:00:00','2024-06-03 07:30:00'),(462,12,'2024-06-03 09:00:00','2024-06-03 10:00:00'),(463,13,'2024-06-03 11:00:00','2024-06-03 12:45:00'),(464,14,'2024-06-04 03:00:00','2024-06-04 04:15:00'),(465,15,'2024-06-04 05:30:00','2024-06-04 06:30:00'),(466,16,'2024-06-04 07:00:00','2024-06-04 08:00:00'),(467,17,'2024-06-04 09:00:00','2024-06-04 10:30:00'),(468,18,'2024-06-04 11:45:00','2024-06-04 12:45:00'),(469,19,'2024-06-05 04:00:00','2024-06-05 05:00:00'),(470,20,'2024-06-05 06:00:00','2024-06-05 07:30:00'),(471,21,'2024-06-05 09:00:00','2024-06-05 10:00:00'),(472,22,'2024-06-05 11:00:00','2024-06-05 12:45:00'),(473,23,'2024-06-06 03:00:00','2024-06-06 04:15:00'),(474,24,'2024-06-06 05:30:00','2024-06-06 06:30:00'),(475,25,'2024-06-06 07:00:00','2024-06-06 08:00:00'),(476,26,'2024-06-06 09:00:00','2024-06-06 10:30:00'),(477,27,'2024-06-06 11:45:00','2024-06-06 12:45:00'),(478,28,'2024-06-07 04:00:00','2024-06-07 05:00:00'),(479,29,'2024-06-07 06:00:00','2024-06-07 07:30:00'),(480,30,'2024-06-07 09:00:00','2024-06-07 10:00:00'),(481,31,'2024-06-07 11:00:00','2024-06-07 12:45:00'),(482,32,'2024-06-08 03:00:00','2024-06-08 04:15:00'),(483,33,'2024-06-08 05:30:00','2024-06-08 06:30:00'),(484,34,'2024-06-08 07:00:00','2024-06-08 08:00:00'),(485,35,'2024-06-08 09:00:00','2024-06-08 10:30:00'),(486,36,'2024-06-08 11:45:00','2024-06-08 12:45:00'),(487,37,'2024-06-09 04:00:00','2024-06-09 05:00:00'),(488,38,'2024-06-09 06:00:00','2024-06-09 07:30:00'),(489,39,'2024-06-09 09:00:00','2024-06-09 10:00:00'),(490,40,'2024-06-09 11:00:00','2024-06-09 12:45:00'),(491,41,'2024-06-10 03:00:00','2024-06-10 04:15:00'),(492,42,'2024-06-10 05:30:00','2024-06-10 06:30:00'),(493,43,'2024-06-10 07:00:00','2024-06-10 08:00:00'),(494,44,'2024-06-10 09:00:00','2024-06-10 10:30:00'),(495,45,'2024-06-10 11:45:00','2024-06-10 12:45:00'),(496,46,'2024-06-11 04:00:00','2024-06-11 05:00:00'),(497,47,'2024-06-11 06:00:00','2024-06-11 07:30:00'),(498,48,'2024-06-11 09:00:00','2024-06-11 10:00:00'),(499,49,'2024-06-11 11:00:00','2024-06-11 12:45:00'),(500,50,'2024-06-12 03:00:00','2024-06-12 04:15:00');
/*!40000 ALTER TABLE `usersessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-21 23:01:29
