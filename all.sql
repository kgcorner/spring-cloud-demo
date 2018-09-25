CREATE DATABASE  IF NOT EXISTS `photos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `photos`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: photos
-- ------------------------------------------------------
-- Server version	8.0.12

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
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `photos` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `CAPTION` text,
  `USER_ID` mediumint(9) DEFAULT NULL,
  `COMMENT_COUNT` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,'nisi nibh lacinia orci, consectetuer',41,0),(2,'Mauris magna. Duis dignissim tempor arcu. Vestibulum ut',16,0),(3,'diam. Duis mi enim,',31,0),(4,'Duis risus odio, auctor vitae, aliquet',5,0),(5,'metus',13,0),(6,'lectus pede',37,0),(7,'ridiculus',41,0),(8,'et ultrices',17,0),(9,'turpis. Aliquam adipiscing lobortis risus. In',49,0),(10,'turpis. Nulla aliquet. Proin velit.',18,0),(11,'nascetur ridiculus mus. Proin vel arcu eu odio tristique',5,0),(12,'ante blandit viverra. Donec',45,0),(13,'scelerisque neque.',18,0),(14,'risus.',49,0),(15,'natoque penatibus et magnis dis parturient montes, nascetur ridiculus',6,0),(16,'mi. Duis risus odio, auctor',16,0),(17,'facilisis. Suspendisse commodo tincidunt',41,0),(18,'tortor. Integer aliquam adipiscing lacus.',7,0),(19,'consectetuer adipiscing elit. Etiam laoreet, libero et',37,0),(20,'tellus. Aenean egestas hendrerit',12,0),(21,'a mi fringilla',11,0),(22,'eget nisi dictum augue malesuada',33,0),(23,'Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem,',46,0),(24,'Sed molestie. Sed id risus quis diam luctus lobortis.',12,0),(25,'sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et',24,0),(26,'tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum',28,0),(27,'Donec nibh enim, gravida sit amet, dapibus id, blandit at,',41,0),(28,'nibh vulputate mauris sagittis placerat. Cras dictum',37,0),(29,'mollis non, cursus non, egestas a,',45,0),(30,'amet, consectetuer',35,0),(31,'et pede. Nunc sed orci lobortis augue scelerisque mollis.',28,0),(32,'ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec',27,0),(33,'netus et malesuada fames ac turpis egestas. Fusce aliquet',48,0),(34,'ligula. Aenean gravida',26,0),(35,'at pretium aliquet, metus urna convallis erat,',13,0),(36,'mi felis, adipiscing fringilla,',35,0),(37,'In lorem. Donec elementum, lorem ut aliquam',27,2),(38,'ornare, lectus ante dictum mi, ac mattis',13,2),(39,'luctus. Curabitur egestas nunc sed libero. Proin',28,4),(40,'magna. Duis dignissim tempor arcu. Vestibulum ut eros non',38,3),(41,'egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum',25,3),(42,'mollis lectus pede et risus. Quisque libero lacus,',28,2),(43,'amet, faucibus ut, nulla. Cras eu tellus eu',21,1),(44,'vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque',10,0),(45,'lorem, sit amet ultricies sem magna nec',33,4),(46,'sit amet, consectetuer adipiscing elit.',23,1),(47,'non, cursus non, egestas a, dui. Cras pellentesque. Sed',24,5),(48,'eu, odio. Phasellus at augue id ante dictum cursus. Nunc',50,2),(49,'Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet',17,2),(50,'dolor. Fusce mi',8,2),(51,'diam vel arcu. Curabitur ut odio',47,0),(52,'lobortis',5,0),(53,'diam luctus lobortis. Class aptent taciti',33,1),(54,'Phasellus libero mauris, aliquam eu,',9,0),(55,'vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque',16,1),(56,'varius ultrices, mauris ipsum porta elit,',5,2),(57,'magna tellus faucibus leo, in lobortis tellus',18,1),(58,'vel,',43,2),(59,'ornare egestas ligula. Nullam feugiat placerat velit. Quisque',11,0),(60,'vitae semper egestas, urna',43,3),(61,'tempus, lorem fringilla ornare placerat, orci lacus',38,1),(62,'auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis',17,1),(63,'magna a tortor. Nunc commodo auctor velit. Aliquam nisl.',47,5),(64,'Pellentesque habitant morbi tristique senectus et',16,2),(65,'consequat, lectus sit amet luctus vulputate,',17,2),(66,'malesuada vel, venenatis vel, faucibus id, libero. Donec',20,5),(67,'arcu. Vestibulum ante ipsum primis in faucibus orci luctus et',4,1),(68,'molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl',1,4),(69,'nec tempus scelerisque, lorem ipsum sodales purus,',16,0),(70,'convallis in, cursus et, eros. Proin',22,3),(71,'egestas. Duis ac arcu. Nunc',20,4),(72,'ultricies ligula.',44,3),(73,'lacus. Aliquam rutrum',23,2),(74,'Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec,',33,2),(75,'id enim. Curabitur massa. Vestibulum accumsan neque et nunc.',7,2),(76,'enim. Nunc ut erat.',49,0),(77,'gravida sagittis.',30,5),(78,'Sed nulla ante, iaculis nec,',37,1),(79,'In tincidunt congue',41,1),(80,'a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras',38,2),(81,'arcu. Vestibulum ut',26,2),(82,'Ut tincidunt orci quis lectus. Nullam suscipit, est',27,1),(83,'placerat, augue. Sed molestie. Sed',26,1),(84,'at auctor ullamcorper, nisl arcu iaculis enim, sit amet',35,5),(85,'sem. Pellentesque ut ipsum ac mi eleifend',3,3),(86,'velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem',42,1),(87,'ut',39,2),(88,'lectus sit amet luctus vulputate,',49,3),(89,'sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed',38,1),(90,'Duis ac',31,1),(91,'velit dui, semper et, lacinia vitae, sodales at,',43,1),(92,'Nulla tincidunt, neque vitae semper egestas, urna',20,2),(93,'facilisi.',25,0),(94,'erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum',6,1),(95,'dictum mi, ac mattis',24,4),(96,'Donec non',39,2),(97,'sagittis. Nullam vitae diam. Proin dolor. Nulla',46,3),(98,'nonummy ipsum non arcu. Vivamus sit amet',36,3),(99,'Phasellus nulla. Integer vulputate,',6,1),(100,'dolor sit',23,2);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-25 19:39:48
CREATE DATABASE  IF NOT EXISTS `users` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `users`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: users
-- ------------------------------------------------------
-- Server version	8.0.12

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
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `login` (
  `USER_NAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(2000) NOT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`USER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('a.mi.fringilla@dapibus.co.uk','Proin',47),('a.neque@magnisdis.ca','eget',34),('a@In.com','ullamcorper.',80),('a@Integeraliquam.com','penatibus',14),('ac@nunc.edu','non',40),('adipiscing.lacus.Ut@felisadipiscingfringilla.com','sed',7),('Aliquam.fringilla@etrutrum.net','blandit.',84),('amet.consectetuer@eudolor.ca','semper',97),('ante.bibendum@egestas.ca','enim,',85),('ante.ipsum.primis@Namacnulla.edu','dolor',4),('arcu.iaculis@Crasconvallis.edu','est',92),('arcu@natoque.co.uk','odio.',57),('at.auctor@temporaugue.ca','Nam',77),('at@vitae.co.uk','odio',79),('augue.eu.tempor@eu.com','ipsum.',90),('augue.id@enimsit.com','molestie.',51),('augue.id@eratsemperrutrum.co.uk','nulla',35),('augue@cursusa.com','interdum',36),('consectetuer.adipiscing@risus.co.uk','eu',14),('Cras@Morbi.com','aliquet',13),('dapibus.gravida.Aliquam@utmiDuis.org','tincidunt.',13),('dictum.eleifend@ultricies.ca','sit',69),('dictum.placerat.augue@Aliquam.com','nunc',24),('dictum@tellusnon.ca','eu,',8),('dolor.sit.amet@montes.ca','et,',2),('dolor.sit@libero.net','egestas.',11),('dui.semper@semut.ca','tempus',53),('dui@montes.co.uk','ante.',61),('Duis@duiquisaccumsan.com','Sed',20),('egestas.Duis.ac@Curabitur.edu','tellus.',81),('eget.dictum.placerat@sitamet.edu','Quisque',97),('eget.massa@Etiam.net','sit',6),('elit@molestie.ca','varius',34),('elit@parturientmontesnascetur.ca','Etiam',1),('et.magnis@non.org','dictum',45),('Etiam.vestibulum.massa@erat.org','congue',47),('eu.dolor@ametfaucibus.net','purus',82),('eu.erat@metusAeneansed.org','Integer',63),('eu.lacus@ipsumacmi.ca','elit,',12),('eu.neque.pellentesque@dolorquamelementum.net','Duis',49),('eu@vitae.ca','metus',1),('facilisis@Nullaaliquet.ca','augue,',19),('felis@quisaccumsan.com','nec,',85),('feugiat.tellus.lorem@loremDonecelementum.net','accumsan',95),('hendrerit.Donec@sociisnatoquepenatibus.org','Nulla',21),('hendrerit.neque.In@interdumligula.ca','dapibus',35),('id@nuncInat.com','consectetuer',91),('in.molestie@cursus.edu','feugiat',100),('inceptos.hymenaeos@Vivamus.org','ridiculus',99),('Integer.id@pharetraQuisque.net','ultrices,',90),('interdum.enim@convalliserat.edu','Lorem',77),('interdum.libero@erategetipsum.co.uk','lacinia',44),('lorem@Utsagittislobortis.com','lectus',3),('magna.sed.dui@Namconsequat.org','hendrerit',3),('magna.tellus.faucibus@arcuSed.net','tellus.',45),('magna@Maecenasiaculisaliquet.net','fermentum',75),('malesuada.fames.ac@arcuet.org','Phasellus',50),('malesuada.vel.venenatis@Aeneangravida.ca','quis',73),('Mauris.non@ascelerisquesed.net','sollicitudin',77),('mauris.sit.amet@dictummagnaUt.net','egestas.',62),('mauris@eudolor.org','vestibulum',45),('Mauris@vitaesodales.net','sed,',62),('metus.facilisis.lorem@adlitoratorquent.com','risus',36),('metus@turpisIncondimentum.ca','facilisi.',53),('mollis@loremluctusut.com','et',85),('mollis@nisisem.edu','volutpat.',5),('mus.Proin.vel@Praesent.co.uk','at',5),('nascetur.ridiculus.mus@erat.net','Aliquam',10),('netus@velarcu.ca','Sed',72),('nibh.vulputate.mauris@risusMorbi.ca','tristique',69),('nisi@placeratorcilacus.co.uk','Mauris',58),('nunc.sed@sedtortorInteger.ca','eros.',42),('Nunc.sollicitudin@nuncac.co.uk','ipsum',30),('Nunc@Integer.co.uk','lacinia',42),('ornare.lectus@diamDuismi.edu','gravida',86),('pellentesque.a.facilisis@nullaatsem.org','facilisis,',34),('penatibus@nulla.net','dui',100),('Phasellus.libero.mauris@Aliquamfringilla.com','sociis',98),('Proin.mi.Aliquam@estac.edu','vulputate,',70),('purus.Maecenas@congue.com','nec',80),('quam.vel@consequat.ca','urna.',9),('Quisque.ac@elitafeugiat.co.uk','iaculis',100),('ridiculus.mus@Cras.edu','adipiscing',21),('sagittis.lobortis@eratvel.com','luctus',90),('sagittis@dis.net','dis',84),('sapien@lectuspede.com','velit',37),('scelerisque.neque.Nullam@purus.co.uk','mollis',29),('Sed.dictum@etnetus.edu','nec',92),('sed.dui.Fusce@utipsumac.ca','sagittis',46),('sed.leo.Cras@Morbinonsapien.co.uk','aptent',81),('Sed.nec.metus@senectusetnetus.com','vehicula',74),('Sed.nulla.ante@diam.net','vestibulum',92),('sed.turpis.nec@Suspendissesagittis.co.uk','pede',35),('sit.amet.nulla@Nullamsuscipit.com','elit.',2),('sociis.natoque@loremsemperauctor.co.uk','dictum',77),('tincidunt.aliquam@Praesent.com','vel',3),('tortor@fermentum.ca','vitae',93),('vehicula.aliquet.libero@sodalesat.net','fringilla',41),('vel@egettinciduntdui.edu','mi',34),('vel@Proinmi.org','Donec',38);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Justine'),(2,'Griffin'),(3,'Vanna'),(4,'Gay'),(5,'Dale'),(6,'Troy'),(7,'Angela'),(8,'Desiree'),(9,'Zeph'),(10,'Lacota'),(11,'Gregory'),(12,'Garrett'),(13,'Otto'),(14,'Yoshi'),(15,'Jonah'),(16,'Omar'),(17,'Gillian'),(18,'Leah'),(19,'Olga'),(20,'Lana'),(21,'Stacey'),(22,'Illiana'),(23,'Vanna'),(24,'Colette'),(25,'Aristotle'),(26,'Athena'),(27,'Joan'),(28,'Thane'),(29,'Patrick'),(30,'Amy'),(31,'Laurel'),(32,'Kessie'),(33,'Phillip'),(34,'Chelsea'),(35,'Keith'),(36,'Wallace'),(37,'Samson'),(38,'Micah'),(39,'Tobias'),(40,'Acton'),(41,'Sopoline'),(42,'Camilla'),(43,'Britanney'),(44,'Hiroko'),(45,'Mechelle'),(46,'Diana'),(47,'Eaton'),(48,'Jacqueline'),(49,'Lavinia'),(50,'Rooney'),(51,'Kenyon'),(52,'Ferris'),(53,'Quail'),(54,'Simone'),(55,'Cynthia'),(56,'Tad'),(57,'Rigel'),(58,'Ezekiel'),(59,'Carolyn'),(60,'Griffin'),(61,'Ulric'),(62,'Lillith'),(63,'David'),(64,'Lance'),(65,'Dane'),(66,'Alika'),(67,'Leonard'),(68,'George'),(69,'Brennan'),(70,'Zachary'),(71,'Allegra'),(72,'Basia'),(73,'Victor'),(74,'Cruz'),(75,'Rinah'),(76,'Riley'),(77,'Marny'),(78,'Lester'),(79,'Solomon'),(80,'Ethan'),(81,'Elliott'),(82,'Amaya'),(83,'Octavia'),(84,'Herrod'),(85,'Ashely'),(86,'Rooney'),(87,'September'),(88,'Nehru'),(89,'Idola'),(90,'Edan'),(91,'Kelly'),(92,'Jocelyn'),(93,'Myra'),(94,'Brody'),(95,'Hall'),(96,'Richard'),(97,'Cody'),(98,'Gretchen'),(99,'Inga'),(100,'Hayley');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-25 19:39:48
CREATE DATABASE  IF NOT EXISTS `comments` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `comments`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: comments
-- ------------------------------------------------------
-- Server version	8.0.12

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comments` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMMENT` varchar(500) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `PHOTO_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'consectetuer adipiscing elit. Etiam laoreet, libero',50,19),(2,'mi,',56,16),(3,'Vivamus euismod urna. Nullam lobortis',81,47),(4,'tincidunt, neque vitae semper egestas,',80,90),(5,'dui augue eu tellus. Phasellus',7,36),(6,'fringilla est. Mauris eu turpis. Nulla aliquet. Proin',41,72),(7,'eu enim. Etiam imperdiet dictum magna. Ut',52,63),(8,'sem magna nec quam. Curabitur vel lectus. Cum',91,23),(9,'nibh.',41,14),(10,'auctor, nunc nulla vulputate dui, nec',21,34),(11,'Donec tincidunt. Donec vitae erat vel pede blandit congue. In',5,39),(12,'vestibulum',33,12),(13,'non enim commodo hendrerit. Donec porttitor tellus non',7,25),(14,'quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed',8,17),(15,'Cras sed',80,91),(16,'In mi pede, nonummy ut, molestie in, tempus eu, ligula.',34,20),(17,'vulputate mauris sagittis',90,85),(18,'felis orci, adipiscing non, luctus sit amet,',46,66),(19,'at risus.',91,87),(20,'ut mi. Duis risus odio, auctor vitae,',36,45),(21,'ligula',85,66),(22,'nulla. Donec',4,58),(23,'dui, in sodales',16,71),(24,'Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien',47,4),(25,'natoque penatibus et magnis dis parturient montes,',27,63),(26,'id nunc interdum feugiat. Sed nec metus facilisis',47,84),(27,'elit fermentum risus, at fringilla purus mauris a',81,20),(28,'ligula eu enim. Etiam imperdiet dictum magna.',47,9),(29,'neque.',85,20),(30,'blandit at, nisi. Cum sociis natoque penatibus',76,41),(31,'vitae sodales',77,22),(32,'imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus',28,77),(33,'non,',91,86),(34,'elementum at, egestas a, scelerisque sed, sapien. Nunc',19,23),(35,'nec, euismod in,',42,88),(36,'Nulla eu neque pellentesque massa lobortis ultrices.',69,63),(37,'Donec porttitor tellus non magna. Nam ligula',76,6),(38,'tempor bibendum. Donec',58,47),(39,'nostra, per inceptos hymenaeos. Mauris',27,55),(40,'aliquet molestie tellus. Aenean egestas',80,50),(41,'ultrices. Vivamus rhoncus. Donec est. Nunc',78,29),(42,'molestie tortor nibh sit',5,98),(43,'nisi. Cum sociis natoque penatibus et',7,40),(44,'lectus pede et risus. Quisque libero lacus, varius',44,99),(45,'elit.',39,7),(46,'Nulla interdum. Curabitur dictum. Phasellus',21,77),(47,'felis eget varius ultrices, mauris ipsum porta',59,22),(48,'nibh dolor, nonummy ac, feugiat non,',34,42),(49,'tristique pharetra. Quisque ac',33,96),(50,'imperdiet',86,77),(51,'vitae, erat. Vivamus',87,2),(52,'laoreet, libero et tristique pellentesque, tellus sem',94,61),(53,'magna. Sed eu eros. Nam consequat dolor vitae dolor.',91,34),(54,'et netus et malesuada fames',95,27),(55,'felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed',59,71),(56,'malesuada fringilla est. Mauris eu turpis. Nulla',25,65),(57,'semper tellus id nunc interdum feugiat. Sed nec metus facilisis',60,16),(58,'urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus',81,21),(59,'Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque',100,72),(60,'et, lacinia',82,82),(61,'elit. Curabitur sed tortor. Integer aliquam adipiscing',30,95),(62,'at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum',26,33),(63,'mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam',53,95),(64,'orci luctus',75,75),(65,'nec ligula consectetuer rhoncus. Nullam velit dui, semper',24,8),(66,'arcu vel quam dignissim pharetra.',35,12),(67,'in, cursus et,',48,35),(68,'aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla',17,15),(69,'lobortis tellus justo sit amet nulla. Donec non justo.',38,45),(70,'mi. Duis risus odio,',59,88),(71,'Quisque libero lacus, varius et, euismod et, commodo at,',33,7),(72,'luctus vulputate, nisi sem semper erat, in consectetuer',17,27),(73,'varius. Nam porttitor scelerisque neque.',4,80),(74,'eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed',98,8),(75,'penatibus et magnis dis parturient montes, nascetur ridiculus',46,36),(76,'tincidunt aliquam arcu. Aliquam ultrices iaculis',54,53),(77,'enim mi',40,60),(78,'elit elit fermentum risus, at fringilla',29,95),(79,'amet',52,66),(80,'amet, risus. Donec',65,49),(81,'a sollicitudin',78,34),(82,'vel',59,42),(83,'molestie pharetra',44,47),(84,'mollis dui, in',52,56),(85,'dui, semper et,',67,66),(86,'lorem,',89,35),(87,'Fusce diam nunc, ullamcorper',96,40),(88,'a, dui. Cras pellentesque. Sed dictum.',77,58),(89,'Suspendisse dui. Fusce diam nunc, ullamcorper',83,22),(90,'Vivamus sit amet risus. Donec egestas. Aliquam nec',84,67),(91,'In scelerisque scelerisque dui. Suspendisse',74,32),(92,'tincidunt vehicula risus. Nulla eget metus eu erat semper',26,33),(93,'Cras dictum ultricies ligula.',44,71),(94,'rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in,',71,20),(95,'et, rutrum non, hendrerit id, ante. Nunc mauris sapien,',1,38),(96,'cursus, diam at pretium aliquet, metus urna convallis erat,',12,48),(97,'vitae dolor. Donec fringilla. Donec',38,26),(98,'consectetuer adipiscing elit. Aliquam auctor,',13,92),(99,'tempus non, lacinia at, iaculis quis, pede. Praesent',72,73),(100,'sem, vitae aliquam eros turpis',10,72),(101,'nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec',66,64),(102,'dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae',66,33),(103,'placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et',20,7),(104,'ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse',77,71),(105,'In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant',54,100),(106,'vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec',57,45),(107,'feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet.',52,79),(108,'sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada',83,46),(109,'magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque',88,1),(110,'ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin',48,74),(111,'lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui,',30,68),(112,'metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus',57,66),(113,'enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin',4,81),(114,'arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec',4,84),(115,'mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl',98,65),(116,'sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus.',48,48),(117,'orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra.',18,47),(118,'facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a',31,31),(119,'volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque',3,15),(120,'sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare',15,96),(121,'Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit.',33,62),(122,'Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat',45,84),(123,'iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin',78,63),(124,'taciti sociosqu ad litora torquent per conubia nostra, per inceptos',98,4),(125,'dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede.',25,68),(126,'egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam',63,60),(127,'aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna.',37,27),(128,'egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend.',5,70),(129,'consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue',21,98),(130,'pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus',43,31),(131,'mauris ipsum porta elit, a feugiat tellus lorem eu metus.',60,21),(132,'interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh.',78,77),(133,'tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit',99,25),(134,'convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales',71,29),(135,'erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac',67,97),(136,'tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus.',8,38),(137,'sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque',58,68),(138,'Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse',20,18),(139,'Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras',36,78),(140,'lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et,',18,88),(141,'Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus',24,57),(142,'semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus.',53,73),(143,'nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum.',57,64),(144,'ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo',51,77),(145,'bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus',81,75),(146,'auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan interdum libero dui',92,22),(147,'ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl.',58,37),(148,'egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu',92,24),(149,'odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est,',70,9),(150,'magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac',100,47),(151,'Sed nunc est, mollis non, cursus non, egestas a, dui. Cras',69,39),(152,'nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus',90,85),(153,'at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque',61,70),(154,'at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices',15,84),(155,'Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor',80,56),(156,'mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc',68,95),(157,'quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis.',19,98),(158,'sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci',52,50),(159,'posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui.',85,83),(160,'at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices,',27,43),(161,'Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis',51,37),(162,'ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit',67,45),(163,'placerat, augue. Sed molestie. Sed id risus quis diam luctus',94,27),(164,'id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos.',91,85),(165,'magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt',27,97),(166,'eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus',40,100),(167,'mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque',88,6),(168,'sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus',16,7),(169,'venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem',84,13),(170,'Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis',83,20),(171,'mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla,',74,10),(172,'diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede.',37,39),(173,'eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in',7,41),(174,'Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel,',31,49),(175,'non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum',47,81),(176,'molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras',61,80),(177,'Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas',41,70),(178,'penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc',69,92),(179,'urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus',10,63),(180,'diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec,',66,97),(181,'tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris',94,13),(182,'euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed',19,32),(183,'urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et,',12,84),(184,'dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam',17,41),(185,'ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit',4,13),(186,'fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate',60,30),(187,'pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas',76,25),(188,'dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque,',26,21),(189,'et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque',89,68),(190,'ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi.',94,87),(191,'odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia',3,94),(192,'ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit',30,89),(193,'semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices',71,5),(194,'consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget',24,4),(195,'mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed',20,39),(196,'malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis',43,40),(197,'est ac mattis semper, dui lectus rutrum urna, nec luctus felis',60,74),(198,'Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus.',81,22),(199,'neque non quam. Pellentesque habitant morbi tristique senectus et netus et',66,4),(200,'risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit',74,60);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-25 19:39:49
