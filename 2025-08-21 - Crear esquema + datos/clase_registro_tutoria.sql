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
-- Table structure for table `registro_tutoria`
--

DROP TABLE IF EXISTS `registro_tutoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_tutoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `id_materia_profesor` int NOT NULL,
  `tema` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_materia_profesor` (`id_materia_profesor`),
  CONSTRAINT `registro_tutoria_ibfk_1` FOREIGN KEY (`id_materia_profesor`) REFERENCES `materia_profesor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_tutoria`
--

LOCK TABLES `registro_tutoria` WRITE;
/*!40000 ALTER TABLE `registro_tutoria` DISABLE KEYS */;
INSERT INTO `registro_tutoria` VALUES (1,'2025-08-01','10:00:00',1,'Álgebra Lineal'),(2,'2025-08-02','11:00:00',2,'Ley de Gravitación Universal'),(3,'2025-08-03','09:00:00',3,'Reacciones Químicas'),(4,'2025-08-04','14:00:00',4,'Teoría de la Evolución'),(5,'2025-08-05','10:00:00',5,'Revolución Francesa'),(6,'2025-08-06','16:00:00',6,'Mapas y Coordenadas'),(7,'2025-08-07','13:00:00',7,'Grammar and Syntax'),(8,'2025-08-08','09:00:00',8,'Análisis Literario'),(9,'2025-08-09','15:00:00',9,'Teoría Musical'),(10,'2025-08-10','12:00:00',10,'Historia de la Música'),(11,'2025-08-11','10:00:00',11,'Introducción a la Filosofía'),(12,'2025-08-12','14:00:00',12,'Preparación Física y Ejercicio'),(13,'2025-08-13','17:00:00',13,'Gobernanza y Democracia'),(14,'2025-08-14','11:00:00',14,'Teoría del Comportamiento Humano'),(15,'2025-08-15','10:00:00',15,'Teoría Microeconómica'),(16,'2025-08-16','12:00:00',16,'Investigación Sociológica'),(17,'2025-08-17','16:00:00',17,'Antropología Cultural'),(18,'2025-08-18','09:00:00',18,'Derechos Humanos y Justicia'),(19,'2025-08-19','13:00:00',19,'Fundamentos de la Contabilidad'),(20,'2025-08-20','14:00:00',20,'Diseño y Construcción de Estructuras'),(21,'2025-08-21','12:00:00',21,'Cálculo en Ingeniería Civil'),(22,'2025-08-22','15:00:00',22,'Procesos de Manufactura'),(23,'2025-08-23','10:00:00',23,'Electrónica Básica'),(24,'2025-08-24','14:00:00',24,'Lenguajes de Programación'),(25,'2025-08-25','13:00:00',25,'Cultivo de Organismos Genéticamente Modificados'),(26,'2025-08-26','16:00:00',26,'Patología Humana'),(27,'2025-08-27','11:00:00',27,'Técnicas Quirúrgicas'),(28,'2025-08-28','12:00:00',28,'Terapias Farmacológicas'),(29,'2025-08-29','14:00:00',29,'Tratamiento de Enfermedades Animales'),(30,'2025-08-30','10:00:00',30,'Farmacología Clínica'),(31,'2025-09-01','09:00:00',31,'Cálculos en Ingeniería Química'),(32,'2025-09-02','11:00:00',32,'Técnicas de Análisis en Química'),(33,'2025-09-03','15:00:00',33,'Diseño de Circuitos'),(34,'2025-09-04','12:00:00',34,'Optimización de Sistemas'),(35,'2025-09-05','10:00:00',35,'Negocios Internacionales'),(36,'2025-09-06','13:00:00',36,'Tendencias en Marketing'),(37,'2025-09-07','09:00:00',37,'Dirección de Empresas'),(38,'2025-09-08','15:00:00',38,'Auditoría Financiera'),(39,'2025-09-09','10:00:00',39,'Diseño Digital'),(40,'2025-09-10','14:00:00',40,'Publicidad Creativa'),(41,'2025-09-11','09:00:00',41,'Periodismo y Medios'),(42,'2025-09-12','13:00:00',42,'Gestión de Proyectos Sociales'),(43,'2025-09-13','15:00:00',43,'Rehabilitación de Pacientes'),(44,'2025-09-14','10:00:00',44,'Trabajo Social y Políticas Públicas'),(45,'2025-09-15','12:00:00',45,'Teoría Educativa'),(46,'2025-09-16','13:00:00',46,'Psicopedagogía'),(47,'2025-09-17','14:00:00',47,'Protección Ambiental'),(48,'2025-09-18','10:00:00',48,'Formación en Geología'),(49,'2025-09-19','11:00:00',49,'Exploración Espacial'),(50,'2025-09-20','09:00:00',50,'Teoría de la Probabilidad');
/*!40000 ALTER TABLE `registro_tutoria` ENABLE KEYS */;
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
