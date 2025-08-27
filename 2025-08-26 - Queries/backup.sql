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

--
-- Table structure for table `materia_profesor`
--

DROP TABLE IF EXISTS `materia_profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia_profesor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_materia` int NOT NULL,
  `id_profesor` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_materia` (`id_materia`),
  KEY `id_profesor` (`id_profesor`),
  CONSTRAINT `materia_profesor_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`codigo`),
  CONSTRAINT `materia_profesor_ibfk_2` FOREIGN KEY (`id_profesor`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia_profesor`
--

LOCK TABLES `materia_profesor` WRITE;
/*!40000 ALTER TABLE `materia_profesor` DISABLE KEYS */;
INSERT INTO `materia_profesor` VALUES (1,1,2),(2,2,3),(3,3,4),(4,4,5),(5,5,6),(6,6,7),(7,7,8),(8,8,9),(9,9,10),(10,10,11),(11,11,12),(12,12,13),(13,13,14),(14,14,15),(15,15,16),(16,16,17),(17,17,18),(18,18,19),(19,19,20),(20,20,21),(21,21,22),(22,22,23),(23,23,24),(24,24,25),(25,25,26),(26,26,27),(27,27,28),(28,28,29),(29,29,30),(30,30,31),(31,31,32),(32,32,33),(33,33,34),(34,34,35),(35,35,36),(36,36,37),(37,37,38),(38,38,39),(39,39,40),(40,40,41),(41,41,42),(42,42,43),(43,43,44),(44,44,45),(45,45,46),(46,46,47),(47,47,48),(48,48,49),(49,49,50),(50,50,51);
/*!40000 ALTER TABLE `materia_profesor` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'estudiante'),(2,'profesor');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2025-08-26 21:27:59
