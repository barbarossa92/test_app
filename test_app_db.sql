-- MySQL dump 10.13  Distrib 5.6.16, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: test_app_db
-- ------------------------------------------------------
-- Server version	5.6.16-1~exp1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add group',4,'add_group'),(11,'Can change group',4,'change_group'),(12,'Can delete group',4,'delete_group'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add materials',7,'add_materials'),(20,'Can change materials',7,'change_materials'),(21,'Can delete materials',7,'delete_materials'),(22,'Can add comments',8,'add_comments'),(23,'Can change comments',8,'change_comments'),(24,'Can delete comments',8,'delete_comments');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$Tn23qIVxIooY$OQnU84MfCm6PtPFxYqm9LZHiRLj8OYsfeBIIQICBPvU=','2017-04-03 18:11:40.353848',1,'admin','','','',1,1,'2017-04-03 15:21:12.716315');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-04-03 15:43:37.712571','2','2',1,'[{\"added\": {}}]',7,1),(2,'2017-04-03 16:30:03.003959','2','2',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',7,1),(3,'2017-04-03 17:14:58.531258','2','2',3,'',7,1),(4,'2017-04-03 17:15:30.864476','3','3',1,'[{\"added\": {}}]',7,1),(5,'2017-04-03 17:17:49.639791','3','3',3,'',7,1),(6,'2017-04-03 17:18:32.670316','4','4',1,'[{\"added\": {}}]',7,1),(7,'2017-04-03 17:21:50.156885','5','5',1,'[{\"added\": {}}]',7,1),(8,'2017-04-03 18:11:51.190702','4','4',2,'[{\"changed\": {\"fields\": [\"published\"]}}]',7,1),(9,'2017-04-03 18:12:19.960319','6','6',1,'[{\"added\": {}}]',7,1),(10,'2017-04-03 18:57:37.881271','6','6',2,'[{\"added\": {\"object\": \"Comments object\", \"name\": \"comments\"}}]',7,1),(11,'2017-04-04 06:13:34.695852','6','6',2,'[]',7,1),(12,'2017-04-04 06:33:55.781521','6','6',2,'[{\"added\": {\"object\": \"Comments object\", \"name\": \"comments\"}}]',7,1),(13,'2017-04-04 08:04:58.270501','6','6',2,'[]',7,1),(14,'2017-04-04 09:18:50.088877','5','5',2,'[{\"added\": {\"object\": \"Comments object\", \"name\": \"comments\"}}]',7,1),(15,'2017-04-04 12:20:20.833582','4','4',3,'',7,1),(16,'2017-04-04 14:32:41.558721','5','5',2,'[{\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}]',7,1),(17,'2017-04-04 14:43:53.121836','5','5',2,'[{\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}]',7,1),(18,'2017-04-04 15:14:03.805584','5','5',2,'[{\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}]',7,1),(19,'2017-04-04 15:18:09.091400','6','6',2,'[{\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}]',7,1),(20,'2017-04-04 18:14:44.419936','6','6',2,'[{\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}]',7,1),(21,'2017-04-04 18:15:15.952764','5','5',2,'[{\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}, {\"deleted\": {\"object\": \"Comments object\", \"name\": \"comments\"}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(2,'auth','permission'),(3,'auth','user'),(5,'contenttypes','contenttype'),(8,'main','comments'),(7,'main','materials'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-04-03 14:24:55.858956'),(2,'auth','0001_initial','2017-04-03 14:25:18.135106'),(3,'admin','0001_initial','2017-04-03 14:25:21.129843'),(4,'admin','0002_logentry_remove_auto_add','2017-04-03 14:25:21.297318'),(5,'contenttypes','0002_remove_content_type_name','2017-04-03 14:25:23.241787'),(6,'auth','0002_alter_permission_name_max_length','2017-04-03 14:25:24.285305'),(7,'auth','0003_alter_user_email_max_length','2017-04-03 14:25:25.316765'),(8,'auth','0004_alter_user_username_opts','2017-04-03 14:25:25.381601'),(9,'auth','0005_alter_user_last_login_null','2017-04-03 14:25:26.372752'),(10,'auth','0006_require_contenttypes_0002','2017-04-03 14:25:26.439135'),(11,'auth','0007_alter_validators_add_error_messages','2017-04-03 14:25:26.511417'),(12,'auth','0008_alter_user_username_max_length','2017-04-03 14:25:27.548529'),(13,'sessions','0001_initial','2017-04-03 14:25:28.393657'),(14,'main','0001_initial','2017-04-03 15:29:58.714408'),(15,'main','0002_comments','2017-04-03 16:11:12.338275'),(16,'main','0003_materials_published','2017-04-03 16:25:19.745610');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('d2wjpmoqoxl3fe8jl0g4qltvvukuwx4l','MjA5MWE5Mjc3ZGFkMGRjYTg3NGRlMmI0ZjFjZDcxOGVlNjhhNDU0YTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5NzQ3YmFiYjE5OWZiMWYxMjg1YWE4MjA0ZjkxYmJjYjhkMmRhMjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-17 15:21:32.912194'),('t4csaqdppr92tmvyewdgj5r2b6nohl2m','MjA5MWE5Mjc3ZGFkMGRjYTg3NGRlMmI0ZjFjZDcxOGVlNjhhNDU0YTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5NzQ3YmFiYjE5OWZiMWYxMjg1YWE4MjA0ZjkxYmJjYjhkMmRhMjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-17 18:11:40.487998');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_comments`
--

DROP TABLE IF EXISTS `main_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `material_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_comments_material_id_920feb49_fk_main_materials_id` (`material_id`),
  CONSTRAINT `main_comments_material_id_920feb49_fk_main_materials_id` FOREIGN KEY (`material_id`) REFERENCES `main_materials` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_comments`
--

LOCK TABLES `main_comments` WRITE;
/*!40000 ALTER TABLE `main_comments` DISABLE KEYS */;
INSERT INTO `main_comments` VALUES (80,'tttt','2017-04-04 15:32:22.120369',6),(81,'456','2017-04-04 15:38:02.787193',6),(104,'dsfdsf','2017-04-04 18:15:42.656237',5),(105,'asfsdfsdf','2017-04-04 18:16:00.884491',6),(106,'Hello!','2017-04-04 19:34:25.158182',6);
/*!40000 ALTER TABLE `main_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_materials`
--

DROP TABLE IF EXISTS `main_materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `slug` varchar(50) NOT NULL,
  `date` datetime(6) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_materials`
--

LOCK TABLES `main_materials` WRITE;
/*!40000 ALTER TABLE `main_materials` DISABLE KEYS */;
INSERT INTO `main_materials` VALUES (5,'Hello World!','<p>Lorem ipsum/1&nbsp;Lorem ipsum/1&nbsp;Lorem ipsum/1&nbsp;Lorem ipsum/1&nbsp;Lorem ipsum/1&nbsp;Lorem ipsum/1&nbsp;Lorem ipsum/1&nbsp;Lorem ipsum/1&nbsp;Lorem ipsum/1&nbsp;Lorem ipsum/1&nbsp;Lorem ipsum/1&nbsp;Lorem ipsum/1&nbsp;Lorem ipsum/1&nbsp;Lorem ipsum/1&nbsp;Lorem ipsum/1&nbsp;</p>','hello-world1','2017-04-03 17:21:50.154881',1),(6,'Samsung Galaxy S4 Mini La Fleur 8gb','<p>Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;Lorem Ipsum!&nbsp;</p>','samsung-galaxy-s4-mini-la-fleur-8gb','2017-04-03 18:12:19.957605',1);
/*!40000 ALTER TABLE `main_materials` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-05  1:42:02
