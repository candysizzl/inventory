-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: localhost    Database: fishbowl_demo
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.24.04.1

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `typeId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `typeId` (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountgroup`
--

DROP TABLE IF EXISTS `accountgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accountgroup` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountgroup`
--

LOCK TABLES `accountgroup` WRITE;
/*!40000 ALTER TABLE `accountgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountgrouprelation`
--

DROP TABLE IF EXISTS `accountgrouprelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accountgrouprelation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountId` int DEFAULT NULL,
  `groupId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountgrouprelation`
--

LOCK TABLES `accountgrouprelation` WRITE;
/*!40000 ALTER TABLE `accountgrouprelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountgrouprelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounttype`
--

DROP TABLE IF EXISTS `accounttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounttype` (
  `id` int NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounttype`
--

LOCK TABLES `accounttype` WRITE;
/*!40000 ALTER TABLE `accounttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountId` int NOT NULL,
  `name` varchar(41) NOT NULL,
  `city` varchar(30) DEFAULT NULL,
  `countryId` int DEFAULT NULL,
  `defaultFlag` bit(1) NOT NULL,
  `locationGroupId` int DEFAULT NULL,
  `addressName` varchar(90) DEFAULT NULL,
  `pipelineContactNum` int DEFAULT NULL,
  `stateId` int DEFAULT NULL,
  `address` varchar(90) NOT NULL,
  `typeID` int DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_accountId` (`accountId`),
  UNIQUE KEY `u_addressName` (`addressName`),
  KEY `Performance` (`accountId`,`locationGroupId`,`stateId`,`typeID`,`countryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresstype`
--

DROP TABLE IF EXISTS `addresstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresstype` (
  `id` int NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresstype`
--

LOCK TABLES `addresstype` WRITE;
/*!40000 ALTER TABLE `addresstype` DISABLE KEYS */;
/*!40000 ALTER TABLE `addresstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardOnFile`
--

DROP TABLE IF EXISTS `cardOnFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cardOnFile` (
  `id` int NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardOnFile`
--

LOCK TABLES `cardOnFile` WRITE;
/*!40000 ALTER TABLE `cardOnFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardOnFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrier`
--

DROP TABLE IF EXISTS `carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrier` (
  `id` int NOT NULL,
  `activeFlag` bit(1) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `readOnly` bit(1) DEFAULT NULL,
  `scac` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrier`
--

LOCK TABLES `carrier` WRITE;
/*!40000 ALTER TABLE `carrier` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrierservice`
--

DROP TABLE IF EXISTS `carrierservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrierservice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activeFlag` bit(1) NOT NULL,
  `carrierId` int NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `readOnly` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_code` (`code`),
  UNIQUE KEY `u_name` (`name`),
  KEY `Performance` (`carrierId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrierservice`
--

LOCK TABLES `carrierservice` WRITE;
/*!40000 ALTER TABLE `carrierservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrierservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartontype`
--

DROP TABLE IF EXISTS `cartontype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartontype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `defaultFlag` bit(1) NOT NULL,
  `description` varchar(252) DEFAULT NULL,
  `height` decimal(28,9) DEFAULT NULL,
  `len` decimal(28,9) DEFAULT NULL,
  `name` varchar(70) NOT NULL,
  `sizeUOM` varchar(30) DEFAULT NULL,
  `width` decimal(28,9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartontype`
--

LOCK TABLES `cartontype` WRITE;
/*!40000 ALTER TABLE `cartontype` DISABLE KEYS */;
/*!40000 ALTER TABLE `cartontype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `EANUCCPrefix` varchar(30) DEFAULT NULL,
  `abn` varchar(25) DEFAULT NULL,
  `accountId` int NOT NULL,
  `dateEntered` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `defaultCarrierId` int NOT NULL,
  `defaultFlag` bit(1) DEFAULT NULL,
  `lastChangedUser` varchar(15) DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `taxExempt` bit(1) NOT NULL,
  `TAXEXEMPTNUMBER` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`),
  KEY `Performance` (`defaultCarrierId`,`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountId` int NOT NULL,
  `addressId` int DEFAULT NULL,
  `datus` varchar(64) DEFAULT NULL,
  `defaultFlag` bit(1) DEFAULT NULL,
  `contactName` varchar(30) DEFAULT NULL,
  `typeId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`accountId`,`typeId`,`addressId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacttype`
--

DROP TABLE IF EXISTS `contacttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacttype` (
  `id` int NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacttype`
--

LOCK TABLES `contacttype` WRITE;
/*!40000 ALTER TABLE `contacttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activeFlag` bit(1) NOT NULL,
  `code` varchar(3) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `excludeFromUpdate` bit(1) DEFAULT NULL,
  `homeCurrency` bit(1) DEFAULT NULL,
  `lastChangedUserId` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rate` int DEFAULT NULL,
  `symbol` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`),
  KEY `Performance` (`lastChangedUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountId` int NOT NULL,
  `accountingHash` varchar(30) DEFAULT NULL,
  `accountingId` varchar(36) DEFAULT NULL,
  `activeFlag` bit(1) DEFAULT NULL,
  `creditLimit` decimal(28,9) DEFAULT NULL,
  `currencyId` int DEFAULT NULL,
  `currencyRate` decimal(28,9) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `defaultCarrierId` int DEFAULT NULL,
  `defaultPaymentTermsId` int DEFAULT NULL,
  `defaultSalesmanId` int NOT NULL,
  `defaultShipTermsId` int DEFAULT NULL,
  `jobDepth` int DEFAULT NULL,
  `lastChangedUser` varchar(15) DEFAULT NULL,
  `name` varchar(41) NOT NULL,
  `note` varchar(90) DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `parentId` int DEFAULT NULL,
  `pipelineAccountNum` int DEFAULT NULL,
  `qbClassId` int DEFAULT NULL,
  `statusId` int NOT NULL,
  `sysUserId` int DEFAULT NULL,
  `taxExempt` bit(1) NOT NULL,
  `taxExemptNumber` varchar(30) DEFAULT NULL,
  `taxRateId` int DEFAULT NULL,
  `toBeEmailed` bit(1) NOT NULL,
  `toBePrinted` bit(1) NOT NULL,
  `url` varchar(30) DEFAULT NULL,
  `issuableStatusId` int DEFAULT NULL,
  `carrierServiceId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`),
  UNIQUE KEY `u_number` (`number`),
  UNIQUE KEY `u_parentId` (`parentId`),
  KEY `Performance` (`name`,`number`,`carrierServiceId`,`accountId`,`statusId`,`taxRateId`,`defaultPaymentTermsId`,`parentId`,`qbClassId`,`defaultShipTermsId`,`currencyId`,`defaultCarrierId`,`issuableStatusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerparts`
--

DROP TABLE IF EXISTS `customerparts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerparts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customerId` int NOT NULL,
  `customerPartNumber` varchar(71) NOT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `dateLastPurchased` datetime DEFAULT NULL,
  `lastChangedUserId` int DEFAULT NULL,
  `lastPrice` decimal(28,9) DEFAULT NULL,
  `productId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_customerId` (`customerId`),
  UNIQUE KEY `u_productId` (`productId`),
  KEY `Performance` (`customerPartNumber`,`lastChangedUserId`,`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerparts`
--

LOCK TABLES `customerparts` WRITE;
/*!40000 ALTER TABLE `customerparts` DISABLE KEYS */;
/*!40000 ALTER TABLE `customerparts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerstatus`
--

DROP TABLE IF EXISTS `customerstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerstatus` (
  `id` int NOT NULL,
  `name` varchar(71) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerstatus`
--

LOCK TABLES `customerstatus` WRITE;
/*!40000 ALTER TABLE `customerstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `customerstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customfield`
--

DROP TABLE IF EXISTS `customfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customfield` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accessRight` bit(1) NOT NULL,
  `activeFlag` bit(1) NOT NULL,
  `customFieldTypeId` int NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `listId` int DEFAULT NULL,
  `name` varchar(41) NOT NULL,
  `required` bit(1) NOT NULL,
  `sortOrder` int NOT NULL,
  `tableId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`),
  UNIQUE KEY `u_tableId` (`tableId`),
  KEY `Performance` (`listId`,`tableId`,`customFieldTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customfield`
--

LOCK TABLES `customfield` WRITE;
/*!40000 ALTER TABLE `customfield` DISABLE KEYS */;
/*!40000 ALTER TABLE `customfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customfieldtype`
--

DROP TABLE IF EXISTS `customfieldtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customfieldtype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(256) DEFAULT NULL,
  `name` varchar(41) NOT NULL,
  `tableId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_tableId` (`tableId`),
  KEY `Performance` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customfieldtype`
--

LOCK TABLES `customfieldtype` WRITE;
/*!40000 ALTER TABLE `customfieldtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `customfieldtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customlist`
--

DROP TABLE IF EXISTS `customlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(256) DEFAULT NULL,
  `name` varchar(41) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customlist`
--

LOCK TABLES `customlist` WRITE;
/*!40000 ALTER TABLE `customlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `customlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customlistitem`
--

DROP TABLE IF EXISTS `customlistitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customlistitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(256) DEFAULT NULL,
  `listId` int DEFAULT NULL,
  `name` varchar(41) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`),
  UNIQUE KEY `u_listId` (`listId`),
  KEY `Performance` (`listId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customlistitem`
--

LOCK TABLES `customlistitem` WRITE;
/*!40000 ALTER TABLE `customlistitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `customlistitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defaultlocation`
--

DROP TABLE IF EXISTS `defaultlocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `defaultlocation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `locationGroupId` int NOT NULL,
  `locationId` int NOT NULL,
  `partId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_locationGroupId` (`locationGroupId`),
  UNIQUE KEY `u_locationId` (`locationId`),
  KEY `Performance` (`locationGroupId`,`locationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defaultlocation`
--

LOCK TABLES `defaultlocation` WRITE;
/*!40000 ALTER TABLE `defaultlocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `defaultlocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(256) DEFAULT NULL,
  `name` varchar(41) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventorylog`
--

DROP TABLE IF EXISTS `inventorylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventorylog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `begLocationId` int NOT NULL,
  `begTagNum` bigint NOT NULL,
  `changeQty` decimal(28,9) DEFAULT NULL,
  `cost` decimal(28,9) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `endLocationId` int NOT NULL,
  `endTagNum` bigint DEFAULT NULL,
  `eventDate` datetime DEFAULT NULL,
  `info` varchar(100) DEFAULT NULL,
  `locationGroupId` int DEFAULT NULL,
  `partId` int NOT NULL,
  `partTrackingId` int DEFAULT NULL,
  `qtyOnHand` decimal(28,9) DEFAULT NULL,
  `recordId` bigint DEFAULT NULL,
  `tableId` int DEFAULT NULL,
  `typeId` int NOT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`partId`,`typeId`,`endLocationId`,`begLocationId`,`userId`,`locationGroupId`,`begTagNum`,`endTagNum`,`eventDate`,`partTrackingId`,`recordId`,`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventorylog`
--

LOCK TABLES `inventorylog` WRITE;
/*!40000 ALTER TABLE `inventorylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventorylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemadjust`
--

DROP TABLE IF EXISTS `itemadjust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemadjust` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activeFlag` bit(1) NOT NULL,
  `amount` decimal(28,9) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `expenseAsAccountId` int DEFAULT NULL,
  `incomeAsAccountId` int DEFAULT NULL,
  `name` varchar(31) NOT NULL,
  `percentage` decimal(28,9) DEFAULT NULL,
  `taxRateId` int DEFAULT NULL,
  `taxableFlag` bit(1) NOT NULL,
  `typeId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`),
  KEY `Performance` (`typeId`,`taxRateId`,`expenseAsAccountId`,`incomeAsAccountId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemadjust`
--

LOCK TABLES `itemadjust` WRITE;
/*!40000 ALTER TABLE `itemadjust` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemadjust` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemadjusttype`
--

DROP TABLE IF EXISTS `itemadjusttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemadjusttype` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemadjusttype`
--

LOCK TABLES `itemadjusttype` WRITE;
/*!40000 ALTER TABLE `itemadjusttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemadjusttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kititem`
--

DROP TABLE IF EXISTS `kititem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kititem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `defaultQty` decimal(28,9) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `discountId` int DEFAULT NULL,
  `kitItemTypeId` int NOT NULL,
  `kitProductId` int NOT NULL,
  `kitTypeId` int NOT NULL,
  `maxQty` decimal(28,9) NOT NULL,
  `minQty` decimal(28,9) NOT NULL,
  `note` longtext,
  `productId` int DEFAULT NULL,
  `qtyPriceAdjustment` decimal(28,9) DEFAULT NULL,
  `soItemTypeId` int DEFAULT NULL,
  `sortOrder` int DEFAULT NULL,
  `taxRateId` int DEFAULT NULL,
  `uomId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`taxRateId`,`productId`,`discountId`,`kitTypeId`,`kitProductId`,`soItemTypeId`,`kitItemTypeId`,`uomId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kititem`
--

LOCK TABLES `kititem` WRITE;
/*!40000 ALTER TABLE `kititem` DISABLE KEYS */;
/*!40000 ALTER TABLE `kititem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kititemtype`
--

DROP TABLE IF EXISTS `kititemtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kititemtype` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kititemtype`
--

LOCK TABLES `kititemtype` WRITE;
/*!40000 ALTER TABLE `kititemtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `kititemtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kitoption`
--

DROP TABLE IF EXISTS `kitoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kitoption` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `defaultFlag` bit(1) NOT NULL,
  `kitItemId` int NOT NULL,
  `priceAdjustment` decimal(28,9) DEFAULT NULL,
  `productId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`kitItemId`,`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kitoption`
--

LOCK TABLES `kitoption` WRITE;
/*!40000 ALTER TABLE `kitoption` DISABLE KEYS */;
/*!40000 ALTER TABLE `kitoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kittype`
--

DROP TABLE IF EXISTS `kittype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kittype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kittype`
--

LOCK TABLES `kittype` WRITE;
/*!40000 ALTER TABLE `kittype` DISABLE KEYS */;
/*!40000 ALTER TABLE `kittype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activeFlag` bit(1) NOT NULL,
  `countedAsAvailable` bit(1) NOT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `defaultCustomerId` int DEFAULT NULL,
  `defaultFlag` bit(1) NOT NULL,
  `defaultVendorId` int DEFAULT NULL,
  `description` varchar(252) DEFAULT NULL,
  `locationGroupId` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `parentId` int DEFAULT NULL,
  `pickable` bit(1) NOT NULL,
  `receivable` bit(1) NOT NULL,
  `sortOrder` int DEFAULT NULL,
  `typeId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`),
  UNIQUE KEY `u_locationGroupId` (`locationGroupId`),
  KEY `Performance` (`typeId`,`locationGroupId`,`defaultVendorId`,`defaultCustomerId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locationgroup`
--

DROP TABLE IF EXISTS `locationgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locationgroup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activeFlag` bit(1) NOT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `qbClassId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locationgroup`
--

LOCK TABLES `locationgroup` WRITE;
/*!40000 ALTER TABLE `locationgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `locationgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locationtype`
--

DROP TABLE IF EXISTS `locationtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locationtype` (
  `id` int NOT NULL,
  `name` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locationtype`
--

LOCK TABLES `locationtype` WRITE;
/*!40000 ALTER TABLE `locationtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `locationtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memo`
--

DROP TABLE IF EXISTS `memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime DEFAULT NULL,
  `memo` longtext,
  `recordId` int NOT NULL,
  `tableId` int NOT NULL,
  `userName` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`recordId`,`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memo`
--

LOCK TABLES `memo` WRITE;
/*!40000 ALTER TABLE `memo` DISABLE KEYS */;
/*!40000 ALTER TABLE `memo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part`
--

DROP TABLE IF EXISTS `part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part` (
  `id` int NOT NULL AUTO_INCREMENT,
  `abcCode` varchar(1) DEFAULT NULL,
  `accountingHash` varchar(30) DEFAULT NULL,
  `accountingId` varchar(36) DEFAULT NULL,
  `activeFlag` bit(1) NOT NULL,
  `adjustmentAccountId` int DEFAULT NULL,
  `alertNote` varchar(90) DEFAULT NULL,
  `alwaysManufacture` bit(1) NOT NULL,
  `cogsAccountId` int DEFAULT NULL,
  `configurable` bit(1) NOT NULL,
  `controlledFlag` bit(1) NOT NULL,
  `cycleCountTol` decimal(28,9) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `defaultBomId` int DEFAULT NULL,
  `defaultProductId` int DEFAULT NULL,
  `description` varchar(252) DEFAULT NULL,
  `details` longtext,
  `height` decimal(28,9) DEFAULT NULL,
  `inventoryAccountId` int DEFAULT NULL,
  `lastChangedUser` varchar(15) DEFAULT NULL,
  `leadTime` int DEFAULT NULL,
  `leadTimeToFulfill` int DEFAULT NULL,
  `len` decimal(28,9) DEFAULT NULL,
  `num` varchar(70) NOT NULL,
  `partClassId` int DEFAULT NULL,
  `pickInUomOfPart` bit(1) NOT NULL,
  `receivingTol` decimal(28,9) DEFAULT NULL,
  `revision` varchar(15) DEFAULT NULL,
  `scrapAccountId` int DEFAULT NULL,
  `serializedFlag` bit(1) DEFAULT NULL,
  `sizeUomId` int DEFAULT NULL,
  `stdCost` decimal(28,9) DEFAULT NULL,
  `taxId` int DEFAULT NULL,
  `trackingFlag` bit(1) NOT NULL,
  `typeId` int NOT NULL,
  `uomId` int NOT NULL,
  `upc` varchar(31) NOT NULL,
  `url` varchar(256) DEFAULT NULL,
  `varianceAccountId` int DEFAULT NULL,
  `weight` decimal(28,9) DEFAULT NULL,
  `weightUomId` int DEFAULT NULL,
  `width` decimal(28,9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_num` (`num`),
  KEY `Performance` (`adjustmentAccountId`,`weightUomId`,`scrapAccountId`,`typeId`,`inventoryAccountId`,`defaultProductId`,`sizeUomId`,`cogsAccountId`,`defaultBomId`,`uomId`,`taxId`,`varianceAccountId`,`description`,`num`,`upc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part`
--

LOCK TABLES `part` WRITE;
/*!40000 ALTER TABLE `part` DISABLE KEYS */;
/*!40000 ALTER TABLE `part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partcategory`
--

DROP TABLE IF EXISTS `partcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(256) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partcategory`
--

LOCK TABLES `partcategory` WRITE;
/*!40000 ALTER TABLE `partcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `partcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partcost`
--

DROP TABLE IF EXISTS `partcost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partcost` (
  `id` int NOT NULL AUTO_INCREMENT,
  `avgCost` decimal(28,9) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `partId` int NOT NULL,
  `qty` decimal(28,9) NOT NULL,
  `totalCost` decimal(28,9) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_partId` (`partId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partcost`
--

LOCK TABLES `partcost` WRITE;
/*!40000 ALTER TABLE `partcost` DISABLE KEYS */;
/*!40000 ALTER TABLE `partcost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partcosthistory`
--

DROP TABLE IF EXISTS `partcosthistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partcosthistory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `avgCost` decimal(28,9) DEFAULT NULL,
  `dateCaptured` datetime NOT NULL,
  `nextCost` decimal(28,9) DEFAULT NULL,
  `partId` int NOT NULL,
  `quantity` decimal(28,9) DEFAULT NULL,
  `stdCost` decimal(28,9) DEFAULT NULL,
  `totalCost` decimal(28,9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_partId` (`partId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partcosthistory`
--

LOCK TABLES `partcosthistory` WRITE;
/*!40000 ALTER TABLE `partcosthistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `partcosthistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parttotracking`
--

DROP TABLE IF EXISTS `parttotracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parttotracking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nextValue` varchar(41) DEFAULT NULL,
  `partId` int NOT NULL,
  `partTrackingId` int NOT NULL,
  `primaryFlag` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_partId` (`partId`),
  UNIQUE KEY `u_partTrackingId` (`partTrackingId`),
  KEY `Performance` (`partTrackingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parttotracking`
--

LOCK TABLES `parttotracking` WRITE;
/*!40000 ALTER TABLE `parttotracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `parttotracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parttracking`
--

DROP TABLE IF EXISTS `parttracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parttracking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `abbr` varchar(41) NOT NULL,
  `activeFlag` bit(1) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `name` varchar(41) NOT NULL,
  `sortOrder` int NOT NULL,
  `typeId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`),
  KEY `Performance` (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parttracking`
--

LOCK TABLES `parttracking` WRITE;
/*!40000 ALTER TABLE `parttracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `parttracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parttrackingtype`
--

DROP TABLE IF EXISTS `parttrackingtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parttrackingtype` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parttrackingtype`
--

LOCK TABLES `parttrackingtype` WRITE;
/*!40000 ALTER TABLE `parttrackingtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `parttrackingtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parttype`
--

DROP TABLE IF EXISTS `parttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parttype` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parttype`
--

LOCK TABLES `parttype` WRITE;
/*!40000 ALTER TABLE `parttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `parttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patype`
--

DROP TABLE IF EXISTS `patype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patype`
--

LOCK TABLES `patype` WRITE;
/*!40000 ALTER TABLE `patype` DISABLE KEYS */;
/*!40000 ALTER TABLE `patype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentgateway`
--

DROP TABLE IF EXISTS `paymentgateway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentgateway` (
  `id` int NOT NULL,
  `accountType` int DEFAULT NULL,
  `javaClass` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `other` varchar(255) DEFAULT NULL,
  `secret` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentgateway`
--

LOCK TABLES `paymentgateway` WRITE;
/*!40000 ALTER TABLE `paymentgateway` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentgateway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentmethod`
--

DROP TABLE IF EXISTS `paymentmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentmethod` (
  `id` int NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `editable` bit(1) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `typeId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`),
  KEY `Performance` (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentmethod`
--

LOCK TABLES `paymentmethod` WRITE;
/*!40000 ALTER TABLE `paymentmethod` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentmethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentterms`
--

DROP TABLE IF EXISTS `paymentterms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentterms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountingHash` varchar(30) DEFAULT NULL,
  `accountingId` varchar(36) DEFAULT NULL,
  `activeFlag` bit(1) NOT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `defaultTerm` bit(1) NOT NULL,
  `discount` double DEFAULT NULL,
  `discountDays` int DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `netDays` int DEFAULT NULL,
  `nextMonth` int DEFAULT NULL,
  `readOnly` bit(1) NOT NULL,
  `typeId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`),
  KEY `Performance` (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentterms`
--

LOCK TABLES `paymentterms` WRITE;
/*!40000 ALTER TABLE `paymentterms` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentterms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymenttermstype`
--

DROP TABLE IF EXISTS `paymenttermstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymenttermstype` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymenttermstype`
--

LOCK TABLES `paymenttermstype` WRITE;
/*!40000 ALTER TABLE `paymenttermstype` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymenttermstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymenttype`
--

DROP TABLE IF EXISTS `paymenttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymenttype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymenttype`
--

LOCK TABLES `paymenttype` WRITE;
/*!40000 ALTER TABLE `paymenttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymenttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pick`
--

DROP TABLE IF EXISTS `pick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pick` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `dateScheduled` datetime DEFAULT NULL,
  `dateStarted` datetime DEFAULT NULL,
  `locationGroupId` int NOT NULL,
  `num` varchar(30) NOT NULL,
  `priority` int NOT NULL,
  `statusId` int NOT NULL,
  `typeId` int NOT NULL,
  `userId` int NOT NULL,
  `dateFinished` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_num` (`num`),
  KEY `Performance` (`locationGroupId`,`priority`,`userId`,`statusId`,`typeId`,`dateFinished`,`dateScheduled`,`dateStarted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pick`
--

LOCK TABLES `pick` WRITE;
/*!40000 ALTER TABLE `pick` DISABLE KEYS */;
/*!40000 ALTER TABLE `pick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pickitem`
--

DROP TABLE IF EXISTS `pickitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pickitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `destTagId` bigint DEFAULT NULL,
  `orderId` int NOT NULL,
  `orderTypeId` int NOT NULL,
  `partId` int NOT NULL,
  `pickId` int NOT NULL,
  `poItemId` int NOT NULL,
  `qty` decimal(28,9) DEFAULT NULL,
  `shipId` int DEFAULT NULL,
  `slotNum` int DEFAULT NULL,
  `soItemId` int DEFAULT NULL,
  `srcLocationId` int DEFAULT NULL,
  `srcTagId` bigint DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  `tagId` bigint DEFAULT NULL,
  `typeId` int NOT NULL,
  `uomId` int NOT NULL,
  `woItemId` int DEFAULT NULL,
  `xoItemId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`partId`,`soItemId`,`statusId`,`orderTypeId`,`typeId`,`poItemId`,`pickId`,`xoItemId`,`woItemId`,`uomId`,`orderId`,`shipId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pickitem`
--

LOCK TABLES `pickitem` WRITE;
/*!40000 ALTER TABLE `pickitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `pickitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pickitemstatus`
--

DROP TABLE IF EXISTS `pickitemstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pickitemstatus` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pickitemstatus`
--

LOCK TABLES `pickitemstatus` WRITE;
/*!40000 ALTER TABLE `pickitemstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `pickitemstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pickitemtype`
--

DROP TABLE IF EXISTS `pickitemtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pickitemtype` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pickitemtype`
--

LOCK TABLES `pickitemtype` WRITE;
/*!40000 ALTER TABLE `pickitemtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `pickitemtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pickstatus`
--

DROP TABLE IF EXISTS `pickstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pickstatus` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pickstatus`
--

LOCK TABLES `pickstatus` WRITE;
/*!40000 ALTER TABLE `pickstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `pickstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picktype`
--

DROP TABLE IF EXISTS `picktype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `picktype` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picktype`
--

LOCK TABLES `picktype` WRITE;
/*!40000 ALTER TABLE `picktype` DISABLE KEYS */;
/*!40000 ALTER TABLE `picktype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `po`
--

DROP TABLE IF EXISTS `po`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `po` (
  `id` int NOT NULL AUTO_INCREMENT,
  `buyer` varchar(30) DEFAULT NULL,
  `buyerId` int NOT NULL,
  `carrierId` int NOT NULL,
  `currencyId` int DEFAULT NULL,
  `currencyRate` double DEFAULT NULL,
  `customerSO` varchar(25) DEFAULT NULL,
  `dateCompleted` datetime DEFAULT NULL,
  `dateConfirmed` datetime DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateFirstShip` datetime DEFAULT NULL,
  `dateIssued` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `dateRevision` datetime DEFAULT NULL,
  `deliverTo` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fobPointId` int DEFAULT NULL,
  `locationGroupId` int DEFAULT NULL,
  `note` longtext,
  `num` varchar(25) DEFAULT NULL,
  `paymentTermsId` int DEFAULT NULL,
  `phone` varchar(256) DEFAULT NULL,
  `qbClassId` int DEFAULT NULL,
  `remitAddress` varchar(90) DEFAULT NULL,
  `remitCity` varchar(30) DEFAULT NULL,
  `remitCountryId` int DEFAULT NULL,
  `remitStateId` int DEFAULT NULL,
  `remitToName` varchar(41) DEFAULT NULL,
  `remitZip` varchar(10) DEFAULT NULL,
  `revisionNum` int DEFAULT NULL,
  `shipTermsId` int NOT NULL,
  `shipToAddress` varchar(90) DEFAULT NULL,
  `shipToCity` int DEFAULT NULL,
  `shipToCountryId` int DEFAULT NULL,
  `shipToName` varchar(41) DEFAULT NULL,
  `shipToStateId` int DEFAULT NULL,
  `shipToZip` varchar(10) DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  `taxRateId` int NOT NULL,
  `taxRateName` varchar(31) DEFAULT NULL,
  `totalIncludesTax` bit(1) DEFAULT NULL,
  `totalTax` decimal(28,9) DEFAULT NULL,
  `typeId` int DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `vendorContact` varchar(30) DEFAULT NULL,
  `vendorId` int NOT NULL,
  `vendorSO` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_num` (`num`),
  KEY `Performance` (`carrierId`,`fobPointId`,`paymentTermsId`,`buyerId`,`taxRateId`,`qbClassId`,`locationGroupId`,`vendorId`,`typeId`,`statusId`,`currencyId`,`shipTermsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `po`
--

LOCK TABLES `po` WRITE;
/*!40000 ALTER TABLE `po` DISABLE KEYS */;
/*!40000 ALTER TABLE `po` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poitem`
--

DROP TABLE IF EXISTS `poitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customerId` int DEFAULT NULL,
  `dateLastFulfillment` datetime DEFAULT NULL,
  `dateScheduledFulfillment` datetime DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `note` longtext,
  `partId` int DEFAULT NULL,
  `partNum` varchar(70) DEFAULT NULL,
  `poId` int NOT NULL,
  `poLineItem` int NOT NULL,
  `qbClassId` int DEFAULT NULL,
  `qtyFulfilled` decimal(28,9) DEFAULT NULL,
  `qtyPicked` decimal(28,9) DEFAULT NULL,
  `qtyToFulfill` decimal(28,9) DEFAULT NULL,
  `repairFlag` bit(1) NOT NULL,
  `revLevel` varchar(15) DEFAULT NULL,
  `statusId` int NOT NULL,
  `taxId` int DEFAULT NULL,
  `taxRate` double DEFAULT NULL,
  `tbdCostFlag` bit(1) NOT NULL,
  `totalCost` decimal(28,9) DEFAULT NULL,
  `typeId` int NOT NULL,
  `unitCost` decimal(28,9) DEFAULT NULL,
  `uomId` int DEFAULT NULL,
  `vendorPartNum` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`customerId`,`poId`,`partId`,`taxId`,`typeId`,`statusId`,`qbClassId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poitem`
--

LOCK TABLES `poitem` WRITE;
/*!40000 ALTER TABLE `poitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `poitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poitemstatus`
--

DROP TABLE IF EXISTS `poitemstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poitemstatus` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poitemstatus`
--

LOCK TABLES `poitemstatus` WRITE;
/*!40000 ALTER TABLE `poitemstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `poitemstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poitemtype`
--

DROP TABLE IF EXISTS `poitemtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poitemtype` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poitemtype`
--

LOCK TABLES `poitemtype` WRITE;
/*!40000 ALTER TABLE `poitemtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `poitemtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postatus`
--

DROP TABLE IF EXISTS `postatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postatus` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postatus`
--

LOCK TABLES `postatus` WRITE;
/*!40000 ALTER TABLE `postatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `postatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postransaction`
--

DROP TABLE IF EXISTS `postransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postransaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `amount` decimal(28,9) DEFAULT NULL,
  `authCode` varchar(20) DEFAULT NULL,
  `changeGiven` decimal(28,9) DEFAULT NULL,
  `confirmation` varchar(30) DEFAULT NULL,
  `currencyRate` double DEFAULT NULL,
  `dateTime` datetime DEFAULT NULL,
  `depositToAccountId` int DEFAULT NULL,
  `expDate` datetime DEFAULT NULL,
  `merchantActNum` varchar(20) DEFAULT NULL,
  `miscCreditCard` longtext,
  `paymentMethodIdid` int NOT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `soId` int DEFAULT NULL,
  `transactionId` varchar(20) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `paymentMethodId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`userId`,`soId`,`depositToAccountId`,`paymentMethodId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postransaction`
--

LOCK TABLES `postransaction` WRITE;
/*!40000 ALTER TABLE `postransaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `postransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posttype`
--

DROP TABLE IF EXISTS `posttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posttype` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posttype`
--

LOCK TABLES `posttype` WRITE;
/*!40000 ALTER TABLE `posttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `posttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pricingrule`
--

DROP TABLE IF EXISTS `pricingrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pricingrule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customerInclId` int DEFAULT NULL,
  `customerInclTypeId` int NOT NULL,
  `dateApplies` bit(1) NOT NULL,
  `dateBegin` datetime DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateEnd` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `description` longtext,
  `isActive` bit(1) NOT NULL,
  `isAutoApply` bit(1) NOT NULL,
  `isTier2` bit(1) NOT NULL,
  `name` varchar(41) NOT NULL,
  `paAmount` decimal(28,9) DEFAULT NULL,
  `paApplies` bit(1) NOT NULL,
  `paBaseAmountTypeId` int DEFAULT NULL,
  `paPercent` decimal(28,9) DEFAULT NULL,
  `paTypeId` int NOT NULL,
  `productInclId` int DEFAULT NULL,
  `productInclTypeId` int NOT NULL,
  `qtyApplies` bit(1) NOT NULL,
  `qtyMax` decimal(28,9) DEFAULT NULL,
  `qtyMin` decimal(28,9) DEFAULT NULL,
  `rndApplies` bit(1) NOT NULL,
  `rndIsMinus` bit(1) NOT NULL,
  `rndPMAmount` decimal(28,9) DEFAULT NULL,
  `rndToAmount` decimal(28,9) DEFAULT NULL,
  `rndTypeId` int NOT NULL,
  `spcApplies` bit(1) NOT NULL,
  `spcBuyX` int DEFAULT NULL,
  `spcGetYFree` int DEFAULT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`),
  KEY `Performance` (`paTypeId`,`userId`,`productInclTypeId`,`rndTypeId`,`customerInclTypeId`,`paBaseAmountTypeId`,`productInclId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pricingrule`
--

LOCK TABLES `pricingrule` WRITE;
/*!40000 ALTER TABLE `pricingrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `pricingrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priority`
--

DROP TABLE IF EXISTS `priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priority` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priority`
--

LOCK TABLES `priority` WRITE;
/*!40000 ALTER TABLE `priority` DISABLE KEYS */;
/*!40000 ALTER TABLE `priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountingHash` varchar(41) DEFAULT NULL,
  `accountingId` varchar(41) DEFAULT NULL,
  `activeFlag` bit(1) NOT NULL,
  `alertNote` varchar(90) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `defaultSoItemType` int NOT NULL,
  `description` varchar(252) DEFAULT NULL,
  `details` longtext,
  `displayTypeId` int NOT NULL,
  `heigh` decimal(28,9) DEFAULT NULL,
  `incomeAccountId` int NOT NULL,
  `kitFlag` bit(1) NOT NULL,
  `kitGroupedFlag` bit(1) NOT NULL,
  `len` decimal(28,9) DEFAULT NULL,
  `num` varchar(70) DEFAULT NULL,
  `partId` int DEFAULT NULL,
  `price` decimal(28,9) DEFAULT NULL,
  `qbClassId` int DEFAULT NULL,
  `sellableInOtherUoms` bit(1) NOT NULL,
  `showSoComboFlag` bit(1) NOT NULL,
  `sizeUomId` int DEFAULT NULL,
  `sku` varchar(41) DEFAULT NULL,
  `taxId` int DEFAULT NULL,
  `taxableFlag` bit(1) NOT NULL,
  `uomId` int NOT NULL,
  `upc` varchar(41) DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  `usePriceFlag` bit(1) NOT NULL,
  `weight` decimal(28,9) DEFAULT NULL,
  `weightUomId` int DEFAULT NULL,
  `width` decimal(28,9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_num` (`num`),
  KEY `Performance` (`weightUomId`,`uomId`,`qbClassId`,`partId`,`incomeAccountId`,`displayTypeId`,`defaultSoItemType`,`taxId`,`sizeUomId`,`description`,`num`,`showSoComboFlag`,`sku`,`upc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productincltype`
--

DROP TABLE IF EXISTS `productincltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productincltype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productincltype`
--

LOCK TABLES `productincltype` WRITE;
/*!40000 ALTER TABLE `productincltype` DISABLE KEYS */;
/*!40000 ALTER TABLE `productincltype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producttotree`
--

DROP TABLE IF EXISTS `producttotree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producttotree` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productId` int NOT NULL,
  `productTreeId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_roductId` (`productId`),
  UNIQUE KEY `u_productTreeId` (`productTreeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttotree`
--

LOCK TABLES `producttotree` WRITE;
/*!40000 ALTER TABLE `producttotree` DISABLE KEYS */;
/*!40000 ALTER TABLE `producttotree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producttree`
--

DROP TABLE IF EXISTS `producttree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producttree` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(256) DEFAULT NULL,
  `name` varchar(41) NOT NULL,
  `parentId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`),
  UNIQUE KEY `u_parentId` (`parentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttree`
--

LOCK TABLES `producttree` WRITE;
/*!40000 ALTER TABLE `producttree` DISABLE KEYS */;
/*!40000 ALTER TABLE `producttree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qbclass`
--

DROP TABLE IF EXISTS `qbclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qbclass` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountingHash` varchar(30) DEFAULT NULL,
  `accountingId` varchar(36) DEFAULT NULL,
  `activeFlag` bit(1) NOT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `name` varchar(31) DEFAULT NULL,
  `parentId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`),
  UNIQUE KEY `u_parentId` (`parentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qbclass`
--

LOCK TABLES `qbclass` WRITE;
/*!40000 ALTER TABLE `qbclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `qbclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quicklist`
--

DROP TABLE IF EXISTS `quicklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quicklist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customerId` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`),
  UNIQUE KEY `u_customerId` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quicklist`
--

LOCK TABLES `quicklist` WRITE;
/*!40000 ALTER TABLE `quicklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `quicklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quicklistitem`
--

DROP TABLE IF EXISTS `quicklistitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quicklistitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productId` int NOT NULL,
  `qListId` int NOT NULL,
  `quantity` decimal(28,9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`qListId`,`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quicklistitem`
--

LOCK TABLES `quicklistitem` WRITE;
/*!40000 ALTER TABLE `quicklistitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `quicklistitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `locationGroupId` int NOT NULL,
  `orderTypeId` int NOT NULL,
  `poId` int DEFAULT NULL,
  `soId` int DEFAULT NULL,
  `statusId` int NOT NULL,
  `typeId` int NOT NULL,
  `userId` int NOT NULL,
  `xoId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`xoId`,`locationGroupId`,`typeId`,`orderTypeId`,`soId`,`statusId`,`userId`,`poId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receiptitem`
--

DROP TABLE IF EXISTS `receiptitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receiptitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `billVendorFlag` bit(1) NOT NULL,
  `billedTotalCost` decimal(28,9) DEFAULT NULL,
  `carrierId` int DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `dateBilled` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `dateReceived` datetime DEFAULT NULL,
  `dateReconciled` datetime DEFAULT NULL,
  `deliverTo` varchar(30) DEFAULT NULL,
  `landedTotalCost` decimal(28,9) DEFAULT NULL,
  `locationId` int DEFAULT NULL,
  `orderTypeId` int NOT NULL,
  `packageCount` int DEFAULT NULL,
  `partId` int DEFAULT NULL,
  `partTypeId` int NOT NULL,
  `poItemId` int DEFAULT NULL,
  `qty` decimal(28,9) DEFAULT NULL,
  `reason` varchar(90) DEFAULT NULL,
  `receiptId` int NOT NULL,
  `refNo` varchar(20) DEFAULT NULL,
  `responsibilityId` int DEFAULT NULL,
  `shipItemId` int DEFAULT NULL,
  `soItemId` int DEFAULT NULL,
  `statusId` int NOT NULL,
  `tagId` bigint DEFAULT NULL,
  `taxId` int DEFAULT NULL,
  `taxRate` double DEFAULT NULL,
  `trackingNum` varchar(30) DEFAULT NULL,
  `typeId` int NOT NULL,
  `uomId` int NOT NULL,
  `xoItemId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`uomId`,`statusId`,`taxId`,`customerId`,`typeId`,`poItemId`,`carrierId`,`receiptId`,`partId`,`soItemId`,`orderTypeId`,`xoItemId`,`partTypeId`,`dateBilled`,`dateReceived`,`dateReconciled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiptitem`
--

LOCK TABLES `receiptitem` WRITE;
/*!40000 ALTER TABLE `receiptitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `receiptitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receiptitemstatus`
--

DROP TABLE IF EXISTS `receiptitemstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receiptitemstatus` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiptitemstatus`
--

LOCK TABLES `receiptitemstatus` WRITE;
/*!40000 ALTER TABLE `receiptitemstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `receiptitemstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receiptitemtype`
--

DROP TABLE IF EXISTS `receiptitemtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receiptitemtype` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiptitemtype`
--

LOCK TABLES `receiptitemtype` WRITE;
/*!40000 ALTER TABLE `receiptitemtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `receiptitemtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receiptstatus`
--

DROP TABLE IF EXISTS `receiptstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receiptstatus` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiptstatus`
--

LOCK TABLES `receiptstatus` WRITE;
/*!40000 ALTER TABLE `receiptstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `receiptstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipttype`
--

DROP TABLE IF EXISTS `receipttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipttype` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipttype`
--

LOCK TABLES `receipttype` WRITE;
/*!40000 ALTER TABLE `receipttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rndtype`
--

DROP TABLE IF EXISTS `rndtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rndtype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rndtype`
--

LOCK TABLES `rndtype` WRITE;
/*!40000 ALTER TABLE `rndtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `rndtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serial`
--

DROP TABLE IF EXISTS `serial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `committedFlag` bit(1) NOT NULL,
  `tagId` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_tagId` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serial`
--

LOCK TABLES `serial` WRITE;
/*!40000 ALTER TABLE `serial` DISABLE KEYS */;
/*!40000 ALTER TABLE `serial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serialnum`
--

DROP TABLE IF EXISTS `serialnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serialnum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `partTrackingId` int NOT NULL,
  `serialId` bigint NOT NULL,
  `serialNum` varchar(41) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`serialId`,`partTrackingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serialnum`
--

LOCK TABLES `serialnum` WRITE;
/*!40000 ALTER TABLE `serialnum` DISABLE KEYS */;
/*!40000 ALTER TABLE `serialnum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ship`
--

DROP TABLE IF EXISTS `ship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ship` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FOBPointId` int DEFAULT NULL,
  `billOfLading` varchar(20) DEFAULT NULL,
  `carrierId` int NOT NULL,
  `carrierServiceId` int DEFAULT NULL,
  `cartonCount` int DEFAULT NULL,
  `contact` varchar(250) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `dateShipped` datetime DEFAULT NULL,
  `locationGroupId` int NOT NULL,
  `note` longtext,
  `num` varchar(35) DEFAULT NULL,
  `orderTypeId` int NOT NULL,
  `ownerIsFrom` bit(1) NOT NULL,
  `poId` int DEFAULT NULL,
  `shipToId` int DEFAULT NULL,
  `shipmentIdentificationNumber` varchar(32) DEFAULT NULL,
  `shippedBy` int DEFAULT NULL,
  `soId` int DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  `xoId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_num` (`num`),
  KEY `Performance` (`shippedBy`,`carrierId`,`locationGroupId`,`orderTypeId`,`statusId`,`FOBPointId`,`carrierServiceId`,`soId`,`xoId`,`poId`,`dateShipped`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ship`
--

LOCK TABLES `ship` WRITE;
/*!40000 ALTER TABLE `ship` DISABLE KEYS */;
/*!40000 ALTER TABLE `ship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipcarton`
--

DROP TABLE IF EXISTS `shipcarton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipcarton` (
  `id` int NOT NULL AUTO_INCREMENT,
  `additionalHandling` bit(1) NOT NULL,
  `carrierId` int NOT NULL,
  `cartonNum` int NOT NULL,
  `cartonTypeId` int DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `deliveryConfirmationId` int NOT NULL,
  `freightAmount` decimal(28,9) DEFAULT NULL,
  `freightWeight` decimal(28,9) DEFAULT NULL,
  `height` decimal(28,9) DEFAULT NULL,
  `insuredValue` decimal(28,9) DEFAULT NULL,
  `len` decimal(28,9) DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  `orderTypeId` int NOT NULL,
  `packageTypeId` int NOT NULL,
  `shipId` int NOT NULL,
  `shipperRelease` bit(1) NOT NULL,
  `sizeUOM` varchar(35) DEFAULT NULL,
  `sscc` varchar(35) DEFAULT NULL,
  `trackingNum` varchar(255) DEFAULT NULL,
  `weightUOM` varchar(32) DEFAULT NULL,
  `width` decimal(28,9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`carrierId`,`deliveryConfirmationId`,`shipId`,`packageTypeId`,`orderTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipcarton`
--

LOCK TABLES `shipcarton` WRITE;
/*!40000 ALTER TABLE `shipcarton` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipcarton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipitem`
--

DROP TABLE IF EXISTS `shipitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateLastModified` datetime DEFAULT NULL,
  `itemId` int DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  `orderTypeId` int NOT NULL,
  `poItemId` int DEFAULT NULL,
  `qtyShipped` decimal(28,9) DEFAULT NULL,
  `shipCartonId` int NOT NULL,
  `shipId` int NOT NULL,
  `soItemId` int DEFAULT NULL,
  `tagId` bigint NOT NULL,
  `totalCost` decimal(28,9) DEFAULT NULL,
  `uomId` int NOT NULL,
  `xoItemId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`poItemId`,`uomId`,`shipId`,`xoItemId`,`soItemId`,`shipCartonId`,`orderTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipitem`
--

LOCK TABLES `shipitem` WRITE;
/*!40000 ALTER TABLE `shipitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipstatus`
--

DROP TABLE IF EXISTS `shipstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipstatus` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipstatus`
--

LOCK TABLES `shipstatus` WRITE;
/*!40000 ALTER TABLE `shipstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipterms`
--

DROP TABLE IF EXISTS `shipterms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipterms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activeFlag` bit(1) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `readOnly` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipterms`
--

LOCK TABLES `shipterms` WRITE;
/*!40000 ALTER TABLE `shipterms` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipterms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so`
--

DROP TABLE IF EXISTS `so`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so` (
  `id` int NOT NULL AUTO_INCREMENT,
  `billToAddress` varchar(90) DEFAULT NULL,
  `billToCity` varchar(30) DEFAULT NULL,
  `billToCountryId` int NOT NULL,
  `billToName` varchar(41) DEFAULT NULL,
  `billToStateId` int NOT NULL,
  `billToZip` varchar(10) DEFAULT NULL,
  `carrierId` int DEFAULT NULL,
  `carrierServiceId` int DEFAULT NULL,
  `cost` decimal(28,9) DEFAULT NULL,
  `currencyId` int DEFAULT NULL,
  `currencyRate` double DEFAULT NULL,
  `customerContact` varchar(30) DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `customerPO` varchar(25) DEFAULT NULL,
  `dateCompleted` datetime DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateExpired` datetime DEFAULT NULL,
  `dateFirstShip` datetime DEFAULT NULL,
  `dateIssued` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `dateRevision` datetime DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `estimatedTax` decimal(28,9) DEFAULT NULL,
  `fobPointId` int DEFAULT NULL,
  `locationGroupId` int DEFAULT NULL,
  `mcTotalTax` decimal(28,9) DEFAULT NULL,
  `note` longtext,
  `num` varchar(25) DEFAULT NULL,
  `paymentTermsId` int DEFAULT NULL,
  `phone` varchar(256) DEFAULT NULL,
  `priorityId` int DEFAULT NULL,
  `qbClassId` int DEFAULT NULL,
  `registerId` int DEFAULT NULL,
  `residentialFlag` bit(1) NOT NULL,
  `revisionNum` int DEFAULT NULL,
  `salesman` varchar(30) DEFAULT NULL,
  `salesmanId` int NOT NULL,
  `salesmanInitials` varchar(5) DEFAULT NULL,
  `shipTermsId` int DEFAULT NULL,
  `shipToAddress` varchar(90) DEFAULT NULL,
  `shipToCity` varchar(30) DEFAULT NULL,
  `shipToCountryId` int DEFAULT NULL,
  `shipToName` varchar(41) DEFAULT NULL,
  `shipToStateId` int DEFAULT NULL,
  `shipToZip` varchar(10) DEFAULT NULL,
  `statusId` int NOT NULL,
  `taxRate` double DEFAULT NULL,
  `taxRateId` int DEFAULT NULL,
  `taxRateName` varchar(31) DEFAULT NULL,
  `toBeEmailedy` bit(1) NOT NULL,
  `toBePrintedy` bit(1) NOT NULL,
  `totalIncludesTaxy` bit(1) NOT NULL,
  `totalTax` decimal(28,9) DEFAULT NULL,
  `subTotal` decimal(28,9) DEFAULT NULL,
  `totalPrice` decimal(28,9) DEFAULT NULL,
  `typeId` int NOT NULL,
  `url` varchar(256) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `vendorPO` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_num` (`num`),
  KEY `Performance` (`typeId`,`qbClassId`,`statusId`,`customerId`,`taxRateId`,`paymentTermsId`,`fobPointId`,`salesmanId`,`carrierId`,`carrierServiceId`,`currencyId`,`shipTermsId`,`locationGroupId`,`priorityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so`
--

LOCK TABLES `so` WRITE;
/*!40000 ALTER TABLE `so` DISABLE KEYS */;
/*!40000 ALTER TABLE `so` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soitem`
--

DROP TABLE IF EXISTS `soitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adjustAmount` decimal(28,9) DEFAULT NULL,
  `adjustPercentage` decimal(28,9) DEFAULT NULL,
  `customerPartNum` varchar(70) DEFAULT NULL,
  `dateLastFulfillment` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `dateScheduledFulfillment` datetime DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `exchangeSOLineItem` int DEFAULT NULL,
  `itemAdjustId` int DEFAULT NULL,
  `markupCost` decimal(28,9) DEFAULT NULL,
  `mcTotalPrice` decimal(28,9) DEFAULT NULL,
  `note` longtext,
  `productId` int DEFAULT NULL,
  `productNum` varchar(70) DEFAULT NULL,
  `qbClassId` int DEFAULT NULL,
  `qtyFulfilled` decimal(28,9) DEFAULT NULL,
  `qtyOrdered` decimal(28,9) DEFAULT NULL,
  `qtyPicked` decimal(28,9) DEFAULT NULL,
  `qtyToFulfill` decimal(28,9) DEFAULT NULL,
  `revLevel` varchar(15) DEFAULT NULL,
  `showItemFlag` bit(1) NOT NULL,
  `soId` int NOT NULL,
  `soLineItem` int NOT NULL,
  `statusId` int NOT NULL,
  `taxId` int DEFAULT NULL,
  `taxRate` double DEFAULT NULL,
  `taxableFlag` bit(1) NOT NULL,
  `totalCost` decimal(28,9) DEFAULT NULL,
  `totalPrice` decimal(28,9) DEFAULT NULL,
  `typeId` int NOT NULL,
  `unitPrice` decimal(28,9) DEFAULT NULL,
  `uomId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`taxId`,`qbClassId`,`productId`,`soId`,`itemAdjustId`,`statusId`,`uomId`,`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soitem`
--

LOCK TABLES `soitem` WRITE;
/*!40000 ALTER TABLE `soitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `soitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soitemstatus`
--

DROP TABLE IF EXISTS `soitemstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soitemstatus` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soitemstatus`
--

LOCK TABLES `soitemstatus` WRITE;
/*!40000 ALTER TABLE `soitemstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `soitemstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soitemtype`
--

DROP TABLE IF EXISTS `soitemtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soitemtype` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soitemtype`
--

LOCK TABLES `soitemtype` WRITE;
/*!40000 ALTER TABLE `soitemtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `soitemtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sostatus`
--

DROP TABLE IF EXISTS `sostatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sostatus` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sostatus`
--

LOCK TABLES `sostatus` WRITE;
/*!40000 ALTER TABLE `sostatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `sostatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysproperties`
--

DROP TABLE IF EXISTS `sysproperties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysproperties` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateLastModified` datetime DEFAULT NULL,
  `owner` varchar(30) DEFAULT NULL,
  `readAllowed` bit(1) NOT NULL,
  `sysKey` varchar(30) NOT NULL,
  `sysValue` varchar(1024) NOT NULL,
  `writeAllowed` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_sysKey` (`sysKey`),
  KEY `Performance` (`sysKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysproperties`
--

LOCK TABLES `sysproperties` WRITE;
/*!40000 ALTER TABLE `sysproperties` DISABLE KEYS */;
/*!40000 ALTER TABLE `sysproperties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysuser`
--

DROP TABLE IF EXISTS `sysuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysuser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activeFlag` bit(1) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstName` varchar(15) DEFAULT NULL,
  `initials` varchar(5) DEFAULT NULL,
  `lastName` varchar(15) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `userName` varchar(30) DEFAULT NULL,
  `userPwd` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_userName` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysuser`
--

LOCK TABLES `sysuser` WRITE;
/*!40000 ALTER TABLE `sysuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `sysuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tablereference`
--

DROP TABLE IF EXISTS `tablereference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tablereference` (
  `id` int NOT NULL AUTO_INCREMENT,
  `className` varchar(100) NOT NULL,
  `tableId` int NOT NULL,
  `tableRefName` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tablereference`
--

LOCK TABLES `tablereference` WRITE;
/*!40000 ALTER TABLE `tablereference` DISABLE KEYS */;
/*!40000 ALTER TABLE `tablereference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastCycleCount` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `locationId` int NOT NULL,
  `num` bigint DEFAULT NULL,
  `partId` int DEFAULT NULL,
  `qty` decimal(28,9) DEFAULT NULL,
  `qtyCommitted` decimal(28,9) DEFAULT NULL,
  `serializedFlag` bit(1) NOT NULL,
  `trackingEncoding` varchar(30) NOT NULL,
  `typeId` int NOT NULL,
  `usedFlag` bit(1) NOT NULL,
  `woItemId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_num` (`num`),
  KEY `Performance` (`locationId`,`woItemId`,`partId`,`typeId`,`dateLastCycleCount`,`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagtype`
--

DROP TABLE IF EXISTS `tagtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tagtype` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`),
  KEY `Performance` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagtype`
--

LOCK TABLES `tagtype` WRITE;
/*!40000 ALTER TABLE `tagtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxrate`
--

DROP TABLE IF EXISTS `taxrate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxrate` (
  `id` int NOT NULL,
  `accountingHash` varchar(30) DEFAULT NULL,
  `accountingId` varchar(36) DEFAULT NULL,
  `activeFlag` bit(1) NOT NULL,
  `code` varchar(5) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `defaultFlag` bit(1) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(31) DEFAULT NULL,
  `orderTypeId` int DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `taxAccountId` int DEFAULT NULL,
  `typeCode` varchar(25) DEFAULT NULL,
  `typeId` int DEFAULT NULL,
  `unitCost` datetime DEFAULT NULL,
  `vendorId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`),
  KEY `Performance` (`orderTypeId`,`taxAccountId`,`typeId`,`vendorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxrate`
--

LOCK TABLES `taxrate` WRITE;
/*!40000 ALTER TABLE `taxrate` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxrate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxratetype`
--

DROP TABLE IF EXISTS `taxratetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxratetype` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxratetype`
--

LOCK TABLES `taxratetype` WRITE;
/*!40000 ALTER TABLE `taxratetype` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxratetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiinventorylog`
--

DROP TABLE IF EXISTS `tiinventorylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tiinventorylog` (
  `id` bigint NOT NULL,
  `info` varchar(41) DEFAULT NULL,
  `infoDate` datetime DEFAULT NULL,
  `infoDouble` double DEFAULT NULL,
  `infoInteger` int DEFAULT NULL,
  `inventoryLogId` bigint NOT NULL,
  `partTrackingId` int NOT NULL,
  `qty` decimal(28,9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`inventoryLogId`,`partTrackingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiinventorylog`
--

LOCK TABLES `tiinventorylog` WRITE;
/*!40000 ALTER TABLE `tiinventorylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiinventorylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackingdate`
--

DROP TABLE IF EXISTS `trackingdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trackingdate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `info` datetime DEFAULT NULL,
  `partTrackingId` int NOT NULL,
  `tagId` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`partTrackingId`,`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackingdate`
--

LOCK TABLES `trackingdate` WRITE;
/*!40000 ALTER TABLE `trackingdate` DISABLE KEYS */;
/*!40000 ALTER TABLE `trackingdate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackingdecimal`
--

DROP TABLE IF EXISTS `trackingdecimal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trackingdecimal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `info` double DEFAULT NULL,
  `partTrackingId` int NOT NULL,
  `tagId` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`partTrackingId`,`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackingdecimal`
--

LOCK TABLES `trackingdecimal` WRITE;
/*!40000 ALTER TABLE `trackingdecimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `trackingdecimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackinginfo`
--

DROP TABLE IF EXISTS `trackinginfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trackinginfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `info` varchar(41) DEFAULT NULL,
  `infoDate` datetime DEFAULT NULL,
  `infoDouble` double DEFAULT NULL,
  `infoInteger` int DEFAULT NULL,
  `partTrackingId` int NOT NULL,
  `qty` decimal(28,9) DEFAULT NULL,
  `recordId` int DEFAULT NULL,
  `tableId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`partTrackingId`,`infoDate`,`info`,`infoInteger`,`qty`,`recordId`,`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackinginfo`
--

LOCK TABLES `trackinginfo` WRITE;
/*!40000 ALTER TABLE `trackinginfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `trackinginfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackinginfosn`
--

DROP TABLE IF EXISTS `trackinginfosn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trackinginfosn` (
  `id` int NOT NULL AUTO_INCREMENT,
  `partTrackingId` int NOT NULL,
  `serialNum` varchar(41) DEFAULT NULL,
  `trackingInfoId` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`partTrackingId`,`trackingInfoId`,`serialNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackinginfosn`
--

LOCK TABLES `trackinginfosn` WRITE;
/*!40000 ALTER TABLE `trackinginfosn` DISABLE KEYS */;
/*!40000 ALTER TABLE `trackinginfosn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackinginteger`
--

DROP TABLE IF EXISTS `trackinginteger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trackinginteger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `info` int NOT NULL,
  `partTrackingId` int NOT NULL,
  `tagId` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`partTrackingId`,`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackinginteger`
--

LOCK TABLES `trackinginteger` WRITE;
/*!40000 ALTER TABLE `trackinginteger` DISABLE KEYS */;
/*!40000 ALTER TABLE `trackinginteger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackingtext`
--

DROP TABLE IF EXISTS `trackingtext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trackingtext` (
  `id` int NOT NULL AUTO_INCREMENT,
  `info` varchar(41) DEFAULT NULL,
  `partTrackingId` int DEFAULT NULL,
  `tagId` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`partTrackingId`,`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackingtext`
--

LOCK TABLES `trackingtext` WRITE;
/*!40000 ALTER TABLE `trackingtext` DISABLE KEYS */;
/*!40000 ALTER TABLE `trackingtext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uom`
--

DROP TABLE IF EXISTS `uom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uom` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activeFlag` bit(1) NOT NULL,
  `code` varchar(10) NOT NULL,
  `defaultRecord` bit(1) NOT NULL,
  `description` varchar(256) NOT NULL,
  `integral` bit(1) NOT NULL,
  `name` varchar(30) NOT NULL,
  `readOnly` bit(1) NOT NULL,
  `uomType` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`),
  UNIQUE KEY `u_code` (`code`),
  KEY `Performance` (`uomType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uom`
--

LOCK TABLES `uom` WRITE;
/*!40000 ALTER TABLE `uom` DISABLE KEYS */;
/*!40000 ALTER TABLE `uom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uomconversion`
--

DROP TABLE IF EXISTS `uomconversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uomconversion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(256) NOT NULL,
  `factor` double DEFAULT NULL,
  `fromUomId` int DEFAULT NULL,
  `multiply` double DEFAULT NULL,
  `toUomId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_toUomId` (`toUomId`),
  UNIQUE KEY `u_fromUomId` (`fromUomId`),
  KEY `Performance` (`fromUomId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uomconversion`
--

LOCK TABLES `uomconversion` WRITE;
/*!40000 ALTER TABLE `uomconversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `uomconversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uomtype`
--

DROP TABLE IF EXISTS `uomtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uomtype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uomtype`
--

LOCK TABLES `uomtype` WRITE;
/*!40000 ALTER TABLE `uomtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `uomtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraccess`
--

DROP TABLE IF EXISTS `useraccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useraccess` (
  `id` int NOT NULL AUTO_INCREMENT,
  `groupId` int NOT NULL,
  `modifyFlag` bit(1) NOT NULL,
  `moduleName` varchar(256) NOT NULL,
  `viewFlag` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`groupId`,`moduleName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraccess`
--

LOCK TABLES `useraccess` WRITE;
/*!40000 ALTER TABLE `useraccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `useraccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroup`
--

DROP TABLE IF EXISTS `usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usergroup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroup`
--

LOCK TABLES `usergroup` WRITE;
/*!40000 ALTER TABLE `usergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergrouprel`
--

DROP TABLE IF EXISTS `usergrouprel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usergrouprel` (
  `id` int NOT NULL,
  `groupId` int NOT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_userId` (`userId`),
  UNIQUE KEY `u_groupId` (`groupId`),
  KEY `Performance` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergrouprel`
--

LOCK TABLES `usergrouprel` WRITE;
/*!40000 ALTER TABLE `usergrouprel` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergrouprel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `eventDate` datetime DEFAULT NULL,
  `isLogin` bit(1) NOT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlog`
--

LOCK TABLES `userlog` WRITE;
/*!40000 ALTER TABLE `userlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `userlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertolg`
--

DROP TABLE IF EXISTS `usertolg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usertolg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `defaultFlag` bit(1) NOT NULL,
  `locationGroupId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_userId` (`userId`),
  UNIQUE KEY `u_locationGroupId` (`locationGroupId`),
  KEY `Performance` (`locationGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertolg`
--

LOCK TABLES `usertolg` WRITE;
/*!40000 ALTER TABLE `usertolg` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertolg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountId` int NOT NULL,
  `accountNum` varchar(30) DEFAULT NULL,
  `accountingHash` varchar(30) DEFAULT NULL,
  `accountingId` varchar(30) DEFAULT NULL,
  `activeFlag` bit(1) NOT NULL,
  `creditLimit` decimal(28,9) DEFAULT NULL,
  `currencyId` int DEFAULT NULL,
  `currencyRate` double DEFAULT NULL,
  `dateEntered` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `defaultCarrierId` int NOT NULL,
  `defaultPaymentTermsId` int NOT NULL,
  `defaultShipTermsId` int NOT NULL,
  `lastChangedUser` varchar(30) DEFAULT NULL,
  `leadTime` int DEFAULT NULL,
  `minOrderAmount` decimal(28,9) DEFAULT NULL,
  `name` varchar(41) NOT NULL,
  `note` varchar(90) DEFAULT NULL,
  `statusId` int NOT NULL,
  `sysUserId` int DEFAULT NULL,
  `taxRateId` int DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`),
  KEY `Performance` (`defaultCarrierId`,`statusId`,`defaultShipTermsId`,`taxRateId`,`accountId`,`defaultPaymentTermsId`,`currencyId`,`accountNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendorcostrule`
--

DROP TABLE IF EXISTS `vendorcostrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendorcostrule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `description` varchar(252) DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `partId` int NOT NULL,
  `qty` decimal(28,9) DEFAULT NULL,
  `unitCost` decimal(28,9) DEFAULT NULL,
  `userId` int NOT NULL,
  `vendorId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_userId` (`userId`),
  UNIQUE KEY `u_vendorId` (`vendorId`),
  UNIQUE KEY `u_partId` (`partId`),
  KEY `Performance` (`name`,`vendorId`,`partId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendorcostrule`
--

LOCK TABLES `vendorcostrule` WRITE;
/*!40000 ALTER TABLE `vendorcostrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendorcostrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendorparts`
--

DROP TABLE IF EXISTS `vendorparts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendorparts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `defaultFlag` bit(1) NOT NULL,
  `lastCost` decimal(28,9) DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `leadTime` int DEFAULT NULL,
  `partId` int NOT NULL,
  `qtyMax` decimal(28,9) DEFAULT NULL,
  `qtyMin` decimal(28,9) DEFAULT NULL,
  `uomId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `vendorId` int DEFAULT NULL,
  `vendorPartNumber` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_partId` (`partId`),
  UNIQUE KEY `u_vendorId` (`vendorId`),
  UNIQUE KEY `u_uomId` (`uomId`),
  KEY `Performance` (`userId`,`vendorId`,`uomId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendorparts`
--

LOCK TABLES `vendorparts` WRITE;
/*!40000 ALTER TABLE `vendorparts` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendorparts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendorstatus`
--

DROP TABLE IF EXISTS `vendorstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendorstatus` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendorstatus`
--

LOCK TABLES `vendorstatus` WRITE;
/*!40000 ALTER TABLE `vendorstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendorstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet`
--

DROP TABLE IF EXISTS `wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet`
--

LOCK TABLES `wallet` WRITE;
/*!40000 ALTER TABLE `wallet` DISABLE KEYS */;
/*!40000 ALTER TABLE `wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo`
--

DROP TABLE IF EXISTS `wo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `calCategoryId` int DEFAULT NULL,
  `cost` decimal(28,9) DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateFinished` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `dateScheduled` datetime DEFAULT NULL,
  `dateScheduledToStart` datetime DEFAULT NULL,
  `dateStarteddatetime` datetime DEFAULT NULL,
  `locationGroupId` int DEFAULT NULL,
  `locationId` int DEFAULT NULL,
  `moItemId` int DEFAULT NULL,
  `note` longtext,
  `num` varchar(30) DEFAULT NULL,
  `priorityId` int NOT NULL,
  `qbClassId` int DEFAULT NULL,
  `qtyOrdered` int DEFAULT NULL,
  `qtyScrapped` int DEFAULT NULL,
  `qtyTarget` int DEFAULT NULL,
  `statusId` int NOT NULL,
  `typeId` int DEFAULT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_num` (`num`),
  KEY `Performance` (`calCategoryId`,`moItemId`,`priorityId`,`userId`,`customerId`,`locationId`,`statusId`,`qbClassId`,`locationGroupId`,`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo`
--

LOCK TABLES `wo` WRITE;
/*!40000 ALTER TABLE `wo` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `woassignedusers`
--

DROP TABLE IF EXISTS `woassignedusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `woassignedusers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `woId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_woId` (`woId`),
  UNIQUE KEY `u_userId` (`userId`),
  KEY `Performance` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `woassignedusers`
--

LOCK TABLES `woassignedusers` WRITE;
/*!40000 ALTER TABLE `woassignedusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `woassignedusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `woinstructions`
--

DROP TABLE IF EXISTS `woinstructions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `woinstructions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `woinstructions`
--

LOCK TABLES `woinstructions` WRITE;
/*!40000 ALTER TABLE `woinstructions` DISABLE KEYS */;
/*!40000 ALTER TABLE `woinstructions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `woitem`
--

DROP TABLE IF EXISTS `woitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `woitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cost` decimal(28,9) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `moItemId` int NOT NULL,
  `partId` int DEFAULT NULL,
  `qtyScrapped` decimal(28,9) DEFAULT NULL,
  `qtyTarget` decimal(28,9) DEFAULT NULL,
  `qtyUsed` decimal(28,9) DEFAULT NULL,
  `sortId` int NOT NULL,
  `typeId` int DEFAULT NULL,
  `uomId` int DEFAULT NULL,
  `woId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`typeId`,`partId`,`moItemId`,`uomId`,`woId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `woitem`
--

LOCK TABLES `woitem` WRITE;
/*!40000 ALTER TABLE `woitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `woitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wostatus`
--

DROP TABLE IF EXISTS `wostatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wostatus` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wostatus`
--

LOCK TABLES `wostatus` WRITE;
/*!40000 ALTER TABLE `wostatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `wostatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xo`
--

DROP TABLE IF EXISTS `xo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `carrierId` int DEFAULT NULL,
  `dateCompleted` datetime DEFAULT NULL,
  `dateConfirmed` datetime DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateFirstShip` datetime DEFAULT NULL,
  `dateIssued` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `dateScheduled` datetime DEFAULT NULL,
  `fromAddress` varchar(90) DEFAULT NULL,
  `fromAttn` varchar(90) DEFAULT NULL,
  `fromCity` varchar(30) DEFAULT NULL,
  `fromCountryId` int DEFAULT NULL,
  `fromLGId` int NOT NULL,
  `fromName` varchar(41) DEFAULT NULL,
  `fromStateId` int DEFAULT NULL,
  `fromZip` varchar(10) DEFAULT NULL,
  `mainLocationTagId` bigint NOT NULL,
  `note` longtext,
  `num` varchar(25) DEFAULT NULL,
  `ownerIsFrom` bit(1) DEFAULT NULL,
  `revisionNum` int DEFAULT NULL,
  `shipToAddress` varchar(90) DEFAULT NULL,
  `shipToAttn` varchar(30) DEFAULT NULL,
  `shipToCity` varchar(30) DEFAULT NULL,
  `shipToCountryId` int DEFAULT NULL,
  `shipToLGId` int NOT NULL,
  `shipToName` varchar(41) DEFAULT NULL,
  `shipToStateId` int DEFAULT NULL,
  `shipToZip` varchar(10) DEFAULT NULL,
  `statusId` int NOT NULL,
  `typeId` int NOT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_num` (`num`),
  KEY `Performance` (`fromLGId`,`typeId`,`statusId`,`carrierId`,`userId`,`mainLocationTagId`,`shipToLGId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xo`
--

LOCK TABLES `xo` WRITE;
/*!40000 ALTER TABLE `xo` DISABLE KEYS */;
/*!40000 ALTER TABLE `xo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xoitem`
--

DROP TABLE IF EXISTS `xoitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xoitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateLastFulfillment` datetime DEFAULT NULL,
  `dateScheduledFulfillment` datetime DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `lineItem` int NOT NULL,
  `note` longtext,
  `partId` int DEFAULT NULL,
  `partNum` varchar(70) DEFAULT NULL,
  `qtyFulfilled` decimal(28,9) DEFAULT NULL,
  `qtyPicked` decimal(28,9) DEFAULT NULL,
  `qtyToFulfill` decimal(28,9) DEFAULT NULL,
  `revisionNum` int DEFAULT NULL,
  `statusId` int NOT NULL,
  `totalCost` decimal(28,9) DEFAULT NULL,
  `typeId` int NOT NULL,
  `uomId` int DEFAULT NULL,
  `xoId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Performance` (`uomId`,`xoId`,`statusId`,`typeId`,`partId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xoitem`
--

LOCK TABLES `xoitem` WRITE;
/*!40000 ALTER TABLE `xoitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `xoitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xoitemstatus`
--

DROP TABLE IF EXISTS `xoitemstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xoitemstatus` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xoitemstatus`
--

LOCK TABLES `xoitemstatus` WRITE;
/*!40000 ALTER TABLE `xoitemstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `xoitemstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xostatus`
--

DROP TABLE IF EXISTS `xostatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xostatus` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xostatus`
--

LOCK TABLES `xostatus` WRITE;
/*!40000 ALTER TABLE `xostatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `xostatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xotype`
--

DROP TABLE IF EXISTS `xotype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xotype` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xotype`
--

LOCK TABLES `xotype` WRITE;
/*!40000 ALTER TABLE `xotype` DISABLE KEYS */;
/*!40000 ALTER TABLE `xotype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-18 19:18:40
