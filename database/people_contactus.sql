-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: people
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactus` (
  `fname` text,
  `lname` text,
  `email` text,
  `commentt` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus`
--

LOCK TABLES `contactus` WRITE;
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
INSERT INTO `contactus` VALUES (NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL),('111','222dasd','asdsa@sadas','asd'),('asdas','dasda','sdasda@asdas','sdas'),('asd','asdasd','asdas@asdas','dsa'),('asd','asdasd','asdas@asdas','dsaddxxx'),('asdas','dasd','asdas@asd','dsa'),('2222','2222222222','222222222@22','222'),('2222','2222222222','222222222@22','222'),('asd','asdas','dasdas@sad','dasd1'),('13123','asdas123123123','dasdas@sad123','dasd11dd123'),('13123d','asdas123123123d','dasdas@sad123d','dasd11dd123d'),('13123d','asdas123123123d','dasdas@sad123d','dasd11dda123d'),('13123d','asdas123123123d','dasdas@sad123d','dasd11dda123d'),('13123d','asdas123123123d','dasdas@sad123d','dasd11dda123d'),('13123d','asdas123123123d','dasdas@sad123d','dasd11dda123d'),('13123ddsa','asdas123123123ddd','dasdas@sad123ddd','dasd11dda123ddd'),('13123ddsa13123ddsa','asdas123123123ddd','dasdas@sad123ddd','dasd11dda123ddd'),('13123ddsa13123ddsaasdsad','asdas123123123ddd','dasdas@sad123ddd','dasd11dda123ddd'),('13123ddsa13123ddsaasdsad','asdas123123123ddd','dasdas@sad123ddd','dasd11dda123dddd'),('stefan','lenta','stefanlenta@gmail.com','i dont like you '),('asdsa','asdas','das@sad','dsad'),('asdsa2','asdas2','das@sad3','dsad3'),('ds','s','ss@s','s'),('ds','s','ss@s','s'),('ds','s','ss@s','s'),('2222','2222222222','222222222@22','222'),(NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL),(NULL,'asdsad','asd@asdsa','asd@asdsa'),(NULL,'zzz','zzzz@5','zsdfdszsdfdszsdfdszsdfdszsdfds zsdfdszsdfdszsdfdszsdfdszsdfds '),(NULL,'lenta','xxxxxx@sd','sdasd'),(NULL,'asdas','dasd@asd','asd'),(NULL,'asd','asdasd1@1','asd'),(NULL,'asdasd','asdas@asd','asdas@asd'),(NULL,'asda','sdas@asda','dasd@asd'),(NULL,'asdas','dasd@asdsa','asda'),(NULL,'sdas','dasd@asd','asdsa'),(NULL,'asdsa','das@sd','dasdad'),(NULL,'asd','asdasd@sad','dasd@d'),(NULL,'asd','asdasd@sad','dasd@d'),(NULL,'asd','asdasd@sad','dasd@d'),(NULL,'asd','asdasd@sad','dasd@d'),(NULL,'asd','asdasd@sad','dasd@d'),(NULL,'uuuuuuuuuu','uuuuuuuuuuuuuu@uu','uuuuuuuuuuuu'),(NULL,'mmmmmmmm','mmmmmmmmmmm@m','mmmmmmmmm'),(NULL,'xxxxxxx','xxxxxxxxxxx@x','xxxxxxx@x'),(NULL,'xxxxxxx','xxxxxxxxxxx@x','xxxxxxx@x'),(NULL,'vvvvvvvvvvvvvv','vvvvvvvvvvvvvvvvvvvvvvvvxxxxx@x','xxxxvxxx@x'),(NULL,'vvvvvvvvvvvvvv','x@z','xxxxvxxx@x'),(NULL,'dasdasd','asdas@sad','dasdsa'),(NULL,'asdas','das@sadsad','dasd@'),(NULL,'das','asd@asdsa','asdsad'),(NULL,'dsad','asdasd@asdasasd','SAdad'),(NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL),(NULL,'as','dasd@asd','dasdsa'),(NULL,'dasd','asd@sad','dasdas'),(NULL,'asdas','dasd@sad','asd'),(NULL,'das','asd@asd','asdas'),(NULL,'asd','asd@asd','dassa'),(NULL,'asd','asd@sd','dass'),(NULL,'asd','asd@sd','dass'),(NULL,'lenta','sadasdas@asdsa','asdsadsad'),(NULL,'asdasd','asdas@asd','asfdas;fjas;ljdlajsd;lkasdlas;djasdlasdasdasdsad');
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-08  8:08:11
