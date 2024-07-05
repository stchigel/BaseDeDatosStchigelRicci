-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: claseddl
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
-- Table structure for table `Pago`
--

DROP TABLE IF EXISTS `Pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pago` (
  `idPago` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pago`
--

LOCK TABLES `Pago` WRITE;
/*!40000 ALTER TABLE `Pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alojamientos`
--

DROP TABLE IF EXISTS `alojamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alojamientos` (
  `idAlojamientos` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` bigint DEFAULT NULL,
  `Cantidad_Personas` int DEFAULT NULL,
  `cocina` varchar(45) DEFAULT NULL,
  `garaje` varchar(45) DEFAULT NULL,
  `parrilla` varchar(45) DEFAULT NULL,
  `Cantidad_pisos` int DEFAULT NULL,
  `Bar` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAlojamientos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alojamientos`
--

LOCK TABLES `alojamientos` WRITE;
/*!40000 ALTER TABLE `alojamientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `alojamientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camioneros`
--

DROP TABLE IF EXISTS `camioneros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camioneros` (
  `dni` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `salario` int DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camioneros`
--

LOCK TABLES `camioneros` WRITE;
/*!40000 ALTER TABLE `camioneros` DISABLE KEYS */;
INSERT INTO `camioneros` VALUES (12345678,'Juan Pérez',123456789,2500,'Calle Principal 123','Madrid'),(23456789,'María González',987654321,2800,'Avenida Central 456','Barcelona'),(34567890,'Carlos Martínez',555666777,2300,'Carrera Secundaria 789','Valencia');
/*!40000 ALTER TABLE `camioneros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camiones`
--

DROP TABLE IF EXISTS `camiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camiones` (
  `matricula` varchar(45) NOT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `potencia` int DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camiones`
--

LOCK TABLES `camiones` WRITE;
/*!40000 ALTER TABLE `camiones` DISABLE KEYS */;
INSERT INTO `camiones` VALUES ('ABC123','Volvo FH16',600,'Remolque'),('DEF456','Mercedes Actros',480,'Caja'),('GHI789','Scania R730',730,'Plataforma');
/*!40000 ALTER TABLE `camiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camiones_has_camioneros`
--

DROP TABLE IF EXISTS `camiones_has_camioneros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camiones_has_camioneros` (
  `camioneros_dni` int NOT NULL,
  `camiones_matricula` varchar(45) NOT NULL,
  PRIMARY KEY (`camioneros_dni`,`camiones_matricula`),
  KEY `camiones_matricula` (`camiones_matricula`),
  CONSTRAINT `camiones_has_camioneros_ibfk_1` FOREIGN KEY (`camioneros_dni`) REFERENCES `camioneros` (`dni`),
  CONSTRAINT `camiones_has_camioneros_ibfk_2` FOREIGN KEY (`camiones_matricula`) REFERENCES `camiones` (`matricula`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camiones_has_camioneros`
--

LOCK TABLES `camiones_has_camioneros` WRITE;
/*!40000 ALTER TABLE `camiones_has_camioneros` DISABLE KEYS */;
INSERT INTO `camiones_has_camioneros` VALUES (12345678,'ABC123'),(23456789,'DEF456'),(34567890,'GHI789');
/*!40000 ALTER TABLE `camiones_has_camioneros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `dni` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Juan','García','Calle Principal 123','1990-05-15'),(2,'María','López','Avenida Central 456','1985-10-20'),(3,'Pedro','Martínez','Calle Secundaria 789','1998-03-08');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_has_productos`
--

DROP TABLE IF EXISTS `cliente_has_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_has_productos` (
  `cliente_dni` int NOT NULL,
  `productos_codigo` int NOT NULL,
  PRIMARY KEY (`cliente_dni`,`productos_codigo`),
  KEY `productos_codigo` (`productos_codigo`),
  CONSTRAINT `cliente_has_productos_ibfk_1` FOREIGN KEY (`cliente_dni`) REFERENCES `cliente` (`dni`),
  CONSTRAINT `cliente_has_productos_ibfk_2` FOREIGN KEY (`productos_codigo`) REFERENCES `productos` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_has_productos`
--

LOCK TABLES `cliente_has_productos` WRITE;
/*!40000 ALTER TABLE `cliente_has_productos` DISABLE KEYS */;
INSERT INTO `cliente_has_productos` VALUES (1,1001),(1,1002),(2,1002),(3,1003);
/*!40000 ALTER TABLE `cliente_has_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `dni` int NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `telefono` bigint DEFAULT NULL,
  `celular` int DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ej6_cliente`
--

DROP TABLE IF EXISTS `ej6_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ej6_cliente` (
  `codigo` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ej6_cliente`
--

LOCK TABLES `ej6_cliente` WRITE;
/*!40000 ALTER TABLE `ej6_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `ej6_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ej6_productos`
--

DROP TABLE IF EXISTS `ej6_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ej6_productos` (
  `codigo` int NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `strock` int DEFAULT NULL,
  `precio` int DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ej6_productos`
--

LOCK TABLES `ej6_productos` WRITE;
/*!40000 ALTER TABLE `ej6_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ej6_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingresos`
--

DROP TABLE IF EXISTS `ingresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingresos` (
  `codigo` int NOT NULL,
  `n_hab` int DEFAULT NULL,
  `n_cama` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `paciente_codigo` int DEFAULT NULL,
  `medico_codigo` int DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `paciente_codigo` (`paciente_codigo`),
  KEY `medico_codigo` (`medico_codigo`),
  CONSTRAINT `ingresos_ibfk_1` FOREIGN KEY (`paciente_codigo`) REFERENCES `paciente` (`codigo`),
  CONSTRAINT `ingresos_ibfk_2` FOREIGN KEY (`medico_codigo`) REFERENCES `medico` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresos`
--

LOCK TABLES `ingresos` WRITE;
/*!40000 ALTER TABLE `ingresos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico` (
  `codigo` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `especialidad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `codigo` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `prov` varchar(45) DEFAULT NULL,
  `cod_postal` int DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paquete`
--

DROP TABLE IF EXISTS `paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paquete` (
  `idPaquete` int NOT NULL,
  `lugar` varchar(45) DEFAULT NULL,
  `dias` int DEFAULT NULL,
  `noches` int DEFAULT NULL,
  `costo` int DEFAULT NULL,
  `excursiones` int DEFAULT NULL,
  `viaje` varchar(45) DEFAULT NULL,
  `alojamientos_idAlojamientos` int DEFAULT NULL,
  `Pago_idPago` int DEFAULT NULL,
  PRIMARY KEY (`idPaquete`),
  KEY `alojamientos_idAlojamientos` (`alojamientos_idAlojamientos`),
  KEY `Pago_idPago` (`Pago_idPago`),
  CONSTRAINT `paquete_ibfk_1` FOREIGN KEY (`alojamientos_idAlojamientos`) REFERENCES `alojamientos` (`idAlojamientos`),
  CONSTRAINT `paquete_ibfk_2` FOREIGN KEY (`Pago_idPago`) REFERENCES `Pago` (`idPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquete`
--

LOCK TABLES `paquete` WRITE;
/*!40000 ALTER TABLE `paquete` DISABLE KEYS */;
/*!40000 ALTER TABLE `paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paquetes`
--

DROP TABLE IF EXISTS `paquetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paquetes` (
  `codigo` int NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `destinatario` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `camioneros_dni` int DEFAULT NULL,
  `prov_codigo` int DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `camioneros_dni` (`camioneros_dni`),
  KEY `prov_codigo` (`prov_codigo`),
  CONSTRAINT `paquetes_ibfk_1` FOREIGN KEY (`camioneros_dni`) REFERENCES `camioneros` (`dni`),
  CONSTRAINT `paquetes_ibfk_2` FOREIGN KEY (`prov_codigo`) REFERENCES `prov` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquetes`
--

LOCK TABLES `paquetes` WRITE;
/*!40000 ALTER TABLE `paquetes` DISABLE KEYS */;
INSERT INTO `paquetes` VALUES (1,'Paquete 1','Destinatario 1','Calle de Envío 123',12345678,1),(2,'Paquete 2','Destinatario 2','Avenida de Recepción 456',23456789,2),(3,'Paquete 3','Destinatario 3','Plaza de Destino 789',34567890,3);
/*!40000 ALTER TABLE `paquetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `codigo` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `proovedores_dni` int DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `proovedores_dni` (`proovedores_dni`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`proovedores_dni`) REFERENCES `proovedores` (`dni`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1001,'Producto 1',50,101),(1002,'Producto 2',70,102),(1003,'Producto 3',90,103);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_has_cliente`
--

DROP TABLE IF EXISTS `productos_has_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_has_cliente` (
  `cliente_codigo` int NOT NULL,
  `productos_codigo` int NOT NULL,
  `numero_compra` int DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cliente_codigo`,`productos_codigo`),
  KEY `productos_codigo` (`productos_codigo`),
  CONSTRAINT `productos_has_cliente_ibfk_1` FOREIGN KEY (`cliente_codigo`) REFERENCES `ej6_cliente` (`codigo`),
  CONSTRAINT `productos_has_cliente_ibfk_2` FOREIGN KEY (`productos_codigo`) REFERENCES `ej6_productos` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_has_cliente`
--

LOCK TABLES `productos_has_cliente` WRITE;
/*!40000 ALTER TABLE `productos_has_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos_has_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proovedores`
--

DROP TABLE IF EXISTS `proovedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proovedores` (
  `dni` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proovedores`
--

LOCK TABLES `proovedores` WRITE;
/*!40000 ALTER TABLE `proovedores` DISABLE KEYS */;
INSERT INTO `proovedores` VALUES (101,'Proveedor A','Calle Proveedor A 123'),(102,'Proveedor B','Avenida Proveedor B 456'),(103,'Proveedor C','Calle Proveedor C 789');
/*!40000 ALTER TABLE `proovedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prov`
--

DROP TABLE IF EXISTS `prov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prov` (
  `codigo` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prov`
--

LOCK TABLES `prov` WRITE;
/*!40000 ALTER TABLE `prov` DISABLE KEYS */;
INSERT INTO `prov` VALUES (1,'Proveedor A'),(2,'Proveedor B'),(3,'Proveedor C');
/*!40000 ALTER TABLE `prov` ENABLE KEYS */;
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
/*!40000 ALTER TABLE `provedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provedor_has_productos`
--

DROP TABLE IF EXISTS `provedor_has_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provedor_has_productos` (
  `provedor_codigo` int NOT NULL,
  `productos_codigo` int NOT NULL,
  PRIMARY KEY (`provedor_codigo`,`productos_codigo`),
  KEY `productos_codigo` (`productos_codigo`),
  CONSTRAINT `provedor_has_productos_ibfk_1` FOREIGN KEY (`provedor_codigo`) REFERENCES `provedor` (`codigo`),
  CONSTRAINT `provedor_has_productos_ibfk_2` FOREIGN KEY (`productos_codigo`) REFERENCES `ej6_productos` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provedor_has_productos`
--

LOCK TABLES `provedor_has_productos` WRITE;
/*!40000 ALTER TABLE `provedor_has_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `provedor_has_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `clientes_dni` int NOT NULL,
  `paquete_idPaquete` int NOT NULL,
  `cantPersonas` int DEFAULT NULL,
  `fechaIn` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  PRIMARY KEY (`clientes_dni`,`paquete_idPaquete`),
  KEY `paquete_idPaquete` (`paquete_idPaquete`),
  CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`clientes_dni`) REFERENCES `clientes` (`dni`),
  CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`paquete_idPaquete`) REFERENCES `paquete` (`idPaquete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-31 17:29:29
