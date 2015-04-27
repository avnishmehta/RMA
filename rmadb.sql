-- MySQL dump 10.15  Distrib 10.0.17-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: rmadb
-- ------------------------------------------------------
-- Server version	10.0.17-MariaDB-wsrep

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
-- Table structure for table `createuser`
--

DROP TABLE IF EXISTS `createuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `createuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `country_code` varchar(6) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `postalcode` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `createuser`
--

LOCK TABLES `createuser` WRITE;
/*!40000 ALTER TABLE `createuser` DISABLE KEYS */;
INSERT INTO `createuser` VALUES (1,'VTPL','admin','admin','91','9876543210','Address is where i work','444444','admin@admin.com','123456'),(2,'VTPL','Manisha','Udeshi','91','9594091556','Vardhaman Technology','400086','manisha.u@vardhamantechnology.com','123123'),(3,'VTPL','Renuka','Dawkhar','91','8108465988','Vardhaman Technology','400086','renuka.d@vardhamantechnology.com','123123');
/*!40000 ALTER TABLE `createuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `country_code` varchar(6) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `postalcode` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_submits`
--

DROP TABLE IF EXISTS `user_submits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_submits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rma_number` int(7) DEFAULT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `machineowner` varchar(50) DEFAULT NULL,
  `machinenumber` varchar(20) DEFAULT NULL,
  `warrantydate` varchar(10) DEFAULT NULL,
  `warrantystatus` varchar(30) DEFAULT NULL,
  `priority` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_submits`
--

LOCK TABLES `user_submits` WRITE;
/*!40000 ALTER TABLE `user_submits` DISABLE KEYS */;
INSERT INTO `user_submits` VALUES (3,924822,'avnishavnish','avnish','B.S. ENTERPRISE','147432','2016-02-17','Machine is in warranty','low','avnish@avnish.com','avnishmehta','avnishmehtaavnishmehtaavnishmehtaavnishmehtaavnishmehtaavnishmehtaavnishmehtaavnishmehtaavnishmehta'),(4,255488,'Avnish','Def','B.S. ENTERPRISE','null','2016-02-17','Machine is in warranty','low','abc@def.com','ABCDEF','ABCDEFABCDEFABCDEFABCDEFABCDEFABCDEFABCDEFABCDEFABCDEFABCDEF'),(5,686186,'Ghi','Jkl','B.S. ENTERPRISE','147342','2016-02-17','Machine is in warranty','low','ghi@jkl.co.in','ghijkl','ghijklghijklghijklghijklghijklghijklghijklghijklghijklghijkl');
/*!40000 ALTER TABLE `user_submits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warrantydate`
--

DROP TABLE IF EXISTS `warrantydate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warrantydate` (
  `sr_no` varchar(10) NOT NULL,
  `machine_sr_no` varchar(10) NOT NULL,
  `barcode_sr_no` varchar(25) NOT NULL,
  `casing_name` varchar(25) NOT NULL,
  `dc_board_sr_no` varchar(25) NOT NULL,
  `power_supply_sr_no` varchar(25) NOT NULL,
  `power_adapter_sr_no` varchar(25) NOT NULL,
  `processor_sr_no` varchar(25) NOT NULL,
  `motherboard_sr_no` varchar(25) NOT NULL,
  `ram_sr_no` varchar(25) NOT NULL,
  `disk_drive_sr_no` varchar(25) NOT NULL,
  `dvd_sr_no` varchar(25) NOT NULL,
  `os_sr_no` varchar(25) NOT NULL,
  `kbd_sr_no` varchar(25) NOT NULL,
  `mouse_sr_no` varchar(25) NOT NULL,
  `machine_status` varchar(10) NOT NULL,
  `cust_name` varchar(25) NOT NULL,
  `qc_date` date NOT NULL,
  `warranty_date` date NOT NULL,
  `batch_no` varchar(10) NOT NULL,
  `work_order_no` varchar(25) NOT NULL,
  `invoice_no` varchar(10) NOT NULL,
  `invoice_date` date NOT NULL,
  `opf_no` varchar(25) NOT NULL,
  `client_po_no` varchar(25) NOT NULL,
  `warranty_type` varchar(10) NOT NULL,
  `dispatch_date` date NOT NULL,
  `products` varchar(25) NOT NULL,
  `capacity` varchar(25) NOT NULL,
  `details` varchar(25) NOT NULL,
  `model` varchar(25) NOT NULL,
  `vendor` varchar(25) NOT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warrantydate`
--

LOCK TABLES `warrantydate` WRITE;
/*!40000 ALTER TABLE `warrantydate` DISABLE KEYS */;
INSERT INTO `warrantydate` VALUES ('1','147333','VTPLDAM 02150355','MINI ITX','na','na','na','na','PD14TIF1E00710','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','Casing Name','na','SFF','MINI ITX','na'),('10','147342','VTPLDAM 02150364','MINI ITX','na','na','na','na','PD14TIF1E00961','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','Miscellaneous','na','na','na','na'),('100','147432','VTPLDAM 02150454','MINI ITX','na','na','na','na','PD14TIF1E01338','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('11','147343','VTPLDAM 02150365','MINI ITX','na','na','na','na','PD14TIEBE01685','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','Accessories','Power Cable & Adapter Cab','na','na','na'),('12','147344','VTPLDAM 02150366','MINI ITX','na','na','na','na','PD14TIEBE01126','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('13','147345','VTPLDAM 02150367','MINI ITX','na','na','na','na','PD14TIEBE01963','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('14','147346','VTPLDAM 02150368','MINI ITX','na','na','na','na','PD14TIEBE01359','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('15','147347','VTPLDAM 02150369','MINI ITX','na','na','na','na','PD14TIEBE01926','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('16','147348','VTPLDAM 02150370','MINI ITX','na','na','na','na','PD14TIEBE01864','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('17','147349','VTPLDAM 02150371','MINI ITX','na','na','na','na','PD14TIEBE01374','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('18','147350','VTPLDAM 02150372','MINI ITX','na','na','na','na','PD14TIEBE01633','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('19','147351','VTPLDAM 02150373','MINI ITX','na','na','na','na','PD14TIEBE01425','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('2','147334','VTPLDAM 02150356','MINI ITX','na','na','na','na','PD14TIF1E01423','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','Power Supply','na','DC Board','X18-0000','na'),('20','147352','VTPLDAM 02150374','MINI ITX','na','na','na','na','PD14TIEBE01928','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('21','147353','VTPLDAM 02150375','MINI ITX','na','na','na','na','PD14TIEBE01920','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('22','147354','VTPLDAM 02150376','MINI ITX','na','na','na','na','PD14TIEBE00573','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('23','147355','VTPLDAM 02150377','MINI ITX','na','na','na','na','PD14TIEBE01654','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('24','147356','VTPLDAM 02150378','MINI ITX','na','na','na','na','PD14TIF1E01296','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('25','147357','VTPLDAM 02150379','MINI ITX','na','na','na','na','PD14TIEBE01678','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('26','147358','VTPLDAM 02150380','MINI ITX','na','na','na','na','PD14TIEBE01613','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('27','147359','VTPLDAM 02150381','MINI ITX','na','na','na','na','PD14TIEBE01743','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('28','147360','VTPLDAM 02150382','MINI ITX','na','na','na','na','PD14TIEBE01533','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('29','147361','VTPLDAM 02150413','MINI ITX','na','na','na','na','PD14TIF1E01126','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('3','147335','VTPLDAM 02150357','MINI ITX','na','na','na','na','PD14TIF1E00055','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','Power Adapter','12V','na','na','AXIOM'),('30','147362','VTPLDAM 02150383','MINI ITX','na','na','na','na','PD14TIEBE01674','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('31','147363','VTPLDAM 02150384','MINI ITX','na','na','na','na','PD14TIEBE01103','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('32','147364','VTPLDAM 02150385','MINI ITX','na','na','na','na','PD14TIF1E02219','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('33','147365','VTPLDAM 02150386','MINI ITX','na','na','na','na','PD14TIEBE01987','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('34','147366','VTPLDAM 02150387','MINI ITX','na','na','na','na','PD14TIEAV01272','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('35','147367','VTPLDAM 02150388','MINI ITX','na','na','na','na','PD14TIF1E02103','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('36','147368','VTPLDAM 02150389','MINI ITX','na','na','na','na','PD14TIEBE01414','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('37','147369','VTPLDAM 02150390','MINI ITX','na','na','na','na','PD14TIEBE01017','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('38','147370','VTPLDAM 02150391','MINI ITX','na','na','na','na','PD14TIF1E00955','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('39','147371','VTPLDAM 02150392','MINI ITX','na','na','na','na','PD14TIF1E02101','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('4','147336','VTPLDAM 02150358','MINI ITX','na','na','na','na','PD14TIF1E02094','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','Processor','na','na','na','na'),('40','147372','VTPLDAM 02150393','MINI ITX','na','na','na','na','PD14TIF1E00021','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('41','147373','VTPLDAM 02150394','MINI ITX','na','na','na','na','PD14TIEAV01311','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('42','147374','VTPLDAM 02150395','MINI ITX','na','na','na','na','PD14TIEAV01565','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('43','147375','VTPLDAM 02150396','MINI ITX','na','na','na','na','PD14TIEAV01326','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('44','147376','VTPLDAM 02150397','MINI ITX','na','na','na','na','PD14TIEAV01231','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('45','147377','VTPLDAM 02150398','MINI ITX','na','na','na','na','PD14TIF1E02006','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('46','147378','VTPLDAM 02150399','MINI ITX','na','na','na','na','PD14TIF1E01467','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('47','147379','VTPLDAM 02150400','MINI ITX','na','na','na','na','PD14TIF1E01930','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('48','147380','VTPLDAM 02150401','MINI ITX','na','na','na','na','PD14TIEBE01421','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('49','147381','VTPLDAM 02150402','MINI ITX','na','na','na','na','PD14TIF1E00048','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('5','147337','VTPLDAM 02150359','MINI ITX','na','na','na','na','PD14TIF1E00648','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','Motherboard','na','na','PD14T1','MITAC'),('50','147382','VTPLDAM 02150403','MINI ITX','na','na','na','na','PD14TIF1E00754','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('51','147383','VTPLDAM 02150404','MINI ITX','na','na','na','na','PD14TIF1E00259','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('52','147384','VTPLDAM 02150405','MINI ITX','na','na','na','na','PD14TIEBE01042','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('53','147385','VTPLDAM 02150406','MINI ITX','na','na','na','na','PD14TIEBE01433','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('54','147386','VTPLDAM 02150407','MINI ITX','na','na','na','na','PD14TIEBE01059','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('55','147387','VTPLDAM 02150408','MINI ITX','na','na','na','na','PD14TIEAV01564','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('56','147388','VTPLDAM 02150409','MINI ITX','na','na','na','na','PD14TIEBE00480','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('57','147389','VTPLDAM 02150410','MINI ITX','na','na','na','na','PD14TIF1E01429','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('58','147390','VTPLDAM 02150411','MINI ITX','na','na','na','na','PD14TIF1E00726','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('59','147391','VTPLDAM 02150412','MINI ITX','na','na','na','na','PD14TIF1E01546','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('6','147338','VTPLDAM 02150360','MINI ITX','na','na','na','na','PD14TIEBE01412','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','Ram','1GB','DDR3 SODIMM','PC1333S-25330','HYNIX'),('60','147392','VTPLDAM 02150414','MINI ITX','na','na','na','na','PD14TIEBE01408','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('61','147393','VTPLDAM 02150415','MINI ITX','na','na','na','na','PD14TIF1E01261','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('62','147394','VTPLDAM 02150416','MINI ITX','na','na','na','na','PD14TIF1E02129','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('63','147395','VTPLDAM 02150417','MINI ITX','na','na','na','na','PD14TIF1E02196','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('64','147396','VTPLDAM 02150418','MINI ITX','na','na','na','na','PD14TIF1E02223','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('65','147397','VTPLDAM 02150419','MINI ITX','na','na','na','na','PD14TIF1E02235','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('66','147398','VTPLDAM 02150420','MINI ITX','na','na','na','na','PD14TIEAV00020','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('67','147399','VTPLDAM 02150421','MINI ITX','na','na','na','na','PD14TIEAV01324','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('68','147400','VTPLDAM 02150422','MINI ITX','na','na','na','na','PD14TIEAV01322','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('69','147401','VTPLDAM 02150423','MINI ITX','na','na','na','na','PD14TIF1E02212','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('7','147339','VTPLDAM 02150361','MINI ITX','na','na','na','na','PD14TIF1E01421','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','Disk Drive','8GB','na','na','KINGSPEC'),('70','147402','VTPLDAM 02150424','MINI ITX','na','na','na','na','PD14TIEAV01275','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('71','147403','VTPLDAM 02150425','MINI ITX','na','na','na','na','PD14TIF1E01695','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('72','147404','VTPLDAM 02150426','MINI ITX','na','na','na','na','PD14TIEBE01151','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('73','147405','VTPLDAM 02150427','MINI ITX','na','na','na','na','PD14TIEBE01465','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('74','147406','VTPLDAM 02150428','MINI ITX','na','na','na','na','PD14TIF1E01687','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('75','147407','VTPLDAM 02150429','MINI ITX','na','na','na','na','PD14TIEBE01793','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('76','147408','VTPLDAM 02150430','MINI ITX','na','na','na','na','PD14TIF1E01791','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('77','147409','VTPLDAM 02150431','MINI ITX','na','na','na','na','PD14TIF1E01600','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('78','147410','VTPLDAM 02150432','MINI ITX','na','na','na','na','PD14TIEBE01058','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('79','147411','VTPLDAM 02150433','MINI ITX','na','na','na','na','PD14TIF1E01772','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('8','147340','VTPLDAM 02150362','MINI ITX','na','na','na','na','PD14TIF1E01121','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','Dvd','na','na','na','na'),('80','147412','VTPLDAM 02150434','MINI ITX','na','na','na','na','PD14TIEBE01360','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('81','147413','VTPLDAM 02150435','MINI ITX','na','na','na','na','PD14TIEBE01997','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('82','147414','VTPLDAM 02150436','MINI ITX','na','na','na','na','PD14TIEBE01983','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('83','147415','VTPLDAM 02150437','MINI ITX','na','na','na','na','PD14TIEBE01104','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('84','147416','VTPLDAM 02150438','MINI ITX','na','na','na','na','PD14TIEBE01382','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('85','147417','VTPLDAM 02150439','MINI ITX','na','na','na','na','PD14TIF1E02312','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('86','147418','VTPLDAM 02150440','MINI ITX','na','na','na','na','PD14TIF1E01785','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('87','147419','VTPLDAM 02150441','MINI ITX','na','na','na','na','PD14TIF1E01731','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('88','147420','VTPLDAM 02150442','MINI ITX','na','na','na','na','PD14TIF1E01339','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('89','147421','VTPLDAM 02150443','MINI ITX','na','na','na','na','PD14TIF1E01418','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('9','147341','VTPLDAM 02150363','MINI ITX','na','na','na','na','PD14TIF1E02004','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','Os','na','na','na','na'),('90','147422','VTPLDAM 02150444','MINI ITX','na','na','na','na','PD14TIEBE01154','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('91','147423','VTPLDAM 02150445','MINI ITX','na','na','na','na','PD14TIF1E01675','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('92','147424','VTPLDAM 02150446','MINI ITX','na','na','na','na','PD14TIF1E01390','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('93','147425','VTPLDAM 02150447','MINI ITX','na','na','na','na','PD14TIF1E00367','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('94','147426','VTPLDAM 02150448','MINI ITX','na','na','na','na','PD14TIEBE01981','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('95','147427','VTPLDAM 02150449','MINI ITX','na','na','na','na','PD14TIEBE01439','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('96','147428','VTPLDAM 02150450','MINI ITX','na','na','na','na','PD14TIF1E00066','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('97','147429','VTPLDAM 02150451','MINI ITX','na','na','na','na','PD14TIF1E01041','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('98','147430','VTPLDAM 02150452','MINI ITX','na','na','na','na','PD14TIF1E00068','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','',''),('99','147431','VTPLDAM 02150453','MINI ITX','na','na','na','na','PD14TIF1E00107','HYMD564M6646CP6-CF','na','na','na','na','na','OK','B.S. ENTERPRISE','2015-02-17','2016-02-17','1','VT_15_02_530','40486','0000-00-00','na','na','1YEAR','0000-00-00','','','','','');
/*!40000 ALTER TABLE `warrantydate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-27 15:02:05
