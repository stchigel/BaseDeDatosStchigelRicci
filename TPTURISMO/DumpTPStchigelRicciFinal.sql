-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: TPStchigelRicci
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
-- Table structure for table `Alojamientos`
--

DROP TABLE IF EXISTS `Alojamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Alojamientos` (
  `idAlojamientos` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Categoria` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Telefono` bigint DEFAULT NULL,
  `CantPersonas` varchar(45) DEFAULT NULL,
  `Cocina` varchar(45) DEFAULT NULL,
  `Garaje` varchar(45) DEFAULT NULL,
  `Parrilla` varchar(45) DEFAULT NULL,
  `CantPisos` varchar(45) DEFAULT NULL,
  `Bar` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAlojamientos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Alojamientos`
--

LOCK TABLES `Alojamientos` WRITE;
/*!40000 ALTER TABLE `Alojamientos` DISABLE KEYS */;
INSERT INTO `Alojamientos` VALUES (10,'Asterisco Apart','Hotel','Torrent 19827',187623545,'10','1','0','1','2','0'),(12,'Asterisca Apart','Hotel','Villa urquiza 2452',187613734,'5','0','1','1','1','0'),(13,'Cabañas juani','Cabaña','Belgrano 15897',54254734,'4','1','0','1','2','0'),(14,'Obelisco Hotel','Hotel','Torrent 1927',423564734,'9','1','0','1','2','0'),(15,'Asterisce Apart','Hotel','Nordelta 19838',18764534,'6','1','0','1','2','0'),(16,'Asteriscu Apart','Hotel','Hiwjjw 3929',18762532,'5','1','0','1','2','0'),(17,'Asterisce Apart','Hotel','Torrent 19627',187576834,'7','1','0','1','2','0'),(19,'Asteriscf Apart','Hotel','Torrent 19227',1873564,'8','1','0','1','2','0'),(20,'Casa Temporal','Cabaña','Torrent 19867',187546754,'10','1','0','1','2','0'),(22,'Juan Apart','Hotel','Torrent 3227',18734344,'10','1','0','1','2','0');
/*!40000 ALTER TABLE `Alojamientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Clientes`
--

DROP TABLE IF EXISTS `Clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clientes` (
  `DNI` int NOT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Telefono` int DEFAULT NULL,
  `Celular` int DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clientes`
--

LOCK TABLES `Clientes` WRITE;
/*!40000 ALTER TABLE `Clientes` DISABLE KEYS */;
INSERT INTO `Clientes` VALUES (48123450,'California 3840','Juana',123450,1234560,'Perez'),(48123451,'California 3841','Juanb',123451,1234561,'Perezb'),(48123452,'California 3842','Juanc',123452,1234562,'Perezc'),(48123453,'California 3843','Juand',123453,1234563,'Perezd'),(48123454,'California 3844','Juane',123454,1234564,'Pereze'),(48123455,'California 3845','Juanf',123455,1234565,'Perezf'),(48123456,'California 3846','Juang',123456,1234566,'Perezg'),(48123457,'California 3847','Juanh',123457,1234567,'Perezh'),(48123458,'California 3848','Juani',123458,1234568,'Perezi'),(48123459,'San Juan 1234','Juanj',123459,1234569,'Perezj');
/*!40000 ALTER TABLE `Clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pago`
--

DROP TABLE IF EXISTS `Pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pago` (
  `idPago` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pago`
--

LOCK TABLES `Pago` WRITE;
/*!40000 ALTER TABLE `Pago` DISABLE KEYS */;
INSERT INTO `Pago` VALUES (100,'Tarjeta'),(101,'Cheque'),(102,'Efectivo');
/*!40000 ALTER TABLE `Pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Paquete`
--

DROP TABLE IF EXISTS `Paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Paquete` (
  `idPaquete` int NOT NULL,
  `Lugar` varchar(45) DEFAULT NULL,
  `Dias` int DEFAULT NULL,
  `Noches` int DEFAULT NULL,
  `Costo` int DEFAULT NULL,
  `Excursiones` int DEFAULT NULL,
  `Viaje` varchar(45) DEFAULT NULL,
  `Alojamientos_idAlojamientos` int NOT NULL,
  `Pago_idPago` int NOT NULL,
  PRIMARY KEY (`idPaquete`),
  KEY `fk_Paquete_Alojamientos_idx` (`Alojamientos_idAlojamientos`),
  KEY `fk_Paquete_Pago1_idx` (`Pago_idPago`),
  CONSTRAINT `fk_Paquete_Alojamientos` FOREIGN KEY (`Alojamientos_idAlojamientos`) REFERENCES `Alojamientos` (`idAlojamientos`),
  CONSTRAINT `fk_Paquete_Pago1` FOREIGN KEY (`Pago_idPago`) REFERENCES `Pago` (`idPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Paquete`
--

LOCK TABLES `Paquete` WRITE;
/*!40000 ALTER TABLE `Paquete` DISABLE KEYS */;
INSERT INTO `Paquete` VALUES (20,'Villa Maipu',5,4,400,3,'Avion',10,100),(21,'Villa Maipa',6,5,600,4,'Avion',12,101),(22,'Villa Maipe',5,4,500,3,'Avion',15,102),(23,'Villa Maipo',7,6,400,6,'Avion',16,102),(24,'Villa Maipi',5,4,400,2,'Avion',17,101),(25,'Villa Maipy',8,7,700,6,'Avion',19,101),(26,'Villa Maipuf',5,4,400,2,'Avion',20,100),(27,'Villa Maipue',5,4,300,4,'Avion',22,100),(28,'Villa Maipur',5,4,500,3,'Avion',14,100),(29,'Villa Maipud',9,8,800,3,'Avion',13,100);
/*!40000 ALTER TABLE `Paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reservas`
--

DROP TABLE IF EXISTS `Reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reservas` (
  `Clientes_DNI` int NOT NULL,
  `Paquete_idPaquete` int NOT NULL,
  `CantPersonas` int DEFAULT NULL,
  `FechaIn` varchar(45) DEFAULT NULL,
  `FechaFin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Clientes_DNI`,`Paquete_idPaquete`),
  KEY `fk_Clientes_has_Paquete_Paquete1_idx` (`Paquete_idPaquete`),
  KEY `fk_Clientes_has_Paquete_Clientes1_idx` (`Clientes_DNI`),
  CONSTRAINT `fk_Clientes_has_Paquete_Clientes1` FOREIGN KEY (`Clientes_DNI`) REFERENCES `Clientes` (`DNI`),
  CONSTRAINT `fk_Clientes_has_Paquete_Paquete1` FOREIGN KEY (`Paquete_idPaquete`) REFERENCES `Paquete` (`idPaquete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reservas`
--

LOCK TABLES `Reservas` WRITE;
/*!40000 ALTER TABLE `Reservas` DISABLE KEYS */;
INSERT INTO `Reservas` VALUES (48123450,20,1,'2024-01-01','2024-02-01'),(48123451,21,2,'2024-01-02','2024-02-02'),(48123452,22,3,'2024-01-03','2024-02-03'),(48123453,23,4,'2024-01-04','2024-02-04'),(48123454,24,5,'2024-01-05','2024-02-05'),(48123455,25,6,'2024-01-06','2024-02-06'),(48123456,26,7,'2024-01-07','2024-02-07'),(48123457,27,8,'2024-01-08','2024-02-08'),(48123458,28,9,'2024-01-09','2024-02-09');
/*!40000 ALTER TABLE `Reservas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-17 17:30:58
