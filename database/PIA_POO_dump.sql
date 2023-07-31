-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: PIA_POO
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `clave_a` varchar(6) DEFAULT NULL,
  `cantidad_a` tinyint unsigned DEFAULT '1',
  KEY `clave_a` (`clave_a`),
  CONSTRAINT `album_ibfk_1` FOREIGN KEY (`clave_a`) REFERENCES `stickers` (`clave_s`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `showAlbum`
--

DROP TABLE IF EXISTS `showAlbum`;
/*!50001 DROP VIEW IF EXISTS `showAlbum`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `showAlbum` AS SELECT 
 1 AS `Clave`,
 1 AS `Nombre`,
 1 AS `Pais`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `showRepeated`
--

DROP TABLE IF EXISTS `showRepeated`;
/*!50001 DROP VIEW IF EXISTS `showRepeated`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `showRepeated` AS SELECT 
 1 AS `Clave`,
 1 AS `Nombre`,
 1 AS `Pais`,
 1 AS `Cantidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `stickers`
--

DROP TABLE IF EXISTS `stickers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stickers` (
  `id_s` smallint NOT NULL,
  `clave_s` varchar(6) DEFAULT NULL,
  `nombre_s` varchar(60) DEFAULT NULL,
  `pais_s` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_s`),
  UNIQUE KEY `clave_s` (`clave_s`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stickers`
--

LOCK TABLES `stickers` WRITE;
/*!40000 ALTER TABLE `stickers` DISABLE KEYS */;
INSERT INTO `stickers` VALUES (1,'00','Panini FOIL',NULL),(2,'FWC1','FIFA',NULL),(3,'FWC2','Official Trophy FOIL',NULL),(4,'FWC3','Official Trophy FOIL',NULL),(5,'FWC4','Official Mascot FOIL',NULL),(6,'FWC5','Official Mascot FOIL',NULL),(7,'FWC6','Official Emblem FOIL',NULL),(8,'FWC7','Official Emblem FOIL',NULL),(9,'FWC8','Ahmad Bin Ali Stadium',NULL),(10,'FWC9','Al Janoub Stadium',NULL),(11,'FWC10','Al Thumama Stadium',NULL),(12,'FWC11','Education City Stadium',NULL),(13,'FWC12','Khalifa International Stadium',NULL),(14,'FWC13','Stadium 974',NULL),(15,'FWC14','Al Bayt Stadium outdoor',NULL),(16,'FWC15','Al Bayt Stadium indoor',NULL),(17,'FWC16','Lusail Stadium outdoor',NULL),(18,'FWC17','Lusail Stadium indoor',NULL),(19,'FWC18','Official Match Ball',NULL),(20,'QAT1','Team Photo','Qatar'),(21,'QAT2','Team Logo FOIL','Qatar'),(22,'QAT3','Saad Al Sheeb','Qatar'),(23,'QAT4','Meshaal Barsham','Qatar'),(24,'QAT5','Homam Ahmed','Qatar'),(25,'QAT6','Bassam Alrawi','Qatar'),(26,'QAT7','Abdulkarim Hassan','Qatar'),(27,'QAT8','Musaab Khidir','Qatar'),(28,'QAT9','Boualem Khoukhi','Qatar'),(29,'QAT10','Pedro Miguel','Qatar'),(30,'QAT11','Tarek Salman','Qatar'),(31,'QAT12','Karim Boudiaf','Qatar'),(32,'QAT13','Abdulaziz Hatem','Qatar'),(33,'QAT14','Assim Omer Madibo','Qatar'),(34,'QAT15','Yousuf Abdurisag','Qatar'),(35,'QAT16','Akram Hassan Afif','Qatar'),(36,'QAT17','Ahmad Alaaeldin','Qatar'),(37,'QAT18','Hasan Al-Haydos','Qatar'),(38,'QAT19','Almoez Ali','Qatar'),(39,'QAT20','Mohammed Muntari','Qatar'),(40,'ECU1','Team Photo','Ecuador'),(41,'ECU2','Team Logo FOIL','Ecuador'),(42,'ECU3','Hernán Galíndez','Ecuador'),(43,'ECU4','Alexander Domínguez','Ecuador'),(44,'ECU5','Robert Arboleda','Ecuador'),(45,'ECU6','Byron Castillo','Ecuador'),(46,'ECU7','Pervis Estupiñán','Ecuador'),(47,'ECU8','Piero Hincapié','Ecuador'),(48,'ECU9','Ángelo Preciado','Ecuador'),(49,'ECU10','Félix Torres','Ecuador'),(50,'ECU11','Moisés Caicedo','Ecuador'),(51,'ECU12','Alan Franco','Ecuador'),(52,'ECU13','Carlos Gruezo','Ecuador'),(53,'ECU14','Jhegson Méndez','Ecuador'),(54,'ECU15','Jeremy Sarmiento','Ecuador'),(55,'ECU16','Michael Estrada','Ecuador'),(56,'ECU17','Ángel Mena','Ecuador'),(57,'ECU18','Gonzalo Plata','Ecuador'),(58,'ECU19','Ayrton Preciado','Ecuador'),(59,'ECU20','Enner Valencia','Ecuador'),(60,'SEN1','Team Photo','Senegal'),(61,'SEN2','Team Logo FOIL','Senegal'),(62,'SEN3','Édouard Mendy','Senegal'),(63,'SEN4','Alfred Gomis','Senegal'),(64,'SEN5','Saliou Ciss','Senegal'),(65,'SEN6','Pape Abou Cissé','Senegal'),(66,'SEN7','Abdou Diallo','Senegal'),(67,'SEN8','Kalidou Koulibaly','Senegal'),(68,'SEN9','Ibrahima Mbaye','Senegal'),(69,'SEN10','Bouna Sarr','Senegal'),(70,'SEN11','Krépin Diatta','Senegal'),(71,'SEN12','Idrissa Gueye','Senegal'),(72,'SEN13','Pape Gueye','Senegal'),(73,'SEN14','Cheikhou Kouyaté','Senegal'),(74,'SEN15','Nampalys Mendy','Senegal'),(75,'SEN16','Boulaye Dia','Senegal'),(76,'SEN17','Famara Diédhiou','Senegal'),(77,'SEN18','Bamba Dieng','Senegal'),(78,'SEN19','Sadio Mané','Senegal'),(79,'SEN20','Ismaïla Sarr','Senegal'),(80,'NED1','Team Photo','Netherlands'),(81,'NED2','Team Logo FOIL','Netherlands'),(82,'NED3','Justin Bijlow','Netherlands'),(83,'NED4','Jasper Cillessen','Netherlands'),(84,'NED5','Daley Blind','Netherlands'),(85,'NED6','Matthijs de Ligt','Netherlands'),(86,'NED7','Stefan de Vrij','Netherlands'),(87,'NED8','Denzel Dumfries','Netherlands'),(88,'NED9','Virgil van Dijk','Netherlands'),(89,'NED10','Steven Berghuis','Netherlands'),(90,'NED11','Frenkie de Jong','Netherlands'),(91,'NED12','Ryan Gravenberch','Netherlands'),(92,'NED13','Davy Klaassen','Netherlands'),(93,'NED14','Teun Koopmeiners','Netherlands'),(94,'NED15','Georginio Wijnaldum','Netherlands'),(95,'NED16','Steven Bergwijn','Netherlands'),(96,'NED17','Arnaut Danjuma','Netherlands'),(97,'NED18','Memphis Depay','Netherlands'),(98,'NED19','Cody Gakpo','Netherlands'),(99,'NED20','Donyell Malen','Netherlands'),(100,'ENG1','Team Photo','England'),(101,'ENG2','Team Logo FOIL','England'),(102,'ENG3','Jordan Pickford','England'),(103,'ENG4','Aaron Ramsdale','England'),(104,'ENG5','Trent Alexander-Arnold','England'),(105,'ENG6','Conor Coady','England'),(106,'ENG7','Harry Maguire','England'),(107,'ENG8','Luke Shaw','England'),(108,'ENG9','John Stones','England'),(109,'ENG10','Kyle Walker','England'),(110,'ENG11','Jude Bellingham','England'),(111,'ENG12','Jack Grealish','England'),(112,'ENG13','Jordan Henderson','England'),(113,'ENG14','Mason Mount','England'),(114,'ENG15','Kalvin Phillips','England'),(115,'ENG16','Declan Rice','England'),(116,'ENG17','Phil Foden','England'),(117,'ENG18','Harry Kane','England'),(118,'ENG19','Bukayo Saka','England'),(119,'ENG20','Raheem Sterling','England'),(120,'IRN1','Team Photo','Iran'),(121,'IRN2','Team Logo FOIL','Iran'),(122,'IRN3','Amir Abedzadeh','Iran'),(123,'IRN4','Alireza Beiranvand','Iran'),(124,'IRN5','Ehsan Hajsafi','Iran'),(125,'IRN6','Majid Hosseini','Iran'),(126,'IRN7','Hossein Kanaani','Iran'),(127,'IRN8','Shoja Khalilzadeh','Iran'),(128,'IRN9','Milad Mohammadi','Iran'),(129,'IRN10','Sadegh Moharrami','Iran'),(130,'IRN11','Omid Noorafkan','Iran'),(131,'IRN12','Vahid Amiri','Iran'),(132,'IRN13','Saeid Ezatolahi','Iran'),(133,'IRN14','Ali Gholizadeh','Iran'),(134,'IRN15','Alireza Jahanbakhsh','Iran'),(135,'IRN16','Ahmad Nourollahi','Iran'),(136,'IRN17','Karim Ansarifard','Iran'),(137,'IRN18','Sardar Azmoun','Iran'),(138,'IRN19','Saman Ghoddos','Iran'),(139,'IRN20','Mehdi Taremi','Iran'),(140,'USA1','Team Photo','USA'),(141,'USA2','Team Logo FOIL','USA'),(142,'USA3','Matt Turner','USA'),(143,'USA4','Zack Steffen','USA'),(144,'USA5','Sergiño Dest','USA'),(145,'USA6','Aaron Longv','USA'),(146,'USA7','Chris Richards','USA'),(147,'USA8','Antonee Robinson','USA'),(148,'USA9','DeAndre Yedlin','USA'),(149,'USA10','Walker Zimmerman','USA'),(150,'USA11','Brenden Aaronson','USA'),(151,'USA12','Kellyn Acosta','USA'),(152,'USA13','Tyler Adams','USA'),(153,'USA14','Weston McKennie','USA'),(154,'USA15','Yunus Musah','USA'),(155,'USA16','Jesús Ferreira','USA'),(156,'USA17','Ricardo Pepi','USA'),(157,'USA18','Christian Pulisic','USA'),(158,'USA19','Giovanni Reyna','USA'),(159,'USA20','Timothy Weah','USA'),(160,'WAL1','Team Photo','Wales'),(161,'WAL2','Team Logo FOIL','Wales'),(162,'WAL3','Danny Ward','Wales'),(163,'WAL4','Wayne Hennessey','Wales'),(164,'WAL5','Ethan Ampadu','Wales'),(165,'WAL6','Ben Davies','Wales'),(166,'WAL7','Chris Gunter','Wales'),(167,'WAL8','Chris Mepham','Wales'),(168,'WAL9','Connor Roberts','Wales'),(169,'WAL10','Joe Rodon','Wales'),(170,'WAL11','Neco Williams','Wales'),(171,'WAL12','Joe Allen','Wales'),(172,'WAL13','Joe Morrell','Wales'),(173,'WAL14','Aaron Ramsey','Wales'),(174,'WAL15','Jonathan Williams','Wales'),(175,'WAL16','Harry Wilson','Wales'),(176,'WAL17','Gareth Bale','Wales'),(177,'WAL18','Daniel James','Wales'),(178,'WAL19','Brennan Johnson','Wales'),(179,'WAL20','Kieffer Moore','Wales'),(180,'ARG1','Team Photo','Argentina'),(181,'ARG2','Team Logo FOIL','Argentina'),(182,'ARG3','Emiliano Martínez','Argentina'),(183,'ARG4','Franco Armani','Argentina'),(184,'ARG5','Marcos Acuña','Argentina'),(185,'ARG6','Nahuel Molina','Argentina'),(186,'ARG7','Nicolás Otamendi','Argentina'),(187,'ARG8','Germán Pezzella','Argentina'),(188,'ARG9','Cristian Romero','Argentina'),(189,'ARG10','Rodrigo De Paul','Argentina'),(190,'ARG11','Ángel Di María','Argentina'),(191,'ARG12','Giovani Lo Celso','Argentina'),(192,'ARG13','Leandro Paredes','Argentina'),(193,'ARG14','Guido Rodríguez','Argentina'),(194,'ARG15','Julián Álvarez','Argentina'),(195,'ARG16','Joaquín Correa','Argentina'),(196,'ARG17','Alejandro Gómez','Argentina'),(197,'ARG18','Nicolás González','Argentina'),(198,'ARG19','Lautaro Martínez','Argentina'),(199,'ARG20','Lionel Messi','Argentina'),(200,'KSA1','Team Photo','Saudi Arabia'),(201,'KSA2','KSA2 Team Logo FOIL','Saudi Arabia'),(202,'KSA3','KSA3 Mohammed Al-Owais','Saudi Arabia'),(203,'KSA4','KSA4 Mohammed Al-Rubaie','Saudi Arabia'),(204,'KSA5','KSA5 Abdulelah Al-Amri','Saudi Arabia'),(205,'KSA6','KSA6 Ali Al-Boleahi','Saudi Arabia'),(206,'KSA7','KSA7 Mohammed Al-Burayk','Saudi Arabia'),(207,'KSA8','KSA8 Sultan Al-Ghannam','Saudi Arabia'),(208,'KSA9','KSA9 Yasser Al-Shahrani','Saudi Arabia'),(209,'KSA10','KSA10 Hassan Al-Tambakti','Saudi Arabia'),(210,'KSA11','KSA11 Abdullah Madu','Saudi Arabia'),(211,'KSA12','KSA12 Salman Al-Faraj','Saudi Arabia'),(212,'KSA13','KSA13 Abdulelah Al-Malki','Saudi Arabia'),(213,'KSA14','KSA14 Sami Al-Najei','Saudi Arabia'),(214,'KSA15','KSA15 Hattan Bahebri','Saudi Arabia'),(215,'KSA16','KSA16 Mohamed Kanno','Saudi Arabia'),(216,'KSA17','KSA17 Abdullah Otayf','Saudi Arabia'),(217,'KSA18','KSA18 Firas Al-Buraikan','Saudi Arabia'),(218,'KSA19','KSA19 Salem Al-Dawsari','Saudi Arabia'),(219,'KSA20','KSA20 Khalid Al-Ghannam','Saudi Arabia'),(220,'MEX1','Team Photo','Mexico'),(221,'MEX2','Team Logo FOIL','Mexico'),(222,'MEX3','Guillermo Ochoa','Mexico'),(223,'MEX4','Alfredo Talavera','Mexico'),(224,'MEX5','Néstor Araújo','Mexico'),(225,'MEX6','Jesús Gallardo','Mexico'),(226,'MEX7','César Montes','Mexico'),(227,'MEX8','Héctor Moreno','Mexico'),(228,'MEX9','Luis Romo','Mexico'),(229,'MEX10','Jorge Sánchez','Mexico'),(230,'MEX11','Edson Álvarez','Mexico'),(231,'MEX12','Jesús Manuel Corona','Mexico'),(232,'MEX13','Andrés Guardado','Mexico'),(233,'MEX14','Érick Gutiérrez','Mexico'),(234,'MEX15','Héctor Herrera','Mexico'),(235,'MEX16','Diego Lainez','Mexico'),(236,'MEX17','Carlos Rodríguez','Mexico'),(237,'MEX18','Rogelio Funes Mori','Mexico'),(238,'MEX19','Raúl Jiménez','Mexico'),(239,'MEX20','Hirving Lozano','Mexico'),(240,'POL1','Team Photo','Poland'),(241,'POL2','Team Logo FOIL','Poland'),(242,'POL3','Wojciech Szczęsny','Poland'),(243,'POL4','Łukasz Skorupski','Poland'),(244,'POL5','Jan Bednarek','Poland'),(245,'POL6','Bartosz Bereszyński','Poland'),(246,'POL7','Matty Cash','Poland'),(247,'POL8','Kamil Glik','Poland'),(248,'POL9','Tymoteusz Puchacz','Poland'),(249,'POL10','Maciej Rybus','Poland'),(250,'POL11','Kamil Jóźwiak','Poland'),(251,'POL12','Mateusz Klich','Poland'),(252,'POL13','Grzegorz Krychowiak','Poland'),(253,'POL14','Jakub Moder','Poland'),(254,'POL15','Sebastian Szymański','Poland'),(255,'POL16','Piotr Zieliński','Poland'),(256,'POL17','Robert Lewandowski','Poland'),(257,'POL18','Arkadiusz Milik','Poland'),(258,'POL19','Krzysztof Piątek','Poland'),(259,'POL20','Karol Świderski','Poland'),(260,'FRA1','Team Photo','France'),(261,'FRA2','Team Logo FOIL','France'),(262,'FRA3','Hugo Lloris','France'),(263,'FRA4','Mike Maignan','France'),(264,'FRA5','Lucas Hernández','France'),(265,'FRA6','Theo Hernández','France'),(266,'FRA7','Presnel Kimpembe','France'),(267,'FRA8','Jules Koundé','France'),(268,'FRA9','Benjamin Pavard','France'),(269,'FRA10','Raphaël Varane','France'),(270,'FRA11','N’Golo Kanté','France'),(271,'FRA12','Paul Pogba','France'),(272,'FRA13','Adrien Rabiot','France'),(273,'FRA14','Aurélien Tchouaméni',' France'),(274,'FRA15','Wissam Ben Yedder','France'),(275,'RA16','Karim Benzema','France'),(276,'FRA17','Kingsley Coman','gFrance'),(277,'FRA18','Antoine Griezmann','France'),(278,'FRA19','Kylian Mbappé','France'),(279,'FRA20','Christopher Nkunku','France'),(280,'DEN1','Team Photo','Denmark'),(281,'DEN2','Team Logo FOIL','Denmark'),(282,'DEN3','Kasper Schmeichel','Denmark'),(283,'DEN4','Frederik Rønnow','Denmark'),(284,'DEN5','Andreas Christensen','Denmark'),(285,'DEN6','Simon Kjær','Denmark'),(286,'DEN7','Joakim Mæhle','Denmark'),(287,'DEN8','Jens Stryger Larsen','Denmark'),(288,'DEN9','Jannik Vestergaard','Denmark'),(289,'DEN10','Mikkel Damsgaard','Denmark'),(290,'DEN11','Thomas Delaney','Denmark'),(291,'DEN12','Christian Eriksen','Denmark'),(292,'DEN13','Pierre Emile Højbjerg','Denmark'),(293,'DEN14','Christian Nørgaard','Denmark'),(294,'DEN15','Daniel Wass','Denmark'),(295,'DEN16','Martin Braithwaite','Denmark'),(296,'DEN17','Kasper Dolberg','Denmark'),(297,'DEN18','Yussuf Poulsen','Denmark'),(298,'DEN19','Andreas Skov Olsen','Denmark'),(299,'DEN20','Jonas Wind','Denmark'),(300,'TUN1','Team Photo','Tunisia'),(301,'TUN2','Team Logo FOIL','Tunisia'),(302,'TUN3','Bechir Ben Saïd','Tunisia'),(303,'TUN4','Farouk Ben Mustapha','Tunisia'),(304,'TUN5','Dylan Bronn','Tunisia'),(305,'TUN6','Mohamed Dräger','Tunisia'),(306,'TUN7','Bilel Ifa','Tunisia'),(307,'TUN8','Ali Maâloul','Tunisia'),(308,'TUN9','Hamza Mathlouthi','Tunisia'),(309,'TUN10','Yassine Meriah','Tunisia'),(310,'TUN11','Montassar Talbi','Tunisia'),(311,'TUN12','Mohamed Ali Ben Romdhane','Tunisia'),(312,'TUN13','Wahbi Khazri','Tunisia'),(313,'TUN14','Aïssa Laïdouni','Tunisia'),(314,'TUN15','Ferjani Sassi','Tunisia'),(315,'TUN16','Ellyes Skhiri','Tunisia'),(316,'TUN17','Anis Slimane','Tunisia'),(317,'TUN18','Seifeddine Jaziri','Tunisia'),(318,'TUN19','Youssef Msakni','Tunisia'),(319,'TUN20','Naïm Sliti','Tunisia'),(320,'ESP1','Team Photo','Spain'),(321,'ESP2','Team Logo FOIL','Spain'),(322,'ESP3','Unai Simón','Spain'),(323,'ESP4','Robert Sánchez','Spain'),(324,'ESP5','César Azpilicueta','Spain'),(325,'ESP6','Eric García','Spain'),(326,'ESP7','Jordi Alba','Spain'),(327,'ESP8','Aymeric Laporte','Spain'),(328,'ESP9','Pau Torres','Spain'),(329,'ESP10','Gavi','Spain'),(330,'ESP11','Koke','Spain'),(331,'ESP12','Marcos Llorente','Spain'),(332,'ESP13','Pedri','Spain'),(333,'ESP14','Rodri','Spain'),(334,'ESP15','Sergio Busquets','Spain'),(335,'ESP16','Dani Olmo','Spain'),(336,'ESP17','Ansu Fati','Spain'),(337,'ESP18','Ferran Torres','Spain'),(338,'ESP19','Álvaro Morata','Spain'),(339,'ESP20','Pablo Sarabia','Spain'),(340,'CRC1','Team Photo','Costa Rica'),(341,'CRC2','Team Logo FOIL','Costa Rica'),(342,'CRC3','Keylor Navas','Costa Rica'),(343,'CRC4','Leonel Moreira','Costa Rica'),(344,'CRC5','Ricardo Blanco','Costa Rica'),(345,'CRC6','Francisco Calvo','Costa Rica'),(346,'CRC7','Óscar Duarte','Costa Rica'),(347,'CRC8','Keysher Fuller','Costa Rica'),(348,'CRC9','Bryan Oviedo','Costa Rica'),(349,'CRC10','Juan Pablo Vargas','Costa Rica'),(350,'CRC11','Kendall Waston','Costa Rica'),(351,'CRC12','Celso Borges','Costa Rica'),(352,'CRC13','Orlando Galo',' Costa Rica'),(353,'CRC14','Bryan Ruiz','Costa Rica'),(354,'CRC15','Yeltsin Tejeda','Costa Rica'),(355,'CRC16','Jewison Bennette','Costa Rica'),(356,'CRC17','Joel Campbell','Costa Rica'),(357,'CRC18','Anthony Contreras','Costa Rica'),(358,'CRC19','Gerson Torres','Costa Rica'),(359,'CRC20','Johan Venegas','Costa Rica'),(360,'GER1','Team Photo','Germany'),(361,'GER2','Team Logo FOIL','Germany'),(362,'GER3','Manuel Neuer','Germany'),(363,'GER4','Marc-André ter Stegen','Germany'),(364,'GER5','Matthias Ginter','Germany'),(365,'GER6','Robin Gosens','Germany'),(366,'GER7','Thilo Kehrer','Germany'),(367,'GER8','David Raum','Germany'),(368,'GER9','Antonio Rüdiger','Germany'),(369,'GER10','Niklas Süle','Germany'),(370,'GER11','Leon Goretzka','Germany'),(371,'GER12','İlkay Gündoğan','Germany'),(372,'GER13','Kai Havertz','Germany'),(373,'GER14','Jonas Hofmann','Germany'),(374,'GER15','Joshua Kimmich','Germany'),(375,'GER16','Serge Gnabry','Germany'),(376,'GER17','Thomas Müller','Germany'),(377,'GER18','Marco Reus','Germany'),(378,'GER19','Leroy Sané','Germany'),(379,'GER20','Timo Werner','Germany'),(380,'JPN1','Team Photo','Japan'),(381,'JPN2','Team Logo FOIL','Japan'),(382,'JPN3','Shuichi Gonda','Japan'),(383,'JPN4','Eiji Kawashima','Japan'),(384,'JPN5','Yuto Nagatomo','Japan'),(385,'JPN6','Yuta Nakayama','Japan'),(386,'JPN7','Takehiro Tomiyasu','Japan'),(387,'JPN8','Miki Yamane','Japan'),(388,'JPN9','Maya Yoshida','Japan'),(389,'JPN10','Wataru Endo','Japan'),(390,'JPN11','Genki Haraguchi','Japan'),(391,'JPN12','Hidemasa Morita','Japan'),(392,'JPN13','Gaku Shibasaki','Japan'),(393,'JPN14','Ao Tanaka','Japan'),(394,'JPN15','Takuma Asano','Japan'),(395,'JPN16','Kyogo Furuhashi','Japan'),(396,'JPN17','Junya Ito','Japan'),(397,'JPN18','Takumi Minamino','Japan'),(398,'JPN19','Kaoru Mitoma','Japan'),(399,'JPN20','Yuya Osako','Japan'),(400,'BEL1','Team Photo','Belgium'),(401,'BEL2','Team Logo FOIL','Belgium'),(402,'BEL3','Thibaut Courtois','Belgium'),(403,'BEL4','Simon Mignolet','Belgium'),(404,'BEL5','Toby Alderweireld','Belgium'),(405,'BEL6','Timothy Castagne','Belgium'),(406,'BEL7','Jason Denayer','Belgium'),(407,'BEL8','Thomas Meunier','Belgium'),(408,'BEL9','Jan Vertonghen','Belgium'),(409,'BEL10','Yannick Carrasco','Belgium'),(410,'BEL11','Kevin De Bruyne','Belgium'),(411,'BEL12','Charles De Ketelaere','Belgium'),(412,'BEL13','Thorgan Hazard','Belgium'),(413,'BEL14','Youri Tielemans','Belgium'),(414,'BEL15','Hans Vanaken','Belgium'),(415,'BEL16','Axel Witsel','Belgium'),(416,'BEL17','Jérémy Doku','Belgium'),(417,'BEL18','Eden Hazard','Belgium'),(418,'BEL19','Romelu Lukaku','Belgium'),(419,'BEL20','Dries Mertens','Belgium'),(420,'CAN1','Team Photo','Canada'),(421,'CAN2','Team Logo FOIL','Canada'),(422,'CAN3','Milan Borjan','Canada'),(423,'CAN4','Maxime Crépeau','Canada'),(424,'CAN5','Samuel Adekugbe','Canada'),(425,'CAN6','Doneil Henry','Canada'),(426,'CAN7','Alistair Johnston','Canada'),(427,'CAN8','Richie Laryea','Canada'),(428,'CAN9','Kamal Miller','Canada'),(429,'CAN10','Steven Vitória','Canada'),(430,'CAN11','Tajon Buchanan','Canada'),(431,'CAN12','Alphonso Davies','Canada'),(432,'CAN13','Stephen Eustáquio','Canada'),(433,'CAN14','Atiba Hutchinson','Canada'),(434,'CAN15','Mark-Anthony Kaye','Canada'),(435,'CAN16','Jonathan Osorio','Canada'),(436,'CAN17','Samuel Piette','Canada'),(437,'CAN18','Jonathan David','Canada'),(438,'CAN19','David Junior Hoilett','Canada'),(439,'CAN20','Cyle Larin','Canada'),(440,'MAR1','Team Photo','Morocco'),(441,'MAR2','Team Logo FOIL','Morocco'),(442,'MAR3','Yassine Bounou','Morocco'),(443,'MAR4',' Munir Mohamedi','Morocco'),(444,'MAR5','Nayef Aguerd','Morocco'),(445,'MAR6','Achraf Hakimi','Morocco'),(446,'MAR7','Adam Masina','Morocco'),(447,'MAR8','Samy Mmaee','Morocco'),(448,'MAR9','Romain Saïss','Morocco'),(449,'MAR10','Selim Amallah','Morocco'),(450,'MAR11','Sofyan Amrabat','Morocco'),(451,'MAR12','Aymen Barkok','Morocco'),(452,'MAR13','Ilias Chair','Morocco'),(453,'MAR14','Imrân Louza','Morocco'),(454,'MAR15','Sofiane Boufal','Morocco'),(455,'MAR16','Ayoub El Kaabi','Morocco'),(456,'MAR17','Youssef En-Nesyri','Morocco'),(457,'MAR18','Ryan Mmaee','Morocco'),(458,'MAR19','Munir','Morocco'),(459,'MAR20','Tarik Tissoudali','Morocco'),(460,'CRO1','Team Photo','Croatia'),(461,'CRO2','Team Logo FOIL','Croatia'),(462,'CRO3','Dominik Livaković','Croatia'),(463,'CRO4','Ivica Ivušić','Croatia'),(464,'CRO5','Duje Ćaleta-Car','Croatia'),(465,'CRO6','Joško Gvardiol','Croatia'),(466,'CRO7','Josip Juranović','Croatia'),(467,'CRO8','Dejan Lovren','Croatia'),(468,'CRO9','Borna Sosa','Croatia'),(469,'CRO10','Domagoj Vida','Croatia'),(470,'CRO11','Marcelo Brozović','Croatia'),(471,'CRO12','Mateo Kovačić','Croatia'),(472,'CRO13','Luka Modrić','Croatia'),(473,'CRO14','Mario Pašalić','Croatia'),(474,'CRO15','Ivan Perišić','Croatia'),(475,'CRO16','Nikola Vlašić','Croatia'),(476,'CRO17','Josip Brekalo','Croatia'),(477,'CRO18','Andrej Kramarić','Croatia'),(478,'CRO19','Marko Livaja','Croatia'),(479,'CRO20','Mislav Oršić','Croatia'),(480,'BRA1','Team Photo','Brazil'),(481,'BRA2','Team Logo FOIL','Brazil'),(482,'BRA3','Alisson','Brazil'),(483,'BRA4','Ederson','Brazil'),(484,'BRA5','Alex Sandro','Brazil'),(485,'BRA6','Danilo','Brazil'),(486,'BRA7','Éder Militão','Brazil'),(487,'BRA8','Marquinhos','Brazil'),(488,'BRA9','Thiago Silva','Brazil'),(489,'BRA10','Casemiro','Brazil'),(490,'BRA11','Philippe Coutinho','Brazil'),(491,'BRA12','Fabinho','Brazil'),(492,'BRA13','Fred','Brazil'),(493,'BRA14','Lucas Paquetá','Brazil'),(494,'BRA15','Antony','Brazil'),(495,'BRA16','Gabriel Jesus','Brazil'),(496,'BRA17','Neymar Jr','Brazil'),(497,'BRA18','Raphinha','Brazil'),(498,'BRA19','Richarlison','Brazil'),(499,'BRA20','Vinícius Jr','Brazil'),(500,'SRB1','Team Photo','Serbia'),(501,'SRB2','Team Logo FOIL','Serbia'),(502,'SRB3','Predrag Rajković','Serbia'),(503,'SRB4','Vanja Milinković-Savić','Serbia'),(504,'SRB5','Nikola Milenković','Serbia'),(505,'SRB6','Strahinja Pavlović','Serbia'),(506,'SRB7','Miloš Veljković','Serbia'),(507,'SRB8','Filip Đuričić','Serbia'),(508,'SRB9','Nemanja Gudelj','Serbia'),(509,'SRB10','Filip Kostić','Serbia'),(510,'SRB11','Darko Lazović','Serbia'),(511,'SRB12','Saša Lukić','Serbia'),(512,'SRB13','Nemanja Maksimović','Serbia'),(513,'SRB14','Sergej Milinković-Savić','Serbia'),(514,'SRB15','Nemanja Radonjić','Serbia'),(515,'SRB16','Andrija Živković','Serbia'),(516,'SRB17','Luka Jović','Serbia'),(517,'SRB18','Aleksandar Mitrović','Serbia'),(518,'SRB19','Dušan Tadić','Serbia'),(519,'SRB20','Dušan Vlahović','Serbia'),(520,'SUI1','Team Photo','Switzerland'),(521,'SUI2','Team Logo FOIL','Switzerland'),(522,'SUI3','Yann Sommer','Switzerland'),(523,'SUI4','Gregor Kobel','Switzerland'),(524,'SUI5','Manuel Akanji','Switzerland'),(525,'SUI6','Nico Elvedi','Switzerland'),(526,'SUI7','Kevin Mbabu','Switzerland'),(527,'SUI8','Ricardo Rodríguez','Switzerland'),(528,'SUI9','Fabian Schär','Switzerland'),(529,'SUI10','Silvan Widmer','Switzerland'),(530,'SUI11','Remo Freuler','Switzerland'),(531,'SUI12','Xherdan Shaqiri','Switzerland'),(532,'SUI13','Djibril Sow','Switzerland'),(533,'SUI14','Granit Xhaka','Switzerland'),(534,'SUI15','Denis Zakaria','Switzerland'),(535,'SUI16','Steven Zuber','Switzerland'),(536,'SUI17','Breel Embolo','Switzerland'),(537,'SUI18','Noah Okafor','Switzerland'),(538,'SUI19','Haris Seferović','Switzerland'),(539,'SUI20','Ruben Vargas','Switzerland'),(540,'CMR1','Team Photo','Cameroon'),(541,'CMR2','Team Logo FOIL','Cameroon'),(542,'CMR3','André Onana','Cameroon'),(543,'CMR4','Devis Epassy','Cameroon'),(544,'CMR5','Jean-Charles Castelletto','Cameroon'),(545,'CMR6','Collins Fai','Cameroon'),(546,'CMR7','Olivier Mbaizo','Cameroon'),(547,'CMR8','Harold Moukoudi','Cameroon'),(548,'CMR9','Michael Ngadeu','Cameroon'),(549,'CMR10','Nouhou','Cameroon'),(550,'CMR11','Martin Hongla','Cameroon'),(551,'CMR12','Pierre Kunde','Cameroon'),(552,'CMR13','James Léa Siliki','Cameroon'),(553,'CMR14','Samuel Oum Gouet','Cameroon'),(554,'CMR15','André-Frank Zambo Anguissa','Cameroon'),(555,'CMR16','Vincent Aboubakar','Cameroon'),(556,'CMR17','Stéphane Bahoken','Cameroon'),(557,'CMR18','Eric Maxim Choupo-Moting','Cameroon'),(558,'CMR19','Nicolas Moumi Ngamaleu','Cameroon'),(559,'CMR20','Karl Toko Ekambi','Cameroon'),(560,'POR1','Team Photo','Portugal'),(561,'POR2','Team Logo FOIL','Portugal'),(562,'POR3','Diogo Costa','Portugal'),(563,'POR4','Rui Patrício','Portugal'),(564,'POR5','João Cancelo','Portugal'),(565,'POR6','José Fonte','Portugal'),(566,'POR7','Nuno Mendes','Portugal'),(567,'POR8','Pepe','Portugal'),(568,'POR9','Raphaël Guerreiro','Portugal'),(569,'POR10','Rúben Dias','Portugal'),(570,'POR11','Bernardo Silva','Portugal'),(571,'POR12','Bruno Fernandes','Portugal'),(572,'POR13','Danilo Pereira','Portugal'),(573,'POR14','João Moutinho','Portugal'),(574,'POR15','Renato Sanches','Portugal'),(575,'POR16','Rúben Neves','Portugal'),(576,'POR17','André Silva','Portugal'),(577,'POR18','Cristiano Ronaldo','Portugal'),(578,'POR19','Diogo Jota','Portugal'),(579,'POR20','Gonçalo Guedes','Portugal'),(580,'GHA1','Team Photo','Ghana'),(581,'GHA2','Team Logo FOIL','Ghana'),(582,'GHA3','Joe Wollacott','Ghana'),(583,'GHA4','Richard Ofori','Ghana'),(584,'GHA5','Daniel Amartey','Ghana'),(585,'GHA6','Abdul-Rahman Baba','Ghana'),(586,'GHA7','Alexander Djiku','Ghana'),(587,'GHA8','Gideon Mensah','Ghana'),(588,'GHA9','Jonathan Mensah','Ghana'),(589,'GHA10','Andy Yiadom','Ghana'),(590,'GHA11','Iddrisu Baba','Ghana'),(591,'GHA12','Mohammed Kudus','Ghana'),(592,'GHA13','Daniel-Kofi Kyereh','Ghana'),(593,'GHA14','Thomas Partey','Ghana'),(594,'GHA15','Mubarak Wakaso','Ghana'),(595,'GHA16','Felix Afena-Gyan','Ghana'),(596,'GHA17','André Ayew','Ghana'),(597,'GHA18','Jordan Ayew','Ghana'),(598,'GHA19','Issahaku Abdul Fatawu','Ghana'),(599,'GHA20','Kamaldeen Sulemana','Ghana'),(600,'URU1','Team Photo','Uruguay'),(601,'URU2','Team Logo FOIL','Uruguay'),(602,'URU3','Fernando Muslera','Uruguay'),(603,'URU4','Sergio Rochet','Uruguay'),(604,'URU5','Ronald Araújo','Uruguay'),(605,'URU6','Martín Cáceres','Uruguay'),(606,'URU7','José María Giménez','Uruguay'),(607,'URU8','Diego Godín','Uruguay'),(608,'URU9','Mathías Olivera','Uruguay'),(609,'URU10','Matías Viña','Uruguay'),(610,'URU11','Rodrigo Bentancur','Uruguay'),(611,'URU12','Giorgian De Arrascaeta','Uruguay'),(612,'URU13','Nicolás De La Cruz','Uruguay'),(613,'URU14','Lucas Torreira','Uruguay'),(614,'URU15','Federico Valverde','Uruguay'),(615,'URU16','Matías Vecino','Uruguay'),(616,'URU17','Edinson Cavani','Uruguay'),(617,'URU18','Darwin Núñez','Uruguay'),(618,'URU19','Facundo Pellistri','Uruguay'),(619,'URU20','Luis Suárez','Uruguay'),(620,'KOR1','Team Photo','South Korea'),(621,'KOR2','Team Logo FOIL','South Korea'),(622,'KOR3','Seung-gyu Kim','South Korea'),(623,'KOR4','Hyeon-woo Jo','South Korea'),(624,'KOR5','Chul Hong','South Korea'),(625,'KOR6','Tae-hwan Kim','South Korea'),(626,'KOR7','Min-jae Kim','South Korea'),(627,'KOR8','Young-gwon Kim','South Korea'),(628,'KOR9','Jin-su Kim','South Korea'),(629,'KOR10','Yong Lee','South Korea'),(630,'KOR11','In-beom Hwang','South Korea'),(631,'KOR12','Woo-young Jung','South Korea'),(632,'KOR13','Jae-sung Lee','South Korea'),(633,'KOR14','Seung-ho Paik','South Korea'),(634,'KOR15','Gue-sung Cho','South Korea'),(635,'KOR16','Hee-chan Hwang','South Korea'),(636,'KOR17','Ui-jo Hwang','South Korea'),(637,'KOR18','Chang-hoon Kwon','South Korea'),(638,'KOR19','Heung-min Son','South Korea'),(639,'KOR20','Min-kyu Song','South Korea'),(640,'FWC19','Uruguay 1930 FOIL',NULL),(641,'FWC20','Italy 1938 FOIL',NULL),(642,'FWC21','Brazil 1958 FOIL',NULL),(643,'FWC22','England 1966 FOIL',NULL),(644,'FWC23','Brazil 1970 FOIL',NULL),(645,'FWC24','Argentina 1978 FOIL',NULL),(646,'FWC25','Italy 1982 FOIL',NULL),(647,'FWC26','Germany 1990 FOIL',NULL),(648,'FWC27','France 1998 FOIL',NULL),(649,'FWC28','Spain 2010 FOIL',NULL),(650,'FWC29','France 2018 FOIL',NULL);
/*!40000 ALTER TABLE `stickers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'PIA_POO'
--
/*!50003 DROP PROCEDURE IF EXISTS `addToAlbum` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addToAlbum`(IN clave VARCHAR(6))
BEGIN
IF EXISTS(SELECT * FROM album WHERE clave_a = clave) THEN UPDATE album SET cantidad_a = (cantidad_a + 1) WHERE clave_a = clave;
ELSE INSERT INTO album(clave_a) VALUES (clave);
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `showAlbum`
--

/*!50001 DROP VIEW IF EXISTS `showAlbum`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `showAlbum` AS select `a`.`clave_a` AS `Clave`,`s`.`nombre_s` AS `Nombre`,`s`.`pais_s` AS `Pais` from (`album` `a` join `stickers` `s` on((`a`.`clave_a` = `s`.`clave_s`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `showRepeated`
--

/*!50001 DROP VIEW IF EXISTS `showRepeated`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `showRepeated` AS select `a`.`clave_a` AS `Clave`,`s`.`nombre_s` AS `Nombre`,`s`.`pais_s` AS `Pais`,`a`.`cantidad_a` AS `Cantidad` from (`album` `a` join `stickers` `s` on((`a`.`clave_a` = `s`.`clave_s`))) where (`a`.`cantidad_a` > 1) */;
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

-- Dump completed on 2023-07-31 15:51:53
