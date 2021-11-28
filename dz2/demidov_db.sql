-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: demidov_db
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `age` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=392 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--
-- WHERE:  1 limit 100

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Aaron',50),(2,'Abram',27),(3,'Avaz',34),(4,'Avgustin',38),(5,'Avraam',34),(6,'Agap',36),(7,'Agapit',35),(8,'Agat',42),(9,'Agafon',25),(10,'Adam',34),(11,'Adrian',41),(12,'Azamat',48),(13,'Azat',35),(14,'Aziz',35),(15,'Aid',43),(16,'Ajdar',28),(17,'Ajrat',35),(18,'Akakij',43),(19,'Akim',26),(20,'Alan',45),(21,'Aleksandr',46),(22,'Aleksej',49),(23,'Ali',33),(24,'Alik',37),(25,'Alim',36),(26,'Alihan',44),(27,'Alisher',27),(28,'Almaz',43),(29,'Al\'bert',33),(30,'Amir',28),(31,'Amiram',33),(32,'Amiran',29),(33,'Anar',35),(34,'Anastasij',35),(35,'Anatolij',30),(36,'Anvar',33),(37,'Angel',30),(38,'Andrej',31),(39,'Anzor',49),(40,'Anton',28),(41,'Anfim',50),(42,'Aram',29),(43,'Aristarh',42),(44,'Arkadij',36),(45,'Arman',49),(46,'Armen',38),(47,'Arsen',28),(48,'Arsenij',25),(49,'Arslan',37),(50,'Artem',42),(51,'Artemij',37),(52,'Artur',34),(53,'Arhip',48),(54,'Askar',46),(55,'Aslan',42),(56,'Ashan',48),(57,'Ashat',45),(58,'Ahmet',47),(59,'Ashot',46),(60,'Bahram',33),(61,'Bendzhamin',32),(62,'Blez',30),(63,'Bogdan',39),(64,'Boris',27),(65,'Borislav',29),(66,'Bronislav',41),(67,'Bulat',49),(68,'Vadim',28),(69,'Valentin',29),(70,'Valerij',40),(71,'Val\'demar',46),(72,'Vardan',25),(73,'Vasilij',43),(74,'Veniamin',25),(75,'Viktor',44),(76,'Vil\'gel\'m',31),(77,'Vit',31),(78,'Vitalij',38),(79,'Vlad',34),(80,'Vladimir',26),(81,'Vladislav',32),(82,'Vladlen',44),(83,'Vlas',31),(84,'Vsevolod',33),(85,'Vjacheslav',30),(86,'Gavriil',25),(87,'Gamlet',26),(88,'Garri',25),(89,'Gennadij',46),(90,'Genri',31),(91,'Genrih',35),(92,'Georgij',26),(93,'Gerasim',37),(94,'German',30),(95,'Germann',32),(96,'Gleb',42),(97,'Gordej',31),(98,'Grigorij',47),(99,'Gustav',47),(100,'David',46);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-21 12:55:26
