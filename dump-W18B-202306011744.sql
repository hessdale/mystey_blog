-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: mystery_blog
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.13-MariaDB

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
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL,
  `content` varchar(250) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_un` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'post title1','content content content1','2020-02-02'),(2,'post title2','content content content2','2020-02-03'),(3,'post title3','content content content4','2020-02-04'),(4,'post title4','content content content4','2020-02-05'),(5,'post title5','content content content5','2020-02-07'),(6,'post title6','content content content6','2020-02-08'),(7,'post title7','content content content7','2020-02-09'),(8,'post title8','content content content8','2020-02-10'),(9,'post title9','content content content9','2020-02-11'),(10,'post title10','content content content10','2020-02-12');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_view`
--

DROP TABLE IF EXISTS `post_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_view` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned DEFAULT NULL,
  `date_viewed` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_view_FK` (`post_id`),
  CONSTRAINT `post_view_FK` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_view`
--

LOCK TABLES `post_view` WRITE;
/*!40000 ALTER TABLE `post_view` DISABLE KEYS */;
INSERT INTO `post_view` VALUES (101,3,'2007-05-25'),(102,2,'2014-10-16'),(103,2,'2017-08-06'),(104,5,'2009-03-17'),(105,5,'2014-08-07'),(106,4,'2008-03-25'),(107,3,'2002-10-16'),(108,1,'2006-10-03'),(109,1,'2021-02-14'),(110,2,'2008-10-26'),(111,3,'2016-06-30'),(112,2,'2004-01-20'),(113,2,'2003-09-02'),(114,1,'2015-11-19'),(115,3,'2010-01-30'),(116,3,'2005-08-29'),(117,2,'2003-05-19'),(118,3,'2015-01-25'),(119,1,'2006-01-21'),(120,4,'2003-01-19'),(121,1,'2003-04-01'),(122,4,'2018-02-04'),(123,1,'2004-03-28'),(124,5,'2019-02-20'),(125,1,'2009-05-27'),(126,4,'2001-09-07'),(127,2,'2016-04-01'),(128,1,'2019-12-01'),(129,2,'2008-08-30'),(130,3,'2019-01-18'),(131,4,'2005-10-05'),(132,1,'2013-05-10'),(133,1,'2005-07-21'),(134,4,'2014-03-27'),(135,1,'2012-05-02'),(136,2,'2008-07-06'),(137,1,'2001-01-05'),(138,5,'2021-08-08'),(139,1,'2004-09-26'),(140,4,'2014-12-23'),(141,3,'2019-06-15'),(142,1,'2005-02-09'),(143,5,'2016-11-23'),(144,4,'2015-06-05'),(145,5,'2020-01-01'),(146,1,'2020-03-05'),(147,1,'2018-03-13'),(148,1,'2013-07-11'),(149,5,'2007-01-13'),(150,4,'2019-09-01'),(151,1,'2021-03-16'),(152,5,'2013-04-19'),(153,2,'2017-11-07'),(154,5,'2020-06-10'),(155,3,'2011-10-06'),(156,4,'2013-03-06'),(157,5,'2023-02-03'),(158,3,'2006-02-26'),(159,1,'2015-04-18'),(160,1,'2001-04-11'),(161,2,'2003-11-24'),(162,5,'2015-03-09'),(163,1,'2005-12-10'),(164,3,'2021-02-23'),(165,4,'2010-08-23'),(166,1,'2004-07-11'),(167,5,'2006-03-09'),(168,4,'2009-11-19'),(169,3,'2011-08-30'),(170,1,'2007-09-04'),(171,4,'2019-03-03'),(172,3,'2015-11-25'),(173,5,'2001-01-25'),(174,3,'2006-12-26'),(175,3,'2007-07-25'),(176,5,'2014-12-26'),(177,5,'2012-08-05'),(178,5,'2022-06-28'),(179,1,'2011-04-27'),(180,1,'2009-12-17'),(181,2,'2006-03-10'),(182,5,'2011-01-20'),(183,3,'2007-01-16'),(184,4,'2011-04-23'),(185,3,'2010-06-10'),(186,3,'2002-11-04'),(187,1,'2011-01-05'),(188,4,'2009-11-19'),(189,3,'2009-07-28'),(190,4,'2014-01-25'),(191,5,'2008-03-16'),(192,1,'2012-04-29'),(193,5,'2009-03-09'),(194,4,'2010-11-08'),(195,5,'2012-05-18'),(196,5,'2018-05-06'),(197,3,'2013-11-29'),(198,4,'2007-05-29'),(199,2,'2007-05-29'),(200,2,'2006-09-27');
/*!40000 ALTER TABLE `post_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mystery_blog'
--
/*!50003 DROP PROCEDURE IF EXISTS `most_viewed_posts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `most_viewed_posts`()
begin
	select p.title, count(p.id)
	from post p inner join post_view pv on p.id=pv.post_id group by p.id 
	order by count(p.id) desc 
	limit 3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `newest_posts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `newest_posts`()
begin
	select p.title,p.content
	from post p 
	order by p.date_created desc limit 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-01 17:44:43
