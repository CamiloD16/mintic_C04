-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: app_actividades
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

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
-- Table structure for table `actividades_actividades`
--

DROP TABLE IF EXISTS `actividades_actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividades_actividades` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre_actividad` longtext NOT NULL,
  `descripcion_actividad` longtext,
  `imagen_actividad` longtext,
  `precio_actividad` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades_actividades`
--

LOCK TABLES `actividades_actividades` WRITE;
/*!40000 ALTER TABLE `actividades_actividades` DISABLE KEYS */;
INSERT INTO `actividades_actividades` VALUES (1,'test_01','when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,','https://images.pexels.com/photos/1098365/pexels-photo-1098365.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',1222),(2,'nombre de actividad','when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,','https://images.pexels.com/photos/1761282/pexels-photo-1761282.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',23222),(3,'test_imagen04',' created description description desc description description description description descriptionription description created description created description created','https://images.pexels.com/photos/3283121/pexels-photo-3283121.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',52222323),(4,'viajes','lorem if hout logic','https://images.pexels.com/photos/2724664/pexels-photo-2724664.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',52212);
/*!40000 ALTER TABLE `actividades_actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actividades_actividadesusuarios`
--

DROP TABLE IF EXISTS `actividades_actividadesusuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividades_actividadesusuarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_actividad_id` bigint NOT NULL,
  `id_usuario_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `actividades_activida_id_actividad_id_bbc028e2_fk_actividad` (`id_actividad_id`),
  KEY `actividades_activida_id_usuario_id_47183712_fk_actividad` (`id_usuario_id`),
  CONSTRAINT `actividades_activida_id_actividad_id_bbc028e2_fk_actividad` FOREIGN KEY (`id_actividad_id`) REFERENCES `actividades_actividades` (`id`),
  CONSTRAINT `actividades_activida_id_usuario_id_47183712_fk_actividad` FOREIGN KEY (`id_usuario_id`) REFERENCES `actividades_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades_actividadesusuarios`
--

LOCK TABLES `actividades_actividadesusuarios` WRITE;
/*!40000 ALTER TABLE `actividades_actividadesusuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividades_actividadesusuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actividades_categorias`
--

DROP TABLE IF EXISTS `actividades_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividades_categorias` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades_categorias`
--

LOCK TABLES `actividades_categorias` WRITE;
/*!40000 ALTER TABLE `actividades_categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividades_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actividades_comentarios`
--

DROP TABLE IF EXISTS `actividades_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividades_comentarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comentario` longtext,
  `usuario_comentario` longtext,
  `id_comentario` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades_comentarios`
--

LOCK TABLES `actividades_comentarios` WRITE;
/*!40000 ALTER TABLE `actividades_comentarios` DISABLE KEYS */;
INSERT INTO `actividades_comentarios` VALUES (13,'Excelente actividad','julio','/actividad-2'),(14,'Mani nada que ver','julio','/actividad-1'),(15,'SIsas estoy de acuerdo','camilo','/actividad-2'),(16,'Erda mani como asi','camilo','/actividad-2'),(17,'Joa que vacile','camilo','/actividad-2'),(18,'Aro asi es','sebastian','/actividad-2'),(19,'xd','sebastian','/actividad-1'),(20,'Muchas cosas','camilo','/actividad-3'),(21,'xd','camilo','/actividad-3'),(22,'jajajaja','camilo','/actividad-2');
/*!40000 ALTER TABLE `actividades_comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actividades_usuarios`
--

DROP TABLE IF EXISTS `actividades_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividades_usuarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(200) NOT NULL,
  `login` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades_usuarios`
--

LOCK TABLES `actividades_usuarios` WRITE;
/*!40000 ALTER TABLE `actividades_usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividades_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actividades_valoraciones`
--

DROP TABLE IF EXISTS `actividades_valoraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividades_valoraciones` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `valoracion` smallint unsigned DEFAULT NULL,
  `id_actividad_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `actividades_valoraci_id_actividad_id_9287a2c1_fk_actividad` (`id_actividad_id`),
  CONSTRAINT `actividades_valoraci_id_actividad_id_9287a2c1_fk_actividad` FOREIGN KEY (`id_actividad_id`) REFERENCES `actividades_actividades` (`id`),
  CONSTRAINT `actividades_valoraciones_chk_1` CHECK ((`valoracion` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades_valoraciones`
--

LOCK TABLES `actividades_valoraciones` WRITE;
/*!40000 ALTER TABLE `actividades_valoraciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividades_valoraciones` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add actividades',1,'add_actividades'),(2,'Can change actividades',1,'change_actividades'),(3,'Can delete actividades',1,'delete_actividades'),(4,'Can view actividades',1,'view_actividades'),(5,'Can add categorias',2,'add_categorias'),(6,'Can change categorias',2,'change_categorias'),(7,'Can delete categorias',2,'delete_categorias'),(8,'Can view categorias',2,'view_categorias'),(9,'Can add usuarios',3,'add_usuarios'),(10,'Can change usuarios',3,'change_usuarios'),(11,'Can delete usuarios',3,'delete_usuarios'),(12,'Can view usuarios',3,'view_usuarios'),(13,'Can add valoraciones',4,'add_valoraciones'),(14,'Can change valoraciones',4,'change_valoraciones'),(15,'Can delete valoraciones',4,'delete_valoraciones'),(16,'Can view valoraciones',4,'view_valoraciones'),(17,'Can add comentarios',5,'add_comentarios'),(18,'Can change comentarios',5,'change_comentarios'),(19,'Can delete comentarios',5,'delete_comentarios'),(20,'Can view comentarios',5,'view_comentarios'),(21,'Can add actividades usuarios',6,'add_actividadesusuarios'),(22,'Can change actividades usuarios',6,'change_actividadesusuarios'),(23,'Can delete actividades usuarios',6,'delete_actividadesusuarios'),(24,'Can view actividades usuarios',6,'view_actividadesusuarios'),(25,'Can add log entry',7,'add_logentry'),(26,'Can change log entry',7,'change_logentry'),(27,'Can delete log entry',7,'delete_logentry'),(28,'Can view log entry',7,'view_logentry'),(29,'Can add permission',8,'add_permission'),(30,'Can change permission',8,'change_permission'),(31,'Can delete permission',8,'delete_permission'),(32,'Can view permission',8,'view_permission'),(33,'Can add group',9,'add_group'),(34,'Can change group',9,'change_group'),(35,'Can delete group',9,'delete_group'),(36,'Can view group',9,'view_group'),(37,'Can add user',10,'add_user'),(38,'Can change user',10,'change_user'),(39,'Can delete user',10,'delete_user'),(40,'Can view user',10,'view_user'),(41,'Can add content type',11,'add_contenttype'),(42,'Can change content type',11,'change_contenttype'),(43,'Can delete content type',11,'delete_contenttype'),(44,'Can view content type',11,'view_contenttype'),(45,'Can add session',12,'add_session'),(46,'Can change session',12,'change_session'),(47,'Can delete session',12,'delete_session'),(48,'Can view session',12,'view_session'),(49,'Can add blacklisted token',13,'add_blacklistedtoken'),(50,'Can change blacklisted token',13,'change_blacklistedtoken'),(51,'Can delete blacklisted token',13,'delete_blacklistedtoken'),(52,'Can view blacklisted token',13,'view_blacklistedtoken'),(53,'Can add outstanding token',14,'add_outstandingtoken'),(54,'Can change outstanding token',14,'change_outstandingtoken'),(55,'Can delete outstanding token',14,'delete_outstandingtoken'),(56,'Can view outstanding token',14,'view_outstandingtoken');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$LrE0SLx0RVSXy4AGkh3EJL$gFxl/4BzDXpTryV3NLVsI306XXVDH3v56+sL+MqCSAQ=','2022-11-10 22:01:43.593651',1,'camilo','','','camilo@camilo.com',1,1,'2022-11-10 22:01:36.343845'),(2,'pbkdf2_sha256$390000$ESSeqNw37uNCwJXTGwCJnj$SNH7cgtv4pNX+4NHZLdRdDk6ptyafS2Yjh96z1tlVIo=',NULL,1,'sebastian','','','',1,1,'2022-11-10 22:02:21.000000'),(3,'pbkdf2_sha256$390000$Lx0j8BiY5grmINj5gSQBA5$JkOv5vXiUtJDxhG3zkkh7gz6UUluykLkMsUEzftVDPE=',NULL,0,'julio','','','',0,1,'2022-11-10 22:02:59.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-11-10 22:02:22.171805','2','sebastian',1,'[{\"added\": {}}]',10,1),(2,'2022-11-10 22:02:31.168029','2','sebastian',2,'[{\"changed\": {\"fields\": [\"Superuser status\"]}}]',10,1),(3,'2022-11-10 22:03:00.009978','3','julio',1,'[{\"added\": {}}]',10,1),(4,'2022-11-10 22:03:05.984930','3','julio',2,'[]',10,1),(5,'2022-11-10 22:03:12.495611','2','sebastian',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',10,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'actividades','actividades'),(6,'actividades','actividadesusuarios'),(2,'actividades','categorias'),(5,'actividades','comentarios'),(3,'actividades','usuarios'),(4,'actividades','valoraciones'),(7,'admin','logentry'),(9,'auth','group'),(8,'auth','permission'),(10,'auth','user'),(11,'contenttypes','contenttype'),(12,'sessions','session'),(13,'token_blacklist','blacklistedtoken'),(14,'token_blacklist','outstandingtoken');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'actividades','0001_initial','2022-11-10 20:58:23.126889'),(2,'contenttypes','0001_initial','2022-11-10 20:58:24.815654'),(3,'auth','0001_initial','2022-11-10 20:58:50.467298'),(4,'admin','0001_initial','2022-11-10 20:58:56.724309'),(5,'admin','0002_logentry_remove_auto_add','2022-11-10 20:58:56.986338'),(6,'admin','0003_logentry_add_action_flag_choices','2022-11-10 20:58:57.201606'),(7,'contenttypes','0002_remove_content_type_name','2022-11-10 20:59:00.491612'),(8,'auth','0002_alter_permission_name_max_length','2022-11-10 20:59:02.887299'),(9,'auth','0003_alter_user_email_max_length','2022-11-10 20:59:03.363811'),(10,'auth','0004_alter_user_username_opts','2022-11-10 20:59:03.514604'),(11,'auth','0005_alter_user_last_login_null','2022-11-10 20:59:05.514989'),(12,'auth','0006_require_contenttypes_0002','2022-11-10 20:59:05.706498'),(13,'auth','0007_alter_validators_add_error_messages','2022-11-10 20:59:05.847994'),(14,'auth','0008_alter_user_username_max_length','2022-11-10 20:59:08.983209'),(15,'auth','0009_alter_user_last_name_max_length','2022-11-10 20:59:12.441374'),(16,'auth','0010_alter_group_name_max_length','2022-11-10 20:59:13.115662'),(17,'auth','0011_update_proxy_permissions','2022-11-10 20:59:13.333581'),(18,'auth','0012_alter_user_first_name_max_length','2022-11-10 20:59:15.890281'),(19,'sessions','0001_initial','2022-11-10 20:59:17.509097'),(20,'token_blacklist','0001_initial','2022-11-10 20:59:25.303386'),(21,'token_blacklist','0002_outstandingtoken_jti_hex','2022-11-10 20:59:26.373016'),(22,'token_blacklist','0003_auto_20171017_2007','2022-11-10 20:59:26.590757'),(23,'token_blacklist','0004_auto_20171017_2013','2022-11-10 20:59:30.410675'),(24,'token_blacklist','0005_remove_outstandingtoken_jti','2022-11-10 20:59:32.582635'),(25,'token_blacklist','0006_auto_20171017_2113','2022-11-10 20:59:33.654664'),(26,'token_blacklist','0007_auto_20171017_2214','2022-11-10 20:59:42.359422'),(27,'token_blacklist','0008_migrate_to_bigautofield','2022-11-10 20:59:55.482551'),(28,'token_blacklist','0010_fix_migrate_to_bigautofield','2022-11-10 20:59:55.666239'),(29,'token_blacklist','0011_linearizes_history','2022-11-10 20:59:55.978971'),(30,'token_blacklist','0012_alter_outstandingtoken_user','2022-11-10 20:59:56.272195'),(31,'actividades','0002_remove_actividades_id_categoria','2022-11-10 21:06:12.635283'),(32,'actividades','0003_comentarios_nombre_comentario','2022-11-14 11:52:15.622847'),(33,'actividades','0004_rename_nombre_comentario_comentarios_usuario_comentario_and_more','2022-11-14 11:55:29.455841'),(34,'actividades','0005_comentarios_id_comentario','2022-11-14 22:57:13.494624');
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
INSERT INTO `django_session` VALUES ('731i0hqfor3ax1nhut2dx9y71mlceti2','.eJxVjMsOwiAQRf-FtSG8R1y67zeQAQapGkhKuzL-uzbpQrf3nHNfLOC21rANWsKc2YVJdvrdIqYHtR3kO7Zb56m3dZkj3xV-0MGnnul5Pdy_g4qjfmsHKmkPDpyMxUWtDBoVi0z5jMp6EIZEzCCyIacteDDJSGULobZI0rH3B8a7N0I:1otFcF:7tg5uaWYcrcZf0IBI7nFKGTgWzwPwQ502EoZuJYqa_Q','2022-11-24 22:01:43.682738');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_blacklistedtoken`
--

DROP TABLE IF EXISTS `token_blacklist_blacklistedtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_id` (`token_id`),
  CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_blacklistedtoken`
--

LOCK TABLES `token_blacklist_blacklistedtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_blacklistedtoken` VALUES (1,'2022-11-10 21:51:34.569758',1),(2,'2022-11-10 22:13:24.691016',2),(3,'2022-11-10 22:33:08.699292',3),(4,'2022-11-13 16:57:46.120717',4),(5,'2022-11-13 17:07:47.165754',5),(6,'2022-11-13 17:23:36.276675',6),(7,'2022-11-13 17:36:46.080540',7),(8,'2022-11-13 17:55:13.958002',8),(9,'2022-11-13 20:06:49.520529',9),(10,'2022-11-13 21:28:27.544294',10),(11,'2022-11-13 21:46:47.240761',11),(12,'2022-11-13 22:39:47.147969',12),(13,'2022-11-14 11:58:34.695549',13),(14,'2022-11-14 12:18:33.876820',14),(15,'2022-11-14 12:29:40.959153',15),(16,'2022-11-14 12:46:46.815692',16),(17,'2022-11-14 12:56:47.805493',17),(18,'2022-11-14 13:21:22.852656',18),(19,'2022-11-14 14:16:33.269866',19),(20,'2022-11-14 14:26:33.665166',20),(21,'2022-11-14 14:42:08.253068',21),(22,'2022-11-14 14:52:08.689376',22),(23,'2022-11-14 15:32:56.225250',23),(24,'2022-11-14 21:01:03.047729',24),(25,'2022-11-14 21:16:29.133590',25),(26,'2022-11-14 21:56:13.498310',26),(27,'2022-11-14 22:06:13.855403',27),(28,'2022-11-14 22:16:14.268327',28),(29,'2022-11-14 22:26:14.644907',29),(30,'2022-11-14 22:36:14.978378',30),(31,'2022-11-14 22:46:16.102135',31),(32,'2022-11-15 01:34:52.197189',35);
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_outstandingtoken`
--

DROP TABLE IF EXISTS `token_blacklist_outstandingtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` int DEFAULT NULL,
  `jti` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  KEY `token_blacklist_outs_user_id_83bc629a_fk_auth_user` (`user_id`),
  CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

LOCK TABLES `token_blacklist_outstandingtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_outstandingtoken` VALUES (1,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MDc3ODc1MiwiaWF0IjoxNjY4MTAwMzUyLCJqdGkiOiIwNjZkMWE2MjM1N2Q0ZmNhYTZkYjIxYjQ2MTFkY2EzMyIsInVzZXJfaWQiOjEsInVzZXJuYW1lIjoiY2FtaWxvIn0.DkBXHw5DW2KbolChg-TdpLhcaexxxKYwr4vPGOgZA68',NULL,'2022-12-11 17:12:32.000000',NULL,'066d1a62357d4fcaa6db21b4611dca33'),(2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MDc5NjIwNCwiaWF0IjoxNjY4MTE3ODA0LCJqdGkiOiJiNGMwMjg3NTllN2E0YTlkYjQ1MjRkOTE5ZTA2ZjRhNCIsInVzZXJfaWQiOjJ9.NTFX8EAGpn-5xADJrmg8MpqVvA7TCBDO3OJhZmphwPg','2022-11-10 22:03:24.205953','2022-12-11 22:03:24.000000',2,'b4c028759e7a4a9db4524d919e06f4a4'),(3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MDc5NzIwOCwiaWF0IjoxNjY4MTE4ODA4LCJqdGkiOiJmNmUwOWRkY2ZkMmM0NzhhYWYxNGYyNmY4OTIxMDNmNiIsInVzZXJfaWQiOjJ9.lQbHtfkM6r9ODUmK4IPpRh9pY0QGiza_cN6N1aX59Eo','2022-11-10 22:20:08.312330','2022-12-11 22:20:08.000000',2,'f6e09ddcfd2c478aaf14f26f892103f6'),(4,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MDc5Nzk4OCwiaWF0IjoxNjY4MTE5NTg4LCJqdGkiOiIxMTE0M2M5ZDBiYjI0YjNlYjE0MWZhNGM2NmU0YmM0MiIsInVzZXJfaWQiOjIsInVzZXJuYW1lIjoic2ViYXN0aWFuIn0.OrKxOm8lX_7ewEJ2hSuPS65CvdjyEtHVHjP19t3LR6A',NULL,'2022-12-11 22:33:08.000000',NULL,'11143c9d0bb24b3eb141fa4c66e4bc42'),(5,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTAzNzA2NSwiaWF0IjoxNjY4MzU4NjY1LCJqdGkiOiJhMzU4MjlhNTA2NTk0Nzg0OTVlM2E1MGZkMjFmYjQyNiIsInVzZXJfaWQiOjIsInVzZXJuYW1lIjoic2ViYXN0aWFuIn0.Q-AL6QQ4uNu_8aN904jz3uRCGgX5R5fxRqz-qyZLpBs',NULL,'2022-12-14 16:57:45.000000',NULL,'a35829a50659478495e3a50fd21fb426'),(6,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTAzNzY2NiwiaWF0IjoxNjY4MzU5MjY2LCJqdGkiOiJkOWNlNDFjZDFmY2Q0NzUyYjk5NmRjYWJhMzdjYTI4ZiIsInVzZXJfaWQiOjIsInVzZXJuYW1lIjoic2ViYXN0aWFuIn0.qpkZcr5T34jKo2VCAg5rDg4OsbULnesrPW3P9kCuGXg',NULL,'2022-12-14 17:07:46.000000',NULL,'d9ce41cd1fcd4752b996dcaba37ca28f'),(7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTAzODYxNiwiaWF0IjoxNjY4MzYwMjE2LCJqdGkiOiIyOTI2MTRmZWFjYmE0YTgwYTBhNTUwODY3MTUyMjQ0NSIsInVzZXJfaWQiOjIsInVzZXJuYW1lIjoic2ViYXN0aWFuIn0.mJfgk8qMKkHkzccWl-vamP6EI1ycQt6FVjETdSAz1xE',NULL,'2022-12-14 17:23:36.000000',NULL,'292614feacba4a80a0a5508671522445'),(8,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTAzOTQwNSwiaWF0IjoxNjY4MzYxMDA1LCJqdGkiOiIxNWFhYzFlOTQzNzg0MTVhOWYyNWM5YzU3MzQwMTA3ZiIsInVzZXJfaWQiOjIsInVzZXJuYW1lIjoic2ViYXN0aWFuIn0.tnBaTaMMMPblaMK74KmTJRg2Mb1zZER0pRPgrthCe5I',NULL,'2022-12-14 17:36:45.000000',NULL,'15aac1e94378415a9f25c9c57340107f'),(9,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTA0MDUxMywiaWF0IjoxNjY4MzYyMTEzLCJqdGkiOiI3MjNhNzM1ZTczYmM0NWNiODczMjUyMDE0NzJhMWViYyIsInVzZXJfaWQiOjIsInVzZXJuYW1lIjoic2ViYXN0aWFuIn0.Kg8d2Np2LFePEVsizBrI4GF6-HDJLV_9-2hqKp-y-QE',NULL,'2022-12-14 17:55:13.000000',NULL,'723a735e73bc45cb87325201472a1ebc'),(10,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTA0ODQwOSwiaWF0IjoxNjY4MzcwMDA5LCJqdGkiOiIzMzgwNThiNTVmMTM0OTY0OTQzNDdlNzQ3YzAwZDAxZCIsInVzZXJfaWQiOjIsInVzZXJuYW1lIjoic2ViYXN0aWFuIn0.qlK8MJh4mV9VPItScE13ZXvdqpw2t2L81DhiMuzxMmU',NULL,'2022-12-14 20:06:49.000000',NULL,'338058b55f13496494347e747c00d01d'),(11,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTA1MzMwNywiaWF0IjoxNjY4Mzc0OTA3LCJqdGkiOiIzZmVjYTgxY2FlOWQ0NzdlOWM4Nzg5YmJkYTg2NTU0NiIsInVzZXJfaWQiOjIsInVzZXJuYW1lIjoic2ViYXN0aWFuIn0.LMplfcn0nXFROfCSHQ-Z_7gwPvwoG5mXP2KnC9tB7iQ',NULL,'2022-12-14 21:28:27.000000',NULL,'3feca81cae9d477e9c8789bbda865546'),(12,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTA1NDQwNywiaWF0IjoxNjY4Mzc2MDA3LCJqdGkiOiI5MWM2MGNmODNjODc0Yjg3OTNhNWIwM2RmYzhhY2Q5NiIsInVzZXJfaWQiOjIsInVzZXJuYW1lIjoic2ViYXN0aWFuIn0.l1MCJCBZp2QPjJVr9HUxthrfDFacp4cGEYVWtrE1dGM',NULL,'2022-12-14 21:46:47.000000',NULL,'91c60cf83c874b8793a5b03dfc8acd96'),(13,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTA1ODMzMywiaWF0IjoxNjY4Mzc5OTMzLCJqdGkiOiIwZjM1Yjc3M2EzMGI0NjA2ODhhMGJiODlhOGE3N2Y5MiIsInVzZXJfaWQiOjF9.X0SvTXyk7Ps7mISS2EezPdPoGCKVw-trSoVHtCBtd3o','2022-11-13 22:52:13.190238','2022-12-14 22:52:13.000000',1,'0f35b773a30b460688a0bb89a8a77f92'),(14,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTEwNTUxNCwiaWF0IjoxNjY4NDI3MTE0LCJqdGkiOiI5NzU4ZDRlNGRhMDg0NGU5OTAyMzU2NTg1Mzg1Yzk5YyIsInVzZXJfaWQiOjEsInVzZXJuYW1lIjoiY2FtaWxvIn0.qeRD7FGj7PRydN_v01RF6f4HaI6_huVlIH7N4nROpeI',NULL,'2022-12-15 11:58:34.000000',NULL,'9758d4e4da0844e9902356585385c99c'),(15,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTEwNjcxMywiaWF0IjoxNjY4NDI4MzEzLCJqdGkiOiJkMTZlY2ViODIxOTA0OWYzYjgwYTcxZDE2NDI3YWVmOSIsInVzZXJfaWQiOjEsInVzZXJuYW1lIjoiY2FtaWxvIn0.DFFP_zlOFY4euCTSl2M1D4iZowsLhKKu92oGk7PvNZg',NULL,'2022-12-15 12:18:33.000000',NULL,'d16eceb8219049f3b80a71d16427aef9'),(16,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTEwNzM4MCwiaWF0IjoxNjY4NDI4OTgwLCJqdGkiOiIzMDc2OTlhNTIxMzI0OTBmYTQ2YThiMzIwOGM1MmE0YyIsInVzZXJfaWQiOjEsInVzZXJuYW1lIjoiY2FtaWxvIn0.PhDgFIVQJgnz6AxEe-jfKfxA9KRWfZ-i4FcLP6G8ibE',NULL,'2022-12-15 12:29:40.000000',NULL,'307699a52132490fa46a8b3208c52a4c'),(17,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTEwODQwNiwiaWF0IjoxNjY4NDMwMDA2LCJqdGkiOiI4M2M3MjM5MjNkN2I0M2NiOGY3OTc4NTI3MmNkZmM5YSIsInVzZXJfaWQiOjEsInVzZXJuYW1lIjoiY2FtaWxvIn0.z8ZZWCmxT6gToFzwWU7oKJKMnfXZetRiKzpVD4B7LeE',NULL,'2022-12-15 12:46:46.000000',NULL,'83c723923d7b43cb8f79785272cdfc9a'),(18,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTEwOTAwNywiaWF0IjoxNjY4NDMwNjA3LCJqdGkiOiJiZDE5MzllMzExMTE0NzY3YmFmMGZmMzU5NWQ5N2EzNCIsInVzZXJfaWQiOjEsInVzZXJuYW1lIjoiY2FtaWxvIn0.4tf7YY4nFZYVrcw3oXfLRyjal4Vz-XhtlEnBHMaZEO0',NULL,'2022-12-15 12:56:47.000000',NULL,'bd1939e311114767baf0ff3595d97a34'),(19,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTExMDQ4MiwiaWF0IjoxNjY4NDMyMDgyLCJqdGkiOiIyYzczMTFhM2UyZDg0Nzg0ODViYTU1MWI0MGZlMWRiNyIsInVzZXJfaWQiOjEsInVzZXJuYW1lIjoiY2FtaWxvIn0.aRfcJH483e6vAV2yEkZZlixR6trkASB6gFFOXU6umoc',NULL,'2022-12-15 13:21:22.000000',NULL,'2c7311a3e2d8478485ba551b40fe1db7'),(20,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTExMzc5MywiaWF0IjoxNjY4NDM1MzkzLCJqdGkiOiJmZTM4OTE0YjRkN2U0ZTkyOGEwYTJjNzZmY2IxM2M3ZiIsInVzZXJfaWQiOjEsInVzZXJuYW1lIjoiY2FtaWxvIn0.Lu2IFmGAhp1KGQNCwZ2-PR4HlDr8I8JDb9DCgsdzPCg',NULL,'2022-12-15 14:16:33.000000',NULL,'fe38914b4d7e4e928a0a2c76fcb13c7f'),(21,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTExNDM5MywiaWF0IjoxNjY4NDM1OTkzLCJqdGkiOiJkOTE4NjRhOTc2Yjk0ZDZkODFjM2ZiOTE3YWIyN2UxNCIsInVzZXJfaWQiOjEsInVzZXJuYW1lIjoiY2FtaWxvIn0.b-r-ZhSpnemS6pN3q8-u5fLHoq6mj5xt9vsrHvfM6QE',NULL,'2022-12-15 14:26:33.000000',NULL,'d91864a976b94d6d81c3fb917ab27e14'),(22,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTExNTMyOCwiaWF0IjoxNjY4NDM2OTI4LCJqdGkiOiI5YjlmNzdhNzY0NGQ0NDJhOGY2NmEwYTQzNWQ4ZGEwOCIsInVzZXJfaWQiOjEsInVzZXJuYW1lIjoiY2FtaWxvIn0.dCr0doQDwKCPG4HJR2bpi8ExpAuPjOZCAofnNcdSjt4',NULL,'2022-12-15 14:42:08.000000',NULL,'9b9f77a7644d442a8f66a0a435d8da08'),(23,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTExNTkyOCwiaWF0IjoxNjY4NDM3NTI4LCJqdGkiOiJlZWJkYWIzOThmZjc0Yjg4YjBhNmJlNjI3OTVlOTY4ZiIsInVzZXJfaWQiOjEsInVzZXJuYW1lIjoiY2FtaWxvIn0.lsCrlY2At8yjECsW5PHebkfHxjxhEzWfcQmv9UY1EaE',NULL,'2022-12-15 14:52:08.000000',NULL,'eebdab398ff74b88b0a6be62795e968f'),(24,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTEzNzA3OSwiaWF0IjoxNjY4NDU4Njc5LCJqdGkiOiJkZDllZDYyZDQ3M2U0ODU2YjU3MTRiMzgzN2E0ZGMxZSIsInVzZXJfaWQiOjN9.kjYvnxPMnk0ZtE9zl1NJ2Adaf8FkuGhj86puTBCc9iY','2022-11-14 20:44:39.965726','2022-12-15 20:44:39.000000',3,'dd9ed62d473e4856b5714b3837a4dc1e'),(25,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTEzODA2MiwiaWF0IjoxNjY4NDU5NjYyLCJqdGkiOiI3Y2VmNWVhNzI0ZDE0MmE4ODM0YWFjZGQ2ODk5OGJmMSIsInVzZXJfaWQiOjMsInVzZXJuYW1lIjoianVsaW8ifQ.-WhSB_s5zr1d1hrQunqnx4HR3tcOjjlJ57aXYo3D46o',NULL,'2022-12-15 21:01:02.000000',NULL,'7cef5ea724d142a8834aacdd68998bf1'),(26,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTEzODk4OSwiaWF0IjoxNjY4NDYwNTg5LCJqdGkiOiIwNTU0YjA2MDRiMDI0MTkwYjE4ODZhMDlkMDBjOWIzZCIsInVzZXJfaWQiOjMsInVzZXJuYW1lIjoianVsaW8ifQ.9F2-itXVa6M93w7xj3N4dIKtmgilzSjABZs6iunRvTo',NULL,'2022-12-15 21:16:29.000000',NULL,'0554b0604b024190b1886a09d00c9b3d'),(27,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTE0MTM3MywiaWF0IjoxNjY4NDYyOTczLCJqdGkiOiIzOGRhMTkwMmY2NWY0NjgzOTQ4YjVmMjY5NWRkNWM5YSIsInVzZXJfaWQiOjMsInVzZXJuYW1lIjoianVsaW8ifQ.1I_Zl6Bxn4UP65vmc9rh1jZ-c3FtWSn6n79rdevQlq0',NULL,'2022-12-15 21:56:13.000000',NULL,'38da1902f65f4683948b5f2695dd5c9a'),(28,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTE0MTk3MywiaWF0IjoxNjY4NDYzNTczLCJqdGkiOiJiMzJiOTUxMjVjMmM0ODk3YTY2ZmNlNDExNmU1MzMwMCIsInVzZXJfaWQiOjMsInVzZXJuYW1lIjoianVsaW8ifQ.gyASwggfQyVpMnaVPJClrt7z2vzBpmNC_z5rxd6hvPE',NULL,'2022-12-15 22:06:13.000000',NULL,'b32b95125c2c4897a66fce4116e53300'),(29,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTE0MjU3NCwiaWF0IjoxNjY4NDY0MTc0LCJqdGkiOiJhYmNhZTAyZDcyNmE0NTEwODk3MzAxY2Q4MDQwZTgzMSIsInVzZXJfaWQiOjMsInVzZXJuYW1lIjoianVsaW8ifQ.xcYRx7fBCNsLvMxDnpd5qEYFuIccKilWLITdNI0t3KU',NULL,'2022-12-15 22:16:14.000000',NULL,'abcae02d726a4510897301cd8040e831'),(30,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTE0MzE3NCwiaWF0IjoxNjY4NDY0Nzc0LCJqdGkiOiJjMjJhOGMyOTI1MmQ0ZTI3OWI3ZTk4ZmNjMTIwOWRlNSIsInVzZXJfaWQiOjMsInVzZXJuYW1lIjoianVsaW8ifQ.LEWIRnvWc4zLU-WVtvwhd3_-BrKRqfBVSKKk_ufp0m8',NULL,'2022-12-15 22:26:14.000000',NULL,'c22a8c29252d4e279b7e98fcc1209de5'),(31,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTE0Mzc3NCwiaWF0IjoxNjY4NDY1Mzc0LCJqdGkiOiJiZTk5MDY0Nzc0OTY0NTNiYmIxNDk0YzI2MDAwOTEzNiIsInVzZXJfaWQiOjMsInVzZXJuYW1lIjoianVsaW8ifQ.vke6fLL7EiqOTATG3f90sXdTH7HX0pjVAfw71k6oQEU',NULL,'2022-12-15 22:36:14.000000',NULL,'be9906477496453bbb1494c260009136'),(32,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTE0NTYwMSwiaWF0IjoxNjY4NDY3MjAxLCJqdGkiOiJiMjU5Y2E2MWE4ZWU0MmY2OWY2MmI4ODEwYzUyNzc4NiIsInVzZXJfaWQiOjF9.H9Z3EGKeLQD97aXGcmzC5bqsYiUkvX_RUV10SITHz_w','2022-11-14 23:06:41.190726','2022-12-15 23:06:41.000000',1,'b259ca61a8ee42f69f62b8810c527786'),(33,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTE0NTY4OSwiaWF0IjoxNjY4NDY3Mjg5LCJqdGkiOiIzNGJhY2ZlYWM1OGI0NWE4ODIwNTU3NWRiMzllY2Y2ZCIsInVzZXJfaWQiOjJ9.w5LPxomdsxh1VocN9vnmTv6UwueaIUvGtGc4HoRn8LY','2022-11-14 23:08:09.797534','2022-12-15 23:08:09.000000',2,'34bacfeac58b45a88205575db39ecf6d'),(34,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTE1MjI4NCwiaWF0IjoxNjY4NDczODg0LCJqdGkiOiIxZTZiNjM0MzFlMjk0NjBlYjU5MDMwMGViYWQwODY3OSIsInVzZXJfaWQiOjF9.W8KvxuH54vXrdHM56lMfTjVwzZppNa4BNiNbXtdEBKA','2022-11-15 00:58:04.382668','2022-12-16 00:58:04.000000',1,'1e6b63431e29460eb590300ebad08679'),(35,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTE1Mzc2MiwiaWF0IjoxNjY4NDc1MzYyLCJqdGkiOiI2OTA0YjgwYTFkOGE0NmY4ODc2M2I4MjIyNDk2NzhmMiIsInVzZXJfaWQiOjF9.9odxKJnM6wtbIegjrAkcbNGEqG0X-JI0AaO00FiJhhY','2022-11-15 01:22:42.686780','2022-12-16 01:22:42.000000',1,'6904b80a1d8a46f88763b822249678f2');
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-14 20:35:40
