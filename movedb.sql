CREATE DATABASE  IF NOT EXISTS `movedb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `movedb`;
-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: movedb
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.2

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
-- Table structure for table `Articulos`
--

DROP TABLE IF EXISTS `Articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Articulos` (
  `idArticulo` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Activo` int NOT NULL DEFAULT '0',
  `Stock` double DEFAULT '0',
  `StockMin` double DEFAULT '0',
  `Costo` decimal(19,4) DEFAULT '0.0000',
  `PrecioPublico` decimal(19,4) DEFAULT '0.0000',
  `Descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CodigoBarra` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idCategoria` int DEFAULT '0',
  `idFabricante` int DEFAULT '0',
  `idProveedor1` int DEFAULT '0',
  `idProveedor2` int DEFAULT '0',
  `UltimaActualizacion` datetime DEFAULT NULL,
  `idUsuario` int DEFAULT '0',
  `CodProveedor1` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CodProveedor2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NoAplicarDescuento` int DEFAULT NULL,
  `Sena` int DEFAULT NULL,
  `idPromocionCantidad` int DEFAULT NULL,
  `NoAplicaStock` int DEFAULT NULL,
  `SinReposicion` int DEFAULT NULL,
  `FechaUltUso` datetime DEFAULT NULL,
  `Ganancia` decimal(19,4) DEFAULT NULL,
  `Iva` decimal(19,4) DEFAULT NULL,
  `Ganancia2` decimal(19,4) DEFAULT NULL,
  `PrecioPublico2` decimal(19,4) DEFAULT NULL,
  `Ganancia3` decimal(19,4) DEFAULT NULL,
  `PrecioPublico3` decimal(19,4) DEFAULT NULL,
  `Ganancia4` decimal(19,4) DEFAULT NULL,
  `PrecioPublico4` decimal(19,4) DEFAULT NULL,
  `EmailPorBajoStock` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  `Concepto` int DEFAULT NULL,
  `Unidad` int DEFAULT NULL,
  `AplicaVto` int DEFAULT NULL,
  `FechaVto` datetime DEFAULT NULL,
  `AplicaElab` int DEFAULT NULL,
  `FechaElab` datetime DEFAULT NULL,
  `Lote` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Imagen` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CanalDeVenta1` int DEFAULT NULL,
  `CanalDeVenta2` int DEFAULT NULL,
  `CanalDeVenta3` int DEFAULT NULL,
  `CanalDeVenta4` int DEFAULT NULL,
  `CanalDeVenta5` int DEFAULT NULL,
  `Ubicacion` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Codigo` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HabPrecioManual` int DEFAULT NULL,
  `Compuesto` int DEFAULT NULL,
  `TalleGrupo` int DEFAULT NULL,
  `TalleOrden` int DEFAULT NULL,
  `Talle` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TalleNombre` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Temporada` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Calidad` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DespachoNro` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Aduana` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Origen` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ganancia5` decimal(19,4) DEFAULT NULL,
  `PrecioPublico5` decimal(19,4) DEFAULT NULL,
  `GananciaPrecioSugerido` decimal(19,4) DEFAULT NULL,
  `PrecioSugerido` decimal(19,4) DEFAULT NULL,
  `UnidadesXCaja` int DEFAULT NULL,
  `CajasXBulto` int DEFAULT NULL,
  `FechaUltCompra` datetime DEFAULT NULL,
  `HabNroSerie` int DEFAULT NULL,
  `HabCostoDolar` int DEFAULT NULL,
  `CostoDolar` decimal(19,4) DEFAULT NULL,
  `idIva` int DEFAULT NULL,
  PRIMARY KEY (`idArticulo`),
  KEY `CodProveedor1` (`CodProveedor1`),
  KEY `CodProveedor2` (`CodProveedor2`),
  KEY `idArticulo` (`idArticulo`),
  KEY `idCategoria` (`idCategoria`),
  KEY `idFabricante` (`idFabricante`),
  KEY `idProveedor1` (`idProveedor1`),
  KEY `idProveedor2` (`idProveedor2`),
  KEY `Nombre` (`Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Articulos`
--

LOCK TABLES `Articulos` WRITE;
/*!40000 ALTER TABLE `Articulos` DISABLE KEYS */;
INSERT INTO `Articulos` VALUES (90,'Mayonesa',0,2,2,2.0000,2.4684,'asdsa','23232',101,0,103,101,NULL,0,NULL,NULL,0,NULL,1,0,NULL,NULL,2.0000,21.0000,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,2,NULL,NULL,0,NULL,0,NULL,'dasdas','http://localhost:3000/uploads/1729655775104-user.png',NULL,NULL,NULL,NULL,NULL,'asdsa','2',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),(93,'asd',0,2,2,2.0000,2.5908,'ad','2',102,0,102,102,NULL,0,NULL,NULL,0,NULL,1,0,NULL,NULL,2.0000,27.0000,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,0,NULL,0,NULL,'ad','http://localhost:3000/uploads/1729986245807-user.png',NULL,NULL,NULL,NULL,NULL,'as','2',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL);
/*!40000 ALTER TABLE `Articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ArticulosCodBarras`
--

DROP TABLE IF EXISTS `ArticulosCodBarras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ArticulosCodBarras` (
  `idArticulo` int NOT NULL,
  `CodigoBarra` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idArticulo`,`CodigoBarra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ArticulosCodBarras`
--

LOCK TABLES `ArticulosCodBarras` WRITE;
/*!40000 ALTER TABLE `ArticulosCodBarras` DISABLE KEYS */;
/*!40000 ALTER TABLE `ArticulosCodBarras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ArticulosComponentes`
--

DROP TABLE IF EXISTS `ArticulosComponentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ArticulosComponentes` (
  `idArticuloComponente` int NOT NULL,
  `idArticulo` int NOT NULL,
  `Orden` int DEFAULT NULL,
  `Activo` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  `Cantidad` double DEFAULT NULL,
  PRIMARY KEY (`idArticuloComponente`,`idArticulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ArticulosComponentes`
--

LOCK TABLES `ArticulosComponentes` WRITE;
/*!40000 ALTER TABLE `ArticulosComponentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ArticulosComponentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cajas`
--

DROP TABLE IF EXISTS `Cajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cajas` (
  `idCaja` int NOT NULL,
  `Nombre` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Activa` int DEFAULT NULL,
  `EstadoCaja` int DEFAULT NULL,
  `idCajaApertura` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  PRIMARY KEY (`idCaja`),
  KEY `idCaja` (`idCaja`),
  KEY `idCajaApertura` (`idCajaApertura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cajas`
--

LOCK TABLES `Cajas` WRITE;
/*!40000 ALTER TABLE `Cajas` DISABLE KEYS */;
INSERT INTO `Cajas` VALUES (1,'Caja 1',1,0,1,NULL,NULL);
/*!40000 ALTER TABLE `Cajas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CajasAperturas`
--

DROP TABLE IF EXISTS `CajasAperturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CajasAperturas` (
  `idCajaApertura` int NOT NULL,
  `idCaja` int DEFAULT NULL,
  `EstadoCaja` int DEFAULT NULL,
  `FechaApertura` datetime DEFAULT NULL,
  `idUsuarioApertura` int DEFAULT NULL,
  `EfectivoApertura` decimal(19,4) DEFAULT NULL,
  `FechaCierre` datetime DEFAULT NULL,
  `idUsuarioCierre` int DEFAULT NULL,
  `EfectivoCierre` decimal(19,4) DEFAULT NULL,
  `TotalCajaSalidas` decimal(19,4) DEFAULT '0.0000',
  `TotalCajaEntradas` decimal(19,4) DEFAULT '0.0000',
  `TarjetasCierre` decimal(19,4) DEFAULT NULL,
  `TotalTarjetas` decimal(19,4) DEFAULT NULL,
  `TotalEfectivo` decimal(19,4) DEFAULT NULL,
  `TotalVentas` decimal(19,4) DEFAULT NULL,
  `TotalCaja` decimal(19,4) DEFAULT NULL,
  `Comentario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ComentarioPostCierre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CantDineroAp005` int DEFAULT NULL,
  `CantDineroAp010` int DEFAULT NULL,
  `CantDineroAp025` int DEFAULT NULL,
  `CantDineroAp050` int DEFAULT NULL,
  `CantDineroAp1` int DEFAULT NULL,
  `CantDineroAp2` int DEFAULT NULL,
  `CantDineroAp5` int DEFAULT NULL,
  `CantDineroAp10` int DEFAULT NULL,
  `CantDineroAp20` int DEFAULT NULL,
  `CantDineroAp50` int DEFAULT NULL,
  `CantDineroAp100` int DEFAULT NULL,
  `CantDineroCi005` int DEFAULT NULL,
  `CantDineroCi010` int DEFAULT NULL,
  `CantDineroCi025` int DEFAULT NULL,
  `CantDineroCi050` int DEFAULT NULL,
  `CantDineroCi1` int DEFAULT NULL,
  `CantDineroCi2` int DEFAULT NULL,
  `CantDineroCi5` int DEFAULT NULL,
  `CantDineroCi10` int DEFAULT NULL,
  `CantDineroCi20` int DEFAULT NULL,
  `CantDineroCi50` int DEFAULT NULL,
  `CantDineroCi100` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  `CantDineroAp200` int DEFAULT NULL,
  `CantDineroAp500` int DEFAULT NULL,
  `CantDineroAp1000` int DEFAULT NULL,
  `CantDineroCi200` int DEFAULT NULL,
  `CantDineroCi500` int DEFAULT NULL,
  `CantDineroCi1000` int DEFAULT NULL,
  `CantDineroAp2000` int DEFAULT NULL,
  `CantDineroCi2000` int DEFAULT NULL,
  PRIMARY KEY (`idCajaApertura`),
  KEY `idCaja` (`idCaja`),
  KEY `idCajaApertura` (`idCajaApertura`),
  KEY `idUsuarioApertura` (`idUsuarioApertura`),
  KEY `idUsuarioCierre` (`idUsuarioCierre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CajasAperturas`
--

LOCK TABLES `CajasAperturas` WRITE;
/*!40000 ALTER TABLE `CajasAperturas` DISABLE KEYS */;
INSERT INTO `CajasAperturas` VALUES (1,1,0,'2011-02-28 00:00:31',1,1.0000,'1995-01-01 00:00:00',0,0.0000,0.0000,0.0000,NULL,0.0000,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `CajasAperturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CanalDeVenta`
--

DROP TABLE IF EXISTS `CanalDeVenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CanalDeVenta` (
  `idCanalDeVenta` int NOT NULL,
  `Nombre` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sigla` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Orden` int DEFAULT NULL,
  `Imagen` int DEFAULT NULL,
  `Activo` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  PRIMARY KEY (`idCanalDeVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CanalDeVenta`
--

LOCK TABLES `CanalDeVenta` WRITE;
/*!40000 ALTER TABLE `CanalDeVenta` DISABLE KEYS */;
INSERT INTO `CanalDeVenta` VALUES (1,'Mercado Libre','ML',1,1,1,NULL,NULL),(2,'Web','Web',2,2,1,NULL,NULL),(3,'Facebook','FB',3,3,1,NULL,NULL),(4,'','',4,4,1,NULL,NULL),(5,'','',5,5,1,NULL,NULL);
/*!40000 ALTER TABLE `CanalDeVenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categorias`
--

DROP TABLE IF EXISTS `Categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categorias` (
  `idCategoria` int NOT NULL DEFAULT '0',
  `Nombre` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Activo` int DEFAULT '0',
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  PRIMARY KEY (`idCategoria`),
  KEY `idCategoria` (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categorias`
--

LOCK TABLES `Categorias` WRITE;
/*!40000 ALTER TABLE `Categorias` DISABLE KEYS */;
INSERT INTO `Categorias` VALUES (101,'ALMACEN',1,0,0),(102,'LIMPIEZA',1,0,0),(103,'LIBRERIA',1,0,0),(104,'HIGIENE',1,0,0),(105,'PERFUMERIA',1,0,0);
/*!40000 ALTER TABLE `Categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CfgReg`
--

DROP TABLE IF EXISTS `CfgReg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CfgReg` (
  `idCfgReg` int NOT NULL,
  `Reg` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  `Estado` int DEFAULT NULL,
  PRIMARY KEY (`idCfgReg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CfgReg`
--

LOCK TABLES `CfgReg` WRITE;
/*!40000 ALTER TABLE `CfgReg` DISABLE KEYS */;
INSERT INTO `CfgReg` VALUES (1,'5BED - B768 - 5A3B - 1A59','2018-12-26 20:19:11',1),(2,'98E3 - 9E99 - A9E4 - AC3E',NULL,1),(3,'F662 - 1E6F - FA5B - 556A',NULL,1),(4,'AC94 - FA50 - ACD6 - CB7C','2020-07-26 18:03:45',1),(5,'BB88 - A741 - 4353 - 5E4E','2020-07-11 02:12:18',1),(6,'2130 - A82F - 6587 - 7B3E','2021-02-28 23:50:35',1),(7,'6F4F - 06AF - B960 - 454B','2024-09-30 11:06:56',1);
/*!40000 ALTER TABLE `CfgReg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Clientes`
--

DROP TABLE IF EXISTS `Clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clientes` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `bEmpresa` int DEFAULT NULL,
  `CC` int DEFAULT NULL,
  `CC_Bloq` int DEFAULT NULL,
  `Nom1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nom2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CUIT` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CondIVA` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TpDoc` int DEFAULT NULL,
  `NroDoc` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CodPostal` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Barrio` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Localidad` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Provincia` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActividadComercial` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TipoEst` int DEFAULT NULL,
  `FechaInicioAct` datetime DEFAULT NULL,
  `Tel1` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Int1` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tel2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Int2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tel3` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Int3` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IntFax` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Celular` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email3` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PersonaContacto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FechaNac` datetime DEFAULT NULL,
  `Profesion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comentarios` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FechaAlta` datetime DEFAULT NULL,
  `idUsuarioAlta` int DEFAULT NULL,
  `FechaModi` datetime DEFAULT NULL,
  `idUsuarioModi` int DEFAULT NULL,
  `Activo` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  `CC_SaldoACuenta` decimal(19,4) DEFAULT NULL,
  `ListaPrecio` int DEFAULT NULL,
  `Expreso` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Entrega` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Horario` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FechaUltCompra` datetime DEFAULT NULL,
  `idProvincia` int DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `idCliente` (`idCliente`),
  KEY `idUsuarioAlta` (`idUsuarioAlta`),
  KEY `idUsuarioModi` (`idUsuarioModi`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clientes`
--

LOCK TABLES `Clientes` WRITE;
/*!40000 ALTER TABLE `Clientes` DISABLE KEYS */;
INSERT INTO `Clientes` VALUES (104,NULL,1,1,'gdfgfdgfd','fgfdgfdgd','21313123123213','Consumidor Final',1,'45656546','fgfdgfdgdfgdf','6546','ghfghgfh','gfhgfhgfh','Misiones','fghgfhfgh',NULL,NULL,'4566456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'45645621321321','emial@email',NULL,NULL,NULL,'2024-10-04 00:00:00','gfhfghf','sfdsdgdgdfg',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14),(105,NULL,1,0,'asdasd','dasdas','3232','Monotributista',1,'222','adasd','232','ada','asdsa','Río Negro','dsaas',NULL,NULL,'232',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'232','sdsad@gmail.com',NULL,NULL,NULL,'2024-10-18 00:00:00','adssa','dsd',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16),(106,NULL,NULL,NULL,'asdsa','sadas','21312','Monotributista',4,'232','sadsa','sad','aada','ad','La Pampa',NULL,NULL,NULL,'223',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'23','aa@gmail.com',NULL,NULL,NULL,'2024-10-03 00:00:00','sad','asda',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11),(107,NULL,0,0,'dsad','asdsa','21321','Monotributista',1,'2213','sad','23','sad','ads','Misiones','sad',NULL,NULL,'23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'23','a@gmail.com',NULL,NULL,NULL,'2024-10-09 00:00:00','sda','ads',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14),(108,NULL,0,0,'sad','adsa','1231','Consumidor Final',1,'231','adssa','23','asd','ads','Misiones','ads',NULL,NULL,'23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'23','as@gmail.com',NULL,NULL,NULL,'2024-10-17 00:00:00','asd','asdsa',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14),(109,NULL,NULL,NULL,'das','dasdas','1321','Consumidor Final',4,'231','sad','213','dasd','ads','La Pampa',NULL,NULL,'2024-10-04 00:00:00','213',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'123','s@gmail.com',NULL,NULL,NULL,'0111-11-11 00:00:00','asd','asa',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11);
/*!40000 ALTER TABLE `Clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CondIVA`
--

DROP TABLE IF EXISTS `CondIVA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CondIVA` (
  `idCondIVA` int NOT NULL,
  `Nombre` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Activo` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  PRIMARY KEY (`idCondIVA`),
  UNIQUE KEY `idCondIVA` (`idCondIVA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CondIVA`
--

LOCK TABLES `CondIVA` WRITE;
/*!40000 ALTER TABLE `CondIVA` DISABLE KEYS */;
INSERT INTO `CondIVA` VALUES (1,'Consumidor Final',1,NULL,NULL),(2,'Monotributista',1,NULL,NULL),(3,'Resp.Inscripto',1,NULL,NULL),(4,'Exento',1,NULL,NULL);
/*!40000 ALTER TABLE `CondIVA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Config`
--

DROP TABLE IF EXISTS `Config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Config` (
  `Grupo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Valor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  PRIMARY KEY (`Grupo`,`Item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Config`
--

LOCK TABLES `Config` WRITE;
/*!40000 ALTER TABLE `Config` DISABLE KEYS */;
INSERT INTO `Config` VALUES ('App','Pais','1',0,NULL),('App','PathApp','C:\\Punto de Venta\\',0,NULL),('App','RubroApp','1',0,NULL),('App','TipoApp','1',0,NULL),('Articulos','CodBarrasAuto','0',0,NULL),('Articulos','CodBarrasBalanza','1',0,NULL),('Articulos','RendondeoCalcPFinal','2',0,NULL),('Base','Version','80',NULL,NULL),('Comprobante','HabilitaModiFechaComprob','1',0,NULL),('ConsPrecios','ArtBuscDefault','1',0,NULL),('ConsPrecios','HabPrecio1','1',0,NULL),('ConsPrecios','HabPrecio2','0',0,NULL),('ConsPrecios','HabPrecio3','0',0,NULL),('ConsPrecios','HabPrecio4','0',0,NULL),('Distr','Direccion','',0,NULL),('Distr','Email','',0,NULL),('Distr','Nombre','',0,NULL),('Distr','Telefono','',0,NULL),('Distr','WebSite','',0,NULL),('DlgRptCompras','MostrarRemitos','0',0,NULL),('Dolar','Cotizacion','867.50',0,NULL),('Email','ActivarCopiaComprobante','0',0,NULL),('Email','ActivarEmailCaja','0',0,NULL),('Email','ActivarEmailStock','0',0,NULL),('Email','CfgAuto','1',0,NULL),('Email','Clave','',0,NULL),('Email','Cuenta','',0,NULL),('Email','CuentaAvisoCaja','minombre@proveedor.com',0,NULL),('Email','CuentaAvisoStock','minombre@proveedor.com',0,NULL),('Email','CuentaCopiaComprobante','minombre@proveedor.com',0,NULL),('Email','NombreUsr','',0,NULL),('Email','PortSmtp','25',0,NULL),('Email','ReqAutent','1',0,NULL),('Email','Smtp','',0,NULL),('FE','HabFE','0',0,NULL),('FE','PuntoVenta','0',0,NULL),('FE','TipoServicio','2',0,NULL),('FE','VenceCRT','20190621',0,NULL),('IIBB','AplicaConCUIT','0',0,NULL),('IIBB','Misiones','0',0,NULL),('IIBB','PorcMisiones','0.00',0,NULL),('Login','Clv_ADM6','86876F303F7033E299252BC4C8596FDC1FF43998705B36C7',0,NULL),('Login','Clv_DESKTOP-BKO4R5H','86876F303F7033E299252BC4C8596FDC1FF43998705B36C7',0,NULL),('Login','Clv_GUSWS1','86876F303F7033E299252BC4C8596FDC1FF43998705B36C7',0,NULL),('Login','RecClv_ADM6','1',0,NULL),('Login','RecClv_DESKTOP-BKO4R5H','1',0,NULL),('Login','RecClv_GUSWS1','1',0,NULL),('Login','Usr_ADM6','Admin',0,NULL),('Login','Usr_DESKTOP-BKO4R5H','Admin',0,NULL),('Login','Usr_GUSWS1','Admin',0,NULL),('MercadoLibre','ListaPrecioDefault','2',0,NULL),('ML','MLDbIP','6034969425445836B73BDA7284470C1B5ABD358DB035FC0C',0,NULL),('ML','MLDbPassword','1C3BB9A547A1CFC3126B49930A1390A129EEFD305A254992',0,NULL),('ML','MLDbUser','9194A71B9092FE80019A8DBC2B21E2745FDD070E217347EC',0,NULL),('Printer','Comprob_Driver','POS58ENG',0,NULL),('Printer','Comprob_ImpDirecto','1',0,NULL),('Printer','Comprob_MargIzq','-1',0,NULL),('Printer','Comprob_Nombre','POS58 Printer',0,NULL),('Printer','Comprob_Puerto','USB007',0,NULL),('Printer','Comprob_TipoHoja','3',0,NULL),('Printer','Reportes_Driver','RICOH SP 3710SF PCL 6',0,NULL),('Printer','Reportes_Nombre','RICOH SP 3710SF PCL 6',0,NULL),('Printer','Reportes_Puerto','USB006',0,NULL),('Res','Version','9.0.23.6',0,NULL),('TiendaOnline','ListaPrecioDefault','2',0,NULL),('Venta','MaxLineasPorDoc','37',NULL,NULL),('Venta','MaxLineasPorDocA','30',0,NULL),('Venta','MaxLineasPorDocB','37',0,NULL),('Venta','MaxLineasPorDocC','37',0,NULL),('Venta','MaxLineasPorDocE','37',0,NULL),('Venta','MaxLineasPorDocNcA','37',0,NULL),('Venta','MaxLineasPorDocNcB','37',0,NULL),('Venta','MaxLineasPorDocNcC','37',0,NULL),('Venta','MaxLineasPorDocP','37',0,NULL),('Venta','MaxLineasPorDocRecA','30',0,NULL),('Venta','MaxLineasPorDocRecB','37',0,NULL),('Venta','MaxLineasPorDocRecC','37',0,NULL),('Venta','MaxLineasPorDocRem','37',0,NULL),('Venta','PresupuestoAfectaStock','0',NULL,NULL),('VentaWnd','ArtBuscDefault','5',0,NULL),('VentaWnd','AutonumeraNoFiscal','1',0,NULL),('VentaWnd','CerrarAbrirAutoVentanaVenta','1',0,NULL),('VentaWnd','CodBarDigitosDecPeso','3',0,NULL),('VentaWnd','CodBarDigitosDecPrecio','2',0,NULL),('VentaWnd','CodBarDigitosPeso','5',0,NULL),('VentaWnd','CodBarDigitosPrecio','5',0,NULL),('VentaWnd','CodBarrasBalanzaFlag','20',0,NULL),('VentaWnd','CodBarrasBalanzaTipo','1',0,NULL),('VentaWnd','ImpMaxFactB_SinCliente','200000',0,NULL),('VentaWnd','ListaPrecioDefault','1',0,NULL),('VentaWnd','PermiteVenderSinStock','1',0,NULL),('VentaWnd','TipoCodDetalle','1',0,NULL),('VentaWnd','TipoDocDefault','3',0,NULL),('Web','MLDbName','D182C1D17544340BDF8CC8D1FC9FFB69738804E88B10DFE3',0,NULL),('Web','SincroActiva','0',0,NULL),('Web','SincroCfgAuto','1',0,NULL),('Web','SincroServer','ADM6',0,NULL),('Web','SincTimer','60000',0,NULL),('Web','WebDbIP','6034969425445836B73BDA7284470C1B5ABD358DB035FC0C',0,NULL),('Web','WebDbName','7320B657246E7E2DACFF9B482709CFC3571E594382FD8D8E',0,NULL),('Web','WebDbPassword','55CF2AE15A4BFFE4CC96E580F81DB569D8C927A7240A7D9D',0,NULL),('Web','WebDbUser','279BAD9377DC5B9726C0D669334332C138FF5645A644882E',0,NULL);
/*!40000 ALTER TABLE `Config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Documentos`
--

DROP TABLE IF EXISTS `Documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Documentos` (
  `idDocumento` int NOT NULL,
  `idCaja` int DEFAULT NULL,
  `idCajaApertura` int DEFAULT NULL,
  `FechaEntrada` datetime DEFAULT NULL,
  `idUsuario` int DEFAULT NULL,
  `TipoDocumento` int DEFAULT NULL,
  `PrefijoDocumento` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NroDocumento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FechaDocumento` datetime DEFAULT NULL,
  `idVendedor` int DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `NombreClienteEventual` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PagoEfectivo` decimal(19,4) DEFAULT NULL,
  `idTarjeta` int DEFAULT NULL,
  `PagoTarjeta` decimal(19,4) DEFAULT NULL,
  `CuotasTarjeta` int DEFAULT NULL,
  `idTipoDescuento` int DEFAULT NULL,
  `Descuento` decimal(19,4) DEFAULT NULL,
  `PorcDescuento` decimal(19,4) DEFAULT NULL,
  `ValorAPagar` decimal(19,4) DEFAULT NULL,
  `DocAnulado` int DEFAULT '0',
  `CausaDocAnulado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idUsuarioDocAnulado` int DEFAULT '0',
  `FechaDocAnulado` datetime DEFAULT NULL,
  `PagoEfectivoNeto` decimal(19,4) DEFAULT NULL,
  `PagoVuelto` decimal(19,4) DEFAULT NULL,
  `Comentario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubTotal` decimal(19,4) DEFAULT NULL,
  `IVA` decimal(19,4) DEFAULT NULL,
  `Percepciones` decimal(19,4) DEFAULT NULL,
  `idDocAsociado` int DEFAULT NULL,
  `EstadoDoc` int DEFAULT NULL,
  `ListaPrecio` int DEFAULT NULL,
  `Recargo` decimal(19,4) DEFAULT NULL,
  `CondVenta` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `TotalCosto` decimal(19,4) DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  `IVA1` decimal(19,4) DEFAULT NULL,
  `IVA2` decimal(19,4) DEFAULT NULL,
  `IVA3` decimal(19,4) DEFAULT NULL,
  `SincroAfip` int DEFAULT NULL,
  `CAE` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VenceCAE` datetime DEFAULT NULL,
  `RtaAfipCod` int DEFAULT NULL,
  `RtaAfipObs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FechaServDesde` datetime DEFAULT NULL,
  `FechaServHasta` datetime DEFAULT NULL,
  `FechaVtoPago` datetime DEFAULT NULL,
  `Concepto` int DEFAULT NULL,
  `PrefijoNroDocAsociado` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IVA4` decimal(19,4) DEFAULT NULL,
  `IVA5` decimal(19,4) DEFAULT NULL,
  `IVA6` decimal(19,4) DEFAULT NULL,
  `IVA7` decimal(19,4) DEFAULT NULL,
  `IVA8` decimal(19,4) DEFAULT NULL,
  `BaseImpIVA0` decimal(19,4) DEFAULT NULL,
  `BaseImpIVA1` decimal(19,4) DEFAULT NULL,
  `BaseImpIVA2` decimal(19,4) DEFAULT NULL,
  `BaseImpIVA3` decimal(19,4) DEFAULT NULL,
  `BaseImpIVA4` decimal(19,4) DEFAULT NULL,
  `BaseImpIVA5` decimal(19,4) DEFAULT NULL,
  `BaseImpIVA6` decimal(19,4) DEFAULT NULL,
  `BaseImpIVA7` decimal(19,4) DEFAULT NULL,
  `BaseImpIVA8` decimal(19,4) DEFAULT NULL,
  `CAE_CB` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CAE_CBI` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CuponTarjeta` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AutorizTarjeta` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CondIVACliente` int DEFAULT NULL,
  `IdTpDocCliente` int DEFAULT NULL,
  `NroDocCliente` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idEstadoEntrega` int DEFAULT NULL,
  `idEmpresa` int DEFAULT NULL,
  `CUIT_Emisor` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CondIva_Emisor` int DEFAULT NULL,
  PRIMARY KEY (`idDocumento`),
  KEY `idCaja` (`idCaja`),
  KEY `idCajaApertura` (`idCajaApertura`),
  KEY `idCliente` (`idCliente`),
  KEY `idTarjeta` (`idTarjeta`),
  KEY `idTipoDescuento` (`idTipoDescuento`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idUsuarioDocAnulado` (`idUsuarioDocAnulado`),
  KEY `idVendedor` (`idVendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Documentos`
--

LOCK TABLES `Documentos` WRITE;
/*!40000 ALTER TABLE `Documentos` DISABLE KEYS */;
INSERT INTO `Documentos` VALUES (101,1,1,'2024-07-02 11:56:53',1,3,'0000','00000001','2024-07-02 11:56:53',1,0,NULL,1600.0000,0,NULL,0,0,0.0000,0.0000,1600.0000,0,NULL,0,'1995-01-01 00:00:00',1600.0000,NULL,NULL,1600.0000,277.6900,0.0000,0,0,1,0.0000,1,0,800.0000,0,277.6900,0.0000,0.0000,0,NULL,'1995-01-01 00:00:00',0,NULL,'2024-07-02 11:56:08','2024-07-02 11:56:08','2024-07-02 11:56:53',1,NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1322.3100,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,0,0,NULL,1,1,'20402155168   ',2),(102,1,1,'2024-08-01 12:32:47',1,3,'0000','00000002','2024-08-01 12:32:47',1,0,NULL,3100.0000,0,NULL,0,0,0.0000,0.0000,3100.0000,0,NULL,0,'1995-01-01 00:00:00',3100.0000,NULL,NULL,3100.0000,538.0200,0.0000,0,0,1,0.0000,1,0,2200.0000,0,538.0200,0.0000,0.0000,0,NULL,'1995-01-01 00:00:00',0,NULL,'2024-08-01 12:31:39','2024-08-01 12:31:39','2024-08-01 12:32:47',1,NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,2561.9800,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,0,0,NULL,1,1,'20402155168   ',2),(103,1,1,'2024-08-02 12:43:36',1,3,'0000','00000003','2024-08-02 12:43:36',1,0,NULL,3000.0000,0,NULL,0,0,0.0000,0.0000,3000.0000,0,NULL,0,'1995-01-01 00:00:00',3000.0000,NULL,NULL,3000.0000,520.6600,0.0000,0,0,1,0.0000,1,0,2200.0000,0,520.6600,0.0000,0.0000,0,NULL,'1995-01-01 00:00:00',0,NULL,'2024-08-02 12:41:17','2024-08-02 12:41:17','2024-08-02 12:43:36',1,NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,2479.3400,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,0,0,NULL,1,1,'20402155168   ',2),(104,1,1,'2024-08-06 12:07:09',1,3,'0000','00000004','2024-08-06 12:07:09',1,0,NULL,4600.0000,0,NULL,0,0,0.0000,0.0000,4600.0000,0,NULL,0,'1995-01-01 00:00:00',4600.0000,NULL,NULL,4600.0000,798.3500,0.0000,0,0,1,0.0000,1,0,2700.0000,0,798.3500,0.0000,0.0000,0,NULL,'1995-01-01 00:00:00',0,NULL,'2024-08-06 12:04:52','2024-08-06 12:04:52','2024-08-06 12:07:09',1,NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,3801.6500,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,0,0,NULL,1,1,'20402155168   ',2),(105,1,1,'2024-08-13 12:35:43',1,3,'0000','00000005','2024-08-13 12:35:43',1,0,NULL,3500.0000,0,NULL,0,0,0.0000,0.0000,3500.0000,0,NULL,0,'1995-01-01 00:00:00',3500.0000,NULL,NULL,3500.0000,607.4400,0.0000,0,0,1,0.0000,1,0,2200.0000,0,607.4400,0.0000,0.0000,0,NULL,'1995-01-01 00:00:00',0,NULL,'2024-08-13 12:35:16','2024-08-13 12:35:16','2024-08-13 12:35:43',1,NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,2892.5600,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,0,0,NULL,1,1,'20402155168   ',2),(106,1,1,'2024-08-14 13:56:56',1,3,'0000','00000006','2024-08-14 13:56:56',1,0,NULL,3000.0000,0,NULL,0,0,0.0000,0.0000,3000.0000,0,NULL,0,'1995-01-01 00:00:00',3000.0000,NULL,NULL,3000.0000,520.6600,0.0000,0,0,1,0.0000,1,0,0.0000,0,520.6600,0.0000,0.0000,0,NULL,'1995-01-01 00:00:00',0,NULL,'2024-08-14 13:55:03','2024-08-14 13:55:03','2024-08-14 13:56:56',1,NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,2479.3400,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,0,0,NULL,1,1,'20402155168   ',2),(107,1,1,'2024-08-15 11:01:58',1,3,'0000','00000007','2024-08-15 11:01:58',1,0,NULL,600.0000,0,NULL,0,0,0.0000,0.0000,600.0000,0,NULL,0,'1995-01-01 00:00:00',600.0000,NULL,NULL,600.0000,104.1300,0.0000,0,0,1,0.0000,1,0,1100.0000,0,104.1300,0.0000,0.0000,0,NULL,'1995-01-01 00:00:00',0,NULL,'2024-08-15 11:01:46','2024-08-15 11:01:46','2024-08-15 11:01:58',1,NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,495.8700,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,0,0,NULL,1,1,'20402155168   ',2),(108,1,1,'2024-08-27 11:54:49',1,3,'0000','00000008','2024-08-27 11:54:49',1,0,NULL,1800.0000,0,NULL,0,0,0.0000,0.0000,1800.0000,0,NULL,0,'1995-01-01 00:00:00',1800.0000,NULL,NULL,1800.0000,312.4000,0.0000,0,0,1,0.0000,1,0,0.0000,0,312.4000,0.0000,0.0000,0,NULL,'1995-01-01 00:00:00',0,NULL,'2024-08-27 11:52:21','2024-08-27 11:52:21','2024-08-27 11:54:49',1,NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1487.6000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,0,0,NULL,1,1,'20402155168   ',2),(109,1,1,'2024-08-27 11:55:10',1,3,'0000','00000009','2024-08-27 11:55:10',1,0,NULL,1700.0000,0,NULL,0,0,0.0000,0.0000,1700.0000,0,NULL,0,'1995-01-01 00:00:00',1700.0000,NULL,NULL,1700.0000,295.0500,0.0000,0,0,1,0.0000,1,0,1100.0000,0,295.0500,0.0000,0.0000,0,NULL,'1995-01-01 00:00:00',0,NULL,'2024-08-27 11:54:53','2024-08-27 11:54:53','2024-08-27 11:55:10',1,NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1404.9500,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,0,0,NULL,1,1,'20402155168   ',2),(110,1,1,'2024-09-03 11:56:32',1,3,'0000','00000010','2024-09-03 11:56:32',1,0,NULL,1600.0000,0,NULL,0,0,0.0000,0.0000,1600.0000,0,NULL,0,'1995-01-01 00:00:00',1600.0000,NULL,NULL,1600.0000,277.6900,0.0000,0,0,1,0.0000,1,0,0.0000,0,277.6900,0.0000,0.0000,0,NULL,'1995-01-01 00:00:00',0,NULL,'2024-09-03 11:55:14','2024-09-03 11:55:14','2024-09-03 11:56:32',1,NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1322.3100,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,0,0,NULL,1,1,'20402155168   ',2),(111,1,1,'2024-09-24 11:27:48',1,3,'0000','00000011','2024-09-24 11:27:48',1,101,NULL,3300.0000,0,NULL,0,0,0.0000,0.0000,3300.0000,0,NULL,0,'1995-01-01 00:00:00',3300.0000,NULL,NULL,3300.0000,572.7300,0.0000,0,0,1,0.0000,1,0,0.0000,0,572.7300,0.0000,0.0000,0,NULL,'1995-01-01 00:00:00',0,NULL,'2024-09-24 11:25:55','2024-09-24 11:25:55','2024-09-24 11:27:48',1,NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,2727.2700,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,0,10,'7790070012050',1,1,'20402155168   ',2),(112,1,1,'2024-09-30 11:07:51',1,3,'0000','00000012','2024-09-30 11:07:51',1,0,NULL,2000.0000,0,NULL,0,0,0.0000,0.0000,2000.0000,0,NULL,0,'1995-01-01 00:00:00',2000.0000,NULL,NULL,2000.0000,347.1100,0.0000,0,0,1,0.0000,1,0,1100.0000,0,347.1100,0.0000,0.0000,0,NULL,'1995-01-01 00:00:00',0,NULL,'2024-09-30 11:07:00','2024-09-30 11:07:00','2024-09-30 11:07:51',1,NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1652.8900,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,0,0,NULL,1,1,'20402155168   ',2);
/*!40000 ALTER TABLE `Documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DocumentosConfig`
--

DROP TABLE IF EXISTS `DocumentosConfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DocumentosConfig` (
  `idDoc` int NOT NULL,
  `Nombre` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Letra` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Rpt` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Rpt2` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RptCopias` int DEFAULT NULL,
  `Activo` int DEFAULT NULL,
  `PrnDriver` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PrnNombre` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PrnPuerto` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PrnDirect` int DEFAULT NULL,
  `idCondIVA` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  `NoComputable` int DEFAULT NULL,
  `MaxLineas` int DEFAULT NULL,
  `HabEnvioEmail` int DEFAULT NULL,
  `FE` int DEFAULT NULL,
  `AfectaCaja` int DEFAULT NULL,
  `AfectaStock` int DEFAULT NULL,
  `Rpt_PDF` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idDocHoja` int DEFAULT NULL,
  `NombreCorto` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NombreSigla` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MargenIzq` int DEFAULT NULL,
  `TxtAbajoLetra` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TxtAlPie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idDoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DocumentosConfig`
--

LOCK TABLES `DocumentosConfig` WRITE;
/*!40000 ALTER TABLE `DocumentosConfig` DISABLE KEYS */;
INSERT INTO `DocumentosConfig` VALUES (1,'Presupuesto','P','RPT\\TicketX_xpr5.rpt','',1,1,'POS58ENG','POS58 Printer','USB007',1,0,0,0,0,0,1,0,0,0,'RPT\\TicketX_xpr5.rpt',3,'Presupuesto','Pr',-1,'Documento no válido como factura','Documento no válido como factura'),(3,'Factura X','X','RPT\\TicketX_xpr5.rpt','',1,1,'POS58ENG','POS58 Printer','USB007',1,0,0,0,0,0,1,0,1,1,'RPT\\TicketX_xpr5.rpt',3,'Fact. X','FX',-1,'Documento no válido como factura','Documento no válido como factura'),(8,'Remito','R','RPT\\TicketRemito_xpr5.rpt','RPT\\TicketX_xpr5.rpt',1,1,'POS58ENG','POS58 Printer','USB007',1,0,0,0,0,0,1,0,0,1,'RPT\\TicketRemito_xpr5.rpt',3,'Remito','Rem',-1,'Documento no válido como factura','Documento no válido como factura'),(12,'Nota de Crédito X','NX','RPT\\TicketX_xpr5.rpt','',1,1,'POS58ENG','POS58 Printer','USB007',1,0,0,0,0,0,1,0,-1,-1,'RPT\\TicketX_xpr5.rpt',3,'Nota Crédito X','NCX',-1,'Documento no válido como factura','Documento no válido como factura'),(14,'Recibo','R','RPT\\TicketX_xpr5.rpt','',1,1,'POS58ENG','POS58 Printer','USB007',1,0,0,0,0,0,1,0,1,0,'RPT\\TicketX_xpr5.rpt',3,'Recibo','Rec',-1,'Documento no válido como factura','Documento no válido como factura'),(16,'Factura Electrónica C','C','RPT\\eTicketB_xpr5.rpt','',1,1,'POS58ENG','POS58 Printer','USB007',1,2,0,0,0,0,1,1,1,1,'RPT\\eTicketB_xpr5.rpt',3,'FactE. C','eFC',-1,NULL,NULL),(17,'Factura Electrónica B','B','RPT\\eTicketB_xpr5.rpt','',1,1,'POS58ENG','POS58 Printer','USB007',1,3,0,0,0,0,1,1,1,1,'RPT\\eTicketB_xpr5.rpt',3,'FactE. B','eFB',-1,NULL,NULL),(18,'Factura Electrónica A','A','RPT\\eTicketA_xpr5.rpt','',1,1,'POS58ENG','POS58 Printer','USB007',1,3,0,0,0,0,1,1,1,1,'RPT\\eTicketA_xpr5.rpt',3,'FactE. A','eFA',-1,NULL,NULL),(22,'Nota Crédito Electr. C','NC','RPT\\eTicketB_xpr5.rpt','',1,1,'POS58ENG','POS58 Printer','USB007',1,2,NULL,NULL,NULL,NULL,1,1,-1,-1,'RPT\\eTicketB_xpr5.rpt',3,'Nota CrédE. C','eNCC',-1,NULL,NULL),(23,'Nota Crédito Electr. A','NA','RPT\\eTicketA_xpr5.rpt','',1,1,'POS58ENG','POS58 Printer','USB007',1,3,0,0,0,0,1,1,-1,-1,'RPT\\eTicketA_xpr5.rpt',3,'Nota CrédE. A','eNCA',-1,NULL,NULL),(24,'Nota Crédito Electr. B','NB','RPT\\eTicketB_xpr5.rpt','',1,1,'POS58ENG','POS58 Printer','USB007',1,3,0,0,0,0,1,1,-1,-1,'RPT\\eTicketB_xpr5.rpt',3,'Nota CrédE. B','eNCB',-1,NULL,NULL),(25,'Ticket de Cambio','X','RPT\\TicketCambio_xpr5.rpt','',1,0,NULL,' < Impresora Predeterminada >',NULL,1,0,0,0,1,0,0,0,0,0,'RPT\\TicketCambio_xpr5.rpt',3,NULL,NULL,-1,'Documento no válido como factura','Documento no válido como factura');
/*!40000 ALTER TABLE `DocumentosConfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DocumentosDetalles`
--

DROP TABLE IF EXISTS `DocumentosDetalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DocumentosDetalles` (
  `idDocumento` int NOT NULL,
  `Orden` int NOT NULL,
  `idArticulo` int DEFAULT NULL,
  `Cantidad` double DEFAULT NULL,
  `PrecioUnitario` decimal(19,4) DEFAULT NULL,
  `SubTotal` decimal(19,4) DEFAULT NULL,
  `idPromocionCantidad` int DEFAULT NULL,
  `Referencia` int DEFAULT NULL,
  `strReferencia` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  `TipoReferencia` int DEFAULT NULL,
  `idEmpresa` int DEFAULT NULL,
  PRIMARY KEY (`idDocumento`,`Orden`),
  KEY `idArticulo` (`idArticulo`),
  KEY `idDocumento` (`idDocumento`),
  KEY `idPromocionCantidad` (`idPromocionCantidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DocumentosDetalles`
--

LOCK TABLES `DocumentosDetalles` WRITE;
/*!40000 ALTER TABLE `DocumentosDetalles` DISABLE KEYS */;
INSERT INTO `DocumentosDetalles` VALUES (10,1,10,1,15.0000,15.0000,0,NULL,NULL,NULL,NULL,NULL,1),(101,1,183,1,1600.0000,1600.0000,0,0,NULL,0,0,0,1),(102,1,185,1,1700.0000,1700.0000,0,0,NULL,0,0,0,1),(102,2,184,1,1400.0000,1400.0000,0,0,NULL,0,0,0,1),(103,1,184,1,1300.0000,1300.0000,0,0,NULL,0,0,0,1),(103,2,185,1,1700.0000,1700.0000,0,0,NULL,0,0,0,1),(104,1,184,1,1400.0000,1400.0000,0,0,NULL,0,0,0,1),(104,2,186,4,800.0000,3200.0000,0,0,NULL,0,0,0,1),(105,1,185,1,1700.0000,1700.0000,0,0,NULL,0,0,0,1),(105,2,184,1,1800.0000,1800.0000,0,0,NULL,0,0,0,1),(106,1,187,1,3000.0000,3000.0000,0,0,NULL,0,0,0,1),(107,1,184,1,600.0000,600.0000,0,0,NULL,0,0,0,1),(108,1,188,1,1300.0000,1300.0000,0,0,NULL,0,0,0,1),(108,2,189,2,250.0000,500.0000,0,0,NULL,0,0,0,1),(109,1,185,1,1700.0000,1700.0000,0,0,NULL,0,0,0,1),(110,1,192,1,700.0000,700.0000,0,0,NULL,0,0,0,1),(110,2,193,1,900.0000,900.0000,0,0,NULL,0,0,0,1),(111,1,194,1,3300.0000,3300.0000,0,0,NULL,0,0,0,1),(112,1,184,1,1400.0000,1400.0000,0,0,NULL,0,0,0,1),(112,2,195,1,600.0000,600.0000,0,0,NULL,0,0,0,1);
/*!40000 ALTER TABLE `DocumentosDetalles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DocumentosHojas`
--

DROP TABLE IF EXISTS `DocumentosHojas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DocumentosHojas` (
  `idDoc` int NOT NULL,
  `idDocHoja` int NOT NULL,
  `Nombre` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Rpt` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Rpt2` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Rpt_PDF` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MaxLineas` int DEFAULT NULL,
  `Activo` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  PRIMARY KEY (`idDoc`,`idDocHoja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DocumentosHojas`
--

LOCK TABLES `DocumentosHojas` WRITE;
/*!40000 ALTER TABLE `DocumentosHojas` DISABLE KEYS */;
INSERT INTO `DocumentosHojas` VALUES (1,1,'Hoja A4','RPT\\FacturaX_A4.rpt','','RPT\\FacturaX_A4.rpt',37,1,NULL,NULL),(1,2,'Ticket 80mm (EPSON)','RPT\\TicketX_eps8.rpt','','RPT\\TicketX_eps8.rpt',37,1,NULL,NULL),(1,3,'Ticket 58mm','RPT\\TicketX_xpr5.rpt','','RPT\\TicketX_xpr5.rpt',37,1,NULL,NULL),(1,4,'Ticket 80mm','RPT\\TicketX_xpr8.rpt','','RPT\\TicketX_xpr8.rpt',37,1,NULL,NULL),(1,5,'Hoja A5','RPT\\FacturaX_A5V.rpt','','RPT\\FacturaX_A5V.rpt',32,1,NULL,NULL),(3,1,'Hoja A4','RPT\\FacturaX_A4.rpt','','RPT\\FacturaX_A4.rpt',37,1,NULL,NULL),(3,2,'Ticket 80mm (EPSON)','RPT\\TicketX_eps8.rpt','','RPT\\TicketX_eps8.rpt',37,1,NULL,NULL),(3,3,'Ticket 58mm','RPT\\TicketX_xpr5.rpt','','RPT\\TicketX_xpr5.rpt',37,1,NULL,NULL),(3,4,'Ticket 80mm','RPT\\TicketX_xpr8.rpt','','RPT\\TicketX_xpr8.rpt',37,1,NULL,NULL),(3,5,'Hoja A5','RPT\\FacturaX_A5V.rpt','','RPT\\FacturaX_A5V.rpt',32,1,NULL,NULL),(8,1,'Hoja A4','RPT\\Remito_A4.rpt','RPT\\FacturaX_A4.rpt','RPT\\Remito_A4.rpt',37,1,NULL,NULL),(8,2,'Ticket 80mm (EPSON)','RPT\\TicketRemito_eps8.rpt','RPT\\TicketX_eps8.rpt','RPT\\TicketRemito_eps8.rpt',37,1,NULL,NULL),(8,3,'Ticket 58mm','RPT\\TicketRemito_xpr5.rpt','RPT\\TicketX_xpr5.rpt','RPT\\TicketRemito_xpr5.rpt',37,1,NULL,NULL),(8,4,'Ticket 80mm','RPT\\TicketRemito_xpr8.rpt','RPT\\TicketX_xpr8.rpt','RPT\\TicketRemito_xpr8.rpt',37,1,NULL,NULL),(8,5,'Hoja A5','RPT\\Remito_A5V.rpt','RPT\\FacturaX_A5V.rpt','RPT\\Remito_A5V.rpt',32,1,NULL,NULL),(12,1,'Hoja A4','RPT\\FacturaX_A4.rpt','','RPT\\FacturaX_A4.rpt',37,1,NULL,NULL),(12,2,'Ticket 80mm (EPSON)','RPT\\TicketX_eps8.rpt','','RPT\\TicketX_eps8.rpt',37,1,NULL,NULL),(12,3,'Ticket 58mm','RPT\\TicketX_xpr5.rpt','','RPT\\TicketX_xpr5.rpt',37,1,NULL,NULL),(12,4,'Ticket 80mm','RPT\\TicketX_xpr8.rpt','','RPT\\TicketX_xpr8.rpt',37,1,NULL,NULL),(12,5,'Hoja A5','RPT\\FacturaX_A5V.rpt','','RPT\\FacturaX_A5V.rpt',32,1,NULL,NULL),(14,1,'Hoja A4','RPT\\FacturaX_A4.rpt','','RPT\\FacturaX_A4.rpt',37,1,NULL,NULL),(14,2,'Ticket 80mm (EPSON)','RPT\\TicketX_eps8.rpt','','RPT\\TicketX_eps8.rpt',37,1,NULL,NULL),(14,3,'Ticket 58mm','RPT\\TicketX_xpr5.rpt','','RPT\\TicketX_xpr5.rpt',37,1,NULL,NULL),(14,4,'Ticket 80mm','RPT\\TicketX_xpr8.rpt','','RPT\\TicketX_xpr8.rpt',37,1,NULL,NULL),(14,5,'Hoja A5','RPT\\FacturaX_A5V.rpt','','RPT\\FacturaX_A5V.rpt',32,1,NULL,NULL),(16,1,'Hoja A4','RPT\\eFacturaB_A4.rpt','','RPT\\eFacturaB_A4.rpt',37,1,NULL,NULL),(16,2,'Ticket 80mm (EPSON)','RPT\\eTicketB_eps8.rpt','','RPT\\eTicketB_eps8.rpt',37,1,NULL,NULL),(16,3,'Ticket 58mm','RPT\\eTicketB_xpr5.rpt','','RPT\\eTicketB_xpr5.rpt',37,1,NULL,NULL),(16,4,'Ticket 80mm','RPT\\eTicketB_xpr8.rpt','','RPT\\eTicketB_xpr8.rpt',37,1,NULL,NULL),(16,5,'Hoja A5','RPT\\eFacturaB_A5V.rpt','','RPT\\eFacturaB_A5V.rpt',32,1,NULL,NULL),(17,1,'Hoja A4','RPT\\eFacturaB_A4.rpt','','RPT\\eFacturaB_A4.rpt',37,1,NULL,NULL),(17,2,'Ticket 80mm (EPSON)','RPT\\eTicketB_eps8.rpt','','RPT\\eTicketB_eps8.rpt',37,1,NULL,NULL),(17,3,'Ticket 58mm','RPT\\eTicketB_xpr5.rpt','','RPT\\eTicketB_xpr5.rpt',37,1,NULL,NULL),(17,4,'Ticket 80mm','RPT\\eTicketB_xpr8.rpt','','RPT\\eTicketB_xpr8.rpt',37,1,NULL,NULL),(17,5,'Hoja A5','RPT\\eFacturaB_A5V.rpt','','RPT\\eFacturaB_A5V.rpt',32,1,NULL,NULL),(18,1,'Hoja A4','RPT\\eFacturaA_A4.rpt','','RPT\\eFacturaA_A4.rpt',30,1,NULL,NULL),(18,2,'Ticket 80mm (EPSON)','RPT\\eTicketA_eps8.rpt','','RPT\\eTicketA_eps8.rpt',37,1,NULL,NULL),(18,3,'Ticket 58mm','RPT\\eTicketA_xpr5.rpt','','RPT\\eTicketA_xpr5.rpt',37,1,NULL,NULL),(18,4,'Ticket 80mm','RPT\\eTicketA_xpr8.rpt','','RPT\\eTicketA_xpr8.rpt',37,1,NULL,NULL),(18,5,'Hoja A5','RPT\\eFacturaA_A5V.rpt','','RPT\\eFacturaA_A5V.rpt',32,1,NULL,NULL),(22,1,'Hoja A4','RPT\\eFacturaB_A4.rpt','','RPT\\eFacturaB_A4.rpt',37,1,NULL,NULL),(22,2,'Ticket 80mm (EPSON)','RPT\\eTicketB_eps8.rpt','','RPT\\eTicketB_eps8.rpt',37,1,NULL,NULL),(22,3,'Ticket 58mm','RPT\\eTicketB_xpr5.rpt','','RPT\\eTicketB_xpr5.rpt',37,1,NULL,NULL),(22,4,'Ticket 80mm','RPT\\eTicketB_xpr8.rpt','','RPT\\eTicketB_xpr8.rpt',37,1,NULL,NULL),(22,5,'Hoja A5','RPT\\eFacturaB_A5V.rpt','','RPT\\eFacturaB_A5V.rpt',32,1,NULL,NULL),(23,1,'Hoja A4','RPT\\eFacturaA_A4.rpt','','RPT\\eFacturaA_A4.rpt',30,1,NULL,NULL),(23,2,'Ticket 80mm (EPSON)','RPT\\eTicketA_eps8.rpt','','RPT\\eTicketA_eps8.rpt',37,1,NULL,NULL),(23,3,'Ticket 58mm','RPT\\eTicketA_xpr5.rpt','','RPT\\eTicketA_xpr5.rpt',37,1,NULL,NULL),(23,4,'Ticket 80mm','RPT\\eTicketA_xpr8.rpt','','RPT\\eTicketA_xpr8.rpt',37,1,NULL,NULL),(23,5,'Hoja A5','RPT\\eFacturaA_A5V.rpt','','RPT\\eFacturaA_A5V.rpt',32,1,NULL,NULL),(24,1,'Hoja A4','RPT\\eFacturaB_A4.rpt','','RPT\\eFacturaB_A4.rpt',37,1,NULL,NULL),(24,2,'Ticket 80mm (EPSON)','RPT\\eTicketB_eps8.rpt','','RPT\\eTicketB_eps8.rpt',37,1,NULL,NULL),(24,3,'Ticket 58mm','RPT\\eTicketB_xpr5.rpt','','RPT\\eTicketB_xpr5.rpt',37,1,NULL,NULL),(24,4,'Ticket 80mm','RPT\\eTicketB_xpr8.rpt','','RPT\\eTicketB_xpr8.rpt',37,1,NULL,NULL),(24,5,'Hoja A5','RPT\\eFacturaB_A5V.rpt','','RPT\\eFacturaB_A5V.rpt',32,1,NULL,NULL),(25,2,'Ticket 80mm (EPSON)','RPT\\TicketCambio_eps8.rpt','','RPT\\TicketCambio_eps8.rpt',37,1,NULL,NULL),(25,3,'Ticket 58mm','RPT\\TicketCambio_xpr5.rpt','','RPT\\TicketCambio_xpr5.rpt',37,1,NULL,NULL),(25,4,'Ticket 80mm','RPT\\TicketCambio_xpr8.rpt','','RPT\\TicketCambio_xpr8.rpt',37,1,NULL,NULL);
/*!40000 ALTER TABLE `DocumentosHojas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DocumentosHojasNombre`
--

DROP TABLE IF EXISTS `DocumentosHojasNombre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DocumentosHojasNombre` (
  `idDocHoja` int NOT NULL,
  `Nombre` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Activo` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  PRIMARY KEY (`idDocHoja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DocumentosHojasNombre`
--

LOCK TABLES `DocumentosHojasNombre` WRITE;
/*!40000 ALTER TABLE `DocumentosHojasNombre` DISABLE KEYS */;
INSERT INTO `DocumentosHojasNombre` VALUES (1,'Hoja A4',1,NULL,NULL),(2,'Ticket 80mm (EPSON)',1,NULL,NULL),(3,'Ticket 58mm',1,NULL,NULL),(4,'Ticket 80mm',1,NULL,NULL),(5,'Hoja A5',1,NULL,NULL);
/*!40000 ALTER TABLE `DocumentosHojasNombre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DocumentosQR`
--

DROP TABLE IF EXISTS `DocumentosQR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DocumentosQR` (
  `idDocumento` int NOT NULL,
  `JsonQR` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JsonQR2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QR` longblob,
  PRIMARY KEY (`idDocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DocumentosQR`
--

LOCK TABLES `DocumentosQR` WRITE;
/*!40000 ALTER TABLE `DocumentosQR` DISABLE KEYS */;
/*!40000 ALTER TABLE `DocumentosQR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empleados`
--

DROP TABLE IF EXISTS `Empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empleados` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `idRol` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  `idEmpresa` int DEFAULT NULL,
  `NomComercial` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `Nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Apellido` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NroDoc` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TpDoc` int NOT NULL,
  `CUIT` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tel1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Celular` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CodPostal` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Barrio` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Localidad` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CondIVA` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idProvincia` int DEFAULT NULL,
  `Provincia` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Profesion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Imagen` varchar(450) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FechaNac` date DEFAULT NULL,
  `Activo` tinyint(1) DEFAULT '1',
  `Comentarios` text COLLATE utf8mb4_unicode_ci,
  `FechaIncAct` date DEFAULT NULL,
  `FechaBaja` date DEFAULT NULL,
  `Password` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Rol` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `idProvincia` (`idProvincia`),
  KEY `TpDoc` (`TpDoc`),
  CONSTRAINT `Empleados_ibfk_1` FOREIGN KEY (`idProvincia`) REFERENCES `Provincias` (`idProvincia`),
  CONSTRAINT `Empleados_ibfk_2` FOREIGN KEY (`TpDoc`) REFERENCES `TipoDoc` (`idTipoDoc`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleados`
--

LOCK TABLES `Empleados` WRITE;
/*!40000 ALTER TABLE `Empleados` DISABLE KEYS */;
INSERT INTO `Empleados` VALUES (22,4,1,21,'Nombre Comercial de Prueba',NULL,'Juliano','Gonzalez','2',1,'0223','02','j@gmail.com','02','sad','2','asd','asda','Monotributista',12,'La Rioja','das','http://localhost:3000/uploads/1729986396628-Adm. Articulos.png','2024-10-11',1,'asda','2024-10-09','2024-10-06','$2b$10$4Rt/6Gjps5WbDxlrK7iG1Oc5FAum5RCS5q09zMDdGNF//kW2Jxw/i','User'),(23,2,1,21,'Naranja X',NULL,'asdsa','asdas','2',1,'231','02','aa@gmail.com','02','asdsa','2','asda','asd','Consumidor Final',13,'Mendoza','asd','http://localhost:3000/uploads/1730241817793-user.png','1111-11-11',1,'adas','0011-11-11','0011-11-11','$2b$10$WsyNWj4z.LjyBgXgvHPtmePgP6JHwNuH9ATU5ZiiuhqNDrmNBS49W','Manager'),(24,3,1,21,'Naranja X',NULL,'sdas','asdas','02',4,'02','02','p@gmail.com','02','sda','023','asd','asd','Monotributista',13,'Mendoza','ads','http://localhost:3000/uploads/1730242744702-image-6.png','2024-10-25',1,'asdsa','2024-10-25','2024-10-11','$2b$10$O00QDLYVIMWKb4zCOZ2Vju0x4hjCIsCZao/4ccWs18WpVrPkamLT2','Contador'),(25,1,1,21,'Naranja X',NULL,'asdas','sadas','2',4,'023','023','p@gmail.com','032','asd','02','2','sadas','Monotributista',13,'Mendoza','asd','http://localhost:3000/uploads/1730243382927-user.png','2024-11-08',1,'asdas','2024-10-25','2024-10-03','$2b$10$Uakour6.Rhox76uO2wVsfuffIClT5lRACpTLH9pV2/9awoHgRzwrG','Admin');
/*!40000 ALTER TABLE `Empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empresa`
--

DROP TABLE IF EXISTS `Empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empresa` (
  `IdEmpresa` int NOT NULL AUTO_INCREMENT,
  `RazonSocial` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RptDir1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RptDir2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RptTel` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CondIva` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  `CUIT` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NomComercial` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IB` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IniActividad` datetime DEFAULT NULL,
  `NombreRubro` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Activo` int DEFAULT NULL,
  `Orden` int DEFAULT NULL,
  `CasaMatriz` int DEFAULT NULL,
  `idEmpresaCasaMatriz` int DEFAULT NULL,
  `Logo` longblob,
  `AFIP_PEM` longblob,
  `AFIP_CRT` longblob,
  `AFIP_HabFE` int DEFAULT NULL,
  `AFIP_PuntoVenta` int DEFAULT NULL,
  `AFIP_VenceCRT` datetime DEFAULT NULL,
  `AFIP_TipoServicio` int DEFAULT NULL,
  PRIMARY KEY (`IdEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empresa`
--

LOCK TABLES `Empresa` WRITE;
/*!40000 ALTER TABLE `Empresa` DISABLE KEYS */;
INSERT INTO `Empresa` VALUES (21,'Razón Social de Prueba','Dirección de Prueba 123','Otra Dirección de Prueba','123456789',1,NULL,1,'20-12345678-9','Naranja X','12345','2024-10-26 00:00:00',' General',0,NULL,NULL,NULL,_binary '[object Object]',_binary '[object Object]',_binary '[object Object]',0,123,'2024-10-29 00:00:00',NULL),(22,'Razón Social de Prueba','Dirección de Prueba 123','Otra Dirección de Prueba','123456789',1,NULL,1,'20-12345678-9','Nombre Comercial de Prueba','12345','2024-10-26 20:45:24','Rubro de Prueba',0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Entradas`
--

DROP TABLE IF EXISTS `Entradas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Entradas` (
  `idEntrada` int NOT NULL,
  `idProveedor` int DEFAULT NULL,
  `FechaEntrada` datetime DEFAULT NULL,
  `idUsuario` int DEFAULT NULL,
  `Comentario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TipoDocumento` int DEFAULT NULL,
  `PrefijoDocumento` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NroDocumento` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Anulado` int DEFAULT NULL,
  `FechaAnulado` datetime DEFAULT NULL,
  `idUsuarioAnulado` int DEFAULT NULL,
  `CausaAnulado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Subtotal` decimal(19,4) DEFAULT NULL,
  `Descuento` decimal(19,4) DEFAULT NULL,
  `IVA` decimal(19,4) DEFAULT NULL,
  `Percepcion` decimal(19,4) DEFAULT NULL,
  `Total` decimal(19,4) DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `IVA1` decimal(19,4) DEFAULT NULL,
  `IVA2` decimal(19,4) DEFAULT NULL,
  `IVA3` decimal(19,4) DEFAULT NULL,
  `IVA4` decimal(19,4) DEFAULT NULL,
  `IVA5` decimal(19,4) DEFAULT NULL,
  `IVA6` decimal(19,4) DEFAULT NULL,
  `IVA7` decimal(19,4) DEFAULT NULL,
  `IVA8` decimal(19,4) DEFAULT NULL,
  PRIMARY KEY (`idEntrada`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idUsuarioAnulado` (`idUsuarioAnulado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Entradas`
--

LOCK TABLES `Entradas` WRITE;
/*!40000 ALTER TABLE `Entradas` DISABLE KEYS */;
INSERT INTO `Entradas` VALUES (101,103,'2024-01-30 18:38:20',1,NULL,18,'0017','00000842',0,'1995-01-01 00:00:00',0,NULL,9333.0400,NULL,NULL,186.6600,10952.6200,0,0,905.9000,527.0200,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Entradas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EntradasDetalles`
--

DROP TABLE IF EXISTS `EntradasDetalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EntradasDetalles` (
  `idEntrada` int NOT NULL,
  `Orden` int NOT NULL,
  `idArticulo` int DEFAULT NULL,
  `Cantidad` double DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  PRIMARY KEY (`idEntrada`,`Orden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EntradasDetalles`
--

LOCK TABLES `EntradasDetalles` WRITE;
/*!40000 ALTER TABLE `EntradasDetalles` DISABLE KEYS */;
INSERT INTO `EntradasDetalles` VALUES (101,1,102,6,0,0),(101,2,105,2,0,0),(101,3,104,2,0,0),(101,4,103,6,0,0);
/*!40000 ALTER TABLE `EntradasDetalles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EstadoEntrega`
--

DROP TABLE IF EXISTS `EstadoEntrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EstadoEntrega` (
  `idEstadoEntrega` int NOT NULL,
  `Nombre` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Activo` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  PRIMARY KEY (`idEstadoEntrega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EstadoEntrega`
--

LOCK TABLES `EstadoEntrega` WRITE;
/*!40000 ALTER TABLE `EstadoEntrega` DISABLE KEYS */;
INSERT INTO `EstadoEntrega` VALUES (1,'Entrega a convenir',1,NULL,NULL),(2,'Envío pendiente',1,NULL,NULL),(3,'En camino',1,NULL,NULL),(4,'Entregado',1,NULL,NULL);
/*!40000 ALTER TABLE `EstadoEntrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Iva`
--

DROP TABLE IF EXISTS `Iva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Iva` (
  `idIva` int NOT NULL,
  `Porcentaje` decimal(19,4) DEFAULT NULL,
  `Activo` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `Default` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  `idAfipFE` int DEFAULT NULL,
  `Nombre` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idIva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Iva`
--

LOCK TABLES `Iva` WRITE;
/*!40000 ALTER TABLE `Iva` DISABLE KEYS */;
INSERT INTO `Iva` VALUES (1,0.0000,1,NULL,NULL,NULL,3,'0'),(2,21.0000,1,NULL,1,NULL,5,'21'),(3,10.5000,1,NULL,NULL,NULL,4,'10.5'),(4,27.0000,1,NULL,NULL,NULL,6,'27'),(5,5.0000,1,NULL,NULL,NULL,8,'5'),(6,2.5000,1,NULL,NULL,NULL,9,'2.5'),(7,0.0000,1,NULL,NULL,NULL,1,'No Gravado'),(8,0.0000,1,NULL,NULL,NULL,2,'Exento');
/*!40000 ALTER TABLE `Iva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LinkUsuariosTareas`
--

DROP TABLE IF EXISTS `LinkUsuariosTareas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LinkUsuariosTareas` (
  `idEmpleado` int NOT NULL,
  `idTarea` int NOT NULL DEFAULT '0',
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  `PermisoActivo` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idEmpleado`,`idTarea`),
  KEY `idTarea` (`idTarea`),
  KEY `idUsuario` (`idEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LinkUsuariosTareas`
--

LOCK TABLES `LinkUsuariosTareas` WRITE;
/*!40000 ALTER TABLE `LinkUsuariosTareas` DISABLE KEYS */;
INSERT INTO `LinkUsuariosTareas` VALUES (1,100,NULL,NULL,0),(1,102,NULL,NULL,0),(1,103,NULL,NULL,0),(1,200,NULL,NULL,0),(1,201,NULL,NULL,0),(1,202,NULL,NULL,0),(1,203,NULL,NULL,0),(1,204,NULL,NULL,0),(1,205,NULL,NULL,0),(1,206,NULL,NULL,0),(1,207,NULL,NULL,0),(1,301,NULL,NULL,0),(1,302,NULL,NULL,0),(1,303,NULL,NULL,0),(1,304,NULL,NULL,0),(1,305,NULL,NULL,0),(1,306,NULL,NULL,0),(1,307,NULL,NULL,0),(1,308,NULL,NULL,0),(1,309,NULL,NULL,0),(1,310,NULL,NULL,0),(1,311,NULL,NULL,0),(1,312,NULL,NULL,0),(1,400,NULL,NULL,0),(1,405,NULL,NULL,0),(1,410,NULL,NULL,0),(1,415,NULL,NULL,0),(1,420,NULL,NULL,0),(1,421,NULL,NULL,0),(1,425,NULL,NULL,0),(1,430,NULL,NULL,0),(1,435,NULL,NULL,0),(1,440,NULL,NULL,0),(1,450,NULL,NULL,0),(1,600,NULL,NULL,0),(1,610,NULL,NULL,0),(1,620,NULL,NULL,0),(1,630,NULL,NULL,0),(1,640,NULL,NULL,0),(1,650,NULL,NULL,0),(1,660,NULL,NULL,0),(1,670,NULL,NULL,0),(1,700,NULL,NULL,0),(1,705,NULL,NULL,0),(1,800,NULL,NULL,0),(1,805,NULL,NULL,0),(1,900,NULL,NULL,0),(1,905,NULL,NULL,0),(1,910,NULL,NULL,0),(1,915,NULL,NULL,0),(1,920,NULL,NULL,0),(3,100,NULL,NULL,0),(3,102,NULL,NULL,0),(3,200,NULL,NULL,0),(3,201,NULL,NULL,0),(3,202,NULL,NULL,0),(3,203,NULL,NULL,0),(3,204,NULL,NULL,0),(3,205,NULL,NULL,0),(3,206,NULL,NULL,0),(3,207,NULL,NULL,0),(3,306,NULL,NULL,0),(3,307,NULL,NULL,0),(3,308,NULL,NULL,0),(3,309,NULL,NULL,0),(3,310,NULL,NULL,0),(3,311,NULL,NULL,0),(3,312,NULL,NULL,0),(3,421,NULL,NULL,0),(3,450,NULL,NULL,0),(3,600,NULL,NULL,0),(3,610,NULL,NULL,0),(3,620,NULL,NULL,0),(3,630,NULL,NULL,0),(3,640,NULL,NULL,0),(3,650,NULL,NULL,0),(3,660,NULL,NULL,0),(3,670,NULL,NULL,0),(3,700,NULL,NULL,0),(3,705,NULL,NULL,0),(3,800,NULL,NULL,0),(3,805,NULL,NULL,0),(3,900,NULL,NULL,0),(3,905,NULL,NULL,0),(3,910,NULL,NULL,0),(3,915,NULL,NULL,0),(3,920,NULL,NULL,0),(4,100,NULL,NULL,0),(4,102,NULL,NULL,0),(4,200,NULL,NULL,0),(4,201,NULL,NULL,0),(4,202,NULL,NULL,0),(4,203,NULL,NULL,0),(4,204,NULL,NULL,0),(4,205,NULL,NULL,0),(4,206,NULL,NULL,0),(4,207,NULL,NULL,0),(4,306,NULL,NULL,0),(4,307,NULL,NULL,0),(4,308,NULL,NULL,0),(4,309,NULL,NULL,0),(4,310,NULL,NULL,0),(4,311,NULL,NULL,0),(4,312,NULL,NULL,0),(4,421,NULL,NULL,0),(4,450,NULL,NULL,0),(4,600,NULL,NULL,0),(4,610,NULL,NULL,0),(4,620,NULL,NULL,0),(4,630,NULL,NULL,0),(4,640,NULL,NULL,0),(4,650,NULL,NULL,0),(4,660,NULL,NULL,0),(4,670,NULL,NULL,0),(4,700,NULL,NULL,0),(4,705,NULL,NULL,0),(4,800,NULL,NULL,0),(4,805,NULL,NULL,0),(4,900,NULL,NULL,0),(4,905,NULL,NULL,0),(4,910,NULL,NULL,0),(4,915,NULL,NULL,0),(4,920,NULL,NULL,0);
/*!40000 ALTER TABLE `LinkUsuariosTareas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MovCaja`
--

DROP TABLE IF EXISTS `MovCaja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MovCaja` (
  `idMovCaja` int NOT NULL,
  `idCaja` int DEFAULT NULL,
  `idCajaApertura` int DEFAULT NULL,
  `TipoOperacion` int DEFAULT NULL,
  `idUsuario` int DEFAULT NULL,
  `FechaOperacion` datetime DEFAULT NULL,
  `Debito` decimal(19,4) DEFAULT NULL,
  `Credito` decimal(19,4) DEFAULT NULL,
  `idProveedor` int DEFAULT NULL,
  `Comentario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  PRIMARY KEY (`idMovCaja`),
  KEY `idCaja` (`idCaja`),
  KEY `idCajaApertura` (`idCajaApertura`),
  KEY `idProveedor` (`idProveedor`),
  KEY `idUsuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MovCaja`
--

LOCK TABLES `MovCaja` WRITE;
/*!40000 ALTER TABLE `MovCaja` DISABLE KEYS */;
/*!40000 ALTER TABLE `MovCaja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Numero`
--

DROP TABLE IF EXISTS `Numero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Numero` (
  `Tipo` varchar(15) NOT NULL,
  `Codigo` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Tipo`,`Codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Numero`
--

LOCK TABLES `Numero` WRITE;
/*!40000 ALTER TABLE `Numero` DISABLE KEYS */;
INSERT INTO `Numero` VALUES ('Articulo',189),('Articulo',190),('Articulo',191),('Articulo',192),('Articulo',193),('Articulo',194),('Articulo',195),('AutoNro-3',6),('AutoNro-3',7),('AutoNro-3',8),('AutoNro-3',9),('AutoNro-3',10),('AutoNro-3',11),('AutoNro-3',12),('CajaAp',100),('Cajas',1),('Categoria',100),('Categoria',101),('Categoria',102),('Categoria',103),('Categoria',104),('Categoria',105),('Cliente',100),('Cliente',101),('CodBarrasAuto',1),('Documento',106),('Documento',107),('Documento',108),('Documento',109),('Documento',110),('Documento',111),('Documento',112),('Entrada',100),('Entrada',101),('GrupoTalle',43030),('GrupoTalle',43031),('GrupoTalle',43032),('GrupoTalle',43033),('GrupoTalle',43034),('GrupoTalle',43035),('GrupoTalle',43036),('MovCaja',100),('PromoCant',100),('Proveedor',100),('Proveedor',101),('Proveedor',102),('Proveedor',103),('Reg',1),('Reg',2),('Reg',3),('Reg',4),('Reg',5),('Reg',6),('Reg',7),('Repor',1),('Repor',2),('Repor',3),('Repor',4),('Repor',5),('Repor',6),('Tarjeta',1),('Tarjeta',2),('Tarjeta',3),('Tarjeta',4),('Usuario',1),('Usuario',2),('Usuario',3),('Usuario',4),('Usuario',5);
/*!40000 ALTER TABLE `Numero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OpMovCaja`
--

DROP TABLE IF EXISTS `OpMovCaja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OpMovCaja` (
  `idOpMovCaja` int NOT NULL,
  `TipoOp` int DEFAULT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Activa` int DEFAULT NULL,
  `HabSelProveedor` int DEFAULT NULL,
  `ComentarioRequerido` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  PRIMARY KEY (`idOpMovCaja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OpMovCaja`
--

LOCK TABLES `OpMovCaja` WRITE;
/*!40000 ALTER TABLE `OpMovCaja` DISABLE KEYS */;
INSERT INTO `OpMovCaja` VALUES (1,1,'Retiro',1,0,1,NULL,NULL),(2,1,'Pago Agua',0,0,0,NULL,NULL),(3,1,'Pago a Proveedor',1,1,1,NULL,NULL),(4,2,'Ingreso de Dinero a Caja',1,0,1,NULL,NULL);
/*!40000 ALTER TABLE `OpMovCaja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PromocionCantidad`
--

DROP TABLE IF EXISTS `PromocionCantidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PromocionCantidad` (
  `idPromocionCantidad` int NOT NULL,
  `Nombre` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Activo` int DEFAULT NULL,
  `PrecioPublico` decimal(19,4) DEFAULT NULL,
  `Unidades1` int DEFAULT NULL,
  `PrecioPublico1` decimal(19,4) DEFAULT NULL,
  `Unidades2` int DEFAULT NULL,
  `PrecioPublico2` decimal(19,4) DEFAULT NULL,
  `Unidades3` int DEFAULT NULL,
  `PrecioPublico3` decimal(19,4) DEFAULT NULL,
  `Unidades4` int DEFAULT NULL,
  `PrecioPublico4` decimal(19,4) DEFAULT NULL,
  `NoAplicarDescuentos` int DEFAULT NULL,
  `UltimaActualizacion` datetime DEFAULT NULL,
  `idUsuario` int DEFAULT '0',
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  PRIMARY KEY (`idPromocionCantidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PromocionCantidad`
--

LOCK TABLES `PromocionCantidad` WRITE;
/*!40000 ALTER TABLE `PromocionCantidad` DISABLE KEYS */;
INSERT INTO `PromocionCantidad` VALUES (1,'Promocion',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `PromocionCantidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proveedores`
--

DROP TABLE IF EXISTS `Proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proveedores` (
  `idProveedor` int NOT NULL DEFAULT '0',
  `RazonSocial` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Activo` int DEFAULT '0',
  `Fabricante` int DEFAULT '0',
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  `NombreComercial` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CUIT` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CondIVA` int DEFAULT NULL,
  `Direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tel1` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Int1` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tel2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Int2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tel3` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Int3` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PersonaContacto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comentarios` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idProvincia` int DEFAULT NULL,
  PRIMARY KEY (`idProveedor`),
  KEY `idProveedor` (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveedores`
--

LOCK TABLES `Proveedores` WRITE;
/*!40000 ALTER TABLE `Proveedores` DISABLE KEYS */;
INSERT INTO `Proveedores` VALUES (101,'JRB Distribuidora S.A.',1,0,0,0,'Arcor','30714962988',3,'Manzana 7 Parcela 6 B° Villa del Carmen',NULL,NULL,NULL,NULL,NULL,NULL,'jrbdistribuidorasa@gmail.com','Aguero Oscar Agustin',NULL,9),(102,'Milenio S.R.L.',1,0,0,0,'Efren Lopez','30698094601',3,'Ruta Nac. 11 KM 1008','3625214509',NULL,NULL,NULL,NULL,NULL,'ricardo.acevedo@efrenlopez.com.ar','Ricardo Acevedo',NULL,4),(103,'Casa Borras S.A.',1,0,0,0,'Compre Ahora','30599316619',3,'Tte Coronel Eriberto Sanoval 565','0800-222-2677',NULL,NULL,NULL,NULL,NULL,NULL,'Eber Gonzalez',NULL,4);
/*!40000 ALTER TABLE `Proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Provincias`
--

DROP TABLE IF EXISTS `Provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Provincias` (
  `idProvincia` int NOT NULL,
  `Nombre` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idProvincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Provincias`
--

LOCK TABLES `Provincias` WRITE;
/*!40000 ALTER TABLE `Provincias` DISABLE KEYS */;
INSERT INTO `Provincias` VALUES (1,'Buenos Aires'),(2,'Capital Federal'),(3,'Catamarca'),(4,'Chaco'),(5,'Chubut'),(6,'Córdoba'),(7,'Corrientes'),(8,'Entre Ríos'),(9,'Formosa'),(10,'Jujuy'),(11,'La Pampa'),(12,'La Rioja'),(13,'Mendoza'),(14,'Misiones'),(15,'Neuquén'),(16,'Río Negro'),(17,'Salta'),(18,'San Juan'),(19,'San Luis'),(20,'Santa Cruz'),(21,'Santa Fé'),(22,'Santiago del Estero'),(23,'Tucumán'),(24,'Tierra del Fuego');
/*!40000 ALTER TABLE `Provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reportes`
--

DROP TABLE IF EXISTS `Reportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reportes` (
  `id_Reporte` int NOT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Reporte` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comentario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Flag_Activo` int DEFAULT NULL,
  `SP_Previo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Icono` int DEFAULT NULL,
  `Tarea` int DEFAULT NULL,
  PRIMARY KEY (`id_Reporte`),
  KEY `id_Reporte` (`id_Reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reportes`
--

LOCK TABLES `Reportes` WRITE;
/*!40000 ALTER TABLE `Reportes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Reportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reportes_Parametros`
--

DROP TABLE IF EXISTS `Reportes_Parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reportes_Parametros` (
  `id_Reporte` int NOT NULL,
  `id_Parametro` int NOT NULL,
  `Titulo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tipo` int DEFAULT NULL,
  `Reemplazo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Orden` int DEFAULT NULL,
  `DestUsr` int DEFAULT NULL,
  `DestRPT` int DEFAULT NULL,
  `DestSP` int DEFAULT NULL,
  PRIMARY KEY (`id_Reporte`,`id_Parametro`),
  KEY `id_Parametro` (`id_Parametro`),
  KEY `id_Reporte` (`id_Reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reportes_Parametros`
--

LOCK TABLES `Reportes_Parametros` WRITE;
/*!40000 ALTER TABLE `Reportes_Parametros` DISABLE KEYS */;
/*!40000 ALTER TABLE `Reportes_Parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Roles`
--

DROP TABLE IF EXISTS `Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Roles` (
  `idRol` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Roles`
--

LOCK TABLES `Roles` WRITE;
/*!40000 ALTER TABLE `Roles` DISABLE KEYS */;
INSERT INTO `Roles` VALUES (1,'Admin'),(2,'Manager'),(3,'Contador'),(4,'User');
/*!40000 ALTER TABLE `Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RptCodBarras`
--

DROP TABLE IF EXISTS `RptCodBarras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RptCodBarras` (
  `idOrden` int NOT NULL,
  `idArticulo` int DEFAULT NULL,
  `CodBarrasCrudo` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idOrden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RptCodBarras`
--

LOCK TABLES `RptCodBarras` WRITE;
/*!40000 ALTER TABLE `RptCodBarras` DISABLE KEYS */;
INSERT INTO `RptCodBarras` VALUES (1,115,'*7791293047690*'),(2,163,'*7791293045757*'),(3,113,'*7791293047676*'),(4,148,'*7791293047768*'),(5,168,'*7791293045764*');
/*!40000 ALTER TABLE `RptCodBarras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RptCodBarrasModelos`
--

DROP TABLE IF EXISTS `RptCodBarrasModelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RptCodBarrasModelos` (
  `idModelo` int NOT NULL,
  `Nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Especificacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Rpt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CantEtiqHoja` int DEFAULT NULL,
  `Activo` int DEFAULT NULL,
  PRIMARY KEY (`idModelo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RptCodBarrasModelos`
--

LOCK TABLES `RptCodBarrasModelos` WRITE;
/*!40000 ALTER TABLE `RptCodBarrasModelos` DISABLE KEYS */;
INSERT INTO `RptCodBarrasModelos` VALUES (1,'Etiquetas Troqueladas A4  Modelo 9041','Etiquetas Autoadhesivas Astronauta Modelo 9041 Hoja A4 (64x25,4mm)','CodBarra1.rpt',30,1),(2,'Hoja A4 (Modelo 1)','Hoja A4','CodBarra2.rpt',33,1),(3,'Hoja A4 (Modelo 3)','Hoja A4','CodBarra3.rpt',39,1),(4,'Hoja A4 (Modelo 4)','Hoja A4','CodBarra4.rpt',51,1),(5,'Etiquetas Troqueladas A4','Etiquetas Autoadhesivas Hoja A4 (52,5x21.16mm)','CodBarra6.rpt',56,1),(6,'Etiquetas para Góndola (Modelo 2)','Hoja A4','CodBarra7.rpt',33,1),(7,'Código de Barras (Modelo 5)','Hoja A4','CodBarra5.rpt',68,1),(8,'Etiquetas Troqueladas Dover A4 (33 etiquetas)','Etiquetas Dover Autoadhesivas Hoja A4 (33 etiquetas) (70x25,4mm)','CodBarra8.rpt',33,1),(9,'Etiquetas Troqueladas A4 (+precio)','Etiquetas Autoadhesivas Hoja A4 (52,5x21.16mm)','CodBarra9.rpt',56,1),(10,'Etiquetas HUSARES H34165','Etiquetas Husares Código H34165 Autoadhesivas Hoja A4 (65 etiquetas)(3,80x2,12cm)','CodBarra10.rpt',65,1),(11,'Etiquetas HUSARES H34165 (sin Precio)','Etiquetas Husares Código H34165 Autoadhesivas Hoja A4 (65 etiquetas)(3,80x2,12cm) (sin Precio)','CodBarra11.rpt',65,1),(12,'Etiquetas para Góndola (2 Precios)','Hoja A4','CodBarra12.rpt',33,1),(100,'Exportar CSV (Impresora tipo Brother)','Exportación formato CSV para impresoras tipo Brother (código de barras, nombre, precio 1)','',0,1);
/*!40000 ALTER TABLE `RptCodBarrasModelos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rubros`
--

DROP TABLE IF EXISTS `Rubros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rubros` (
  `idRubro` int NOT NULL,
  `Nombre` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idAdmGlobal` int DEFAULT NULL,
  `Activo` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  PRIMARY KEY (`idRubro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rubros`
--

LOCK TABLES `Rubros` WRITE;
/*!40000 ALTER TABLE `Rubros` DISABLE KEYS */;
INSERT INTO `Rubros` VALUES (1,' General',1,1,NULL,NULL),(2,'Indumentaria',2,1,NULL,NULL),(3,'Informática',3,1,NULL,NULL),(4,'Fotografía',3,1,NULL,NULL),(5,'Pinturería',4,1,NULL,NULL),(6,'Librerías',1,1,NULL,NULL),(7,'Juguetería',1,1,NULL,NULL),(8,'Kioscos',1,1,NULL,NULL),(9,'Moda',2,1,NULL,NULL),(10,'Zapatería',2,1,NULL,NULL),(11,'Bazar',1,1,NULL,NULL),(12,'Regalos',1,1,NULL,NULL),(13,'Óptica',1,1,NULL,NULL),(14,'Electrónica',3,1,NULL,NULL),(15,'Mercado',1,1,NULL,NULL),(16,'Almacén',1,1,NULL,NULL),(17,'Granja',1,1,NULL,NULL),(18,'Vinoteca',1,1,NULL,NULL),(19,'Veterinaria',1,1,NULL,NULL),(20,'Limpieza',1,1,NULL,NULL),(21,'Ferretería',1,1,NULL,NULL),(22,'Sanitarios',1,1,NULL,NULL),(23,'Repuestos',3,1,NULL,NULL),(24,'Lubricentro',1,1,NULL,NULL),(25,'Supermercado',1,1,NULL,NULL),(26,'Verdulería',1,1,NULL,NULL),(27,'Carnicería',1,1,NULL,NULL),(28,'Maxikiosco',1,1,NULL,NULL),(29,'Taller',1,1,NULL,NULL),(30,'Marroquinería',1,1,NULL,NULL),(31,'Linea Blanca',3,1,NULL,NULL),(32,'Celulares',3,1,NULL,NULL),(33,'Mueblería',3,1,NULL,NULL),(34,'Aberturas',3,1,NULL,NULL),(35,'Artesanías',3,1,NULL,NULL),(36,'Pesca',3,1,NULL,NULL),(37,'Deportes',3,1,NULL,NULL),(38,'Hobbies',3,1,NULL,NULL),(39,'Baterias',3,1,NULL,NULL),(40,'Electrícidad',1,1,NULL,NULL),(41,'Corralón',1,1,NULL,NULL),(42,'Fiambrería',1,1,NULL,NULL),(43,'Panadería',1,1,NULL,NULL),(44,'Insumos',1,1,NULL,NULL),(45,'Herrería',1,1,NULL,NULL),(46,'Acuario',1,1,NULL,NULL),(47,'Comidas',1,1,NULL,NULL),(48,'Cafetería',1,1,NULL,NULL),(49,'Restaurante',1,1,NULL,NULL),(50,'Bicicletería',1,1,NULL,NULL),(51,'Dietética',1,1,NULL,NULL),(52,'Forrajería',1,1,NULL,NULL),(53,'Amoblamientos',1,1,NULL,NULL),(54,'Bar',1,1,NULL,NULL),(55,'Cervecería',1,1,NULL,NULL),(56,'Colchonería',1,1,NULL,NULL),(57,'Calefacción/AA',1,1,NULL,NULL),(58,'Vivero',1,1,NULL,NULL),(59,'Papelería',1,1,NULL,NULL),(60,'Artística',1,1,NULL,NULL),(61,'Perfumería',1,1,NULL,NULL),(62,'Farmacia',1,1,NULL,NULL),(63,'Mercería',1,1,NULL,NULL),(64,'Relojería',1,1,NULL,NULL),(65,'Goloteca',1,1,NULL,NULL),(66,'Joyería',1,1,NULL,NULL),(67,'Resto Bar',1,1,NULL,NULL),(68,'Pizzería',1,1,NULL,NULL),(69,'Sushi',1,1,NULL,NULL),(70,'Pasta',1,1,NULL,NULL),(71,'Gastronómico',1,1,NULL,NULL),(72,'Gomería',1,1,NULL,NULL),(73,'Mayorista',1,1,NULL,NULL),(74,'Lavadero',1,1,NULL,NULL),(75,'Alojamiento',1,1,NULL,NULL),(76,'Hotel',1,1,NULL,NULL),(77,'Cabañas',1,1,NULL,NULL),(78,'Reparación',1,1,NULL,NULL),(79,'Mantenimiento',1,1,NULL,NULL),(80,'Service',1,1,NULL,NULL),(81,'Parrilla',1,1,NULL,NULL);
/*!40000 ALTER TABLE `Rubros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tareas`
--

DROP TABLE IF EXISTS `Tareas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tareas` (
  `idTarea` int NOT NULL DEFAULT '0',
  `Nombre` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  PRIMARY KEY (`idTarea`),
  KEY `idTarea` (`idTarea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tareas`
--

LOCK TABLES `Tareas` WRITE;
/*!40000 ALTER TABLE `Tareas` DISABLE KEYS */;
INSERT INTO `Tareas` VALUES (100,'Caja: Ver Todos los Cierres',NULL,NULL),(101,'Caja: Ver solo Cierres Propios',NULL,NULL),(102,'Ver Estadisticas Ventas x Usuarios',NULL,NULL),(103,'Administrar Promo x Cantidad',NULL,NULL),(200,'Articulos: Modificar Stock',NULL,NULL),(201,'Articulos: Modificar Precios',NULL,NULL),(202,'Articulos: Ver Costos/Ganancias',NULL,NULL),(203,'Reporte: Invertario General',NULL,NULL),(204,'Reporte: Invertario General por Costos',NULL,NULL),(205,'Articulos: Permite dar de alta artículos',NULL,NULL),(206,'Articulos: Permite actualizar artículos',NULL,NULL),(207,'Articulos: Permite borrar artículos',NULL,NULL),(301,'Reporte: Libro Iva Compras',NULL,NULL),(302,'Reporte: Libro Iva Ventas',NULL,NULL),(303,'Reporte: Caja Diaria',NULL,NULL),(304,'Reporte: Caja Mensual',NULL,NULL),(305,'Reporte: Stock Reposición',NULL,NULL),(306,'Reporte: Ventas Detalladas',NULL,NULL),(307,'Reporte: Estadisticas Articulos Vendidos',NULL,NULL),(308,'Reporte: Costos/Ganancias',NULL,NULL),(309,'Reporte: Clientes CC General Documentos Pendientes',NULL,NULL),(310,'Reporte: Clientes CC Individual Documentos Pendien',NULL,NULL),(311,'Reporte: Compras por Proveedor',NULL,NULL),(312,'Reporte: Ventas en Cierre de Caja',NULL,NULL),(400,'Admin: Administración de Usuarios',NULL,NULL),(405,'Admin: Administración de Empresa',NULL,NULL),(410,'Admin: Administración Copias de Seguridad(Backups)',NULL,NULL),(415,'Admin: Administración de Tarjetas',NULL,NULL),(420,'Admin: Importar Datos Articulos',NULL,NULL),(421,'Admin: Exportar Datos CSV',NULL,NULL),(425,'Admin: Administración de Descuentos',NULL,NULL),(430,'Admin: Tipo Mov. de Caja',NULL,NULL),(435,'Admin: Administración de Documentos Cfg',NULL,NULL),(440,'Admin: Administración de Impresoras',NULL,NULL),(450,'Operaciones: Factura Electrónica',NULL,NULL),(600,'Admin: Promociones por cantidad',NULL,NULL),(610,'Admin: Administración de Categorias',NULL,NULL),(620,'Admin: Administración de Proveedores',NULL,NULL),(630,'Artículos: Imprimir Códigos de Barras',NULL,NULL),(640,'Artículos: Actualización Masiva de Datos',NULL,NULL),(650,'Operaciones: F.E. Exporta TXT Iva Ventas',NULL,NULL),(660,'Operaciones: F.E. Reproceso',NULL,NULL),(670,'Operaciones: Actualización Cotización Dólar',NULL,NULL),(700,'Admin: Mercado Libre',NULL,NULL),(705,'Operaciones: Mercado Libre Actualizar',NULL,NULL),(800,'Proveedores: Alta de Entrada de Mercadería',NULL,NULL),(805,'Proveedores: Buscar Entrada de Mercadería',NULL,NULL),(900,'Caja: Apertura de Caja',NULL,NULL),(905,'Caja: Cierre de Caja',NULL,NULL),(910,'Caja: Ingreso de Dinero a Caja',NULL,NULL),(915,'Caja: Extracción de Dinero de Caja',NULL,NULL),(920,'Caja: Ver Extracción e Ingreso de Dinero de Caja A',NULL,NULL);
/*!40000 ALTER TABLE `Tareas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tarjetas`
--

DROP TABLE IF EXISTS `Tarjetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tarjetas` (
  `idTarjeta` int NOT NULL,
  `Nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Activa` int DEFAULT NULL,
  `bTarjetaCredito` int DEFAULT NULL,
  `CuotasMax` int DEFAULT NULL,
  `Cuota1Recargo` decimal(19,4) DEFAULT NULL,
  `Cuota2Recargo` decimal(19,4) DEFAULT NULL,
  `Cuota3Recargo` decimal(19,4) DEFAULT NULL,
  `Cuota4Recargo` decimal(19,4) DEFAULT NULL,
  `Cuota5Recargo` decimal(19,4) DEFAULT NULL,
  `Cuota6Recargo` decimal(19,4) DEFAULT NULL,
  `Cuota7Recargo` decimal(19,4) DEFAULT NULL,
  `Cuota8Recargo` decimal(19,4) DEFAULT NULL,
  `Cuota9Recargo` decimal(19,4) DEFAULT NULL,
  `Cuota10Recargo` decimal(19,4) DEFAULT NULL,
  `Cuota11Recargo` decimal(19,4) DEFAULT NULL,
  `Cuota12Recargo` decimal(19,4) DEFAULT NULL,
  `Cuota18Recargo` decimal(19,4) DEFAULT NULL,
  `Cuota20Recargo` decimal(19,4) DEFAULT NULL,
  `Cuota24Recargo` decimal(19,4) DEFAULT NULL,
  `DiasAcredita1Pago` int DEFAULT NULL,
  `DiasAcreditaPagoEnCuotas` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  PRIMARY KEY (`idTarjeta`),
  UNIQUE KEY `idTarjeta` (`idTarjeta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tarjetas`
--

LOCK TABLES `Tarjetas` WRITE;
/*!40000 ALTER TABLE `Tarjetas` DISABLE KEYS */;
INSERT INTO `Tarjetas` VALUES (1,'Visa Credito',1,1,3,0.0000,10.0000,11.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),(2,'Visa Debito',1,0,1,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),(3,'Mastercard',1,1,3,0.0000,10.0000,11.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),(4,'Amex',1,1,3,0.0000,10.0000,11.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL);
/*!40000 ALTER TABLE `Tarjetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoDescuentos`
--

DROP TABLE IF EXISTS `TipoDescuentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TipoDescuentos` (
  `idTipoDescuento` int NOT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Porcentaje` decimal(19,4) DEFAULT NULL,
  `Activo` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  PRIMARY KEY (`idTipoDescuento`),
  KEY `idTipoDescuento` (`idTipoDescuento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoDescuentos`
--

LOCK TABLES `TipoDescuentos` WRITE;
/*!40000 ALTER TABLE `TipoDescuentos` DISABLE KEYS */;
INSERT INTO `TipoDescuentos` VALUES (0,'Sin Descuento',0.0000,1,NULL,NULL),(1,'15%',15.0000,1,NULL,NULL),(2,' 5%',5.0000,1,NULL,NULL),(3,'10%',10.0000,1,NULL,NULL),(4,'xSIN CARGO 100%',100.0000,1,NULL,NULL),(5,'20%',20.0000,1,NULL,NULL),(6,'25%',25.0000,1,NULL,NULL),(7,'30%',30.0000,1,NULL,NULL);
/*!40000 ALTER TABLE `TipoDescuentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoDoc`
--

DROP TABLE IF EXISTS `TipoDoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TipoDoc` (
  `idTipoDoc` int NOT NULL,
  `Nombre` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Activo` int DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  PRIMARY KEY (`idTipoDoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoDoc`
--

LOCK TABLES `TipoDoc` WRITE;
/*!40000 ALTER TABLE `TipoDoc` DISABLE KEYS */;
INSERT INTO `TipoDoc` VALUES (1,'DNI',1,NULL,NULL),(4,'Otro',1,NULL,NULL);
/*!40000 ALTER TABLE `TipoDoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuarios` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `idEmpresa` int DEFAULT NULL,
  `Nombre` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Activo` int DEFAULT '0',
  `Login` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Password` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SincroWeb` int DEFAULT NULL,
  `idBase` int DEFAULT NULL,
  `Imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idRol` int DEFAULT NULL,
  `Email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `idUsuario` (`idUsuario`),
  KEY `fk_rol` (`idRol`),
  CONSTRAINT `fk_rol` FOREIGN KEY (`idRol`) REFERENCES `Roles` (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (35,22,'claudio',0,NULL,'$2b$10$eSwdwfrkiKRZPXdfSrlJ.eXZmmHJ0eDBVU0kVrQ/P.d7IE5RdRYH.',NULL,1,'http://localhost:3000/uploads/1729986323554-Adm. Articulos.png',1,'q@gmail.com');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-30 20:17:32
