-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: bar
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bebida`
--

DROP TABLE IF EXISTS `bebida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bebida` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Descripcion` varchar(60) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bebida`
--

LOCK TABLES `bebida` WRITE;
/*!40000 ALTER TABLE `bebida` DISABLE KEYS */;
INSERT INTO `bebida` VALUES (1001,'Tequila',60.99,'Tequila Jose Cuervo Especial',1),(1002,'Whisky',60.99,'Whisky Johnnie Walker, Red Label',50),(1003,'Ron',60.99,'Ron Bacardi, Carta Blanca',40),(1004,'Brandy',60.99,'Brandy Don Pedro',23),(1005,'Vodka',60.99,'Vodka Absolut',14),(1006,'Cerveza',40.99,'Nacional',47),(1007,'Cerveza',50.99,'Importada',100),(1008,'Perla Negra',70.99,'Jagermeister, Whisky, Bebida Energizante',80),(1009,'Paloma',50.99,'Tequila(blanco), Limon, Sal, Refresco de toronja',50),(1010,'Vampiro',60,'Tequila, Sangrita, Sal, Limon, Refresco de toronja',30),(1011,'Cuba',50.99,'Refresco(Normal), Ron',101),(1012,'Vodka con Jugo',50.99,'Vodka, Jugo(Piña, Arandano, Naranja',11),(1013,'Shots',100.99,'Ronda de 4 Caballitos (Cualquier Licor)',10),(1014,'Agua',20.99,'Agua natural',95),(1015,'Agua de Sabor',30,'Agua de Sabor(Limon, Jamaica, Piña)',81),(1016,'Refresco',30.99,'Cualquier tipo de Refresco',100);
/*!40000 ALTER TABLE `bebida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `bebidassinalcohol`
--

DROP TABLE IF EXISTS `bebidassinalcohol`;
/*!50001 DROP VIEW IF EXISTS `bebidassinalcohol`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `bebidassinalcohol` AS SELECT 
 1 AS `ID`,
 1 AS `Nombre`,
 1 AS `Precio`,
 1 AS `Descripcion`,
 1 AS `Cantidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `detalledeorden`
--

DROP TABLE IF EXISTS `detalledeorden`;
/*!50001 DROP VIEW IF EXISTS `detalledeorden`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `detalledeorden` AS SELECT 
 1 AS `ID`,
 1 AS `ID_Plato`,
 1 AS `ID_Bebida`,
 1 AS `ID_Ticket`,
 1 AS `ID_Empleado`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empleado` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `ApellidoPa` varchar(20) DEFAULT NULL,
  `ApellidoMa` varchar(20) DEFAULT NULL,
  `FechaNac` date DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Direccion` varchar(30) DEFAULT NULL,
  `ID_EmpleadoSucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1001,'Alonso','Garza','Garcia','1990-09-11',81125678,'Flamingo 947',1001),(1002,'Pedro','Lopez','Garza','1995-04-21',86945678,'Alcatraz 492',1003),(1003,'Francisco','Leal','Tovar','1990-11-11',80915678,'Trebol 333',1001),(1004,'Noe','Perez','Leija','1993-09-11',83495678,'Kiev 492',1002),(1005,'Juan','Rodriguez','Contreras','1911-11-11',86483678,'Cipres 969',1001),(1006,'Alberto','Farias','Castro','1994-11-22',86946948,'Lino 448',1003),(1007,'Hugo','Rodriguez','Gomez','1988-08-19',86942580,'Lardo 694',1001),(1008,'Hector','Gonzales','Martinez','1881-11-19',86969488,'Monclova 490',1002),(1009,'Juan','Diaz','Moreno','1993-01-13',86941036,'Parras 968',1001),(1010,'Andres','Ruiz','Morales','1996-04-13',86159478,'Sotelo 598',1003),(1011,'Martin','Prieto','Vidal','1994-11-18',86909638,'Violeta 448',1002),(1012,'Osvaldo','Garza','Lopez','1991-10-20',86898980,'Tabaco 694',1001),(1013,'Ivan','Blanco','Rubio','1997-09-01',81588488,'Flor 490',1002),(1014,'Yahir','Luna','Campos','1992-06-28',85910864,'Ceibo 968',1001),(1015,'Moises','Mier','Torres','1999-12-25',86106362,'Noche Buena 598',1003);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `empleadosgenerales`
--

DROP TABLE IF EXISTS `empleadosgenerales`;
/*!50001 DROP VIEW IF EXISTS `empleadosgenerales`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `empleadosgenerales` AS SELECT 
 1 AS `ID`,
 1 AS `ID_EmpleadoNomina`,
 1 AS `Sueldo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `empleadosrelevantes`
--

DROP TABLE IF EXISTS `empleadosrelevantes`;
/*!50001 DROP VIEW IF EXISTS `empleadosrelevantes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `empleadosrelevantes` AS SELECT 
 1 AS `ID`,
 1 AS `ID_EmpleadoNomina`,
 1 AS `Sueldo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `exempleado`
--

DROP TABLE IF EXISTS `exempleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `exempleado` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `ApellidoPa` varchar(20) DEFAULT NULL,
  `ApellidoMa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exempleado`
--

LOCK TABLES `exempleado` WRITE;
/*!40000 ALTER TABLE `exempleado` DISABLE KEYS */;
INSERT INTO `exempleado` VALUES (7,'Angel','Rrevilla','Gomez');
/*!40000 ALTER TABLE `exempleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nomina`
--

DROP TABLE IF EXISTS `nomina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nomina` (
  `ID` int(11) NOT NULL,
  `ID_EmpleadoNomina` int(11) DEFAULT NULL,
  `Sueldo` double DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_EmpleadoNomina` (`ID_EmpleadoNomina`),
  CONSTRAINT `nomina_ibfk_1` FOREIGN KEY (`ID_EmpleadoNomina`) REFERENCES `empleado` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nomina`
--

LOCK TABLES `nomina` WRITE;
/*!40000 ALTER TABLE `nomina` DISABLE KEYS */;
/*!40000 ALTER TABLE `nomina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `nominaresumen`
--

DROP TABLE IF EXISTS `nominaresumen`;
/*!50001 DROP VIEW IF EXISTS `nominaresumen`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `nominaresumen` AS SELECT 
 1 AS `Id_EmpleadoNomina`,
 1 AS `Sueldo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `nominaresumen2`
--

DROP TABLE IF EXISTS `nominaresumen2`;
/*!50001 DROP VIEW IF EXISTS `nominaresumen2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `nominaresumen2` AS SELECT 
 1 AS `ID`,
 1 AS `ID_EmpleadoNomina`,
 1 AS `Sueldo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pedido` (
  `ID` int(11) NOT NULL,
  `ID_Plato` int(11) DEFAULT NULL,
  `ID_Bebida` int(11) DEFAULT NULL,
  `ID_Ticket` int(11) DEFAULT NULL,
  `ID_Empleado` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Plato` (`ID_Plato`),
  KEY `ID_Bebida` (`ID_Bebida`),
  KEY `ID_Ticket` (`ID_Ticket`),
  KEY `ID_Empleado` (`ID_Empleado`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`ID_Plato`) REFERENCES `plato` (`ID`),
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`ID_Bebida`) REFERENCES `bebida` (`ID`),
  CONSTRAINT `pedido_ibfk_3` FOREIGN KEY (`ID_Ticket`) REFERENCES `ticket` (`ID`),
  CONSTRAINT `pedido_ibfk_4` FOREIGN KEY (`ID_Empleado`) REFERENCES `empleado` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1001,1005,1011,1001,1010);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plato`
--

DROP TABLE IF EXISTS `plato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `plato` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `Precio` int(11) DEFAULT NULL,
  `Descripcion` varchar(60) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plato`
--

LOCK TABLES `plato` WRITE;
/*!40000 ALTER TABLE `plato` DISABLE KEYS */;
INSERT INTO `plato` VALUES (1001,'Pizza',80,'Pizza Grande',1),(1002,'Pizza',60,'Pizza Mediana',1),(1003,'Pizza',50,'Pizza Individual',1),(1004,'Pasta',60,'Pasta Individual',1),(1005,'Pasta',80,'Pasta Grande',3),(1006,'Hamburguesa',70,'Hamburguesa Clasica',5),(1007,'Hamburguesa',90,'Hamburguesa Doble',1),(1008,'Hamburguesa',70,'Hamburguesa con Tocino',1),(1009,'Hamburguesa',70,'Hamburguesa con Champiñones',1),(1010,'Dedos de Queso',70,'Dedos de Queso',2),(1011,'Papas a la Francesa',40,'Papas sin Queso',3),(1012,'Papas con Queso',50,'Papas con Queso',4),(1013,'Extras',88,'Extra de cocina',1);
/*!40000 ALTER TABLE `plato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sucursal` (
  `ID` int(11) NOT NULL,
  `Direccion` varchar(30) DEFAULT NULL,
  `Capacidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (1001,'ARABASTA 852',200),(1002,'SKYPEA 982',300),(1003,'DRESROSSA 692',150);
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ticket` (
  `ID` int(11) NOT NULL,
  `ID_SucursalTicket` int(11) DEFAULT NULL,
  `Subtotal` double DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `FechaEmision` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1001,1003,468,500,'2018-12-22'),(1002,1003,722,800,'1018-12-29'),(1003,1001,376,400,'2019-12-20'),(1004,1003,280,300,'2018-03-20'),(1005,1002,910,1000,'2019-02-18');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno`
--

DROP TABLE IF EXISTS `turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `turno` (
  `ID` int(11) NOT NULL,
  `ID_EmpleadoTurno` int(11) DEFAULT NULL,
  `Turno` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_EmpleadoTurno` (`ID_EmpleadoTurno`),
  CONSTRAINT `turno_ibfk_1` FOREIGN KEY (`ID_EmpleadoTurno`) REFERENCES `empleado` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno`
--

LOCK TABLES `turno` WRITE;
/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
INSERT INTO `turno` VALUES (1001,1001,'Nocturno'),(1002,1002,'Nocturno'),(1003,1003,'Vespertino'),(1004,1004,'Nocturno'),(1005,1005,'Vespertino'),(1006,1006,'Nocturno'),(1007,1007,'Nocturno'),(1008,1008,'Vespertino'),(1009,1009,'Nocturno'),(1010,1010,'Vespertino'),(1011,1011,'Vespertino'),(1012,1012,'Nocturno'),(1013,1013,'Nocturno'),(1014,1014,'Vespertino'),(1015,1015,'Nocturno');
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vistaempleado`
--

DROP TABLE IF EXISTS `vistaempleado`;
/*!50001 DROP VIEW IF EXISTS `vistaempleado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `vistaempleado` AS SELECT 
 1 AS `Nombre`,
 1 AS `ApellidoMa`,
 1 AS `ApellidoPa`,
 1 AS `FechaNac`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'bar'
--

--
-- Dumping routines for database 'bar'
--

--
-- Final view structure for view `bebidassinalcohol`
--

/*!50001 DROP VIEW IF EXISTS `bebidassinalcohol`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bebidassinalcohol` AS select `bebida`.`ID` AS `ID`,`bebida`.`Nombre` AS `Nombre`,`bebida`.`Precio` AS `Precio`,`bebida`.`Descripcion` AS `Descripcion`,`bebida`.`Cantidad` AS `Cantidad` from `bebida` where (`bebida`.`Precio` < 40) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `detalledeorden`
--

/*!50001 DROP VIEW IF EXISTS `detalledeorden`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `detalledeorden` AS select `pedido`.`ID` AS `ID`,`pedido`.`ID_Plato` AS `ID_Plato`,`pedido`.`ID_Bebida` AS `ID_Bebida`,`pedido`.`ID_Ticket` AS `ID_Ticket`,`pedido`.`ID_Empleado` AS `ID_Empleado` from `pedido` where (`pedido`.`ID_Empleado` = 1015) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `empleadosgenerales`
--

/*!50001 DROP VIEW IF EXISTS `empleadosgenerales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `empleadosgenerales` AS select `nomina`.`ID` AS `ID`,`nomina`.`ID_EmpleadoNomina` AS `ID_EmpleadoNomina`,`nomina`.`Sueldo` AS `Sueldo` from `nomina` where (`nomina`.`Sueldo` < 2000) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `empleadosrelevantes`
--

/*!50001 DROP VIEW IF EXISTS `empleadosrelevantes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `empleadosrelevantes` AS select `nomina`.`ID` AS `ID`,`nomina`.`ID_EmpleadoNomina` AS `ID_EmpleadoNomina`,`nomina`.`Sueldo` AS `Sueldo` from `nomina` where (`nomina`.`Sueldo` > 2000) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nominaresumen`
--

/*!50001 DROP VIEW IF EXISTS `nominaresumen`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nominaresumen` AS select `nomina`.`ID_EmpleadoNomina` AS `Id_EmpleadoNomina`,`nomina`.`Sueldo` AS `Sueldo` from `nomina` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nominaresumen2`
--

/*!50001 DROP VIEW IF EXISTS `nominaresumen2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nominaresumen2` AS select `nomina`.`ID` AS `ID`,`nomina`.`ID_EmpleadoNomina` AS `ID_EmpleadoNomina`,`nomina`.`Sueldo` AS `Sueldo` from `nomina` where (`nomina`.`Sueldo` = 2500) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistaempleado`
--

/*!50001 DROP VIEW IF EXISTS `vistaempleado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistaempleado` AS select `empleado`.`Nombre` AS `Nombre`,`empleado`.`ApellidoMa` AS `ApellidoMa`,`empleado`.`ApellidoPa` AS `ApellidoPa`,`empleado`.`FechaNac` AS `FechaNac` from `empleado` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-17 13:57:32
