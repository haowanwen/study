-- MySQL dump 10.13  Distrib 5.7.18, for macos10.12 (x86_64)
--
-- Host: localhost    Database: web1802
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `s_dept`
--

DROP TABLE IF EXISTS `s_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `s_dept_name_region_id_uk` (`name`,`region_id`),
  KEY `s_dept_region_fk` (`region_id`),
  CONSTRAINT `s_dept_region_fk` FOREIGN KEY (`region_id`) REFERENCES `s_region` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_dept`
--

LOCK TABLES `s_dept` WRITE;
/*!40000 ALTER TABLE `s_dept` DISABLE KEYS */;
INSERT INTO `s_dept` VALUES (1,'Administration',4),(2,'Finance',4),(3,'Finance',5),(6,'Operations',1),(7,'Operations',2),(8,'Operations',3),(4,'Operations',4),(5,'Operations',5),(11,'Sales',1),(12,'Sales',2),(13,'Sales',3),(9,'Sales',4),(10,'Sales',5);
/*!40000 ALTER TABLE `s_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emp`
--

DROP TABLE IF EXISTS `s_emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(25) NOT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `userid` varchar(8) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `title` varchar(25) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `commission_pct` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`),
  KEY `s_emp_dept_fk_idx` (`dept_id`),
  CONSTRAINT `s_emp_dept_fk` FOREIGN KEY (`dept_id`) REFERENCES `s_dept` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emp`
--

LOCK TABLES `s_emp` WRITE;
/*!40000 ALTER TABLE `s_emp` DISABLE KEYS */;
INSERT INTO `s_emp` VALUES (1,'Velasquez','Carmen','cvelasqu','1990-03-03',NULL,NULL,'President',1,2500,NULL),(2,'Ngao','LaDoris','lngao','1990-03-08',NULL,1,'VP, Operations',4,1450,NULL),(3,'Nagayama','Midori','mnagayam','1991-06-17',NULL,1,'VP, Sales',9,1400,NULL),(4,'Quick-To-See','Mark','mquickto','1990-04-07',NULL,1,'VP, Finance',2,1450,NULL),(5,'Ropeburn','Audry','aropebur','1990-03-04',NULL,1,'VP, Administration',1,1550,NULL),(6,'Urguhart','Molly','murguhar','1991-01-18',NULL,2,'Warehouse Manager',4,1200,NULL),(7,'Menchu','Roberta','rmenchu','1990-04-14',NULL,2,'Warehouse Manager',5,1250,NULL),(8,'Biri','Ben','bbiri','1990-04-07',NULL,2,'Warehouse Manager',6,1100,NULL),(9,'Catchpole','Antoinette','acatchpo','1992-02-09',NULL,2,'Warehouse Manager',7,1300,NULL),(10,'Havel','Marta','mhavel','1991-02-19',NULL,2,'Warehouse Manager',8,1307,NULL),(11,'Magee','Colin','cmagee','1990-05-04',NULL,3,'Sales Representative',9,1400,10),(12,'Giljum','Henry','hgiljum','1992-01-18',NULL,3,'Sales Representative',10,1490,12.5),(13,'Sedeghi','Yasmin','ysedeghi','1992-04-22',NULL,3,'Sales Representative',11,1515,10),(14,'Nguyen','Mai','mnguyen','1992-08-12',NULL,3,'Sales Representative',12,1525,15),(15,'Dumas','Andre','adumas','1991-10-15',NULL,3,'Sales Representative',13,1450,17.5),(16,'Maduro','Elena','emaduro','1992-02-07',NULL,6,'Stock Clerk',4,1400,NULL),(17,'Smith','George','gsmith','1990-03-08',NULL,6,'Stock Clerk',4,940,NULL),(18,'Nozaki','Akira','anozaki','1991-02-19',NULL,7,'Stock Clerk',5,1200,NULL),(19,'Patel','Vikram','vpatel','1991-08-24',NULL,7,'Stock Clerk',5,795,NULL),(20,'Newman','Chad','cnewman','1991-11-11',NULL,8,'Stock Clerk',6,750,NULL),(21,'Markarian','Alexander','amarkari','1992-12-26',NULL,8,'Stock Clerk',6,850,NULL),(22,'Chang','Eddie','echang','1993-01-10',NULL,9,'Stock Clerk',7,800,NULL),(23,'Patel','Radha','rpatel','1991-05-07',NULL,9,'Stock Clerk',12,795,NULL),(24,'Dancs','Bela','bdancs','1992-03-24',NULL,10,'Stock Clerk',8,2860,NULL),(25,'Schwartz','Sylvie','sschwart','1991-05-11',NULL,10,'Stock Clerk',8,1100,NULL);
/*!40000 ALTER TABLE `s_emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_region`
--

DROP TABLE IF EXISTS `s_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_region`
--

LOCK TABLES `s_region` WRITE;
/*!40000 ALTER TABLE `s_region` DISABLE KEYS */;
INSERT INTO `s_region` VALUES (1,'Africa / Middle East'),(2,'Asia'),(3,'Europe'),(4,'North America'),(5,'South America');
/*!40000 ALTER TABLE `s_region` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-26 11:21:38
