/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.62-0+deb8u1 : Database - db_revista
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_revista` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_revista`;

/*Table structure for table `ediciones` */

DROP TABLE IF EXISTS `papers`;

CREATE TABLE `papers` (
  `id` int(8) AUTO_INCREMENT NOT NULL,
  `autor` varchar(300) DEFAULT NULL,
  `titulo` varchar(300) DEFAULT NULL,
  `palabras` varchar(300) DEFAULT NULL,
  `keywords` varchar(300) DEFAULT NULL,
  `link` varchar(300) DEFAULT NULL,
  `edicion` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ediciones` */

insert  into `papers`(`id`,`autor`,`titulo`,`palabras`,`keywords`,`link`,`edicion`) values (1,'Juan Ramírez, Raúl Arredondo','ALGORITMOS POLINOMIALES PARA OBTENER LA REPARACIÓN COMPATIBLE EN DATA WAREHOUSES INCONSISTENTES','x','Data warehouse, inconsistency, strictness constrains, covering constrains, dimension, experiments.','http://www.revistaingenieria.uda.cl/Publicaciones/320007.pdf',32),(2,'Yahima Hadfeg Fernández, Víctor Flore','	UN MÉTODO PARA LA GENERACIÓN AUTOMÁTICA DE EXPLICACIONES DE RESULTADOS DE UN SISTEMA EXPERTO, CENTRADO EN LA BIOLIXIVIACIÓN DE COBRE','Sistema Experto, Generación automática de explicaciones, Ontología, Base de conocimiento, Patrones de presentación.','Expert systems, Automatic generation of explanations, Ontology; Knowledge-base system, Patterns of presentation','http://www.revistaingenieria.uda.cl/Publicaciones/320006.pdf',32),(3,'L. Campos, A. Cabré, B. Cáceres, M. Pereira, J. Supanta.','VENTAJAS Y DESVENTAJAS DE METODOS PARA CONFECCIONAR PLANOS, EN APOYO DEL MAPEO GEOLOGICO','Topografía de detalle, Imágenes Satelitales, Mapeos Geológicos.','Detail Surveying, Satellite Images, Geological Mapping.','http://www.revistaingenieria.uda.cl/Publicaciones/320005.pdf',32),(4,'Carola Andrea Figueroa Flores, Angélica Caro Gutiérrez','	SEGMENTACIÓN DE BANDAS EN IMÁGENES DGGE, MEDIANTE MODELOS CONEXIONISTAS Y COMPUTACIÓN EVOLUTIVA, UNA REVISIÓN SISTEMÁTICA DE LA LITERATURA ENTRE EL 2006 Y 2016S','Gel de electroforesis en gradiente desnaturalizante (DGGE), Evolución Diferencial, Redes Neuronales Artificiales, Segmentación en Imágenes, Revisión Sistemática de la Literatura.','Denaturing Gradient Gel Electrophoresis DGGE, Differential Evolution, Artificial Neural Network, Image Segmentation, Systematic literature review.','http://www.revistaingenieria.uda.cl/Publicaciones/320004.pdf',32),(5,'Manuel Olivares Ávila; José Gallardo Arancibia','IDENTIFICACIÓN DE SISTEMAS SISO LTI A PARTIR DE SU DEFINICIÓN MATEMÁTICA','Sistemas de Control, Función de Transferencia, Estimación Paramétrica.','Control Systems, Transfer Function, Parameter Estimation.','http://www.revistaingenieria.uda.cl/Publicaciones/320003.pdf',32),(6,'Miguel Ángel Espinosa-Rodríguez, Antonio Hidalgo-Millán, Raúl Delgado-Delgado','DISEÑO DE UN SISTEMA DE TRATAMIENTO PARA EL DRENAJE ÁCIDO DE MINA BASADO EN EL PROCESO DE LODOS DE ALTA DENSIDAD (HDS)','Drenaje ácido de mina, ácido sulfúrico, proceso HDS, prueba de jarras, tasa de oxidación.','Acid mine drainage, sulfuric acid, high density sludge process, jar test, oxidation rate.','http://www.revistaingenieria.uda.cl/Publicaciones/320002.pdf',32),(7,'John Twyman Q.','ANÁLISIS DEL GOLPE DE ARIETE USANDO EL MÉTODO DE LAS CARACTERÍSTICAS','Método de las Características, Golpe de Ariete, Discretización de la Red de Tuberías.','Method of the Characteristics, Water Hammer, Pipe Network Discretization.','http://www.revistaingenieria.uda.cl/Publicaciones/320001.pdf',32),(8,'J. Castillo1, P. Navarro, R. Sepúlveda, C. Vargas','PREDICCIÓN DE ATRAPAMIENTO DE FASES EN EXTRACCIÓN POR SOLVENTES MEDIANTE MODELO ESTADÍSTICO','Dispersión, extracción por solventes, atrapamiento de fases.','Dispersion, solvent extraction, phases entrainment.','http://www.revistaingenieria.uda.cl/Publicaciones/310006.pdf',31),(9,'Airton Antônio Silva, Antônio Eduardo Clark Peres, Paulo Sérgio de Oliveira, João Paulo Melo Silva','REAVALIAÇÃO DE CIRCUITO DE FLOTAÇÃO CONVENCIONAL DE MINÉRIO DE FERRO','Itabiritos pobres, circuitos de flotação, carga circulante.',NULL,'http://www.revistaingenieria.uda.cl/Publicaciones/310005.pdf',31),(10,'Alvaro Aracena, Francisco Cárcamo','ELUCIÓN DE IONES DE NÍQUEL DESDE ESFERAS ALGINATO','Elución. Remoción. Níquel. Esferas de Alginato. Ácido Sulfúrico.',NULL,'http://www.revistaingenieria.uda.cl/Publicaciones/310004.pdf',31),(11,'A. Soliz and L. Cáceres','Electrochemical Analysis of the Corrosion Kinetic of Carbon Steel in LiBr Solution','x','Carbon steel; Polarization curve; Kinetic parameters','http://www.revistaingenieria.uda.cl/Publicaciones/310003.pdf',31),(12,'Kelly Cristina Ferreira; Angelo Quintiliano Nunes da Silva; Roberto Galery; Antônio Eduardo Clark Peres; Luiz Claúdio Monteiro Montenegro','EVALUATION OF A GRINDING AND REGRINDING PROJECT OF AN ITABIRITE ORE','x','Grinding, Simulation, Optimization, Itabirite Iron Ore','http://www.revistaingenieria.uda.cl/Publicaciones/310002.pdf',31),(13,'F. Cancino, D. Alvarado, J. Navea, L. Campos','ESTUDIO DEL COMPORTAMIENTO DEL PONDERADOR INVERSO A LA DISTANCIA ELEVADO A LA POTENCIA “n”, EN EL CALCULO DE LA LEY MEDIA Y EN LA INTERPOLACION DE RECURSOS MINEROS','x','Inverse Distance, IVOR, resource estimation, average grade','http://www.revistaingenieria.uda.cl/Publicaciones/310001.pdf',31),(14,'R. Sepúlveda, J. Castillo y J. Romero','Recuperación de iones cobre desde soluciones acuosas utilizando líquidos iónicos y 1,1,1-trifluoruro-2,4-pentanediona','Iones cobre, Líquido iónico, extracción líquido- líquido','Copper ions, ionic liquids, liquid-liquid extraction','http://www.revistaingenieria.uda.cl/Publicaciones/300006.pdf',30),(15,'Oscar Rivera, Danny Guzmán, Alexis Guzmán, Raúl Céspedes, Guillermo Cortés','CARACTERIZACIÓN DE UNA REJA HISTÓRICA DEL SIGLO XIX','hierro pudelado, difracción de rayos X, recocido.','puddling, X-ray diffraction, annealing.','http://www.revistaingenieria.uda.cl/Publicaciones/300005.pdf',30),(16,'Victor H. M Rodrigues1, Antônio E. C. Peres','AVALIAÇÃO DO DESEMPENHO DE BOLAS FORJADAS E FUNDIDAS NA MOAGEM DE MINÉRIO DE FERRO','x','x','http://www.revistaingenieria.uda.cl/Publicaciones/300004.pdf',30),(17,'Patricio Lara Torres, Edmundo Ríos Vilches','REACTIVE MILLING IN THE SYSTEM BI2O3-FE2O3, AND THE RIETVELD REFINEMENT OF THE CRYSTALLIZED PHASES OBTAINED BY CONTINUOUS HEATING','x','x','http://www.revistaingenieria.uda.cl/Publicaciones/300003.pdf',30),(18,'Dimitry V. Bubnoff, Mariana M. de Oliveira Carvalho, Jose Adilson de Castro','KINETIC STUDY ON MARTENSITE FORMATION IN STEELS 1045 AND 4340 UNDER VARIABLE COOLING RATES.','x','x','http://www.revistaingenieria.uda.cl/Publicaciones/300002.pdf',30),(19,'Pompeo, A.A., Oliveira, C., Seger, M.A., Lottermann, M. R., Rodrigues, R.T.','AVALIAÇÃO DO TAMANHO DE BOLHA PRODUZIDO POR UM SPARGER COMINCO','Flotação de minérios; distribuição de tamanho de bolhas; processamento e análise deimagens digitais; dispersão de gás; células de flotação.','x','http://www.revistaingenieria.uda.cl/Publicaciones/300001.pdf',30);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
