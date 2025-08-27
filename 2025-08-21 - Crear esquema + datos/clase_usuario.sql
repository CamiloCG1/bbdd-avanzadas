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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_rol` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `correo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_rol` (`id_rol`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,1,'Carlos Méndez','3001234567','carlos.mendez@email.com'),(2,1,'Lucía Ramírez','3001234568','lucia.ramirez@email.com'),(3,1,'Miguel Torres','3001234569','miguel.torres@email.com'),(4,1,'Ana González','3001234570','ana.gonzalez@email.com'),(5,1,'Sofía Pérez','3001234571','sofia.perez@email.com'),(6,1,'Juan Rodríguez','3001234572','juan.rodriguez@email.com'),(7,1,'Marta Sánchez','3001234573','marta.sanchez@email.com'),(8,1,'Pablo López','3001234574','pablo.lopez@email.com'),(9,1,'Valentina García','3001234575','valentina.garcia@email.com'),(10,1,'Raúl Díaz','3001234576','raul.diaz@email.com'),(11,1,'Camila Fernández','3001234577','camila.fernandez@email.com'),(12,1,'Esteban Cruz','3001234578','esteban.cruz@email.com'),(13,1,'Laura Herrera','3001234579','laura.herrera@email.com'),(14,1,'Felipe Ruiz','3001234580','felipe.ruiz@email.com'),(15,1,'Martín Díaz','3001234581','martin.diaz@email.com'),(16,1,'Isabella Castro','3001234582','isabella.castro@email.com'),(17,1,'Diego García','3001234583','diego.garcia@email.com'),(18,1,'Eugenia Ortega','3001234584','eugenia.ortega@email.com'),(19,1,'Cristina Jiménez','3001234585','cristina.jimenez@email.com'),(20,1,'Adrián Silva','3001234586','adrian.silva@email.com'),(21,1,'José Manuel Gómez','3001234587','jose.gomez@email.com'),(22,1,'Eva Fernández','3001234588','eva.fernandez@email.com'),(23,1,'Raquel Martínez','3001234589','raquel.martinez@email.com'),(24,1,'Javier Romero','3001234590','javier.romero@email.com'),(25,1,'Martina González','3001234591','martina.gonzalez@email.com'),(26,1,'Hugo Sánchez','3001234592','hugo.sanchez@email.com'),(27,1,'Alejandra Torres','3001234593','alejandra.torres@email.com'),(28,1,'Fernando López','3001234594','fernando.lopez@email.com'),(29,1,'Beatriz Ruiz','3001234595','beatriz.ruiz@email.com'),(30,1,'Tomás Sánchez','3001234596','tomas.sanchez@email.com'),(31,1,'Olga Fernández','3001234597','olga.fernandez@email.com'),(32,1,'Sara Medina','3001234598','sara.medina@email.com'),(33,1,'Alberto Pérez','3001234599','alberto.perez@email.com'),(34,1,'Violeta Castro','3001234600','violeta.castro@email.com'),(35,1,'David León','3001234601','david.leon@email.com'),(36,1,'Patricia Ruiz','3001234602','patricia.ruiz@email.com'),(37,1,'Francisco Díaz','3001234603','francisco.diaz@email.com'),(38,1,'Lorena Sánchez','3001234604','lorena.sanchez@email.com'),(39,1,'Pilar Álvarez','3001234605','pilar.alvarez@email.com'),(40,1,'Antonio Hernández','3001234606','antonio.hernandez@email.com'),(41,1,'Nuria García','3001234607','nuria.garcia@email.com'),(42,1,'Irene Martínez','3001234608','irene.martinez@email.com'),(43,1,'Carlos Rodríguez','3001234609','carlos.rodriguez@email.com'),(44,1,'María Fernández','3001234610','maria.fernandez@email.com'),(45,1,'Tomás González','3001234611','tomas.gonzalez@email.com'),(46,1,'Ricardo López','3001234612','ricardo.lopez@email.com'),(47,1,'Laura Castro','3001234613','laura.castro@email.com'),(48,1,'Héctor Díaz','3001234614','hector.diaz@email.com'),(49,1,'Mónica Sánchez','3001234615','monica.sanchez@email.com'),(50,1,'Eduardo Martínez','3001234616','eduardo.martinez@email.com'),(51,1,'Silvia Gómez','3001234617','silvia.gomez@email.com'),(52,2,'Dr. Luis García','3109876543','luis.garcia@profesor.com'),(53,2,'Prof. Clara López','3109876544','clara.lopez@profesor.com'),(54,2,'Dr. Jorge Pérez','3109876545','jorge.perez@profesor.com'),(55,2,'Prof. Marta Sánchez','3109876546','marta.sanchez@profesor.com'),(56,2,'Dr. Alberto Torres','3109876547','alberto.torres@profesor.com'),(57,2,'Prof. Elena Martínez','3109876548','elena.martinez@profesor.com'),(58,2,'Dr. Pedro Rodríguez','3109876549','pedro.rodriguez@profesor.com'),(59,2,'Prof. Carolina Gómez','3109876550','carolina.gomez@profesor.com'),(60,2,'Dr. Francisco Díaz','3109876551','francisco.diaz@profesor.com'),(61,2,'Prof. Silvia Álvarez','3109876552','silvia.alvarez@profesor.com'),(62,2,'Dr. Javier López','3109876553','javier.lopez@profesor.com'),(63,2,'Prof. Isabel Pérez','3109876554','isabel.perez@profesor.com'),(64,2,'Dr. Manuel García','3109876555','manuel.garcia@profesor.com'),(65,2,'Prof. Rosa Rodríguez','3109876556','rosa.rodriguez@profesor.com'),(66,2,'Dr. Samuel Fernández','3109876557','samuel.fernandez@profesor.com'),(67,2,'Prof. Patricia Díaz','3109876558','patricia.diaz@profesor.com'),(68,2,'Dr. Raúl Sánchez','3109876559','raul.sanchez@profesor.com'),(69,2,'Prof. Lucía González','3109876560','lucia.gonzalez@profesor.com'),(70,2,'Dr. Ignacio Hernández','3109876561','ignacio.hernandez@profesor.com'),(71,2,'Prof. Teresa Cruz','3109876562','teresa.cruz@profesor.com'),(72,2,'Dr. José López','3109876563','jose.lopez@profesor.com'),(73,2,'Prof. Beatriz Sánchez','3109876564','beatriz.sanchez@profesor.com'),(74,2,'Dr. Alberto Ramos','3109876565','alberto.ramos@profesor.com'),(75,2,'Prof. Laura Pérez','3109876566','laura.perez@profesor.com'),(76,2,'Dr. Tomás González','3109876567','tomas.gonzalez@profesor.com'),(77,2,'Prof. Eugenia Medina','3109876568','eugenia.medina@profesor.com'),(78,2,'Dr. Victor Díaz','3109876569','victor.diaz@profesor.com'),(79,2,'Prof. Elena Álvarez','3109876570','elena.alvarez@profesor.com'),(80,2,'Dr. Miguel Fernández','3109876571','miguel.fernandez@profesor.com'),(81,2,'Prof. Teresa Jiménez','3109876572','teresa.jimenez@profesor.com'),(82,2,'Dr. Francisco León','3109876573','francisco.leon@profesor.com'),(83,2,'Prof. Gabriela Ruiz','3109876574','gabriela.ruiz@profesor.com'),(84,2,'Dr. Andrés Sánchez','3109876575','andres.sanchez@profesor.com'),(85,2,'Prof. Laura Castro','3109876576','laura.castro@profesor.com'),(86,2,'Dr. Javier Romero','3109876577','javier.romero@profesor.com'),(87,2,'Prof. Mercedes López','3109876578','mercedes.lopez@profesor.com'),(88,2,'Dr. Ramón Díaz','3109876579','ramon.diaz@profesor.com'),(89,2,'Prof. Carmen Martínez','3109876580','carmen.martinez@profesor.com'),(90,2,'Dr. Patricia Ramírez','3109876581','patricia.ramirez@profesor.com'),(91,2,'Prof. Enrique Pérez','3109876582','enrique.perez@profesor.com'),(92,2,'Dr. Sergio López','3109876583','sergio.lopez@profesor.com'),(93,2,'Prof. Ana María Sánchez','3109876584','ana.sanchez@profesor.com'),(94,2,'Dr. Luis Pérez','3109876585','luis.perez@profesor.com'),(95,2,'Prof. David Rodríguez','3109876586','david.rodriguez@profesor.com'),(96,2,'Dr. Alejandro García','3109876587','alejandro.garcia@profesor.com'),(97,2,'Prof. Dolores Martín','3109876588','dolores.martin@profesor.com');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
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
