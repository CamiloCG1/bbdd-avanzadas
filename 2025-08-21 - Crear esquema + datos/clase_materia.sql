-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: clase
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `estado` int DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (1,'Matemáticas',1),(2,'Física',1),(3,'Química',1),(4,'Biología',1),(5,'Historia',1),(6,'Geografía',1),(7,'Inglés',1),(8,'Literatura',1),(9,'Arte',1),(10,'Música',1),(11,'Filosofía',1),(12,'Educación Física',1),(13,'Ciencias Políticas',1),(14,'Psicología',1),(15,'Economía',1),(16,'Sociología',1),(17,'Antropología',1),(18,'Derecho',1),(19,'Contabilidad',1),(20,'Arquitectura',1),(21,'Ingeniería Civil',1),(22,'Ingeniería Industrial',1),(23,'Ingeniería Electrónica',1),(24,'Ciencias de la Computación',1),(25,'Biotecnología',1),(26,'Medicina',1),(27,'Odontología',1),(28,'Enfermería',1),(29,'Veterinaria',1),(30,'Farmacia',1),(31,'Química Industrial',1),(32,'Ingeniería Mecánica',1),(33,'Ingeniería de Sistemas',1),(34,'Relaciones Internacionales',1),(35,'Mercadeo',1),(36,'Administración de Empresas',1),(37,'Contaduría Pública',1),(38,'Diseño Gráfico',1),(39,'Publicidad',1),(40,'Comunicación Social',1),(41,'Periodismo',1),(42,'Terapia Ocupacional',1),(43,'Trabajo Social',1),(44,'Pedagogía',1),(45,'Educación Especial',1),(46,'Ciencias Ambientales',1),(47,'Geología',1),(48,'Astronomía',1),(49,'Matemática Aplicada',1),(50,'Estadística',1),(51,'Investigación de Mercados',1),(52,'Logística',1);
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-21 21:25:11
