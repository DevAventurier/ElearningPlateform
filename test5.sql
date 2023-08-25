-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: test5
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `administrateur_cour`
--

DROP TABLE IF EXISTS `administrateur_cour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrateur_cour` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `intitule` varchar(100) NOT NULL,
  `code` varchar(10) NOT NULL,
  `enseignant_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Administrateur_cour_enseignant_id_827d99e6_fk_AppEcole_user_id` (`enseignant_id`),
  CONSTRAINT `Administrateur_cour_enseignant_id_827d99e6_fk_AppEcole_user_id` FOREIGN KEY (`enseignant_id`) REFERENCES `appecole_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrateur_cour`
--

LOCK TABLES `administrateur_cour` WRITE;
/*!40000 ALTER TABLE `administrateur_cour` DISABLE KEYS */;
INSERT INTO `administrateur_cour` VALUES (1,'Programmation','CSC242',4),(2,'Java','CSC301',4),(3,'Laravel','LRVL',5),(4,'Django','IT211',4),(5,'Marketing','MKT',6),(6,'testAdmin','0001',5);
/*!40000 ALTER TABLE `administrateur_cour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appecole_devoir`
--

DROP TABLE IF EXISTS `appecole_devoir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appecole_devoir` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `intitule` varchar(255) NOT NULL,
  `matiere` varchar(255) NOT NULL,
  `statut` varchar(20) NOT NULL,
  `projet` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appecole_devoir`
--

LOCK TABLES `appecole_devoir` WRITE;
/*!40000 ALTER TABLE `appecole_devoir` DISABLE KEYS */;
INSERT INTO `appecole_devoir` VALUES (1,'Django','IT211','en_cours','projets/IPNET_EXPERT_PROJET_2022-20231_1.pdf'),(2,'Django','IT211','corrigé','projets/SYLLABUS-IPNET_-_MGT_101_1.pdf'),(3,'Laravel','LRVL','en_cours','projets/SYLLABUS-IPNET_NET_302_1.pdf'),(4,'Java','CSC301','en_cours','projets/SEANCE_N_1__PRISE_DE_CONTACT_INTRODUCTION_ET_DEFINITION_DE_QUELQUES_CONCEPTS.pdf');
/*!40000 ALTER TABLE `appecole_devoir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appecole_user`
--

DROP TABLE IF EXISTS `appecole_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appecole_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `role` varchar(30) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `identifiant` varchar(20) DEFAULT NULL,
  `profil` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appecole_user`
--

LOCK TABLES `appecole_user` WRITE;
/*!40000 ALTER TABLE `appecole_user` DISABLE KEYS */;
INSERT INTO `appecole_user` VALUES (1,'pbkdf2_sha256$600000$LuYkfsRyE7Bp5G2Rjeb8Ap$fQzqXnSTqAp5jCGUYs4IvwZv0W0dDByQdRmfNrscpPg=','2023-08-25 02:45:46.796459',1,'DevAventurier','','','mail@gmail.com',1,1,'2023-08-24 06:19:59.243662','',NULL,NULL,''),(2,'pbkdf2_sha256$600000$eZIr0qN7eeUrYnIFWnKVgY$RDXkp7gJyeF2NJ9iA/B8Qx7/ZChxT5GAM5oDcaD2HZ8=','2023-08-25 00:29:51.450231',0,'YERIMA','Rachad','ASSEMA','Jeudi@gmail.com',0,1,'2023-08-24 06:23:31.957246','Administrateur','2023-08-24','admin','4k-Sasuke-Uchiha-Wallpaper.jpg'),(3,'pbkdf2_sha256$600000$2ExLvshb7gINC0EA8JrJoZ$rEAFAGCU305+4jDUKMM5znUa6A2yhMiM4Q6s4JVBHCY=','2023-08-24 07:43:56.770722',0,'YERIMA32','Rachad','ASSEMA','vendredi@gmail.com',0,1,'2023-08-24 06:29:26.697634','Etudiant','2023-08-24','123','4k-Black-Background-Wallpaper.jpg'),(4,'pbkdf2_sha256$600000$3qniSktbCJqo0cVkTUOY2c$gw6Gm+HZ7Qhw95fa9zMvdlCC3AYbOhhALx/zrInONCU=','2023-08-24 07:17:22.655471',0,'django','essai','essai','django@gmail.com',0,1,'2023-08-24 06:59:08.805163','Enseignant','2023-08-11','002','4k-Black-Background-Wallpaper.jpg'),(5,'pbkdf2_sha256$600000$jOXbBbVVzKrfw7u3VlQmiU$Qt7a71LH/zfUFhxQiPxmfoU7bIZnPy4Zci5n8WhlBqs=','2023-08-24 07:46:39.565578',0,'last','YERIMA','Hateam','narutovolt4@gmail.com',0,1,'2023-08-24 07:03:05.048788','Enseignant','2023-08-24','003','4k-Sasuke-Uchiha-Wallpaper.jpg'),(6,'pbkdf2_sha256$600000$ZVDMIIcZcFxjaPiotsM9nn$G8KHYG+dY/DKSbZGltWW3OreeC9MfDSLxSv0m2FaYvM=','2023-08-24 07:56:22.558857',0,'Fin','ok','ok','fin@gmail.com',0,1,'2023-08-24 07:04:18.702277','Enseignant','2023-08-24','004','4k-Demon-Slayer-Wallpaper-1920x1080-1.jpg'),(7,'pbkdf2_sha256$600000$k3Ly066pvBnmAkeNcairbn$jONtcCwWLvq6fMAROxpVXZqm3pJYLjDOnaVdZKAIwwY=','2023-08-24 07:51:37.696266',0,'etudiant2','etudiant','etudiant','etudiant@gmail.com',0,1,'2023-08-24 07:05:23.683193','Etudiant','2023-08-24','004','4k-Chainsaw-Man-Wallpaper.jpg'),(8,'93017539',NULL,0,'testAdmin','','','',0,1,'2023-08-24 07:58:22.000000','ENSEIGNANT','2023-08-25','006','images/4k-Joker-Wallpaper-1.jpg');
/*!40000 ALTER TABLE `appecole_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appecole_user_groups`
--

DROP TABLE IF EXISTS `appecole_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appecole_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `AppEcole_user_groups_user_id_group_id_2905ab51_uniq` (`user_id`,`group_id`),
  KEY `AppEcole_user_groups_group_id_f71fbe52_fk_auth_group_id` (`group_id`),
  CONSTRAINT `AppEcole_user_groups_group_id_f71fbe52_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `AppEcole_user_groups_user_id_c488f0e8_fk_AppEcole_user_id` FOREIGN KEY (`user_id`) REFERENCES `appecole_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appecole_user_groups`
--

LOCK TABLES `appecole_user_groups` WRITE;
/*!40000 ALTER TABLE `appecole_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `appecole_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appecole_user_user_permissions`
--

DROP TABLE IF EXISTS `appecole_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appecole_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `AppEcole_user_user_permi_user_id_permission_id_38510c50_uniq` (`user_id`,`permission_id`),
  KEY `AppEcole_user_user_p_permission_id_713c1f51_fk_auth_perm` (`permission_id`),
  CONSTRAINT `AppEcole_user_user_p_permission_id_713c1f51_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `AppEcole_user_user_p_user_id_55e00d0d_fk_AppEcole_` FOREIGN KEY (`user_id`) REFERENCES `appecole_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appecole_user_user_permissions`
--

LOCK TABLES `appecole_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `appecole_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `appecole_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add cour',6,'add_cour'),(22,'Can change cour',6,'change_cour'),(23,'Can delete cour',6,'delete_cour'),(24,'Can view cour',6,'view_cour'),(25,'Can add soumission',7,'add_soumission'),(26,'Can change soumission',7,'change_soumission'),(27,'Can delete soumission',7,'delete_soumission'),(28,'Can view soumission',7,'view_soumission'),(29,'Can add user',8,'add_user'),(30,'Can change user',8,'change_user'),(31,'Can delete user',8,'delete_user'),(32,'Can view user',8,'view_user'),(33,'Can add devoir',9,'add_devoir'),(34,'Can change devoir',9,'change_devoir'),(35,'Can delete devoir',9,'delete_devoir'),(36,'Can view devoir',9,'view_devoir');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_AppEcole_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_AppEcole_user_id` FOREIGN KEY (`user_id`) REFERENCES `appecole_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-08-24 07:57:49.803799','6','testAdmin',1,'[{\"added\": {}}]',6,1),(2,'2023-08-24 07:59:16.336254','8','testAdmin',1,'[{\"added\": {}}]',8,1),(3,'2023-08-24 08:06:16.676570','6','testAdmin',2,'[]',6,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(6,'Administrateur','cour'),(9,'AppEcole','devoir'),(8,'AppEcole','user'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(7,'Etudiant','soumission'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-08-24 06:16:31.370025'),(2,'contenttypes','0002_remove_content_type_name','2023-08-24 06:16:31.481953'),(3,'auth','0001_initial','2023-08-24 06:16:31.808974'),(4,'auth','0002_alter_permission_name_max_length','2023-08-24 06:16:31.884954'),(5,'auth','0003_alter_user_email_max_length','2023-08-24 06:16:31.896957'),(6,'auth','0004_alter_user_username_opts','2023-08-24 06:16:31.906473'),(7,'auth','0005_alter_user_last_login_null','2023-08-24 06:16:31.917476'),(8,'auth','0006_require_contenttypes_0002','2023-08-24 06:16:31.926475'),(9,'auth','0007_alter_validators_add_error_messages','2023-08-24 06:16:31.941482'),(10,'auth','0008_alter_user_username_max_length','2023-08-24 06:16:31.953476'),(11,'auth','0009_alter_user_last_name_max_length','2023-08-24 06:16:31.968483'),(12,'auth','0010_alter_group_name_max_length','2023-08-24 06:16:31.994500'),(13,'auth','0011_update_proxy_permissions','2023-08-24 06:16:32.006008'),(14,'auth','0012_alter_user_first_name_max_length','2023-08-24 06:16:32.016020'),(15,'AppEcole','0001_initial','2023-08-24 06:16:32.312015'),(16,'Administrateur','0001_initial','2023-08-24 06:16:32.398110'),(17,'AppEcole','0002_alter_user_birthdate','2023-08-24 06:16:32.410040'),(18,'AppEcole','0003_devoir','2023-08-24 06:16:32.444040'),(19,'AppEcole','0004_devoir_profil_alter_user_role','2023-08-24 06:16:32.492045'),(20,'AppEcole','0005_remove_devoir_profil_user_profil','2023-08-24 06:16:32.609677'),(21,'AppEcole','0006_alter_user_profil','2023-08-24 06:16:32.623680'),(22,'AppEcole','0007_alter_user_profil','2023-08-24 06:16:32.638680'),(23,'Etudiant','0001_initial','2023-08-24 06:16:32.725195'),(24,'Etudiant','0002_alter_soumission_projet','2023-08-24 06:16:32.738192'),(25,'Etudiant','0003_alter_soumission_projet','2023-08-24 06:16:32.754204'),(26,'Etudiant','0004_alter_soumission_projet','2023-08-24 06:16:32.767634'),(27,'admin','0001_initial','2023-08-24 06:16:32.920573'),(28,'admin','0002_logentry_remove_auto_add','2023-08-24 06:16:32.937574'),(29,'admin','0003_logentry_add_action_flag_choices','2023-08-24 06:16:32.952572'),(30,'sessions','0001_initial','2023-08-24 06:16:33.003607');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('hnor8k9vqmlj2iyfz9pua0buysutghrq','.eJxVjEEOwiAQRe_C2hBgOlBcuvcMhA6DVA0kpV0Z765NutDtf-_9lwhxW0vYOi9hTuIstDj9blOkB9cdpHustyap1XWZJ7kr8qBdXlvi5-Vw_w5K7OVbszc6K3DAiAOMMdnBpwhoR4WQFLAxFqwjzIrJa4fgyLnsFSORUVm8P7eYNu4:1qZMpW:vwvFiOWwZm8rOJY0aZzH51I5fBVyR7eeeKhDS1dyAKo','2023-09-08 02:45:46.815458'),('ifqd4a4sj0gohicygsn7nqeooyf8thze','.eJxVjMEOwiAQRP-FsyFAS108evcbyC67laqBpLQn47_bJj3oZQ7z3sxbRVyXHNcmc5xYXZRTp9-OMD2l7IAfWO5Vp1qWeSK9K_qgTd8qy-t6uH8HGVve1sIGEZyTXgJzbyzD4ASg80RBxkQO_RajOUvqBiGwiYDQCoPnkFh9vhDROX8:1qZJrI:6Ebbv0E8t15Hbpbh0uLGMxNM21Wqn8RaDHTDGT_6ES8','2023-09-07 23:35:24.277542');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etudiant_soumission`
--

DROP TABLE IF EXISTS `etudiant_soumission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etudiant_soumission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `matiere` varchar(100) NOT NULL,
  `projet` varchar(100) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Etudiant_soumission_user_id_bb6aad6e_fk_AppEcole_user_id` (`user_id`),
  CONSTRAINT `Etudiant_soumission_user_id_bb6aad6e_fk_AppEcole_user_id` FOREIGN KEY (`user_id`) REFERENCES `appecole_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etudiant_soumission`
--

LOCK TABLES `etudiant_soumission` WRITE;
/*!40000 ALTER TABLE `etudiant_soumission` DISABLE KEYS */;
INSERT INTO `etudiant_soumission` VALUES (1,'IT211','Stewart_Calculus_6ed.pdf',3),(3,'CSC301','SEANCE N° 10  LA MEDECINE TRADITIONNELLE.pdf',7),(4,'LRVL','jdk-11.0.17_windows-x64_bin.rar',7),(5,'IT211','47666.png',7);
/*!40000 ALTER TABLE `etudiant_soumission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-25 13:49:45
