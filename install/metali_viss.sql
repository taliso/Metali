-- MySQL dump 10.13  Distrib 5.7.11, for Win32 (AMD64)
--
-- Host: localhost    Database: Metal
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `grupu_cenas`
--

DROP TABLE IF EXISTS `grupu_cenas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupu_cenas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `parklajums` varchar(45) DEFAULT NULL,
  `biezums` decimal(2,0) DEFAULT NULL,
  `platums` int(11) DEFAULT NULL,
  `krasa` varchar(45) DEFAULT NULL,
  `grupa` varchar(5) DEFAULT NULL,
  `cena` varchar(45) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_create` varchar(45) DEFAULT NULL,
  `create_date` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupu_cenas`
--

LOCK TABLES `grupu_cenas` WRITE;
/*!40000 ALTER TABLE `grupu_cenas` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupu_cenas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krasas`
--

DROP TABLE IF EXISTS `krasas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krasas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `parklajums` varchar(45) DEFAULT NULL,
  `biezums` decimal(1,0) DEFAULT NULL,
  `grupa` int(11) DEFAULT NULL,
  `ral` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krasas`
--

LOCK TABLES `krasas` WRITE;
/*!40000 ALTER TABLE `krasas` DISABLE KEYS */;
/*!40000 ALTER TABLE `krasas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noliktava`
--

DROP TABLE IF EXISTS `noliktava`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noliktava` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `piegadatajs` varchar(45) DEFAULT NULL,
  `materials` varchar(45) DEFAULT NULL,
  `biezums` decimal(2,0) DEFAULT NULL,
  `platums` int(11) DEFAULT NULL,
  `terauds` varchar(45) DEFAULT NULL,
  `cinks` varchar(45) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_create` varchar(45) DEFAULT NULL,
  `create_date` varchar(45) DEFAULT NULL,
  `pazime` varchar(10) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noliktava`
--

LOCK TABLES `noliktava` WRITE;
/*!40000 ALTER TABLE `noliktava` DISABLE KEYS */;
/*!40000 ALTER TABLE `noliktava` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parklajumi`
--

DROP TABLE IF EXISTS `parklajumi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parklajumi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `parklajums` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parklajumi`
--

LOCK TABLES `parklajumi` WRITE;
/*!40000 ALTER TABLE `parklajumi` DISABLE KEYS */;
INSERT INTO `parklajumi` VALUES (1,'PE','1'),(5,'PUR/PA','1'),(3,'PVDF','1');
/*!40000 ALTER TABLE `parklajumi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piem_par_apjomu`
--

DROP TABLE IF EXISTS `piem_par_apjomu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piem_par_apjomu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `diap_no` decimal(1,0) DEFAULT NULL,
  `diap_lidz` decimal(1,0) DEFAULT NULL,
  `piemaksa_t` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piem_par_apjomu`
--

LOCK TABLES `piem_par_apjomu` WRITE;
/*!40000 ALTER TABLE `piem_par_apjomu` DISABLE KEYS */;
/*!40000 ALTER TABLE `piem_par_apjomu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piem_par_transp`
--

DROP TABLE IF EXISTS `piem_par_transp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piem_par_transp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `diap_no_t` int(11) DEFAULT NULL,
  `diap_lidz_t` int(11) DEFAULT NULL,
  `transp_eur_t` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piem_par_transp`
--

LOCK TABLES `piem_par_transp` WRITE;
/*!40000 ALTER TABLE `piem_par_transp` DISABLE KEYS */;
/*!40000 ALTER TABLE `piem_par_transp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-11 19:43:40
