-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: fx
-- ------------------------------------------------------
-- Server version	5.7.23

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
-- Table structure for table `aci_branch`
--

DROP TABLE IF EXISTS `aci_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aci_branch` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1gxi5vl5ufs2l8swye7g26n16` (`creator_id`),
  KEY `FK4mavupar7e5wr8jeuda2d49up` (`modifier_id`),
  KEY `FKqi6b3wpl77vybu6nwkh4jylib` (`parent_id`),
  KEY `FKktl781jfkncjj3c1wdlbbw844` (`user_id`),
  CONSTRAINT `FK1gxi5vl5ufs2l8swye7g26n16` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK4ao9yfo2cwh91r0qlqc66vf32` FOREIGN KEY (`parent_id`) REFERENCES `aci_branch` (`id`),
  CONSTRAINT `FK4mavupar7e5wr8jeuda2d49up` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK97quhfbk9v2ifo4p4f2tv7or2` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK98ex8501qbl0s11e9sq666sj6` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKktl781jfkncjj3c1wdlbbw844` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKo5usfgrti1oh9o2a8rv1tbrsy` FOREIGN KEY (`parent_id`) REFERENCES `aci_branch` (`id`),
  CONSTRAINT `FKonvbkdsjjeatvx7ki84o5hjdp` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKqi6b3wpl77vybu6nwkh4jylib` FOREIGN KEY (`parent_id`) REFERENCES `aci_branch` (`id`),
  CONSTRAINT `FKqwirx2dq1jsj1f8ux83jyf4km` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKry6s93789c89i5y36o42yh1c1` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aci_branch`
--

LOCK TABLES `aci_branch` WRITE;
/*!40000 ALTER TABLE `aci_branch` DISABLE KEYS */;
INSERT INTO `aci_branch` VALUES (1,'2017-01-22 07:52:50.584','2017-06-13 10:26:15.812',1,'System',1,1,NULL,NULL),(2,'2018-08-13 02:25:24.081','2018-08-13 02:25:24.081',NULL,'localhost',1,1,1,NULL),(3,'2018-08-13 02:25:24.081','2018-08-13 02:25:24.081',NULL,'domain1',1,1,1,NULL),(4,'2018-08-13 02:25:24.081','2018-08-13 02:25:24.081',NULL,'domain2',1,1,1,NULL),(5,'2018-08-13 02:25:24.081','2018-08-13 02:25:24.081',NULL,'domain3',1,1,1,NULL),(6,'2018-08-13 02:25:24.081','2018-08-13 02:25:24.081',NULL,'domain4',1,1,1,NULL),(7,'2018-08-13 02:25:24.081','2018-08-13 02:25:24.081',NULL,'domain5',1,1,1,NULL),(8,'2018-08-13 02:25:24.081','2018-08-13 02:25:24.081',NULL,'domain6',1,1,1,NULL),(9,'2018-08-13 02:25:24.081','2018-08-13 02:25:24.081',NULL,'domain7',1,1,1,NULL),(10,'2018-08-13 02:25:24.081','2018-08-13 02:25:24.081',NULL,'domain8',1,1,1,NULL),(11,'2018-08-13 02:25:24.081','2018-08-13 02:25:24.081',NULL,'domain9',1,1,1,NULL),(12,'2018-08-13 02:25:24.081','2018-08-13 02:25:24.081',NULL,'domain10',1,1,1,NULL);
/*!40000 ALTER TABLE `aci_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aci_permission`
--

DROP TABLE IF EXISTS `aci_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aci_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  `auth_uris` varchar(255) DEFAULT NULL,
  `entity` varchar(255) DEFAULT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqkgapy70m7nlvt1136x6npwcf` (`creator_id`),
  KEY `FKfm91abia0msmbn9c7793xkay0` (`modifier_id`),
  KEY `FK2lxyo3hqup9ihnbnm3ahlsbtq` (`user_id`),
  CONSTRAINT `FK2lxyo3hqup9ihnbnm3ahlsbtq` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKfm91abia0msmbn9c7793xkay0` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKqkgapy70m7nlvt1136x6npwcf` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20308 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aci_permission`
--

LOCK TABLES `aci_permission` WRITE;
/*!40000 ALTER TABLE `aci_permission` DISABLE KEYS */;
INSERT INTO `aci_permission` VALUES (1,'2019-01-04 23:48:05.937','2019-01-04 23:48:05.937',0,'Index Address','/v[\\d]+/address','Address','GET',1,1,NULL),(2,'2019-01-04 23:48:05.950','2019-01-04 23:48:05.950',0,'Create Address','/v[\\d]+/address','Address','POST',1,1,NULL),(3,'2019-01-04 23:48:05.952','2019-01-04 23:48:05.952',0,'Read Address','/v[\\d]+/address/[\\d]+','Address','GET',1,1,NULL),(4,'2019-01-04 23:48:05.953','2019-01-04 23:48:05.953',0,'Update Address','/v[\\d]+/address/[\\d]+','Address','PUT',1,1,NULL),(5,'2019-01-04 23:48:05.955','2019-01-04 23:48:05.955',0,'Delete a Address','/v[\\d]+/address/[\\d]+','Address','DELETE',1,1,NULL),(6,'2019-01-04 23:48:05.956','2019-01-04 23:48:05.956',0,'Delete all Address','/v[\\d]+/address/clear','Address','DELETE',1,1,NULL),(7,'2019-01-04 23:48:05.957','2019-01-04 23:48:05.957',0,'Excel Address','/v[\\d]+/address/excel','Address','GET',1,1,NULL),(101,'2019-01-04 23:48:05.958','2019-01-04 23:48:05.958',0,'Index AppUser','/v[\\d]+/app-user','AppUser','GET',1,1,NULL),(102,'2019-01-04 23:48:05.959','2019-01-04 23:48:05.959',0,'Create AppUser','/v[\\d]+/app-user','AppUser','POST',1,1,NULL),(103,'2019-01-04 23:48:05.961','2019-01-04 23:48:05.961',0,'Read AppUser','/v[\\d]+/app-user/[\\d]+','AppUser','GET',1,1,NULL),(104,'2019-01-04 23:48:05.962','2019-01-04 23:48:05.962',0,'Update AppUser','/v[\\d]+/app-user/[\\d]+','AppUser','PUT',1,1,NULL),(105,'2019-01-04 23:48:05.965','2019-01-04 23:48:05.965',0,'Delete a AppUser','/v[\\d]+/app-user/[\\d]+','AppUser','DELETE',1,1,NULL),(106,'2019-01-04 23:48:05.966','2019-01-04 23:48:05.966',0,'Delete all AppUser','/v[\\d]+/app-user/clear','AppUser','DELETE',1,1,NULL),(107,'2019-01-04 23:48:05.967','2019-01-04 23:48:05.967',0,'Excel AppUser','/v[\\d]+/app-user/excel','AppUser','GET',1,1,NULL),(201,'2019-01-04 23:48:05.967','2019-01-04 23:48:05.967',0,'Index Attribute','/v[\\d]+/attribute','Attribute','GET',1,1,NULL),(202,'2019-01-04 23:48:05.968','2019-01-04 23:48:05.968',0,'Create Attribute','/v[\\d]+/attribute','Attribute','POST',1,1,NULL),(203,'2019-01-04 23:48:05.969','2019-01-04 23:48:05.969',0,'Read Attribute','/v[\\d]+/attribute/[\\d]+','Attribute','GET',1,1,NULL),(204,'2019-01-04 23:48:05.969','2019-01-04 23:48:05.969',0,'Update Attribute','/v[\\d]+/attribute/[\\d]+','Attribute','PUT',1,1,NULL),(205,'2019-01-04 23:48:05.971','2019-01-04 23:48:05.971',0,'Delete a Attribute','/v[\\d]+/attribute/[\\d]+','Attribute','DELETE',1,1,NULL),(206,'2019-01-04 23:48:05.973','2019-01-04 23:48:05.973',0,'Delete all Attribute','/v[\\d]+/attribute/clear','Attribute','DELETE',1,1,NULL),(207,'2019-01-04 23:48:05.974','2019-01-04 23:48:05.974',0,'Excel Attribute','/v[\\d]+/attribute/excel','Attribute','GET',1,1,NULL),(301,'2019-01-04 23:48:05.977','2019-01-04 23:48:05.977',0,'Index Availability','/v[\\d]+/availability','Availability','GET',1,1,NULL),(302,'2019-01-04 23:48:05.983','2019-01-04 23:48:05.983',0,'Create Availability','/v[\\d]+/availability','Availability','POST',1,1,NULL),(303,'2019-01-04 23:48:05.986','2019-01-04 23:48:05.986',0,'Read Availability','/v[\\d]+/availability/[\\d]+','Availability','GET',1,1,NULL),(304,'2019-01-04 23:48:05.987','2019-01-04 23:48:05.987',0,'Update Availability','/v[\\d]+/availability/[\\d]+','Availability','PUT',1,1,NULL),(305,'2019-01-04 23:48:05.988','2019-01-04 23:48:05.988',0,'Delete a Availability','/v[\\d]+/availability/[\\d]+','Availability','DELETE',1,1,NULL),(306,'2019-01-04 23:48:05.988','2019-01-04 23:48:05.988',0,'Delete all Availability','/v[\\d]+/availability/clear','Availability','DELETE',1,1,NULL),(307,'2019-01-04 23:48:05.989','2019-01-04 23:48:05.989',0,'Excel Availability','/v[\\d]+/availability/excel','Availability','GET',1,1,NULL),(401,'2019-01-04 23:48:05.990','2019-01-04 23:48:05.990',0,'Index Balance','/v[\\d]+/balance','Balance','GET',1,1,NULL),(402,'2019-01-04 23:48:05.990','2019-01-04 23:48:05.990',0,'Create Balance','/v[\\d]+/balance','Balance','POST',1,1,NULL),(403,'2019-01-04 23:48:05.992','2019-01-04 23:48:05.992',0,'Read Balance','/v[\\d]+/balance/[\\d]+','Balance','GET',1,1,NULL),(404,'2019-01-04 23:48:05.994','2019-01-04 23:48:05.994',0,'Update Balance','/v[\\d]+/balance/[\\d]+','Balance','PUT',1,1,NULL),(405,'2019-01-04 23:48:05.995','2019-01-04 23:48:05.995',0,'Delete a Balance','/v[\\d]+/balance/[\\d]+','Balance','DELETE',1,1,NULL),(406,'2019-01-04 23:48:05.996','2019-01-04 23:48:05.996',0,'Delete all Balance','/v[\\d]+/balance/clear','Balance','DELETE',1,1,NULL),(407,'2019-01-04 23:48:05.997','2019-01-04 23:48:05.997',0,'Excel Balance','/v[\\d]+/balance/excel','Balance','GET',1,1,NULL),(501,'2019-01-04 23:48:05.998','2019-01-04 23:48:05.998',0,'Index BalanceDetail','/v[\\d]+/balance-detail','BalanceDetail','GET',1,1,NULL),(502,'2019-01-04 23:48:05.998','2019-01-04 23:48:05.998',0,'Create BalanceDetail','/v[\\d]+/balance-detail','BalanceDetail','POST',1,1,NULL),(503,'2019-01-04 23:48:05.999','2019-01-04 23:48:05.999',0,'Read BalanceDetail','/v[\\d]+/balance-detail/[\\d]+','BalanceDetail','GET',1,1,NULL),(504,'2019-01-04 23:48:06.000','2019-01-04 23:48:06.000',0,'Update BalanceDetail','/v[\\d]+/balance-detail/[\\d]+','BalanceDetail','PUT',1,1,NULL),(505,'2019-01-04 23:48:06.000','2019-01-04 23:48:06.000',0,'Delete a BalanceDetail','/v[\\d]+/balance-detail/[\\d]+','BalanceDetail','DELETE',1,1,NULL),(506,'2019-01-04 23:48:06.001','2019-01-04 23:48:06.001',0,'Delete all BalanceDetail','/v[\\d]+/balance-detail/clear','BalanceDetail','DELETE',1,1,NULL),(507,'2019-01-04 23:48:06.002','2019-01-04 23:48:06.002',0,'Excel BalanceDetail','/v[\\d]+/balance-detail/excel','BalanceDetail','GET',1,1,NULL),(601,'2019-01-04 23:48:06.002','2019-01-04 23:48:06.002',0,'Index Cart','/v[\\d]+/cart','Cart','GET',1,1,NULL),(602,'2019-01-04 23:48:06.008','2019-01-04 23:48:06.008',0,'Create Cart','/v[\\d]+/cart','Cart','POST',1,1,NULL),(603,'2019-01-04 23:48:06.010','2019-01-04 23:48:06.010',0,'Read Cart','/v[\\d]+/cart/[\\d]+','Cart','GET',1,1,NULL),(604,'2019-01-04 23:48:06.012','2019-01-04 23:48:06.012',0,'Update Cart','/v[\\d]+/cart/[\\d]+','Cart','PUT',1,1,NULL),(605,'2019-01-04 23:48:06.013','2019-01-04 23:48:06.013',0,'Delete a Cart','/v[\\d]+/cart/[\\d]+','Cart','DELETE',1,1,NULL),(606,'2019-01-04 23:48:06.014','2019-01-04 23:48:06.014',0,'Delete all Cart','/v[\\d]+/cart/clear','Cart','DELETE',1,1,NULL),(607,'2019-01-04 23:48:06.014','2019-01-04 23:48:06.014',0,'Excel Cart','/v[\\d]+/cart/excel','Cart','GET',1,1,NULL),(701,'2019-01-04 23:48:06.015','2019-01-04 23:48:06.015',0,'Index CartItem','/v[\\d]+/cart-item','CartItem','GET',1,1,NULL),(702,'2019-01-04 23:48:06.016','2019-01-04 23:48:06.016',0,'Create CartItem','/v[\\d]+/cart-item','CartItem','POST',1,1,NULL),(703,'2019-01-04 23:48:06.017','2019-01-04 23:48:06.017',0,'Read CartItem','/v[\\d]+/cart-item/[\\d]+','CartItem','GET',1,1,NULL),(704,'2019-01-04 23:48:06.020','2019-01-04 23:48:06.020',0,'Update CartItem','/v[\\d]+/cart-item/[\\d]+','CartItem','PUT',1,1,NULL),(705,'2019-01-04 23:48:06.020','2019-01-04 23:48:06.020',0,'Delete a CartItem','/v[\\d]+/cart-item/[\\d]+','CartItem','DELETE',1,1,NULL),(706,'2019-01-04 23:48:06.021','2019-01-04 23:48:06.021',0,'Delete all CartItem','/v[\\d]+/cart-item/clear','CartItem','DELETE',1,1,NULL),(707,'2019-01-04 23:48:06.021','2019-01-04 23:48:06.021',0,'Excel CartItem','/v[\\d]+/cart-item/excel','CartItem','GET',1,1,NULL),(801,'2019-01-04 23:48:06.022','2019-01-04 23:48:06.022',0,'Index Category','/v[\\d]+/category','Category','GET',1,1,NULL),(802,'2019-01-04 23:48:06.022','2019-01-04 23:48:06.022',0,'Create Category','/v[\\d]+/category','Category','POST',1,1,NULL),(803,'2019-01-04 23:48:06.023','2019-01-04 23:48:06.023',0,'Read Category','/v[\\d]+/category/[\\d]+','Category','GET',1,1,NULL),(804,'2019-01-04 23:48:06.023','2019-01-04 23:48:06.023',0,'Update Category','/v[\\d]+/category/[\\d]+','Category','PUT',1,1,NULL),(805,'2019-01-04 23:48:06.024','2019-01-04 23:48:06.024',0,'Delete a Category','/v[\\d]+/category/[\\d]+','Category','DELETE',1,1,NULL),(806,'2019-01-04 23:48:06.024','2019-01-04 23:48:06.024',0,'Delete all Category','/v[\\d]+/category/clear','Category','DELETE',1,1,NULL),(807,'2019-01-04 23:48:06.024','2019-01-04 23:48:06.024',0,'Excel Category','/v[\\d]+/category/excel','Category','GET',1,1,NULL),(901,'2019-01-04 23:48:06.025','2019-01-04 23:48:06.025',0,'Index CoinActivity','/v[\\d]+/coin-activity','CoinActivity','GET',1,1,NULL),(902,'2019-01-04 23:48:06.025','2019-01-04 23:48:06.025',0,'Create CoinActivity','/v[\\d]+/coin-activity','CoinActivity','POST',1,1,NULL),(903,'2019-01-04 23:48:06.033','2019-01-04 23:48:06.033',0,'Read CoinActivity','/v[\\d]+/coin-activity/[\\d]+','CoinActivity','GET',1,1,NULL),(904,'2019-01-04 23:48:06.036','2019-01-04 23:48:06.036',0,'Update CoinActivity','/v[\\d]+/coin-activity/[\\d]+','CoinActivity','PUT',1,1,NULL),(905,'2019-01-04 23:48:06.036','2019-01-04 23:48:06.036',0,'Delete a CoinActivity','/v[\\d]+/coin-activity/[\\d]+','CoinActivity','DELETE',1,1,NULL),(906,'2019-01-04 23:48:06.037','2019-01-04 23:48:06.037',0,'Delete all CoinActivity','/v[\\d]+/coin-activity/clear','CoinActivity','DELETE',1,1,NULL),(907,'2019-01-04 23:48:06.038','2019-01-04 23:48:06.038',0,'Excel CoinActivity','/v[\\d]+/coin-activity/excel','CoinActivity','GET',1,1,NULL),(1001,'2019-01-04 23:48:06.040','2019-01-04 23:48:06.040',0,'Index CoinHistory','/v[\\d]+/coin-history','CoinHistory','GET',1,1,NULL),(1002,'2019-01-04 23:48:06.041','2019-01-04 23:48:06.041',0,'Create CoinHistory','/v[\\d]+/coin-history','CoinHistory','POST',1,1,NULL),(1003,'2019-01-04 23:48:06.042','2019-01-04 23:48:06.042',0,'Read CoinHistory','/v[\\d]+/coin-history/[\\d]+','CoinHistory','GET',1,1,NULL),(1004,'2019-01-04 23:48:06.042','2019-01-04 23:48:06.042',0,'Update CoinHistory','/v[\\d]+/coin-history/[\\d]+','CoinHistory','PUT',1,1,NULL),(1005,'2019-01-04 23:48:06.043','2019-01-04 23:48:06.043',0,'Delete a CoinHistory','/v[\\d]+/coin-history/[\\d]+','CoinHistory','DELETE',1,1,NULL),(1006,'2019-01-04 23:48:06.043','2019-01-04 23:48:06.043',0,'Delete all CoinHistory','/v[\\d]+/coin-history/clear','CoinHistory','DELETE',1,1,NULL),(1007,'2019-01-04 23:48:06.044','2019-01-04 23:48:06.044',0,'Excel CoinHistory','/v[\\d]+/coin-history/excel','CoinHistory','GET',1,1,NULL),(1101,'2019-01-04 23:48:06.045','2019-01-04 23:48:06.045',0,'Index Content','/v[\\d]+/content','Content','GET',1,1,NULL),(1102,'2019-01-04 23:48:06.046','2019-01-04 23:48:06.046',0,'Create Content','/v[\\d]+/content','Content','POST',1,1,NULL),(1103,'2019-01-04 23:48:06.047','2019-01-04 23:48:06.047',0,'Read Content','/v[\\d]+/content/[\\d]+','Content','GET',1,1,NULL),(1104,'2019-01-04 23:48:06.048','2019-01-04 23:48:06.048',0,'Update Content','/v[\\d]+/content/[\\d]+','Content','PUT',1,1,NULL),(1105,'2019-01-04 23:48:06.048','2019-01-04 23:48:06.048',0,'Delete a Content','/v[\\d]+/content/[\\d]+','Content','DELETE',1,1,NULL),(1106,'2019-01-04 23:48:06.049','2019-01-04 23:48:06.049',0,'Delete all Content','/v[\\d]+/content/clear','Content','DELETE',1,1,NULL),(1107,'2019-01-04 23:48:06.050','2019-01-04 23:48:06.050',0,'Excel Content','/v[\\d]+/content/excel','Content','GET',1,1,NULL),(1201,'2019-01-04 23:48:06.050','2019-01-04 23:48:06.050',0,'Index Country','/v[\\d]+/country','Country','GET',1,1,NULL),(1202,'2019-01-04 23:48:06.051','2019-01-04 23:48:06.051',0,'Create Country','/v[\\d]+/country','Country','POST',1,1,NULL),(1203,'2019-01-04 23:48:06.051','2019-01-04 23:48:06.051',0,'Read Country','/v[\\d]+/country/[\\d]+','Country','GET',1,1,NULL),(1204,'2019-01-04 23:48:06.052','2019-01-04 23:48:06.052',0,'Update Country','/v[\\d]+/country/[\\d]+','Country','PUT',1,1,NULL),(1205,'2019-01-04 23:48:06.052','2019-01-04 23:48:06.052',0,'Delete a Country','/v[\\d]+/country/[\\d]+','Country','DELETE',1,1,NULL),(1206,'2019-01-04 23:48:06.053','2019-01-04 23:48:06.053',0,'Delete all Country','/v[\\d]+/country/clear','Country','DELETE',1,1,NULL),(1207,'2019-01-04 23:48:06.053','2019-01-04 23:48:06.053',0,'Excel Country','/v[\\d]+/country/excel','Country','GET',1,1,NULL),(1301,'2019-01-04 23:48:06.053','2019-01-04 23:48:06.053',0,'Index Coupon','/v[\\d]+/coupon','Coupon','GET',1,1,NULL),(1302,'2019-01-04 23:48:06.054','2019-01-04 23:48:06.054',0,'Create Coupon','/v[\\d]+/coupon','Coupon','POST',1,1,NULL),(1303,'2019-01-04 23:48:06.054','2019-01-04 23:48:06.054',0,'Read Coupon','/v[\\d]+/coupon/[\\d]+','Coupon','GET',1,1,NULL),(1304,'2019-01-04 23:48:06.055','2019-01-04 23:48:06.055',0,'Update Coupon','/v[\\d]+/coupon/[\\d]+','Coupon','PUT',1,1,NULL),(1305,'2019-01-04 23:48:06.055','2019-01-04 23:48:06.055',0,'Delete a Coupon','/v[\\d]+/coupon/[\\d]+','Coupon','DELETE',1,1,NULL),(1306,'2019-01-04 23:48:06.056','2019-01-04 23:48:06.056',0,'Delete all Coupon','/v[\\d]+/coupon/clear','Coupon','DELETE',1,1,NULL),(1307,'2019-01-04 23:48:06.056','2019-01-04 23:48:06.056',0,'Excel Coupon','/v[\\d]+/coupon/excel','Coupon','GET',1,1,NULL),(1401,'2019-01-04 23:48:06.057','2019-01-04 23:48:06.057',0,'Index Currency','/v[\\d]+/currency','Currency','GET',1,1,NULL),(1402,'2019-01-04 23:48:06.057','2019-01-04 23:48:06.057',0,'Create Currency','/v[\\d]+/currency','Currency','POST',1,1,NULL),(1403,'2019-01-04 23:48:06.058','2019-01-04 23:48:06.058',0,'Read Currency','/v[\\d]+/currency/[\\d]+','Currency','GET',1,1,NULL),(1404,'2019-01-04 23:48:06.058','2019-01-04 23:48:06.058',0,'Update Currency','/v[\\d]+/currency/[\\d]+','Currency','PUT',1,1,NULL),(1405,'2019-01-04 23:48:06.059','2019-01-04 23:48:06.059',0,'Delete a Currency','/v[\\d]+/currency/[\\d]+','Currency','DELETE',1,1,NULL),(1406,'2019-01-04 23:48:06.059','2019-01-04 23:48:06.059',0,'Delete all Currency','/v[\\d]+/currency/clear','Currency','DELETE',1,1,NULL),(1407,'2019-01-04 23:48:06.060','2019-01-04 23:48:06.060',0,'Excel Currency','/v[\\d]+/currency/excel','Currency','GET',1,1,NULL),(1501,'2019-01-04 23:48:06.060','2019-01-04 23:48:06.060',0,'Index EmailSubscription','/v[\\d]+/email-subscription','EmailSubscription','GET',1,1,NULL),(1502,'2019-01-04 23:48:06.061','2019-01-04 23:48:06.061',0,'Create EmailSubscription','/v[\\d]+/email-subscription','EmailSubscription','POST',1,1,NULL),(1503,'2019-01-04 23:48:06.061','2019-01-04 23:48:06.061',0,'Read EmailSubscription','/v[\\d]+/email-subscription/[\\d]+','EmailSubscription','GET',1,1,NULL),(1504,'2019-01-04 23:48:06.062','2019-01-04 23:48:06.062',0,'Update EmailSubscription','/v[\\d]+/email-subscription/[\\d]+','EmailSubscription','PUT',1,1,NULL),(1505,'2019-01-04 23:48:06.062','2019-01-04 23:48:06.062',0,'Delete a EmailSubscription','/v[\\d]+/email-subscription/[\\d]+','EmailSubscription','DELETE',1,1,NULL),(1506,'2019-01-04 23:48:06.063','2019-01-04 23:48:06.063',0,'Delete all EmailSubscription','/v[\\d]+/email-subscription/clear','EmailSubscription','DELETE',1,1,NULL),(1507,'2019-01-04 23:48:06.063','2019-01-04 23:48:06.063',0,'Excel EmailSubscription','/v[\\d]+/email-subscription/excel','EmailSubscription','GET',1,1,NULL),(1601,'2019-01-04 23:48:06.064','2019-01-04 23:48:06.064',0,'Index Experience','/v[\\d]+/experience','Experience','GET',1,1,NULL),(1602,'2019-01-04 23:48:06.064','2019-01-04 23:48:06.064',0,'Create Experience','/v[\\d]+/experience','Experience','POST',1,1,NULL),(1603,'2019-01-04 23:48:06.065','2019-01-04 23:48:06.065',0,'Read Experience','/v[\\d]+/experience/[\\d]+','Experience','GET',1,1,NULL),(1604,'2019-01-04 23:48:06.065','2019-01-04 23:48:06.065',0,'Update Experience','/v[\\d]+/experience/[\\d]+','Experience','PUT',1,1,NULL),(1605,'2019-01-04 23:48:06.066','2019-01-04 23:48:06.066',0,'Delete a Experience','/v[\\d]+/experience/[\\d]+','Experience','DELETE',1,1,NULL),(1606,'2019-01-04 23:48:06.067','2019-01-04 23:48:06.067',0,'Delete all Experience','/v[\\d]+/experience/clear','Experience','DELETE',1,1,NULL),(1607,'2019-01-04 23:48:06.067','2019-01-04 23:48:06.067',0,'Excel Experience','/v[\\d]+/experience/excel','Experience','GET',1,1,NULL),(1701,'2019-01-04 23:48:06.068','2019-01-04 23:48:06.068',0,'Index Faq','/v[\\d]+/faq','Faq','GET',1,1,NULL),(1702,'2019-01-04 23:48:06.068','2019-01-04 23:48:06.068',0,'Create Faq','/v[\\d]+/faq','Faq','POST',1,1,NULL),(1703,'2019-01-04 23:48:06.069','2019-01-04 23:48:06.069',0,'Read Faq','/v[\\d]+/faq/[\\d]+','Faq','GET',1,1,NULL),(1704,'2019-01-04 23:48:06.069','2019-01-04 23:48:06.069',0,'Update Faq','/v[\\d]+/faq/[\\d]+','Faq','PUT',1,1,NULL),(1705,'2019-01-04 23:48:06.070','2019-01-04 23:48:06.070',0,'Delete a Faq','/v[\\d]+/faq/[\\d]+','Faq','DELETE',1,1,NULL),(1706,'2019-01-04 23:48:06.070','2019-01-04 23:48:06.070',0,'Delete all Faq','/v[\\d]+/faq/clear','Faq','DELETE',1,1,NULL),(1707,'2019-01-04 23:48:06.071','2019-01-04 23:48:06.071',0,'Excel Faq','/v[\\d]+/faq/excel','Faq','GET',1,1,NULL),(1801,'2019-01-04 23:48:06.072','2019-01-04 23:48:06.072',0,'Index Favorite','/v[\\d]+/favorite','Favorite','GET',1,1,NULL),(1802,'2019-01-04 23:48:06.072','2019-01-04 23:48:06.072',0,'Create Favorite','/v[\\d]+/favorite','Favorite','POST',1,1,NULL),(1803,'2019-01-04 23:48:06.073','2019-01-04 23:48:06.073',0,'Read Favorite','/v[\\d]+/favorite/[\\d]+','Favorite','GET',1,1,NULL),(1804,'2019-01-04 23:48:06.073','2019-01-04 23:48:06.073',0,'Update Favorite','/v[\\d]+/favorite/[\\d]+','Favorite','PUT',1,1,NULL),(1805,'2019-01-04 23:48:06.074','2019-01-04 23:48:06.074',0,'Delete a Favorite','/v[\\d]+/favorite/[\\d]+','Favorite','DELETE',1,1,NULL),(1806,'2019-01-04 23:48:06.074','2019-01-04 23:48:06.074',0,'Delete all Favorite','/v[\\d]+/favorite/clear','Favorite','DELETE',1,1,NULL),(1807,'2019-01-04 23:48:06.075','2019-01-04 23:48:06.075',0,'Excel Favorite','/v[\\d]+/favorite/excel','Favorite','GET',1,1,NULL),(1901,'2019-01-04 23:48:06.075','2019-01-04 23:48:06.075',0,'Index FeatureType','/v[\\d]+/feature-type','FeatureType','GET',1,1,NULL),(1902,'2019-01-04 23:48:06.076','2019-01-04 23:48:06.076',0,'Create FeatureType','/v[\\d]+/feature-type','FeatureType','POST',1,1,NULL),(1903,'2019-01-04 23:48:06.076','2019-01-04 23:48:06.076',0,'Read FeatureType','/v[\\d]+/feature-type/[\\d]+','FeatureType','GET',1,1,NULL),(1904,'2019-01-04 23:48:06.077','2019-01-04 23:48:06.077',0,'Update FeatureType','/v[\\d]+/feature-type/[\\d]+','FeatureType','PUT',1,1,NULL),(1905,'2019-01-04 23:48:06.077','2019-01-04 23:48:06.077',0,'Delete a FeatureType','/v[\\d]+/feature-type/[\\d]+','FeatureType','DELETE',1,1,NULL),(1906,'2019-01-04 23:48:06.078','2019-01-04 23:48:06.078',0,'Delete all FeatureType','/v[\\d]+/feature-type/clear','FeatureType','DELETE',1,1,NULL),(1907,'2019-01-04 23:48:06.079','2019-01-04 23:48:06.079',0,'Excel FeatureType','/v[\\d]+/feature-type/excel','FeatureType','GET',1,1,NULL),(2001,'2019-01-04 23:48:06.080','2019-01-04 23:48:06.080',0,'Index Feedback','/v[\\d]+/feedback','Feedback','GET',1,1,NULL),(2002,'2019-01-04 23:48:06.080','2019-01-04 23:48:06.080',0,'Create Feedback','/v[\\d]+/feedback','Feedback','POST',1,1,NULL),(2003,'2019-01-04 23:48:06.080','2019-01-04 23:48:06.080',0,'Read Feedback','/v[\\d]+/feedback/[\\d]+','Feedback','GET',1,1,NULL),(2004,'2019-01-04 23:48:06.081','2019-01-04 23:48:06.081',0,'Update Feedback','/v[\\d]+/feedback/[\\d]+','Feedback','PUT',1,1,NULL),(2005,'2019-01-04 23:48:06.082','2019-01-04 23:48:06.082',0,'Delete a Feedback','/v[\\d]+/feedback/[\\d]+','Feedback','DELETE',1,1,NULL),(2006,'2019-01-04 23:48:06.089','2019-01-04 23:48:06.089',0,'Delete all Feedback','/v[\\d]+/feedback/clear','Feedback','DELETE',1,1,NULL),(2007,'2019-01-04 23:48:06.090','2019-01-04 23:48:06.090',0,'Excel Feedback','/v[\\d]+/feedback/excel','Feedback','GET',1,1,NULL),(2101,'2019-01-04 23:48:06.090','2019-01-04 23:48:06.090',0,'Index FeedbackType','/v[\\d]+/feedback-type','FeedbackType','GET',1,1,NULL),(2102,'2019-01-04 23:48:06.091','2019-01-04 23:48:06.091',0,'Create FeedbackType','/v[\\d]+/feedback-type','FeedbackType','POST',1,1,NULL),(2103,'2019-01-04 23:48:06.097','2019-01-04 23:48:06.097',0,'Read FeedbackType','/v[\\d]+/feedback-type/[\\d]+','FeedbackType','GET',1,1,NULL),(2104,'2019-01-04 23:48:06.097','2019-01-04 23:48:06.097',0,'Update FeedbackType','/v[\\d]+/feedback-type/[\\d]+','FeedbackType','PUT',1,1,NULL),(2105,'2019-01-04 23:48:06.098','2019-01-04 23:48:06.098',0,'Delete a FeedbackType','/v[\\d]+/feedback-type/[\\d]+','FeedbackType','DELETE',1,1,NULL),(2106,'2019-01-04 23:48:06.099','2019-01-04 23:48:06.099',0,'Delete all FeedbackType','/v[\\d]+/feedback-type/clear','FeedbackType','DELETE',1,1,NULL),(2107,'2019-01-04 23:48:06.099','2019-01-04 23:48:06.099',0,'Excel FeedbackType','/v[\\d]+/feedback-type/excel','FeedbackType','GET',1,1,NULL),(2201,'2019-01-04 23:48:06.100','2019-01-04 23:48:06.100',0,'Index Footer','/v[\\d]+/footer','Footer','GET',1,1,NULL),(2202,'2019-01-04 23:48:06.101','2019-01-04 23:48:06.101',0,'Create Footer','/v[\\d]+/footer','Footer','POST',1,1,NULL),(2203,'2019-01-04 23:48:06.102','2019-01-04 23:48:06.102',0,'Read Footer','/v[\\d]+/footer/[\\d]+','Footer','GET',1,1,NULL),(2204,'2019-01-04 23:48:06.103','2019-01-04 23:48:06.103',0,'Update Footer','/v[\\d]+/footer/[\\d]+','Footer','PUT',1,1,NULL),(2205,'2019-01-04 23:48:06.103','2019-01-04 23:48:06.103',0,'Delete a Footer','/v[\\d]+/footer/[\\d]+','Footer','DELETE',1,1,NULL),(2206,'2019-01-04 23:48:06.104','2019-01-04 23:48:06.104',0,'Delete all Footer','/v[\\d]+/footer/clear','Footer','DELETE',1,1,NULL),(2207,'2019-01-04 23:48:06.104','2019-01-04 23:48:06.104',0,'Excel Footer','/v[\\d]+/footer/excel','Footer','GET',1,1,NULL),(2301,'2019-01-04 23:48:06.105','2019-01-04 23:48:06.105',0,'Index GuestRequirement','/v[\\d]+/guest-requirement','GuestRequirement','GET',1,1,NULL),(2302,'2019-01-04 23:48:06.105','2019-01-04 23:48:06.105',0,'Create GuestRequirement','/v[\\d]+/guest-requirement','GuestRequirement','POST',1,1,NULL),(2303,'2019-01-04 23:48:06.106','2019-01-04 23:48:06.106',0,'Read GuestRequirement','/v[\\d]+/guest-requirement/[\\d]+','GuestRequirement','GET',1,1,NULL),(2304,'2019-01-04 23:48:06.107','2019-01-04 23:48:06.107',0,'Update GuestRequirement','/v[\\d]+/guest-requirement/[\\d]+','GuestRequirement','PUT',1,1,NULL),(2305,'2019-01-04 23:48:06.108','2019-01-04 23:48:06.108',0,'Delete a GuestRequirement','/v[\\d]+/guest-requirement/[\\d]+','GuestRequirement','DELETE',1,1,NULL),(2306,'2019-01-04 23:48:06.109','2019-01-04 23:48:06.109',0,'Delete all GuestRequirement','/v[\\d]+/guest-requirement/clear','GuestRequirement','DELETE',1,1,NULL),(2307,'2019-01-04 23:48:06.110','2019-01-04 23:48:06.110',0,'Excel GuestRequirement','/v[\\d]+/guest-requirement/excel','GuestRequirement','GET',1,1,NULL),(2401,'2019-01-04 23:48:06.111','2019-01-04 23:48:06.111',0,'Index HomePageSlider','/v[\\d]+/home-page-slider','HomePageSlider','GET',1,1,NULL),(2402,'2019-01-04 23:48:06.111','2019-01-04 23:48:06.111',0,'Create HomePageSlider','/v[\\d]+/home-page-slider','HomePageSlider','POST',1,1,NULL),(2403,'2019-01-04 23:48:06.112','2019-01-04 23:48:06.112',0,'Read HomePageSlider','/v[\\d]+/home-page-slider/[\\d]+','HomePageSlider','GET',1,1,NULL),(2404,'2019-01-04 23:48:06.113','2019-01-04 23:48:06.113',0,'Update HomePageSlider','/v[\\d]+/home-page-slider/[\\d]+','HomePageSlider','PUT',1,1,NULL),(2405,'2019-01-04 23:48:06.113','2019-01-04 23:48:06.113',0,'Delete a HomePageSlider','/v[\\d]+/home-page-slider/[\\d]+','HomePageSlider','DELETE',1,1,NULL),(2406,'2019-01-04 23:48:06.114','2019-01-04 23:48:06.114',0,'Delete all HomePageSlider','/v[\\d]+/home-page-slider/clear','HomePageSlider','DELETE',1,1,NULL),(2407,'2019-01-04 23:48:06.114','2019-01-04 23:48:06.114',0,'Excel HomePageSlider','/v[\\d]+/home-page-slider/excel','HomePageSlider','GET',1,1,NULL),(2501,'2019-01-04 23:48:06.115','2019-01-04 23:48:06.115',0,'Index InventoryDetail','/v[\\d]+/inventory-detail','InventoryDetail','GET',1,1,NULL),(2502,'2019-01-04 23:48:06.116','2019-01-04 23:48:06.116',0,'Create InventoryDetail','/v[\\d]+/inventory-detail','InventoryDetail','POST',1,1,NULL),(2503,'2019-01-04 23:48:06.116','2019-01-04 23:48:06.116',0,'Read InventoryDetail','/v[\\d]+/inventory-detail/[\\d]+','InventoryDetail','GET',1,1,NULL),(2504,'2019-01-04 23:48:06.117','2019-01-04 23:48:06.117',0,'Update InventoryDetail','/v[\\d]+/inventory-detail/[\\d]+','InventoryDetail','PUT',1,1,NULL),(2505,'2019-01-04 23:48:06.117','2019-01-04 23:48:06.117',0,'Delete a InventoryDetail','/v[\\d]+/inventory-detail/[\\d]+','InventoryDetail','DELETE',1,1,NULL),(2506,'2019-01-04 23:48:06.118','2019-01-04 23:48:06.118',0,'Delete all InventoryDetail','/v[\\d]+/inventory-detail/clear','InventoryDetail','DELETE',1,1,NULL),(2507,'2019-01-04 23:48:06.119','2019-01-04 23:48:06.119',0,'Excel InventoryDetail','/v[\\d]+/inventory-detail/excel','InventoryDetail','GET',1,1,NULL),(2601,'2019-01-04 23:48:06.119','2019-01-04 23:48:06.119',0,'Index Invitation','/v[\\d]+/invitation','Invitation','GET',1,1,NULL),(2602,'2019-01-04 23:48:06.120','2019-01-04 23:48:06.120',0,'Create Invitation','/v[\\d]+/invitation','Invitation','POST',1,1,NULL),(2603,'2019-01-04 23:48:06.120','2019-01-04 23:48:06.120',0,'Read Invitation','/v[\\d]+/invitation/[\\d]+','Invitation','GET',1,1,NULL),(2604,'2019-01-04 23:48:06.121','2019-01-04 23:48:06.121',0,'Update Invitation','/v[\\d]+/invitation/[\\d]+','Invitation','PUT',1,1,NULL),(2605,'2019-01-04 23:48:06.123','2019-01-04 23:48:06.123',0,'Delete a Invitation','/v[\\d]+/invitation/[\\d]+','Invitation','DELETE',1,1,NULL),(2606,'2019-01-04 23:48:06.123','2019-01-04 23:48:06.123',0,'Delete all Invitation','/v[\\d]+/invitation/clear','Invitation','DELETE',1,1,NULL),(2607,'2019-01-04 23:48:06.124','2019-01-04 23:48:06.124',0,'Excel Invitation','/v[\\d]+/invitation/excel','Invitation','GET',1,1,NULL),(2701,'2019-01-04 23:48:06.125','2019-01-04 23:48:06.125',0,'Index Language','/v[\\d]+/language','Language','GET',1,1,NULL),(2702,'2019-01-04 23:48:06.126','2019-01-04 23:48:06.126',0,'Create Language','/v[\\d]+/language','Language','POST',1,1,NULL),(2703,'2019-01-04 23:48:06.128','2019-01-04 23:48:06.128',0,'Read Language','/v[\\d]+/language/[\\d]+','Language','GET',1,1,NULL),(2704,'2019-01-04 23:48:06.129','2019-01-04 23:48:06.129',0,'Update Language','/v[\\d]+/language/[\\d]+','Language','PUT',1,1,NULL),(2705,'2019-01-04 23:48:06.129','2019-01-04 23:48:06.129',0,'Delete a Language','/v[\\d]+/language/[\\d]+','Language','DELETE',1,1,NULL),(2706,'2019-01-04 23:48:06.130','2019-01-04 23:48:06.130',0,'Delete all Language','/v[\\d]+/language/clear','Language','DELETE',1,1,NULL),(2707,'2019-01-04 23:48:06.130','2019-01-04 23:48:06.130',0,'Excel Language','/v[\\d]+/language/excel','Language','GET',1,1,NULL),(2801,'2019-01-04 23:48:06.130','2019-01-04 23:48:06.130',0,'Index MemberGroup','/v[\\d]+/member-group','MemberGroup','GET',1,1,NULL),(2802,'2019-01-04 23:48:06.131','2019-01-04 23:48:06.131',0,'Create MemberGroup','/v[\\d]+/member-group','MemberGroup','POST',1,1,NULL),(2803,'2019-01-04 23:48:06.131','2019-01-04 23:48:06.131',0,'Read MemberGroup','/v[\\d]+/member-group/[\\d]+','MemberGroup','GET',1,1,NULL),(2804,'2019-01-04 23:48:06.132','2019-01-04 23:48:06.132',0,'Update MemberGroup','/v[\\d]+/member-group/[\\d]+','MemberGroup','PUT',1,1,NULL),(2805,'2019-01-04 23:48:06.132','2019-01-04 23:48:06.132',0,'Delete a MemberGroup','/v[\\d]+/member-group/[\\d]+','MemberGroup','DELETE',1,1,NULL),(2806,'2019-01-04 23:48:06.133','2019-01-04 23:48:06.133',0,'Delete all MemberGroup','/v[\\d]+/member-group/clear','MemberGroup','DELETE',1,1,NULL),(2807,'2019-01-04 23:48:06.134','2019-01-04 23:48:06.134',0,'Excel MemberGroup','/v[\\d]+/member-group/excel','MemberGroup','GET',1,1,NULL),(2901,'2019-01-04 23:48:06.135','2019-01-04 23:48:06.135',0,'Index ProductColour','/v[\\d]+/product-colour','ProductColour','GET',1,1,NULL),(2902,'2019-01-04 23:48:06.135','2019-01-04 23:48:06.135',0,'Create ProductColour','/v[\\d]+/product-colour','ProductColour','POST',1,1,NULL),(2903,'2019-01-04 23:48:06.136','2019-01-04 23:48:06.136',0,'Read ProductColour','/v[\\d]+/product-colour/[\\d]+','ProductColour','GET',1,1,NULL),(2904,'2019-01-04 23:48:06.137','2019-01-04 23:48:06.137',0,'Update ProductColour','/v[\\d]+/product-colour/[\\d]+','ProductColour','PUT',1,1,NULL),(2905,'2019-01-04 23:48:06.138','2019-01-04 23:48:06.138',0,'Delete a ProductColour','/v[\\d]+/product-colour/[\\d]+','ProductColour','DELETE',1,1,NULL),(2906,'2019-01-04 23:48:06.138','2019-01-04 23:48:06.138',0,'Delete all ProductColour','/v[\\d]+/product-colour/clear','ProductColour','DELETE',1,1,NULL),(2907,'2019-01-04 23:48:06.139','2019-01-04 23:48:06.139',0,'Excel ProductColour','/v[\\d]+/product-colour/excel','ProductColour','GET',1,1,NULL),(3001,'2019-01-04 23:48:06.139','2019-01-04 23:48:06.139',0,'Index ProductDiscount','/v[\\d]+/product-discount','ProductDiscount','GET',1,1,NULL),(3002,'2019-01-04 23:48:06.140','2019-01-04 23:48:06.140',0,'Create ProductDiscount','/v[\\d]+/product-discount','ProductDiscount','POST',1,1,NULL),(3003,'2019-01-04 23:48:06.140','2019-01-04 23:48:06.140',0,'Read ProductDiscount','/v[\\d]+/product-discount/[\\d]+','ProductDiscount','GET',1,1,NULL),(3004,'2019-01-04 23:48:06.141','2019-01-04 23:48:06.141',0,'Update ProductDiscount','/v[\\d]+/product-discount/[\\d]+','ProductDiscount','PUT',1,1,NULL),(3005,'2019-01-04 23:48:06.142','2019-01-04 23:48:06.142',0,'Delete a ProductDiscount','/v[\\d]+/product-discount/[\\d]+','ProductDiscount','DELETE',1,1,NULL),(3006,'2019-01-04 23:48:06.142','2019-01-04 23:48:06.142',0,'Delete all ProductDiscount','/v[\\d]+/product-discount/clear','ProductDiscount','DELETE',1,1,NULL),(3007,'2019-01-04 23:48:06.143','2019-01-04 23:48:06.143',0,'Excel ProductDiscount','/v[\\d]+/product-discount/excel','ProductDiscount','GET',1,1,NULL),(3101,'2019-01-04 23:48:06.143','2019-01-04 23:48:06.143',0,'Index ProductMulti','/v[\\d]+/product-multi','ProductMulti','GET',1,1,NULL),(3102,'2019-01-04 23:48:06.144','2019-01-04 23:48:06.144',0,'Create ProductMulti','/v[\\d]+/product-multi','ProductMulti','POST',1,1,NULL),(3103,'2019-01-04 23:48:06.145','2019-01-04 23:48:06.145',0,'Read ProductMulti','/v[\\d]+/product-multi/[\\d]+','ProductMulti','GET',1,1,NULL),(3104,'2019-01-04 23:48:06.145','2019-01-04 23:48:06.145',0,'Update ProductMulti','/v[\\d]+/product-multi/[\\d]+','ProductMulti','PUT',1,1,NULL),(3105,'2019-01-04 23:48:06.146','2019-01-04 23:48:06.146',0,'Delete a ProductMulti','/v[\\d]+/product-multi/[\\d]+','ProductMulti','DELETE',1,1,NULL),(3106,'2019-01-04 23:48:06.146','2019-01-04 23:48:06.146',0,'Delete all ProductMulti','/v[\\d]+/product-multi/clear','ProductMulti','DELETE',1,1,NULL),(3107,'2019-01-04 23:48:06.147','2019-01-04 23:48:06.147',0,'Excel ProductMulti','/v[\\d]+/product-multi/excel','ProductMulti','GET',1,1,NULL),(3201,'2019-01-04 23:48:06.147','2019-01-04 23:48:06.147',0,'Index ProductSingle','/v[\\d]+/product-single','ProductSingle','GET',1,1,NULL),(3202,'2019-01-04 23:48:06.148','2019-01-04 23:48:06.148',0,'Create ProductSingle','/v[\\d]+/product-single','ProductSingle','POST',1,1,NULL),(3203,'2019-01-04 23:48:06.148','2019-01-04 23:48:06.148',0,'Read ProductSingle','/v[\\d]+/product-single/[\\d]+','ProductSingle','GET',1,1,NULL),(3204,'2019-01-04 23:48:06.148','2019-01-04 23:48:06.148',0,'Update ProductSingle','/v[\\d]+/product-single/[\\d]+','ProductSingle','PUT',1,1,NULL),(3205,'2019-01-04 23:48:06.149','2019-01-04 23:48:06.149',0,'Delete a ProductSingle','/v[\\d]+/product-single/[\\d]+','ProductSingle','DELETE',1,1,NULL),(3206,'2019-01-04 23:48:06.150','2019-01-04 23:48:06.150',0,'Delete all ProductSingle','/v[\\d]+/product-single/clear','ProductSingle','DELETE',1,1,NULL),(3207,'2019-01-04 23:48:06.151','2019-01-04 23:48:06.151',0,'Excel ProductSingle','/v[\\d]+/product-single/excel','ProductSingle','GET',1,1,NULL),(3301,'2019-01-04 23:48:06.152','2019-01-04 23:48:06.152',0,'Index ProductSingleGroup','/v[\\d]+/product-single-group','ProductSingleGroup','GET',1,1,NULL),(3302,'2019-01-04 23:48:06.152','2019-01-04 23:48:06.152',0,'Create ProductSingleGroup','/v[\\d]+/product-single-group','ProductSingleGroup','POST',1,1,NULL),(3303,'2019-01-04 23:48:06.153','2019-01-04 23:48:06.153',0,'Read ProductSingleGroup','/v[\\d]+/product-single-group/[\\d]+','ProductSingleGroup','GET',1,1,NULL),(3304,'2019-01-04 23:48:06.153','2019-01-04 23:48:06.153',0,'Update ProductSingleGroup','/v[\\d]+/product-single-group/[\\d]+','ProductSingleGroup','PUT',1,1,NULL),(3305,'2019-01-04 23:48:06.154','2019-01-04 23:48:06.154',0,'Delete a ProductSingleGroup','/v[\\d]+/product-single-group/[\\d]+','ProductSingleGroup','DELETE',1,1,NULL),(3306,'2019-01-04 23:48:06.154','2019-01-04 23:48:06.154',0,'Delete all ProductSingleGroup','/v[\\d]+/product-single-group/clear','ProductSingleGroup','DELETE',1,1,NULL),(3307,'2019-01-04 23:48:06.155','2019-01-04 23:48:06.155',0,'Excel ProductSingleGroup','/v[\\d]+/product-single-group/excel','ProductSingleGroup','GET',1,1,NULL),(3401,'2019-01-04 23:48:06.156','2019-01-04 23:48:06.156',0,'Index ProductSingleSnapshot','/v[\\d]+/product-single-snapshot','ProductSingleSnapshot','GET',1,1,NULL),(3402,'2019-01-04 23:48:06.157','2019-01-04 23:48:06.157',0,'Create ProductSingleSnapshot','/v[\\d]+/product-single-snapshot','ProductSingleSnapshot','POST',1,1,NULL),(3403,'2019-01-04 23:48:06.158','2019-01-04 23:48:06.158',0,'Read ProductSingleSnapshot','/v[\\d]+/product-single-snapshot/[\\d]+','ProductSingleSnapshot','GET',1,1,NULL),(3404,'2019-01-04 23:48:06.159','2019-01-04 23:48:06.159',0,'Update ProductSingleSnapshot','/v[\\d]+/product-single-snapshot/[\\d]+','ProductSingleSnapshot','PUT',1,1,NULL),(3405,'2019-01-04 23:48:06.160','2019-01-04 23:48:06.160',0,'Delete a ProductSingleSnapshot','/v[\\d]+/product-single-snapshot/[\\d]+','ProductSingleSnapshot','DELETE',1,1,NULL),(3406,'2019-01-04 23:48:06.161','2019-01-04 23:48:06.161',0,'Delete all ProductSingleSnapshot','/v[\\d]+/product-single-snapshot/clear','ProductSingleSnapshot','DELETE',1,1,NULL),(3407,'2019-01-04 23:48:06.162','2019-01-04 23:48:06.162',0,'Excel ProductSingleSnapshot','/v[\\d]+/product-single-snapshot/excel','ProductSingleSnapshot','GET',1,1,NULL),(3501,'2019-01-04 23:48:06.162','2019-01-04 23:48:06.162',0,'Index ProductSize','/v[\\d]+/product-size','ProductSize','GET',1,1,NULL),(3502,'2019-01-04 23:48:06.163','2019-01-04 23:48:06.163',0,'Create ProductSize','/v[\\d]+/product-size','ProductSize','POST',1,1,NULL),(3503,'2019-01-04 23:48:06.164','2019-01-04 23:48:06.164',0,'Read ProductSize','/v[\\d]+/product-size/[\\d]+','ProductSize','GET',1,1,NULL),(3504,'2019-01-04 23:48:06.164','2019-01-04 23:48:06.164',0,'Update ProductSize','/v[\\d]+/product-size/[\\d]+','ProductSize','PUT',1,1,NULL),(3505,'2019-01-04 23:48:06.165','2019-01-04 23:48:06.165',0,'Delete a ProductSize','/v[\\d]+/product-size/[\\d]+','ProductSize','DELETE',1,1,NULL),(3506,'2019-01-04 23:48:06.166','2019-01-04 23:48:06.166',0,'Delete all ProductSize','/v[\\d]+/product-size/clear','ProductSize','DELETE',1,1,NULL),(3507,'2019-01-04 23:48:06.167','2019-01-04 23:48:06.167',0,'Excel ProductSize','/v[\\d]+/product-size/excel','ProductSize','GET',1,1,NULL),(3601,'2019-01-04 23:48:06.167','2019-01-04 23:48:06.167',0,'Index RegistrationAnswer','/v[\\d]+/registration-answer','RegistrationAnswer','GET',1,1,NULL),(3602,'2019-01-04 23:48:06.168','2019-01-04 23:48:06.168',0,'Create RegistrationAnswer','/v[\\d]+/registration-answer','RegistrationAnswer','POST',1,1,NULL),(3603,'2019-01-04 23:48:06.168','2019-01-04 23:48:06.168',0,'Read RegistrationAnswer','/v[\\d]+/registration-answer/[\\d]+','RegistrationAnswer','GET',1,1,NULL),(3604,'2019-01-04 23:48:06.169','2019-01-04 23:48:06.169',0,'Update RegistrationAnswer','/v[\\d]+/registration-answer/[\\d]+','RegistrationAnswer','PUT',1,1,NULL),(3605,'2019-01-04 23:48:06.169','2019-01-04 23:48:06.169',0,'Delete a RegistrationAnswer','/v[\\d]+/registration-answer/[\\d]+','RegistrationAnswer','DELETE',1,1,NULL),(3606,'2019-01-04 23:48:06.170','2019-01-04 23:48:06.170',0,'Delete all RegistrationAnswer','/v[\\d]+/registration-answer/clear','RegistrationAnswer','DELETE',1,1,NULL),(3607,'2019-01-04 23:48:06.170','2019-01-04 23:48:06.170',0,'Excel RegistrationAnswer','/v[\\d]+/registration-answer/excel','RegistrationAnswer','GET',1,1,NULL),(3701,'2019-01-04 23:48:06.170','2019-01-04 23:48:06.170',0,'Index RegistrationQuestion','/v[\\d]+/registration-question','RegistrationQuestion','GET',1,1,NULL),(3702,'2019-01-04 23:48:06.171','2019-01-04 23:48:06.171',0,'Create RegistrationQuestion','/v[\\d]+/registration-question','RegistrationQuestion','POST',1,1,NULL),(3703,'2019-01-04 23:48:06.171','2019-01-04 23:48:06.171',0,'Read RegistrationQuestion','/v[\\d]+/registration-question/[\\d]+','RegistrationQuestion','GET',1,1,NULL),(3704,'2019-01-04 23:48:06.172','2019-01-04 23:48:06.172',0,'Update RegistrationQuestion','/v[\\d]+/registration-question/[\\d]+','RegistrationQuestion','PUT',1,1,NULL),(3705,'2019-01-04 23:48:06.172','2019-01-04 23:48:06.172',0,'Delete a RegistrationQuestion','/v[\\d]+/registration-question/[\\d]+','RegistrationQuestion','DELETE',1,1,NULL),(3706,'2019-01-04 23:48:06.173','2019-01-04 23:48:06.173',0,'Delete all RegistrationQuestion','/v[\\d]+/registration-question/clear','RegistrationQuestion','DELETE',1,1,NULL),(3707,'2019-01-04 23:48:06.174','2019-01-04 23:48:06.174',0,'Excel RegistrationQuestion','/v[\\d]+/registration-question/excel','RegistrationQuestion','GET',1,1,NULL),(3801,'2019-01-04 23:48:06.175','2019-01-04 23:48:06.175',0,'Index RegistrationQuestionOption','/v[\\d]+/registration-question-option','RegistrationQuestionOption','GET',1,1,NULL),(3802,'2019-01-04 23:48:06.175','2019-01-04 23:48:06.175',0,'Create RegistrationQuestionOption','/v[\\d]+/registration-question-option','RegistrationQuestionOption','POST',1,1,NULL),(3803,'2019-01-04 23:48:06.176','2019-01-04 23:48:06.176',0,'Read RegistrationQuestionOption','/v[\\d]+/registration-question-option/[\\d]+','RegistrationQuestionOption','GET',1,1,NULL),(3804,'2019-01-04 23:48:06.176','2019-01-04 23:48:06.176',0,'Update RegistrationQuestionOption','/v[\\d]+/registration-question-option/[\\d]+','RegistrationQuestionOption','PUT',1,1,NULL),(3805,'2019-01-04 23:48:06.177','2019-01-04 23:48:06.177',0,'Delete a RegistrationQuestionOption','/v[\\d]+/registration-question-option/[\\d]+','RegistrationQuestionOption','DELETE',1,1,NULL),(3806,'2019-01-04 23:48:06.177','2019-01-04 23:48:06.177',0,'Delete all RegistrationQuestionOption','/v[\\d]+/registration-question-option/clear','RegistrationQuestionOption','DELETE',1,1,NULL),(3807,'2019-01-04 23:48:06.178','2019-01-04 23:48:06.178',0,'Excel RegistrationQuestionOption','/v[\\d]+/registration-question-option/excel','RegistrationQuestionOption','GET',1,1,NULL),(3901,'2019-01-04 23:48:06.179','2019-01-04 23:48:06.179',0,'Index Shipment','/v[\\d]+/shipment','Shipment','GET',1,1,NULL),(3902,'2019-01-04 23:48:06.180','2019-01-04 23:48:06.180',0,'Create Shipment','/v[\\d]+/shipment','Shipment','POST',1,1,NULL),(3903,'2019-01-04 23:48:06.181','2019-01-04 23:48:06.181',0,'Read Shipment','/v[\\d]+/shipment/[\\d]+','Shipment','GET',1,1,NULL),(3904,'2019-01-04 23:48:06.182','2019-01-04 23:48:06.182',0,'Update Shipment','/v[\\d]+/shipment/[\\d]+','Shipment','PUT',1,1,NULL),(3905,'2019-01-04 23:48:06.183','2019-01-04 23:48:06.183',0,'Delete a Shipment','/v[\\d]+/shipment/[\\d]+','Shipment','DELETE',1,1,NULL),(3906,'2019-01-04 23:48:06.184','2019-01-04 23:48:06.184',0,'Delete all Shipment','/v[\\d]+/shipment/clear','Shipment','DELETE',1,1,NULL),(3907,'2019-01-04 23:48:06.185','2019-01-04 23:48:06.185',0,'Excel Shipment','/v[\\d]+/shipment/excel','Shipment','GET',1,1,NULL),(4001,'2019-01-04 23:48:06.186','2019-01-04 23:48:06.186',0,'Index ShipmentDetail','/v[\\d]+/shipment-detail','ShipmentDetail','GET',1,1,NULL),(4002,'2019-01-04 23:48:06.186','2019-01-04 23:48:06.186',0,'Create ShipmentDetail','/v[\\d]+/shipment-detail','ShipmentDetail','POST',1,1,NULL),(4003,'2019-01-04 23:48:06.186','2019-01-04 23:48:06.186',0,'Read ShipmentDetail','/v[\\d]+/shipment-detail/[\\d]+','ShipmentDetail','GET',1,1,NULL),(4004,'2019-01-04 23:48:06.187','2019-01-04 23:48:06.187',0,'Update ShipmentDetail','/v[\\d]+/shipment-detail/[\\d]+','ShipmentDetail','PUT',1,1,NULL),(4005,'2019-01-04 23:48:06.188','2019-01-04 23:48:06.188',0,'Delete a ShipmentDetail','/v[\\d]+/shipment-detail/[\\d]+','ShipmentDetail','DELETE',1,1,NULL),(4006,'2019-01-04 23:48:06.194','2019-01-04 23:48:06.194',0,'Delete all ShipmentDetail','/v[\\d]+/shipment-detail/clear','ShipmentDetail','DELETE',1,1,NULL),(4007,'2019-01-04 23:48:06.195','2019-01-04 23:48:06.195',0,'Excel ShipmentDetail','/v[\\d]+/shipment-detail/excel','ShipmentDetail','GET',1,1,NULL),(4101,'2019-01-04 23:48:06.195','2019-01-04 23:48:06.195',0,'Index ShipmentFee','/v[\\d]+/shipment-fee','ShipmentFee','GET',1,1,NULL),(4102,'2019-01-04 23:48:06.197','2019-01-04 23:48:06.197',0,'Create ShipmentFee','/v[\\d]+/shipment-fee','ShipmentFee','POST',1,1,NULL),(4103,'2019-01-04 23:48:06.197','2019-01-04 23:48:06.197',0,'Read ShipmentFee','/v[\\d]+/shipment-fee/[\\d]+','ShipmentFee','GET',1,1,NULL),(4104,'2019-01-04 23:48:06.198','2019-01-04 23:48:06.198',0,'Update ShipmentFee','/v[\\d]+/shipment-fee/[\\d]+','ShipmentFee','PUT',1,1,NULL),(4105,'2019-01-04 23:48:06.199','2019-01-04 23:48:06.199',0,'Delete a ShipmentFee','/v[\\d]+/shipment-fee/[\\d]+','ShipmentFee','DELETE',1,1,NULL),(4106,'2019-01-04 23:48:06.199','2019-01-04 23:48:06.199',0,'Delete all ShipmentFee','/v[\\d]+/shipment-fee/clear','ShipmentFee','DELETE',1,1,NULL),(4107,'2019-01-04 23:48:06.199','2019-01-04 23:48:06.199',0,'Excel ShipmentFee','/v[\\d]+/shipment-fee/excel','ShipmentFee','GET',1,1,NULL),(4201,'2019-01-04 23:48:06.200','2019-01-04 23:48:06.200',0,'Index Tag','/v[\\d]+/tag','Tag','GET',1,1,NULL),(4202,'2019-01-04 23:48:06.200','2019-01-04 23:48:06.200',0,'Create Tag','/v[\\d]+/tag','Tag','POST',1,1,NULL),(4203,'2019-01-04 23:48:06.201','2019-01-04 23:48:06.201',0,'Read Tag','/v[\\d]+/tag/[\\d]+','Tag','GET',1,1,NULL),(4204,'2019-01-04 23:48:06.202','2019-01-04 23:48:06.202',0,'Update Tag','/v[\\d]+/tag/[\\d]+','Tag','PUT',1,1,NULL),(4205,'2019-01-04 23:48:06.203','2019-01-04 23:48:06.203',0,'Delete a Tag','/v[\\d]+/tag/[\\d]+','Tag','DELETE',1,1,NULL),(4206,'2019-01-04 23:48:06.204','2019-01-04 23:48:06.204',0,'Delete all Tag','/v[\\d]+/tag/clear','Tag','DELETE',1,1,NULL),(4207,'2019-01-04 23:48:06.205','2019-01-04 23:48:06.205',0,'Excel Tag','/v[\\d]+/tag/excel','Tag','GET',1,1,NULL),(4301,'2019-01-04 23:48:06.206','2019-01-04 23:48:06.206',0,'Index TermCondition','/v[\\d]+/term-condition','TermCondition','GET',1,1,NULL),(4302,'2019-01-04 23:48:06.206','2019-01-04 23:48:06.206',0,'Create TermCondition','/v[\\d]+/term-condition','TermCondition','POST',1,1,NULL),(4303,'2019-01-04 23:48:06.206','2019-01-04 23:48:06.206',0,'Read TermCondition','/v[\\d]+/term-condition/[\\d]+','TermCondition','GET',1,1,NULL),(4304,'2019-01-04 23:48:06.207','2019-01-04 23:48:06.207',0,'Update TermCondition','/v[\\d]+/term-condition/[\\d]+','TermCondition','PUT',1,1,NULL),(4305,'2019-01-04 23:48:06.207','2019-01-04 23:48:06.207',0,'Delete a TermCondition','/v[\\d]+/term-condition/[\\d]+','TermCondition','DELETE',1,1,NULL),(4306,'2019-01-04 23:48:06.208','2019-01-04 23:48:06.208',0,'Delete all TermCondition','/v[\\d]+/term-condition/clear','TermCondition','DELETE',1,1,NULL),(4307,'2019-01-04 23:48:06.208','2019-01-04 23:48:06.208',0,'Excel TermCondition','/v[\\d]+/term-condition/excel','TermCondition','GET',1,1,NULL),(4401,'2019-01-04 23:48:06.209','2019-01-04 23:48:06.209',0,'Index TransactionSingle','/v[\\d]+/transaction-single','TransactionSingle','GET',1,1,NULL),(4402,'2019-01-04 23:48:06.209','2019-01-04 23:48:06.209',0,'Create TransactionSingle','/v[\\d]+/transaction-single','TransactionSingle','POST',1,1,NULL),(4403,'2019-01-04 23:48:06.210','2019-01-04 23:48:06.210',0,'Read TransactionSingle','/v[\\d]+/transaction-single/[\\d]+','TransactionSingle','GET',1,1,NULL),(4404,'2019-01-04 23:48:06.211','2019-01-04 23:48:06.211',0,'Update TransactionSingle','/v[\\d]+/transaction-single/[\\d]+','TransactionSingle','PUT',1,1,NULL),(4405,'2019-01-04 23:48:06.211','2019-01-04 23:48:06.211',0,'Delete a TransactionSingle','/v[\\d]+/transaction-single/[\\d]+','TransactionSingle','DELETE',1,1,NULL),(4406,'2019-01-04 23:48:06.212','2019-01-04 23:48:06.212',0,'Delete all TransactionSingle','/v[\\d]+/transaction-single/clear','TransactionSingle','DELETE',1,1,NULL),(4407,'2019-01-04 23:48:06.212','2019-01-04 23:48:06.212',0,'Excel TransactionSingle','/v[\\d]+/transaction-single/excel','TransactionSingle','GET',1,1,NULL),(4501,'2019-01-04 23:48:06.213','2019-01-04 23:48:06.213',0,'Index TransactionSingleItem','/v[\\d]+/transaction-single-item','TransactionSingleItem','GET',1,1,NULL),(4502,'2019-01-04 23:48:06.213','2019-01-04 23:48:06.213',0,'Create TransactionSingleItem','/v[\\d]+/transaction-single-item','TransactionSingleItem','POST',1,1,NULL),(4503,'2019-01-04 23:48:06.213','2019-01-04 23:48:06.213',0,'Read TransactionSingleItem','/v[\\d]+/transaction-single-item/[\\d]+','TransactionSingleItem','GET',1,1,NULL),(4504,'2019-01-04 23:48:06.214','2019-01-04 23:48:06.214',0,'Update TransactionSingleItem','/v[\\d]+/transaction-single-item/[\\d]+','TransactionSingleItem','PUT',1,1,NULL),(4505,'2019-01-04 23:48:06.214','2019-01-04 23:48:06.214',0,'Delete a TransactionSingleItem','/v[\\d]+/transaction-single-item/[\\d]+','TransactionSingleItem','DELETE',1,1,NULL),(4506,'2019-01-04 23:48:06.215','2019-01-04 23:48:06.215',0,'Delete all TransactionSingleItem','/v[\\d]+/transaction-single-item/clear','TransactionSingleItem','DELETE',1,1,NULL),(4507,'2019-01-04 23:48:06.215','2019-01-04 23:48:06.215',0,'Excel TransactionSingleItem','/v[\\d]+/transaction-single-item/excel','TransactionSingleItem','GET',1,1,NULL),(4601,'2019-01-04 23:48:06.215','2019-01-04 23:48:06.215',0,'Index WebsiteColumn','/v[\\d]+/website-column','WebsiteColumn','GET',1,1,NULL),(4602,'2019-01-04 23:48:06.216','2019-01-04 23:48:06.216',0,'Create WebsiteColumn','/v[\\d]+/website-column','WebsiteColumn','POST',1,1,NULL),(4603,'2019-01-04 23:48:06.216','2019-01-04 23:48:06.216',0,'Read WebsiteColumn','/v[\\d]+/website-column/[\\d]+','WebsiteColumn','GET',1,1,NULL),(4604,'2019-01-04 23:48:06.216','2019-01-04 23:48:06.216',0,'Update WebsiteColumn','/v[\\d]+/website-column/[\\d]+','WebsiteColumn','PUT',1,1,NULL),(4605,'2019-01-04 23:48:06.217','2019-01-04 23:48:06.217',0,'Delete a WebsiteColumn','/v[\\d]+/website-column/[\\d]+','WebsiteColumn','DELETE',1,1,NULL),(4606,'2019-01-04 23:48:06.217','2019-01-04 23:48:06.217',0,'Delete all WebsiteColumn','/v[\\d]+/website-column/clear','WebsiteColumn','DELETE',1,1,NULL),(4607,'2019-01-04 23:48:06.218','2019-01-04 23:48:06.218',0,'Excel WebsiteColumn','/v[\\d]+/website-column/excel','WebsiteColumn','GET',1,1,NULL),(4701,'2019-01-04 23:48:06.218','2019-01-04 23:48:06.218',0,'Index WebsiteImage','/v[\\d]+/website-image','WebsiteImage','GET',1,1,NULL),(4702,'2019-01-04 23:48:06.219','2019-01-04 23:48:06.219',0,'Create WebsiteImage','/v[\\d]+/website-image','WebsiteImage','POST',1,1,NULL),(4703,'2019-01-04 23:48:06.220','2019-01-04 23:48:06.220',0,'Read WebsiteImage','/v[\\d]+/website-image/[\\d]+','WebsiteImage','GET',1,1,NULL),(4704,'2019-01-04 23:48:06.221','2019-01-04 23:48:06.221',0,'Update WebsiteImage','/v[\\d]+/website-image/[\\d]+','WebsiteImage','PUT',1,1,NULL),(4705,'2019-01-04 23:48:06.222','2019-01-04 23:48:06.222',0,'Delete a WebsiteImage','/v[\\d]+/website-image/[\\d]+','WebsiteImage','DELETE',1,1,NULL),(4706,'2019-01-04 23:48:06.222','2019-01-04 23:48:06.222',0,'Delete all WebsiteImage','/v[\\d]+/website-image/clear','WebsiteImage','DELETE',1,1,NULL),(4707,'2019-01-04 23:48:06.223','2019-01-04 23:48:06.223',0,'Excel WebsiteImage','/v[\\d]+/website-image/excel','WebsiteImage','GET',1,1,NULL),(4801,'2019-01-04 23:48:06.223','2019-01-04 23:48:06.223',0,'Index WebsiteNews','/v[\\d]+/website-news','WebsiteNews','GET',1,1,NULL),(4802,'2019-01-04 23:48:06.224','2019-01-04 23:48:06.224',0,'Create WebsiteNews','/v[\\d]+/website-news','WebsiteNews','POST',1,1,NULL),(4803,'2019-01-04 23:48:06.225','2019-01-04 23:48:06.225',0,'Read WebsiteNews','/v[\\d]+/website-news/[\\d]+','WebsiteNews','GET',1,1,NULL),(4804,'2019-01-04 23:48:06.226','2019-01-04 23:48:06.226',0,'Update WebsiteNews','/v[\\d]+/website-news/[\\d]+','WebsiteNews','PUT',1,1,NULL),(4805,'2019-01-04 23:48:06.227','2019-01-04 23:48:06.227',0,'Delete a WebsiteNews','/v[\\d]+/website-news/[\\d]+','WebsiteNews','DELETE',1,1,NULL),(4806,'2019-01-04 23:48:06.227','2019-01-04 23:48:06.227',0,'Delete all WebsiteNews','/v[\\d]+/website-news/clear','WebsiteNews','DELETE',1,1,NULL),(4807,'2019-01-04 23:48:06.228','2019-01-04 23:48:06.228',0,'Excel WebsiteNews','/v[\\d]+/website-news/excel','WebsiteNews','GET',1,1,NULL),(20001,'2019-01-04 23:48:21.272','2019-01-04 23:48:21.272',0,'Index Gateway','/v[\\d]+/gateway','Gateway','GET',1,1,NULL),(20002,'2019-01-04 23:48:21.278','2019-01-04 23:48:21.278',0,'Create Gateway','/v[\\d]+/gateway','Gateway','POST',1,1,NULL),(20003,'2019-01-04 23:48:21.279','2019-01-04 23:48:21.279',0,'Read Gateway','/v[\\d]+/gateway/[\\d]+','Gateway','GET',1,1,NULL),(20004,'2019-01-04 23:48:21.279','2019-01-04 23:48:21.279',0,'Update Gateway','/v[\\d]+/gateway/[\\d]+','Gateway','PUT',1,1,NULL),(20005,'2019-01-04 23:48:21.280','2019-01-04 23:48:21.280',0,'Delete a Gateway','/v[\\d]+/gateway/[\\d]+','Gateway','DELETE',1,1,NULL),(20006,'2019-01-04 23:48:21.280','2019-01-04 23:48:21.280',0,'Delete all Gateway','/v[\\d]+/gateway/clear','Gateway','DELETE',1,1,NULL),(20007,'2019-01-04 23:48:21.281','2019-01-04 23:48:21.281',0,'Excel Gateway','/v[\\d]+/gateway/excel','Gateway','GET',1,1,NULL),(20101,'2019-01-04 23:48:21.281','2019-01-04 23:48:21.281',0,'Index PaymentApiLog','/v[\\d]+/payment-api-log','PaymentApiLog','GET',1,1,NULL),(20102,'2019-01-04 23:48:21.282','2019-01-04 23:48:21.282',0,'Create PaymentApiLog','/v[\\d]+/payment-api-log','PaymentApiLog','POST',1,1,NULL),(20103,'2019-01-04 23:48:21.282','2019-01-04 23:48:21.282',0,'Read PaymentApiLog','/v[\\d]+/payment-api-log/[\\d]+','PaymentApiLog','GET',1,1,NULL),(20104,'2019-01-04 23:48:21.283','2019-01-04 23:48:21.283',0,'Update PaymentApiLog','/v[\\d]+/payment-api-log/[\\d]+','PaymentApiLog','PUT',1,1,NULL),(20105,'2019-01-04 23:48:21.283','2019-01-04 23:48:21.283',0,'Delete a PaymentApiLog','/v[\\d]+/payment-api-log/[\\d]+','PaymentApiLog','DELETE',1,1,NULL),(20106,'2019-01-04 23:48:21.283','2019-01-04 23:48:21.283',0,'Delete all PaymentApiLog','/v[\\d]+/payment-api-log/clear','PaymentApiLog','DELETE',1,1,NULL),(20107,'2019-01-04 23:48:21.284','2019-01-04 23:48:21.284',0,'Excel PaymentApiLog','/v[\\d]+/payment-api-log/excel','PaymentApiLog','GET',1,1,NULL),(20201,'2019-01-04 23:48:21.285','2019-01-04 23:48:21.285',0,'Index PaymentGatewayLog','/v[\\d]+/payment-gateway-log','PaymentGatewayLog','GET',1,1,NULL),(20202,'2019-01-04 23:48:21.285','2019-01-04 23:48:21.285',0,'Create PaymentGatewayLog','/v[\\d]+/payment-gateway-log','PaymentGatewayLog','POST',1,1,NULL),(20203,'2019-01-04 23:48:21.286','2019-01-04 23:48:21.286',0,'Read PaymentGatewayLog','/v[\\d]+/payment-gateway-log/[\\d]+','PaymentGatewayLog','GET',1,1,NULL),(20204,'2019-01-04 23:48:21.286','2019-01-04 23:48:21.286',0,'Update PaymentGatewayLog','/v[\\d]+/payment-gateway-log/[\\d]+','PaymentGatewayLog','PUT',1,1,NULL),(20205,'2019-01-04 23:48:21.287','2019-01-04 23:48:21.287',0,'Delete a PaymentGatewayLog','/v[\\d]+/payment-gateway-log/[\\d]+','PaymentGatewayLog','DELETE',1,1,NULL),(20206,'2019-01-04 23:48:21.287','2019-01-04 23:48:21.287',0,'Delete all PaymentGatewayLog','/v[\\d]+/payment-gateway-log/clear','PaymentGatewayLog','DELETE',1,1,NULL),(20207,'2019-01-04 23:48:21.294','2019-01-04 23:48:21.294',0,'Excel PaymentGatewayLog','/v[\\d]+/payment-gateway-log/excel','PaymentGatewayLog','GET',1,1,NULL),(20301,'2019-01-04 23:48:21.295','2019-01-04 23:48:21.295',0,'Index PaymentOrder','/v[\\d]+/payment-order','PaymentOrder','GET',1,1,NULL),(20302,'2019-01-04 23:48:21.295','2019-01-04 23:48:21.295',0,'Create PaymentOrder','/v[\\d]+/payment-order','PaymentOrder','POST',1,1,NULL),(20303,'2019-01-04 23:48:21.296','2019-01-04 23:48:21.296',0,'Read PaymentOrder','/v[\\d]+/payment-order/[\\d]+','PaymentOrder','GET',1,1,NULL),(20304,'2019-01-04 23:48:21.296','2019-01-04 23:48:21.296',0,'Update PaymentOrder','/v[\\d]+/payment-order/[\\d]+','PaymentOrder','PUT',1,1,NULL),(20305,'2019-01-04 23:48:21.297','2019-01-04 23:48:21.297',0,'Delete a PaymentOrder','/v[\\d]+/payment-order/[\\d]+','PaymentOrder','DELETE',1,1,NULL),(20306,'2019-01-04 23:48:21.297','2019-01-04 23:48:21.297',0,'Delete all PaymentOrder','/v[\\d]+/payment-order/clear','PaymentOrder','DELETE',1,1,NULL),(20307,'2019-01-04 23:48:21.297','2019-01-04 23:48:21.297',0,'Excel PaymentOrder','/v[\\d]+/payment-order/excel','PaymentOrder','GET',1,1,NULL);
/*!40000 ALTER TABLE `aci_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aci_role`
--

DROP TABLE IF EXISTS `aci_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aci_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgiycbu32u3ohnrmlp1xpl7bh4` (`creator_id`),
  KEY `FKoowdh5engkxou7i5796ivmkrg` (`modifier_id`),
  KEY `FK6wf4clqgv1a344hjbgngpn4yb` (`user_id`),
  CONSTRAINT `FK6b5v0nulx0jtp4wkabuilcrhf` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK6wf4clqgv1a344hjbgngpn4yb` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKbghhvui0q6uvryrgpwyf41202` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKer0xpqr0mstdpdxev6xkfc9wi` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKfmrlx37cuimko1ecbj95sniao` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKgiycbu32u3ohnrmlp1xpl7bh4` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKicv3aucuajbj03ecxq3u43qrr` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKoowdh5engkxou7i5796ivmkrg` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aci_role`
--

LOCK TABLES `aci_role` WRITE;
/*!40000 ALTER TABLE `aci_role` DISABLE KEYS */;
INSERT INTO `aci_role` VALUES (1,'2016-12-27 09:02:29.690','2018-07-07 06:46:02.646',1,'super admin',1,1,NULL),(2,'2016-12-27 09:02:29.690','2018-08-13 03:09:38.186',3,'app admin',1,1,NULL),(10,'2016-12-27 09:02:29.690','2017-06-25 07:27:47.573',1,'customer',1,1,NULL),(100,'2018-08-13 02:39:08.962','2018-08-13 02:39:08.962',1,'anonymous',1,1,NULL);
/*!40000 ALTER TABLE `aci_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aci_role_permission`
--

DROP TABLE IF EXISTS `aci_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aci_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `permission_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9cf0bchgarvkyjtofxc91fe3n` (`creator_id`),
  KEY `FKe3xdq52ltmkoxm7p46v0i8vd0` (`modifier_id`),
  KEY `FK8f6n4ff287ms11hwltw8eewvk` (`user_id`),
  KEY `FK8qubm97v5phnptps1xr1aqb8p` (`permission_id`),
  KEY `FKb02tanobrvpkd735gjsml7dtq` (`role_id`),
  CONSTRAINT `FK8f6n4ff287ms11hwltw8eewvk` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK8qubm97v5phnptps1xr1aqb8p` FOREIGN KEY (`permission_id`) REFERENCES `aci_permission` (`id`),
  CONSTRAINT `FK9cf0bchgarvkyjtofxc91fe3n` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKb02tanobrvpkd735gjsml7dtq` FOREIGN KEY (`role_id`) REFERENCES `aci_role` (`id`),
  CONSTRAINT `FKe3xdq52ltmkoxm7p46v0i8vd0` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10020308 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aci_role_permission`
--

LOCK TABLES `aci_role_permission` WRITE;
/*!40000 ALTER TABLE `aci_role_permission` DISABLE KEYS */;
INSERT INTO `aci_role_permission` VALUES (11,'2019-01-04 23:48:06.229','2019-01-04 23:48:06.229',0,1,1,NULL,1,1),(12,'2019-01-04 23:48:06.231','2019-01-04 23:48:06.231',0,1,1,NULL,2,1),(13,'2019-01-04 23:48:06.232','2019-01-04 23:48:06.232',0,1,1,NULL,3,1),(14,'2019-01-04 23:48:06.232','2019-01-04 23:48:06.232',0,1,1,NULL,4,1),(15,'2019-01-04 23:48:06.233','2019-01-04 23:48:06.233',0,1,1,NULL,5,1),(16,'2019-01-04 23:48:06.234','2019-01-04 23:48:06.234',0,1,1,NULL,6,1),(17,'2019-01-04 23:48:06.234','2019-01-04 23:48:06.234',0,1,1,NULL,7,1),(21,'2019-01-04 23:48:06.234','2019-01-04 23:48:06.234',0,1,1,NULL,1,2),(22,'2019-01-04 23:48:06.235','2019-01-04 23:48:06.235',0,1,1,NULL,2,2),(23,'2019-01-04 23:48:06.235','2019-01-04 23:48:06.235',0,1,1,NULL,3,2),(24,'2019-01-04 23:48:06.235','2019-01-04 23:48:06.235',0,1,1,NULL,4,2),(25,'2019-01-04 23:48:06.236','2019-01-04 23:48:06.236',0,1,1,NULL,5,2),(26,'2019-01-04 23:48:06.236','2019-01-04 23:48:06.236',0,1,1,NULL,6,2),(27,'2019-01-04 23:48:06.237','2019-01-04 23:48:06.237',0,1,1,NULL,7,2),(101,'2019-01-04 23:48:06.238','2019-01-04 23:48:06.238',0,1,1,NULL,1,10),(102,'2019-01-04 23:48:06.238','2019-01-04 23:48:06.238',0,1,1,NULL,2,10),(103,'2019-01-04 23:48:06.238','2019-01-04 23:48:06.238',0,1,1,NULL,3,10),(104,'2019-01-04 23:48:06.239','2019-01-04 23:48:06.239',0,1,1,NULL,4,10),(105,'2019-01-04 23:48:06.241','2019-01-04 23:48:06.241',0,1,1,NULL,5,10),(106,'2019-01-04 23:48:06.242','2019-01-04 23:48:06.242',0,1,1,NULL,6,10),(107,'2019-01-04 23:48:06.243','2019-01-04 23:48:06.243',0,1,1,NULL,7,10),(1001,'2019-01-04 23:48:06.243','2019-01-04 23:48:06.243',0,1,1,NULL,1,100),(1002,'2019-01-04 23:48:06.244','2019-01-04 23:48:06.244',0,1,1,NULL,2,100),(1003,'2019-01-04 23:48:06.244','2019-01-04 23:48:06.244',0,1,1,NULL,3,100),(1004,'2019-01-04 23:48:06.245','2019-01-04 23:48:06.245',0,1,1,NULL,4,100),(1005,'2019-01-04 23:48:06.245','2019-01-04 23:48:06.245',0,1,1,NULL,5,100),(1006,'2019-01-04 23:48:06.246','2019-01-04 23:48:06.246',0,1,1,NULL,6,100),(1007,'2019-01-04 23:48:06.246','2019-01-04 23:48:06.246',0,1,1,NULL,7,100),(1101,'2019-01-04 23:48:06.247','2019-01-04 23:48:06.247',0,1,1,NULL,101,1),(1102,'2019-01-04 23:48:06.248','2019-01-04 23:48:06.248',0,1,1,NULL,102,1),(1103,'2019-01-04 23:48:06.249','2019-01-04 23:48:06.249',0,1,1,NULL,103,1),(1104,'2019-01-04 23:48:06.250','2019-01-04 23:48:06.250',0,1,1,NULL,104,1),(1105,'2019-01-04 23:48:06.250','2019-01-04 23:48:06.250',0,1,1,NULL,105,1),(1106,'2019-01-04 23:48:06.251','2019-01-04 23:48:06.251',0,1,1,NULL,106,1),(1107,'2019-01-04 23:48:06.251','2019-01-04 23:48:06.251',0,1,1,NULL,107,1),(1201,'2019-01-04 23:48:06.265','2019-01-04 23:48:06.265',0,1,1,NULL,201,1),(1202,'2019-01-04 23:48:06.265','2019-01-04 23:48:06.265',0,1,1,NULL,202,1),(1203,'2019-01-04 23:48:06.266','2019-01-04 23:48:06.266',0,1,1,NULL,203,1),(1204,'2019-01-04 23:48:06.267','2019-01-04 23:48:06.267',0,1,1,NULL,204,1),(1205,'2019-01-04 23:48:06.267','2019-01-04 23:48:06.267',0,1,1,NULL,205,1),(1206,'2019-01-04 23:48:06.268','2019-01-04 23:48:06.268',0,1,1,NULL,206,1),(1207,'2019-01-04 23:48:06.268','2019-01-04 23:48:06.268',0,1,1,NULL,207,1),(1301,'2019-01-04 23:48:06.282','2019-01-04 23:48:06.282',0,1,1,NULL,301,1),(1302,'2019-01-04 23:48:06.282','2019-01-04 23:48:06.282',0,1,1,NULL,302,1),(1303,'2019-01-04 23:48:06.283','2019-01-04 23:48:06.283',0,1,1,NULL,303,1),(1304,'2019-01-04 23:48:06.283','2019-01-04 23:48:06.283',0,1,1,NULL,304,1),(1305,'2019-01-04 23:48:06.283','2019-01-04 23:48:06.283',0,1,1,NULL,305,1),(1306,'2019-01-04 23:48:06.284','2019-01-04 23:48:06.284',0,1,1,NULL,306,1),(1307,'2019-01-04 23:48:06.284','2019-01-04 23:48:06.284',0,1,1,NULL,307,1),(1401,'2019-01-04 23:48:06.301','2019-01-04 23:48:06.301',0,1,1,NULL,401,1),(1402,'2019-01-04 23:48:06.302','2019-01-04 23:48:06.302',0,1,1,NULL,402,1),(1403,'2019-01-04 23:48:06.302','2019-01-04 23:48:06.302',0,1,1,NULL,403,1),(1404,'2019-01-04 23:48:06.302','2019-01-04 23:48:06.302',0,1,1,NULL,404,1),(1405,'2019-01-04 23:48:06.303','2019-01-04 23:48:06.303',0,1,1,NULL,405,1),(1406,'2019-01-04 23:48:06.303','2019-01-04 23:48:06.303',0,1,1,NULL,406,1),(1407,'2019-01-04 23:48:06.304','2019-01-04 23:48:06.304',0,1,1,NULL,407,1),(1501,'2019-01-04 23:48:06.315','2019-01-04 23:48:06.315',0,1,1,NULL,501,1),(1502,'2019-01-04 23:48:06.315','2019-01-04 23:48:06.315',0,1,1,NULL,502,1),(1503,'2019-01-04 23:48:06.316','2019-01-04 23:48:06.316',0,1,1,NULL,503,1),(1504,'2019-01-04 23:48:06.317','2019-01-04 23:48:06.317',0,1,1,NULL,504,1),(1505,'2019-01-04 23:48:06.318','2019-01-04 23:48:06.318',0,1,1,NULL,505,1),(1506,'2019-01-04 23:48:06.319','2019-01-04 23:48:06.319',0,1,1,NULL,506,1),(1507,'2019-01-04 23:48:06.320','2019-01-04 23:48:06.320',0,1,1,NULL,507,1),(1601,'2019-01-04 23:48:06.331','2019-01-04 23:48:06.331',0,1,1,NULL,601,1),(1602,'2019-01-04 23:48:06.332','2019-01-04 23:48:06.332',0,1,1,NULL,602,1),(1603,'2019-01-04 23:48:06.332','2019-01-04 23:48:06.332',0,1,1,NULL,603,1),(1604,'2019-01-04 23:48:06.333','2019-01-04 23:48:06.333',0,1,1,NULL,604,1),(1605,'2019-01-04 23:48:06.334','2019-01-04 23:48:06.334',0,1,1,NULL,605,1),(1606,'2019-01-04 23:48:06.335','2019-01-04 23:48:06.335',0,1,1,NULL,606,1),(1607,'2019-01-04 23:48:06.336','2019-01-04 23:48:06.336',0,1,1,NULL,607,1),(1701,'2019-01-04 23:48:06.348','2019-01-04 23:48:06.348',0,1,1,NULL,701,1),(1702,'2019-01-04 23:48:06.349','2019-01-04 23:48:06.349',0,1,1,NULL,702,1),(1703,'2019-01-04 23:48:06.349','2019-01-04 23:48:06.349',0,1,1,NULL,703,1),(1704,'2019-01-04 23:48:06.349','2019-01-04 23:48:06.349',0,1,1,NULL,704,1),(1705,'2019-01-04 23:48:06.350','2019-01-04 23:48:06.350',0,1,1,NULL,705,1),(1706,'2019-01-04 23:48:06.350','2019-01-04 23:48:06.350',0,1,1,NULL,706,1),(1707,'2019-01-04 23:48:06.351','2019-01-04 23:48:06.351',0,1,1,NULL,707,1),(1801,'2019-01-04 23:48:06.368','2019-01-04 23:48:06.368',0,1,1,NULL,801,1),(1802,'2019-01-04 23:48:06.369','2019-01-04 23:48:06.369',0,1,1,NULL,802,1),(1803,'2019-01-04 23:48:06.369','2019-01-04 23:48:06.369',0,1,1,NULL,803,1),(1804,'2019-01-04 23:48:06.369','2019-01-04 23:48:06.369',0,1,1,NULL,804,1),(1805,'2019-01-04 23:48:06.370','2019-01-04 23:48:06.370',0,1,1,NULL,805,1),(1806,'2019-01-04 23:48:06.371','2019-01-04 23:48:06.371',0,1,1,NULL,806,1),(1807,'2019-01-04 23:48:06.371','2019-01-04 23:48:06.371',0,1,1,NULL,807,1),(1901,'2019-01-04 23:48:06.388','2019-01-04 23:48:06.388',0,1,1,NULL,901,1),(1902,'2019-01-04 23:48:06.389','2019-01-04 23:48:06.389',0,1,1,NULL,902,1),(1903,'2019-01-04 23:48:06.389','2019-01-04 23:48:06.389',0,1,1,NULL,903,1),(1904,'2019-01-04 23:48:06.390','2019-01-04 23:48:06.390',0,1,1,NULL,904,1),(1905,'2019-01-04 23:48:06.392','2019-01-04 23:48:06.392',0,1,1,NULL,905,1),(1906,'2019-01-04 23:48:06.394','2019-01-04 23:48:06.394',0,1,1,NULL,906,1),(1907,'2019-01-04 23:48:06.395','2019-01-04 23:48:06.395',0,1,1,NULL,907,1),(2101,'2019-01-04 23:48:06.252','2019-01-04 23:48:06.252',0,1,1,NULL,101,2),(2102,'2019-01-04 23:48:06.253','2019-01-04 23:48:06.253',0,1,1,NULL,102,2),(2103,'2019-01-04 23:48:06.254','2019-01-04 23:48:06.254',0,1,1,NULL,103,2),(2104,'2019-01-04 23:48:06.255','2019-01-04 23:48:06.255',0,1,1,NULL,104,2),(2105,'2019-01-04 23:48:06.255','2019-01-04 23:48:06.255',0,1,1,NULL,105,2),(2106,'2019-01-04 23:48:06.256','2019-01-04 23:48:06.256',0,1,1,NULL,106,2),(2107,'2019-01-04 23:48:06.256','2019-01-04 23:48:06.256',0,1,1,NULL,107,2),(2201,'2019-01-04 23:48:06.269','2019-01-04 23:48:06.269',0,1,1,NULL,201,2),(2202,'2019-01-04 23:48:06.269','2019-01-04 23:48:06.269',0,1,1,NULL,202,2),(2203,'2019-01-04 23:48:06.270','2019-01-04 23:48:06.270',0,1,1,NULL,203,2),(2204,'2019-01-04 23:48:06.271','2019-01-04 23:48:06.271',0,1,1,NULL,204,2),(2205,'2019-01-04 23:48:06.272','2019-01-04 23:48:06.272',0,1,1,NULL,205,2),(2206,'2019-01-04 23:48:06.273','2019-01-04 23:48:06.273',0,1,1,NULL,206,2),(2207,'2019-01-04 23:48:06.274','2019-01-04 23:48:06.274',0,1,1,NULL,207,2),(2301,'2019-01-04 23:48:06.285','2019-01-04 23:48:06.285',0,1,1,NULL,301,2),(2302,'2019-01-04 23:48:06.285','2019-01-04 23:48:06.285',0,1,1,NULL,302,2),(2303,'2019-01-04 23:48:06.286','2019-01-04 23:48:06.286',0,1,1,NULL,303,2),(2304,'2019-01-04 23:48:06.289','2019-01-04 23:48:06.289',0,1,1,NULL,304,2),(2305,'2019-01-04 23:48:06.290','2019-01-04 23:48:06.290',0,1,1,NULL,305,2),(2306,'2019-01-04 23:48:06.291','2019-01-04 23:48:06.291',0,1,1,NULL,306,2),(2307,'2019-01-04 23:48:06.291','2019-01-04 23:48:06.291',0,1,1,NULL,307,2),(2401,'2019-01-04 23:48:06.304','2019-01-04 23:48:06.304',0,1,1,NULL,401,2),(2402,'2019-01-04 23:48:06.305','2019-01-04 23:48:06.305',0,1,1,NULL,402,2),(2403,'2019-01-04 23:48:06.305','2019-01-04 23:48:06.305',0,1,1,NULL,403,2),(2404,'2019-01-04 23:48:06.305','2019-01-04 23:48:06.305',0,1,1,NULL,404,2),(2405,'2019-01-04 23:48:06.306','2019-01-04 23:48:06.306',0,1,1,NULL,405,2),(2406,'2019-01-04 23:48:06.306','2019-01-04 23:48:06.306',0,1,1,NULL,406,2),(2407,'2019-01-04 23:48:06.307','2019-01-04 23:48:06.307',0,1,1,NULL,407,2),(2501,'2019-01-04 23:48:06.320','2019-01-04 23:48:06.320',0,1,1,NULL,501,2),(2502,'2019-01-04 23:48:06.321','2019-01-04 23:48:06.321',0,1,1,NULL,502,2),(2503,'2019-01-04 23:48:06.321','2019-01-04 23:48:06.321',0,1,1,NULL,503,2),(2504,'2019-01-04 23:48:06.322','2019-01-04 23:48:06.322',0,1,1,NULL,504,2),(2505,'2019-01-04 23:48:06.322','2019-01-04 23:48:06.322',0,1,1,NULL,505,2),(2506,'2019-01-04 23:48:06.322','2019-01-04 23:48:06.322',0,1,1,NULL,506,2),(2507,'2019-01-04 23:48:06.323','2019-01-04 23:48:06.323',0,1,1,NULL,507,2),(2601,'2019-01-04 23:48:06.336','2019-01-04 23:48:06.336',0,1,1,NULL,601,2),(2602,'2019-01-04 23:48:06.337','2019-01-04 23:48:06.337',0,1,1,NULL,602,2),(2603,'2019-01-04 23:48:06.337','2019-01-04 23:48:06.337',0,1,1,NULL,603,2),(2604,'2019-01-04 23:48:06.338','2019-01-04 23:48:06.338',0,1,1,NULL,604,2),(2605,'2019-01-04 23:48:06.338','2019-01-04 23:48:06.338',0,1,1,NULL,605,2),(2606,'2019-01-04 23:48:06.339','2019-01-04 23:48:06.339',0,1,1,NULL,606,2),(2607,'2019-01-04 23:48:06.340','2019-01-04 23:48:06.340',0,1,1,NULL,607,2),(2701,'2019-01-04 23:48:06.352','2019-01-04 23:48:06.352',0,1,1,NULL,701,2),(2702,'2019-01-04 23:48:06.352','2019-01-04 23:48:06.352',0,1,1,NULL,702,2),(2703,'2019-01-04 23:48:06.352','2019-01-04 23:48:06.352',0,1,1,NULL,703,2),(2704,'2019-01-04 23:48:06.353','2019-01-04 23:48:06.353',0,1,1,NULL,704,2),(2705,'2019-01-04 23:48:06.353','2019-01-04 23:48:06.353',0,1,1,NULL,705,2),(2706,'2019-01-04 23:48:06.354','2019-01-04 23:48:06.354',0,1,1,NULL,706,2),(2707,'2019-01-04 23:48:06.354','2019-01-04 23:48:06.354',0,1,1,NULL,707,2),(2801,'2019-01-04 23:48:06.372','2019-01-04 23:48:06.372',0,1,1,NULL,801,2),(2802,'2019-01-04 23:48:06.372','2019-01-04 23:48:06.372',0,1,1,NULL,802,2),(2803,'2019-01-04 23:48:06.372','2019-01-04 23:48:06.372',0,1,1,NULL,803,2),(2804,'2019-01-04 23:48:06.373','2019-01-04 23:48:06.373',0,1,1,NULL,804,2),(2805,'2019-01-04 23:48:06.373','2019-01-04 23:48:06.373',0,1,1,NULL,805,2),(2806,'2019-01-04 23:48:06.374','2019-01-04 23:48:06.374',0,1,1,NULL,806,2),(2807,'2019-01-04 23:48:06.374','2019-01-04 23:48:06.374',0,1,1,NULL,807,2),(2901,'2019-01-04 23:48:06.395','2019-01-04 23:48:06.395',0,1,1,NULL,901,2),(2902,'2019-01-04 23:48:06.398','2019-01-04 23:48:06.398',0,1,1,NULL,902,2),(2903,'2019-01-04 23:48:06.398','2019-01-04 23:48:06.398',0,1,1,NULL,903,2),(2904,'2019-01-04 23:48:06.400','2019-01-04 23:48:06.400',0,1,1,NULL,904,2),(2905,'2019-01-04 23:48:06.401','2019-01-04 23:48:06.401',0,1,1,NULL,905,2),(2906,'2019-01-04 23:48:06.402','2019-01-04 23:48:06.402',0,1,1,NULL,906,2),(2907,'2019-01-04 23:48:06.403','2019-01-04 23:48:06.403',0,1,1,NULL,907,2),(10101,'2019-01-04 23:48:06.257','2019-01-04 23:48:06.257',0,1,1,NULL,101,10),(10102,'2019-01-04 23:48:06.257','2019-01-04 23:48:06.257',0,1,1,NULL,102,10),(10103,'2019-01-04 23:48:06.258','2019-01-04 23:48:06.258',0,1,1,NULL,103,10),(10104,'2019-01-04 23:48:06.258','2019-01-04 23:48:06.258',0,1,1,NULL,104,10),(10105,'2019-01-04 23:48:06.258','2019-01-04 23:48:06.258',0,1,1,NULL,105,10),(10106,'2019-01-04 23:48:06.259','2019-01-04 23:48:06.259',0,1,1,NULL,106,10),(10107,'2019-01-04 23:48:06.259','2019-01-04 23:48:06.259',0,1,1,NULL,107,10),(10201,'2019-01-04 23:48:06.275','2019-01-04 23:48:06.275',0,1,1,NULL,201,10),(10202,'2019-01-04 23:48:06.275','2019-01-04 23:48:06.275',0,1,1,NULL,202,10),(10203,'2019-01-04 23:48:06.276','2019-01-04 23:48:06.276',0,1,1,NULL,203,10),(10204,'2019-01-04 23:48:06.276','2019-01-04 23:48:06.276',0,1,1,NULL,204,10),(10205,'2019-01-04 23:48:06.277','2019-01-04 23:48:06.277',0,1,1,NULL,205,10),(10206,'2019-01-04 23:48:06.278','2019-01-04 23:48:06.278',0,1,1,NULL,206,10),(10207,'2019-01-04 23:48:06.278','2019-01-04 23:48:06.278',0,1,1,NULL,207,10),(10301,'2019-01-04 23:48:06.291','2019-01-04 23:48:06.291',0,1,1,NULL,301,10),(10302,'2019-01-04 23:48:06.292','2019-01-04 23:48:06.292',0,1,1,NULL,302,10),(10303,'2019-01-04 23:48:06.292','2019-01-04 23:48:06.292',0,1,1,NULL,303,10),(10304,'2019-01-04 23:48:06.293','2019-01-04 23:48:06.293',0,1,1,NULL,304,10),(10305,'2019-01-04 23:48:06.295','2019-01-04 23:48:06.295',0,1,1,NULL,305,10),(10306,'2019-01-04 23:48:06.295','2019-01-04 23:48:06.295',0,1,1,NULL,306,10),(10307,'2019-01-04 23:48:06.296','2019-01-04 23:48:06.296',0,1,1,NULL,307,10),(10401,'2019-01-04 23:48:06.307','2019-01-04 23:48:06.307',0,1,1,NULL,401,10),(10402,'2019-01-04 23:48:06.307','2019-01-04 23:48:06.307',0,1,1,NULL,402,10),(10403,'2019-01-04 23:48:06.308','2019-01-04 23:48:06.308',0,1,1,NULL,403,10),(10404,'2019-01-04 23:48:06.308','2019-01-04 23:48:06.308',0,1,1,NULL,404,10),(10405,'2019-01-04 23:48:06.309','2019-01-04 23:48:06.309',0,1,1,NULL,405,10),(10406,'2019-01-04 23:48:06.309','2019-01-04 23:48:06.309',0,1,1,NULL,406,10),(10407,'2019-01-04 23:48:06.310','2019-01-04 23:48:06.310',0,1,1,NULL,407,10),(10501,'2019-01-04 23:48:06.323','2019-01-04 23:48:06.323',0,1,1,NULL,501,10),(10502,'2019-01-04 23:48:06.324','2019-01-04 23:48:06.324',0,1,1,NULL,502,10),(10503,'2019-01-04 23:48:06.324','2019-01-04 23:48:06.324',0,1,1,NULL,503,10),(10504,'2019-01-04 23:48:06.325','2019-01-04 23:48:06.325',0,1,1,NULL,504,10),(10505,'2019-01-04 23:48:06.325','2019-01-04 23:48:06.325',0,1,1,NULL,505,10),(10506,'2019-01-04 23:48:06.326','2019-01-04 23:48:06.326',0,1,1,NULL,506,10),(10507,'2019-01-04 23:48:06.326','2019-01-04 23:48:06.326',0,1,1,NULL,507,10),(10601,'2019-01-04 23:48:06.341','2019-01-04 23:48:06.341',0,1,1,NULL,601,10),(10602,'2019-01-04 23:48:06.341','2019-01-04 23:48:06.341',0,1,1,NULL,602,10),(10603,'2019-01-04 23:48:06.342','2019-01-04 23:48:06.342',0,1,1,NULL,603,10),(10604,'2019-01-04 23:48:06.342','2019-01-04 23:48:06.342',0,1,1,NULL,604,10),(10605,'2019-01-04 23:48:06.343','2019-01-04 23:48:06.343',0,1,1,NULL,605,10),(10606,'2019-01-04 23:48:06.344','2019-01-04 23:48:06.344',0,1,1,NULL,606,10),(10607,'2019-01-04 23:48:06.345','2019-01-04 23:48:06.345',0,1,1,NULL,607,10),(10701,'2019-01-04 23:48:06.355','2019-01-04 23:48:06.355',0,1,1,NULL,701,10),(10702,'2019-01-04 23:48:06.355','2019-01-04 23:48:06.355',0,1,1,NULL,702,10),(10703,'2019-01-04 23:48:06.356','2019-01-04 23:48:06.356',0,1,1,NULL,703,10),(10704,'2019-01-04 23:48:06.356','2019-01-04 23:48:06.356',0,1,1,NULL,704,10),(10705,'2019-01-04 23:48:06.356','2019-01-04 23:48:06.356',0,1,1,NULL,705,10),(10706,'2019-01-04 23:48:06.357','2019-01-04 23:48:06.357',0,1,1,NULL,706,10),(10707,'2019-01-04 23:48:06.358','2019-01-04 23:48:06.358',0,1,1,NULL,707,10),(10801,'2019-01-04 23:48:06.375','2019-01-04 23:48:06.375',0,1,1,NULL,801,10),(10802,'2019-01-04 23:48:06.376','2019-01-04 23:48:06.376',0,1,1,NULL,802,10),(10803,'2019-01-04 23:48:06.376','2019-01-04 23:48:06.376',0,1,1,NULL,803,10),(10804,'2019-01-04 23:48:06.377','2019-01-04 23:48:06.377',0,1,1,NULL,804,10),(10805,'2019-01-04 23:48:06.377','2019-01-04 23:48:06.377',0,1,1,NULL,805,10),(10806,'2019-01-04 23:48:06.378','2019-01-04 23:48:06.378',0,1,1,NULL,806,10),(10807,'2019-01-04 23:48:06.379','2019-01-04 23:48:06.379',0,1,1,NULL,807,10),(10901,'2019-01-04 23:48:06.404','2019-01-04 23:48:06.404',0,1,1,NULL,901,10),(10902,'2019-01-04 23:48:06.405','2019-01-04 23:48:06.405',0,1,1,NULL,902,10),(10903,'2019-01-04 23:48:06.405','2019-01-04 23:48:06.405',0,1,1,NULL,903,10),(10904,'2019-01-04 23:48:06.406','2019-01-04 23:48:06.406',0,1,1,NULL,904,10),(10905,'2019-01-04 23:48:06.407','2019-01-04 23:48:06.407',0,1,1,NULL,905,10),(10906,'2019-01-04 23:48:06.408','2019-01-04 23:48:06.408',0,1,1,NULL,906,10),(10907,'2019-01-04 23:48:06.408','2019-01-04 23:48:06.408',0,1,1,NULL,907,10),(11001,'2019-01-04 23:48:06.414','2019-01-04 23:48:06.414',0,1,1,NULL,1001,1),(11002,'2019-01-04 23:48:06.414','2019-01-04 23:48:06.414',0,1,1,NULL,1002,1),(11003,'2019-01-04 23:48:06.415','2019-01-04 23:48:06.415',0,1,1,NULL,1003,1),(11004,'2019-01-04 23:48:06.416','2019-01-04 23:48:06.416',0,1,1,NULL,1004,1),(11005,'2019-01-04 23:48:06.416','2019-01-04 23:48:06.416',0,1,1,NULL,1005,1),(11006,'2019-01-04 23:48:06.417','2019-01-04 23:48:06.417',0,1,1,NULL,1006,1),(11007,'2019-01-04 23:48:06.417','2019-01-04 23:48:06.417',0,1,1,NULL,1007,1),(11101,'2019-01-04 23:48:06.430','2019-01-04 23:48:06.430',0,1,1,NULL,1101,1),(11102,'2019-01-04 23:48:06.431','2019-01-04 23:48:06.431',0,1,1,NULL,1102,1),(11103,'2019-01-04 23:48:06.431','2019-01-04 23:48:06.431',0,1,1,NULL,1103,1),(11104,'2019-01-04 23:48:06.432','2019-01-04 23:48:06.432',0,1,1,NULL,1104,1),(11105,'2019-01-04 23:48:06.433','2019-01-04 23:48:06.433',0,1,1,NULL,1105,1),(11106,'2019-01-04 23:48:06.433','2019-01-04 23:48:06.433',0,1,1,NULL,1106,1),(11107,'2019-01-04 23:48:06.434','2019-01-04 23:48:06.434',0,1,1,NULL,1107,1),(11201,'2019-01-04 23:48:06.446','2019-01-04 23:48:06.446',0,1,1,NULL,1201,1),(11202,'2019-01-04 23:48:06.447','2019-01-04 23:48:06.447',0,1,1,NULL,1202,1),(11203,'2019-01-04 23:48:06.448','2019-01-04 23:48:06.448',0,1,1,NULL,1203,1),(11204,'2019-01-04 23:48:06.449','2019-01-04 23:48:06.449',0,1,1,NULL,1204,1),(11205,'2019-01-04 23:48:06.450','2019-01-04 23:48:06.450',0,1,1,NULL,1205,1),(11206,'2019-01-04 23:48:06.450','2019-01-04 23:48:06.450',0,1,1,NULL,1206,1),(11207,'2019-01-04 23:48:06.451','2019-01-04 23:48:06.451',0,1,1,NULL,1207,1),(11301,'2019-01-04 23:48:06.469','2019-01-04 23:48:06.469',0,1,1,NULL,1301,1),(11302,'2019-01-04 23:48:06.469','2019-01-04 23:48:06.469',0,1,1,NULL,1302,1),(11303,'2019-01-04 23:48:06.470','2019-01-04 23:48:06.470',0,1,1,NULL,1303,1),(11304,'2019-01-04 23:48:06.472','2019-01-04 23:48:06.472',0,1,1,NULL,1304,1),(11305,'2019-01-04 23:48:06.473','2019-01-04 23:48:06.473',0,1,1,NULL,1305,1),(11306,'2019-01-04 23:48:06.473','2019-01-04 23:48:06.473',0,1,1,NULL,1306,1),(11307,'2019-01-04 23:48:06.474','2019-01-04 23:48:06.474',0,1,1,NULL,1307,1),(11401,'2019-01-04 23:48:06.486','2019-01-04 23:48:06.486',0,1,1,NULL,1401,1),(11402,'2019-01-04 23:48:06.487','2019-01-04 23:48:06.487',0,1,1,NULL,1402,1),(11403,'2019-01-04 23:48:06.487','2019-01-04 23:48:06.487',0,1,1,NULL,1403,1),(11404,'2019-01-04 23:48:06.488','2019-01-04 23:48:06.488',0,1,1,NULL,1404,1),(11405,'2019-01-04 23:48:06.488','2019-01-04 23:48:06.488',0,1,1,NULL,1405,1),(11406,'2019-01-04 23:48:06.489','2019-01-04 23:48:06.489',0,1,1,NULL,1406,1),(11407,'2019-01-04 23:48:06.489','2019-01-04 23:48:06.489',0,1,1,NULL,1407,1),(11501,'2019-01-04 23:48:06.503','2019-01-04 23:48:06.503',0,1,1,NULL,1501,1),(11502,'2019-01-04 23:48:06.503','2019-01-04 23:48:06.503',0,1,1,NULL,1502,1),(11503,'2019-01-04 23:48:06.504','2019-01-04 23:48:06.504',0,1,1,NULL,1503,1),(11504,'2019-01-04 23:48:06.504','2019-01-04 23:48:06.504',0,1,1,NULL,1504,1),(11505,'2019-01-04 23:48:06.505','2019-01-04 23:48:06.505',0,1,1,NULL,1505,1),(11506,'2019-01-04 23:48:06.506','2019-01-04 23:48:06.506',0,1,1,NULL,1506,1),(11507,'2019-01-04 23:48:06.506','2019-01-04 23:48:06.506',0,1,1,NULL,1507,1),(11601,'2019-01-04 23:48:06.517','2019-01-04 23:48:06.517',0,1,1,NULL,1601,1),(11602,'2019-01-04 23:48:06.518','2019-01-04 23:48:06.518',0,1,1,NULL,1602,1),(11603,'2019-01-04 23:48:06.519','2019-01-04 23:48:06.519',0,1,1,NULL,1603,1),(11604,'2019-01-04 23:48:06.520','2019-01-04 23:48:06.520',0,1,1,NULL,1604,1),(11605,'2019-01-04 23:48:06.520','2019-01-04 23:48:06.520',0,1,1,NULL,1605,1),(11606,'2019-01-04 23:48:06.521','2019-01-04 23:48:06.521',0,1,1,NULL,1606,1),(11607,'2019-01-04 23:48:06.522','2019-01-04 23:48:06.522',0,1,1,NULL,1607,1),(11701,'2019-01-04 23:48:06.534','2019-01-04 23:48:06.534',0,1,1,NULL,1701,1),(11702,'2019-01-04 23:48:06.534','2019-01-04 23:48:06.534',0,1,1,NULL,1702,1),(11703,'2019-01-04 23:48:06.535','2019-01-04 23:48:06.535',0,1,1,NULL,1703,1),(11704,'2019-01-04 23:48:06.535','2019-01-04 23:48:06.535',0,1,1,NULL,1704,1),(11705,'2019-01-04 23:48:06.536','2019-01-04 23:48:06.536',0,1,1,NULL,1705,1),(11706,'2019-01-04 23:48:06.537','2019-01-04 23:48:06.537',0,1,1,NULL,1706,1),(11707,'2019-01-04 23:48:06.537','2019-01-04 23:48:06.537',0,1,1,NULL,1707,1),(11801,'2019-01-04 23:48:06.552','2019-01-04 23:48:06.552',0,1,1,NULL,1801,1),(11802,'2019-01-04 23:48:06.553','2019-01-04 23:48:06.553',0,1,1,NULL,1802,1),(11803,'2019-01-04 23:48:06.553','2019-01-04 23:48:06.553',0,1,1,NULL,1803,1),(11804,'2019-01-04 23:48:06.554','2019-01-04 23:48:06.554',0,1,1,NULL,1804,1),(11805,'2019-01-04 23:48:06.554','2019-01-04 23:48:06.554',0,1,1,NULL,1805,1),(11806,'2019-01-04 23:48:06.555','2019-01-04 23:48:06.555',0,1,1,NULL,1806,1),(11807,'2019-01-04 23:48:06.555','2019-01-04 23:48:06.555',0,1,1,NULL,1807,1),(11901,'2019-01-04 23:48:06.572','2019-01-04 23:48:06.572',0,1,1,NULL,1901,1),(11902,'2019-01-04 23:48:06.572','2019-01-04 23:48:06.572',0,1,1,NULL,1902,1),(11903,'2019-01-04 23:48:06.573','2019-01-04 23:48:06.573',0,1,1,NULL,1903,1),(11904,'2019-01-04 23:48:06.573','2019-01-04 23:48:06.573',0,1,1,NULL,1904,1),(11905,'2019-01-04 23:48:06.574','2019-01-04 23:48:06.574',0,1,1,NULL,1905,1),(11906,'2019-01-04 23:48:06.575','2019-01-04 23:48:06.575',0,1,1,NULL,1906,1),(11907,'2019-01-04 23:48:06.575','2019-01-04 23:48:06.575',0,1,1,NULL,1907,1),(12001,'2019-01-04 23:48:06.590','2019-01-04 23:48:06.590',0,1,1,NULL,2001,1),(12002,'2019-01-04 23:48:06.591','2019-01-04 23:48:06.591',0,1,1,NULL,2002,1),(12003,'2019-01-04 23:48:06.591','2019-01-04 23:48:06.591',0,1,1,NULL,2003,1),(12004,'2019-01-04 23:48:06.592','2019-01-04 23:48:06.592',0,1,1,NULL,2004,1),(12005,'2019-01-04 23:48:06.593','2019-01-04 23:48:06.593',0,1,1,NULL,2005,1),(12006,'2019-01-04 23:48:06.593','2019-01-04 23:48:06.593',0,1,1,NULL,2006,1),(12007,'2019-01-04 23:48:06.594','2019-01-04 23:48:06.594',0,1,1,NULL,2007,1),(12101,'2019-01-04 23:48:06.608','2019-01-04 23:48:06.608',0,1,1,NULL,2101,1),(12102,'2019-01-04 23:48:06.609','2019-01-04 23:48:06.609',0,1,1,NULL,2102,1),(12103,'2019-01-04 23:48:06.609','2019-01-04 23:48:06.609',0,1,1,NULL,2103,1),(12104,'2019-01-04 23:48:06.610','2019-01-04 23:48:06.610',0,1,1,NULL,2104,1),(12105,'2019-01-04 23:48:06.610','2019-01-04 23:48:06.610',0,1,1,NULL,2105,1),(12106,'2019-01-04 23:48:06.612','2019-01-04 23:48:06.612',0,1,1,NULL,2106,1),(12107,'2019-01-04 23:48:06.614','2019-01-04 23:48:06.614',0,1,1,NULL,2107,1),(12201,'2019-01-04 23:48:06.629','2019-01-04 23:48:06.629',0,1,1,NULL,2201,1),(12202,'2019-01-04 23:48:06.629','2019-01-04 23:48:06.629',0,1,1,NULL,2202,1),(12203,'2019-01-04 23:48:06.630','2019-01-04 23:48:06.630',0,1,1,NULL,2203,1),(12204,'2019-01-04 23:48:06.630','2019-01-04 23:48:06.630',0,1,1,NULL,2204,1),(12205,'2019-01-04 23:48:06.631','2019-01-04 23:48:06.631',0,1,1,NULL,2205,1),(12206,'2019-01-04 23:48:06.631','2019-01-04 23:48:06.631',0,1,1,NULL,2206,1),(12207,'2019-01-04 23:48:06.632','2019-01-04 23:48:06.632',0,1,1,NULL,2207,1),(12301,'2019-01-04 23:48:06.645','2019-01-04 23:48:06.645',0,1,1,NULL,2301,1),(12302,'2019-01-04 23:48:06.645','2019-01-04 23:48:06.645',0,1,1,NULL,2302,1),(12303,'2019-01-04 23:48:06.646','2019-01-04 23:48:06.646',0,1,1,NULL,2303,1),(12304,'2019-01-04 23:48:06.647','2019-01-04 23:48:06.647',0,1,1,NULL,2304,1),(12305,'2019-01-04 23:48:06.648','2019-01-04 23:48:06.648',0,1,1,NULL,2305,1),(12306,'2019-01-04 23:48:06.649','2019-01-04 23:48:06.649',0,1,1,NULL,2306,1),(12307,'2019-01-04 23:48:06.650','2019-01-04 23:48:06.650',0,1,1,NULL,2307,1),(12401,'2019-01-04 23:48:06.666','2019-01-04 23:48:06.666',0,1,1,NULL,2401,1),(12402,'2019-01-04 23:48:06.666','2019-01-04 23:48:06.666',0,1,1,NULL,2402,1),(12403,'2019-01-04 23:48:06.667','2019-01-04 23:48:06.667',0,1,1,NULL,2403,1),(12404,'2019-01-04 23:48:06.668','2019-01-04 23:48:06.668',0,1,1,NULL,2404,1),(12405,'2019-01-04 23:48:06.669','2019-01-04 23:48:06.669',0,1,1,NULL,2405,1),(12406,'2019-01-04 23:48:06.669','2019-01-04 23:48:06.669',0,1,1,NULL,2406,1),(12407,'2019-01-04 23:48:06.670','2019-01-04 23:48:06.670',0,1,1,NULL,2407,1),(12501,'2019-01-04 23:48:06.683','2019-01-04 23:48:06.683',0,1,1,NULL,2501,1),(12502,'2019-01-04 23:48:06.684','2019-01-04 23:48:06.684',0,1,1,NULL,2502,1),(12503,'2019-01-04 23:48:06.685','2019-01-04 23:48:06.685',0,1,1,NULL,2503,1),(12504,'2019-01-04 23:48:06.685','2019-01-04 23:48:06.685',0,1,1,NULL,2504,1),(12505,'2019-01-04 23:48:06.686','2019-01-04 23:48:06.686',0,1,1,NULL,2505,1),(12506,'2019-01-04 23:48:06.686','2019-01-04 23:48:06.686',0,1,1,NULL,2506,1),(12507,'2019-01-04 23:48:06.687','2019-01-04 23:48:06.687',0,1,1,NULL,2507,1),(12601,'2019-01-04 23:48:06.700','2019-01-04 23:48:06.700',0,1,1,NULL,2601,1),(12602,'2019-01-04 23:48:06.701','2019-01-04 23:48:06.701',0,1,1,NULL,2602,1),(12603,'2019-01-04 23:48:06.701','2019-01-04 23:48:06.701',0,1,1,NULL,2603,1),(12604,'2019-01-04 23:48:06.702','2019-01-04 23:48:06.702',0,1,1,NULL,2604,1),(12605,'2019-01-04 23:48:06.702','2019-01-04 23:48:06.702',0,1,1,NULL,2605,1),(12606,'2019-01-04 23:48:06.703','2019-01-04 23:48:06.703',0,1,1,NULL,2606,1),(12607,'2019-01-04 23:48:06.704','2019-01-04 23:48:06.704',0,1,1,NULL,2607,1),(12701,'2019-01-04 23:48:06.719','2019-01-04 23:48:06.719',0,1,1,NULL,2701,1),(12702,'2019-01-04 23:48:06.719','2019-01-04 23:48:06.719',0,1,1,NULL,2702,1),(12703,'2019-01-04 23:48:06.719','2019-01-04 23:48:06.719',0,1,1,NULL,2703,1),(12704,'2019-01-04 23:48:06.720','2019-01-04 23:48:06.720',0,1,1,NULL,2704,1),(12705,'2019-01-04 23:48:06.720','2019-01-04 23:48:06.720',0,1,1,NULL,2705,1),(12706,'2019-01-04 23:48:06.721','2019-01-04 23:48:06.721',0,1,1,NULL,2706,1),(12707,'2019-01-04 23:48:06.721','2019-01-04 23:48:06.721',0,1,1,NULL,2707,1),(12801,'2019-01-04 23:48:06.735','2019-01-04 23:48:06.735',0,1,1,NULL,2801,1),(12802,'2019-01-04 23:48:06.736','2019-01-04 23:48:06.736',0,1,1,NULL,2802,1),(12803,'2019-01-04 23:48:06.737','2019-01-04 23:48:06.737',0,1,1,NULL,2803,1),(12804,'2019-01-04 23:48:06.738','2019-01-04 23:48:06.738',0,1,1,NULL,2804,1),(12805,'2019-01-04 23:48:06.738','2019-01-04 23:48:06.738',0,1,1,NULL,2805,1),(12806,'2019-01-04 23:48:06.739','2019-01-04 23:48:06.739',0,1,1,NULL,2806,1),(12807,'2019-01-04 23:48:06.739','2019-01-04 23:48:06.739',0,1,1,NULL,2807,1),(12901,'2019-01-04 23:48:06.751','2019-01-04 23:48:06.751',0,1,1,NULL,2901,1),(12902,'2019-01-04 23:48:06.753','2019-01-04 23:48:06.753',0,1,1,NULL,2902,1),(12903,'2019-01-04 23:48:06.753','2019-01-04 23:48:06.753',0,1,1,NULL,2903,1),(12904,'2019-01-04 23:48:06.754','2019-01-04 23:48:06.754',0,1,1,NULL,2904,1),(12905,'2019-01-04 23:48:06.755','2019-01-04 23:48:06.755',0,1,1,NULL,2905,1),(12906,'2019-01-04 23:48:06.755','2019-01-04 23:48:06.755',0,1,1,NULL,2906,1),(12907,'2019-01-04 23:48:06.756','2019-01-04 23:48:06.756',0,1,1,NULL,2907,1),(13001,'2019-01-04 23:48:06.767','2019-01-04 23:48:06.767',0,1,1,NULL,3001,1),(13002,'2019-01-04 23:48:06.768','2019-01-04 23:48:06.768',0,1,1,NULL,3002,1),(13003,'2019-01-04 23:48:06.769','2019-01-04 23:48:06.769',0,1,1,NULL,3003,1),(13004,'2019-01-04 23:48:06.769','2019-01-04 23:48:06.769',0,1,1,NULL,3004,1),(13005,'2019-01-04 23:48:06.769','2019-01-04 23:48:06.769',0,1,1,NULL,3005,1),(13006,'2019-01-04 23:48:06.770','2019-01-04 23:48:06.770',0,1,1,NULL,3006,1),(13007,'2019-01-04 23:48:06.770','2019-01-04 23:48:06.770',0,1,1,NULL,3007,1),(13101,'2019-01-04 23:48:06.783','2019-01-04 23:48:06.783',0,1,1,NULL,3101,1),(13102,'2019-01-04 23:48:06.783','2019-01-04 23:48:06.783',0,1,1,NULL,3102,1),(13103,'2019-01-04 23:48:06.784','2019-01-04 23:48:06.784',0,1,1,NULL,3103,1),(13104,'2019-01-04 23:48:06.784','2019-01-04 23:48:06.784',0,1,1,NULL,3104,1),(13105,'2019-01-04 23:48:06.785','2019-01-04 23:48:06.785',0,1,1,NULL,3105,1),(13106,'2019-01-04 23:48:06.785','2019-01-04 23:48:06.785',0,1,1,NULL,3106,1),(13107,'2019-01-04 23:48:06.785','2019-01-04 23:48:06.785',0,1,1,NULL,3107,1),(13201,'2019-01-04 23:48:06.793','2019-01-04 23:48:06.793',0,1,1,NULL,3201,1),(13202,'2019-01-04 23:48:06.794','2019-01-04 23:48:06.794',0,1,1,NULL,3202,1),(13203,'2019-01-04 23:48:06.794','2019-01-04 23:48:06.794',0,1,1,NULL,3203,1),(13204,'2019-01-04 23:48:06.794','2019-01-04 23:48:06.794',0,1,1,NULL,3204,1),(13205,'2019-01-04 23:48:06.795','2019-01-04 23:48:06.795',0,1,1,NULL,3205,1),(13206,'2019-01-04 23:48:06.795','2019-01-04 23:48:06.795',0,1,1,NULL,3206,1),(13207,'2019-01-04 23:48:06.796','2019-01-04 23:48:06.796',0,1,1,NULL,3207,1),(13301,'2019-01-04 23:48:06.810','2019-01-04 23:48:06.810',0,1,1,NULL,3301,1),(13302,'2019-01-04 23:48:06.810','2019-01-04 23:48:06.810',0,1,1,NULL,3302,1),(13303,'2019-01-04 23:48:06.811','2019-01-04 23:48:06.811',0,1,1,NULL,3303,1),(13304,'2019-01-04 23:48:06.811','2019-01-04 23:48:06.811',0,1,1,NULL,3304,1),(13305,'2019-01-04 23:48:06.811','2019-01-04 23:48:06.811',0,1,1,NULL,3305,1),(13306,'2019-01-04 23:48:06.812','2019-01-04 23:48:06.812',0,1,1,NULL,3306,1),(13307,'2019-01-04 23:48:06.812','2019-01-04 23:48:06.812',0,1,1,NULL,3307,1),(13401,'2019-01-04 23:48:06.825','2019-01-04 23:48:06.825',0,1,1,NULL,3401,1),(13402,'2019-01-04 23:48:06.826','2019-01-04 23:48:06.826',0,1,1,NULL,3402,1),(13403,'2019-01-04 23:48:06.826','2019-01-04 23:48:06.826',0,1,1,NULL,3403,1),(13404,'2019-01-04 23:48:06.826','2019-01-04 23:48:06.826',0,1,1,NULL,3404,1),(13405,'2019-01-04 23:48:06.827','2019-01-04 23:48:06.827',0,1,1,NULL,3405,1),(13406,'2019-01-04 23:48:06.828','2019-01-04 23:48:06.828',0,1,1,NULL,3406,1),(13407,'2019-01-04 23:48:06.829','2019-01-04 23:48:06.829',0,1,1,NULL,3407,1),(13501,'2019-01-04 23:48:06.837','2019-01-04 23:48:06.837',0,1,1,NULL,3501,1),(13502,'2019-01-04 23:48:06.837','2019-01-04 23:48:06.837',0,1,1,NULL,3502,1),(13503,'2019-01-04 23:48:06.837','2019-01-04 23:48:06.837',0,1,1,NULL,3503,1),(13504,'2019-01-04 23:48:06.838','2019-01-04 23:48:06.838',0,1,1,NULL,3504,1),(13505,'2019-01-04 23:48:06.838','2019-01-04 23:48:06.838',0,1,1,NULL,3505,1),(13506,'2019-01-04 23:48:06.839','2019-01-04 23:48:06.839',0,1,1,NULL,3506,1),(13507,'2019-01-04 23:48:06.840','2019-01-04 23:48:06.840',0,1,1,NULL,3507,1),(13601,'2019-01-04 23:48:06.848','2019-01-04 23:48:06.848',0,1,1,NULL,3601,1),(13602,'2019-01-04 23:48:06.849','2019-01-04 23:48:06.849',0,1,1,NULL,3602,1),(13603,'2019-01-04 23:48:06.849','2019-01-04 23:48:06.849',0,1,1,NULL,3603,1),(13604,'2019-01-04 23:48:06.849','2019-01-04 23:48:06.849',0,1,1,NULL,3604,1),(13605,'2019-01-04 23:48:06.850','2019-01-04 23:48:06.850',0,1,1,NULL,3605,1),(13606,'2019-01-04 23:48:06.850','2019-01-04 23:48:06.850',0,1,1,NULL,3606,1),(13607,'2019-01-04 23:48:06.850','2019-01-04 23:48:06.850',0,1,1,NULL,3607,1),(13701,'2019-01-04 23:48:06.858','2019-01-04 23:48:06.858',0,1,1,NULL,3701,1),(13702,'2019-01-04 23:48:06.858','2019-01-04 23:48:06.858',0,1,1,NULL,3702,1),(13703,'2019-01-04 23:48:06.858','2019-01-04 23:48:06.858',0,1,1,NULL,3703,1),(13704,'2019-01-04 23:48:06.858','2019-01-04 23:48:06.858',0,1,1,NULL,3704,1),(13705,'2019-01-04 23:48:06.859','2019-01-04 23:48:06.859',0,1,1,NULL,3705,1),(13706,'2019-01-04 23:48:06.859','2019-01-04 23:48:06.859',0,1,1,NULL,3706,1),(13707,'2019-01-04 23:48:06.859','2019-01-04 23:48:06.859',0,1,1,NULL,3707,1),(13801,'2019-01-04 23:48:06.869','2019-01-04 23:48:06.869',0,1,1,NULL,3801,1),(13802,'2019-01-04 23:48:06.869','2019-01-04 23:48:06.869',0,1,1,NULL,3802,1),(13803,'2019-01-04 23:48:06.869','2019-01-04 23:48:06.869',0,1,1,NULL,3803,1),(13804,'2019-01-04 23:48:06.870','2019-01-04 23:48:06.870',0,1,1,NULL,3804,1),(13805,'2019-01-04 23:48:06.870','2019-01-04 23:48:06.870',0,1,1,NULL,3805,1),(13806,'2019-01-04 23:48:06.870','2019-01-04 23:48:06.870',0,1,1,NULL,3806,1),(13807,'2019-01-04 23:48:06.871','2019-01-04 23:48:06.871',0,1,1,NULL,3807,1),(13901,'2019-01-04 23:48:06.879','2019-01-04 23:48:06.879',0,1,1,NULL,3901,1),(13902,'2019-01-04 23:48:06.879','2019-01-04 23:48:06.879',0,1,1,NULL,3902,1),(13903,'2019-01-04 23:48:06.880','2019-01-04 23:48:06.880',0,1,1,NULL,3903,1),(13904,'2019-01-04 23:48:06.880','2019-01-04 23:48:06.880',0,1,1,NULL,3904,1),(13905,'2019-01-04 23:48:06.880','2019-01-04 23:48:06.880',0,1,1,NULL,3905,1),(13906,'2019-01-04 23:48:06.881','2019-01-04 23:48:06.881',0,1,1,NULL,3906,1),(13907,'2019-01-04 23:48:06.881','2019-01-04 23:48:06.881',0,1,1,NULL,3907,1),(14001,'2019-01-04 23:48:06.891','2019-01-04 23:48:06.891',0,1,1,NULL,4001,1),(14002,'2019-01-04 23:48:06.891','2019-01-04 23:48:06.891',0,1,1,NULL,4002,1),(14003,'2019-01-04 23:48:06.892','2019-01-04 23:48:06.892',0,1,1,NULL,4003,1),(14004,'2019-01-04 23:48:06.892','2019-01-04 23:48:06.892',0,1,1,NULL,4004,1),(14005,'2019-01-04 23:48:06.892','2019-01-04 23:48:06.892',0,1,1,NULL,4005,1),(14006,'2019-01-04 23:48:06.893','2019-01-04 23:48:06.893',0,1,1,NULL,4006,1),(14007,'2019-01-04 23:48:06.893','2019-01-04 23:48:06.893',0,1,1,NULL,4007,1),(14101,'2019-01-04 23:48:06.901','2019-01-04 23:48:06.901',0,1,1,NULL,4101,1),(14102,'2019-01-04 23:48:06.901','2019-01-04 23:48:06.901',0,1,1,NULL,4102,1),(14103,'2019-01-04 23:48:06.902','2019-01-04 23:48:06.902',0,1,1,NULL,4103,1),(14104,'2019-01-04 23:48:06.902','2019-01-04 23:48:06.902',0,1,1,NULL,4104,1),(14105,'2019-01-04 23:48:06.902','2019-01-04 23:48:06.902',0,1,1,NULL,4105,1),(14106,'2019-01-04 23:48:06.903','2019-01-04 23:48:06.903',0,1,1,NULL,4106,1),(14107,'2019-01-04 23:48:06.903','2019-01-04 23:48:06.903',0,1,1,NULL,4107,1),(14201,'2019-01-04 23:48:06.913','2019-01-04 23:48:06.913',0,1,1,NULL,4201,1),(14202,'2019-01-04 23:48:06.913','2019-01-04 23:48:06.913',0,1,1,NULL,4202,1),(14203,'2019-01-04 23:48:06.914','2019-01-04 23:48:06.914',0,1,1,NULL,4203,1),(14204,'2019-01-04 23:48:06.914','2019-01-04 23:48:06.914',0,1,1,NULL,4204,1),(14205,'2019-01-04 23:48:06.914','2019-01-04 23:48:06.914',0,1,1,NULL,4205,1),(14206,'2019-01-04 23:48:06.915','2019-01-04 23:48:06.915',0,1,1,NULL,4206,1),(14207,'2019-01-04 23:48:06.915','2019-01-04 23:48:06.915',0,1,1,NULL,4207,1),(14301,'2019-01-04 23:48:06.923','2019-01-04 23:48:06.923',0,1,1,NULL,4301,1),(14302,'2019-01-04 23:48:06.923','2019-01-04 23:48:06.923',0,1,1,NULL,4302,1),(14303,'2019-01-04 23:48:06.923','2019-01-04 23:48:06.923',0,1,1,NULL,4303,1),(14304,'2019-01-04 23:48:06.924','2019-01-04 23:48:06.924',0,1,1,NULL,4304,1),(14305,'2019-01-04 23:48:06.924','2019-01-04 23:48:06.924',0,1,1,NULL,4305,1),(14306,'2019-01-04 23:48:06.924','2019-01-04 23:48:06.924',0,1,1,NULL,4306,1),(14307,'2019-01-04 23:48:06.925','2019-01-04 23:48:06.925',0,1,1,NULL,4307,1),(14401,'2019-01-04 23:48:06.940','2019-01-04 23:48:06.940',0,1,1,NULL,4401,1),(14402,'2019-01-04 23:48:06.941','2019-01-04 23:48:06.941',0,1,1,NULL,4402,1),(14403,'2019-01-04 23:48:06.941','2019-01-04 23:48:06.941',0,1,1,NULL,4403,1),(14404,'2019-01-04 23:48:06.942','2019-01-04 23:48:06.942',0,1,1,NULL,4404,1),(14405,'2019-01-04 23:48:06.943','2019-01-04 23:48:06.943',0,1,1,NULL,4405,1),(14406,'2019-01-04 23:48:06.943','2019-01-04 23:48:06.943',0,1,1,NULL,4406,1),(14407,'2019-01-04 23:48:06.944','2019-01-04 23:48:06.944',0,1,1,NULL,4407,1),(14501,'2019-01-04 23:48:06.956','2019-01-04 23:48:06.956',0,1,1,NULL,4501,1),(14502,'2019-01-04 23:48:06.957','2019-01-04 23:48:06.957',0,1,1,NULL,4502,1),(14503,'2019-01-04 23:48:06.958','2019-01-04 23:48:06.958',0,1,1,NULL,4503,1),(14504,'2019-01-04 23:48:06.959','2019-01-04 23:48:06.959',0,1,1,NULL,4504,1),(14505,'2019-01-04 23:48:06.959','2019-01-04 23:48:06.959',0,1,1,NULL,4505,1),(14506,'2019-01-04 23:48:06.960','2019-01-04 23:48:06.960',0,1,1,NULL,4506,1),(14507,'2019-01-04 23:48:06.960','2019-01-04 23:48:06.960',0,1,1,NULL,4507,1),(14601,'2019-01-04 23:48:06.972','2019-01-04 23:48:06.972',0,1,1,NULL,4601,1),(14602,'2019-01-04 23:48:06.972','2019-01-04 23:48:06.972',0,1,1,NULL,4602,1),(14603,'2019-01-04 23:48:06.972','2019-01-04 23:48:06.972',0,1,1,NULL,4603,1),(14604,'2019-01-04 23:48:06.973','2019-01-04 23:48:06.973',0,1,1,NULL,4604,1),(14605,'2019-01-04 23:48:06.973','2019-01-04 23:48:06.973',0,1,1,NULL,4605,1),(14606,'2019-01-04 23:48:06.973','2019-01-04 23:48:06.973',0,1,1,NULL,4606,1),(14607,'2019-01-04 23:48:06.974','2019-01-04 23:48:06.974',0,1,1,NULL,4607,1),(14701,'2019-01-04 23:48:06.983','2019-01-04 23:48:06.983',0,1,1,NULL,4701,1),(14702,'2019-01-04 23:48:06.983','2019-01-04 23:48:06.983',0,1,1,NULL,4702,1),(14703,'2019-01-04 23:48:06.983','2019-01-04 23:48:06.983',0,1,1,NULL,4703,1),(14704,'2019-01-04 23:48:06.984','2019-01-04 23:48:06.984',0,1,1,NULL,4704,1),(14705,'2019-01-04 23:48:06.984','2019-01-04 23:48:06.984',0,1,1,NULL,4705,1),(14706,'2019-01-04 23:48:06.984','2019-01-04 23:48:06.984',0,1,1,NULL,4706,1),(14707,'2019-01-04 23:48:06.985','2019-01-04 23:48:06.985',0,1,1,NULL,4707,1),(14801,'2019-01-04 23:48:06.992','2019-01-04 23:48:06.992',0,1,1,NULL,4801,1),(14802,'2019-01-04 23:48:06.992','2019-01-04 23:48:06.992',0,1,1,NULL,4802,1),(14803,'2019-01-04 23:48:06.993','2019-01-04 23:48:06.993',0,1,1,NULL,4803,1),(14804,'2019-01-04 23:48:06.993','2019-01-04 23:48:06.993',0,1,1,NULL,4804,1),(14805,'2019-01-04 23:48:06.993','2019-01-04 23:48:06.993',0,1,1,NULL,4805,1),(14806,'2019-01-04 23:48:06.994','2019-01-04 23:48:06.994',0,1,1,NULL,4806,1),(14807,'2019-01-04 23:48:06.995','2019-01-04 23:48:06.995',0,1,1,NULL,4807,1),(21001,'2019-01-04 23:48:06.417','2019-01-04 23:48:06.417',0,1,1,NULL,1001,2),(21002,'2019-01-04 23:48:06.418','2019-01-04 23:48:06.418',0,1,1,NULL,1002,2),(21003,'2019-01-04 23:48:06.418','2019-01-04 23:48:06.418',0,1,1,NULL,1003,2),(21004,'2019-01-04 23:48:06.419','2019-01-04 23:48:06.419',0,1,1,NULL,1004,2),(21005,'2019-01-04 23:48:06.419','2019-01-04 23:48:06.419',0,1,1,NULL,1005,2),(21006,'2019-01-04 23:48:06.419','2019-01-04 23:48:06.419',0,1,1,NULL,1006,2),(21007,'2019-01-04 23:48:06.420','2019-01-04 23:48:06.420',0,1,1,NULL,1007,2),(21101,'2019-01-04 23:48:06.435','2019-01-04 23:48:06.435',0,1,1,NULL,1101,2),(21102,'2019-01-04 23:48:06.435','2019-01-04 23:48:06.435',0,1,1,NULL,1102,2),(21103,'2019-01-04 23:48:06.436','2019-01-04 23:48:06.436',0,1,1,NULL,1103,2),(21104,'2019-01-04 23:48:06.437','2019-01-04 23:48:06.437',0,1,1,NULL,1104,2),(21105,'2019-01-04 23:48:06.438','2019-01-04 23:48:06.438',0,1,1,NULL,1105,2),(21106,'2019-01-04 23:48:06.438','2019-01-04 23:48:06.438',0,1,1,NULL,1106,2),(21107,'2019-01-04 23:48:06.439','2019-01-04 23:48:06.439',0,1,1,NULL,1107,2),(21201,'2019-01-04 23:48:06.451','2019-01-04 23:48:06.451',0,1,1,NULL,1201,2),(21202,'2019-01-04 23:48:06.452','2019-01-04 23:48:06.452',0,1,1,NULL,1202,2),(21203,'2019-01-04 23:48:06.452','2019-01-04 23:48:06.452',0,1,1,NULL,1203,2),(21204,'2019-01-04 23:48:06.453','2019-01-04 23:48:06.453',0,1,1,NULL,1204,2),(21205,'2019-01-04 23:48:06.454','2019-01-04 23:48:06.454',0,1,1,NULL,1205,2),(21206,'2019-01-04 23:48:06.455','2019-01-04 23:48:06.455',0,1,1,NULL,1206,2),(21207,'2019-01-04 23:48:06.455','2019-01-04 23:48:06.455',0,1,1,NULL,1207,2),(21301,'2019-01-04 23:48:06.474','2019-01-04 23:48:06.474',0,1,1,NULL,1301,2),(21302,'2019-01-04 23:48:06.475','2019-01-04 23:48:06.475',0,1,1,NULL,1302,2),(21303,'2019-01-04 23:48:06.475','2019-01-04 23:48:06.475',0,1,1,NULL,1303,2),(21304,'2019-01-04 23:48:06.475','2019-01-04 23:48:06.475',0,1,1,NULL,1304,2),(21305,'2019-01-04 23:48:06.476','2019-01-04 23:48:06.476',0,1,1,NULL,1305,2),(21306,'2019-01-04 23:48:06.476','2019-01-04 23:48:06.476',0,1,1,NULL,1306,2),(21307,'2019-01-04 23:48:06.477','2019-01-04 23:48:06.477',0,1,1,NULL,1307,2),(21401,'2019-01-04 23:48:06.490','2019-01-04 23:48:06.490',0,1,1,NULL,1401,2),(21402,'2019-01-04 23:48:06.490','2019-01-04 23:48:06.490',0,1,1,NULL,1402,2),(21403,'2019-01-04 23:48:06.491','2019-01-04 23:48:06.491',0,1,1,NULL,1403,2),(21404,'2019-01-04 23:48:06.491','2019-01-04 23:48:06.491',0,1,1,NULL,1404,2),(21405,'2019-01-04 23:48:06.492','2019-01-04 23:48:06.492',0,1,1,NULL,1405,2),(21406,'2019-01-04 23:48:06.492','2019-01-04 23:48:06.492',0,1,1,NULL,1406,2),(21407,'2019-01-04 23:48:06.493','2019-01-04 23:48:06.493',0,1,1,NULL,1407,2),(21501,'2019-01-04 23:48:06.506','2019-01-04 23:48:06.506',0,1,1,NULL,1501,2),(21502,'2019-01-04 23:48:06.507','2019-01-04 23:48:06.507',0,1,1,NULL,1502,2),(21503,'2019-01-04 23:48:06.508','2019-01-04 23:48:06.508',0,1,1,NULL,1503,2),(21504,'2019-01-04 23:48:06.508','2019-01-04 23:48:06.508',0,1,1,NULL,1504,2),(21505,'2019-01-04 23:48:06.509','2019-01-04 23:48:06.509',0,1,1,NULL,1505,2),(21506,'2019-01-04 23:48:06.509','2019-01-04 23:48:06.509',0,1,1,NULL,1506,2),(21507,'2019-01-04 23:48:06.510','2019-01-04 23:48:06.510',0,1,1,NULL,1507,2),(21601,'2019-01-04 23:48:06.522','2019-01-04 23:48:06.522',0,1,1,NULL,1601,2),(21602,'2019-01-04 23:48:06.523','2019-01-04 23:48:06.523',0,1,1,NULL,1602,2),(21603,'2019-01-04 23:48:06.523','2019-01-04 23:48:06.523',0,1,1,NULL,1603,2),(21604,'2019-01-04 23:48:06.524','2019-01-04 23:48:06.524',0,1,1,NULL,1604,2),(21605,'2019-01-04 23:48:06.524','2019-01-04 23:48:06.524',0,1,1,NULL,1605,2),(21606,'2019-01-04 23:48:06.524','2019-01-04 23:48:06.524',0,1,1,NULL,1606,2),(21607,'2019-01-04 23:48:06.525','2019-01-04 23:48:06.525',0,1,1,NULL,1607,2),(21701,'2019-01-04 23:48:06.538','2019-01-04 23:48:06.538',0,1,1,NULL,1701,2),(21702,'2019-01-04 23:48:06.538','2019-01-04 23:48:06.538',0,1,1,NULL,1702,2),(21703,'2019-01-04 23:48:06.539','2019-01-04 23:48:06.539',0,1,1,NULL,1703,2),(21704,'2019-01-04 23:48:06.540','2019-01-04 23:48:06.540',0,1,1,NULL,1704,2),(21705,'2019-01-04 23:48:06.540','2019-01-04 23:48:06.540',0,1,1,NULL,1705,2),(21706,'2019-01-04 23:48:06.541','2019-01-04 23:48:06.541',0,1,1,NULL,1706,2),(21707,'2019-01-04 23:48:06.541','2019-01-04 23:48:06.541',0,1,1,NULL,1707,2),(21801,'2019-01-04 23:48:06.556','2019-01-04 23:48:06.556',0,1,1,NULL,1801,2),(21802,'2019-01-04 23:48:06.556','2019-01-04 23:48:06.556',0,1,1,NULL,1802,2),(21803,'2019-01-04 23:48:06.557','2019-01-04 23:48:06.557',0,1,1,NULL,1803,2),(21804,'2019-01-04 23:48:06.557','2019-01-04 23:48:06.557',0,1,1,NULL,1804,2),(21805,'2019-01-04 23:48:06.558','2019-01-04 23:48:06.558',0,1,1,NULL,1805,2),(21806,'2019-01-04 23:48:06.559','2019-01-04 23:48:06.559',0,1,1,NULL,1806,2),(21807,'2019-01-04 23:48:06.559','2019-01-04 23:48:06.559',0,1,1,NULL,1807,2),(21901,'2019-01-04 23:48:06.576','2019-01-04 23:48:06.576',0,1,1,NULL,1901,2),(21902,'2019-01-04 23:48:06.576','2019-01-04 23:48:06.576',0,1,1,NULL,1902,2),(21903,'2019-01-04 23:48:06.577','2019-01-04 23:48:06.577',0,1,1,NULL,1903,2),(21904,'2019-01-04 23:48:06.577','2019-01-04 23:48:06.577',0,1,1,NULL,1904,2),(21905,'2019-01-04 23:48:06.578','2019-01-04 23:48:06.578',0,1,1,NULL,1905,2),(21906,'2019-01-04 23:48:06.578','2019-01-04 23:48:06.578',0,1,1,NULL,1906,2),(21907,'2019-01-04 23:48:06.579','2019-01-04 23:48:06.579',0,1,1,NULL,1907,2),(22001,'2019-01-04 23:48:06.595','2019-01-04 23:48:06.595',0,1,1,NULL,2001,2),(22002,'2019-01-04 23:48:06.596','2019-01-04 23:48:06.596',0,1,1,NULL,2002,2),(22003,'2019-01-04 23:48:06.596','2019-01-04 23:48:06.596',0,1,1,NULL,2003,2),(22004,'2019-01-04 23:48:06.597','2019-01-04 23:48:06.597',0,1,1,NULL,2004,2),(22005,'2019-01-04 23:48:06.597','2019-01-04 23:48:06.597',0,1,1,NULL,2005,2),(22006,'2019-01-04 23:48:06.598','2019-01-04 23:48:06.598',0,1,1,NULL,2006,2),(22007,'2019-01-04 23:48:06.599','2019-01-04 23:48:06.599',0,1,1,NULL,2007,2),(22101,'2019-01-04 23:48:06.614','2019-01-04 23:48:06.614',0,1,1,NULL,2101,2),(22102,'2019-01-04 23:48:06.615','2019-01-04 23:48:06.615',0,1,1,NULL,2102,2),(22103,'2019-01-04 23:48:06.616','2019-01-04 23:48:06.616',0,1,1,NULL,2103,2),(22104,'2019-01-04 23:48:06.616','2019-01-04 23:48:06.616',0,1,1,NULL,2104,2),(22105,'2019-01-04 23:48:06.617','2019-01-04 23:48:06.617',0,1,1,NULL,2105,2),(22106,'2019-01-04 23:48:06.618','2019-01-04 23:48:06.618',0,1,1,NULL,2106,2),(22107,'2019-01-04 23:48:06.618','2019-01-04 23:48:06.618',0,1,1,NULL,2107,2),(22201,'2019-01-04 23:48:06.632','2019-01-04 23:48:06.632',0,1,1,NULL,2201,2),(22202,'2019-01-04 23:48:06.632','2019-01-04 23:48:06.632',0,1,1,NULL,2202,2),(22203,'2019-01-04 23:48:06.633','2019-01-04 23:48:06.633',0,1,1,NULL,2203,2),(22204,'2019-01-04 23:48:06.634','2019-01-04 23:48:06.634',0,1,1,NULL,2204,2),(22205,'2019-01-04 23:48:06.635','2019-01-04 23:48:06.635',0,1,1,NULL,2205,2),(22206,'2019-01-04 23:48:06.635','2019-01-04 23:48:06.635',0,1,1,NULL,2206,2),(22207,'2019-01-04 23:48:06.636','2019-01-04 23:48:06.636',0,1,1,NULL,2207,2),(22301,'2019-01-04 23:48:06.650','2019-01-04 23:48:06.650',0,1,1,NULL,2301,2),(22302,'2019-01-04 23:48:06.651','2019-01-04 23:48:06.651',0,1,1,NULL,2302,2),(22303,'2019-01-04 23:48:06.652','2019-01-04 23:48:06.652',0,1,1,NULL,2303,2),(22304,'2019-01-04 23:48:06.652','2019-01-04 23:48:06.652',0,1,1,NULL,2304,2),(22305,'2019-01-04 23:48:06.653','2019-01-04 23:48:06.653',0,1,1,NULL,2305,2),(22306,'2019-01-04 23:48:06.653','2019-01-04 23:48:06.653',0,1,1,NULL,2306,2),(22307,'2019-01-04 23:48:06.654','2019-01-04 23:48:06.654',0,1,1,NULL,2307,2),(22401,'2019-01-04 23:48:06.670','2019-01-04 23:48:06.670',0,1,1,NULL,2401,2),(22402,'2019-01-04 23:48:06.671','2019-01-04 23:48:06.671',0,1,1,NULL,2402,2),(22403,'2019-01-04 23:48:06.672','2019-01-04 23:48:06.672',0,1,1,NULL,2403,2),(22404,'2019-01-04 23:48:06.672','2019-01-04 23:48:06.672',0,1,1,NULL,2404,2),(22405,'2019-01-04 23:48:06.673','2019-01-04 23:48:06.673',0,1,1,NULL,2405,2),(22406,'2019-01-04 23:48:06.673','2019-01-04 23:48:06.673',0,1,1,NULL,2406,2),(22407,'2019-01-04 23:48:06.674','2019-01-04 23:48:06.674',0,1,1,NULL,2407,2),(22501,'2019-01-04 23:48:06.687','2019-01-04 23:48:06.687',0,1,1,NULL,2501,2),(22502,'2019-01-04 23:48:06.688','2019-01-04 23:48:06.688',0,1,1,NULL,2502,2),(22503,'2019-01-04 23:48:06.688','2019-01-04 23:48:06.688',0,1,1,NULL,2503,2),(22504,'2019-01-04 23:48:06.689','2019-01-04 23:48:06.689',0,1,1,NULL,2504,2),(22505,'2019-01-04 23:48:06.689','2019-01-04 23:48:06.689',0,1,1,NULL,2505,2),(22506,'2019-01-04 23:48:06.689','2019-01-04 23:48:06.689',0,1,1,NULL,2506,2),(22507,'2019-01-04 23:48:06.690','2019-01-04 23:48:06.690',0,1,1,NULL,2507,2),(22601,'2019-01-04 23:48:06.704','2019-01-04 23:48:06.704',0,1,1,NULL,2601,2),(22602,'2019-01-04 23:48:06.706','2019-01-04 23:48:06.706',0,1,1,NULL,2602,2),(22603,'2019-01-04 23:48:06.707','2019-01-04 23:48:06.707',0,1,1,NULL,2603,2),(22604,'2019-01-04 23:48:06.707','2019-01-04 23:48:06.707',0,1,1,NULL,2604,2),(22605,'2019-01-04 23:48:06.708','2019-01-04 23:48:06.708',0,1,1,NULL,2605,2),(22606,'2019-01-04 23:48:06.709','2019-01-04 23:48:06.709',0,1,1,NULL,2606,2),(22607,'2019-01-04 23:48:06.709','2019-01-04 23:48:06.709',0,1,1,NULL,2607,2),(22701,'2019-01-04 23:48:06.721','2019-01-04 23:48:06.721',0,1,1,NULL,2701,2),(22702,'2019-01-04 23:48:06.722','2019-01-04 23:48:06.722',0,1,1,NULL,2702,2),(22703,'2019-01-04 23:48:06.723','2019-01-04 23:48:06.723',0,1,1,NULL,2703,2),(22704,'2019-01-04 23:48:06.723','2019-01-04 23:48:06.723',0,1,1,NULL,2704,2),(22705,'2019-01-04 23:48:06.724','2019-01-04 23:48:06.724',0,1,1,NULL,2705,2),(22706,'2019-01-04 23:48:06.724','2019-01-04 23:48:06.724',0,1,1,NULL,2706,2),(22707,'2019-01-04 23:48:06.725','2019-01-04 23:48:06.725',0,1,1,NULL,2707,2),(22801,'2019-01-04 23:48:06.740','2019-01-04 23:48:06.740',0,1,1,NULL,2801,2),(22802,'2019-01-04 23:48:06.740','2019-01-04 23:48:06.740',0,1,1,NULL,2802,2),(22803,'2019-01-04 23:48:06.741','2019-01-04 23:48:06.741',0,1,1,NULL,2803,2),(22804,'2019-01-04 23:48:06.741','2019-01-04 23:48:06.741',0,1,1,NULL,2804,2),(22805,'2019-01-04 23:48:06.742','2019-01-04 23:48:06.742',0,1,1,NULL,2805,2),(22806,'2019-01-04 23:48:06.742','2019-01-04 23:48:06.742',0,1,1,NULL,2806,2),(22807,'2019-01-04 23:48:06.743','2019-01-04 23:48:06.743',0,1,1,NULL,2807,2),(22901,'2019-01-04 23:48:06.756','2019-01-04 23:48:06.756',0,1,1,NULL,2901,2),(22902,'2019-01-04 23:48:06.757','2019-01-04 23:48:06.757',0,1,1,NULL,2902,2),(22903,'2019-01-04 23:48:06.757','2019-01-04 23:48:06.757',0,1,1,NULL,2903,2),(22904,'2019-01-04 23:48:06.758','2019-01-04 23:48:06.758',0,1,1,NULL,2904,2),(22905,'2019-01-04 23:48:06.758','2019-01-04 23:48:06.758',0,1,1,NULL,2905,2),(22906,'2019-01-04 23:48:06.758','2019-01-04 23:48:06.758',0,1,1,NULL,2906,2),(22907,'2019-01-04 23:48:06.759','2019-01-04 23:48:06.759',0,1,1,NULL,2907,2),(23001,'2019-01-04 23:48:06.771','2019-01-04 23:48:06.771',0,1,1,NULL,3001,2),(23002,'2019-01-04 23:48:06.771','2019-01-04 23:48:06.771',0,1,1,NULL,3002,2),(23003,'2019-01-04 23:48:06.772','2019-01-04 23:48:06.772',0,1,1,NULL,3003,2),(23004,'2019-01-04 23:48:06.773','2019-01-04 23:48:06.773',0,1,1,NULL,3004,2),(23005,'2019-01-04 23:48:06.773','2019-01-04 23:48:06.773',0,1,1,NULL,3005,2),(23006,'2019-01-04 23:48:06.774','2019-01-04 23:48:06.774',0,1,1,NULL,3006,2),(23007,'2019-01-04 23:48:06.774','2019-01-04 23:48:06.774',0,1,1,NULL,3007,2),(23101,'2019-01-04 23:48:06.786','2019-01-04 23:48:06.786',0,1,1,NULL,3101,2),(23102,'2019-01-04 23:48:06.786','2019-01-04 23:48:06.786',0,1,1,NULL,3102,2),(23103,'2019-01-04 23:48:06.786','2019-01-04 23:48:06.786',0,1,1,NULL,3103,2),(23104,'2019-01-04 23:48:06.786','2019-01-04 23:48:06.786',0,1,1,NULL,3104,2),(23105,'2019-01-04 23:48:06.787','2019-01-04 23:48:06.787',0,1,1,NULL,3105,2),(23106,'2019-01-04 23:48:06.787','2019-01-04 23:48:06.787',0,1,1,NULL,3106,2),(23107,'2019-01-04 23:48:06.788','2019-01-04 23:48:06.788',0,1,1,NULL,3107,2),(23201,'2019-01-04 23:48:06.797','2019-01-04 23:48:06.797',0,1,1,NULL,3201,2),(23202,'2019-01-04 23:48:06.798','2019-01-04 23:48:06.798',0,1,1,NULL,3202,2),(23203,'2019-01-04 23:48:06.799','2019-01-04 23:48:06.799',0,1,1,NULL,3203,2),(23204,'2019-01-04 23:48:06.799','2019-01-04 23:48:06.799',0,1,1,NULL,3204,2),(23205,'2019-01-04 23:48:06.800','2019-01-04 23:48:06.800',0,1,1,NULL,3205,2),(23206,'2019-01-04 23:48:06.800','2019-01-04 23:48:06.800',0,1,1,NULL,3206,2),(23207,'2019-01-04 23:48:06.801','2019-01-04 23:48:06.801',0,1,1,NULL,3207,2),(23301,'2019-01-04 23:48:06.813','2019-01-04 23:48:06.813',0,1,1,NULL,3301,2),(23302,'2019-01-04 23:48:06.814','2019-01-04 23:48:06.814',0,1,1,NULL,3302,2),(23303,'2019-01-04 23:48:06.814','2019-01-04 23:48:06.814',0,1,1,NULL,3303,2),(23304,'2019-01-04 23:48:06.815','2019-01-04 23:48:06.815',0,1,1,NULL,3304,2),(23305,'2019-01-04 23:48:06.815','2019-01-04 23:48:06.815',0,1,1,NULL,3305,2),(23306,'2019-01-04 23:48:06.816','2019-01-04 23:48:06.816',0,1,1,NULL,3306,2),(23307,'2019-01-04 23:48:06.816','2019-01-04 23:48:06.816',0,1,1,NULL,3307,2),(23401,'2019-01-04 23:48:06.829','2019-01-04 23:48:06.829',0,1,1,NULL,3401,2),(23402,'2019-01-04 23:48:06.829','2019-01-04 23:48:06.829',0,1,1,NULL,3402,2),(23403,'2019-01-04 23:48:06.830','2019-01-04 23:48:06.830',0,1,1,NULL,3403,2),(23404,'2019-01-04 23:48:06.830','2019-01-04 23:48:06.830',0,1,1,NULL,3404,2),(23405,'2019-01-04 23:48:06.831','2019-01-04 23:48:06.831',0,1,1,NULL,3405,2),(23406,'2019-01-04 23:48:06.831','2019-01-04 23:48:06.831',0,1,1,NULL,3406,2),(23407,'2019-01-04 23:48:06.831','2019-01-04 23:48:06.831',0,1,1,NULL,3407,2),(23501,'2019-01-04 23:48:06.840','2019-01-04 23:48:06.840',0,1,1,NULL,3501,2),(23502,'2019-01-04 23:48:06.841','2019-01-04 23:48:06.841',0,1,1,NULL,3502,2),(23503,'2019-01-04 23:48:06.841','2019-01-04 23:48:06.841',0,1,1,NULL,3503,2),(23504,'2019-01-04 23:48:06.841','2019-01-04 23:48:06.841',0,1,1,NULL,3504,2),(23505,'2019-01-04 23:48:06.842','2019-01-04 23:48:06.842',0,1,1,NULL,3505,2),(23506,'2019-01-04 23:48:06.842','2019-01-04 23:48:06.842',0,1,1,NULL,3506,2),(23507,'2019-01-04 23:48:06.842','2019-01-04 23:48:06.842',0,1,1,NULL,3507,2),(23601,'2019-01-04 23:48:06.851','2019-01-04 23:48:06.851',0,1,1,NULL,3601,2),(23602,'2019-01-04 23:48:06.851','2019-01-04 23:48:06.851',0,1,1,NULL,3602,2),(23603,'2019-01-04 23:48:06.851','2019-01-04 23:48:06.851',0,1,1,NULL,3603,2),(23604,'2019-01-04 23:48:06.852','2019-01-04 23:48:06.852',0,1,1,NULL,3604,2),(23605,'2019-01-04 23:48:06.852','2019-01-04 23:48:06.852',0,1,1,NULL,3605,2),(23606,'2019-01-04 23:48:06.852','2019-01-04 23:48:06.852',0,1,1,NULL,3606,2),(23607,'2019-01-04 23:48:06.853','2019-01-04 23:48:06.853',0,1,1,NULL,3607,2),(23701,'2019-01-04 23:48:06.860','2019-01-04 23:48:06.860',0,1,1,NULL,3701,2),(23702,'2019-01-04 23:48:06.860','2019-01-04 23:48:06.860',0,1,1,NULL,3702,2),(23703,'2019-01-04 23:48:06.861','2019-01-04 23:48:06.861',0,1,1,NULL,3703,2),(23704,'2019-01-04 23:48:06.861','2019-01-04 23:48:06.861',0,1,1,NULL,3704,2),(23705,'2019-01-04 23:48:06.861','2019-01-04 23:48:06.861',0,1,1,NULL,3705,2),(23706,'2019-01-04 23:48:06.862','2019-01-04 23:48:06.862',0,1,1,NULL,3706,2),(23707,'2019-01-04 23:48:06.862','2019-01-04 23:48:06.862',0,1,1,NULL,3707,2),(23801,'2019-01-04 23:48:06.871','2019-01-04 23:48:06.871',0,1,1,NULL,3801,2),(23802,'2019-01-04 23:48:06.871','2019-01-04 23:48:06.871',0,1,1,NULL,3802,2),(23803,'2019-01-04 23:48:06.872','2019-01-04 23:48:06.872',0,1,1,NULL,3803,2),(23804,'2019-01-04 23:48:06.872','2019-01-04 23:48:06.872',0,1,1,NULL,3804,2),(23805,'2019-01-04 23:48:06.872','2019-01-04 23:48:06.872',0,1,1,NULL,3805,2),(23806,'2019-01-04 23:48:06.873','2019-01-04 23:48:06.873',0,1,1,NULL,3806,2),(23807,'2019-01-04 23:48:06.873','2019-01-04 23:48:06.873',0,1,1,NULL,3807,2),(23901,'2019-01-04 23:48:06.881','2019-01-04 23:48:06.881',0,1,1,NULL,3901,2),(23902,'2019-01-04 23:48:06.882','2019-01-04 23:48:06.882',0,1,1,NULL,3902,2),(23903,'2019-01-04 23:48:06.882','2019-01-04 23:48:06.882',0,1,1,NULL,3903,2),(23904,'2019-01-04 23:48:06.882','2019-01-04 23:48:06.882',0,1,1,NULL,3904,2),(23905,'2019-01-04 23:48:06.883','2019-01-04 23:48:06.883',0,1,1,NULL,3905,2),(23906,'2019-01-04 23:48:06.883','2019-01-04 23:48:06.883',0,1,1,NULL,3906,2),(23907,'2019-01-04 23:48:06.884','2019-01-04 23:48:06.884',0,1,1,NULL,3907,2),(24001,'2019-01-04 23:48:06.894','2019-01-04 23:48:06.894',0,1,1,NULL,4001,2),(24002,'2019-01-04 23:48:06.895','2019-01-04 23:48:06.895',0,1,1,NULL,4002,2),(24003,'2019-01-04 23:48:06.895','2019-01-04 23:48:06.895',0,1,1,NULL,4003,2),(24004,'2019-01-04 23:48:06.895','2019-01-04 23:48:06.895',0,1,1,NULL,4004,2),(24005,'2019-01-04 23:48:06.896','2019-01-04 23:48:06.896',0,1,1,NULL,4005,2),(24006,'2019-01-04 23:48:06.896','2019-01-04 23:48:06.896',0,1,1,NULL,4006,2),(24007,'2019-01-04 23:48:06.896','2019-01-04 23:48:06.896',0,1,1,NULL,4007,2),(24101,'2019-01-04 23:48:06.903','2019-01-04 23:48:06.903',0,1,1,NULL,4101,2),(24102,'2019-01-04 23:48:06.904','2019-01-04 23:48:06.904',0,1,1,NULL,4102,2),(24103,'2019-01-04 23:48:06.904','2019-01-04 23:48:06.904',0,1,1,NULL,4103,2),(24104,'2019-01-04 23:48:06.904','2019-01-04 23:48:06.904',0,1,1,NULL,4104,2),(24105,'2019-01-04 23:48:06.905','2019-01-04 23:48:06.905',0,1,1,NULL,4105,2),(24106,'2019-01-04 23:48:06.905','2019-01-04 23:48:06.905',0,1,1,NULL,4106,2),(24107,'2019-01-04 23:48:06.905','2019-01-04 23:48:06.905',0,1,1,NULL,4107,2),(24201,'2019-01-04 23:48:06.915','2019-01-04 23:48:06.915',0,1,1,NULL,4201,2),(24202,'2019-01-04 23:48:06.916','2019-01-04 23:48:06.916',0,1,1,NULL,4202,2),(24203,'2019-01-04 23:48:06.916','2019-01-04 23:48:06.916',0,1,1,NULL,4203,2),(24204,'2019-01-04 23:48:06.916','2019-01-04 23:48:06.916',0,1,1,NULL,4204,2),(24205,'2019-01-04 23:48:06.917','2019-01-04 23:48:06.917',0,1,1,NULL,4205,2),(24206,'2019-01-04 23:48:06.917','2019-01-04 23:48:06.917',0,1,1,NULL,4206,2),(24207,'2019-01-04 23:48:06.917','2019-01-04 23:48:06.917',0,1,1,NULL,4207,2),(24301,'2019-01-04 23:48:06.925','2019-01-04 23:48:06.925',0,1,1,NULL,4301,2),(24302,'2019-01-04 23:48:06.926','2019-01-04 23:48:06.926',0,1,1,NULL,4302,2),(24303,'2019-01-04 23:48:06.926','2019-01-04 23:48:06.926',0,1,1,NULL,4303,2),(24304,'2019-01-04 23:48:06.927','2019-01-04 23:48:06.927',0,1,1,NULL,4304,2),(24305,'2019-01-04 23:48:06.927','2019-01-04 23:48:06.927',0,1,1,NULL,4305,2),(24306,'2019-01-04 23:48:06.927','2019-01-04 23:48:06.927',0,1,1,NULL,4306,2),(24307,'2019-01-04 23:48:06.928','2019-01-04 23:48:06.928',0,1,1,NULL,4307,2),(24401,'2019-01-04 23:48:06.945','2019-01-04 23:48:06.945',0,1,1,NULL,4401,2),(24402,'2019-01-04 23:48:06.946','2019-01-04 23:48:06.946',0,1,1,NULL,4402,2),(24403,'2019-01-04 23:48:06.946','2019-01-04 23:48:06.946',0,1,1,NULL,4403,2),(24404,'2019-01-04 23:48:06.947','2019-01-04 23:48:06.947',0,1,1,NULL,4404,2),(24405,'2019-01-04 23:48:06.947','2019-01-04 23:48:06.947',0,1,1,NULL,4405,2),(24406,'2019-01-04 23:48:06.948','2019-01-04 23:48:06.948',0,1,1,NULL,4406,2),(24407,'2019-01-04 23:48:06.948','2019-01-04 23:48:06.948',0,1,1,NULL,4407,2),(24501,'2019-01-04 23:48:06.961','2019-01-04 23:48:06.961',0,1,1,NULL,4501,2),(24502,'2019-01-04 23:48:06.962','2019-01-04 23:48:06.962',0,1,1,NULL,4502,2),(24503,'2019-01-04 23:48:06.962','2019-01-04 23:48:06.962',0,1,1,NULL,4503,2),(24504,'2019-01-04 23:48:06.963','2019-01-04 23:48:06.963',0,1,1,NULL,4504,2),(24505,'2019-01-04 23:48:06.963','2019-01-04 23:48:06.963',0,1,1,NULL,4505,2),(24506,'2019-01-04 23:48:06.964','2019-01-04 23:48:06.964',0,1,1,NULL,4506,2),(24507,'2019-01-04 23:48:06.965','2019-01-04 23:48:06.965',0,1,1,NULL,4507,2),(24601,'2019-01-04 23:48:06.974','2019-01-04 23:48:06.974',0,1,1,NULL,4601,2),(24602,'2019-01-04 23:48:06.974','2019-01-04 23:48:06.974',0,1,1,NULL,4602,2),(24603,'2019-01-04 23:48:06.975','2019-01-04 23:48:06.975',0,1,1,NULL,4603,2),(24604,'2019-01-04 23:48:06.975','2019-01-04 23:48:06.975',0,1,1,NULL,4604,2),(24605,'2019-01-04 23:48:06.976','2019-01-04 23:48:06.976',0,1,1,NULL,4605,2),(24606,'2019-01-04 23:48:06.976','2019-01-04 23:48:06.976',0,1,1,NULL,4606,2),(24607,'2019-01-04 23:48:06.976','2019-01-04 23:48:06.976',0,1,1,NULL,4607,2),(24701,'2019-01-04 23:48:06.985','2019-01-04 23:48:06.985',0,1,1,NULL,4701,2),(24702,'2019-01-04 23:48:06.985','2019-01-04 23:48:06.985',0,1,1,NULL,4702,2),(24703,'2019-01-04 23:48:06.986','2019-01-04 23:48:06.986',0,1,1,NULL,4703,2),(24704,'2019-01-04 23:48:06.986','2019-01-04 23:48:06.986',0,1,1,NULL,4704,2),(24705,'2019-01-04 23:48:06.986','2019-01-04 23:48:06.986',0,1,1,NULL,4705,2),(24706,'2019-01-04 23:48:06.987','2019-01-04 23:48:06.987',0,1,1,NULL,4706,2),(24707,'2019-01-04 23:48:06.987','2019-01-04 23:48:06.987',0,1,1,NULL,4707,2),(24801,'2019-01-04 23:48:06.995','2019-01-04 23:48:06.995',0,1,1,NULL,4801,2),(24802,'2019-01-04 23:48:06.995','2019-01-04 23:48:06.995',0,1,1,NULL,4802,2),(24803,'2019-01-04 23:48:06.996','2019-01-04 23:48:06.996',0,1,1,NULL,4803,2),(24804,'2019-01-04 23:48:06.996','2019-01-04 23:48:06.996',0,1,1,NULL,4804,2),(24805,'2019-01-04 23:48:06.996','2019-01-04 23:48:06.996',0,1,1,NULL,4805,2),(24806,'2019-01-04 23:48:06.997','2019-01-04 23:48:06.997',0,1,1,NULL,4806,2),(24807,'2019-01-04 23:48:06.997','2019-01-04 23:48:06.997',0,1,1,NULL,4807,2),(100101,'2019-01-04 23:48:06.260','2019-01-04 23:48:06.260',0,1,1,NULL,101,100),(100102,'2019-01-04 23:48:06.260','2019-01-04 23:48:06.260',0,1,1,NULL,102,100),(100103,'2019-01-04 23:48:06.261','2019-01-04 23:48:06.261',0,1,1,NULL,103,100),(100104,'2019-01-04 23:48:06.262','2019-01-04 23:48:06.262',0,1,1,NULL,104,100),(100105,'2019-01-04 23:48:06.262','2019-01-04 23:48:06.262',0,1,1,NULL,105,100),(100106,'2019-01-04 23:48:06.263','2019-01-04 23:48:06.263',0,1,1,NULL,106,100),(100107,'2019-01-04 23:48:06.264','2019-01-04 23:48:06.264',0,1,1,NULL,107,100),(100201,'2019-01-04 23:48:06.279','2019-01-04 23:48:06.279',0,1,1,NULL,201,100),(100202,'2019-01-04 23:48:06.279','2019-01-04 23:48:06.279',0,1,1,NULL,202,100),(100203,'2019-01-04 23:48:06.280','2019-01-04 23:48:06.280',0,1,1,NULL,203,100),(100204,'2019-01-04 23:48:06.280','2019-01-04 23:48:06.280',0,1,1,NULL,204,100),(100205,'2019-01-04 23:48:06.281','2019-01-04 23:48:06.281',0,1,1,NULL,205,100),(100206,'2019-01-04 23:48:06.281','2019-01-04 23:48:06.281',0,1,1,NULL,206,100),(100207,'2019-01-04 23:48:06.282','2019-01-04 23:48:06.282',0,1,1,NULL,207,100),(100301,'2019-01-04 23:48:06.297','2019-01-04 23:48:06.297',0,1,1,NULL,301,100),(100302,'2019-01-04 23:48:06.298','2019-01-04 23:48:06.298',0,1,1,NULL,302,100),(100303,'2019-01-04 23:48:06.299','2019-01-04 23:48:06.299',0,1,1,NULL,303,100),(100304,'2019-01-04 23:48:06.299','2019-01-04 23:48:06.299',0,1,1,NULL,304,100),(100305,'2019-01-04 23:48:06.300','2019-01-04 23:48:06.300',0,1,1,NULL,305,100),(100306,'2019-01-04 23:48:06.300','2019-01-04 23:48:06.300',0,1,1,NULL,306,100),(100307,'2019-01-04 23:48:06.301','2019-01-04 23:48:06.301',0,1,1,NULL,307,100),(100401,'2019-01-04 23:48:06.311','2019-01-04 23:48:06.311',0,1,1,NULL,401,100),(100402,'2019-01-04 23:48:06.312','2019-01-04 23:48:06.312',0,1,1,NULL,402,100),(100403,'2019-01-04 23:48:06.313','2019-01-04 23:48:06.313',0,1,1,NULL,403,100),(100404,'2019-01-04 23:48:06.313','2019-01-04 23:48:06.313',0,1,1,NULL,404,100),(100405,'2019-01-04 23:48:06.314','2019-01-04 23:48:06.314',0,1,1,NULL,405,100),(100406,'2019-01-04 23:48:06.314','2019-01-04 23:48:06.314',0,1,1,NULL,406,100),(100407,'2019-01-04 23:48:06.314','2019-01-04 23:48:06.314',0,1,1,NULL,407,100),(100501,'2019-01-04 23:48:06.327','2019-01-04 23:48:06.327',0,1,1,NULL,501,100),(100502,'2019-01-04 23:48:06.328','2019-01-04 23:48:06.328',0,1,1,NULL,502,100),(100503,'2019-01-04 23:48:06.329','2019-01-04 23:48:06.329',0,1,1,NULL,503,100),(100504,'2019-01-04 23:48:06.329','2019-01-04 23:48:06.329',0,1,1,NULL,504,100),(100505,'2019-01-04 23:48:06.330','2019-01-04 23:48:06.330',0,1,1,NULL,505,100),(100506,'2019-01-04 23:48:06.330','2019-01-04 23:48:06.330',0,1,1,NULL,506,100),(100507,'2019-01-04 23:48:06.331','2019-01-04 23:48:06.331',0,1,1,NULL,507,100),(100601,'2019-01-04 23:48:06.345','2019-01-04 23:48:06.345',0,1,1,NULL,601,100),(100602,'2019-01-04 23:48:06.346','2019-01-04 23:48:06.346',0,1,1,NULL,602,100),(100603,'2019-01-04 23:48:06.346','2019-01-04 23:48:06.346',0,1,1,NULL,603,100),(100604,'2019-01-04 23:48:06.347','2019-01-04 23:48:06.347',0,1,1,NULL,604,100),(100605,'2019-01-04 23:48:06.347','2019-01-04 23:48:06.347',0,1,1,NULL,605,100),(100606,'2019-01-04 23:48:06.347','2019-01-04 23:48:06.347',0,1,1,NULL,606,100),(100607,'2019-01-04 23:48:06.348','2019-01-04 23:48:06.348',0,1,1,NULL,607,100),(100701,'2019-01-04 23:48:06.360','2019-01-04 23:48:06.360',0,1,1,NULL,701,100),(100702,'2019-01-04 23:48:06.362','2019-01-04 23:48:06.362',0,1,1,NULL,702,100),(100703,'2019-01-04 23:48:06.363','2019-01-04 23:48:06.363',0,1,1,NULL,703,100),(100704,'2019-01-04 23:48:06.364','2019-01-04 23:48:06.364',0,1,1,NULL,704,100),(100705,'2019-01-04 23:48:06.364','2019-01-04 23:48:06.364',0,1,1,NULL,705,100),(100706,'2019-01-04 23:48:06.365','2019-01-04 23:48:06.365',0,1,1,NULL,706,100),(100707,'2019-01-04 23:48:06.366','2019-01-04 23:48:06.366',0,1,1,NULL,707,100),(100801,'2019-01-04 23:48:06.380','2019-01-04 23:48:06.380',0,1,1,NULL,801,100),(100802,'2019-01-04 23:48:06.381','2019-01-04 23:48:06.381',0,1,1,NULL,802,100),(100803,'2019-01-04 23:48:06.383','2019-01-04 23:48:06.383',0,1,1,NULL,803,100),(100804,'2019-01-04 23:48:06.384','2019-01-04 23:48:06.384',0,1,1,NULL,804,100),(100805,'2019-01-04 23:48:06.386','2019-01-04 23:48:06.386',0,1,1,NULL,805,100),(100806,'2019-01-04 23:48:06.387','2019-01-04 23:48:06.387',0,1,1,NULL,806,100),(100807,'2019-01-04 23:48:06.388','2019-01-04 23:48:06.388',0,1,1,NULL,807,100),(100901,'2019-01-04 23:48:06.409','2019-01-04 23:48:06.409',0,1,1,NULL,901,100),(100902,'2019-01-04 23:48:06.411','2019-01-04 23:48:06.411',0,1,1,NULL,902,100),(100903,'2019-01-04 23:48:06.412','2019-01-04 23:48:06.412',0,1,1,NULL,903,100),(100904,'2019-01-04 23:48:06.412','2019-01-04 23:48:06.412',0,1,1,NULL,904,100),(100905,'2019-01-04 23:48:06.413','2019-01-04 23:48:06.413',0,1,1,NULL,905,100),(100906,'2019-01-04 23:48:06.413','2019-01-04 23:48:06.413',0,1,1,NULL,906,100),(100907,'2019-01-04 23:48:06.413','2019-01-04 23:48:06.413',0,1,1,NULL,907,100),(101001,'2019-01-04 23:48:06.420','2019-01-04 23:48:06.420',0,1,1,NULL,1001,10),(101002,'2019-01-04 23:48:06.421','2019-01-04 23:48:06.421',0,1,1,NULL,1002,10),(101003,'2019-01-04 23:48:06.421','2019-01-04 23:48:06.421',0,1,1,NULL,1003,10),(101004,'2019-01-04 23:48:06.422','2019-01-04 23:48:06.422',0,1,1,NULL,1004,10),(101005,'2019-01-04 23:48:06.423','2019-01-04 23:48:06.423',0,1,1,NULL,1005,10),(101006,'2019-01-04 23:48:06.423','2019-01-04 23:48:06.423',0,1,1,NULL,1006,10),(101007,'2019-01-04 23:48:06.424','2019-01-04 23:48:06.424',0,1,1,NULL,1007,10),(101101,'2019-01-04 23:48:06.440','2019-01-04 23:48:06.440',0,1,1,NULL,1101,10),(101102,'2019-01-04 23:48:06.440','2019-01-04 23:48:06.440',0,1,1,NULL,1102,10),(101103,'2019-01-04 23:48:06.440','2019-01-04 23:48:06.440',0,1,1,NULL,1103,10),(101104,'2019-01-04 23:48:06.441','2019-01-04 23:48:06.441',0,1,1,NULL,1104,10),(101105,'2019-01-04 23:48:06.442','2019-01-04 23:48:06.442',0,1,1,NULL,1105,10),(101106,'2019-01-04 23:48:06.442','2019-01-04 23:48:06.442',0,1,1,NULL,1106,10),(101107,'2019-01-04 23:48:06.443','2019-01-04 23:48:06.443',0,1,1,NULL,1107,10),(101201,'2019-01-04 23:48:06.456','2019-01-04 23:48:06.456',0,1,1,NULL,1201,10),(101202,'2019-01-04 23:48:06.456','2019-01-04 23:48:06.456',0,1,1,NULL,1202,10),(101203,'2019-01-04 23:48:06.457','2019-01-04 23:48:06.457',0,1,1,NULL,1203,10),(101204,'2019-01-04 23:48:06.457','2019-01-04 23:48:06.457',0,1,1,NULL,1204,10),(101205,'2019-01-04 23:48:06.464','2019-01-04 23:48:06.464',0,1,1,NULL,1205,10),(101206,'2019-01-04 23:48:06.464','2019-01-04 23:48:06.464',0,1,1,NULL,1206,10),(101207,'2019-01-04 23:48:06.465','2019-01-04 23:48:06.465',0,1,1,NULL,1207,10),(101301,'2019-01-04 23:48:06.478','2019-01-04 23:48:06.478',0,1,1,NULL,1301,10),(101302,'2019-01-04 23:48:06.479','2019-01-04 23:48:06.479',0,1,1,NULL,1302,10),(101303,'2019-01-04 23:48:06.479','2019-01-04 23:48:06.479',0,1,1,NULL,1303,10),(101304,'2019-01-04 23:48:06.480','2019-01-04 23:48:06.480',0,1,1,NULL,1304,10),(101305,'2019-01-04 23:48:06.480','2019-01-04 23:48:06.480',0,1,1,NULL,1305,10),(101306,'2019-01-04 23:48:06.481','2019-01-04 23:48:06.481',0,1,1,NULL,1306,10),(101307,'2019-01-04 23:48:06.482','2019-01-04 23:48:06.482',0,1,1,NULL,1307,10),(101401,'2019-01-04 23:48:06.493','2019-01-04 23:48:06.493',0,1,1,NULL,1401,10),(101402,'2019-01-04 23:48:06.496','2019-01-04 23:48:06.496',0,1,1,NULL,1402,10),(101403,'2019-01-04 23:48:06.497','2019-01-04 23:48:06.497',0,1,1,NULL,1403,10),(101404,'2019-01-04 23:48:06.498','2019-01-04 23:48:06.498',0,1,1,NULL,1404,10),(101405,'2019-01-04 23:48:06.498','2019-01-04 23:48:06.498',0,1,1,NULL,1405,10),(101406,'2019-01-04 23:48:06.499','2019-01-04 23:48:06.499',0,1,1,NULL,1406,10),(101407,'2019-01-04 23:48:06.499','2019-01-04 23:48:06.499',0,1,1,NULL,1407,10),(101501,'2019-01-04 23:48:06.510','2019-01-04 23:48:06.510',0,1,1,NULL,1501,10),(101502,'2019-01-04 23:48:06.511','2019-01-04 23:48:06.511',0,1,1,NULL,1502,10),(101503,'2019-01-04 23:48:06.511','2019-01-04 23:48:06.511',0,1,1,NULL,1503,10),(101504,'2019-01-04 23:48:06.512','2019-01-04 23:48:06.512',0,1,1,NULL,1504,10),(101505,'2019-01-04 23:48:06.512','2019-01-04 23:48:06.512',0,1,1,NULL,1505,10),(101506,'2019-01-04 23:48:06.512','2019-01-04 23:48:06.512',0,1,1,NULL,1506,10),(101507,'2019-01-04 23:48:06.513','2019-01-04 23:48:06.513',0,1,1,NULL,1507,10),(101601,'2019-01-04 23:48:06.525','2019-01-04 23:48:06.525',0,1,1,NULL,1601,10),(101602,'2019-01-04 23:48:06.526','2019-01-04 23:48:06.526',0,1,1,NULL,1602,10),(101603,'2019-01-04 23:48:06.526','2019-01-04 23:48:06.526',0,1,1,NULL,1603,10),(101604,'2019-01-04 23:48:06.526','2019-01-04 23:48:06.526',0,1,1,NULL,1604,10),(101605,'2019-01-04 23:48:06.527','2019-01-04 23:48:06.527',0,1,1,NULL,1605,10),(101606,'2019-01-04 23:48:06.527','2019-01-04 23:48:06.527',0,1,1,NULL,1606,10),(101607,'2019-01-04 23:48:06.528','2019-01-04 23:48:06.528',0,1,1,NULL,1607,10),(101701,'2019-01-04 23:48:06.542','2019-01-04 23:48:06.542',0,1,1,NULL,1701,10),(101702,'2019-01-04 23:48:06.542','2019-01-04 23:48:06.542',0,1,1,NULL,1702,10),(101703,'2019-01-04 23:48:06.544','2019-01-04 23:48:06.544',0,1,1,NULL,1703,10),(101704,'2019-01-04 23:48:06.545','2019-01-04 23:48:06.545',0,1,1,NULL,1704,10),(101705,'2019-01-04 23:48:06.546','2019-01-04 23:48:06.546',0,1,1,NULL,1705,10),(101706,'2019-01-04 23:48:06.547','2019-01-04 23:48:06.547',0,1,1,NULL,1706,10),(101707,'2019-01-04 23:48:06.547','2019-01-04 23:48:06.547',0,1,1,NULL,1707,10),(101801,'2019-01-04 23:48:06.559','2019-01-04 23:48:06.559',0,1,1,NULL,1801,10),(101802,'2019-01-04 23:48:06.560','2019-01-04 23:48:06.560',0,1,1,NULL,1802,10),(101803,'2019-01-04 23:48:06.561','2019-01-04 23:48:06.561',0,1,1,NULL,1803,10),(101804,'2019-01-04 23:48:06.561','2019-01-04 23:48:06.561',0,1,1,NULL,1804,10),(101805,'2019-01-04 23:48:06.562','2019-01-04 23:48:06.562',0,1,1,NULL,1805,10),(101806,'2019-01-04 23:48:06.563','2019-01-04 23:48:06.563',0,1,1,NULL,1806,10),(101807,'2019-01-04 23:48:06.563','2019-01-04 23:48:06.563',0,1,1,NULL,1807,10),(101901,'2019-01-04 23:48:06.579','2019-01-04 23:48:06.579',0,1,1,NULL,1901,10),(101902,'2019-01-04 23:48:06.580','2019-01-04 23:48:06.580',0,1,1,NULL,1902,10),(101903,'2019-01-04 23:48:06.581','2019-01-04 23:48:06.581',0,1,1,NULL,1903,10),(101904,'2019-01-04 23:48:06.583','2019-01-04 23:48:06.583',0,1,1,NULL,1904,10),(101905,'2019-01-04 23:48:06.584','2019-01-04 23:48:06.584',0,1,1,NULL,1905,10),(101906,'2019-01-04 23:48:06.584','2019-01-04 23:48:06.584',0,1,1,NULL,1906,10),(101907,'2019-01-04 23:48:06.585','2019-01-04 23:48:06.585',0,1,1,NULL,1907,10),(102001,'2019-01-04 23:48:06.599','2019-01-04 23:48:06.599',0,1,1,NULL,2001,10),(102002,'2019-01-04 23:48:06.599','2019-01-04 23:48:06.599',0,1,1,NULL,2002,10),(102003,'2019-01-04 23:48:06.600','2019-01-04 23:48:06.600',0,1,1,NULL,2003,10),(102004,'2019-01-04 23:48:06.601','2019-01-04 23:48:06.601',0,1,1,NULL,2004,10),(102005,'2019-01-04 23:48:06.601','2019-01-04 23:48:06.601',0,1,1,NULL,2005,10),(102006,'2019-01-04 23:48:06.602','2019-01-04 23:48:06.602',0,1,1,NULL,2006,10),(102007,'2019-01-04 23:48:06.603','2019-01-04 23:48:06.603',0,1,1,NULL,2007,10),(102101,'2019-01-04 23:48:06.619','2019-01-04 23:48:06.619',0,1,1,NULL,2101,10),(102102,'2019-01-04 23:48:06.620','2019-01-04 23:48:06.620',0,1,1,NULL,2102,10),(102103,'2019-01-04 23:48:06.620','2019-01-04 23:48:06.620',0,1,1,NULL,2103,10),(102104,'2019-01-04 23:48:06.622','2019-01-04 23:48:06.622',0,1,1,NULL,2104,10),(102105,'2019-01-04 23:48:06.622','2019-01-04 23:48:06.622',0,1,1,NULL,2105,10),(102106,'2019-01-04 23:48:06.623','2019-01-04 23:48:06.623',0,1,1,NULL,2106,10),(102107,'2019-01-04 23:48:06.623','2019-01-04 23:48:06.623',0,1,1,NULL,2107,10),(102201,'2019-01-04 23:48:06.636','2019-01-04 23:48:06.636',0,1,1,NULL,2201,10),(102202,'2019-01-04 23:48:06.637','2019-01-04 23:48:06.637',0,1,1,NULL,2202,10),(102203,'2019-01-04 23:48:06.637','2019-01-04 23:48:06.637',0,1,1,NULL,2203,10),(102204,'2019-01-04 23:48:06.638','2019-01-04 23:48:06.638',0,1,1,NULL,2204,10),(102205,'2019-01-04 23:48:06.639','2019-01-04 23:48:06.639',0,1,1,NULL,2205,10),(102206,'2019-01-04 23:48:06.639','2019-01-04 23:48:06.639',0,1,1,NULL,2206,10),(102207,'2019-01-04 23:48:06.640','2019-01-04 23:48:06.640',0,1,1,NULL,2207,10),(102301,'2019-01-04 23:48:06.655','2019-01-04 23:48:06.655',0,1,1,NULL,2301,10),(102302,'2019-01-04 23:48:06.655','2019-01-04 23:48:06.655',0,1,1,NULL,2302,10),(102303,'2019-01-04 23:48:06.656','2019-01-04 23:48:06.656',0,1,1,NULL,2303,10),(102304,'2019-01-04 23:48:06.657','2019-01-04 23:48:06.657',0,1,1,NULL,2304,10),(102305,'2019-01-04 23:48:06.657','2019-01-04 23:48:06.657',0,1,1,NULL,2305,10),(102306,'2019-01-04 23:48:06.658','2019-01-04 23:48:06.658',0,1,1,NULL,2306,10),(102307,'2019-01-04 23:48:06.658','2019-01-04 23:48:06.658',0,1,1,NULL,2307,10),(102401,'2019-01-04 23:48:06.674','2019-01-04 23:48:06.674',0,1,1,NULL,2401,10),(102402,'2019-01-04 23:48:06.675','2019-01-04 23:48:06.675',0,1,1,NULL,2402,10),(102403,'2019-01-04 23:48:06.675','2019-01-04 23:48:06.675',0,1,1,NULL,2403,10),(102404,'2019-01-04 23:48:06.676','2019-01-04 23:48:06.676',0,1,1,NULL,2404,10),(102405,'2019-01-04 23:48:06.677','2019-01-04 23:48:06.677',0,1,1,NULL,2405,10),(102406,'2019-01-04 23:48:06.677','2019-01-04 23:48:06.677',0,1,1,NULL,2406,10),(102407,'2019-01-04 23:48:06.678','2019-01-04 23:48:06.678',0,1,1,NULL,2407,10),(102501,'2019-01-04 23:48:06.690','2019-01-04 23:48:06.690',0,1,1,NULL,2501,10),(102502,'2019-01-04 23:48:06.691','2019-01-04 23:48:06.691',0,1,1,NULL,2502,10),(102503,'2019-01-04 23:48:06.692','2019-01-04 23:48:06.692',0,1,1,NULL,2503,10),(102504,'2019-01-04 23:48:06.692','2019-01-04 23:48:06.692',0,1,1,NULL,2504,10),(102505,'2019-01-04 23:48:06.692','2019-01-04 23:48:06.692',0,1,1,NULL,2505,10),(102506,'2019-01-04 23:48:06.693','2019-01-04 23:48:06.693',0,1,1,NULL,2506,10),(102507,'2019-01-04 23:48:06.693','2019-01-04 23:48:06.693',0,1,1,NULL,2507,10),(102601,'2019-01-04 23:48:06.711','2019-01-04 23:48:06.711',0,1,1,NULL,2601,10),(102602,'2019-01-04 23:48:06.712','2019-01-04 23:48:06.712',0,1,1,NULL,2602,10),(102603,'2019-01-04 23:48:06.712','2019-01-04 23:48:06.712',0,1,1,NULL,2603,10),(102604,'2019-01-04 23:48:06.713','2019-01-04 23:48:06.713',0,1,1,NULL,2604,10),(102605,'2019-01-04 23:48:06.713','2019-01-04 23:48:06.713',0,1,1,NULL,2605,10),(102606,'2019-01-04 23:48:06.714','2019-01-04 23:48:06.714',0,1,1,NULL,2606,10),(102607,'2019-01-04 23:48:06.715','2019-01-04 23:48:06.715',0,1,1,NULL,2607,10),(102701,'2019-01-04 23:48:06.725','2019-01-04 23:48:06.725',0,1,1,NULL,2701,10),(102702,'2019-01-04 23:48:06.726','2019-01-04 23:48:06.726',0,1,1,NULL,2702,10),(102703,'2019-01-04 23:48:06.727','2019-01-04 23:48:06.727',0,1,1,NULL,2703,10),(102704,'2019-01-04 23:48:06.727','2019-01-04 23:48:06.727',0,1,1,NULL,2704,10),(102705,'2019-01-04 23:48:06.728','2019-01-04 23:48:06.728',0,1,1,NULL,2705,10),(102706,'2019-01-04 23:48:06.729','2019-01-04 23:48:06.729',0,1,1,NULL,2706,10),(102707,'2019-01-04 23:48:06.730','2019-01-04 23:48:06.730',0,1,1,NULL,2707,10),(102801,'2019-01-04 23:48:06.743','2019-01-04 23:48:06.743',0,1,1,NULL,2801,10),(102802,'2019-01-04 23:48:06.744','2019-01-04 23:48:06.744',0,1,1,NULL,2802,10),(102803,'2019-01-04 23:48:06.744','2019-01-04 23:48:06.744',0,1,1,NULL,2803,10),(102804,'2019-01-04 23:48:06.745','2019-01-04 23:48:06.745',0,1,1,NULL,2804,10),(102805,'2019-01-04 23:48:06.746','2019-01-04 23:48:06.746',0,1,1,NULL,2805,10),(102806,'2019-01-04 23:48:06.746','2019-01-04 23:48:06.746',0,1,1,NULL,2806,10),(102807,'2019-01-04 23:48:06.747','2019-01-04 23:48:06.747',0,1,1,NULL,2807,10),(102901,'2019-01-04 23:48:06.759','2019-01-04 23:48:06.759',0,1,1,NULL,2901,10),(102902,'2019-01-04 23:48:06.760','2019-01-04 23:48:06.760',0,1,1,NULL,2902,10),(102903,'2019-01-04 23:48:06.761','2019-01-04 23:48:06.761',0,1,1,NULL,2903,10),(102904,'2019-01-04 23:48:06.762','2019-01-04 23:48:06.762',0,1,1,NULL,2904,10),(102905,'2019-01-04 23:48:06.762','2019-01-04 23:48:06.762',0,1,1,NULL,2905,10),(102906,'2019-01-04 23:48:06.763','2019-01-04 23:48:06.763',0,1,1,NULL,2906,10),(102907,'2019-01-04 23:48:06.763','2019-01-04 23:48:06.763',0,1,1,NULL,2907,10),(103001,'2019-01-04 23:48:06.775','2019-01-04 23:48:06.775',0,1,1,NULL,3001,10),(103002,'2019-01-04 23:48:06.776','2019-01-04 23:48:06.776',0,1,1,NULL,3002,10),(103003,'2019-01-04 23:48:06.777','2019-01-04 23:48:06.777',0,1,1,NULL,3003,10),(103004,'2019-01-04 23:48:06.778','2019-01-04 23:48:06.778',0,1,1,NULL,3004,10),(103005,'2019-01-04 23:48:06.779','2019-01-04 23:48:06.779',0,1,1,NULL,3005,10),(103006,'2019-01-04 23:48:06.779','2019-01-04 23:48:06.779',0,1,1,NULL,3006,10),(103007,'2019-01-04 23:48:06.780','2019-01-04 23:48:06.780',0,1,1,NULL,3007,10),(103101,'2019-01-04 23:48:06.788','2019-01-04 23:48:06.788',0,1,1,NULL,3101,10),(103102,'2019-01-04 23:48:06.788','2019-01-04 23:48:06.788',0,1,1,NULL,3102,10),(103103,'2019-01-04 23:48:06.789','2019-01-04 23:48:06.789',0,1,1,NULL,3103,10),(103104,'2019-01-04 23:48:06.789','2019-01-04 23:48:06.789',0,1,1,NULL,3104,10),(103105,'2019-01-04 23:48:06.789','2019-01-04 23:48:06.789',0,1,1,NULL,3105,10),(103106,'2019-01-04 23:48:06.790','2019-01-04 23:48:06.790',0,1,1,NULL,3106,10),(103107,'2019-01-04 23:48:06.790','2019-01-04 23:48:06.790',0,1,1,NULL,3107,10),(103201,'2019-01-04 23:48:06.801','2019-01-04 23:48:06.801',0,1,1,NULL,3201,10),(103202,'2019-01-04 23:48:06.802','2019-01-04 23:48:06.802',0,1,1,NULL,3202,10),(103203,'2019-01-04 23:48:06.802','2019-01-04 23:48:06.802',0,1,1,NULL,3203,10),(103204,'2019-01-04 23:48:06.803','2019-01-04 23:48:06.803',0,1,1,NULL,3204,10),(103205,'2019-01-04 23:48:06.804','2019-01-04 23:48:06.804',0,1,1,NULL,3205,10),(103206,'2019-01-04 23:48:06.805','2019-01-04 23:48:06.805',0,1,1,NULL,3206,10),(103207,'2019-01-04 23:48:06.805','2019-01-04 23:48:06.805',0,1,1,NULL,3207,10),(103301,'2019-01-04 23:48:06.817','2019-01-04 23:48:06.817',0,1,1,NULL,3301,10),(103302,'2019-01-04 23:48:06.818','2019-01-04 23:48:06.818',0,1,1,NULL,3302,10),(103303,'2019-01-04 23:48:06.819','2019-01-04 23:48:06.819',0,1,1,NULL,3303,10),(103304,'2019-01-04 23:48:06.820','2019-01-04 23:48:06.820',0,1,1,NULL,3304,10),(103305,'2019-01-04 23:48:06.820','2019-01-04 23:48:06.820',0,1,1,NULL,3305,10),(103306,'2019-01-04 23:48:06.821','2019-01-04 23:48:06.821',0,1,1,NULL,3306,10),(103307,'2019-01-04 23:48:06.821','2019-01-04 23:48:06.821',0,1,1,NULL,3307,10),(103401,'2019-01-04 23:48:06.832','2019-01-04 23:48:06.832',0,1,1,NULL,3401,10),(103402,'2019-01-04 23:48:06.832','2019-01-04 23:48:06.832',0,1,1,NULL,3402,10),(103403,'2019-01-04 23:48:06.832','2019-01-04 23:48:06.832',0,1,1,NULL,3403,10),(103404,'2019-01-04 23:48:06.833','2019-01-04 23:48:06.833',0,1,1,NULL,3404,10),(103405,'2019-01-04 23:48:06.833','2019-01-04 23:48:06.833',0,1,1,NULL,3405,10),(103406,'2019-01-04 23:48:06.833','2019-01-04 23:48:06.833',0,1,1,NULL,3406,10),(103407,'2019-01-04 23:48:06.834','2019-01-04 23:48:06.834',0,1,1,NULL,3407,10),(103501,'2019-01-04 23:48:06.843','2019-01-04 23:48:06.843',0,1,1,NULL,3501,10),(103502,'2019-01-04 23:48:06.843','2019-01-04 23:48:06.843',0,1,1,NULL,3502,10),(103503,'2019-01-04 23:48:06.844','2019-01-04 23:48:06.844',0,1,1,NULL,3503,10),(103504,'2019-01-04 23:48:06.845','2019-01-04 23:48:06.845',0,1,1,NULL,3504,10),(103505,'2019-01-04 23:48:06.845','2019-01-04 23:48:06.845',0,1,1,NULL,3505,10),(103506,'2019-01-04 23:48:06.845','2019-01-04 23:48:06.845',0,1,1,NULL,3506,10),(103507,'2019-01-04 23:48:06.846','2019-01-04 23:48:06.846',0,1,1,NULL,3507,10),(103601,'2019-01-04 23:48:06.853','2019-01-04 23:48:06.853',0,1,1,NULL,3601,10),(103602,'2019-01-04 23:48:06.853','2019-01-04 23:48:06.853',0,1,1,NULL,3602,10),(103603,'2019-01-04 23:48:06.854','2019-01-04 23:48:06.854',0,1,1,NULL,3603,10),(103604,'2019-01-04 23:48:06.854','2019-01-04 23:48:06.854',0,1,1,NULL,3604,10),(103605,'2019-01-04 23:48:06.854','2019-01-04 23:48:06.854',0,1,1,NULL,3605,10),(103606,'2019-01-04 23:48:06.855','2019-01-04 23:48:06.855',0,1,1,NULL,3606,10),(103607,'2019-01-04 23:48:06.855','2019-01-04 23:48:06.855',0,1,1,NULL,3607,10),(103701,'2019-01-04 23:48:06.862','2019-01-04 23:48:06.862',0,1,1,NULL,3701,10),(103702,'2019-01-04 23:48:06.863','2019-01-04 23:48:06.863',0,1,1,NULL,3702,10),(103703,'2019-01-04 23:48:06.863','2019-01-04 23:48:06.863',0,1,1,NULL,3703,10),(103704,'2019-01-04 23:48:06.865','2019-01-04 23:48:06.865',0,1,1,NULL,3704,10),(103705,'2019-01-04 23:48:06.865','2019-01-04 23:48:06.865',0,1,1,NULL,3705,10),(103706,'2019-01-04 23:48:06.866','2019-01-04 23:48:06.866',0,1,1,NULL,3706,10),(103707,'2019-01-04 23:48:06.866','2019-01-04 23:48:06.866',0,1,1,NULL,3707,10),(103801,'2019-01-04 23:48:06.873','2019-01-04 23:48:06.873',0,1,1,NULL,3801,10),(103802,'2019-01-04 23:48:06.874','2019-01-04 23:48:06.874',0,1,1,NULL,3802,10),(103803,'2019-01-04 23:48:06.874','2019-01-04 23:48:06.874',0,1,1,NULL,3803,10),(103804,'2019-01-04 23:48:06.874','2019-01-04 23:48:06.874',0,1,1,NULL,3804,10),(103805,'2019-01-04 23:48:06.875','2019-01-04 23:48:06.875',0,1,1,NULL,3805,10),(103806,'2019-01-04 23:48:06.875','2019-01-04 23:48:06.875',0,1,1,NULL,3806,10),(103807,'2019-01-04 23:48:06.875','2019-01-04 23:48:06.875',0,1,1,NULL,3807,10),(103901,'2019-01-04 23:48:06.884','2019-01-04 23:48:06.884',0,1,1,NULL,3901,10),(103902,'2019-01-04 23:48:06.884','2019-01-04 23:48:06.884',0,1,1,NULL,3902,10),(103903,'2019-01-04 23:48:06.885','2019-01-04 23:48:06.885',0,1,1,NULL,3903,10),(103904,'2019-01-04 23:48:06.885','2019-01-04 23:48:06.885',0,1,1,NULL,3904,10),(103905,'2019-01-04 23:48:06.885','2019-01-04 23:48:06.885',0,1,1,NULL,3905,10),(103906,'2019-01-04 23:48:06.886','2019-01-04 23:48:06.886',0,1,1,NULL,3906,10),(103907,'2019-01-04 23:48:06.886','2019-01-04 23:48:06.886',0,1,1,NULL,3907,10),(104001,'2019-01-04 23:48:06.897','2019-01-04 23:48:06.897',0,1,1,NULL,4001,10),(104002,'2019-01-04 23:48:06.897','2019-01-04 23:48:06.897',0,1,1,NULL,4002,10),(104003,'2019-01-04 23:48:06.897','2019-01-04 23:48:06.897',0,1,1,NULL,4003,10),(104004,'2019-01-04 23:48:06.898','2019-01-04 23:48:06.898',0,1,1,NULL,4004,10),(104005,'2019-01-04 23:48:06.898','2019-01-04 23:48:06.898',0,1,1,NULL,4005,10),(104006,'2019-01-04 23:48:06.898','2019-01-04 23:48:06.898',0,1,1,NULL,4006,10),(104007,'2019-01-04 23:48:06.899','2019-01-04 23:48:06.899',0,1,1,NULL,4007,10),(104101,'2019-01-04 23:48:06.906','2019-01-04 23:48:06.906',0,1,1,NULL,4101,10),(104102,'2019-01-04 23:48:06.906','2019-01-04 23:48:06.906',0,1,1,NULL,4102,10),(104103,'2019-01-04 23:48:06.907','2019-01-04 23:48:06.907',0,1,1,NULL,4103,10),(104104,'2019-01-04 23:48:06.907','2019-01-04 23:48:06.907',0,1,1,NULL,4104,10),(104105,'2019-01-04 23:48:06.907','2019-01-04 23:48:06.907',0,1,1,NULL,4105,10),(104106,'2019-01-04 23:48:06.908','2019-01-04 23:48:06.908',0,1,1,NULL,4106,10),(104107,'2019-01-04 23:48:06.908','2019-01-04 23:48:06.908',0,1,1,NULL,4107,10),(104201,'2019-01-04 23:48:06.918','2019-01-04 23:48:06.918',0,1,1,NULL,4201,10),(104202,'2019-01-04 23:48:06.918','2019-01-04 23:48:06.918',0,1,1,NULL,4202,10),(104203,'2019-01-04 23:48:06.918','2019-01-04 23:48:06.918',0,1,1,NULL,4203,10),(104204,'2019-01-04 23:48:06.919','2019-01-04 23:48:06.919',0,1,1,NULL,4204,10),(104205,'2019-01-04 23:48:06.919','2019-01-04 23:48:06.919',0,1,1,NULL,4205,10),(104206,'2019-01-04 23:48:06.919','2019-01-04 23:48:06.919',0,1,1,NULL,4206,10),(104207,'2019-01-04 23:48:06.920','2019-01-04 23:48:06.920',0,1,1,NULL,4207,10),(104301,'2019-01-04 23:48:06.928','2019-01-04 23:48:06.928',0,1,1,NULL,4301,10),(104302,'2019-01-04 23:48:06.928','2019-01-04 23:48:06.928',0,1,1,NULL,4302,10),(104303,'2019-01-04 23:48:06.929','2019-01-04 23:48:06.929',0,1,1,NULL,4303,10),(104304,'2019-01-04 23:48:06.929','2019-01-04 23:48:06.929',0,1,1,NULL,4304,10),(104305,'2019-01-04 23:48:06.930','2019-01-04 23:48:06.930',0,1,1,NULL,4305,10),(104306,'2019-01-04 23:48:06.930','2019-01-04 23:48:06.930',0,1,1,NULL,4306,10),(104307,'2019-01-04 23:48:06.930','2019-01-04 23:48:06.930',0,1,1,NULL,4307,10),(104401,'2019-01-04 23:48:06.949','2019-01-04 23:48:06.949',0,1,1,NULL,4401,10),(104402,'2019-01-04 23:48:06.949','2019-01-04 23:48:06.949',0,1,1,NULL,4402,10),(104403,'2019-01-04 23:48:06.950','2019-01-04 23:48:06.950',0,1,1,NULL,4403,10),(104404,'2019-01-04 23:48:06.950','2019-01-04 23:48:06.950',0,1,1,NULL,4404,10),(104405,'2019-01-04 23:48:06.951','2019-01-04 23:48:06.951',0,1,1,NULL,4405,10),(104406,'2019-01-04 23:48:06.951','2019-01-04 23:48:06.951',0,1,1,NULL,4406,10),(104407,'2019-01-04 23:48:06.952','2019-01-04 23:48:06.952',0,1,1,NULL,4407,10),(104501,'2019-01-04 23:48:06.965','2019-01-04 23:48:06.965',0,1,1,NULL,4501,10),(104502,'2019-01-04 23:48:06.966','2019-01-04 23:48:06.966',0,1,1,NULL,4502,10),(104503,'2019-01-04 23:48:06.966','2019-01-04 23:48:06.966',0,1,1,NULL,4503,10),(104504,'2019-01-04 23:48:06.967','2019-01-04 23:48:06.967',0,1,1,NULL,4504,10),(104505,'2019-01-04 23:48:06.967','2019-01-04 23:48:06.967',0,1,1,NULL,4505,10),(104506,'2019-01-04 23:48:06.968','2019-01-04 23:48:06.968',0,1,1,NULL,4506,10),(104507,'2019-01-04 23:48:06.969','2019-01-04 23:48:06.969',0,1,1,NULL,4507,10),(104601,'2019-01-04 23:48:06.977','2019-01-04 23:48:06.977',0,1,1,NULL,4601,10),(104602,'2019-01-04 23:48:06.977','2019-01-04 23:48:06.977',0,1,1,NULL,4602,10),(104603,'2019-01-04 23:48:06.977','2019-01-04 23:48:06.977',0,1,1,NULL,4603,10),(104604,'2019-01-04 23:48:06.978','2019-01-04 23:48:06.978',0,1,1,NULL,4604,10),(104605,'2019-01-04 23:48:06.978','2019-01-04 23:48:06.978',0,1,1,NULL,4605,10),(104606,'2019-01-04 23:48:06.978','2019-01-04 23:48:06.978',0,1,1,NULL,4606,10),(104607,'2019-01-04 23:48:06.979','2019-01-04 23:48:06.979',0,1,1,NULL,4607,10),(104701,'2019-01-04 23:48:06.987','2019-01-04 23:48:06.987',0,1,1,NULL,4701,10),(104702,'2019-01-04 23:48:06.988','2019-01-04 23:48:06.988',0,1,1,NULL,4702,10),(104703,'2019-01-04 23:48:06.988','2019-01-04 23:48:06.988',0,1,1,NULL,4703,10),(104704,'2019-01-04 23:48:06.988','2019-01-04 23:48:06.988',0,1,1,NULL,4704,10),(104705,'2019-01-04 23:48:06.989','2019-01-04 23:48:06.989',0,1,1,NULL,4705,10),(104706,'2019-01-04 23:48:06.989','2019-01-04 23:48:06.989',0,1,1,NULL,4706,10),(104707,'2019-01-04 23:48:06.989','2019-01-04 23:48:06.989',0,1,1,NULL,4707,10),(104801,'2019-01-04 23:48:06.997','2019-01-04 23:48:06.997',0,1,1,NULL,4801,10),(104802,'2019-01-04 23:48:06.998','2019-01-04 23:48:06.998',0,1,1,NULL,4802,10),(104803,'2019-01-04 23:48:06.998','2019-01-04 23:48:06.998',0,1,1,NULL,4803,10),(104804,'2019-01-04 23:48:06.998','2019-01-04 23:48:06.998',0,1,1,NULL,4804,10),(104805,'2019-01-04 23:48:06.999','2019-01-04 23:48:06.999',0,1,1,NULL,4805,10),(104806,'2019-01-04 23:48:06.999','2019-01-04 23:48:06.999',0,1,1,NULL,4806,10),(104807,'2019-01-04 23:48:07.000','2019-01-04 23:48:07.000',0,1,1,NULL,4807,10),(120001,'2019-01-04 23:48:21.298','2019-01-04 23:48:21.298',0,1,1,NULL,20001,1),(120002,'2019-01-04 23:48:21.298','2019-01-04 23:48:21.298',0,1,1,NULL,20002,1),(120003,'2019-01-04 23:48:21.298','2019-01-04 23:48:21.298',0,1,1,NULL,20003,1),(120004,'2019-01-04 23:48:21.299','2019-01-04 23:48:21.299',0,1,1,NULL,20004,1),(120005,'2019-01-04 23:48:21.299','2019-01-04 23:48:21.299',0,1,1,NULL,20005,1),(120006,'2019-01-04 23:48:21.299','2019-01-04 23:48:21.299',0,1,1,NULL,20006,1),(120007,'2019-01-04 23:48:21.300','2019-01-04 23:48:21.300',0,1,1,NULL,20007,1),(120101,'2019-01-04 23:48:21.315','2019-01-04 23:48:21.315',0,1,1,NULL,20101,1),(120102,'2019-01-04 23:48:21.316','2019-01-04 23:48:21.316',0,1,1,NULL,20102,1),(120103,'2019-01-04 23:48:21.316','2019-01-04 23:48:21.316',0,1,1,NULL,20103,1),(120104,'2019-01-04 23:48:21.316','2019-01-04 23:48:21.316',0,1,1,NULL,20104,1),(120105,'2019-01-04 23:48:21.317','2019-01-04 23:48:21.317',0,1,1,NULL,20105,1),(120106,'2019-01-04 23:48:21.317','2019-01-04 23:48:21.317',0,1,1,NULL,20106,1),(120107,'2019-01-04 23:48:21.317','2019-01-04 23:48:21.317',0,1,1,NULL,20107,1),(120201,'2019-01-04 23:48:21.336','2019-01-04 23:48:21.336',0,1,1,NULL,20201,1),(120202,'2019-01-04 23:48:21.336','2019-01-04 23:48:21.336',0,1,1,NULL,20202,1),(120203,'2019-01-04 23:48:21.336','2019-01-04 23:48:21.336',0,1,1,NULL,20203,1),(120204,'2019-01-04 23:48:21.337','2019-01-04 23:48:21.337',0,1,1,NULL,20204,1),(120205,'2019-01-04 23:48:21.337','2019-01-04 23:48:21.337',0,1,1,NULL,20205,1),(120206,'2019-01-04 23:48:21.338','2019-01-04 23:48:21.338',0,1,1,NULL,20206,1),(120207,'2019-01-04 23:48:21.338','2019-01-04 23:48:21.338',0,1,1,NULL,20207,1),(120301,'2019-01-04 23:48:21.348','2019-01-04 23:48:21.348',0,1,1,NULL,20301,1),(120302,'2019-01-04 23:48:21.348','2019-01-04 23:48:21.348',0,1,1,NULL,20302,1),(120303,'2019-01-04 23:48:21.349','2019-01-04 23:48:21.349',0,1,1,NULL,20303,1),(120304,'2019-01-04 23:48:21.349','2019-01-04 23:48:21.349',0,1,1,NULL,20304,1),(120305,'2019-01-04 23:48:21.349','2019-01-04 23:48:21.349',0,1,1,NULL,20305,1),(120306,'2019-01-04 23:48:21.349','2019-01-04 23:48:21.349',0,1,1,NULL,20306,1),(120307,'2019-01-04 23:48:21.350','2019-01-04 23:48:21.350',0,1,1,NULL,20307,1),(220001,'2019-01-04 23:48:21.300','2019-01-04 23:48:21.300',0,1,1,NULL,20001,2),(220002,'2019-01-04 23:48:21.300','2019-01-04 23:48:21.300',0,1,1,NULL,20002,2),(220003,'2019-01-04 23:48:21.301','2019-01-04 23:48:21.301',0,1,1,NULL,20003,2),(220004,'2019-01-04 23:48:21.301','2019-01-04 23:48:21.301',0,1,1,NULL,20004,2),(220005,'2019-01-04 23:48:21.301','2019-01-04 23:48:21.301',0,1,1,NULL,20005,2),(220006,'2019-01-04 23:48:21.302','2019-01-04 23:48:21.302',0,1,1,NULL,20006,2),(220007,'2019-01-04 23:48:21.302','2019-01-04 23:48:21.302',0,1,1,NULL,20007,2),(220101,'2019-01-04 23:48:21.318','2019-01-04 23:48:21.318',0,1,1,NULL,20101,2),(220102,'2019-01-04 23:48:21.318','2019-01-04 23:48:21.318',0,1,1,NULL,20102,2),(220103,'2019-01-04 23:48:21.318','2019-01-04 23:48:21.318',0,1,1,NULL,20103,2),(220104,'2019-01-04 23:48:21.319','2019-01-04 23:48:21.319',0,1,1,NULL,20104,2),(220105,'2019-01-04 23:48:21.319','2019-01-04 23:48:21.319',0,1,1,NULL,20105,2),(220106,'2019-01-04 23:48:21.319','2019-01-04 23:48:21.319',0,1,1,NULL,20106,2),(220107,'2019-01-04 23:48:21.320','2019-01-04 23:48:21.320',0,1,1,NULL,20107,2),(220201,'2019-01-04 23:48:21.339','2019-01-04 23:48:21.339',0,1,1,NULL,20201,2),(220202,'2019-01-04 23:48:21.340','2019-01-04 23:48:21.340',0,1,1,NULL,20202,2),(220203,'2019-01-04 23:48:21.341','2019-01-04 23:48:21.341',0,1,1,NULL,20203,2),(220204,'2019-01-04 23:48:21.342','2019-01-04 23:48:21.342',0,1,1,NULL,20204,2),(220205,'2019-01-04 23:48:21.342','2019-01-04 23:48:21.342',0,1,1,NULL,20205,2),(220206,'2019-01-04 23:48:21.343','2019-01-04 23:48:21.343',0,1,1,NULL,20206,2),(220207,'2019-01-04 23:48:21.343','2019-01-04 23:48:21.343',0,1,1,NULL,20207,2),(220301,'2019-01-04 23:48:21.351','2019-01-04 23:48:21.351',0,1,1,NULL,20301,2),(220302,'2019-01-04 23:48:21.351','2019-01-04 23:48:21.351',0,1,1,NULL,20302,2),(220303,'2019-01-04 23:48:21.351','2019-01-04 23:48:21.351',0,1,1,NULL,20303,2),(220304,'2019-01-04 23:48:21.351','2019-01-04 23:48:21.351',0,1,1,NULL,20304,2),(220305,'2019-01-04 23:48:21.352','2019-01-04 23:48:21.352',0,1,1,NULL,20305,2),(220306,'2019-01-04 23:48:21.352','2019-01-04 23:48:21.352',0,1,1,NULL,20306,2),(220307,'2019-01-04 23:48:21.352','2019-01-04 23:48:21.352',0,1,1,NULL,20307,2),(1001001,'2019-01-04 23:48:06.426','2019-01-04 23:48:06.426',0,1,1,NULL,1001,100),(1001002,'2019-01-04 23:48:06.427','2019-01-04 23:48:06.427',0,1,1,NULL,1002,100),(1001003,'2019-01-04 23:48:06.427','2019-01-04 23:48:06.427',0,1,1,NULL,1003,100),(1001004,'2019-01-04 23:48:06.428','2019-01-04 23:48:06.428',0,1,1,NULL,1004,100),(1001005,'2019-01-04 23:48:06.429','2019-01-04 23:48:06.429',0,1,1,NULL,1005,100),(1001006,'2019-01-04 23:48:06.429','2019-01-04 23:48:06.429',0,1,1,NULL,1006,100),(1001007,'2019-01-04 23:48:06.430','2019-01-04 23:48:06.430',0,1,1,NULL,1007,100),(1001101,'2019-01-04 23:48:06.443','2019-01-04 23:48:06.443',0,1,1,NULL,1101,100),(1001102,'2019-01-04 23:48:06.444','2019-01-04 23:48:06.444',0,1,1,NULL,1102,100),(1001103,'2019-01-04 23:48:06.444','2019-01-04 23:48:06.444',0,1,1,NULL,1103,100),(1001104,'2019-01-04 23:48:06.445','2019-01-04 23:48:06.445',0,1,1,NULL,1104,100),(1001105,'2019-01-04 23:48:06.445','2019-01-04 23:48:06.445',0,1,1,NULL,1105,100),(1001106,'2019-01-04 23:48:06.446','2019-01-04 23:48:06.446',0,1,1,NULL,1106,100),(1001107,'2019-01-04 23:48:06.446','2019-01-04 23:48:06.446',0,1,1,NULL,1107,100),(1001201,'2019-01-04 23:48:06.465','2019-01-04 23:48:06.465',0,1,1,NULL,1201,100),(1001202,'2019-01-04 23:48:06.466','2019-01-04 23:48:06.466',0,1,1,NULL,1202,100),(1001203,'2019-01-04 23:48:06.466','2019-01-04 23:48:06.466',0,1,1,NULL,1203,100),(1001204,'2019-01-04 23:48:06.467','2019-01-04 23:48:06.467',0,1,1,NULL,1204,100),(1001205,'2019-01-04 23:48:06.468','2019-01-04 23:48:06.468',0,1,1,NULL,1205,100),(1001206,'2019-01-04 23:48:06.468','2019-01-04 23:48:06.468',0,1,1,NULL,1206,100),(1001207,'2019-01-04 23:48:06.468','2019-01-04 23:48:06.468',0,1,1,NULL,1207,100),(1001301,'2019-01-04 23:48:06.482','2019-01-04 23:48:06.482',0,1,1,NULL,1301,100),(1001302,'2019-01-04 23:48:06.483','2019-01-04 23:48:06.483',0,1,1,NULL,1302,100),(1001303,'2019-01-04 23:48:06.483','2019-01-04 23:48:06.483',0,1,1,NULL,1303,100),(1001304,'2019-01-04 23:48:06.484','2019-01-04 23:48:06.484',0,1,1,NULL,1304,100),(1001305,'2019-01-04 23:48:06.485','2019-01-04 23:48:06.485',0,1,1,NULL,1305,100),(1001306,'2019-01-04 23:48:06.485','2019-01-04 23:48:06.485',0,1,1,NULL,1306,100),(1001307,'2019-01-04 23:48:06.486','2019-01-04 23:48:06.486',0,1,1,NULL,1307,100),(1001401,'2019-01-04 23:48:06.499','2019-01-04 23:48:06.499',0,1,1,NULL,1401,100),(1001402,'2019-01-04 23:48:06.500','2019-01-04 23:48:06.500',0,1,1,NULL,1402,100),(1001403,'2019-01-04 23:48:06.500','2019-01-04 23:48:06.500',0,1,1,NULL,1403,100),(1001404,'2019-01-04 23:48:06.501','2019-01-04 23:48:06.501',0,1,1,NULL,1404,100),(1001405,'2019-01-04 23:48:06.501','2019-01-04 23:48:06.501',0,1,1,NULL,1405,100),(1001406,'2019-01-04 23:48:06.502','2019-01-04 23:48:06.502',0,1,1,NULL,1406,100),(1001407,'2019-01-04 23:48:06.502','2019-01-04 23:48:06.502',0,1,1,NULL,1407,100),(1001501,'2019-01-04 23:48:06.513','2019-01-04 23:48:06.513',0,1,1,NULL,1501,100),(1001502,'2019-01-04 23:48:06.514','2019-01-04 23:48:06.514',0,1,1,NULL,1502,100),(1001503,'2019-01-04 23:48:06.514','2019-01-04 23:48:06.514',0,1,1,NULL,1503,100),(1001504,'2019-01-04 23:48:06.515','2019-01-04 23:48:06.515',0,1,1,NULL,1504,100),(1001505,'2019-01-04 23:48:06.516','2019-01-04 23:48:06.516',0,1,1,NULL,1505,100),(1001506,'2019-01-04 23:48:06.516','2019-01-04 23:48:06.516',0,1,1,NULL,1506,100),(1001507,'2019-01-04 23:48:06.517','2019-01-04 23:48:06.517',0,1,1,NULL,1507,100),(1001601,'2019-01-04 23:48:06.529','2019-01-04 23:48:06.529',0,1,1,NULL,1601,100),(1001602,'2019-01-04 23:48:06.530','2019-01-04 23:48:06.530',0,1,1,NULL,1602,100),(1001603,'2019-01-04 23:48:06.530','2019-01-04 23:48:06.530',0,1,1,NULL,1603,100),(1001604,'2019-01-04 23:48:06.531','2019-01-04 23:48:06.531',0,1,1,NULL,1604,100),(1001605,'2019-01-04 23:48:06.532','2019-01-04 23:48:06.532',0,1,1,NULL,1605,100),(1001606,'2019-01-04 23:48:06.532','2019-01-04 23:48:06.532',0,1,1,NULL,1606,100),(1001607,'2019-01-04 23:48:06.533','2019-01-04 23:48:06.533',0,1,1,NULL,1607,100),(1001701,'2019-01-04 23:48:06.548','2019-01-04 23:48:06.548',0,1,1,NULL,1701,100),(1001702,'2019-01-04 23:48:06.548','2019-01-04 23:48:06.548',0,1,1,NULL,1702,100),(1001703,'2019-01-04 23:48:06.549','2019-01-04 23:48:06.549',0,1,1,NULL,1703,100),(1001704,'2019-01-04 23:48:06.550','2019-01-04 23:48:06.550',0,1,1,NULL,1704,100),(1001705,'2019-01-04 23:48:06.550','2019-01-04 23:48:06.550',0,1,1,NULL,1705,100),(1001706,'2019-01-04 23:48:06.551','2019-01-04 23:48:06.551',0,1,1,NULL,1706,100),(1001707,'2019-01-04 23:48:06.551','2019-01-04 23:48:06.551',0,1,1,NULL,1707,100),(1001801,'2019-01-04 23:48:06.564','2019-01-04 23:48:06.564',0,1,1,NULL,1801,100),(1001802,'2019-01-04 23:48:06.565','2019-01-04 23:48:06.565',0,1,1,NULL,1802,100),(1001803,'2019-01-04 23:48:06.565','2019-01-04 23:48:06.565',0,1,1,NULL,1803,100),(1001804,'2019-01-04 23:48:06.569','2019-01-04 23:48:06.569',0,1,1,NULL,1804,100),(1001805,'2019-01-04 23:48:06.569','2019-01-04 23:48:06.569',0,1,1,NULL,1805,100),(1001806,'2019-01-04 23:48:06.570','2019-01-04 23:48:06.570',0,1,1,NULL,1806,100),(1001807,'2019-01-04 23:48:06.571','2019-01-04 23:48:06.571',0,1,1,NULL,1807,100),(1001901,'2019-01-04 23:48:06.585','2019-01-04 23:48:06.585',0,1,1,NULL,1901,100),(1001902,'2019-01-04 23:48:06.586','2019-01-04 23:48:06.586',0,1,1,NULL,1902,100),(1001903,'2019-01-04 23:48:06.586','2019-01-04 23:48:06.586',0,1,1,NULL,1903,100),(1001904,'2019-01-04 23:48:06.587','2019-01-04 23:48:06.587',0,1,1,NULL,1904,100),(1001905,'2019-01-04 23:48:06.588','2019-01-04 23:48:06.588',0,1,1,NULL,1905,100),(1001906,'2019-01-04 23:48:06.589','2019-01-04 23:48:06.589',0,1,1,NULL,1906,100),(1001907,'2019-01-04 23:48:06.590','2019-01-04 23:48:06.590',0,1,1,NULL,1907,100),(1002001,'2019-01-04 23:48:06.603','2019-01-04 23:48:06.603',0,1,1,NULL,2001,100),(1002002,'2019-01-04 23:48:06.604','2019-01-04 23:48:06.604',0,1,1,NULL,2002,100),(1002003,'2019-01-04 23:48:06.605','2019-01-04 23:48:06.605',0,1,1,NULL,2003,100),(1002004,'2019-01-04 23:48:06.605','2019-01-04 23:48:06.605',0,1,1,NULL,2004,100),(1002005,'2019-01-04 23:48:06.606','2019-01-04 23:48:06.606',0,1,1,NULL,2005,100),(1002006,'2019-01-04 23:48:06.607','2019-01-04 23:48:06.607',0,1,1,NULL,2006,100),(1002007,'2019-01-04 23:48:06.608','2019-01-04 23:48:06.608',0,1,1,NULL,2007,100),(1002101,'2019-01-04 23:48:06.624','2019-01-04 23:48:06.624',0,1,1,NULL,2101,100),(1002102,'2019-01-04 23:48:06.624','2019-01-04 23:48:06.624',0,1,1,NULL,2102,100),(1002103,'2019-01-04 23:48:06.625','2019-01-04 23:48:06.625',0,1,1,NULL,2103,100),(1002104,'2019-01-04 23:48:06.626','2019-01-04 23:48:06.626',0,1,1,NULL,2104,100),(1002105,'2019-01-04 23:48:06.627','2019-01-04 23:48:06.627',0,1,1,NULL,2105,100),(1002106,'2019-01-04 23:48:06.627','2019-01-04 23:48:06.627',0,1,1,NULL,2106,100),(1002107,'2019-01-04 23:48:06.628','2019-01-04 23:48:06.628',0,1,1,NULL,2107,100),(1002201,'2019-01-04 23:48:06.640','2019-01-04 23:48:06.640',0,1,1,NULL,2201,100),(1002202,'2019-01-04 23:48:06.641','2019-01-04 23:48:06.641',0,1,1,NULL,2202,100),(1002203,'2019-01-04 23:48:06.642','2019-01-04 23:48:06.642',0,1,1,NULL,2203,100),(1002204,'2019-01-04 23:48:06.642','2019-01-04 23:48:06.642',0,1,1,NULL,2204,100),(1002205,'2019-01-04 23:48:06.643','2019-01-04 23:48:06.643',0,1,1,NULL,2205,100),(1002206,'2019-01-04 23:48:06.643','2019-01-04 23:48:06.643',0,1,1,NULL,2206,100),(1002207,'2019-01-04 23:48:06.644','2019-01-04 23:48:06.644',0,1,1,NULL,2207,100),(1002301,'2019-01-04 23:48:06.659','2019-01-04 23:48:06.659',0,1,1,NULL,2301,100),(1002302,'2019-01-04 23:48:06.661','2019-01-04 23:48:06.661',0,1,1,NULL,2302,100),(1002303,'2019-01-04 23:48:06.662','2019-01-04 23:48:06.662',0,1,1,NULL,2303,100),(1002304,'2019-01-04 23:48:06.662','2019-01-04 23:48:06.662',0,1,1,NULL,2304,100),(1002305,'2019-01-04 23:48:06.664','2019-01-04 23:48:06.664',0,1,1,NULL,2305,100),(1002306,'2019-01-04 23:48:06.664','2019-01-04 23:48:06.664',0,1,1,NULL,2306,100),(1002307,'2019-01-04 23:48:06.665','2019-01-04 23:48:06.665',0,1,1,NULL,2307,100),(1002401,'2019-01-04 23:48:06.678','2019-01-04 23:48:06.678',0,1,1,NULL,2401,100),(1002402,'2019-01-04 23:48:06.679','2019-01-04 23:48:06.679',0,1,1,NULL,2402,100),(1002403,'2019-01-04 23:48:06.679','2019-01-04 23:48:06.679',0,1,1,NULL,2403,100),(1002404,'2019-01-04 23:48:06.680','2019-01-04 23:48:06.680',0,1,1,NULL,2404,100),(1002405,'2019-01-04 23:48:06.681','2019-01-04 23:48:06.681',0,1,1,NULL,2405,100),(1002406,'2019-01-04 23:48:06.682','2019-01-04 23:48:06.682',0,1,1,NULL,2406,100),(1002407,'2019-01-04 23:48:06.683','2019-01-04 23:48:06.683',0,1,1,NULL,2407,100),(1002501,'2019-01-04 23:48:06.694','2019-01-04 23:48:06.694',0,1,1,NULL,2501,100),(1002502,'2019-01-04 23:48:06.695','2019-01-04 23:48:06.695',0,1,1,NULL,2502,100),(1002503,'2019-01-04 23:48:06.697','2019-01-04 23:48:06.697',0,1,1,NULL,2503,100),(1002504,'2019-01-04 23:48:06.698','2019-01-04 23:48:06.698',0,1,1,NULL,2504,100),(1002505,'2019-01-04 23:48:06.699','2019-01-04 23:48:06.699',0,1,1,NULL,2505,100),(1002506,'2019-01-04 23:48:06.699','2019-01-04 23:48:06.699',0,1,1,NULL,2506,100),(1002507,'2019-01-04 23:48:06.699','2019-01-04 23:48:06.699',0,1,1,NULL,2507,100),(1002601,'2019-01-04 23:48:06.715','2019-01-04 23:48:06.715',0,1,1,NULL,2601,100),(1002602,'2019-01-04 23:48:06.716','2019-01-04 23:48:06.716',0,1,1,NULL,2602,100),(1002603,'2019-01-04 23:48:06.716','2019-01-04 23:48:06.716',0,1,1,NULL,2603,100),(1002604,'2019-01-04 23:48:06.717','2019-01-04 23:48:06.717',0,1,1,NULL,2604,100),(1002605,'2019-01-04 23:48:06.717','2019-01-04 23:48:06.717',0,1,1,NULL,2605,100),(1002606,'2019-01-04 23:48:06.718','2019-01-04 23:48:06.718',0,1,1,NULL,2606,100),(1002607,'2019-01-04 23:48:06.718','2019-01-04 23:48:06.718',0,1,1,NULL,2607,100),(1002701,'2019-01-04 23:48:06.731','2019-01-04 23:48:06.731',0,1,1,NULL,2701,100),(1002702,'2019-01-04 23:48:06.732','2019-01-04 23:48:06.732',0,1,1,NULL,2702,100),(1002703,'2019-01-04 23:48:06.732','2019-01-04 23:48:06.732',0,1,1,NULL,2703,100),(1002704,'2019-01-04 23:48:06.733','2019-01-04 23:48:06.733',0,1,1,NULL,2704,100),(1002705,'2019-01-04 23:48:06.733','2019-01-04 23:48:06.733',0,1,1,NULL,2705,100),(1002706,'2019-01-04 23:48:06.734','2019-01-04 23:48:06.734',0,1,1,NULL,2706,100),(1002707,'2019-01-04 23:48:06.735','2019-01-04 23:48:06.735',0,1,1,NULL,2707,100),(1002801,'2019-01-04 23:48:06.747','2019-01-04 23:48:06.747',0,1,1,NULL,2801,100),(1002802,'2019-01-04 23:48:06.748','2019-01-04 23:48:06.748',0,1,1,NULL,2802,100),(1002803,'2019-01-04 23:48:06.748','2019-01-04 23:48:06.748',0,1,1,NULL,2803,100),(1002804,'2019-01-04 23:48:06.749','2019-01-04 23:48:06.749',0,1,1,NULL,2804,100),(1002805,'2019-01-04 23:48:06.749','2019-01-04 23:48:06.749',0,1,1,NULL,2805,100),(1002806,'2019-01-04 23:48:06.750','2019-01-04 23:48:06.750',0,1,1,NULL,2806,100),(1002807,'2019-01-04 23:48:06.750','2019-01-04 23:48:06.750',0,1,1,NULL,2807,100),(1002901,'2019-01-04 23:48:06.764','2019-01-04 23:48:06.764',0,1,1,NULL,2901,100),(1002902,'2019-01-04 23:48:06.764','2019-01-04 23:48:06.764',0,1,1,NULL,2902,100),(1002903,'2019-01-04 23:48:06.765','2019-01-04 23:48:06.765',0,1,1,NULL,2903,100),(1002904,'2019-01-04 23:48:06.765','2019-01-04 23:48:06.765',0,1,1,NULL,2904,100),(1002905,'2019-01-04 23:48:06.765','2019-01-04 23:48:06.765',0,1,1,NULL,2905,100),(1002906,'2019-01-04 23:48:06.766','2019-01-04 23:48:06.766',0,1,1,NULL,2906,100),(1002907,'2019-01-04 23:48:06.767','2019-01-04 23:48:06.767',0,1,1,NULL,2907,100),(1003001,'2019-01-04 23:48:06.780','2019-01-04 23:48:06.780',0,1,1,NULL,3001,100),(1003002,'2019-01-04 23:48:06.780','2019-01-04 23:48:06.780',0,1,1,NULL,3002,100),(1003003,'2019-01-04 23:48:06.781','2019-01-04 23:48:06.781',0,1,1,NULL,3003,100),(1003004,'2019-01-04 23:48:06.781','2019-01-04 23:48:06.781',0,1,1,NULL,3004,100),(1003005,'2019-01-04 23:48:06.782','2019-01-04 23:48:06.782',0,1,1,NULL,3005,100),(1003006,'2019-01-04 23:48:06.782','2019-01-04 23:48:06.782',0,1,1,NULL,3006,100),(1003007,'2019-01-04 23:48:06.783','2019-01-04 23:48:06.783',0,1,1,NULL,3007,100),(1003101,'2019-01-04 23:48:06.791','2019-01-04 23:48:06.791',0,1,1,NULL,3101,100),(1003102,'2019-01-04 23:48:06.791','2019-01-04 23:48:06.791',0,1,1,NULL,3102,100),(1003103,'2019-01-04 23:48:06.791','2019-01-04 23:48:06.791',0,1,1,NULL,3103,100),(1003104,'2019-01-04 23:48:06.792','2019-01-04 23:48:06.792',0,1,1,NULL,3104,100),(1003105,'2019-01-04 23:48:06.792','2019-01-04 23:48:06.792',0,1,1,NULL,3105,100),(1003106,'2019-01-04 23:48:06.792','2019-01-04 23:48:06.792',0,1,1,NULL,3106,100),(1003107,'2019-01-04 23:48:06.793','2019-01-04 23:48:06.793',0,1,1,NULL,3107,100),(1003201,'2019-01-04 23:48:06.806','2019-01-04 23:48:06.806',0,1,1,NULL,3201,100),(1003202,'2019-01-04 23:48:06.806','2019-01-04 23:48:06.806',0,1,1,NULL,3202,100),(1003203,'2019-01-04 23:48:06.807','2019-01-04 23:48:06.807',0,1,1,NULL,3203,100),(1003204,'2019-01-04 23:48:06.808','2019-01-04 23:48:06.808',0,1,1,NULL,3204,100),(1003205,'2019-01-04 23:48:06.808','2019-01-04 23:48:06.808',0,1,1,NULL,3205,100),(1003206,'2019-01-04 23:48:06.809','2019-01-04 23:48:06.809',0,1,1,NULL,3206,100),(1003207,'2019-01-04 23:48:06.809','2019-01-04 23:48:06.809',0,1,1,NULL,3207,100),(1003301,'2019-01-04 23:48:06.821','2019-01-04 23:48:06.821',0,1,1,NULL,3301,100),(1003302,'2019-01-04 23:48:06.822','2019-01-04 23:48:06.822',0,1,1,NULL,3302,100),(1003303,'2019-01-04 23:48:06.823','2019-01-04 23:48:06.823',0,1,1,NULL,3303,100),(1003304,'2019-01-04 23:48:06.823','2019-01-04 23:48:06.823',0,1,1,NULL,3304,100),(1003305,'2019-01-04 23:48:06.824','2019-01-04 23:48:06.824',0,1,1,NULL,3305,100),(1003306,'2019-01-04 23:48:06.824','2019-01-04 23:48:06.824',0,1,1,NULL,3306,100),(1003307,'2019-01-04 23:48:06.825','2019-01-04 23:48:06.825',0,1,1,NULL,3307,100),(1003401,'2019-01-04 23:48:06.834','2019-01-04 23:48:06.834',0,1,1,NULL,3401,100),(1003402,'2019-01-04 23:48:06.835','2019-01-04 23:48:06.835',0,1,1,NULL,3402,100),(1003403,'2019-01-04 23:48:06.835','2019-01-04 23:48:06.835',0,1,1,NULL,3403,100),(1003404,'2019-01-04 23:48:06.835','2019-01-04 23:48:06.835',0,1,1,NULL,3404,100),(1003405,'2019-01-04 23:48:06.836','2019-01-04 23:48:06.836',0,1,1,NULL,3405,100),(1003406,'2019-01-04 23:48:06.836','2019-01-04 23:48:06.836',0,1,1,NULL,3406,100),(1003407,'2019-01-04 23:48:06.836','2019-01-04 23:48:06.836',0,1,1,NULL,3407,100),(1003501,'2019-01-04 23:48:06.846','2019-01-04 23:48:06.846',0,1,1,NULL,3501,100),(1003502,'2019-01-04 23:48:06.846','2019-01-04 23:48:06.846',0,1,1,NULL,3502,100),(1003503,'2019-01-04 23:48:06.847','2019-01-04 23:48:06.847',0,1,1,NULL,3503,100),(1003504,'2019-01-04 23:48:06.847','2019-01-04 23:48:06.847',0,1,1,NULL,3504,100),(1003505,'2019-01-04 23:48:06.847','2019-01-04 23:48:06.847',0,1,1,NULL,3505,100),(1003506,'2019-01-04 23:48:06.848','2019-01-04 23:48:06.848',0,1,1,NULL,3506,100),(1003507,'2019-01-04 23:48:06.848','2019-01-04 23:48:06.848',0,1,1,NULL,3507,100),(1003601,'2019-01-04 23:48:06.855','2019-01-04 23:48:06.855',0,1,1,NULL,3601,100),(1003602,'2019-01-04 23:48:06.856','2019-01-04 23:48:06.856',0,1,1,NULL,3602,100),(1003603,'2019-01-04 23:48:06.856','2019-01-04 23:48:06.856',0,1,1,NULL,3603,100),(1003604,'2019-01-04 23:48:06.856','2019-01-04 23:48:06.856',0,1,1,NULL,3604,100),(1003605,'2019-01-04 23:48:06.857','2019-01-04 23:48:06.857',0,1,1,NULL,3605,100),(1003606,'2019-01-04 23:48:06.857','2019-01-04 23:48:06.857',0,1,1,NULL,3606,100),(1003607,'2019-01-04 23:48:06.857','2019-01-04 23:48:06.857',0,1,1,NULL,3607,100),(1003701,'2019-01-04 23:48:06.866','2019-01-04 23:48:06.866',0,1,1,NULL,3701,100),(1003702,'2019-01-04 23:48:06.867','2019-01-04 23:48:06.867',0,1,1,NULL,3702,100),(1003703,'2019-01-04 23:48:06.867','2019-01-04 23:48:06.867',0,1,1,NULL,3703,100),(1003704,'2019-01-04 23:48:06.868','2019-01-04 23:48:06.868',0,1,1,NULL,3704,100),(1003705,'2019-01-04 23:48:06.868','2019-01-04 23:48:06.868',0,1,1,NULL,3705,100),(1003706,'2019-01-04 23:48:06.868','2019-01-04 23:48:06.868',0,1,1,NULL,3706,100),(1003707,'2019-01-04 23:48:06.869','2019-01-04 23:48:06.869',0,1,1,NULL,3707,100),(1003801,'2019-01-04 23:48:06.876','2019-01-04 23:48:06.876',0,1,1,NULL,3801,100),(1003802,'2019-01-04 23:48:06.876','2019-01-04 23:48:06.876',0,1,1,NULL,3802,100),(1003803,'2019-01-04 23:48:06.876','2019-01-04 23:48:06.876',0,1,1,NULL,3803,100),(1003804,'2019-01-04 23:48:06.877','2019-01-04 23:48:06.877',0,1,1,NULL,3804,100),(1003805,'2019-01-04 23:48:06.878','2019-01-04 23:48:06.878',0,1,1,NULL,3805,100),(1003806,'2019-01-04 23:48:06.878','2019-01-04 23:48:06.878',0,1,1,NULL,3806,100),(1003807,'2019-01-04 23:48:06.879','2019-01-04 23:48:06.879',0,1,1,NULL,3807,100),(1003901,'2019-01-04 23:48:06.886','2019-01-04 23:48:06.886',0,1,1,NULL,3901,100),(1003902,'2019-01-04 23:48:06.887','2019-01-04 23:48:06.887',0,1,1,NULL,3902,100),(1003903,'2019-01-04 23:48:06.887','2019-01-04 23:48:06.887',0,1,1,NULL,3903,100),(1003904,'2019-01-04 23:48:06.889','2019-01-04 23:48:06.889',0,1,1,NULL,3904,100),(1003905,'2019-01-04 23:48:06.889','2019-01-04 23:48:06.889',0,1,1,NULL,3905,100),(1003906,'2019-01-04 23:48:06.890','2019-01-04 23:48:06.890',0,1,1,NULL,3906,100),(1003907,'2019-01-04 23:48:06.890','2019-01-04 23:48:06.890',0,1,1,NULL,3907,100),(1004001,'2019-01-04 23:48:06.899','2019-01-04 23:48:06.899',0,1,1,NULL,4001,100),(1004002,'2019-01-04 23:48:06.899','2019-01-04 23:48:06.899',0,1,1,NULL,4002,100),(1004003,'2019-01-04 23:48:06.900','2019-01-04 23:48:06.900',0,1,1,NULL,4003,100),(1004004,'2019-01-04 23:48:06.900','2019-01-04 23:48:06.900',0,1,1,NULL,4004,100),(1004005,'2019-01-04 23:48:06.900','2019-01-04 23:48:06.900',0,1,1,NULL,4005,100),(1004006,'2019-01-04 23:48:06.901','2019-01-04 23:48:06.901',0,1,1,NULL,4006,100),(1004007,'2019-01-04 23:48:06.901','2019-01-04 23:48:06.901',0,1,1,NULL,4007,100),(1004101,'2019-01-04 23:48:06.908','2019-01-04 23:48:06.908',0,1,1,NULL,4101,100),(1004102,'2019-01-04 23:48:06.909','2019-01-04 23:48:06.909',0,1,1,NULL,4102,100),(1004103,'2019-01-04 23:48:06.909','2019-01-04 23:48:06.909',0,1,1,NULL,4103,100),(1004104,'2019-01-04 23:48:06.909','2019-01-04 23:48:06.909',0,1,1,NULL,4104,100),(1004105,'2019-01-04 23:48:06.910','2019-01-04 23:48:06.910',0,1,1,NULL,4105,100),(1004106,'2019-01-04 23:48:06.911','2019-01-04 23:48:06.911',0,1,1,NULL,4106,100),(1004107,'2019-01-04 23:48:06.912','2019-01-04 23:48:06.912',0,1,1,NULL,4107,100),(1004201,'2019-01-04 23:48:06.920','2019-01-04 23:48:06.920',0,1,1,NULL,4201,100),(1004202,'2019-01-04 23:48:06.920','2019-01-04 23:48:06.920',0,1,1,NULL,4202,100),(1004203,'2019-01-04 23:48:06.921','2019-01-04 23:48:06.921',0,1,1,NULL,4203,100),(1004204,'2019-01-04 23:48:06.921','2019-01-04 23:48:06.921',0,1,1,NULL,4204,100),(1004205,'2019-01-04 23:48:06.921','2019-01-04 23:48:06.921',0,1,1,NULL,4205,100),(1004206,'2019-01-04 23:48:06.922','2019-01-04 23:48:06.922',0,1,1,NULL,4206,100),(1004207,'2019-01-04 23:48:06.922','2019-01-04 23:48:06.922',0,1,1,NULL,4207,100),(1004301,'2019-01-04 23:48:06.931','2019-01-04 23:48:06.931',0,1,1,NULL,4301,100),(1004302,'2019-01-04 23:48:06.931','2019-01-04 23:48:06.931',0,1,1,NULL,4302,100),(1004303,'2019-01-04 23:48:06.931','2019-01-04 23:48:06.931',0,1,1,NULL,4303,100),(1004304,'2019-01-04 23:48:06.932','2019-01-04 23:48:06.932',0,1,1,NULL,4304,100),(1004305,'2019-01-04 23:48:06.932','2019-01-04 23:48:06.932',0,1,1,NULL,4305,100),(1004306,'2019-01-04 23:48:06.933','2019-01-04 23:48:06.933',0,1,1,NULL,4306,100),(1004307,'2019-01-04 23:48:06.934','2019-01-04 23:48:06.934',0,1,1,NULL,4307,100),(1004401,'2019-01-04 23:48:06.952','2019-01-04 23:48:06.952',0,1,1,NULL,4401,100),(1004402,'2019-01-04 23:48:06.953','2019-01-04 23:48:06.953',0,1,1,NULL,4402,100),(1004403,'2019-01-04 23:48:06.953','2019-01-04 23:48:06.953',0,1,1,NULL,4403,100),(1004404,'2019-01-04 23:48:06.954','2019-01-04 23:48:06.954',0,1,1,NULL,4404,100),(1004405,'2019-01-04 23:48:06.954','2019-01-04 23:48:06.954',0,1,1,NULL,4405,100),(1004406,'2019-01-04 23:48:06.955','2019-01-04 23:48:06.955',0,1,1,NULL,4406,100),(1004407,'2019-01-04 23:48:06.955','2019-01-04 23:48:06.955',0,1,1,NULL,4407,100),(1004501,'2019-01-04 23:48:06.969','2019-01-04 23:48:06.969',0,1,1,NULL,4501,100),(1004502,'2019-01-04 23:48:06.969','2019-01-04 23:48:06.969',0,1,1,NULL,4502,100),(1004503,'2019-01-04 23:48:06.970','2019-01-04 23:48:06.970',0,1,1,NULL,4503,100),(1004504,'2019-01-04 23:48:06.970','2019-01-04 23:48:06.970',0,1,1,NULL,4504,100),(1004505,'2019-01-04 23:48:06.970','2019-01-04 23:48:06.970',0,1,1,NULL,4505,100),(1004506,'2019-01-04 23:48:06.971','2019-01-04 23:48:06.971',0,1,1,NULL,4506,100),(1004507,'2019-01-04 23:48:06.971','2019-01-04 23:48:06.971',0,1,1,NULL,4507,100),(1004601,'2019-01-04 23:48:06.980','2019-01-04 23:48:06.980',0,1,1,NULL,4601,100),(1004602,'2019-01-04 23:48:06.981','2019-01-04 23:48:06.981',0,1,1,NULL,4602,100),(1004603,'2019-01-04 23:48:06.981','2019-01-04 23:48:06.981',0,1,1,NULL,4603,100),(1004604,'2019-01-04 23:48:06.981','2019-01-04 23:48:06.981',0,1,1,NULL,4604,100),(1004605,'2019-01-04 23:48:06.982','2019-01-04 23:48:06.982',0,1,1,NULL,4605,100),(1004606,'2019-01-04 23:48:06.982','2019-01-04 23:48:06.982',0,1,1,NULL,4606,100),(1004607,'2019-01-04 23:48:06.982','2019-01-04 23:48:06.982',0,1,1,NULL,4607,100),(1004701,'2019-01-04 23:48:06.990','2019-01-04 23:48:06.990',0,1,1,NULL,4701,100),(1004702,'2019-01-04 23:48:06.990','2019-01-04 23:48:06.990',0,1,1,NULL,4702,100),(1004703,'2019-01-04 23:48:06.990','2019-01-04 23:48:06.990',0,1,1,NULL,4703,100),(1004704,'2019-01-04 23:48:06.990','2019-01-04 23:48:06.990',0,1,1,NULL,4704,100),(1004705,'2019-01-04 23:48:06.991','2019-01-04 23:48:06.991',0,1,1,NULL,4705,100),(1004706,'2019-01-04 23:48:06.991','2019-01-04 23:48:06.991',0,1,1,NULL,4706,100),(1004707,'2019-01-04 23:48:06.991','2019-01-04 23:48:06.991',0,1,1,NULL,4707,100),(1004801,'2019-01-04 23:48:07.000','2019-01-04 23:48:07.000',0,1,1,NULL,4801,100),(1004802,'2019-01-04 23:48:07.000','2019-01-04 23:48:07.000',0,1,1,NULL,4802,100),(1004803,'2019-01-04 23:48:07.001','2019-01-04 23:48:07.001',0,1,1,NULL,4803,100),(1004804,'2019-01-04 23:48:07.001','2019-01-04 23:48:07.001',0,1,1,NULL,4804,100),(1004805,'2019-01-04 23:48:07.001','2019-01-04 23:48:07.001',0,1,1,NULL,4805,100),(1004806,'2019-01-04 23:48:07.002','2019-01-04 23:48:07.002',0,1,1,NULL,4806,100),(1004807,'2019-01-04 23:48:07.002','2019-01-04 23:48:07.002',0,1,1,NULL,4807,100),(1020001,'2019-01-04 23:48:21.302','2019-01-04 23:48:21.302',0,1,1,NULL,20001,10),(1020002,'2019-01-04 23:48:21.303','2019-01-04 23:48:21.303',0,1,1,NULL,20002,10),(1020003,'2019-01-04 23:48:21.303','2019-01-04 23:48:21.303',0,1,1,NULL,20003,10),(1020004,'2019-01-04 23:48:21.303','2019-01-04 23:48:21.303',0,1,1,NULL,20004,10),(1020005,'2019-01-04 23:48:21.303','2019-01-04 23:48:21.303',0,1,1,NULL,20005,10),(1020006,'2019-01-04 23:48:21.309','2019-01-04 23:48:21.309',0,1,1,NULL,20006,10),(1020007,'2019-01-04 23:48:21.309','2019-01-04 23:48:21.309',0,1,1,NULL,20007,10),(1020101,'2019-01-04 23:48:21.320','2019-01-04 23:48:21.320',0,1,1,NULL,20101,10),(1020102,'2019-01-04 23:48:21.321','2019-01-04 23:48:21.321',0,1,1,NULL,20102,10),(1020103,'2019-01-04 23:48:21.321','2019-01-04 23:48:21.321',0,1,1,NULL,20103,10),(1020104,'2019-01-04 23:48:21.321','2019-01-04 23:48:21.321',0,1,1,NULL,20104,10),(1020105,'2019-01-04 23:48:21.322','2019-01-04 23:48:21.322',0,1,1,NULL,20105,10),(1020106,'2019-01-04 23:48:21.322','2019-01-04 23:48:21.322',0,1,1,NULL,20106,10),(1020107,'2019-01-04 23:48:21.323','2019-01-04 23:48:21.323',0,1,1,NULL,20107,10),(1020201,'2019-01-04 23:48:21.344','2019-01-04 23:48:21.344',0,1,1,NULL,20201,10),(1020202,'2019-01-04 23:48:21.344','2019-01-04 23:48:21.344',0,1,1,NULL,20202,10),(1020203,'2019-01-04 23:48:21.344','2019-01-04 23:48:21.344',0,1,1,NULL,20203,10),(1020204,'2019-01-04 23:48:21.345','2019-01-04 23:48:21.345',0,1,1,NULL,20204,10),(1020205,'2019-01-04 23:48:21.345','2019-01-04 23:48:21.345',0,1,1,NULL,20205,10),(1020206,'2019-01-04 23:48:21.346','2019-01-04 23:48:21.346',0,1,1,NULL,20206,10),(1020207,'2019-01-04 23:48:21.346','2019-01-04 23:48:21.346',0,1,1,NULL,20207,10),(1020301,'2019-01-04 23:48:21.352','2019-01-04 23:48:21.352',0,1,1,NULL,20301,10),(1020302,'2019-01-04 23:48:21.353','2019-01-04 23:48:21.353',0,1,1,NULL,20302,10),(1020303,'2019-01-04 23:48:21.353','2019-01-04 23:48:21.353',0,1,1,NULL,20303,10),(1020304,'2019-01-04 23:48:21.354','2019-01-04 23:48:21.354',0,1,1,NULL,20304,10),(1020305,'2019-01-04 23:48:21.355','2019-01-04 23:48:21.355',0,1,1,NULL,20305,10),(1020306,'2019-01-04 23:48:21.357','2019-01-04 23:48:21.357',0,1,1,NULL,20306,10),(1020307,'2019-01-04 23:48:21.358','2019-01-04 23:48:21.358',0,1,1,NULL,20307,10),(10020001,'2019-01-04 23:48:21.310','2019-01-04 23:48:21.310',0,1,1,NULL,20001,100),(10020002,'2019-01-04 23:48:21.313','2019-01-04 23:48:21.313',0,1,1,NULL,20002,100),(10020003,'2019-01-04 23:48:21.314','2019-01-04 23:48:21.314',0,1,1,NULL,20003,100),(10020004,'2019-01-04 23:48:21.314','2019-01-04 23:48:21.314',0,1,1,NULL,20004,100),(10020005,'2019-01-04 23:48:21.314','2019-01-04 23:48:21.314',0,1,1,NULL,20005,100),(10020006,'2019-01-04 23:48:21.315','2019-01-04 23:48:21.315',0,1,1,NULL,20006,100),(10020007,'2019-01-04 23:48:21.315','2019-01-04 23:48:21.315',0,1,1,NULL,20007,100),(10020101,'2019-01-04 23:48:21.324','2019-01-04 23:48:21.324',0,1,1,NULL,20101,100),(10020102,'2019-01-04 23:48:21.330','2019-01-04 23:48:21.330',0,1,1,NULL,20102,100),(10020103,'2019-01-04 23:48:21.332','2019-01-04 23:48:21.332',0,1,1,NULL,20103,100),(10020104,'2019-01-04 23:48:21.334','2019-01-04 23:48:21.334',0,1,1,NULL,20104,100),(10020105,'2019-01-04 23:48:21.335','2019-01-04 23:48:21.335',0,1,1,NULL,20105,100),(10020106,'2019-01-04 23:48:21.335','2019-01-04 23:48:21.335',0,1,1,NULL,20106,100),(10020107,'2019-01-04 23:48:21.335','2019-01-04 23:48:21.335',0,1,1,NULL,20107,100),(10020201,'2019-01-04 23:48:21.346','2019-01-04 23:48:21.346',0,1,1,NULL,20201,100),(10020202,'2019-01-04 23:48:21.347','2019-01-04 23:48:21.347',0,1,1,NULL,20202,100),(10020203,'2019-01-04 23:48:21.347','2019-01-04 23:48:21.347',0,1,1,NULL,20203,100),(10020204,'2019-01-04 23:48:21.347','2019-01-04 23:48:21.347',0,1,1,NULL,20204,100),(10020205,'2019-01-04 23:48:21.347','2019-01-04 23:48:21.347',0,1,1,NULL,20205,100),(10020206,'2019-01-04 23:48:21.348','2019-01-04 23:48:21.348',0,1,1,NULL,20206,100),(10020207,'2019-01-04 23:48:21.348','2019-01-04 23:48:21.348',0,1,1,NULL,20207,100),(10020301,'2019-01-04 23:48:21.360','2019-01-04 23:48:21.360',0,1,1,NULL,20301,100),(10020302,'2019-01-04 23:48:21.360','2019-01-04 23:48:21.360',0,1,1,NULL,20302,100),(10020303,'2019-01-04 23:48:21.361','2019-01-04 23:48:21.361',0,1,1,NULL,20303,100),(10020304,'2019-01-04 23:48:21.361','2019-01-04 23:48:21.361',0,1,1,NULL,20304,100),(10020305,'2019-01-04 23:48:21.362','2019-01-04 23:48:21.362',0,1,1,NULL,20305,100),(10020306,'2019-01-04 23:48:21.362','2019-01-04 23:48:21.362',0,1,1,NULL,20306,100),(10020307,'2019-01-04 23:48:21.362','2019-01-04 23:48:21.362',0,1,1,NULL,20307,100);
/*!40000 ALTER TABLE `aci_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aci_role_permission_rule`
--

DROP TABLE IF EXISTS `aci_role_permission_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aci_role_permission_rule` (
  `role_permission_id` bigint(20) NOT NULL,
  `rule_id` bigint(20) NOT NULL,
  KEY `FK5tti3cceuc1ndr7rje79xe062` (`rule_id`),
  KEY `FKgwficw92wdnrhpidby8peirgp` (`role_permission_id`),
  CONSTRAINT `FK5tti3cceuc1ndr7rje79xe062` FOREIGN KEY (`rule_id`) REFERENCES `aci_rule` (`id`),
  CONSTRAINT `FKgwficw92wdnrhpidby8peirgp` FOREIGN KEY (`role_permission_id`) REFERENCES `aci_role_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aci_role_permission_rule`
--

LOCK TABLES `aci_role_permission_rule` WRITE;
/*!40000 ALTER TABLE `aci_role_permission_rule` DISABLE KEYS */;
INSERT INTO `aci_role_permission_rule` VALUES (11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(21,5),(22,5),(23,5),(24,5),(25,5),(26,5),(27,5),(101,4),(102,4),(103,4),(104,4),(105,4),(106,4),(107,4),(1101,1),(1102,1),(1103,1),(1104,1),(1105,1),(1106,1),(1107,1),(2101,5),(2102,5),(2103,5),(2104,5),(2105,5),(2106,5),(2107,5),(10101,5),(10102,5),(10103,5),(10104,5),(10105,5),(10106,5),(10107,5),(1201,1),(1202,1),(1203,1),(1204,1),(1205,1),(1206,1),(1207,1),(2201,5),(2202,5),(2203,5),(2204,5),(2205,5),(2206,5),(2207,5),(10201,5),(10202,5),(10203,5),(10204,5),(10205,5),(10206,5),(10207,5),(1301,1),(1302,1),(1303,1),(1304,1),(1305,1),(1306,1),(1307,1),(2301,5),(2302,5),(2303,5),(2304,5),(2305,5),(2306,5),(2307,5),(10301,5),(10302,5),(10303,5),(10304,5),(10305,5),(10306,5),(10307,5),(1401,1),(1402,1),(1403,1),(1404,1),(1405,1),(1406,1),(1407,1),(2401,5),(2402,5),(2403,5),(2404,5),(2405,5),(2406,5),(2407,5),(10401,4),(10402,4),(10403,4),(10404,4),(10405,4),(10406,4),(10407,4),(1501,1),(1502,1),(1503,1),(1504,1),(1505,1),(1506,1),(1507,1),(2501,5),(2502,5),(2503,5),(2504,5),(2505,5),(2506,5),(2507,5),(10501,4),(10502,4),(10503,4),(10504,4),(10505,4),(10506,4),(10507,4),(1601,1),(1602,1),(1603,1),(1604,1),(1605,1),(1606,1),(1607,1),(2601,5),(2602,5),(2603,5),(2604,5),(2605,5),(2606,5),(2607,5),(10601,4),(10602,4),(10603,4),(10604,4),(10605,4),(10606,4),(10607,4),(1701,1),(1702,1),(1703,1),(1704,1),(1705,1),(1706,1),(1707,1),(2701,5),(2702,5),(2703,5),(2704,5),(2705,5),(2706,5),(2707,5),(10701,4),(10702,4),(10703,4),(10704,4),(10705,4),(10706,4),(10707,4),(1801,1),(1802,1),(1803,1),(1804,1),(1805,1),(1806,1),(1807,1),(2801,5),(2802,5),(2803,5),(2804,5),(2805,5),(2806,5),(2807,5),(10801,5),(10803,5),(10807,5),(100801,5),(100803,5),(100807,5),(1901,1),(1902,1),(1903,1),(1904,1),(1905,1),(1906,1),(1907,1),(2901,5),(2902,5),(2903,5),(2904,5),(2905,5),(2906,5),(2907,5),(10901,5),(10903,5),(10907,5),(11001,1),(11002,1),(11003,1),(11004,1),(11005,1),(11006,1),(11007,1),(21001,5),(21002,5),(21003,5),(21004,5),(21005,5),(21006,5),(21007,5),(101001,4),(101002,4),(101003,4),(101004,4),(101005,4),(101006,4),(101007,4),(11101,1),(11102,1),(11103,1),(11104,1),(11105,1),(11106,1),(11107,1),(21101,5),(21102,5),(21103,5),(21104,5),(21105,5),(21106,5),(21107,5),(101101,5),(101102,5),(101103,5),(101104,5),(101105,5),(101106,5),(101107,5),(11201,1),(11202,1),(11203,1),(11204,1),(11205,1),(11206,1),(11207,1),(21201,5),(21202,5),(21203,5),(21204,5),(21205,5),(21206,5),(21207,5),(101201,5),(101202,5),(101203,5),(101204,5),(101205,5),(101206,5),(101207,5),(11301,1),(11302,1),(11303,1),(11304,1),(11305,1),(11306,1),(11307,1),(21301,5),(21302,5),(21303,5),(21304,5),(21305,5),(21306,5),(21307,5),(101301,4),(101302,4),(101303,4),(101304,4),(101305,4),(101306,4),(101307,4),(11401,1),(11402,1),(11403,1),(11404,1),(11405,1),(11406,1),(11407,1),(21401,5),(21402,5),(21403,5),(21404,5),(21405,5),(21406,5),(21407,5),(101401,5),(101402,5),(101403,5),(101404,5),(101405,5),(101406,5),(101407,5),(11501,1),(11502,1),(11503,1),(11504,1),(11505,1),(11506,1),(11507,1),(21501,5),(21502,5),(21503,5),(21504,5),(21505,5),(21506,5),(21507,5),(101501,5),(101502,5),(101503,5),(101507,5),(1001501,5),(1001502,5),(1001503,5),(1001507,5),(11601,1),(11602,1),(11603,1),(11604,1),(11605,1),(11606,1),(11607,1),(21601,5),(21602,5),(21603,5),(21604,5),(21605,5),(21606,5),(21607,5),(101601,5),(101602,5),(101603,5),(101604,5),(101605,5),(101606,5),(101607,5),(11701,1),(11702,1),(11703,1),(11704,1),(11705,1),(11706,1),(11707,1),(21701,5),(21702,5),(21703,5),(21704,5),(21705,5),(21706,5),(21707,5),(101701,5),(101702,5),(101703,5),(101704,5),(101705,5),(101706,5),(101707,5),(1001701,5),(1001703,5),(1001707,5),(11801,1),(11802,1),(11803,1),(11804,1),(11805,1),(11806,1),(11807,1),(21801,5),(21802,5),(21803,5),(21804,5),(21805,5),(21806,5),(21807,5),(101801,4),(101802,4),(101803,4),(101804,4),(101805,4),(101806,4),(101807,4),(11901,1),(11902,1),(11903,1),(11904,1),(11905,1),(11906,1),(11907,1),(21901,5),(21902,5),(21903,5),(21904,5),(21905,5),(21906,5),(21907,5),(101901,5),(101902,5),(101903,5),(101904,5),(101905,5),(101906,5),(101907,5),(12001,1),(12002,1),(12003,1),(12004,1),(12005,1),(12006,1),(12007,1),(22001,5),(22002,5),(22003,5),(22004,5),(22005,5),(22006,5),(22007,5),(102001,5),(102002,5),(102003,5),(102004,5),(102005,5),(102006,5),(102007,5),(12101,1),(12102,1),(12103,1),(12104,1),(12105,1),(12106,1),(12107,1),(22101,5),(22102,5),(22103,5),(22104,5),(22105,5),(22106,5),(22107,5),(102101,5),(102102,5),(102103,5),(102104,5),(102105,5),(102106,5),(102107,5),(12201,1),(12202,1),(12203,1),(12204,1),(12205,1),(12206,1),(12207,1),(22201,5),(22202,5),(22203,5),(22204,5),(22205,5),(22206,5),(22207,5),(102201,5),(102202,5),(102203,5),(102204,5),(102205,5),(102206,5),(102207,5),(12301,1),(12302,1),(12303,1),(12304,1),(12305,1),(12306,1),(12307,1),(22301,5),(22302,5),(22303,5),(22304,5),(22305,5),(22306,5),(22307,5),(102301,5),(102302,5),(102303,5),(102304,5),(102305,5),(102306,5),(102307,5),(12401,1),(12402,1),(12403,1),(12404,1),(12405,1),(12406,1),(12407,1),(22401,5),(22402,5),(22403,5),(22404,5),(22405,5),(22406,5),(22407,5),(102401,5),(102402,5),(102403,5),(102404,5),(102405,5),(102406,5),(102407,5),(1002401,5),(1002403,5),(1002407,5),(12501,1),(12502,1),(12503,1),(12504,1),(12505,1),(12506,1),(12507,1),(22501,5),(22502,5),(22503,5),(22504,5),(22505,5),(22506,5),(22507,5),(102501,5),(102502,5),(102503,5),(102504,5),(102505,5),(102506,5),(102507,5),(12601,1),(12602,1),(12603,1),(12604,1),(12605,1),(12606,1),(12607,1),(22601,5),(22602,5),(22603,5),(22604,5),(22605,5),(22606,5),(22607,5),(102601,4),(102602,4),(102603,4),(102604,4),(102605,4),(102606,4),(102607,4),(12701,1),(12702,1),(12703,1),(12704,1),(12705,1),(12706,1),(12707,1),(22701,5),(22702,5),(22703,5),(22704,5),(22705,5),(22706,5),(22707,5),(102701,5),(102702,5),(102703,5),(102704,5),(102705,5),(102706,5),(102707,5),(12801,1),(12802,1),(12803,1),(12804,1),(12805,1),(12806,1),(12807,1),(22801,5),(22802,5),(22803,5),(22804,5),(22805,5),(22806,5),(22807,5),(102801,5),(102802,5),(102803,5),(102804,5),(102805,5),(102806,5),(102807,5),(12901,1),(12902,1),(12903,1),(12904,1),(12905,1),(12906,1),(12907,1),(22901,5),(22902,5),(22903,5),(22904,5),(22905,5),(22906,5),(22907,5),(102901,5),(102903,5),(102907,5),(1002901,5),(1002903,5),(1002907,5),(13001,1),(13002,1),(13003,1),(13004,1),(13005,1),(13006,1),(13007,1),(23001,5),(23002,5),(23003,5),(23004,5),(23005,5),(23006,5),(23007,5),(103001,5),(103002,5),(103003,5),(103004,5),(103005,5),(103006,5),(103007,5),(13101,1),(13102,1),(13103,1),(13104,1),(13105,1),(13106,1),(13107,1),(23101,5),(23102,5),(23103,5),(23104,5),(23105,5),(23106,5),(23107,5),(103101,5),(103103,5),(103107,5),(1003101,5),(1003103,5),(1003107,5),(13201,1),(13202,1),(13203,1),(13204,1),(13205,1),(13206,1),(13207,1),(23201,5),(23202,5),(23203,5),(23204,5),(23205,5),(23206,5),(23207,5),(103201,5),(103203,5),(103207,5),(1003201,5),(1003203,5),(1003207,5),(13301,1),(13302,1),(13303,1),(13304,1),(13305,1),(13306,1),(13307,1),(23301,5),(23302,5),(23303,5),(23304,5),(23305,5),(23306,5),(23307,5),(103301,5),(103303,5),(103307,5),(1003301,5),(1003303,5),(1003307,5),(13401,1),(13402,1),(13403,1),(13404,1),(13405,1),(13406,1),(13407,1),(23401,5),(23402,5),(23403,5),(23404,5),(23405,5),(23406,5),(23407,5),(103401,5),(103403,5),(103407,5),(13501,1),(13502,1),(13503,1),(13504,1),(13505,1),(13506,1),(13507,1),(23501,5),(23502,5),(23503,5),(23504,5),(23505,5),(23506,5),(23507,5),(103501,5),(103503,5),(103507,5),(1003501,5),(1003503,5),(1003507,5),(13601,1),(13602,1),(13603,1),(13604,1),(13605,1),(13606,1),(13607,1),(23601,5),(23602,5),(23603,5),(23604,5),(23605,5),(23606,5),(23607,5),(103601,5),(103602,5),(103603,5),(103604,5),(103605,5),(103606,5),(103607,5),(13701,1),(13702,1),(13703,1),(13704,1),(13705,1),(13706,1),(13707,1),(23701,5),(23702,5),(23703,5),(23704,5),(23705,5),(23706,5),(23707,5),(103701,5),(103702,5),(103703,5),(103704,5),(103705,5),(103706,5),(103707,5),(13801,1),(13802,1),(13803,1),(13804,1),(13805,1),(13806,1),(13807,1),(23801,5),(23802,5),(23803,5),(23804,5),(23805,5),(23806,5),(23807,5),(103801,5),(103802,5),(103803,5),(103804,5),(103805,5),(103806,5),(103807,5),(13901,1),(13902,1),(13903,1),(13904,1),(13905,1),(13906,1),(13907,1),(23901,5),(23902,5),(23903,5),(23904,5),(23905,5),(23906,5),(23907,5),(103901,4),(103902,4),(103903,4),(103904,4),(103905,4),(103906,4),(103907,4),(14001,1),(14002,1),(14003,1),(14004,1),(14005,1),(14006,1),(14007,1),(24001,5),(24002,5),(24003,5),(24004,5),(24005,5),(24006,5),(24007,5),(104001,5),(104002,5),(104003,5),(104004,5),(104005,5),(104006,5),(104007,5),(14101,1),(14102,1),(14103,1),(14104,1),(14105,1),(14106,1),(14107,1),(24101,5),(24102,5),(24103,5),(24104,5),(24105,5),(24106,5),(24107,5),(104101,5),(104103,5),(104107,5),(14201,1),(14202,1),(14203,1),(14204,1),(14205,1),(14206,1),(14207,1),(24201,5),(24202,5),(24203,5),(24204,5),(24205,5),(24206,5),(24207,5),(104201,5),(104202,5),(104203,5),(104204,5),(104205,5),(104206,5),(104207,5),(14301,1),(14302,1),(14303,1),(14304,1),(14305,1),(14306,1),(14307,1),(24301,5),(24302,5),(24303,5),(24304,5),(24305,5),(24306,5),(24307,5),(104301,5),(104302,5),(104303,5),(104304,5),(104305,5),(104306,5),(104307,5),(14401,1),(14402,1),(14403,1),(14404,1),(14405,1),(14406,1),(14407,1),(24401,5),(24402,5),(24403,5),(24404,5),(24405,5),(24406,5),(24407,5),(104401,4),(104402,4),(104403,4),(104404,4),(104405,4),(104406,4),(104407,4),(14501,1),(14502,1),(14503,1),(14504,1),(14505,1),(14506,1),(14507,1),(24501,5),(24502,5),(24503,5),(24504,5),(24505,5),(24506,5),(24507,5),(104501,5),(104502,5),(104503,5),(104504,5),(104505,5),(104506,5),(104507,5),(14601,1),(14602,1),(14603,1),(14604,1),(14605,1),(14606,1),(14607,1),(24601,5),(24602,5),(24603,5),(24604,5),(24605,5),(24606,5),(24607,5),(104601,5),(104603,5),(104607,5),(1004601,5),(1004603,5),(1004607,5),(14701,1),(14702,1),(14703,1),(14704,1),(14705,1),(14706,1),(14707,1),(24701,5),(24702,5),(24703,5),(24704,5),(24705,5),(24706,5),(24707,5),(104701,5),(104703,5),(104707,5),(1004701,5),(1004703,5),(1004707,5),(14801,1),(14802,1),(14803,1),(14804,1),(14805,1),(14806,1),(14807,1),(24801,5),(24802,5),(24803,5),(24804,5),(24805,5),(24806,5),(24807,5),(104801,5),(104803,5),(104807,5),(1004801,5),(1004803,5),(1004807,5),(120001,1),(120002,1),(120003,1),(120004,1),(120005,1),(120006,1),(120007,1),(220001,5),(220002,5),(220003,5),(220004,5),(220005,5),(220006,5),(220007,5),(1020001,5),(1020002,5),(1020003,5),(1020004,5),(1020005,5),(1020006,5),(1020007,5),(120101,1),(120102,1),(120103,1),(120104,1),(120105,1),(120106,1),(120107,1),(220101,5),(220102,5),(220103,5),(220104,5),(220105,5),(220106,5),(220107,5),(1020101,5),(1020102,5),(1020103,5),(1020104,5),(1020105,5),(1020106,5),(1020107,5),(120201,1),(120202,1),(120203,1),(120204,1),(120205,1),(120206,1),(120207,1),(220201,5),(220202,5),(220203,5),(220204,5),(220205,5),(220206,5),(220207,5),(1020201,5),(1020202,5),(1020203,5),(1020204,5),(1020205,5),(1020206,5),(1020207,5),(120301,1),(120302,1),(120303,1),(120304,1),(120305,1),(120306,1),(120307,1),(220301,5),(220302,5),(220303,5),(220304,5),(220305,5),(220306,5),(220307,5),(1020301,5),(1020302,5),(1020303,5),(1020304,5),(1020305,5),(1020306,5),(1020307,5);
/*!40000 ALTER TABLE `aci_role_permission_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aci_rule`
--

DROP TABLE IF EXISTS `aci_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aci_rule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `enable` char(1) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt563w3p6atvxp82y7mvd6usa1` (`creator_id`),
  KEY `FKp7rj1lrxysuwi3p1gxl73roti` (`modifier_id`),
  KEY `FKqt26bdssvwqn621glj61guhb` (`user_id`),
  CONSTRAINT `FK6pq33gji8l55jtgbq855sbmx0` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK75uckt4w47iqavbyop7fatn7f` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKlo6u4keu19k656xcwl66pp09w` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKlpy9btqkqg198dchlcsvtwvtx` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKp5xq1tk2u471kh82aun11m8fx` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKp7rj1lrxysuwi3p1gxl73roti` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKqt26bdssvwqn621glj61guhb` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKt563w3p6atvxp82y7mvd6usa1` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aci_rule`
--

LOCK TABLES `aci_rule` WRITE;
/*!40000 ALTER TABLE `aci_rule` DISABLE KEYS */;
INSERT INTO `aci_rule` VALUES (1,'2017-05-20 10:41:58.743','2017-05-27 11:57:02.528',1,'admin',NULL,'scope',NULL,NULL,'Y',NULL),(2,'2017-05-20 10:41:58.743','2017-05-27 11:57:02.529',1,'ib',NULL,'scope',NULL,NULL,'Y',NULL),(3,'2017-05-20 10:41:58.743','2017-05-27 11:57:02.529',1,'user',NULL,'scope',NULL,NULL,'Y',NULL),(4,'2017-10-29 13:57:31.625','2017-10-29 13:57:31.625',1,'creator',NULL,'scope',NULL,NULL,'Y',NULL),(5,'2018-08-13 02:24:46.582','2018-08-13 02:24:46.582',1,'branches',NULL,'scope',NULL,NULL,'Y',NULL);
/*!40000 ALTER TABLE `aci_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aci_user`
--

DROP TABLE IF EXISTS `aci_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aci_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `verify` char(1) DEFAULT NULL,
  `introducer_id` bigint(20) DEFAULT NULL,
  `expires_in` bigint(20) DEFAULT NULL,
  `ip_black_list` varchar(255) DEFAULT NULL,
  `ip_white_list` varchar(255) DEFAULT NULL,
  `anonymous_access_domain` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `coin` bigint(20) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `fackbook_email` varchar(255) DEFAULT NULL,
  `google_email` varchar(255) DEFAULT NULL,
  `wechat_open_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_username` (`username`),
  UNIQUE KEY `unique_username_client_id` (`username`,`client_id`),
  KEY `FKrlj77ymttuppjd3f7xvuk7x1q` (`creator_id`),
  KEY `FK4h3955rsrfhasipafokaro9ff` (`modifier_id`),
  KEY `FK9yy0ya980j002yvtxi9r7kv6b` (`branch_id`),
  KEY `FKn82ha3ccdebhokx3a8fgdqeyy` (`role_id`),
  KEY `FKiqlul966n736s0uvexrlhdxcv` (`introducer_id`),
  KEY `FKsi9lb5yo3m7vs9b9a6w5076jb` (`user_id`),
  CONSTRAINT `FKd109424e29jbj4bo7qg38ndyf` FOREIGN KEY (`branch_id`) REFERENCES `aci_branch` (`id`),
  CONSTRAINT `FKg4j7qh9d8aevi3a30y46tp656` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKl4f8520xt55yqwdkmoi3c5b1w` FOREIGN KEY (`introducer_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKlinh7n6hwkwxkmi0h7617y41x` FOREIGN KEY (`role_id`) REFERENCES `aci_role` (`id`),
  CONSTRAINT `FKmy4ngbsns4vjfmi8b3pqk379` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKppdu8fsqw99g57j3k9vwr72qt` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aci_user`
--

LOCK TABLES `aci_user` WRITE;
/*!40000 ALTER TABLE `aci_user` DISABLE KEYS */;
INSERT INTO `aci_user` VALUES (1,'2017-07-23 10:07:59.980','2018-08-23 10:33:08.776',2,'leon.zhou@intelliware.co.nz','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,1,1,'leonzhou','leon.zhou@intelliware.co.nz','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'4',NULL,NULL,NULL),(2,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'admin@localhost','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,2,2,'admin','admin@localhost','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'4',NULL,NULL,NULL),(3,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'customer@localhost','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,2,10,'customer','customer@localhost','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'4',NULL,NULL,NULL),(4,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'anno@localhost','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,2,100,'anno','anno@localhost','Y',NULL,NULL,NULL,NULL,'localhost',NULL,NULL,0,NULL,'4',NULL,NULL,NULL),(10,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'admin@domain1','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,3,2,'admin','admin@domain1','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'12',NULL,NULL,NULL),(11,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'customer@domain1','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,3,10,'customer','customer@domain1','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'12',NULL,NULL,NULL),(12,'2017-07-23 10:07:59.980','2018-09-13 09:12:23.011',4,'anno@domain1','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,12,3,100,'anno','anno@domain1','Y',NULL,NULL,NULL,NULL,'mall1.suoyanmall.com',NULL,NULL,2,NULL,'12',NULL,NULL,NULL),(20,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'admin@domain2','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,4,2,'admin','admin@domain2','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'22',NULL,NULL,NULL),(21,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'customer@domain2','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,4,10,'customer','customer@domain2','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'22',NULL,NULL,NULL),(22,'2017-07-23 10:07:59.980','2018-08-22 08:16:05.937',2,'anno@domain2','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,NULL,4,100,'anno','anno@domain2','Y',NULL,NULL,NULL,NULL,'mall2.suoyanmall.com',NULL,NULL,0,NULL,'22',NULL,NULL,NULL),(30,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'admin@domain3','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,5,2,'admin','admin@domain3','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'32',NULL,NULL,NULL),(31,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'customer@domain3','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,5,10,'customer','customer@domain3','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'32',NULL,NULL,NULL),(32,'2017-07-23 10:07:59.980','2018-08-22 08:16:05.953',2,'anno@domain3','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,NULL,5,100,'anno','anno@domain3','Y',NULL,NULL,NULL,NULL,'mall3.suoyanmall.com',NULL,NULL,0,NULL,'32',NULL,NULL,NULL),(40,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'admin@domain4','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,6,2,'admin','admin@domain4','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'42',NULL,NULL,NULL),(41,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'customer@domain4','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,6,10,'customer','customer@domain4','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'42',NULL,NULL,NULL),(42,'2017-07-23 10:07:59.980','2018-08-22 08:16:05.970',2,'anno@domain4','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,NULL,6,100,'anno','anno@domain4','Y',NULL,NULL,NULL,NULL,'mall4.suoyanmall.com',NULL,NULL,0,NULL,'42',NULL,NULL,NULL),(50,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'admin@domain5','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,7,2,'admin','admin@domain5','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'52',NULL,NULL,NULL),(51,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'customer@domain5','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,7,10,'customer','customer@domain5','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'52',NULL,NULL,NULL),(52,'2017-07-23 10:07:59.980','2018-08-22 08:16:05.980',2,'anno@domain5','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,NULL,7,100,'anno','anno@domain5','Y',NULL,NULL,NULL,NULL,'mall5.suoyanmall.com',NULL,NULL,0,NULL,'52',NULL,NULL,NULL),(60,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'admin@domain6','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,8,2,'admin','admin@domain6','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'62',NULL,NULL,NULL),(61,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'customer@domain6','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,8,10,'customer','customer@domain6','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'62',NULL,NULL,NULL),(62,'2017-07-23 10:07:59.980','2018-08-22 08:16:05.991',2,'anno@domain6','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,NULL,8,100,'anno','anno@domain6','Y',NULL,NULL,NULL,NULL,'mall6.suoyanmall.com',NULL,NULL,0,NULL,'62',NULL,NULL,NULL),(70,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'admin@domain7','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,9,2,'admin','admin@domain7','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'72',NULL,NULL,NULL),(71,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'customer@domain7','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,9,10,'customer','customer@domain7','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'72',NULL,NULL,NULL),(72,'2017-07-23 10:07:59.980','2018-08-22 08:16:06.002',2,'anno@domain7','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,NULL,9,100,'anno','anno@domain7','Y',NULL,NULL,NULL,NULL,'mall7.suoyanmall.com',NULL,NULL,0,NULL,'72',NULL,NULL,NULL),(80,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'admin@domain8','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,10,2,'admin','admin@domain8','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'82',NULL,NULL,NULL),(81,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'customer@domain8','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,10,10,'customer','customer@domain8','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'82',NULL,NULL,NULL),(82,'2017-07-23 10:07:59.980','2018-08-22 08:16:06.013',2,'anno@domain8','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,NULL,10,100,'anno','anno@domain8','Y',NULL,NULL,NULL,NULL,'mall8.suoyanmall.com',NULL,NULL,0,NULL,'82',NULL,NULL,NULL),(90,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'admin@domain9','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,11,2,'admin','admin@domain9','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'92',NULL,NULL,NULL),(91,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'customer@domain9','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,11,10,'customer','customer@domain9','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'92',NULL,NULL,NULL),(92,'2017-07-23 10:07:59.980','2018-08-22 08:16:06.024',2,'anno@domain9','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,NULL,11,100,'anno','anno@domain9','Y',NULL,NULL,NULL,NULL,'mall9.suoyanmall.com',NULL,NULL,0,NULL,'92',NULL,NULL,NULL),(100,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'admin@domain10','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,12,2,'admin','admin@domain10','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'102',NULL,NULL,NULL),(101,'2017-07-23 10:07:59.980','2018-05-31 01:04:58.139',1,'customer@domain10','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,12,10,'customer','customer@domain10','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'102',NULL,NULL,NULL),(102,'2017-07-23 10:07:59.980','2018-08-22 08:16:06.034',2,'anno@domain10','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,NULL,12,100,'anno','anno@domain10','Y',NULL,NULL,NULL,NULL,'mall10.suoyanmall.com',NULL,NULL,0,NULL,'102',NULL,NULL,NULL),(211,'2018-11-08 21:43:32.979','2018-11-08 21:43:33.061',1,'xiaoyumqyz@gmail.com','$2a$10$9h/.55FZc.RDadjEgzwSv.OKC/ozVy3MiOeECGERTydK.X0uvnY0m','INDIVIDUAL',NULL,NULL,6,10,'bege','bege','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0210620590','42',NULL,NULL,NULL),(212,'2018-11-13 04:55:44.818','2018-11-13 04:55:44.844',1,'2312@12.com','$2a$10$iG4Q/xh.b1kgKQ6TSX2aJ.X9E1BgndjdpOWeldMk/unjrJ.xm1evG','INDIVIDUAL',NULL,NULL,6,10,'eden5','eden5','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'234234234','42',NULL,NULL,NULL),(213,'2018-12-09 22:11:27.109','2018-12-09 22:11:27.146',1,'asiadesk@freightdirect.co.nz','$2a$10$s4K4VYfeOcJlpNfRchbJceQnKkQGQ6TMZhxoB1CkktFq89xJ3Bxqi','INDIVIDUAL',NULL,NULL,6,10,'Freight Direct','Freight Direct','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0210620905','42',NULL,NULL,NULL),(214,'2018-12-16 07:35:53.515','2018-12-16 07:35:53.536',1,'zhouleib1412@gmail.com','$2a$10$WeC.JhQ1CD9d4zbIA7C5VuZO1m1TmvPnxDFP6oZEdEtmPiQ2yCb16','INDIVIDUAL',NULL,NULL,6,10,'intelliwaretest','intelliwaretest','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'273214843','42',NULL,NULL,NULL),(216,'2018-12-17 00:22:15.743','2018-12-17 00:22:15.750',1,'asiadesk@freightdirect.co.nz','$2a$10$.gcgG6GkciHx.5Sa9HRQm.6BzDVXU/NCR2ejd.LmQfkDsMQOThx72','INDIVIDUAL',NULL,NULL,6,10,'FreightDirect','FreightDirect','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0210620905','42',NULL,NULL,NULL);
/*!40000 ALTER TABLE `aci_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aci_user_attachments`
--

DROP TABLE IF EXISTS `aci_user_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aci_user_attachments` (
  `user_id` bigint(20) NOT NULL,
  `attachments_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_b8kw7qridw478cvj80gg93dic` (`attachments_id`),
  KEY `FK548k2unu76kwgcml1tvwdpst0` (`user_id`),
  CONSTRAINT `FK548k2unu76kwgcml1tvwdpst0` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKe6b4coj9soublgfjcyg600uw4` FOREIGN KEY (`attachments_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FKh9gysjdmwipxdtnxb26j1ig7d` FOREIGN KEY (`attachments_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FKnjkovqh83atvewulgl3k4cg41` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aci_user_attachments`
--

LOCK TABLES `aci_user_attachments` WRITE;
/*!40000 ALTER TABLE `aci_user_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `aci_user_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `province_or_state` varchar(255) DEFAULT NULL,
  `street_line_one` varchar(255) NOT NULL,
  `street_line_two` varchar(255) DEFAULT NULL,
  `zip_or_postal_code` varchar(255) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf8gcrq5g8niuuujf1g2w6oxdi` (`creator_id`),
  KEY `FKijal32cdv44pmfxk25x5s1lqg` (`modifier_id`),
  KEY `FKnbpftxc0n43wiadjrtr0dnogp` (`user_id`),
  KEY `FKe54x81nmccsk5569hsjg1a6ka` (`country_id`),
  CONSTRAINT `FK23xdsxlwkho7jl9wwb16t2bpg` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK4o60wfo0cthc4nhikegqp2th5` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKe54x81nmccsk5569hsjg1a6ka` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `FKf8gcrq5g8niuuujf1g2w6oxdi` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKijal32cdv44pmfxk25x5s1lqg` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKijo1od28b6se8cpqn6s8fdytd` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `FKnbpftxc0n43wiadjrtr0dnogp` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKt03blhgkl2d5i811b3278u335` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (9,'2018-12-16 08:40:09.951','2018-12-16 08:40:09.951',0,'city',NULL,'address',NULL,'1010',214,214,NULL,NULL,NULL,'273214843',NULL,'leon','zhou','zhouleib1412@gmail.com'),(10,'2018-12-16 08:40:09.955','2018-12-16 08:40:09.955',0,'city',NULL,'address',NULL,'1010',214,214,NULL,NULL,NULL,'273214843',NULL,'leon','zhou','zhouleib1412@gmail.com'),(11,'2018-12-16 10:02:55.095','2018-12-16 10:02:55.095',0,'2134123',NULL,'123',NULL,'1233',214,214,NULL,NULL,NULL,'234234234',NULL,'wwwwwwww-2','Wu','2312@12.com'),(12,'2018-12-16 10:02:55.119','2018-12-16 10:02:55.119',0,'2134123',NULL,'123',NULL,'1233',214,214,NULL,NULL,NULL,'234234234',NULL,'wwwwwwww-2','Wu','2312@12.com'),(13,'2018-12-17 01:14:58.756','2018-12-17 01:14:58.756',0,'Wiri',NULL,'8 Hautu drive',NULL,'2103',213,213,NULL,NULL,NULL,'0210620905',NULL,'Freight','Direct','asiadesk@freightdirect.co.nz'),(14,'2018-12-17 01:14:58.787','2018-12-17 01:14:58.787',0,'Wiri',NULL,'8 Hautu drive',NULL,'2103',213,213,NULL,NULL,NULL,'0210620905',NULL,'Freight','Direct','asiadesk@freightdirect.co.nz'),(15,'2019-01-03 21:00:23.322','2019-01-03 21:00:23.322',0,'Wiri',NULL,'8 Hautu drive',NULL,'2103',213,213,NULL,NULL,NULL,'0210620905',NULL,'Freight','Direct','asiadesk@freightdirect.co.nz'),(16,'2019-01-03 21:00:23.399','2019-01-03 21:00:23.399',0,'Wiri',NULL,'8 Hautu drive',NULL,'2103',213,213,NULL,NULL,NULL,'0210620905',NULL,'Freight','Direct','asiadesk@freightdirect.co.nz'),(17,'2019-01-03 22:03:44.500','2019-01-03 22:03:44.500',0,'2134123',NULL,'123, 2213123',NULL,'1233',214,214,NULL,NULL,NULL,'234234234',NULL,'wwwwwwww-2','Wu','2312@12.com'),(18,'2019-01-03 22:03:44.510','2019-01-03 22:03:44.510',0,'2134123',NULL,'123, 2213123',NULL,'1233',214,214,NULL,NULL,NULL,'234234234',NULL,'wwwwwwww-2','Wu','2312@12.com'),(19,'2019-01-06 23:51:04.159','2019-01-06 23:51:04.159',0,'Wiri',NULL,'8 Hautu drive',NULL,'2103',213,213,NULL,NULL,NULL,'0210620905',NULL,'Freight','Direct','asiadesk@freightdirect.co.nz'),(20,'2019-01-06 23:51:04.174','2019-01-06 23:51:04.174',0,'Wiri',NULL,'8 Hautu drive',NULL,'2103',213,213,NULL,NULL,NULL,'0210620905',NULL,'Freight','Direct','asiadesk@freightdirect.co.nz'),(21,'2019-01-08 02:11:27.392','2019-01-08 02:11:27.392',0,'Wiri',NULL,'8 Hautu drive',NULL,'2103',213,213,NULL,NULL,NULL,'0210620905',NULL,'Freight','Direct','asiadesk@freightdirect.co.nz'),(22,'2019-01-08 02:11:27.397','2019-01-08 02:11:27.397',0,'Wiri',NULL,'8 Hautu drive',NULL,'2103',213,213,NULL,NULL,NULL,'0210620905',NULL,'Freight','Direct','asiadesk@freightdirect.co.nz'),(23,'2019-01-08 16:11:41.657','2019-01-08 16:11:41.657',0,'yy',NULL,'xx',NULL,'1011',214,214,NULL,NULL,NULL,'1111',NULL,'x','y','zhouleib1412@gmail.com'),(24,'2019-01-08 16:11:41.702','2019-01-08 16:11:41.702',0,'yy',NULL,'xx',NULL,'1011',214,214,NULL,NULL,NULL,'1111',NULL,'x','y','zhouleib1412@gmail.com'),(25,'2019-01-08 20:43:52.717','2019-01-08 20:43:52.717',0,'Wiri',NULL,'8 Hautu drive',NULL,'2103',213,213,NULL,NULL,NULL,'0210620905',NULL,'Freight','Direct','asiadesk@freightdirect.co.nz'),(26,'2019-01-08 20:43:52.729','2019-01-08 20:43:52.729',0,'Wiri',NULL,'8 Hautu drive',NULL,'2103',213,213,NULL,NULL,NULL,'0210620905',NULL,'Freight','Direct','asiadesk@freightdirect.co.nz'),(27,'2019-01-21 02:20:58.065','2019-01-21 02:20:58.065',0,'xx',NULL,'xx',NULL,'xx',214,214,NULL,NULL,NULL,'+64273214843',NULL,'leon','zhou','xx@xx.com'),(28,'2019-01-21 02:20:58.069','2019-01-21 02:20:58.069',0,'xx',NULL,'xx',NULL,'xx',214,214,NULL,NULL,NULL,'+64273214843',NULL,'leon','zhou','xx@xx.com');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FKha6v9e6n4buc3jfp8ah35xegf` FOREIGN KEY (`id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (211),(212),(213),(214),(216);
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user_registration_answers`
--

DROP TABLE IF EXISTS `app_user_registration_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user_registration_answers` (
  `app_user_id` bigint(20) NOT NULL,
  `registration_answers_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_9qbe0qqk0w2ukgrewtdnlp08y` (`registration_answers_id`),
  KEY `FKi4oyqriruyft30cyyicl1h9gb` (`app_user_id`),
  CONSTRAINT `FKi4oyqriruyft30cyyicl1h9gb` FOREIGN KEY (`app_user_id`) REFERENCES `app_user` (`id`),
  CONSTRAINT `FKov2eru3uglxqv0ucw4t5q8nf3` FOREIGN KEY (`registration_answers_id`) REFERENCES `registration_answer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user_registration_answers`
--

LOCK TABLES `app_user_registration_answers` WRITE;
/*!40000 ALTER TABLE `app_user_registration_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_user_registration_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachment`
--

DROP TABLE IF EXISTS `attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `full_path` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `size` bigint(20) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4stekff8vsy280ud6d5c1tkpx` (`creator_id`),
  KEY `FKjtqt12okdlo6521fnagobuf3o` (`modifier_id`),
  KEY `FKbh55gb36lmlr4xxbm6mb5ry5d` (`user_id`),
  CONSTRAINT `FK4stekff8vsy280ud6d5c1tkpx` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKaxj1rmy4o32t8cdf4k4rqlpow` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKbh55gb36lmlr4xxbm6mb5ry5d` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKd7r106hsjaqcq9o2k8kgdmi3g` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKdoxl3j7fgv065madxbpu940p3` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKjtqt12okdlo6521fnagobuf3o` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2374 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachment`
--

LOCK TABLES `attachment` WRITE;
/*!40000 ALTER TABLE `attachment` DISABLE KEYS */;
INSERT INTO `attachment` VALUES (2060,'2018-11-06 03:59:35.362','2018-11-06 03:59:35.362',0,'image/jpeg','/v1/attachment/download?filename=2018_11_06_16_59_34__MG_0197.JPG','2018_11_06_16_59_34__MG_0197.JPG',NULL,'_MG_0197.JPG',3830477,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2061,'2018-11-06 03:59:53.387','2018-11-06 03:59:53.387',0,'image/jpeg','/v1/attachment/download?filename=2018_11_06_16_59_53__MG_0199.JPG','2018_11_06_16_59_53__MG_0199.JPG',NULL,'_MG_0199.JPG',3616783,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2062,'2018-11-07 02:22:20.961','2018-11-07 02:22:20.961',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_15_22_20_WeChat Image_20181106112244.jpg','2018_11_07_15_22_20_WeChat Image_20181106112244.jpg',NULL,'WeChat Image_20181106112244.jpg',72782,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2063,'2018-11-07 02:50:53.787','2018-11-07 02:50:53.787',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_15_50_53_微信图片_2018110508442816.jpg','2018_11_07_15_50_53_微信图片_2018110508442816.jpg',NULL,'微信图片_2018110508442816.jpg',2700798,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2064,'2018-11-07 02:50:56.016','2018-11-07 02:50:56.016',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_15_50_55_微信图片_2018110508442815.jpg','2018_11_07_15_50_55_微信图片_2018110508442815.jpg',NULL,'微信图片_2018110508442815.jpg',3274102,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2065,'2018-11-07 02:50:59.226','2018-11-07 02:50:59.226',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_15_50_59_微信图片_2018110508442818.jpg','2018_11_07_15_50_59_微信图片_2018110508442818.jpg',NULL,'微信图片_2018110508442818.jpg',3044600,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2066,'2018-11-07 02:54:04.222','2018-11-07 02:54:04.222',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_15_54_03__MG_0275.JPG','2018_11_07_15_54_03__MG_0275.JPG',NULL,'_MG_0275.JPG',3612979,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2067,'2018-11-07 03:03:07.748','2018-11-07 03:03:07.748',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_03_07_微信图片_201811050844284.jpg','2018_11_07_16_03_07_微信图片_201811050844284.jpg',NULL,'微信图片_201811050844284.jpg',2951923,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2068,'2018-11-07 03:03:08.725','2018-11-07 03:03:08.725',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_03_08_微信图片_201811050844285.jpg','2018_11_07_16_03_08_微信图片_201811050844285.jpg',NULL,'微信图片_201811050844285.jpg',3685093,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2069,'2018-11-07 03:03:14.922','2018-11-07 03:03:14.922',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_03_14_微信图片_201811050844285.jpg','2018_11_07_16_03_14_微信图片_201811050844285.jpg',NULL,'微信图片_201811050844285.jpg',3685093,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2070,'2018-11-07 03:03:18.054','2018-11-07 03:03:18.054',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_03_17_微信图片_201811050844286.jpg','2018_11_07_16_03_17_微信图片_201811050844286.jpg',NULL,'微信图片_201811050844286.jpg',2770986,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2071,'2018-11-07 03:03:18.512','2018-11-07 03:03:18.512',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_03_18_微信图片_201811050844287.jpg','2018_11_07_16_03_18_微信图片_201811050844287.jpg',NULL,'微信图片_201811050844287.jpg',3050831,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2072,'2018-11-07 03:03:25.335','2018-11-07 03:03:25.335',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_03_25_微信图片_20181105084428.jpg','2018_11_07_16_03_25_微信图片_20181105084428.jpg',NULL,'微信图片_20181105084428.jpg',2893827,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2073,'2018-11-07 03:03:28.015','2018-11-07 03:03:28.015',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_03_27_微信图片_201811050844288.jpg','2018_11_07_16_03_27_微信图片_201811050844288.jpg',NULL,'微信图片_201811050844288.jpg',4302859,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2074,'2018-11-07 03:03:33.481','2018-11-07 03:03:33.481',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_03_33_微信图片_201811050844281.jpg','2018_11_07_16_03_33_微信图片_201811050844281.jpg',NULL,'微信图片_201811050844281.jpg',2936569,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2075,'2018-11-07 03:03:35.884','2018-11-07 03:03:35.884',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_03_35_微信图片_201811050844282.jpg','2018_11_07_16_03_35_微信图片_201811050844282.jpg',NULL,'微信图片_201811050844282.jpg',3766106,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2076,'2018-11-07 03:03:43.777','2018-11-07 03:03:43.777',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_03_43_微信图片_201811050844283.jpg','2018_11_07_16_03_43_微信图片_201811050844283.jpg',NULL,'微信图片_201811050844283.jpg',2902697,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2077,'2018-11-07 03:05:41.096','2018-11-07 03:05:41.096',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_05_40_TIM图片20181031140411.jpg','2018_11_07_16_05_40_TIM图片20181031140411.jpg',NULL,'TIM图片20181031140411.jpg',2010370,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2078,'2018-11-07 03:05:45.339','2018-11-07 03:05:45.339',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_05_45_TIM图片20181031140419.jpg','2018_11_07_16_05_45_TIM图片20181031140419.jpg',NULL,'TIM图片20181031140419.jpg',1903870,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2079,'2018-11-07 03:13:49.608','2018-11-07 03:13:49.608',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_13_49_微信图片_2018110508442828.jpg','2018_11_07_16_13_49_微信图片_2018110508442828.jpg',NULL,'微信图片_2018110508442828.jpg',3725143,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2080,'2018-11-07 03:14:58.845','2018-11-07 03:14:58.845',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_14_58_微信图片_2018110508442835.jpg','2018_11_07_16_14_58_微信图片_2018110508442835.jpg',NULL,'微信图片_2018110508442835.jpg',3388826,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2081,'2018-11-07 03:14:59.855','2018-11-07 03:14:59.855',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_14_59_微信图片_2018110508442834.jpg','2018_11_07_16_14_59_微信图片_2018110508442834.jpg',NULL,'微信图片_2018110508442834.jpg',3452058,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2082,'2018-11-07 03:15:07.902','2018-11-07 03:15:07.902',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_15_07_微信图片_2018110508442829.jpg','2018_11_07_16_15_07_微信图片_2018110508442829.jpg',NULL,'微信图片_2018110508442829.jpg',4037338,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2083,'2018-11-07 03:15:12.119','2018-11-07 03:15:12.119',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_15_11_微信图片_2018110508442828.jpg','2018_11_07_16_15_11_微信图片_2018110508442828.jpg',NULL,'微信图片_2018110508442828.jpg',3725143,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2084,'2018-11-07 03:15:13.011','2018-11-07 03:15:13.011',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_15_12_微信图片_2018110508442836.jpg','2018_11_07_16_15_12_微信图片_2018110508442836.jpg',NULL,'微信图片_2018110508442836.jpg',3873186,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2085,'2018-11-07 03:15:20.567','2018-11-07 03:15:20.567',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_15_20_微信图片_2018110508442830.jpg','2018_11_07_16_15_20_微信图片_2018110508442830.jpg',NULL,'微信图片_2018110508442830.jpg',2944383,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2086,'2018-11-07 03:15:21.914','2018-11-07 03:15:21.914',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_15_21_微信图片_2018110508442829.jpg','2018_11_07_16_15_21_微信图片_2018110508442829.jpg',NULL,'微信图片_2018110508442829.jpg',4037338,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2087,'2018-11-07 03:17:49.289','2018-11-07 03:17:49.289',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_17_49_微信图片_2018110508442826.jpg','2018_11_07_16_17_49_微信图片_2018110508442826.jpg',NULL,'微信图片_2018110508442826.jpg',3832527,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2088,'2018-11-07 03:18:06.494','2018-11-07 03:18:06.494',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_18_06_微信图片_2018110508442826.jpg','2018_11_07_16_18_06_微信图片_2018110508442826.jpg',NULL,'微信图片_2018110508442826.jpg',3832527,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2089,'2018-11-07 03:18:07.729','2018-11-07 03:18:07.729',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_18_07_微信图片_2018110508442825.jpg','2018_11_07_16_18_07_微信图片_2018110508442825.jpg',NULL,'微信图片_2018110508442825.jpg',3914503,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2090,'2018-11-07 03:18:18.852','2018-11-07 03:18:18.852',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_18_18_微信图片_2018110508442819.jpg','2018_11_07_16_18_18_微信图片_2018110508442819.jpg',NULL,'微信图片_2018110508442819.jpg',3268505,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2091,'2018-11-07 03:18:22.554','2018-11-07 03:18:22.554',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_18_22_微信图片_2018110508442827.jpg','2018_11_07_16_18_22_微信图片_2018110508442827.jpg',NULL,'微信图片_2018110508442827.jpg',5426767,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2092,'2018-11-07 03:18:31.225','2018-11-07 03:18:31.225',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_18_30_微信图片_2018110508442820.jpg','2018_11_07_16_18_30_微信图片_2018110508442820.jpg',NULL,'微信图片_2018110508442820.jpg',4082569,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2093,'2018-11-07 03:18:38.459','2018-11-07 03:18:38.459',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_18_38_微信图片_2018110508442821.jpg','2018_11_07_16_18_38_微信图片_2018110508442821.jpg',NULL,'微信图片_2018110508442821.jpg',4566223,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2094,'2018-11-07 03:18:43.826','2018-11-07 03:18:43.826',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_18_43_微信图片_2018110508442822.jpg','2018_11_07_16_18_43_微信图片_2018110508442822.jpg',NULL,'微信图片_2018110508442822.jpg',4044357,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2095,'2018-11-07 03:18:54.191','2018-11-07 03:18:54.191',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_18_54_微信图片_2018110508442824.jpg','2018_11_07_16_18_54_微信图片_2018110508442824.jpg',NULL,'微信图片_2018110508442824.jpg',2453546,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2096,'2018-11-07 03:18:57.454','2018-11-07 03:18:57.454',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_18_57_微信图片_2018110508442823.jpg','2018_11_07_16_18_57_微信图片_2018110508442823.jpg',NULL,'微信图片_2018110508442823.jpg',3059000,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2097,'2018-11-07 03:28:53.823','2018-11-07 03:28:53.823',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_28_53__MG_0175.JPG','2018_11_07_16_28_53__MG_0175.JPG',NULL,'_MG_0175.JPG',4309021,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2098,'2018-11-07 03:29:05.161','2018-11-07 03:29:05.161',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_29_04__MG_0175.JPG','2018_11_07_16_29_04__MG_0175.JPG',NULL,'_MG_0175.JPG',4309021,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2099,'2018-11-07 03:29:17.541','2018-11-07 03:29:17.541',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_29_17__MG_0173.JPG','2018_11_07_16_29_17__MG_0173.JPG',NULL,'_MG_0173.JPG',4436801,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2100,'2018-11-07 03:29:18.321','2018-11-07 03:29:18.321',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_29_16__MG_0174.JPG','2018_11_07_16_29_16__MG_0174.JPG',NULL,'_MG_0174.JPG',3748270,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2101,'2018-11-07 03:29:25.118','2018-11-07 03:29:25.118',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_29_24__MG_0176.JPG','2018_11_07_16_29_24__MG_0176.JPG',NULL,'_MG_0176.JPG',3907105,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2102,'2018-11-07 03:29:26.345','2018-11-07 03:29:26.345',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_29_26__MG_0175.JPG','2018_11_07_16_29_26__MG_0175.JPG',NULL,'_MG_0175.JPG',4309021,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2103,'2018-11-07 03:29:32.839','2018-11-07 03:29:32.839',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_29_32__MG_0177.JPG','2018_11_07_16_29_32__MG_0177.JPG',NULL,'_MG_0177.JPG',3543544,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2104,'2018-11-07 03:29:32.844','2018-11-07 03:29:32.844',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_29_32__MG_0178.JPG','2018_11_07_16_29_32__MG_0178.JPG',NULL,'_MG_0178.JPG',3430176,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2105,'2018-11-07 03:29:36.617','2018-11-07 03:29:36.617',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_29_36__MG_0179.JPG','2018_11_07_16_29_36__MG_0179.JPG',NULL,'_MG_0179.JPG',2676071,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2106,'2018-11-07 03:29:39.941','2018-11-07 03:29:39.941',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_29_39__MG_0181.JPG','2018_11_07_16_29_39__MG_0181.JPG',NULL,'_MG_0181.JPG',2954695,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2107,'2018-11-07 03:29:43.167','2018-11-07 03:29:43.167',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_29_43__MG_0180.JPG','2018_11_07_16_29_43__MG_0180.JPG',NULL,'_MG_0180.JPG',2993409,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2108,'2018-11-07 03:31:59.004','2018-11-07 03:31:59.004',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_31_58__MG_0189.JPG','2018_11_07_16_31_58__MG_0189.JPG',NULL,'_MG_0189.JPG',3935029,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2109,'2018-11-07 03:32:04.319','2018-11-07 03:32:04.319',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_32_04__MG_0189.JPG','2018_11_07_16_32_04__MG_0189.JPG',NULL,'_MG_0189.JPG',3935029,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2110,'2018-11-07 03:32:14.540','2018-11-07 03:32:14.540',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_32_14__MG_0183.JPG','2018_11_07_16_32_14__MG_0183.JPG',NULL,'_MG_0183.JPG',3594010,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2111,'2018-11-07 03:32:16.097','2018-11-07 03:32:16.097',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_32_15__MG_0182.JPG','2018_11_07_16_32_15__MG_0182.JPG',NULL,'_MG_0182.JPG',3893034,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2112,'2018-11-07 03:32:20.408','2018-11-07 03:32:20.408',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_32_20__MG_0184.JPG','2018_11_07_16_32_20__MG_0184.JPG',NULL,'_MG_0184.JPG',2637797,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2113,'2018-11-07 03:32:24.283','2018-11-07 03:32:24.283',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_32_24__MG_0185.JPG','2018_11_07_16_32_24__MG_0185.JPG',NULL,'_MG_0185.JPG',4366466,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2114,'2018-11-07 03:32:25.713','2018-11-07 03:32:25.713',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_32_25__MG_0186.JPG','2018_11_07_16_32_25__MG_0186.JPG',NULL,'_MG_0186.JPG',2902963,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2115,'2018-11-07 03:32:34.169','2018-11-07 03:32:34.169',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_32_33__MG_0188.JPG','2018_11_07_16_32_33__MG_0188.JPG',NULL,'_MG_0188.JPG',4338212,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2116,'2018-11-07 03:32:34.336','2018-11-07 03:32:34.336',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_32_34__MG_0187.JPG','2018_11_07_16_32_34__MG_0187.JPG',NULL,'_MG_0187.JPG',5176145,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2117,'2018-11-07 03:32:42.432','2018-11-07 03:32:42.432',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_32_42__MG_0190.JPG','2018_11_07_16_32_42__MG_0190.JPG',NULL,'_MG_0190.JPG',4275493,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2118,'2018-11-07 03:32:42.580','2018-11-07 03:32:42.580',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_32_42__MG_0189.JPG','2018_11_07_16_32_42__MG_0189.JPG',NULL,'_MG_0189.JPG',3935029,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2119,'2018-11-07 03:35:46.682','2018-11-07 03:35:46.682',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_35_46_微信图片_2018110508442839.jpg','2018_11_07_16_35_46_微信图片_2018110508442839.jpg',NULL,'微信图片_2018110508442839.jpg',3801734,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2120,'2018-11-07 03:35:56.995','2018-11-07 03:35:56.995',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_35_56_微信图片_2018110508442838.jpg','2018_11_07_16_35_56_微信图片_2018110508442838.jpg',NULL,'微信图片_2018110508442838.jpg',4040240,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2121,'2018-11-07 03:35:59.054','2018-11-07 03:35:59.054',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_35_58_微信图片_2018110508442839.jpg','2018_11_07_16_35_58_微信图片_2018110508442839.jpg',NULL,'微信图片_2018110508442839.jpg',3801734,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2122,'2018-11-07 03:36:05.291','2018-11-07 03:36:05.291',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_36_05_微信图片_2018110508442840.jpg','2018_11_07_16_36_05_微信图片_2018110508442840.jpg',NULL,'微信图片_2018110508442840.jpg',3802800,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2123,'2018-11-07 03:36:07.215','2018-11-07 03:36:07.215',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_36_07_微信图片_2018110508442841.jpg','2018_11_07_16_36_07_微信图片_2018110508442841.jpg',NULL,'微信图片_2018110508442841.jpg',4091496,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2124,'2018-11-07 03:36:14.473','2018-11-07 03:36:14.473',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_36_14_微信图片_2018110508442837.jpg','2018_11_07_16_36_14_微信图片_2018110508442837.jpg',NULL,'微信图片_2018110508442837.jpg',3897075,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2125,'2018-11-07 03:36:14.545','2018-11-07 03:36:14.545',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_36_14_微信图片_2018110508442842.jpg','2018_11_07_16_36_14_微信图片_2018110508442842.jpg',NULL,'微信图片_2018110508442842.jpg',4384712,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2126,'2018-11-07 03:38:49.780','2018-11-07 03:38:49.780',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_38_49_TIM图片20181031132157.jpg','2018_11_07_16_38_49_TIM图片20181031132157.jpg',NULL,'TIM图片20181031132157.jpg',2474301,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2127,'2018-11-07 03:39:02.713','2018-11-07 03:39:02.713',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_39_02__MG_0221.JPG','2018_11_07_16_39_02__MG_0221.JPG',NULL,'_MG_0221.JPG',4139264,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2128,'2018-11-07 03:39:03.936','2018-11-07 03:39:03.936',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_39_03__MG_0220.JPG','2018_11_07_16_39_03__MG_0220.JPG',NULL,'_MG_0220.JPG',3543198,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2129,'2018-11-07 03:39:08.853','2018-11-07 03:39:08.853',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_39_08__MG_0222.JPG','2018_11_07_16_39_08__MG_0222.JPG',NULL,'_MG_0222.JPG',2987750,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2130,'2018-11-07 03:39:09.566','2018-11-07 03:39:09.566',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_39_09__MG_0223.JPG','2018_11_07_16_39_09__MG_0223.JPG',NULL,'_MG_0223.JPG',3105826,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2131,'2018-11-07 03:39:15.659','2018-11-07 03:39:15.659',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_39_15__MG_0225.JPG','2018_11_07_16_39_15__MG_0225.JPG',NULL,'_MG_0225.JPG',3453074,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2132,'2018-11-07 03:39:19.803','2018-11-07 03:39:19.803',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_39_18__MG_0224.JPG','2018_11_07_16_39_18__MG_0224.JPG',NULL,'_MG_0224.JPG',4931205,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2133,'2018-11-07 03:39:23.150','2018-11-07 03:39:23.150',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_39_23__MG_0226.JPG','2018_11_07_16_39_23__MG_0226.JPG',NULL,'_MG_0226.JPG',3851835,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2134,'2018-11-07 03:39:27.555','2018-11-07 03:39:27.555',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_39_27_TIM图片20181031132148.jpg','2018_11_07_16_39_27_TIM图片20181031132148.jpg',NULL,'TIM图片20181031132148.jpg',2475171,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2135,'2018-11-07 03:39:28.140','2018-11-07 03:39:28.140',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_39_28__MG_0227.JPG','2018_11_07_16_39_28__MG_0227.JPG',NULL,'_MG_0227.JPG',3855487,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2136,'2018-11-07 03:42:24.157','2018-11-07 03:42:24.157',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_42_23_TIM图片20181031132605.jpg','2018_11_07_16_42_23_TIM图片20181031132605.jpg',NULL,'TIM图片20181031132605.jpg',2134249,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2137,'2018-11-07 03:42:35.673','2018-11-07 03:42:35.673',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_42_35__MG_0214.JPG','2018_11_07_16_42_35__MG_0214.JPG',NULL,'_MG_0214.JPG',4401789,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2138,'2018-11-07 03:42:41.500','2018-11-07 03:42:41.500',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_42_41__MG_0213.JPG','2018_11_07_16_42_41__MG_0213.JPG',NULL,'_MG_0213.JPG',4253768,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2139,'2018-11-07 03:42:42.669','2018-11-07 03:42:42.669',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_42_42__MG_0215.JPG','2018_11_07_16_42_42__MG_0215.JPG',NULL,'_MG_0215.JPG',3814087,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2140,'2018-11-07 03:42:48.782','2018-11-07 03:42:48.782',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_42_48__MG_0217.JPG','2018_11_07_16_42_48__MG_0217.JPG',NULL,'_MG_0217.JPG',2981539,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2141,'2018-11-07 03:42:48.903','2018-11-07 03:42:48.903',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_42_48__MG_0216.JPG','2018_11_07_16_42_48__MG_0216.JPG',NULL,'_MG_0216.JPG',3924772,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2142,'2018-11-07 03:42:53.138','2018-11-07 03:42:53.138',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_42_53_TIM图片20181031132613.jpg','2018_11_07_16_42_53_TIM图片20181031132613.jpg',NULL,'TIM图片20181031132613.jpg',2188747,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2143,'2018-11-07 03:42:58.656','2018-11-07 03:42:58.656',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_42_58_TIM图片20181031132616.jpg','2018_11_07_16_42_58_TIM图片20181031132616.jpg',NULL,'TIM图片20181031132616.jpg',2398992,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2144,'2018-11-07 03:42:59.856','2018-11-07 03:42:59.856',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_42_59__MG_0218.JPG','2018_11_07_16_42_59__MG_0218.JPG',NULL,'_MG_0218.JPG',4627265,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2145,'2018-11-07 03:43:01.586','2018-11-07 03:43:01.586',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_43_01_TIM图片20181031132619.jpg','2018_11_07_16_43_01_TIM图片20181031132619.jpg',NULL,'TIM图片20181031132619.jpg',2067511,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2146,'2018-11-07 03:44:51.015','2018-11-07 03:44:51.015',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_44_50__MG_0204.JPG','2018_11_07_16_44_50__MG_0204.JPG',NULL,'_MG_0204.JPG',5028591,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2147,'2018-11-07 03:45:05.833','2018-11-07 03:45:05.833',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_45_05__MG_0204.JPG','2018_11_07_16_45_05__MG_0204.JPG',NULL,'_MG_0204.JPG',5028591,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2148,'2018-11-07 03:45:06.884','2018-11-07 03:45:06.884',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_45_06__MG_0205.JPG','2018_11_07_16_45_06__MG_0205.JPG',NULL,'_MG_0205.JPG',4558971,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2149,'2018-11-07 03:45:13.383','2018-11-07 03:45:13.383',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_45_13__MG_0207.JPG','2018_11_07_16_45_13__MG_0207.JPG',NULL,'_MG_0207.JPG',3247617,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2150,'2018-11-07 03:45:13.796','2018-11-07 03:45:13.796',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_45_13__MG_0206.JPG','2018_11_07_16_45_13__MG_0206.JPG',NULL,'_MG_0206.JPG',4358694,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2151,'2018-11-07 03:45:18.080','2018-11-07 03:45:18.080',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_45_17_TIM图片20181031132636.jpg','2018_11_07_16_45_17_TIM图片20181031132636.jpg',NULL,'TIM图片20181031132636.jpg',2061867,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2152,'2018-11-07 03:45:21.825','2018-11-07 03:45:21.825',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_45_21_TIM图片20181031132640.jpg','2018_11_07_16_45_21_TIM图片20181031132640.jpg',NULL,'TIM图片20181031132640.jpg',2071561,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2153,'2018-11-07 03:45:22.931','2018-11-07 03:45:22.931',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_45_22__MG_0212.JPG','2018_11_07_16_45_22__MG_0212.JPG',NULL,'_MG_0212.JPG',4602991,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2154,'2018-11-07 03:45:24.556','2018-11-07 03:45:24.556',0,'image/jpeg','/v1/attachment/download?filename=2018_11_07_16_45_24_TIM图片20181031132643.jpg','2018_11_07_16_45_24_TIM图片20181031132643.jpg',NULL,'TIM图片20181031132643.jpg',2069164,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2155,'2018-11-11 21:57:51.986','2018-11-11 21:57:51.986',0,'image/jpeg','/v1/attachment/download?filename=2018_11_12_10_57_51_product1-min.jpg','2018_11_12_10_57_51_product1-min.jpg',NULL,'product1-min.jpg',607284,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2156,'2018-11-11 21:57:52.161','2018-11-11 21:57:52.161',0,'image/jpeg','/v1/attachment/download?filename=2018_11_12_10_57_52_product2-min.jpg','2018_11_12_10_57_52_product2-min.jpg',NULL,'product2-min.jpg',753163,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2157,'2018-11-11 21:57:56.284','2018-11-11 21:57:56.284',0,'image/jpeg','/v1/attachment/download?filename=2018_11_12_10_57_56_product4-min.jpg','2018_11_12_10_57_56_product4-min.jpg',NULL,'product4-min.jpg',306603,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2158,'2018-11-11 21:57:59.123','2018-11-11 21:57:59.123',0,'image/jpeg','/v1/attachment/download?filename=2018_11_12_10_57_59_product5-min.jpg','2018_11_12_10_57_59_product5-min.jpg',NULL,'product5-min.jpg',248891,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2159,'2018-11-11 21:58:00.220','2018-11-11 21:58:00.220',0,'image/jpeg','/v1/attachment/download?filename=2018_11_12_10_58_00_product3-min.jpg','2018_11_12_10_58_00_product3-min.jpg',NULL,'product3-min.jpg',781332,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2160,'2018-11-11 21:58:16.989','2018-11-11 21:58:16.989',0,'image/jpeg','/v1/attachment/download?filename=2018_11_12_10_58_16_product1-min.jpg','2018_11_12_10_58_16_product1-min.jpg',NULL,'product1-min.jpg',607284,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2161,'2018-11-27 01:23:27.895','2018-11-27 01:23:27.895',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_14_23_27_机模1.jpg','2018_11_27_14_23_27_机模1.jpg',NULL,'机模1.jpg',43753,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2162,'2018-11-27 01:23:30.629','2018-11-27 01:23:30.629',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_14_23_30_机模2.jpg','2018_11_27_14_23_30_机模2.jpg',NULL,'机模2.jpg',49114,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2163,'2018-11-27 01:23:30.746','2018-11-27 01:23:30.746',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_14_23_30_机模3.jpg','2018_11_27_14_23_30_机模3.jpg',NULL,'机模3.jpg',40805,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2164,'2018-11-27 01:23:37.446','2018-11-27 01:23:37.446',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_14_23_37_机模3.jpg','2018_11_27_14_23_37_机模3.jpg',NULL,'机模3.jpg',40805,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2165,'2018-11-27 01:23:37.504','2018-11-27 01:23:37.504',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_14_23_37_机模2.jpg','2018_11_27_14_23_37_机模2.jpg',NULL,'机模2.jpg',49114,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2166,'2018-11-27 01:23:39.773','2018-11-27 01:23:39.773',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_14_23_39_WeChat Image_20180924094230.jpg','2018_11_27_14_23_39_WeChat Image_20180924094230.jpg',NULL,'WeChat Image_20180924094230.jpg',63946,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2167,'2018-11-27 01:27:49.670','2018-11-27 01:27:49.670',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_14_27_49_机模1.jpg','2018_11_27_14_27_49_机模1.jpg',NULL,'机模1.jpg',43753,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2168,'2018-11-27 01:27:55.480','2018-11-27 01:27:55.480',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_14_27_55_机模2.jpg','2018_11_27_14_27_55_机模2.jpg',NULL,'机模2.jpg',49114,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2169,'2018-11-27 01:27:55.540','2018-11-27 01:27:55.540',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_14_27_55_机模3.jpg','2018_11_27_14_27_55_机模3.jpg',NULL,'机模3.jpg',40805,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2170,'2018-11-27 01:28:02.236','2018-11-27 01:28:02.236',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_14_28_02_WeChat Image_20180924094230.jpg','2018_11_27_14_28_02_WeChat Image_20180924094230.jpg',NULL,'WeChat Image_20180924094230.jpg',63946,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2171,'2018-11-27 02:29:33.259','2018-11-27 02:29:33.259',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_15_29_33_机模1.jpg','2018_11_27_15_29_33_机模1.jpg',NULL,'机模1.jpg',43753,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2172,'2018-11-27 02:29:39.754','2018-11-27 02:29:39.754',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_15_29_39_机模2.jpg','2018_11_27_15_29_39_机模2.jpg',NULL,'机模2.jpg',49114,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2173,'2018-11-27 02:29:39.806','2018-11-27 02:29:39.806',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_15_29_39_机模3.jpg','2018_11_27_15_29_39_机模3.jpg',NULL,'机模3.jpg',40805,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2174,'2018-11-27 02:29:46.050','2018-11-27 02:29:46.050',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_15_29_45_WeChat Image_20180924094230.jpg','2018_11_27_15_29_45_WeChat Image_20180924094230.jpg',NULL,'WeChat Image_20180924094230.jpg',63946,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2175,'2018-11-27 03:01:50.540','2018-11-27 03:01:50.540',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_16_01_50_机模1.jpg','2018_11_27_16_01_50_机模1.jpg',NULL,'机模1.jpg',43753,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2176,'2018-11-27 03:01:54.123','2018-11-27 03:01:54.123',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_16_01_54_机模2.jpg','2018_11_27_16_01_54_机模2.jpg',NULL,'机模2.jpg',49114,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2177,'2018-11-27 03:01:54.195','2018-11-27 03:01:54.195',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_16_01_54_机模3.jpg','2018_11_27_16_01_54_机模3.jpg',NULL,'机模3.jpg',40805,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2178,'2018-11-27 03:02:07.379','2018-11-27 03:02:07.379',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_16_02_07_WeChat Image_20181127142140.jpg','2018_11_27_16_02_07_WeChat Image_20181127142140.jpg',NULL,'WeChat Image_20181127142140.jpg',42862,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2179,'2018-11-27 03:34:40.844','2018-11-27 03:34:40.844',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_16_34_40_机模1.jpg','2018_11_27_16_34_40_机模1.jpg',NULL,'机模1.jpg',43753,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2180,'2018-11-27 03:34:46.484','2018-11-27 03:34:46.484',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_16_34_46_机模3.jpg','2018_11_27_16_34_46_机模3.jpg',NULL,'机模3.jpg',40805,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2181,'2018-11-27 03:34:47.121','2018-11-27 03:34:47.121',0,'image/jpeg','/v1/attachment/download?filename=2018_11_27_16_34_47_机模2.jpg','2018_11_27_16_34_47_机模2.jpg',NULL,'机模2.jpg',49114,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2182,'2018-12-07 01:25:01.072','2018-12-07 01:25:01.072',0,'image/jpeg','/v1/attachment/download?filename=2018_12_07_14_25_00_机模1.jpg','2018_12_07_14_25_00_机模1.jpg',NULL,'机模1.jpg',43753,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2183,'2018-12-07 01:25:03.776','2018-12-07 01:25:03.776',0,'image/jpeg','/v1/attachment/download?filename=2018_12_07_14_25_03_机模2.jpg','2018_12_07_14_25_03_机模2.jpg',NULL,'机模2.jpg',49114,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2184,'2018-12-07 01:25:03.946','2018-12-07 01:25:03.946',0,'image/jpeg','/v1/attachment/download?filename=2018_12_07_14_25_03_机模3.jpg','2018_12_07_14_25_03_机模3.jpg',NULL,'机模3.jpg',40805,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2185,'2018-12-07 01:25:07.820','2018-12-07 01:25:07.820',0,'image/jpeg','/v1/attachment/download?filename=2018_12_07_14_25_07_WeChat Image_201809240942297.jpg','2018_12_07_14_25_07_WeChat Image_201809240942297.jpg',NULL,'WeChat Image_201809240942297.jpg',51420,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2186,'2018-12-07 01:28:59.647','2018-12-07 01:28:59.647',0,'image/jpeg','/v1/attachment/download?filename=2018_12_07_14_28_59_WeChat Image_20181127142103.jpg','2018_12_07_14_28_59_WeChat Image_20181127142103.jpg',NULL,'WeChat Image_20181127142103.jpg',35751,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2187,'2018-12-07 01:29:09.850','2018-12-07 01:29:09.850',0,'image/jpeg','/v1/attachment/download?filename=2018_12_07_14_29_09_WeChat Image_20181127142131.jpg','2018_12_07_14_29_09_WeChat Image_20181127142131.jpg',NULL,'WeChat Image_20181127142131.jpg',45045,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2188,'2018-12-07 01:29:09.860','2018-12-07 01:29:09.860',0,'image/jpeg','/v1/attachment/download?filename=2018_12_07_14_29_09_WeChat Image_20181127142140.jpg','2018_12_07_14_29_09_WeChat Image_20181127142140.jpg',NULL,'WeChat Image_20181127142140.jpg',42862,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2189,'2018-12-07 01:29:16.706','2018-12-07 01:29:16.706',0,'image/jpeg','/v1/attachment/download?filename=2018_12_07_14_29_16_WeChat Image_201809240942294.jpg','2018_12_07_14_29_16_WeChat Image_201809240942294.jpg',NULL,'WeChat Image_201809240942294.jpg',81213,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2190,'2019-01-03 22:20:49.836','2019-01-03 22:20:49.836',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_11_20_49_背景8尺寸 copy 10.33.56 AM.jpg','2019_01_04_11_20_49_背景8尺寸 copy 10.33.56 AM.jpg',NULL,'背景8尺寸 copy 10.33.56 AM.jpg',321766,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2191,'2019-01-03 22:20:50.167','2019-01-03 22:20:50.167',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_11_20_50_1602a 1602b front and back copy 10.33.56 AM.jpg','2019_01_04_11_20_50_1602a 1602b front and back copy 10.33.56 AM.jpg',NULL,'1602a 1602b front and back copy 10.33.56 AM.jpg',819076,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2192,'2019-01-03 22:20:50.672','2019-01-03 22:20:50.672',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_11_20_50_1602a 1602b prod-details-temp copy 10.33.56 AM.jpg','2019_01_04_11_20_50_1602a 1602b prod-details-temp copy 10.33.56 AM.jpg',NULL,'1602a 1602b prod-details-temp copy 10.33.56 AM.jpg',331853,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2193,'2019-01-03 22:20:52.121','2019-01-03 22:20:52.121',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_11_20_52_背景7盖子 copy 10.33.56 AM.jpg','2019_01_04_11_20_52_背景7盖子 copy 10.33.56 AM.jpg',NULL,'背景7盖子 copy 10.33.56 AM.jpg',741484,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2194,'2019-01-03 22:20:52.235','2019-01-03 22:20:52.235',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_11_20_52_背景2主页图 copy 10.33.56 AM.jpg','2019_01_04_11_20_52_背景2主页图 copy 10.33.56 AM.jpg',NULL,'背景2主页图 copy 10.33.56 AM.jpg',857260,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2195,'2019-01-03 22:21:09.162','2019-01-03 22:21:09.162',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_11_21_09_背景2主页图 copy 10.33.56 AM.jpg','2019_01_04_11_21_09_背景2主页图 copy 10.33.56 AM.jpg',NULL,'背景2主页图 copy 10.33.56 AM.jpg',857260,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2196,'2019-01-03 22:21:09.695','2019-01-03 22:21:09.695',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_11_21_09_背景7盖子 copy 10.33.56 AM.jpg','2019_01_04_11_21_09_背景7盖子 copy 10.33.56 AM.jpg',NULL,'背景7盖子 copy 10.33.56 AM.jpg',741484,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2197,'2019-01-03 22:21:10.439','2019-01-03 22:21:10.439',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_11_21_10_背景8尺寸 copy 10.33.56 AM.jpg','2019_01_04_11_21_10_背景8尺寸 copy 10.33.56 AM.jpg',NULL,'背景8尺寸 copy 10.33.56 AM.jpg',321766,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2198,'2019-01-03 22:21:11.666','2019-01-03 22:21:11.666',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_11_21_11_1602a 1602b front and back copy 10.33.56 AM.jpg','2019_01_04_11_21_11_1602a 1602b front and back copy 10.33.56 AM.jpg',NULL,'1602a 1602b front and back copy 10.33.56 AM.jpg',819076,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2199,'2019-01-03 22:21:11.884','2019-01-03 22:21:11.884',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_11_21_11_1602a 1602b prod-details-temp copy 10.33.56 AM.jpg','2019_01_04_11_21_11_1602a 1602b prod-details-temp copy 10.33.56 AM.jpg',NULL,'1602a 1602b prod-details-temp copy 10.33.56 AM.jpg',331853,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2200,'2019-01-03 22:59:37.987','2019-01-03 22:59:37.987',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_11_59_37_cc01 front and back.jpg','2019_01_04_11_59_37_cc01 front and back.jpg',NULL,'cc01 front and back.jpg',294259,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2201,'2019-01-03 22:59:48.057','2019-01-03 22:59:48.057',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_11_59_47_cc01 prod-details-temp.jpg','2019_01_04_11_59_47_cc01 prod-details-temp.jpg',NULL,'cc01 prod-details-temp.jpg',380287,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2202,'2019-01-03 22:59:49.076','2019-01-03 22:59:49.076',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_11_59_49_背景3主页图.jpg','2019_01_04_11_59_49_背景3主页图.jpg',NULL,'背景3主页图.jpg',357851,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2203,'2019-01-03 22:59:49.543','2019-01-03 22:59:49.543',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_11_59_49_背景2尺寸.jpg','2019_01_04_11_59_49_背景2尺寸.jpg',NULL,'背景2尺寸.jpg',425439,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2204,'2019-01-03 22:59:49.664','2019-01-03 22:59:49.664',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_11_59_49_背景13盖子.jpg','2019_01_04_11_59_49_背景13盖子.jpg',NULL,'背景13盖子.jpg',321248,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2205,'2019-01-03 23:09:58.642','2019-01-03 23:09:58.642',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_12_09_58_背景2尺寸.jpg','2019_01_04_12_09_58_背景2尺寸.jpg',NULL,'背景2尺寸.jpg',425439,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2206,'2019-01-03 23:10:05.588','2019-01-03 23:10:05.588',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_12_10_05_cc01 front and back.jpg','2019_01_04_12_10_05_cc01 front and back.jpg',NULL,'cc01 front and back.jpg',294259,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2207,'2019-01-03 23:10:06.054','2019-01-03 23:10:06.054',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_12_10_05_cc01 prod-details-temp.jpg','2019_01_04_12_10_05_cc01 prod-details-temp.jpg',NULL,'cc01 prod-details-temp.jpg',380287,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2208,'2019-01-03 23:10:06.265','2019-01-03 23:10:06.265',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_12_10_06_背景2尺寸.jpg','2019_01_04_12_10_06_背景2尺寸.jpg',NULL,'背景2尺寸.jpg',425439,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2209,'2019-01-03 23:10:06.730','2019-01-03 23:10:06.730',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_12_10_06_背景13盖子.jpg','2019_01_04_12_10_06_背景13盖子.jpg',NULL,'背景13盖子.jpg',321248,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2210,'2019-01-03 23:10:07.116','2019-01-03 23:10:07.116',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_12_10_07_背景3主页图.jpg','2019_01_04_12_10_07_背景3主页图.jpg',NULL,'背景3主页图.jpg',357851,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2211,'2019-01-03 23:42:02.996','2019-01-03 23:42:02.996',0,'image/jpeg','/v1/attachment/download?filename=2019_01_04_12_42_02_背景2尺寸.jpg','2019_01_04_12_42_02_背景2尺寸.jpg',NULL,'背景2尺寸.jpg',425439,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2212,'2019-01-05 00:33:08.339','2019-01-05 00:33:08.339',0,'image/jpeg','/v1/attachment/download?filename=2019_01_05_13_33_08_home-slider.jpg','2019_01_05_13_33_08_home-slider.jpg',NULL,'home-slider.jpg',37678,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2213,'2019-01-05 00:33:55.152','2019-01-05 00:33:55.152',0,'image/jpeg','/v1/attachment/download?filename=2019_01_05_13_33_55_home-slider-2.jpg','2019_01_05_13_33_55_home-slider-2.jpg',NULL,'home-slider-2.jpg',45026,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2214,'2019-01-08 23:31:44.962','2019-01-08 23:31:44.962',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_12_31_44_adv-2.jpg','2019_01_09_12_31_44_adv-2.jpg',NULL,'adv-2.jpg',74104,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2215,'2019-01-08 23:31:48.307','2019-01-08 23:31:48.307',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_12_31_48_adv-3.jpg','2019_01_09_12_31_48_adv-3.jpg',NULL,'adv-3.jpg',63225,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2216,'2019-01-08 23:31:51.715','2019-01-08 23:31:51.715',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_12_31_51_adv-4.jpg','2019_01_09_12_31_51_adv-4.jpg',NULL,'adv-4.jpg',61974,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2217,'2019-01-08 23:32:10.172','2019-01-08 23:32:10.172',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_12_32_10_adv-2.jpg','2019_01_09_12_32_10_adv-2.jpg',NULL,'adv-2.jpg',74104,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2218,'2019-01-09 03:40:06.247','2019-01-09 03:40:06.247',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_16_40_06_¦¦¥¦2¦¯¦þ©-.jpg','2019_01_09_16_40_06_¦¦¥¦2¦¯¦þ©-.jpg',NULL,'¦¦¥¦2¦¯¦þ©-.jpg',220506,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2219,'2019-01-09 03:40:11.414','2019-01-09 03:40:11.414',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_16_40_11_¦¦¥¦3Í¸Ê¦-+©-.jpg','2019_01_09_16_40_11_¦¦¥¦3Í¸Ê¦-+©-.jpg',NULL,'¦¦¥¦3Í¸Ê¦-+©-.jpg',237353,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2220,'2019-01-09 03:40:14.294','2019-01-09 03:40:14.294',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_16_40_14_¦¦¥¦13©ÃÎË.jpg','2019_01_09_16_40_14_¦¦¥¦13©ÃÎË.jpg',NULL,'¦¦¥¦13©ÃÎË.jpg',321248,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2221,'2019-01-09 03:40:18.713','2019-01-09 03:40:18.713',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_16_40_18_cc01 front and back.jpg','2019_01_09_16_40_18_cc01 front and back.jpg',NULL,'cc01 front and back.jpg',294259,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2222,'2019-01-09 03:40:21.869','2019-01-09 03:40:21.869',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_16_40_21_cc01 prod-details-temp.jpg','2019_01_09_16_40_21_cc01 prod-details-temp.jpg',NULL,'cc01 prod-details-temp.jpg',380287,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2223,'2019-01-09 03:40:31.409','2019-01-09 03:40:31.409',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_16_40_31_¦¦¥¦3Í¸Ê¦-+©-.jpg','2019_01_09_16_40_31_¦¦¥¦3Í¸Ê¦-+©-.jpg',NULL,'¦¦¥¦3Í¸Ê¦-+©-.jpg',237353,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2224,'2019-01-09 03:43:34.922','2019-01-09 03:43:34.922',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_16_43_34_¦¦¥¦4¦¯¦þ©-.jpg','2019_01_09_16_43_34_¦¦¥¦4¦¯¦þ©-.jpg',NULL,'¦¦¥¦4¦¯¦þ©-.jpg',244222,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2225,'2019-01-09 03:43:39.801','2019-01-09 03:43:39.801',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_16_43_39_¦¦¥¦10Í¸Ê¦-+©-.jpg','2019_01_09_16_43_39_¦¦¥¦10Í¸Ê¦-+©-.jpg',NULL,'¦¦¥¦10Í¸Ê¦-+©-.jpg',230768,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2226,'2019-01-09 03:43:42.280','2019-01-09 03:43:42.280',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_16_43_42_¦¦¥¦16©ÃÎË.jpg','2019_01_09_16_43_42_¦¦¥¦16©ÃÎË.jpg',NULL,'¦¦¥¦16©ÃÎË.jpg',331411,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2227,'2019-01-09 03:43:46.491','2019-01-09 03:43:46.491',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_16_43_46_cc02 front and back.jpg','2019_01_09_16_43_46_cc02 front and back.jpg',NULL,'cc02 front and back.jpg',312110,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2228,'2019-01-09 03:43:50.168','2019-01-09 03:43:50.168',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_16_43_50_cc02 prod-details-temp.jpg','2019_01_09_16_43_50_cc02 prod-details-temp.jpg',NULL,'cc02 prod-details-temp.jpg',327624,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2229,'2019-01-09 03:46:11.928','2019-01-09 03:46:11.928',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_16_46_11_¦¦¥¦5¦¯¦þ©-.jpg','2019_01_09_16_46_11_¦¦¥¦5¦¯¦þ©-.jpg',NULL,'¦¦¥¦5¦¯¦þ©-.jpg',226950,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2230,'2019-01-09 03:46:17.578','2019-01-09 03:46:17.578',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_16_46_17_¦¦¥¦1©ÃÎË.jpg','2019_01_09_16_46_17_¦¦¥¦1©ÃÎË.jpg',NULL,'¦¦¥¦1©ÃÎË.jpg',329466,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2231,'2019-01-09 03:46:20.079','2019-01-09 03:46:20.079',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_16_46_20_¦¦¥¦3Í¸Ê¦-+©-.jpg','2019_01_09_16_46_20_¦¦¥¦3Í¸Ê¦-+©-.jpg',NULL,'¦¦¥¦3Í¸Ê¦-+©-.jpg',212814,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2232,'2019-01-09 03:46:23.925','2019-01-09 03:46:23.925',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_16_46_23_cc03 front and back.jpg','2019_01_09_16_46_23_cc03 front and back.jpg',NULL,'cc03 front and back.jpg',337774,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2233,'2019-01-09 03:46:27.666','2019-01-09 03:46:27.666',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_16_46_27_cc03 prod-details-temp.jpg','2019_01_09_16_46_27_cc03 prod-details-temp.jpg',NULL,'cc03 prod-details-temp.jpg',413882,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2234,'2019-01-09 04:00:46.850','2019-01-09 04:00:46.850',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_17_00_46_¦¦¥¦1¦¯¦þ.jpg','2019_01_09_17_00_46_¦¦¥¦1¦¯¦þ.jpg',NULL,'¦¦¥¦1¦¯¦þ.jpg',218369,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2235,'2019-01-09 04:00:52.884','2019-01-09 04:00:52.884',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_17_00_52_¦¦¥¦2©ÃÎË copy.jpg','2019_01_09_17_00_52_¦¦¥¦2©ÃÎË copy.jpg',NULL,'¦¦¥¦2©ÃÎË copy.jpg',329216,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2236,'2019-01-09 04:00:54.635','2019-01-09 04:00:54.635',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_17_00_54_¦¦¥¦3Í¸Ê¦-+.jpg','2019_01_09_17_00_54_¦¦¥¦3Í¸Ê¦-+.jpg',NULL,'¦¦¥¦3Í¸Ê¦-+.jpg',252625,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2237,'2019-01-09 04:01:00.132','2019-01-09 04:01:00.132',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_17_01_00_1601 front and back copy.jpg','2019_01_09_17_01_00_1601 front and back copy.jpg',NULL,'1601 front and back copy.jpg',333981,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2238,'2019-01-09 04:01:03.182','2019-01-09 04:01:03.182',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_17_01_03_1601 prod-details-temp copy.jpg','2019_01_09_17_01_03_1601 prod-details-temp copy.jpg',NULL,'1601 prod-details-temp copy.jpg',411427,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2239,'2019-01-09 04:06:40.160','2019-01-09 04:06:40.160',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_17_06_39_¦¦¥¦2Í¸Ê¦-+©-.jpg','2019_01_09_17_06_39_¦¦¥¦2Í¸Ê¦-+©-.jpg',NULL,'¦¦¥¦2Í¸Ê¦-+©-.jpg',417628,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2240,'2019-01-09 04:06:46.810','2019-01-09 04:06:46.810',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_17_06_46_¦¦¥¦7©ÃÎË copy 10.33.56 AM.jpg','2019_01_09_17_06_46_¦¦¥¦7©ÃÎË copy 10.33.56 AM.jpg',NULL,'¦¦¥¦7©ÃÎË copy 10.33.56 AM.jpg',741484,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2241,'2019-01-09 04:06:49.848','2019-01-09 04:06:49.848',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_17_06_49_¦¦¥¦8¦¯¦þ©-.jpg','2019_01_09_17_06_49_¦¦¥¦8¦¯¦þ©-.jpg',NULL,'¦¦¥¦8¦¯¦þ©-.jpg',203492,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2242,'2019-01-09 04:06:54.019','2019-01-09 04:06:54.019',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_17_06_53_1602a 1602b front and back copy 10.33.56 AM.jpg','2019_01_09_17_06_53_1602a 1602b front and back copy 10.33.56 AM.jpg',NULL,'1602a 1602b front and back copy 10.33.56 AM.jpg',819076,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2243,'2019-01-09 04:06:57.560','2019-01-09 04:06:57.560',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_17_06_57_1602a 1602b prod-details-temp copy 10.33.56 AM.jpg','2019_01_09_17_06_57_1602a 1602b prod-details-temp copy 10.33.56 AM.jpg',NULL,'1602a 1602b prod-details-temp copy 10.33.56 AM.jpg',331853,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2244,'2019-01-09 04:07:35.241','2019-01-09 04:07:35.241',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_17_07_35_¦¦¥¦2Í¸Ê¦-+©-.jpg','2019_01_09_17_07_35_¦¦¥¦2Í¸Ê¦-+©-.jpg',NULL,'¦¦¥¦2Í¸Ê¦-+©-.jpg',417628,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2245,'2019-01-09 04:08:11.405','2019-01-09 04:08:11.405',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_17_08_11_¦¦¥¦7©ÃÎË copy 10.33.56 AM.jpg','2019_01_09_17_08_11_¦¦¥¦7©ÃÎË copy 10.33.56 AM.jpg',NULL,'¦¦¥¦7©ÃÎË copy 10.33.56 AM.jpg',741484,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2246,'2019-01-09 04:10:36.143','2019-01-09 04:10:36.143',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_17_10_36_¦¦¥¦7¦¯¦þ©-.jpg','2019_01_09_17_10_36_¦¦¥¦7¦¯¦þ©-.jpg',NULL,'¦¦¥¦7¦¯¦þ©-.jpg',240667,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2247,'2019-01-09 04:10:42.290','2019-01-09 04:10:42.290',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_17_10_42_¦¦¥¦5©ÃÎË copy.jpg','2019_01_09_17_10_42_¦¦¥¦5©ÃÎË copy.jpg',NULL,'¦¦¥¦5©ÃÎË copy.jpg',270622,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2248,'2019-01-09 04:10:45.589','2019-01-09 04:10:45.589',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_17_10_45_¦¦¥¦6Í¸Ê¦-+©-.jpg','2019_01_09_17_10_45_¦¦¥¦6Í¸Ê¦-+©-.jpg',NULL,'¦¦¥¦6Í¸Ê¦-+©-.jpg',249986,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2249,'2019-01-09 04:10:50.169','2019-01-09 04:10:50.169',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_17_10_50_1603 front and back copy.jpg','2019_01_09_17_10_50_1603 front and back copy.jpg',NULL,'1603 front and back copy.jpg',261669,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2250,'2019-01-09 04:10:53.867','2019-01-09 04:10:53.867',0,'image/jpeg','/v1/attachment/download?filename=2019_01_09_17_10_53_1603 prod-details-temp copy.jpg','2019_01_09_17_10_53_1603 prod-details-temp copy.jpg',NULL,'1603 prod-details-temp copy.jpg',319571,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2251,'2019-01-09 22:34:19.499','2019-01-09 22:34:19.499',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_11_34_19_¦¦¥¦1Í¸Ê¦-+©-.jpg','2019_01_10_11_34_19_¦¦¥¦1Í¸Ê¦-+©-.jpg',NULL,'¦¦¥¦1Í¸Ê¦-+©-.jpg',433009,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2252,'2019-01-09 23:31:52.642','2019-01-09 23:31:52.642',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_12_31_52_¦¦¥¦1Í¸Ê¦-+©-.jpg','2019_01_10_12_31_52_¦¦¥¦1Í¸Ê¦-+©-.jpg',NULL,'¦¦¥¦1Í¸Ê¦-+©-.jpg',953570,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2253,'2019-01-09 23:33:38.612','2019-01-09 23:33:38.612',0,'image/png','/v1/attachment/download?filename=2019_01_10_12_33_38_WeChat Image_20190110123315.png','2019_01_10_12_33_38_WeChat Image_20190110123315.png',NULL,'WeChat Image_20190110123315.png',769354,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2254,'2019-01-09 23:33:44.295','2019-01-09 23:33:44.295',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_12_33_44_¦¦¥¦3©ÃÎË copy.jpg','2019_01_10_12_33_44_¦¦¥¦3©ÃÎË copy.jpg',NULL,'¦¦¥¦3©ÃÎË copy.jpg',821839,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2255,'2019-01-09 23:33:45.973','2019-01-09 23:33:45.973',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_12_33_45_¦¦¥¦8¦¯¦þ©-.jpg','2019_01_10_12_33_45_¦¦¥¦8¦¯¦þ©-.jpg',NULL,'¦¦¥¦8¦¯¦þ©-.jpg',248350,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2256,'2019-01-09 23:33:49.558','2019-01-09 23:33:49.558',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_12_33_49_1701a  front and back copy.jpg','2019_01_10_12_33_49_1701a  front and back copy.jpg',NULL,'1701a  front and back copy.jpg',829946,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2257,'2019-01-09 23:33:51.052','2019-01-09 23:33:51.052',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_12_33_51_1701a prod-details-temp copy.jpg','2019_01_10_12_33_51_1701a prod-details-temp copy.jpg',NULL,'1701a prod-details-temp copy.jpg',405408,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2258,'2019-01-09 23:36:52.322','2019-01-09 23:36:52.322',0,'image/png','/v1/attachment/download?filename=2019_01_10_12_36_52_WeChat Image_20190110123603.png','2019_01_10_12_36_52_WeChat Image_20190110123603.png',NULL,'WeChat Image_20190110123603.png',747118,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2259,'2019-01-09 23:40:39.132','2019-01-09 23:40:39.132',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_12_40_39_¦¦¥¦3Í¸Ê¦-+.jpg','2019_01_10_12_40_39_¦¦¥¦3Í¸Ê¦-+.jpg',NULL,'¦¦¥¦3Í¸Ê¦-+.jpg',199956,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2260,'2019-01-09 23:40:45.408','2019-01-09 23:40:45.408',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_12_40_45_¦¦¥¦1©ÃÎË copy.jpg','2019_01_10_12_40_45_¦¦¥¦1©ÃÎË copy.jpg',NULL,'¦¦¥¦1©ÃÎË copy.jpg',281148,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2261,'2019-01-09 23:40:47.642','2019-01-09 23:40:47.642',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_12_40_47_¦¦¥¦6¦¯¦þ.jpg','2019_01_10_12_40_47_¦¦¥¦6¦¯¦þ.jpg',NULL,'¦¦¥¦6¦¯¦þ.jpg',218401,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2262,'2019-01-09 23:40:49.895','2019-01-09 23:40:49.895',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_12_40_49_1701b front and back copy.jpg','2019_01_10_12_40_49_1701b front and back copy.jpg',NULL,'1701b front and back copy.jpg',269765,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2263,'2019-01-09 23:40:52.460','2019-01-09 23:40:52.460',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_12_40_52_1701b prod-details-temp copy.jpg','2019_01_10_12_40_52_1701b prod-details-temp copy.jpg',NULL,'1701b prod-details-temp copy.jpg',362480,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2264,'2019-01-09 23:41:53.978','2019-01-09 23:41:53.978',0,'image/png','/v1/attachment/download?filename=2019_01_10_12_41_53_WeChat Image_20190110124137.png','2019_01_10_12_41_53_WeChat Image_20190110124137.png',NULL,'WeChat Image_20190110124137.png',345117,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2265,'2019-01-10 00:36:38.106','2019-01-10 00:36:38.106',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_13_36_37_¦¦¥¦5Í¸Ê¦-+©-.jpg','2019_01_10_13_36_37_¦¦¥¦5Í¸Ê¦-+©-.jpg',NULL,'¦¦¥¦5Í¸Ê¦-+©-.jpg',433511,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2266,'2019-01-10 00:36:44.163','2019-01-10 00:36:44.163',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_13_36_44_¦¦¥¦8©ÃÎË copy.jpg','2019_01_10_13_36_44_¦¦¥¦8©ÃÎË copy.jpg',NULL,'¦¦¥¦8©ÃÎË copy.jpg',716000,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2267,'2019-01-10 00:36:45.618','2019-01-10 00:36:45.618',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_13_36_45_¦¦¥¦9¦¯¦þ©-.jpg','2019_01_10_13_36_45_¦¦¥¦9¦¯¦þ©-.jpg',NULL,'¦¦¥¦9¦¯¦þ©-.jpg',211487,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2268,'2019-01-10 00:36:48.261','2019-01-10 00:36:48.261',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_13_36_48_1702a front and back copy.jpg','2019_01_10_13_36_48_1702a front and back copy.jpg',NULL,'1702a front and back copy.jpg',818730,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2269,'2019-01-10 00:36:49.613','2019-01-10 00:36:49.613',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_13_36_49_1702a prod-details-temp copy.jpg','2019_01_10_13_36_49_1702a prod-details-temp copy.jpg',NULL,'1702a prod-details-temp copy.jpg',341352,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2270,'2019-01-10 00:39:18.331','2019-01-10 00:39:18.331',0,'image/png','/v1/attachment/download?filename=2019_01_10_13_39_18_WeChat Image_20190110133900.png','2019_01_10_13_39_18_WeChat Image_20190110133900.png',NULL,'WeChat Image_20190110133900.png',286569,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2271,'2019-01-10 00:43:59.357','2019-01-10 00:43:59.357',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_13_43_59_prod-compose.jpg','2019_01_10_13_43_59_prod-compose.jpg',NULL,'prod-compose.jpg',533569,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2272,'2019-01-10 00:44:05.985','2019-01-10 00:44:05.985',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_13_44_05_+óð+-+ã¼_20190107223656.jpg','2019_01_10_13_44_05_+óð+-+ã¼_20190107223656.jpg',NULL,'+óð+-+ã¼_20190107223656.jpg',227370,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2273,'2019-01-10 00:44:09.160','2019-01-10 00:44:09.160',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_13_44_09_+óð+-+ã¼_20190107223700.jpg','2019_01_10_13_44_09_+óð+-+ã¼_20190107223700.jpg',NULL,'+óð+-+ã¼_20190107223700.jpg',341409,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2274,'2019-01-10 00:44:11.568','2019-01-10 00:44:11.568',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_13_44_11_prod-details.jpg','2019_01_10_13_44_11_prod-details.jpg',NULL,'prod-details.jpg',258969,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2275,'2019-01-10 00:44:14.372','2019-01-10 00:44:14.372',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_13_44_14_prod-front.jpg','2019_01_10_13_44_14_prod-front.jpg',NULL,'prod-front.jpg',199257,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2276,'2019-01-10 00:49:06.062','2019-01-10 00:49:06.062',0,'image/png','/v1/attachment/download?filename=2019_01_10_13_49_05_WeChat Image_20190110134727.png','2019_01_10_13_49_05_WeChat Image_20190110134727.png',NULL,'WeChat Image_20190110134727.png',892791,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2277,'2019-01-10 00:49:09.227','2019-01-10 00:49:09.227',0,'image/png','/v1/attachment/download?filename=2019_01_10_13_49_08_WeChat Image_20190110134825.png','2019_01_10_13_49_08_WeChat Image_20190110134825.png',NULL,'WeChat Image_20190110134825.png',716275,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2278,'2019-01-10 00:49:39.737','2019-01-10 00:49:39.737',0,'image/png','/v1/attachment/download?filename=2019_01_10_13_49_39_WeChat Image_20190110134727.png','2019_01_10_13_49_39_WeChat Image_20190110134727.png',NULL,'WeChat Image_20190110134727.png',892791,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2279,'2019-01-10 00:49:41.323','2019-01-10 00:49:41.323',0,'image/png','/v1/attachment/download?filename=2019_01_10_13_49_41_WeChat Image_20190110134825.png','2019_01_10_13_49_41_WeChat Image_20190110134825.png',NULL,'WeChat Image_20190110134825.png',716275,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2280,'2019-01-10 00:58:01.361','2019-01-10 00:58:01.361',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_13_58_01_prod-main-temp.jpg','2019_01_10_13_58_01_prod-main-temp.jpg',NULL,'prod-main-temp.jpg',185935,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2281,'2019-01-10 00:58:07.895','2019-01-10 00:58:07.895',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_13_58_07_prod-compose copy.jpg','2019_01_10_13_58_07_prod-compose copy.jpg',NULL,'prod-compose copy.jpg',247201,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2282,'2019-01-10 00:58:08.878','2019-01-10 00:58:08.878',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_13_58_08_prod-details-temp copy.jpg','2019_01_10_13_58_08_prod-details-temp copy.jpg',NULL,'prod-details-temp copy.jpg',338143,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2283,'2019-01-10 00:58:11.648','2019-01-10 00:58:11.648',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_13_58_11_prod-front copy.jpg','2019_01_10_13_58_11_prod-front copy.jpg',NULL,'prod-front copy.jpg',258230,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2284,'2019-01-10 00:58:12.846','2019-01-10 00:58:12.846',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_13_58_12_prod-size.jpg','2019_01_10_13_58_12_prod-size.jpg',NULL,'prod-size.jpg',207299,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2285,'2019-01-10 01:03:01.491','2019-01-10 01:03:01.491',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_14_03_01_prod-size.jpg','2019_01_10_14_03_01_prod-size.jpg',NULL,'prod-size.jpg',189587,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2286,'2019-01-10 01:03:06.700','2019-01-10 01:03:06.700',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_14_03_06_prod-details-temp copy 12.32.23 PM.jpg','2019_01_10_14_03_06_prod-details-temp copy 12.32.23 PM.jpg',NULL,'prod-details-temp copy 12.32.23 PM.jpg',303538,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2287,'2019-01-10 01:03:09.182','2019-01-10 01:03:09.182',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_14_03_09_prod-front copy 12.32.23 PM.jpg','2019_01_10_14_03_09_prod-front copy 12.32.23 PM.jpg',NULL,'prod-front copy 12.32.23 PM.jpg',251964,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2288,'2019-01-10 01:03:10.369','2019-01-10 01:03:10.369',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_14_03_10_prod-main-temp.jpg','2019_01_10_14_03_10_prod-main-temp.jpg',NULL,'prod-main-temp.jpg',212364,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2289,'2019-01-10 01:15:13.935','2019-01-10 01:15:13.935',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_14_15_13_¦¦¥¦3¦¯¦þ.jpg','2019_01_10_14_15_13_¦¦¥¦3¦¯¦þ.jpg',NULL,'¦¦¥¦3¦¯¦þ.jpg',217630,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2290,'2019-01-10 01:15:16.834','2019-01-10 01:15:16.834',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_14_15_16_¦¦¥¦2---«+ÕÎ_.jpg','2019_01_10_14_15_16_¦¦¥¦2---«+ÕÎ_.jpg',NULL,'¦¦¥¦2---«+ÕÎ_.jpg',208623,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2291,'2019-01-10 01:15:20.400','2019-01-10 01:15:20.400',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_14_15_20_¦¦¥¦5©ÃÎË.jpg','2019_01_10_14_15_20_¦¦¥¦5©ÃÎË.jpg',NULL,'¦¦¥¦5©ÃÎË.jpg',179821,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2292,'2019-01-10 01:15:22.415','2019-01-10 01:15:22.415',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_14_15_22_¦¦¥¦9Í¸Ê¦-+.jpg','2019_01_10_14_15_22_¦¦¥¦9Í¸Ê¦-+.jpg',NULL,'¦¦¥¦9Í¸Ê¦-+.jpg',154575,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2293,'2019-01-10 01:15:25.480','2019-01-10 01:15:25.480',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_14_15_25_713 front and back.jpg','2019_01_10_14_15_25_713 front and back.jpg',NULL,'713 front and back.jpg',198378,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2294,'2019-01-10 01:15:28.186','2019-01-10 01:15:28.186',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_14_15_28_713 prod-details-temp.jpg','2019_01_10_14_15_28_713 prod-details-temp.jpg',NULL,'713 prod-details-temp.jpg',334274,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2295,'2019-01-10 01:17:12.996','2019-01-10 01:17:12.996',0,'image/png','/v1/attachment/download?filename=2019_01_10_14_17_12_WeChat Image_20190110141649.png','2019_01_10_14_17_12_WeChat Image_20190110141649.png',NULL,'WeChat Image_20190110141649.png',763727,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2296,'2019-01-10 01:17:18.890','2019-01-10 01:17:18.890',0,'image/png','/v1/attachment/download?filename=2019_01_10_14_17_18_WeChat Image_20190110141658.png','2019_01_10_14_17_18_WeChat Image_20190110141658.png',NULL,'WeChat Image_20190110141658.png',685100,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2297,'2019-01-10 01:20:37.248','2019-01-10 01:20:37.248',0,'image/png','/v1/attachment/download?filename=2019_01_10_14_20_37_2.png','2019_01_10_14_20_37_2.png',NULL,'2.png',74025,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2298,'2019-01-10 01:20:44.232','2019-01-10 01:20:44.232',0,'image/png','/v1/attachment/download?filename=2019_01_10_14_20_44_3.png','2019_01_10_14_20_44_3.png',NULL,'3.png',74025,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2299,'2019-01-10 01:20:48.291','2019-01-10 01:20:48.291',0,'image/png','/v1/attachment/download?filename=2019_01_10_14_20_48_2.png','2019_01_10_14_20_48_2.png',NULL,'2.png',74025,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2300,'2019-01-10 01:23:34.191','2019-01-10 01:23:34.191',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_14_23_34_adv 2.jpg','2019_01_10_14_23_34_adv 2.jpg',NULL,'adv 2.jpg',107118,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2301,'2019-01-10 01:26:35.976','2019-01-10 01:26:35.976',0,'image/jpeg','/v1/attachment/download?filename=2019_01_10_14_26_35_adv 1.jpg','2019_01_10_14_26_35_adv 1.jpg',NULL,'adv 1.jpg',123472,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2302,'2019-01-13 22:49:35.415','2019-01-13 22:49:35.415',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_11_49_35_1.jpg','2019_01_14_11_49_35_1.jpg',NULL,'1.jpg',107118,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2303,'2019-01-13 22:50:11.456','2019-01-13 22:50:11.456',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_11_50_11_1.jpg','2019_01_14_11_50_11_1.jpg',NULL,'1.jpg',107118,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2304,'2019-01-13 22:55:52.168','2019-01-13 22:55:52.168',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_11_55_51_1.jpg','2019_01_14_11_55_51_1.jpg',NULL,'1.jpg',107118,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2305,'2019-01-13 22:55:55.463','2019-01-13 22:55:55.463',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_11_55_55_1.jpg','2019_01_14_11_55_55_1.jpg',NULL,'1.jpg',107118,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2306,'2019-01-13 23:45:11.690','2019-01-13 23:45:11.690',0,'image/png','/v1/attachment/download?filename=2019_01_14_12_45_11_adv 3.png','2019_01_14_12_45_11_adv 3.png',NULL,'adv 3.png',74025,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2307,'2019-01-13 23:45:45.926','2019-01-13 23:45:45.926',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_12_45_45_4.jpg','2019_01_14_12_45_45_4.jpg',NULL,'4.jpg',35977,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2308,'2019-01-13 23:45:57.155','2019-01-13 23:45:57.155',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_12_45_56_30.jpg','2019_01_14_12_45_56_30.jpg',NULL,'30.jpg',148987,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2309,'2019-01-13 23:46:07.728','2019-01-13 23:46:07.728',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_12_46_07_10.jpg','2019_01_14_12_46_07_10.jpg',NULL,'10.jpg',121721,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2310,'2019-01-13 23:50:42.680','2019-01-13 23:50:42.680',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_12_50_42_adv 1.jpg','2019_01_14_12_50_42_adv 1.jpg',NULL,'adv 1.jpg',123472,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2311,'2019-01-13 23:57:16.463','2019-01-13 23:57:16.463',0,'image/png','/v1/attachment/download?filename=2019_01_14_12_57_16_35.png','2019_01_14_12_57_16_35.png',NULL,'35.png',896016,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2312,'2019-01-13 23:57:25.470','2019-01-13 23:57:25.470',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_12_57_25_5.jpg','2019_01_14_12_57_25_5.jpg',NULL,'5.jpg',155570,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2313,'2019-01-13 23:57:52.575','2019-01-13 23:57:52.575',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_12_57_52_18.jpg','2019_01_14_12_57_52_18.jpg',NULL,'18.jpg',2995898,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2314,'2019-01-14 00:00:53.015','2019-01-14 00:00:53.015',0,'image/png','/v1/attachment/download?filename=2019_01_14_13_00_52_adv 3.png','2019_01_14_13_00_52_adv 3.png',NULL,'adv 3.png',74025,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2315,'2019-01-14 00:01:17.134','2019-01-14 00:01:17.134',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_13_01_16_30.jpg','2019_01_14_13_01_16_30.jpg',NULL,'30.jpg',148987,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2316,'2019-01-14 00:01:27.290','2019-01-14 00:01:27.290',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_13_01_27_4.jpg','2019_01_14_13_01_27_4.jpg',NULL,'4.jpg',35977,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2317,'2019-01-14 00:01:32.029','2019-01-14 00:01:32.029',0,'image/png','/v1/attachment/download?filename=2019_01_14_13_01_31_8.png','2019_01_14_13_01_31_8.png',NULL,'8.png',657874,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2318,'2019-01-14 00:15:35.704','2019-01-14 00:15:35.704',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_13_15_35_5.jpg','2019_01_14_13_15_35_5.jpg',NULL,'5.jpg',155570,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2319,'2019-01-14 00:15:53.888','2019-01-14 00:15:53.888',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_13_15_53_adv 1.jpg','2019_01_14_13_15_53_adv 1.jpg',NULL,'adv 1.jpg',123472,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2320,'2019-01-14 00:16:11.596','2019-01-14 00:16:11.596',0,'application/x-msdownload','/v1/attachment/download?filename=2019_01_14_13_16_11_Dropbox.exe','2019_01_14_13_16_11_Dropbox.exe',NULL,'Dropbox.exe',4050752,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2321,'2019-01-14 00:16:20.804','2019-01-14 00:16:20.804',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_13_16_20_5.jpg','2019_01_14_13_16_20_5.jpg',NULL,'5.jpg',155570,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2322,'2019-01-14 00:16:41.527','2019-01-14 00:16:41.527',0,'image/png','/v1/attachment/download?filename=2019_01_14_13_16_41_35.png','2019_01_14_13_16_41_35.png',NULL,'35.png',896016,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2323,'2019-01-14 10:04:14.833','2019-01-14 10:04:14.833',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_23_04_14_WechatIMG718.jpeg','2019_01_14_23_04_14_WechatIMG718.jpeg',NULL,'WechatIMG718.jpeg',191393,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2324,'2019-01-14 10:04:29.439','2019-01-14 10:04:29.439',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_23_04_29_WechatIMG716.jpeg','2019_01_14_23_04_29_WechatIMG716.jpeg',NULL,'WechatIMG716.jpeg',64746,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2325,'2019-01-14 10:04:29.492','2019-01-14 10:04:29.492',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_23_04_29_WechatIMG717.jpeg','2019_01_14_23_04_29_WechatIMG717.jpeg',NULL,'WechatIMG717.jpeg',87910,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2326,'2019-01-14 10:04:29.628','2019-01-14 10:04:29.628',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_23_04_29_WechatIMG730.jpeg','2019_01_14_23_04_29_WechatIMG730.jpeg',NULL,'WechatIMG730.jpeg',93260,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2327,'2019-01-14 10:04:29.813','2019-01-14 10:04:29.813',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_23_04_29_WechatIMG732.jpeg','2019_01_14_23_04_29_WechatIMG732.jpeg',NULL,'WechatIMG732.jpeg',100770,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2328,'2019-01-14 10:04:29.922','2019-01-14 10:04:29.922',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_23_04_29_WechatIMG731.jpeg','2019_01_14_23_04_29_WechatIMG731.jpeg',NULL,'WechatIMG731.jpeg',105390,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2329,'2019-01-14 10:04:30.026','2019-01-14 10:04:30.026',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_23_04_29_WechatIMG733.jpeg','2019_01_14_23_04_29_WechatIMG733.jpeg',NULL,'WechatIMG733.jpeg',88992,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2330,'2019-01-14 10:04:30.148','2019-01-14 10:04:30.148',0,'image/jpeg','/v1/attachment/download?filename=2019_01_14_23_04_30_WechatIMG734.jpeg','2019_01_14_23_04_30_WechatIMG734.jpeg',NULL,'WechatIMG734.jpeg',57788,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2331,'2019-01-15 03:02:02.197','2019-01-15 03:02:02.197',0,'image/jpeg','/v1/attachment/download?filename=2019_01_15_16_02_02_IMG_2678[1].JPG','2019_01_15_16_02_02_IMG_2678[1].JPG',NULL,'IMG_2678[1].JPG',881887,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2332,'2019-01-15 03:02:21.720','2019-01-15 03:02:21.720',0,'image/jpeg','/v1/attachment/download?filename=2019_01_15_16_02_21_IMG_2679[1].JPG','2019_01_15_16_02_21_IMG_2679[1].JPG',NULL,'IMG_2679[1].JPG',109596,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2333,'2019-01-15 03:02:34.157','2019-01-15 03:02:34.157',0,'image/jpeg','/v1/attachment/download?filename=2019_01_15_16_02_34_IMG_2680[1].JPG','2019_01_15_16_02_34_IMG_2680[1].JPG',NULL,'IMG_2680[1].JPG',73988,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2334,'2019-01-15 03:13:28.125','2019-01-15 03:13:28.125',0,'image/jpeg','/v1/attachment/download?filename=2019_01_15_16_13_28_IMG_2583[1].JPG','2019_01_15_16_13_28_IMG_2583[1].JPG',NULL,'IMG_2583[1].JPG',87910,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2335,'2019-01-15 03:13:38.619','2019-01-15 03:13:38.619',0,'image/jpeg','/v1/attachment/download?filename=2019_01_15_16_13_38_IMG_2582[1].JPG','2019_01_15_16_13_38_IMG_2582[1].JPG',NULL,'IMG_2582[1].JPG',64746,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2336,'2019-01-15 03:14:11.688','2019-01-15 03:14:11.688',0,'image/jpeg','/v1/attachment/download?filename=2019_01_15_16_14_11_IMG_4389[1].JPG','2019_01_15_16_14_11_IMG_4389[1].JPG',NULL,'IMG_4389[1].JPG',105390,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2337,'2019-01-16 02:13:36.165','2019-01-16 02:13:36.165',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_15_13_36_IMG_2677[1].JPG','2019_01_16_15_13_36_IMG_2677[1].JPG',NULL,'IMG_2677[1].JPG',186731,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2338,'2019-01-16 02:21:35.428','2019-01-16 02:21:35.428',0,'image/png','/v1/attachment/download?filename=2019_01_16_15_21_32_IMG_4424[1].PNG','2019_01_16_15_21_32_IMG_4424[1].PNG',NULL,'IMG_4424[1].PNG',770950,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2339,'2019-01-16 02:23:50.876','2019-01-16 02:23:50.876',0,'image/png','/v1/attachment/download?filename=2019_01_16_15_23_50_IMG_4424[1].PNG','2019_01_16_15_23_50_IMG_4424[1].PNG',NULL,'IMG_4424[1].PNG',770950,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2340,'2019-01-16 02:53:33.187','2019-01-16 02:53:33.187',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_15_53_33_IMG_2676[1].JPG','2019_01_16_15_53_33_IMG_2676[1].JPG',NULL,'IMG_2676[1].JPG',118421,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2341,'2019-01-16 03:07:29.697','2019-01-16 03:07:29.697',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_07_29_IMG_E4426[1].JPG','2019_01_16_16_07_29_IMG_E4426[1].JPG',NULL,'IMG_E4426[1].JPG',55010,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2342,'2019-01-16 03:07:56.702','2019-01-16 03:07:56.702',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_07_56_2.jpg','2019_01_16_16_07_56_2.jpg',NULL,'2.jpg',176085,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2343,'2019-01-16 03:07:57.037','2019-01-16 03:07:57.037',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_07_56_3.jpg','2019_01_16_16_07_56_3.jpg',NULL,'3.jpg',141502,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2344,'2019-01-16 03:07:57.519','2019-01-16 03:07:57.519',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_07_57_4.jpg','2019_01_16_16_07_57_4.jpg',NULL,'4.jpg',194516,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2345,'2019-01-16 03:07:57.769','2019-01-16 03:07:57.769',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_07_57_5.jpg','2019_01_16_16_07_57_5.jpg',NULL,'5.jpg',81284,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2346,'2019-01-16 03:07:57.829','2019-01-16 03:07:57.829',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_07_57_1.jpg','2019_01_16_16_07_57_1.jpg',NULL,'1.jpg',599774,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2347,'2019-01-16 03:07:58.186','2019-01-16 03:07:58.186',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_07_58_6.jpg','2019_01_16_16_07_58_6.jpg',NULL,'6.jpg',111739,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2348,'2019-01-16 03:07:58.463','2019-01-16 03:07:58.463',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_07_58_7.jpg','2019_01_16_16_07_58_7.jpg',NULL,'7.jpg',114201,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2349,'2019-01-16 03:07:59.353','2019-01-16 03:07:59.353',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_07_59_6.jpeg','2019_01_16_16_07_59_6.jpeg',NULL,'6.jpeg',178521,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2350,'2019-01-16 03:07:59.646','2019-01-16 03:07:59.646',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_07_59_9.jpg','2019_01_16_16_07_59_9.jpg',NULL,'9.jpg',76548,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2351,'2019-01-16 03:08:00.232','2019-01-16 03:08:00.232',0,'image/png','/v1/attachment/download?filename=2019_01_16_16_08_00_8.png','2019_01_16_16_08_00_8.png',NULL,'8.png',801459,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2352,'2019-01-16 03:08:39.791','2019-01-16 03:08:39.791',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_08_39_2.jpg','2019_01_16_16_08_39_2.jpg',NULL,'2.jpg',176085,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2353,'2019-01-16 03:08:40.267','2019-01-16 03:08:40.267',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_08_40_3.jpg','2019_01_16_16_08_40_3.jpg',NULL,'3.jpg',141502,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2354,'2019-01-16 03:08:40.280','2019-01-16 03:08:40.280',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_08_40_1.jpg','2019_01_16_16_08_40_1.jpg',NULL,'1.jpg',599774,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2355,'2019-01-16 03:08:40.723','2019-01-16 03:08:40.723',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_08_40_4.jpg','2019_01_16_16_08_40_4.jpg',NULL,'4.jpg',194516,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2356,'2019-01-16 03:08:41.108','2019-01-16 03:08:41.108',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_08_41_5.jpg','2019_01_16_16_08_41_5.jpg',NULL,'5.jpg',81284,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2357,'2019-01-16 03:08:41.129','2019-01-16 03:08:41.129',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_08_41_6.jpeg','2019_01_16_16_08_41_6.jpeg',NULL,'6.jpeg',178521,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2358,'2019-01-16 03:08:42.195','2019-01-16 03:08:42.195',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_08_42_7.jpg','2019_01_16_16_08_42_7.jpg',NULL,'7.jpg',114201,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2359,'2019-01-16 03:08:42.365','2019-01-16 03:08:42.365',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_08_42_6.jpg','2019_01_16_16_08_42_6.jpg',NULL,'6.jpg',111739,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2360,'2019-01-16 03:08:44.038','2019-01-16 03:08:44.038',0,'image/png','/v1/attachment/download?filename=2019_01_16_16_08_43_8.png','2019_01_16_16_08_43_8.png',NULL,'8.png',801459,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2361,'2019-01-16 03:08:44.194','2019-01-16 03:08:44.194',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_08_44_9.jpg','2019_01_16_16_08_44_9.jpg',NULL,'9.jpg',76548,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2362,'2019-01-16 03:15:38.246','2019-01-16 03:15:38.246',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_15_38_IMG_2674[1].JPG','2019_01_16_16_15_38_IMG_2674[1].JPG',NULL,'IMG_2674[1].JPG',109028,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2363,'2019-01-16 03:15:52.075','2019-01-16 03:15:52.075',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_15_51_IMG_E4427[1].JPG','2019_01_16_16_15_51_IMG_E4427[1].JPG',NULL,'IMG_E4427[1].JPG',76894,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2364,'2019-01-16 03:16:01.273','2019-01-16 03:16:01.273',0,'image/jpeg','/v1/attachment/download?filename=2019_01_16_16_16_01_IMG_E4429[1].JPG','2019_01_16_16_16_01_IMG_E4429[1].JPG',NULL,'IMG_E4429[1].JPG',104633,'CUSTOMER_BANK_ACCOUNT_DOC',50,50,NULL),(2365,'2019-04-04 03:45:21.976','2019-04-04 03:45:21.976',0,'image/jpeg','/v1/attachment/download?filename=2019_04_04_16_45_21_DSC_5766.JPG','2019_04_04_16_45_21_DSC_5766.JPG',NULL,'DSC_5766.JPG',3856533,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2366,'2019-04-04 03:45:32.577','2019-04-04 03:45:32.577',0,'image/jpeg','/v1/attachment/download?filename=2019_04_04_16_45_32_DSC_5748.JPG','2019_04_04_16_45_32_DSC_5748.JPG',NULL,'DSC_5748.JPG',5045961,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2367,'2019-04-04 03:45:40.437','2019-04-04 03:45:40.437',0,'image/jpeg','/v1/attachment/download?filename=2019_04_04_16_45_40_IMG_0868.JPG','2019_04_04_16_45_40_IMG_0868.JPG',NULL,'IMG_0868.JPG',1651003,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2368,'2019-04-04 03:45:47.191','2019-04-04 03:45:47.191',0,'image/jpeg','/v1/attachment/download?filename=2019_04_04_16_45_47_IMG_0889.JPG','2019_04_04_16_45_47_IMG_0889.JPG',NULL,'IMG_0889.JPG',1508324,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2369,'2019-04-04 03:46:10.134','2019-04-04 03:46:10.134',0,'image/jpeg','/v1/attachment/download?filename=2019_04_04_16_46_09_DSC_5758.JPG','2019_04_04_16_46_09_DSC_5758.JPG',NULL,'DSC_5758.JPG',4043329,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2370,'2019-04-04 03:50:12.006','2019-04-04 03:50:12.006',0,'image/jpeg','/v1/attachment/download?filename=2019_04_04_16_50_11_DSC_5731.JPG','2019_04_04_16_50_11_DSC_5731.JPG',NULL,'DSC_5731.JPG',5244695,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2371,'2019-04-04 03:50:19.627','2019-04-04 03:50:19.627',0,'image/jpeg','/v1/attachment/download?filename=2019_04_04_16_50_19_DSC_5728.JPG','2019_04_04_16_50_19_DSC_5728.JPG',NULL,'DSC_5728.JPG',4804927,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2372,'2019-04-04 03:50:30.743','2019-04-04 03:50:30.743',0,'image/jpeg','/v1/attachment/download?filename=2019_04_04_16_50_30_DSC_5746.JPG','2019_04_04_16_50_30_DSC_5746.JPG',NULL,'DSC_5746.JPG',4670532,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL),(2373,'2019-04-04 03:50:36.899','2019-04-04 03:50:36.899',0,'image/jpeg','/v1/attachment/download?filename=2019_04_04_16_50_36_IMG_0874.JPG','2019_04_04_16_50_36_IMG_0874.JPG',NULL,'IMG_0874.JPG',2529089,'CUSTOMER_BANK_ACCOUNT_DOC',40,40,NULL);
/*!40000 ALTER TABLE `attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute`
--

DROP TABLE IF EXISTS `attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `name_zh_cn` varchar(255) DEFAULT NULL,
  `root_level` char(1) NOT NULL,
  `searchable` char(1) NOT NULL,
  `selectable` char(1) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `value_label` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_hpwum0iq12fs4ej5d0tgy6wsn` (`name`),
  UNIQUE KEY `UK_i16yds4o84khwt4vd85lx6s3n` (`name_zh_cn`),
  KEY `FKjwpi29uergwyyw0ihad3gx28m` (`creator_id`),
  KEY `FKdnt9narri4q3jrxqb4tue5sst` (`modifier_id`),
  KEY `FKm6lumpkjui1t1xi0wbp188mnj` (`user_id`),
  KEY `FK8xaeml4v57nyhu2olsqgwg4ak` (`category_id`),
  KEY `FK55yt7238uhvc9j107c9h57pex` (`parent_id`),
  CONSTRAINT `FK55yt7238uhvc9j107c9h57pex` FOREIGN KEY (`parent_id`) REFERENCES `attribute` (`id`),
  CONSTRAINT `FK8xaeml4v57nyhu2olsqgwg4ak` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FKdnt9narri4q3jrxqb4tue5sst` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKjwpi29uergwyyw0ihad3gx28m` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKm6lumpkjui1t1xi0wbp188mnj` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute`
--

LOCK TABLES `attribute` WRITE;
/*!40000 ALTER TABLE `attribute` DISABLE KEYS */;
INSERT INTO `attribute` VALUES (1,'2018-11-14 23:55:56.319','2018-11-14 23:55:56.319',NULL,'Gender','性别','Y','Y','N',50,NULL,NULL,NULL,NULL,NULL,NULL,0),(2,'2018-11-14 23:55:56.319','2018-11-14 23:55:56.319',NULL,'Boys','男生','N','Y','N',50,NULL,NULL,NULL,1,NULL,NULL,0),(3,'2018-11-14 23:55:56.319','2018-11-14 23:55:56.319',NULL,'Girls','女生','N','Y','N',50,NULL,NULL,NULL,1,NULL,NULL,0),(4,'2018-11-14 23:55:56.319','2018-11-14 23:55:56.319',NULL,'Size','尺寸','Y','Y','Y',50,NULL,NULL,NULL,NULL,NULL,NULL,0),(5,'2018-11-14 23:55:56.319','2018-11-14 23:55:56.319',NULL,'80~90','80~90','N','Y','Y',50,NULL,NULL,NULL,4,NULL,NULL,0),(6,'2018-11-14 23:55:56.319','2018-11-14 23:55:56.319',NULL,'100~110','100~110','N','Y','Y',50,NULL,NULL,NULL,4,NULL,NULL,2),(7,'2018-11-14 23:55:56.319','2018-11-14 23:55:56.319',NULL,'120~130','120~130','N','Y','Y',50,NULL,NULL,NULL,4,NULL,NULL,5),(8,'2018-11-14 23:55:56.319','2018-11-14 23:55:56.319',NULL,'140~150','140~150','N','Y','Y',50,NULL,NULL,NULL,4,NULL,NULL,0),(9,'2018-11-14 23:55:56.319','2018-11-14 23:55:56.319',NULL,'average','average','N','Y','Y',50,NULL,NULL,NULL,4,NULL,NULL,0),(10,'2018-11-14 23:55:56.319','2018-11-14 23:55:56.319',NULL,'Color',NULL,'Y','Y','Y',50,NULL,NULL,NULL,NULL,NULL,NULL,0),(11,'2018-11-14 23:55:56.319','2018-11-14 23:55:56.319',NULL,'Blue','蓝色','N','Y','Y',50,NULL,NULL,NULL,10,'#87CEEB','rgb',0),(15,'2018-11-20 00:52:00.688','2018-12-05 09:41:24.883',2,'white','白色','N','Y','N',50,50,NULL,NULL,10,'#ffffff','rgb',0),(16,'2018-11-20 00:52:16.632','2018-12-05 09:41:06.707',2,'black','黑色','N','Y','N',50,50,NULL,NULL,10,'#000000','rgb',0),(17,'2018-11-20 00:52:33.609','2018-12-05 09:40:28.896',2,'grey','灰色','N','Y','N',50,50,NULL,NULL,10,'#D3D3D3','rgb',0),(21,'2019-01-05 03:43:54.794','2019-01-05 03:43:54.794',0,'yellow','黄色','N','N','N',50,50,NULL,NULL,10,'#FFFF00','rgb',0),(22,'2019-01-05 03:44:24.304','2019-01-05 03:44:24.304',0,'green','绿色','N','N','N',50,50,NULL,NULL,10,'#008000','rgb',0),(23,'2019-01-05 03:44:47.670','2019-01-05 03:44:47.670',0,'pink','粉色','N','N','N',50,50,NULL,NULL,10,'#FF69B4','rgb',0),(24,'2019-01-05 03:45:07.679','2019-01-05 03:45:07.679',0,'red','红色','N','N','N',50,50,NULL,NULL,10,'#FF0000','rgb',0),(25,'2019-01-05 03:45:28.852','2019-01-05 03:45:28.852',0,'orange','橘色','N','N','N',50,50,NULL,NULL,10,'#F28500','rgb',0),(26,'2019-01-05 03:45:46.200','2019-01-05 03:45:46.200',0,'silver','银色','N','N','N',50,50,NULL,NULL,10,'#C0C0C0','rgb',0),(27,'2019-01-05 03:53:12.931','2019-01-05 03:53:12.931',0,'90~100','90~100','N','N','N',50,50,NULL,NULL,4,NULL,NULL,1),(28,'2019-01-05 03:54:42.301','2019-01-05 03:54:42.301',0,'110~120','110~120','N','N','N',50,50,NULL,NULL,4,NULL,NULL,4),(29,'2019-01-05 03:55:53.724','2019-01-05 03:55:53.724',0,'130~140','130~140','N','N','N',50,50,NULL,NULL,4,NULL,NULL,6);
/*!40000 ALTER TABLE `attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `availability`
--

DROP TABLE IF EXISTS `availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `availability` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `inventory` int(11) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_multi_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcnl3gsm04dp2hl976qo8b3u9` (`creator_id`),
  KEY `FKok5cl1wx6bkbitnsekm1mh6fi` (`modifier_id`),
  KEY `FKi3cd88x8l32m3ceqy4x8kdfxs` (`user_id`),
  KEY `FK4wu2u1ushddqkj0gumdk24mw2` (`product_multi_id`),
  CONSTRAINT `FK4wu2u1ushddqkj0gumdk24mw2` FOREIGN KEY (`product_multi_id`) REFERENCES `product_multi` (`id`),
  CONSTRAINT `FKcnl3gsm04dp2hl976qo8b3u9` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKde4qjie0ievlffpxkgcjr8twx` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKf1uuiisoel5uc2uyb1nlaqw7m` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKgm50xsr3l74ir8s816xd6sdaq` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKi3cd88x8l32m3ceqy4x8kdfxs` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKok5cl1wx6bkbitnsekm1mh6fi` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKtpocrdrty13sudnwkvunou114` FOREIGN KEY (`product_multi_id`) REFERENCES `product_multi` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availability`
--

LOCK TABLES `availability` WRITE;
/*!40000 ALTER TABLE `availability` DISABLE KEYS */;
/*!40000 ALTER TABLE `availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balance`
--

DROP TABLE IF EXISTS `balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `client_fund` char(1) NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `end_of_the_day` double NOT NULL,
  `opening` double NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_currency` (`user_id`,`currency`,`client_fund`),
  KEY `FK4kumpm10a2cqd17iu4y0fc6wt` (`creator_id`),
  KEY `FKr7rg8j73xqpphj8jjy9d9bnsn` (`modifier_id`),
  CONSTRAINT `FK4kumpm10a2cqd17iu4y0fc6wt` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK6mj9vgfurfbd6g7ptd7kgo34y` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKhhu75s22y2eufqlj6x9ietqb9` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKm3r9vkhipmnf93lt4x9lw6rws` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKqqwwccd1nvm0i8fa23favn9qd` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKr7rg8j73xqpphj8jjy9d9bnsn` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balance`
--

LOCK TABLES `balance` WRITE;
/*!40000 ALTER TABLE `balance` DISABLE KEYS */;
/*!40000 ALTER TABLE `balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balance_detail`
--

DROP TABLE IF EXISTS `balance_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balance_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `amount` double NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `balance_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_hqpbdiwrapu324e65bk0hh8p6` (`order_id`),
  KEY `FK8jpbwdr0b2vw0yb60855rh90p` (`creator_id`),
  KEY `FK574l5qgxmspmphusjcl59jv2e` (`modifier_id`),
  KEY `FKr7pwvd5sp5uwvkbvdt6mwhv0p` (`user_id`),
  KEY `FK2f4kj9w0shy52k3pobgx63xer` (`balance_id`),
  CONSTRAINT `FK14dosckj4ae3v1abnt72rqeav` FOREIGN KEY (`balance_id`) REFERENCES `balance` (`id`),
  CONSTRAINT `FK2f4kj9w0shy52k3pobgx63xer` FOREIGN KEY (`balance_id`) REFERENCES `balance` (`id`),
  CONSTRAINT `FK574l5qgxmspmphusjcl59jv2e` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK8jpbwdr0b2vw0yb60855rh90p` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKg8pq3twnxkudgm7kyd6qu539e` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKk9sgcswaq4bw2buour7dx2jbm` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKmjjj5i37t654iompok5sqnqk6` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKr7pwvd5sp5uwvkbvdt6mwhv0p` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balance_detail`
--

LOCK TABLES `balance_detail` WRITE;
/*!40000 ALTER TABLE `balance_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `balance_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `total_amount` double NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgoxx87noo8dvnyxptxx3k6iqs` (`creator_id`),
  KEY `FKgwb2482l61p0cjit3172jalkr` (`modifier_id`),
  KEY `FK9rb6k7ir9lnxurqydmwepksuj` (`user_id`),
  CONSTRAINT `FK9rb6k7ir9lnxurqydmwepksuj` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKgoxx87noo8dvnyxptxx3k6iqs` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKgwb2482l61p0cjit3172jalkr` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'2018-11-06 04:52:33.996','2019-08-13 12:08:21.272',4,1946.5,1946.5,42,42,NULL),(2,'2018-12-16 07:36:42.372','2019-01-21 02:20:58.202',10,0,0,214,214,NULL),(3,'2018-12-17 01:12:18.886','2019-01-08 20:43:53.025',21,0,0,213,213,NULL);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `amount` bigint(20) NOT NULL,
  `sub_total_price` double DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `cart_id` bigint(20) DEFAULT NULL,
  `product_multi_id` bigint(20) DEFAULT NULL,
  `product_single_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKieg3r6yisx3pkgf95ets0sttp` (`creator_id`),
  KEY `FK9givdvn2g3drkhx0clc6fvp13` (`modifier_id`),
  KEY `FK41yuqsitg49j5wxhprjgo3odv` (`user_id`),
  KEY `FKlmddnw6pd7gder2x4r07f1ves` (`cart_id`),
  KEY `FKpvrcmvslxy6a708jdeqh2amfe` (`product_multi_id`),
  KEY `FK92y1fyssk1c0t72ouc2rieur2` (`product_single_id`),
  CONSTRAINT `FK41yuqsitg49j5wxhprjgo3odv` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK92y1fyssk1c0t72ouc2rieur2` FOREIGN KEY (`product_single_id`) REFERENCES `product_single` (`id`),
  CONSTRAINT `FK9givdvn2g3drkhx0clc6fvp13` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKieg3r6yisx3pkgf95ets0sttp` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKlmddnw6pd7gder2x4r07f1ves` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `FKpvrcmvslxy6a708jdeqh2amfe` FOREIGN KEY (`product_multi_id`) REFERENCES `product_multi` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES (3,'2018-12-13 01:58:22.063','2019-01-03 22:03:16.817',4,5,277.5,42,214,NULL,1,NULL,711),(4,'2019-08-13 12:08:21.189','2019-08-13 12:08:21.189',0,1,600,42,42,NULL,1,NULL,743);
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `root_level` char(1) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `name_zh_cn` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_46ccwnsi9409t36lurvtyljak` (`name`),
  KEY `FKobc2dr0fu6lq67p8f6ccm2hej` (`creator_id`),
  KEY `FKiypsy0lhp6u1h3rqtusj34bxy` (`modifier_id`),
  KEY `FKceknocrkqpy0wgmhs9d1265n0` (`user_id`),
  KEY `FK2y94svpmqttx80mshyny85wqr` (`parent_id`),
  CONSTRAINT `FK2xryruksq91q3uqgaw6dci248` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKc4iv2hsfixsph7qkg7e06nf5p` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKfp99x8pjwrdjrhv7hdolp7u4y` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKpqbj33aij72uwx8rwt086hvq2` FOREIGN KEY (`parent_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (99,'2018-11-06 03:54:20.977','2018-11-06 03:54:20.977',0,'Pet Supplies','Y',1,40,40,NULL,NULL,NULL),(100,'2018-11-06 03:54:36.444','2018-11-06 03:54:36.444',0,'Dog Supplies','N',1,40,40,NULL,99,NULL),(101,'2018-11-12 22:57:16.531','2018-11-12 22:57:16.531',0,'Kids','Y',0,50,50,NULL,NULL,NULL),(102,'2018-11-12 22:57:30.425','2018-11-12 22:57:30.425',0,'Tops','N',0,50,50,NULL,101,NULL),(103,'2018-11-26 02:10:26.109','2018-11-26 02:10:26.109',0,'test','N',1,40,40,NULL,NULL,NULL),(105,'2018-11-26 02:49:10.611','2018-11-26 02:49:10.611',0,'Postage & packing supplies','Y',1,40,40,NULL,NULL,NULL),(106,'2018-11-26 02:49:27.513','2018-11-26 02:49:27.513',0,'Bubble wrap & packing foam','N',1,40,40,NULL,105,NULL),(107,'2018-11-27 00:44:43.519','2019-01-03 22:15:33.573',2,'Sheds & Carports','Y',11,40,40,NULL,NULL,NULL),(108,'2018-11-27 00:47:23.511','2018-11-27 00:47:23.511',0,'b','N',1,40,40,NULL,107,NULL),(109,'2019-04-04 03:09:00.581','2019-04-04 03:09:00.581',0,'Garden Shed','N',NULL,40,40,NULL,107,NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_detail_images`
--

DROP TABLE IF EXISTS `category_detail_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_detail_images` (
  `category_id` bigint(20) NOT NULL,
  `detail_images_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_pagod5vynug6hnkqvr9sq8v49` (`detail_images_id`),
  KEY `FKf5xij6omw3poj32ctan1x21x3` (`category_id`),
  CONSTRAINT `FK28dpfhaitng4ixnjw0olyeto2` FOREIGN KEY (`detail_images_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FK2b7hvj0a2wi0gtcjehvd5dygm` FOREIGN KEY (`detail_images_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FKf5xij6omw3poj32ctan1x21x3` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FKjgo9jw95ladxqxq7fdy02oi56` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_detail_images`
--

LOCK TABLES `category_detail_images` WRITE;
/*!40000 ALTER TABLE `category_detail_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_detail_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_icon_images`
--

DROP TABLE IF EXISTS `category_icon_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_icon_images` (
  `category_id` bigint(20) NOT NULL,
  `icon_images_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_x2efx5aokt3oiwyhwoblc10l` (`icon_images_id`),
  KEY `FKl3oeee69igm696xk8g387s3we` (`category_id`),
  CONSTRAINT `FK69ljl04realk5shumm3n3a4cl` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FK9xt5x94b4oep4a14w2essqh15` FOREIGN KEY (`icon_images_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FKeuw4n3gaajy08qnaigb9hwpv2` FOREIGN KEY (`icon_images_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FKl3oeee69igm696xk8g387s3we` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_icon_images`
--

LOCK TABLES `category_icon_images` WRITE;
/*!40000 ALTER TABLE `category_icon_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_icon_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_activity`
--

DROP TABLE IF EXISTS `coin_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `coin` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_number` bigint(20) NOT NULL,
  `used_number` bigint(20) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcof3r7icocpfgrn7nvmog0cvv` (`creator_id`),
  KEY `FKn814n0q4wbh006cf9ur1o66nn` (`modifier_id`),
  KEY `FKos0gb2ma87woxmnji9296385u` (`user_id`),
  CONSTRAINT `FKcof3r7icocpfgrn7nvmog0cvv` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKn814n0q4wbh006cf9ur1o66nn` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKos0gb2ma87woxmnji9296385u` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_activity`
--

LOCK TABLES `coin_activity` WRITE;
/*!40000 ALTER TABLE `coin_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_history`
--

DROP TABLE IF EXISTS `coin_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `expired_at` datetime DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeq428qujxd27rtejiur0mjswq` (`creator_id`),
  KEY `FK61r1j26jh74xomgcu95ftsdl6` (`modifier_id`),
  KEY `FKfvx3j8ed2hlsjajspu4btmovj` (`user_id`),
  CONSTRAINT `FK61r1j26jh74xomgcu95ftsdl6` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKeq428qujxd27rtejiur0mjswq` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKfvx3j8ed2hlsjajspu4btmovj` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_history`
--

LOCK TABLES `coin_history` WRITE;
/*!40000 ALTER TABLE `coin_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `content` varchar(2048) DEFAULT NULL,
  `content_type_enum` varchar(255) DEFAULT NULL,
  `link` varchar(512) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `review` char(1) NOT NULL,
  `root_level` char(1) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `top` char(1) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  `website_column_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmnj85vwlntpgsy56uudos44kd` (`creator_id`),
  KEY `FKhwiwl7mtrrhjuiwhktwel6mmq` (`modifier_id`),
  KEY `FK4ea1wghb317k1m94w94slbwde` (`user_id`),
  KEY `FKeldjil20djnwfcgfbfbrhbvqs` (`parent_id`),
  KEY `FKkcdjkg81jtkkpm1gggdq5xraw` (`language_id`),
  KEY `FKqgn3csqaguj418xc319s19cxk` (`website_column_id`),
  CONSTRAINT `FK2scmedxn4mjhbm652yprlm47q` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK4ea1wghb317k1m94w94slbwde` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK4u88e19rwakppsgqwi3xcu09` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK5ug2vnn8c62a9f01a52rd38yj` FOREIGN KEY (`website_column_id`) REFERENCES `website_column` (`id`),
  CONSTRAINT `FKeldjil20djnwfcgfbfbrhbvqs` FOREIGN KEY (`parent_id`) REFERENCES `content` (`id`),
  CONSTRAINT `FKhwiwl7mtrrhjuiwhktwel6mmq` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKk3pgna2c1vwiglonmnts38je5` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKkcdjkg81jtkkpm1gggdq5xraw` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `FKmnj85vwlntpgsy56uudos44kd` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKqgn3csqaguj418xc319s19cxk` FOREIGN KEY (`website_column_id`) REFERENCES `website_column` (`id`),
  CONSTRAINT `FKs4j4whba2h4fmwqbaf41y2icf` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `abbr` varchar(255) NOT NULL,
  `name` varchar(16) NOT NULL,
  `telephone_prefix` varchar(255) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_llidyp77h6xkeokpbmoy710d4` (`name`),
  KEY `FK9173f5ktac9v26qgwetwfwsne` (`creator_id`),
  KEY `FKs1wpructuv0xn2a6ylprp7ypa` (`modifier_id`),
  KEY `FKo68byhs7kn7nicrd5h1do2l9q` (`user_id`),
  CONSTRAINT `FK89g6e6fy1g60ntocb30asprt4` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK9173f5ktac9v26qgwetwfwsne` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKlnwh0p57wp7e83nxvbsa1xvtt` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKo68byhs7kn7nicrd5h1do2l9q` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKqp8aawsfyhfu7xdlmv7e4jqeh` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKs1wpructuv0xn2a6ylprp7ypa` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `amount` double NOT NULL,
  `expired_on` datetime DEFAULT NULL,
  `least_price` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg4rv70cemr8renax5uk02yqsm` (`creator_id`),
  KEY `FK2fty8dqq2jx4wtycrqpwk7h1m` (`modifier_id`),
  KEY `FKhm5k0s6fxw9dg31uewss2vh9f` (`user_id`),
  CONSTRAINT `FK2fty8dqq2jx4wtycrqpwk7h1m` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK4u5yc31jccjocbx3csf5lv054` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKdvq3gs0guauqaqme2dgbenpl5` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKg4rv70cemr8renax5uk02yqsm` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKhm5k0s6fxw9dg31uewss2vh9f` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKoo6wqmawpo6ekcpbv1v32qqaa` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_images`
--

DROP TABLE IF EXISTS `coupon_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_images` (
  `coupon_id` bigint(20) NOT NULL,
  `images_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_st6ry36mddtly38xanwyoy9n7` (`images_id`),
  KEY `FKrvrshiqc2tsoxhw5cd3l4o1b9` (`coupon_id`),
  CONSTRAINT `FKdwlw9g5e8h1fov4g1i125bf2a` FOREIGN KEY (`images_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FKje3yvpxh8ihbscisi69ckc748` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`),
  CONSTRAINT `FKqsvf8nvit5466epj40xwon0no` FOREIGN KEY (`images_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FKrvrshiqc2tsoxhw5cd3l4o1b9` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_images`
--

LOCK TABLES `coupon_images` WRITE;
/*!40000 ALTER TABLE `coupon_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ou8q9939fa4k88wjh17qwcmre` (`name`),
  KEY `FKmmbj5y177yyneehkrc1sat3mn` (`creator_id`),
  KEY `FKb3rmqom7059i5lqm2pmm9ca2g` (`modifier_id`),
  KEY `FK8po22w36slrhy9n47nse0c79n` (`user_id`),
  CONSTRAINT `FK8po22w36slrhy9n47nse0c79n` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKb3rmqom7059i5lqm2pmm9ca2g` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKmmbj5y177yyneehkrc1sat3mn` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'2018-12-16 08:37:44.492','2018-12-16 08:37:44.492',NULL,'NZD',NULL,NULL,NULL);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_apply_payment_callback_log`
--

DROP TABLE IF EXISTS `d_apply_payment_callback_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_apply_payment_callback_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `callback` varchar(4095) DEFAULT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `gateway_payment_id` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `process` varchar(255) DEFAULT NULL,
  `return_msg` varchar(4095) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgc9obpue19exq2vxjkkjowe36` (`creator_id`),
  KEY `FK4bbhf0aqcjhu48cdvo9nlam31` (`modifier_id`),
  KEY `FK49rnhunro9qlfaogcut2r6d9y` (`user_id`),
  CONSTRAINT `FK49rnhunro9qlfaogcut2r6d9y` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK4bbhf0aqcjhu48cdvo9nlam31` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK88nst1uidpli18rpu6t3b3ihu` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKgc9obpue19exq2vxjkkjowe36` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKo5j3bw9ktcvdligcquv2cmjmx` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKr1rjs9j1u443p3f369fqjlua3` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_apply_payment_callback_log`
--

LOCK TABLES `d_apply_payment_callback_log` WRITE;
/*!40000 ALTER TABLE `d_apply_payment_callback_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_apply_payment_callback_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_snapshot`
--

DROP TABLE IF EXISTS `db_snapshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_snapshot` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `attachment_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7rcpum5x122fsjm06a43mrpr6` (`creator_id`),
  KEY `FKam68piy8be8lbeewam4ep31l5` (`modifier_id`),
  KEY `FKi6umj2vnjucxnp98ls6xex0cu` (`user_id`),
  KEY `FKcomjqiorq19m5b1f30f7lsjew` (`attachment_id`),
  CONSTRAINT `FK1iyd3b4vsvv4x0wfxr2cb7ynb` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK6bpy5u5yaraf46kqokmltmnxd` FOREIGN KEY (`attachment_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FK7rcpum5x122fsjm06a43mrpr6` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKam68piy8be8lbeewam4ep31l5` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKcomjqiorq19m5b1f30f7lsjew` FOREIGN KEY (`attachment_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FKfijcnlj38ejoh56rngrev0d27` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKi6umj2vnjucxnp98ls6xex0cu` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKm7tnmkcsxtoaicw39dyt4pv6a` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_snapshot`
--

LOCK TABLES `db_snapshot` WRITE;
/*!40000 ALTER TABLE `db_snapshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_snapshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_log`
--

DROP TABLE IF EXISTS `email_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `content` longblob,
  `msg` text,
  `order_id` varchar(255) DEFAULT NULL,
  `send_to` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `times` int(11) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1b7bil13fiu4o4w5r8rj1bb0e` (`creator_id`),
  KEY `FKl18l604c81mm3vbkqeoh4qo4q` (`modifier_id`),
  KEY `FK4qtv70ieui9b8dakgauntnsh8` (`user_id`),
  CONSTRAINT `FK1b7bil13fiu4o4w5r8rj1bb0e` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK4qtv70ieui9b8dakgauntnsh8` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKl18l604c81mm3vbkqeoh4qo4q` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_log`
--

LOCK TABLES `email_log` WRITE;
/*!40000 ALTER TABLE `email_log` DISABLE KEYS */;
INSERT INTO `email_log` VALUES (1,NULL,'2019-01-16 07:30:22.370',5,'2019_01_09_05_11_43_BD20190109051141-Invoice.pdf',_binary '\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\r\n        \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>\r\n    <title> Email</title>\r\n</head>\r\n<body style=\"background-color:#E6E6E6; margin: 0; padding: 0;\">\r\n\r\n<table style=\"width:100%;\" align=\"center\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n    <tr>\r\n        <td>\r\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tr>\r\n                    <td align=\"center\" valign=\"top\" style=\"background-color:#E6E6E6;\" bgcolor=\"#E6E6E6;\">\r\n\r\n                        <table width=\"600\" border=\"0\" align=\"center\" cellspacing=\"0\" cellpadding=\"0\">\r\n\r\n                            <tr>\r\n                                <td align=\"left\" valign=\"top\" bgcolor=\"#FFFFFF\"\r\n                                    style=\"background-color:#FFFFFF; position: relative\">\r\n\r\n\r\n                                    <div style=\"width: 100%;height: 3px;color: #7f7f7f;background-color: #142b3d; margin-bottom: 8px\"></div>\r\n\r\n\r\n                                    <a href=\"#\" target=\"_blank\">\r\n                                        <!-- <img src=\"../images/header.png\" width=\"600\" height=\"467\" border=\"0\" alt=\"Latipay\"/>-->\r\n                                        <img width=\"300\" border=\"0\" alt=\"CCFL\" style=\" margin: 20px 0 60px 50px;\"\r\n                                             src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJ0AAABGCAYAAADW35Y6AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4JpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDpGNzdGMTE3NDA3MjA2ODExODA4M0VCODNDNjJCRDdDMSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDowM0U2NUU4MDJFRTMxMUU3OTFEMEU4NUY0ODhENkY0NCIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDowM0U2NUU3RjJFRTMxMUU3OTFEMEU4NUY0ODhENkY0NCIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxNyAoTWFjaW50b3NoKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOmEwYTFkOGUwLTA4OTYtNDc1Yy1iYTFjLTA5N2I2YjU3YmIxMCIgc3RSZWY6ZG9jdW1lbnRJRD0iYWRvYmU6ZG9jaWQ6cGhvdG9zaG9wOmE5NWVkMjYxLTZhMGEtMTE3YS1iZWQ0LWRlY2Y5ZTRjODlhYSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pq+XqfwAABUESURBVHja7F0JmBTVtb5VNTJsCopLEo0PBMEFBHkoEZXNBBUEDfoQ8GEz8JygCKLIEhVBg+wawaciIM0QX1AEIiqo6GMxipIImLBqNOIWSFB2EIauqvyn7qnu29VV3T09wzAz1Pm+07Xcparu/evcc849t1oTFY1mfFITv0Xg7uAvwENEYZPXRUiVgmzbzphHr4D3PRV8C99bQ/BiALFH2J1Vh7QKJuXOx+9Wn5dhP7gpJN5XYZeFkq6s6ZaAezqZJWBIVYAqGuh+nibtJkjCFmGXhaAra2qeIf2usMtCna6srdaDGXLtA/8Iut0PYdeFOl1Z0GlZ5DkF3D7s2spNeZXwXjqB38ggNZvht41jCRc2WRV2c6jTlZauygC4h/D7V/B08EoczwXrYVeHoPOjw1nmawoQ5QUA7nr8/sZzto+gWY2QQtD50L/AsSzyVQefF5A2JuD8AwBkftjdIeiSqbCJhd/tWeb+qY+Uq4/fywPy1wNfE3Z3VTAkxq25WGhaFHwReKema6uwLbLvb7kixxq3+AIqlX7kc+7yDGVag5eGXV7ZJZ1l/xZ8GbgWuL5t2RFsl2tT1q3TH1//ixxqXJ9lvjo+587OUOYnYXdXCdBZjcHCYVtubWLTuhTbZQDfSwDfGSWo8U9Z5quWg9TOC7u7aki6v4GFH9ty28O27Y0AXqcsa1wONrPIV+xz7rssDJWQqgDo3pNSzhZxiZcq9c7E9k1IvZFZGBN7UNcfs7jyrhyG5r+E3V01htc5zmSbAzZbpJF6GrbjAbzZkHpGBiDPFZnn77YHgCoo3u4o+M2wu6sC6Ma2/RIgWZQAWEapV4DtQoCvWqDiZVnzddPaG68rW6lV2IQyPx6QfxbSd3lcLKeDm4NrhDCoTKCT0u4BsJkMuLRS70ZsFwB4vop9bODFB3Xbnmy4ZVKBt8EZhv3pafDrKfmFGOEB3KP43QH+2JGaMz65JYRCZQLduPafAhxPSMCpnE7q2V0h9WZrk9dqAUB+UrPsv0PqCU2tS9LCNDohGSG0oOdO8P8JmokQ4kqc368Arit+R4ENxf3yAs6fHcKhfKhs3Ai29bCw9G5Cs5sIDTgi1jUJFudYJCL3nH3nfB/A6Fsc/TpF2g1qdtCYtuE2TdNWGcKqZqMOU3Nekb0o91QGY4T0t+nMftTF5xxNkXVwwBdSJZB0RBM6HgbAekHCHY4PidlJvZFiwke+Q5s5uNmHkIhdkGc7STtIvQPY9k7RzUpO+wPOHwjhUJlARzSx43oApFCCyQswj66XBEpYwOP/fL4v8O5p9g6A1wDGR3PkPce+88KymMaiNbVeP9828FshHMqHyj5cfdg7E4Suj0gaZjWVCeo6D7PxPKuxbSt+fblZLk8945P2pI2C64PXgIdCgv49hEMZaFpZhKuXPejue0sDqGaC+0vApQAsGYSJ4yHiwdbhMsMQdDnSvW8YQjfmAni9pVTLSurtAjcUD/1sT9h1IehyoyFLCXjPAFSF2ErtMbPUGyNGXfFIpWnhgqKTPNbwdhGNrFHSKe0kPtqLtBUBaQJpr5wooDt2kRdPdjbFPUsGCFvfjjsZjS0Dz5VwYEsk3Cka3az+P+LR1WPFw23MHEFwKX7puye0PYs79XshHcRLHGMhGrHK8Clrgf+gHC8WtCg8QeQrdMOwaBalRUDasRUAFYyObbjP1C6EpDGQehuFbdA8bS0p9chq1SXQkv1652CfgjE/KCHYzsHvs+AbAnK0BQ8Eb0beOwC81eFAWBVcJuml3gJhxlqB14CFMK00LhT7P0sIuJb4XZcGcCpdJGiFWEHRf4VdX9VBJ6XeVmGZVwJ0I4Rp7gN7ABf369UoAeAoGpjWwHoDRelLALTe9T3wbk8azVh8VgHa/j/Apyp8wlD5RtNOvYF0tUnQ9WZDxxsBwBVgWy9h4YpivAavlaBGiio50wOo+8HPYQg9wsCkiJbe4MlCfkWgF9LWB4CYpCzNkDQF1wbvBNNQ/CLK7Cjj1uglEms9aPnlBOU+BiSlRSMTcI7uaTC4sZCzJysFTfVFIwd8noPmlW8GX8vtQ5/r2OjotUHPLsvR+pSeQq43OcMxfuQa4vkotyGgDC3vrMtHOzRNm45ztB6F5r/rcx3keH+e+oQMjeOrvA5Zmg8drwNA1xzbPOh1r4oJHTZkKeWaCLmQR32G7niwPwTkP1fQQu1o5Pc+aQTGmUIGC/gRgYLW045HeVspV9cjSRcj/SYlfU+SIRGNtFDSKMKluWLZ1g1ME+Ju8Owka1fSFn6mXUpZut7rInhR+vsOIFQQSZCS12C4zzVconYbgHL7PW23jaW2aywVsTDwYov09I727NsPH991A092Jmn0psgtwPIWz4MtDgScdEl8xQ3nBziSZk3SXIvW2j7Gb25hObcSSdxowKh0Ib8MA5VzvxXpv4LQJkmtKijSHEku2zMd9XauV1B0Ndoy6ENH1IZPBKRdwaPQ2Mr8uQVvw0ZzrGeWB3D7+W2l4fhDT9470Oi9y/k5DQbcFh5Sj6SAQQLHVSV6KWnzhIyeiYBfYSfVCwCNGgQ72AM4i/NO5q3qvro0Dajcl5PoY5aoXtfXbeWv05UteZcUbsrBr0eW7y+VMzT/2h6d8rWSZxB+pyl5RvtKzGNLj+GeHuL7oWGXHNDuFwvqst72T9ZZqyvlPncMKqkSzEVZst73KM9GdYxS8hc7emA0slLJQ5JxmZA+SaL+ODc2qY2S6S6kPctl2/GL4lLjUoOuRudJ1TVNPx262BmartfBPs271tFhFOD4EPaLsXPY1vWdlq7vOPBCv4Nl2BFe3SOWQx03e7XMlMaMRp5C49Ea3q7xhisouhjnN5Uj6CYr9/MXXP9d7Knril2Ln3S7H5RjAupNyD/HeVGikc2eesl/WU85fioJcPJ6q1F+jHIPBrfFMz73edAx4hJlV6EsGSKXqN6SjKDLv+pBHZblBQBNKwCpGYDUCEBqBHw1sC2zlq2RNaI7rg9bxz6t04E1Sv5fOqchXSe3iG2Jk3vPOmAbxqeWpm81dX0dwPiepRtrY7N65gKY7azTqPrNthLW0chz/HZAviUK6Iga5iRZc6P96Ly9nnP/CNBbi9HJBIahylmyeqeAJyKNoq6HsX5LdH6Wz/96EvDl8/vRlz4zPl8roAt2meS3Hn6e42zVtC7CMtsAZLUdpcG2GVwUIyeB5swq0JbcHs5Mljw2dQlG3ZneIjDqNPVaG6VbYqcljnvbtiFitv39Sf3nLQAAp8Vm3rq5BJ2xlqwh5fhWkem7dcE6iOpyEQFvsErVylHKlXTaboSQPXGPZzQgCdXDabOCossAjm2KRFSH19I8v1/7xQKdwwBaNXAf8PusC0wFeDoJ06pNK7nImavRmgXamvLYJrZ46+47ayAS5y0cm6Y8R2V07BvOljgm8sxYPfCvjNjRv+b1nzfNKJxvZNm4Xn/ef6Mxf5ZGf6sB9v4fxVcZjBOXvN9J2SYqKkUjJngYuzHIh/Yeg9Cl08EPBzz/1Vk+/5eluUWdAXedkP/fMJdN6iRywMaAs5WIYI3BmABZjNkDSFos5m4JfChnYKuCz7AswzBjgwC+EVk2Li3K/qPnTV4CYHX2AVxztqZewr666HuZJ+cUpNfylG3qKM8Joi8FrK+woCMHN91zNEIRL1PBV7Maofo/m/H2/z0W5n0oe76nPvL7jfFc5Y3S3GIeANeXHY/pHcU0rNpSZ3OHUzs+rLrDrjvEJoZid7ilfBbXozvnZNSJwfWaYIPqlPOjWbuX2a3hDiOnMfBoLvYjfibSJ1orZcYjPYbOID2Hwt9pSHev2coZtguKyFqlRUPkzL0XXDNJqSdpUjEBly/k4qKG2CcXEhkQ69iBvU/JuZtf3F3I97zieySA/QnnyC1CBsDZPEw3TtLvSmlE5bEzMfuZCV7voLkgc0ShJqOU2JjAYCrIgnUQ6AJPSGOCFDvLBR7pejjWOR/AdxRpT5dgKFmHBrqdJbSqv7Rk9iOy7jbGh6KCIvJhvavoN+SzC7qHFaJi/4kKLbm8gPcL0ziyVWf8SCE/Ht5YccE8GlCOpgLvLO1N6iLzZ/T9pV5cv4s5Op5mymHTmch3hldnRb+j08WHW9OK63w03DpDrjMcO0P1FxhqOx78XUHJwpqikRfZoNiSRe6tQk4bvamUJ4nYiRs0HS0Cd0P+oxUYdC+D/5whz+okd0c0spvbL1O5TY7OF418U9qbzHMUcLmA+bRcwIdxkYdTjSUdC01YrXZc0kmpJ90rtpPXHXYtXd+M3WeAxNn7FgzM7f8hopH3ILFoGO3JVizpcGexnredh5j5jk4XjcQCypMuM4B9dyQtTmaHK+mNs5DnnQBrbbFyvMbH1eLqiF/4SM1tAdZhujTBz1NXOT7Ez7GRJ9t/zu3QhtvB4pdyvpDBEEc9z/8tG2G3Mh5ascOZvoRFswv0Yhf5tp3Ui88MeEa/NpHDKvQ6iiigyd6+bN2UnOLh57ocdpV9GkI1PtZ0hzfgZynOvXrotaFhQOUJRClRJgCfwUr3dYx2UqR/XLIBG0CTMxIExGKA7nOc+wz7H2O7Buc/OrLswX+GzR+CLpAAxFPZijmHxSiJ9Xxl2BBsGZEI/95hTfsOkm4HkPfNkffHWWFTh1Qi0B0vqt39qdqwgK+BZGwqdOMHAPnlvS8Wfl2qSkeuqIt6uoJRH/Stx9qV2X+MtW/fgV5IsoQbsC60cOXKFcf8Q4y4bhNHVxViOq43HcdXsoVNbp5uOPdZGVyDPBwdUFcL7JPjmaJFbsXxJ7mArsKFNtW8YcqPa3Z74mlYu9th+b4Cy3YsLNzHYQZ/WLfnc7n/F8T9y+qhjrXgueCXhWVvFg+ualpGHU8ee+qASexSoMiN9TjfpRyarAYbTm6k8Sg+Jl25rPyJDUQiqHQXGznFpbFeKwTld3qsGqTaMNuyHoKBWz1h3Upvs27bP4FVQr6kDTldIBYbhkrOE4Yh19/qoj4UgqXigVWXiHHt9pQCcKQH/57VjR7sCaCAxX7gt5FOgQL9+TxtuyrgoFg3msx/DlLjZeQlvxrNqNwhEsGbUaQVIW08WaLY74f9a9gnRy/hO8q9dOVrH+G+zcc5iolbjnLTsN+TLfx7GUiD2Ud5I/svhyLfJuSryb46cqWQtPb7mv1B5OvIdbzF9R7kOrYgjaJXKPCVlgCQW4pcMzQ1d1uFAF1+x0eaAGwvAmwt4kEDQo+7XZTIlZ1+5Wv1ieq2btxoalojyzBmH32+9/cpmSyzk/zGHc+ikDdF134Kq2c0d0KuRE5oirqYQ8Dhc+8zExAacqeScVaN3TgEhHYMGHLVzEc++jupnZx3HhtwlCcPaTR80szAIq6PXDExLn+/2pQiEfRZn4dYqs99qS7g4zHgc3mfAExzqRdzHrpPiiih/9al6b6mbFS61IzLDVHq6Mh1tGXpSuCfI+QKPbrHizjNiZY57sNrtbajuls07Jlmi5Q5XPnJWHcO99N9i+5OceDW6Tkj3zDN1zQztsiwzEl5pvmq74VM8zThBB3EpAM75i6FtPtB1yvNXzi5PqpM+iZ9Of5UBiiB6XGAlGLiLmEDjDrxbR62qBO7sR/wCu5EGkbp2bozuPqhPK3HiM864HiBkCvddmC/vZBBqZloMAOJQOPOSpDORo70y4Sc7N+YoY4BPPxSyNWFeDFOYom9kp+xPfsWxXEHXX6bkSM001qomWatpNkMF2zJkSuzfCuxrOd0y+xMwQMygCDWpmZkbqsUN6JpHnLrl8BjtmKnoI5WpXiMrby9Ho2tKUOdd1nkDHTAXsUPuo2Bso87qy72D7BjmHTBq1niUB9NFImPdddUy4vsIj4M1S/rod24rs3S0MUDDe3f4LzJaZleqH8gn8WSOo+lHd1vHQZgvjpEHzfQ5bcePgGSZoLgqBOXLd/IFfM7AG+mj4XbDekRnkZzIlYMOTV3WYr70DLX63HQ0TWTpF6DXJ8Djf05D5cE3MVoZNK56GuhX2Gr/n+GO8SRh57ANRzpN4MfZknjfh/vNXZRUec9zfpQA5YaBFD3D14moixJk3Fpbu8AD8PXsr7YM8vHoimxDihzF5frVMI2sXh4vZRfjm08FB8/0DmAcz8+nWkOV87djv5h6fAkZR8WroHzExNzuzGnnC5Dps5KAZ0ZW0hpunMtBXxS4pXWddRXyHlPGgYpauNuBsdmnw7Zw51P0oSGw0dY73mAs7gf6l6DvCQBFytgFCztojxkLfH4S73XivH9kNR9VgQHqXrpbrZSCfRTRG7xc4NZL6RInofZADx8XEAHwA0T3q+dO3O4lgiQeqsg8VK+Hwzp1hXnL5CBoiYHFsSDB1LNdNN8xYgd3egAj8GnSL2tpXkmGjbBPVhC0XxnAxy3A9Pk+GyWVB8q+ZdwXtLXGpPew0MvpX3JVp77mYwnuPxMTrfJghXy70cvcq8HfpLzk/S7SrnWADYgzuXzDfhlWMD7y7zlUGYt38OlvL2C8wq2amn/G6WOD32uTaCjlXP7+WVsyS9J+TqHAbiu/OYGXzc+h2tQ8MBuWJotilc9mvKnJNWvn/iGpuvXaU5+d36XwuOded9B+xYM/N8UH2BkbnNYuO/Cwj0F1q6w5NzwBpsWez/zS1uEVJZO685s5DRid8xKkuorViw/oJUj4M5jn0/trAroegxguLb4/XHLU+r6xdg6QNm/NN2oJud4ZUCBxuBD2S4HFg3y/T5xzdvnNAPgplqa1sY08ghwvcwZPT4LYVI2dHy/T5cMOLKefpc14KSud1fxBxOW+z6YabYFsKoJXnEW9+slVqQFTj8dmtt3g0he0BNSOVN5OYd/JXzWXqShoUfWTJoZ+DZZVhs3SjkekWwb7oq0zw8tue/bsGtPYNBByp3MFlpJAJfu0wVkfV7ors2w1eWPUuotDrs1lHQRkV1gKJnzfQG4zJ9ssKyzXaODsOaRevPCbg1B1yeLPDQc9gDgsooihqSrIdSVaAmpt6Z4+eiPwm6t2HRM/XQYWvNF8Kosl2g+sWW2gGMT6UjCx5bw60HXGx12aSjp9DTXoPm8YQDbSznU+zcHzLwUkqXdguJ3fxP+1dKJLukAKHIKenU0cmfQ9EijHAFHtFSReiTxPsWQWxh2ZyjpVJ2O1lmSFbsJQPu6DOqk/2CgEB+aKqJPHPQ//MGE3WF3Vg76twADALN3v6j9rSNdAAAAAElFTkSuQmCC\"/>\r\n                                    </a>\r\n                                </td>\r\n                            </tr>\r\n\r\n                            <!-- this is content start -->\r\n\r\n\n    <tr>\n        <td align=\"left\" valign=\"top\" bgcolor=\"#FFFFFF\" style=\"background-color:#FFFFFF;\">\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n                <tr>\n\n                    <td align=\"left\" valign=\"top\">\n                        <table width=\"480\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n\n                            <tr>\n                                <td align=\"left\" valign=\"top\">\n                                    <div style=\"color:#7f7f7f; font-family: Arial, sans-serif; font-size:14px; font-weight: 600; line-height:21px;\">\n                                        Your order has been received.\n                                    </div>\n                                    <br/>\n                                    <div style=\"font-family: Arial, sans-serif; color:#7f7f7f; font-size:12px; line-height:21px;\">\n                                        Thank you for your purchase!\n                                    </div>\n                                    <br/>\n                                </td>\n                            </tr>\n\n                            <tr>\n                                <td align=\"left\" valign=\"top\">\n                                    <div style=\"color:#7f7f7f; font-family: Arial, sans-serif; font-size:12px; line-height:21px;\">\n                                        Your order number is: 1111111\n                                    </div>\n                                    <br/>\n\n                                    <p>\n                                        Your invoice is attached in the mail.\n                                    </p>\n\n                                </td>\n                            </tr>\n\n                            <tr>\n                                <td align=\"left\" valign=\"top\">\n                                    <div style=\"font-family: Arial, sans-serif; color:#7f7f7f; font-size:12px; line-height:21px;\">\n                                        Kind Regards,\n                                    </div>\n                                    <div style=\"font-family: Arial, sans-serif; color:#7f7f7f; font-size:12px; line-height:21px;\">\n                                        B2C Team\n                                    </div>\n                                    <br/><br/>\n\n                                </td>\n                            </tr>\n\n                        </table>\n\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n\n\r\n                            <!-- this is content end -->\r\n\r\n                            <tr>\r\n                                <td align=\"left\" valign=\"top\" height=\"210\" bgcolor=\"#7f7f7f\"\r\n                                    style=\"background-color:#141e2b;\">\r\n                                    <table width=\"480\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"\r\n                                           style=\"margin-top: 33px\">\r\n                                        <tr>\r\n                                            <td align=\"left\" valign=\"top\"\r\n                                                style=\"width: 277px; color:#13a2dc; font-family:Arial, Helvetica, sans-serif; font-size:16px; font-weight: 300;\">\r\n                                                ABOUT US<br/>\r\n                                                <table style=\"width: 219px; margin-top: 8px; font-family: Arial, sans-serif; font-size:10px; line-height:18px; text-align: justify; font-weight: 400;\">\r\n                                                    <tr>\r\n                                                        <td style=\"color: #7f7f7f;\">Collinson XXXXXX.\r\n\r\n                                                        </td>\r\n                                                    </tr>\r\n\r\n                                                </table>\r\n                                            </td>\r\n\r\n                                            <td align=\"left\" valign=\"top\"\r\n                                                style=\"color:#13a2dc; font-family:Arial, Helvetica, sans-serif; font-size:16px; font-weight: 300;\">\r\n                                                CONTACT US<br/>\r\n                                                <table style=\" margin-top: 8px; font-family: Arial, sans-serif; font-size:10px; line-height:18px; font-weight: 400;\">\r\n                                                    <tr>\r\n                                                        <td width=\"55px\" align=\"left\" valign=\"top\"\r\n                                                            style=\"color: #7f7f7f;\">Address :\r\n                                                        </td>\r\n                                                        <td align=\"left\" valign=\"top\"\r\n                                                            style=\"width: 156px; color: #7f7f7f;\"> Level X, The XXX\r\n                                                            Building, <br/>\r\n                                                            41 XXXX Street, <br/>\r\n                                                            Auckland CBD <br/>\r\n                                                            New Zealand\r\n                                                        </td>\r\n                                                    </tr>\r\n                                                    <tr style=\"line-height: 10px\">\r\n                                                        <td width=\"55px\" align=\"left\" valign=\"top\"\r\n                                                            style=\"letter-spacing: 1px; color: #7f7f7f\">E-mail :\r\n                                                        </td>\r\n                                                        <td align=\"left\" valign=\"top\"\r\n                                                            style=\"width: 156px; color: #7f7f7f;\"><a\r\n                                                                href=\"mailto:account@b2c.kiwi\"\r\n                                                                style=\"color:#7f7f7f; text-decoration:none;\">\r\n                                                            info@ccfl.co.nz\r\n                                                        </a>\r\n                                                        </td>\r\n                                                    </tr>\r\n                                                    <tr>\r\n                                                        <td width=\"55px\" align=\"left\" valign=\"top\"\r\n                                                            style=\"letter-spacing: 1px; color: #7f7f7f;\">Phone :\r\n                                                        </td>\r\n                                                        <td align=\"left\" valign=\"top\"\r\n                                                            style=\"width: 156px; color: #7f7f7f\"> +64 9 999 9999\r\n                                                        </td>\r\n                                                    </tr>\r\n                                                    <tr>\r\n                                                        <td width=\"75px\" align=\"left\" valign=\"top\"\r\n                                                            style=\"letter-spacing: 1px; color: #7f7f7f;\">Free Call :\r\n                                                        </td>\r\n                                                        <td align=\"left\" valign=\"top\"\r\n                                                            style=\"width: 156px; color: #7f7f7f\"> 0800 888 888\r\n                                                        </td>\r\n                                                    </tr>\r\n                                                </table>\r\n\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n\r\n                                </td>\r\n                            </tr>\r\n\r\n                            <tr>\r\n                                <td align=\"left\" valign=\"top\" bgcolor=\"#7f7f7f\" style=\"background-color:#e1fae8;\">\r\n                                    <table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n                                        <tr>\r\n                                            <td colspan=\"2\" align=\"center\"\r\n                                                style=\"background-color: #142b3d; color: #7f7f7f;font-family: Arial, sans-serif; font-size:13px; line-height:33px;\">\r\n                                                © 2018 Copyright xx All Rights Reserved\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n\r\n                        </table>\r\n\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n        </td>\r\n    </tr>\r\n\r\n</table>\r\n</body>\r\n</html>\r\n\r\n','Authentication failed; nested exception is javax.mail.AuthenticationFailedException: 534-5.7.9 Please log in with your web browser and then try again. Learn more at\n534 5.7.9  https://support.google.com/mail/?p=WebLoginRequired g26sm7462446pfh.61 - gsmtp\n','BD20190109051141','zhouleib1412@gmail.com','FAILURE','Your order has been received.',5,NULL,NULL,NULL),(2,NULL,'2019-01-16 07:02:24.317',3,'2019_01_09_09_43_52_BD20190109094352-Invoice.pdf',_binary '\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\r\n        \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>\r\n    <title> Email</title>\r\n</head>\r\n<body style=\"background-color:#E6E6E6; margin: 0; padding: 0;\">\r\n\r\n<table style=\"width:100%;\" align=\"center\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n    <tr>\r\n        <td>\r\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tr>\r\n                    <td align=\"center\" valign=\"top\" style=\"background-color:#E6E6E6;\" bgcolor=\"#E6E6E6;\">\r\n\r\n                        <table width=\"600\" border=\"0\" align=\"center\" cellspacing=\"0\" cellpadding=\"0\">\r\n\r\n                            <tr>\r\n                                <td align=\"left\" valign=\"top\" bgcolor=\"#FFFFFF\"\r\n                                    style=\"background-color:#FFFFFF; position: relative\">\r\n\r\n\r\n                                    <div style=\"width: 100%;height: 3px;color: #7f7f7f;background-color: #142b3d; margin-bottom: 8px\"></div>\r\n\r\n\r\n                                    <a href=\"#\" target=\"_blank\">\r\n                                        <!-- <img src=\"../images/header.png\" width=\"600\" height=\"467\" border=\"0\" alt=\"Latipay\"/>-->\r\n                                        <img width=\"300\" border=\"0\" alt=\"CCFL\" style=\" margin: 20px 0 60px 50px;\"\r\n                                             src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJ0AAABGCAYAAADW35Y6AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4JpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDpGNzdGMTE3NDA3MjA2ODExODA4M0VCODNDNjJCRDdDMSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDowM0U2NUU4MDJFRTMxMUU3OTFEMEU4NUY0ODhENkY0NCIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDowM0U2NUU3RjJFRTMxMUU3OTFEMEU4NUY0ODhENkY0NCIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxNyAoTWFjaW50b3NoKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOmEwYTFkOGUwLTA4OTYtNDc1Yy1iYTFjLTA5N2I2YjU3YmIxMCIgc3RSZWY6ZG9jdW1lbnRJRD0iYWRvYmU6ZG9jaWQ6cGhvdG9zaG9wOmE5NWVkMjYxLTZhMGEtMTE3YS1iZWQ0LWRlY2Y5ZTRjODlhYSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pq+XqfwAABUESURBVHja7F0JmBTVtb5VNTJsCopLEo0PBMEFBHkoEZXNBBUEDfoQ8GEz8JygCKLIEhVBg+wawaciIM0QX1AEIiqo6GMxipIImLBqNOIWSFB2EIauqvyn7qnu29VV3T09wzAz1Pm+07Xcparu/evcc849t1oTFY1mfFITv0Xg7uAvwENEYZPXRUiVgmzbzphHr4D3PRV8C99bQ/BiALFH2J1Vh7QKJuXOx+9Wn5dhP7gpJN5XYZeFkq6s6ZaAezqZJWBIVYAqGuh+nibtJkjCFmGXhaAra2qeIf2usMtCna6srdaDGXLtA/8Iut0PYdeFOl1Z0GlZ5DkF3D7s2spNeZXwXjqB38ggNZvht41jCRc2WRV2c6jTlZauygC4h/D7V/B08EoczwXrYVeHoPOjw1nmawoQ5QUA7nr8/sZzto+gWY2QQtD50L/AsSzyVQefF5A2JuD8AwBkftjdIeiSqbCJhd/tWeb+qY+Uq4/fywPy1wNfE3Z3VTAkxq25WGhaFHwReKema6uwLbLvb7kixxq3+AIqlX7kc+7yDGVag5eGXV7ZJZ1l/xZ8GbgWuL5t2RFsl2tT1q3TH1//ixxqXJ9lvjo+587OUOYnYXdXCdBZjcHCYVtubWLTuhTbZQDfSwDfGSWo8U9Z5quWg9TOC7u7aki6v4GFH9ty28O27Y0AXqcsa1wONrPIV+xz7rssDJWQqgDo3pNSzhZxiZcq9c7E9k1IvZFZGBN7UNcfs7jyrhyG5r+E3V01htc5zmSbAzZbpJF6GrbjAbzZkHpGBiDPFZnn77YHgCoo3u4o+M2wu6sC6Ma2/RIgWZQAWEapV4DtQoCvWqDiZVnzddPaG68rW6lV2IQyPx6QfxbSd3lcLKeDm4NrhDCoTKCT0u4BsJkMuLRS70ZsFwB4vop9bODFB3Xbnmy4ZVKBt8EZhv3pafDrKfmFGOEB3KP43QH+2JGaMz65JYRCZQLduPafAhxPSMCpnE7q2V0h9WZrk9dqAUB+UrPsv0PqCU2tS9LCNDohGSG0oOdO8P8JmokQ4kqc368Arit+R4ENxf3yAs6fHcKhfKhs3Ai29bCw9G5Cs5sIDTgi1jUJFudYJCL3nH3nfB/A6Fsc/TpF2g1qdtCYtuE2TdNWGcKqZqMOU3Nekb0o91QGY4T0t+nMftTF5xxNkXVwwBdSJZB0RBM6HgbAekHCHY4PidlJvZFiwke+Q5s5uNmHkIhdkGc7STtIvQPY9k7RzUpO+wPOHwjhUJlARzSx43oApFCCyQswj66XBEpYwOP/fL4v8O5p9g6A1wDGR3PkPce+88KymMaiNbVeP9828FshHMqHyj5cfdg7E4Suj0gaZjWVCeo6D7PxPKuxbSt+fblZLk8945P2pI2C64PXgIdCgv49hEMZaFpZhKuXPejue0sDqGaC+0vApQAsGYSJ4yHiwdbhMsMQdDnSvW8YQjfmAni9pVTLSurtAjcUD/1sT9h1IehyoyFLCXjPAFSF2ErtMbPUGyNGXfFIpWnhgqKTPNbwdhGNrFHSKe0kPtqLtBUBaQJpr5wooDt2kRdPdjbFPUsGCFvfjjsZjS0Dz5VwYEsk3Cka3az+P+LR1WPFw23MHEFwKX7puye0PYs79XshHcRLHGMhGrHK8Clrgf+gHC8WtCg8QeQrdMOwaBalRUDasRUAFYyObbjP1C6EpDGQehuFbdA8bS0p9chq1SXQkv1652CfgjE/KCHYzsHvs+AbAnK0BQ8Eb0beOwC81eFAWBVcJuml3gJhxlqB14CFMK00LhT7P0sIuJb4XZcGcCpdJGiFWEHRf4VdX9VBJ6XeVmGZVwJ0I4Rp7gN7ABf369UoAeAoGpjWwHoDRelLALTe9T3wbk8azVh8VgHa/j/Apyp8wlD5RtNOvYF0tUnQ9WZDxxsBwBVgWy9h4YpivAavlaBGiio50wOo+8HPYQg9wsCkiJbe4MlCfkWgF9LWB4CYpCzNkDQF1wbvBNNQ/CLK7Cjj1uglEms9aPnlBOU+BiSlRSMTcI7uaTC4sZCzJysFTfVFIwd8noPmlW8GX8vtQ5/r2OjotUHPLsvR+pSeQq43OcMxfuQa4vkotyGgDC3vrMtHOzRNm45ztB6F5r/rcx3keH+e+oQMjeOrvA5Zmg8drwNA1xzbPOh1r4oJHTZkKeWaCLmQR32G7niwPwTkP1fQQu1o5Pc+aQTGmUIGC/gRgYLW045HeVspV9cjSRcj/SYlfU+SIRGNtFDSKMKluWLZ1g1ME+Ju8Owka1fSFn6mXUpZut7rInhR+vsOIFQQSZCS12C4zzVconYbgHL7PW23jaW2aywVsTDwYov09I727NsPH991A092Jmn0psgtwPIWz4MtDgScdEl8xQ3nBziSZk3SXIvW2j7Gb25hObcSSdxowKh0Ib8MA5VzvxXpv4LQJkmtKijSHEku2zMd9XauV1B0Ndoy6ENH1IZPBKRdwaPQ2Mr8uQVvw0ZzrGeWB3D7+W2l4fhDT9470Oi9y/k5DQbcFh5Sj6SAQQLHVSV6KWnzhIyeiYBfYSfVCwCNGgQ72AM4i/NO5q3qvro0Dajcl5PoY5aoXtfXbeWv05UteZcUbsrBr0eW7y+VMzT/2h6d8rWSZxB+pyl5RvtKzGNLj+GeHuL7oWGXHNDuFwvqst72T9ZZqyvlPncMKqkSzEVZst73KM9GdYxS8hc7emA0slLJQ5JxmZA+SaL+ODc2qY2S6S6kPctl2/GL4lLjUoOuRudJ1TVNPx262BmartfBPs271tFhFOD4EPaLsXPY1vWdlq7vOPBCv4Nl2BFe3SOWQx03e7XMlMaMRp5C49Ea3q7xhisouhjnN5Uj6CYr9/MXXP9d7Knril2Ln3S7H5RjAupNyD/HeVGikc2eesl/WU85fioJcPJ6q1F+jHIPBrfFMz73edAx4hJlV6EsGSKXqN6SjKDLv+pBHZblBQBNKwCpGYDUCEBqBHw1sC2zlq2RNaI7rg9bxz6t04E1Sv5fOqchXSe3iG2Jk3vPOmAbxqeWpm81dX0dwPiepRtrY7N65gKY7azTqPrNthLW0chz/HZAviUK6Iga5iRZc6P96Ly9nnP/CNBbi9HJBIahylmyeqeAJyKNoq6HsX5LdH6Wz/96EvDl8/vRlz4zPl8roAt2meS3Hn6e42zVtC7CMtsAZLUdpcG2GVwUIyeB5swq0JbcHs5Mljw2dQlG3ZneIjDqNPVaG6VbYqcljnvbtiFitv39Sf3nLQAAp8Vm3rq5BJ2xlqwh5fhWkem7dcE6iOpyEQFvsErVylHKlXTaboSQPXGPZzQgCdXDabOCossAjm2KRFSH19I8v1/7xQKdwwBaNXAf8PusC0wFeDoJ06pNK7nImavRmgXamvLYJrZ46+47ayAS5y0cm6Y8R2V07BvOljgm8sxYPfCvjNjRv+b1nzfNKJxvZNm4Xn/ef6Mxf5ZGf6sB9v4fxVcZjBOXvN9J2SYqKkUjJngYuzHIh/Yeg9Cl08EPBzz/1Vk+/5eluUWdAXedkP/fMJdN6iRywMaAs5WIYI3BmABZjNkDSFos5m4JfChnYKuCz7AswzBjgwC+EVk2Li3K/qPnTV4CYHX2AVxztqZewr666HuZJ+cUpNfylG3qKM8Joi8FrK+woCMHN91zNEIRL1PBV7Maofo/m/H2/z0W5n0oe76nPvL7jfFc5Y3S3GIeANeXHY/pHcU0rNpSZ3OHUzs+rLrDrjvEJoZid7ilfBbXozvnZNSJwfWaYIPqlPOjWbuX2a3hDiOnMfBoLvYjfibSJ1orZcYjPYbOID2Hwt9pSHev2coZtguKyFqlRUPkzL0XXDNJqSdpUjEBly/k4qKG2CcXEhkQ69iBvU/JuZtf3F3I97zieySA/QnnyC1CBsDZPEw3TtLvSmlE5bEzMfuZCV7voLkgc0ShJqOU2JjAYCrIgnUQ6AJPSGOCFDvLBR7pejjWOR/AdxRpT5dgKFmHBrqdJbSqv7Rk9iOy7jbGh6KCIvJhvavoN+SzC7qHFaJi/4kKLbm8gPcL0ziyVWf8SCE/Ht5YccE8GlCOpgLvLO1N6iLzZ/T9pV5cv4s5Op5mymHTmch3hldnRb+j08WHW9OK63w03DpDrjMcO0P1FxhqOx78XUHJwpqikRfZoNiSRe6tQk4bvamUJ4nYiRs0HS0Cd0P+oxUYdC+D/5whz+okd0c0spvbL1O5TY7OF418U9qbzHMUcLmA+bRcwIdxkYdTjSUdC01YrXZc0kmpJ90rtpPXHXYtXd+M3WeAxNn7FgzM7f8hopH3ILFoGO3JVizpcGexnredh5j5jk4XjcQCypMuM4B9dyQtTmaHK+mNs5DnnQBrbbFyvMbH1eLqiF/4SM1tAdZhujTBz1NXOT7Ez7GRJ9t/zu3QhtvB4pdyvpDBEEc9z/8tG2G3Mh5ascOZvoRFswv0Yhf5tp3Ui88MeEa/NpHDKvQ6iiigyd6+bN2UnOLh57ocdpV9GkI1PtZ0hzfgZynOvXrotaFhQOUJRClRJgCfwUr3dYx2UqR/XLIBG0CTMxIExGKA7nOc+wz7H2O7Buc/OrLswX+GzR+CLpAAxFPZijmHxSiJ9Xxl2BBsGZEI/95hTfsOkm4HkPfNkffHWWFTh1Qi0B0vqt39qdqwgK+BZGwqdOMHAPnlvS8Wfl2qSkeuqIt6uoJRH/Stx9qV2X+MtW/fgV5IsoQbsC60cOXKFcf8Q4y4bhNHVxViOq43HcdXsoVNbp5uOPdZGVyDPBwdUFcL7JPjmaJFbsXxJ7mArsKFNtW8YcqPa3Z74mlYu9th+b4Cy3YsLNzHYQZ/WLfnc7n/F8T9y+qhjrXgueCXhWVvFg+ualpGHU8ee+qASexSoMiN9TjfpRyarAYbTm6k8Sg+Jl25rPyJDUQiqHQXGznFpbFeKwTld3qsGqTaMNuyHoKBWz1h3Upvs27bP4FVQr6kDTldIBYbhkrOE4Yh19/qoj4UgqXigVWXiHHt9pQCcKQH/57VjR7sCaCAxX7gt5FOgQL9+TxtuyrgoFg3msx/DlLjZeQlvxrNqNwhEsGbUaQVIW08WaLY74f9a9gnRy/hO8q9dOVrH+G+zcc5iolbjnLTsN+TLfx7GUiD2Ud5I/svhyLfJuSryb46cqWQtPb7mv1B5OvIdbzF9R7kOrYgjaJXKPCVlgCQW4pcMzQ1d1uFAF1+x0eaAGwvAmwt4kEDQo+7XZTIlZ1+5Wv1ieq2btxoalojyzBmH32+9/cpmSyzk/zGHc+ikDdF134Kq2c0d0KuRE5oirqYQ8Dhc+8zExAacqeScVaN3TgEhHYMGHLVzEc++jupnZx3HhtwlCcPaTR80szAIq6PXDExLn+/2pQiEfRZn4dYqs99qS7g4zHgc3mfAExzqRdzHrpPiiih/9al6b6mbFS61IzLDVHq6Mh1tGXpSuCfI+QKPbrHizjNiZY57sNrtbajuls07Jlmi5Q5XPnJWHcO99N9i+5OceDW6Tkj3zDN1zQztsiwzEl5pvmq74VM8zThBB3EpAM75i6FtPtB1yvNXzi5PqpM+iZ9Of5UBiiB6XGAlGLiLmEDjDrxbR62qBO7sR/wCu5EGkbp2bozuPqhPK3HiM864HiBkCvddmC/vZBBqZloMAOJQOPOSpDORo70y4Sc7N+YoY4BPPxSyNWFeDFOYom9kp+xPfsWxXEHXX6bkSM001qomWatpNkMF2zJkSuzfCuxrOd0y+xMwQMygCDWpmZkbqsUN6JpHnLrl8BjtmKnoI5WpXiMrby9Ho2tKUOdd1nkDHTAXsUPuo2Bso87qy72D7BjmHTBq1niUB9NFImPdddUy4vsIj4M1S/rod24rs3S0MUDDe3f4LzJaZleqH8gn8WSOo+lHd1vHQZgvjpEHzfQ5bcePgGSZoLgqBOXLd/IFfM7AG+mj4XbDekRnkZzIlYMOTV3WYr70DLX63HQ0TWTpF6DXJ8Djf05D5cE3MVoZNK56GuhX2Gr/n+GO8SRh57ANRzpN4MfZknjfh/vNXZRUec9zfpQA5YaBFD3D14moixJk3Fpbu8AD8PXsr7YM8vHoimxDihzF5frVMI2sXh4vZRfjm08FB8/0DmAcz8+nWkOV87djv5h6fAkZR8WroHzExNzuzGnnC5Dps5KAZ0ZW0hpunMtBXxS4pXWddRXyHlPGgYpauNuBsdmnw7Zw51P0oSGw0dY73mAs7gf6l6DvCQBFytgFCztojxkLfH4S73XivH9kNR9VgQHqXrpbrZSCfRTRG7xc4NZL6RInofZADx8XEAHwA0T3q+dO3O4lgiQeqsg8VK+Hwzp1hXnL5CBoiYHFsSDB1LNdNN8xYgd3egAj8GnSL2tpXkmGjbBPVhC0XxnAxy3A9Pk+GyWVB8q+ZdwXtLXGpPew0MvpX3JVp77mYwnuPxMTrfJghXy70cvcq8HfpLzk/S7SrnWADYgzuXzDfhlWMD7y7zlUGYt38OlvL2C8wq2amn/G6WOD32uTaCjlXP7+WVsyS9J+TqHAbiu/OYGXzc+h2tQ8MBuWJotilc9mvKnJNWvn/iGpuvXaU5+d36XwuOded9B+xYM/N8UH2BkbnNYuO/Cwj0F1q6w5NzwBpsWez/zS1uEVJZO685s5DRid8xKkuorViw/oJUj4M5jn0/trAroegxguLb4/XHLU+r6xdg6QNm/NN2oJud4ZUCBxuBD2S4HFg3y/T5xzdvnNAPgplqa1sY08ghwvcwZPT4LYVI2dHy/T5cMOLKefpc14KSud1fxBxOW+z6YabYFsKoJXnEW9+slVqQFTj8dmtt3g0he0BNSOVN5OYd/JXzWXqShoUfWTJoZ+DZZVhs3SjkekWwb7oq0zw8tue/bsGtPYNBByp3MFlpJAJfu0wVkfV7ors2w1eWPUuotDrs1lHQRkV1gKJnzfQG4zJ9ssKyzXaODsOaRevPCbg1B1yeLPDQc9gDgsooihqSrIdSVaAmpt6Z4+eiPwm6t2HRM/XQYWvNF8Kosl2g+sWW2gGMT6UjCx5bw60HXGx12aSjp9DTXoPm8YQDbSznU+zcHzLwUkqXdguJ3fxP+1dKJLukAKHIKenU0cmfQ9EijHAFHtFSReiTxPsWQWxh2ZyjpVJ2O1lmSFbsJQPu6DOqk/2CgEB+aKqJPHPQ//MGE3WF3Vg76twADALN3v6j9rSNdAAAAAElFTkSuQmCC\"/>\r\n                                    </a>\r\n                                </td>\r\n                            </tr>\r\n\r\n                            <!-- this is content start -->\r\n\r\n\n    <tr>\n        <td align=\"left\" valign=\"top\" bgcolor=\"#FFFFFF\" style=\"background-color:#FFFFFF;\">\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n                <tr>\n\n                    <td align=\"left\" valign=\"top\">\n                        <table width=\"480\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n\n                            <tr>\n                                <td align=\"left\" valign=\"top\">\n                                    <div style=\"color:#7f7f7f; font-family: Arial, sans-serif; font-size:14px; font-weight: 600; line-height:21px;\">\n                                        Your order has been received.\n                                    </div>\n                                    <br/>\n                                    <div style=\"font-family: Arial, sans-serif; color:#7f7f7f; font-size:12px; line-height:21px;\">\n                                        Thank you for your purchase!\n                                    </div>\n                                    <br/>\n                                </td>\n                            </tr>\n\n                            <tr>\n                                <td align=\"left\" valign=\"top\">\n                                    <div style=\"color:#7f7f7f; font-family: Arial, sans-serif; font-size:12px; line-height:21px;\">\n                                        Your order number is: 1111111\n                                    </div>\n                                    <br/>\n\n                                    <p>\n                                        Your invoice is attached in the mail.\n                                    </p>\n\n                                </td>\n                            </tr>\n\n                            <tr>\n                                <td align=\"left\" valign=\"top\">\n                                    <div style=\"font-family: Arial, sans-serif; color:#7f7f7f; font-size:12px; line-height:21px;\">\n                                        Kind Regards,\n                                    </div>\n                                    <div style=\"font-family: Arial, sans-serif; color:#7f7f7f; font-size:12px; line-height:21px;\">\n                                        B2C Team\n                                    </div>\n                                    <br/><br/>\n\n                                </td>\n                            </tr>\n\n                        </table>\n\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n\n\r\n                            <!-- this is content end -->\r\n\r\n                            <tr>\r\n                                <td align=\"left\" valign=\"top\" height=\"210\" bgcolor=\"#7f7f7f\"\r\n                                    style=\"background-color:#141e2b;\">\r\n                                    <table width=\"480\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"\r\n                                           style=\"margin-top: 33px\">\r\n                                        <tr>\r\n                                            <td align=\"left\" valign=\"top\"\r\n                                                style=\"width: 277px; color:#13a2dc; font-family:Arial, Helvetica, sans-serif; font-size:16px; font-weight: 300;\">\r\n                                                ABOUT US<br/>\r\n                                                <table style=\"width: 219px; margin-top: 8px; font-family: Arial, sans-serif; font-size:10px; line-height:18px; text-align: justify; font-weight: 400;\">\r\n                                                    <tr>\r\n                                                        <td style=\"color: #7f7f7f;\">Collinson XXXXXX.\r\n\r\n                                                        </td>\r\n                                                    </tr>\r\n\r\n                                                </table>\r\n                                            </td>\r\n\r\n                                            <td align=\"left\" valign=\"top\"\r\n                                                style=\"color:#13a2dc; font-family:Arial, Helvetica, sans-serif; font-size:16px; font-weight: 300;\">\r\n                                                CONTACT US<br/>\r\n                                                <table style=\" margin-top: 8px; font-family: Arial, sans-serif; font-size:10px; line-height:18px; font-weight: 400;\">\r\n                                                    <tr>\r\n                                                        <td width=\"55px\" align=\"left\" valign=\"top\"\r\n                                                            style=\"color: #7f7f7f;\">Address :\r\n                                                        </td>\r\n                                                        <td align=\"left\" valign=\"top\"\r\n                                                            style=\"width: 156px; color: #7f7f7f;\"> Level X, The XXX\r\n                                                            Building, <br/>\r\n                                                            41 XXXX Street, <br/>\r\n                                                            Auckland CBD <br/>\r\n                                                            New Zealand\r\n                                                        </td>\r\n                                                    </tr>\r\n                                                    <tr style=\"line-height: 10px\">\r\n                                                        <td width=\"55px\" align=\"left\" valign=\"top\"\r\n                                                            style=\"letter-spacing: 1px; color: #7f7f7f\">E-mail :\r\n                                                        </td>\r\n                                                        <td align=\"left\" valign=\"top\"\r\n                                                            style=\"width: 156px; color: #7f7f7f;\"><a\r\n                                                                href=\"mailto:account@b2c.kiwi\"\r\n                                                                style=\"color:#7f7f7f; text-decoration:none;\">\r\n                                                            info@ccfl.co.nz\r\n                                                        </a>\r\n                                                        </td>\r\n                                                    </tr>\r\n                                                    <tr>\r\n                                                        <td width=\"55px\" align=\"left\" valign=\"top\"\r\n                                                            style=\"letter-spacing: 1px; color: #7f7f7f;\">Phone :\r\n                                                        </td>\r\n                                                        <td align=\"left\" valign=\"top\"\r\n                                                            style=\"width: 156px; color: #7f7f7f\"> +64 9 999 9999\r\n                                                        </td>\r\n                                                    </tr>\r\n                                                    <tr>\r\n                                                        <td width=\"75px\" align=\"left\" valign=\"top\"\r\n                                                            style=\"letter-spacing: 1px; color: #7f7f7f;\">Free Call :\r\n                                                        </td>\r\n                                                        <td align=\"left\" valign=\"top\"\r\n                                                            style=\"width: 156px; color: #7f7f7f\"> 0800 888 888\r\n                                                        </td>\r\n                                                    </tr>\r\n                                                </table>\r\n\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n\r\n                                </td>\r\n                            </tr>\r\n\r\n                            <tr>\r\n                                <td align=\"left\" valign=\"top\" bgcolor=\"#7f7f7f\" style=\"background-color:#e1fae8;\">\r\n                                    <table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n                                        <tr>\r\n                                            <td colspan=\"2\" align=\"center\"\r\n                                                style=\"background-color: #142b3d; color: #7f7f7f;font-family: Arial, sans-serif; font-size:13px; line-height:33px;\">\r\n                                                © 2018 Copyright xx All Rights Reserved\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n\r\n                        </table>\r\n\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n        </td>\r\n    </tr>\r\n\r\n</table>\r\n</body>\r\n</html>\r\n\r\n','Authentication failed; nested exception is javax.mail.AuthenticationFailedException: 535-5.7.8 Username and Password not accepted. Learn more at\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials r80sm7815400pfa.111 - gsmtp\n','BD20190109094352','asiadesk@freightdirect.co.nz','FAILURE','Your order has been received.',3,NULL,NULL,NULL),(3,NULL,'2019-01-21 02:21:42.221',3,'2019_01_21_15_20_58_BD20190121152058-Invoice.pdf',_binary '\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\r\n        \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>\r\n    <title> Email</title>\r\n</head>\r\n<body style=\"background-color:#E6E6E6; margin: 0; padding: 0;\">\r\n\r\n<table style=\"width:100%;\" align=\"center\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n    <tr>\r\n        <td>\r\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tr>\r\n                    <td align=\"center\" valign=\"top\" style=\"background-color:#E6E6E6;\" bgcolor=\"#E6E6E6;\">\r\n\r\n                        <table width=\"600\" border=\"0\" align=\"center\" cellspacing=\"0\" cellpadding=\"0\">\r\n\r\n                            <tr>\r\n                                <td align=\"left\" valign=\"top\" bgcolor=\"#FFFFFF\"\r\n                                    style=\"background-color:#FFFFFF; position: relative\">\r\n\r\n\r\n                                    <div style=\"width: 100%;height: 3px;color: #7f7f7f;background-color: #142b3d; margin-bottom: 8px\"></div>\r\n\r\n\r\n                                    <a href=\"#\" target=\"_blank\">\r\n                                        <!-- <img src=\"../images/header.png\" width=\"600\" height=\"467\" border=\"0\" alt=\"Latipay\"/>-->\r\n                                        <img width=\"300\" border=\"0\" alt=\"CCFL\" style=\" margin: 20px 0 60px 50px;\"\r\n                                             src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJ0AAABGCAYAAADW35Y6AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4JpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDpGNzdGMTE3NDA3MjA2ODExODA4M0VCODNDNjJCRDdDMSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDowM0U2NUU4MDJFRTMxMUU3OTFEMEU4NUY0ODhENkY0NCIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDowM0U2NUU3RjJFRTMxMUU3OTFEMEU4NUY0ODhENkY0NCIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxNyAoTWFjaW50b3NoKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOmEwYTFkOGUwLTA4OTYtNDc1Yy1iYTFjLTA5N2I2YjU3YmIxMCIgc3RSZWY6ZG9jdW1lbnRJRD0iYWRvYmU6ZG9jaWQ6cGhvdG9zaG9wOmE5NWVkMjYxLTZhMGEtMTE3YS1iZWQ0LWRlY2Y5ZTRjODlhYSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pq+XqfwAABUESURBVHja7F0JmBTVtb5VNTJsCopLEo0PBMEFBHkoEZXNBBUEDfoQ8GEz8JygCKLIEhVBg+wawaciIM0QX1AEIiqo6GMxipIImLBqNOIWSFB2EIauqvyn7qnu29VV3T09wzAz1Pm+07Xcparu/evcc849t1oTFY1mfFITv0Xg7uAvwENEYZPXRUiVgmzbzphHr4D3PRV8C99bQ/BiALFH2J1Vh7QKJuXOx+9Wn5dhP7gpJN5XYZeFkq6s6ZaAezqZJWBIVYAqGuh+nibtJkjCFmGXhaAra2qeIf2usMtCna6srdaDGXLtA/8Iut0PYdeFOl1Z0GlZ5DkF3D7s2spNeZXwXjqB38ggNZvht41jCRc2WRV2c6jTlZauygC4h/D7V/B08EoczwXrYVeHoPOjw1nmawoQ5QUA7nr8/sZzto+gWY2QQtD50L/AsSzyVQefF5A2JuD8AwBkftjdIeiSqbCJhd/tWeb+qY+Uq4/fywPy1wNfE3Z3VTAkxq25WGhaFHwReKema6uwLbLvb7kixxq3+AIqlX7kc+7yDGVag5eGXV7ZJZ1l/xZ8GbgWuL5t2RFsl2tT1q3TH1//ixxqXJ9lvjo+587OUOYnYXdXCdBZjcHCYVtubWLTuhTbZQDfSwDfGSWo8U9Z5quWg9TOC7u7aki6v4GFH9ty28O27Y0AXqcsa1wONrPIV+xz7rssDJWQqgDo3pNSzhZxiZcq9c7E9k1IvZFZGBN7UNcfs7jyrhyG5r+E3V01htc5zmSbAzZbpJF6GrbjAbzZkHpGBiDPFZnn77YHgCoo3u4o+M2wu6sC6Ma2/RIgWZQAWEapV4DtQoCvWqDiZVnzddPaG68rW6lV2IQyPx6QfxbSd3lcLKeDm4NrhDCoTKCT0u4BsJkMuLRS70ZsFwB4vop9bODFB3Xbnmy4ZVKBt8EZhv3pafDrKfmFGOEB3KP43QH+2JGaMz65JYRCZQLduPafAhxPSMCpnE7q2V0h9WZrk9dqAUB+UrPsv0PqCU2tS9LCNDohGSG0oOdO8P8JmokQ4kqc368Arit+R4ENxf3yAs6fHcKhfKhs3Ai29bCw9G5Cs5sIDTgi1jUJFudYJCL3nH3nfB/A6Fsc/TpF2g1qdtCYtuE2TdNWGcKqZqMOU3Nekb0o91QGY4T0t+nMftTF5xxNkXVwwBdSJZB0RBM6HgbAekHCHY4PidlJvZFiwke+Q5s5uNmHkIhdkGc7STtIvQPY9k7RzUpO+wPOHwjhUJlARzSx43oApFCCyQswj66XBEpYwOP/fL4v8O5p9g6A1wDGR3PkPce+88KymMaiNbVeP9828FshHMqHyj5cfdg7E4Suj0gaZjWVCeo6D7PxPKuxbSt+fblZLk8945P2pI2C64PXgIdCgv49hEMZaFpZhKuXPejue0sDqGaC+0vApQAsGYSJ4yHiwdbhMsMQdDnSvW8YQjfmAni9pVTLSurtAjcUD/1sT9h1IehyoyFLCXjPAFSF2ErtMbPUGyNGXfFIpWnhgqKTPNbwdhGNrFHSKe0kPtqLtBUBaQJpr5wooDt2kRdPdjbFPUsGCFvfjjsZjS0Dz5VwYEsk3Cka3az+P+LR1WPFw23MHEFwKX7puye0PYs79XshHcRLHGMhGrHK8Clrgf+gHC8WtCg8QeQrdMOwaBalRUDasRUAFYyObbjP1C6EpDGQehuFbdA8bS0p9chq1SXQkv1652CfgjE/KCHYzsHvs+AbAnK0BQ8Eb0beOwC81eFAWBVcJuml3gJhxlqB14CFMK00LhT7P0sIuJb4XZcGcCpdJGiFWEHRf4VdX9VBJ6XeVmGZVwJ0I4Rp7gN7ABf369UoAeAoGpjWwHoDRelLALTe9T3wbk8azVh8VgHa/j/Apyp8wlD5RtNOvYF0tUnQ9WZDxxsBwBVgWy9h4YpivAavlaBGiio50wOo+8HPYQg9wsCkiJbe4MlCfkWgF9LWB4CYpCzNkDQF1wbvBNNQ/CLK7Cjj1uglEms9aPnlBOU+BiSlRSMTcI7uaTC4sZCzJysFTfVFIwd8noPmlW8GX8vtQ5/r2OjotUHPLsvR+pSeQq43OcMxfuQa4vkotyGgDC3vrMtHOzRNm45ztB6F5r/rcx3keH+e+oQMjeOrvA5Zmg8drwNA1xzbPOh1r4oJHTZkKeWaCLmQR32G7niwPwTkP1fQQu1o5Pc+aQTGmUIGC/gRgYLW045HeVspV9cjSRcj/SYlfU+SIRGNtFDSKMKluWLZ1g1ME+Ju8Owka1fSFn6mXUpZut7rInhR+vsOIFQQSZCS12C4zzVconYbgHL7PW23jaW2aywVsTDwYov09I727NsPH991A092Jmn0psgtwPIWz4MtDgScdEl8xQ3nBziSZk3SXIvW2j7Gb25hObcSSdxowKh0Ib8MA5VzvxXpv4LQJkmtKijSHEku2zMd9XauV1B0Ndoy6ENH1IZPBKRdwaPQ2Mr8uQVvw0ZzrGeWB3D7+W2l4fhDT9470Oi9y/k5DQbcFh5Sj6SAQQLHVSV6KWnzhIyeiYBfYSfVCwCNGgQ72AM4i/NO5q3qvro0Dajcl5PoY5aoXtfXbeWv05UteZcUbsrBr0eW7y+VMzT/2h6d8rWSZxB+pyl5RvtKzGNLj+GeHuL7oWGXHNDuFwvqst72T9ZZqyvlPncMKqkSzEVZst73KM9GdYxS8hc7emA0slLJQ5JxmZA+SaL+ODc2qY2S6S6kPctl2/GL4lLjUoOuRudJ1TVNPx262BmartfBPs271tFhFOD4EPaLsXPY1vWdlq7vOPBCv4Nl2BFe3SOWQx03e7XMlMaMRp5C49Ea3q7xhisouhjnN5Uj6CYr9/MXXP9d7Knril2Ln3S7H5RjAupNyD/HeVGikc2eesl/WU85fioJcPJ6q1F+jHIPBrfFMz73edAx4hJlV6EsGSKXqN6SjKDLv+pBHZblBQBNKwCpGYDUCEBqBHw1sC2zlq2RNaI7rg9bxz6t04E1Sv5fOqchXSe3iG2Jk3vPOmAbxqeWpm81dX0dwPiepRtrY7N65gKY7azTqPrNthLW0chz/HZAviUK6Iga5iRZc6P96Ly9nnP/CNBbi9HJBIahylmyeqeAJyKNoq6HsX5LdH6Wz/96EvDl8/vRlz4zPl8roAt2meS3Hn6e42zVtC7CMtsAZLUdpcG2GVwUIyeB5swq0JbcHs5Mljw2dQlG3ZneIjDqNPVaG6VbYqcljnvbtiFitv39Sf3nLQAAp8Vm3rq5BJ2xlqwh5fhWkem7dcE6iOpyEQFvsErVylHKlXTaboSQPXGPZzQgCdXDabOCossAjm2KRFSH19I8v1/7xQKdwwBaNXAf8PusC0wFeDoJ06pNK7nImavRmgXamvLYJrZ46+47ayAS5y0cm6Y8R2V07BvOljgm8sxYPfCvjNjRv+b1nzfNKJxvZNm4Xn/ef6Mxf5ZGf6sB9v4fxVcZjBOXvN9J2SYqKkUjJngYuzHIh/Yeg9Cl08EPBzz/1Vk+/5eluUWdAXedkP/fMJdN6iRywMaAs5WIYI3BmABZjNkDSFos5m4JfChnYKuCz7AswzBjgwC+EVk2Li3K/qPnTV4CYHX2AVxztqZewr666HuZJ+cUpNfylG3qKM8Joi8FrK+woCMHN91zNEIRL1PBV7Maofo/m/H2/z0W5n0oe76nPvL7jfFc5Y3S3GIeANeXHY/pHcU0rNpSZ3OHUzs+rLrDrjvEJoZid7ilfBbXozvnZNSJwfWaYIPqlPOjWbuX2a3hDiOnMfBoLvYjfibSJ1orZcYjPYbOID2Hwt9pSHev2coZtguKyFqlRUPkzL0XXDNJqSdpUjEBly/k4qKG2CcXEhkQ69iBvU/JuZtf3F3I97zieySA/QnnyC1CBsDZPEw3TtLvSmlE5bEzMfuZCV7voLkgc0ShJqOU2JjAYCrIgnUQ6AJPSGOCFDvLBR7pejjWOR/AdxRpT5dgKFmHBrqdJbSqv7Rk9iOy7jbGh6KCIvJhvavoN+SzC7qHFaJi/4kKLbm8gPcL0ziyVWf8SCE/Ht5YccE8GlCOpgLvLO1N6iLzZ/T9pV5cv4s5Op5mymHTmch3hldnRb+j08WHW9OK63w03DpDrjMcO0P1FxhqOx78XUHJwpqikRfZoNiSRe6tQk4bvamUJ4nYiRs0HS0Cd0P+oxUYdC+D/5whz+okd0c0spvbL1O5TY7OF418U9qbzHMUcLmA+bRcwIdxkYdTjSUdC01YrXZc0kmpJ90rtpPXHXYtXd+M3WeAxNn7FgzM7f8hopH3ILFoGO3JVizpcGexnredh5j5jk4XjcQCypMuM4B9dyQtTmaHK+mNs5DnnQBrbbFyvMbH1eLqiF/4SM1tAdZhujTBz1NXOT7Ez7GRJ9t/zu3QhtvB4pdyvpDBEEc9z/8tG2G3Mh5ascOZvoRFswv0Yhf5tp3Ui88MeEa/NpHDKvQ6iiigyd6+bN2UnOLh57ocdpV9GkI1PtZ0hzfgZynOvXrotaFhQOUJRClRJgCfwUr3dYx2UqR/XLIBG0CTMxIExGKA7nOc+wz7H2O7Buc/OrLswX+GzR+CLpAAxFPZijmHxSiJ9Xxl2BBsGZEI/95hTfsOkm4HkPfNkffHWWFTh1Qi0B0vqt39qdqwgK+BZGwqdOMHAPnlvS8Wfl2qSkeuqIt6uoJRH/Stx9qV2X+MtW/fgV5IsoQbsC60cOXKFcf8Q4y4bhNHVxViOq43HcdXsoVNbp5uOPdZGVyDPBwdUFcL7JPjmaJFbsXxJ7mArsKFNtW8YcqPa3Z74mlYu9th+b4Cy3YsLNzHYQZ/WLfnc7n/F8T9y+qhjrXgueCXhWVvFg+ualpGHU8ee+qASexSoMiN9TjfpRyarAYbTm6k8Sg+Jl25rPyJDUQiqHQXGznFpbFeKwTld3qsGqTaMNuyHoKBWz1h3Upvs27bP4FVQr6kDTldIBYbhkrOE4Yh19/qoj4UgqXigVWXiHHt9pQCcKQH/57VjR7sCaCAxX7gt5FOgQL9+TxtuyrgoFg3msx/DlLjZeQlvxrNqNwhEsGbUaQVIW08WaLY74f9a9gnRy/hO8q9dOVrH+G+zcc5iolbjnLTsN+TLfx7GUiD2Ud5I/svhyLfJuSryb46cqWQtPb7mv1B5OvIdbzF9R7kOrYgjaJXKPCVlgCQW4pcMzQ1d1uFAF1+x0eaAGwvAmwt4kEDQo+7XZTIlZ1+5Wv1ieq2btxoalojyzBmH32+9/cpmSyzk/zGHc+ikDdF134Kq2c0d0KuRE5oirqYQ8Dhc+8zExAacqeScVaN3TgEhHYMGHLVzEc++jupnZx3HhtwlCcPaTR80szAIq6PXDExLn+/2pQiEfRZn4dYqs99qS7g4zHgc3mfAExzqRdzHrpPiiih/9al6b6mbFS61IzLDVHq6Mh1tGXpSuCfI+QKPbrHizjNiZY57sNrtbajuls07Jlmi5Q5XPnJWHcO99N9i+5OceDW6Tkj3zDN1zQztsiwzEl5pvmq74VM8zThBB3EpAM75i6FtPtB1yvNXzi5PqpM+iZ9Of5UBiiB6XGAlGLiLmEDjDrxbR62qBO7sR/wCu5EGkbp2bozuPqhPK3HiM864HiBkCvddmC/vZBBqZloMAOJQOPOSpDORo70y4Sc7N+YoY4BPPxSyNWFeDFOYom9kp+xPfsWxXEHXX6bkSM001qomWatpNkMF2zJkSuzfCuxrOd0y+xMwQMygCDWpmZkbqsUN6JpHnLrl8BjtmKnoI5WpXiMrby9Ho2tKUOdd1nkDHTAXsUPuo2Bso87qy72D7BjmHTBq1niUB9NFImPdddUy4vsIj4M1S/rod24rs3S0MUDDe3f4LzJaZleqH8gn8WSOo+lHd1vHQZgvjpEHzfQ5bcePgGSZoLgqBOXLd/IFfM7AG+mj4XbDekRnkZzIlYMOTV3WYr70DLX63HQ0TWTpF6DXJ8Djf05D5cE3MVoZNK56GuhX2Gr/n+GO8SRh57ANRzpN4MfZknjfh/vNXZRUec9zfpQA5YaBFD3D14moixJk3Fpbu8AD8PXsr7YM8vHoimxDihzF5frVMI2sXh4vZRfjm08FB8/0DmAcz8+nWkOV87djv5h6fAkZR8WroHzExNzuzGnnC5Dps5KAZ0ZW0hpunMtBXxS4pXWddRXyHlPGgYpauNuBsdmnw7Zw51P0oSGw0dY73mAs7gf6l6DvCQBFytgFCztojxkLfH4S73XivH9kNR9VgQHqXrpbrZSCfRTRG7xc4NZL6RInofZADx8XEAHwA0T3q+dO3O4lgiQeqsg8VK+Hwzp1hXnL5CBoiYHFsSDB1LNdNN8xYgd3egAj8GnSL2tpXkmGjbBPVhC0XxnAxy3A9Pk+GyWVB8q+ZdwXtLXGpPew0MvpX3JVp77mYwnuPxMTrfJghXy70cvcq8HfpLzk/S7SrnWADYgzuXzDfhlWMD7y7zlUGYt38OlvL2C8wq2amn/G6WOD32uTaCjlXP7+WVsyS9J+TqHAbiu/OYGXzc+h2tQ8MBuWJotilc9mvKnJNWvn/iGpuvXaU5+d36XwuOded9B+xYM/N8UH2BkbnNYuO/Cwj0F1q6w5NzwBpsWez/zS1uEVJZO685s5DRid8xKkuorViw/oJUj4M5jn0/trAroegxguLb4/XHLU+r6xdg6QNm/NN2oJud4ZUCBxuBD2S4HFg3y/T5xzdvnNAPgplqa1sY08ghwvcwZPT4LYVI2dHy/T5cMOLKefpc14KSud1fxBxOW+z6YabYFsKoJXnEW9+slVqQFTj8dmtt3g0he0BNSOVN5OYd/JXzWXqShoUfWTJoZ+DZZVhs3SjkekWwb7oq0zw8tue/bsGtPYNBByp3MFlpJAJfu0wVkfV7ors2w1eWPUuotDrs1lHQRkV1gKJnzfQG4zJ9ssKyzXaODsOaRevPCbg1B1yeLPDQc9gDgsooihqSrIdSVaAmpt6Z4+eiPwm6t2HRM/XQYWvNF8Kosl2g+sWW2gGMT6UjCx5bw60HXGx12aSjp9DTXoPm8YQDbSznU+zcHzLwUkqXdguJ3fxP+1dKJLukAKHIKenU0cmfQ9EijHAFHtFSReiTxPsWQWxh2ZyjpVJ2O1lmSFbsJQPu6DOqk/2CgEB+aKqJPHPQ//MGE3WF3Vg76twADALN3v6j9rSNdAAAAAElFTkSuQmCC\"/>\r\n                                    </a>\r\n                                </td>\r\n                            </tr>\r\n\r\n                            <!-- this is content start -->\r\n\r\n\n    <tr>\n        <td align=\"left\" valign=\"top\" bgcolor=\"#FFFFFF\" style=\"background-color:#FFFFFF;\">\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n                <tr>\n\n                    <td align=\"left\" valign=\"top\">\n                        <table width=\"480\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n\n                            <tr>\n                                <td align=\"left\" valign=\"top\">\n                                    <div style=\"color:#7f7f7f; font-family: Arial, sans-serif; font-size:14px; font-weight: 600; line-height:21px;\">\n                                        Your order has been received.\n                                    </div>\n                                    <br/>\n                                    <div style=\"font-family: Arial, sans-serif; color:#7f7f7f; font-size:12px; line-height:21px;\">\n                                        Thank you for your purchase!\n                                    </div>\n                                    <br/>\n                                </td>\n                            </tr>\n\n                            <tr>\n                                <td align=\"left\" valign=\"top\">\n                                    <div style=\"color:#7f7f7f; font-family: Arial, sans-serif; font-size:12px; line-height:21px;\">\n                                        Your order number is: 1111111\n                                    </div>\n                                    <br/>\n\n                                    <p>\n                                        Your invoice is attached in the mail.\n                                    </p>\n\n                                </td>\n                            </tr>\n\n                            <tr>\n                                <td align=\"left\" valign=\"top\">\n                                    <div style=\"font-family: Arial, sans-serif; color:#7f7f7f; font-size:12px; line-height:21px;\">\n                                        Kind Regards,\n                                    </div>\n                                    <div style=\"font-family: Arial, sans-serif; color:#7f7f7f; font-size:12px; line-height:21px;\">\n                                        B2C Team\n                                    </div>\n                                    <br/><br/>\n\n                                </td>\n                            </tr>\n\n                        </table>\n\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n\n\r\n                            <!-- this is content end -->\r\n\r\n                            <tr>\r\n                                <td align=\"left\" valign=\"top\" height=\"210\" bgcolor=\"#7f7f7f\"\r\n                                    style=\"background-color:#141e2b;\">\r\n                                    <table width=\"480\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"\r\n                                           style=\"margin-top: 33px\">\r\n                                        <tr>\r\n                                            <td align=\"left\" valign=\"top\"\r\n                                                style=\"width: 277px; color:#13a2dc; font-family:Arial, Helvetica, sans-serif; font-size:16px; font-weight: 300;\">\r\n                                                ABOUT US<br/>\r\n                                                <table style=\"width: 219px; margin-top: 8px; font-family: Arial, sans-serif; font-size:10px; line-height:18px; text-align: justify; font-weight: 400;\">\r\n                                                    <tr>\r\n                                                        <td style=\"color: #7f7f7f;\">Collinson XXXXXX.\r\n\r\n                                                        </td>\r\n                                                    </tr>\r\n\r\n                                                </table>\r\n                                            </td>\r\n\r\n                                            <td align=\"left\" valign=\"top\"\r\n                                                style=\"color:#13a2dc; font-family:Arial, Helvetica, sans-serif; font-size:16px; font-weight: 300;\">\r\n                                                CONTACT US<br/>\r\n                                                <table style=\" margin-top: 8px; font-family: Arial, sans-serif; font-size:10px; line-height:18px; font-weight: 400;\">\r\n                                                    <tr>\r\n                                                        <td width=\"55px\" align=\"left\" valign=\"top\"\r\n                                                            style=\"color: #7f7f7f;\">Address :\r\n                                                        </td>\r\n                                                        <td align=\"left\" valign=\"top\"\r\n                                                            style=\"width: 156px; color: #7f7f7f;\"> Level X, The XXX\r\n                                                            Building, <br/>\r\n                                                            41 XXXX Street, <br/>\r\n                                                            Auckland CBD <br/>\r\n                                                            New Zealand\r\n                                                        </td>\r\n                                                    </tr>\r\n                                                    <tr style=\"line-height: 10px\">\r\n                                                        <td width=\"55px\" align=\"left\" valign=\"top\"\r\n                                                            style=\"letter-spacing: 1px; color: #7f7f7f\">E-mail :\r\n                                                        </td>\r\n                                                        <td align=\"left\" valign=\"top\"\r\n                                                            style=\"width: 156px; color: #7f7f7f;\"><a\r\n                                                                href=\"mailto:account@b2c.kiwi\"\r\n                                                                style=\"color:#7f7f7f; text-decoration:none;\">\r\n                                                            info@ccfl.co.nz\r\n                                                        </a>\r\n                                                        </td>\r\n                                                    </tr>\r\n                                                    <tr>\r\n                                                        <td width=\"55px\" align=\"left\" valign=\"top\"\r\n                                                            style=\"letter-spacing: 1px; color: #7f7f7f;\">Phone :\r\n                                                        </td>\r\n                                                        <td align=\"left\" valign=\"top\"\r\n                                                            style=\"width: 156px; color: #7f7f7f\"> +64 9 999 9999\r\n                                                        </td>\r\n                                                    </tr>\r\n                                                    <tr>\r\n                                                        <td width=\"75px\" align=\"left\" valign=\"top\"\r\n                                                            style=\"letter-spacing: 1px; color: #7f7f7f;\">Free Call :\r\n                                                        </td>\r\n                                                        <td align=\"left\" valign=\"top\"\r\n                                                            style=\"width: 156px; color: #7f7f7f\"> 0800 888 888\r\n                                                        </td>\r\n                                                    </tr>\r\n                                                </table>\r\n\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n\r\n                                </td>\r\n                            </tr>\r\n\r\n                            <tr>\r\n                                <td align=\"left\" valign=\"top\" bgcolor=\"#7f7f7f\" style=\"background-color:#e1fae8;\">\r\n                                    <table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n                                        <tr>\r\n                                            <td colspan=\"2\" align=\"center\"\r\n                                                style=\"background-color: #142b3d; color: #7f7f7f;font-family: Arial, sans-serif; font-size:13px; line-height:33px;\">\r\n                                                © 2018 Copyright xx All Rights Reserved\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n\r\n                        </table>\r\n\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n        </td>\r\n    </tr>\r\n\r\n</table>\r\n</body>\r\n</html>\r\n\r\n','Authentication failed; nested exception is javax.mail.AuthenticationFailedException: 534-5.7.9 Please log in with your web browser and then try again. Learn more at\n534 5.7.9  https://support.google.com/mail/?p=WebLoginRequired 12sm14113018pgt.33 - gsmtp\n','BD20190121152058','zhouleib1412@gmail.com','FAILURE','Your order has been received.',3,NULL,NULL,NULL);
/*!40000 ALTER TABLE `email_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_server`
--

DROP TABLE IF EXISTS `email_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_server` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `from_address` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `port` int(11) NOT NULL,
  `timeout` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6djeqmppc54ir3d192va6kj3b` (`creator_id`),
  KEY `FK71mw456ercq7ss92uvxyjjmq2` (`modifier_id`),
  KEY `FKm6if0go5rr8o5yc2w74vkvbar` (`user_id`),
  CONSTRAINT `FK6djeqmppc54ir3d192va6kj3b` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK71mw456ercq7ss92uvxyjjmq2` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKm6if0go5rr8o5yc2w74vkvbar` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKrrti3yl7ltlwdyqhssya2a6d2` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKslcaovdmhvwpfjy6gqsao3x99` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKxp4uqkcn6dr986n8aaajeym6` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_server`
--

LOCK TABLES `email_server` WRITE;
/*!40000 ALTER TABLE `email_server` DISABLE KEYS */;
INSERT INTO `email_server` VALUES (1,'2019-01-16 06:58:20.248','2019-01-16 06:58:20.248',1,'info.b2c.nz@gmail.com','info.b2c.nz@gmail.com','smtp.gmail.com','hlmpmplhfrgybccr',587,25000,'info.b2c.nz@gmail.com',1,1,1);
/*!40000 ALTER TABLE `email_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_subscription`
--

DROP TABLE IF EXISTS `email_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_subscription` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK540h1wqid95q05o7dbnev5qlt` (`creator_id`),
  KEY `FKhxftgky01q482rxfjdd8vb5w5` (`modifier_id`),
  KEY `FKci5f4gnbq8ragnoxxxsa7vywx` (`user_id`),
  CONSTRAINT `FK540h1wqid95q05o7dbnev5qlt` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKci5f4gnbq8ragnoxxxsa7vywx` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKhxftgky01q482rxfjdd8vb5w5` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_subscription`
--

LOCK TABLES `email_subscription` WRITE;
/*!40000 ALTER TABLE `email_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experience` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `about_host` varchar(1024) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `duration` float DEFAULT NULL,
  `group_size` varchar(255) DEFAULT NULL,
  `location` varchar(1024) DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `will_be` varchar(1024) DEFAULT NULL,
  `will_do` varchar(1024) DEFAULT NULL,
  `will_provide` varchar(1024) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmir099fo4gfn68fusu0dqyub0` (`creator_id`),
  KEY `FK3ab9esnt6kvm36cwmsv1hx6u0` (`modifier_id`),
  KEY `FK82nodp227mvpok1prba0j9wlh` (`user_id`),
  KEY `FKemqo4sx1rg8fyb8y2sb63htt3` (`product_id`),
  CONSTRAINT `FK3ab9esnt6kvm36cwmsv1hx6u0` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK82nodp227mvpok1prba0j9wlh` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKemqo4sx1rg8fyb8y2sb63htt3` FOREIGN KEY (`product_id`) REFERENCES `product_multi` (`id`),
  CONSTRAINT `FKixij9ndmdn4xxf13nuvi7svwo` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKk2p0ht6qkjds0h84bkgmfktko` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKmbppo8mxx5i63c1x72ut3wqdn` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKmir099fo4gfn68fusu0dqyub0` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKsplxu73y31vgiu752nica31tn` FOREIGN KEY (`product_id`) REFERENCES `product_multi` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience`
--

LOCK TABLES `experience` WRITE;
/*!40000 ALTER TABLE `experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience_languages`
--

DROP TABLE IF EXISTS `experience_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experience_languages` (
  `experience_id` bigint(20) NOT NULL,
  `languages_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_7et1nvdj7jlfi7xvgsto6jba2` (`languages_id`),
  KEY `FKjf25kqthdmk3kr9b3ljr6pidc` (`experience_id`),
  CONSTRAINT `FK33jefvt38jbc3ligj449qokjn` FOREIGN KEY (`languages_id`) REFERENCES `language` (`id`),
  CONSTRAINT `FKbc3ny7yddr5dytjpvpk02lcy9` FOREIGN KEY (`languages_id`) REFERENCES `language` (`id`),
  CONSTRAINT `FKjf25kqthdmk3kr9b3ljr6pidc` FOREIGN KEY (`experience_id`) REFERENCES `experience` (`id`),
  CONSTRAINT `FKsmgaa7ha84he6un92eyh45c8i` FOREIGN KEY (`experience_id`) REFERENCES `experience` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience_languages`
--

LOCK TABLES `experience_languages` WRITE;
/*!40000 ALTER TABLE `experience_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `experience_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `answer` varchar(2048) NOT NULL,
  `question` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1xbke0xl0pdc6lp3elvvb5b56` (`creator_id`),
  KEY `FKhnb1petahyot8ngn7lx152gqp` (`modifier_id`),
  KEY `FKa84imybybsygmuvwt27yp1kkv` (`user_id`),
  CONSTRAINT `FK1xbke0xl0pdc6lp3elvvb5b56` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKa84imybybsygmuvwt27yp1kkv` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKhnb1petahyot8ngn7lx152gqp` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorite` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9odhokc8dvmj5blhdcfly11ax` (`creator_id`),
  KEY `FKjewbm7lf6l3hbyyqa5ogn2yd8` (`modifier_id`),
  KEY `FKami6vw4ysx49hf0tg1qwvw78v` (`user_id`),
  CONSTRAINT `FK9odhokc8dvmj5blhdcfly11ax` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKami6vw4ysx49hf0tg1qwvw78v` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKjewbm7lf6l3hbyyqa5ogn2yd8` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite`
--

LOCK TABLES `favorite` WRITE;
/*!40000 ALTER TABLE `favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_product_multis`
--

DROP TABLE IF EXISTS `favorite_product_multis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorite_product_multis` (
  `favorite_id` bigint(20) NOT NULL,
  `product_multis_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_4n40q56njkyavwkyjurtmqh0v` (`product_multis_id`),
  KEY `FKf7wujagmurareleurgtpdc2s2` (`favorite_id`),
  CONSTRAINT `FKf7wujagmurareleurgtpdc2s2` FOREIGN KEY (`favorite_id`) REFERENCES `favorite` (`id`),
  CONSTRAINT `FKfs27fla6euk7ie44duh0ah8gl` FOREIGN KEY (`product_multis_id`) REFERENCES `product_multi` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_product_multis`
--

LOCK TABLES `favorite_product_multis` WRITE;
/*!40000 ALTER TABLE `favorite_product_multis` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorite_product_multis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_product_singles`
--

DROP TABLE IF EXISTS `favorite_product_singles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorite_product_singles` (
  `favorite_id` bigint(20) NOT NULL,
  `product_singles_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_9ssdu583pjyewtbh0dltcgl9h` (`product_singles_id`),
  KEY `FK44s08a9mfw83pmttk2m5smq9j` (`favorite_id`),
  CONSTRAINT `FK44s08a9mfw83pmttk2m5smq9j` FOREIGN KEY (`favorite_id`) REFERENCES `favorite` (`id`),
  CONSTRAINT `FKssvlntkm41ffyqaofee2fdmvr` FOREIGN KEY (`product_singles_id`) REFERENCES `product_single` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_product_singles`
--

LOCK TABLES `favorite_product_singles` WRITE;
/*!40000 ALTER TABLE `favorite_product_singles` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorite_product_singles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature_type`
--

DROP TABLE IF EXISTS `feature_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feature_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6by0ickm0mw9c5yfe1u7s0fph` (`creator_id`),
  KEY `FKa060efq9qbxg30a7damrborqs` (`modifier_id`),
  KEY `FKoay3fwiobo57rp77i78gixe3` (`user_id`),
  CONSTRAINT `FK5lllh3ocfcs4demdymfrsn32w` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK81pwta0cur0lfkcmtra6v5ssf` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKg7j1d4v9o16mpogr8a31hlk18` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature_type`
--

LOCK TABLES `feature_type` WRITE;
/*!40000 ALTER TABLE `feature_type` DISABLE KEYS */;
INSERT INTO `feature_type` VALUES (16,'2018-11-07 02:59:18.264','2018-11-07 02:59:18.264',0,'BEST SELLERS','BEST SELLERS',40,40,NULL),(17,'2018-11-07 02:59:26.262','2018-11-07 02:59:26.262',0,'New','New',40,40,NULL),(18,'2018-11-07 02:59:36.213','2018-11-07 02:59:36.213',0,'DEALS OF THE DAY','DEALS OF THE DAY',40,40,NULL),(19,'2019-01-14 10:06:23.617','2019-01-14 10:06:23.617',0,NULL,'SALE',50,50,NULL),(20,'2019-01-14 10:06:30.316','2019-01-14 10:06:30.316',0,NULL,'POPULAR',50,50,NULL),(21,'2019-01-14 10:06:41.953','2019-01-14 10:06:41.953',0,NULL,'CENTER',50,50,NULL),(22,'2019-01-14 10:06:49.208','2019-01-14 10:06:49.208',0,NULL,'RIGHT',50,50,NULL),(23,'2019-01-14 10:06:55.785','2019-01-14 10:06:55.785',0,NULL,'LEFT',50,50,NULL),(24,'2019-01-14 10:07:01.725','2019-01-14 10:07:01.725',0,NULL,'NEW',50,50,NULL),(25,'2019-01-14 10:07:07.216','2019-01-14 10:07:07.216',0,NULL,'SLIDER',50,50,NULL),(26,'2019-01-14 10:07:13.885','2019-01-14 10:07:13.885',0,NULL,'FEATURED',50,50,NULL);
/*!40000 ALTER TABLE `feature_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `message` varchar(1024) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `feedback_type_id` bigint(20) DEFAULT NULL,
  `product_multi_id` bigint(20) DEFAULT NULL,
  `product_single_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK68l4s02h4ts2kd1cfeiwc5ndp` (`creator_id`),
  KEY `FKmve2xxw5yf5t8kwgqwwhbf7la` (`modifier_id`),
  KEY `FK9d1vkn772r6yle1np2o7w3psm` (`user_id`),
  KEY `FKmgol6gm2kwsrpkt07anexpouq` (`feedback_type_id`),
  KEY `FKqo5mqta45otq486ccxxj3wti` (`product_multi_id`),
  KEY `FK1ci7v7pbrhcxjcuaco2yo6e45` (`product_single_id`),
  CONSTRAINT `FK1ci7v7pbrhcxjcuaco2yo6e45` FOREIGN KEY (`product_single_id`) REFERENCES `product_single` (`id`),
  CONSTRAINT `FK68l4s02h4ts2kd1cfeiwc5ndp` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK9d1vkn772r6yle1np2o7w3psm` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKmgol6gm2kwsrpkt07anexpouq` FOREIGN KEY (`feedback_type_id`) REFERENCES `feedback_type` (`id`),
  CONSTRAINT `FKmve2xxw5yf5t8kwgqwwhbf7la` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKqo5mqta45otq486ccxxj3wti` FOREIGN KEY (`product_multi_id`) REFERENCES `product_multi` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_type`
--

DROP TABLE IF EXISTS `feedback_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `max_score` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKddwsu0np7g0od9x15new6bjpn` (`creator_id`),
  KEY `FKlyvvbtjpur9g7nhv21adkqbvq` (`modifier_id`),
  KEY `FKfa0xhptktvmw1ssa3v72tr9q3` (`user_id`),
  CONSTRAINT `FKddwsu0np7g0od9x15new6bjpn` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKfa0xhptktvmw1ssa3v72tr9q3` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKlyvvbtjpur9g7nhv21adkqbvq` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_type`
--

LOCK TABLES `feedback_type` WRITE;
/*!40000 ALTER TABLE `feedback_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `find_pwd_send_log`
--

DROP TABLE IF EXISTS `find_pwd_send_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `find_pwd_send_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `encrypt_id` varchar(255) DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `used` char(1) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKax5uo130gw10hodnh696yl99q` (`creator_id`),
  KEY `FK4andv1yu1px0i5q643baxvwx4` (`modifier_id`),
  KEY `FKn7ql6lyd6qpj475vwylgasrlo` (`user_id`),
  CONSTRAINT `FK4andv1yu1px0i5q643baxvwx4` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKax5uo130gw10hodnh696yl99q` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKn7ql6lyd6qpj475vwylgasrlo` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `find_pwd_send_log`
--

LOCK TABLES `find_pwd_send_log` WRITE;
/*!40000 ALTER TABLE `find_pwd_send_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `find_pwd_send_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer`
--

DROP TABLE IF EXISTS `footer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `footer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `content` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `root_level` char(1) NOT NULL,
  `sort` int(11) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtb3imql7wi8daa1xyl7o55df` (`creator_id`),
  KEY `FK1xky6yrpd6vo6kerehmmcmdx0` (`modifier_id`),
  KEY `FKt6a026pydniuyr042io6etoav` (`user_id`),
  KEY `FKrhkbnb44bdw6wdf0bul6iryer` (`parent_id`),
  CONSTRAINT `FK1xky6yrpd6vo6kerehmmcmdx0` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKrhkbnb44bdw6wdf0bul6iryer` FOREIGN KEY (`parent_id`) REFERENCES `footer` (`id`),
  CONSTRAINT `FKt6a026pydniuyr042io6etoav` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKtb3imql7wi8daa1xyl7o55df` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer`
--

LOCK TABLES `footer` WRITE;
/*!40000 ALTER TABLE `footer` DISABLE KEYS */;
/*!40000 ALTER TABLE `footer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gateway`
--

DROP TABLE IF EXISTS `gateway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gateway` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `config` varchar(1024) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKajwsejdtim974n2mif30bn65o` (`creator_id`),
  KEY `FKhrexk5u48xql97k7vlrchaerr` (`modifier_id`),
  KEY `FK1ukiaaklgjmollvc24rxqqhiw` (`user_id`),
  CONSTRAINT `FK1t168bk3m736hb54m082d2hwe` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK1ukiaaklgjmollvc24rxqqhiw` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK9uho0dy204r8i9r8y5k8yxk4a` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKajwsejdtim974n2mif30bn65o` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKhrexk5u48xql97k7vlrchaerr` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKs1h3lwpd9dnxxxhnhp764jr3b` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gateway`
--

LOCK TABLES `gateway` WRITE;
/*!40000 ALTER TABLE `gateway` DISABLE KEYS */;
INSERT INTO `gateway` VALUES (1,'2018-08-22 04:14:07.721','2018-08-22 04:14:07.721',0,'{\n  \"polipayMerchantData\": \"intellimall\",\n  \"polipayMerchantHomePageUrl\": \"/\",\n  \"polipayNotificationUrl\": \"/payment/polipay/notify\",\n  \"polipayFailedUrl\": \"/payment/polipay/fail\",\n  \"polipaySuccessUrl\": \"/payment/polipay/success\",\n  \"polipayNZDMerchantCode\": \"SS64008208\",\n  \"polipayNZDAuthenticationCode\": \"dH2^xyeRA$mCY\",\n  \"polipayAUDMerchantCode\": \"SS64008208\",\n  \"polipayAudAuthenticationCode\": \"dH2^xyeRA$mCY\"\n}\n','account','POLIPAY',10,1,NULL),(2,'2018-08-22 04:14:07.721','2018-08-22 04:14:07.721',0,'{\n  \"paypalMode\": \"sandbox\",\n  \"paypalClientId\": \"AfRaLTJ1QBkmyyIN-dSNBi_j9hVZHAtRnNBF3YHjT3DCNpwWVgMPCLwO9jVqEU4Wtz4L_aMSBZC_vmM5\",\n  \"paypalClientSecret\": \"EGw-KRywdisvxw8BGfGgDQEipkaaD3mUI9jL0mFVbit3QlXbpHubszmK1kjJNv5FM3ZLTz2-4FfbKtT9\",\n  \"paypalNotificationUrl\": \"https://api.suoyanmall.com/payment/notify/paypal\",\n  \"paypalFailedUrl\": \"http://api.suoyanmall.com/payment/anonymous/feedback/fail\",\n  \"paypalSuccessUrl\": \"http://api.suoyanmall.com/payment/anonymous/feedback/success\"\n}','account','PAYPAL',10,1,NULL),(3,'2018-10-04 01:49:47.061','2018-10-04 01:49:47.061',0,'{\n  \"latipayNzdWalletId\": \"W000000110\",\n  \"latipayUserID\": \"U000000131\",\n  \"latipayAPIKey\": \"qRn8UVK\",\n  \"latipayNotifyUrl\": \"https://api.suoyanmall.com/payment/latipay/notify\",\n  \"latipayReturnUrl\": \"https://api.suoyanmall.com/payment/latipay/notify\"\n}','account','LATIPAY',10,1,NULL),(6,'2018-08-22 04:14:07.721','2018-08-22 04:14:07.721',0,'{\n  \"polipayMerchantData\": \"B2C Direct\",\n  \"polipayMerchantHomePageUrl\": \"/\",\n  \"polipayNotificationUrl\": \"/payment/polipay/notify\",\n  \"polipayFailedUrl\": \"/payment/polipay/fail\",\n  \"polipaySuccessUrl\": \"/payment/polipay/success\",\n  \"polipayNZDMerchantCode\": \"SS64008551\",\n  \"polipayNZDAuthenticationCode\": \"qV6$n3Fb7hWTr\",\n  \"polipayAUDMerchantCode\": \"SS64008208\",\n  \"polipayAudAuthenticationCode\": \"dH2^xyeRA$mCY\"\n}\n','account','POLIPAY',40,1,NULL),(7,'2018-08-22 04:14:07.721','2018-08-22 04:14:07.721',0,'{\n  \"polipayMerchantData\": \"intellimall\",\n  \"polipayMerchantHomePageUrl\": \"/\",\n  \"polipayNotificationUrl\": \"/payment/polipay/notify\",\n  \"polipayFailedUrl\": \"/payment/polipay/fail\",\n  \"polipaySuccessUrl\": \"/payment/polipay/success\",\n  \"polipayNZDMerchantCode\": \"SS64008208\",\n  \"polipayNZDAuthenticationCode\": \"dH2^xyeRA$mCY\",\n  \"polipayAUDMerchantCode\": \"SS64008208\",\n  \"polipayAudAuthenticationCode\": \"dH2^xyeRA$mCY\"\n}\n','account','POLIPAY',50,1,NULL);
/*!40000 ALTER TABLE `gateway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_requirement`
--

DROP TABLE IF EXISTS `guest_requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest_requirement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `alcohol` char(1) NOT NULL,
  `from_the_host` varchar(255) DEFAULT NULL,
  `guests_under18` char(1) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq0odaxd1jifihp7orm7dm9045` (`creator_id`),
  KEY `FKdur0tg8joudmx2e4kg6mnh159` (`modifier_id`),
  KEY `FKhd5n7xnd34phg89r587epocmq` (`user_id`),
  KEY `FKdcbanx3rwp2w3whe4yiubq9sf` (`product_id`),
  CONSTRAINT `FKdcbanx3rwp2w3whe4yiubq9sf` FOREIGN KEY (`product_id`) REFERENCES `product_multi` (`id`),
  CONSTRAINT `FKdur0tg8joudmx2e4kg6mnh159` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKhbxcjpdp90ek34ht0bcv70t37` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKhd5n7xnd34phg89r587epocmq` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKo9lx7q3bchx3ie8lhmbafbqgj` FOREIGN KEY (`product_id`) REFERENCES `product_multi` (`id`),
  CONSTRAINT `FKoq0eupremb37q0ecp5opct4lm` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKq0odaxd1jifihp7orm7dm9045` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKs23rbvf2f1org8620l0rskpvb` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_requirement`
--

LOCK TABLES `guest_requirement` WRITE;
/*!40000 ALTER TABLE `guest_requirement` DISABLE KEYS */;
/*!40000 ALTER TABLE `guest_requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_page_slider`
--

DROP TABLE IF EXISTS `home_page_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_page_slider` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `add_to_cart` char(1) NOT NULL,
  `image_content` varchar(255) DEFAULT NULL,
  `image_title` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `link_title` varchar(255) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_single_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlrj5x2ktto1idbehfglg41qdr` (`creator_id`),
  KEY `FK37v2a1p5iuwn7l0ufq5kend0h` (`modifier_id`),
  KEY `FKslm9qsbqyf77n3c6lxh00vi1c` (`user_id`),
  KEY `FK8mlwjqww8oa4h4qjg0905gke6` (`product_single_id`),
  CONSTRAINT `FK37v2a1p5iuwn7l0ufq5kend0h` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK8mlwjqww8oa4h4qjg0905gke6` FOREIGN KEY (`product_single_id`) REFERENCES `product_single` (`id`),
  CONSTRAINT `FKlrj5x2ktto1idbehfglg41qdr` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKslm9qsbqyf77n3c6lxh00vi1c` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_page_slider`
--

LOCK TABLES `home_page_slider` WRITE;
/*!40000 ALTER TABLE `home_page_slider` DISABLE KEYS */;
INSERT INTO `home_page_slider` VALUES (1,'2018-11-07 02:54:45.099','2019-01-10 01:26:37.191',3,'N',NULL,'Our amazing price product',NULL,NULL,'http://b2c.kiwi/detail/714',40,40,NULL,695),(3,'2019-01-08 23:32:10.883','2019-01-10 01:29:05.446',2,'N',NULL,'',NULL,'Backyard Discovery Tucson Cedar Wooden Swing Set','http://b2c.kiwi/detail/695',40,40,NULL,714),(4,'2019-01-10 01:25:20.670','2019-01-10 01:25:20.670',0,'N',NULL,'Patio Canopy Roof 4.95M x 3M',NULL,'It is the best option to go for spaces outdoor','http://b2c.kiwi/detail/695',40,40,NULL,712);
/*!40000 ALTER TABLE `home_page_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_page_slider_images`
--

DROP TABLE IF EXISTS `home_page_slider_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_page_slider_images` (
  `home_page_slider_id` bigint(20) NOT NULL,
  `images_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_e6stjbt0lm8190j73ud98x0d6` (`images_id`),
  KEY `FK8n3v91tm4eoswcc5ust4oqnuy` (`home_page_slider_id`),
  CONSTRAINT `FK1vd4lon2x99i2jwlgx8b979mf` FOREIGN KEY (`images_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FK8n3v91tm4eoswcc5ust4oqnuy` FOREIGN KEY (`home_page_slider_id`) REFERENCES `home_page_slider` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_page_slider_images`
--

LOCK TABLES `home_page_slider_images` WRITE;
/*!40000 ALTER TABLE `home_page_slider_images` DISABLE KEYS */;
INSERT INTO `home_page_slider_images` VALUES (1,2301),(3,2217),(4,2300);
/*!40000 ALTER TABLE `home_page_slider_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKht7iyufhl80alwgwy28nj2tbi` (`creator_id`),
  KEY `FK4cg5ofgh9k29qgewfd8sc905l` (`modifier_id`),
  KEY `FKiufinfot3gn7vj3vi497ln4br` (`user_id`),
  CONSTRAINT `FK4cg5ofgh9k29qgewfd8sc905l` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKht7iyufhl80alwgwy28nj2tbi` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKiufinfot3gn7vj3vi497ln4br` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_detail`
--

DROP TABLE IF EXISTS `inventory_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_single_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhjitlrd08fcdmb2o5t3vdq1bj` (`creator_id`),
  KEY `FK5uofhkyjmfao9veufwu9vgsbp` (`modifier_id`),
  KEY `FK905fpgr5ratff5xi345a7jyj3` (`user_id`),
  KEY `FKgthtb7nlopa2ktosljlbb1hox` (`product_single_id`),
  CONSTRAINT `FK5uofhkyjmfao9veufwu9vgsbp` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK905fpgr5ratff5xi345a7jyj3` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKgthtb7nlopa2ktosljlbb1hox` FOREIGN KEY (`product_single_id`) REFERENCES `product_single` (`id`),
  CONSTRAINT `FKhjitlrd08fcdmb2o5t3vdq1bj` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_detail`
--

LOCK TABLES `inventory_detail` WRITE;
/*!40000 ALTER TABLE `inventory_detail` DISABLE KEYS */;
INSERT INTO `inventory_detail` VALUES (1,'2018-11-11 21:58:48.105','2018-11-11 22:01:35.737',1,'stock',10,NULL,40,NULL,NULL),(2,'2018-12-07 01:25:39.311','2018-12-07 01:25:39.311',0,NULL,400,40,40,NULL,711),(3,'2018-12-07 01:30:01.214','2018-12-07 01:31:02.415',1,NULL,200,40,40,NULL,712),(4,'2019-01-15 03:14:26.764','2019-01-15 03:14:26.764',0,NULL,1,50,50,NULL,735),(5,'2019-01-15 03:26:27.673','2019-01-16 02:05:16.287',2,NULL,2,NULL,50,NULL,NULL),(6,'2019-01-16 02:24:27.252','2019-01-16 02:28:34.585',1,NULL,1,NULL,50,NULL,NULL),(7,'2019-01-16 02:24:40.542','2019-01-16 02:24:40.542',0,'BD20190109051141',-1,NULL,NULL,NULL,712),(8,'2019-01-16 02:34:32.687','2019-01-16 02:39:24.720',1,NULL,2,NULL,50,NULL,NULL),(9,'2019-01-16 02:39:04.648','2019-01-16 02:39:04.648',0,NULL,1,50,50,NULL,738),(10,'2019-01-16 03:08:13.104','2019-01-16 03:25:52.080',1,NULL,1,NULL,50,NULL,NULL),(11,'2019-01-16 03:26:19.961','2019-01-16 06:46:35.500',1,NULL,5,NULL,50,NULL,NULL),(12,'2019-01-16 03:26:32.958','2019-01-16 03:26:32.958',0,NULL,3,50,50,NULL,740),(13,'2019-01-16 03:44:18.200','2019-01-16 03:44:18.200',0,'BD20190104110344',-1,NULL,NULL,NULL,711),(14,'2019-01-16 04:04:40.452','2019-01-16 04:04:40.452',0,'MALL-20181216214009-1B03BE16',-1,NULL,NULL,NULL,712),(15,'2019-01-16 04:04:40.453','2019-01-16 04:04:40.453',0,'MALL-20181216214009-1B03BE16',-1,NULL,NULL,NULL,711),(16,'2019-01-16 06:47:10.064','2019-01-18 02:12:17.804',1,NULL,100,NULL,50,NULL,NULL),(17,'2019-01-18 03:02:26.150','2019-01-18 03:02:26.150',0,'BD20181216230255',-1,NULL,NULL,NULL,711),(18,'2019-04-04 03:47:28.914','2019-04-04 03:47:28.914',0,NULL,35,40,40,NULL,742);
/*!40000 ALTER TABLE `inventory_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitation`
--

DROP TABLE IF EXISTS `invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `invitation_status_enum` varchar(255) DEFAULT NULL,
  `message` varchar(1024) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `from_user_id` bigint(20) DEFAULT NULL,
  `target_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcnso622rs818t3edbvdj8eyl` (`creator_id`),
  KEY `FKh2h29681bcs7vu39b2yc00l36` (`modifier_id`),
  KEY `FKlf1xla04nthxyrb69yfjpgsas` (`user_id`),
  KEY `FK3e3ss8sjn2k947jeykoboag10` (`from_user_id`),
  KEY `FKkd1esmlr96sby8abr6jy07hrm` (`target_user_id`),
  CONSTRAINT `FK3e3ss8sjn2k947jeykoboag10` FOREIGN KEY (`from_user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK5gc65d43pqhxifvh7wxr5dr1v` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKcnso622rs818t3edbvdj8eyl` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKe0lx1tp1p4s8frnniojlcx2k7` FOREIGN KEY (`target_user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKegclbyu0tq7sxw1f1qqdbfn9d` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKh2h29681bcs7vu39b2yc00l36` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKkd1esmlr96sby8abr6jy07hrm` FOREIGN KEY (`target_user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKlf1xla04nthxyrb69yfjpgsas` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKp5g1fyw4i6npc1ncjpys6e5wu` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKrhwfvbf2vt9w8436rqkm7b4jx` FOREIGN KEY (`from_user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation`
--

LOCK TABLES `invitation` WRITE;
/*!40000 ALTER TABLE `invitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(16) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_g8hr207ijpxlwu10pewyo65gv` (`name`),
  KEY `FK8oo1j9xpfrtn1fl0mktwk2j67` (`creator_id`),
  KEY `FKphhcdtosvufne98b9b9uw4l8r` (`modifier_id`),
  KEY `FK3ska8fv8rmsvmgpenaoovsu1o` (`user_id`),
  CONSTRAINT `FK3ska8fv8rmsvmgpenaoovsu1o` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK8g87j76s8e4r04i9tafr535yn` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK8oo1j9xpfrtn1fl0mktwk2j67` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKbeoo2n1n0etmvoxpi6gxthu89` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKphhcdtosvufne98b9b9uw4l8r` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKrothknn2p1tsfgsfxj09caawk` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_group`
--

DROP TABLE IF EXISTS `member_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `name` double NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `threshold` bigint(20) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_369i8xpxtep2ve5nut3yrj6g6` (`name`),
  KEY `FKg3xkg7ejjbok2oxh4wsv4fwgy` (`creator_id`),
  KEY `FKsofu01j3tq6dngv04s0fnd89` (`modifier_id`),
  KEY `FKrh3ytgh1cux5kef4tougnukco` (`user_id`),
  CONSTRAINT `FKcxm2gpekkqscirkbuviibs5vp` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKg3xkg7ejjbok2oxh4wsv4fwgy` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKhw7kv04okg2fmcofppod3pwo2` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKnd6tywoskesr63ne8lklvtpv3` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKrh3ytgh1cux5kef4tougnukco` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKsofu01j3tq6dngv04s0fnd89` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_group`
--

LOCK TABLES `member_group` WRITE;
/*!40000 ALTER TABLE `member_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_log`
--

DROP TABLE IF EXISTS `message_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `resp` varchar(1024) DEFAULT NULL,
  `send_to` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpyij0rk5c1p7spbw61q8jluoo` (`creator_id`),
  KEY `FKtd12cigm3ud1pgxoreq114495` (`modifier_id`),
  KEY `FKlv62sv2w71fqymx0dl0866jlx` (`user_id`),
  CONSTRAINT `FK45vjtkrkg4hk8r6c85b6a7e0d` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKhpx89u6v8b7uoyli2fq8901dj` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKlv62sv2w71fqymx0dl0866jlx` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKpyij0rk5c1p7spbw61q8jluoo` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKsnh4d88t4iw6mqsffhdfy2gng` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKtd12cigm3ud1pgxoreq114495` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_log`
--

LOCK TABLES `message_log` WRITE;
/*!40000 ALTER TABLE `message_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_template`
--

DROP TABLE IF EXISTS `message_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeruhfwav8m9sgalua4blffinf` (`creator_id`),
  KEY `FKg2p2gdqgh0ho2tfj8i6xke9aw` (`modifier_id`),
  KEY `FKp7jyf5tu9t6f4l5a6uby73mhk` (`user_id`),
  CONSTRAINT `FKbkqxx4eeufr4edbl124kadja2` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKdmofgownxpclgim8gb93wfb07` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKeruhfwav8m9sgalua4blffinf` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKg2p2gdqgh0ho2tfj8i6xke9aw` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKh963rl1y1qmarn07e0bb2bgtx` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKp7jyf5tu9t6f4l5a6uby73mhk` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_template`
--

LOCK TABLES `message_template` WRITE;
/*!40000 ALTER TABLE `message_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_api_log`
--

DROP TABLE IF EXISTS `payment_api_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_api_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `param_type` varchar(255) DEFAULT NULL,
  `request` text,
  `request_body` text,
  `request_param` text,
  `response` text,
  `response_body` text,
  `response_param` text,
  `url` varchar(512) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgxpli3gx5bpr3r696piu9wq47` (`creator_id`),
  KEY `FK6aepe8jitlnbp1j5c3fwogofe` (`modifier_id`),
  KEY `FK76u4fhwpbfec45gts9cp8ap2x` (`user_id`),
  CONSTRAINT `FK6aepe8jitlnbp1j5c3fwogofe` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK76u4fhwpbfec45gts9cp8ap2x` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKgxpli3gx5bpr3r696piu9wq47` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_api_log`
--

LOCK TABLES `payment_api_log` WRITE;
/*!40000 ALTER TABLE `payment_api_log` DISABLE KEYS */;
INSERT INTO `payment_api_log` VALUES (1,'2019-01-06 23:51:18.169','2019-01-06 23:51:18.169',0,'POLIPAY','REQUESTBODY','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20190107125104\",\"userId\":null,\"payAmount\":337.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20190107125104\",\"userId\":null,\"payAmount\":337.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}',NULL,'{\"customerOrderId\":\"BD20190107125104\",\"systemOrderId\":\"POLIPAY-20190107125117-A26370B7\",\"gatewayOrderId\":\"Lj448qpRLV2blXsNtvUgrSaXBOyjjQpb\",\"gatewayReference\":\"996454055281\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":337.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=Lj448qpRLV2blXsNtvUgrSaXBOyjjQpb\"}','{\"customerOrderId\":\"BD20190107125104\",\"systemOrderId\":\"POLIPAY-20190107125117-A26370B7\",\"gatewayOrderId\":\"Lj448qpRLV2blXsNtvUgrSaXBOyjjQpb\",\"gatewayReference\":\"996454055281\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":337.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=Lj448qpRLV2blXsNtvUgrSaXBOyjjQpb\"}',NULL,NULL,213,213,NULL),(2,'2019-01-08 16:14:24.776','2019-01-08 16:14:24.776',0,'POLIPAY','REQUESTBODY','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20190109051141\",\"userId\":null,\"payAmount\":262.6,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20190109051141\",\"userId\":null,\"payAmount\":262.6,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}',NULL,'{\"customerOrderId\":\"BD20190109051141\",\"systemOrderId\":\"POLIPAY-20190109051424-420B9A47\",\"gatewayOrderId\":\"acVgkgXVJTPNO+qtCBXDXfj3H8VRbCoA\",\"gatewayReference\":\"996454123820\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":262.6,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=acVgkgXVJTPNO%2bqtCBXDXfj3H8VRbCoA\"}','{\"customerOrderId\":\"BD20190109051141\",\"systemOrderId\":\"POLIPAY-20190109051424-420B9A47\",\"gatewayOrderId\":\"acVgkgXVJTPNO+qtCBXDXfj3H8VRbCoA\",\"gatewayReference\":\"996454123820\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":262.6,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=acVgkgXVJTPNO%2bqtCBXDXfj3H8VRbCoA\"}',NULL,NULL,214,214,NULL),(3,'2019-01-16 01:51:13.827','2019-01-16 01:51:13.827',0,'POLIPAY','REQUESTBODY','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20190109051141\",\"userId\":null,\"payAmount\":262.6,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20190109051141\",\"userId\":null,\"payAmount\":262.6,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}',NULL,'{\"customerOrderId\":\"BD20190109051141\",\"systemOrderId\":\"POLIPAY-20190116145113-8C8893A0\",\"gatewayOrderId\":\"vnWk9vZDDKuWiqV3uw+Trkd9R1NHbzWC\",\"gatewayReference\":\"996454400006\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":262.6,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=vnWk9vZDDKuWiqV3uw%2bTrkd9R1NHbzWC\"}','{\"customerOrderId\":\"BD20190109051141\",\"systemOrderId\":\"POLIPAY-20190116145113-8C8893A0\",\"gatewayOrderId\":\"vnWk9vZDDKuWiqV3uw+Trkd9R1NHbzWC\",\"gatewayReference\":\"996454400006\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":262.6,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=vnWk9vZDDKuWiqV3uw%2bTrkd9R1NHbzWC\"}',NULL,NULL,214,214,NULL),(4,'2019-01-16 02:23:56.238','2019-01-16 02:23:56.238',0,'POLIPAY','REQUESTBODY','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20190109051141\",\"userId\":null,\"payAmount\":262.6,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20190109051141\",\"userId\":null,\"payAmount\":262.6,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}',NULL,'{\"customerOrderId\":\"BD20190109051141\",\"systemOrderId\":\"POLIPAY-20190116152355-F3491653\",\"gatewayOrderId\":\"BXzPvIbGXVsRxow59gXSGr4wuZmkFiFD\",\"gatewayReference\":\"996454401361\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":262.6,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=BXzPvIbGXVsRxow59gXSGr4wuZmkFiFD\"}','{\"customerOrderId\":\"BD20190109051141\",\"systemOrderId\":\"POLIPAY-20190116152355-F3491653\",\"gatewayOrderId\":\"BXzPvIbGXVsRxow59gXSGr4wuZmkFiFD\",\"gatewayReference\":\"996454401361\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":262.6,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=BXzPvIbGXVsRxow59gXSGr4wuZmkFiFD\"}',NULL,NULL,214,214,NULL),(5,'2019-01-16 03:35:16.748','2019-01-16 03:35:16.748',0,'POLIPAY','REQUESTBODY','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20190104110344\",\"userId\":null,\"payAmount\":120.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20190104110344\",\"userId\":null,\"payAmount\":120.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}',NULL,'{\"customerOrderId\":\"BD20190104110344\",\"systemOrderId\":\"POLIPAY-20190116163516-F5860AC0\",\"gatewayOrderId\":\"AK0hr2aasLXD2N9N9S1cbDx6XYclT4+W\",\"gatewayReference\":\"996454404379\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":120.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=AK0hr2aasLXD2N9N9S1cbDx6XYclT4%2bW\"}','{\"customerOrderId\":\"BD20190104110344\",\"systemOrderId\":\"POLIPAY-20190116163516-F5860AC0\",\"gatewayOrderId\":\"AK0hr2aasLXD2N9N9S1cbDx6XYclT4+W\",\"gatewayReference\":\"996454404379\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":120.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=AK0hr2aasLXD2N9N9S1cbDx6XYclT4%2bW\"}',NULL,NULL,214,214,NULL),(6,'2019-01-16 03:41:27.867','2019-01-16 03:41:27.867',0,'POLIPAY','REQUESTBODY','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20190104110344\",\"userId\":null,\"payAmount\":120.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20190104110344\",\"userId\":null,\"payAmount\":120.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}',NULL,'{\"customerOrderId\":\"BD20190104110344\",\"systemOrderId\":\"POLIPAY-20190116164127-31D2F911\",\"gatewayOrderId\":\"G42/ALl1HFj+ffW2NL8SYgudz50hINTi\",\"gatewayReference\":\"996454404634\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":120.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=G42%2fALl1HFj%2bffW2NL8SYgudz50hINTi\"}','{\"customerOrderId\":\"BD20190104110344\",\"systemOrderId\":\"POLIPAY-20190116164127-31D2F911\",\"gatewayOrderId\":\"G42/ALl1HFj+ffW2NL8SYgudz50hINTi\",\"gatewayReference\":\"996454404634\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":120.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=G42%2fALl1HFj%2bffW2NL8SYgudz50hINTi\"}',NULL,NULL,214,214,NULL),(7,'2019-01-16 03:43:19.416','2019-01-16 03:43:19.416',0,'POLIPAY','REQUESTBODY','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20190104110344\",\"userId\":null,\"payAmount\":120.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20190104110344\",\"userId\":null,\"payAmount\":120.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}',NULL,'{\"customerOrderId\":\"BD20190104110344\",\"systemOrderId\":\"POLIPAY-20190116164319-64ED2B2A\",\"gatewayOrderId\":\"8DsuCk4RbTB9n52kh6oFoduomJ4g2eYq\",\"gatewayReference\":\"996454404714\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":120.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=8DsuCk4RbTB9n52kh6oFoduomJ4g2eYq\"}','{\"customerOrderId\":\"BD20190104110344\",\"systemOrderId\":\"POLIPAY-20190116164319-64ED2B2A\",\"gatewayOrderId\":\"8DsuCk4RbTB9n52kh6oFoduomJ4g2eYq\",\"gatewayReference\":\"996454404714\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":120.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=8DsuCk4RbTB9n52kh6oFoduomJ4g2eYq\"}',NULL,NULL,214,214,NULL),(8,'2019-01-16 03:56:09.812','2019-01-16 03:56:09.812',0,'POLIPAY','REQUESTBODY','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20181216230255\",\"userId\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20181216230255\",\"userId\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}',NULL,'{\"customerOrderId\":\"BD20181216230255\",\"systemOrderId\":\"POLIPAY-20190116165609-6FE0A691\",\"gatewayOrderId\":\"ph9IZE2Wnrsg/Sf9SHhVCimlb4Gvs0rI\",\"gatewayReference\":\"996454405208\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=ph9IZE2Wnrsg%2fSf9SHhVCimlb4Gvs0rI\"}','{\"customerOrderId\":\"BD20181216230255\",\"systemOrderId\":\"POLIPAY-20190116165609-6FE0A691\",\"gatewayOrderId\":\"ph9IZE2Wnrsg/Sf9SHhVCimlb4Gvs0rI\",\"gatewayReference\":\"996454405208\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=ph9IZE2Wnrsg%2fSf9SHhVCimlb4Gvs0rI\"}',NULL,NULL,214,214,NULL),(9,'2019-01-16 03:56:10.054','2019-01-16 03:56:10.054',0,'POLIPAY','REQUESTBODY','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20181216230255\",\"userId\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20181216230255\",\"userId\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}',NULL,'{\"customerOrderId\":\"BD20181216230255\",\"systemOrderId\":\"POLIPAY-20190116165609-32A0E1B7\",\"gatewayOrderId\":\"6H7Za3RgIr8AhLqv3Y0ssdVTIcEt6HtX\",\"gatewayReference\":\"996454405209\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=6H7Za3RgIr8AhLqv3Y0ssdVTIcEt6HtX\"}','{\"customerOrderId\":\"BD20181216230255\",\"systemOrderId\":\"POLIPAY-20190116165609-32A0E1B7\",\"gatewayOrderId\":\"6H7Za3RgIr8AhLqv3Y0ssdVTIcEt6HtX\",\"gatewayReference\":\"996454405209\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=6H7Za3RgIr8AhLqv3Y0ssdVTIcEt6HtX\"}',NULL,NULL,214,214,NULL),(10,'2019-01-16 04:01:31.703','2019-01-16 04:01:31.703',0,'POLIPAY','REQUESTBODY','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"MALL-20181216214009-1B03BE16\",\"userId\":null,\"payAmount\":178.1,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"MALL-20181216214009-1B03BE16\",\"userId\":null,\"payAmount\":178.1,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}',NULL,'{\"customerOrderId\":\"MALL-20181216214009-1B03BE16\",\"systemOrderId\":\"POLIPAY-20190116170130-94E1E2FA\",\"gatewayOrderId\":\"KVPwmBVeYs8mjdtOxh1Tjb4o3PR9plui\",\"gatewayReference\":\"996454405445\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":178.1,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=KVPwmBVeYs8mjdtOxh1Tjb4o3PR9plui\"}','{\"customerOrderId\":\"MALL-20181216214009-1B03BE16\",\"systemOrderId\":\"POLIPAY-20190116170130-94E1E2FA\",\"gatewayOrderId\":\"KVPwmBVeYs8mjdtOxh1Tjb4o3PR9plui\",\"gatewayReference\":\"996454405445\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":178.1,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=KVPwmBVeYs8mjdtOxh1Tjb4o3PR9plui\"}',NULL,NULL,214,214,NULL),(11,'2019-01-16 04:03:55.730','2019-01-16 04:03:55.730',0,'POLIPAY','REQUESTBODY','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"MALL-20181216214009-1B03BE16\",\"userId\":null,\"payAmount\":178.1,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"MALL-20181216214009-1B03BE16\",\"userId\":null,\"payAmount\":178.1,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}',NULL,'{\"customerOrderId\":\"MALL-20181216214009-1B03BE16\",\"systemOrderId\":\"POLIPAY-20190116170355-E610CB65\",\"gatewayOrderId\":\"4XcTUv1mTBDz9/sc/pSOqWMkLH3WiwMC\",\"gatewayReference\":\"996454405556\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":178.1,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=4XcTUv1mTBDz9%2fsc%2fpSOqWMkLH3WiwMC\"}','{\"customerOrderId\":\"MALL-20181216214009-1B03BE16\",\"systemOrderId\":\"POLIPAY-20190116170355-E610CB65\",\"gatewayOrderId\":\"4XcTUv1mTBDz9/sc/pSOqWMkLH3WiwMC\",\"gatewayReference\":\"996454405556\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":178.1,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=4XcTUv1mTBDz9%2fsc%2fpSOqWMkLH3WiwMC\"}',NULL,NULL,214,214,NULL),(12,'2019-01-18 02:50:54.821','2019-01-18 02:50:54.821',0,'POLIPAY','REQUESTBODY','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20181216230255\",\"userId\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20181216230255\",\"userId\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}',NULL,'{\"customerOrderId\":\"BD20181216230255\",\"systemOrderId\":\"POLIPAY-20190118155054-117D0788\",\"gatewayOrderId\":\"LV70yDJ7haXn/kKllw9rhddI22IZYIkt\",\"gatewayReference\":\"996454491130\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=LV70yDJ7haXn%2fkKllw9rhddI22IZYIkt\"}','{\"customerOrderId\":\"BD20181216230255\",\"systemOrderId\":\"POLIPAY-20190118155054-117D0788\",\"gatewayOrderId\":\"LV70yDJ7haXn/kKllw9rhddI22IZYIkt\",\"gatewayReference\":\"996454491130\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=LV70yDJ7haXn%2fkKllw9rhddI22IZYIkt\"}',NULL,NULL,214,214,NULL),(13,'2019-01-18 02:57:18.580','2019-01-18 02:57:18.580',0,'POLIPAY','REQUESTBODY','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20181216230255\",\"userId\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20181216230255\",\"userId\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}',NULL,'{\"customerOrderId\":\"BD20181216230255\",\"systemOrderId\":\"POLIPAY-20190118155718-4015ED06\",\"gatewayOrderId\":\"i9tzoI1Qp/csuCFeZ5E28dbDEqobFunU\",\"gatewayReference\":\"996454491380\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=i9tzoI1Qp%2fcsuCFeZ5E28dbDEqobFunU\"}','{\"customerOrderId\":\"BD20181216230255\",\"systemOrderId\":\"POLIPAY-20190118155718-4015ED06\",\"gatewayOrderId\":\"i9tzoI1Qp/csuCFeZ5E28dbDEqobFunU\",\"gatewayReference\":\"996454491380\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=i9tzoI1Qp%2fcsuCFeZ5E28dbDEqobFunU\"}',NULL,NULL,214,214,NULL),(14,'2019-01-18 02:59:25.799','2019-01-18 02:59:25.799',0,'POLIPAY','REQUESTBODY','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20181216230255\",\"userId\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20181216230255\",\"userId\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}',NULL,'{\"customerOrderId\":\"BD20181216230255\",\"systemOrderId\":\"POLIPAY-20190118155925-039316F6\",\"gatewayOrderId\":\"BtfjTnq1+QqvOQ+rApabBicH3ivP/JdT\",\"gatewayReference\":\"996454491466\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=BtfjTnq1%2bQqvOQ%2brApabBicH3ivP%2fJdT\"}','{\"customerOrderId\":\"BD20181216230255\",\"systemOrderId\":\"POLIPAY-20190118155925-039316F6\",\"gatewayOrderId\":\"BtfjTnq1+QqvOQ+rApabBicH3ivP/JdT\",\"gatewayReference\":\"996454491466\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=BtfjTnq1%2bQqvOQ%2brApabBicH3ivP%2fJdT\"}',NULL,NULL,214,214,NULL),(15,'2019-01-18 03:01:32.334','2019-01-18 03:01:32.334',0,'POLIPAY','REQUESTBODY','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20181216230255\",\"userId\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20181216230255\",\"userId\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}',NULL,'{\"customerOrderId\":\"BD20181216230255\",\"systemOrderId\":\"POLIPAY-20190118160132-63E055D8\",\"gatewayOrderId\":\"tIOh7MdzEAW+/U6565c3Z5ghc7Pa6yaT\",\"gatewayReference\":\"996454491557\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=tIOh7MdzEAW%2b%2fU6565c3Z5ghc7Pa6yaT\"}','{\"customerOrderId\":\"BD20181216230255\",\"systemOrderId\":\"POLIPAY-20190118160132-63E055D8\",\"gatewayOrderId\":\"tIOh7MdzEAW+/U6565c3Z5ghc7Pa6yaT\",\"gatewayReference\":\"996454491557\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":155.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=tIOh7MdzEAW%2b%2fU6565c3Z5ghc7Pa6yaT\"}',NULL,NULL,214,214,NULL),(16,'2019-01-21 02:21:06.138','2019-01-21 02:21:06.138',0,'POLIPAY','REQUESTBODY','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20190121152058\",\"userId\":null,\"payAmount\":255.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}','{\"serviceName\":\"intellimall\",\"gateway\":\"POLIPAY\",\"customerOrderId\":\"BD20190121152058\",\"userId\":null,\"payAmount\":255.5,\"currency\":\"NZD\",\"redirectUrl\":\"http://www.b2c.kiwi/api/v1/transaction-single/redirect\",\"callbackUrl\":null}',NULL,'{\"customerOrderId\":\"BD20190121152058\",\"systemOrderId\":\"POLIPAY-20190121152105-4C41BDDE\",\"gatewayOrderId\":\"sTjecQWqgPhbJmmfx7VkiQE4XnvOVdv7\",\"gatewayReference\":\"996454580997\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":255.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=sTjecQWqgPhbJmmfx7VkiQE4XnvOVdv7\"}','{\"customerOrderId\":\"BD20190121152058\",\"systemOrderId\":\"POLIPAY-20190121152105-4C41BDDE\",\"gatewayOrderId\":\"sTjecQWqgPhbJmmfx7VkiQE4XnvOVdv7\",\"gatewayReference\":\"996454580997\",\"gateway\":\"POLIPAY\",\"payType\":null,\"payAmount\":255.5,\"currency\":\"NZD\",\"status\":\"PENDING\",\"payUrl\":\"https://txn.apac.paywithpoli.com/?Token=sTjecQWqgPhbJmmfx7VkiQE4XnvOVdv7\"}',NULL,NULL,214,214,NULL);
/*!40000 ALTER TABLE `payment_api_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_gateway_log`
--

DROP TABLE IF EXISTS `payment_gateway_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_gateway_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `request` text,
  `response` text,
  `url` varchar(512) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `param_type` varchar(255) DEFAULT NULL,
  `request_body` text,
  `request_param` text,
  `response_body` text,
  `response_param` text,
  PRIMARY KEY (`id`),
  KEY `FKcaqcuw2vl7fyy774ydx321c1w` (`creator_id`),
  KEY `FK3qsj9k6rpptuoevn4fb0kghtx` (`modifier_id`),
  KEY `FKhsiimemol2m2ba8ositocgf2f` (`user_id`),
  CONSTRAINT `FK3qsj9k6rpptuoevn4fb0kghtx` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKcaqcuw2vl7fyy774ydx321c1w` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKhsiimemol2m2ba8ositocgf2f` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_gateway_log`
--

LOCK TABLES `payment_gateway_log` WRITE;
/*!40000 ALTER TABLE `payment_gateway_log` DISABLE KEYS */;
INSERT INTO `payment_gateway_log` VALUES (1,'2019-01-06 23:51:18.109','2019-01-06 23:51:18.109',0,'POLIPAY','{\"amount\":\"337.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190107125117-A26370B7\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://b2c.kiwi/api/\",\"successURL\":\"http://b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}','{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=Lj448qpRLV2blXsNtvUgrSaXBOyjjQpb, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454055281}',NULL,213,213,NULL,'REQUESTBODY','{\"amount\":\"337.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190107125117-A26370B7\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://b2c.kiwi/api/\",\"successURL\":\"http://b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}',NULL,NULL,'{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=Lj448qpRLV2blXsNtvUgrSaXBOyjjQpb, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454055281}'),(2,'2019-01-08 16:14:24.687','2019-01-08 16:14:24.687',0,'POLIPAY','{\"amount\":\"262.6\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190109051424-420B9A47\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}','{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=acVgkgXVJTPNO%2bqtCBXDXfj3H8VRbCoA, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454123820}',NULL,214,214,NULL,'REQUESTBODY','{\"amount\":\"262.6\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190109051424-420B9A47\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}',NULL,NULL,'{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=acVgkgXVJTPNO%2bqtCBXDXfj3H8VRbCoA, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454123820}'),(3,'2019-01-16 01:51:13.806','2019-01-16 01:51:13.806',0,'POLIPAY','{\"amount\":\"262.6\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190116145113-8C8893A0\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}','{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=vnWk9vZDDKuWiqV3uw%2bTrkd9R1NHbzWC, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454400006}',NULL,214,214,NULL,'REQUESTBODY','{\"amount\":\"262.6\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190116145113-8C8893A0\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}',NULL,NULL,'{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=vnWk9vZDDKuWiqV3uw%2bTrkd9R1NHbzWC, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454400006}'),(4,'2019-01-16 02:23:56.217','2019-01-16 02:23:56.217',0,'POLIPAY','{\"amount\":\"262.6\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190116152355-F3491653\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}','{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=BXzPvIbGXVsRxow59gXSGr4wuZmkFiFD, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454401361}',NULL,214,214,NULL,'REQUESTBODY','{\"amount\":\"262.6\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190116152355-F3491653\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}',NULL,NULL,'{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=BXzPvIbGXVsRxow59gXSGr4wuZmkFiFD, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454401361}'),(5,'2019-01-16 02:24:39.986','2019-01-16 02:24:39.986',0,'POLIPAY','PolipayRedirectReq(token=BXzPvIbGXVsRxow59gXSGr4wuZmkFiFD)','{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=dea2d9cc-1bf2-4912-8bac-98dd40a1619f, MerchantEstablishedDateTime=2019-01-16T13:23:56.117, PayerAccountNumber=98742364, PayerAccountSortCode=123456, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=Completed, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=138.68.8.149, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454401361, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=262.6, AmountPaid=262.6, EstablishedDateTime=2019-01-16T13:23:56.143, StartDateTime=2019-01-16T13:23:56.143, EndDateTime=2019-01-16T13:24:37.177, BankReceipt=67958129-374475, BankReceiptDateTime=16 January 2019 13:24:37, TransactionStatusCode=Completed, ErrorCode=null, ErrorMessage=, FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190116152355-F3491653, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=Mr, PayerFamilyName=DemoShopper, PayerAccountSuffix=}',NULL,NULL,NULL,NULL,'REQUESTPARAM',NULL,'PolipayRedirectReq(token=BXzPvIbGXVsRxow59gXSGr4wuZmkFiFD)',NULL,'{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=dea2d9cc-1bf2-4912-8bac-98dd40a1619f, MerchantEstablishedDateTime=2019-01-16T13:23:56.117, PayerAccountNumber=98742364, PayerAccountSortCode=123456, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=Completed, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=138.68.8.149, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454401361, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=262.6, AmountPaid=262.6, EstablishedDateTime=2019-01-16T13:23:56.143, StartDateTime=2019-01-16T13:23:56.143, EndDateTime=2019-01-16T13:24:37.177, BankReceipt=67958129-374475, BankReceiptDateTime=16 January 2019 13:24:37, TransactionStatusCode=Completed, ErrorCode=null, ErrorMessage=, FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190116152355-F3491653, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=Mr, PayerFamilyName=DemoShopper, PayerAccountSuffix=}'),(6,'2019-01-16 03:35:16.639','2019-01-16 03:35:16.639',0,'POLIPAY','{\"amount\":\"120.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190116163516-F5860AC0\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}','{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=AK0hr2aasLXD2N9N9S1cbDx6XYclT4%2bW, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454404379}',NULL,214,214,NULL,'REQUESTBODY','{\"amount\":\"120.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190116163516-F5860AC0\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}',NULL,NULL,'{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=AK0hr2aasLXD2N9N9S1cbDx6XYclT4%2bW, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454404379}'),(7,'2019-01-16 03:38:00.046','2019-01-16 03:38:00.046',0,'POLIPAY','PolipayRedirectReq(token=AK0hr2aasLXD2N9N9S1cbDx6XYclT4+W)','{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=8166cdcb-df3e-4a89-99db-46570d16dd24, MerchantEstablishedDateTime=2019-01-16T14:35:16.507, PayerAccountNumber=, PayerAccountSortCode=, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=Cancelled, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=138.68.8.149, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454404379, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=120.5, AmountPaid=0.0, EstablishedDateTime=2019-01-16T14:35:16.533, StartDateTime=2019-01-16T14:35:16.533, EndDateTime=2019-01-16T14:37:57.48, BankReceipt=, BankReceiptDateTime=, TransactionStatusCode=Cancelled, ErrorCode=null, ErrorMessage=, FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190116163516-F5860AC0, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=Mr, PayerFamilyName=DemoShopper, PayerAccountSuffix=}',NULL,NULL,NULL,NULL,'REQUESTPARAM',NULL,'PolipayRedirectReq(token=AK0hr2aasLXD2N9N9S1cbDx6XYclT4+W)',NULL,'{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=8166cdcb-df3e-4a89-99db-46570d16dd24, MerchantEstablishedDateTime=2019-01-16T14:35:16.507, PayerAccountNumber=, PayerAccountSortCode=, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=Cancelled, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=138.68.8.149, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454404379, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=120.5, AmountPaid=0.0, EstablishedDateTime=2019-01-16T14:35:16.533, StartDateTime=2019-01-16T14:35:16.533, EndDateTime=2019-01-16T14:37:57.48, BankReceipt=, BankReceiptDateTime=, TransactionStatusCode=Cancelled, ErrorCode=null, ErrorMessage=, FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190116163516-F5860AC0, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=Mr, PayerFamilyName=DemoShopper, PayerAccountSuffix=}'),(8,'2019-01-16 03:41:27.849','2019-01-16 03:41:27.849',0,'POLIPAY','{\"amount\":\"120.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190116164127-31D2F911\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}','{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=G42%2fALl1HFj%2bffW2NL8SYgudz50hINTi, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454404634}',NULL,214,214,NULL,'REQUESTBODY','{\"amount\":\"120.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190116164127-31D2F911\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}',NULL,NULL,'{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=G42%2fALl1HFj%2bffW2NL8SYgudz50hINTi, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454404634}'),(9,'2019-01-16 03:42:33.353','2019-01-16 03:42:33.353',0,'POLIPAY','PolipayRedirectReq(token=G42/ALl1HFj+ffW2NL8SYgudz50hINTi)','{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=922aa498-3a3f-4787-a809-329686e7e735, MerchantEstablishedDateTime=2019-01-16T14:41:27.73, PayerAccountNumber=52466164, PayerAccountSortCode=123456, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=ReceiptUnverified, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=138.68.8.149, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454404634, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=120.5, AmountPaid=0.0, EstablishedDateTime=2019-01-16T14:41:27.74, StartDateTime=2019-01-16T14:41:27.74, EndDateTime=2019-01-16T14:42:22.13, BankReceipt=, BankReceiptDateTime=, TransactionStatusCode=ReceiptUnverified, ErrorCode=4005, ErrorMessage=POLi has encountered an unexpected bank page. This may be due to a new or changed bank page. Our support team has been advised of the error and will address this error as soon as possible.;Please retry your POLi payment. If the error persists, please re-attempt your payment at another time., FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190116164127-31D2F911, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=Mr, PayerFamilyName=Shopper10, PayerAccountSuffix=}',NULL,NULL,NULL,NULL,'REQUESTPARAM',NULL,'PolipayRedirectReq(token=G42/ALl1HFj+ffW2NL8SYgudz50hINTi)',NULL,'{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=922aa498-3a3f-4787-a809-329686e7e735, MerchantEstablishedDateTime=2019-01-16T14:41:27.73, PayerAccountNumber=52466164, PayerAccountSortCode=123456, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=ReceiptUnverified, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=138.68.8.149, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454404634, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=120.5, AmountPaid=0.0, EstablishedDateTime=2019-01-16T14:41:27.74, StartDateTime=2019-01-16T14:41:27.74, EndDateTime=2019-01-16T14:42:22.13, BankReceipt=, BankReceiptDateTime=, TransactionStatusCode=ReceiptUnverified, ErrorCode=4005, ErrorMessage=POLi has encountered an unexpected bank page. This may be due to a new or changed bank page. Our support team has been advised of the error and will address this error as soon as possible.;Please retry your POLi payment. If the error persists, please re-attempt your payment at another time., FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190116164127-31D2F911, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=Mr, PayerFamilyName=Shopper10, PayerAccountSuffix=}'),(10,'2019-01-16 03:43:19.406','2019-01-16 03:43:19.406',0,'POLIPAY','{\"amount\":\"120.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190116164319-64ED2B2A\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}','{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=8DsuCk4RbTB9n52kh6oFoduomJ4g2eYq, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454404714}',NULL,214,214,NULL,'REQUESTBODY','{\"amount\":\"120.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190116164319-64ED2B2A\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}',NULL,NULL,'{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=8DsuCk4RbTB9n52kh6oFoduomJ4g2eYq, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454404714}'),(11,'2019-01-16 03:44:17.694','2019-01-16 03:44:17.694',0,'POLIPAY','PolipayRedirectReq(token=8DsuCk4RbTB9n52kh6oFoduomJ4g2eYq)','{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=e0264455-f182-4913-8836-c0162efbee3b, MerchantEstablishedDateTime=2019-01-16T14:43:19.34, PayerAccountNumber=98742364, PayerAccountSortCode=123456, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=Completed, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=138.68.8.149, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454404714, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=120.5, AmountPaid=120.5, EstablishedDateTime=2019-01-16T14:43:19.343, StartDateTime=2019-01-16T14:43:19.343, EndDateTime=2019-01-16T14:44:14.44, BankReceipt=16597434-374489, BankReceiptDateTime=16 January 2019 14:44:14, TransactionStatusCode=Completed, ErrorCode=null, ErrorMessage=, FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190116164319-64ED2B2A, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=Mr, PayerFamilyName=DemoShopper, PayerAccountSuffix=}',NULL,NULL,NULL,NULL,'REQUESTPARAM',NULL,'PolipayRedirectReq(token=8DsuCk4RbTB9n52kh6oFoduomJ4g2eYq)',NULL,'{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=e0264455-f182-4913-8836-c0162efbee3b, MerchantEstablishedDateTime=2019-01-16T14:43:19.34, PayerAccountNumber=98742364, PayerAccountSortCode=123456, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=Completed, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=138.68.8.149, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454404714, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=120.5, AmountPaid=120.5, EstablishedDateTime=2019-01-16T14:43:19.343, StartDateTime=2019-01-16T14:43:19.343, EndDateTime=2019-01-16T14:44:14.44, BankReceipt=16597434-374489, BankReceiptDateTime=16 January 2019 14:44:14, TransactionStatusCode=Completed, ErrorCode=null, ErrorMessage=, FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190116164319-64ED2B2A, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=Mr, PayerFamilyName=DemoShopper, PayerAccountSuffix=}'),(12,'2019-01-16 03:56:09.783','2019-01-16 03:56:09.783',0,'POLIPAY','{\"amount\":\"155.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190116165609-6FE0A691\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}','{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=ph9IZE2Wnrsg%2fSf9SHhVCimlb4Gvs0rI, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454405208}',NULL,214,214,NULL,'REQUESTBODY','{\"amount\":\"155.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190116165609-6FE0A691\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}',NULL,NULL,'{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=ph9IZE2Wnrsg%2fSf9SHhVCimlb4Gvs0rI, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454405208}'),(13,'2019-01-16 03:56:10.034','2019-01-16 03:56:10.034',0,'POLIPAY','{\"amount\":\"155.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190116165609-32A0E1B7\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}','{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=6H7Za3RgIr8AhLqv3Y0ssdVTIcEt6HtX, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454405209}',NULL,214,214,NULL,'REQUESTBODY','{\"amount\":\"155.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190116165609-32A0E1B7\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}',NULL,NULL,'{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=6H7Za3RgIr8AhLqv3Y0ssdVTIcEt6HtX, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454405209}'),(14,'2019-01-16 03:57:08.646','2019-01-16 03:57:08.646',0,'POLIPAY','PolipayRedirectReq(token=6H7Za3RgIr8AhLqv3Y0ssdVTIcEt6HtX)','{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=a2a299e8-12fb-4c76-ac88-03ef87c97e8a, MerchantEstablishedDateTime=2019-01-16T14:56:09.943, PayerAccountNumber=, PayerAccountSortCode=, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=Failed, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=138.68.8.149, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454405209, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=155.5, AmountPaid=0.0, EstablishedDateTime=2019-01-16T14:56:09.97, StartDateTime=2019-01-16T14:56:09.97, EndDateTime=2019-01-16T14:57:01.46, BankReceipt=, BankReceiptDateTime=, TransactionStatusCode=Failed, ErrorCode=4005, ErrorMessage=POLi has encountered an unexpected bank page. This may be due to a new or changed bank page. Our support team has been advised of the error and will address this error as soon as possible.;Please retry your POLi payment. If the error persists, please re-attempt your payment at another time., FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190116165609-32A0E1B7, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=Mr, PayerFamilyName=DemoShopper, PayerAccountSuffix=}',NULL,NULL,NULL,NULL,'REQUESTPARAM',NULL,'PolipayRedirectReq(token=6H7Za3RgIr8AhLqv3Y0ssdVTIcEt6HtX)',NULL,'{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=a2a299e8-12fb-4c76-ac88-03ef87c97e8a, MerchantEstablishedDateTime=2019-01-16T14:56:09.943, PayerAccountNumber=, PayerAccountSortCode=, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=Failed, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=138.68.8.149, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454405209, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=155.5, AmountPaid=0.0, EstablishedDateTime=2019-01-16T14:56:09.97, StartDateTime=2019-01-16T14:56:09.97, EndDateTime=2019-01-16T14:57:01.46, BankReceipt=, BankReceiptDateTime=, TransactionStatusCode=Failed, ErrorCode=4005, ErrorMessage=POLi has encountered an unexpected bank page. This may be due to a new or changed bank page. Our support team has been advised of the error and will address this error as soon as possible.;Please retry your POLi payment. If the error persists, please re-attempt your payment at another time., FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190116165609-32A0E1B7, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=Mr, PayerFamilyName=DemoShopper, PayerAccountSuffix=}'),(15,'2019-01-16 04:01:31.608','2019-01-16 04:01:31.608',0,'POLIPAY','{\"amount\":\"178.1\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190116170130-94E1E2FA\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}','{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=KVPwmBVeYs8mjdtOxh1Tjb4o3PR9plui, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454405445}',NULL,214,214,NULL,'REQUESTBODY','{\"amount\":\"178.1\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190116170130-94E1E2FA\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}',NULL,NULL,'{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=KVPwmBVeYs8mjdtOxh1Tjb4o3PR9plui, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454405445}'),(16,'2019-01-16 04:03:34.311','2019-01-16 04:03:34.311',0,'POLIPAY','{Token=KVPwmBVeYs8mjdtOxh1Tjb4o3PR9plui}','',NULL,NULL,NULL,NULL,'REQUESTPARAM',NULL,'{Token=KVPwmBVeYs8mjdtOxh1Tjb4o3PR9plui}',NULL,''),(17,'2019-01-16 04:03:55.708','2019-01-16 04:03:55.708',0,'POLIPAY','{\"amount\":\"178.1\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190116170355-E610CB65\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}','{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=4XcTUv1mTBDz9%2fsc%2fpSOqWMkLH3WiwMC, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454405556}',NULL,214,214,NULL,'REQUESTBODY','{\"amount\":\"178.1\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190116170355-E610CB65\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}',NULL,NULL,'{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=4XcTUv1mTBDz9%2fsc%2fpSOqWMkLH3WiwMC, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454405556}'),(18,'2019-01-16 04:04:37.015','2019-01-16 04:04:37.015',0,'POLIPAY','{Token=4XcTUv1mTBDz9/sc/pSOqWMkLH3WiwMC}','',NULL,NULL,NULL,NULL,'REQUESTPARAM',NULL,'{Token=4XcTUv1mTBDz9/sc/pSOqWMkLH3WiwMC}',NULL,''),(19,'2019-01-16 04:04:40.036','2019-01-16 04:04:40.036',0,'POLIPAY','PolipayRedirectReq(token=4XcTUv1mTBDz9/sc/pSOqWMkLH3WiwMC)','{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=793e6d3f-d368-4c12-98e7-ddb6f0354ab6, MerchantEstablishedDateTime=2019-01-16T15:03:55.653, PayerAccountNumber=98742364, PayerAccountSortCode=123456, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=Completed, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=123.149.139.187, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454405556, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=178.1, AmountPaid=178.1, EstablishedDateTime=2019-01-16T15:03:55.68, StartDateTime=2019-01-16T15:03:55.68, EndDateTime=2019-01-16T15:04:36.25, BankReceipt=29358491-374491, BankReceiptDateTime=16 January 2019 15:04:36, TransactionStatusCode=Completed, ErrorCode=null, ErrorMessage=, FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190116170355-E610CB65, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=Mr, PayerFamilyName=DemoShopper, PayerAccountSuffix=}',NULL,NULL,NULL,NULL,'REQUESTPARAM',NULL,'PolipayRedirectReq(token=4XcTUv1mTBDz9/sc/pSOqWMkLH3WiwMC)',NULL,'{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=793e6d3f-d368-4c12-98e7-ddb6f0354ab6, MerchantEstablishedDateTime=2019-01-16T15:03:55.653, PayerAccountNumber=98742364, PayerAccountSortCode=123456, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=Completed, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=123.149.139.187, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454405556, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=178.1, AmountPaid=178.1, EstablishedDateTime=2019-01-16T15:03:55.68, StartDateTime=2019-01-16T15:03:55.68, EndDateTime=2019-01-16T15:04:36.25, BankReceipt=29358491-374491, BankReceiptDateTime=16 January 2019 15:04:36, TransactionStatusCode=Completed, ErrorCode=null, ErrorMessage=, FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190116170355-E610CB65, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=Mr, PayerFamilyName=DemoShopper, PayerAccountSuffix=}'),(20,'2019-01-16 04:20:36.454','2019-01-16 04:20:36.454',0,'POLIPAY','{Token=ph9IZE2Wnrsg/Sf9SHhVCimlb4Gvs0rI}','',NULL,NULL,NULL,NULL,'REQUESTPARAM',NULL,'{Token=ph9IZE2Wnrsg/Sf9SHhVCimlb4Gvs0rI}',NULL,''),(21,'2019-01-18 02:50:54.806','2019-01-18 02:50:54.806',0,'POLIPAY','{\"amount\":\"155.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190118155054-117D0788\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}','{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=LV70yDJ7haXn%2fkKllw9rhddI22IZYIkt, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454491130}',NULL,214,214,NULL,'REQUESTBODY','{\"amount\":\"155.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190118155054-117D0788\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}',NULL,NULL,'{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=LV70yDJ7haXn%2fkKllw9rhddI22IZYIkt, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454491130}'),(22,'2019-01-18 02:53:36.813','2019-01-18 02:53:36.813',0,'POLIPAY','{Token=LV70yDJ7haXn/kKllw9rhddI22IZYIkt}','',NULL,NULL,NULL,NULL,'REQUESTPARAM',NULL,'{Token=LV70yDJ7haXn/kKllw9rhddI22IZYIkt}',NULL,''),(23,'2019-01-18 02:53:48.921','2019-01-18 02:53:48.921',0,'POLIPAY','PolipayRedirectReq(token=LV70yDJ7haXn/kKllw9rhddI22IZYIkt)','{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=44ab6695-7db4-4c2f-9d3e-e8725861608a, MerchantEstablishedDateTime=2019-01-18T13:50:54.653, PayerAccountNumber=52466164, PayerAccountSortCode=123456, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=ReceiptUnverified, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=123.149.140.139, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454491130, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=155.5, AmountPaid=0.0, EstablishedDateTime=2019-01-18T13:50:54.657, StartDateTime=2019-01-18T13:50:54.657, EndDateTime=2019-01-18T13:53:35.45, BankReceipt=, BankReceiptDateTime=, TransactionStatusCode=ReceiptUnverified, ErrorCode=4005, ErrorMessage=POLi has encountered an unexpected bank page. This may be due to a new or changed bank page. Our support team has been advised of the error and will address this error as soon as possible.;Please retry your POLi payment. If the error persists, please re-attempt your payment at another time., FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190118155054-117D0788, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=Mr, PayerFamilyName=Shopper10, PayerAccountSuffix=}',NULL,NULL,NULL,NULL,'REQUESTPARAM',NULL,'PolipayRedirectReq(token=LV70yDJ7haXn/kKllw9rhddI22IZYIkt)',NULL,'{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=44ab6695-7db4-4c2f-9d3e-e8725861608a, MerchantEstablishedDateTime=2019-01-18T13:50:54.653, PayerAccountNumber=52466164, PayerAccountSortCode=123456, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=ReceiptUnverified, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=123.149.140.139, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454491130, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=155.5, AmountPaid=0.0, EstablishedDateTime=2019-01-18T13:50:54.657, StartDateTime=2019-01-18T13:50:54.657, EndDateTime=2019-01-18T13:53:35.45, BankReceipt=, BankReceiptDateTime=, TransactionStatusCode=ReceiptUnverified, ErrorCode=4005, ErrorMessage=POLi has encountered an unexpected bank page. This may be due to a new or changed bank page. Our support team has been advised of the error and will address this error as soon as possible.;Please retry your POLi payment. If the error persists, please re-attempt your payment at another time., FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190118155054-117D0788, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=Mr, PayerFamilyName=Shopper10, PayerAccountSuffix=}'),(24,'2019-01-18 02:57:18.567','2019-01-18 02:57:18.567',0,'POLIPAY','{\"amount\":\"155.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190118155718-4015ED06\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}','{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=i9tzoI1Qp%2fcsuCFeZ5E28dbDEqobFunU, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454491380}',NULL,214,214,NULL,'REQUESTBODY','{\"amount\":\"155.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190118155718-4015ED06\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}',NULL,NULL,'{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=i9tzoI1Qp%2fcsuCFeZ5E28dbDEqobFunU, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454491380}'),(25,'2019-01-18 02:58:01.665','2019-01-18 02:58:01.665',0,'POLIPAY','{Token=i9tzoI1Qp/csuCFeZ5E28dbDEqobFunU}','',NULL,NULL,NULL,NULL,'REQUESTPARAM',NULL,'{Token=i9tzoI1Qp/csuCFeZ5E28dbDEqobFunU}',NULL,''),(26,'2019-01-18 02:58:13.592','2019-01-18 02:58:13.592',0,'POLIPAY','PolipayRedirectReq(token=i9tzoI1Qp/csuCFeZ5E28dbDEqobFunU)','{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=0a7b4c4c-6790-49a0-8e35-9dc0fa4de109, MerchantEstablishedDateTime=2019-01-18T13:57:18.517, PayerAccountNumber=, PayerAccountSortCode=, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=Failed, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=123.149.140.139, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454491380, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=155.5, AmountPaid=0.0, EstablishedDateTime=2019-01-18T13:57:18.527, StartDateTime=2019-01-18T13:57:18.527, EndDateTime=2019-01-18T13:58:01.11, BankReceipt=, BankReceiptDateTime=, TransactionStatusCode=Failed, ErrorCode=4005, ErrorMessage=POLi has encountered an unexpected bank page. This may be due to a new or changed bank page. Our support team has been advised of the error and will address this error as soon as possible.;Please retry your POLi payment. If the error persists, please re-attempt your payment at another time., FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190118155718-4015ED06, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=Mr, PayerFamilyName=DemoShopper, PayerAccountSuffix=}',NULL,NULL,NULL,NULL,'REQUESTPARAM',NULL,'PolipayRedirectReq(token=i9tzoI1Qp/csuCFeZ5E28dbDEqobFunU)',NULL,'{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=0a7b4c4c-6790-49a0-8e35-9dc0fa4de109, MerchantEstablishedDateTime=2019-01-18T13:57:18.517, PayerAccountNumber=, PayerAccountSortCode=, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=Failed, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=123.149.140.139, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454491380, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=155.5, AmountPaid=0.0, EstablishedDateTime=2019-01-18T13:57:18.527, StartDateTime=2019-01-18T13:57:18.527, EndDateTime=2019-01-18T13:58:01.11, BankReceipt=, BankReceiptDateTime=, TransactionStatusCode=Failed, ErrorCode=4005, ErrorMessage=POLi has encountered an unexpected bank page. This may be due to a new or changed bank page. Our support team has been advised of the error and will address this error as soon as possible.;Please retry your POLi payment. If the error persists, please re-attempt your payment at another time., FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190118155718-4015ED06, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=Mr, PayerFamilyName=DemoShopper, PayerAccountSuffix=}'),(27,'2019-01-18 02:59:25.786','2019-01-18 02:59:25.786',0,'POLIPAY','{\"amount\":\"155.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190118155925-039316F6\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}','{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=BtfjTnq1%2bQqvOQ%2brApabBicH3ivP%2fJdT, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454491466}',NULL,214,214,NULL,'REQUESTBODY','{\"amount\":\"155.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190118155925-039316F6\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}',NULL,NULL,'{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=BtfjTnq1%2bQqvOQ%2brApabBicH3ivP%2fJdT, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454491466}'),(28,'2019-01-18 03:00:00.057','2019-01-18 03:00:00.057',0,'POLIPAY','{Token=BtfjTnq1+QqvOQ+rApabBicH3ivP/JdT}','',NULL,NULL,NULL,NULL,'REQUESTPARAM',NULL,'{Token=BtfjTnq1+QqvOQ+rApabBicH3ivP/JdT}',NULL,''),(29,'2019-01-18 03:00:02.103','2019-01-18 03:00:02.103',0,'POLIPAY','PolipayRedirectReq(token=BtfjTnq1+QqvOQ+rApabBicH3ivP/JdT)','{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=b445b42d-a768-4d1f-a476-2f4ad3d8657c, MerchantEstablishedDateTime=2019-01-18T13:59:25.737, PayerAccountNumber=, PayerAccountSortCode=, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=Cancelled, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=123.149.140.139, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454491466, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=155.5, AmountPaid=0.0, EstablishedDateTime=2019-01-18T13:59:25.747, StartDateTime=2019-01-18T13:59:25.747, EndDateTime=2019-01-18T13:59:59.583, BankReceipt=, BankReceiptDateTime=, TransactionStatusCode=Cancelled, ErrorCode=null, ErrorMessage=, FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190118155925-039316F6, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=, PayerFamilyName=, PayerAccountSuffix=}',NULL,NULL,NULL,NULL,'REQUESTPARAM',NULL,'PolipayRedirectReq(token=BtfjTnq1+QqvOQ+rApabBicH3ivP/JdT)',NULL,'{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=b445b42d-a768-4d1f-a476-2f4ad3d8657c, MerchantEstablishedDateTime=2019-01-18T13:59:25.737, PayerAccountNumber=, PayerAccountSortCode=, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=Cancelled, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=123.149.140.139, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454491466, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=155.5, AmountPaid=0.0, EstablishedDateTime=2019-01-18T13:59:25.747, StartDateTime=2019-01-18T13:59:25.747, EndDateTime=2019-01-18T13:59:59.583, BankReceipt=, BankReceiptDateTime=, TransactionStatusCode=Cancelled, ErrorCode=null, ErrorMessage=, FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190118155925-039316F6, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=, PayerFamilyName=, PayerAccountSuffix=}'),(30,'2019-01-18 03:01:32.324','2019-01-18 03:01:32.324',0,'POLIPAY','{\"amount\":\"155.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190118160132-63E055D8\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}','{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=tIOh7MdzEAW%2b%2fU6565c3Z5ghc7Pa6yaT, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454491557}',NULL,214,214,NULL,'REQUESTBODY','{\"amount\":\"155.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190118160132-63E055D8\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}',NULL,NULL,'{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=tIOh7MdzEAW%2b%2fU6565c3Z5ghc7Pa6yaT, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454491557}'),(31,'2019-01-18 03:02:24.047','2019-01-18 03:02:24.047',0,'POLIPAY','{Token=tIOh7MdzEAW+/U6565c3Z5ghc7Pa6yaT}','',NULL,NULL,NULL,NULL,'REQUESTPARAM',NULL,'{Token=tIOh7MdzEAW+/U6565c3Z5ghc7Pa6yaT}',NULL,''),(32,'2019-01-18 03:02:25.864','2019-01-18 03:02:25.864',0,'POLIPAY','PolipayRedirectReq(token=tIOh7MdzEAW+/U6565c3Z5ghc7Pa6yaT)','{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=b636f508-431e-4864-bcef-f41af3cca03d, MerchantEstablishedDateTime=2019-01-18T14:01:32.287, PayerAccountNumber=98742364, PayerAccountSortCode=123456, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=Completed, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=123.149.140.139, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454491557, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=155.5, AmountPaid=155.5, EstablishedDateTime=2019-01-18T14:01:32.29, StartDateTime=2019-01-18T14:01:32.29, EndDateTime=2019-01-18T14:02:23.347, BankReceipt=57026439-374891, BankReceiptDateTime=18 January 2019 14:02:23, TransactionStatusCode=Completed, ErrorCode=null, ErrorMessage=, FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190118160132-63E055D8, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=Mr, PayerFamilyName=DemoShopper, PayerAccountSuffix=}',NULL,NULL,NULL,NULL,'REQUESTPARAM',NULL,'PolipayRedirectReq(token=tIOh7MdzEAW+/U6565c3Z5ghc7Pa6yaT)',NULL,'{CountryName=New Zealand, FinancialInstitutionCountryCode=iBankNZ01, TransactionID=b636f508-431e-4864-bcef-f41af3cca03d, MerchantEstablishedDateTime=2019-01-18T14:01:32.287, PayerAccountNumber=98742364, PayerAccountSortCode=123456, MerchantAccountSortCode=021256, MerchantAccountName=B2C Direct Limited, MerchantData=B2C Direct, CurrencyName=New Zealand Dollar, TransactionStatus=Completed, IsExpired=false, MerchantEntityID=f1bd5c83-8e31-466e-8614-2dea289232eb, UserIPAddress=123.149.140.139, POLiVersionCode=4 , MerchantName=B2C Direct, TransactionRefNo=996454491557, CurrencyCode=NZD, CountryCode=NZ, PaymentAmount=155.5, AmountPaid=155.5, EstablishedDateTime=2019-01-18T14:01:32.29, StartDateTime=2019-01-18T14:01:32.29, EndDateTime=2019-01-18T14:02:23.347, BankReceipt=57026439-374891, BankReceiptDateTime=18 January 2019 14:02:23, TransactionStatusCode=Completed, ErrorCode=null, ErrorMessage=, FinancialInstitutionCode=iBankNZ01, FinancialInstitutionName=iBank NZ 01, MerchantReference=POLIPAY-20190118160132-63E055D8, MerchantAccountSuffix=000, MerchantAccountNumber=0108917, PayerFirstName=Mr, PayerFamilyName=DemoShopper, PayerAccountSuffix=}'),(33,'2019-01-21 02:21:06.124','2019-01-21 02:21:06.124',0,'POLIPAY','{\"amount\":\"255.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190121152105-4C41BDDE\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}','{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=sTjecQWqgPhbJmmfx7VkiQE4XnvOVdv7, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454580997}',NULL,214,214,NULL,'REQUESTBODY','{\"amount\":\"255.5\",\"currencyCode\":\"NZD\",\"merchantReference\":\"POLIPAY-20190121152105-4C41BDDE\",\"merchantData\":\"B2C Direct\",\"merchantHomepageURL\":\"http://www.b2c.kiwi/api/\",\"successURL\":\"http://www.b2c.kiwi/api/payment/polipay/success\",\"failureURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"cancellationURL\":\"http://www.b2c.kiwi/api/payment/polipay/fail\",\"notificationURL\":\"http://www.b2c.kiwi/api/payment/polipay/notify\",\"timeout\":\"600\"}',NULL,NULL,'{Success=true, NavigateURL=https://txn.apac.paywithpoli.com/?Token=sTjecQWqgPhbJmmfx7VkiQE4XnvOVdv7, ErrorCode=0, ErrorMessage=null, TransactionRefNo=996454580997}'),(34,'2019-01-21 02:45:24.286','2019-01-21 02:45:24.286',0,'POLIPAY','{Token=sTjecQWqgPhbJmmfx7VkiQE4XnvOVdv7}','',NULL,NULL,NULL,NULL,'REQUESTPARAM',NULL,'{Token=sTjecQWqgPhbJmmfx7VkiQE4XnvOVdv7}',NULL,'');
/*!40000 ALTER TABLE `payment_gateway_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_order`
--

DROP TABLE IF EXISTS `payment_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `callback_status` varchar(255) DEFAULT NULL,
  `callback_url` varchar(1024) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `customer_order_id` varchar(255) DEFAULT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `gateway_order_id` varchar(255) DEFAULT NULL,
  `pay_amount` double DEFAULT NULL,
  `pay_type` varchar(255) DEFAULT NULL,
  `pay_url` varchar(1024) DEFAULT NULL,
  `redirect_url` varchar(1024) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `system_order_id` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `gateway_reference` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_hwc45uwc5h49dipw5lnj3yvis` (`gateway_order_id`),
  UNIQUE KEY `UK_og3q08elflftwjqtatpikmef` (`system_order_id`),
  KEY `FKcigwhfwhclfwbien7jexrlo8g` (`creator_id`),
  KEY `FKg6qaxqcxjfbx18dt4nksp6pdh` (`modifier_id`),
  KEY `FKhbhqyobqh0epe0mysw01btbbc` (`user_id`),
  CONSTRAINT `FKcigwhfwhclfwbien7jexrlo8g` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKg6qaxqcxjfbx18dt4nksp6pdh` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKhbhqyobqh0epe0mysw01btbbc` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_order`
--

LOCK TABLES `payment_order` WRITE;
/*!40000 ALTER TABLE `payment_order` DISABLE KEYS */;
INSERT INTO `payment_order` VALUES (1,'2019-01-06 23:51:18.151','2019-01-06 23:51:18.151',0,NULL,NULL,'NZD','BD20190107125104','POLIPAY','Lj448qpRLV2blXsNtvUgrSaXBOyjjQpb',337.5,NULL,'https://txn.apac.paywithpoli.com/?Token=Lj448qpRLV2blXsNtvUgrSaXBOyjjQpb','http://b2c.kiwi/api/v1/transaction-single/redirect','PENDING','POLIPAY-20190107125117-A26370B7',213,213,NULL,'996454055281'),(2,'2019-01-08 16:14:24.753','2019-01-08 16:14:24.753',0,NULL,NULL,'NZD','BD20190109051141','POLIPAY','acVgkgXVJTPNO+qtCBXDXfj3H8VRbCoA',262.6,NULL,'https://txn.apac.paywithpoli.com/?Token=acVgkgXVJTPNO%2bqtCBXDXfj3H8VRbCoA','http://www.b2c.kiwi/api/v1/transaction-single/redirect','PENDING','POLIPAY-20190109051424-420B9A47',214,214,NULL,'996454123820'),(3,'2019-01-16 01:51:13.818','2019-01-16 01:51:13.818',0,NULL,NULL,'NZD','BD20190109051141','POLIPAY','vnWk9vZDDKuWiqV3uw+Trkd9R1NHbzWC',262.6,NULL,'https://txn.apac.paywithpoli.com/?Token=vnWk9vZDDKuWiqV3uw%2bTrkd9R1NHbzWC','http://www.b2c.kiwi/api/v1/transaction-single/redirect','PENDING','POLIPAY-20190116145113-8C8893A0',214,214,NULL,'996454400006'),(4,'2019-01-16 02:23:56.230','2019-01-16 02:24:40.026',1,NULL,NULL,'NZD','BD20190109051141','POLIPAY','BXzPvIbGXVsRxow59gXSGr4wuZmkFiFD',262.6,NULL,'https://txn.apac.paywithpoli.com/?Token=BXzPvIbGXVsRxow59gXSGr4wuZmkFiFD','http://www.b2c.kiwi/api/v1/transaction-single/redirect','PAID','POLIPAY-20190116152355-F3491653',214,214,NULL,'996454401361'),(5,'2019-01-16 03:35:16.712','2019-01-16 03:35:16.712',0,NULL,NULL,'NZD','BD20190104110344','POLIPAY','AK0hr2aasLXD2N9N9S1cbDx6XYclT4+W',120.5,NULL,'https://txn.apac.paywithpoli.com/?Token=AK0hr2aasLXD2N9N9S1cbDx6XYclT4%2bW','http://www.b2c.kiwi/api/v1/transaction-single/redirect','PENDING','POLIPAY-20190116163516-F5860AC0',214,214,NULL,'996454404379'),(6,'2019-01-16 03:41:27.855','2019-01-16 03:41:27.855',0,NULL,NULL,'NZD','BD20190104110344','POLIPAY','G42/ALl1HFj+ffW2NL8SYgudz50hINTi',120.5,NULL,'https://txn.apac.paywithpoli.com/?Token=G42%2fALl1HFj%2bffW2NL8SYgudz50hINTi','http://www.b2c.kiwi/api/v1/transaction-single/redirect','PENDING','POLIPAY-20190116164127-31D2F911',214,214,NULL,'996454404634'),(7,'2019-01-16 03:43:19.409','2019-01-16 03:44:17.710',1,NULL,NULL,'NZD','BD20190104110344','POLIPAY','8DsuCk4RbTB9n52kh6oFoduomJ4g2eYq',120.5,NULL,'https://txn.apac.paywithpoli.com/?Token=8DsuCk4RbTB9n52kh6oFoduomJ4g2eYq','http://www.b2c.kiwi/api/v1/transaction-single/redirect','PAID','POLIPAY-20190116164319-64ED2B2A',214,214,NULL,'996454404714'),(8,'2019-01-16 03:56:09.798','2019-01-16 03:56:09.798',0,NULL,NULL,'NZD','BD20181216230255','POLIPAY','ph9IZE2Wnrsg/Sf9SHhVCimlb4Gvs0rI',155.5,NULL,'https://txn.apac.paywithpoli.com/?Token=ph9IZE2Wnrsg%2fSf9SHhVCimlb4Gvs0rI','http://www.b2c.kiwi/api/v1/transaction-single/redirect','PENDING','POLIPAY-20190116165609-6FE0A691',214,214,NULL,'996454405208'),(9,'2019-01-16 03:56:10.037','2019-01-16 03:56:10.037',0,NULL,NULL,'NZD','BD20181216230255','POLIPAY','6H7Za3RgIr8AhLqv3Y0ssdVTIcEt6HtX',155.5,NULL,'https://txn.apac.paywithpoli.com/?Token=6H7Za3RgIr8AhLqv3Y0ssdVTIcEt6HtX','http://www.b2c.kiwi/api/v1/transaction-single/redirect','PENDING','POLIPAY-20190116165609-32A0E1B7',214,214,NULL,'996454405209'),(10,'2019-01-16 04:01:31.657','2019-01-16 04:01:31.657',0,NULL,NULL,'NZD','MALL-20181216214009-1B03BE16','POLIPAY','KVPwmBVeYs8mjdtOxh1Tjb4o3PR9plui',178.1,NULL,'https://txn.apac.paywithpoli.com/?Token=KVPwmBVeYs8mjdtOxh1Tjb4o3PR9plui','http://www.b2c.kiwi/api/v1/transaction-single/redirect','PENDING','POLIPAY-20190116170130-94E1E2FA',214,214,NULL,'996454405445'),(11,'2019-01-16 04:03:55.720','2019-01-16 04:04:36.975',1,NULL,NULL,'NZD','MALL-20181216214009-1B03BE16','POLIPAY','4XcTUv1mTBDz9/sc/pSOqWMkLH3WiwMC',178.1,NULL,'https://txn.apac.paywithpoli.com/?Token=4XcTUv1mTBDz9%2fsc%2fpSOqWMkLH3WiwMC','http://www.b2c.kiwi/api/v1/transaction-single/redirect','PAID','POLIPAY-20190116170355-E610CB65',214,214,NULL,'996454405556'),(12,'2019-01-18 02:50:54.809','2019-01-18 02:50:54.809',0,NULL,NULL,'NZD','BD20181216230255','POLIPAY','LV70yDJ7haXn/kKllw9rhddI22IZYIkt',155.5,NULL,'https://txn.apac.paywithpoli.com/?Token=LV70yDJ7haXn%2fkKllw9rhddI22IZYIkt','http://www.b2c.kiwi/api/v1/transaction-single/redirect','PENDING','POLIPAY-20190118155054-117D0788',214,214,NULL,'996454491130'),(13,'2019-01-18 02:57:18.569','2019-01-18 02:57:18.569',0,NULL,NULL,'NZD','BD20181216230255','POLIPAY','i9tzoI1Qp/csuCFeZ5E28dbDEqobFunU',155.5,NULL,'https://txn.apac.paywithpoli.com/?Token=i9tzoI1Qp%2fcsuCFeZ5E28dbDEqobFunU','http://www.b2c.kiwi/api/v1/transaction-single/redirect','PENDING','POLIPAY-20190118155718-4015ED06',214,214,NULL,'996454491380'),(14,'2019-01-18 02:59:25.789','2019-01-18 02:59:25.789',0,NULL,NULL,'NZD','BD20181216230255','POLIPAY','BtfjTnq1+QqvOQ+rApabBicH3ivP/JdT',155.5,NULL,'https://txn.apac.paywithpoli.com/?Token=BtfjTnq1%2bQqvOQ%2brApabBicH3ivP%2fJdT','http://www.b2c.kiwi/api/v1/transaction-single/redirect','PENDING','POLIPAY-20190118155925-039316F6',214,214,NULL,'996454491466'),(15,'2019-01-18 03:01:32.327','2019-01-18 03:02:24.034',1,NULL,NULL,'NZD','BD20181216230255','POLIPAY','tIOh7MdzEAW+/U6565c3Z5ghc7Pa6yaT',155.5,NULL,'https://txn.apac.paywithpoli.com/?Token=tIOh7MdzEAW%2b%2fU6565c3Z5ghc7Pa6yaT','http://www.b2c.kiwi/api/v1/transaction-single/redirect','PAID','POLIPAY-20190118160132-63E055D8',214,214,NULL,'996454491557'),(16,'2019-01-21 02:21:06.126','2019-01-21 02:21:06.126',0,NULL,NULL,'NZD','BD20190121152058','POLIPAY','sTjecQWqgPhbJmmfx7VkiQE4XnvOVdv7',255.5,NULL,'https://txn.apac.paywithpoli.com/?Token=sTjecQWqgPhbJmmfx7VkiQE4XnvOVdv7','http://www.b2c.kiwi/api/v1/transaction-single/redirect','PENDING','POLIPAY-20190121152105-4C41BDDE',214,214,NULL,'996454580997');
/*!40000 ALTER TABLE `payment_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_colour`
--

DROP TABLE IF EXISTS `product_colour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_colour` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `name_zh_cn` varchar(255) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `rgb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_dvh4oyo8gf2lh71lxii4xuk4g` (`name`),
  UNIQUE KEY `UK_1s5stw5hg1fl9kk6iwna732h9` (`name_zh_cn`),
  KEY `FKdgt367ahavuqrunc2c9f5b3j4` (`creator_id`),
  KEY `FKhtgii86k71fv78xyfmotr33qu` (`modifier_id`),
  KEY `FKih65rpj2nt7wxed77lj26q4lh` (`user_id`),
  CONSTRAINT `FKdgt367ahavuqrunc2c9f5b3j4` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKhtgii86k71fv78xyfmotr33qu` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKih65rpj2nt7wxed77lj26q4lh` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_colour`
--

LOCK TABLES `product_colour` WRITE;
/*!40000 ALTER TABLE `product_colour` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_colour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_discount`
--

DROP TABLE IF EXISTS `product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_discount` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `bottomlimit` bigint(20) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `toplimit` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtgupb6wt2ktyssdphs4whg108` (`creator_id`),
  KEY `FKlasijmrgr1x7yhi4tyxgcjs5v` (`modifier_id`),
  KEY `FKftkcp8djyu0t2podg80pkaw05` (`user_id`),
  CONSTRAINT `FKftkcp8djyu0t2podg80pkaw05` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKlasijmrgr1x7yhi4tyxgcjs5v` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKtgupb6wt2ktyssdphs4whg108` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_discount`
--

LOCK TABLES `product_discount` WRITE;
/*!40000 ALTER TABLE `product_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_multi`
--

DROP TABLE IF EXISTS `product_multi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_multi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `full_description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `promotion_price` double DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  `experience_id` bigint(20) DEFAULT NULL,
  `guest_requirement_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp2gp4iq36tdjgqg146qx9s8fg` (`creator_id`),
  KEY `FKflkt6ecu9t1xurdac3hq3cpk9` (`modifier_id`),
  KEY `FKen0fwgrud2s51a4ogb9gt05y` (`user_id`),
  KEY `FKskj2kwtaduk0xr7jcnan0vpxk` (`category_id`),
  KEY `FKnrn7k7asmhb4uyii1tnaec4jv` (`experience_id`),
  KEY `FKc6k4fqline1hi5gh1xxosfuhl` (`guest_requirement_id`),
  CONSTRAINT `FK5k22e9mgeaqhxdipqf2ek894m` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK9kmf6q0ikvmm4c5uibao5q692` FOREIGN KEY (`experience_id`) REFERENCES `experience` (`id`),
  CONSTRAINT `FK9qux72v680itbn83vnlkueqwp` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FKc6k4fqline1hi5gh1xxosfuhl` FOREIGN KEY (`guest_requirement_id`) REFERENCES `guest_requirement` (`id`),
  CONSTRAINT `FKe5197s17e2ve2ikqjamd1yiju` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKen0fwgrud2s51a4ogb9gt05y` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKflkt6ecu9t1xurdac3hq3cpk9` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKg83njgomm35g9gxac9agsb6d5` FOREIGN KEY (`guest_requirement_id`) REFERENCES `guest_requirement` (`id`),
  CONSTRAINT `FKnrn7k7asmhb4uyii1tnaec4jv` FOREIGN KEY (`experience_id`) REFERENCES `experience` (`id`),
  CONSTRAINT `FKoooce0fma6xvbx3fwk1pjeft2` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKp2gp4iq36tdjgqg146qx9s8fg` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKskj2kwtaduk0xr7jcnan0vpxk` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_multi`
--

LOCK TABLES `product_multi` WRITE;
/*!40000 ALTER TABLE `product_multi` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_multi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_multi_detail_images`
--

DROP TABLE IF EXISTS `product_multi_detail_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_multi_detail_images` (
  `product_multi_id` bigint(20) NOT NULL,
  `detail_images_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_44v2ulssjagtwfr9449t9g2d5` (`detail_images_id`),
  KEY `FKf0nnmy3rkdhh24bnvinosu49o` (`product_multi_id`),
  CONSTRAINT `FKae17laq107mkvlgry1lqrl92m` FOREIGN KEY (`product_multi_id`) REFERENCES `product_multi` (`id`),
  CONSTRAINT `FKcwvpu60jtphwsvtoqxg73pm3p` FOREIGN KEY (`detail_images_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FKf0nnmy3rkdhh24bnvinosu49o` FOREIGN KEY (`product_multi_id`) REFERENCES `product_multi` (`id`),
  CONSTRAINT `FKko7f3wcjm8ql1c3l0vjnekdbi` FOREIGN KEY (`detail_images_id`) REFERENCES `attachment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_multi_detail_images`
--

LOCK TABLES `product_multi_detail_images` WRITE;
/*!40000 ALTER TABLE `product_multi_detail_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_multi_detail_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_multi_feature_types`
--

DROP TABLE IF EXISTS `product_multi_feature_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_multi_feature_types` (
  `product_multi_id` bigint(20) NOT NULL,
  `feature_types_id` bigint(20) NOT NULL,
  KEY `FKoujq2patgf8jd1idt55ir5ule` (`feature_types_id`),
  KEY `FKhgssbft3536r0be689a07kcsb` (`product_multi_id`),
  CONSTRAINT `FKgsvxpetv797agltddalythcx0` FOREIGN KEY (`product_multi_id`) REFERENCES `product_multi` (`id`),
  CONSTRAINT `FKhgssbft3536r0be689a07kcsb` FOREIGN KEY (`product_multi_id`) REFERENCES `product_multi` (`id`),
  CONSTRAINT `FKoujq2patgf8jd1idt55ir5ule` FOREIGN KEY (`feature_types_id`) REFERENCES `feature_type` (`id`),
  CONSTRAINT `FKs3dkh62n2apyo85xxj8rsvnlg` FOREIGN KEY (`feature_types_id`) REFERENCES `feature_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_multi_feature_types`
--

LOCK TABLES `product_multi_feature_types` WRITE;
/*!40000 ALTER TABLE `product_multi_feature_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_multi_feature_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_multi_main_images`
--

DROP TABLE IF EXISTS `product_multi_main_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_multi_main_images` (
  `product_multi_id` bigint(20) NOT NULL,
  `main_images_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_1qblygx5cq4rghw5aflref0l4` (`main_images_id`),
  KEY `FKg73y6cnj6m7vpl7c84w8er001` (`product_multi_id`),
  CONSTRAINT `FK3a0e5u1djguktjubja7mndyl7` FOREIGN KEY (`main_images_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FKg73y6cnj6m7vpl7c84w8er001` FOREIGN KEY (`product_multi_id`) REFERENCES `product_multi` (`id`),
  CONSTRAINT `FKo4m4m8e95vwev8lgsyy7xvldy` FOREIGN KEY (`product_multi_id`) REFERENCES `product_multi` (`id`),
  CONSTRAINT `FKsi7xfxtelqtkouhb9wgwb1ht0` FOREIGN KEY (`main_images_id`) REFERENCES `attachment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_multi_main_images`
--

LOCK TABLES `product_multi_main_images` WRITE;
/*!40000 ALTER TABLE `product_multi_main_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_multi_main_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_single`
--

DROP TABLE IF EXISTS `product_single`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_single` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `add_to_cart_on_slider` char(1) NOT NULL DEFAULT 'N',
  `inventory` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `on_the_shelf` char(1) DEFAULT 'Y',
  `price` double NOT NULL,
  `promotion_price` double DEFAULT NULL,
  `short_description` varchar(2048) DEFAULT NULL,
  `slider_video` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  `full_description` text,
  `full_description_zh_cn` text,
  `name_zh_cn` varchar(256) DEFAULT NULL,
  `short_description_zh_cn` varchar(2048) DEFAULT NULL,
  `product_single_group_id` bigint(20) DEFAULT NULL,
  `product_colour_id` bigint(20) DEFAULT NULL,
  `product_size_id` bigint(20) DEFAULT NULL,
  `on_the_group_page` char(1) NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `shipment_fee_per_cubic_meter` double DEFAULT NULL,
  `volume` double DEFAULT NULL,
  `adjusted_volume_cubic_meter` double DEFAULT NULL,
  `real_volume_cubic_meter` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKesgxdl23vrondixbyxtta7h94` (`creator_id`),
  KEY `FKgd0fjicc87og7o0lt2n2oh97b` (`modifier_id`),
  KEY `FKfjj20bkv5brexninw04qnuylw` (`user_id`),
  KEY `FK7ccq4kd8v0yncn3qu3oaxdguv` (`category_id`),
  KEY `FK6jogdxrsjx76ppfsssjsl9k3y` (`product_single_group_id`),
  KEY `FK17vdaqulxsh7x2q0ey6m4siro` (`product_colour_id`),
  KEY `FKlrwb5bt02drf9sefxjbvmdx86` (`product_size_id`),
  CONSTRAINT `FK17vdaqulxsh7x2q0ey6m4siro` FOREIGN KEY (`product_colour_id`) REFERENCES `product_colour` (`id`),
  CONSTRAINT `FK5ik3sv3e4u3yifntrrp5mkx2d` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK6jogdxrsjx76ppfsssjsl9k3y` FOREIGN KEY (`product_single_group_id`) REFERENCES `product_single_group` (`id`),
  CONSTRAINT `FK7dilv0hn2qebwulel82n5rotv` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKcw60jgbrn5u55qaryqlx5bq4p` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKlrwb5bt02drf9sefxjbvmdx86` FOREIGN KEY (`product_size_id`) REFERENCES `product_size` (`id`),
  CONSTRAINT `FKthcfx0p27aa1iljiu1lwykyt9` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=744 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_single`
--

LOCK TABLES `product_single` WRITE;
/*!40000 ALTER TABLE `product_single` DISABLE KEYS */;
INSERT INTO `product_single` VALUES (695,'2018-11-07 02:51:00.947','2018-11-07 02:53:28.075',2,'N',0,'XXL Wooden Dog Kennel 2 Door All-Weather Flat Roof Pet House w/Patio - Yellow','N',500,365,'<ul><li>2 Doors pet timber dog kennel with patio</li><li>Constructed of high quality natural fir wood</li><li>Spacious &amp; comfortable for beautiful architectural design</li><li>Black asphalt roof for rain and sun heating protection</li></ul>',NULL,40,40,NULL,100,'<p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Create a sweet home for your furry friend with our </span><strong>XXL Wooden Dog Kennel 2 Door All Weather Flat Roof Pet House w/Patio – Black</strong><span style=\"font-family:Arial, Helvetica, sans-serif;\">. Made of premium fir, this </span><strong>XXL wooden dog kennel</strong><span style=\"font-family:Arial, Helvetica, sans-serif;\"> with a wired window is absolutely a solid, spacious and cozy pet house for your cuddly friend to rest and play. The black asphalt roof with strong locking hinges can not only withstand heat as well as rain and keep your pet comfortable all year round, but also be propped open for extra air, light and easy cleaning, which is also good for preventing the lice or parasites. This versatile </span><strong>dog house </strong><span style=\"font-family:Arial, Helvetica, sans-serif;\">can also allow your cute little friend to lounge on the large patio to enjoy the sunshine and fresh air. Covered with waterproof rubber for moisture protection, the adjustable legs can make this</span><strong> large dog kennel </strong><span style=\"font-family:Arial, Helvetica, sans-serif;\">level with the uneven surface and leave extra room beneath, which helps maintain a pleasant floor temperature. Suitable for indoor and outdoor use, this multifunctional </span><strong>pet house </strong><span style=\"font-family:Arial, Helvetica, sans-serif;\">also comes with two removable plastic doors for easy access to the entrance of your little one. For your peace of mind, the kennel, patio and the floor are detachable too, so that you can clean them easily and thoroughly. Featuring a classic design, this</span><strong> pet kennel </strong><span style=\"font-family:Arial, Helvetica, sans-serif;\">can blend in perfectly with your home décor. What a great pet house for your dog or cat! Bring one home and cheer it up!</span></p>',NULL,NULL,NULL,2,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL),(702,'2018-11-07 03:32:46.048','2019-01-09 22:26:06.428',3,'N',0,'Large Flat Roof Wooden Dog House Kennel','N',200,180,'<p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Create a sanctuary for your dog with this Large Flat Roof Wooden Dog House Kennel! Fully weather resistant, crafted with high-quality natural Firwood and featuring a slightly slanted asphalt roof this house ensures your beloved pet dog has a safe comfortable shelter from the elements. The strategically placed door with removable plastic helps this dog kennel provide maximum ventilation while providing the best weather protection for your pet. Height adjustable legs ensure the house is just raised enough to avoid flooding but low enough for your dog to exit and enter safely. The flip-open hinged roof and removable floor make it easy to clean. Every dog will love getting ‘banished to the dog house’ with this beautiful flat roof pet house!</span></p>',NULL,40,40,NULL,100,'<ul><li>Height Adjustable Feet</li><li>Spacious &amp; Comfortable</li><li>Weatherproof Lined Roof</li><li>Removable Plastic Door &amp; Floor</li><li>Mortise &amp; Tenon Joints for Easy Assembly</li><li>Tongue &amp; Groove Joints to Avoid Splintering</li><li>Constructed With High Quality Natural Fir Wood</li><li>Made From TUV Approved Eco-Friendly Materials</li><li>Asphalt Roof for Maximum Protection Against Rain &amp; Sun</li><li>Feet with Waterproof Rubber Cover for Moisture Protection</li></ul><p>Refer to gallery for dimensions</p>',NULL,NULL,NULL,18,NULL,NULL,'Y','ZDPK1602A',NULL,NULL,20,NULL),(711,'2018-12-07 01:25:15.394','2019-01-18 03:02:26.164',4,'N',397,'Machine Pallet Wrap','N',60,55.5,'<p>1 Roll of Premium Cast Machine Pallet Wrap.&nbsp;<br>500mm x 1500mtres x 20mu 18KG&nbsp;</p>',NULL,40,40,NULL,106,'<p>Machine Easywrap Pallet Wrap is a high quality polyethylene stretchwrap with extremely high clarity making for better presentation and easier stock identification. Easywrap reduces noise when wrapping pallets. . <strong>Special rates available for pallet orders - 50 rolls per pallet!</strong></p>',NULL,NULL,NULL,23,NULL,NULL,'Y','Machine Pallet Wrap',NULL,NULL,0.3,NULL),(712,'2018-12-07 01:29:22.301','2019-01-16 04:04:40.465',3,'N',798,'Hand Stretch Wrap','N',65,62.6,'<p>4 Roll of Premium Cast Hand Pallet Wrap.&nbsp;<br>Each roll for 500mm x 1500mtres x 20mu 7KG&nbsp;</p>',NULL,40,40,NULL,106,'<p>• Stronger &amp; tougher for irregular shaped or heavy loads • High puncture resistance, high cling ability Powerwrap Pallet Wrap is a very strong blown film designed for wrapping irregular shaped, heavy or mobile objects. This clear film has a layer of tack and can be stretched up to 250% for great cling ability. Powerwrap is extremely durable and puncture resistant available in 20 and 23 micron. Buy in carton quantities &amp; save!</p>',NULL,NULL,NULL,24,NULL,NULL,'Y','Hand Stretch Wrap',NULL,NULL,0.3,NULL),(714,'2019-01-03 23:10:15.238','2019-01-03 23:10:15.238',0,'N',0,'Wooden Chicken Coop Rabbit Hutch Guinea Pig Ferret Cage Hen House 2 Storey Run With Nesting Box','N',200,179.95,'<p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Where do your pets sleep? Do your pets just climb on your bed without your consent? Getting them their own house should fix this problem. The Fir wood Chicken Coop is designed to house your small pets. Made of waterproof and anti-termite material, it will last for years to come. Featuring 3 open doors and a ramp, the chicken coop will give your pets easy access. The chicken coop is built with easy an open roof and sliding trays for easy cleaning. No more pets in your bed or unwanted places, the chicken coop will give your small pets their own home.&nbsp;</span></p>',NULL,40,40,NULL,100,'<ul><li>Waterproof &amp; Anti-termite</li><li>Strong &amp; firm security locks</li><li>Slide out trays for easy cleaning</li><li>Opening roofs for easy cleaning</li><li>Features three doors for easy access</li><li>Built-in ramp for access to upper floor</li><li>Fully enclosed bedroom on upper level</li><li>Spacious integrated ground enclosed play area</li><li>High quality Fir wood construction with mesh wire</li><li>Green asphalt roof for rain and sun heating protection</li><li>Also suitable for rabbits, guinea pigs, rabbits, ducks or other small animals</li><li>Integrated nesting box, and the roof of nesting box can be opened for collecting eggs</li></ul><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Colour:</td><td>Natural Fir Wood Colour</td></tr><tr><td>Material:</td><td>Fir Wood with mesh wire</td></tr><tr><td>Roof Surface:</td><td>Green asphalt</td></tr><tr><td>Package size:</td><td>85x75x27cm</td></tr><tr><td>Package weight:</td><td>25kg</td></tr><tr><td>Overall Dimensions:</td><td>L178 x W55 x H87cm</td></tr><tr><td>Nesting Box Dimensions:</td><td>L49 x W31 x H36cm</td></tr><tr><td>Tray Dimensions:</td><td>L63 x W42cm</td></tr><tr><td>The Ladder Dimensions:</td><td>L55 x W 19cm</td></tr></tbody></table></figure>',NULL,NULL,NULL,22,NULL,NULL,'Y','ZPCC01',NULL,NULL,20,NULL),(716,'2019-01-09 03:43:51.045','2019-01-09 03:43:51.045',0,'N',0,'1.8M Wooden Chicken Coop Rabbit Hutch Guinea Pig Ferret Cage Hen House 2 Storey Run','N',190,179.95,'<p>Where do your pets sleep? Do your pets just climb on your bed without your consent? Getting them their own house should fix this problem. The Fir wood Chicken Coop is designed to house your small pets. Made of waterproof and anti-termite material, it will last for years to come. Featuring 3 open doors and a ramp, the chicken coop will give your pets easy access. The chicken coop is built with sliding trays for easy cleaning. No more pets in your bed or unwanted places, the chicken coop will give your small pets their own home.</p>',NULL,40,40,NULL,100,'<ul><li>Waterproof &amp; Anti-termite</li><li>Strong &amp; firm security locks</li><li>Slide out trays for easy cleaning</li><li>Features three doors for easy access</li><li>Built-in ramp for access to upper floor</li><li>Fully enclosed bedroom on upper level</li><li>Spacious integrated ground enclosed play area</li><li>High quality Fir wood construction with mesh wire</li><li>Green asphalt roof for rain and sun heating protection</li><li>Also suitable for rabbits, guinea pigs, rabbits, ducks or other small animals<br>&nbsp;</li></ul><figure class=\"table\"><table><tbody><tr><td>Colour:</td><td>Natural Fir Wood with Green Roof</td></tr><tr><td>Material:</td><td>Fir Wood with mesh wire</td></tr><tr><td>Roof Surface:</td><td>Green asphalt</td></tr><tr><td>Package size:</td><td>103x80x23cm</td></tr><tr><td>Package weight:</td><td>25kg</td></tr><tr><td>Overall Dimensions:</td><td>L180 x W55 x H87cm</td></tr><tr><td>Tray Dimensions:</td><td>L70 x W 44cm</td></tr><tr><td>The Ladder Dimensions:</td><td>L60 x W 19cm</td></tr></tbody></table></figure><ul><li><br>&nbsp;</li></ul>',NULL,NULL,NULL,21,NULL,NULL,'Y','ZPCC02',NULL,NULL,20,NULL),(717,'2019-01-09 03:46:29.293','2019-01-09 03:46:29.293',0,'N',0,'Wooden Chicken Coop Rabbit Hutch Guinea Pig Ferret Cage Hen House With 2 Nesting Box','N',360,339.95,'<p>Are you having trouble sleeping with your furry friend? Do they always get into bed with you? Well no more! The Chicken Coop mini farm is here for you. This housing is both waterproof and anti-termite and will last you for years. Easy to access with ramps and entrances, your pets will be able to go in and out with ease. There is a nesting area for chickens and a dedicated play area made with mesh wire. These features will allow your pets to exercise and rest. Slide out trays and open roofs are there for the easy collection of eggs and cleaning.</p><p>This chicken coop mini farm will allow your pets their own space. No more going up the bed again or unwanted areas, your pets will stay still.</p>',NULL,40,40,NULL,100,'<ul><li>Three separated areas</li><li>Waterproof &amp; Anti-termite</li><li>Strong &amp; firm security locks</li><li>Opening roofs for easy cleaning</li><li>Slide out trays for easy cleaning</li><li>Built-in ramp for access to upper floor</li><li>Raised floor to keep warmth and dryness</li><li>Spacious integrated ground enclosed play area</li><li>High-quality Fir wood construction with mesh wire</li><li>Green asphalt roof for rain and sun heating protection</li><li>Removable door and window for conveniently ventilation and day lighting</li><li>Also suitable for rabbits, guinea pigs, rabbits, ducks or other small animals</li><li>With 2 Integrated nesting box and the roof of nesting box can be opened for collecting eggs</li></ul><figure class=\"table\"><table><tbody><tr><td>Colour:</td><td>Natural Fir Wood Colour with Green Roof</td></tr><tr><td>Material:</td><td>Fir Wood with mesh wire</td></tr><tr><td>Roof Surface:</td><td>Green asphalt</td></tr><tr><td>Package size:</td><td>85x75x27cm</td></tr><tr><td>Package weight:</td><td>43kg</td></tr><tr><td>Overall Dimensions:</td><td>L160 x W100 x H97cm</td></tr><tr><td>Nesting Box Dimensions:</td><td>L95 x W41 x H45cm</td></tr><tr><td>Tray Dimensions:</td><td>L73 x W88cm</td></tr><tr><td>The Ladder Dimensions:</td><td>L38 x W 19cm</td></tr></tbody></table></figure>',NULL,NULL,NULL,20,NULL,NULL,'Y','zpcc03',NULL,NULL,0.2,NULL),(718,'2019-01-09 04:01:04.439','2019-01-09 04:01:04.439',0,'N',0,'XXL Luxury Wooden Dog House with Removable Porch & Floor','N',169.95,165.95,'<p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Give your dog a place of his own with this XXL Luxury Wooden Dog House with Removable Porch and Floor! Elegantly constructed with high quality natural fir wood and featuring a removable plastic door and floor to allow for maximum air circulation creating a natural fan to help keep your pet cool. The sloped roof ensures your pet remains clean and dry as rain and snow slide off and the asphalt texture keeps it from leaking. Equipped with a personal outdoor shed for storing toys and an outdoor food and water bowl this pet house this lavish pet house is for any dog. This comfortable spacious dog house provides shelter from the elements and a sense of safety for your dog!</span></p>',NULL,40,40,NULL,100,'<ul><li>Height Adjustable Feet</li><li>Spacious &amp; Comfortable</li><li>Weatherproof Lined Roof</li><li>Removable Plastic Door &amp; Floor</li><li>Mortise &amp; Tenon Joints for Easy Assembly</li><li>Tongue &amp; Groove Joints to Avoid Splintering</li><li>Constructed With High Quality Natural Fir Wood</li><li>Made From TUV Approved Eco-Friendly Materials</li><li>Asphalt Roof for Maximum Protection Against Rain &amp; Sun</li><li>Feet with Waterproof Rubber Cover for Moisture Protection</li><li>Equipped With Detachable Storage Box, 2 Food Bowls &amp; Patio Dog Bed</li></ul><figure class=\"table\"><table><tbody><tr><td>Size</td><td>XXL large</td></tr><tr><td>Roof material</td><td>Grey asphalt</td></tr><tr><td>Dog house overall (LxWxH)&nbsp;<br>Interior (LxWxH)<br>Door size (WxH)&nbsp;<br>Storage box size<br>Dog bowl size&nbsp;<br>Patio size</td><td>101cm x 84.5cm x 88cm<br>86cm x 68cm x72cm<br>34cm x45cm<br>52.2cm x 33cm x 43cm<br>39cm x 31cm x22cm<br>68cm x 46cm x 37cm</td></tr><tr><td>Package Size (LxWxH)</td><td>104*72*23.5cm</td></tr><tr><td>Package Includes:<br>&nbsp;</td><td>1 x Dog Kennel<br>1 x Assembly Kit<br>1 x User Manual</td></tr><tr><td>Package Weight:</td><td>32.9kg</td></tr></tbody></table></figure>',NULL,NULL,NULL,19,NULL,NULL,'Y','ZPDK1601',NULL,NULL,20,NULL),(719,'2019-01-09 04:06:58.926','2019-01-09 23:37:01.241',2,'N',0,'XXL Flat Roof Wooden Dog House Kennel','N',149.95,145.95,'<p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Create a sanctuary for your dog with this Large Flat Roof Wooden Dog House Kennel! Fully weather resistant, crafted with high-quality natural Firwood and featuring a slightly slanted asphalt roof this house ensures your beloved pet dog has a safe comfortable shelter from the elements. The strategically placed door with removable plastic helps this dog kennel provide maximum ventilation while providing the best weather protection for your pet. Height adjustable legs ensure the house is just raised enough to avoid flooding but low enough for your dog to exit and enter safely. The flip-open hinged roof and removable floor make it easy to clean. Every dog will love getting ‘banished to the dog house’ with this beautiful flat roof pet house!</span></p>',NULL,40,40,NULL,100,'<ul><li>Height Adjustable Feet</li><li>Spacious &amp; Comfortable</li><li>Weatherproof Lined Roof</li><li>Removable Plastic Door &amp; Floor</li><li>Mortise &amp; Tenon Joints for Easy Assembly</li><li>Tongue &amp; Groove Joints to Avoid Splintering</li><li>Constructed With High Quality Natural Fir Wood</li><li>Made From TUV Approved Eco-Friendly Materials</li><li>Asphalt Roof for Maximum Protection Against Rain &amp; Sun</li><li>Feet with Waterproof Rubber Cover for Moisture Protection</li></ul><p>Refer to gallery for dimensions</p><figure class=\"table\"><table><tbody><tr><td>Size</td><td>XXL Large</td></tr><tr><td>Roof material</td><td>Green Asphalt</td></tr><tr><td>Dog house Overall (LxWxH)<br>Interior(LxWxH)<br>Door size (WxH)</td><td>123.2cm x 81.5cm x 81cm<br>113cm x 69cm x 65cm<br>34cm x 46cm</td></tr><tr><td>Package Includes</td><td>1x Dog Kennel<br>1x Assembly Kit<br>1x User Manual</td></tr><tr><td>Package Size (LxWxH)</td><td>126.5cm x 65cm x 16cm</td></tr><tr><td>Package Weight</td><td>28.4kg</td></tr></tbody></table></figure>',NULL,NULL,NULL,25,NULL,NULL,'Y','ZPDK1602B',NULL,NULL,0.125,NULL),(720,'2019-01-09 04:10:55.288','2019-01-09 04:10:55.288',0,'N',0,'XL Wooden Dog House with Flip Open Hinged Roof and Side Window','N',139.95,135.95,'<p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Give your dog a place of his own with this XL Luxury Wooden Dog House with Removable Porch and Floor! Elegantly crafted with high quality natural fir wood and featuring a removable plastic door and floor, with opening side windows to allow for maximum air circulation to help keep your pet cool. The apex-styled roof sloped ?ensures your pet remains clean and dry as rain and snow slide off while the asphalt texture keeps it from leaking.This comfortable spacious dog house provides shelter from the elements and a sense of safety for your dog!</span></p>',NULL,40,40,NULL,100,'<ul><li>Height Adjustable Feet</li><li>Spacious &amp; Comfortable</li><li>Weatherproof Lined Roof</li><li>Removable Plastic Door &amp; Floor</li><li>Mortise &amp; Tenon Joints for Easy Assembly</li><li>Tongue &amp; Groove Joints to Avoid Splintering</li><li>Constructed With High Quality Natural Fir Wood</li><li>Made From TUV Approved Eco-Friendly Materials</li><li>Asphalt Roof for Maximum Protection Against Rain &amp; Sun</li><li>Feet with Waterproof Rubber Cover for Moisture Protection<br>&nbsp;</li></ul><figure class=\"table\"><table><tbody><tr><td>Size</td><td>XL</td></tr><tr><td>Roof material</td><td>Gray Asphalt</td></tr><tr><td>Dog house: Overall (LxWxH)&nbsp;<br>Interior (LxWxH)<br>Door size (WxH)</td><td>83cm x 103cm x 87.5cm<br>81cm x 65cm x72cm<br>34cm x 47cm</td></tr><tr><td>Package Includes:<br>&nbsp;</td><td>1x Dog Kennel<br>1x Assembly Kit<br>1x User Manual</td></tr><tr><td>Package Size (LxWxH)</td><td>88cm x 87cm x 17cm</td></tr><tr><td>Package Weight</td><td>23kg</td></tr></tbody></table></figure>',NULL,NULL,NULL,17,NULL,NULL,'Y','ZPDK1603',NULL,NULL,20,NULL),(722,'2019-01-09 23:33:52.646','2019-01-09 23:33:52.646',0,'N',0,'XL Wooden Dog Kennel All-Weather Elevated Pet House w/Patio & Window-Beige','N',229.95,225.95,'<p>Create a sweet home for your furry friend with our <strong>XL Wooden Dog Kennel All Weather Elevated Pet House w/Patio &amp; Window – Black. </strong>Made of premium fir, this <strong>XL wooden dog kennel</strong> with a wired window is absolutely a solid, spacious and cozy pet house for your cuddly friend to rest and play. The black asphalt roof with strong locking hinges can not only withstand heat as well as rain and keep your pet comfortable all year round, but also be propped open for extra air, light and easy cleaning, which is also good for preventing the lice or parasites. This versatile <strong>dog house </strong>can also allow your cute little friend to lounge on the large patio to enjoy the sunshine and fresh air. Covered with waterproof rubber for moisture protection, the adjustable legs can make this<strong> large dog kennel </strong>level with the uneven surface and leave extra room beneath, which helps maintain a pleasant floor temperature. Suitable for indoor and outdoor use, this multifunctional <strong>pet house </strong>also comes with a removable plastic door for easy access to the entrance of your little one. For your peace of mind, the kennel, patio and the floor are detachable too, so that you can clean them easily and thoroughly. Featuring a classic design, this<strong> pet kennel </strong>can blend in perfectly with your home décor. What a great pet house for your dog or cat! Bring one home and cheer it up!</p>',NULL,40,40,NULL,100,'<p>Extra large pet timber dog kennel with patio&nbsp;<br>Constructed of high-quality natural fir wood&nbsp;<br>Spacious &amp; comfortable for beautiful architectural design&nbsp;<br>Black asphalt roof for rain and sun heating protection&nbsp;<br>Feet with waterproof rubber cover for moisture protection&nbsp;<br>Adjustable leg ensuring stability on uneven surfaces&nbsp;<br>Lift up roof for treat/check for lice and other parasites&nbsp;<br>Roof with strong locking hinges&nbsp;<br>Removable plastic door for easy access to entrance&nbsp;<br>Have a side window for ventilated and lighted&nbsp;<br>With patio dog bed for rest and do exercise&nbsp;<br>Patio and kennel can be separate use&nbsp;<br>With removable floor for easy cleaning</p><figure class=\"table\"><table><tbody><tr><td>Size</td><td>XL Large</td></tr><tr><td>Material</td><td>Fir Wood</td></tr><tr><td>Roof</td><td>Black Asphalt</td></tr><tr><td>Shape</td><td>\"A\" Shape</td></tr><tr><td>Dog house Overall (L x W x H)</td><td>171cm x 90cm x 83cm</td></tr><tr><td>Patio (L x W x H)</td><td>96cm x 80cm x 38cm&nbsp;</td></tr><tr><td>Door size (W x H)</td><td>34cm x 42 cm</td></tr><tr><td>The max load weight for kennel</td><td>50kg</td></tr><tr><td>The max load weight for patio</td><td>70kg</td></tr><tr><td>Package Size (L x W x H)</td><td>121cm x83cm x23cm</td></tr><tr><td>Package Weight</td><td>26kg</td></tr></tbody></table></figure>',NULL,NULL,NULL,26,NULL,NULL,'Y','ZPDK1701A',NULL,NULL,20,NULL),(723,'2019-01-09 23:42:02.487','2019-01-09 23:42:02.487',0,'N',0,'XL Wooden Dog Kennel All-Weather Flat Roof Pet House w/Patio & Window - Beige','N',219.95,215.95,'<p>Create a sweet home for your furry friend with our <strong>XL Wooden Dog Kennel All Weather Flat Roof Pet House w/Patio &amp; Window – Beige. </strong>Made of premium fir, this <strong>XL wooden dog kennel</strong> with a wired window is absolutely a solid, spacious and cozy pet house for your cuddly friend to rest and play. The black asphalt roof with strong locking hinges can not only withstand heat as well as rain and keep your pet comfortable all year round, but also be propped open for extra air, light and easy cleaning, which is also good for preventing the lice or parasites. This versatile <strong>dog house </strong>can also allow your cute little friend to lounge on the large patio to enjoy the sunshine and fresh air. Covered with waterproof rubber for moisture protection, the adjustable legs can make this<strong> large dog kennel </strong>level with the uneven surface and leave extra room beneath, which helps maintain a pleasant floor temperature. Suitable for indoor and outdoor use, this multifunctional <strong>pet house </strong>also comes with a removable plastic door for easy access to the entrance of your little one. For your peace of mind, the kennel, patio and the floor are detachable too, so that you can clean them easily and thoroughly. Featuring a classic design, this<strong> pet kennel </strong>can blend in perfectly with your home décor. What a great pet house for your dog or cat! Bring one home and cheer it up!</p>',NULL,40,40,NULL,100,'<ul><li>Extra large pet timber dog kennel with patio</li><li>Constructed of high-quality natural fir wood</li><li>Spacious &amp; comfortable for beautiful architectural design</li><li>Black asphalt roof for rain and sun heating protection</li><li>Feet with waterproof rubber cover for moisture protection</li><li>Adjustable leg ensuring stability on uneven surfaces</li><li>Lift up roof for treat/check for lice and other parasites</li><li>Roof with strong locking hinges</li><li>Removable plastic door for easy access to entrance</li><li>Have a side window for ventilated and lighted</li><li>With patio dog bed for rest and do exercise</li><li>Patio and kennel can be separate use</li><li>With removable floor for easy cleaning</li></ul><figure class=\"table\"><table><tbody><tr><td>Size</td><td>XL Large</td></tr><tr><td>Material</td><td>Fir Wood</td></tr><tr><td>Roof</td><td>Black Asphalt</td></tr><tr><td>Shape</td><td>Flat shape</td></tr><tr><td>Dog house Overall (L x W x H)</td><td>171cm x 90cm x 83cm</td></tr><tr><td>Patio (L x W x H)</td><td>96cm x 80cm x 38cm&nbsp;</td></tr><tr><td>Door size (W x H)</td><td>42cm x 34 cm</td></tr><tr><td>The max load weight for kennel</td><td>50kg</td></tr><tr><td>The max load weight for patio</td><td>70kg</td></tr><tr><td>Package Size (L x W x H)</td><td>103cm x 86cm x25cm</td></tr><tr><td>Package Weight</td><td>26kg</td></tr></tbody></table></figure>',NULL,NULL,NULL,27,NULL,NULL,'Y','ZPDK1701B',NULL,NULL,0.125,NULL),(724,'2019-01-10 00:39:19.898','2019-01-10 00:39:19.898',0,'N',0,'XXL Wooden Dog Kennel 2 Door All-Weather Pet House w/Patio & Window - Beige','N',359.95,350.95,'<p>Create a sweet home for your furry friend with our <strong>XXL Wooden Dog Kennel 2 Door All Weather Pet House w/Patio &amp; Window – Black</strong>. Made of premium fir, this <strong>XXL wooden dog kennel</strong> with a wired window is absolutely a solid, spacious and cozy pet house for your cuddly friend to rest and play. The black asphalt roof with strong locking hinges can not only withstand heat as well as rain and keep your pet comfortable all year round, but also be propped open for extra air, light and easy cleaning, which is also good for preventing the lice or parasites. This versatile <strong>dog house </strong>can also allow your cute little friend to lounge on the large patio to enjoy the sunshine and fresh air. Covered with waterproof rubber for moisture protection, the adjustable legs can make this<strong> large dog kennel </strong>level with the uneven surface and leave extra room beneath, which helps maintain a pleasant floor temperature. Suitable for indoor and outdoor use, this multifunctional <strong>pet house </strong>also comes with two removable plastic doors for easy access to the entrance of your little one. For your peace of mind, the kennel, patio and the floor are detachable too, so that you can clean them easily and thoroughly. Featuring a classic design, this<strong> pet kennel </strong>can blend in perfectly with your home décor. What a great pet house for your dog or cat! Bring one home and cheer it up!</p>',NULL,40,40,NULL,100,'<ul><li>2 Doors pet timber dog kennel with patio</li><li>Constructed of high quality natural fir wood</li><li>Spacious &amp; comfortable for beautiful architectural design</li><li>Black asphalt roof for rain and sun heating protection</li><li>Feet with waterproof rubber cover for moisture protection</li><li>Adjustable leg ensuring stability on uneven surfaces</li><li>Lift up roof for treat/check for lice and other parasites</li><li>Roof with strong locking hinges</li><li>Removable plastic door for easy access to entrance</li><li>Have a divide between 2 doors</li><li>Have a side window for ventilated and lighted</li><li>With patio dog bed for rest and do exercise</li><li>Patio and kennel can be separate use</li><li>With removable floor for easy cleaning</li></ul><figure class=\"table\"><table><tbody><tr><td>Size</td><td>XXL Large</td></tr><tr><td>Material</td><td>Fir Wood</td></tr><tr><td>Roof</td><td>Black Asphalt</td></tr><tr><td>Shape</td><td>\"A\" Shape</td></tr><tr><td>Dog house Overall (L x W x H)</td><td>162cm x150cm x 100cm&nbsp;&nbsp;</td></tr><tr><td>Patio (L x W x H)</td><td>135cm x 80cm x 35cm&nbsp;</td></tr><tr><td>Door size (W x H)</td><td>47cm x 33cm</td></tr><tr><td>Divider door size (W x H)</td><td>54cm x 34cm</td></tr><tr><td>The max load weight for kennel</td><td>50kg</td></tr><tr><td>The max load weight for patio</td><td>70kg</td></tr><tr><td>Carton 1 Size (L x W x H)</td><td>93cm x 84cm x 19cm</td></tr><tr><td>Carton 2 Size (L x W x H)</td><td>139cm x 82cm x 19cm</td></tr><tr><td>Carton 1 Weight</td><td>22kg</td></tr><tr><td>Carton 2 Weight</td><td>24kg</td></tr></tbody></table></figure>',NULL,NULL,NULL,28,NULL,NULL,'Y','ZPDK1702A',NULL,NULL,20,NULL),(725,'2019-01-10 00:48:55.211','2019-01-10 00:49:47.920',1,'N',0,'XXL Wooden Dog Kennel 2 Door All-Weather Flat Roof Pet House w/Patio - Beige','N',349.95,339.95,'<p>Create a sweet home for your furry friend with our <strong>XXL Wooden Dog Kennel 2 Door All Weather Flat Roof Pet House w/Patio – Black</strong>. Made of premium fir, this <strong>XXL wooden dog kennel</strong> with a wired window is absolutely a solid, spacious and cozy pet house for your cuddly friend to rest and play. The black asphalt roof with strong locking hinges can not only withstand heat as well as rain and keep your pet comfortable all year round, but also be propped open for extra air, light and easy cleaning, which is also good for preventing the lice or parasites. This versatile <strong>dog house </strong>can also allow your cute little friend to lounge on the large patio to enjoy the sunshine and fresh air. Covered with waterproof rubber for moisture protection, the adjustable legs can make this<strong> large dog kennel </strong>level with the uneven surface and leave extra room beneath, which helps maintain a pleasant floor temperature. Suitable for indoor and outdoor use, this multifunctional <strong>pet house </strong>also comes with two removable plastic doors for easy access to the entrance of your little one. For your peace of mind, the kennel, patio and the floor are detachable too, so that you can clean them easily and thoroughly. Featuring a classic design, this<strong> pet kennel </strong>can blend in perfectly with your home décor. What a great pet house for your dog or cat! Bring one home and cheer it up!</p>',NULL,40,40,NULL,100,'<ul><li>2 Doors pet timber dog kennel with patio</li><li>Constructed of high quality natural fir wood</li><li>Spacious &amp; comfortable for beautiful architectural design</li><li>Black asphalt roof for rain and sun heating protection</li><li>Feet with waterproof rubber cover for moisture protection</li><li>Adjustable leg ensuring stability on uneven surfaces</li><li>Lift up roof for treat/check for lice and other parasites</li><li>Roof with strong locking hinges</li><li>Removable plastic door for easy access to entrance</li><li>Have a divider between 2 doors</li><li>Have a side window for ventilated and lighted</li><li>With patio dog bed for rest and do exercise</li><li>Patio and kennel can be separate use</li><li>With removable floor for easy cleaning</li></ul><figure class=\"table\"><table><tbody><tr><td>Size</td><td>XXL Large</td></tr><tr><td>Material</td><td>Fir Wood</td></tr><tr><td>Roof</td><td>Black Asphalt</td></tr><tr><td>Shape</td><td>\"Flat\" Shape</td></tr><tr><td>Dog house Overall (L x W x H)</td><td>162cm x150cm x 100cm&nbsp;&nbsp;</td></tr><tr><td>Patio (L x W x H)</td><td>135cm x 80cm x 35cm&nbsp;</td></tr><tr><td>Door size (W x H)</td><td>47cm x 33cm</td></tr><tr><td>Divider door size (W x H)</td><td>54cm x 34cm</td></tr><tr><td>The max load weight for kennel</td><td>50kg</td></tr><tr><td>The max load weight for patio</td><td>70kg</td></tr><tr><td>Carton 1 Size (L x W x H)</td><td>158cm x 94cm x 12cm</td></tr><tr><td>Carton 2 Size (L x W x H)</td><td>102cm x 76cm x 23cm</td></tr><tr><td>Carton 1 Weight</td><td>24kg</td></tr><tr><td>Carton 2 Weight</td><td>22kg</td></tr></tbody></table></figure>',NULL,NULL,NULL,29,NULL,NULL,'Y','ZPDK1702B',NULL,NULL,0.125,NULL),(728,'2019-01-10 00:58:22.676','2019-01-10 01:00:20.182',2,'N',0,'Pets Imperial Extra Large Insulated Wooden Dog Kennel DH8L','N',140.5,120.5,'<p>Improve the living space of your four-legged friend with our <strong>dog kennel</strong>. Constructed in quality fir wood with green asphalt roof, the durable <strong>dog house</strong> will protect your lovely dogs from the sun and rain all the year round. The <strong>doghouse</strong> also is raised off the ground to protect from moisture and decay. The side window ensures the house stay well-ventilated and keep pets comfortable. The <strong>dog cage</strong> is designed to create a spacious patio for your dogs to play and rest. Suitable for use both indoors and outdoors, the <strong>doggie villa</strong> with storage box and bowl stand is truly a comfortable haven or home for your pooch.</p>',NULL,40,40,NULL,100,'<p><br>Dog house overall (LxWxH) 1200mm x745mm x 765mm&nbsp;<br>Carton Size (L x W x H) 1270mm x 760mm x 145mm&nbsp;<br>Carton Weight 23kg&nbsp;<br>&nbsp;</p>',NULL,NULL,NULL,31,NULL,NULL,'Y','DH8L',NULL,NULL,0.125,NULL),(729,'2019-01-10 01:03:15.811','2019-01-10 01:03:15.811',0,'N',0,'Pets Imperial Extra Large Insulated Wooden Dog Kennel XP-712','N',145.5,135.5,'<p>Improve the living space of your four-legged friend with our <strong>dog kennel</strong>. Constructed in quality fir wood with green asphalt roof, the durable <strong>dog house</strong> will protect your lovely dogs from the sun and rain all the year round. The <strong>doghouse</strong> also is raised off the ground to protect from moisture and decay. The side window ensures the house stay well-ventilated and keep pets comfortable. The <strong>dog cage</strong> is designed to create a spacious patio for your dogs to play and rest. Suitable for use both indoors and outdoors, the <strong>doggie villa</strong> with storage box and bowl stand is truly a comfortable haven or home for your pooch.</p>',NULL,40,40,NULL,100,'<p>Dog house overall (LxWxH) 1030mm x830mm x 960mm &nbsp;<br>Carton Size (L x W x H) 1030mm x 205mm x 695mm&nbsp;<br>Carton Weight 18kg&nbsp;<br>&nbsp;</p>',NULL,NULL,NULL,32,NULL,NULL,'Y','XP-712',NULL,NULL,0.125,NULL),(730,'2019-01-10 01:17:19.574','2019-01-10 01:17:19.574',0,'N',0,'Pets Imperial Extra Large Insulated Wooden Dog Kennel XP-713','N',219.95,199.5,'<p>Improve the living space of your four-legged friend with our <strong>dog kennel</strong>. Constructed in quality fir wood with green asphalt roof, the durable <strong>dog house</strong> will protect your lovely dogs from the sun and rain all the year round. The <strong>doghouse</strong> also is raised off the ground to protect from moisture and decay. The side window ensures the house stay well-ventilated and keep pets comfortable. The <strong>dog cage</strong> is designed to create a spacious patio for your dogs to play and rest. Suitable for use both indoors and outdoors, the <strong>doggie villa</strong> with storage box and bowl stand is truly a comfortable haven or home for your pooch.</p>',NULL,40,40,NULL,100,'<p><br>Dog house overall (LxWxH) 1100mm x800mm x 900mm&nbsp;<br>Carton Size (L x W x H) 1120mm x 760mm x 260mm&nbsp;<br>Carton Weight 28kg&nbsp;</p>',NULL,NULL,NULL,33,NULL,NULL,'Y','XP-713',NULL,NULL,0.125,NULL),(731,'2019-01-13 22:50:19.238','2019-01-16 03:08:48.893',3,'N',0,'Patio awning(BW7) ','N',1299.99,999.99,'<p>ALUMINUM CANOPY&nbsp;are the perfect choice when you need protection from the elements. Our aluminum &nbsp;canopies are made to last and feature a heavy-duty mill finish aluminum framework. Canopies are designed to protect your entry from both the rain and the snow.&nbsp;</p><p><br>&nbsp;</p>',NULL,40,40,NULL,108,'<p>FIXED-ROOF CANOPY 4mx3m&nbsp;<br>1)Overall Size:L434 x W303 x H258cm &nbsp;&nbsp;<br>Front Height: 192-195cm , Back Height:250-258cm &nbsp;&nbsp;<br>2.)Material:1.5mm Aluminum Frame with Powder Coating &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>6mm Twin-wall Polycarbonate Sheets with UV-protecting &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>3.)With 3 Posts &amp; Full Anchors Kits &nbsp;(Post Dim 10x4cm) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>4.)Color Options:PC sheets:Transparent &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>Alu-Frame:White RAL9016 &nbsp; &nbsp; &nbsp;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>&nbsp;</p>',NULL,NULL,NULL,35,NULL,NULL,'Y','BW8',NULL,NULL,2,NULL),(732,'2019-01-13 22:53:45.718','2019-01-16 03:08:13.455',5,'N',0,'Patio awning(BW8) ','N',1399.99,1099.99,'<p>ALUMINUM CANOPY&nbsp;are the perfect choice when you need protection from the elements. Our aluminum &nbsp;canopies are made to last and feature a heavy-duty mill finish aluminum framework. Canopies are designed to protect your entry from both the rain and the snow.&nbsp;</p><p><br>&nbsp;</p>',NULL,40,40,NULL,108,'<p>FIXED-ROOF CANOPY 5mx3m&nbsp;<br>1) Overall Size:L495 x W303 x H258cm &nbsp;&nbsp;<br>Front Height:192-195cm , Back Height:250-258cm &nbsp;&nbsp;<br>2.) Material: 1.5mm Aluminum Frame with Powder Coating &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>6mm Twin-wall Polycarbonate Sheets with UV-protecting &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>3.) With 3 Posts &amp; Full Anchors Kits(Post Dim 10x4cm) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>4.) Color Options: PC sheets: Transparent &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>Alu-Frame: White RAL9016 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>&nbsp;</p>',NULL,NULL,NULL,34,NULL,NULL,'Y','BW8',NULL,NULL,2,NULL),(733,'2019-01-13 23:47:10.645','2019-01-14 00:01:42.899',3,'N',0,'CARPORT LY-S1','N',4099,3499,'<p style=\"text-align:justify;\">The aluminium carport has an excellent design which is unique and splendid. It looks graceful and has a fantastic design that makes it stand out from the rest of the background. The design and style of this carport add to the beauty of its surroundings.</p>',NULL,40,40,NULL,108,'<p>ALU-PC CARPORT 3*5.5m &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>1) Overall Size: &nbsp;L550 x W300 x H300cm &nbsp; &nbsp;<br>2.) Material:3mm Alu-Frame with Powder Coating &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>2mm solid Polycarnonate Sheets with UV-protecting &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>3.) With 2 Posts &amp; Full Anchors Kits &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>&nbsp;5.) Color Options: &nbsp; PC sheets:Bronze &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>Alu-Frame: Champagne &nbsp;&nbsp;<br>&nbsp;</p>',NULL,NULL,NULL,36,NULL,NULL,'Y','LY-S1',NULL,NULL,3,NULL),(734,'2019-01-13 23:59:31.878','2019-01-14 00:16:47.281',5,'N',0,'CARPORT LY-S2','N',4099,3499,'<p style=\"text-align:justify;\">The aluminium carport has an excellent design which is unique and splendid. It looks graceful and has a fantastic design that makes it stand out from the rest of the background. The design and style of this carport add to the beauty of its surroundings.</p>',NULL,40,40,NULL,108,'<p>ALU-PC CARPORT 3*5.5m &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>&nbsp;1) Overall Size: &nbsp;L550 x W300 x H300cm &nbsp; &nbsp;<br>2.) Material:3mm Alu-Frame with Powder Coating &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>2mm solid Polycarnonate Sheets with UV-protecting &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>3.) With 2 Posts &amp; Full Anchors Kits &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>5.) Color Options: &nbsp; PC sheets:Blue &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>&nbsp;Alu-Frame: White&nbsp;<br>&nbsp;</p>',NULL,NULL,NULL,37,NULL,NULL,'Y','LY-S2',NULL,NULL,3,NULL),(735,'2019-01-14 10:04:37.476','2019-01-15 03:14:34.915',3,'N',0,'初秋男女童宽松个性撞色圆领卫衣','N',50,48,'<p>这款卫衣可是不容错过的个性款 流线条的撞色设计 显得袖子很特别</p><p>简洁耐看 宽松版型下身搭配个修身牛仔裤 整体很有活力</p><p>男女宝宝都适合的中性款</p>',NULL,50,50,NULL,102,'<p>这款卫衣可是不容错过的个性款 流线条的撞色设计 显得袖子很特别</p><p>简洁耐看 宽松版型下身搭配个修身牛仔裤 整体很有活力</p><p>男女宝宝都适合的中性款</p>','<p>这款卫衣可是不容错过的个性款 流线条的撞色设计 显得袖子很特别</p><p>简洁耐看 宽松版型下身搭配个修身牛仔裤 整体很有活力</p><p>男女宝宝都适合的中性款</p>','初秋男女童宽松个性撞色圆领卫衣','<p>这款卫衣可是不容错过的个性款 流线条的撞色设计 显得袖子很特别</p><p>简洁耐看 宽松版型下身搭配个修身牛仔裤 整体很有活力</p><p>男女宝宝都适合的中性款</p>',38,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL),(736,'2019-01-15 03:02:38.273','2019-01-16 02:39:24.720',6,'N',2,'西瓜条带裙','N',38,35,'',NULL,50,50,NULL,101,'','',NULL,'',39,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL),(738,'2019-01-16 02:24:14.549','2019-01-16 02:39:05.955',5,'N',0,'面包超人短袖T恤','N',25,NULL,'',NULL,50,50,NULL,102,'','',NULL,'',40,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL),(740,'2019-01-16 03:07:57.659','2019-01-16 03:26:35.478',5,'N',0,'红色条纹背心','N',20.99,17.99,'',NULL,50,50,NULL,102,'','','汪汪队宝宝条纹背心红色款','',51,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL),(741,'2019-01-16 03:25:25.530','2019-04-22 08:50:08.921',8,'N',100,'黑色条纹背心','N',20.99,17.99,'<p>3</p>',NULL,50,50,NULL,102,'<p>特别好的衣服</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://img30.360buyimg.com/popWaterMark/jfs/t2503/120/2624517375/231086/1b6901ff/56e2a9aaNf9655149.jpg\" alt=\"\"></figure><figure class=\"image\"><img src=\"https://img30.360buyimg.com/popWaterMark/jfs/t2575/24/1508061282/41465/d8d6de4/56e2a9aaNddbf8056.jpg\" alt=\"\"></figure><figure class=\"image\"><img src=\"https://img30.360buyimg.com/popWaterMark/jfs/t2089/143/2602102892/105406/97409768/56e2a9abN0e637a16.jpg\" alt=\"\"></figure><figure class=\"image\"><img src=\"https://img30.360buyimg.com/popWaterMark/jfs/t2575/17/1465842290/185819/d48b997/56e2a9acNcf660ba6.jpg\" alt=\"\"></figure><p>&nbsp;</p><p>&nbsp;</p>','<p>2</p>','汪汪队条纹背心黑色款','<p>4</p>',50,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL),(742,'2019-04-04 03:46:11.621','2019-04-04 03:47:28.923',1,'N',35,'GARDEN SHED 3120mm x W 2570mm x H 2020mm','N',700,600,'<p>This 10<strong>\' x 8\' FT Steel Storage Shed</strong> is an ideal <strong>outdoor storage solution</strong>. Easy to assemble and sturdy it is great for storing garden tools, chairs or other seasonal accessories. Featuring two sliding doors with handles that are easy to grip; this <strong>shed</strong> is equipped with two vents that help ensure a continuous fresh air within the shed. Keep your yard neat and organized with this handy <strong>garden shed</strong>.</p>',NULL,40,40,NULL,109,'<p>&nbsp;10\' x 8\' ft &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>&nbsp;Size:3120mm x W 2570mm x H 2020mm, &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>With 2 slide doors , 4 vents; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>Door Height : 1640mm, Total Height: 202cm &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>1.) Material: 0.25mm color board , &nbsp;0.6mm zinc steel frame &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>2.) with Metal foundation &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>',NULL,NULL,NULL,52,NULL,NULL,'Y','',NULL,NULL,0.2,NULL),(743,'2019-04-04 03:48:33.549','2019-04-04 03:50:41.465',4,'N',35,'GARDEN SHED 3120mm x W 2570mm x H 2020mm','N',700,600,'<p>This 10<strong>\' x 8\' FT Steel Storage Shed</strong> is an ideal <strong>outdoor storage solution</strong>. Easy to assemble and sturdy it is great for storing garden tools, chairs or other seasonal accessories. Featuring two sliding doors with handles that are easy to grip; this <strong>shed</strong> is equipped with two vents that help ensure a continuous fresh air within the shed. Keep your yard neat and organized with this handy <strong>garden shed</strong>.</p>',NULL,40,40,NULL,109,'<p>&nbsp;10\' x 8\' ft &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>&nbsp;Size:3120mm x W 2570mm x H 2020mm, &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>With 2 slide doors , 4 vents; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>Door Height : 1640mm, Total Height: 202cm &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>1.) Material: 0.25mm color board , &nbsp;0.6mm zinc steel frame &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>2.) with Metal foundation &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>',NULL,NULL,NULL,52,NULL,NULL,'Y','',NULL,NULL,0.2,NULL);
/*!40000 ALTER TABLE `product_single` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_single_attributes`
--

DROP TABLE IF EXISTS `product_single_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_single_attributes` (
  `product_single_id` bigint(20) NOT NULL,
  `attributes_id` bigint(20) NOT NULL,
  KEY `FKmx30exppkkvhfmfxmfke5g6cn` (`attributes_id`),
  KEY `FKhivlnrtaleks4ujkip5r97y0f` (`product_single_id`),
  CONSTRAINT `FKhivlnrtaleks4ujkip5r97y0f` FOREIGN KEY (`product_single_id`) REFERENCES `product_single` (`id`),
  CONSTRAINT `FKmx30exppkkvhfmfxmfke5g6cn` FOREIGN KEY (`attributes_id`) REFERENCES `attribute` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_single_attributes`
--

LOCK TABLES `product_single_attributes` WRITE;
/*!40000 ALTER TABLE `product_single_attributes` DISABLE KEYS */;
INSERT INTO `product_single_attributes` VALUES (735,3),(735,11),(735,5),(738,5),(738,3),(738,11),(736,3),(736,5),(736,24),(740,2),(740,5),(740,24),(741,5),(741,2),(741,16);
/*!40000 ALTER TABLE `product_single_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_single_detail_images`
--

DROP TABLE IF EXISTS `product_single_detail_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_single_detail_images` (
  `product_single_id` bigint(20) NOT NULL,
  `detail_images_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_f8qulqgqj5at7qil1ixgta43i` (`detail_images_id`),
  KEY `FKt3eebq07a20mmxuy4r0mh2ltp` (`product_single_id`),
  CONSTRAINT `FK26vqnfxk194mwxce3b89m61y1` FOREIGN KEY (`detail_images_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FK920v80518pxa4muycvj43xjw8` FOREIGN KEY (`detail_images_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FKe2wyvd7w9yo8wucdihbseu7m4` FOREIGN KEY (`product_single_id`) REFERENCES `product_single` (`id`),
  CONSTRAINT `FKt3eebq07a20mmxuy4r0mh2ltp` FOREIGN KEY (`product_single_id`) REFERENCES `product_single` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_single_detail_images`
--

LOCK TABLES `product_single_detail_images` WRITE;
/*!40000 ALTER TABLE `product_single_detail_images` DISABLE KEYS */;
INSERT INTO `product_single_detail_images` VALUES (695,2063),(695,2064),(695,2065),(702,2190),(702,2191),(702,2192),(702,2193),(702,2194),(711,2183),(711,2184),(711,2185),(712,2187),(712,2188),(712,2189),(714,2206),(714,2207),(714,2208),(714,2209),(714,2210),(716,2225),(716,2226),(716,2227),(716,2228),(717,2230),(717,2231),(717,2232),(717,2233),(718,2235),(718,2236),(718,2237),(718,2238),(719,2240),(719,2241),(719,2242),(719,2243),(720,2247),(720,2248),(720,2249),(720,2250),(722,2254),(722,2255),(722,2256),(722,2257),(723,2260),(723,2261),(723,2262),(723,2263),(724,2266),(724,2267),(724,2268),(724,2269),(725,2274),(725,2275),(725,2278),(725,2279),(728,2281),(728,2282),(728,2283),(728,2284),(729,2286),(729,2287),(729,2288),(730,2289),(730,2291),(730,2293),(730,2294),(730,2296),(731,2303),(731,2352),(731,2353),(731,2354),(731,2355),(731,2356),(731,2357),(731,2358),(731,2359),(731,2360),(731,2361),(732,2305),(732,2342),(732,2343),(732,2344),(732,2345),(732,2346),(732,2347),(732,2348),(732,2349),(732,2350),(732,2351),(733,2315),(733,2316),(733,2317),(734,2321),(734,2322),(735,2327),(735,2329),(735,2336),(736,2332),(736,2333),(738,2339),(740,2341),(741,2363),(741,2364),(742,2366),(742,2367),(742,2368),(742,2369),(743,2371),(743,2372),(743,2373);
/*!40000 ALTER TABLE `product_single_detail_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_single_feature_types`
--

DROP TABLE IF EXISTS `product_single_feature_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_single_feature_types` (
  `product_single_id` bigint(20) NOT NULL,
  `feature_types_id` bigint(20) NOT NULL,
  KEY `FKin42fm11xb6ck63r7kfs1lvig` (`feature_types_id`),
  KEY `FK7s5tcwn0e097k63f72jl95h7p` (`product_single_id`),
  CONSTRAINT `FK7s5tcwn0e097k63f72jl95h7p` FOREIGN KEY (`product_single_id`) REFERENCES `product_single` (`id`),
  CONSTRAINT `FK7yl1m9pora2l70ikqcywr8fqc` FOREIGN KEY (`product_single_id`) REFERENCES `product_single` (`id`),
  CONSTRAINT `FKhyjjdijgqj1h2qg2n3b3wava7` FOREIGN KEY (`feature_types_id`) REFERENCES `feature_type` (`id`),
  CONSTRAINT `FKin42fm11xb6ck63r7kfs1lvig` FOREIGN KEY (`feature_types_id`) REFERENCES `feature_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_single_feature_types`
--

LOCK TABLES `product_single_feature_types` WRITE;
/*!40000 ALTER TABLE `product_single_feature_types` DISABLE KEYS */;
INSERT INTO `product_single_feature_types` VALUES (711,17),(712,17),(714,18),(714,17),(716,18),(717,17),(718,17),(720,16),(702,16),(702,17),(702,18),(722,16),(719,16),(723,16),(724,17),(725,17),(728,17),(729,17),(730,17),(733,17),(734,17),(732,17),(731,18),(743,17);
/*!40000 ALTER TABLE `product_single_feature_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_single_group`
--

DROP TABLE IF EXISTS `product_single_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_single_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `name_zh_cn` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_fgtn2uhm06wrl6vndu2wjgqyo` (`name`),
  UNIQUE KEY `UK_nncy1eiv5tyf5puny1bhbea0j` (`name_zh_cn`),
  KEY `FK7o71j32eeuxna52g32pblbnas` (`creator_id`),
  KEY `FKfeinha8435pkrkx76vr7bveou` (`modifier_id`),
  KEY `FKnno3htr04c6tle3j3ntm8dmnt` (`user_id`),
  CONSTRAINT `FK7o71j32eeuxna52g32pblbnas` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKfeinha8435pkrkx76vr7bveou` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKnno3htr04c6tle3j3ntm8dmnt` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_single_group`
--

LOCK TABLES `product_single_group` WRITE;
/*!40000 ALTER TABLE `product_single_group` DISABLE KEYS */;
INSERT INTO `product_single_group` VALUES (1,'2018-11-06 04:00:18.309','2018-11-06 04:00:18.309',0,'test',NULL,40,40,NULL),(2,'2018-11-07 02:51:00.934','2018-11-07 02:51:00.934',0,'XXL Wooden Dog Kennel 2 Door All-Weather Flat Roof Pet House w/Patio - Yellow',NULL,40,40,NULL),(10,'2018-11-07 03:05:46.888','2018-11-07 03:05:46.888',0,'test2',NULL,40,40,NULL),(14,'2018-11-07 03:06:54.887','2018-11-07 03:06:54.887',0,'XXL Wooden Dog Kennel 2 Door All-Weather Pet House w/Patio & Window - Yellow',NULL,40,40,NULL),(15,'2018-11-07 03:13:46.487','2018-11-07 03:13:46.487',0,'XL Wooden Dog Kennel All-Weather Flat Roof Pet House w/Patio & Window - Yellow',NULL,40,40,NULL),(16,'2018-11-07 03:19:10.191','2018-11-07 03:19:10.191',0,'XL Wooden Dog Kennel All-Weather Elevated Pet House w/Patio & Window - Black',NULL,40,40,NULL),(17,'2018-11-07 03:29:44.355','2018-11-07 03:29:44.355',0,'XL Wooden Dog House with Flip Open Hinged Roof and Side Window',NULL,40,40,NULL),(18,'2018-11-07 03:32:46.022','2018-11-07 03:32:46.022',0,'Large Flat Roof Wooden Dog House Kennel',NULL,40,40,NULL),(19,'2018-11-07 03:36:15.127','2018-11-07 03:36:15.127',0,'XXL Luxury Wooden Dog House with Removable Porch & Floor',NULL,40,40,NULL),(20,'2018-11-07 03:39:29.322','2018-11-07 03:39:29.322',0,'Wooden Chicken Coop Rabbit Hutch Guinea Pig Ferret Cage Hen House With 2 Nesting Box',NULL,40,40,NULL),(21,'2018-11-07 03:43:07.663','2018-11-07 03:43:07.663',0,'1.8M Wooden Chicken Coop Rabbit Hutch Guinea Pig Ferret Cage Hen House 2 Storey Run',NULL,40,40,NULL),(22,'2018-11-07 03:45:51.158','2018-11-07 03:45:51.158',0,'Wooden Chicken Coop Rabbit Hutch Guinea Pig Ferret Cage Hen House 2 Storey Run With Nesting Box',NULL,40,40,NULL),(23,'2018-11-27 01:24:00.600','2018-11-27 01:24:00.600',0,'Machine Pallet Wrap',NULL,40,40,NULL),(24,'2018-12-07 01:29:22.282','2018-12-07 01:29:22.282',0,'Hand Stretch Wrap',NULL,40,40,NULL),(25,'2019-01-09 04:06:58.896','2019-01-09 04:06:58.896',0,'XXL Flat Roof Wooden Dog House Kennel',NULL,40,40,NULL),(26,'2019-01-09 23:33:52.631','2019-01-09 23:33:52.631',0,'XL Wooden Dog Kennel All-Weather Elevated Pet House w/Patio & Window-Beige',NULL,40,40,NULL),(27,'2019-01-09 23:42:02.473','2019-01-09 23:42:02.473',0,'XL Wooden Dog Kennel All-Weather Flat Roof Pet House w/Patio & Window - Beige',NULL,40,40,NULL),(28,'2019-01-10 00:39:19.881','2019-01-10 00:39:19.881',0,'XXL Wooden Dog Kennel 2 Door All-Weather Pet House w/Patio & Window - Beige',NULL,40,40,NULL),(29,'2019-01-10 00:48:55.200','2019-01-10 00:48:55.200',0,'XXL Wooden Dog Kennel 2 Door All-Weather Flat Roof Pet House w/Patio - Beige',NULL,40,40,NULL),(30,'2019-01-10 00:58:22.661','2019-01-10 00:58:22.661',0,'Withdraw Pets Imperial Extra Large Insulated Wooden Dog Kennel DH8L',NULL,40,40,NULL),(31,'2019-01-10 01:00:20.131','2019-01-10 01:00:20.131',0,'Pets Imperial Extra Large Insulated Wooden Dog Kennel DH8L',NULL,40,40,NULL),(32,'2019-01-10 01:03:15.798','2019-01-10 01:03:15.798',0,'Pets Imperial Extra Large Insulated Wooden Dog Kennel XP-712',NULL,40,40,NULL),(33,'2019-01-10 01:17:19.558','2019-01-10 01:17:19.558',0,'Pets Imperial Extra Large Insulated Wooden Dog Kennel XP-713',NULL,40,40,NULL),(34,'2019-01-13 22:50:19.228','2019-01-13 22:50:19.228',0,'Patio awning(BW8) ',NULL,40,40,NULL),(35,'2019-01-13 22:55:19.451','2019-01-13 22:55:19.451',0,'Patio awning(BW7) ',NULL,40,40,NULL),(36,'2019-01-13 23:47:10.630','2019-01-13 23:47:10.630',0,'CARPORT LY-S1',NULL,40,40,NULL),(37,'2019-01-14 00:14:53.412','2019-01-14 00:14:53.412',0,'CARPORT LY-S2',NULL,40,40,NULL),(38,'2019-01-14 10:04:37.449','2019-01-14 10:04:37.449',0,'初秋男女童宽松个性撞色圆领卫衣','初秋男女童宽松个性撞色圆领卫衣',50,50,NULL),(39,'2019-01-15 03:02:38.255','2019-01-15 03:02:38.255',0,'西瓜条带裙',NULL,50,50,NULL),(40,'2019-01-16 02:24:14.528','2019-01-16 02:24:14.528',0,'面包超人短袖T恤',NULL,50,50,NULL),(44,'2019-01-16 03:07:57.641','2019-01-16 03:07:57.641',0,'条纹背心','汪汪队宝宝条纹背心',50,50,NULL),(50,'2019-01-16 03:25:25.514','2019-01-16 03:25:25.514',0,'黑色条纹背心','汪汪队条纹背心黑色款',50,50,NULL),(51,'2019-01-16 03:25:51.970','2019-01-16 03:25:51.970',0,'红色条纹背心','汪汪队宝宝条纹背心红色款',50,50,NULL),(52,'2019-04-04 03:46:11.573','2019-04-04 03:46:11.573',0,'GARDEN SHED 3120mm x W 2570mm x H 2020mm',NULL,40,40,NULL);
/*!40000 ALTER TABLE `product_single_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_single_main_images`
--

DROP TABLE IF EXISTS `product_single_main_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_single_main_images` (
  `product_single_id` bigint(20) NOT NULL,
  `main_images_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_s1lueehky1k0i29ci92jhgsho` (`main_images_id`),
  KEY `FKe4dtme0iajts3wf1m25fmobt4` (`product_single_id`),
  CONSTRAINT `FK7lifd8jfphmq3q3pj0e52h8tp` FOREIGN KEY (`main_images_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FKe4dtme0iajts3wf1m25fmobt4` FOREIGN KEY (`product_single_id`) REFERENCES `product_single` (`id`),
  CONSTRAINT `FKf0lm4j2m6ef8sl5yw58op314o` FOREIGN KEY (`product_single_id`) REFERENCES `product_single` (`id`),
  CONSTRAINT `FKsu3b2vywlq31qbiftqqhqk13n` FOREIGN KEY (`main_images_id`) REFERENCES `attachment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_single_main_images`
--

LOCK TABLES `product_single_main_images` WRITE;
/*!40000 ALTER TABLE `product_single_main_images` DISABLE KEYS */;
INSERT INTO `product_single_main_images` VALUES (702,2195),(702,2196),(702,2197),(702,2198),(702,2199),(711,2182),(712,2186),(714,2205),(716,2224),(717,2229),(718,2234),(719,2258),(720,2246),(722,2253),(723,2264),(724,2270),(725,2271),(728,2280),(729,2285),(730,2295),(731,2302),(732,2304),(733,2314),(734,2319),(735,2334),(735,2335),(736,2331),(738,2338),(740,2340),(741,2362),(742,2365),(743,2370);
/*!40000 ALTER TABLE `product_single_main_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_single_slider_images`
--

DROP TABLE IF EXISTS `product_single_slider_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_single_slider_images` (
  `product_single_id` bigint(20) NOT NULL,
  `slider_images_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_bh0emfxh4lgf2mjx455iwc22q` (`slider_images_id`),
  KEY `FKtjwu4dhpim8kidbwfwqhgmryt` (`product_single_id`),
  CONSTRAINT `FKqiavv857b4hogk7htp4y9poj8` FOREIGN KEY (`slider_images_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FKtjwu4dhpim8kidbwfwqhgmryt` FOREIGN KEY (`product_single_id`) REFERENCES `product_single` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_single_slider_images`
--

LOCK TABLES `product_single_slider_images` WRITE;
/*!40000 ALTER TABLE `product_single_slider_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_single_slider_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_single_snapshot`
--

DROP TABLE IF EXISTS `product_single_snapshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_single_snapshot` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `adjusted_volume_cubic_meter` double DEFAULT NULL,
  `full_description` text,
  `full_description_zh_cn` text,
  `name` varchar(255) NOT NULL,
  `name_zh_cn` varchar(255) DEFAULT NULL,
  `on_the_group_page` char(1) NOT NULL,
  `on_the_shelf` char(1) NOT NULL,
  `price` double NOT NULL,
  `promotion_price` double DEFAULT NULL,
  `real_volume_cubic_meter` double DEFAULT NULL,
  `short_description` varchar(2048) DEFAULT NULL,
  `short_description_zh_cn` varchar(2048) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `slider_video` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  `product_colour_id` bigint(20) DEFAULT NULL,
  `product_single_group_id` bigint(20) DEFAULT NULL,
  `product_size_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK76ujudmsa4c9h4eviuvehigla` (`creator_id`),
  KEY `FKofxfibgklybi011o2emh4m61d` (`modifier_id`),
  KEY `FKiavverweix18ho7kye8rcr2on` (`user_id`),
  KEY `FKqdrq6dib98bi4mgd7t4jndgqx` (`category_id`),
  KEY `FKi1v2sx2lpq8fd9myujqneniq7` (`product_colour_id`),
  KEY `FKm5ffx4gjt81bklmjlx2bxvph0` (`product_single_group_id`),
  KEY `FKd8tr5d2ad6swfulaesy2bploy` (`product_size_id`),
  CONSTRAINT `FK76ujudmsa4c9h4eviuvehigla` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKd8tr5d2ad6swfulaesy2bploy` FOREIGN KEY (`product_size_id`) REFERENCES `product_size` (`id`),
  CONSTRAINT `FKi1v2sx2lpq8fd9myujqneniq7` FOREIGN KEY (`product_colour_id`) REFERENCES `product_colour` (`id`),
  CONSTRAINT `FKiavverweix18ho7kye8rcr2on` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKm5ffx4gjt81bklmjlx2bxvph0` FOREIGN KEY (`product_single_group_id`) REFERENCES `product_single_group` (`id`),
  CONSTRAINT `FKofxfibgklybi011o2emh4m61d` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKqdrq6dib98bi4mgd7t4jndgqx` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_single_snapshot`
--

LOCK TABLES `product_single_snapshot` WRITE;
/*!40000 ALTER TABLE `product_single_snapshot` DISABLE KEYS */;
INSERT INTO `product_single_snapshot` VALUES (1,'2018-12-16 08:40:10.019','2018-12-16 08:40:10.019',0,0.3,'<p>• Stronger &amp; tougher for irregular shaped or heavy loads • High puncture resistance, high cling ability Powerwrap Pallet Wrap is a very strong blown film designed for wrapping irregular shaped, heavy or mobile objects. This clear film has a layer of tack and can be stretched up to 250% for great cling ability. Powerwrap is extremely durable and puncture resistant available in 20 and 23 micron. Buy in carton quantities &amp; save!</p>',NULL,'Hand Stretch Wrap',NULL,'Y','N',65,62.6,NULL,'<p>4 Roll of Premium Cast Hand Pallet Wrap.&nbsp;<br>Each roll for 500mm x 1500mtres x 20mu 7KG&nbsp;</p>',NULL,'Hand Stretch Wrap',NULL,214,214,NULL,106,NULL,24,NULL),(2,'2018-12-16 08:40:10.029','2018-12-16 08:40:10.029',0,0.3,'<p>Machine Easywrap Pallet Wrap is a high quality polyethylene stretchwrap with extremely high clarity making for better presentation and easier stock identification. Easywrap reduces noise when wrapping pallets. . <strong>Special rates available for pallet orders - 50 rolls per pallet!</strong></p>',NULL,'Machine Pallet Wrap',NULL,'Y','N',60,55.5,NULL,'<p>1 Roll of Premium Cast Machine Pallet Wrap.&nbsp;<br>500mm x 1500mtres x 20mu 18KG&nbsp;</p>',NULL,'Machine Pallet Wrap',NULL,214,214,NULL,106,NULL,23,NULL),(3,'2018-12-16 10:02:55.163','2018-12-16 10:02:55.163',0,0.3,'<p>Machine Easywrap Pallet Wrap is a high quality polyethylene stretchwrap with extremely high clarity making for better presentation and easier stock identification. Easywrap reduces noise when wrapping pallets. . <strong>Special rates available for pallet orders - 50 rolls per pallet!</strong></p>',NULL,'Machine Pallet Wrap',NULL,'Y','N',60,55.5,NULL,'<p>1 Roll of Premium Cast Machine Pallet Wrap.&nbsp;<br>500mm x 1500mtres x 20mu 18KG&nbsp;</p>',NULL,'Machine Pallet Wrap',NULL,214,214,NULL,106,NULL,23,NULL),(4,'2018-12-17 01:14:58.844','2018-12-17 01:14:58.844',0,0.3,'<p>Machine Easywrap Pallet Wrap is a high quality polyethylene stretchwrap with extremely high clarity making for better presentation and easier stock identification. Easywrap reduces noise when wrapping pallets. . <strong>Special rates available for pallet orders - 50 rolls per pallet!</strong></p>',NULL,'Machine Pallet Wrap',NULL,'Y','N',60,55.5,NULL,'<p>1 Roll of Premium Cast Machine Pallet Wrap.&nbsp;<br>500mm x 1500mtres x 20mu 18KG&nbsp;</p>',NULL,'Machine Pallet Wrap',NULL,213,213,NULL,106,NULL,23,NULL),(5,'2019-01-03 21:00:23.492','2019-01-03 21:00:23.492',0,0.3,'<p>Machine Easywrap Pallet Wrap is a high quality polyethylene stretchwrap with extremely high clarity making for better presentation and easier stock identification. Easywrap reduces noise when wrapping pallets. . <strong>Special rates available for pallet orders - 50 rolls per pallet!</strong></p>',NULL,'Machine Pallet Wrap',NULL,'Y','N',60,55.5,NULL,'<p>1 Roll of Premium Cast Machine Pallet Wrap.&nbsp;<br>500mm x 1500mtres x 20mu 18KG&nbsp;</p>',NULL,'Machine Pallet Wrap',NULL,213,213,NULL,106,NULL,23,NULL),(6,'2019-01-03 22:03:44.537','2019-01-03 22:03:44.537',0,0.3,'<p>Machine Easywrap Pallet Wrap is a high quality polyethylene stretchwrap with extremely high clarity making for better presentation and easier stock identification. Easywrap reduces noise when wrapping pallets. . <strong>Special rates available for pallet orders - 50 rolls per pallet!</strong></p>',NULL,'Machine Pallet Wrap',NULL,'Y','N',60,55.5,NULL,'<p>1 Roll of Premium Cast Machine Pallet Wrap.&nbsp;<br>500mm x 1500mtres x 20mu 18KG&nbsp;</p>',NULL,'Machine Pallet Wrap',NULL,214,214,NULL,106,NULL,23,NULL),(7,'2019-01-06 23:51:04.198','2019-01-06 23:51:04.198',0,0.3,'<p>Machine Easywrap Pallet Wrap is a high quality polyethylene stretchwrap with extremely high clarity making for better presentation and easier stock identification. Easywrap reduces noise when wrapping pallets. . <strong>Special rates available for pallet orders - 50 rolls per pallet!</strong></p>',NULL,'Machine Pallet Wrap',NULL,'Y','N',60,55.5,NULL,'<p>1 Roll of Premium Cast Machine Pallet Wrap.&nbsp;<br>500mm x 1500mtres x 20mu 18KG&nbsp;</p>',NULL,'Machine Pallet Wrap',NULL,213,213,NULL,106,NULL,23,NULL),(8,'2019-01-08 02:11:27.419','2019-01-08 02:11:27.419',0,0.3,'<p>Machine Easywrap Pallet Wrap is a high quality polyethylene stretchwrap with extremely high clarity making for better presentation and easier stock identification. Easywrap reduces noise when wrapping pallets. . <strong>Special rates available for pallet orders - 50 rolls per pallet!</strong></p>',NULL,'Machine Pallet Wrap',NULL,'Y','N',60,55.5,NULL,'<p>1 Roll of Premium Cast Machine Pallet Wrap.&nbsp;<br>500mm x 1500mtres x 20mu 18KG&nbsp;</p>',NULL,'Machine Pallet Wrap',NULL,213,213,NULL,106,NULL,23,NULL),(9,'2019-01-08 16:11:41.752','2019-01-08 16:11:41.752',0,0.3,'<p>• Stronger &amp; tougher for irregular shaped or heavy loads • High puncture resistance, high cling ability Powerwrap Pallet Wrap is a very strong blown film designed for wrapping irregular shaped, heavy or mobile objects. This clear film has a layer of tack and can be stretched up to 250% for great cling ability. Powerwrap is extremely durable and puncture resistant available in 20 and 23 micron. Buy in carton quantities &amp; save!</p>',NULL,'Hand Stretch Wrap',NULL,'Y','N',65,62.6,NULL,'<p>4 Roll of Premium Cast Hand Pallet Wrap.&nbsp;<br>Each roll for 500mm x 1500mtres x 20mu 7KG&nbsp;</p>',NULL,'Hand Stretch Wrap',NULL,214,214,NULL,106,NULL,24,NULL),(10,'2019-01-08 20:43:52.759','2019-01-08 20:43:52.759',0,0.3,'<p>Machine Easywrap Pallet Wrap is a high quality polyethylene stretchwrap with extremely high clarity making for better presentation and easier stock identification. Easywrap reduces noise when wrapping pallets. . <strong>Special rates available for pallet orders - 50 rolls per pallet!</strong></p>',NULL,'Machine Pallet Wrap',NULL,'Y','N',60,55.5,NULL,'<p>1 Roll of Premium Cast Machine Pallet Wrap.&nbsp;<br>500mm x 1500mtres x 20mu 18KG&nbsp;</p>',NULL,'Machine Pallet Wrap',NULL,213,213,NULL,106,NULL,23,NULL),(11,'2019-01-21 02:20:58.089','2019-01-21 02:20:58.089',0,0.3,'<p>Machine Easywrap Pallet Wrap is a high quality polyethylene stretchwrap with extremely high clarity making for better presentation and easier stock identification. Easywrap reduces noise when wrapping pallets. . <strong>Special rates available for pallet orders - 50 rolls per pallet!</strong></p>',NULL,'Machine Pallet Wrap',NULL,'Y','N',60,55.5,NULL,'<p>1 Roll of Premium Cast Machine Pallet Wrap.&nbsp;<br>500mm x 1500mtres x 20mu 18KG&nbsp;</p>',NULL,'Machine Pallet Wrap',NULL,214,214,NULL,106,NULL,23,NULL);
/*!40000 ALTER TABLE `product_single_snapshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_single_snapshot_detail_images`
--

DROP TABLE IF EXISTS `product_single_snapshot_detail_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_single_snapshot_detail_images` (
  `product_single_snapshot_id` bigint(20) NOT NULL,
  `detail_images_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_gx4bpvhg3mpoq1bxptr4kyv1` (`detail_images_id`),
  KEY `FK8kf8jw4hm1xrh692qg25hjye4` (`product_single_snapshot_id`),
  CONSTRAINT `FK6xuiyfqubs67tvj7lvivj6ajc` FOREIGN KEY (`detail_images_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FK8kf8jw4hm1xrh692qg25hjye4` FOREIGN KEY (`product_single_snapshot_id`) REFERENCES `product_single_snapshot` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_single_snapshot_detail_images`
--

LOCK TABLES `product_single_snapshot_detail_images` WRITE;
/*!40000 ALTER TABLE `product_single_snapshot_detail_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_single_snapshot_detail_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_single_snapshot_feature_types`
--

DROP TABLE IF EXISTS `product_single_snapshot_feature_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_single_snapshot_feature_types` (
  `product_single_snapshot_id` bigint(20) NOT NULL,
  `feature_types_id` bigint(20) NOT NULL,
  KEY `FKgn8e3t8v211hpv21mm6mbr41i` (`feature_types_id`),
  KEY `FK1hn3qrhphr19gudowvys42dly` (`product_single_snapshot_id`),
  CONSTRAINT `FK1hn3qrhphr19gudowvys42dly` FOREIGN KEY (`product_single_snapshot_id`) REFERENCES `product_single_snapshot` (`id`),
  CONSTRAINT `FKgn8e3t8v211hpv21mm6mbr41i` FOREIGN KEY (`feature_types_id`) REFERENCES `feature_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_single_snapshot_feature_types`
--

LOCK TABLES `product_single_snapshot_feature_types` WRITE;
/*!40000 ALTER TABLE `product_single_snapshot_feature_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_single_snapshot_feature_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_single_snapshot_main_images`
--

DROP TABLE IF EXISTS `product_single_snapshot_main_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_single_snapshot_main_images` (
  `product_single_snapshot_id` bigint(20) NOT NULL,
  `main_images_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_nu6l3hqpc2v6ab5nfxtdewlwe` (`main_images_id`),
  KEY `FKtaclro5pm2v0m7xuxdpv7gqb9` (`product_single_snapshot_id`),
  CONSTRAINT `FK9jfld2fdyju89puuukwuw7m44` FOREIGN KEY (`main_images_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FKtaclro5pm2v0m7xuxdpv7gqb9` FOREIGN KEY (`product_single_snapshot_id`) REFERENCES `product_single_snapshot` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_single_snapshot_main_images`
--

LOCK TABLES `product_single_snapshot_main_images` WRITE;
/*!40000 ALTER TABLE `product_single_snapshot_main_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_single_snapshot_main_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_single_snapshot_slider_images`
--

DROP TABLE IF EXISTS `product_single_snapshot_slider_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_single_snapshot_slider_images` (
  `product_single_snapshot_id` bigint(20) NOT NULL,
  `slider_images_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_1sxc7kqhb0kph6yel7iyjghtm` (`slider_images_id`),
  KEY `FKpls1bmln2hwtarft9yij788ld` (`product_single_snapshot_id`),
  CONSTRAINT `FKpls1bmln2hwtarft9yij788ld` FOREIGN KEY (`product_single_snapshot_id`) REFERENCES `product_single_snapshot` (`id`),
  CONSTRAINT `FKpwm6c82lp2skrndb48j4cv97w` FOREIGN KEY (`slider_images_id`) REFERENCES `attachment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_single_snapshot_slider_images`
--

LOCK TABLES `product_single_snapshot_slider_images` WRITE;
/*!40000 ALTER TABLE `product_single_snapshot_slider_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_single_snapshot_slider_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_single_snapshot_tags`
--

DROP TABLE IF EXISTS `product_single_snapshot_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_single_snapshot_tags` (
  `product_single_snapshot_id` bigint(20) NOT NULL,
  `tags_id` bigint(20) NOT NULL,
  KEY `FK3j6ujesawj6pf5g5bv7f1bd4v` (`tags_id`),
  KEY `FK5d3e20my96folxjkhfvtskdgo` (`product_single_snapshot_id`),
  CONSTRAINT `FK3j6ujesawj6pf5g5bv7f1bd4v` FOREIGN KEY (`tags_id`) REFERENCES `tag` (`id`),
  CONSTRAINT `FK5d3e20my96folxjkhfvtskdgo` FOREIGN KEY (`product_single_snapshot_id`) REFERENCES `product_single_snapshot` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_single_snapshot_tags`
--

LOCK TABLES `product_single_snapshot_tags` WRITE;
/*!40000 ALTER TABLE `product_single_snapshot_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_single_snapshot_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_single_tags`
--

DROP TABLE IF EXISTS `product_single_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_single_tags` (
  `product_single_id` bigint(20) NOT NULL,
  `tags_id` bigint(20) NOT NULL,
  KEY `FK2ephhyk7bm83pdw286wip8y5q` (`tags_id`),
  KEY `FKrkdlbthlla1rku2le4eenqrig` (`product_single_id`),
  CONSTRAINT `FK2ephhyk7bm83pdw286wip8y5q` FOREIGN KEY (`tags_id`) REFERENCES `tag` (`id`),
  CONSTRAINT `FKrkdlbthlla1rku2le4eenqrig` FOREIGN KEY (`product_single_id`) REFERENCES `product_single` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_single_tags`
--

LOCK TABLES `product_single_tags` WRITE;
/*!40000 ALTER TABLE `product_single_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_single_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_size`
--

DROP TABLE IF EXISTS `product_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_size` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `name_zh_cn` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_q9o2kocd7vhj0unir1w2pf3dv` (`name`),
  UNIQUE KEY `UK_n64vwfyd305cq4vd0mqi9t61b` (`name_zh_cn`),
  KEY `FK6e9v5qoxm1n3pnpmbhwmm7na6` (`creator_id`),
  KEY `FKbltvwf2c7790ylpldnuw7e9w6` (`modifier_id`),
  KEY `FKo99ab5jv8l0mykbo5y4g3rot` (`user_id`),
  CONSTRAINT `FK6e9v5qoxm1n3pnpmbhwmm7na6` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKbltvwf2c7790ylpldnuw7e9w6` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKo99ab5jv8l0mykbo5y4g3rot` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_size`
--

LOCK TABLES `product_size` WRITE;
/*!40000 ALTER TABLE `product_size` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_entity`
--

DROP TABLE IF EXISTS `quartz_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_entity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cron_expression` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `job_class_name` varchar(255) DEFAULT NULL,
  `job_group` varchar(255) DEFAULT NULL,
  `job_name` varchar(255) DEFAULT NULL,
  `old_job_group` varchar(255) DEFAULT NULL,
  `old_job_name` varchar(255) DEFAULT NULL,
  `trigger_name` varchar(255) DEFAULT NULL,
  `trigger_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_entity`
--

LOCK TABLES `quartz_entity` WRITE;
/*!40000 ALTER TABLE `quartz_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_answer`
--

DROP TABLE IF EXISTS `registration_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_answer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `answer` varchar(512) NOT NULL,
  `question` varchar(512) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnqqb2uj7ghpgjilygwjruobqa` (`creator_id`),
  KEY `FK9rvagp2x00shjrvavqhvtoqt1` (`modifier_id`),
  KEY `FKbl8a7orlmi0g10of6m80f742p` (`user_id`),
  CONSTRAINT `FK9rvagp2x00shjrvavqhvtoqt1` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKbl8a7orlmi0g10of6m80f742p` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKnqqb2uj7ghpgjilygwjruobqa` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_answer`
--

LOCK TABLES `registration_answer` WRITE;
/*!40000 ALTER TABLE `registration_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_question`
--

DROP TABLE IF EXISTS `registration_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_question` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `question` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc4x00s5txnkj41fwwaj0i0jhl` (`creator_id`),
  KEY `FKboleug1iy98e3pw87v5ktkylj` (`modifier_id`),
  KEY `FK9n1wfyhjwktfdwjsx1k66kpqn` (`user_id`),
  CONSTRAINT `FK9n1wfyhjwktfdwjsx1k66kpqn` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKboleug1iy98e3pw87v5ktkylj` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKc4x00s5txnkj41fwwaj0i0jhl` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_question`
--

LOCK TABLES `registration_question` WRITE;
/*!40000 ALTER TABLE `registration_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_question_option`
--

DROP TABLE IF EXISTS `registration_question_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_question_option` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `option` varchar(255) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `registration_question_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeqoxu0kp0kgrli1f9bb94ylte` (`creator_id`),
  KEY `FK2owp23crsouchlrcyj42ojgwe` (`modifier_id`),
  KEY `FK277hs0wyn0ss0ypt1dhrgo2il` (`user_id`),
  KEY `FK6vps247wypkdshsncook5kuei` (`registration_question_id`),
  CONSTRAINT `FK277hs0wyn0ss0ypt1dhrgo2il` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK2owp23crsouchlrcyj42ojgwe` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK6vps247wypkdshsncook5kuei` FOREIGN KEY (`registration_question_id`) REFERENCES `registration_question` (`id`),
  CONSTRAINT `FKeqoxu0kp0kgrli1f9bb94ylte` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_question_option`
--

LOCK TABLES `registration_question_option` WRITE;
/*!40000 ALTER TABLE `registration_question_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_question_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  `admin_logo` text,
  `company_email` varchar(255) DEFAULT NULL,
  `company_mobile` varchar(255) DEFAULT NULL,
  `company_phone` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `customer_logo` text,
  `customer_site_domain` varchar(255) DEFAULT NULL,
  `email_head_image` text,
  `end_work_hour` int(11) NOT NULL,
  `ip_black_list` varchar(255) DEFAULT NULL,
  `ip_white_list` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `request_threshold` int(11) NOT NULL,
  `server_domain` varchar(255) DEFAULT NULL,
  `sms_provider_type` varchar(255) DEFAULT NULL,
  `start_work_hour` int(11) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `email_server_id` bigint(20) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `fackbook_app_id` varchar(255) DEFAULT NULL,
  `fackbook_app_secret` varchar(255) DEFAULT NULL,
  `google_app_id` varchar(255) DEFAULT NULL,
  `google_app_secret` varchar(255) DEFAULT NULL,
  `linkedin_app_id` varchar(255) DEFAULT NULL,
  `linkedin_app_secret` varchar(255) DEFAULT NULL,
  `wechat_app_id` varchar(255) DEFAULT NULL,
  `wechat_app_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkg464ih2wqhg0gfw6hrwbxx3v` (`creator_id`),
  KEY `FKorul0a022bjj6o7svh3vibumf` (`modifier_id`),
  KEY `FKa020mf8nee9th8ipiri3jvwsb` (`user_id`),
  KEY `FKscq8xt939pn24ogp7q9b3gd9i` (`email_server_id`),
  CONSTRAINT `FK6xyb4cpy8iw6abp42h0pityer` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKa020mf8nee9th8ipiri3jvwsb` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKiffhyhdmkqht6x9l5bfa95iki` FOREIGN KEY (`email_server_id`) REFERENCES `email_server` (`id`),
  CONSTRAINT `FKkg464ih2wqhg0gfw6hrwbxx3v` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKmjd3qcpv962hy4mgfeq33hfub` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKnjd5ws781llewe8fkpci0yfyg` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKorul0a022bjj6o7svh3vibumf` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKscq8xt939pn24ogp7q9b3gd9i` FOREIGN KEY (`email_server_id`) REFERENCES `email_server` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,'2018-08-25 21:17:33.102','2018-08-26 00:43:59.236',1,'Y','','','','','','','https://','',24,NULL,NULL,'setting',500,'',NULL,0,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_user_guides`
--

DROP TABLE IF EXISTS `setting_user_guides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting_user_guides` (
  `setting_id` bigint(20) NOT NULL,
  `user_guides_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_7ayqpcve6289xdtqbwnd75a9n` (`user_guides_id`),
  KEY `FK32ayh2cogrff6h68y3mf5hf9e` (`setting_id`),
  CONSTRAINT `FK32ayh2cogrff6h68y3mf5hf9e` FOREIGN KEY (`setting_id`) REFERENCES `setting` (`id`),
  CONSTRAINT `FKaq5p6lyxn7u18ycmpgtas0l20` FOREIGN KEY (`setting_id`) REFERENCES `setting` (`id`),
  CONSTRAINT `FKb5bm4j9snnp0bodo6tfjsvu83` FOREIGN KEY (`user_guides_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FKn8o9spvs2qh9n8lsweqpdtlwj` FOREIGN KEY (`user_guides_id`) REFERENCES `attachment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_user_guides`
--

LOCK TABLES `setting_user_guides` WRITE;
/*!40000 ALTER TABLE `setting_user_guides` DISABLE KEYS */;
/*!40000 ALTER TABLE `setting_user_guides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment`
--

DROP TABLE IF EXISTS `shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_multi_id` bigint(20) DEFAULT NULL,
  `product_single_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2u3w4inckcv5tsgukfn4gpc7w` (`creator_id`),
  KEY `FKe0xhaikg19uhdheh4hv1nxtr4` (`modifier_id`),
  KEY `FKjcjyodksib9121qrehr250rwv` (`user_id`),
  KEY `FK5el6xmbl6q76hkgvenky6x4we` (`product_multi_id`),
  KEY `FKa8bo3qluqidyn6w7c62jspwaf` (`product_single_id`),
  CONSTRAINT `FK2u3w4inckcv5tsgukfn4gpc7w` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK3jowbktlx9b7osj6vf0qfu8qf` FOREIGN KEY (`product_multi_id`) REFERENCES `product_multi` (`id`),
  CONSTRAINT `FK5el6xmbl6q76hkgvenky6x4we` FOREIGN KEY (`product_multi_id`) REFERENCES `product_multi` (`id`),
  CONSTRAINT `FK7mxw0kid7qyc8mo4r1iuamb3p` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKa8bo3qluqidyn6w7c62jspwaf` FOREIGN KEY (`product_single_id`) REFERENCES `product_single` (`id`),
  CONSTRAINT `FKe0xhaikg19uhdheh4hv1nxtr4` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKgqx64rhh8ivewtuc6uflgviyr` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKjcjyodksib9121qrehr250rwv` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKljle5rkt4l60ysigmht5fie4r` FOREIGN KEY (`product_single_id`) REFERENCES `product_single` (`id`),
  CONSTRAINT `FKtmenj59478jka60107uu4kq0l` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment`
--

LOCK TABLES `shipment` WRITE;
/*!40000 ALTER TABLE `shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment_detail`
--

DROP TABLE IF EXISTS `shipment_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `shipment_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrputkkdc2m3mnjj45oquafbuq` (`creator_id`),
  KEY `FKgonixqrs07cvm268t3so7ktrx` (`modifier_id`),
  KEY `FK2jlm1mqgl4v310qe1bgvfwl2u` (`user_id`),
  KEY `FKj6emgi3b65iu98stuuswtllw5` (`shipment_id`),
  CONSTRAINT `FK2jlm1mqgl4v310qe1bgvfwl2u` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKenem5knqxkhwht5nwcl02nn9t` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKfo4bbs5xpbqfbqgg45ke7ivqv` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKgonixqrs07cvm268t3so7ktrx` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKj6emgi3b65iu98stuuswtllw5` FOREIGN KEY (`shipment_id`) REFERENCES `shipment` (`id`),
  CONSTRAINT `FKkqt5epu0hn4c20bxiw8go6yre` FOREIGN KEY (`shipment_id`) REFERENCES `shipment` (`id`),
  CONSTRAINT `FKrputkkdc2m3mnjj45oquafbuq` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKt72oel24i2pplo6bimyp574c8` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_detail`
--

LOCK TABLES `shipment_detail` WRITE;
/*!40000 ALTER TABLE `shipment_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipment_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment_fee`
--

DROP TABLE IF EXISTS `shipment_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment_fee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `price` double DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `free_threshold` double DEFAULT NULL,
  `shipment_fee_per_cubic_meter` double DEFAULT NULL,
  `rural_area_fee` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkmi02stp647g4bo1a2osbrovi` (`creator_id`),
  KEY `FK5wmj1rfq0c5iihidknmm7cncy` (`modifier_id`),
  KEY `FK65xsnpc9ntxt4tnec8fygtfew` (`user_id`),
  CONSTRAINT `FK5qh7cnsg5afpvsitiuolqdm8l` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK5wmj1rfq0c5iihidknmm7cncy` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK65xsnpc9ntxt4tnec8fygtfew` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKkmi02stp647g4bo1a2osbrovi` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKnjjowu10t7eijhtg5kabjt0g1` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKp1fwiamc32uk81pgj6c93l57j` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_fee`
--

LOCK TABLES `shipment_fee` WRITE;
/*!40000 ALTER TABLE `shipment_fee` DISABLE KEYS */;
INSERT INTO `shipment_fee` VALUES (1,'2018-08-19 06:15:40.792','2018-08-19 06:58:42.856',2,'Ship to Auckland (amout< $20)',5,10,10,NULL,2,NULL,NULL,NULL),(2,'2018-08-19 06:16:04.301','2018-08-19 06:58:37.582',1,'Ship to Auckland (amout >= $20)',0,10,10,NULL,1,NULL,NULL,NULL),(3,'2018-08-19 06:16:50.805','2018-08-19 06:58:46.412',1,'Ship to North Island (outside Auckland)',15,10,10,NULL,3,NULL,NULL,NULL),(4,'2018-08-19 06:17:07.751','2018-08-19 06:58:50.108',1,'Ship to South Island (outside Auckland)',25,10,10,NULL,4,NULL,NULL,NULL),(5,'2018-10-26 04:21:27.783','2018-10-26 04:21:27.783',0,'Inside Auckland',10,50,50,NULL,1,100,NULL,NULL),(6,'2018-10-26 04:21:53.884','2018-10-26 04:21:53.884',0,'Outside Auckland in North Island',20,50,50,NULL,3,NULL,NULL,NULL),(7,'2018-10-26 04:22:07.112','2018-10-26 04:22:07.112',0,'South Island',30,50,50,NULL,4,NULL,NULL,NULL),(8,'2018-10-26 04:21:27.783','2018-10-26 04:21:27.783',0,'Auckland',0,40,40,NULL,1,NULL,200,NULL),(9,'2018-10-26 04:21:53.884','2018-10-26 04:21:53.884',0,'North Island',0,40,40,NULL,3,NULL,300,NULL),(10,'2018-10-26 04:22:07.112','2018-10-26 04:22:07.112',0,'South Island',0,40,40,NULL,5,NULL,600,NULL),(11,'2018-10-26 04:21:27.783','2018-10-26 04:21:27.783',0,'Auckland (Rural Area)',0,40,40,NULL,2,NULL,200,5),(12,'2018-10-26 04:21:53.884','2018-10-26 04:21:53.884',0,'North Island (Rural Area)',0,40,40,NULL,4,NULL,300,10),(13,'2018-10-26 04:22:07.112','2018-10-26 04:22:07.112',0,'South Island (Rural Area)',0,40,40,NULL,6,NULL,600,20);
/*!40000 ALTER TABLE `shipment_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_link`
--

DROP TABLE IF EXISTS `social_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_link` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `social_type_enum` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo9bw97dpn73yrmr5lgku9t72j` (`creator_id`),
  KEY `FKl8r70m7oeg03431j3qbbwgl8p` (`modifier_id`),
  KEY `FKsuf5evxaptfmuhf8auy4ouw16` (`user_id`),
  CONSTRAINT `FKl8r70m7oeg03431j3qbbwgl8p` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKlq1vub6r27d9bwqjabgvh1nk4` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKo9bw97dpn73yrmr5lgku9t72j` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKr8k51ynsdvnex485wm2madjbb` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKspwbeufpoft2vykeyoos30fsm` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKsuf5evxaptfmuhf8auy4ouw16` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_link`
--

LOCK TABLES `social_link` WRITE;
/*!40000 ALTER TABLE `social_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_setting`
--

DROP TABLE IF EXISTS `social_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `app_id` varchar(255) DEFAULT NULL,
  `app_secret` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjilp104rv90njaatrbsd22vmr` (`creator_id`),
  KEY `FKaujs22trphrnn71qmd126py4d` (`modifier_id`),
  KEY `FKiec9yjmsl9a53hdqkhcsgsbe2` (`user_id`),
  CONSTRAINT `FKaujs22trphrnn71qmd126py4d` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKiec9yjmsl9a53hdqkhcsgsbe2` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKjilp104rv90njaatrbsd22vmr` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_setting`
--

LOCK TABLES `social_setting` WRITE;
/*!40000 ALTER TABLE `social_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `conf_key` varchar(255) DEFAULT NULL,
  `conf_val` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3mc1vhn7bnmex2uqlubx9yyov` (`creator_id`),
  KEY `FKcx67k503rplkb6dnmsqeotxk0` (`modifier_id`),
  KEY `FKdn69hav96o1c2w13fhcca0ib5` (`user_id`),
  CONSTRAINT `FK3mc1vhn7bnmex2uqlubx9yyov` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK5ks56tn1lx2o5gdl7f9tcf6c3` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKa4xsa8j0ocarugsnwypp0ibn5` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKcx67k503rplkb6dnmsqeotxk0` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKdn69hav96o1c2w13fhcca0ib5` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKsxc15lbckfn3f8gkc1o9l0mbl` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name_zh_cn` varchar(255) DEFAULT NULL,
  `root_level` char(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_1wdpsed5kna2y38hnbgrnhi5b` (`name`),
  UNIQUE KEY `UK_h78w64khsr6rbbahnspn17uas` (`name_zh_cn`),
  KEY `FKmuq1l53mw9f7u8f9uitsfmhgj` (`creator_id`),
  KEY `FKk74m9q09gygr0l0rlqeytfem4` (`modifier_id`),
  KEY `FKekhx33sgipptkolsc191si476` (`user_id`),
  CONSTRAINT `FKekhx33sgipptkolsc191si476` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKk74m9q09gygr0l0rlqeytfem4` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKmuq1l53mw9f7u8f9uitsfmhgj` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_condition`
--

DROP TABLE IF EXISTS `term_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `term_condition` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj2pilh6o2wr5glu5owwefii6x` (`creator_id`),
  KEY `FKmswpy42mu6k2r0252dbofxgw8` (`modifier_id`),
  KEY `FK4vdvgodi7qcxyvwss1ht0dhoq` (`user_id`),
  CONSTRAINT `FK4vdvgodi7qcxyvwss1ht0dhoq` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKfv9jjv0vbv9qnmqdqyd6sspep` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKj2pilh6o2wr5glu5owwefii6x` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKmarle6aofcaoacry6qm9exwqf` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKmswpy42mu6k2r0252dbofxgw8` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKrdj43us1equm69axrls4eww6u` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term_condition`
--

LOCK TABLES `term_condition` WRITE;
/*!40000 ALTER TABLE `term_condition` DISABLE KEYS */;
/*!40000 ALTER TABLE `term_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_single`
--

DROP TABLE IF EXISTS `transaction_single`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_single` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `coin_used` int(11) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `bill_to_id` bigint(20) DEFAULT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `currency_id` bigint(20) DEFAULT NULL,
  `ship_to_id` bigint(20) DEFAULT NULL,
  `shipment_fee_id` bigint(20) DEFAULT NULL,
  `shipment_fee_amount` double DEFAULT NULL,
  `tracking_number` varchar(255) DEFAULT NULL,
  `due_date` varchar(255) DEFAULT NULL,
  `issue_date` varchar(255) DEFAULT NULL,
  `tracking_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_r7ynwyjoskdwa59in966yggho` (`order_id`),
  KEY `FKtfrgn9nx9g0twvf7da6w19dpp` (`creator_id`),
  KEY `FKdc6ftu7lu0oo6lt5fuii4lshc` (`modifier_id`),
  KEY `FKfj9mog0gb9il1fnceoe1p442u` (`user_id`),
  KEY `FK3wu9ew2vps5thdk7f8k2mli72` (`bill_to_id`),
  KEY `FK5aa7ys2gnyoj1hx4swdx6gv46` (`coupon_id`),
  KEY `FKes4el4coh5ui2vugv6tiuulbl` (`currency_id`),
  KEY `FKo3bcbv1xh1gngy4j8a8qoly1x` (`ship_to_id`),
  KEY `FK8j0o8lo0unxl9uby8jfspwm35` (`shipment_fee_id`),
  CONSTRAINT `FK3wu9ew2vps5thdk7f8k2mli72` FOREIGN KEY (`bill_to_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FK5aa7ys2gnyoj1hx4swdx6gv46` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`),
  CONSTRAINT `FK8j0o8lo0unxl9uby8jfspwm35` FOREIGN KEY (`shipment_fee_id`) REFERENCES `shipment_fee` (`id`),
  CONSTRAINT `FKdc6ftu7lu0oo6lt5fuii4lshc` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKes4el4coh5ui2vugv6tiuulbl` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`),
  CONSTRAINT `FKfj9mog0gb9il1fnceoe1p442u` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKo3bcbv1xh1gngy4j8a8qoly1x` FOREIGN KEY (`ship_to_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FKtfrgn9nx9g0twvf7da6w19dpp` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_single`
--

LOCK TABLES `transaction_single` WRITE;
/*!40000 ALTER TABLE `transaction_single` DISABLE KEYS */;
INSERT INTO `transaction_single` VALUES (1,'2018-12-16 08:40:09.999','2019-01-16 04:04:40.458',3,0,'MALL-20181216214009-1B03BE16','PAID',NULL,'ONLINE','http://www.b2c.kiwi/payment/redirect',178.1,214,214,NULL,10,NULL,1,9,8,NULL,NULL,NULL,NULL,NULL),(2,'2018-12-16 10:02:55.151','2019-01-18 03:02:26.164',4,0,'BD20181216230255','PAID',NULL,'ONLINE','http://www.b2c.kiwi/payment/redirect',155.5,214,214,NULL,12,NULL,1,11,12,100,'e4343',NULL,NULL,NULL),(3,'2018-12-17 01:14:58.825','2018-12-18 03:56:12.020',4,0,'BD20181217141458','FINISHED',NULL,'ONLINE',NULL,277.5,213,40,NULL,14,NULL,1,13,8,60,'3434',NULL,NULL,NULL),(4,'2019-01-03 21:00:23.454','2019-01-03 21:10:50.028',2,0,'BD20190104100023','PENDING',NULL,'ONLINE',NULL,166.5,213,40,NULL,16,NULL,1,15,8,60,NULL,NULL,NULL,NULL),(5,'2019-01-03 22:03:44.530','2019-01-16 03:44:18.205',3,0,'BD20190104110344','PAID',NULL,'ONLINE','http://www.b2c.kiwi/payment/redirect',120.5,214,214,NULL,18,NULL,1,17,11,65,NULL,NULL,NULL,NULL),(6,'2019-01-06 23:51:04.192','2019-01-06 23:53:16.092',3,0,'BD20190107125104','PENDING',NULL,'ONLINE','http://b2c.kiwi/payment/redirect',277.5,213,40,NULL,20,NULL,1,19,8,60,NULL,NULL,NULL,NULL),(7,'2019-01-08 02:11:27.414','2019-01-08 02:11:27.435',1,0,'BD20190108151127','PENDING',NULL,'ONLINE',NULL,337.5,213,213,NULL,22,NULL,1,21,8,60,NULL,NULL,NULL,NULL),(8,'2019-01-08 16:11:41.731','2019-01-16 02:24:40.544',3,0,'BD20190109051141','PAID',NULL,'ONLINE','http://www.b2c.kiwi/payment/redirect',262.6,214,214,NULL,24,NULL,1,23,13,200,NULL,NULL,NULL,NULL),(9,'2019-01-08 20:43:52.747','2019-01-08 20:43:53.026',1,0,'BD20190109094352','PENDING',NULL,'ONLINE',NULL,337.5,213,213,NULL,26,NULL,1,25,8,60,NULL,NULL,NULL,NULL),(10,'2019-01-21 02:20:58.083','2019-01-21 02:21:05.827',2,0,'BD20190121152058','PENDING',NULL,'ONLINE','http://www.b2c.kiwi/payment/redirect',255.5,214,214,NULL,28,NULL,1,27,13,200,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `transaction_single` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_single_item`
--

DROP TABLE IF EXISTS `transaction_single_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_single_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `amount` bigint(20) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_single_id` bigint(20) DEFAULT NULL,
  `transaction_single_id` bigint(20) DEFAULT NULL,
  `product_single_snapshot_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKma3q0yo4i7qqv5kg8064nredk` (`creator_id`),
  KEY `FK4xlbbvjcwtm9b37nthr3k419o` (`modifier_id`),
  KEY `FKqevwhxuonlxlbp6s5sbeqefft` (`user_id`),
  KEY `FK56gvgu4d31ua40r89prhae2oj` (`product_single_id`),
  KEY `FKl7wod9bgxx4ffksii585efs32` (`transaction_single_id`),
  KEY `FKovc7gsjo77f9ucqyno1dqt4dv` (`product_single_snapshot_id`),
  CONSTRAINT `FK4xlbbvjcwtm9b37nthr3k419o` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK56gvgu4d31ua40r89prhae2oj` FOREIGN KEY (`product_single_id`) REFERENCES `product_single` (`id`),
  CONSTRAINT `FKl7wod9bgxx4ffksii585efs32` FOREIGN KEY (`transaction_single_id`) REFERENCES `transaction_single` (`id`),
  CONSTRAINT `FKma3q0yo4i7qqv5kg8064nredk` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKovc7gsjo77f9ucqyno1dqt4dv` FOREIGN KEY (`product_single_snapshot_id`) REFERENCES `product_single_snapshot` (`id`),
  CONSTRAINT `FKqevwhxuonlxlbp6s5sbeqefft` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_single_item`
--

LOCK TABLES `transaction_single_item` WRITE;
/*!40000 ALTER TABLE `transaction_single_item` DISABLE KEYS */;
INSERT INTO `transaction_single_item` VALUES (1,'2018-12-16 08:40:10.044','2018-12-16 08:40:10.044',0,1,214,214,NULL,712,1,1),(2,'2018-12-16 08:40:10.050','2018-12-16 08:40:10.050',0,1,214,214,NULL,711,1,2),(3,'2018-12-16 10:02:55.171','2018-12-16 10:02:55.171',0,1,214,214,NULL,711,2,3),(4,'2018-12-17 01:14:58.861','2018-12-17 01:14:58.861',0,5,213,213,NULL,711,3,4),(5,'2019-01-03 21:00:23.511','2019-01-03 21:00:23.511',0,3,213,213,NULL,711,4,5),(6,'2019-01-03 22:03:44.547','2019-01-03 22:03:44.547',0,1,214,214,NULL,711,5,6),(7,'2019-01-06 23:51:04.203','2019-01-06 23:51:04.203',0,5,213,213,NULL,711,6,7),(8,'2019-01-08 02:11:27.430','2019-01-08 02:11:27.430',0,5,213,213,NULL,711,7,8),(9,'2019-01-08 16:11:41.765','2019-01-08 16:11:41.765',0,1,214,214,NULL,712,8,9),(10,'2019-01-08 20:43:52.773','2019-01-08 20:43:52.773',0,5,213,213,NULL,711,9,10),(11,'2019-01-21 02:20:58.094','2019-01-21 02:20:58.094',0,1,214,214,NULL,711,10,11);
/*!40000 ALTER TABLE `transaction_single_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_record`
--

DROP TABLE IF EXISTS `visit_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visit_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `execution_time` bigint(20) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `query_string` varchar(1024) DEFAULT NULL,
  `request_body` text,
  `uri` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7ap6j8r3d9bip92h54qugb4qs` (`creator_id`),
  KEY `FKgbwbd4re6yjj401hgp91rmadv` (`modifier_id`),
  KEY `FKiax7woq6vo29ri7j682pay7lv` (`user_id`),
  CONSTRAINT `FK7ap6j8r3d9bip92h54qugb4qs` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK9q4wit0slic65k91rf2px2qkn` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKgbwbd4re6yjj401hgp91rmadv` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKiax7woq6vo29ri7j682pay7lv` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKl5he88geyfdou7bop0fwnx3lo` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKpgnhja65m300nq7nvofqe7vlm` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_record`
--

LOCK TABLES `visit_record` WRITE;
/*!40000 ALTER TABLE `visit_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `visit_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_column`
--

DROP TABLE IF EXISTS `website_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website_column` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `name_zh_cn` varchar(255) NOT NULL,
  `root_level` char(1) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKefvwpaqlw5300t56maa4kt12w` (`creator_id`),
  KEY `FK1fie3hno62534j9xyxcr344rs` (`modifier_id`),
  KEY `FKf76pm4ru7sssa20h50rnwy0ir` (`user_id`),
  KEY `FKbqs4qfssld5qa463k15col2xj` (`parent_id`),
  CONSTRAINT `FK1fie3hno62534j9xyxcr344rs` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKbqs4qfssld5qa463k15col2xj` FOREIGN KEY (`parent_id`) REFERENCES `website_column` (`id`),
  CONSTRAINT `FKdga8qt9u0rp80usal7fdu0td2` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKefvwpaqlw5300t56maa4kt12w` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKf76pm4ru7sssa20h50rnwy0ir` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKfi8xsfoy4y9wgmul7cya8a40j` FOREIGN KEY (`parent_id`) REFERENCES `website_column` (`id`),
  CONSTRAINT `FKftpeumiext8eficd79mk711eq` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKhsf214bfxbaj8bk0oqevc9ppc` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_column`
--

LOCK TABLES `website_column` WRITE;
/*!40000 ALTER TABLE `website_column` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_image`
--

DROP TABLE IF EXISTS `website_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi5xvra8k3ivafcpbha8eabjcs` (`creator_id`),
  KEY `FK44pdayvxgqm6jqagpwuo0mjnj` (`modifier_id`),
  KEY `FKgx7tdmpjfpvjomi1nc4s2gt0u` (`user_id`),
  CONSTRAINT `FK44pdayvxgqm6jqagpwuo0mjnj` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKgx7tdmpjfpvjomi1nc4s2gt0u` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKi5xvra8k3ivafcpbha8eabjcs` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_image`
--

LOCK TABLES `website_image` WRITE;
/*!40000 ALTER TABLE `website_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_news`
--

DROP TABLE IF EXISTS `website_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website_news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `content` text,
  `content_zh_cn` text,
  `published` char(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_zh_cn` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKars9gjq9mlrpo2dndnxs1nqey` (`creator_id`),
  KEY `FK9goiny9rk6ybr2ndwy8aus923` (`modifier_id`),
  KEY `FK981bqsug1270cnayy3ufnjsgb` (`user_id`),
  CONSTRAINT `FK981bqsug1270cnayy3ufnjsgb` FOREIGN KEY (`user_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FK9goiny9rk6ybr2ndwy8aus923` FOREIGN KEY (`modifier_id`) REFERENCES `aci_user` (`id`),
  CONSTRAINT `FKars9gjq9mlrpo2dndnxs1nqey` FOREIGN KEY (`creator_id`) REFERENCES `aci_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_news`
--

LOCK TABLES `website_news` WRITE;
/*!40000 ALTER TABLE `website_news` DISABLE KEYS */;
INSERT INTO `website_news` VALUES (2,'2018-11-15 22:35:27.540','2018-11-18 03:49:36.953',4,'<h2>Southbound Rate Restoration effective 1st July for Southbound Shipments into New Zealand</h2><p>&nbsp;</p><p>Dear Customers,</p><p>&nbsp;</p><p>To ensure the sustainability of service and products, please be advised that all shipping lines will be implementing a Southbound Rate Restoration effective for&nbsp;</p><p>&nbsp;</p><p>cargoes Shipped On Board week effective 1st July 2018 into New Zealand at a quantum of US$100 per TEU and US$200 per FEU.</p><p>&nbsp;</p><p>This increase will apply in full on top of existing market rates and will be subject to the usual ancillary surcharges applicable at the time of shipment.</p><p>&nbsp;</p><p>We thank you for your continuous support and if any further information is required, please do not hesitate to contact us.</p>','<h2>Southbound Rate Restoration effective 1st July for Southbound Shipments into New Zealand</h2><p>&nbsp;</p><p>Dear Customers,</p><p>&nbsp;</p><p>To ensure the sustainability of service and products, please be advised that all shipping lines will be implementing a Southbound Rate Restoration effective for&nbsp;</p><p>&nbsp;</p><p>cargoes Shipped On Board week effective 1st July 2018 into New Zealand at a quantum of US$100 per TEU and US$200 per FEU.</p><p>&nbsp;</p><p>This increase will apply in full on top of existing market rates and will be subject to the usual ancillary surcharges applicable at the time of shipment.</p><p>&nbsp;</p><p>We thank you for your continuous support and if any further information is required, please do not hesitate to contact us.</p>','Y','Southbound Rate Restoration effective 1st July for Southbound Shipments into New Zealand','Southbound Rate Restoration effective 1st July for Southbound Shipments into New Zealand',30,30,NULL);
/*!40000 ALTER TABLE `website_news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-16  7:23:05
