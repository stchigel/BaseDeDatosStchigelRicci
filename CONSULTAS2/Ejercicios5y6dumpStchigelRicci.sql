-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Ej1
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `INGRESOS`
--

DROP TABLE IF EXISTS `INGRESOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INGRESOS` (
  `CODIGO` int NOT NULL,
  `N_HABITACION` int DEFAULT NULL,
  `N_CAMA` int DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `PACIENTE_CODIGO` int NOT NULL,
  `MEDICO_CODIGO` int NOT NULL,
  PRIMARY KEY (`CODIGO`),
  KEY `fk_INGRESOS_PACIENTE1_idx` (`PACIENTE_CODIGO`),
  KEY `fk_INGRESOS_MEDICO1_idx` (`MEDICO_CODIGO`),
  CONSTRAINT `fk_INGRESOS_MEDICO1` FOREIGN KEY (`MEDICO_CODIGO`) REFERENCES `MEDICO` (`CODIGO`),
  CONSTRAINT `fk_INGRESOS_PACIENTE1` FOREIGN KEY (`PACIENTE_CODIGO`) REFERENCES `PACIENTE` (`CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INGRESOS`
--

LOCK TABLES `INGRESOS` WRITE;
/*!40000 ALTER TABLE `INGRESOS` DISABLE KEYS */;
INSERT INTO `INGRESOS` VALUES (2,5,4,'2019-05-05',1,3);
/*!40000 ALTER TABLE `INGRESOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEDICO`
--

DROP TABLE IF EXISTS `MEDICO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MEDICO` (
  `CODIGO` int NOT NULL,
  `NOMBRE` varchar(45) DEFAULT NULL,
  `APELLIDO` varchar(45) DEFAULT NULL,
  `TELEFONO` int DEFAULT NULL,
  `ESPECIALIDAD` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEDICO`
--

LOCK TABLES `MEDICO` WRITE;
/*!40000 ALTER TABLE `MEDICO` DISABLE KEYS */;
INSERT INTO `MEDICO` VALUES (1,'Juan','Perez',1281287,'traumatologo'),(3,'Arena','Lopez',254543,'pediatra'),(5,'Abril','Cruz',45345533,'Pediatra'),(6,'Juana','Zurduy',54643643,'meteorologia');
/*!40000 ALTER TABLE `MEDICO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PACIENTE`
--

DROP TABLE IF EXISTS `PACIENTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PACIENTE` (
  `CODIGO` int NOT NULL,
  `NOMBRE` varchar(45) DEFAULT NULL,
  `APELLIDOS` varchar(45) DEFAULT NULL,
  `DIRECCION` varchar(45) DEFAULT NULL,
  `CIUDAD` varchar(45) DEFAULT NULL,
  `PROVINCIA` varchar(45) DEFAULT NULL,
  `COD_POSTAL` int DEFAULT NULL,
  `TELEFONO` int DEFAULT NULL,
  `NACIMIENTO` date DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PACIENTE`
--

LOCK TABLES `PACIENTE` WRITE;
/*!40000 ALTER TABLE `PACIENTE` DISABLE KEYS */;
INSERT INTO `PACIENTE` VALUES (1,'Juan','Ronaldo','JASKJR 12','Tero vi.','Santiago',1746,235546,'2006-01-01'),(3,'Ronaldo','Juan','dgr 44','caba','Ba',2043,546776654,'2007-01-01'),(5,'nuaJ','Juan','dgr 46','caba','Ba',2043,38575,'2007-01-01'),(35,'Carlos','Juan','dgr 45','caba','Ba',2043,837584,'2007-01-01');
/*!40000 ALTER TABLE `PACIENTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Productos_has_cliente`
--

DROP TABLE IF EXISTS `Productos_has_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Productos_has_cliente` (
  `Productos_codigo` int NOT NULL,
  `cliente_codigo` int NOT NULL,
  `numero_compra` int DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Productos_codigo`,`cliente_codigo`),
  KEY `fk_Productos_has_cliente_cliente1_idx` (`cliente_codigo`),
  KEY `fk_Productos_has_cliente_Productos1_idx` (`Productos_codigo`),
  CONSTRAINT `fk_Productos_has_cliente_cliente1` FOREIGN KEY (`cliente_codigo`) REFERENCES `cliente` (`codigo`),
  CONSTRAINT `fk_Productos_has_cliente_Productos1` FOREIGN KEY (`Productos_codigo`) REFERENCES `Productos` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Productos_has_cliente`
--

LOCK TABLES `Productos_has_cliente` WRITE;
/*!40000 ALTER TABLE `Productos_has_cliente` DISABLE KEYS */;
INSERT INTO `Productos_has_cliente` VALUES (234,456,1,'2004'),(235,457,2,'1997'),(236,456,3,'1991'),(237,457,3,'1995');
/*!40000 ALTER TABLE `Productos_has_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provedor`
--

DROP TABLE IF EXISTS `provedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provedor` (
  `codigo` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provedor`
--

LOCK TABLES `provedor` WRITE;
/*!40000 ALTER TABLE `provedor` DISABLE KEYS */;
INSERT INTO `provedor` VALUES (7,'Juan','Perez','California 3842','Catamarca',1282342),(186,'Joan','Perezz','California0 3842','Catamarcao',4282342),(188,'Jian','Perezx','Californiae 3842','Catamarcae',2282342),(189,'Jean','Perezy','Californiai 3842','Catamarcai',3282342);
/*!40000 ALTER TABLE `provedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provedor_has_Productos`
--

DROP TABLE IF EXISTS `provedor_has_Productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provedor_has_Productos` (
  `provedor_codigo` int NOT NULL,
  `Productos_codigo` int NOT NULL,
  PRIMARY KEY (`provedor_codigo`,`Productos_codigo`),
  KEY `fk_provedor_has_Productos_Productos1_idx` (`Productos_codigo`),
  KEY `fk_provedor_has_Productos_provedor1_idx` (`provedor_codigo`),
  CONSTRAINT `fk_provedor_has_Productos_Productos1` FOREIGN KEY (`Productos_codigo`) REFERENCES `Productos` (`codigo`),
  CONSTRAINT `fk_provedor_has_Productos_provedor1` FOREIGN KEY (`provedor_codigo`) REFERENCES `provedor` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provedor_has_Productos`
--

LOCK TABLES `provedor_has_Productos` WRITE;
/*!40000 ALTER TABLE `provedor_has_Productos` DISABLE KEYS */;
INSERT INTO `provedor_has_Productos` VALUES (7,235),(7,236),(188,237),(189,237);
/*!40000 ALTER TABLE `provedor_has_Productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-03 16:48:26
