CREATE DATABASE  IF NOT EXISTS `optica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `optica`;
-- MySQL dump 10.13  Distrib 9.4.0, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: optica
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `gafas`
--

DROP TABLE IF EXISTS `gafas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gafas` (
  `id_gafa` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(50) NOT NULL,
  `graduacion_vidrio_izquierdo` varchar(50) DEFAULT NULL,
  `graduacion_vidrio_derecho` varchar(50) DEFAULT NULL,
  `tipo_montura` varchar(50) DEFAULT NULL,
  `color_montura` varchar(50) DEFAULT NULL,
  `color_vidrio_izquierdo` varchar(50) DEFAULT NULL,
  `color_vidrio_derecho` varchar(50) DEFAULT NULL,
  `precio` decimal(5,2) DEFAULT NULL,
  `id_proveedor` int DEFAULT NULL,
  PRIMARY KEY (`id_gafa`),
  KEY `fk_proveedor` (`id_proveedor`),
  CONSTRAINT `fk_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gafas`
--

LOCK TABLES `gafas` WRITE;
/*!40000 ALTER TABLE `gafas` DISABLE KEYS */;
INSERT INTO `gafas` VALUES (1,'Ray-Ban','-1.25','-1.50','Metálica','Negro','Transparente','Transparente',149.99,1),(2,'Oakley','-0.75','-0.50','Plástico','Azul','Verde','Verde',129.50,2),(3,'Gucci','-2.00','-2.25','Metálica','Dorado','Transparente','Transparente',299.90,3),(4,'Prada','-1.75','-1.50','Mixta','Marrón','Gris','Gris',249.00,1),(5,'Vogue','-0.25','-0.25','Plástico','Rojo','Transparente','Transparente',89.99,2),(6,'Carrera','-3.00','-2.75','Metálica','Plateado','Transparente','Transparente',159.00,4),(7,'Police','-1.50','-1.50','Plástico','Negro','Gris','Gris',119.99,5),(8,'Versace','-0.50','-0.75','Mixta','Verde','Transparente','Transparente',179.99,3),(9,'Hawkers','0.00','0.00','Plástico','Blanco','Negro','Negro',49.90,4),(10,'Armani','-2.25','-2.00','Metálica','Gris','Transparente','Transparente',219.90,5);
/*!40000 ALTER TABLE `gafas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-16 12:16:58
