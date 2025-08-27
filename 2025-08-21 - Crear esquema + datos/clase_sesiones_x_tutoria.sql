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
-- Table structure for table `sesiones_x_tutoria`
--

DROP TABLE IF EXISTS `sesiones_x_tutoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sesiones_x_tutoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_registro` int NOT NULL,
  `id_estudiante` int NOT NULL,
  `comentario` text,
  PRIMARY KEY (`id`),
  KEY `id_registro` (`id_registro`),
  KEY `id_estudiante` (`id_estudiante`),
  CONSTRAINT `sesiones_x_tutoria_ibfk_1` FOREIGN KEY (`id_registro`) REFERENCES `registro_tutoria` (`id`),
  CONSTRAINT `sesiones_x_tutoria_ibfk_2` FOREIGN KEY (`id_estudiante`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sesiones_x_tutoria`
--

LOCK TABLES `sesiones_x_tutoria` WRITE;
/*!40000 ALTER TABLE `sesiones_x_tutoria` DISABLE KEYS */;
INSERT INTO `sesiones_x_tutoria` VALUES (101,1,1,'Me quedó claro el concepto de álgebra'),(102,1,2,'Faltan ejemplos prácticos'),(103,2,3,'Las leyes físicas fueron muy claras'),(104,2,4,'Necesito repasar la gravedad'),(105,3,5,'Las reacciones químicas me parecen complejas'),(106,3,6,'Explicación muy detallada'),(107,4,7,'Interesante, pero debo estudiar más'),(108,4,8,'La teoría de la evolución es fascinante'),(109,5,9,'Historia muy completa'),(110,5,10,'Un enfoque más profundo sobre la Revolución Francesa'),(111,6,11,'Ayuda con los mapas es esencial'),(112,6,12,'Mucha práctica en geografía es necesario'),(113,7,13,'Muy buena explicación sobre la gramática'),(114,7,14,'¿Podemos revisar más ejemplos de sintaxis?'),(115,8,15,'Excelente análisis literario'),(116,8,16,'Más detalles sobre la estructura narrativa'),(117,9,17,'Interesante clase sobre la pintura renacentista'),(118,9,18,'Me gustaría más ejemplos prácticos de la música'),(119,10,19,'La teoría musical fue clara, aunque el ritmo es un reto'),(120,10,20,'Quizá más prácticas con instrumentos'),(121,11,21,'La filosofía puede ser compleja, pero es apasionante'),(122,11,22,'Necesito más ejemplos históricos para entender mejor'),(123,12,23,'El ejercicio físico está muy bien explicado'),(124,12,24,'Me gustaría trabajar en la resistencia'),(125,13,25,'Entendí bien los temas de democracia y derechos'),(126,13,26,'Aclararon muchas dudas sobre las formas de gobierno'),(127,14,27,'La teoría del comportamiento humano me resulta útil'),(128,14,28,'Algunos conceptos psicológicos siguen siendo ambiguos'),(129,15,29,'La teoría microeconómica es útil para mi campo de estudio'),(130,15,30,'Me gustaría estudiar más ejemplos prácticos de microeconomía'),(131,16,31,'Sociología está muy bien explicada, pero es teórica'),(132,16,32,'Más ejemplos prácticos sobre estratificación social'),(133,17,33,'La antropología cultural tiene muchas aristas, pero es interesante'),(134,17,34,'Puedo relacionar las teorías con mi cultura');
/*!40000 ALTER TABLE `sesiones_x_tutoria` ENABLE KEYS */;
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
