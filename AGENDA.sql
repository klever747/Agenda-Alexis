-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: agenda
-- ------------------------------------------------------
-- Server version	5.5.58-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actividad`
--

DROP TABLE IF EXISTS `actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actividad` (
  `id_actividad` int(11) NOT NULL AUTO_INCREMENT,
  `entidad` varchar(45) DEFAULT NULL,
  `actividad` varchar(200) DEFAULT NULL,
  `condicion` varchar(45) DEFAULT NULL,
  `condicion_dos` varchar(45) DEFAULT NULL,
  `parametro_inicio` varchar(10) DEFAULT NULL,
  `parametro_fin` varchar(10) DEFAULT NULL,
  `dias` varchar(10) DEFAULT NULL,
  `frecuencia` varchar(45) DEFAULT NULL,
  `vence` varchar(4) DEFAULT NULL,
  `pn_empleado` tinyint(1) DEFAULT NULL,
  `pn_rise` tinyint(1) DEFAULT NULL,
  `pn_no_obligado` tinyint(1) DEFAULT NULL,
  `pn_no_obligado_semestral` tinyint(1) DEFAULT NULL,
  `pn_obligado` tinyint(1) DEFAULT NULL,
  `pj_sa` tinyint(1) DEFAULT NULL,
  `pj_cia_ltda` tinyint(1) DEFAULT NULL,
  `pj_sin_fin_lucro` tinyint(1) DEFAULT NULL,
  `pj_seps_finan` tinyint(1) DEFAULT NULL,
  `pj_seps_no_finan` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_actividad`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
INSERT INTO `actividad` VALUES (1,'ENT-0001','Proyeccion Gastos Personales Empleados','base_imponible',NULL,NULL,NULL,'15','ENERO','31',0,1,1,1,1,1,1,1,1,1),(2,'ENT-0001','Actualizacion Proyeccion Gastos Personales Empleados','periodo actual',NULL,NULL,NULL,'15','AGOSTO','31',0,1,1,1,1,1,1,1,1,1),(3,'ENT-0001','Declaracion Retenciones F103','mes siguiente',NULL,NULL,NULL,'1','Mensual','D',0,0,0,0,1,1,1,1,1,1),(4,'ENT-0001','Declaracion Impuesto Renta 102','periodo actual',NULL,NULL,NULL,'1','MARZO','D',0,0,0,0,1,0,0,0,0,0),(5,'ENT-0001','Declaracion Impuesto Renta 102A','periodo actual',NULL,NULL,NULL,'1','MARZO','D',0,0,1,1,0,0,0,0,0,0),(6,'ENT-0001','Declaracion Impuesto Renta 101','periodo actual',NULL,NULL,NULL,'1','ABRIL','D',0,0,0,0,0,1,1,1,1,1),(7,'ENT-0001','Declaracion ISD',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'ENT-0001','Anexo Transaccional ATS','mes siguiente',NULL,NULL,NULL,'1','Mensual','D',0,0,0,0,1,1,1,1,1,1),(9,'ENT-0001','Anexo de Empleados RDEP','periodo actual',NULL,NULL,NULL,'1','ENERO','D',0,0,0,0,1,1,1,1,1,1),(10,'ENT-0001','Anexo Declaracion Patrimonial','declaracion_patrimonial',NULL,NULL,NULL,'1','MAYO','D',1,1,1,1,1,0,0,0,0,0),(11,'ENT-0001','Anexo Dividendos','periodo actual',NULL,NULL,NULL,'1','MAYO','D',0,0,0,0,0,1,1,1,1,1),(12,'ENT-0001','Anexo Gastos Personales','periodo actual',NULL,NULL,NULL,'1','FEBRERO','D',1,0,1,1,1,0,0,0,0,0),(13,'ENT-0001','Anexo Accionistas','periodo actual',NULL,NULL,NULL,'1','FEBRERO','D',0,0,0,0,0,1,1,1,1,1),(14,'ENT-0001','Anexo ROTEF',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'ENT-0001','Anexo Notarios',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'ENT-0001','Anexo Calculo Actuarial','periodo actual',NULL,NULL,NULL,'1','JUNIO','D',0,0,0,0,0,1,1,1,1,1),(17,'ENT-0001','Anexo productos gravados ICE',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'ENT-0001','Pago de Anticipo de Impuesto Renta Cuota 1','periodo actual',NULL,NULL,NULL,'1','JULIO','D',1,1,1,1,1,1,1,1,1,1),(19,'ENT-0001','Pago de Anticipo de Impuesto Renta Cuota 2','periodo actual',NULL,NULL,NULL,'1','SEPTIEMBRE','D',1,1,1,1,1,1,1,1,1,1),(20,'ENT-0001','Declaracion ICE',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'ENT-0001','Formulario 107 Empleados','empleados','periodo siguiente',NULL,NULL,'5','ENERO','31',0,0,1,1,1,1,1,1,1,1),(22,'ENT-0001','Pago CUOTA Mensual RISE','mes siguiente',NULL,NULL,NULL,'1','Mensual','D',0,1,0,0,0,0,0,0,0,0),(23,'ENT-0002','Pago de Planillas IESS (Aportes, Prestamos, Fondo Reserva)','afiliados','mes siguiente',NULL,NULL,'1','Mensual','15',1,1,1,1,1,1,1,1,1,1),(24,'ENT-0002','Reportar Novedades IESS / Horas Extras / Dias No Laborados','afiliados','mes siguiente',NULL,NULL,'1','Mensual','25',1,1,1,1,1,1,1,1,1,1),(25,'ENT-0003','Solicitud de Acumulacion de Decimos','empleados','periodo actual',NULL,NULL,'15','ENERO','31',1,1,1,1,1,1,1,1,1,1),(26,'ENT-0003','Formulario Decimo Tercero',NULL,NULL,NULL,NULL,'8','DICIEMBRE','31',1,1,1,1,1,1,1,1,1,1),(27,'ENT-0003','Formulario Decimo Cuarto',NULL,NULL,NULL,NULL,'8','Region','30',1,1,1,1,1,1,1,1,1,1),(28,'ENT-0003','Formulario Utilidades / Digno',NULL,NULL,NULL,NULL,'15','MAYO','31',0,0,0,0,1,1,1,1,1,1),(29,'ENT-0004','Registro Tecnico Responsable SSO','periodo actual',NULL,NULL,NULL,'5','NOVIEMBRE','30',0,1,1,1,1,1,1,1,1,1),(30,'ENT-0004','Registro Medico Responsable SSO','empleados',NULL,'1','9','5','NOVIEMBRE','30',0,1,1,1,1,1,1,1,1,1),(31,'ENT-0004','Declaracion y Plan Accion Riesgos Laborales','empleados',NULL,'1','9','5','NOVIEMBRE','30',0,1,1,1,1,1,1,1,1,1),(32,'ENT-0004','Plan de Capacitaciones','empleados',NULL,'1','9','5','NOVIEMBRE','30',0,1,1,1,1,1,1,1,1,1),(33,'ENT-0004','Plan de Vigilacia de la Salud','empleados',NULL,'1','9','5','NOVIEMBRE','30',0,1,1,1,1,1,1,1,1,1),(34,'ENT-0004','Programa Prevencion Amenazas Naturales','empleados',NULL,'1','9','5','NOVIEMBRE','30',0,1,1,1,1,1,1,1,1,1),(35,'ENT-0005','Comite Paritario de SSO','periodo actual',NULL,'10','1000','5','NOVIEMBRE','30',0,1,1,1,1,1,1,1,1,1),(36,'ENT-0005','Reglamento de Higiene y Seguridad','empleados',NULL,'10','1000','5','NOVIEMBRE','30',0,1,1,1,1,1,1,1,1,1),(37,'ENT-0005','Programa Prevencion Uso y Consumo Drogas','empleados',NULL,'10','1000','5','NOVIEMBRE','30',0,1,1,1,1,1,1,1,1,1),(38,'ENT-0005','Programa Prevencion Riesgos Psicosociales','empleados',NULL,'10','1000','5','NOVIEMBRE','30',0,1,1,1,1,1,1,1,1,1),(39,'ENT-0005','Matriz de Riesgos','empleados',NULL,'10','1000','5','NOVIEMBRE','30',0,1,1,1,1,1,1,1,1,1),(40,'ENT-0005','Identificacion, Evaluacion y Valoracion de Riesgos Laborales','empleados',NULL,'10','1000','5','NOVIEMBRE','30',0,1,1,1,1,1,1,1,1,1),(41,'ENT-0005','Induccion y Adiestramento en puestos de trabajo','empleados',NULL,'10','1000','5','NOVIEMBRE','30',0,1,1,1,1,1,1,1,1,1),(42,'ENT-0006','Patente Municipal / Impuesto 1.5 sobre Activos','periodo actual',NULL,NULL,NULL,'','ENERO','31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'ENT-0006','Impuesto PREDIAL','periodo actual',NULL,NULL,NULL,'','ENERO','31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'ENT-0007','Anexo a DINARDAP',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,'ENT-0008','Anexo a UAFE',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'ENT-0008','Manual Prevencion Lavado de Activos',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'ENT-0006','Matriculas Vehiculos digito 1 2 3 4 5 6 7 8 9 0',NULL,NULL,NULL,NULL,'4','Mes','30',1,1,1,1,1,1,1,1,1,1),(48,'ENT-0009','Informe Comisario','periodo actual',NULL,NULL,NULL,'5','ABRIL','30',0,0,0,0,0,1,1,NULL,NULL,NULL),(49,'ENT-0009','Informe Gerente','periodo actual',NULL,NULL,NULL,'5','ABRIL','30',0,0,0,0,0,1,1,NULL,NULL,NULL),(50,'ENT-0009','Flujo Efectivo','periodo actual',NULL,NULL,NULL,'5','ABRIL','30',0,0,0,0,0,1,1,NULL,NULL,NULL),(51,'ENT-0009','Estado Cambios al Patrimonio','periodo actual',NULL,NULL,NULL,'5','ABRIL','30',0,0,0,0,0,1,1,NULL,NULL,NULL),(52,'ENT-0009','Notas Contables','periodo actual',NULL,NULL,NULL,'5','ABRIL','30',0,0,0,0,0,1,1,NULL,NULL,NULL),(53,'ENT-0009','Informe de Auditoria','periodo actual',NULL,NULL,NULL,'5','ABRIL','30',0,0,0,0,0,1,1,NULL,NULL,NULL),(54,'ENT-0009','Contratacion de Auditoria','periodo actual',NULL,NULL,NULL,'5','SEPTIEMBRE','30',0,0,0,0,0,1,1,NULL,NULL,NULL),(55,'ENT-0009','Pago de Contribucion Anual','periodo actual',NULL,NULL,NULL,'5','MAYO','31',0,0,0,0,0,1,1,NULL,NULL,NULL),(56,'ENT-0001','Declaracion IVA Semestral F104',NULL,NULL,NULL,NULL,'1','Semestral','D',0,0,0,1,0,0,0,0,0,0),(57,'ENT-0001','Declaracion Retenciones Semestral F103',NULL,NULL,NULL,NULL,'1','Semestral','D',0,0,0,1,0,0,0,0,0,0),(58,'ENT-0010','Contrato de trabajo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,'ENT-0010','Descargar XML','mes siguiente',NULL,NULL,NULL,'1','Mensual','D',0,0,1,0,1,1,1,1,1,1),(60,'ENT-0010','Contratos prueba',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0),(62,'ENT-0001','Declaracion IVA Mensual F104','mes siguiente',NULL,NULL,NULL,'1','Mensual','D',0,0,1,0,1,1,1,1,1,1);
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adjunto`
--

DROP TABLE IF EXISTS `adjunto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adjunto` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adjunto`
--

LOCK TABLES `adjunto` WRITE;
/*!40000 ALTER TABLE `adjunto` DISABLE KEYS */;
INSERT INTO `adjunto` VALUES (1,'Si'),(2,'No');
/*!40000 ALTER TABLE `adjunto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agenda_actividad`
--

DROP TABLE IF EXISTS `agenda_actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agenda_actividad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ruc` varchar(45) DEFAULT NULL,
  `id_actividad` int(11) DEFAULT NULL,
  `creado` date DEFAULT NULL,
  `vence` date DEFAULT NULL,
  `mes` varchar(45) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `fecha_finalizacion` datetime DEFAULT NULL,
  `fecha_aviso` date DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `periodo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda_actividad`
--

LOCK TABLES `agenda_actividad` WRITE;
/*!40000 ALTER TABLE `agenda_actividad` DISABLE KEYS */;
INSERT INTO `agenda_actividad` VALUES (61,'1719070292001',2,'2020-02-07','2020-08-31','AGOSTO','PENDIENTE',NULL,'2020-08-16',NULL,'2020'),(62,'1719070292001',5,'2020-02-07','2020-03-26','3','PENDIENTE',NULL,'2020-03-25',NULL,'2020'),(63,'1719070292001',12,'2020-02-07','2020-02-26','2','PENDIENTE',NULL,'2020-02-25',NULL,'2020'),(64,'1719070292001',18,'2020-02-07','2020-07-26','7','PENDIENTE',NULL,'2020-07-25',NULL,'2020'),(65,'1719070292001',19,'2020-02-07','2020-09-26','9','PENDIENTE',NULL,'2020-09-25',NULL,'2020'),(66,'1719070292001',26,'2020-02-07','2020-12-31','DICIEMBRE','PENDIENTE',NULL,'2020-12-23',NULL,'2020'),(67,'1719070292001',29,'2020-02-07','2020-11-30','NOVIEMBRE','PENDIENTE',NULL,'2020-11-25',NULL,'2020'),(68,'1719070292001',35,'2020-02-07','2020-11-30','NOVIEMBRE','PENDIENTE',NULL,'2020-11-25',NULL,'2020'),(69,'1719070292001',59,'2020-02-07','2020-02-26','ENERO','PENDIENTE',NULL,'2020-02-25',NULL,'2020'),(70,'1719070292001',59,'2020-02-07','2020-03-26','FEBRERO','PENDIENTE',NULL,'2020-03-25',NULL,'2020'),(71,'1719070292001',59,'2020-02-07','2020-04-26','MARZO','PENDIENTE',NULL,'2020-04-25',NULL,'2020'),(72,'1719070292001',59,'2020-02-07','2020-05-26','ABRIL','PENDIENTE',NULL,'2020-05-25',NULL,'2020'),(73,'1719070292001',59,'2020-02-07','2020-06-26','MAYO','PENDIENTE',NULL,'2020-06-25',NULL,'2020'),(74,'1719070292001',59,'2020-02-07','2020-07-26','JUNIO','PENDIENTE',NULL,'2020-07-25',NULL,'2020'),(75,'1719070292001',59,'2020-02-07','2020-08-26','JULIO','PENDIENTE',NULL,'2020-08-25',NULL,'2020'),(76,'1719070292001',59,'2020-02-07','2020-09-26','AGOSTO','PENDIENTE',NULL,'2020-09-25',NULL,'2020'),(77,'1719070292001',59,'2020-02-07','2020-10-26','SEPTIEMBRE','PENDIENTE',NULL,'2020-10-25',NULL,'2020'),(78,'1719070292001',59,'2020-02-07','2020-11-26','OCTUBRE','PENDIENTE',NULL,'2020-11-25',NULL,'2020'),(79,'1719070292001',59,'2020-02-07','2020-12-26','NOVIEMBRE','PENDIENTE',NULL,'2020-12-25',NULL,'2020'),(80,'1719070292001',59,'2020-02-07','2021-01-26','DICIEMBRE','PENDIENTE',NULL,'2021-01-25',NULL,'2020'),(81,'1719070292001',62,'2020-02-07','2020-02-26','ENERO','PENDIENTE',NULL,'2020-02-25',NULL,'2020'),(82,'1719070292001',62,'2020-02-07','2020-03-26','FEBRERO','PENDIENTE',NULL,'2020-03-25',NULL,'2020'),(83,'1719070292001',62,'2020-02-07','2020-04-26','MARZO','PENDIENTE',NULL,'2020-04-25',NULL,'2020'),(84,'1719070292001',62,'2020-02-07','2020-05-26','ABRIL','PENDIENTE',NULL,'2020-05-25',NULL,'2020'),(85,'1719070292001',62,'2020-02-07','2020-06-26','MAYO','PENDIENTE',NULL,'2020-06-25',NULL,'2020'),(86,'1719070292001',62,'2020-02-07','2020-07-26','JUNIO','PENDIENTE',NULL,'2020-07-25',NULL,'2020'),(87,'1719070292001',62,'2020-02-07','2020-08-26','JULIO','PENDIENTE',NULL,'2020-08-25',NULL,'2020'),(88,'1719070292001',62,'2020-02-07','2020-09-26','AGOSTO','PENDIENTE',NULL,'2020-09-25',NULL,'2020'),(89,'1719070292001',62,'2020-02-07','2020-10-26','SEPTIEMBRE','PENDIENTE',NULL,'2020-10-25',NULL,'2020'),(90,'1719070292001',62,'2020-02-07','2020-11-26','OCTUBRE','PENDIENTE',NULL,'2020-11-25',NULL,'2020'),(91,'1719070292001',62,'2020-02-07','2020-12-26','NOVIEMBRE','PENDIENTE',NULL,'2020-12-25',NULL,'2020'),(92,'1719070292001',62,'2020-02-07','2021-01-26','DICIEMBRE','PENDIENTE',NULL,'2021-01-25',NULL,'2020');
/*!40000 ALTER TABLE `agenda_actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anos`
--

DROP TABLE IF EXISTS `anos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anos` (
  `id_ano` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_ano`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anos`
--

LOCK TABLES `anos` WRITE;
/*!40000 ALTER TABLE `anos` DISABLE KEYS */;
INSERT INTO `anos` VALUES (10,'2018'),(11,'2017'),(13,'2016'),(15,'2019');
/*!40000 ALTER TABLE `anos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aprobacion`
--

DROP TABLE IF EXISTS `aprobacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aprobacion` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aprobacion`
--

LOCK TABLES `aprobacion` WRITE;
/*!40000 ALTER TABLE `aprobacion` DISABLE KEYS */;
INSERT INTO `aprobacion` VALUES (1,'Si'),(2,'No');
/*!40000 ALTER TABLE `aprobacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asesores`
--

DROP TABLE IF EXISTS `asesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asesores` (
  `id_asesor` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_asesor`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asesores`
--

LOCK TABLES `asesores` WRITE;
/*!40000 ALTER TABLE `asesores` DISABLE KEYS */;
INSERT INTO `asesores` VALUES (2,'Marlon B'),(3,'VERONICA B');
/*!40000 ALTER TABLE `asesores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caducidad`
--

DROP TABLE IF EXISTS `caducidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caducidad` (
  `idcaducidad` int(11) NOT NULL AUTO_INCREMENT,
  `producto` varchar(45) DEFAULT NULL,
  `version` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`idcaducidad`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caducidad`
--

LOCK TABLES `caducidad` WRITE;
/*!40000 ALTER TABLE `caducidad` DISABLE KEYS */;
INSERT INTO `caducidad` VALUES (1,'SACIJAVA','12.67','2019-06-18'),(2,'SACIJAVA','12.99','2020-07-18'),(3,'SACIANEX','10.1','2020-06-10'),(4,'SACIJAVA','14.02.03','2020-10-25');
/*!40000 ALTER TABLE `caducidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudades` (
  `id_ciudad` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudades`
--

LOCK TABLES `ciudades` WRITE;
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;
INSERT INTO `ciudades` VALUES (3,'Quininde'),(4,'Santo Domingo'),(5,'Quito'),(6,'La Concordia'),(7,'El Carmen'),(8,'Esmeraldas'),(9,'Quevedo'),(10,'Atacames'),(11,'GUAYAQUIL'),(12,'MACHala'),(13,'buena fe');
/*!40000 ALTER TABLE `ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_adicionales`
--

DROP TABLE IF EXISTS `cliente_adicionales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_adicionales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ruc` varchar(15) DEFAULT NULL,
  `dato1` varchar(100) DEFAULT NULL,
  `dato2` varchar(100) DEFAULT NULL,
  `dato3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_adicionales`
--

LOCK TABLES `cliente_adicionales` WRITE;
/*!40000 ALTER TABLE `cliente_adicionales` DISABLE KEYS */;
INSERT INTO `cliente_adicionales` VALUES (1,'1713451456001','Clave de firma','Milan123','Certificado adicional de instalacion'),(2,'2300301054001','TeamViewr','12345678','65432'),(3,'1719070292001','TEAM 10','ID1765263 234','123456789'),(4,'1721327094001','TEAMVIEWERS','1140838410','1138787712'),(5,'2350554545001','CORREO SRI','recicladostgo@gmail.com','ReciclandoMVP'),(6,'1001707510001','VEN- Fisicas','COM- Fisicas y Electronicas','Planilla IESS - Rol de pagos hasta el 5'),(8,'1001707510001','VEN- Fisicas','COM- Fisicas y Electronicas','Planilla IESS - Rol de pagos hasta el 5');
/*!40000 ALTER TABLE `cliente_adicionales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_categoria`
--

DROP TABLE IF EXISTS `cliente_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_categoria` (
  `id_categoria` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_categoria`
--

LOCK TABLES `cliente_categoria` WRITE;
/*!40000 ALTER TABLE `cliente_categoria` DISABLE KEYS */;
INSERT INTO `cliente_categoria` VALUES (2,'PN No Obligado'),(3,'PN Obligado'),(9,'PN Rise'),(11,'PN Empleado'),(12,'Pjuridica SA'),(13,'Pjuridica CIALTDA'),(14,'Pjuridica SinFinLucro'),(15,'Pjuridica SEPS FINAN'),(16,'Pjuridica SEPS NoFinan'),(17,'PN Semestral');
/*!40000 ALTER TABLE `cliente_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_documentos`
--

DROP TABLE IF EXISTS `cliente_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_documentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ruc` varchar(13) DEFAULT NULL,
  `id_doc` int(11) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `num_inicio` varchar(45) DEFAULT NULL,
  `num_fin` varchar(45) DEFAULT NULL,
  `aut` varchar(45) DEFAULT NULL,
  `ruc_imprenta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_documentos`
--

LOCK TABLES `cliente_documentos` WRITE;
/*!40000 ALTER TABLE `cliente_documentos` DISABLE KEYS */;
INSERT INTO `cliente_documentos` VALUES (1,'123456789',1,'2019-08-13','2019-08-31','1234','9999','134567','2300301054001'),(2,'2300301054001',1,'2019-08-17','2019-08-18','0030040000001234','0030040000009999','1234567890','1719070292001'),(3,'1719070292001',1,'2019-02-01','2020-01-31','003001000435','003001000555','123456781','1719079282');
/*!40000 ALTER TABLE `cliente_documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_grupo`
--

DROP TABLE IF EXISTS `cliente_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_grupo` (
  `id_grupo` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_grupo`
--

LOCK TABLES `cliente_grupo` WRITE;
/*!40000 ALTER TABLE `cliente_grupo` DISABLE KEYS */;
INSERT INTO `cliente_grupo` VALUES (9,'BB - Mensual'),(10,'BB - Semestral'),(11,'Java'),(12,'XML -Organizador'),(13,'RISE'),(14,'AMELIA'),(15,'RECICLADORAS'),(16,'GRUPO RECICLADORAS');
/*!40000 ALTER TABLE `cliente_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_identificacion`
--

DROP TABLE IF EXISTS `cliente_identificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_identificacion` (
  `id_identificacion` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_identificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_identificacion`
--

LOCK TABLES `cliente_identificacion` WRITE;
/*!40000 ALTER TABLE `cliente_identificacion` DISABLE KEYS */;
INSERT INTO `cliente_identificacion` VALUES (2,'Cedula'),(3,'pasaporte'),(4,'RUC');
/*!40000 ALTER TABLE `cliente_identificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_tipo`
--

DROP TABLE IF EXISTS `cliente_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_tipo` (
  `id_tipo` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_tipo`
--

LOCK TABLES `cliente_tipo` WRITE;
/*!40000 ALTER TABLE `cliente_tipo` DISABLE KEYS */;
INSERT INTO `cliente_tipo` VALUES (2,'BB - Mensual'),(5,'BB - Semestral'),(8,'Java'),(9,'XML -Organizador'),(11,'RISE'),(12,'AMELIA'),(13,'RECICLADORAS'),(14,'GRUPO RECICLADORAS');
/*!40000 ALTER TABLE `cliente_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id_cliente` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_registro` varchar(20) DEFAULT NULL,
  `razon_social` varchar(100) DEFAULT NULL,
  `nombre_comercial` varchar(100) DEFAULT NULL,
  `categoria` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `ruc` varchar(30) DEFAULT NULL,
  `usuario_asignado` varchar(40) DEFAULT NULL,
  `cedula` varchar(20) DEFAULT NULL,
  `tipo_cliente` varchar(20) DEFAULT NULL,
  `grupo_cliente` varchar(20) DEFAULT NULL,
  `representante_legal` varchar(100) DEFAULT NULL,
  `direccion` varchar(300) DEFAULT NULL,
  `telefono1` varchar(20) DEFAULT NULL,
  `telefono2` varchar(20) DEFAULT NULL,
  `telefono3` varchar(20) DEFAULT NULL,
  `telefono4` varchar(20) DEFAULT NULL,
  `correo1` varchar(100) DEFAULT NULL,
  `correo2` varchar(100) DEFAULT NULL,
  `ciudad` varchar(40) DEFAULT NULL,
  `contacto` varchar(40) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `digito` varchar(11) DEFAULT NULL,
  `orden` int(10) DEFAULT NULL,
  `sri` varchar(20) DEFAULT NULL,
  `iess_domestico` varchar(30) DEFAULT NULL,
  `iess_empresa` varchar(30) DEFAULT NULL,
  `iess_afiliado` varchar(30) DEFAULT NULL,
  `mrl1` varchar(30) DEFAULT NULL,
  `mrl2` varchar(30) DEFAULT NULL,
  `supercias_usuario` varchar(30) DEFAULT NULL,
  `supercias_clave` varchar(30) DEFAULT NULL,
  `valor` varchar(30) DEFAULT NULL,
  `foto_ruc` varchar(100) DEFAULT NULL,
  `foto_cedula` varchar(100) DEFAULT NULL,
  `mascara_ruc` varchar(10) DEFAULT NULL,
  `mascara_cedula` varchar(10) DEFAULT NULL,
  `asesor` varchar(80) DEFAULT NULL,
  `empleados` int(5) DEFAULT NULL,
  `municipio_clave` varchar(45) DEFAULT NULL,
  `ussercop` varchar(45) DEFAULT NULL,
  `claversercop` varchar(40) DEFAULT NULL,
  `clavebombero` varchar(40) DEFAULT NULL,
  `actividadruc` varchar(800) DEFAULT NULL,
  `contador` varchar(40) DEFAULT NULL,
  `descripcion` varchar(40) DEFAULT NULL,
  `detalle1` varchar(40) DEFAULT NULL,
  `detalle2` varchar(40) DEFAULT NULL,
  `emisor` varchar(10) DEFAULT 'no',
  `base_imponible` varchar(5) DEFAULT NULL,
  `declaracion_patrimonial` varchar(5) DEFAULT NULL,
  `afiliados` varchar(5) DEFAULT NULL,
  `digito_placa` int(11) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=824 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (750,'40544','BEDON CASTILLO MARLON','B&B','PN No Obligado','Activo','1719070292001','vcburgos',NULL,'BB - Mensual','BB - Mensual',NULL,'RV, VILLA','22762190',NULL,NULL,NULL,'mdbc11@hotmail.com',NULL,'Santo Domingo',NULL,NULL,'9',26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'CONTADOR','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(751,'43466','BEDON VANESSA','SEDIMA','PN Obligado','Activo','2300057433001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'TSAFIQUI Y TULCAN','997519117',NULL,NULL,NULL,'sedimacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'3',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'M69200901 OTRAS ACTIVIDADES DE CONTABILIDAD, TENEDURÃA DE LIBROS.','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(752,'42786','AVILES CARDENAS CARLOS','EL COLIBRI','PN Obligado','Activo','1712464187001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'AV LORENA','23794640',NULL,NULL,NULL,'hmarilopez@outlook.com',NULL,'Santo Domingo',NULL,NULL,'8',24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',3,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(753,'43770','CASTILLO VARGAS NELLY','MAMI NELLY','PN No Obligado','Activo','1707691828001','selenab',NULL,'BB - Mensual','BB - Mensual',NULL,'SANTO DOMINGO','22754056',NULL,NULL,NULL,'sedimacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'2',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'SERVICIOS INFORMATICOS','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(754,'42787','AYALA VILLACRES MARTA GEOVITA','AYALA VILLACRES MARTA GEOVITA','PN Semestral','Activo','1706499280001','vcburgos',NULL,'BB - Semestral','BB - Semestral',NULL,'LOS JAZMINES NÃ‚Â°137 Y CEIBOS ','22762235',NULL,NULL,NULL,'majito_493@hotmail.com ',NULL,'Santo Domingo',NULL,NULL,'8',24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(755,'','BENAVIDES ANIBAL','BENAVIDES ANIBAL','PN Obligado','Activo','1001707510001','erika','','BB - Mensual','BB - Mensual','','SANTO DOMINGO','992415881','',NULL,NULL,'aniar2@hotmail.com',NULL,'Santo Domingo',NULL,NULL,'1',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'VERONICA B',0,NULL,NULL,NULL,NULL,'TRANSPORTISTA','1',NULL,NULL,NULL,'no','SI','SI','SI',NULL,'SIERRA'),(756,'42794','FIERRO VELA EDITH','DIFACRIL','PN No Obligado','Activo','1712378320001','dalvarado',NULL,'BB - Mensual','BB - Mensual',NULL,'AV. ABRAHAM CALAZACON','986354940',NULL,NULL,NULL,'edith_b.s@hotmail.com',NULL,'Santo Domingo',NULL,NULL,'2',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(757,'43101','BEDON CASTILLO DIANA CAROLINA','BEDON CASTILLO DIANA CAROLINA','PN No Obligado','Activo','1724904337001','vcburgos',NULL,'BB - Mensual','BB - Mensual',NULL,'6 DE NOVIEMBRE Y LATACUNGA','985426356',NULL,NULL,NULL,'dianna_bc1994@hotmail.com',NULL,'Quininde',NULL,NULL,'3',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'CONTADOR','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(758,'43833','MARCO SIDEL PACHECO','GRAFICAS','PN Semestral','Activo','1708400831001','admin',NULL,'BB - Semestral','BB - Semestral',NULL,'SANTO DOMINGO','22762190',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'3',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'VERONICA B',0,NULL,NULL,NULL,NULL,'IMPRENTA','2',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(759,'42794','FERNANDO CEDENO','FERNANDO CEDENO','PN Obligado','Activo','1707821136001','vcburgos',NULL,'BB - Mensual','BB - Mensual',NULL,'SANTO DOMINGO','22762190',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'3',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'VERONICA B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(760,'42794','ULLOA MENESES LUIS JAVIER','SERVICIOS INFORMATICOS PROFESIONALES','PN No Obligado','Activo','1718964768001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'SANTO DOMINGO','22762190',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'6',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(761,'42794','FREDDY LOPEZ','TECNOSOFT','PN No Obligado','Activo','0201381662001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'AV. LA LORENA ','999934547',NULL,NULL,NULL,'ts_ec@hotmail.com',NULL,'Quito',NULL,NULL,'6',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'VERONICA B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(762,'42794','RIERA NORBERTO','IMPRENTA RIERA','PN Obligado','Activo','1706551163001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'AV. QUEVEDO, FRENTE GASOLINERA','989456361',NULL,NULL,NULL,'imprentariera@hotmail.com',NULL,'Santo Domingo',NULL,NULL,'6',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'VERONICA B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(763,'42794','PONCE PARRAGA NILMA DEL ROSARI','RESTAURANTE COSTA NORTE','PN No Obligado','Activo','1307296788001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'FRENTE TERMINAL','981617338',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'8',24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',1,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(764,'42794','GUZMAN BENITEZ CRISTIAN MAURIC','BOUTIQUE MAKANA','PN No Obligado','Activo','1711215986001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'V. CHONE LOTE 5 Y CALLE K','2762190',NULL,NULL,NULL,'mauro_87@hotmail.com',NULL,'Santo Domingo',NULL,NULL,'8',24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(765,'42794','SILVA CABRERA JOSE FRANCISCO','CYBERIA','PN No Obligado','Activo','1712976396001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'LA LIBERTAD / 14 S/N Y CALLE 15','2762190',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Quito',NULL,NULL,'9',26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(766,'43466','ANGULO VERONICA','ABOGADA - VERANGPAZ','PN No Obligado','Activo','1716575194001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'RIO TOACHI Y AV QUITO','967638795',NULL,NULL,NULL,'veroharo-6@hotmail.com',NULL,'Quito',NULL,NULL,'9',26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'ACTIVIDADES JURIDICAS.','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(767,'42794','VERANGPAZ S.A','VERANGPAZ S.A','Pjuridica SA','Activo','2390005329001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'RIO TOACHI Y AV QUITO','967638795',NULL,NULL,NULL,'veroharo-6@hotmail.com',NULL,'Quito',NULL,NULL,'2',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(768,'42794','CONSULTORIA BEDON & BURGOS','CONSULTORIA BEDON & BURGOS','Pjuridica CIALTDA','Activo','1792535662001','vcburgos',NULL,'BB - Mensual','BB - Mensual',NULL,'RC MASA 1722186937001 JEFF2013','22762190',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'6',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'VERONICA B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no','no','no','si',NULL,NULL),(769,'42794','CONSTRUCTORA STO DGO TSAFIQUI','CONSTRUCTORA STO DGO TSAFIQUI','Pjuridica SinFinLucro','Activo','1792688574001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'SANTO DOMINGO','22762190',NULL,NULL,NULL,'tyrone1925@gmail.com',NULL,'Santo Domingo',NULL,NULL,'7',22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(770,'43466','GALLARDO BUSTILLOS GENESIS EST','GALLARDO BUSTILLOS GENESIS ESTEFANIA','PN Obligado','Activo','1724715519001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'SANTO DOMINGO','22762190',NULL,NULL,NULL,'estefania-gb@hotmail.com',NULL,'Santo Domingo',NULL,NULL,'1',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'VENTA AL POR MENOR DE GRAN VARIEDAD DE PRODUCTOS EN TIENDA','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(771,'42794','BARRAGAN GABRIEL','DIFACRIL','PN Semestral','Activo','1710248020001','admin',NULL,'BB - Semestral','BB - Semestral',NULL,'AV. ABRAHAM CALAZACON','986354940',NULL,NULL,NULL,'edith_b.s@hotmail.com',NULL,'Santo Domingo',NULL,NULL,'2',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(772,'42794','PAZ AZANSA TYRONE WILLIAM','PAZ AZANSA TYRONE WILLIAM','PN No Obligado','Activo','1707989339001','vcburgos',NULL,'BB - Mensual','BB - Mensual',NULL,'BOGOTA S/N Y LOS CEIBOS','985118042',NULL,NULL,NULL,'tyrone1925@gmail.com',NULL,'Santo Domingo',NULL,NULL,'3',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(773,'42794','MEDINA INIGUEZ HOLGER ANDREY','MEDICOS ESPECIALISTAS','PN Semestral','Activo','1704192051001','dalvarado',NULL,'BB - Semestral','BB - Semestral',NULL,'SANTO DOMINGO','22762190',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'5',18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(774,'42794','GALLARDO BUSTILLOS JOSE OSWALD','GALLARDO BUSTILLOS JOSE OSWALDO','PN Semestral','Activo','1719782565001','admin',NULL,'BB - Semestral','BB - Semestral',NULL,'SANTO DOMINGO','22762190',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'6',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(775,'43466','BUSTILLOS VENEGAS JUANA YOLAND','BUSTILLOS VENEGAS JUANA YOLANDA','PN Obligado','Activo','0501635684001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'SANTO DOMINGO','22762190',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'8',24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'VENTA AL POR MENOR DE CARNE (INCLUIDOS LOS DE AVES DE CORRAL) EN ESTABLECIMIENTOS ESPECIALIZADOS.','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(776,'','AFLOCOM CIA LTDA','AFLOCON CIA LTDA.','Pjuridica CIALTDA','Activo','1791062434001','admin','','BB - Mensual','BB - Mensual','','BY PASS QUITO - ESMERALDAS','997809528','',NULL,NULL,'audicont_system@hotmail.com',NULL,'Santo Domingo',NULL,NULL,'3',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Marlon B',10,NULL,NULL,NULL,NULL,'CONTRUCTORA','1',NULL,NULL,NULL,'no','NO','SI','NO',NULL,'SIERRA'),(777,'43809','CALVOPINA DANIEL','INTERBASES','PN No Obligado','Activo','1708190911001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'QUITO','2232312',NULL,NULL,NULL,'mdbc11@hotmail.com',NULL,'Quito',NULL,NULL,'1',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'REPARACIÃ“N Y MANTENIMIENTO DE: COMPUTADORAS DE ESCRITORIO, COMPUTADORAS PORTÃTILES, SERVIDORES INFORMÃTICOS, COMPUTADORAS DE MANO (ASISTENTES DIGITALES PERSONALES), UNIDADES DE','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(778,'42802','CONSTRUCTORA USHCA','CONSTRUCTORA USHCA','Pjuridica CIALTDA','Activo','2390029406001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'santo domingo','22762190',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'0',28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(779,'42802','VENEGAS MARIA UBALDINA - SRA J','VENEGAS MARIA UBALDINA - SRA JUANA','PN No Obligado','Activo','0500458823001','dalvarado',NULL,'BB - Mensual','BB - Mensual',NULL,'santo domingo','22762190',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'2',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(780,'42802','ECUACAMINOS SA','ECUACAMINOS SA','Pjuridica SA','Activo','0992440139001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'santo domingo','22762190',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'3',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(781,'42803','JIMMY CHUCUYAN','JIMMY CHUCUYAN','PN No Obligado','Activo','2300065147001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'SANTO DOMINGO','22762190',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'4',16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(782,'42803','ROBERTO VEGA','ROBERTO VEGA','PN No Obligado','Activo','1722351564001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'SANTO DOMINGO','22762190',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'6',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(783,'43466','ASOCIACION MIFERIA SOLIDARIA','ASOCIACION MIFERIA SOLIDARIA','PN No Obligado','Activo','2390014271001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'SANTO DOMINGO','22762190',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'7',22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'ACTIVIDADES DE ASOCIACIONES GREMIALES.','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(784,'43791','MENDOZA CARMEN BOBF','MENDOZA CARMEN BOBF','PN No Obligado','Activo','1704854171001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'SANTO DOMINGO','22762190',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'7',22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'VENTA AL POR MENOR POR COMISIONISTAS (NO DEPENDIENTES DE COMERCIOS); INCLUYE ACTIVIDADES DE CASAS DE SUBASTAS (AL POR MENOR).','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(785,'42803','CARRION AMPARO','CARRION AMPARO','PN No Obligado','Activo','1721370177001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'SANTO DOMINGO','22762190',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'7',22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(786,'42803','ODINBUKL SA','ODINBUKL SA','Pjuridica SA','Activo','0992877707001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'SANTO DOMINGO','22762190',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'0',28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(787,'43739','MARQUINES RUBEN DARIO','MARQUINES RUBEN DARIO','PN No Obligado','Activo','0909402323001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'SANTO DOMINGO','22762190',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'2',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'VENTA DE COMIDAS Y BEBIDAS EN RESTAURANTES, INCLUSO PARA LLEVAR','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(788,'42812','VEGAS CASTILLO PAOLA','PAOLA VEGA','PN Obligado','Activo','1719070367001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'SANTO DOMINGO','22762190',NULL,NULL,NULL,'plvegac1994@gmail.com',NULL,'Santo Domingo',NULL,NULL,'6',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(789,'43466','BEDON CASTILLO SELENA BELEN','BEDON CASTILLO SELENA','PN No Obligado','Activo','2300384134001','selenab',NULL,'BB - Mensual','BB - Mensual',NULL,'LIB. POPULAR','988345433',NULL,NULL,NULL,'selena198785@hotmail.com',NULL,'Santo Domingo',NULL,NULL,'3',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'SISTEMAS','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(790,'42821','YAGUANA ESPINOZA EDWIN FERNAND','YAGUANA ESPINOZA EDWIN FERNANDO','PN No Obligado','Activo','1105087140001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'SANTO DOMINGO','22762190',NULL,NULL,NULL,'mdbc11@hotmail.com',NULL,'Santo Domingo',NULL,NULL,'4',16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(791,'42821','CALDERON PALACIOS RONALD ANTON','CALDERON PALACIOS RONALD ANTONIO','PN No Obligado','Activo','1713110169001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'SANTO DOMINGO','22762190',NULL,NULL,NULL,'mdbc11@hotmail.com',NULL,'Santo Domingo',NULL,NULL,'6',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(792,'42835','CONSORCIO A.S','CONSORCIO A.S','Pjuridica SinFinLucro','Activo','2390020239001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'MACARA','0',NULL,NULL,NULL,'0',NULL,'Santo Domingo',NULL,NULL,'3',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(793,'42847','ANDREA VERA BOBF','ANDREA VERA','PN No Obligado','Activo','1719787796001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'0','0',NULL,NULL,NULL,'0',NULL,'Santo Domingo',NULL,NULL,'9',26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(794,'42850','PROMOTORA DEPORTIVA SEVEN & SP','PROMOTORA DEPORTIVA SEVEN & SPORTS SEP ','Pjuridica SA','Activo','2390031036001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'santo domingo','0',NULL,NULL,NULL,'mdbc11@hotmail.com',NULL,'Quito',NULL,NULL,'3',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(795,'42856','DAVID CEDENO','DAVID CEDENO','PN Semestral','Activo','1713961777001','admin',NULL,'BB - Semestral','BB - Semestral',NULL,'0','0',NULL,NULL,NULL,'0',NULL,'Santo Domingo',NULL,NULL,'7',22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(796,'42927','JORGE USHCA','JORGE USHCA','PN No Obligado','Activo','1716094535001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'0','0',NULL,NULL,NULL,'0',NULL,'Quito',NULL,NULL,'3',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(797,'43791','RENGIFO MIELES OLGA LIDIA','MUNDO GRAFICO','PN No Obligado','Activo','1711339471001','cedacont',NULL,'BB - Mensual','BB - Mensual',NULL,'ANTEPARA E4 E4 - 24 Y LEON RIERA','999883661',NULL,NULL,NULL,'olguirengifo@gmail.com',NULL,'Quito',NULL,NULL,'7',22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'VERONICA B',0,NULL,NULL,NULL,NULL,'ENCUADERNACION Y PRODUCCION DE CARACTERES DE IMPRENTA COMPUESTOS, PLANCHAS O CILINDROS DE IMPRESION PREPARADOS, PIEDRAS LITOGRAFICAS IMPRESAS U OTROS MEDIOS IMPRESOS DE REPRODUCCION PARA SU UTILIZACION POR OTRAS IMPRENTAS.','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(798,'42946','ASOCIACION LA MAGDALENA','ASOCIACION LA MAGDALENA','Pjuridica SinFinLucro','Activo','1791166256001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'tras restaurante sra nilma','0',NULL,NULL,NULL,'0',NULL,'Santo Domingo',NULL,NULL,'5',18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(799,'42971','BARRAGAN SOLORZANO LENIN FERNA','BARRAGAN SOLORZANO LENIN FERNANDO','PN No Obligado','Activo','1723273932001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'COOP SANTA MARTHA','996072418',NULL,NULL,NULL,'ferlen@hotmail.es',NULL,'Santo Domingo',NULL,NULL,'3',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(800,'43014','ALVARIO ZUNIGA SERGIO EDUARDO','BOOFY','PN No Obligado','Activo','1718739442001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'0','0',NULL,NULL,NULL,'0',NULL,'Quito',NULL,NULL,'4',16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(801,'43028','VALLADARES HARO MARIA DEL PILA','ADMIN ASOCIACION LA MAGDALENA','PN Semestral','Activo','1709159766','admin',NULL,'BB - Semestral','BB - Semestral',NULL,'0','0',NULL,NULL,NULL,'0',NULL,'Quito',NULL,NULL,'5',18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(802,'43466','DELGADO BERMELLO GRACIELA EDUV','CLIENTE BOBF REFERENCIA','PN Semestral','Activo','1310187081001','admin',NULL,'BB - Mensual','BB - Semestral',NULL,'0','0',NULL,NULL,NULL,'mdbc11@hotmail.com',NULL,'Santo Domingo',NULL,NULL,'8',24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'A','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(803,'43070','SMART CLEANING SOCIEDAD HECHO','SMART CLEANING SOCIEDAD HECHO','Pjuridica SinFinLucro','Activo','1792728010001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'0','0',NULL,NULL,NULL,'0',NULL,'Santo Domingo',NULL,NULL,'1',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(804,'43115','CONSORCIO VIAL AV','CONSORCIO VIAL AV','Pjuridica SinFinLucro','Activo','2390034906001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'0','0',NULL,NULL,NULL,'0',NULL,'Santo Domingo',NULL,NULL,'0',28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(805,'43139','VILES & LUZURIAGA ALCOCONSSTRUCTORES CIA','VILES & LUZURIAGA ALCOCONSSTRUCTORES CIA','Pjuridica CIALTDA','Activo','2390036518001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'0','0',NULL,NULL,NULL,'0',NULL,'Quito',NULL,NULL,'1',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(806,'43186','ASOCIACION DE EXPENDEDORES DE CARNE','ASOCIACION DE EXPENDEDORES DE CARNE','Pjuridica SinFinLucro','Activo','1790957527001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'0','0',NULL,NULL,NULL,'0',NULL,'Quito',NULL,NULL,'2',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(807,'43851','MULTICOMERCIO FEZARDIEL CIA LTDA','MULTICOMERCIO FEZARDIEL CIA LTDA','Pjuridica CIALTDA','Activo','2390038510001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'0','0',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Quito',NULL,NULL,'1',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'BEBIDAS','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(808,'43263','SMARTCLEANING COMPANIA SA','SMARTCLEANING COMPANIA SA','Pjuridica SA','Activo','2390039282001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'0','0',NULL,NULL,NULL,'0',NULL,'Quito',NULL,NULL,'8',24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(809,'43284','CEDENO VELIZ EITEL EDUARDO','AMIGO EMERSHOW','PN No Obligado','Activo','1308878980001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'0','0',NULL,NULL,NULL,'0',NULL,'Quito',NULL,NULL,'8',24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(810,'43335','VALERIA RAMON','AMIGA VANE','PN No Obligado','Activo','1722474259001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'Av 10 de agosto','0',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Quito',NULL,NULL,'5',18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(811,'43384','CONSORCIO AFLOCON JR','CONSORCIO AFLOCON JR','Pjuridica SinFinLucro','Activo','2390041163001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'SANTO DOMINGO','2202190',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'6',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',2,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(812,'43466','GUERRERO OJEDA ZANDRA ELIZA','GUERRERO OJEDA ZANDRA ELIZA','PN Semestral','Activo','1710151000001','admin',NULL,'BB - Mensual','BB - Semestral',NULL,'sa','22',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'0',28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',2,NULL,NULL,NULL,NULL,'TRANSPORTE','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(813,'43444','DANIEL CEDENO','DANIEL CEDENO ','PN No Obligado','Activo','1713961785001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'sa','22',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Quito',NULL,NULL,'8',24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',2,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(814,'43453','IVONNE GUAMAN','IVONNE GUAMAN','PN No Obligado','Activo','1724716533001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'sa','22',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Quito',NULL,NULL,'3',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',2,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(815,'43469','CONSORCIO AFLOCOM GAF','CONSORCIO AFLOCOM GAF','Pjuridica SinFinLucro','Activo','1792917700001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'s','22',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Quito',NULL,NULL,'0',28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',2,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(816,'43536','CARRENO BARBERAN CAROLINA','REFERENCIA BOB ','PN No Obligado','Activo','2300062235001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'ST','222',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'3',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',2,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(817,'43629','INTERBASES CIA LTDA','INTERBASES CIA LTDA','Pjuridica CIALTDA','Activo','1791804481001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'0','0',NULL,NULL,NULL,'0',NULL,'Quito',NULL,NULL,'8',24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(818,'43687','ANDINO MONTERO ALEXIS ALFREDO','ANDINO MONTERO ALEXIS ALFREDO','PN No Obligado','Activo','2300301054001','alexis',NULL,'BB - Mensual','BB - Mensual',NULL,'AV. SERGIO DAVILA Y COTOPAXI','986563343',NULL,NULL,NULL,'alexisandinom@hotmail.com',NULL,'Santo Domingo',NULL,NULL,'5',18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',1,NULL,NULL,NULL,NULL,'SOPORTE','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(819,'43669','CONSORCIO UNIVIAL','CONSORCIO UNIVIAL','Pjuridica SinFinLucro','Activo','2390049989001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'st','22',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Quito',NULL,NULL,'8',24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',2,NULL,NULL,NULL,NULL,'NULL','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(820,'43466','BENAVIDES CEVALLOS DEIVY','BENAVIDES CEVALLOS DEIVY','PN No Obligado','Activo','2300410699001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'ST','22',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Quito',NULL,NULL,'9',26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',2,NULL,NULL,NULL,NULL,'TRANSPORTE','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(821,'43769','ERIKA ORTEGA MENDOZA','ERIKA ORTEGA MENDOZA','PN Rise','Activo','2300269830001','admin',NULL,'BB - Mensual','BB - Mensual',NULL,'COOP EL LIBERTADOR','996677514',NULL,NULL,NULL,'erika.ortegam03@gmail.com',NULL,'Santo Domingo',NULL,NULL,'3',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'SERVICIOS ADMINISTRATIVOS','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(822,'43789','MISHELL ANDREA VEGA MENDOZA','MISHELL ANDREA VEGA MENDOZA','PN No Obligado','Activo','2300403330001','vcburgos',NULL,'BB - Mensual','BB - Mensual',NULL,'SANTO DOMINGO','939648844',NULL,NULL,NULL,'cedacont@gmail.com',NULL,'Santo Domingo',NULL,NULL,'3',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marlon B',0,NULL,NULL,NULL,NULL,'VENTA DE VARIOS','1',NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL),(823,'2020-01-01','BRITO ZUNIGA FAUSTO CORNELIO','PRUEBA1','PN Obligado	','Activo','0602431512001','vcburgos','','BB - Mensual','BB - Mensual','','SANTO DOMINGO DE LOS TSACHILAS VIA QUEVEDO JOSE ANTE 305','','',NULL,NULL,'',NULL,'Quininde',NULL,NULL,'1',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Marlon B',NULL,NULL,NULL,NULL,NULL,'VENTA AL POR MAYOR DE CAFÉ, CACAO, TE Y ESPECIAS.','1',NULL,NULL,NULL,'no','SI\r\n	','NO','SI',NULL,'COSTA');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_productos`
--

DROP TABLE IF EXISTS `clientes_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes_productos` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `idclientes` varchar(13) DEFAULT NULL,
  `idtarea` int(11) DEFAULT NULL,
  `fecharegistro` date DEFAULT NULL,
  `fechainicio` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `id_caducidad` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `equipos` int(11) DEFAULT NULL,
  `observacion` varchar(500) DEFAULT NULL,
  `anualidad` decimal(10,2) DEFAULT NULL,
  `vendedor` varchar(45) DEFAULT NULL,
  `control` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_productos`
--

LOCK TABLES `clientes_productos` WRITE;
/*!40000 ALTER TABLE `clientes_productos` DISABLE KEYS */;
INSERT INTO `clientes_productos` VALUES (1,'2300301054001',14091,'2019-08-10','2019-08-01','2019-08-31',NULL,200.00,12,'Tarea prueba alexis fin',12.00,'1719070292001','No notificado'),(2,'0703295535001',14112,'2019-08-14','2019-08-13','2020-08-13',2,900.00,2,'INSTALACION SACIJAVA LICENCIA EXPRESS',112.00,'1719070292001','No notificado SACI'),(3,'1791836154001',14115,'2019-08-22','2019-08-12','2020-08-12',NULL,140.00,4,'SE INSTALO EN UN TOTAL DE 4 MAQUINAS LICENCIADO POR 12 MESES',140.00,'1719070292001','No notificado'),(4,'0500615273001',14182,'2019-08-22','2019-01-10','2020-01-10',2,0.00,3,'AV ESMERALDAS DIANITEX',100.00,'1719070292001','No notificado SACI'),(5,'0891743033001',14189,'2019-08-26','2019-02-07','2020-02-07',2,0.00,6,'',112.00,'1719070292001','No notificado SACI'),(6,'1704427457001',14190,'2019-08-26','2019-07-30','2020-07-30',2,1000.00,2,'LOS CONTRATOS FUERON ENVIADOS DESDE EL CORREO DEL CLIENTE A QUITO',112.00,'1719070292001','No notificado SACI'),(7,'2000027017001',14192,'2019-08-26','2019-07-17','2020-07-17',2,1000.00,2,'CONTRATO ENVIADO A QUITO DIRECTAMENTE POR PARTE DEL CLIENTE	',112.00,'1719070292001','No notificado SACI'),(8,'2000027017001',14193,'2019-08-26','2019-01-08','2019-01-08',3,0.00,1,'CONTRATO ENVIADO A QUITO DIRECTAMENTE POR PARTE DEL CLIENTE	',112.00,'1719070292001','No notificado SACI'),(9,'1710034743001',14194,'2019-08-26','2019-08-06','2020-08-06',2,700.00,3,'CLIENTE ANTIGUI',120.00,'1719070292001','No notificado SACI'),(10,'1792031583001',14196,'2019-08-26','2018-08-16','2019-08-16',2,800.00,1,'CONTRATO ENVIADO A QUITO DIRECTAMENTE POR PARTE DEL CLIENTE	',112.00,'1719070292001','No notificado SACI'),(11,'1792031583001',14197,'2019-08-26','2019-06-03','2020-06-03',3,0.00,1,'CONTRATO ENVIADO A QUITO DIRECTAMENTE POR PARTE DEL CLIENTE	',112.00,'1719070292001','No notificado SACI'),(12,'1792479819001',14228,'2019-08-26','2019-01-07','2020-01-07',3,0.00,2,'CONTRATO ENVIADO A QUITO DIRECTAMENTE POR PARTE DEL CLIENTE - SERVIENTREGA',112.00,'1719070292001','No notificado SACI'),(13,'1712251097001',14229,'2019-08-26','2018-09-03','2019-09-03',3,0.00,2,'CONTRATO ENVIADO A QUITO DIRECTAMENTE POR PARTE DEL CLIENTE - SERVIENTREGA',112.00,'1719070292001','No notificado SACI'),(14,'1706433990001',14230,'2019-08-26','2018-12-27','2019-12-27',3,0.00,2,'CONTRATO ENVIADO A QUITO DIRECTAMENTE POR PARTE DEL CLIENTE - SERVIENTREGA',112.00,'1719070292001','No notificado SACI'),(15,'1311316051001',14231,'2019-08-26','2019-01-02','2020-01-02',3,0.00,2,'CONTRATO ENVIADO A QUITO DIRECTAMENTE POR PARTE DEL CLIENTE - SERVIENTREGA',112.00,'1719070292001','No notificado SACI'),(16,'1306896380001',14232,'2019-08-26','2019-05-22','2020-05-22',3,0.00,2,'',112.00,'1719070292001','No notificado SACI'),(17,'0801790718001',14233,'2019-08-26','2019-06-03','2020-06-03',3,0.00,2,'CLIENTE ANTIGUO - VENDEDOR HMNO ING. CALVOPINA',112.00,'1719070292001','No notificado SACI'),(18,'0703295535001',14236,'2019-08-26','2019-08-15','2020-08-15',3,0.00,2,'CONTRATO ENVIADO A QUITO DIRECTAMENTE POR PARTE DEL CLIENTE - SERVIENTREGA',112.00,'1719070292001','No notificado SACI'),(19,'1719303917001',14235,'2019-08-26','2019-08-08','2020-08-08',3,0.00,2,'CONTRATO ENVIADO A QUITO DIRECTAMENTE POR PARTE DEL CLIENTE - SERVIENTREGA',112.00,'1719070292001','No notificado SACI'),(20,'2390016738001',14134,'2019-08-27','2019-08-07','2020-08-07',NULL,448.00,1,'LINK: http://52.15.82.138/mafecasin/web/login\r\n          http://mafecasin.imprentaelectronica.com/\r\nBDD: mafeasin\r\nACCESO: lelena - lelena  (superusuario)',300.00,'1719070292001','No notificado'),(21,'1721800439001',14144,'2019-08-28','2019-08-08','2020-08-08',NULL,448.00,1,'LINK: http://52.15.82.138/veronica/web/login \r\nhttp://veronicaburgos.imprentaelectronica.com/\r\nBDD: veronica \r\nACCESO: lelena - lelena (superusuario)',300.00,'1719070292001','No notificado'),(22,'1719070367001',14140,'2019-08-28','2019-08-08','2020-08-08',NULL,448.00,1,'LINK:http://paolavega.imprentaelectronica.com/\r\nBDD: paola\r\nACCESOS: lelena-lelena',300.00,'1719070292001','No notificado'),(23,'0704946375001',14138,'2019-08-28','2019-08-08','2020-08-08',NULL,448.00,1,'link: http://cesarastudillo.imprentaelectronica.com/\r\nbdd: tribuexcel\r\naccesos:lelena - lelena',300.00,'1719070292001','No notificado'),(24,'1719825372001',14171,'2019-08-28','2019-08-21','2020-08-16',NULL,50.00,1,'Se licencio Orel 2.12 con un 360 dias',50.00,'1719070292001','No notificado'),(25,'0993049689001',14137,'2019-08-28','2019-08-07','2020-08-07',NULL,448.00,1,'link: http://52.15.82.138/saluplasti/web/login\r\nhttp://saluplasti.imprentaelectronica.com/\r\nbdd: saluplasti\r\nACCESOS: lelena-lelena',300.00,'1719070292001','No notificado'),(26,'1391841043001',14135,'2019-08-28','2019-08-07','2020-08-07',NULL,448.00,1,'link:http://plasfer.imprentaelectronica.com/\r\nhttp://52.15.82.138/plasfer/web/\r\nbdd: plasfer\r\nACCESOS: lelena-lelena',300.00,'1719070292001','No notificado'),(27,'1718769647001',14136,'2019-08-28','2019-08-07','2020-08-07',NULL,448.00,1,'link: http://52.15.82.138/mireyaintriago/web/\r\nhttp://mireyaintriago.imprentaelectronica.com/\r\nbdd:mireya\r\nACCESOS: lelena-lelena',300.00,'1719070292001','No notificado'),(28,'1708114630001',14195,'2019-09-03','2019-08-26','2020-08-26',2,0.00,1,'REGISTRO CLIENTE POLITICA ANTIGUA',100.00,'1719070292001','No notificado SACI'),(29,'1792367956001',14234,'2019-09-03','2019-04-30','2020-04-30',3,0.00,2,'CONTRATOS ENVIADOS A QUITO POR PARTE DEL CLIENTE',112.00,'1719070292001','No notificado SACI'),(30,'1713513438001',14293,'2019-09-03','2019-09-03','2020-09-03',2,0.00,2,'CLIENTE ANTIGUO DESDE 09-09-2015',100.00,'1719070292001','No notificado SACI'),(31,'1719789529001',14237,'2019-09-03','2018-08-15','2019-08-15',2,672.00,2,'',112.00,'1719070292001','No notificado SACI'),(32,'1801678986001',14238,'2019-09-03','2019-02-07','2020-02-07',2,0.00,4,'CLIENTE ANTIGUO NO REGISTRA CONTRATO',112.00,'1719070292001','No notificado SACI'),(33,'2300262280001',14352,'2019-09-06','2019-09-06','2020-09-06',NULL,0.00,1,'LINK: http://scarlethcuenca.imprentaelectronica.com/\r\nUSUARIO: diana\r\nCLAVE: diana',0.00,'1719070292001','No notificado'),(34,'1712251097001',14300,'2019-09-06','2018-09-03','2019-09-03',2,720.00,2,'SE INSTALO EL 20/02/2017',112.00,'1719070292001','No notificado SACI'),(35,'1709947087001',14310,'2019-09-06','2019-02-28','2020-02-28',2,800.00,2,'SE INSTALO EL 29/10/2016 \r\nEL TERCER COMPUTADOR FUNCIONA CON REMOTO',112.00,'1719070292001','No notificado SACI'),(36,'2390004519001',14313,'2019-09-06','2019-04-10','2020-04-10',2,1120.00,2,'SE INSTALO EL 01/11/2016',120.00,'1719070292001','No notificado SACI'),(37,'2390031036001',14354,'2019-09-06','2019-09-06','2020-09-06',NULL,224.00,1,'LINK: http://promotoraseven.imprentaelectronica.com/\r\nUSUARIO: diana\r\nCLAVE: diana',100.00,'1719070292001','No notificado'),(38,'1706433990001',14301,'2019-09-06','2018-12-28','2019-12-28',2,850.00,2,'SE INSTALO EL 28/12/2018',120.00,'1719070292001','No notificado SACI'),(39,'1718797051001',14339,'2019-09-06','2018-10-18','2019-10-18',3,850.00,2,'SE INSTALO EL 16/10/2018',120.00,'1719070292001','No notificado SACI'),(40,'2490009283001',14312,'2019-09-06','2019-03-22','2020-03-22',1,1344.00,4,'SE INSTALO EL 20/06/2015',120.00,'1719070292001','No notificado SACI'),(41,'1708905094001',14336,'2019-09-06','2019-01-30','2020-01-30',2,850.00,2,'SE INSTALO EL 18/01/2019',120.00,'1719070292001','No notificado SACI'),(42,'0602616260001',14305,'2019-09-06','2019-02-14','2020-02-14',2,650.00,2,'SE INSTALO EL 11/4/2017',120.00,'1719070292001','No notificado SACI'),(43,'1719303917001',14322,'2019-09-06','2019-08-19','2020-08-19',2,840.00,2,'SE INSTALO EL 16/7/2018',120.00,'1719070292001','No notificado SACI'),(44,'1712464187001',14294,'2019-09-06','2018-09-05','2019-09-05',2,0.00,2,'TIENE UN 3 EQUIPO POR REMOTO',120.00,'1719070292001','No notificado SACI'),(45,'1791168062001',14295,'2019-09-06','2018-10-01','2019-10-01',2,0.00,2,'CLIENTE ANTIGUO, NO SOLICITABAN CONTRATOS',120.00,'1719070292001','No notificado SACI'),(46,'1792479819001',14297,'2019-09-06','2018-11-07','2019-11-07',2,900.00,2,'CONTRATO ENVIADO A MATRIZ',120.00,'1719070292001','No notificado SACI'),(47,'1713771127001',14298,'2019-09-06','2018-12-19','2019-12-19',2,0.00,1,'CLIENTE ANTIGUO, NO SOLICITABAN CONTRATOS',120.00,'1719070292001','No notificado SACI'),(48,'2390001781001',14299,'2019-09-06','2018-11-23','2019-11-23',2,0.00,1,'CLIENTE ANTIGUO, NO SOLICITABAN CONTRATOS',120.00,'1719070292001','No notificado SACI'),(49,'0500642517001',14296,'2019-09-06','2018-11-06','2019-11-06',2,0.00,2,'CLIENTE ANTIGUO, NO SOLICITABAN CONTRATOS',120.00,'1719070292001','No notificado SACI'),(50,'1718965351001',14302,'2019-09-06','2019-01-21','2020-01-21',2,0.00,2,'CLIENTE ANTIGUO, NO SOLICITABAN CONTRATOS',120.00,'1719070292001','No notificado SACI'),(51,'1311316051001',14303,'2019-09-06','2019-01-02','2020-01-02',2,0.00,2,'CONTRATO ENVIADO A MATRIZ',120.00,'1719070292001','No notificado SACI'),(52,'1710204130001',14304,'2019-09-06','2019-02-13','2020-02-13',2,0.00,2,'CLIENTE ANTIGUO, NO SOLICITABAN CONTRATOS',120.00,'1719070292001','No notificado SACI'),(53,'2300301054001',14353,'2019-09-06','2019-09-06','2020-09-06',NULL,0.00,1,'LINK: http://alexisandino.imprentaelectronica.com/\r\nUSUARIO: diana\r\nCLAVE: diana',0.00,'1719070292001','No notificado'),(54,'1792759021001',14306,'2019-09-06','2019-02-15','2020-02-15',2,0.00,1,'CLIENTE ANTIGUO, NO SOLICITABAN CONTRATOS\r\nDOS ESQUEMAS',120.00,'1719070292001','No notificado SACI'),(55,'2390003571001',14307,'2019-09-06','2019-02-27','2020-02-27',2,0.00,2,'CLIENTE ANTIGUO, NO SOLICITABAN CONTRATOS',120.00,'1719070292001','No notificado SACI'),(56,'1307946036001',14308,'2019-09-06','2018-12-26','2019-12-26',2,0.00,4,'LOCAL DEL CENTRO - LICENCIA GOLDEN\r\nCLIENTE ANTIGUO, NO SOLICITABAN CONTRATOS',120.00,'1719070292001','No notificado SACI'),(57,'1712308475001',14311,'2019-09-06','2019-03-06','2020-03-06',2,0.00,2,'CONTRATO ENVIADO A MATRIZ - A NOMBRE DE EL DOS LICENCIAS SACIANEX ',120.00,'1719070292001','No notificado SACI'),(58,'1792663091001',14314,'2019-09-06','2019-04-17','2020-04-17',2,840.00,2,'CONTRATO ENVIADO A MATRIZ',120.00,'1719070292001','No notificado SACI'),(59,'0952269652001',14315,'2019-09-06','2019-04-18','2020-04-18',2,850.00,2,'NO SE HIZO CONTRATO',120.00,'1719070292001','No notificado SACI'),(60,'2390034906001',14316,'2019-09-06','2019-07-29','2020-07-29',2,0.00,3,'ELABORAR CONTRATO Y ENVIAR ',150.00,'1719070292001','No notificado SACI'),(61,'1792367956001',14320,'2019-09-06','2019-07-01','2020-07-01',2,1000.00,2,'CONTRATOS ENVIADOS A MATRIZ',120.00,'1719070292001','No notificado SACI'),(62,'1792728010001',14324,'2019-09-06','2019-08-25','2020-08-25',2,0.00,2,'CLIENTE ANTIGUO NO EXIGIAN CONTRATO MATRIZ',120.00,'1719070292001','No notificado SACI'),(63,'1721327094001',14317,'2019-09-06','2019-05-17','2020-05-17',2,800.00,2,'CONTRATO ENVIADO A MATRIZ',120.00,'1719070292001','No notificado SACI'),(64,'1306896380001',14318,'2019-09-06','2019-05-22','2020-05-22',2,800.00,2,'CONTRATO ENVIADO A MATRIZ',120.00,'1719070292001','No notificado SACI'),(65,'1792219868001',14319,'2019-09-06','2019-06-24','2020-06-24',2,0.00,2,'CONTRATO ENTREGADO A MATRIZ',120.00,'1719070292001','No notificado SACI'),(66,'1792062373001',14321,'2019-09-06','2019-07-01','2020-07-01',2,0.00,2,'CONTRATO ENVIADO A MATRIZ - MB',120.00,'1719070292001','No notificado SACI'),(67,'1704419009001',14323,'2019-09-06','2019-10-10','2020-10-10',2,200.00,1,'CONTRATO ENVIADO A MATRIZ ',120.00,'1719070292001','No notificado SACI'),(68,'1719070292001',14325,'2019-09-06','2019-04-29','2020-05-29',2,112.00,2,'SIN CONTRATO INTERBASES GARANTIA TECNICO\r\nLICENCIA GOLDEN',112.00,'1719070292001','No notificado SACI'),(69,'1703846400001',14326,'2019-09-06','2019-01-28','2020-01-28',2,0.00,4,'CLIENTE ANTIGUO',120.00,'1719070292001','No notificado SACI'),(70,'1703846400001',14326,'2019-09-06','2019-01-28','2020-01-28',2,0.00,4,'CLIENTE ANTIGUO',120.00,'1719070292001','No notificado SACI'),(71,'1792074495001',14328,'2019-09-06','2018-09-24','2019-09-24',2,0.00,1,'CLIENTE ANTIGUO ',120.00,'1719070292001','No notificado SACI'),(72,'1792809940001',14327,'2019-09-06','2018-12-01','2019-12-01',2,0.00,2,'SIN CONTRATO - REFERIDO SRA MARICELA',120.00,'1719070292001','No notificado SACI'),(73,'1713604856001',14329,'2019-09-06','2019-01-08','2020-01-08',2,0.00,3,'CLIENTE ANTIGUO, NO EXIGÃAN CONTRATO',150.00,'1719070292001','No notificado SACI'),(74,'1718797051001',14330,'2019-09-06','2019-02-04','2020-02-04',2,0.00,2,'ADJUNTO CONTRATO',120.00,'1719070292001','No notificado SACI'),(75,'1310372915001',14331,'2019-09-06','2019-02-28','2020-02-28',2,0.00,2,'NO SE REGISTRO CONTRATO',120.00,'1719070292001','No notificado SACI'),(76,'1720519063001',14332,'2019-09-06','2019-03-21','2020-03-21',2,0.00,2,'CLIENTE ANTIGUO - SR NURY - ECUARROZ',120.00,'1719070292001','No notificado SACI'),(77,'1712527264001',14335,'2019-09-06','2019-07-22','2019-07-22',2,900.00,2,'CONTRATO ENVIADO A MATRIZ',120.00,'1719070292001','No notificado SACI'),(78,'1714693130001',14333,'2019-09-06','2019-04-15','2020-04-15',2,950.00,2,'CONTRATO ENVIADO A MATRIZ',120.00,'1719070292001','No notificado SACI'),(79,'1714706072001',14334,'2019-09-06','2019-06-11','2020-06-11',2,400.00,2,'CLIENTE ANTIGUO NO EXIGIAN CONTRATO',120.00,'1719070292001','No notificado SACI'),(80,'0801790718001',14337,'2019-09-06','2019-06-03','2020-06-03',2,0.00,2,'CLIENTE DE HERMANO ING CALVOPINA ',120.00,'1719070292001','No notificado SACI'),(81,'1307946036001',14309,'2019-09-06','2019-07-05','2020-07-05',2,600.00,2,'CONTRATO ENVIADO A MATRIZ POR SERVIENTREGA',120.00,'1719070292001','No notificado SACI'),(82,'1714693130001',14340,'2019-09-06','2019-01-30','2020-01-30',3,0.00,2,'CONTRATO ENVIADO A QUITO',120.00,'1719070292001','No notificado SACI'),(83,'1792692695001',14341,'2019-09-06','2019-03-27','2020-03-27',3,200.00,2,'CONTRATO ENVIADO A MATRIZ - LICENCIA SACI A NOMBRE DE CORPORACION KIART',120.00,'1719070292001','No notificado SACI'),(84,'1791168062001',14163,'2019-09-11','2019-08-22','2020-08-22',3,500.00,2,'INSTALACION CON EXITO',112.00,'1719070292001','No notificado SACI'),(85,'2390038510001',14382,'2019-09-12','2019-09-10','2020-09-10',NULL,448.00,1,'http://fezardiel.imprentaelectronica.com/\r\nUSUARIO: diana\r\nCLAVE: diana',100.00,'1719070292001','No notificado'),(86,'1719789529001',14385,'2019-09-16','2019-09-16','2020-09-16',2,112.00,2,'CONFORMADO POR VENCIMIENTO',112.00,'1719070292001','No notificado SACI'),(87,'0201903564001',14398,'2019-09-19','2019-09-19','2020-09-19',NULL,0.00,1,'LINK: http://mayrauriarte.imprentaelectronica.com/\r\nUSUARIO: diana\r\nCLAVE: diana',0.00,'1719070292001','No notificado'),(88,'1203608375001',14127,'2019-09-21','2018-12-15','2019-12-15',NULL,300.00,1,'',100.00,'1719070292001','No notificado'),(89,'1714245642001',14128,'2019-09-21','2018-12-15','2019-12-15',NULL,350.00,1,'',100.00,'1719070292001','No notificado'),(90,'0000000000010',14129,'2019-09-21','2019-01-05','2020-01-05',NULL,250.00,1,'',200.00,'1719070292001','No notificado'),(91,'0000000000010',14129,'2019-09-21','2019-01-10','2020-01-10',NULL,380.00,1,'',200.00,'1719070292001','No notificado'),(92,'2300057433001',14130,'2019-09-21','2018-12-15','2019-12-15',NULL,200.00,1,'',200.00,'1719070292001','No notificado'),(93,'1707821136001',14131,'2019-09-21','2019-01-05','2020-01-05',NULL,250.00,1,'',200.00,'1719070292001','No notificado'),(94,'0992877707001',14132,'2019-09-21','2019-01-05','2020-01-05',NULL,250.00,1,'',200.00,'1719070292001','No notificado'),(95,'1723272066001',14139,'2019-09-21','2019-08-07','2020-08-07',NULL,400.00,1,'LINK: http://alexmestanza.imprentaelectronica.com/\r\nUSUARIO: mestanza\r\nCLAVE: mestanza',100.00,'1719070292001','No notificado'),(96,'0992700882001',14430,'2019-09-27','2019-09-18','2020-09-18',2,2000.00,2,'LOS CONTRATOS ESTAN PENDIENTES HACER FIRMAR SE ADJUNTA HOJA DE TRABAJO',112.00,'1719070292001','No notificado SACI'),(97,'1302066178001',14349,'2019-09-27','2019-09-16','2020-09-16',2,762.00,2,'INSTALACION SISTEMA - MODO DE TRABAJAR CLARO Y ENTENDIDO',112.00,'1719070292001','No notificado SACI'),(98,'0502181431001',14432,'2019-09-27','2018-08-29','2018-08-29',2,800.00,1,'CONTRATO ENVIADO A MATRIZ',112.00,'1719070292001','No notificado SACI'),(99,'0502181431001',14433,'2019-09-27','2019-01-10','2020-01-10',3,800.00,1,'CONTRATO ENVIADO A MATRIZ',112.00,'1719070292001','No notificado SACI'),(100,'1791168062001',14434,'2019-09-27','2019-09-13','2020-09-13',3,500.00,2,'CONTRATO ENVIADO A MATRIZ',112.00,'1719070292001','No notificado SACI'),(101,'1803786290001',14435,'2019-09-27','2019-09-25','2020-09-25',2,760.00,2,'CONTRATO ENVIADO A QUITO- SE ADJUNTA HOJA DEL SOPORTE',112.00,'1719070292001','No notificado SACI'),(102,'1803786290001',14436,'2019-09-27','2019-09-26','2020-09-26',3,760.00,2,'CONTRATO ENVIADO A MATRIZ',112.00,'1719070292001','No notificado SACI'),(103,'1719078766001',14440,'2019-09-27','2019-09-10','2020-09-10',2,400.00,2,'CONFORMACION ANUAL',112.00,'1719070292001','No notificado SACI'),(104,'1704419009001',14437,'2019-09-27','2019-09-20','2020-09-20',2,200.00,2,'SE REINSTALO POR REMOTO',112.00,'1719070292001','No notificado SACI'),(105,'1719789529001',14438,'2019-09-27','2019-09-16','2020-09-16',2,100.00,2,'CONFORMACION ANUAL',100.00,'1719070292001','No notificado SACI'),(106,'1713513438001',14439,'2019-09-27','2019-09-03','2020-09-03',2,0.00,2,'CONFORMACION ANUAL',80.00,'1719070292001','No notificado SACI'),(107,'1716328388001',14441,'2019-09-27','2018-11-09','2019-11-09',2,800.00,2,'ADJUNTO CONTRATO',112.00,'1719070292001','No notificado SACI'),(108,'2390021391001',14446,'2019-10-02','2019-10-02','2020-10-02',NULL,100.00,1,'',100.00,'1719070292001','No notificado'),(109,'0500615273001',14491,'2019-10-21','2018-12-15','2019-12-15',NULL,700.00,3,'FINALIZA EL 15 DE DICIEMBRE DEL 2018',200.00,'1719070292001','No notificado'),(110,'0500615273001',14491,'2019-10-21','2018-12-15','2019-12-15',NULL,700.00,3,'FINALIZA EL 15 DE DICIEMBRE DEL 2018',200.00,'1719070292001','No notificado'),(111,'0500615273001',14491,'2019-10-21','2018-12-15','2019-12-15',NULL,700.00,3,'FINALIZA EL 15 DE DICIEMBRE DEL 2018',200.00,'1719070292001','No notificado'),(112,'1721327094001',14342,'2019-10-22','2019-05-20','2020-05-20',NULL,300.00,2,'SISTEMA DEL CARMEN',200.00,'1719070292001','No notificado'),(113,'1721327094001',14212,'2019-10-22','2018-12-15','2019-12-15',NULL,700.00,3,'SISTEMA DEL CARMEN',200.00,'1719070292001','No notificado'),(114,'1706661863001',14515,'2019-10-28','2019-10-25','2020-10-25',2,394.00,6,'CONTRATO DE SACIJAVA JORGE HUGO - CONTRATO ENVIADO A QUITO',394.00,'1719070292001','No notificado SACI'),(115,'1706661863001',14516,'2019-10-28','2019-10-30','2020-10-30',3,394.00,6,'CONTRATO SACIANEX JORGE HUGO CANO',394.00,'1719070292001','No notificado SACI'),(116,'1792074495001',14519,'2019-10-28','2019-10-28','2020-10-28',4,120.00,2,'',150.00,'1719070292001','No notificado SACI');
/*!40000 ALTER TABLE `clientes_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codigo_gestion`
--

DROP TABLE IF EXISTS `codigo_gestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codigo_gestion` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigo_gestion`
--

LOCK TABLES `codigo_gestion` WRITE;
/*!40000 ALTER TABLE `codigo_gestion` DISABLE KEYS */;
INSERT INTO `codigo_gestion` VALUES (3,'01003'),(4,'0300w');
/*!40000 ALTER TABLE `codigo_gestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codigo_grupo`
--

DROP TABLE IF EXISTS `codigo_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codigo_grupo` (
  `id_grupo` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigo_grupo`
--

LOCK TABLES `codigo_grupo` WRITE;
/*!40000 ALTER TABLE `codigo_grupo` DISABLE KEYS */;
INSERT INTO `codigo_grupo` VALUES (3,'17'),(5,'01'),(6,'EPMAPA SD');
/*!40000 ALTER TABLE `codigo_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colores`
--

DROP TABLE IF EXISTS `colores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colores` (
  `id_color` int(10) NOT NULL AUTO_INCREMENT,
  `encabezado` varchar(10) DEFAULT NULL,
  `asignado` varchar(10) DEFAULT NULL,
  `proceso` varchar(10) DEFAULT NULL,
  `pendiente` varchar(10) DEFAULT NULL,
  `finalizado` varchar(10) DEFAULT NULL,
  `aprobar` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_color`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colores`
--

LOCK TABLES `colores` WRITE;
/*!40000 ALTER TABLE `colores` DISABLE KEYS */;
INSERT INTO `colores` VALUES (1,'408080','FBFCFC','76D7C4','#FFFF00','ffd7d7','#F7DC6F');
/*!40000 ALTER TABLE `colores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_agenda` int(11) DEFAULT NULL,
  `comentario` varchar(400) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `estado` varchar(45) DEFAULT 'PENDIENTE',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,1496,'Este es un comentario','Alexis Andino','2019-12-16 09:49:00','PENDIENTE'),(2,1641,'Comentario 1','1641','2019-12-17 20:27:46','PENDIENTE'),(3,1641,'Este es una prueba de comentario largo, para revisar la distribucion de espacios en la presentacion de los mismos en pantallas reducidas, medianas, grandes y muy grandes, a su vez para ver la comodidad de escribir numerosos caracteres de texto sobre un imput normal.','Administrador','2019-12-17 20:32:26','PENDIENTE'),(4,1641,'Esta es una prueba de comentario con otro usuario','alexis andino','2019-12-17 20:33:57','PENDIENTE'),(5,1616,'Esta es una prueba de ocultamiento de formulario','alexis andino','2019-12-17 20:35:13','PENDIENTE'),(6,1507,'Comentario Agregado','alexis andino','2019-12-17 20:46:11','PENDIENTE'),(7,1783,'Envio de formulario 103 y 104 provisional','Administrador','2019-12-18 14:44:25','PENDIENTE'),(8,1783,'Envio ATS','Administrador','2019-12-18 14:46:04','PENDIENTE'),(9,3211,'Esta es una prueba de comentario','Administrador','2020-01-02 15:19:45','PENDIENTE'),(10,3223,'Este es otro comentario','Administrador','2020-01-02 15:25:09','PENDIENTE'),(11,3223,'Este es otro comentario segundo','Administrador','2020-01-02 15:25:21','PENDIENTE'),(12,5091,'Descargar ATS del Sistema del Cliente y Respaldo de BBD','Administrador','2020-01-27 15:23:50','PENDIENTE'),(13,63,'Comment 1','Administrador','2020-03-21 09:07:07','PENDIENTE'),(16,63,'Coment 3','Administrador','2020-03-21 11:09:03','PENDIENTE'),(17,69,'Comentairo','Administrador','2020-03-21 11:21:29','PENDIENTE'),(18,69,'Este es otro','Administrador','2020-03-21 11:29:10','PENDIENTE');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contadores`
--

DROP TABLE IF EXISTS `contadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contadores` (
  `id_contador` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_contador`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contadores`
--

LOCK TABLES `contadores` WRITE;
/*!40000 ALTER TABLE `contadores` DISABLE KEYS */;
INSERT INTO `contadores` VALUES (1,'MARLON BEDON'),(2,'VERONICA BURGOS'),(3,'WILSON MASAQUIZA'),(4,'SCARLET TORRES'),(5,'PAOLA VEGA'),(6,'JORGI ACOSTA'),(7,'JUAN MARTINEZ'),(8,'WILSON MASAQUIZA'),(9,'MAYRA URYARTE'),(10,'SANTIAGO ALMEIDA'),(11,'JAIME MEZA'),(12,'DIANA BEDON'),(13,'VANESSA BEDON'),(14,'SELENA BEDON'),(15,'TRIBUEXCEL'),(16,'CESAR ASTUDILLO');
/*!40000 ALTER TABLE `contadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documento`
--

DROP TABLE IF EXISTS `documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documento` (
  `id_documento` int(11) NOT NULL,
  `documento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento`
--

LOCK TABLES `documento` WRITE;
/*!40000 ALTER TABLE `documento` DISABLE KEYS */;
INSERT INTO `documento` VALUES (1,'FACTURA'),(2,'RETENCION');
/*!40000 ALTER TABLE `documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entidad`
--

DROP TABLE IF EXISTS `entidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entidad` (
  `codigo_entidad` varchar(45) NOT NULL,
  `entidad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo_entidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entidad`
--

LOCK TABLES `entidad` WRITE;
/*!40000 ALTER TABLE `entidad` DISABLE KEYS */;
INSERT INTO `entidad` VALUES ('ENT-0001','SRI'),('ENT-0002','IESS'),('ENT-0003','MRL'),('ENT-0004','MRL-1A9'),('ENT-0005','MRL-1A9+10TRB'),('ENT-0006','MUNICIPIO'),('ENT-0007','DINARDAP'),('ENT-0008','UAFE'),('ENT-0009','SUPERCIAS'),('ENT-0010','PERSONALIZADO');
/*!40000 ALTER TABLE `entidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fecha_maxima`
--

DROP TABLE IF EXISTS `fecha_maxima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fecha_maxima` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fecha_maxima`
--

LOCK TABLES `fecha_maxima` WRITE;
/*!40000 ALTER TABLE `fecha_maxima` DISABLE KEYS */;
INSERT INTO `fecha_maxima` VALUES (3,'fhhh'),(4,'ghhh');
/*!40000 ALTER TABLE `fecha_maxima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma`
--

DROP TABLE IF EXISTS `forma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forma` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma`
--

LOCK TABLES `forma` WRITE;
/*!40000 ALTER TABLE `forma` DISABLE KEYS */;
INSERT INTO `forma` VALUES (3,'Manual'),(4,'Automatica');
/*!40000 ALTER TABLE `forma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frecuencia`
--

DROP TABLE IF EXISTS `frecuencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frecuencia` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frecuencia`
--

LOCK TABLES `frecuencia` WRITE;
/*!40000 ALTER TABLE `frecuencia` DISABLE KEYS */;
INSERT INTO `frecuencia` VALUES (3,'Mensual'),(4,'Anual'),(6,'Una sola vez'),(7,'Semestral');
/*!40000 ALTER TABLE `frecuencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frecuencia_digito`
--

DROP TABLE IF EXISTS `frecuencia_digito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frecuencia_digito` (
  `digito` varchar(45) DEFAULT NULL,
  `vence` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frecuencia_digito`
--

LOCK TABLES `frecuencia_digito` WRITE;
/*!40000 ALTER TABLE `frecuencia_digito` DISABLE KEYS */;
INSERT INTO `frecuencia_digito` VALUES ('1','10'),('2','12'),('3','14'),('4','16'),('5','18'),('6','20'),('7','22'),('8','24'),('9','26'),('0','28');
/*!40000 ALTER TABLE `frecuencia_digito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frecuencia_mensual`
--

DROP TABLE IF EXISTS `frecuencia_mensual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frecuencia_mensual` (
  `id` int(11) NOT NULL,
  `mes` varchar(45) DEFAULT NULL,
  `matricula` varchar(2) DEFAULT NULL,
  `declaraciones` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frecuencia_mensual`
--

LOCK TABLES `frecuencia_mensual` WRITE;
/*!40000 ALTER TABLE `frecuencia_mensual` DISABLE KEYS */;
INSERT INTO `frecuencia_mensual` VALUES (1,'ENERO',NULL,'FEBRERO'),(2,'FEBRERO','1','MARZO'),(3,'MARZO','2','ABRIL'),(4,'ABRIL','3','MAYO'),(5,'MAYO','4','JUNIO'),(6,'JUNIO','5','JULIO'),(7,'JULIO','6','AGOSTO'),(8,'AGOSTO','7','SEPTIEMBRE'),(9,'SEPTIEMBRE','8','OCTUBRE'),(10,'OCTUBRE','9','NOVIEMBRE'),(11,'NOVIEMBRE','0','DICIEMBRE'),(12,'DICIEMBRE',NULL,'ENERO');
/*!40000 ALTER TABLE `frecuencia_mensual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestion`
--

DROP TABLE IF EXISTS `gestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gestion` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) DEFAULT NULL,
  `repetir` varchar(10) DEFAULT NULL,
  `caduca` varchar(45) DEFAULT NULL,
  `detale` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestion`
--

LOCK TABLES `gestion` WRITE;
/*!40000 ALTER TABLE `gestion` DISABLE KEYS */;
INSERT INTO `gestion` VALUES (9,'CONTRATO DE TRABAJO','Si',NULL,0),(101,'DECIMO CUARTO','Si',NULL,0),(102,'FIRMA ELECTRONICA','Si',NULL,0),(103,'DECIMO TERCERO','Si',NULL,0),(104,'ANEXO RDEP','Si',NULL,0),(105,'ANEXO ACCIONISTAS','Si',NULL,0),(106,'ANEXO DECLARACION PATRIMONIAL','Si',NULL,0),(107,'ANEXO DIVIDENDOS','Si',NULL,0),(108,'DECLARACION ANEXOS MENSUALES','Si',NULL,0),(109,'DECLARACION ANEXOS SEMESTRAL','Si',NULL,0),(110,'DECLARACION RENTA','Si',NULL,0),(111,'UTILIDADES','Si',NULL,0),(112,'NOTIFICACION SRI ','Si',NULL,0),(113,'BALANCES','Si',NULL,0),(114,'SOPORTE SACIJAVA','Si',NULL,0),(115,'SOPORTE SACIANEX','Si',NULL,0),(116,'SOPORTE AMELIA','Si',NULL,0),(117,'SOPORTE OREL WEB','Si',NULL,0),(118,'SOPORTE OREL ESCRITORIO','Si',NULL,0),(119,'SOPORTE COMPLEMENTO','Si',NULL,0),(120,'SOPORTE IMPRENTA','Si',NULL,0),(121,'SOPORTE FUTGOL','Si',NULL,0),(122,'SOPORTE PLANTILLAS EXCEL','Si',NULL,0),(123,'SISTEMA SACIJAVA','Si','SACIJAVA',1),(124,'SISTEMA SACIANEX','Si','SACIANEX',1),(125,'SISTEMA AMELIA','Si',NULL,1),(126,'SISTEMA OREL WEB','Si',NULL,1),(127,'SISTEMA OREL ESCRITORIO','Si',NULL,1),(128,'SISTEMA COMPLEMENTO','Si',NULL,1),(129,'SISTEMA IMPRENTA','Si',NULL,1),(130,'SISTEMA FUTGOL','Si',NULL,1),(131,'SISTEMA PLANTILLAS EXCEL','Si',NULL,1),(132,'PATENTE MUNICIPAL','Si',NULL,0),(133,'TRAMITES SUPERCIAS','Si',NULL,0),(134,'CONTABILIDAD','Si',NULL,0),(136,'SOPORTE TECNICO COMPUTADORES','Si',NULL,0),(137,'TRAMITES SRI','Si',NULL,0),(138,'TRAMITES IESS','Si',NULL,0),(139,'BANCOS','Si',NULL,0),(140,'TRAMITES MRL','Si',NULL,0);
/*!40000 ALTER TABLE `gestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo_gestion`
--

DROP TABLE IF EXISTS `grupo_gestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo_gestion` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_gestion`
--

LOCK TABLES `grupo_gestion` WRITE;
/*!40000 ALTER TABLE `grupo_gestion` DISABLE KEYS */;
INSERT INTO `grupo_gestion` VALUES (1,'SRI'),(2,'IESS'),(3,'SUPERCIAS'),(4,'MRL_DECIMO'),(5,'MUNICIPIO'),(6,'BOMBEROS'),(7,'ARCSA'),(8,'MRL_FIN'),(9,'SACI'),(10,'OREL'),(11,'CONTABLE'),(12,'PERSONAL'),(13,'ELPROFE'),(14,'FAMILIAR'),(16,'B&B'),(17,'SERCOP'),(18,'CNEL'),(19,'CNT'),(20,'UNIBANCO'),(21,'EPMAPA SD');
/*!40000 ALTER TABLE `grupo_gestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licencia`
--

DROP TABLE IF EXISTS `licencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ruc` varchar(45) DEFAULT NULL,
  `suscrito` varchar(2) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licencia`
--

LOCK TABLES `licencia` WRITE;
/*!40000 ALTER TABLE `licencia` DISABLE KEYS */;
INSERT INTO `licencia` VALUES (1,'1719070292001','SI','2020-02-04','Activo');
/*!40000 ALTER TABLE `licencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meses`
--

DROP TABLE IF EXISTS `meses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meses` (
  `id_mes` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_mes`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meses`
--

LOCK TABLES `meses` WRITE;
/*!40000 ALTER TABLE `meses` DISABLE KEYS */;
INSERT INTO `meses` VALUES (1,'Enero','01'),(2,'Febrero','02'),(3,'Marzo','03'),(4,'Abril','04'),(5,'Mayo','05'),(6,'Junio','06'),(7,'Julio','07'),(8,'Agosto','08'),(9,'Septiembre','09'),(10,'Octubre','10'),(11,'Noviembre','11'),(12,'Diciembre','12');
/*!40000 ALTER TABLE `meses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificacion`
--

DROP TABLE IF EXISTS `notificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificacion` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificacion`
--

LOCK TABLES `notificacion` WRITE;
/*!40000 ALTER TABLE `notificacion` DISABLE KEYS */;
INSERT INTO `notificacion` VALUES (1,'Si'),(2,'No');
/*!40000 ALTER TABLE `notificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodo`
--

DROP TABLE IF EXISTS `periodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `periodo` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodo`
--

LOCK TABLES `periodo` WRITE;
/*!40000 ALTER TABLE `periodo` DISABLE KEYS */;
INSERT INTO `periodo` VALUES (1,'2019',0),(2,'2020',1),(3,'2021',0);
/*!40000 ALTER TABLE `periodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recursos`
--

DROP TABLE IF EXISTS `recursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(400) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recursos`
--

LOCK TABLES `recursos` WRITE;
/*!40000 ALTER TABLE `recursos` DISABLE KEYS */;
INSERT INTO `recursos` VALUES (1,'1791251237001-FC-001-064-027600045-09102019-Consorcio Ecuatoriano de Telecomunicaciones S.A. CONECEL.pdf','2020-01-03');
/*!40000 ALTER TABLE `recursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarea_correlativo`
--

DROP TABLE IF EXISTS `tarea_correlativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarea_correlativo` (
  `id_correlativo` int(10) NOT NULL AUTO_INCREMENT,
  `numero` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_correlativo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarea_correlativo`
--

LOCK TABLES `tarea_correlativo` WRITE;
/*!40000 ALTER TABLE `tarea_correlativo` DISABLE KEYS */;
INSERT INTO `tarea_correlativo` VALUES (1,'14605');
/*!40000 ALTER TABLE `tarea_correlativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tareas`
--

DROP TABLE IF EXISTS `tareas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tareas` (
  `id_tarea` int(10) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(20) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `codigo_grupo` varchar(10) DEFAULT NULL,
  `grupo_gestion` varchar(10) DEFAULT NULL,
  `gestion` varchar(40) DEFAULT NULL,
  `frecuencia` varchar(20) DEFAULT NULL,
  `forma` varchar(20) DEFAULT NULL,
  `fecha_maxima` varchar(20) DEFAULT NULL,
  `notificacion` varchar(5) DEFAULT NULL,
  `adjunto` varchar(5) DEFAULT NULL,
  `aprobacion` varchar(5) DEFAULT NULL,
  `observacion1` varchar(305) DEFAULT NULL,
  `fecha_registro` varchar(20) DEFAULT NULL,
  `usuario_asignado` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `fecha_cierre` varchar(20) DEFAULT NULL,
  `prioridad` varchar(20) DEFAULT NULL,
  `mes_inicial` varchar(15) DEFAULT NULL,
  `ano_inicial` varchar(5) DEFAULT NULL,
  `mes_final` varchar(15) DEFAULT NULL,
  `ano_final` varchar(5) DEFAULT NULL,
  `fecha_vencimiento` varchar(20) DEFAULT NULL,
  `periodo` varchar(10) DEFAULT NULL,
  `periodo_dia` varchar(20) DEFAULT NULL,
  `jefe` varchar(30) DEFAULT NULL,
  `ruc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tarea`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tareas`
--

LOCK TABLES `tareas` WRITE;
/*!40000 ALTER TABLE `tareas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tareas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tareas_detalle`
--

DROP TABLE IF EXISTS `tareas_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tareas_detalle` (
  `id_tarea` int(10) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(20) DEFAULT NULL,
  `id_detalle` int(10) DEFAULT NULL,
  `fecha_actualizacion` varchar(30) DEFAULT NULL,
  `comentario` varchar(300) DEFAULT NULL,
  `status_viejo` varchar(20) DEFAULT NULL,
  `status_nuevo` varchar(20) DEFAULT NULL,
  `adjunto1` varchar(50) DEFAULT NULL,
  `adjunto2` varchar(50) DEFAULT NULL,
  `mascara1` varchar(30) DEFAULT NULL,
  `mascara2` varchar(30) DEFAULT NULL,
  `fecha_orden` varchar(20) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_tarea`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tareas_detalle`
--

LOCK TABLES `tareas_detalle` WRITE;
/*!40000 ALTER TABLE `tareas_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tareas_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmp_actividad`
--

DROP TABLE IF EXISTS `tmp_actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_actividad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_actividad` int(11) DEFAULT NULL,
  `ruc` varchar(45) DEFAULT NULL,
  `condicion` varchar(45) DEFAULT NULL,
  `condicion_dos` varchar(45) DEFAULT NULL,
  `parametro_inicio` varchar(45) DEFAULT NULL,
  `parametro_fin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp_actividad`
--

LOCK TABLES `tmp_actividad` WRITE;
/*!40000 ALTER TABLE `tmp_actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmp_actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajo_estado`
--

DROP TABLE IF EXISTS `trabajo_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabajo_estado` (
  `id_estado` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajo_estado`
--

LOCK TABLES `trabajo_estado` WRITE;
/*!40000 ALTER TABLE `trabajo_estado` DISABLE KEYS */;
INSERT INTO `trabajo_estado` VALUES (1,'Asignado'),(3,'En Proceso'),(5,'Finalizado'),(6,'Pendiente'),(7,'No Asignado');
/*!40000 ALTER TABLE `trabajo_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `clave` varchar(20) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `nivel` int(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `actual` varchar(20) DEFAULT NULL,
  `suscrito` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (11,'admin','8808','Administrador','mdbc11@hotmail.com','0982792618',3,'Activo','','SI'),(29,'alexis','alexis','alexis andino','alexisandinom@gmail.com','0986563343',3,'Activo','','SI');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_dependencia`
--

DROP TABLE IF EXISTS `usuarios_dependencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios_dependencia` (
  `id_dependencia` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(40) DEFAULT NULL,
  `usuario_dependencia` varchar(40) DEFAULT NULL,
  `nombre_dependencia` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_dependencia`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_dependencia`
--

LOCK TABLES `usuarios_dependencia` WRITE;
/*!40000 ALTER TABLE `usuarios_dependencia` DISABLE KEYS */;
INSERT INTO `usuarios_dependencia` VALUES (90,'selenab','tareas','tareas'),(91,'selenab','admin','Administrador'),(92,'vanessa','admin','Administrador'),(93,'dalvarado','admin','Administrador'),(94,'dalvarado','cedacont','Consultoria B&B'),(95,'cedacont','admin','Administrador'),(96,'admin','vanessa','Vanessa Bedon'),(97,'general','cedacont','Consultoria B&B'),(98,'general','admin','Administrador'),(99,'cedacont','general','general'),(100,'paolav','admin','Administrador'),(101,'paolav','tareas','tareas'),(102,'ruben','vanessa','Vanessa Bedon'),(103,'LRivera','admin','Administrador'),(104,'tareas','admin','Administrador'),(105,'josselyn','admin','Administrador'),(106,'josselyn','cedacont','Consultoria B&B'),(107,'asistente','tareas','tareas'),(108,'supervisor1','admin','Administrador'),(110,'asistente3','supervisor1','DIANA BEDON'),(111,'jimmy','admin','Administrador'),(112,'julian','admin','Administrador'),(113,'jimmy','julian','julian'),(114,'alexis','admin','Administrador'),(115,'alex','alexis','alexis andino'),(116,'alex','admin','Administrador'),(117,'erika','supervisor1','DIANA BEDON'),(118,'erika','admin','Administrador'),(119,'erika','vcburgos','Veronica Burgos');
/*!40000 ALTER TABLE `usuarios_dependencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendedores` (
  `idvendedores` int(11) NOT NULL AUTO_INCREMENT,
  `ruc` varchar(45) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idvendedores`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedores`
--

LOCK TABLES `vendedores` WRITE;
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` VALUES (1,'1719070292001','MARLON BEDON');
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'agenda'
--

--
-- Dumping routines for database 'agenda'
--
/*!50003 DROP PROCEDURE IF EXISTS `consulta_agenda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`soporte`@`%` PROCEDURE `consulta_agenda`(pnombre varchar(200),pactividad varchar(200),ptipo varchar(20),pestado varchar(20))
begin
SELECT A.id, A.ruc,C.razon_social, B.actividad, A.creado, A.vence, A.mes, A.estado,A.fecha_finalizacion,
IF(A.vence<curdate() and A.estado='PENDIENTE' ,'VENCIDO',
IF(A.vence>curdate() and A.fecha_aviso<=curdate() and A.estado='PENDIENTE','PENDIENTE',
IF(A.vence=curdate() and A.estado='PENDIENTE','HOY',
IF(A.vence>curdate() and A.fecha_aviso>curdate() and A.estado='PENDIENTE','PROXIMO','SOLUCIONADO')))) AS ESCAT,
(select count(comentario) from comentarios where id_agenda=A.id and estado='PENDIENTE') as comentarios
FROM agenda_actividad A, actividad B, clientes C
where A.id_actividad=B.id_actividad and 
A.ruc=C.ruc and C.razon_social like CONCAT('%', pnombre, '%') and B.actividad like CONCAT('%', pactividad, '%') and A.estado like CONCAT('%', ptipo, '%')
and (IF(A.vence<curdate() and A.estado='PENDIENTE' ,'VENCIDO',
IF(A.vence>curdate() and A.fecha_aviso<=curdate() and A.estado='PENDIENTE','PENDIENTE',
IF(A.vence=curdate() and A.estado='PENDIENTE','HOY',
IF(A.vence>curdate() and A.fecha_aviso>curdate() and A.estado='PENDIENTE','PROXIMO','SOLUCIONADO'))))) like CONCAT('%', pestado, '%') order by vence asc;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consulta_agenda_fecha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`soporte`@`%` PROCEDURE `consulta_agenda_fecha`(pnombre varchar(200),pactividad varchar(200),ptipo varchar(20),pestado varchar(20),pfecha varchar(20))
begin
SELECT A.id, A.ruc,C.razon_social, B.actividad, A.creado, A.vence, A.mes, A.estado,A.fecha_finalizacion,
IF(A.vence<curdate() and A.estado='PENDIENTE' ,'VENCIDO',
IF(A.vence>curdate() and A.fecha_aviso<=curdate() and A.estado='PENDIENTE','PENDIENTE',
IF(A.vence=curdate() and A.estado='PENDIENTE','HOY',
IF(A.vence>curdate() and A.fecha_aviso>curdate() and A.estado='PENDIENTE','PROXIMO','SOLUCIONADO')))) AS ESCAT,
(select count(comentario) from comentarios where id_agenda=A.id and estado='PENDIENTE') as comentarios
FROM agenda_actividad A, actividad B, clientes C
where A.id_actividad=B.id_actividad and 
A.ruc=C.ruc and C.razon_social like CONCAT('%', pnombre, '%') and B.actividad like CONCAT('%', pactividad, '%') and A.estado like CONCAT('%', ptipo, '%')
and (IF(A.vence<curdate() and A.estado='PENDIENTE' ,'VENCIDO',
IF(A.vence>curdate() and A.fecha_aviso<=curdate() and A.estado='PENDIENTE','PENDIENTE',
IF(A.vence=curdate() and A.estado='PENDIENTE','HOY',
IF(A.vence>curdate() and A.fecha_aviso>curdate() and A.estado='PENDIENTE','PROXIMO','SOLUCIONADO'))))) like CONCAT('%', pestado, '%') 
and A.vence=pfecha order by vence asc;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `depurar_tareas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`soporte`@`%` PROCEDURE `depurar_tareas`(nombre varchar(12))
begin
declare numero int(11);
declare cont int(11);
declare ruc_c varchar(14);
declare razon_c varchar(150);
set numero =(select max(id_cliente) from clientes);
set cont=0;

while cont <= numero do
    set ruc_c=(select ruc from clientes where id_cliente=cont);
    set razon_c=(select razon_social from clientes where id_cliente=cont);
    update tareas set ruc=ruc_c where empresa=razon_c;
    set cont=cont+1;
end while;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `generar_agenda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`soporte`@`%` PROCEDURE `generar_agenda`(v_ruc varchar(20),v_periodo varchar(4),v_fecha date)
begin
declare v_categoria varchar(100);
declare v_condicion varchar(45);
declare v_condicion_dos varchar(45);
declare v_parametro_inicio varchar(40);
declare v_parametro_fin varchar(40);
declare v_cant_activ int(10);
declare v_tmp_first int(10);
declare v_tmp_last int(10);
declare v_mes_first int(10);
declare v_mes_last int(10);
declare v_frecuencia varchar(20);
declare v_vence varchar(10);
declare v_digito varchar(1);
declare v_dia_digito varchar(3);
declare v_fecha_vence varchar(15);
declare v_fecha_vence_s varchar(15);
declare v_mes varchar(20);
declare v_declaracion varchar(20);
declare v_actividad int(20);
declare v_fecha_aviso date;
declare v_fecha_aviso_s date;
declare v_dias_actividad int(12);

declare v_empleados int(10);
declare v_declaracion_patrimonial varchar(40);
declare v_afiliados varchar(40);
declare v_base_imponible varchar(40);
declare v_region varchar(20);
declare v_digito_placa varchar(20);


Select substr(v_ruc,9,1) into v_digito;
Select vence into v_dia_digito from frecuencia_digito where digito=v_digito;

select categoria into v_categoria from clientes where ruc=v_ruc;

select empleados into v_empleados from clientes where ruc=v_ruc;
select declaracion_patrimonial into v_declaracion_patrimonial from clientes where ruc=v_ruc;
select afiliados into v_afiliados from clientes where ruc=v_ruc;
select base_imponible into v_base_imponible from clientes where ruc=v_ruc;
select digito_placa into v_digito_placa from clientes where ruc=v_ruc;
select region into v_region from clientes where ruc=v_ruc;

set sql_safe_updates=0;
delete from tmp_actividad;

/*CATEGORIA OBLIGADO*/

if (v_categoria='PN Obligado') then
insert into tmp_actividad (id_actividad, ruc, condicion,condicion_dos, parametro_inicio, parametro_fin) Select id_actividad,v_ruc,condicion,condicion_dos,parametro_inicio,parametro_fin from actividad where pn_obligado=1;

select max(id) into v_tmp_last from tmp_actividad where ruc=v_ruc;
select min(id) into v_tmp_first from tmp_actividad where ruc=v_ruc;

while v_tmp_first <= v_tmp_last do

Select id_actividad into v_actividad from tmp_actividad where id=v_tmp_first;

Select condicion into v_condicion from tmp_actividad where id=v_tmp_first;
Select parametro_inicio into v_parametro_inicio from tmp_actividad where id=v_tmp_first;
Select parametro_fin into v_parametro_fin from tmp_actividad where id=v_tmp_first;

Select a.frecuencia into v_frecuencia from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

Select a.vence into v_vence from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

select a.dias into v_dias_actividad from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

/*FRECUENCIA MENSUAL*/
if(v_frecuencia='Mensual') then
select min(id) into v_mes_first from frecuencia_mensual;
select max(id) into v_mes_last from frecuencia_mensual;

while v_mes_first <= v_mes_last do
Select mes into v_mes from frecuencia_mensual where id=v_mes_first;
Select declaraciones into v_declaracion from frecuencia_mensual where id=v_mes_first;
if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion is null)then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
	end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
	  VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;
end if;

set v_mes_first=v_mes_first+1;
end while;

elseif(v_frecuencia='Mes')then
if(v_digito_placa is not null and date(v_fecha_vence)>v_fecha)then
Select id into v_mes from frecuencia_mensual where matricula=v_digito_placa;
set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo and mes=v_frecuencia);
  end if;
end if;
elseif(v_frecuencia='Semestral')then
if(date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-','07','-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);

set v_fecha_vence_s=concat(v_periodo,'-','12','-',v_dia_digito);
set v_fecha_aviso_s = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'JULIO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);

    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence_s, INTERVAL 1 MONTH),'ENERO','PENDIENTE',null,DATE_ADD(v_fecha_aviso_s, INTERVAL 1 MONTH),null,v_periodo);
  end if;
end if;
elseif(v_frecuencia='Region')then
if(v_region='COSTA')then
set v_fecha_vence=concat(v_periodo,'-',04,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='ABRIL')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'ABRIL','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
elseif(v_region='SIERRA' and date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-',08,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='AGOSTO')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'AGOSTO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
end if;

else  /*ANUAL*/

Select id into v_mes from frecuencia_mensual where mes=v_frecuencia;

if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodoand and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='periodo siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion='periodo actual')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

end if;

set v_mes_first=v_mes_first+1;

end if;
delete from tmp_actividad where id=v_tmp_first;
set v_tmp_first=v_tmp_first+1;    
  end while;
  
end if;

/* FIN CATEGORIA OBLIGADO*/
/* INICIO CATEGORIA No Obligado*/

if (v_categoria='PN No Obligado') then
insert into tmp_actividad (id_actividad, ruc, condicion, parametro_inicio, parametro_fin) Select id_actividad,v_ruc,condicion,parametro_inicio,parametro_fin from actividad where pn_no_obligado=1;

select max(id) into v_tmp_last from tmp_actividad where ruc=v_ruc;
select min(id) into v_tmp_first from tmp_actividad where ruc=v_ruc;

while v_tmp_first <= v_tmp_last do

Select id_actividad into v_actividad from tmp_actividad where id=v_tmp_first;

Select condicion into v_condicion from tmp_actividad where id=v_tmp_first;
Select parametro_inicio into v_parametro_inicio from tmp_actividad where id=v_tmp_first;
Select parametro_fin into v_parametro_fin from tmp_actividad where id=v_tmp_first;

Select a.frecuencia into v_frecuencia from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

Select a.vence into v_vence from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

select a.dias into v_dias_actividad from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

/*FRECUENCIA MENSUAL*/
if(v_frecuencia='Mensual') then
select min(id) into v_mes_first from frecuencia_mensual;
select max(id) into v_mes_last from frecuencia_mensual;

while v_mes_first <= v_mes_last do
Select mes into v_mes from frecuencia_mensual where id=v_mes_first;
Select declaraciones into v_declaracion from frecuencia_mensual where id=v_mes_first;
if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion is null)then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
	end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
	  VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;
end if;

set v_mes_first=v_mes_first+1;
end while;

elseif(v_frecuencia='Mes')then
if(v_digito_placa is not null and date(v_fecha_vence)>v_fecha)then
Select id into v_mes from frecuencia_mensual where matricula=v_digito_placa;
set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo and mes=v_frecuencia);
  end if;
end if;
elseif(v_frecuencia='Semestral')then
if(date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-','07','-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);

set v_fecha_vence_s=concat(v_periodo,'-','12','-',v_dia_digito);
set v_fecha_aviso_s = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'JULIO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);

    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence_s, INTERVAL 1 MONTH),'ENERO','PENDIENTE',null,DATE_ADD(v_fecha_aviso_s, INTERVAL 1 MONTH),null,v_periodo);
  end if;
end if;
elseif(v_frecuencia='Region')then
if(v_region='COSTA')then
set v_fecha_vence=concat(v_periodo,'-',04,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='ABRIL')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'ABRIL','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
elseif(v_region='SIERRA' and date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-',08,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='AGOSTO')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'AGOSTO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
end if;

else  /*ANUAL*/

Select id into v_mes from frecuencia_mensual where mes=v_frecuencia;

if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodoand and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='periodo siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion='periodo actual')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

end if;

set v_mes_first=v_mes_first+1;

end if;
delete from tmp_actividad where id=v_tmp_first;
set v_tmp_first=v_tmp_first+1;    
  end while;
  
end if;
/* FIN CATEGORIA No Obligado*/
/* INICIO CATEGORIA RISE*/

if (v_categoria='PN Rise') then
insert into tmp_actividad (id_actividad, ruc, condicion, parametro_inicio, parametro_fin) Select id_actividad,v_ruc,condicion,parametro_inicio,parametro_fin from actividad where pn_rise=1;

select max(id) into v_tmp_last from tmp_actividad where ruc=v_ruc;
select min(id) into v_tmp_first from tmp_actividad where ruc=v_ruc;

while v_tmp_first <= v_tmp_last do

Select id_actividad into v_actividad from tmp_actividad where id=v_tmp_first;

Select condicion into v_condicion from tmp_actividad where id=v_tmp_first;
Select parametro_inicio into v_parametro_inicio from tmp_actividad where id=v_tmp_first;
Select parametro_fin into v_parametro_fin from tmp_actividad where id=v_tmp_first;

Select a.frecuencia into v_frecuencia from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

Select a.vence into v_vence from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

select a.dias into v_dias_actividad from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

/*FRECUENCIA MENSUAL*/
if(v_frecuencia='Mensual') then
select min(id) into v_mes_first from frecuencia_mensual;
select max(id) into v_mes_last from frecuencia_mensual;

while v_mes_first <= v_mes_last do
Select mes into v_mes from frecuencia_mensual where id=v_mes_first;
Select declaraciones into v_declaracion from frecuencia_mensual where id=v_mes_first;
if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion is null)then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
	end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
	  VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;
end if;

set v_mes_first=v_mes_first+1;
end while;

elseif(v_frecuencia='Mes')then
if(v_digito_placa is not null and date(v_fecha_vence)>v_fecha)then
Select id into v_mes from frecuencia_mensual where matricula=v_digito_placa;
set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo and mes=v_frecuencia);
  end if;
end if;
elseif(v_frecuencia='Semestral')then
if(date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-','07','-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);

set v_fecha_vence_s=concat(v_periodo,'-','12','-',v_dia_digito);
set v_fecha_aviso_s = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'JULIO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);

    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence_s, INTERVAL 1 MONTH),'ENERO','PENDIENTE',null,DATE_ADD(v_fecha_aviso_s, INTERVAL 1 MONTH),null,v_periodo);
  end if;
end if;
elseif(v_frecuencia='Region')then
if(v_region='COSTA')then
set v_fecha_vence=concat(v_periodo,'-',04,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='ABRIL')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'ABRIL','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
elseif(v_region='SIERRA' and date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-',08,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='AGOSTO')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'AGOSTO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
end if;

else  /*ANUAL*/

Select id into v_mes from frecuencia_mensual where mes=v_frecuencia;

if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodoand and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='periodo siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion='periodo actual')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

end if;

set v_mes_first=v_mes_first+1;

end if;
delete from tmp_actividad where id=v_tmp_first;
set v_tmp_first=v_tmp_first+1;    
  end while;
  
end if;

/* FIN CATEGORIA RISE*/
/* INICIO CATEGORIA PN Empleado*/

if (v_categoria='PN Empleado') then
insert into tmp_actividad (id_actividad, ruc, condicion, parametro_inicio, parametro_fin) Select id_actividad,v_ruc,condicion,parametro_inicio,parametro_fin from actividad where pn_empleado=1;


select max(id) into v_tmp_last from tmp_actividad where ruc=v_ruc;
select min(id) into v_tmp_first from tmp_actividad where ruc=v_ruc;

while v_tmp_first <= v_tmp_last do

Select id_actividad into v_actividad from tmp_actividad where id=v_tmp_first;

Select condicion into v_condicion from tmp_actividad where id=v_tmp_first;
Select parametro_inicio into v_parametro_inicio from tmp_actividad where id=v_tmp_first;
Select parametro_fin into v_parametro_fin from tmp_actividad where id=v_tmp_first;

Select a.frecuencia into v_frecuencia from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

Select a.vence into v_vence from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

select a.dias into v_dias_actividad from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

/*FRECUENCIA MENSUAL*/
if(v_frecuencia='Mensual') then
select min(id) into v_mes_first from frecuencia_mensual;
select max(id) into v_mes_last from frecuencia_mensual;

while v_mes_first <= v_mes_last do
Select mes into v_mes from frecuencia_mensual where id=v_mes_first;
Select declaraciones into v_declaracion from frecuencia_mensual where id=v_mes_first;
if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion is null)then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
	end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
	  VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;
end if;

set v_mes_first=v_mes_first+1;
end while;

elseif(v_frecuencia='Mes')then
if(v_digito_placa is not null and date(v_fecha_vence)>v_fecha)then
Select id into v_mes from frecuencia_mensual where matricula=v_digito_placa;
set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo and mes=v_frecuencia);
  end if;
end if;
elseif(v_frecuencia='Semestral')then
if(date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-','07','-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);

set v_fecha_vence_s=concat(v_periodo,'-','12','-',v_dia_digito);
set v_fecha_aviso_s = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'JULIO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);

    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence_s, INTERVAL 1 MONTH),'ENERO','PENDIENTE',null,DATE_ADD(v_fecha_aviso_s, INTERVAL 1 MONTH),null,v_periodo);
  end if;
end if;
elseif(v_frecuencia='Region')then
if(v_region='COSTA')then
set v_fecha_vence=concat(v_periodo,'-',04,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='ABRIL')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'ABRIL','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
elseif(v_region='SIERRA' and date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-',08,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='AGOSTO')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'AGOSTO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
end if;

else  /*ANUAL*/

Select id into v_mes from frecuencia_mensual where mes=v_frecuencia;

if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodoand and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='periodo siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion='periodo actual')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

end if;

set v_mes_first=v_mes_first+1;

end if;
delete from tmp_actividad where id=v_tmp_first;
set v_tmp_first=v_tmp_first+1;    
  end while;
  
end if;
/* FIN CATEGORIA PN Empleado*/
/* INICIO CATEGORIA PJuridica - SA*/

if (v_categoria='Pjuridica SA') then
insert into tmp_actividad (id_actividad, ruc, condicion, parametro_inicio, parametro_fin) Select id_actividad,v_ruc,condicion,parametro_inicio,parametro_fin from actividad where pj_sa=1;

select max(id) into v_tmp_last from tmp_actividad where ruc=v_ruc;
select min(id) into v_tmp_first from tmp_actividad where ruc=v_ruc;

while v_tmp_first <= v_tmp_last do

Select id_actividad into v_actividad from tmp_actividad where id=v_tmp_first;

Select condicion into v_condicion from tmp_actividad where id=v_tmp_first;
Select parametro_inicio into v_parametro_inicio from tmp_actividad where id=v_tmp_first;
Select parametro_fin into v_parametro_fin from tmp_actividad where id=v_tmp_first;

Select a.frecuencia into v_frecuencia from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

Select a.vence into v_vence from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

select a.dias into v_dias_actividad from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

/*FRECUENCIA MENSUAL*/
if(v_frecuencia='Mensual') then
select min(id) into v_mes_first from frecuencia_mensual;
select max(id) into v_mes_last from frecuencia_mensual;

while v_mes_first <= v_mes_last do
Select mes into v_mes from frecuencia_mensual where id=v_mes_first;
Select declaraciones into v_declaracion from frecuencia_mensual where id=v_mes_first;
if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion is null)then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
	end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
	  VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;
end if;

set v_mes_first=v_mes_first+1;
end while;

elseif(v_frecuencia='Mes')then
if(v_digito_placa is not null and date(v_fecha_vence)>v_fecha)then
Select id into v_mes from frecuencia_mensual where matricula=v_digito_placa;
set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo and mes=v_frecuencia);
  end if;
end if;
elseif(v_frecuencia='Semestral')then
if(date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-','07','-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);

set v_fecha_vence_s=concat(v_periodo,'-','12','-',v_dia_digito);
set v_fecha_aviso_s = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'JULIO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);

    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence_s, INTERVAL 1 MONTH),'ENERO','PENDIENTE',null,DATE_ADD(v_fecha_aviso_s, INTERVAL 1 MONTH),null,v_periodo);
  end if;
end if;
elseif(v_frecuencia='Region')then
if(v_region='COSTA')then
set v_fecha_vence=concat(v_periodo,'-',04,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='ABRIL')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'ABRIL','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
elseif(v_region='SIERRA' and date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-',08,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='AGOSTO')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'AGOSTO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
end if;

else  /*ANUAL*/

Select id into v_mes from frecuencia_mensual where mes=v_frecuencia;

if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodoand and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='periodo siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion='periodo actual')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

end if;

set v_mes_first=v_mes_first+1;

end if;
delete from tmp_actividad where id=v_tmp_first;
set v_tmp_first=v_tmp_first+1;    
  end while;
  
end if;
/* FIN CATEGORIA PJuridica - SA*/
/* INICIO CATEGORIA PJuridica - CIA LTDA*/

if (v_categoria='Pjuridica CIALTDA') then
insert into tmp_actividad (id_actividad, ruc, condicion, parametro_inicio, parametro_fin) Select id_actividad,v_ruc,condicion,parametro_inicio,parametro_fin from actividad where pj_cia_ltda=1;

select max(id) into v_tmp_last from tmp_actividad where ruc=v_ruc;
select min(id) into v_tmp_first from tmp_actividad where ruc=v_ruc;

while v_tmp_first <= v_tmp_last do

Select id_actividad into v_actividad from tmp_actividad where id=v_tmp_first;

Select condicion into v_condicion from tmp_actividad where id=v_tmp_first;
Select parametro_inicio into v_parametro_inicio from tmp_actividad where id=v_tmp_first;
Select parametro_fin into v_parametro_fin from tmp_actividad where id=v_tmp_first;

Select a.frecuencia into v_frecuencia from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

Select a.vence into v_vence from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

select a.dias into v_dias_actividad from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

/*FRECUENCIA MENSUAL*/
if(v_frecuencia='Mensual') then
select min(id) into v_mes_first from frecuencia_mensual;
select max(id) into v_mes_last from frecuencia_mensual;

while v_mes_first <= v_mes_last do
Select mes into v_mes from frecuencia_mensual where id=v_mes_first;
Select declaraciones into v_declaracion from frecuencia_mensual where id=v_mes_first;
if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion is null)then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
	end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
	  VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;
end if;

set v_mes_first=v_mes_first+1;
end while;

elseif(v_frecuencia='Mes')then
if(v_digito_placa is not null and date(v_fecha_vence)>v_fecha)then
Select id into v_mes from frecuencia_mensual where matricula=v_digito_placa;
set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo and mes=v_frecuencia);
  end if;
end if;
elseif(v_frecuencia='Semestral')then
if(date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-','07','-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);

set v_fecha_vence_s=concat(v_periodo,'-','12','-',v_dia_digito);
set v_fecha_aviso_s = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'JULIO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);

    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence_s, INTERVAL 1 MONTH),'ENERO','PENDIENTE',null,DATE_ADD(v_fecha_aviso_s, INTERVAL 1 MONTH),null,v_periodo);
  end if;
end if;
elseif(v_frecuencia='Region')then
if(v_region='COSTA')then
set v_fecha_vence=concat(v_periodo,'-',04,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='ABRIL')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'ABRIL','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
elseif(v_region='SIERRA' and date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-',08,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='AGOSTO')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'AGOSTO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
end if;

else  /*ANUAL*/

Select id into v_mes from frecuencia_mensual where mes=v_frecuencia;

if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodoand and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='periodo siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion='periodo actual')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

end if;

set v_mes_first=v_mes_first+1;

end if;
delete from tmp_actividad where id=v_tmp_first;
set v_tmp_first=v_tmp_first+1;    
  end while;
  
end if;

/* FIN CATEGORIA PJuridica - CIA LTDA*/
/* INICIO CATEGORIAPJuridica - Sin Fin Lucro*/

if (v_categoria='Pjuridica SinFinLucro') then
insert into tmp_actividad (id_actividad, ruc, condicion, parametro_inicio, parametro_fin) Select id_actividad,v_ruc,condicion,parametro_inicio,parametro_fin from actividad where pj_sin_fin_lucro=1;

select max(id) into v_tmp_last from tmp_actividad where ruc=v_ruc;
select min(id) into v_tmp_first from tmp_actividad where ruc=v_ruc;

while v_tmp_first <= v_tmp_last do

Select id_actividad into v_actividad from tmp_actividad where id=v_tmp_first;

Select condicion into v_condicion from tmp_actividad where id=v_tmp_first;
Select parametro_inicio into v_parametro_inicio from tmp_actividad where id=v_tmp_first;
Select parametro_fin into v_parametro_fin from tmp_actividad where id=v_tmp_first;

Select a.frecuencia into v_frecuencia from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

Select a.vence into v_vence from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

select a.dias into v_dias_actividad from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

/*FRECUENCIA MENSUAL*/
if(v_frecuencia='Mensual') then
select min(id) into v_mes_first from frecuencia_mensual;
select max(id) into v_mes_last from frecuencia_mensual;

while v_mes_first <= v_mes_last do
Select mes into v_mes from frecuencia_mensual where id=v_mes_first;
Select declaraciones into v_declaracion from frecuencia_mensual where id=v_mes_first;
if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion is null)then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
	end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
	  VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;
end if;

set v_mes_first=v_mes_first+1;
end while;

elseif(v_frecuencia='Mes')then
if(v_digito_placa is not null and date(v_fecha_vence)>v_fecha)then
Select id into v_mes from frecuencia_mensual where matricula=v_digito_placa;
set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo and mes=v_frecuencia);
  end if;
end if;
elseif(v_frecuencia='Semestral')then
if(date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-','07','-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);

set v_fecha_vence_s=concat(v_periodo,'-','12','-',v_dia_digito);
set v_fecha_aviso_s = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'JULIO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);

    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence_s, INTERVAL 1 MONTH),'ENERO','PENDIENTE',null,DATE_ADD(v_fecha_aviso_s, INTERVAL 1 MONTH),null,v_periodo);
  end if;
end if;
elseif(v_frecuencia='Region')then
if(v_region='COSTA')then
set v_fecha_vence=concat(v_periodo,'-',04,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='ABRIL')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'ABRIL','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
elseif(v_region='SIERRA' and date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-',08,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='AGOSTO')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'AGOSTO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
end if;

else  /*ANUAL*/

Select id into v_mes from frecuencia_mensual where mes=v_frecuencia;

if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodoand and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='periodo siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion='periodo actual')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

end if;

set v_mes_first=v_mes_first+1;

end if;
delete from tmp_actividad where id=v_tmp_first;
set v_tmp_first=v_tmp_first+1;    
  end while;
  
end if;
/* FIN CATEGORIA PJuridica - Sin Fin Lucro*/
/* INICIO CATEGORIA P Juridica - SEPS Finan*/

if (v_categoria='Pjuridica SEPS FINAN') then
insert into tmp_actividad (id_actividad, ruc, condicion, parametro_inicio, parametro_fin) Select id_actividad,v_ruc,condicion,parametro_inicio,parametro_fin from actividad where pj_seps_finan=1;

select max(id) into v_tmp_last from tmp_actividad where ruc=v_ruc;
select min(id) into v_tmp_first from tmp_actividad where ruc=v_ruc;

while v_tmp_first <= v_tmp_last do

Select id_actividad into v_actividad from tmp_actividad where id=v_tmp_first;

Select condicion into v_condicion from tmp_actividad where id=v_tmp_first;
Select parametro_inicio into v_parametro_inicio from tmp_actividad where id=v_tmp_first;
Select parametro_fin into v_parametro_fin from tmp_actividad where id=v_tmp_first;

Select a.frecuencia into v_frecuencia from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

Select a.vence into v_vence from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

select a.dias into v_dias_actividad from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

/*FRECUENCIA MENSUAL*/
if(v_frecuencia='Mensual') then
select min(id) into v_mes_first from frecuencia_mensual;
select max(id) into v_mes_last from frecuencia_mensual;

while v_mes_first <= v_mes_last do
Select mes into v_mes from frecuencia_mensual where id=v_mes_first;
Select declaraciones into v_declaracion from frecuencia_mensual where id=v_mes_first;
if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion is null)then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
	end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
	  VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;
end if;

set v_mes_first=v_mes_first+1;
end while;

elseif(v_frecuencia='Mes')then
if(v_digito_placa is not null and date(v_fecha_vence)>v_fecha)then
Select id into v_mes from frecuencia_mensual where matricula=v_digito_placa;
set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo and mes=v_frecuencia);
  end if;
end if;
elseif(v_frecuencia='Semestral')then
if(date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-','07','-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);

set v_fecha_vence_s=concat(v_periodo,'-','12','-',v_dia_digito);
set v_fecha_aviso_s = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'JULIO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);

    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence_s, INTERVAL 1 MONTH),'ENERO','PENDIENTE',null,DATE_ADD(v_fecha_aviso_s, INTERVAL 1 MONTH),null,v_periodo);
  end if;
end if;
elseif(v_frecuencia='Region')then
if(v_region='COSTA')then
set v_fecha_vence=concat(v_periodo,'-',04,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='ABRIL')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'ABRIL','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
elseif(v_region='SIERRA' and date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-',08,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='AGOSTO')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'AGOSTO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
end if;

else  /*ANUAL*/

Select id into v_mes from frecuencia_mensual where mes=v_frecuencia;

if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodoand and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='periodo siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion='periodo actual')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

end if;

set v_mes_first=v_mes_first+1;

end if;
delete from tmp_actividad where id=v_tmp_first;
set v_tmp_first=v_tmp_first+1;    
  end while;
  
end if;

/* FIN CATEGORIA P Juridica - SEPS Finan*/
/* INICIO CATEGORIA P Juridica - SEPS No Finan*/

if (v_categoria='Pjuridica SEPS NoFinan') then
insert into tmp_actividad (id_actividad, ruc, condicion, parametro_inicio, parametro_fin) Select id_actividad,v_ruc,condicion,parametro_inicio,parametro_fin from actividad where pj_seps_no_finan=1;

select max(id) into v_tmp_last from tmp_actividad where ruc=v_ruc;
select min(id) into v_tmp_first from tmp_actividad where ruc=v_ruc;

while v_tmp_first <= v_tmp_last do

Select id_actividad into v_actividad from tmp_actividad where id=v_tmp_first;

Select condicion into v_condicion from tmp_actividad where id=v_tmp_first;
Select parametro_inicio into v_parametro_inicio from tmp_actividad where id=v_tmp_first;
Select parametro_fin into v_parametro_fin from tmp_actividad where id=v_tmp_first;

Select a.frecuencia into v_frecuencia from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

Select a.vence into v_vence from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

select a.dias into v_dias_actividad from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

/*FRECUENCIA MENSUAL*/
if(v_frecuencia='Mensual') then
select min(id) into v_mes_first from frecuencia_mensual;
select max(id) into v_mes_last from frecuencia_mensual;

while v_mes_first <= v_mes_last do
Select mes into v_mes from frecuencia_mensual where id=v_mes_first;
Select declaraciones into v_declaracion from frecuencia_mensual where id=v_mes_first;
if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion is null)then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
	end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
	  VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;
end if;

set v_mes_first=v_mes_first+1;
end while;

elseif(v_frecuencia='Mes')then
if(v_digito_placa is not null and date(v_fecha_vence)>v_fecha)then
Select id into v_mes from frecuencia_mensual where matricula=v_digito_placa;
set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo and mes=v_frecuencia);
  end if;
end if;
elseif(v_frecuencia='Semestral')then
if(date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-','07','-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);

set v_fecha_vence_s=concat(v_periodo,'-','12','-',v_dia_digito);
set v_fecha_aviso_s = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'JULIO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);

    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence_s, INTERVAL 1 MONTH),'ENERO','PENDIENTE',null,DATE_ADD(v_fecha_aviso_s, INTERVAL 1 MONTH),null,v_periodo);
  end if;
end if;
elseif(v_frecuencia='Region')then
if(v_region='COSTA')then
set v_fecha_vence=concat(v_periodo,'-',04,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='ABRIL')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'ABRIL','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
elseif(v_region='SIERRA' and date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-',08,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='AGOSTO')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'AGOSTO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
end if;

else  /*ANUAL*/

Select id into v_mes from frecuencia_mensual where mes=v_frecuencia;

if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodoand and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='periodo siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion='periodo actual')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

end if;

set v_mes_first=v_mes_first+1;

end if;
delete from tmp_actividad where id=v_tmp_first;
set v_tmp_first=v_tmp_first+1;    
  end while;
  
end if;

/* FIN CATEGORIA 'P Juridica - SEPS No Finan*/
/* INICIO CATEGORIA No Obligado Mensual*/
if (v_categoria='PN Semestral') then
insert into tmp_actividad (id_actividad, ruc, condicion, parametro_inicio, parametro_fin) Select id_actividad,v_ruc,condicion,parametro_inicio,parametro_fin from actividad where pn_no_obligado_semestral=1;

select max(id) into v_tmp_last from tmp_actividad where ruc=v_ruc;
select min(id) into v_tmp_first from tmp_actividad where ruc=v_ruc;

while v_tmp_first <= v_tmp_last do

Select id_actividad into v_actividad from tmp_actividad where id=v_tmp_first;

Select condicion into v_condicion from tmp_actividad where id=v_tmp_first;
Select parametro_inicio into v_parametro_inicio from tmp_actividad where id=v_tmp_first;
Select parametro_fin into v_parametro_fin from tmp_actividad where id=v_tmp_first;

Select a.frecuencia into v_frecuencia from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

Select a.vence into v_vence from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

select a.dias into v_dias_actividad from actividad a, tmp_actividad b 
where a.id_actividad=b.id_actividad and b.id=v_tmp_first;

/*FRECUENCIA MENSUAL*/
if(v_frecuencia='Mensual') then
select min(id) into v_mes_first from frecuencia_mensual;
select max(id) into v_mes_last from frecuencia_mensual;

while v_mes_first <= v_mes_last do
Select mes into v_mes from frecuencia_mensual where id=v_mes_first;
Select declaraciones into v_declaracion from frecuencia_mensual where id=v_mes_first;
if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion is null)then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes_first,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
	end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
	  VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='mes siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;
end if;

set v_mes_first=v_mes_first+1;
end while;

elseif(v_frecuencia='Mes')then
if(v_digito_placa is not null and date(v_fecha_vence)>v_fecha)then
Select id into v_mes from frecuencia_mensual where matricula=v_digito_placa;
set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo and mes=v_frecuencia);
  end if;
end if;
elseif(v_frecuencia='Semestral')then
if(date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-','07','-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);

set v_fecha_vence_s=concat(v_periodo,'-','12','-',v_dia_digito);
set v_fecha_aviso_s = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'JULIO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);

    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence_s, INTERVAL 1 MONTH),'ENERO','PENDIENTE',null,DATE_ADD(v_fecha_aviso_s, INTERVAL 1 MONTH),null,v_periodo);
  end if;
end if;
elseif(v_frecuencia='Region')then
if(v_region='COSTA')then
set v_fecha_vence=concat(v_periodo,'-',04,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='ABRIL')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'ABRIL','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
elseif(v_region='SIERRA' and date(v_fecha_vence)>v_fecha)then
set v_fecha_vence=concat(v_periodo,'-',08,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes='AGOSTO')then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,'AGOSTO','PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
end if;
end if;

else  /*ANUAL*/

Select id into v_mes from frecuencia_mensual where mes=v_frecuencia;

if(v_vence='D')then

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_dia_digito);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodoand and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
elseif(v_condicion='periodo siguiente')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,DATE_ADD(v_fecha_aviso, INTERVAL 1 MONTH),null,v_periodo);
    end if;
  end if;
elseif(v_condicion='periodo actual')then
  if(date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

else

set v_fecha_vence=concat(v_periodo,'-',v_mes,'-',v_vence);
set v_fecha_aviso = DATE_ADD(v_fecha_vence, INTERVAL -v_dias_actividad DAY);
if(v_condicion='afiliados')then
  if(v_afiliados='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 MONTH),v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='base_imponible')then
  if(v_base_imponible='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='declaracion_patrimonial')then
  if(v_declaracion_patrimonial='SI' and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion='empleados')then
if(v_condicion_dos='periodo actual') then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
elseif(v_condicion_dos='periodo siguiente')then
  if(v_parametro_inicio<=v_empleados<=v_parametro_fin and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  elseif(v_parametro_inicio>v_empleados and date(v_fecha_vence)>v_fecha)then
    if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_mes)then
      INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
      VALUES(v_ruc,v_actividad,curdate(),DATE_ADD(v_fecha_vence, INTERVAL 1 YEAR),v_mes,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
    end if;
  end if;
end if;
else
if(date(v_fecha_vence)>v_fecha)then
  if not exists(select *from agenda_actividad where ruc=v_ruc and id_actividad=v_actividad and periodo=v_periodo and mes=v_frecuencia)then
    INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_finalizacion, fecha_aviso, usuario,periodo)
    VALUES(v_ruc,v_actividad,curdate(),v_fecha_vence,v_frecuencia,'PENDIENTE',null,v_fecha_aviso,null,v_periodo);
  end if;
 end if;
end if;

end if;

set v_mes_first=v_mes_first+1;

end if;
delete from tmp_actividad where id=v_tmp_first;
set v_tmp_first=v_tmp_first+1;    
  end while;
  
end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `INUP_PRODUCTS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`soporte`@`%` PROCEDURE `INUP_PRODUCTS`( IDCLI VARCHAR(13),IDPRO INT(11),FREGISTRO DATE, FINICIO DATE, FFIN DATE, VER VARCHAR(45), FCADUCA DATE)
BEGIN 
INSERT INTO CLIENTES_PRODUCTOS VALUES(0,IDCLI,IDPRO,FREGISTRO,FINICIO,FFIN,VER,FCADUCA);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prueba` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`soporte`@`%` PROCEDURE `prueba`(fecha date)
begin
if(date('2019-12-01')>fecha)then
SELECT 'La fecha que ingreso es menor de la seteada';
else
SELECT 'La fecha que ingreso es mayor de la seteada';
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tarea_manual` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`soporte`@`%` PROCEDURE `tarea_manual`(v_ruc varchar(13), v_actividad int(11), vencimiento date, dias int(11))
BEGIN
DECLARE v_anio varchar(20);
DECLARE v_mes varchar(20);
DECLARE idmes varchar(20);
DECLARE v_fecha_aviso date;

SELECT MONTH(vencimiento) into idmes;
SELECT YEAR(vencimiento) into v_anio;
set v_fecha_aviso = DATE_ADD(vencimiento, INTERVAL -dias DAY);
SELECT mes into v_mes from frecuencia_mensual where id=idmes;

INSERT INTO agenda_actividad (ruc, id_actividad, creado, vence, mes, estado, fecha_aviso, periodo)
values(v_ruc,v_actividad,NOW(),vencimiento,v_mes,'PENDIENTE',v_fecha_aviso,v_anio);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-15  9:19:23
