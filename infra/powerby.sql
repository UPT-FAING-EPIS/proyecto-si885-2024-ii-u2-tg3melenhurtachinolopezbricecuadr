-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: powerby
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `codigo` varchar(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `cod_curso` varchar(20) NOT NULL,
  `nombre_curso` varchar(100) DEFAULT NULL,
  `semestre` varchar(20) NOT NULL,
  `matricula` int DEFAULT NULL,
  `faltas` int DEFAULT NULL,
  `notas` int DEFAULT NULL,
  `genero` varchar(20) DEFAULT NULL,
  `trabaja` tinyint(1) DEFAULT NULL,
  `cruce_horarios` tinyint(1) DEFAULT NULL,
  `consideracion_abandono` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`,`cod_curso`,`semestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES ('2011040531','MALTRAIN YÁÑEZ, Soledad Noemí','SI-684','INVESTIGACIÓN DE OPERACIONES','2022-II',2,12,7,'Femenino',1,0,'En riesgo'),('2011040531','MALTRAIN YÁÑEZ, Soledad Noemí','SI-684','INVESTIGACIÓN DE OPERACIONES','2023-I',2,10,11,'Femenino',0,1,'En riesgo'),('2011040667','ESPINOZA CASO, Lisbeth Isabel','SI-984','REDES Y COMUNICACIÓN DE DATOS II','2023-I',2,7,7,'Femenino',0,1,'Aceptable'),('2011040667','ESPINOZA CASO, Lisbeth Isabel','SI-984','REDES Y COMUNICACIÓN DE DATOS II','2023-II',2,29,6,'Femenino',0,0,'Abandono'),('2011040667','ESPINOZA CASO, Lisbeth Isabel','SI-984','REDES Y COMUNICACIÓN DE DATOS II','2024-I',2,6,11,'Femenino',0,0,'Aceptable'),('2012042648','LIMACO RUELAS, Josh Andrei','SI-685','DISEÑO Y ARQUITECTURA DE SOFTWARE','2023-I',2,17,9,'Masculino',0,0,'En riesgo'),('2012042648','LIMACO RUELAS, Josh Andrei','SI-685','DISEÑO Y ARQUITECTURA DE SOFTWARE','2024-I',2,4,11,'Masculino',1,1,'Aceptable'),('2012042648','LIMACO RUELAS, Josh Andrei','SI-786','PROGRAMACIÓN WEB I','2022-II',2,8,13,'Masculino',0,1,'En riesgo'),('2012042779','MAMANI CONDORI, Gilmer Donaldo','SI-885','INTELIGENCIA DE NEGOCIOS','2023-II',2,25,4,'Masculino',1,0,'Abandono'),('2012042779','MAMANI CONDORI, Gilmer Donaldo','SI-885','INTELIGENCIA DE NEGOCIOS','2024-I',2,9,11,'Masculino',0,1,'En riesgo'),('2013000725','PACORA SILVA, Jorge Carlos','SI-884','ESTADÍSTICA INFERENCIAL Y ANÁLISIS DE DATOS','2022-II',2,9,11,'Masculino',0,0,'En riesgo'),('2013000725','PACORA SILVA, Jorge Carlos','SI-884','ESTADÍSTICA INFERENCIAL Y ANÁLISIS DE DATOS','2023-I',2,9,12,'Masculino',1,1,'En riesgo'),('2013046566','MAMANI LIMACHE, Jhony José','SI-884','ESTADÍSTICA INFERENCIAL Y ANÁLISIS DE DATOS','2022-I',2,10,9,'Masculino',0,1,'En riesgo'),('2013046566','MAMANI LIMACHE, Jhony José','SI-884','ESTADÍSTICA INFERENCIAL Y ANÁLISIS DE DATOS','2023-I',2,8,13,'Masculino',0,0,'En riesgo'),('2014049369','CÁRCAMO LIENDO, Hernán Jesús','SI-081','TALLER DE TESIS II','2022-I',2,3,13,'Masculino',1,0,'Aceptable'),('2014049369','CÁRCAMO LIENDO, Hernán Jesús','SI-982','PROGRAMACIÓN WEB II','2022-I',2,9,11,'Masculino',0,1,'En riesgo'),('2015051384','SOTO RODRIGUEZ, Daniela Duanet','SI-586','PROGRAMACIÓN II','2022-II',2,5,12,'Femenino',0,1,'Aceptable'),('2015051384','SOTO RODRIGUEZ, Daniela Duanet','SI-884','ESTADÍSTICA INFERENCIAL Y ANÁLISIS DE DATOS','2023-II',2,7,10,'Femenino',0,0,'Aceptable'),('2015051384','SOTO RODRIGUEZ, Daniela Duanet','SI-884','ESTADÍSTICA INFERENCIAL Y ANÁLISIS DE DATOS','2024-I',2,4,11,'Femenino',1,0,'Aceptable'),('2015051384','SOTO RODRIGUEZ, Daniela Duanet','SI-887','INTERNET DE LAS COSAS','2023-II',2,10,11,'Femenino',0,1,'En riesgo'),('2015052382','LA TORRE ESQUIVEL, José André','SI-983','CONSTRUCCIÓN DE SOFTWARE I','2022-II',2,11,11,'Masculino',1,0,'En riesgo'),('2015052382','LA TORRE ESQUIVEL, José André','SI-985','GESTIÓN DE LA CONFIGURACIÓN DE SOFTWARE','2022-II',2,8,12,'Masculino',0,1,'En riesgo'),('2015052382','LA TORRE ESQUIVEL, José André','SI-985','GESTIÓN DE LA CONFIGURACIÓN DE SOFTWARE','2023-I',2,11,13,'Masculino',0,1,'En riesgo'),('2016056195','ESPECHE , Exequiel Federico','SI-982','PROGRAMACIÓN WEB II','2022-II',2,9,12,'Masculino',0,0,'En riesgo'),('2016056346','CONTRERAS MURGUIA, José Manuel','SI-983','CONSTRUCCIÓN DE SOFTWARE I','2023-I',2,5,9,'Masculino',1,1,'Aceptable'),('2016056346','CONTRERAS MURGUIA, José Manuel','SI-983','CONSTRUCCIÓN DE SOFTWARE I','2024-I',2,4,11,'Masculino',1,0,'Aceptable'),('2017057348','VARGAS FLORES, Daniel Arturo','INE-484','DISEÑO EN INGENIERÍA','2022-I',2,5,13,'Masculino',1,0,'Aceptable'),('2017057528','CCALLI CHATA, Joel Robert','SI-582','DISEÑO DE BASE DE DATOS','2022-I',2,14,7,'Masculino',1,1,'En riesgo'),('2017057528','CCALLI CHATA, Joel Robert','SI-582','DISEÑO DE BASE DE DATOS','2022-II',2,9,11,'Masculino',1,0,'En riesgo'),('2017057528','CCALLI CHATA, Joel Robert','SI-782','SISTEMAS OPERATIVOS II','2022-I',2,11,7,'Masculino',1,0,'En riesgo'),('2017057528','CCALLI CHATA, Joel Robert','SI-782','SISTEMAS OPERATIVOS II','2022-II',2,8,12,'Masculino',1,0,'En riesgo'),('2017057570','NEGRILLO CALISAYA, Marco Enrique','SI-582','DISEÑO DE BASE DE DATOS','2022-II',2,5,12,'Masculino',1,0,'Aceptable'),('2017057570','NEGRILLO CALISAYA, Marco Enrique','SI-586','PROGRAMACIÓN II','2022-I',2,9,13,'Masculino',1,1,'En riesgo'),('2017057570','NEGRILLO CALISAYA, Marco Enrique','SI-682','SISTEMAS OPERATIVOS I','2022-I',2,12,2,'Masculino',1,1,'En riesgo'),('2017057570','NEGRILLO CALISAYA, Marco Enrique','SI-682','SISTEMAS OPERATIVOS I','2022-II',2,4,13,'Masculino',0,0,'Aceptable'),('2017057570','NEGRILLO CALISAYA, Marco Enrique','SI-684','INVESTIGACIÓN DE OPERACIONES','2022-I',2,9,12,'Masculino',0,1,'En riesgo'),('2017057570','NEGRILLO CALISAYA, Marco Enrique','SI-685','DISEÑO Y ARQUITECTURA DE SOFTWARE','2022-I',2,11,8,'Masculino',1,0,'En riesgo'),('2017057578','CHALLO COAQUERA, Alexsander Wilson','SI-586','PROGRAMACIÓN II','2024-I',2,3,11,'Masculino',1,0,'Aceptable'),('2017057578','CHALLO COAQUERA, Alexsander Wilson','SI-782','SISTEMAS OPERATIVOS II','2024-I',2,5,12,'Masculino',1,0,'Aceptable'),('2017057849','CONCHA LLACA, Gerardo Alejandro','SI-686','PROGRAMACIÓN III','2022-I',2,20,6,'Masculino',1,1,'En riesgo'),('2017057849','CONCHA LLACA, Gerardo Alejandro','SI-686','PROGRAMACIÓN III','2022-II',2,18,9,'Masculino',0,0,'En riesgo'),('2017057849','CONCHA LLACA, Gerardo Alejandro','SI-686','PROGRAMACIÓN III','2024-I',2,3,11,'Masculino',1,0,'Aceptable'),('2017057851','CUADROS NAPA, Raúl Marcelo','SI-786','PROGRAMACIÓN WEB I','2022-I',2,10,11,'Masculino',0,0,'En riesgo'),('2017057851','CUADROS NAPA, Raúl Marcelo','SI-884','ESTADÍSTICA INFERENCIAL Y ANÁLISIS DE DATOS','2022-II',2,8,12,'Masculino',1,1,'En riesgo'),('2017057888','CASILLA MAQUERA, Tell Iván','SI-683','BASE DE DATOS I','2022-II',2,12,9,'Masculino',1,0,'En riesgo'),('2017057888','CASILLA MAQUERA, Tell Iván','SI-683','BASE DE DATOS I','2023-I',2,9,12,'Masculino',0,0,'En riesgo'),('2017057984','NEIRA MACHACA, Javier André','SI-686','PROGRAMACIÓN III','2022-I',2,14,5,'Masculino',1,1,'En riesgo'),('2017057984','NEIRA MACHACA, Javier André','SI-686','PROGRAMACIÓN III','2022-II',2,7,11,'Masculino',1,0,'Aceptable'),('2017059279','ROLDÁN LEA, RICHARD SMITH','SI-585','INGENIERÍA DE SOFTWARE','2023-I',2,9,13,'Masculino',0,1,'En riesgo'),('2017059537','PÓMEZ HUANCA, André Miguel','SI-884','ESTADÍSTICA INFERENCIAL Y ANÁLISIS DE DATOS','2023-II',2,27,8,'Masculino',1,0,'Abandono'),('2017059537','PÓMEZ HUANCA, André Miguel','SI-884','ESTADÍSTICA INFERENCIAL Y ANÁLISIS DE DATOS','2024-I',2,5,11,'Masculino',1,0,'Aceptable'),('2017059635','MENA QUISPE, Brandon José','SI-582','DISEÑO DE BASE DE DATOS','2022-I',2,12,8,'Masculino',1,0,'En riesgo'),('2017059635','MENA QUISPE, Brandon José','SI-582','DISEÑO DE BASE DE DATOS','2022-II',2,9,12,'Masculino',1,0,'En riesgo'),('2018000368','MARTÍNEZ YUFRA, Ericka Esther','SI-983','CONSTRUCCIÓN DE SOFTWARE I','2022-II',2,8,12,'Femenino',0,1,'En riesgo'),('2018000368','MARTÍNEZ YUFRA, Ericka Esther','SI-983','CONSTRUCCIÓN DE SOFTWARE I','2024-I',2,5,11,'Femenino',1,0,'Aceptable'),('2018000590','QUISPE LEVANO, Cristian Aldair','SI-586','PROGRAMACIÓN II','2023-II',2,6,10,'Masculino',0,0,'Aceptable'),('2018000590','QUISPE LEVANO, Cristian Aldair','SI-586','PROGRAMACIÓN II','2024-I',2,6,11,'Masculino',0,1,'Aceptable'),('2018000654','PACO RAMOS, Aarón Pedro','SI-586','PROGRAMACIÓN II','2022-II',2,7,11,'Masculino',0,1,'Aceptable'),('2018000654','PACO RAMOS, Aarón Pedro','SI-685','DISEÑO Y ARQUITECTURA DE SOFTWARE','2022-I',2,15,7,'Masculino',0,1,'En riesgo'),('2018000654','PACO RAMOS, Aarón Pedro','SI-685','DISEÑO Y ARQUITECTURA DE SOFTWARE','2022-II',2,6,12,'Masculino',0,0,'Aceptable'),('2018000654','PACO RAMOS, Aarón Pedro','SI-786','PROGRAMACIÓN WEB I','2022-II',2,14,9,'Masculino',1,0,'En riesgo'),('2018000654','PACO RAMOS, Aarón Pedro','SI-786','PROGRAMACIÓN WEB I','2023-I',2,12,11,'Masculino',0,0,'En riesgo'),('2018000722','VILLANUEVA YUCRA, Josue Joel','SI-586','PROGRAMACIÓN II','2022-I',2,11,6,'Masculino',1,0,'En riesgo'),('2018000722','VILLANUEVA YUCRA, Josue Joel','SI-586','PROGRAMACIÓN II','2022-II',2,7,13,'Masculino',1,0,'Aceptable'),('2018060900','GARCÉS GUEVARA, Whitmer Jhosue','SI-586','PROGRAMACIÓN II','2022-I',2,12,8,'Masculino',1,0,'En riesgo'),('2018060900','GARCÉS GUEVARA, Whitmer Jhosue','SI-682','SISTEMAS OPERATIVOS I','2022-I',2,10,8,'Masculino',1,1,'En riesgo'),('2018060900','GARCÉS GUEVARA, Whitmer Jhosue','SI-682','SISTEMAS OPERATIVOS I','2022-II',2,4,13,'Masculino',0,1,'Aceptable'),('2018060900','GARCÉS GUEVARA, Whitmer Jhosue','SI-685','DISEÑO Y ARQUITECTURA DE SOFTWARE','2022-I',2,13,7,'Masculino',0,0,'En riesgo'),('2018060900','GARCÉS GUEVARA, Whitmer Jhosue','SI-685','DISEÑO Y ARQUITECTURA DE SOFTWARE','2022-II',2,10,11,'Masculino',0,0,'En riesgo'),('2018060912','JAPURA QUISPE, Herminia Aurelia','SI-884','ESTADÍSTICA INFERENCIAL Y ANÁLISIS DE DATOS','2024-I',2,6,11,'Femenino',0,0,'Aceptable'),('2018060913','JIMENEZ QUISPE, Alex Rodrigo','SI-685','DISEÑO Y ARQUITECTURA DE SOFTWARE','2023-I',2,11,13,'Masculino',1,0,'En riesgo'),('2018062254','SAGUA RAMOS, Gustavo Alonso','SI-586','PROGRAMACIÓN II','2023-II',2,10,13,'Masculino',1,1,'En riesgo'),('2018062254','SAGUA RAMOS, Gustavo Alonso','SI-786','PROGRAMACIÓN WEB I','2022-II',2,8,13,'Masculino',1,1,'En riesgo'),('2018062487','CAXI CALANI, Luis Eduardo','SI-386','MATEMÁTICA DISCRETA','2022-I',2,7,10,'Masculino',0,1,'Aceptable'),('2018062487','CAXI CALANI, Luis Eduardo','SI-386','MATEMÁTICA DISCRETA','2022-II',2,12,11,'Masculino',1,0,'En riesgo'),('2019062986','ARCE BRACAMONTE, Sebastian Rodrigo','SI-686','PROGRAMACIÓN III','2023-II',2,3,10,'Masculino',0,0,'Aceptable'),('2019062986','ARCE BRACAMONTE, Sebastian Rodrigo','SI-686','PROGRAMACIÓN III','2024-I',2,3,11,'Masculino',1,1,'Aceptable'),('2019063319','CONDORI RAMOS, Brayan Froilan','SI-582','DISEÑO DE BASE DE DATOS','2022-II',2,13,7,'Masculino',0,0,'En riesgo'),('2019063319','CONDORI RAMOS, Brayan Froilan','SI-582','DISEÑO DE BASE DE DATOS','2023-II',2,14,11,'Masculino',0,1,'En riesgo'),('2019063321','PAZ HUAYCHANI, Frank Kevin','SI-983','CONSTRUCCIÓN DE SOFTWARE I','2024-I',2,4,12,'Masculino',0,1,'Aceptable'),('2019063322','VELA VARGAS, Abraham Jesús','SI-885','INTELIGENCIA DE NEGOCIOS','2023-I',2,14,9,'Masculino',1,0,'En riesgo'),('2019063322','VELA VARGAS, Abraham Jesús','SI-885','INTELIGENCIA DE NEGOCIOS','2023-II',2,14,11,'Masculino',1,1,'En riesgo'),('2019063322','VELA VARGAS, Abraham Jesús','SI-982','PROGRAMACIÓN WEB II','2023-II',2,30,6,'Masculino',0,1,'Abandono'),('2019063322','VELA VARGAS, Abraham Jesús','SI-982','PROGRAMACIÓN WEB II','2024-I',2,4,11,'Masculino',1,0,'Aceptable'),('2019063325','VILLALBA VILLANUEVA, Britany Abigail','SI-582','DISEÑO DE BASE DE DATOS','2022-I',2,14,7,'Femenino',0,1,'En riesgo'),('2019063325','VILLALBA VILLANUEVA, Britany Abigail','SI-582','DISEÑO DE BASE DE DATOS','2022-II',2,13,8,'Femenino',1,1,'En riesgo'),('2019063325','VILLALBA VILLANUEVA, Britany Abigail','SI-582','DISEÑO DE BASE DE DATOS','2023-I',2,10,12,'Femenino',1,0,'En riesgo'),('2019063325','VILLALBA VILLANUEVA, Britany Abigail','SI-585','INGENIERÍA DE SOFTWARE','2022-II',2,14,6,'Femenino',0,1,'En riesgo'),('2019063325','VILLALBA VILLANUEVA, Britany Abigail','SI-585','INGENIERÍA DE SOFTWARE','2023-I',2,8,12,'Femenino',1,1,'En riesgo'),('2019063326','LIMA CCOSI, Jeackory Geilly','SI-884','ESTADÍSTICA INFERENCIAL Y ANÁLISIS DE DATOS','2023-I',2,11,10,'Femenino',0,1,'En riesgo'),('2019063326','LIMA CCOSI, Jeackory Geilly','SI-884','ESTADÍSTICA INFERENCIAL Y ANÁLISIS DE DATOS','2023-II',2,6,11,'Femenino',0,0,'Aceptable'),('2019063327','ROMERO ROQUE, Angélica Beatriz','SI-982','PROGRAMACIÓN WEB II','2023-II',2,27,7,'Femenino',0,0,'Abandono'),('2019063327','ROMERO ROQUE, Angélica Beatriz','SI-982','PROGRAMACIÓN WEB II','2024-I',2,4,11,'Femenino',1,0,'Aceptable'),('2019063329','DE LA CRUZ CHOQUE, Ricardo Miguel','SI-887','INTERNET DE LAS COSAS','2023-I',2,9,10,'Masculino',0,0,'En riesgo'),('2019063329','DE LA CRUZ CHOQUE, Ricardo Miguel','SI-887','INTERNET DE LAS COSAS','2023-II',2,0,11,'Masculino',0,1,'Aceptable'),('2019063331','LIRA ALVAREZ, Rodrigo Samael Adonai','SI-586','PROGRAMACIÓN II','2023-I',2,9,12,'Masculino',0,0,'En riesgo'),('2019063331','LIRA ALVAREZ, Rodrigo Samael Adonai','SI-885','INTELIGENCIA DE NEGOCIOS','2023-II',2,17,9,'Masculino',1,1,'En riesgo'),('2019063331','LIRA ALVAREZ, Rodrigo Samael Adonai','SI-885','INTELIGENCIA DE NEGOCIOS','2024-I',2,5,11,'Masculino',1,0,'Aceptable'),('2019063334','EYZAGUIRRE MEDINA, Enzo Joaquín','SI-386','MATEMÁTICA DISCRETA','2023-I',2,10,10,'Masculino',0,0,'En riesgo'),('2019063334','EYZAGUIRRE MEDINA, Enzo Joaquín','SI-582','DISEÑO DE BASE DE DATOS','2023-I',2,11,7,'Masculino',1,1,'En riesgo'),('2019063335','PALACIOS QUISPE, Carlos Joaquín','SI-586','PROGRAMACIÓN II','2022-I',2,5,11,'Masculino',1,0,'Aceptable'),('2019063335','PALACIOS QUISPE, Carlos Joaquín','SI-683','BASE DE DATOS I','2022-II',2,8,12,'Masculino',1,1,'En riesgo'),('2019063335','PALACIOS QUISPE, Carlos Joaquín','SI-683','BASE DE DATOS I','2023-II',2,13,11,'Masculino',0,1,'En riesgo'),('2019063635','YUCRA MAMANI, Vanessa','SI-586','PROGRAMACIÓN II','2022-I',2,14,5,'Femenino',1,1,'En riesgo'),('2019063635','YUCRA MAMANI, Vanessa','SI-684','INVESTIGACIÓN DE OPERACIONES','2022-I',2,10,12,'Femenino',0,1,'En riesgo'),('2019063640','UNAPILLCO PAREDES, Gianfranco Piero','SI-586','PROGRAMACIÓN II','2023-I',2,14,9,'Masculino',0,1,'En riesgo'),('2019063640','UNAPILLCO PAREDES, Gianfranco Piero','SI-586','PROGRAMACIÓN II','2024-I',2,2,11,'Masculino',0,1,'Aceptable'),('2019063641','NAVARRO SALAZAR, Elar Alexander','EG-781','PROBLEMAS Y DESAFIOS DEL PERÚ EN UN MUNDO GLOBAL','2022-II',2,8,11,'Masculino',1,1,'En riesgo'),('2019063641','NAVARRO SALAZAR, Elar Alexander','EG-781','PROBLEMAS Y DESAFIOS DEL PERÚ EN UN MUNDO GLOBAL','2023-I',2,7,12,'Masculino',0,0,'Aceptable'),('2019063641','NAVARRO SALAZAR, Elar Alexander','SI-483','INTERACCIÓN Y DISEÑO DE INTERFACES','2022-II',2,9,12,'Masculino',0,0,'En riesgo'),('2019063854','CHÁVEZ LINARES, César Fabián','SI-682','SISTEMAS OPERATIVOS I','2022-I',2,10,11,'Masculino',1,1,'En riesgo'),('2019063854','CHÁVEZ LINARES, César Fabián','SI-686','PROGRAMACIÓN III','2022-II',2,16,9,'Masculino',0,1,'En riesgo'),('2019063854','CHÁVEZ LINARES, César Fabián','SI-686','PROGRAMACIÓN III','2023-II',2,25,8,'Masculino',0,0,'Abandono'),('2019063854','CHÁVEZ LINARES, César Fabián','SI-686','PROGRAMACIÓN III','2024-I',2,3,11,'Masculino',0,0,'Aceptable'),('2019064024','VILCA CONDORI, Erlang Fernando','SI-884','ESTADÍSTICA INFERENCIAL Y ANÁLISIS DE DATOS','2023-I',2,8,12,'Masculino',0,1,'En riesgo'),('2019064918','HUANACUNI GONZALES, Eddie Imanol','EG-182','MATEMÁTICA BÁSICA','2024-I',2,5,12,'Masculino',1,1,'Aceptable'),('2019065026','CHARA APAZA, Edgar Diego','SI-785','GESTIÓN DE PROYECTOS DE TI','2023-I',2,8,11,'Masculino',0,0,'En riesgo'),('2019065026','CHARA APAZA, Edgar Diego','SI-882','REDES Y COMUNICACIÓN DE DATOS I','2023-I',2,8,11,'Masculino',0,0,'En riesgo'),('2019065026','CHARA APAZA, Edgar Diego','SI-883','SOLUCIONES MÓVILES I','2022-I',2,20,8,'Masculino',0,0,'En riesgo'),('2019065026','CHARA APAZA, Edgar Diego','SI-883','SOLUCIONES MÓVILES I','2023-I',2,5,11,'Masculino',1,1,'Aceptable'),('2019065163','CHURA TICONA, Mary Luz','SI-581','ARQUITECTURA DE COMPUTADORAS','2023-I',2,11,9,'Femenino',0,0,'En riesgo'),('2019065163','CHURA TICONA, Mary Luz','SI-581','ARQUITECTURA DE COMPUTADORAS','2023-II',2,12,11,'Femenino',0,1,'En riesgo'),('2020066927','VILLANUEVA BARRIGA, Fernando Wilson','SI-384','ESTRUCTURA DE DATOS','2024-I',2,5,14,'Masculino',1,0,'Aceptable'),('2020066927','VILLANUEVA BARRIGA, Fernando Wilson','SI-386','MATEMÁTICA DISCRETA','2024-I',2,3,12,'Masculino',0,0,'Aceptable'),('2020067145','ANAHUA COAQUIRA, Mayner Gonzalo','INE-286','MATEMÁTICA II','2022-I',2,5,11,'Masculino',0,0,'Aceptable'),('2020067574','CASTRO PACOHUANACO, Juan Diego','SI-384','ESTRUCTURA DE DATOS','2023-II',2,5,11,'Masculino',0,0,'Aceptable'),('2020067574','CASTRO PACOHUANACO, Juan Diego','SI-386','MATEMÁTICA DISCRETA','2024-I',2,5,12,'Masculino',0,0,'Aceptable'),('2020067574','CASTRO PACOHUANACO, Juan Diego','SI-483','INTERACCIÓN Y DISEÑO DE INTERFACES','2024-I',2,5,11,'Masculino',0,1,'Aceptable'),('2020067577','CHATA CHOQUE, Brant Antony','SI-586','PROGRAMACIÓN II','2022-II',2,12,10,'Masculino',0,1,'En riesgo'),('2020067577','CHATA CHOQUE, Brant Antony','SI-586','PROGRAMACIÓN II','2023-I',2,5,14,'Masculino',0,0,'Aceptable'),('2020067580','LARICO CHAMBI, Daniel Alcides','SI-386','MATEMÁTICA DISCRETA','2022-I',2,12,8,'Masculino',0,1,'En riesgo'),('2020067580','LARICO CHAMBI, Daniel Alcides','SI-386','MATEMÁTICA DISCRETA','2022-II',2,6,11,'Masculino',0,1,'Aceptable'),('2020067580','LARICO CHAMBI, Daniel Alcides','SI-483','INTERACCIÓN Y DISEÑO DE INTERFACES','2023-I',2,11,11,'Masculino',0,0,'En riesgo'),('2020068762','LUNA JUAREZ, Juan Brendon','SI-686','PROGRAMACIÓN III','2024-I',2,5,11,'Masculino',1,0,'Aceptable'),('2020068763','MAMANI VALDIVIA, Elvis','SI-586','PROGRAMACIÓN II','2023-II',2,20,9,'Masculino',0,1,'En riesgo'),('2021069826','ALVA GALLEGOS, Andrey Raul','EG-183','ESTRATEGIAS PARA EL APRENDIZAJE AUTÓNOMO','2023-I',2,9,12,'Masculino',1,0,'En riesgo'),('2021069826','ALVA GALLEGOS, Andrey Raul','EG-183','ESTRATEGIAS PARA EL APRENDIZAJE AUTÓNOMO','2023-II',2,30,8,'Masculino',0,1,'Abandono'),('2021069828','ALE ZUÑIGA, Adrian','INE-186','MATEMÁTICA I','2022-II',2,19,5,'Masculino',0,1,'En riesgo'),('2021069828','ALE ZUÑIGA, Adrian','INE-186','MATEMÁTICA I','2023-I',2,8,13,'Masculino',0,1,'En riesgo'),('2021069828','ALE ZUÑIGA, Adrian','INE-285','FÍSICA I','2023-I',2,12,10,'Masculino',0,0,'En riesgo'),('2021069828','ALE ZUÑIGA, Adrian','INE-285','FÍSICA I','2023-II',2,14,11,'Masculino',0,0,'En riesgo'),('2021069829','SALAS ACUÑA, Adrian Fabricio','SI-384','ESTRUCTURA DE DATOS','2022-II',2,12,9,'Masculino',0,1,'En riesgo'),('2021069829','SALAS ACUÑA, Adrian Fabricio','SI-384','ESTRUCTURA DE DATOS','2023-I',2,16,8,'Masculino',1,0,'En riesgo'),('2021069829','SALAS ACUÑA, Adrian Fabricio','SI-384','ESTRUCTURA DE DATOS','2023-II',2,15,11,'Masculino',1,0,'En riesgo'),('2021069829','SALAS ACUÑA, Adrian Fabricio','SI-386','MATEMÁTICA DISCRETA','2022-II',2,12,9,'Masculino',1,0,'En riesgo'),('2021069829','SALAS ACUÑA, Adrian Fabricio','SI-386','MATEMÁTICA DISCRETA','2023-I',2,8,12,'Masculino',1,1,'En riesgo'),('2021069831','CANTORAL NINA, DUWAL ANDRE','EG-183','ESTRATEGIAS PARA EL APRENDIZAJE AUTÓNOMO','2022-I',2,5,15,'Masculino',1,0,'Aceptable'),('2021070981','BERNAL ARIAS, CARLOS SAUL','EG-183','ESTRATEGIAS PARA EL APRENDIZAJE AUTÓNOMO','2022-II',2,10,13,'Masculino',0,0,'En riesgo'),('2021070981','BERNAL ARIAS, CARLOS SAUL','EG-184','DESARROLLO PERSONAL Y LIDERAZGO','2022-II',2,18,12,'Masculino',0,0,'En riesgo'),('2021070981','BERNAL ARIAS, CARLOS SAUL','EG-185','DESARROLLO DE COMPETENCIAS DIGITALES','2022-II',2,12,12,'Masculino',1,0,'En riesgo'),('2021071076','PAYPAY CHOQUE, JOSE HUMBERTO','SI-384','ESTRUCTURA DE DATOS','2023-I',2,13,7,'Masculino',1,1,'En riesgo'),('2021071076','PAYPAY CHOQUE, JOSE HUMBERTO','SI-384','ESTRUCTURA DE DATOS','2023-II',2,28,6,'Masculino',0,1,'Abandono'),('2021071076','PAYPAY CHOQUE, JOSE HUMBERTO','SI-384','ESTRUCTURA DE DATOS','2024-I',2,3,11,'Masculino',1,1,'Aceptable'),('2021071077','HUAMAN RIVERA, ROBERTO CARLOS','SI-586','PROGRAMACIÓN II','2023-II',2,15,10,'Masculino',1,0,'En riesgo'),('2021071077','HUAMAN RIVERA, ROBERTO CARLOS','SI-586','PROGRAMACIÓN II','2024-I',2,4,11,'Masculino',1,1,'Aceptable'),('2021071079','PORTILLA QUISPE, WALTER AUGUSTO','INE-286','MATEMÁTICA II','2022-II',2,14,7,'Masculino',1,0,'En riesgo'),('2021071079','PORTILLA QUISPE, WALTER AUGUSTO','INE-286','MATEMÁTICA II','2023-I',2,17,9,'Masculino',1,1,'En riesgo'),('2021071079','PORTILLA QUISPE, WALTER AUGUSTO','INE-286','MATEMÁTICA II','2023-II',2,25,8,'Masculino',0,0,'Abandono'),('2021071079','PORTILLA QUISPE, WALTER AUGUSTO','INE-286','MATEMÁTICA II','2024-I',2,4,12,'Masculino',1,0,'Aceptable'),('2021071079','PORTILLA QUISPE, WALTER AUGUSTO','SI-384','ESTRUCTURA DE DATOS','2022-II',2,12,9,'Masculino',0,0,'En riesgo'),('2021071079','PORTILLA QUISPE, WALTER AUGUSTO','SI-384','ESTRUCTURA DE DATOS','2023-I',2,7,13,'Masculino',0,1,'Aceptable'),('2021071084','FLORES CHIPANA, JEAN PIERRE','INE-186','MATEMÁTICA I','2023-II',2,35,8,'Masculino',0,0,'Abandono'),('2021071084','FLORES CHIPANA, JEAN PIERRE','INE-285','FÍSICA I','2022-II',2,6,11,'Masculino',0,1,'Aceptable'),('2021071084','FLORES CHIPANA, JEAN PIERRE','INE-285','FÍSICA I','2023-I',2,7,13,'Masculino',1,1,'Aceptable'),('2021071089','TTURO QUISPE, RUBEN ARTURO MAXWELL','INE-286','MATEMÁTICA II','2022-II',2,9,10,'Masculino',0,1,'En riesgo'),('2021071089','TTURO QUISPE, RUBEN ARTURO MAXWELL','INE-286','MATEMÁTICA II','2024-I',2,4,12,'Masculino',1,0,'Aceptable'),('2021071089','TTURO QUISPE, RUBEN ARTURO MAXWELL','SI-384','ESTRUCTURA DE DATOS','2022-II',2,12,10,'Masculino',1,0,'En riesgo'),('2021071089','TTURO QUISPE, RUBEN ARTURO MAXWELL','SI-384','ESTRUCTURA DE DATOS','2024-I',2,5,13,'Masculino',0,1,'Aceptable'),('2021072618','ROSAS CHAMBILLA, JEFFERSON RONALDIHÑO','INE-286','MATEMÁTICA II','2023-I',2,8,13,'Masculino',1,1,'En riesgo'),('2021072621','ESQUÍA MAMANI, ANDRES DANTE','EG-182','MATEMÁTICA BÁSICA','2022-I',2,10,6,'Masculino',1,1,'En riesgo'),('2021072621','ESQUÍA MAMANI, ANDRES DANTE','EG-182','MATEMÁTICA BÁSICA','2022-II',2,13,4,'Masculino',1,0,'En riesgo'),('2021072621','ESQUÍA MAMANI, ANDRES DANTE','EG-182','MATEMÁTICA BÁSICA','2023-I',2,8,12,'Masculino',0,1,'En riesgo'),('2021072624','FLORES MEJIA, ANDREE  DALESSANDRO','EG-185','DESARROLLO DE COMPETENCIAS DIGITALES','2022-I',2,10,12,'Masculino',1,1,'En riesgo'),('2021072629','MINGA PALACIOS, HENRY MANUEL','SI-586','PROGRAMACIÓN II','2024-I',2,15,9,'Masculino',0,0,'En riesgo'),('2022073500','TORRES SANTOS, LUIS ENRIQUE','INE-285','FÍSICA I','2023-II',2,11,12,'Masculino',1,1,'En riesgo'),('2022074269','HURTADO VILLANUEVA, MAURICIO MARCELO','EG-183','ESTRATEGIAS PARA EL APRENDIZAJE AUTÓNOMO','2022-II',2,13,9,'Masculino',1,1,'En riesgo'),('2022074269','HURTADO VILLANUEVA, MAURICIO MARCELO','EG-183','ESTRATEGIAS PARA EL APRENDIZAJE AUTÓNOMO','2023-II',2,30,8,'Masculino',0,0,'Abandono'),('2022074269','HURTADO VILLANUEVA, MAURICIO MARCELO','EG-183','ESTRATEGIAS PARA EL APRENDIZAJE AUTÓNOMO','2024-I',2,4,13,'Masculino',0,1,'Aceptable'),('2022074269','HURTADO VILLANUEVA, MAURICIO MARCELO','EG-184','DESARROLLO PERSONAL Y LIDERAZGO','2023-II',2,14,11,'Masculino',1,0,'En riesgo'),('2022074270','LLACHI CRUZ, JHON ALEXESANDER','EG-181','COMUNICACIÓN I','2022-II',2,14,9,'Masculino',0,1,'En riesgo'),('2022074270','LLACHI CRUZ, JHON ALEXESANDER','EG-181','COMUNICACIÓN I','2023-I',2,10,13,'Masculino',0,1,'En riesgo'),('2022074270','LLACHI CRUZ, JHON ALEXESANDER','EG-185','DESARROLLO DE COMPETENCIAS DIGITALES','2022-II',2,12,8,'Masculino',0,0,'En riesgo'),('2022074270','LLACHI CRUZ, JHON ALEXESANDER','EG-185','DESARROLLO DE COMPETENCIAS DIGITALES','2023-I',2,9,12,'Masculino',0,1,'En riesgo'),('2022074270','LLACHI CRUZ, JHON ALEXESANDER','INE-186','MATEMÁTICA I','2023-I',2,8,11,'Masculino',1,0,'En riesgo'),('2022074281','MAMANI LAURA, EDUARDO ANDRE','SI-384','ESTRUCTURA DE DATOS','2024-I',2,6,12,'Masculino',0,1,'Aceptable'),('2022074281','MAMANI LAURA, EDUARDO ANDRE','SI-386','MATEMÁTICA DISCRETA','2024-I',2,4,13,'Masculino',1,0,'Aceptable'),('2022075476','MAMANI CHANBILLA, YERSON DAVID','INE-284','TÉCNICAS DE PROGRAMACIÓN','2023-II',2,16,9,'Masculino',1,1,'En riesgo'),('2022075476','MAMANI CHANBILLA, YERSON DAVID','INE-284','TÉCNICAS DE PROGRAMACIÓN','2024-I',2,6,11,'Masculino',1,1,'Aceptable'),('2022075482','TARQUI RAMOS, SEBASTIAN EMIR ANDREE','INE-286','MATEMÁTICA II','2023-II',2,3,12,'Masculino',1,0,'Aceptable'),('2022075744','CALDERON LLATASI, FERNANDO GABRIEL','EG-182','MATEMÁTICA BÁSICA','2023-II',2,12,11,'Masculino',0,1,'En riesgo'),('2022075744','CALDERON LLATASI, FERNANDO GABRIEL','INE-286','MATEMÁTICA II','2023-II',2,11,11,'Masculino',1,0,'En riesgo'),('2022075746','COHAILA ALVARADO, GABRIELA ESTEFANIA','EG-182','MATEMÁTICA BÁSICA','2023-I',2,5,8,'Femenino',0,1,'Aceptable'),('2022075746','COHAILA ALVARADO, GABRIELA ESTEFANIA','EG-182','MATEMÁTICA BÁSICA','2023-II',2,26,8,'Masculino',1,0,'Abandono'),('2022075746','COHAILA ALVARADO, GABRIELA ESTEFANIA','EG-182','MATEMÁTICA BÁSICA','2024-I',2,6,13,'Femenino',1,1,'Aceptable'),('2022075748','AROCUTIPA BARRETO, JOHAN DANIEL','INE-285','FÍSICA I','2023-II',2,13,11,'Masculino',1,0,'En riesgo'),('2022075752','CUTIPA ARIAS, BRAYAN FERNAMDO','EG-183','ESTRATEGIAS PARA EL APRENDIZAJE AUTÓNOMO','2023-II',2,13,11,'Masculino',1,1,'En riesgo'),('2022075752','CUTIPA ARIAS, BRAYAN FERNAMDO','INE-186','MATEMÁTICA I','2023-II',2,14,11,'Masculino',0,0,'En riesgo'),('2023077285','CHOQUE CARPIO, FREDDY AIRTHON','INE-186','MATEMÁTICA I','2023-II',2,30,6,'Masculino',1,0,'Abandono'),('2023077285','CHOQUE CARPIO, FREDDY AIRTHON','INE-186','MATEMÁTICA I','2024-I',2,12,12,'Masculino',1,1,'En riesgo');
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-19 11:24:15
