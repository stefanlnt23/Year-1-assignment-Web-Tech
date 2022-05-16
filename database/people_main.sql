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
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main` (
  `personid` bigint NOT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `adress` longtext,
  `postcode` varchar(45) DEFAULT NULL,
  `citty` varchar(45) DEFAULT NULL,
  `email` longtext,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`personid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main`
--

LOCK TABLES `main` WRITE;
/*!40000 ALTER TABLE `main` DISABLE KEYS */;
INSERT INTO `main` VALUES (1649190900844,'ASDASD','ASDSA@SADAS','$2b$10$0jrAFBiYXextdXcZvOogzeBtTLNucEgyN6Zbt2dd6aVrhQvGjDxdC',NULL,NULL,NULL,NULL),(1649191203482,'STEFAN1','stefan1@a','$2b$10$IfABEFv6XJQvEUz.oQpxUe00Zk.RG4XaC4eaUfArqfXhMAjJDB/Ce',NULL,NULL,NULL,NULL),(1649191232677,'STEFAN1','stefan1@a','$2b$10$GZPpQkb6MlX2sz8w659M7OpucGUfXgYuov1KFqSxH2Ak3/b2vrDE2',NULL,NULL,NULL,NULL),(1649191443290,'asdsadsa','asdasda2@sd','$2b$10$2ZYXf8CMcu9RL6rHzRbk8eLLXWICLFberl/2crKsXwFKJg7AfOPna',NULL,NULL,NULL,NULL),(1649191463577,'marius burca','daniel@daniel.com','$2b$10$yQ4ANOgo9DpnRHqcvfiD8OP7z8L75H9isS4QSy8ZIZshD6aCoyAZ6',NULL,NULL,NULL,NULL),(1649191599050,'maricica burcu','maricica@gmail.com','$2b$10$x690W740Se49AHktZ4sNru.iOQ9aPPA/9W1j7m83Z7st0KeWQwv1e',NULL,NULL,NULL,NULL),(1649191680089,'111','111@111','$2b$10$u5chIef1LdohaSlqe.1nh.tJPJSE8RRuCGNM8bx83KouvmS69.ZjS',NULL,NULL,NULL,NULL),(1649191731617,'1','1@1','$2b$10$iZvbUqj6WzizRgbE6b1E/.zoebMzgljcN7BoGPvjio6/AcL4wR7hW',NULL,NULL,NULL,NULL),(1649191801468,'merge','sdasd@asdasd','$2b$10$X/5yh8ksNXSrxOn0L9e76ujIdll0DQCu5KWkLZGA91hQAK2g2v1qK',NULL,NULL,NULL,NULL),(1649192611176,'adsadsa','asdsad@asdasd','$2b$10$lc66ECXXy15glCMcXCuIk.JOq41AdIa7XHDndt5OwxqY7xdyyuKNC',NULL,NULL,NULL,NULL),(1649192887266,'stefanlenta','stefanlenta@outlook.com','$2b$10$55MGz3oZPfV8k4uaXKzaS.bqsAoOphTe15mI4s51q1Ac8ESXRGn0W',NULL,NULL,NULL,NULL),(1649192937424,'stefanlenta','stefanlenta@outlook.com','$2b$10$X5fQV8kRFs.tsYH18eRzCeptPmM7nWwkXyNHARnEFsiRDEXcVEY46',NULL,NULL,NULL,NULL),(1649194412712,'asdsad','sdasd@sadas','$2b$10$6bo1z097GgmeGqjX8bYjHObXkPyrPxI60co9QBtUev9cVDe7DPXHe',NULL,NULL,NULL,NULL),(1649200683511,'stefanlenta','stefanlenta@gmail.com','$2b$10$W6OqhjEx7pXnCZncybqE..O8QqfsfAz7Qsul/eE8IJsLsm4tAzuSO',NULL,NULL,NULL,NULL),(1649202268370,'stefan','lenta','undefined','cv58by','coventry','stefanlenta@gmail.com','$2b$10$6HgccxrMFfWfgpfYe2D07ei7BzpiFMQ7AfcFP12Dn7AIoJK61YqIa'),(1649202385851,'stefanuc','marian','undefined','cv82sad','london','idkmyemail@gmail.com','$2b$10$DFtArkuhLFkawMAuUOlni.KmdM9f6DCIjZXs29dEi/3A6k/dT3scm'),(1649202539266,'test','test','undefined','test','test','test@test','$2b$10$IvOkCg/K6uLU15V02LzeN.c5kTtyUxBy2J3QA0Pe/9y3RX6gsHJ.u'),(1649202651950,'test1','test1','undefined','test1','test1','test1@1','$2b$10$0C2I9cSvFOHm5097kbzvOuTHk/JLgfGEDCYoZx0.lgHbTRRK94W0e'),(1649203580935,'haida','haida1','undefined','haida3','haida5','haida@haida.com','$2b$10$jj38IZzJkjSD.9Xny0f.gO85KorlK0RSXMNoRF55SBfbuYdNvXXoy'),(1649204253400,'IF TRUE DROP TABLE;','ASDSAD','undefined','ASDA','DASD','ASD@ASDAS','$2b$10$mQtDy7GUVQncLBkZsfGDK.HiEvJ4pD7l38DPA2fNlsSUkiG0OlaHO'),(1649204300851,'AKLSJD','ASLK.D','undefined','ASLKJD','AS.LDKJ','ASD@ASD.COM','$2b$10$j5.G0fX3.fiL8Bx2VYQySuTPIfC39UBwMNDh.acObw6bsvPlP9yTC'),(1649254246646,'asd12','asd21','undefined','hasd','asdg','sda@asda','$2b$10$CgP2vozC5e00OzKtHUUYou/x67kZNKn/FLtS1ojNXED.qdfUn720.'),(1649254301993,'test1','test1','undefined','test1','test1','test1@1','aaa'),(1649323147479,'asd','asd',NULL,'asdas',NULL,'dsad@asdas','$2b$10$mlHp83OxinJctDVFWcwzEOyEyBys2PYSEJ6mIMRwUhP3cshcXWJ/K'),(1649323419849,'asd','das','sd','asd',NULL,'asda@asdsadasdas','$2b$10$c0NAhH2bB1zpkAN5.jSdGebG7XG/fypICXwaBCSsg6EZU3bb0ttsW'),(1649323467822,'asds','sd','asd','dasd',NULL,'asdsa@asd','$2b$10$kxDG9xe.WqTATdS.W8jc8.MgEbPif9/xuqSn8xBd64d1xvxxQjrbO'),(1649323577702,'asdas','asd','fasd','hasd','test1','asdas@asdas','$2b$10$222BwmYR6Qbs6o9velIoBeOP0vGiUK/6HG08xgsyHEHA1zRY3Nd7C'),(1649323808038,'asdas','asd','asdas','dasd',NULL,'asda@asdsadasdas','$2b$10$c04ZiBS79JOTTblZWXoKNeRI5DVE6vhwVegu0qoBSDVhj0e0lKoq.'),(1649323862442,'asdas','asd','fasd','hasd','test1','dasdas@sad123ddd','$2b$10$gXFvbkcP.n.3yBM7j3yn7.HK68Cg2YRayZxX.xAcjvHR0FdpVEC3S'),(1649325689975,'plswork','plswork','plswork','plswork','plswork','plswork@1','$2b$10$C7Bd3bM3uYfjv3HrvuWuGOHbJqv82KioKHeUOoWxzObhRxESdcTie'),(1649325757747,'plswork','plswork','plswork','plswork','plswork','plswork@1','$2b$10$Umuh984u6JhXyuqpQc7OqOYJGYMg1Ur8rTHnnO8EN4DW3l4OlII5W'),(1649325802587,'plswork','plswork','plswork','plswork','plswork','plswork@1','$2b$10$r2wPbUY61JbWRXEnskBS9u9GwcE1kuWAXUWVKiUyRcVEFCb1HSITO'),(1649325904145,'asdas','asd','fasd','asd','test1','asda@asdsadasdas','$2b$10$HrXugIRgWrxldpmxOuuuDeORM3KAOKl59x5vD3PiJtlnyConOsCq.'),(1649325950769,'asdas','asd','fasd','hasd','test1','dasdas@sad1233ddd','$2b$10$f1tT1RYC2RabQnz7PIlafuEOPbBM4iPSkb.nSzBcP/IUGpyOPsmrW'),(1649326413438,'asd','asdasd','asd','hasd','test1','asdas@asdas','$2b$10$SMxwrKZ9gTEWVTcTpHtz3eUNxe6.KY7XUq5I.svBHmxghUQ3OZBiK'),(1649326569643,'asd','asd','fasd','asd','asd','asdas@asdas','$2b$10$LLpby7KH0U9JO2AXQp9vEuIfiMB9aJ56EiNbJJ1uMo7lqV.hnJljy'),(1649329262275,'mariana1','bigasd','28 allesley old road','cv682sz','london','narcisa@gmail.com','$2b$10$qT4d/mkwvB6FdmlrZTlYA.YoTQB6spxtOKFOlAUYHQwDXECcviuSC'),(1649329763338,'asd','asdasd','asd','asda','sdas','pls@gmail.com','$2b$10$V0lVqebU1yooFCp1k7A0nuqTEbWsALFSViJ9x0gmMIi4Bji4EVNga'),(1649330370804,'m','mmmmmmmmmm','mmmm','m','mmm','m@m','$2b$10$Si2w/524x2pyKWJk8DNSquEsaWxckhcUlxpEvpCPS1TKNbKwBLjr6'),(1649330802772,'asd','asdsa','as','dasd','das','zzz@z','$2b$10$1MSZWjjC3IMzFOeobHWWGOaTn930xg8QoWg.Cz7b4H8TsUL5O4aHC'),(1649332951798,'asd','asdsa','dasd','asd','asdas','dasd@1','$2b$10$36FfA/cUb/ZySMmXIxtvquU/K.PSFJmoLH/Oq3qpu/DeczuSyBQ/m'),(1649332991809,'asd','asdsa','dasd','asd','asdas','dasd@1','$2b$10$V.ohshzQaK.tfjo4JmVZxOzAjBCSa.y5c9a9S5s0mMzWOeq6ljy3O'),(1649335537819,'asdsa','asdsa','asdsa','asdsa','asdsa','1@1','$2b$10$sLB0ay1bMi0BJFT076iXLeQO3VbhovZDM2XdbK.PR0tieW6P.oeyK'),(1649337210701,'asd','sdas','asd','asdas','das','das@123','$2b$10$E9bb5RRL5FhNUgu3nSR2Je6MbvvCwLO8Q2M4aNqUnEmnoHBL1esim'),(1649339081611,'prof1','prof1','28 sandy lane','cv','Northampton','sebastian@hotmail.com','$2b$10$zq2IG6Ol9PEu5WCIHLJrf.jvmPNvXRAGy.TIJyq9C7iv7NFRriR26'),(1649339190442,'asdasdasd','asdasd','asd','das','dasd','asdas@152','$2b$10$A1Ujla6/dZlqTFJonvOizOvwFbuiC4JZOJQPGA3HwbEeTrsfrBIB2'),(1649339579734,'ASDAS','DAS','DAS','DAS','DASD','ASD@ASDASD','$2b$10$kZrt4AbBGHhwgDG5.K9N8OxX/Fqwe/AK55BNCd17Hdy9XwSV6SBrm'),(1649339773437,'asd','asd','as','das','das','das@asdsa','$2b$10$utFxB/A1a06GzoJaNCdoL.cpvp4ZBo9BD0t5yFcm0X/SrOJwioJu2'),(1649339804864,'asdas','asdasd','asd','asd','asd','asda@asdsadasdas','$2b$10$.f.Hvvn8gNcI.puQgWavnOiDxxe8g7jbGf0Y7bK4B6cetgk1jufhG'),(1649339887906,'asdas','asdasd','asd','hasd','test1','dasdas@sad123ddd','$2b$10$4rzbpW1SCUUSK5osulPtgerHD2o8r2yiKtzVfMpVXSRnWYFbed8FS'),(1649340068462,'asd','asd','sad','das','asdasd','dssa@sad','$2b$10$/i/9zqJ0lFgT/uWc1znBb.e21kYzl3IqsPV8O6I7bdRh.lm3u6Qr6'),(1649340161794,'asd','sda','asd','asd','asd','das@sadasd','$2b$10$nOpevjzul9yehK5AgpB0B.jrdP1ZDHwEQ.ZtTtZVQfbWzZZWuVBOu'),(1649341292670,'asds','dasdsadadas','asdas','hasd','test1','dasdas@sad123ddd','$2b$10$HxnTvg4zV/yYzzVoo5NtaO9hGvez4H.quWXk8sjONI3UteXPkNdfy'),(1649341745881,'asd','sada','das','das','dasd','asdsad@sadas','$2b$10$s.Fkw4/JTJeyxs.zkGpsqeHdTZAffLxvdQUL9B3mCyp/qVB47bzGu'),(1649341791247,'asdsad','asd','asd','das','d','dasd@sadasd','$2b$10$ZuLcznLRU3S2plpJl149qer/OMNVtSJFsBJnre6PfOUJHNyDUEdae'),(1649341798458,'asdsad','asd','asd','das','d','dasd@sadasd','$2b$10$KbqRFjwcQYrbs.FWiAf8U.9eIp0nrL5x/gVmFpp5A8yjwZaWwfyiK'),(1649341896852,'asdas','asdasd','fasd','hasd','test1','asda@asdsadasdas','$2b$10$4W/25C5NCkvtrJu7lCafxuciL728jrfgwCycczhBSxRGVfXu3GXm2'),(1649342161710,'asd','asd','asd','das','asd','asdas@asdasd','$2b$10$09aC22DnYlkTn.SUsFMzPe7PoRDsis5uyUthNP0ReaPyPtqikDNPa'),(1649342488597,'asd','sad','dasd','das','das','dasdsa@asdsa','$2b$10$JBfgGPslLlcrSto8MYLmUuX1giNaCN0kDiMWpxy2DiFn7Oehcq7DK'),(1649342681466,'asd','asdasd','asd','asd','asd','dasdas@sad123ddd','$2b$10$.rTNiG5DBa7i5K/7w67NtuD8wXayptI6whCojg7ACociI9CVbrmRq'),(1649349716298,'asd','asd','asdasdas','asdasd','dasdsad','asdsa@asdsaa','$2b$10$OFzQJrXDuRAhdgCZUkpzzeWpG607ioPM7dvILr9aCGTUNfUDBLBNK'),(1649389603270,'sad','sadas','dasd','asd','das','da@asd','$2b$10$i20w5RqxoIuWb/KHFuZKKOu5VczQkMBgpkwuV2s.H7ejPafzs8dtW'),(1649399187749,'Maurica','Cibotaru','32 london street','ld32zz','London','maurica@gmail.com','$2b$10$SKkSIAAgJ48Pkz44Hj4D.O5nBVsiKOoprH1PiCk137VSMA7nr7SVi'),(1649400559013,'asda','ga12j3','aljas0asd','asdasasdia','ajdasdas99a9s','asda8213as@asd','$2b$10$w5d/RBpLqcqf8bPnoOsaSOpLKKLRDJxx2pVftm2XB8fgyMYGkyBWK');
/*!40000 ALTER TABLE `main` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-08  8:08:12
