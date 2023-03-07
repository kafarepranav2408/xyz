-- MySQL dump 10.13  Distrib 5.7.40, for Linux (x86_64)
--
-- Host: localhost    Database: souqarena
-- ------------------------------------------------------
-- Server version	5.7.40-0ubuntu0.18.04.1

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
-- Table structure for table `Addresses`
--

DROP TABLE IF EXISTS `Addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  `discrict` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `states` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `shipping` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `custId` int(11) DEFAULT NULL,
  `StreetAddress` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Addresses`
--

LOCK TABLES `Addresses` WRITE;
/*!40000 ALTER TABLE `Addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `Addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BannerDetails`
--

DROP TABLE IF EXISTS `BannerDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BannerDetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner` text,
  `slug` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `type` enum('0','1','2','3','4') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BannerDetails`
--

LOCK TABLES `BannerDetails` WRITE;
/*!40000 ALTER TABLE `BannerDetails` DISABLE KEYS */;
INSERT INTO `BannerDetails` VALUES (14,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/YXTT4759_HP_Mangaldeep_1360x800_240922.webp','','2022-09-24 20:57:54','2022-09-25 09:04:10',1,'1'),(28,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/Untitled%20design-4.png','','2022-09-27 03:23:31','2022-09-27 03:23:35',1,'3'),(29,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/0444d781ddfefe1d.webp','mobile','2022-09-29 03:05:36','2022-09-29 03:05:49',1,'0'),(30,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/e95e8556ed336725.webp','','2022-09-29 03:06:53','2022-09-29 03:07:06',1,'0'),(31,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/e95e8556ed336725.webp','','2022-09-29 03:07:03','2022-09-29 03:07:07',1,'3'),(32,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/banner-1.webp','','2022-10-05 08:52:37','2022-10-05 08:52:41',1,'4'),(33,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/banner-2.webp','','2022-10-05 08:54:55','2022-10-05 08:54:59',1,'4'),(34,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/152f7d78fa60afbb.webp','','2022-10-05 08:56:04','2022-10-05 08:56:07',1,'4'),(35,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/banner-1.webp','','2022-10-05 08:56:47','2022-10-05 08:56:50',1,'1'),(36,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/152f7d78fa60afbb.webp','','2022-10-05 08:57:04','2022-10-05 08:57:07',1,'1'),(37,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/c715ce6b1e73f0f0.webp','','2022-10-08 17:53:45','2022-10-08 17:53:51',1,'2'),(38,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/18070bc3f3d80652.webp','','2022-10-08 17:55:02','2022-10-08 17:55:14',1,'2'),(39,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/3c5f6f97272e4fcb.webp','','2022-10-08 17:55:11','2022-10-08 17:55:14',1,'2');
/*!40000 ALTER TABLE `BannerDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cart_Details`
--

DROP TABLE IF EXISTS `Cart_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cart_Details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` varchar(255) DEFAULT NULL,
  `addressId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `varientId` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `status` enum('processing','shipping','delivered','cancelRequest','cancel') DEFAULT 'processing',
  `deliveryDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cart_Details`
--

LOCK TABLES `Cart_Details` WRITE;
/*!40000 ALTER TABLE `Cart_Details` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cart_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ch_Super_Categories`
--

DROP TABLE IF EXISTS `Ch_Super_Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ch_Super_Categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Slug` text,
  `Sequence` int(11) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `keyword` text,
  `description` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ch_Super_Categories`
--

LOCK TABLES `Ch_Super_Categories` WRITE;
/*!40000 ALTER TABLE `Ch_Super_Categories` DISABLE KEYS */;
INSERT INTO `Ch_Super_Categories` VALUES (1,'Mobile',2,'mobile',NULL,1,NULL,NULL,NULL,'2022-09-19 17:37:20','2022-09-19 17:37:20'),(2,'Electronics',5,'electronics',NULL,1,NULL,NULL,NULL,'2022-09-19 17:49:47','2022-09-19 17:49:47');
/*!40000 ALTER TABLE `Ch_Super_Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderNotifications`
--

DROP TABLE IF EXISTS `OrderNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderNotifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderNotifications`
--

LOCK TABLES `OrderNotifications` WRITE;
/*!40000 ALTER TABLE `OrderNotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderNotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_Details_Statuses`
--

DROP TABLE IF EXISTS `Order_Details_Statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Order_Details_Statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT NULL,
  `custId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `issue` varchar(255) DEFAULT NULL,
  `comment` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_Details_Statuses`
--

LOCK TABLES `Order_Details_Statuses` WRITE;
/*!40000 ALTER TABLE `Order_Details_Statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `Order_Details_Statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custId` int(11) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `paymentmethod` varchar(255) DEFAULT NULL,
  `grandtotal` int(11) DEFAULT NULL,
  `status` enum('processing','shipping','delieverd','cancel') DEFAULT 'processing',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deliverydate` datetime DEFAULT NULL,
  `addressId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductOffers`
--

DROP TABLE IF EXISTS `ProductOffers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductOffers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `discount_per` varchar(255) DEFAULT NULL,
  `discount_price` float DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `net_price` float DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductOffers`
--

LOCK TABLES `ProductOffers` WRITE;
/*!40000 ALTER TABLE `ProductOffers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProductOffers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductVariants`
--

DROP TABLE IF EXISTS `ProductVariants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductVariants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `productCode` varchar(10) NOT NULL,
  `distributorPrice` double NOT NULL,
  `marginPer` int(11) DEFAULT NULL,
  `marginPrice` double DEFAULT NULL,
  `buyerPrice` double NOT NULL,
  `sellerPrice` double NOT NULL,
  `unitSize` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `discountPer` int(11) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `netPrice` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `compatibility` varchar(255) DEFAULT NULL,
  `storageSize` int(11) DEFAULT NULL,
  `storageType` int(11) DEFAULT NULL,
  `displayResolutionType` int(11) DEFAULT NULL,
  `laptopType` int(11) DEFAULT NULL,
  `osVersion` int(11) DEFAULT NULL,
  `processorId` int(11) DEFAULT NULL,
  `graphicsMemory` int(11) DEFAULT NULL,
  `interface` varchar(255) DEFAULT NULL,
  `simCount` varchar(255) DEFAULT NULL,
  `secondaryCamera` varchar(255) DEFAULT NULL,
  `primaryCamera` varchar(255) DEFAULT NULL,
  `batteryCapacity` varchar(255) DEFAULT NULL,
  `screenSize` varchar(255) DEFAULT NULL,
  `memory` varchar(255) DEFAULT NULL,
  `osType` varchar(255) DEFAULT NULL,
  `modelYear` varchar(255) DEFAULT NULL,
  `networkType` varchar(255) DEFAULT NULL,
  `Available` tinyint(1) DEFAULT NULL,
  `actualPrice` double DEFAULT NULL,
  `colorId` int(11) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL,
  `longDesc` text,
  `shortDesc` text,
  `thumbnail` text,
  `youTubeUrl` text,
  `stockType` tinyint(1) DEFAULT '0',
  `internationalWarranty` int(11) DEFAULT NULL,
  `refundable` tinyint(1) DEFAULT '1',
  `qtyWarning` int(11) DEFAULT NULL,
  `COD` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `productCode` (`productCode`),
  KEY `productId` (`productId`),
  CONSTRAINT `ProductVariants_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductVariants`
--

LOCK TABLES `ProductVariants` WRITE;
/*!40000 ALTER TABLE `ProductVariants` DISABLE KEYS */;
INSERT INTO `ProductVariants` VALUES (1,2,'13 128',3999,27,1064,2935,0,'1232',1,27,1064,2935,2935,'2022-09-20 06:42:12','2022-09-20 06:44:16','iPhone 13 128GB Midnight 5G With Facetime - International Specs','iphone-13-128gb-midnight-5g-with-facetime-international-specs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,1,'<ol><li>Battery Size5000 mAhBattery TypeLithium Polymer</li><li>Camera TypePrimary Camera + Secondary Camera</li><li>Charging TypeType-CColour NameOnyxConnection TypeWifi+CellularDisplay Resolution1280x680Expandable Memory TypeMicroSDFlashLEDInternal Memory32 GBMaximum Expandable Memory256 GBModel NameSM-A032FCKDMEAModel NumberSM-A032FCKDMEA</li></ol>','<p>Battery Size5000 mAhBattery TypeLithium PolymerCamera TypePrimary Camera + Secondary CameraCharging TypeType-CColour NameOnyxConnection TypeWifi+CellularDisplay Resolution1280x680Expandable Memory TypeMicroSDFlashLEDInternal Memory32 GBMaximum Expandable Memory256 GBModel NameSM-A032FCKDMEAModel NumberSM-A032FCKDMEA</p>','https://souqarena-photo.s3.ap-south-1.amazonaws.com/3150P3KQFlL._AC_SY780_.jpg',NULL,0,NULL,1,100,1),(2,3,'13 pro 128',4199,12,500,3699,0,NULL,1,12,500,3699,3699,'2022-09-21 20:57:09','2022-09-22 22:16:34','iPhone 13 Pro 128GB Gold 5G With Facetime - International Specs','iphone-13-pro-128gb-gold-5g-with-facetime-international-specs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,1,NULL,NULL,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/9475531992_1631944174.jpg',NULL,0,NULL,1,100,1),(3,4,'ipad 2021',1399,17,232,1167,0,NULL,1,17,232,1167,1167,'2022-09-21 21:21:35','2022-09-22 21:43:16','iPad 2021 (9th Generation) 10.2-Inch, 64GB, WiFi, Space Gray With Facetime - International Version','ipad-2021-9th-generation-102-inch-64gb-wifi-space-gray-with-facetime-international-version',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,1,NULL,NULL,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/1880192-01.avif',NULL,0,NULL,1,100,1),(4,5,'samsung s6',1149,16,180,969,0,'4GB',1,16,180,969,969,'2022-09-21 21:37:10','2022-09-22 11:16:29','Tab S6 lite(2022) 10.4 inch Angora Blue 4GB RAM 64GB Wi-Fi - UAE Version','tab-s6-lite2022-104-inch-angora-blue-4gb-ram-64gb-wi-fi-uae-version','type_C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wifi',NULL,'upto_5_8_MP','upto_12_MP','above_5000_mAh',NULL,'64_GB','android','2022',NULL,1,NULL,NULL,2,'<ul><li>Galaxy Tab S6 Lite is your super carryable note-taking, go-getting companion</li><li>It comes with a large 10.4 inch display on a slim and light build, One UI 2 on Android, and S Pen in box and ready to go</li><li>Galaxy Tab S6 Lite is slim and lightweight thanks to its seamless, metal unibody. It slips easily into a small tote for true portability and minimalist style</li></ul><p><br></p>','<ul><li>Galaxy Tab S6 Lite is your super carryable note-taking, go-getting companion</li><li>It comes with a large 10.4 inch display on a slim and light build, One UI 2 on Android, and S Pen in box and ready to go</li><li>Galaxy Tab S6 Lite is slim and lightweight thanks to its seamless, metal unibody. It slips easily into a small tote for true portability and minimalist style</li></ul><p><br></p>','https://souqarena-photo.s3.ap-south-1.amazonaws.com/Samsung-Galaxy-Tab-S6-Lite-10.4-WiFi-2019-64GB-Grey.jpg',NULL,1,NULL,1,100,1),(7,8,'PDda2k',350,7,24,326,0,'2GB',1,7,24,326,326,'2022-09-24 11:51:19','2022-09-24 11:59:20','Galaxy A03 Core Dual SIM Onyx 2GB RAM 32GB LTE - Middle East Version','galaxy-a03-core-dual-sim-onyx-2gb-ram-32gb-lte-middle-east-version','type_C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wifi_cellular',NULL,NULL,NULL,NULL,NULL,'32_GB',NULL,NULL,'4G',1,NULL,6,2,'<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(64, 69, 83);\">Highlights</strong></p><ul><li>Offers an immersive experience on the large, wide screen</li><li>Powerful chipset accounts for seamless multitasking</li><li>Furnished with a generously sized display for enhanced viewing</li><li>High capacity battery powers the device for prolonged hours on a single charge</li><li>Thin, lightweight body fits easily in the palm of your hand</li></ul><p><br></p>','<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(64, 69, 83);\">Highlights</strong></p><ul><li>Offers an immersive experience on the large, wide screen</li><li>Powerful chipset accounts for seamless multitasking</li><li>Furnished with a generously sized display for enhanced viewing</li><li>High capacity battery powers the device for prolonged hours on a single charge</li><li>Thin, lightweight body fits easily in the palm of your hand</li></ul><p><br></p>','https://souqarena-photo.s3.ap-south-1.amazonaws.com/e4e863e889b8479f511062440de0e7f42e6215e2_S100715126_3.jpg',NULL,0,NULL,1,100,1),(8,9,'PDxlr1',350,7,25,325,0,'2GB',1,7,25,325,325,'2022-09-24 12:20:56','2022-09-24 12:22:28','Galaxy A03 Core Dual SIM Bronze 2GB RAM 32GB LTE - Middle East Version','galaxy-a03-core-dual-sim-bronze-2gb-ram-32gb-lte-middle-east-version','type_C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wifi_cellular',NULL,NULL,NULL,NULL,NULL,'32_GB',NULL,NULL,'4G',1,NULL,11,2,'<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(64, 69, 83);\">Highlights</strong></p><ul><li>Offers an immersive experience on the large, wide screen</li><li>Powerful chipset accounts for seamless multitasking</li><li>Furnished with a generously sized display for enhanced viewing</li><li>High capacity battery powers the device for prolonged hours on a single charge</li><li>Thin, lightweight body fits easily in the palm of your hand</li></ul><p><br></p>','<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(64, 69, 83);\">Highlights</strong></p><ul><li>Offers an immersive experience on the large, wide screen</li><li>Powerful chipset accounts for seamless multitasking</li><li>Furnished with a generously sized display for enhanced viewing</li><li>High capacity battery powers the device for prolonged hours on a single charge</li><li>Thin, lightweight body fits easily in the palm of your hand</li></ul><p><br></p>','https://souqarena-photo.s3.ap-south-1.amazonaws.com/1992725-05.webp',NULL,0,NULL,1,NULL,1),(9,11,'PD3cvk',2499,31,774,1725,0,NULL,1,31,774,1725,1725,'2022-09-24 12:55:55','2022-09-24 12:57:32','iPhone 11 Black 64GB 4G LTE (2020 - Slim Packing) - International Specs','iphone-11-black-64gb-4g-lte-2020-slim-packing-international-specs','port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wifi_cellular',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020','4G',1,NULL,NULL,1,'<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(64, 69, 83);\">Highlights</strong></p><ul><li>Comes with a screen display resolution of 828 x 1792 pixels</li><li>A13 bionic chip with third generation neural engine</li><li>Slow-motion video support for 1080p at 120 fps</li><li>Ip68 water resistance maximum depth of up to 2 meters up to 30 minutes</li><li>Face ID enabled by true depth camera for facial recognition</li></ul><p><br></p>','<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(64, 69, 83);\">Highlights</strong></p><ul><li>Comes with a screen display resolution of 828 x 1792 pixels</li><li>A13 bionic chip with third generation neural engine</li><li>Slow-motion video support for 1080p at 120 fps</li><li>Ip68 water resistance maximum depth of up to 2 meters up to 30 minutes</li><li>Face ID enabled by true depth camera for facial recognition</li></ul><p><br></p>','https://souqarena-photo.s3.ap-south-1.amazonaws.com/e283a8c4f4330d8ef1a66fa94579767fd9456a15_blk.jfif',NULL,0,NULL,1,NULL,1),(10,13,'PDdyg1',2709,21,580,2129,0,'4GB',1,21,580,2129,2129,'2022-09-24 13:04:07','2022-09-24 13:06:01','iPhone 11 Purple 128GB 4G LTE (2020 - Slim Packing) - International Specs','iphone-11-purple-128gb-4g-lte-2020-slim-packing-international-specs','port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wifi_cellular',NULL,NULL,NULL,NULL,NULL,'64_GB',NULL,'2020','4G',1,NULL,12,1,'<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(64, 69, 83);\">Highlights</strong></p><ul><li>Support for display of multiple languages and characters simultaneously</li><li>Wide colour capture for photos and live photos</li><li>Extended dynamic range for video up to 60 fps</li><li>Slow-motion video support for 1080p at 120 fps</li><li>Enabled by truedepth camera for facial recognition</li></ul><p><br></p>','<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(64, 69, 83);\">Highlights</strong></p><ul><li>Support for display of multiple languages and characters simultaneously</li><li>Wide colour capture for photos and live photos</li><li>Extended dynamic range for video up to 60 fps</li><li>Slow-motion video support for 1080p at 120 fps</li><li>Enabled by truedepth camera for facial recognition</li></ul><p><br></p>','https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone-11-a.jpg',NULL,0,NULL,1,100,1),(11,14,'PD993s',4699,20,951,3748,0,'6GB',1,20,951,3748,3748,'2022-09-24 13:12:06','2022-09-24 13:13:48','iPhone 12 Pro Max With Facetime 128GB Pacific Blue 5G - International Specs','iphone-12-pro-max-with-facetime-128gb-pacific-blue-5g-international-specs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wifi_cellular',NULL,NULL,NULL,NULL,NULL,'128_GB',NULL,'2020','4G',1,NULL,4,1,'<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(64, 69, 83);\">Highlights</strong></p><ul><li>A14 Bionic is the first 5-nanometer chip in the industry, with advanced components literally atoms wide. Forty percent more transistors rev up speeds while increasing efficiency for great battery life. And a new ISP powers Dolby Vision recording — something no pro movie camera, let alone any other phone, can do.</li><li>5G transforms iPhone with accelerated wireless speeds and better performance on congested networks.5 Now you can download huge files on the go or stream high-quality HDR movies. Without. All. The. Lag. iPhone also has the most 5G bands of any smartphone so you get 5G in more places. And all that speed opens up amazing possibilities for the future of apps</li><li>NASA is using LiDAR technology for its next Mars landing. iPhone 12 Pro uses a LiDAR Scanner to measure how long it takes light to reflect back from objects. So it can create a depth map of whatever space you’re in. Because it’s ultrafast and accurate, AR apps can now transform a room into a realistic rainforest or show you how a new sneaker will fit.</li><li>Dual SIM: 1 Physical SIM, 1 e-SIM</li><li>Facetime is available on the product &amp; would be accessible in regions where facetime is permitted by telecom operators</li></ul><p><br></p>','<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(64, 69, 83);\">Highlights</strong></p><ul><li>A14 Bionic is the first 5-nanometer chip in the industry, with advanced components literally atoms wide. Forty percent more transistors rev up speeds while increasing efficiency for great battery life. And a new ISP powers Dolby Vision recording — something no pro movie camera, let alone any other phone, can do.</li><li>5G transforms iPhone with accelerated wireless speeds and better performance on congested networks.5 Now you can download huge files on the go or stream high-quality HDR movies. Without. All. The. Lag. iPhone also has the most 5G bands of any smartphone so you get 5G in more places. And all that speed opens up amazing possibilities for the future of apps</li><li>NASA is using LiDAR technology for its next Mars landing. iPhone 12 Pro uses a LiDAR Scanner to measure how long it takes light to reflect back from objects. So it can create a depth map of whatever space you’re in. Because it’s ultrafast and accurate, AR apps can now transform a room into a realistic rainforest or show you how a new sneaker will fit.</li><li>Dual SIM: 1 Physical SIM, 1 e-SIM</li><li>Facetime is available on the product &amp; would be accessible in regions where facetime is permitted by telecom operators</li></ul><p><br></p>','https://souqarena-photo.s3.ap-south-1.amazonaws.com/f65146e377b2b590627e9950e548a991ba2dde06_iPhone_12_Pro_Max_Pacific_Blue_PDP_Image_Position_2_EN.jpg',NULL,0,NULL,1,100,1),(12,15,'PD7hef',5450,2,123,5327,0,'6GB',1,2,123,5327,5327,'2022-09-24 13:27:45','2022-09-24 13:30:34','iPhone 14 Pro Physical Dual Sim 256GB Deep Purple 5G With FaceTime','iphone-14-pro-physical-dual-sim-256gb-deep-purple-5g-with-facetime','port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wifi_cellular',NULL,NULL,NULL,NULL,NULL,'256_GB',NULL,'2022','5G',1,NULL,12,1,NULL,NULL,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/596696-Product-0-I-637982217440527446_800x800.webp',NULL,0,NULL,1,100,1),(13,17,'PD9qzb',790,34,265,525,0,'2GB',1,34,265,525,525,'2022-09-27 19:46:24','2022-09-27 20:33:02','iphone 7 128 gb gold interatioanl spec','iphone-7-128-gb-gold-interatioanl-spec','port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wifi_cellular','single','upto_5_8_MP','upto_12_16_MP',NULL,NULL,'128_GB',NULL,NULL,'4G',1,NULL,1,9,'<p>Highlights</p><p>The phone can react to the smallest taps thanks to 3D touch, which is powered by the cutting-edge A10 Fusion Chip.</p><p><br></p><p>Apple\'s haptic sensor is compatible with the new home button.</p><p><br></p><p>New, cutting-edge cameras produce stunning images.</p><p><br></p><p>IP67-rated water and dust resistance</p><p><br></p><p>Overview</p><p><br></p><p>ABOUT:</p><p><br></p><p>In September 2016, the Apple iPhone 7 smartphone was released. The phone has a 5.50-inch touchscreen display with a 1080x1920 pixel resolution and 401 pixels per inch of pixel density.</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>PROCESSOR:</p><p><br></p><p>The Apple iPhone 7\'s quad-core Apple A10 Fusion processor provides processing capability. It has 3GB of RAM installed. The 2,900mAh non-removable battery powering the Apple iPhone 7 runs iOS 10.</p><p><br></p><p>A quad-core Apple A10 Fusion processor powers the Apple iPhone 7. It has 3GB of RAM installed. The 2,900mAh non-removable battery powering the Apple iPhone 7 runs iOS 10.</p><p><br></p><p><br></p><p><br></p><p>IMPROVEMENTS TO THE CAMERA: The Apple iPhone 7\'s 12-megapixel camera is located on the back. It has a front-facing 7-megapixel camera for taking selfies. Apple iPhone 7 comes with 32GB of internal storage and runs iOS 10. A Nano-SIM card can be used in the single SIM (GSM) Apple iPhone 7.</p><p><br></p><p><br></p><p><br></p><p>The Apple iPhone 7 has Wi-Fi 802.11 a/b/g/n/ac, GPS, Bluetooth v4.20, 3G, and 4G connectivity options. The phone has a proximity sensor, compass/magnetometer, barometer, gyroscope, accelerometer, and ambient light sensor.</p><p><br></p><p><br></p><p><br></p><p>MEASUREMENTS:</p><p><br></p><p>Measuring 158.20 x 77.90 x 7.30mm (height x width x thickness), the Apple iPhone 7 is 188.00 grams in weight. Red, Rose Gold, Gold, Silver, Black, and Jet Black were the colors used for its introduction.</p>','','https://souqarena-photo.s3.ap-south-1.amazonaws.com/Apple-iPhone-7-128GB-Gold.webp',NULL,0,NULL,1,100,1),(14,19,'PDdg49',790,34,265,525,0,'2GB',1,34,265,525,525,'2022-09-27 20:36:36','2022-09-27 20:38:25','Apple iphone 7 128 gb Matt Black International Spec','apple-iphone-7-128-gb-matt-black-international-spec','port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wifi_cellular','single','upto_5_8_MP','upto_12_16_MP',NULL,NULL,'4','1','before_2018','4G',1,NULL,14,9,'<p>Highlights</p><p>The phone can react to the smallest taps thanks to 3D touch, which is powered by the cutting-edge A10 Fusion Chip.</p><p><br></p><p>Apple\'s haptic sensor is compatible with the new home button.</p><p><br></p><p>New, cutting-edge cameras produce stunning images.</p><p><br></p><p>IP67-rated water and dust resistance</p>','<p>Highlights</p><p>The phone can react to the smallest taps thanks to 3D touch, which is powered by the cutting-edge A10 Fusion Chip.</p><p><br></p><p>Apple\'s haptic sensor is compatible with the new home button.</p><p><br></p><p>New, cutting-edge cameras produce stunning images.</p><p><br></p><p>IP67-rated water and dust resistance</p>','https://souqarena-photo.s3.ap-south-1.amazonaws.com/iPhone-7-Nero.jpg',NULL,0,NULL,1,NULL,1),(15,20,'PDgr83',20000,-1062,-212323,232323,0,'0',1,-1062,-212323,232323,232323,'2022-09-28 01:59:24','2022-09-28 02:01:32','bechu','bechu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'','','https://souqarena-photo.s3.ap-south-1.amazonaws.com/New%20Project.jpg',NULL,0,NULL,1,NULL,1),(16,21,'PDp390',5555,18,1000,4555,0,'12GB',1,18,1000,4555,4555,'2022-09-28 07:31:54','2022-09-28 07:31:54','iPhone 13 128GB Midnight 5G With Facetime - International Specs','iphone-13-128gb-midnight-5g-with-facetime-international-specs','port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'bluetooth',NULL,NULL,NULL,NULL,NULL,'64_GB',NULL,'2022','5G',1,NULL,4,9,'','',NULL,NULL,0,NULL,1,100,1),(17,21,'PDeqzm',2499,11,277,2222,0,'6GB',1,11,277,2222,2222,'2022-09-28 07:31:54','2022-09-28 07:31:54','iPhone 13 128GB Midnight 5G With Facetime - International Specs','iphone-13-128gb-midnight-5g-with-facetime-international-specs','micro',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wireless',NULL,NULL,NULL,NULL,NULL,'128_GB',NULL,'2021','5G',1,NULL,4,9,'','',NULL,NULL,0,NULL,1,100,1),(18,19,'PDxpaa',790,34,265,525,0,'2GB',1,34,265,525,525,'2022-09-28 20:02:05','2022-09-28 20:08:13','Apple iphone 7 128 gb Silver International Spec','apple-iphone-7-128-gb-silver-international-spec','port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wifi_cellular','single','upto_5_8_MP','upto_12_16_MP','2','13','128_GB','1','before_2018','4G',1,NULL,7,9,'<p>Highlights</p><p>The phone can react to the smallest taps thanks to 3D touch, which is powered by the cutting-edge A10 Fusion Chip.</p><p><br></p><p>Apple\'s haptic sensor is compatible with the new home button.</p><p><br></p><p>New, cutting-edge cameras produce stunning images.</p><p><br></p><p>IP67-rated water and dust resistance</p>',NULL,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/apple_iphone_7_silver_32gbsdsdd.jpg',NULL,0,NULL,1,NULL,1),(19,19,'PDr05w',790,34,265,525,0,'2GB',1,34,265,525,525,'2022-09-28 20:02:05','2022-09-28 20:08:24','Apple iphone 7 128 gb Gold International Spec','apple-iphone-7-128-gb-gold-international-spec','port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wifi_cellular','single','upto_5_8_MP','upto_12_16_MP','2','13','128_GB','1','before_2018','4G',1,NULL,1,9,'<p>Highlights</p><p>The phone can react to the smallest taps thanks to 3D touch, which is powered by the cutting-edge A10 Fusion Chip.</p><p><br></p><p>Apple\'s haptic sensor is compatible with the new home button.</p><p><br></p><p>New, cutting-edge cameras produce stunning images.</p><p><br></p><p>IP67-rated water and dust resistance</p>',NULL,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/Apple-iPhone-7-128GB-Gold.webp',NULL,0,NULL,1,NULL,1),(21,22,'PDxst7',750,8,60,690,0,'6GB',1,8,60,690,690,'2022-09-29 10:54:30','2022-09-29 10:55:03',' iPhone 7 Plus With FaceTime Matt Black 128GB 4G LTE -Renewed ','iphone-7-plus-with-facetime-matt-black-128gb-4g-lte-renewed','port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wifi_cellular','single','upto_16_32_MP','upto_24_48_MP','4','2','128_GB','1','before_2018','4G',1,NULL,14,9,'<p><strong>Highlights</strong></p><ul><li>Flaunts dual-domain pixels for wide viewing angles</li><li>12MP wide-angle and telephoto cameras with OIS capture flawless shots even in low light</li><li>Powerful A10 Fusion chipset with 64-bit architecture ensures seamless multitasking</li><li>Oleophobic-coated display keeps fingerprints and oily smudges at bay</li><li>Features built-in support for vision, hearing, physical and motor skills, learning and literacy</li></ul>','','https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone%207%20plus%20matt%20black%20Souqarena.com%20%20ejdhjdchedhbcjedch.jpg',NULL,0,1,1,100,1),(22,22,'PDrlc4',750,8,60,690,0,'3GB',1,8,60,690,690,'2022-09-29 10:54:30','2022-09-29 10:55:26',' iPhone 7 Plus With FaceTime Silver 128GB 4G LTE -Renewed','iphone-7-plus-with-facetime-silver-128gb-4g-lte-renewed','port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wifi_cellular','single','upto_16_32_MP','upto_20_24_MP','6','5','128_GB','1','before_2018','4G',1,NULL,7,9,'<p><strong>Highlights</strong></p><ul><li>Flaunts dual-domain pixels for wide viewing angles</li><li>12MP wide-angle and telephoto cameras with OIS capture flawless shots even in low light</li><li>Powerful A10 Fusion chipset with 64-bit architecture ensures seamless multitasking</li><li>Oleophobic-coated display keeps fingerprints and oily smudges at bay</li><li>Features built-in support for vision, hearing, physical and motor skills, learning and literacy</li></ul>','','https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone-7-plus-silver.jpg',NULL,0,1,1,100,1),(23,22,'PDente',750,8,60,690,0,'3GB',1,8,60,690,690,'2022-09-29 10:54:30','2022-09-29 10:56:06',' iPhone 7 Plus With FaceTime Gold 128GB 4G LTE -Renewed','iphone-7-plus-with-facetime-gold-128gb-4g-lte-renewed','port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wifi_cellular','triple','above_32_MP','upto_20_24_MP','3','2','4','1','before_2018','4G',1,NULL,1,9,'<p><strong>Highlights</strong></p><ul><li>Flaunts dual-domain pixels for wide viewing angles</li><li>12MP wide-angle and telephoto cameras with OIS capture flawless shots even in low light</li><li>Powerful A10 Fusion chipset with 64-bit architecture ensures seamless multitasking</li><li>Oleophobic-coated display keeps fingerprints and oily smudges at bay</li><li>Features built-in support for vision, hearing, physical and motor skills, learning and literacy</li></ul>','','https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone%207%20plus%20gold%20souqarena.jpg',NULL,0,5,1,100,1),(24,22,'PD8r8w',750,8,60,690,0,'3GB',1,8,60,690,690,'2022-09-29 10:54:30','2022-09-29 10:56:40',' iPhone 7 Plus With FaceTime  Rose Gold 128GB 4G LTE -Renewed','iphone-7-plus-with-facetime-rose-gold-128gb-4g-lte-renewed','port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wifi_cellular','single','upto_8_12_MP','upto_12_16_MP','5','5','128_GB','1','before_2018','4G',1,NULL,NULL,9,'<p><strong>Highlights</strong></p><ul><li>Flaunts dual-domain pixels for wide viewing angles</li><li>12MP wide-angle and telephoto cameras with OIS capture flawless shots even in low light</li><li>Powerful A10 Fusion chipset with 64-bit architecture ensures seamless multitasking</li><li>Oleophobic-coated display keeps fingerprints and oily smudges at bay</li><li>Features built-in support for vision, hearing, physical and motor skills, learning and literacy</li></ul>','','https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone%207%20plus%20Rose%20Gold%20Side%20%20SouqArena.com%20sidiswhdiuwsdihwsd.jpg',NULL,0,3,1,NULL,1),(25,22,'PDuskl',1050,16,170,880,0,'3GB',1,16,170,880,880,'2022-09-29 11:13:04','2022-10-08 16:11:20',' iPhone 7 Plus With FaceTime Matt Black 256 GB 4G LTE -Renewed','iphone-7-plus-with-facetime-matt-black-256-gb-4g-lte-renewed','port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wifi_cellular','single','upto_5_8_MP','upto_12_16_MP','3','11','256_GB','1','before_2018','4G',1,NULL,14,9,'<p><strong>Highlights</strong></p><ul><li>Flaunts dual-domain pixels for wide viewing angles</li><li>12MP wide-angle and telephoto cameras with OIS capture flawless shots even in low light</li><li>Powerful A10 Fusion chipset with 64-bit architecture ensures seamless multitasking</li><li>Oleophobic-coated display keeps fingerprints and oily smudges at bay</li><li>Features built-in support for vision, hearing, physical and motor skills, learning and literacy</li></ul>',NULL,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone%207%20plus%20matt%20black%20SouqArena.com%20hdjehdhedehddi.jpg',NULL,0,3,1,NULL,1),(26,22,'PDryvg',1050,16,170,880,0,'3GB',1,16,170,880,880,'2022-09-29 11:13:04','2022-10-08 16:11:09',' iPhone 7 Plus With FaceTime Silver 256 GB 4G LTE -Renewed','iphone-7-plus-with-facetime-silver-256-gb-4g-lte-renewed','port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wifi_cellular','single','upto_5_8_MP','upto_12_16_MP','3','11','256_GB','1','before_2018','4G',1,NULL,7,9,'<p><strong>Highlights</strong></p><ul><li>Flaunts dual-domain pixels for wide viewing angles</li><li>12MP wide-angle and telephoto cameras with OIS capture flawless shots even in low light</li><li>Powerful A10 Fusion chipset with 64-bit architecture ensures seamless multitasking</li><li>Oleophobic-coated display keeps fingerprints and oily smudges at bay</li><li>Features built-in support for vision, hearing, physical and motor skills, learning and literacy</li></ul>',NULL,NULL,NULL,0,2,1,NULL,1),(27,22,'PD9701',1050,16,170,880,0,'3GB',1,16,170,880,880,'2022-09-29 11:13:04','2022-10-08 16:10:21',' iPhone 7 Plus With FaceTime Gold 256 GB 4G LTE -Renewed','iphone-7-plus-with-facetime-gold-256-gb-4g-lte-renewed','port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wifi_cellular','single','upto_5_8_MP','upto_12_16_MP','3','11','4','1','before_2018','4G',1,NULL,1,9,'<p><strong>Highlights</strong></p><ul><li>Flaunts dual-domain pixels for wide viewing angles</li><li>12MP wide-angle and telephoto cameras with OIS capture flawless shots even in low light</li><li>Powerful A10 Fusion chipset with 64-bit architecture ensures seamless multitasking</li><li>Oleophobic-coated display keeps fingerprints and oily smudges at bay</li><li>Features built-in support for vision, hearing, physical and motor skills, learning and literacy</li></ul>',NULL,NULL,NULL,0,NULL,1,NULL,1),(28,22,'PDi1v6',1050,16,170,880,0,'3GB',1,16,170,880,880,'2022-09-29 11:13:04','2022-09-29 11:13:04',' iPhone 7 Plus With FaceTime Rose Gold 256 GB 4G LTE -Renewed','iphone-7-plus-with-facetime-rose-gold-256-gb-4g-lte-renewed','port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wifi_cellular','single','upto_5_8_MP','upto_12_16_MP','3','11','256_GB',NULL,'before_2018','4G',1,NULL,15,9,'<p><strong>Highlights</strong></p><ul><li>Flaunts dual-domain pixels for wide viewing angles</li><li>12MP wide-angle and telephoto cameras with OIS capture flawless shots even in low light</li><li>Powerful A10 Fusion chipset with 64-bit architecture ensures seamless multitasking</li><li>Oleophobic-coated display keeps fingerprints and oily smudges at bay</li><li>Features built-in support for vision, hearing, physical and motor skills, learning and literacy</li></ul>',NULL,NULL,NULL,0,1,1,NULL,1),(33,23,'PDhxnu',4199,29,1221,2978,0,'32GB_More',1,29,1221,2978,2978,'2022-10-01 22:34:10','2022-10-01 22:38:10','Latest Model Vostro 3510 Laptop With 15.6-Inch Full HD Display, Core i7-1165G7 Processor/32GB RAM/1TB HDD + 1TB SSD SSD/2GB Nvidia GeForce MX350 Graphics/Windows 11 /International Version English/Arabic Black','latest-model-vostro-3510-laptop-with-156-inch-full-hd-display-core-i7-1165g7-processor32gb-ram1tb-hdd-1tb-ssd-ssd2gb-nvidia-geforce-mx350-graphicswindows-11-international-version-englisharabic-black',NULL,NULL,3,1,1,1,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,6,10,'<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(64, 69, 83);\">Highlights</strong></p><ul><li>Travels easily wherever you go, features an ultra slim chassis at just 14.9mm and starts at 3.1lbs / 1.4kg</li><li>Take advantage of smarter technology and set reminders, go shopping &amp; more with voice-controlled Alexa</li><li>Enjoy your laptop on-the-go with up to 14 hours battery life &amp; easily charge with Rapid Charge Pro</li></ul><p><br></p>','','https://souqarena-photo.s3.ap-south-1.amazonaws.com/715s65DmFlL._AC_SS450_fgtg.jpg',NULL,0,NULL,1,NULL,1),(34,24,'PDxqth',3800,33,1251,2549,0,'12GB',1,33,1251,2549,2549,'2022-10-03 21:38:45','2022-10-03 21:41:59','15-dw3145ne Laptop With 15.6-Inch FHD Display, Core i7-1165G7 Processor / 16GB RAM / 512GB SSD / Intel Iris Xe Graphics / Windows 11 Home /International Version English/Arabic Natural Silver','15-dw3145ne-laptop-with-156-inch-fhd-display-core-i7-1165g7-processor-16gb-ram-512gb-ssd-intel-iris-xe-graphics-windows-11-home-international-version-englisharabic-natural-silver',NULL,3,1,1,1,3,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,'5','4',NULL,NULL,1,NULL,7,11,'<p><strong>Highlights</strong></p><ul><li>With its 6.5 mm micro-edge bezel display, slim and light design, plus 81% screen to body ratio</li><li>Tackle your busiest days with the performance of an Intel processor and advanced graphics. Store more of what you love with abundant storage.</li><li>With long-lasting battery life and HP Fast Charge technology, this laptop lets you work, watch, and stay connected. Integrated precision touchpad with multi-touch support speeds up both navigation and productivity.</li><li>HP has been one of the leading computer manufacturers for decades, and has developed a reputation for providing reliable, high-quality computers</li><li>Battery Around 8 hours of battery life support</li></ul><p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(64, 69, 83);\">Overview</strong></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(64, 69, 83);\">We are a technology company born of the belief that companies should do more than just make a profit. They should make the world a better place. Our efforts in climate action, human rights, and digital equity prove that we are doing everything in our power to make it so. With over 80 years of actions that prove our intentions, we have the confidence to envision a world where innovation drives extraordinary contributions to humanity. And our technology – a product and service portfolio of personal systems, printers, and 3D printing solutions – was created to inspire this meaningful progress. We know that thoughtful ideas can come from anyone, anywhere, at any time and all it takes is one to change the world. We\'ve put together a team of the greatest titans of technology the world has ever seen. Here at HP we are committed to innovating and reinventing your digital life. Hewlett-Packard Co. provides products, technologies, software, solutions and services to individual consumers, small and medium-sized businesses and large enterprises, including customers in the government, health and education sectors. It operates through seven business segments: Personal Systems, Printing, Enterprise Group, Enterprise Services, Software, HP Financial Services and Corporate Investments. The Personal Systems segment provides commercial personal computers (PCs), consumer PCs, workstations, calculators and other related accessories, software and services for the commercial and consumer markets. The Printing segment provides consumer and commercial printer hardware, supplies, media and scanning devices. Printing is also focused on imaging solutions in the commercial markets. The Enterprise Group segment provides servers, storage, networking, technology services and, when combined with HP\'s Cloud Service Automation software suite, the HP CloudSystem. The CloudSystem enables infrastructure, platform and software-as-a-service in private, public or hybrid environments. The Enterprise Services segment provides technology consulting, outsourcing and support services across infrastructure, applications and business process domains. This segment is divided into two units: Infrastructure Technology Outsourcing and Application and Business Services. The Infrastructure Technology Outsourcing unit delivers services that encompass the data center, IT security, cloud-based computing, workplace technology, network, unified communications, and enterprise service management. The Application and Business Services unit helps clients develop, revitalize and manage their applications and information assets. Its offerings include licenses, support, professional services, and software-as-a-service in order to provide an end-to-end solution to customers. The Software segment provides enterprise information management and security solutions for businesses and enterprises of all sizes. The HP Financial Services segment provides a broad range of value-added financial life cycle management services. This segment offers leasing, financing, utility programs and asset recovery services, as well as financial asset management services. The Corporate Investments segment includes HP Labs, the webOS business and certain business incubation projects.</span></p>','<p><strong>Highlights</strong></p><ul><li>With its 6.5 mm micro-edge bezel display, slim and light design, plus 81% screen to body ratio</li><li>Tackle your busiest days with the performance of an Intel processor and advanced graphics. Store more of what you love with abundant storage.</li><li>With long-lasting battery life and HP Fast Charge technology, this laptop lets you work, watch, and stay connected. Integrated precision touchpad with multi-touch support speeds up both navigation and productivity.</li><li>HP has been one of the leading computer manufacturers for decades, and has developed a reputation for providing reliable, high-quality computers</li><li>Battery Around 8 hours of battery life support</li></ul>','https://souqarena-photo.s3.ap-south-1.amazonaws.com/1851659_mainijdjcj%20souqarena.jpg_480Wx480H',NULL,0,NULL,1,100,1);
/*!40000 ALTER TABLE `ProductVariants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Seo_Details`
--

DROP TABLE IF EXISTS `Seo_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Seo_Details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` text,
  `meta_desc` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Seo_Details`
--

LOCK TABLES `Seo_Details` WRITE;
/*!40000 ALTER TABLE `Seo_Details` DISABLE KEYS */;
/*!40000 ALTER TABLE `Seo_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SequelizeMeta`
--

DROP TABLE IF EXISTS `SequelizeMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SequelizeMeta`
--

LOCK TABLES `SequelizeMeta` WRITE;
/*!40000 ALTER TABLE `SequelizeMeta` DISABLE KEYS */;
INSERT INTO `SequelizeMeta` VALUES ('20200613173828-create-user.js'),('20200621141549-create-category.js'),('20200622174557-add-column-user.js'),('20200708120626-create-product-offer.js'),('20200713195253-create-sub-category.js'),('20200717174011-create-sub-child-category.js'),('20200730084936-add-column-category.js'),('20200730184103-create-productphoto.js'),('20200804102505-create-location.js'),('20200804102730-create-area.js'),('20200809045756-create-product.js'),('20200811181939-add-column-product.js'),('20200903150938-create-address.js'),('20200904052351-create-order.js'),('20200906050310-add-column-address.js'),('20200906064257-create-customer.js'),('20200908052854-add-column-order.js'),('20201110045138-add-column-product.js'),('20201215203744-column-add-subcategory.js'),('20210109223021-create-vendor.js'),('20210109223242-create-vendor-product.js'),('20210111184629-add-column-location.js'),('20210111184635-add-column-area.js'),('20210111200003-create-vendor-area.js'),('20210209202536-add-column-customer.js'),('20210209202809-add-column-customer.js'),('20210213065805-add-column-Address.js'),('20210213195533-create-chit-seller-contact.js'),('20210307144901-add-column-category.js'),('20210314113609-create-product-variant.js'),('20210314120547-modify_fields_product.js'),('20210320073800-add-column-productvarient.js'),('20210323082237-create-cart-detail.js'),('20210329160910-create-order-notification.js'),('20210330182044-create-banner-detail.js'),('20210412201046-add-column-orders.js'),('20210413185147-create-order-details-status.js'),('20210430054259-add-column-ProductVarient.js'),('20210430084127-create-seo-details.js'),('20210523034202-add-column-productphoto.js'),('20210531025218-add-column-BannerDetails.js'),('20210602063133-create-ch-brand-detail.js'),('20210603024445-add-column-product.js'),('20210707122859-add-column-category.js'),('20210816175818-add-column-brand.js'),('20210817041305-add-column-productvarient.js'),('20210829163901-add-column-user.js'),('20210904194210-create-ch-seller-shopdetail.js'),('20210912092102-create-ch-color-detail.js'),('20210918021643-create-ch-city.js'),('20210921190702-alter-column-prductvarient.js'),('20210922024256-create-ch-specification.js'),('20210925072851-create-ch-coupon-detail.js'),('20210925174546-create-ch-super-category.js'),('20211002151600-add-column-productvarient.js'),('20211028175147-add-column-brand-detail.js'),('20211128053928-add-column-supercategory.js'),('20211212101810-add-column-subchildcategory.js'),('20220211124022-add-column-customer.js'),('20220301034942-add-column-banner.js'),('20220306163710-create-collection.js'),('20220306180424-create-item.js'),('20220331064915-create-ch-flash-sale.js'),('20220331103949-create-ch-flash-sale-item.js'),('20220614171757-create-tag.js'),('20220919131455-add-column-subchildcategory.js'),('20220922190244-add-column-ProductVariant.js'),('20220925065030-create-processor.js'),('20220926050734-add-column-productvarient-product.js'),('20221001162500-add-column-color-varient.js');
/*!40000 ALTER TABLE `SequelizeMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubCategories`
--

DROP TABLE IF EXISTS `SubCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubCategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) DEFAULT NULL,
  `sub_name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `desc` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubCategories`
--

LOCK TABLES `SubCategories` WRITE;
/*!40000 ALTER TABLE `SubCategories` DISABLE KEYS */;
INSERT INTO `SubCategories` VALUES (3,5,'Mobiles','2022-09-19 17:47:06','2022-09-19 17:47:06',NULL,NULL,'Mobiles','<p>Mobiles</p>'),(4,6,'Smart Phone','2022-09-19 18:41:32','2022-09-19 18:41:32',NULL,NULL,NULL,'<p>Smart Phone</p>'),(5,6,'Feature Phone','2022-09-19 18:42:10','2022-09-19 18:42:10',NULL,NULL,NULL,'<p>Feature Phone</p>'),(7,8,'Smart Watch','2022-09-19 18:52:18','2022-09-19 18:52:18',NULL,NULL,NULL,'<p>Smart Watch</p>'),(11,10,'Computer','2022-09-21 21:25:33','2022-09-21 21:25:33',NULL,NULL,NULL,'<p>Computer</p>');
/*!40000 ALTER TABLE `SubCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubChildCategories`
--

DROP TABLE IF EXISTS `SubChildCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubChildCategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `subcategoryId` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` text,
  `desc` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubChildCategories`
--

LOCK TABLES `SubChildCategories` WRITE;
/*!40000 ALTER TABLE `SubChildCategories` DISABLE KEYS */;
INSERT INTO `SubChildCategories` VALUES (2,'Mi','mi',5,3,NULL,NULL,NULL,'2022-09-19 17:47:30','2022-09-19 17:47:30'),(3,'Realme','realme',5,3,NULL,NULL,NULL,'2022-09-19 17:48:23','2022-09-19 17:48:23'),(4,'ASUS','asus',5,3,NULL,NULL,NULL,'2022-09-19 17:48:34','2022-09-19 17:48:34'),(5,'Samsung','samsung',5,3,NULL,NULL,NULL,'2022-09-19 17:48:35','2022-09-19 17:48:35'),(6,'Vivo','vivo',5,3,NULL,NULL,NULL,'2022-09-19 17:48:52','2022-09-19 17:48:52'),(7,'APPLE','apple',5,3,NULL,NULL,NULL,'2022-09-19 17:48:58','2022-09-19 17:48:58'),(8,'iphone','iphone',6,4,NULL,NULL,NULL,'2022-09-19 19:24:50','2022-09-19 19:24:50'),(10,'Desktop','desktop',10,11,NULL,NULL,NULL,'2022-09-21 21:26:03','2022-09-21 21:26:03'),(11,'Laptop','laptop',10,11,NULL,NULL,NULL,'2022-09-21 21:26:10','2022-09-21 21:26:10'),(12,'Tablet','tablet',10,11,NULL,NULL,NULL,'2022-09-21 21:26:17','2022-09-21 21:26:17');
/*!40000 ALTER TABLE `SubChildCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `locationId` int(11) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `zipcode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `desc` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (5,'Electronics','2022-09-19 17:45:40','2022-09-24 17:11:04','electronics',1,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/da4e107d50844c45.webp','Electronics','Electronics','Electronics'),(6,'Mobile Phone','2022-09-19 18:37:54','2022-10-01 17:36:21','mobile-phone',1,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/cat-mobiles2_1024x1024_crop_center.webp','Mobile Phone','',''),(8,'Watch','2022-09-19 18:39:08','2022-09-24 21:46:35','watch',1,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/download.jpeg','','',''),(10,'IT Hardware','2022-09-19 18:39:38','2022-10-01 17:36:55','it-hardware',1,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/cat-laptops_1024x1024_crop_center.webp','','',''),(11,'Gaming','2022-09-19 18:40:07','2022-09-25 06:32:56','gaming',1,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/%E2%80%94Pngtree%E2%80%94vector%20video%20game%20icon_4101940.png','','',''),(12,'Renewed','2022-09-19 18:59:53','2022-10-01 17:36:42','renewed',1,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/cat-mobiles_1024x1024_crop_center.webp','Renewed','',''),(13,'Pre-owned','2022-09-19 19:01:12','2022-09-25 06:33:14',NULL,0,NULL,'','','');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ch_brand_details`
--

DROP TABLE IF EXISTS `ch_brand_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_brand_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `DiscountPer` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` text,
  `desc` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ch_brand_details`
--

LOCK TABLES `ch_brand_details` WRITE;
/*!40000 ALTER TABLE `ch_brand_details` DISABLE KEYS */;
INSERT INTO `ch_brand_details` VALUES (2,'Samsung','BRdbkz','samsung',1,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/Untitled%20design-7.png',NULL,'2022-09-19 12:38:24','2022-09-27 19:53:50','null','null','null'),(3,'MI','BRo3m5','mi',1,NULL,NULL,'2022-09-19 17:39:58','2022-09-19 17:39:58',NULL,NULL,NULL),(4,'INFINIX','BRet1a','infinix',1,NULL,NULL,'2022-09-19 17:40:25','2022-09-19 17:40:25',NULL,NULL,NULL),(5,'OPPO','BRfrob','oppo',1,NULL,NULL,'2022-09-19 17:40:33','2022-09-19 17:40:33',NULL,NULL,NULL),(6,'HONOR','BRbqgg','honor',1,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/Add%20a%20heading-3.png',NULL,'2022-09-19 17:40:51','2022-09-28 20:20:33','null','null','null'),(7,'ASUS','BR6stm','asus',1,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/Samsung_wordmark.svg%20%281%29.png',NULL,'2022-09-19 17:41:00','2022-09-27 09:35:04','null','null','null'),(8,'Tecno','BR92pt','tecno',1,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/Tecno-Logo-Vector-scaled.jpg',NULL,'2022-09-19 18:34:09','2022-09-26 13:40:49','null','null','null'),(9,'Apple','BRx40l','apple',1,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/Untitled%20design-5.png',NULL,'2022-09-27 09:34:27','2022-09-27 19:54:07','null','null','null'),(10,'Dell','BR105f','dell',1,NULL,NULL,'2022-10-01 22:33:22','2022-10-01 22:33:22',NULL,NULL,NULL),(11,'Hp','BRowz1','hp',1,NULL,NULL,'2022-10-01 22:33:29','2022-10-01 22:33:29',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ch_brand_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ch_cities`
--

DROP TABLE IF EXISTS `ch_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) DEFAULT NULL,
  `DISTRICTID` int(11) DEFAULT NULL,
  `ZONEID` int(11) DEFAULT NULL,
  `STATEID` int(11) DEFAULT NULL,
  `STATUS` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ch_cities`
--

LOCK TABLES `ch_cities` WRITE;
/*!40000 ALTER TABLE `ch_cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `ch_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ch_color_details`
--

DROP TABLE IF EXISTS `ch_color_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_color_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) DEFAULT NULL,
  `CODE` text,
  `STATUS` tinyint(1) DEFAULT NULL,
  `thumbnail` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ch_color_details`
--

LOCK TABLES `ch_color_details` WRITE;
/*!40000 ALTER TABLE `ch_color_details` DISABLE KEYS */;
INSERT INTO `ch_color_details` VALUES (1,'Gold','1',1,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone-14-pro-max-gold-witb-202209_FMT_WHH.jpeg','2022-09-21 20:58:29','2022-10-01 19:49:17'),(2,'Midnight Blue','2',1,NULL,'2022-09-21 20:58:47','2022-09-21 20:58:47'),(3,'Sierra Blue','3',1,NULL,'2022-09-21 20:59:14','2022-09-21 20:59:14'),(4,'Blue','4',1,NULL,'2022-09-21 20:59:52','2022-09-21 20:59:52'),(5,'Alpine Green','5',1,NULL,'2022-09-21 21:00:05','2022-09-21 21:00:05'),(6,'Black','6',1,NULL,'2022-09-21 21:01:08','2022-09-21 21:01:08'),(7,'Silver','7',1,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/silver.jpeg','2022-09-21 21:01:23','2022-10-01 19:48:09'),(8,'Grayphite','8',1,NULL,'2022-09-21 21:01:34','2022-09-21 21:01:34'),(9,'White','9',1,NULL,'2022-09-21 21:01:47','2022-09-21 21:01:47'),(10,'Angora Blue','10',1,NULL,'2022-09-22 21:30:13','2022-09-22 21:30:13'),(11,'bronze','11',1,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/csm_E_aDZkNXEAIoUHw_b9715efca8.jpeg','2022-09-24 12:08:31','2022-10-01 18:17:53'),(12,'Purple','12',1,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/images.jpeg','2022-09-24 13:00:33','2022-10-01 18:16:18'),(13,'Burgundy','13',1,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/iPhone-14-Pro-Max-Titanium-Burgundy-2.jpeg','2022-09-24 22:06:53','2022-10-01 18:17:17'),(14,'Matt Black','14',1,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/black_8becd54c-39f9-43e5-837c-eeae9b172e92.webp','2022-09-27 20:02:58','2022-10-01 18:12:07'),(15,'Rose Gold','15',1,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone-6s-plus-rose-gold-back.jpeg','2022-09-29 10:53:58','2022-10-01 18:10:49');
/*!40000 ALTER TABLE `ch_color_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ch_coupon_details`
--

DROP TABLE IF EXISTS `ch_coupon_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_coupon_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(255) DEFAULT NULL,
  `VarientId` int(11) DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `Value` double DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ch_coupon_details`
--

LOCK TABLES `ch_coupon_details` WRITE;
/*!40000 ALTER TABLE `ch_coupon_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `ch_coupon_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ch_flash_sale_items`
--

DROP TABLE IF EXISTS `ch_flash_sale_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_flash_sale_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flashSaleId` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `productId` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ch_flash_sale_items`
--

LOCK TABLES `ch_flash_sale_items` WRITE;
/*!40000 ALTER TABLE `ch_flash_sale_items` DISABLE KEYS */;
INSERT INTO `ch_flash_sale_items` VALUES (1,1,1,23,'2022-10-22 16:10:01','2022-10-22 16:10:01'),(2,1,1,22,'2022-10-22 16:10:01','2022-10-22 16:10:01'),(3,1,1,21,'2022-10-22 16:10:01','2022-10-22 16:10:01'),(4,1,1,13,'2022-10-22 16:10:54','2022-10-22 16:10:54'),(5,1,1,9,'2022-10-22 16:10:54','2022-10-22 16:10:54'),(6,1,1,4,'2022-10-22 16:11:17','2022-10-22 16:11:17'),(7,1,1,2,'2022-10-22 16:11:17','2022-10-22 16:11:17'),(9,1,1,5,'2022-10-22 16:13:09','2022-10-22 16:13:09');
/*!40000 ALTER TABLE `ch_flash_sale_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ch_flash_sales`
--

DROP TABLE IF EXISTS `ch_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_flash_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ch_flash_sales`
--

LOCK TABLES `ch_flash_sales` WRITE;
/*!40000 ALTER TABLE `ch_flash_sales` DISABLE KEYS */;
INSERT INTO `ch_flash_sales` VALUES (1,'Flash Sale','flash-sale',1,'','2022-11-05 18:15:00','2022-11-29 18:15:00','2022-10-22 16:10:01','2022-11-06 13:57:20');
/*!40000 ALTER TABLE `ch_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ch_seller_shopdetails`
--

DROP TABLE IF EXISTS `ch_seller_shopdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_seller_shopdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SELLERID` int(11) DEFAULT NULL,
  `SHOPNAME` varchar(255) DEFAULT NULL,
  `THUMBNAIL` varchar(255) DEFAULT NULL,
  `PHONE` varchar(255) DEFAULT NULL,
  `ADDRESS` text,
  `CITY` varchar(255) DEFAULT NULL,
  `DISTRICT` varchar(255) DEFAULT NULL,
  `ZONE` varchar(255) DEFAULT NULL,
  `PICKUPADDRESS` text,
  `DESCRIPTION` text,
  `BANKNAME` text,
  `BANKACCOUNTNO` double DEFAULT NULL,
  `BANKACCOUNTHOLDERNAME` varchar(255) DEFAULT NULL,
  `BANKBRANCH` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ch_seller_shopdetails`
--

LOCK TABLES `ch_seller_shopdetails` WRITE;
/*!40000 ALTER TABLE `ch_seller_shopdetails` DISABLE KEYS */;
INSERT INTO `ch_seller_shopdetails` VALUES (1,2,'Omkar shop',NULL,'8375893352','Dubai','Dubai',NULL,NULL,'Dubai','electronics',NULL,NULL,NULL,NULL,'2022-10-15 02:35:51','2022-10-15 02:35:51');
/*!40000 ALTER TABLE `ch_seller_shopdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ch_specifications`
--

DROP TABLE IF EXISTS `ch_specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_specifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `type` text,
  `value` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ch_specifications`
--

LOCK TABLES `ch_specifications` WRITE;
/*!40000 ALTER TABLE `ch_specifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `ch_specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chit_seller_contacts`
--

DROP TABLE IF EXISTS `chit_seller_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chit_seller_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FULLNAME` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `PHONENO` int(11) DEFAULT NULL,
  `MESSAGE` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chit_seller_contacts`
--

LOCK TABLES `chit_seller_contacts` WRITE;
/*!40000 ALTER TABLE `chit_seller_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `chit_seller_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` text,
  `desc` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections`
--

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
INSERT INTO `collections` VALUES (1,'Best Deals','best-deals',NULL,1,NULL,NULL,NULL,NULL,'2022-10-23 15:56:50','2022-10-23 15:56:50'),(2,'Hot Product','hot-product',NULL,2,NULL,NULL,NULL,NULL,'2022-10-23 18:28:29','2022-10-23 18:28:29');
/*!40000 ALTER TABLE `collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` enum('0','1') DEFAULT '0' COMMENT '0 (ecomm), 1 (salon)',
  `password` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `verify` tinyint(1) DEFAULT NULL,
  `verf_key` varchar(255) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `loggedOutAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'soumyaranjannayakrkl@gmail.com','nayak',NULL,'soumyaranjannayakrkl@gmail.com','0','$2a$10$WX96BUhZ2HE1HBx5.BYUU.vCSTEX/AGoAinCHRq15cHAfNDm7Ww7O',NULL,NULL,'2022-10-23 21:19:29','2022-10-23 21:20:52',1,'949504',0,NULL),(2,'ansariadam023@gmail.com','Adam',NULL,'ansariadam023@gmail.com','0','$2a$10$WKy5ZDZKRMvh45fMnrNLKuK9RZj6hcUK/7CtVREyplb7JmQqs73ee',NULL,NULL,'2022-11-01 03:41:15','2022-11-01 03:42:10',1,'649978',0,NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collectionId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` text,
  `desc` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,1,'mobile','mobile','https://souqarena-photo.s3.ap-south-1.amazonaws.com/mobile.jpg',NULL,NULL,NULL,'2022-10-23 16:02:10','2022-10-23 16:02:10'),(2,1,'null','null','https://souqarena-photo.s3.ap-south-1.amazonaws.com/41C9dAdd4VL._SR420%2C420_.jpg',NULL,NULL,NULL,'2022-10-23 16:02:44','2022-10-23 16:02:44'),(3,1,'null','null','https://souqarena-photo.s3.ap-south-1.amazonaws.com/413fJyRqTBL._SR420%2C420_.jpg',NULL,NULL,NULL,'2022-10-23 16:03:32','2022-10-23 16:03:32'),(4,1,'null','null','https://souqarena-photo.s3.ap-south-1.amazonaws.com/416ixmo-OpL._SR420%2C420_.jpg',NULL,NULL,NULL,'2022-10-23 16:04:06','2022-10-23 16:04:06'),(5,2,'null','null','https://souqarena-photo.s3.ap-south-1.amazonaws.com/friz.jpg',NULL,NULL,NULL,'2022-10-23 18:28:47','2022-10-23 18:28:47'),(6,2,'null','null','https://souqarena-photo.s3.ap-south-1.amazonaws.com/led.jpg',NULL,NULL,NULL,'2022-10-23 18:28:59','2022-10-23 18:28:59'),(7,2,'null','null','https://souqarena-photo.s3.ap-south-1.amazonaws.com/ipone13.jpg',NULL,NULL,NULL,'2022-10-23 18:29:07','2022-10-23 18:29:07'),(8,2,'null','null','https://souqarena-photo.s3.ap-south-1.amazonaws.com/tv.jpg',NULL,NULL,NULL,'2022-10-23 18:29:15','2022-10-23 18:29:15');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `zipcode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processors`
--

DROP TABLE IF EXISTS `processors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` text,
  `keyword` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processors`
--

LOCK TABLES `processors` WRITE;
/*!40000 ALTER TABLE `processors` DISABLE KEYS */;
/*!40000 ALTER TABLE `processors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productphotos`
--

DROP TABLE IF EXISTS `productphotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productphotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `varientId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productphotos`
--

LOCK TABLES `productphotos` WRITE;
/*!40000 ALTER TABLE `productphotos` DISABLE KEYS */;
INSERT INTO `productphotos` VALUES (2,5,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/1891881_1.jpg_480Wx480H','2022-09-22 21:34:40','2022-09-22 21:34:40',4),(4,4,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/4901809cv11d-scaled.jpg','2022-09-22 21:43:19','2022-09-22 21:43:19',3),(5,4,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/1880192-01.avif','2022-09-22 21:43:19','2022-09-22 21:43:19',3),(6,3,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/download.jfif','2022-09-22 22:16:36','2022-09-22 22:16:36',2),(7,3,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/301b920e2a39cc685ed4d7a72df040e042999dca_iPhone_13_Pro_Gold_PDP_Image_position_3_EN.jpg','2022-09-22 22:16:36','2022-09-22 22:16:36',2),(10,8,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/ae-feature-snap-stunning-photos--front-and-back-530545807.jfif','2022-09-24 11:59:23','2022-09-24 11:59:23',7),(12,8,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/88213.jpg','2022-09-24 11:59:23','2022-09-24 11:59:23',7),(16,9,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/download%20%281%29.jfif','2022-09-24 12:22:31','2022-09-24 12:22:31',8),(18,9,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/7a5eeda6-e128-4586-9142-dfa32794655622091400.jpg','2022-09-24 12:22:31','2022-09-24 12:22:31',8),(21,11,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/de3b9baf42e9c6d22f8a651f6ac5841b.webp','2022-09-24 12:57:35','2022-09-24 12:57:35',9),(25,13,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/01_sig.jpg11DC4C03-8C40-4BE6-9BF0-04E15818942BLarge.jpg','2022-09-24 13:06:36','2022-09-24 13:06:36',10),(26,13,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/apple-iphone-11-128-gb-black-without-earpods-and-adapter-digital-o491901644-p590440948-1-202108121620.jpeg','2022-09-24 13:06:36','2022-09-24 13:06:36',10),(27,14,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/8ec8eb31c9e56df0b90b935085b5cc05436376a8_iPhone_12_Pro_Max_Pacific_Blue_PDP_Image_Position_1_EN.jpg','2022-09-24 13:13:50','2022-09-24 13:13:50',11),(28,14,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/f65146e377b2b590627e9950e548a991ba2dde06_iPhone_12_Pro_Max_Pacific_Blue_PDP_Image_Position_2_EN.jpg','2022-09-24 13:13:50','2022-09-24 13:13:50',11),(29,14,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/2499f4d612be8e381e4dd48c5d0c5fb2591cb310_iPhone_12_Pro_Max_Pacific_Blue_PDP_Image_Position_4_EN.jpg','2022-09-24 13:13:50','2022-09-24 13:13:50',11),(30,15,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/1d1046092289ea85ed560ecadf4bce7ea8831b40_iPhone_14_Pro_Max_Deep_Purple_PDP_Image_Position_9_EN.jpg','2022-09-24 13:30:36','2022-09-24 13:30:36',12),(31,15,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/372587f6e9934781851ba4a0303f7960a6e3c8be_iPhone_14_Pro_Deep_Purple_PDP_Image_Position_2_EN.jpg','2022-09-24 13:30:36','2022-09-24 13:30:36',12),(32,15,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/72636e2f9b9567cf9fb325465b85c91c00b1f90a_iPhone_14_Pro_Max_Deep_Purple_PDP_Image_Position_4_EN.jpg','2022-09-24 13:30:36','2022-09-24 13:30:36',12),(33,15,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone-14-pro-deeppurple-witb-202209_FMT_WHH.jfif','2022-09-24 13:30:36','2022-09-24 13:30:36',12),(37,17,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/Apple-iPhone-7-128GB-Gold.webp','2022-09-27 20:11:09','2022-09-27 20:11:09',13),(38,17,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/gold-apple-iphone-kyiv-ukraine-may-front-view-ios-mobile-operating-system-back-side-inc-logo-isolated-91940480.jpg','2022-09-27 20:11:09','2022-09-27 20:11:09',13),(39,17,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone-7-gold-side.jpg','2022-09-27 20:11:09','2022-09-27 20:11:09',13),(40,17,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/cgaxis_models_74_04b.webp','2022-09-27 20:11:09','2022-09-27 20:11:09',13),(45,20,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/New%20Project.jpg','2022-09-28 02:01:36','2022-09-28 02:01:36',15),(56,19,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/7blackside-1500x1500.png','2022-09-28 07:42:56','2022-09-28 07:42:56',14),(57,19,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/51BpIT9RYbL%20-%20Copy.jpg','2022-09-28 07:42:56','2022-09-28 07:42:56',14),(58,19,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/iPhone-7-Nero.jpg','2022-09-28 07:42:56','2022-09-28 07:42:56',14),(63,19,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/cgaxis_models_74_04b.webp','2022-09-28 20:08:54','2022-09-28 20:08:54',19),(64,19,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/Apple-iPhone-7-128GB-Gold.webp','2022-09-28 20:08:54','2022-09-28 20:08:54',19),(65,19,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/gold-apple-iphone-kyiv-ukraine-may-front-view-ios-mobile-operating-system-back-side-inc-logo-isolated-91940480.jpg','2022-09-28 20:08:54','2022-09-28 20:08:54',19),(66,19,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone-7-gold-side.jpg','2022-09-28 20:08:54','2022-09-28 20:08:54',19),(68,19,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/apple_iphone_7_silver_32gbsdsdd.jpg','2022-09-28 20:23:25','2022-09-28 20:23:25',18),(69,19,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone%207%20silver%20side%20souqarena.jpg','2022-09-28 20:23:25','2022-09-28 20:23:25',18),(70,22,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone%207%20plus%20matt%20black%20SouqArena.com%20uidhhdgiuh.jpg','2022-09-29 10:55:13','2022-09-29 10:55:13',21),(71,22,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone%207%20plus%20matt%20black%20SouqArena.com%20hdjehdhedehddi.jpg','2022-09-29 10:55:13','2022-09-29 10:55:13',21),(72,22,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone%207%20plus%20matt%20black%20side%20SouqArena.com%20demekjicedmncjec.jpg','2022-09-29 10:55:13','2022-09-29 10:55:13',21),(73,22,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone%207%20plus%20matt%20black%20Souqarena.com%20%20ejdhjdchedhbcjedch.jpg','2022-09-29 10:55:13','2022-09-29 10:55:13',21),(74,22,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone-7-plus-silver.jpg','2022-09-29 10:55:43','2022-09-29 10:55:43',22),(75,22,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/f5980102e36f1ecb16093c69cd005f82c3279e46_2d9a51ded2f264c9a36410f33295de55b314b2af_31z3hR8bKFL.jpg','2022-09-29 10:55:43','2022-09-29 10:55:43',22),(76,22,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone%207%20plus%20gold%20Souqarena.com%20ueghhgfuhguhgf.jpg','2022-09-29 10:56:33','2022-09-29 10:56:33',23),(77,22,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/7%20plus%20gold%20souqarena%20ckkdijdkcjifjirf.jpg','2022-09-29 10:56:33','2022-09-29 10:56:33',23),(78,22,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/7%20plus%20gold%20souqarena%20diihjvifjurfhbv.jpg','2022-09-29 10:56:33','2022-09-29 10:56:33',23),(79,22,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone%207%20plus%20gold%20souqarena.jpg','2022-09-29 10:56:33','2022-09-29 10:56:33',23),(80,22,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone%207%20plus%20Rose%20Gold%20Side%20%20SouqArena.com%20usghdjsdusd.jpg','2022-09-29 10:56:50','2022-09-29 10:56:50',24),(81,22,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone%207%20plus%20Rose%20Gold%20Side%20%20SouqArena.com%20sidiswhdiuwsdihwsd.jpg','2022-09-29 10:56:50','2022-09-29 10:56:50',24),(82,22,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/iphone%207%20plus%20Rose%20Gold%20Side%20%20SouqArena.com%20dcbudhcidhci.jpg','2022-09-29 10:56:50','2022-09-29 10:56:50',24),(86,23,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/N53258784A_1dsdsds%20-%20Copy.avif','2022-10-01 22:38:46','2022-10-01 22:38:46',33),(87,23,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/715s65DmFlL._AC_SS450_fgtg.jpg','2022-10-01 22:38:46','2022-10-01 22:38:46',33),(88,23,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/N53258784A_3sdsdsd.avif','2022-10-01 22:38:46','2022-10-01 22:38:46',33),(89,23,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/N53258784A_2sdsdsd.avif','2022-10-01 22:38:46','2022-10-01 22:38:46',33),(90,24,'https://souqarena-photo.s3.ap-south-1.amazonaws.com/1851659_mainijdjcj%20souqarena.jpg_480Wx480H','2022-10-03 21:42:06','2022-10-03 21:42:06',34);
/*!40000 ALTER TABLE `productphotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) DEFAULT NULL,
  `subCategoryId` int(11) DEFAULT NULL,
  `childCategoryId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `desc` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `condition` int(11) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL,
  `SellerId` int(11) DEFAULT NULL,
  `LocalDeiveryCharge` double DEFAULT NULL,
  `ZonalDeiveryCharge` double DEFAULT NULL,
  `NationalDeiveryCharge` double DEFAULT NULL,
  `WarrantyType` enum('Local','No','International','100% orginal','Brand','Seller') DEFAULT '100% orginal',
  `WarrantyPeriod` varchar(255) DEFAULT NULL,
  `PubilshStatus` enum('Pending','Processing','Unpublished','Published') DEFAULT 'Pending',
  `ShippingDays` varchar(255) DEFAULT NULL,
  `HighLightDetail` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,6,4,8,'iPhone 13 128GB Midnight 5G With Facetime - International Specs',NULL,'inactive',NULL,NULL,'2022-09-20 06:42:12','2022-09-22 21:11:41','iphone-13-128gb-midnight-5g-with-facetime-international-specs',NULL,NULL,2,9,0,0,'Local','1','Published','1','[]'),(3,6,4,8,'iPhone 13 Pro 128GB Gold 5G With Facetime - International Specs',NULL,'inactive',NULL,NULL,'2022-09-21 20:57:09','2022-09-22 22:16:45','iphone-13-pro-128gb-gold-5g-with-facetime-international-specs',NULL,NULL,2,0,0,0,'Brand','1 year','Published','1','[]'),(4,10,11,12,'iPad 2021 (9th Generation) 10.2-Inch, 64GB, WiFi, Space Gray With Facetime - International Version',NULL,'inactive',NULL,NULL,'2022-09-21 21:21:35','2022-09-22 21:45:18','ipad-2021-9th-generation-102-inch-64gb-wifi-space-gray-with-facetime-international-version',NULL,NULL,2,0,0,0,'Brand','1 year','Published','2','[]'),(5,10,11,12,'Tab S6 lite(2022) 10.4 inch Angora Blue 4GB RAM 64GB Wi-Fi - UAE Version',NULL,'inactive',NULL,NULL,'2022-09-21 21:37:10','2022-09-22 21:40:06','tab-s6-lite2022-104-inch-angora-blue-4gb-ram-64gb-wi-fi-uae-version',NULL,NULL,2,0,0,0,'Brand','1 year','Published','2','[]'),(8,6,4,8,'Galaxy A03 Core Dual SIM Onyx 2GB RAM 32GB LTE - Middle East Version',NULL,'inactive',NULL,NULL,'2022-09-24 11:51:19','2022-09-24 12:02:45','galaxy-a03-core-dual-sim-onyx-2gb-ram-32gb-lte-middle-east-version',NULL,NULL,2,9,0,0,'Brand','1_years','Published','2','[]'),(9,6,4,8,'Galaxy A03 Core Dual SIM Bronze 2GB RAM 32GB LTE - Middle East Version',NULL,'inactive',NULL,NULL,'2022-09-24 12:20:56','2022-09-24 12:23:23','galaxy-a03-core-dual-sim-bronze-2gb-ram-32gb-lte-middle-east-version',NULL,NULL,2,9,0,0,'Brand','1_years','Published','2','[]'),(11,6,4,8,'iPhone 11 Black 64GB 4G LTE (2020 - Slim Packing) - International Specs',NULL,'inactive',NULL,NULL,'2022-09-24 12:55:55','2022-09-24 12:58:06','iphone-11-black-64gb-4g-lte-2020-slim-packing-international-specs',NULL,NULL,2,9,0,0,'Brand','1_years','Published','2','[]'),(13,6,4,8,'iPhone 11 Purple 128GB 4G LTE (2020 - Slim Packing) - International Specs',NULL,'inactive',NULL,NULL,'2022-09-24 13:04:07','2022-09-24 13:06:43','iphone-11-purple-128gb-4g-lte-2020-slim-packing-international-specs',NULL,NULL,2,0,0,0,'Brand','1_years','Published','2','[]'),(14,6,4,8,'iPhone 12 Pro Max With Facetime 128GB Pacific Blue 5G - International Specs',NULL,'inactive',NULL,NULL,'2022-09-24 13:12:06','2022-09-24 13:13:59','iphone-12-pro-max-with-facetime-128gb-pacific-blue-5g-international-specs',NULL,NULL,2,9,0,0,'Brand','1_years','Published','2','[]'),(15,6,4,8,'iPhone 14 Pro Physical Dual Sim 256GB Deep Purple 5G With FaceTime',NULL,'inactive',NULL,NULL,'2022-09-24 13:27:45','2022-09-26 20:05:50','iphone-14-pro-physical-dual-sim-256gb-deep-purple-5g-with-facetime',NULL,NULL,2,9,0,0,'Brand','1_years','Published','2','[]'),(17,6,4,8,'iphone 7 128 gb gold interatioanl spec',NULL,'inactive',NULL,NULL,'2022-09-27 19:46:24','2022-09-27 20:33:05','iphone-7-128-gb-gold-interatioanl-spec',2,NULL,2,9,0,0,'Seller','6_month','Published','2','[]'),(19,6,4,8,'Apple iphone 7 128 gb Matt Black International Spec',NULL,'inactive',NULL,NULL,'2022-09-27 20:36:36','2022-10-15 02:34:46','apple-iphone-7-128-gb-matt-black-international-spec',2,NULL,2,9,0,0,'Brand','6_month','Published','2','[]'),(20,10,11,10,'bechu',NULL,'inactive',NULL,NULL,'2022-09-28 01:59:24','2022-09-28 02:03:42','bechu',1,NULL,4,0,0,0,'Local','1_month','Unpublished',NULL,'[]'),(21,6,4,8,'iPhone 13 128GB Midnight 5G With Facetime - International Specs',NULL,'inactive',NULL,NULL,'2022-09-28 07:31:54','2022-09-28 07:32:01','iphone-13-128gb-midnight-5g-with-facetime-international-specs',2,NULL,2,0,0,0,'Brand','6_month','Published',NULL,'[]'),(22,6,4,8,' iPhone 7 Plus With FaceTime Matt Black 128GB 4G LTE -Renewed ',NULL,'inactive',NULL,NULL,'2022-09-29 10:54:30','2022-10-18 18:18:45','iphone-7-plus-with-facetime-matt-black-128gb-4g-lte-renewed',NULL,NULL,2,9,0,0,'International','2','Published','2','[]'),(23,10,11,11,'Latest Model Vostro 3510 Laptop With 15.6-Inch Full HD Display, Core i7-1165G7 Processor/32GB RAM/1TB HDD + 1TB SSD SSD/2GB Nvidia GeForce MX350 Graphics/Windows 11 /International Version English/Arabic Black',NULL,'inactive',NULL,NULL,'2022-10-01 22:34:10','2022-10-01 22:38:52','latest-model-vostro-3510-laptop-with-156-inch-full-hd-display-core-i7-1165g7-processor32gb-ram1tb-hdd-1tb-ssd-ssd2gb-nvidia-geforce-mx350-graphicswindows-11-international-version-englisharabic-black',NULL,NULL,2,9,0,0,'Brand','1_years','Published','2','[]'),(24,10,11,11,'15-dw3145ne Laptop With 15.6-Inch FHD Display, Core i7-1165G7 Processor / 16GB RAM / 512GB SSD / Intel Iris Xe Graphics / Windows 11 Home /International Version English/Arabic Natural Silver',NULL,'inactive',NULL,NULL,'2022-10-03 21:38:45','2022-10-19 18:42:54','15-dw3145ne-laptop-with-156-inch-fhd-display-core-i7-1165g7-processor-16gb-ram-512gb-ssd-intel-iris-xe-graphics-windows-11-home-international-version-englisharabic-natural-silver',NULL,NULL,2,9,0,0,'Brand','1_years','Published','2','[]');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `productId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'iphone 13',1,2,'2022-09-22 21:11:41','2022-09-22 21:11:41'),(2,'iphone 13 128',1,2,'2022-09-22 21:11:41','2022-09-22 21:11:41'),(3,'tablet',1,5,'2022-09-22 21:20:51','2022-09-22 21:20:51'),(4,'samsung tablet',1,5,'2022-09-22 21:20:51','2022-09-22 21:20:51'),(5,'iPad 2021 (9th Generation) 10.2-Inch, 64GB, WiFi, Space Gray With Facetime - International Version',1,4,'2022-09-22 21:44:31','2022-09-22 21:44:31'),(6,'mobile ',1,8,'2022-09-24 11:51:19','2022-09-24 11:51:19'),(7,'samsung',1,8,'2022-09-24 11:51:19','2022-09-24 11:51:19'),(8,'samsung broze',1,9,'2022-09-24 12:23:23','2022-09-24 12:23:23'),(9,'samsung',1,9,'2022-09-24 12:23:23','2022-09-24 12:23:23'),(12,'iphone',1,11,'2022-09-24 12:55:55','2022-09-24 12:55:55'),(13,'iphone 11',1,11,'2022-09-24 12:55:55','2022-09-24 12:55:55'),(16,'iphone 11',1,13,'2022-09-24 13:04:07','2022-09-24 13:04:07'),(17,'iphone ',1,14,'2022-09-24 13:12:06','2022-09-24 13:12:06'),(18,'iphone',1,15,'2022-09-24 13:27:45','2022-09-24 13:27:45'),(19,'iphone 14',1,15,'2022-09-24 13:27:45','2022-09-24 13:27:45'),(23,'iphone 7',1,17,'2022-09-27 19:46:24','2022-09-27 19:46:24'),(24,'iphone 7 128 gb',1,17,'2022-09-27 19:46:24','2022-09-27 19:46:24'),(25,'iphone',1,17,'2022-09-27 19:46:24','2022-09-27 19:46:24'),(32,'iphone 7 ',1,19,'2022-09-27 20:36:36','2022-09-27 20:36:36'),(33,'iphone 7 128',1,19,'2022-09-27 20:36:36','2022-09-27 20:36:36'),(34,'iphone',1,19,'2022-09-27 20:36:36','2022-09-27 20:36:36'),(35,'a',1,20,'2022-09-28 01:59:24','2022-09-28 01:59:24'),(36,'b',1,20,'2022-09-28 01:59:24','2022-09-28 01:59:24'),(37,'iphone 7 plus',1,22,'2022-09-29 10:54:30','2022-09-29 10:54:30'),(38,'iphone 7 plus rose',1,22,'2022-09-29 10:54:30','2022-09-29 10:54:30'),(39,'iphone 7 plus gold',1,22,'2022-09-29 10:54:30','2022-09-29 10:54:30'),(40,'iphone 7 plus matt',1,22,'2022-09-29 10:54:30','2022-09-29 10:54:30'),(41,'iphone 7 plus silver',1,22,'2022-09-29 10:54:30','2022-09-29 10:54:30'),(42,'iphone refurbished',1,22,'2022-09-29 10:54:30','2022-09-29 10:54:30'),(43,'iphone renewed',1,22,'2022-09-29 10:54:30','2022-09-29 10:54:30'),(44,'laptop',1,23,'2022-10-01 22:34:10','2022-10-01 22:34:10'),(45,'dell',1,23,'2022-10-01 22:34:10','2022-10-01 22:34:10'),(46,'macbook ',1,24,'2022-10-03 21:38:45','2022-10-03 21:38:45'),(47,'mgn63',1,24,'2022-10-03 21:38:45','2022-10-03 21:38:45');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `verify` tinyint(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `loggedOutAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jiten','kumar','Dubai','Souqarena.jiten@gmail.com',NULL,1,'$2a$10$ts7eHo7kBZteXr.J6KWNNO9aZUAbjg0j60NCviIbnAKvePanA0E..','2022-09-19 09:29:31','2022-10-08 16:33:48','admin',0,NULL),(2,'Omkar','kadu','dubai','omkarakadu@gmail.com',NULL,1,'$2a$10$YmxaRfkp4QJYbO.Y.vBNFO0droLUoKkUc6oqHqXk1.YiZ9W3lGsB.','2022-09-19 12:52:57','2022-10-15 02:29:11','seller',0,NULL),(3,'Abhinash','pandit','nepal','pandit.bechu@gmail.com',NULL,1,'$2a$10$jjYmJsyM6FViaiHmWv5/t.PJdrA8jQOGNV5d1sMyTFRXSbuuypFHK','2022-09-19 12:54:20','2022-10-01 18:24:27','admin',0,NULL),(4,'BB','kumar','beta-1,a-95','pandit.bechu@gmail.com',NULL,1,'$2a$10$MigrZLNcEPLiA1OchymYB.vnfN./bwS9iMRnFm/ZXf5YQtXdu6cwi','2022-09-25 03:19:04','2022-09-25 03:19:42','seller',0,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_areas`
--

DROP TABLE IF EXISTS `vendor_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendorId` int(11) DEFAULT NULL,
  `areaId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_areas`
--

LOCK TABLES `vendor_areas` WRITE;
/*!40000 ALTER TABLE `vendor_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_products`
--

DROP TABLE IF EXISTS `vendor_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplierId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `unitSize` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_products`
--

LOCK TABLES `vendor_products` WRITE;
/*!40000 ALTER TABLE `vendor_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storename` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `shopaddress` text,
  `shopdesc` text,
  `ownername` varchar(255) DEFAULT NULL,
  `owneraddress` text,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` text,
  `areaId` int(11) DEFAULT NULL,
  `accountNo` varchar(255) DEFAULT NULL,
  `accountHolderName` varchar(255) DEFAULT NULL,
  `IFSC` varchar(255) DEFAULT NULL,
  `bankName` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `adharCardNo` varchar(255) DEFAULT NULL,
  `panCardNo` varchar(255) DEFAULT NULL,
  `GSTNo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-07  1:18:52
