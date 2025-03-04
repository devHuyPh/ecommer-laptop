-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: nest
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'FMpNBnNOOLbLZnSlY29K4XTsYA4XctiQ',1,'2024-09-29 08:38:17','2024-09-29 08:38:17','2024-09-29 08:38:17');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Everyday Fresh','2029-09-29 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2024-09-29 08:38:21','2024-09-29 08:38:21',1,NULL,NULL,NULL,NULL),(2,'Make your Breakfast','2029-09-29 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2024-09-29 08:38:21','2024-09-29 08:38:21',1,NULL,NULL,NULL,NULL),(3,'The best Organic','2029-09-29 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2024-09-29 08:38:21','2024-09-29 08:38:21',1,NULL,NULL,NULL,NULL),(4,'Bring nature into your home','2029-09-29 00:00:00','not_set','IZ6WU8KUALYG','promotion/4.png','/products',0,4,'published','2024-09-29 08:38:21','2024-09-29 08:38:21',1,NULL,NULL,NULL,NULL),(5,'Delivered to your home','2029-09-29 00:00:00','not_set','IZ6WU8KUALYH','promotion/5.png','/products',0,5,'published','2024-09-29 08:38:21','2024-09-29 08:38:21',1,NULL,NULL,NULL,NULL),(6,'Save 17% on Oganic Juice','2029-09-29 00:00:00','not_set','IZ6WU8KUALYI','promotion/6.png','/products',0,6,'published','2024-09-29 08:38:21','2024-09-29 08:38:21',1,NULL,NULL,NULL,NULL),(7,'Everyday Fresh & Clean with Our Products','2029-09-29 00:00:00','not_set','IZ6WU8KUALYJ','promotion/7.png','/products',0,7,'published','2024-09-29 08:38:21','2024-09-29 08:38:21',1,NULL,NULL,NULL,NULL),(8,'The best Organic Products Online','2029-09-29 00:00:00','not_set','IZ6WU8KUALYK','promotion/8.png','/products',0,8,'published','2024-09-29 08:38:21','2024-09-29 08:38:21',1,NULL,NULL,NULL,NULL),(9,'Everyday Fresh with Our Products','2029-09-29 00:00:00','not_set','IZ6WU8KUALYL','promotion/9.png',NULL,0,9,'published','2024-09-29 08:38:21','2024-09-29 08:38:21',1,NULL,NULL,NULL,NULL),(10,'100% guaranteed all Fresh items','2029-09-29 00:00:00','not_set','IZ6WU8KUALYM','promotion/10.png',NULL,0,10,'published','2024-09-29 08:38:21','2024-09-29 08:38:21',1,NULL,NULL,NULL,NULL),(11,'Special grocery sale off this month','2029-09-29 00:00:00','not_set','IZ6WU8KUALYN','promotion/11.png',NULL,0,11,'published','2024-09-29 08:38:21','2024-09-29 08:38:21',1,NULL,NULL,NULL,NULL),(12,'Enjoy 15% OFF for all vegetable and fruit','2029-09-29 00:00:00','not_set','IZ6WU8KUALYO','promotion/12.png',NULL,0,12,'published','2024-09-29 08:38:21','2024-09-29 08:38:21',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Mollitia illo aliquid vel architecto. Iste soluta magnam eaque corporis. Velit molestias quia et occaecati. Necessitatibus ipsam blanditiis animi inventore quia culpa.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2024-09-29 08:38:16','2024-09-29 08:38:16'),(2,'Fashion',0,'Voluptas aspernatur quas voluptas. Odit eos ut aliquid sit. Beatae assumenda harum sed voluptas non adipisci. Nesciunt iste alias aliquam laboriosam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-29 08:38:16','2024-09-29 08:38:16'),(3,'Electronic',0,'Quia perspiciatis eos molestiae velit voluptatibus nam qui. Voluptatum quia consectetur ipsum incidunt unde esse. Quos aut ea saepe tempore voluptate. Aut porro voluptate nihil qui doloremque.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-29 08:38:16','2024-09-29 08:38:16'),(4,'Commercial',0,'Excepturi molestiae ut itaque minima. Quo eos placeat voluptates et corrupti qui voluptatem. Id illo enim ratione cumque saepe repellat voluptatum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-29 08:38:16','2024-09-29 08:38:16');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,NULL,'published',0,1,'2024-09-29 08:38:01','2024-09-29 08:38:01'),(2,'Hiching',NULL,NULL,NULL,'published',1,1,'2024-09-29 08:38:01','2024-09-29 08:38:01'),(3,'Kepslo',NULL,NULL,NULL,'published',2,1,'2024-09-29 08:38:01','2024-09-29 08:38:01'),(4,'Groneba',NULL,NULL,NULL,'published',3,1,'2024-09-29 08:38:01','2024-09-29 08:38:01'),(5,'Babian',NULL,NULL,NULL,'published',4,1,'2024-09-29 08:38:01','2024-09-29 08:38:01'),(6,'Valorant',NULL,NULL,NULL,'published',5,1,'2024-09-29 08:38:01','2024-09-29 08:38:01'),(7,'Pure',NULL,NULL,NULL,'published',6,1,'2024-09-29 08:38:01','2024-09-29 08:38:01');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-09-29 08:38:01','2024-09-29 08:38:01'),(2,'EUR','€',0,2,1,0,0.84,'2024-09-29 08:38:01','2024-09-29 08:38:01'),(3,'VND','₫',0,0,2,0,23203,'2024-09-29 08:38:01','2024-09-29 08:38:01'),(4,'NGN','₦',1,2,2,0,895.52,'2024-09-29 08:38:01','2024-09-29 08:38:01');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Jodie Wolff','customer@botble.com','+12319643335','KR','Massachusetts','O\'Connellton','686 Marlin Springs',1,1,'2024-09-29 08:38:10','2024-09-29 08:38:10','02434'),(2,'Jodie Wolff','customer@botble.com','+14636431657','RS','Hawaii','New Dexterfort','3263 Homenick Hollow',1,0,'2024-09-29 08:38:10','2024-09-29 08:38:10','85244-6032'),(3,'Shana Boyle','vendor@botble.com','+15617721513','KZ','Alaska','Jaquelineberg','3832 Rogahn Valleys',2,1,'2024-09-29 08:38:10','2024-09-29 08:38:10','19281-2837'),(4,'Shana Boyle','vendor@botble.com','+17407974642','KY','Arizona','Altenwerthberg','6664 Claud Field Suite 427',2,0,'2024-09-29 08:38:10','2024-09-29 08:38:10','57917-4067'),(5,'Sofia Lowe','payton.erdman@example.com','+19257467246','MO','North Carolina','South Gunnar','370 Davion Ramp Suite 563',3,1,'2024-09-29 08:38:11','2024-09-29 08:38:11','07646-7362'),(6,'Mara Wisoky','minnie84@example.net','+17575445051','BW','District of Columbia','West Darby','382 Cruickshank Forks',4,1,'2024-09-29 08:38:11','2024-09-29 08:38:11','53139-7383'),(7,'Dr. Stan Goldner','iullrich@example.org','+12245412389','BW','Hawaii','North Rivershire','9567 Filomena Route',5,1,'2024-09-29 08:38:11','2024-09-29 08:38:11','81058-1309'),(8,'Ottilie Murphy','roob.tiara@example.org','+12568529769','EH','Vermont','Robelmouth','88833 Isabelle Summit Apt. 282',6,1,'2024-09-29 08:38:11','2024-09-29 08:38:11','83528-8131'),(9,'Jeffrey Fadel V','nwilliamson@example.net','+15868585807','CV','South Carolina','Hintzmouth','6651 Blaze Cliffs Apt. 773',7,1,'2024-09-29 08:38:12','2024-09-29 08:38:12','88946'),(10,'Maci Schaden','deven33@example.org','+16285443114','SD','New Hampshire','North Laviniatown','967 Elinor Causeway',8,1,'2024-09-29 08:38:12','2024-09-29 08:38:12','01315'),(11,'Ariel Weber','aaron.turner@example.com','+19716582717','CL','Wisconsin','Lennieburgh','85829 Zulauf Land Suite 444',9,1,'2024-09-29 08:38:12','2024-09-29 08:38:12','23788-4246'),(12,'Ms. Kariane Cassin','mayer.colton@example.com','+19187781687','GB','New Mexico','Zackerystad','43401 Hope Station',10,1,'2024-09-29 08:38:12','2024-09-29 08:38:12','50295-8199');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `block_reason` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `stripe_account_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_account_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Jodie Wolff','customer@botble.com','$2y$12$WB7FBv41WW5hyQ2Cv/QJDuqtOIzCYAimP0cydl6jJ/PzIgH9sfF6O','customers/5.jpg','1993-08-31','+15808884547',NULL,'2024-09-29 08:38:10','2024-09-29 08:38:10','2024-09-29 15:38:10',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(2,'Shana Boyle','vendor@botble.com','$2y$12$llMBSs9kzOoIt5iOCW/sGur5YFnthVxodWYBoxOIYz6YEWEJTVe5W','customers/5.jpg','1986-09-06','+12017107428',NULL,'2024-09-29 08:38:10','2024-09-29 08:38:22','2024-09-29 15:38:10',NULL,'activated',NULL,NULL,1,'2024-09-29 15:38:22',NULL,0),(3,'Sofia Lowe','payton.erdman@example.com','$2y$12$usPTBVE.7JtXGW4lCPXRJOQB3VXFtLOi1/8W0np1wutedprcxmvsu','customers/1.jpg','2001-09-03','+12513836936',NULL,'2024-09-29 08:38:11','2024-09-29 08:38:22','2024-09-29 15:38:11',NULL,'activated',NULL,NULL,1,'2024-09-29 15:38:22',NULL,0),(4,'Mara Wisoky','minnie84@example.net','$2y$12$IC6RJo1c2uu/H8kcwrz4GOObN15Nps36geT00VA1CUj/g04XJUtnO','customers/2.jpg','2003-09-24','+19498358680',NULL,'2024-09-29 08:38:11','2024-09-29 08:38:11','2024-09-29 15:38:11',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(5,'Dr. Stan Goldner','iullrich@example.org','$2y$12$uKJdd3dbjX6WBoIhZT1vW.1i/NB355hluBAhKsjv2r2qTkt9vK7Fu','customers/3.jpg','1988-09-26','+17479760127',NULL,'2024-09-29 08:38:11','2024-09-29 08:38:22','2024-09-29 15:38:11',NULL,'activated',NULL,NULL,1,'2024-09-29 15:38:22',NULL,0),(6,'Ottilie Murphy','roob.tiara@example.org','$2y$12$GqWDG7X9dgB0VxJIu1iQTuVLKgGED3gN20cqhe87k7b/eOlkffnLa','customers/4.jpg','1983-09-21','+16285362982',NULL,'2024-09-29 08:38:11','2024-09-29 08:38:23','2024-09-29 15:38:11',NULL,'activated',NULL,NULL,1,'2024-09-29 15:38:23',NULL,0),(7,'Jeffrey Fadel V','nwilliamson@example.net','$2y$12$.fEWhN02fo9jqXM25XBB4eORs77eRdzMwCi.6Z2LAF5hP.Z5M2BLu','customers/5.jpg','1983-09-19','+13516057554',NULL,'2024-09-29 08:38:12','2024-09-29 08:38:23','2024-09-29 15:38:12',NULL,'activated',NULL,NULL,1,'2024-09-29 15:38:23',NULL,0),(8,'Maci Schaden','deven33@example.org','$2y$12$E8oxxFKmyaazftZmyy7eVeihlh1AplTdcuPbZwFtrfK6dwGAiCvdC','customers/6.jpg','2004-09-17','+16264166356',NULL,'2024-09-29 08:38:12','2024-09-29 08:38:12','2024-09-29 15:38:12',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(9,'Ariel Weber','aaron.turner@example.com','$2y$12$2z5nRFJ7rfg9w5/O92kxuejNkmE1DO9LzlpA/B61dYvd85ZenhWTy','customers/7.jpg','1994-09-09','+15735313152',NULL,'2024-09-29 08:38:12','2024-09-29 08:38:23','2024-09-29 15:38:12',NULL,'activated',NULL,NULL,1,'2024-09-29 15:38:23',NULL,0),(10,'Ms. Kariane Cassin','mayer.colton@example.com','$2y$12$J5ck1DwV8BgB9KL4ZV/Rc.0zi.EDsqpWJ2zrBNF.jOkE.joKwBHf.','customers/8.jpg','1975-09-02','+19898250124',NULL,'2024-09-29 08:38:12','2024-09-29 08:38:12','2024-09-29 15:38:12',NULL,'activated',NULL,NULL,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,7,9.72,17,2),(2,20,603.6336,16,2),(3,21,452.92,12,4),(4,22,942.6,11,4),(5,22,1335.35,11,4),(5,1,742.52,13,5),(5,2,1835.13,14,1),(5,3,638.08,12,3),(5,4,87.912,10,4),(5,5,251.2,7,5);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day','2024-10-27 00:00:00','published','2024-09-29 08:38:13','2024-09-29 08:38:13'),(2,'Winter Sale','2024-10-17 00:00:00','published','2024-09-29 08:38:13','2024-09-29 08:38:13'),(3,'Gadgets &amp; Accessories','2024-11-03 00:00:00','published','2024-09-29 08:38:13','2024-09-29 08:38:13'),(4,'Hot products','2024-11-10 00:00:00','published','2024-09-29 08:38:13','2024-09-29 08:38:13'),(5,'Best sale items','2024-10-15 00:00:00','published','2024-09-29 08:38:13','2024-09-29 08:38:13');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-09-29 08:38:21','2024-09-29 08:38:21'),(2,1,'2 Year',10,9999,0,'2024-09-29 08:38:21','2024-09-29 08:38:21'),(3,1,'3 Year',20,9999,0,'2024-09-29 08:38:21','2024-09-29 08:38:21'),(4,2,'4GB',0,9999,0,'2024-09-29 08:38:21','2024-09-29 08:38:21'),(5,2,'8GB',10,9999,0,'2024-09-29 08:38:21','2024-09-29 08:38:21'),(6,2,'16GB',20,9999,0,'2024-09-29 08:38:21','2024-09-29 08:38:21'),(7,3,'Core i5',0,9999,0,'2024-09-29 08:38:21','2024-09-29 08:38:21'),(8,3,'Core i7',10,9999,0,'2024-09-29 08:38:21','2024-09-29 08:38:21'),(9,3,'Core i9',20,9999,0,'2024-09-29 08:38:21','2024-09-29 08:38:21'),(10,4,'128GB',0,9999,0,'2024-09-29 08:38:21','2024-09-29 08:38:21'),(11,4,'256GB',10,9999,0,'2024-09-29 08:38:21','2024-09-29 08:38:21'),(12,4,'512GB',20,9999,0,'2024-09-29 08:38:21','2024-09-29 08:38:21');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-09-29 08:38:21','2024-09-29 08:38:21'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-09-29 08:38:21','2024-09-29 08:38:21'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-09-29 08:38:21','2024-09-29 08:38:21'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-09-29 08:38:21','2024-09-29 08:38:21');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Weight','weight','text',1,1,1,'published',0,'2024-09-29 08:38:03','2024-09-29 08:38:03',0),(2,'Boxes','boxes','text',1,1,1,'published',1,'2024-09-29 08:38:03','2024-09-29 08:38:03',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'1KG','1kg',NULL,NULL,1,1,'2024-09-29 08:38:03','2024-09-29 08:38:03'),(2,1,'2KG','2kg',NULL,NULL,0,2,'2024-09-29 08:38:03','2024-09-29 08:38:03'),(3,1,'3KG','3kg',NULL,NULL,0,3,'2024-09-29 08:38:03','2024-09-29 08:38:03'),(4,1,'4KG','4kg',NULL,NULL,0,4,'2024-09-29 08:38:03','2024-09-29 08:38:03'),(5,1,'5KG','5kg',NULL,NULL,0,5,'2024-09-29 08:38:03','2024-09-29 08:38:03'),(6,2,'1 Box','1-box',NULL,NULL,1,1,'2024-09-29 08:38:03','2024-09-29 08:38:03'),(7,2,'2 Boxes','2-boxes',NULL,NULL,0,2,'2024-09-29 08:38:03','2024-09-29 08:38:03'),(8,2,'3 Boxes','3-boxes',NULL,NULL,0,3,'2024-09-29 08:38:03','2024-09-29 08:38:03'),(9,2,'4 Boxes','4-boxes',NULL,NULL,0,4,'2024-09-29 08:38:03','2024-09-29 08:38:03'),(10,2,'5 Boxes','5-boxes',NULL,NULL,0,5,'2024-09-29 08:38:03','2024-09-29 08:38:03');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Milks and Dairies',0,NULL,'published',0,'product-categories/image-1.png',1,'2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'product-categories/icon-1.png'),(2,'Clothing & beauty',0,NULL,'published',1,'product-categories/image-2.png',1,'2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'product-categories/icon-2.png'),(3,'Pet Toy',0,NULL,'published',2,'product-categories/image-3.png',1,'2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'product-categories/icon-3.png'),(4,'Baking material',0,NULL,'published',3,'product-categories/image-4.png',1,'2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'product-categories/icon-4.png'),(5,'Fresh Fruit',0,NULL,'published',4,'product-categories/image-5.png',1,'2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'product-categories/icon-5.png'),(6,'Wines & Drinks',0,NULL,'published',5,'product-categories/image-6.png',1,'2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'product-categories/icon-6.png'),(7,'Fresh Seafood',0,NULL,'published',6,'product-categories/image-7.png',1,'2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'product-categories/icon-7.png'),(8,'Fast food',0,NULL,'published',7,'product-categories/image-8.png',1,'2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'product-categories/icon-8.png'),(9,'Vegetables',0,NULL,'published',8,'product-categories/image-9.png',1,'2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'product-categories/icon-9.png'),(10,'Bread and Juice',0,NULL,'published',9,'product-categories/image-10.png',1,'2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'product-categories/icon-10.png'),(11,'Cake & Milk',0,NULL,'published',10,'product-categories/image-11.png',1,'2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'product-categories/icon-11.png'),(12,'Coffee & Teas',0,NULL,'published',11,'product-categories/image-12.png',1,'2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'product-categories/icon-12.png'),(13,'Pet Foods',0,NULL,'published',12,'product-categories/image-13.png',0,'2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'product-categories/icon-13.png'),(14,'Diet Foods',0,NULL,'published',13,'product-categories/image-14.png',0,'2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'product-categories/icon-14.png');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,2),(1,10),(1,22),(2,3),(2,6),(2,11),(2,12),(2,13),(2,23),(3,1),(3,2),(3,5),(3,7),(3,8),(3,11),(3,12),(3,13),(3,14),(3,16),(3,17),(3,18),(3,24),(4,4),(4,6),(4,13),(4,19),(4,20),(4,21),(4,23),(5,1),(5,7),(5,8),(5,10),(5,13),(5,15),(5,19),(5,20),(5,22),(6,15),(6,17),(6,18),(6,19),(6,24),(7,6),(7,10),(7,12),(7,14),(7,19),(7,23),(7,24),(8,3),(8,6),(8,9),(8,15),(8,20),(8,22),(9,9),(9,16),(10,5),(10,11),(10,14),(10,16),(10,21),(10,24),(11,3),(11,5),(11,12),(11,17),(11,18),(11,22),(12,2),(12,4),(12,8),(12,21),(13,1),(13,2),(13,3),(13,4),(13,7),(13,8),(13,9),(13,11),(13,15),(13,18),(13,21),(13,23),(14,1),(14,4),(14,5),(14,7),(14,9),(14,10),(14,14),(14,16),(14,17),(14,20);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,5),(1,10),(1,15),(1,19),(2,2),(2,7),(2,9),(2,12),(2,13),(2,21),(2,22),(2,23),(2,24),(3,1),(3,3),(3,4),(3,6),(3,8),(3,11),(3,14),(3,16),(3,17),(3,18),(3,20);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2024-09-29 08:38:03','2024-09-29 08:38:03',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2024-09-29 08:38:03','2024-09-29 08:38:03',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2024-09-29 08:38:03','2024-09-29 08:38:03',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,2,0,0.00,'fixed',1),(1,5,0,0.00,'fixed',1),(1,6,0,0.00,'fixed',1),(1,7,0,0.00,'fixed',1),(1,12,0,0.00,'fixed',1),(1,17,0,0.00,'fixed',1),(2,1,0,0.00,'fixed',1),(2,5,0,0.00,'fixed',1),(2,6,0,0.00,'fixed',1),(2,8,0,0.00,'fixed',1),(2,11,0,0.00,'fixed',1),(2,13,0,0.00,'fixed',1),(2,23,0,0.00,'fixed',1),(3,2,0,0.00,'fixed',1),(3,5,0,0.00,'fixed',1),(3,6,0,0.00,'fixed',1),(3,16,0,0.00,'fixed',1),(3,18,0,0.00,'fixed',1),(3,20,0,0.00,'fixed',1),(4,1,0,0.00,'fixed',1),(4,3,0,0.00,'fixed',1),(4,5,0,0.00,'fixed',1),(4,8,0,0.00,'fixed',1),(4,14,0,0.00,'fixed',1),(4,16,0,0.00,'fixed',1),(5,1,0,0.00,'fixed',1),(5,8,0,0.00,'fixed',1),(5,10,0,0.00,'fixed',1),(5,17,0,0.00,'fixed',1),(5,21,0,0.00,'fixed',1),(6,7,0,0.00,'fixed',1),(6,9,0,0.00,'fixed',1),(6,10,0,0.00,'fixed',1),(6,12,0,0.00,'fixed',1),(6,13,0,0.00,'fixed',1),(6,17,0,0.00,'fixed',1),(6,19,0,0.00,'fixed',1),(7,3,0,0.00,'fixed',1),(7,9,0,0.00,'fixed',1),(7,12,0,0.00,'fixed',1),(7,13,0,0.00,'fixed',1),(7,17,0,0.00,'fixed',1),(7,21,0,0.00,'fixed',1),(8,1,0,0.00,'fixed',1),(8,10,0,0.00,'fixed',1),(8,11,0,0.00,'fixed',1),(8,16,0,0.00,'fixed',1),(8,17,0,0.00,'fixed',1),(8,19,0,0.00,'fixed',1),(8,20,0,0.00,'fixed',1),(9,6,0,0.00,'fixed',1),(9,7,0,0.00,'fixed',1),(9,10,0,0.00,'fixed',1),(9,13,0,0.00,'fixed',1),(9,14,0,0.00,'fixed',1),(9,22,0,0.00,'fixed',1),(9,23,0,0.00,'fixed',1),(10,7,0,0.00,'fixed',1),(10,12,0,0.00,'fixed',1),(10,13,0,0.00,'fixed',1),(10,16,0,0.00,'fixed',1),(10,23,0,0.00,'fixed',1),(10,24,0,0.00,'fixed',1),(11,1,0,0.00,'fixed',1),(11,3,0,0.00,'fixed',1),(11,12,0,0.00,'fixed',1),(11,18,0,0.00,'fixed',1),(11,19,0,0.00,'fixed',1),(11,21,0,0.00,'fixed',1),(12,2,0,0.00,'fixed',1),(12,3,0,0.00,'fixed',1),(12,7,0,0.00,'fixed',1),(12,15,0,0.00,'fixed',1),(12,20,0,0.00,'fixed',1),(12,21,0,0.00,'fixed',1),(13,4,0,0.00,'fixed',1),(13,6,0,0.00,'fixed',1),(13,10,0,0.00,'fixed',1),(13,14,0,0.00,'fixed',1),(13,18,0,0.00,'fixed',1),(13,20,0,0.00,'fixed',1),(13,21,0,0.00,'fixed',1),(14,2,0,0.00,'fixed',1),(14,7,0,0.00,'fixed',1),(14,10,0,0.00,'fixed',1),(14,15,0,0.00,'fixed',1),(14,17,0,0.00,'fixed',1),(15,3,0,0.00,'fixed',1),(15,5,0,0.00,'fixed',1),(15,8,0,0.00,'fixed',1),(15,12,0,0.00,'fixed',1),(15,16,0,0.00,'fixed',1),(15,20,0,0.00,'fixed',1),(15,22,0,0.00,'fixed',1),(16,1,0,0.00,'fixed',1),(16,5,0,0.00,'fixed',1),(16,7,0,0.00,'fixed',1),(16,10,0,0.00,'fixed',1),(16,11,0,0.00,'fixed',1),(16,17,0,0.00,'fixed',1),(16,18,0,0.00,'fixed',1),(17,2,0,0.00,'fixed',1),(17,10,0,0.00,'fixed',1),(17,11,0,0.00,'fixed',1),(17,19,0,0.00,'fixed',1),(17,24,0,0.00,'fixed',1),(18,1,0,0.00,'fixed',1),(18,14,0,0.00,'fixed',1),(18,15,0,0.00,'fixed',1),(18,19,0,0.00,'fixed',1),(18,22,0,0.00,'fixed',1),(18,23,0,0.00,'fixed',1),(18,24,0,0.00,'fixed',1),(19,4,0,0.00,'fixed',1),(19,6,0,0.00,'fixed',1),(19,10,0,0.00,'fixed',1),(19,14,0,0.00,'fixed',1),(19,15,0,0.00,'fixed',1),(19,22,0,0.00,'fixed',1),(19,24,0,0.00,'fixed',1),(20,1,0,0.00,'fixed',1),(20,7,0,0.00,'fixed',1),(20,9,0,0.00,'fixed',1),(20,19,0,0.00,'fixed',1),(20,21,0,0.00,'fixed',1),(21,3,0,0.00,'fixed',1),(21,5,0,0.00,'fixed',1),(21,7,0,0.00,'fixed',1),(21,18,0,0.00,'fixed',1),(21,22,0,0.00,'fixed',1),(22,15,0,0.00,'fixed',1),(22,17,0,0.00,'fixed',1),(22,18,0,0.00,'fixed',1),(22,20,0,0.00,'fixed',1),(22,23,0,0.00,'fixed',1),(23,8,0,0.00,'fixed',1),(23,11,0,0.00,'fixed',1),(23,12,0,0.00,'fixed',1),(23,13,0,0.00,'fixed',1),(23,14,0,0.00,'fixed',1),(23,18,0,0.00,'fixed',1),(23,24,0,0.00,'fixed',1),(24,7,0,0.00,'fixed',1),(24,10,0,0.00,'fixed',1),(24,13,0,0.00,'fixed',1),(24,16,0,0.00,'fixed',1),(24,18,0,0.00,'fixed',1),(24,21,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/4.jpg','{\"filename\":\"4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"4\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(2,4,'ecommerce/digital-product-files/4-1.jpg','{\"filename\":\"4-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"4-1\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(3,8,'ecommerce/digital-product-files/8.jpg','{\"filename\":\"8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"8\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(4,8,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(5,12,'ecommerce/digital-product-files/12.jpg','{\"filename\":\"12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"12\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(6,12,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(7,16,'ecommerce/digital-product-files/16.jpg','{\"filename\":\"16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"16\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(8,16,'ecommerce/digital-product-files/16-1.jpg','{\"filename\":\"16-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"16-1\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(9,20,'ecommerce/digital-product-files/20.jpg','{\"filename\":\"20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"20\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(10,20,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(11,24,'ecommerce/digital-product-files/24.jpg','{\"filename\":\"24.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"24\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(12,24,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(13,29,'ecommerce/digital-product-files/4-1.jpg','{\"filename\":\"4-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"4-1\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(14,30,'ecommerce/digital-product-files/4.jpg','{\"filename\":\"4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"4\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(15,31,'ecommerce/digital-product-files/4.jpg','{\"filename\":\"4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"4\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(16,32,'ecommerce/digital-product-files/4.jpg','{\"filename\":\"4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"4\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(17,33,'ecommerce/digital-product-files/4.jpg','{\"filename\":\"4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"4\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(18,35,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(19,36,'ecommerce/digital-product-files/8.jpg','{\"filename\":\"8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"8\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(20,37,'ecommerce/digital-product-files/8.jpg','{\"filename\":\"8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"8\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(21,61,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(22,62,'ecommerce/digital-product-files/20.jpg','{\"filename\":\"20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"20\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(23,63,'ecommerce/digital-product-files/20.jpg','{\"filename\":\"20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"20\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(24,64,'ecommerce/digital-product-files/20.jpg','{\"filename\":\"20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"20\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09'),(25,65,'ecommerce/digital-product-files/20.jpg','{\"filename\":\"20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-09-29 15:38:09\",\"name\":\"20\",\"extension\":\"jpg\"}','2024-09-29 08:38:09','2024-09-29 08:38:09');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,9),(2,3),(2,15),(2,21),(2,24),(3,6),(3,12),(3,18);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2024-09-29 08:38:03','2024-09-29 08:38:03'),(2,'New','#02856e','published','2024-09-29 08:38:03','2024-09-29 08:38:03'),(3,'Sale','#fe9931','published','2024-09-29 08:38:03','2024-09-29 08:38:03');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute`
--

LOCK TABLES `ec_product_specification_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute` VALUES (1,1,'88.98 cm',0,0),(1,2,'42.79 cm',0,0),(1,3,'13.83 cm',0,0),(1,4,'69.43 cm',0,0),(1,5,'66.13 cm',0,0),(2,6,'98.57 cm',0,0),(2,7,'83.54 cm',0,0),(2,8,'3840x2160',0,0),(3,1,'32.42 cm',0,0),(3,2,'45.21 cm',0,0),(3,3,'44.4 cm',0,0),(3,4,'15.19 cm',0,0),(3,5,'42.74 cm',0,0),(4,1,'70.38 cm',0,0),(4,2,'71.03 cm',0,0),(4,3,'52.29 cm',0,0),(4,4,'19.91 cm',0,0),(4,5,'62.71 cm',0,0),(5,6,'5.88 cm',0,0),(5,7,'32.9 cm',0,0),(5,8,'3840x2160',0,0),(6,6,'64.58 cm',0,0),(6,7,'18.07 cm',0,0),(6,8,'3840x2160',0,0),(7,1,'29.28 cm',0,0),(7,2,'35.19 cm',0,0),(7,3,'56.87 cm',0,0),(7,4,'51.37 cm',0,0),(7,5,'35.28 cm',0,0),(8,6,'61.3 cm',0,0),(8,7,'55.03 cm',0,0),(8,8,'2560x1440',0,0),(9,1,'19.77 cm',0,0),(9,2,'61.63 cm',0,0),(9,3,'10.11 cm',0,0),(9,4,'41.34 cm',0,0),(9,5,'45.09 cm',0,0),(10,6,'96.43 cm',0,0),(10,7,'12.84 cm',0,0),(10,8,'3840x2160',0,0),(11,6,'99.54 cm',0,0),(11,7,'99.29 cm',0,0),(11,8,'3840x2160',0,0),(12,1,'38.44 cm',0,0),(12,2,'84.56 cm',0,0),(12,3,'13.39 cm',0,0),(12,4,'71.57 cm',0,0),(12,5,'81.51 cm',0,0),(13,6,'36.72 cm',0,0),(13,7,'58.94 cm',0,0),(13,8,'2560x1440',0,0),(14,6,'39.95 cm',0,0),(14,7,'2.43 cm',0,0),(14,8,'1920x1080',0,0),(15,6,'21.88 cm',0,0),(15,7,'84.06 cm',0,0),(15,8,'2560x1440',0,0),(16,6,'36.53 cm',0,0),(16,7,'66.91 cm',0,0),(16,8,'1920x1080',0,0),(17,1,'6.01 cm',0,0),(17,2,'54.98 cm',0,0),(17,3,'93.51 cm',0,0),(17,4,'12.87 cm',0,0),(17,5,'46.52 cm',0,0),(18,1,'31.94 cm',0,0),(18,2,'56.71 cm',0,0),(18,3,'8.41 cm',0,0),(18,4,'74.28 cm',0,0),(18,5,'90.52 cm',0,0),(19,6,'96.92 cm',0,0),(19,7,'12.79 cm',0,0),(19,8,'2560x1440',0,0),(20,1,'48.36 cm',0,0),(20,2,'51.92 cm',0,0),(20,3,'16.37 cm',0,0),(20,4,'80.28 cm',0,0),(20,5,'18.68 cm',0,0),(21,6,'54.41 cm',0,0),(21,7,'49.4 cm',0,0),(21,8,'1920x1080',0,0),(22,1,'35.86 cm',0,0),(22,2,'98.19 cm',0,0),(22,3,'38.48 cm',0,0),(22,4,'4.9 cm',0,0),(22,5,'71.06 cm',0,0),(23,1,'16.8 cm',0,0),(23,2,'52.06 cm',0,0),(23,3,'78.22 cm',0,0),(23,4,'63.68 cm',0,0),(23,5,'65.8 cm',0,0),(24,1,'69.64 cm',0,0),(24,2,'98.87 cm',0,0),(24,3,'5.79 cm',0,0),(24,4,'27.44 cm',0,0),(24,5,'39.67 cm',0,0);
/*!40000 ALTER TABLE `ec_product_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,3),(1,4),(2,1),(2,2),(2,4),(3,1),(3,2),(3,3),(4,1),(4,3),(4,4),(5,2),(5,3),(5,4),(6,3),(6,4),(6,5),(7,1),(7,4),(7,5),(8,1),(8,3),(8,5),(9,1),(9,4),(9,5),(10,2),(10,3),(10,4),(11,1),(11,3),(11,4),(12,1),(12,3),(12,5),(13,1),(13,4),(13,5),(14,2),(14,3),(14,5),(15,1),(15,4),(15,5),(16,2),(16,3),(16,4),(17,1),(17,3),(17,5),(18,1),(18,3),(18,4),(19,2),(19,3),(19,4),(20,1),(20,4),(20,5),(21,2),(21,4),(21,5),(22,3),(22,4),(22,5),(23,2),(23,3),(23,5),(24,1),(24,4),(24,5);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2024-09-29 08:38:03','2024-09-29 08:38:03'),(2,'Bags',NULL,'published','2024-09-29 08:38:03','2024-09-29 08:38:03'),(3,'Shoes',NULL,'published','2024-09-29 08:38:03','2024-09-29 08:38:03'),(4,'Clothes',NULL,'published','2024-09-29 08:38:03','2024-09-29 08:38:03'),(5,'Hand bag',NULL,'published','2024-09-29 08:38:03','2024-09-29 08:38:03');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (9,1,5),(11,1,6),(19,1,10),(35,1,18),(29,2,15),(37,2,19),(43,2,22),(33,3,17),(39,3,20),(41,3,21),(45,3,23),(1,4,1),(5,4,3),(13,4,7),(15,4,8),(21,4,11),(25,4,13),(27,4,14),(31,4,16),(3,5,2),(7,5,4),(17,5,9),(23,5,12),(44,6,22),(2,7,1),(6,7,3),(14,7,7),(18,7,9),(20,7,10),(30,7,15),(42,7,21),(10,8,5),(24,8,12),(26,8,13),(32,8,16),(38,8,19),(4,9,2),(8,9,4),(28,9,14),(36,9,18),(12,10,6),(16,10,8),(22,10,11),(34,10,17),(40,10,20),(46,10,23);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,1,1),(2,26,2,1),(3,27,2,0),(4,28,3,1),(5,29,4,1),(6,30,4,0),(7,31,4,0),(8,32,4,0),(9,33,4,0),(10,34,6,1),(11,35,8,1),(12,36,8,0),(13,37,8,0),(14,38,9,1),(15,39,9,0),(16,40,9,0),(17,41,10,1),(18,42,10,0),(19,43,10,0),(20,44,10,0),(21,45,10,0),(22,46,11,1),(23,47,11,0),(24,48,14,1),(25,49,14,0),(26,50,14,0),(27,51,15,1),(28,52,15,0),(29,53,17,1),(30,54,17,0),(31,55,18,1),(32,56,18,0),(33,57,18,0),(34,58,19,1),(35,59,19,0),(36,60,19,0),(37,61,20,1),(38,62,20,0),(39,63,20,0),(40,64,20,0),(41,65,20,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-09-29',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,6,0),(2,6,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `video_media` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  `specification_table_id` bigint unsigned DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Seeds of Change Organic Quinoe','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\"]',NULL,'SL-145-A1',0,19,0,1,1,5,0,0,977,NULL,NULL,NULL,20.00,15.00,18.00,828.00,NULL,179897,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,3,0),(2,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\"]',NULL,'0C-101-A1',0,19,0,1,1,6,0,0,2211,NULL,NULL,NULL,19.00,11.00,15.00,841.00,NULL,59459,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,2,0),(3,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\"]',NULL,'O8-112-A1',0,13,0,1,1,4,0,0,1994,NULL,NULL,NULL,18.00,19.00,15.00,591.00,NULL,160717,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,5,0),(4,'Foster Farms Takeout Crispy Classic (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\"]',NULL,'RH-149-A1',0,15,0,1,1,7,0,0,270,237.6,NULL,NULL,12.00,10.00,20.00,602.00,NULL,174112,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,1,2,0),(5,'Blue Diamond Almonds Lightly','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\"]',NULL,'VU-149',0,13,0,1,1,6,0,0,880,785,NULL,NULL,10.00,10.00,14.00,878.00,NULL,115019,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,6,0),(6,'Chobani Complete Vanilla Greek','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]',NULL,'34-165-A1',0,10,0,1,1,6,0,0,2301,NULL,NULL,NULL,20.00,11.00,20.00,649.00,NULL,136825,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,4,0),(7,'Canada Dry Ginger Ale – 2 L Bottle','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]',NULL,'8O-119',0,13,0,1,1,6,0,0,2061,18,NULL,NULL,17.00,11.00,10.00,802.00,NULL,107584,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,3,0),(8,'Encore Seafoods Stuffed Alaskan (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]',NULL,'ZA-133-A1',0,17,0,1,1,6,0,0,480,422.4,NULL,NULL,20.00,11.00,12.00,531.00,NULL,36946,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,2,3,0),(9,'Gorton’s Beer Battered Fish Fillets','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]',NULL,'PZ-108-A1',0,15,0,1,1,1,0,0,722,NULL,NULL,NULL,19.00,20.00,11.00,531.00,NULL,109318,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,3,0),(10,'Haagen-Dazs Caramel Cone Ice Cream','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]',NULL,'FS-136-A1',0,20,0,1,1,2,0,0,2264,NULL,NULL,NULL,10.00,19.00,20.00,883.00,NULL,171483,'2024-09-29 08:38:08','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,3,0),(11,'Nestle Original Coffee-Mate Coffee Creamer','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]',NULL,'LO-188-A1',0,11,0,1,1,6,0,0,2280,NULL,NULL,NULL,15.00,19.00,12.00,689.00,NULL,102056,'2024-09-29 08:38:08','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,5,0),(12,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]',NULL,'PP-176',0,12,0,1,1,6,0,0,1213,1052,NULL,NULL,18.00,18.00,11.00,536.00,NULL,65307,'2024-09-29 08:38:08','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,1,2,0),(13,'Pepperidge Farm Farmhouse Hearty White Bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]',NULL,'V2-168',0,13,0,1,1,1,0,0,930,539,NULL,NULL,20.00,15.00,17.00,587.00,NULL,4154,'2024-09-29 08:38:08','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,1,0),(14,'Organic Frozen Triple Berry Blend','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]',NULL,'5L-107-A1',0,11,0,1,1,4,0,0,444,NULL,NULL,NULL,16.00,18.00,11.00,898.00,NULL,89267,'2024-09-29 08:38:08','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,4,0),(15,'Oroweat Country Buttermilk Bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]',NULL,'A7-105-A1',0,19,0,1,1,3,0,0,1891,NULL,NULL,NULL,14.00,11.00,13.00,747.00,NULL,66472,'2024-09-29 08:38:08','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,1,0),(16,'Foster Farms Takeout Crispy Classic Buffalo Wings (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/16.jpg\",\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\",\"products\\/16-5.jpg\",\"products\\/16-6.jpg\"]',NULL,'J6-111',0,18,0,1,1,4,0,0,1766,286,NULL,NULL,16.00,11.00,18.00,578.00,NULL,93609,'2024-09-29 08:38:08','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,2,1,0),(17,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\"]',NULL,'UT-145-A1',0,19,0,1,1,3,0,0,764,NULL,NULL,NULL,16.00,19.00,19.00,692.00,NULL,143798,'2024-09-29 08:38:08','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,6,0),(18,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\"]',NULL,'MD-167-A1',0,20,0,1,1,2,0,0,377,NULL,NULL,NULL,19.00,15.00,18.00,718.00,NULL,160657,'2024-09-29 08:38:08','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,6,0),(19,'Simply Lemonade with Raspberry Juice','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]',NULL,'AF-147-A1',0,15,0,1,1,6,0,0,1830,NULL,NULL,NULL,20.00,19.00,10.00,501.00,NULL,31779,'2024-09-29 08:38:08','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,3,0),(20,'Perdue Simply Smart Organics Gluten Free (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]',NULL,'NN-165-A1',0,15,0,1,1,3,0,0,1884,1676.76,NULL,NULL,17.00,18.00,11.00,507.00,NULL,194101,'2024-09-29 08:38:08','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,1,2,0),(21,'Chen Watermelon','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]',NULL,'YC-106',0,10,0,1,1,1,0,0,806,676,NULL,NULL,13.00,15.00,16.00,671.00,NULL,140648,'2024-09-29 08:38:08','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,1,0),(22,'Organic Cage-Free Grade A Large Brown Eggs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]',NULL,'IH-133',0,16,0,1,1,3,0,0,2469,1571,NULL,NULL,13.00,17.00,11.00,627.00,NULL,38511,'2024-09-29 08:38:08','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,3,0),(23,'Colorful Banana','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]',NULL,'JB-172',0,12,0,1,1,4,0,0,1635,750,NULL,NULL,16.00,13.00,13.00,675.00,NULL,174565,'2024-09-29 08:38:08','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,5,0),(24,'Signature Wood-Fired Mushroom and Caramelized (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]',NULL,'CF-181',0,11,0,1,1,1,0,0,1894,1874,NULL,NULL,16.00,16.00,15.00,502.00,NULL,91033,'2024-09-29 08:38:08','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,1,2,0),(25,'Seeds of Change Organic Quinoe',NULL,NULL,'published','[\"products\\/1-1.jpg\"]',NULL,'SL-145-A1',0,19,0,1,0,5,1,0,977,NULL,NULL,NULL,20.00,15.00,18.00,828.00,NULL,0,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(26,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2-1.jpg\"]',NULL,'0C-101-A1',0,19,0,1,0,6,1,0,2211,NULL,NULL,NULL,19.00,11.00,15.00,841.00,NULL,0,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(27,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]',NULL,'0C-101-A1-A2',0,19,0,1,0,6,1,0,2211,NULL,NULL,NULL,19.00,11.00,15.00,841.00,NULL,0,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(28,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3-1.jpg\"]',NULL,'O8-112-A1',0,13,0,1,0,4,1,0,1994,NULL,NULL,NULL,18.00,19.00,15.00,591.00,NULL,0,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(29,'Foster Farms Takeout Crispy Classic (Digital)',NULL,NULL,'published','[\"products\\/4-1.jpg\"]',NULL,'RH-149-A1',0,15,0,1,0,7,1,0,270,237.6,NULL,NULL,12.00,10.00,20.00,602.00,NULL,0,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(30,'Foster Farms Takeout Crispy Classic (Digital)',NULL,NULL,'published','[\"products\\/4.jpg\"]',NULL,'RH-149-A1-A2',0,15,0,1,0,7,1,0,270,216,NULL,NULL,12.00,10.00,20.00,602.00,NULL,0,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(31,'Foster Farms Takeout Crispy Classic (Digital)',NULL,NULL,'published','[\"products\\/4.jpg\"]',NULL,'RH-149-A1-A3',0,15,0,1,0,7,1,0,270,207.9,NULL,NULL,12.00,10.00,20.00,602.00,NULL,0,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(32,'Foster Farms Takeout Crispy Classic (Digital)',NULL,NULL,'published','[\"products\\/4.jpg\"]',NULL,'RH-149-A1-A4',0,15,0,1,0,7,1,0,270,243,NULL,NULL,12.00,10.00,20.00,602.00,NULL,0,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(33,'Foster Farms Takeout Crispy Classic (Digital)',NULL,NULL,'published','[\"products\\/4.jpg\"]',NULL,'RH-149-A1-A5',0,15,0,1,0,7,1,0,270,237.6,NULL,NULL,12.00,10.00,20.00,602.00,NULL,0,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(34,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6-1.jpg\"]',NULL,'34-165-A1',0,10,0,1,0,6,1,0,2301,NULL,NULL,NULL,20.00,11.00,20.00,649.00,NULL,0,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(35,'Encore Seafoods Stuffed Alaskan (Digital)',NULL,NULL,'published','[\"products\\/8-1.jpg\"]',NULL,'ZA-133-A1',0,17,0,1,0,6,1,0,480,422.4,NULL,NULL,20.00,11.00,12.00,531.00,NULL,0,'2024-09-29 08:38:08','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(36,'Encore Seafoods Stuffed Alaskan (Digital)',NULL,NULL,'published','[\"products\\/8.jpg\"]',NULL,'ZA-133-A1-A2',0,17,0,1,0,6,1,0,480,360,NULL,NULL,20.00,11.00,12.00,531.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(37,'Encore Seafoods Stuffed Alaskan (Digital)',NULL,NULL,'published','[\"products\\/8.jpg\"]',NULL,'ZA-133-A1-A3',0,17,0,1,0,6,1,0,480,393.6,NULL,NULL,20.00,11.00,12.00,531.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(38,'Gorton’s Beer Battered Fish Fillets',NULL,NULL,'published','[\"products\\/9-1.jpg\"]',NULL,'PZ-108-A1',0,15,0,1,0,1,1,0,722,NULL,NULL,NULL,19.00,20.00,11.00,531.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(39,'Gorton’s Beer Battered Fish Fillets',NULL,NULL,'published','[\"products\\/9.jpg\"]',NULL,'PZ-108-A1-A2',0,15,0,1,0,1,1,0,722,NULL,NULL,NULL,19.00,20.00,11.00,531.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(40,'Gorton’s Beer Battered Fish Fillets',NULL,NULL,'published','[\"products\\/9.jpg\"]',NULL,'PZ-108-A1-A3',0,15,0,1,0,1,1,0,722,NULL,NULL,NULL,19.00,20.00,11.00,531.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(41,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10-1.jpg\"]',NULL,'FS-136-A1',0,20,0,1,0,2,1,0,2264,NULL,NULL,NULL,10.00,19.00,20.00,883.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(42,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]',NULL,'FS-136-A1-A2',0,20,0,1,0,2,1,0,2264,NULL,NULL,NULL,10.00,19.00,20.00,883.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(43,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]',NULL,'FS-136-A1-A3',0,20,0,1,0,2,1,0,2264,NULL,NULL,NULL,10.00,19.00,20.00,883.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(44,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]',NULL,'FS-136-A1-A4',0,20,0,1,0,2,1,0,2264,NULL,NULL,NULL,10.00,19.00,20.00,883.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(45,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]',NULL,'FS-136-A1-A5',0,20,0,1,0,2,1,0,2264,NULL,NULL,NULL,10.00,19.00,20.00,883.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(46,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11-1.jpg\"]',NULL,'LO-188-A1',0,11,0,1,0,6,1,0,2280,NULL,NULL,NULL,15.00,19.00,12.00,689.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(47,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]',NULL,'LO-188-A1-A2',0,11,0,1,0,6,1,0,2280,NULL,NULL,NULL,15.00,19.00,12.00,689.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(48,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14-1.jpg\"]',NULL,'5L-107-A1',0,11,0,1,0,4,1,0,444,NULL,NULL,NULL,16.00,18.00,11.00,898.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(49,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]',NULL,'5L-107-A1-A2',0,11,0,1,0,4,1,0,444,NULL,NULL,NULL,16.00,18.00,11.00,898.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(50,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]',NULL,'5L-107-A1-A3',0,11,0,1,0,4,1,0,444,NULL,NULL,NULL,16.00,18.00,11.00,898.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(51,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15-1.jpg\"]',NULL,'A7-105-A1',0,19,0,1,0,3,1,0,1891,NULL,NULL,NULL,14.00,11.00,13.00,747.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(52,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]',NULL,'A7-105-A1-A2',0,19,0,1,0,3,1,0,1891,NULL,NULL,NULL,14.00,11.00,13.00,747.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(53,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/17-1.jpg\"]',NULL,'UT-145-A1',0,19,0,1,0,3,1,0,764,NULL,NULL,NULL,16.00,19.00,19.00,692.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(54,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/17.jpg\"]',NULL,'UT-145-A1-A2',0,19,0,1,0,3,1,0,764,NULL,NULL,NULL,16.00,19.00,19.00,692.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(55,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18-1.jpg\"]',NULL,'MD-167-A1',0,20,0,1,0,2,1,0,377,NULL,NULL,NULL,19.00,15.00,18.00,718.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(56,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]',NULL,'MD-167-A1-A2',0,20,0,1,0,2,1,0,377,NULL,NULL,NULL,19.00,15.00,18.00,718.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(57,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]',NULL,'MD-167-A1-A3',0,20,0,1,0,2,1,0,377,NULL,NULL,NULL,19.00,15.00,18.00,718.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(58,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19-1.jpg\"]',NULL,'AF-147-A1',0,15,0,1,0,6,1,0,1830,NULL,NULL,NULL,20.00,19.00,10.00,501.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(59,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]',NULL,'AF-147-A1-A2',0,15,0,1,0,6,1,0,1830,NULL,NULL,NULL,20.00,19.00,10.00,501.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(60,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]',NULL,'AF-147-A1-A3',0,15,0,1,0,6,1,0,1830,NULL,NULL,NULL,20.00,19.00,10.00,501.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(61,'Perdue Simply Smart Organics Gluten Free (Digital)',NULL,NULL,'published','[\"products\\/20-1.jpg\"]',NULL,'NN-165-A1',0,15,0,1,0,3,1,0,1884,1676.76,NULL,NULL,17.00,18.00,11.00,507.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(62,'Perdue Simply Smart Organics Gluten Free (Digital)',NULL,NULL,'published','[\"products\\/20.jpg\"]',NULL,'NN-165-A1-A2',0,15,0,1,0,3,1,0,1884,1469.52,NULL,NULL,17.00,18.00,11.00,507.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(63,'Perdue Simply Smart Organics Gluten Free (Digital)',NULL,NULL,'published','[\"products\\/20.jpg\"]',NULL,'NN-165-A1-A3',0,15,0,1,0,3,1,0,1884,1526.04,NULL,NULL,17.00,18.00,11.00,507.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(64,'Perdue Simply Smart Organics Gluten Free (Digital)',NULL,NULL,'published','[\"products\\/20.jpg\"]',NULL,'NN-165-A1-A4',0,15,0,1,0,3,1,0,1884,1375.32,NULL,NULL,17.00,18.00,11.00,507.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(65,'Perdue Simply Smart Organics Gluten Free (Digital)',NULL,NULL,'published','[\"products\\/20.jpg\"]',NULL,'NN-165-A1-A5',0,15,0,1,0,3,1,0,1884,1507.2,NULL,NULL,17.00,18.00,11.00,507.00,NULL,0,'2024-09-29 08:38:09','2024-09-29 08:38:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,3,NULL,NULL,15,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/9-1.jpg\",\"products\\/14.jpg\",\"products\\/16-4.jpg\",\"products\\/21-1.jpg\"]'),(2,9,NULL,NULL,22,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/5-1.jpg\",\"products\\/11-1.jpg\",\"products\\/16-5.jpg\",\"products\\/16.jpg\"]'),(3,1,NULL,NULL,23,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/15-1.jpg\",\"products\\/16-2.jpg\",\"products\\/22.jpg\",\"products\\/24.jpg\"]'),(4,2,NULL,NULL,20,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/10-1.jpg\",\"products\\/22.jpg\"]'),(5,10,NULL,NULL,2,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/5.jpg\",\"products\\/12-1.jpg\"]'),(6,10,NULL,NULL,9,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/3.jpg\",\"products\\/20-1.jpg\",\"products\\/21-1.jpg\",\"products\\/23-1.jpg\"]'),(7,3,NULL,NULL,3,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/20-1.jpg\"]'),(8,2,NULL,NULL,22,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/8-1.jpg\",\"products\\/16-1.jpg\",\"products\\/19.jpg\"]'),(9,9,NULL,NULL,11,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/4-1.jpg\",\"products\\/16-4.jpg\"]'),(10,1,NULL,NULL,8,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/5-1.jpg\",\"products\\/16-1.jpg\",\"products\\/16-6.jpg\"]'),(11,6,NULL,NULL,5,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/11-1.jpg\"]'),(12,7,NULL,NULL,10,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/8.jpg\",\"products\\/15.jpg\",\"products\\/18-1.jpg\"]'),(14,7,NULL,NULL,17,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2-1.jpg\",\"products\\/4-1.jpg\",\"products\\/7-1.jpg\",\"products\\/15-1.jpg\"]'),(16,10,NULL,NULL,22,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1-1.jpg\",\"products\\/18.jpg\"]'),(17,1,NULL,NULL,1,2.00,'Best ecommerce CMS online store!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/9-1.jpg\",\"products\\/16-3.jpg\",\"products\\/16-6.jpg\"]'),(18,10,NULL,NULL,24,1.00,'Clean & perfect source code','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/6.jpg\",\"products\\/23.jpg\"]'),(19,1,NULL,NULL,18,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2-1.jpg\",\"products\\/16-3.jpg\",\"products\\/16-6.jpg\",\"products\\/23.jpg\"]'),(20,2,NULL,NULL,23,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1.jpg\",\"products\\/2-1.jpg\",\"products\\/16-2.jpg\"]'),(21,3,NULL,NULL,18,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2-1.jpg\",\"products\\/4-1.jpg\",\"products\\/17-1.jpg\"]'),(22,4,NULL,NULL,2,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/14-1.jpg\",\"products\\/16-2.jpg\"]'),(23,7,NULL,NULL,21,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/7.jpg\"]'),(24,8,NULL,NULL,14,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/3-1.jpg\",\"products\\/12.jpg\",\"products\\/16-4.jpg\"]'),(25,4,NULL,NULL,18,1.00,'Clean & perfect source code','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/4-1.jpg\",\"products\\/15-1.jpg\"]'),(26,5,NULL,NULL,2,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/10.jpg\",\"products\\/16-3.jpg\",\"products\\/19-1.jpg\",\"products\\/22-1.jpg\"]'),(27,6,NULL,NULL,4,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/15.jpg\"]'),(29,9,NULL,NULL,24,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/3.jpg\",\"products\\/13-1.jpg\"]'),(30,5,NULL,NULL,7,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/7-1.jpg\",\"products\\/8.jpg\",\"products\\/18-1.jpg\",\"products\\/19-1.jpg\"]'),(31,5,NULL,NULL,17,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-1.jpg\",\"products\\/24.jpg\"]'),(32,4,NULL,NULL,5,1.00,'Best ecommerce CMS online store!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/10-1.jpg\",\"products\\/14.jpg\",\"products\\/19.jpg\"]'),(33,7,NULL,NULL,9,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/7-1.jpg\",\"products\\/23.jpg\"]'),(34,5,NULL,NULL,3,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/3.jpg\",\"products\\/12.jpg\",\"products\\/15-1.jpg\"]'),(35,9,NULL,NULL,15,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/14-1.jpg\"]'),(36,5,NULL,NULL,20,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1-1.jpg\",\"products\\/11.jpg\",\"products\\/15.jpg\",\"products\\/23.jpg\"]'),(39,10,NULL,NULL,15,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/10-1.jpg\",\"products\\/16.jpg\",\"products\\/23.jpg\"]'),(40,6,NULL,NULL,11,1.00,'Good app, good backup service and support. Good documentation.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/4-1.jpg\",\"products\\/14.jpg\",\"products\\/17.jpg\",\"products\\/20.jpg\"]'),(41,2,NULL,NULL,18,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/3-1.jpg\",\"products\\/6-1.jpg\",\"products\\/16-5.jpg\",\"products\\/17.jpg\"]'),(42,10,NULL,NULL,10,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2.jpg\",\"products\\/12.jpg\",\"products\\/15.jpg\"]'),(43,1,NULL,NULL,15,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/7.jpg\",\"products\\/13-1.jpg\",\"products\\/21.jpg\",\"products\\/24.jpg\"]'),(44,3,NULL,NULL,10,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/7-1.jpg\"]'),(45,2,NULL,NULL,12,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/17.jpg\"]'),(46,1,NULL,NULL,12,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/22.jpg\"]'),(47,10,NULL,NULL,16,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/5.jpg\",\"products\\/13-1.jpg\",\"products\\/14-1.jpg\",\"products\\/21-1.jpg\"]'),(48,8,NULL,NULL,19,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1-1.jpg\",\"products\\/10.jpg\",\"products\\/23.jpg\"]'),(49,8,NULL,NULL,21,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/22.jpg\"]'),(50,8,NULL,NULL,3,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/12.jpg\",\"products\\/16-3.jpg\"]'),(52,6,NULL,NULL,15,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/8-1.jpg\",\"products\\/15.jpg\",\"products\\/16-4.jpg\",\"products\\/18-1.jpg\"]'),(53,10,NULL,NULL,21,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/15-1.jpg\",\"products\\/20-1.jpg\",\"products\\/22-1.jpg\"]'),(54,3,NULL,NULL,14,4.00,'Clean & perfect source code','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/3-1.jpg\",\"products\\/14-1.jpg\",\"products\\/19.jpg\",\"products\\/24-1.jpg\"]'),(55,10,NULL,NULL,5,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2.jpg\",\"products\\/10-1.jpg\",\"products\\/18.jpg\"]'),(57,2,NULL,NULL,17,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/11.jpg\",\"products\\/13-1.jpg\"]'),(58,6,NULL,NULL,13,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/12-1.jpg\"]'),(59,4,NULL,NULL,20,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/6.jpg\",\"products\\/11.jpg\",\"products\\/15.jpg\",\"products\\/20-1.jpg\"]'),(60,7,NULL,NULL,15,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-4.jpg\"]'),(61,5,NULL,NULL,5,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/14-1.jpg\",\"products\\/16.jpg\",\"products\\/17-1.jpg\",\"products\\/17.jpg\"]'),(62,8,NULL,NULL,5,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/17-1.jpg\",\"products\\/17.jpg\",\"products\\/23.jpg\"]'),(63,3,NULL,NULL,20,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2-1.jpg\"]'),(64,4,NULL,NULL,17,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2-1.jpg\",\"products\\/3-1.jpg\",\"products\\/5-1.jpg\"]'),(65,4,NULL,NULL,7,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/3.jpg\"]'),(67,1,NULL,NULL,13,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/4-1.jpg\",\"products\\/10.jpg\",\"products\\/12-1.jpg\",\"products\\/17.jpg\"]'),(68,4,NULL,NULL,24,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/14-1.jpg\",\"products\\/16-3.jpg\",\"products\\/21.jpg\"]'),(69,2,NULL,NULL,11,3.00,'Good app, good backup service and support. Good documentation.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/14.jpg\",\"products\\/18-1.jpg\"]'),(70,5,NULL,NULL,8,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/3.jpg\",\"products\\/16.jpg\",\"products\\/20.jpg\"]'),(71,10,NULL,NULL,6,1.00,'Best ecommerce CMS online store!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/5-1.jpg\",\"products\\/13-1.jpg\"]'),(73,1,NULL,NULL,10,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2.jpg\",\"products\\/12.jpg\",\"products\\/13-1.jpg\",\"products\\/18.jpg\"]'),(76,8,NULL,NULL,17,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/11.jpg\",\"products\\/18-1.jpg\"]'),(77,9,NULL,NULL,21,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-6.jpg\",\"products\\/24.jpg\"]'),(78,6,NULL,NULL,9,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2-1.jpg\",\"products\\/7-1.jpg\",\"products\\/19.jpg\",\"products\\/20-1.jpg\"]'),(79,9,NULL,NULL,18,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/10-1.jpg\",\"products\\/16-1.jpg\",\"products\\/16-6.jpg\",\"products\\/21.jpg\"]'),(80,2,NULL,NULL,21,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-1.jpg\",\"products\\/17.jpg\"]'),(81,9,NULL,NULL,5,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/7.jpg\",\"products\\/8-1.jpg\",\"products\\/12-1.jpg\",\"products\\/16-4.jpg\"]'),(82,3,NULL,NULL,1,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/12-1.jpg\",\"products\\/15.jpg\"]'),(84,6,NULL,NULL,10,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/7.jpg\",\"products\\/20-1.jpg\",\"products\\/20.jpg\",\"products\\/22.jpg\"]'),(85,10,NULL,NULL,11,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/3.jpg\",\"products\\/14.jpg\",\"products\\/16-4.jpg\"]'),(86,7,NULL,NULL,13,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/8-1.jpg\"]'),(87,7,NULL,NULL,24,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/3-1.jpg\",\"products\\/4-1.jpg\",\"products\\/11.jpg\",\"products\\/13-1.jpg\"]'),(88,8,NULL,NULL,8,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/15-1.jpg\",\"products\\/22.jpg\"]'),(89,9,NULL,NULL,10,5.00,'Good app, good backup service and support. Good documentation.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1-1.jpg\",\"products\\/11-1.jpg\",\"products\\/16-6.jpg\",\"products\\/19-1.jpg\"]'),(90,8,NULL,NULL,11,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/15-1.jpg\",\"products\\/18.jpg\"]'),(91,8,NULL,NULL,23,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/7-1.jpg\",\"products\\/20.jpg\"]'),(92,7,NULL,NULL,4,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/8.jpg\",\"products\\/15.jpg\",\"products\\/16-2.jpg\",\"products\\/24.jpg\"]'),(93,10,NULL,NULL,12,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/13.jpg\",\"products\\/14.jpg\"]'),(95,7,NULL,NULL,2,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-2.jpg\"]'),(99,3,NULL,NULL,2,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/7.jpg\",\"products\\/23.jpg\"]'),(102,9,NULL,NULL,2,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/10-1.jpg\",\"products\\/16-5.jpg\"]'),(106,6,NULL,NULL,17,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/11-1.jpg\",\"products\\/19-1.jpg\"]'),(107,4,NULL,NULL,9,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/4-1.jpg\",\"products\\/7-1.jpg\",\"products\\/16-5.jpg\",\"products\\/23.jpg\"]'),(108,5,NULL,NULL,4,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/20.jpg\"]'),(109,2,NULL,NULL,16,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/3.jpg\",\"products\\/16-1.jpg\",\"products\\/18-1.jpg\",\"products\\/21.jpg\"]'),(110,9,NULL,NULL,1,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/3-1.jpg\"]'),(112,3,NULL,NULL,21,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/14.jpg\",\"products\\/15.jpg\"]'),(113,9,NULL,NULL,14,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/5.jpg\",\"products\\/8-1.jpg\",\"products\\/14-1.jpg\"]'),(115,10,NULL,NULL,8,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/8.jpg\",\"products\\/22-1.jpg\"]'),(117,8,NULL,NULL,9,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/7.jpg\",\"products\\/16-6.jpg\"]'),(122,10,NULL,NULL,23,3.00,'Good app, good backup service and support. Good documentation.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/6.jpg\",\"products\\/13.jpg\",\"products\\/24-1.jpg\"]'),(123,9,NULL,NULL,9,3.00,'Best ecommerce CMS online store!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/18-1.jpg\"]'),(124,1,NULL,NULL,2,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-1.jpg\",\"products\\/16-3.jpg\"]'),(125,9,NULL,NULL,17,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/10-1.jpg\",\"products\\/17.jpg\",\"products\\/20-1.jpg\",\"products\\/24-1.jpg\"]'),(126,2,NULL,NULL,10,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/11.jpg\",\"products\\/16-5.jpg\",\"products\\/21.jpg\"]'),(128,8,NULL,NULL,22,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16.jpg\",\"products\\/23-1.jpg\"]'),(130,5,NULL,NULL,16,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/11-1.jpg\",\"products\\/18-1.jpg\"]'),(132,8,NULL,NULL,13,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/4-1.jpg\",\"products\\/8.jpg\",\"products\\/11-1.jpg\",\"products\\/16-2.jpg\"]'),(136,9,NULL,NULL,19,2.00,'Good app, good backup service and support. Good documentation.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2-1.jpg\",\"products\\/9-1.jpg\",\"products\\/18-1.jpg\"]'),(137,6,NULL,NULL,22,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/14.jpg\",\"products\\/16-4.jpg\",\"products\\/20.jpg\"]'),(139,1,NULL,NULL,9,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1.jpg\",\"products\\/15.jpg\",\"products\\/16-5.jpg\"]'),(143,6,NULL,NULL,24,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/3-1.jpg\",\"products\\/9-1.jpg\",\"products\\/13-1.jpg\",\"products\\/23-1.jpg\"]'),(144,2,NULL,NULL,5,3.00,'Clean & perfect source code','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/3-1.jpg\"]'),(145,4,NULL,NULL,6,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/4.jpg\",\"products\\/12.jpg\"]'),(146,4,NULL,NULL,13,1.00,'Best ecommerce CMS online store!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1.jpg\",\"products\\/16.jpg\"]'),(148,5,NULL,NULL,21,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/18-1.jpg\"]'),(149,1,NULL,NULL,3,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16.jpg\",\"products\\/17-1.jpg\",\"products\\/22.jpg\"]'),(151,8,NULL,NULL,18,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/15-1.jpg\",\"products\\/16-5.jpg\"]'),(152,3,NULL,NULL,9,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2-1.jpg\",\"products\\/3.jpg\",\"products\\/8-1.jpg\",\"products\\/10.jpg\"]'),(156,8,NULL,NULL,6,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/11-1.jpg\",\"products\\/11.jpg\",\"products\\/14.jpg\",\"products\\/22-1.jpg\"]'),(157,2,NULL,NULL,4,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/5.jpg\",\"products\\/10-1.jpg\",\"products\\/17-1.jpg\"]'),(158,6,NULL,NULL,21,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/3-1.jpg\",\"products\\/16-2.jpg\",\"products\\/24.jpg\"]'),(159,1,NULL,NULL,20,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/6.jpg\",\"products\\/16-2.jpg\",\"products\\/20-1.jpg\",\"products\\/21.jpg\"]'),(163,4,NULL,NULL,21,5.00,'Good app, good backup service and support. Good documentation.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-2.jpg\",\"products\\/17.jpg\"]'),(166,6,NULL,NULL,19,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/6.jpg\",\"products\\/16.jpg\",\"products\\/24-1.jpg\"]'),(167,4,NULL,NULL,8,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/11.jpg\"]'),(168,5,NULL,NULL,10,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/9.jpg\",\"products\\/13.jpg\",\"products\\/16-5.jpg\",\"products\\/23.jpg\"]'),(172,7,NULL,NULL,19,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/22-1.jpg\"]'),(173,6,NULL,NULL,2,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1.jpg\",\"products\\/16-6.jpg\",\"products\\/23-1.jpg\"]'),(174,6,NULL,NULL,23,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2.jpg\",\"products\\/5-1.jpg\",\"products\\/18-1.jpg\"]'),(175,5,NULL,NULL,13,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1.jpg\",\"products\\/12-1.jpg\",\"products\\/19.jpg\"]'),(181,10,NULL,NULL,19,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/4-1.jpg\",\"products\\/23.jpg\"]'),(182,6,NULL,NULL,14,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/6-1.jpg\",\"products\\/10-1.jpg\",\"products\\/16-2.jpg\",\"products\\/20.jpg\"]'),(185,1,NULL,NULL,4,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/13.jpg\",\"products\\/16-2.jpg\",\"products\\/16-6.jpg\"]'),(186,5,NULL,NULL,6,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2.jpg\"]'),(187,2,NULL,NULL,19,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-4.jpg\"]'),(188,8,NULL,NULL,24,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/7-1.jpg\",\"products\\/8-1.jpg\",\"products\\/12-1.jpg\"]'),(193,9,NULL,NULL,16,1.00,'Good app, good backup service and support. Good documentation.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/10-1.jpg\",\"products\\/13-1.jpg\",\"products\\/15.jpg\"]'),(195,8,NULL,NULL,12,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/9-1.jpg\",\"products\\/10.jpg\",\"products\\/11-1.jpg\",\"products\\/14.jpg\"]'),(197,5,NULL,NULL,24,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/11.jpg\",\"products\\/12.jpg\",\"products\\/14-1.jpg\",\"products\\/22.jpg\"]'),(200,3,NULL,NULL,11,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/6.jpg\",\"products\\/12.jpg\",\"products\\/16.jpg\"]'),(201,5,NULL,NULL,18,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/8.jpg\",\"products\\/16-6.jpg\",\"products\\/22.jpg\"]'),(204,6,NULL,NULL,12,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1.jpg\",\"products\\/16-4.jpg\",\"products\\/23-1.jpg\"]'),(207,8,NULL,NULL,4,1.00,'Clean & perfect source code','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/6.jpg\",\"products\\/15-1.jpg\"]'),(208,4,NULL,NULL,22,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/12-1.jpg\"]'),(211,4,NULL,NULL,1,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1-1.jpg\",\"products\\/7-1.jpg\",\"products\\/9-1.jpg\",\"products\\/15.jpg\"]'),(212,2,NULL,NULL,3,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/3.jpg\",\"products\\/18.jpg\",\"products\\/24-1.jpg\"]'),(213,7,NULL,NULL,8,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-2.jpg\",\"products\\/16.jpg\",\"products\\/19.jpg\"]'),(216,7,NULL,NULL,18,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2-1.jpg\",\"products\\/6.jpg\",\"products\\/11-1.jpg\",\"products\\/13.jpg\"]'),(218,6,NULL,NULL,18,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/6.jpg\"]'),(220,10,NULL,NULL,7,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/8.jpg\"]'),(222,2,NULL,NULL,8,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/9.jpg\",\"products\\/14-1.jpg\"]'),(225,10,NULL,NULL,18,5.00,'Good app, good backup service and support. Good documentation.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/13.jpg\",\"products\\/16-6.jpg\",\"products\\/19.jpg\"]'),(229,8,NULL,NULL,10,5.00,'Good app, good backup service and support. Good documentation.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/4.jpg\",\"products\\/7-1.jpg\"]'),(236,9,NULL,NULL,13,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/17-1.jpg\"]'),(243,2,NULL,NULL,13,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1-1.jpg\",\"products\\/5.jpg\",\"products\\/16-5.jpg\"]'),(244,3,NULL,NULL,22,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/8.jpg\",\"products\\/13-1.jpg\",\"products\\/17.jpg\"]'),(245,4,NULL,NULL,16,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/5.jpg\",\"products\\/15-1.jpg\",\"products\\/16.jpg\",\"products\\/19.jpg\"]'),(246,7,NULL,NULL,5,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/19-1.jpg\"]'),(247,5,NULL,NULL,23,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1.jpg\",\"products\\/23.jpg\"]'),(248,1,NULL,NULL,5,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/20.jpg\",\"products\\/23-1.jpg\"]'),(249,1,NULL,NULL,19,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/13-1.jpg\",\"products\\/14-1.jpg\"]'),(256,9,NULL,NULL,20,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/11.jpg\",\"products\\/16-6.jpg\",\"products\\/16.jpg\"]'),(257,5,NULL,NULL,19,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-2.jpg\",\"products\\/17-1.jpg\",\"products\\/20-1.jpg\",\"products\\/20.jpg\"]'),(258,5,NULL,NULL,9,4.00,'Clean & perfect source code','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2.jpg\",\"products\\/16-5.jpg\",\"products\\/21-1.jpg\"]'),(259,7,NULL,NULL,12,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/8-1.jpg\",\"products\\/8.jpg\",\"products\\/11-1.jpg\",\"products\\/22.jpg\"]'),(260,8,NULL,NULL,7,3.00,'Clean & perfect source code','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/8.jpg\",\"products\\/10-1.jpg\",\"products\\/16-2.jpg\",\"products\\/23.jpg\"]'),(261,3,NULL,NULL,19,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/6.jpg\",\"products\\/11-1.jpg\",\"products\\/17-1.jpg\"]'),(263,4,NULL,NULL,15,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/12-1.jpg\",\"products\\/14.jpg\",\"products\\/16-1.jpg\"]'),(265,4,NULL,NULL,23,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-2.jpg\",\"products\\/20.jpg\",\"products\\/23.jpg\"]'),(267,6,NULL,NULL,16,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/4.jpg\",\"products\\/16-3.jpg\",\"products\\/20.jpg\",\"products\\/24-1.jpg\"]'),(269,4,NULL,NULL,14,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/13-1.jpg\",\"products\\/17.jpg\"]'),(277,7,NULL,NULL,11,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/16-2.jpg\",\"products\\/16.jpg\"]'),(282,2,NULL,NULL,24,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/10.jpg\",\"products\\/12-1.jpg\",\"products\\/13.jpg\"]'),(288,7,NULL,NULL,3,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/4-1.jpg\",\"products\\/10.jpg\",\"products\\/13.jpg\",\"products\\/21-1.jpg\"]'),(292,7,NULL,NULL,16,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-1.jpg\",\"products\\/16-3.jpg\",\"products\\/23.jpg\"]'),(299,10,NULL,NULL,17,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/4.jpg\",\"products\\/10-1.jpg\",\"products\\/12-1.jpg\"]'),(307,3,NULL,NULL,16,3.00,'Best ecommerce CMS online store!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/6-1.jpg\",\"products\\/9-1.jpg\",\"products\\/14.jpg\",\"products\\/16-4.jpg\"]'),(308,1,NULL,NULL,16,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/12.jpg\",\"products\\/24.jpg\"]'),(310,9,NULL,NULL,3,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/6-1.jpg\",\"products\\/23-1.jpg\"]'),(313,7,NULL,NULL,22,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/14-1.jpg\",\"products\\/16-2.jpg\"]'),(314,7,NULL,NULL,23,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/9.jpg\"]'),(317,2,NULL,NULL,1,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2-1.jpg\",\"products\\/24-1.jpg\",\"products\\/24.jpg\"]'),(318,1,NULL,NULL,22,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/7.jpg\",\"products\\/16-2.jpg\",\"products\\/22.jpg\",\"products\\/23.jpg\"]'),(320,4,NULL,NULL,10,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2-1.jpg\",\"products\\/4.jpg\"]'),(324,8,NULL,NULL,1,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/8-1.jpg\",\"products\\/17.jpg\"]'),(326,3,NULL,NULL,6,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-1.jpg\",\"products\\/16-3.jpg\",\"products\\/18-1.jpg\"]'),(327,9,NULL,NULL,4,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/12-1.jpg\"]'),(330,8,NULL,NULL,20,5.00,'Good app, good backup service and support. Good documentation.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-3.jpg\",\"products\\/19-1.jpg\"]'),(336,8,NULL,NULL,16,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/6-1.jpg\",\"products\\/12.jpg\"]'),(338,1,NULL,NULL,24,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2.jpg\",\"products\\/9-1.jpg\",\"products\\/22.jpg\"]'),(339,1,NULL,NULL,11,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/8.jpg\",\"products\\/9-1.jpg\",\"products\\/16-2.jpg\"]'),(340,6,NULL,NULL,1,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-6.jpg\"]'),(371,9,NULL,NULL,6,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/6.jpg\",\"products\\/16-2.jpg\",\"products\\/21.jpg\"]'),(384,6,NULL,NULL,8,5.00,'Best ecommerce CMS online store!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/13-1.jpg\"]'),(385,7,NULL,NULL,20,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/18.jpg\"]'),(386,2,NULL,NULL,6,3.00,'Best ecommerce CMS online store!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-2.jpg\"]'),(389,1,NULL,NULL,7,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/21.jpg\"]'),(390,2,NULL,NULL,2,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/9-1.jpg\",\"products\\/10-1.jpg\",\"products\\/15.jpg\"]'),(399,2,NULL,NULL,7,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/14.jpg\"]'),(405,4,NULL,NULL,3,1.00,'Clean & perfect source code','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/6.jpg\"]'),(420,2,NULL,NULL,15,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/3.jpg\",\"products\\/12-1.jpg\",\"products\\/18.jpg\"]'),(429,3,NULL,NULL,4,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/17.jpg\",\"products\\/20.jpg\",\"products\\/24.jpg\"]'),(442,8,NULL,NULL,2,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-2.jpg\",\"products\\/20-1.jpg\"]'),(443,3,NULL,NULL,7,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/5-1.jpg\",\"products\\/24-1.jpg\"]'),(448,6,NULL,NULL,6,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/13.jpg\",\"products\\/23.jpg\"]'),(450,3,NULL,NULL,23,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16.jpg\",\"products\\/19-1.jpg\",\"products\\/21-1.jpg\",\"products\\/23-1.jpg\"]'),(451,8,NULL,NULL,15,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/21.jpg\"]'),(453,1,NULL,NULL,17,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2-1.jpg\",\"products\\/16-2.jpg\"]'),(459,4,NULL,NULL,19,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2-1.jpg\",\"products\\/9.jpg\",\"products\\/14.jpg\",\"products\\/15-1.jpg\"]'),(460,6,NULL,NULL,20,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/9.jpg\",\"products\\/19.jpg\"]'),(466,5,NULL,NULL,14,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/4.jpg\",\"products\\/15.jpg\",\"products\\/16-2.jpg\"]'),(468,5,NULL,NULL,12,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/14-1.jpg\",\"products\\/17.jpg\"]'),(473,7,NULL,NULL,7,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-4.jpg\"]'),(479,4,NULL,NULL,11,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-4.jpg\",\"products\\/17.jpg\"]'),(480,10,NULL,NULL,14,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/7.jpg\"]'),(482,7,NULL,NULL,14,5.00,'Clean & perfect source code','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/13.jpg\",\"products\\/16-2.jpg\",\"products\\/16.jpg\"]'),(490,3,NULL,NULL,8,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/13.jpg\",\"products\\/14-1.jpg\",\"products\\/20-1.jpg\",\"products\\/24-1.jpg\"]'),(496,2,NULL,NULL,9,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/10-1.jpg\",\"products\\/10.jpg\",\"products\\/16-3.jpg\"]'),(500,4,NULL,NULL,12,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/15-1.jpg\"]'),(506,6,NULL,NULL,7,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1-1.jpg\",\"products\\/2-1.jpg\",\"products\\/7.jpg\"]'),(521,9,NULL,NULL,23,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-4.jpg\",\"products\\/16-6.jpg\",\"products\\/22.jpg\"]'),(531,3,NULL,NULL,5,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2.jpg\",\"products\\/14-1.jpg\",\"products\\/20.jpg\",\"products\\/22-1.jpg\"]'),(535,6,NULL,NULL,3,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1.jpg\",\"products\\/17-1.jpg\"]'),(544,10,NULL,NULL,13,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1.jpg\",\"products\\/3-1.jpg\",\"products\\/11.jpg\",\"products\\/19-1.jpg\"]'),(545,2,NULL,NULL,14,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/10-1.jpg\",\"products\\/16-3.jpg\"]'),(552,9,NULL,NULL,12,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1.jpg\",\"products\\/10.jpg\",\"products\\/23-1.jpg\"]'),(575,10,NULL,NULL,4,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/14.jpg\"]'),(582,3,NULL,NULL,24,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/6-1.jpg\",\"products\\/11.jpg\",\"products\\/15-1.jpg\",\"products\\/23-1.jpg\"]'),(594,10,NULL,NULL,20,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/7-1.jpg\",\"products\\/16-5.jpg\"]'),(599,9,NULL,NULL,8,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/10.jpg\",\"products\\/19.jpg\"]'),(603,1,NULL,NULL,14,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1-1.jpg\",\"products\\/3-1.jpg\"]'),(615,10,NULL,NULL,1,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/21-1.jpg\",\"products\\/22.jpg\"]'),(656,4,NULL,NULL,4,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/13-1.jpg\",\"products\\/14.jpg\",\"products\\/19.jpg\"]'),(697,3,NULL,NULL,13,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-1.jpg\",\"products\\/16-5.jpg\",\"products\\/20-1.jpg\"]'),(732,5,NULL,NULL,1,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/17-1.jpg\"]'),(771,5,NULL,NULL,11,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/1.jpg\",\"products\\/7-1.jpg\",\"products\\/23-1.jpg\"]'),(834,3,NULL,NULL,17,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/6.jpg\"]'),(843,5,NULL,NULL,15,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-3.jpg\"]'),(849,1,NULL,NULL,6,5.00,'Best ecommerce CMS online store!','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/2-1.jpg\",\"products\\/9.jpg\",\"products\\/14-1.jpg\"]'),(850,10,NULL,NULL,3,3.00,'Clean & perfect source code','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/5-1.jpg\",\"products\\/18-1.jpg\"]'),(902,7,NULL,NULL,1,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/9-1.jpg\",\"products\\/11-1.jpg\"]'),(971,5,NULL,NULL,22,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/16-6.jpg\",\"products\\/17.jpg\",\"products\\/19-1.jpg\"]'),(986,3,NULL,NULL,12,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-09-29 08:38:12','2024-09-29 08:38:12','[\"products\\/4-1.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-09-29 08:38:13','2024-09-29 08:38:13');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2024-09-29 08:38:13','2024-09-29 08:38:13'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2024-09-29 08:38:13','2024-09-29 08:38:13'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2024-09-29 08:38:13','2024-09-29 08:38:13');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes`
--

DROP TABLE IF EXISTS `ec_specification_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes`
--

LOCK TABLES `ec_specification_attributes` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes` VALUES (1,1,'Height','text',NULL,NULL,'2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,NULL),(2,1,'Width','text',NULL,NULL,'2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,NULL),(3,1,'Weight','text',NULL,NULL,'2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,NULL),(4,2,'Power','text',NULL,NULL,'2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,NULL),(5,2,'Speed','text',NULL,NULL,'2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,NULL),(6,3,'Battery Life','text',NULL,NULL,'2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,NULL),(7,4,'Screen Size','text',NULL,NULL,'2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,NULL),(8,4,'Resolution','select','[\"1920x1080\",\"2560x1440\",\"3840x2160\"]',NULL,'2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes_translations`
--

DROP TABLE IF EXISTS `ec_specification_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_attributes_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes_translations`
--

LOCK TABLES `ec_specification_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups`
--

DROP TABLE IF EXISTS `ec_specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups`
--

LOCK TABLES `ec_specification_groups` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups` DISABLE KEYS */;
INSERT INTO `ec_specification_groups` VALUES (1,'Dimensions',NULL,'2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,NULL),(2,'Performance',NULL,'2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,NULL),(3,'Battery',NULL,'2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,NULL),(4,'Display',NULL,'2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_table_group`
--

DROP TABLE IF EXISTS `ec_specification_table_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint unsigned NOT NULL,
  `group_id` bigint unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`table_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_table_group`
--

LOCK TABLES `ec_specification_table_group` WRITE;
/*!40000 ALTER TABLE `ec_specification_table_group` DISABLE KEYS */;
INSERT INTO `ec_specification_table_group` VALUES (1,1,0),(1,2,0),(2,3,0),(2,4,0);
/*!40000 ALTER TABLE `ec_specification_table_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables`
--

DROP TABLE IF EXISTS `ec_specification_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables`
--

LOCK TABLES `ec_specification_tables` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables` DISABLE KEYS */;
INSERT INTO `ec_specification_tables` VALUES (1,'General Specification',NULL,'2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,NULL),(2,'Technical Specification',NULL,'2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Nest','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2024-09-29 08:38:13','2024-09-29 08:38:13',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-09-29 08:38:09','2024-09-29 08:38:09'),(2,'None',0.000000,2,'published','2024-09-29 08:38:09','2024-09-29 08:38:09'),(3,'Import Tax',15.000000,3,'published','2024-09-29 08:38:09','2024-09-29 08:38:09');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2024-09-29 08:38:01','2024-09-29 08:38:01',NULL),(2,'Payment',1,'published','2024-09-29 08:38:01','2024-09-29 08:38:01',NULL),(3,'Order &amp; Returns',2,'published','2024-09-29 08:38:01','2024-09-29 08:38:01',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-09-29 08:38:01','2024-09-29 08:38:01'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-09-29 08:38:01','2024-09-29 08:38:01'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-09-29 08:38:01','2024-09-29 08:38:01'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-09-29 08:38:01','2024-09-29 08:38:01'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-09-29 08:38:01','2024-09-29 08:38:01'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-09-29 08:38:01','2024-09-29 08:38:01'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-09-29 08:38:01','2024-09-29 08:38:01'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-09-29 08:38:01','2024-09-29 08:38:01'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-09-29 08:38:01','2024-09-29 08:38:01'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-09-29 08:38:01','2024-09-29 08:38:01');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','c90526612787de3e3aa33106baee61db',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','5d311c4a74ebd8dabb5e918f0e55c7f7',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','3e3fbb4cc1bb48c696071202223efcac',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','b5a9411205fb292a8fd599a7f4fb3215',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'en_US','c5b562dabe59ee71fb3c7439937dcfbf',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'en_US','4d20059d1cf1fb4ee2f643ad02de24a3',6,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(7,'en_US','428fc99fe462dcd2dd00b70da2284b1c',7,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(8,'en_US','4806c64cdc6edcec1c85395401c5ae2e',1,'Botble\\Menu\\Models\\MenuLocation'),(9,'en_US','a1a34a3ee09d9ace54eb1627f37ddd73',1,'Botble\\Menu\\Models\\Menu'),(10,'en_US','5cf9d7189bdc979fc21fc6f0cce46e3d',2,'Botble\\Menu\\Models\\MenuLocation'),(11,'en_US','ec49a71442f00eaae7f344fd6451aacd',2,'Botble\\Menu\\Models\\Menu'),(12,'en_US','2dd7d005aff5b30efe76ba70a34004e3',3,'Botble\\Menu\\Models\\Menu'),(13,'en_US','d052eb8267ae0113213fccf652012a64',4,'Botble\\Menu\\Models\\Menu'),(14,'en_US','6df23d5862167b65b95f63b0a6a0534a',5,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'icon-1','icon-1',1,'image/png',5327,'product-categories/icon-1.png','[]','2024-09-29 08:38:01','2024-09-29 08:38:01',NULL,'public'),(2,0,'icon-10','icon-10',1,'image/png',5327,'product-categories/icon-10.png','[]','2024-09-29 08:38:01','2024-09-29 08:38:01',NULL,'public'),(3,0,'icon-11','icon-11',1,'image/png',5327,'product-categories/icon-11.png','[]','2024-09-29 08:38:01','2024-09-29 08:38:01',NULL,'public'),(4,0,'icon-12','icon-12',1,'image/png',5327,'product-categories/icon-12.png','[]','2024-09-29 08:38:01','2024-09-29 08:38:01',NULL,'public'),(5,0,'icon-13','icon-13',1,'image/png',5327,'product-categories/icon-13.png','[]','2024-09-29 08:38:01','2024-09-29 08:38:01',NULL,'public'),(6,0,'icon-14','icon-14',1,'image/png',5327,'product-categories/icon-14.png','[]','2024-09-29 08:38:01','2024-09-29 08:38:01',NULL,'public'),(7,0,'icon-2','icon-2',1,'image/png',5327,'product-categories/icon-2.png','[]','2024-09-29 08:38:01','2024-09-29 08:38:01',NULL,'public'),(8,0,'icon-3','icon-3',1,'image/png',5327,'product-categories/icon-3.png','[]','2024-09-29 08:38:01','2024-09-29 08:38:01',NULL,'public'),(9,0,'icon-4','icon-4',1,'image/png',5327,'product-categories/icon-4.png','[]','2024-09-29 08:38:01','2024-09-29 08:38:01',NULL,'public'),(10,0,'icon-5','icon-5',1,'image/png',5327,'product-categories/icon-5.png','[]','2024-09-29 08:38:02','2024-09-29 08:38:02',NULL,'public'),(11,0,'icon-6','icon-6',1,'image/png',5327,'product-categories/icon-6.png','[]','2024-09-29 08:38:02','2024-09-29 08:38:02',NULL,'public'),(12,0,'icon-7','icon-7',1,'image/png',5327,'product-categories/icon-7.png','[]','2024-09-29 08:38:02','2024-09-29 08:38:02',NULL,'public'),(13,0,'icon-8','icon-8',1,'image/png',5327,'product-categories/icon-8.png','[]','2024-09-29 08:38:02','2024-09-29 08:38:02',NULL,'public'),(14,0,'icon-9','icon-9',1,'image/png',5327,'product-categories/icon-9.png','[]','2024-09-29 08:38:02','2024-09-29 08:38:02',NULL,'public'),(15,0,'image-1','image-1',1,'image/png',5327,'product-categories/image-1.png','[]','2024-09-29 08:38:02','2024-09-29 08:38:02',NULL,'public'),(16,0,'image-10','image-10',1,'image/png',5327,'product-categories/image-10.png','[]','2024-09-29 08:38:02','2024-09-29 08:38:02',NULL,'public'),(17,0,'image-11','image-11',1,'image/png',5327,'product-categories/image-11.png','[]','2024-09-29 08:38:02','2024-09-29 08:38:02',NULL,'public'),(18,0,'image-12','image-12',1,'image/png',5327,'product-categories/image-12.png','[]','2024-09-29 08:38:02','2024-09-29 08:38:02',NULL,'public'),(19,0,'image-13','image-13',1,'image/png',5327,'product-categories/image-13.png','[]','2024-09-29 08:38:02','2024-09-29 08:38:02',NULL,'public'),(20,0,'image-14','image-14',1,'image/png',5327,'product-categories/image-14.png','[]','2024-09-29 08:38:02','2024-09-29 08:38:02',NULL,'public'),(21,0,'image-15','image-15',1,'image/png',5327,'product-categories/image-15.png','[]','2024-09-29 08:38:02','2024-09-29 08:38:02',NULL,'public'),(22,0,'image-2','image-2',1,'image/png',5327,'product-categories/image-2.png','[]','2024-09-29 08:38:02','2024-09-29 08:38:02',NULL,'public'),(23,0,'image-3','image-3',1,'image/png',5327,'product-categories/image-3.png','[]','2024-09-29 08:38:02','2024-09-29 08:38:02',NULL,'public'),(24,0,'image-4','image-4',1,'image/png',5327,'product-categories/image-4.png','[]','2024-09-29 08:38:02','2024-09-29 08:38:02',NULL,'public'),(25,0,'image-5','image-5',1,'image/png',5327,'product-categories/image-5.png','[]','2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'public'),(26,0,'image-6','image-6',1,'image/png',5327,'product-categories/image-6.png','[]','2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'public'),(27,0,'image-7','image-7',1,'image/png',5327,'product-categories/image-7.png','[]','2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'public'),(28,0,'image-8','image-8',1,'image/png',5327,'product-categories/image-8.png','[]','2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'public'),(29,0,'image-9','image-9',1,'image/png',5327,'product-categories/image-9.png','[]','2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'public'),(30,0,'1-1','1-1',2,'image/jpeg',9803,'products/1-1.jpg','[]','2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'public'),(31,0,'1','1',2,'image/jpeg',9803,'products/1.jpg','[]','2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'public'),(32,0,'10-1','10-1',2,'image/jpeg',9803,'products/10-1.jpg','[]','2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'public'),(33,0,'10','10',2,'image/jpeg',9803,'products/10.jpg','[]','2024-09-29 08:38:03','2024-09-29 08:38:03',NULL,'public'),(34,0,'11-1','11-1',2,'image/jpeg',9803,'products/11-1.jpg','[]','2024-09-29 08:38:04','2024-09-29 08:38:04',NULL,'public'),(35,0,'11','11',2,'image/jpeg',9803,'products/11.jpg','[]','2024-09-29 08:38:04','2024-09-29 08:38:04',NULL,'public'),(36,0,'12-1','12-1',2,'image/jpeg',9803,'products/12-1.jpg','[]','2024-09-29 08:38:04','2024-09-29 08:38:04',NULL,'public'),(37,0,'12','12',2,'image/jpeg',9803,'products/12.jpg','[]','2024-09-29 08:38:04','2024-09-29 08:38:04',NULL,'public'),(38,0,'13-1','13-1',2,'image/jpeg',9803,'products/13-1.jpg','[]','2024-09-29 08:38:04','2024-09-29 08:38:04',NULL,'public'),(39,0,'13','13',2,'image/jpeg',9803,'products/13.jpg','[]','2024-09-29 08:38:04','2024-09-29 08:38:04',NULL,'public'),(40,0,'14-1','14-1',2,'image/jpeg',9803,'products/14-1.jpg','[]','2024-09-29 08:38:04','2024-09-29 08:38:04',NULL,'public'),(41,0,'14','14',2,'image/jpeg',9803,'products/14.jpg','[]','2024-09-29 08:38:04','2024-09-29 08:38:04',NULL,'public'),(42,0,'15-1','15-1',2,'image/jpeg',9803,'products/15-1.jpg','[]','2024-09-29 08:38:04','2024-09-29 08:38:04',NULL,'public'),(43,0,'15','15',2,'image/jpeg',9803,'products/15.jpg','[]','2024-09-29 08:38:04','2024-09-29 08:38:04',NULL,'public'),(44,0,'16-1','16-1',2,'image/jpeg',9803,'products/16-1.jpg','[]','2024-09-29 08:38:04','2024-09-29 08:38:04',NULL,'public'),(45,0,'16-2','16-2',2,'image/jpeg',9803,'products/16-2.jpg','[]','2024-09-29 08:38:04','2024-09-29 08:38:04',NULL,'public'),(46,0,'16-3','16-3',2,'image/jpeg',9803,'products/16-3.jpg','[]','2024-09-29 08:38:05','2024-09-29 08:38:05',NULL,'public'),(47,0,'16-4','16-4',2,'image/jpeg',9803,'products/16-4.jpg','[]','2024-09-29 08:38:05','2024-09-29 08:38:05',NULL,'public'),(48,0,'16-5','16-5',2,'image/jpeg',9803,'products/16-5.jpg','[]','2024-09-29 08:38:05','2024-09-29 08:38:05',NULL,'public'),(49,0,'16-6','16-6',2,'image/jpeg',9803,'products/16-6.jpg','[]','2024-09-29 08:38:05','2024-09-29 08:38:05',NULL,'public'),(50,0,'16','16',2,'image/jpeg',9803,'products/16.jpg','[]','2024-09-29 08:38:05','2024-09-29 08:38:05',NULL,'public'),(51,0,'17-1','17-1',2,'image/jpeg',9803,'products/17-1.jpg','[]','2024-09-29 08:38:05','2024-09-29 08:38:05',NULL,'public'),(52,0,'17','17',2,'image/jpeg',9803,'products/17.jpg','[]','2024-09-29 08:38:05','2024-09-29 08:38:05',NULL,'public'),(53,0,'18-1','18-1',2,'image/jpeg',9803,'products/18-1.jpg','[]','2024-09-29 08:38:05','2024-09-29 08:38:05',NULL,'public'),(54,0,'18','18',2,'image/jpeg',9803,'products/18.jpg','[]','2024-09-29 08:38:05','2024-09-29 08:38:05',NULL,'public'),(55,0,'19-1','19-1',2,'image/jpeg',9803,'products/19-1.jpg','[]','2024-09-29 08:38:05','2024-09-29 08:38:05',NULL,'public'),(56,0,'19','19',2,'image/jpeg',9803,'products/19.jpg','[]','2024-09-29 08:38:05','2024-09-29 08:38:05',NULL,'public'),(57,0,'2-1','2-1',2,'image/jpeg',9803,'products/2-1.jpg','[]','2024-09-29 08:38:05','2024-09-29 08:38:05',NULL,'public'),(58,0,'2','2',2,'image/jpeg',9803,'products/2.jpg','[]','2024-09-29 08:38:05','2024-09-29 08:38:05',NULL,'public'),(59,0,'20-1','20-1',2,'image/jpeg',9803,'products/20-1.jpg','[]','2024-09-29 08:38:06','2024-09-29 08:38:06',NULL,'public'),(60,0,'20','20',2,'image/jpeg',9803,'products/20.jpg','[]','2024-09-29 08:38:06','2024-09-29 08:38:06',NULL,'public'),(61,0,'21-1','21-1',2,'image/jpeg',9803,'products/21-1.jpg','[]','2024-09-29 08:38:06','2024-09-29 08:38:06',NULL,'public'),(62,0,'21','21',2,'image/jpeg',9803,'products/21.jpg','[]','2024-09-29 08:38:06','2024-09-29 08:38:06',NULL,'public'),(63,0,'22-1','22-1',2,'image/jpeg',9803,'products/22-1.jpg','[]','2024-09-29 08:38:06','2024-09-29 08:38:06',NULL,'public'),(64,0,'22','22',2,'image/jpeg',9803,'products/22.jpg','[]','2024-09-29 08:38:06','2024-09-29 08:38:06',NULL,'public'),(65,0,'23-1','23-1',2,'image/jpeg',9803,'products/23-1.jpg','[]','2024-09-29 08:38:06','2024-09-29 08:38:06',NULL,'public'),(66,0,'23','23',2,'image/jpeg',9803,'products/23.jpg','[]','2024-09-29 08:38:06','2024-09-29 08:38:06',NULL,'public'),(67,0,'24-1','24-1',2,'image/jpeg',9803,'products/24-1.jpg','[]','2024-09-29 08:38:06','2024-09-29 08:38:06',NULL,'public'),(68,0,'24','24',2,'image/jpeg',9803,'products/24.jpg','[]','2024-09-29 08:38:06','2024-09-29 08:38:06',NULL,'public'),(69,0,'3-1','3-1',2,'image/jpeg',9803,'products/3-1.jpg','[]','2024-09-29 08:38:06','2024-09-29 08:38:06',NULL,'public'),(70,0,'3','3',2,'image/jpeg',9803,'products/3.jpg','[]','2024-09-29 08:38:06','2024-09-29 08:38:06',NULL,'public'),(71,0,'4-1','4-1',2,'image/jpeg',9803,'products/4-1.jpg','[]','2024-09-29 08:38:07','2024-09-29 08:38:07',NULL,'public'),(72,0,'4','4',2,'image/jpeg',9803,'products/4.jpg','[]','2024-09-29 08:38:07','2024-09-29 08:38:07',NULL,'public'),(73,0,'5-1','5-1',2,'image/jpeg',9803,'products/5-1.jpg','[]','2024-09-29 08:38:07','2024-09-29 08:38:07',NULL,'public'),(74,0,'5','5',2,'image/jpeg',9803,'products/5.jpg','[]','2024-09-29 08:38:07','2024-09-29 08:38:07',NULL,'public'),(75,0,'6-1','6-1',2,'image/jpeg',9803,'products/6-1.jpg','[]','2024-09-29 08:38:07','2024-09-29 08:38:07',NULL,'public'),(76,0,'6','6',2,'image/jpeg',9803,'products/6.jpg','[]','2024-09-29 08:38:07','2024-09-29 08:38:07',NULL,'public'),(77,0,'7-1','7-1',2,'image/jpeg',9803,'products/7-1.jpg','[]','2024-09-29 08:38:07','2024-09-29 08:38:07',NULL,'public'),(78,0,'7','7',2,'image/jpeg',9803,'products/7.jpg','[]','2024-09-29 08:38:07','2024-09-29 08:38:07',NULL,'public'),(79,0,'8-1','8-1',2,'image/jpeg',9803,'products/8-1.jpg','[]','2024-09-29 08:38:07','2024-09-29 08:38:07',NULL,'public'),(80,0,'8','8',2,'image/jpeg',9803,'products/8.jpg','[]','2024-09-29 08:38:07','2024-09-29 08:38:07',NULL,'public'),(81,0,'9-1','9-1',2,'image/jpeg',9803,'products/9-1.jpg','[]','2024-09-29 08:38:07','2024-09-29 08:38:07',NULL,'public'),(82,0,'9','9',2,'image/jpeg',9803,'products/9.jpg','[]','2024-09-29 08:38:07','2024-09-29 08:38:07',NULL,'public'),(83,0,'1','1',3,'image/jpeg',9803,'customers/1.jpg','[]','2024-09-29 08:38:09','2024-09-29 08:38:09',NULL,'public'),(84,0,'10','10',3,'image/jpeg',9803,'customers/10.jpg','[]','2024-09-29 08:38:09','2024-09-29 08:38:09',NULL,'public'),(85,0,'2','2',3,'image/jpeg',9803,'customers/2.jpg','[]','2024-09-29 08:38:09','2024-09-29 08:38:09',NULL,'public'),(86,0,'3','3',3,'image/jpeg',9803,'customers/3.jpg','[]','2024-09-29 08:38:09','2024-09-29 08:38:09',NULL,'public'),(87,0,'4','4',3,'image/jpeg',9803,'customers/4.jpg','[]','2024-09-29 08:38:09','2024-09-29 08:38:09',NULL,'public'),(88,0,'5','5',3,'image/jpeg',9803,'customers/5.jpg','[]','2024-09-29 08:38:09','2024-09-29 08:38:09',NULL,'public'),(89,0,'6','6',3,'image/jpeg',9803,'customers/6.jpg','[]','2024-09-29 08:38:10','2024-09-29 08:38:10',NULL,'public'),(90,0,'7','7',3,'image/jpeg',9803,'customers/7.jpg','[]','2024-09-29 08:38:10','2024-09-29 08:38:10',NULL,'public'),(91,0,'8','8',3,'image/jpeg',9803,'customers/8.jpg','[]','2024-09-29 08:38:10','2024-09-29 08:38:10',NULL,'public'),(92,0,'9','9',3,'image/jpeg',9803,'customers/9.jpg','[]','2024-09-29 08:38:10','2024-09-29 08:38:10',NULL,'public'),(93,0,'1','1',4,'image/png',17727,'flash-sales/1.png','[]','2024-09-29 08:38:13','2024-09-29 08:38:13',NULL,'public'),(94,0,'2','2',4,'image/png',12278,'flash-sales/2.png','[]','2024-09-29 08:38:13','2024-09-29 08:38:13',NULL,'public'),(95,0,'3','3',4,'image/png',12278,'flash-sales/3.png','[]','2024-09-29 08:38:13','2024-09-29 08:38:13',NULL,'public'),(96,0,'4','4',4,'image/png',12278,'flash-sales/4.png','[]','2024-09-29 08:38:13','2024-09-29 08:38:13',NULL,'public'),(97,0,'5','5',4,'image/png',12278,'flash-sales/5.png','[]','2024-09-29 08:38:13','2024-09-29 08:38:13',NULL,'public'),(98,0,'1-1','1-1',5,'image/png',28526,'sliders/1-1.png','[]','2024-09-29 08:38:13','2024-09-29 08:38:13',NULL,'public'),(99,0,'1-2','1-2',5,'image/png',28526,'sliders/1-2.png','[]','2024-09-29 08:38:13','2024-09-29 08:38:13',NULL,'public'),(100,0,'2-1','2-1',5,'image/png',15581,'sliders/2-1.png','[]','2024-09-29 08:38:13','2024-09-29 08:38:13',NULL,'public'),(101,0,'2-2','2-2',5,'image/png',15581,'sliders/2-2.png','[]','2024-09-29 08:38:14','2024-09-29 08:38:14',NULL,'public'),(102,0,'3-1','3-1',5,'image/png',28526,'sliders/3-1.png','[]','2024-09-29 08:38:14','2024-09-29 08:38:14',NULL,'public'),(103,0,'3-2','3-2',5,'image/png',28526,'sliders/3-2.png','[]','2024-09-29 08:38:14','2024-09-29 08:38:14',NULL,'public'),(104,0,'4-1','4-1',5,'image/png',28526,'sliders/4-1.png','[]','2024-09-29 08:38:14','2024-09-29 08:38:14',NULL,'public'),(105,0,'4-2','4-2',5,'image/png',28526,'sliders/4-2.png','[]','2024-09-29 08:38:14','2024-09-29 08:38:14',NULL,'public'),(106,0,'5-1','5-1',5,'image/png',23916,'sliders/5-1.png','[]','2024-09-29 08:38:14','2024-09-29 08:38:14',NULL,'public'),(107,0,'5-2','5-2',5,'image/png',23916,'sliders/5-2.png','[]','2024-09-29 08:38:15','2024-09-29 08:38:15',NULL,'public'),(108,0,'banner-1','banner-1',5,'image/png',212534,'sliders/banner-1.png','[]','2024-09-29 08:38:15','2024-09-29 08:38:15',NULL,'public'),(109,0,'thumbnail-1','thumbnail-1',5,'image/jpeg',9803,'sliders/thumbnail-1.jpg','[]','2024-09-29 08:38:15','2024-09-29 08:38:15',NULL,'public'),(110,0,'thumbnail-2','thumbnail-2',5,'image/jpeg',9803,'sliders/thumbnail-2.jpg','[]','2024-09-29 08:38:15','2024-09-29 08:38:15',NULL,'public'),(111,0,'thumbnail-3','thumbnail-3',5,'image/jpeg',9803,'sliders/thumbnail-3.jpg','[]','2024-09-29 08:38:15','2024-09-29 08:38:15',NULL,'public'),(112,0,'thumbnail-4','thumbnail-4',5,'image/jpeg',9803,'sliders/thumbnail-4.jpg','[]','2024-09-29 08:38:15','2024-09-29 08:38:15',NULL,'public'),(113,0,'thumbnail-5','thumbnail-5',5,'image/jpeg',9803,'sliders/thumbnail-5.jpg','[]','2024-09-29 08:38:15','2024-09-29 08:38:15',NULL,'public'),(114,0,'thumbnail-6','thumbnail-6',5,'image/jpeg',9803,'sliders/thumbnail-6.jpg','[]','2024-09-29 08:38:15','2024-09-29 08:38:15',NULL,'public'),(115,0,'1','1',6,'image/png',9803,'news/1.png','[]','2024-09-29 08:38:15','2024-09-29 08:38:15',NULL,'public'),(116,0,'10','10',6,'image/png',9803,'news/10.png','[]','2024-09-29 08:38:16','2024-09-29 08:38:16',NULL,'public'),(117,0,'11','11',6,'image/png',9803,'news/11.png','[]','2024-09-29 08:38:16','2024-09-29 08:38:16',NULL,'public'),(118,0,'2','2',6,'image/png',9803,'news/2.png','[]','2024-09-29 08:38:16','2024-09-29 08:38:16',NULL,'public'),(119,0,'3','3',6,'image/png',9803,'news/3.png','[]','2024-09-29 08:38:16','2024-09-29 08:38:16',NULL,'public'),(120,0,'4','4',6,'image/png',9803,'news/4.png','[]','2024-09-29 08:38:16','2024-09-29 08:38:16',NULL,'public'),(121,0,'5','5',6,'image/png',9803,'news/5.png','[]','2024-09-29 08:38:16','2024-09-29 08:38:16',NULL,'public'),(122,0,'6','6',6,'image/png',9803,'news/6.png','[]','2024-09-29 08:38:16','2024-09-29 08:38:16',NULL,'public'),(123,0,'7','7',6,'image/png',9803,'news/7.png','[]','2024-09-29 08:38:16','2024-09-29 08:38:16',NULL,'public'),(124,0,'8','8',6,'image/png',9803,'news/8.png','[]','2024-09-29 08:38:16','2024-09-29 08:38:16',NULL,'public'),(125,0,'9','9',6,'image/png',9803,'news/9.png','[]','2024-09-29 08:38:16','2024-09-29 08:38:16',NULL,'public'),(126,0,'app-store','app-store',7,'image/jpeg',1928,'general/app-store.jpg','[]','2024-09-29 08:38:17','2024-09-29 08:38:17',NULL,'public'),(127,0,'category-1','category-1',7,'image/png',1070,'general/category-1.png','[]','2024-09-29 08:38:17','2024-09-29 08:38:17',NULL,'public'),(128,0,'clock','clock',7,'image/png',4405,'general/clock.png','[]','2024-09-29 08:38:17','2024-09-29 08:38:17',NULL,'public'),(129,0,'credit-card','credit-card',7,'image/png',1455,'general/credit-card.png','[]','2024-09-29 08:38:17','2024-09-29 08:38:17',NULL,'public'),(130,0,'facebook','facebook',7,'image/png',804,'general/facebook.png','[]','2024-09-29 08:38:17','2024-09-29 08:38:17',NULL,'public'),(131,0,'favicon','favicon',7,'image/png',5383,'general/favicon.png','[]','2024-09-29 08:38:17','2024-09-29 08:38:17',NULL,'public'),(132,0,'google-play','google-play',7,'image/jpeg',1928,'general/google-play.jpg','[]','2024-09-29 08:38:17','2024-09-29 08:38:17',NULL,'public'),(133,0,'header-bg','header-bg',7,'image/png',36758,'general/header-bg.png','[]','2024-09-29 08:38:17','2024-09-29 08:38:17',NULL,'public'),(134,0,'home-6','home-6',7,'image/jpeg',103307,'general/home-6.jpeg','[]','2024-09-29 08:38:18','2024-09-29 08:38:18',NULL,'public'),(135,0,'icon-1','icon-1',7,'image/png',3143,'general/icon-1.png','[]','2024-09-29 08:38:18','2024-09-29 08:38:18',NULL,'public'),(136,0,'icon-2','icon-2',7,'image/png',5389,'general/icon-2.png','[]','2024-09-29 08:38:18','2024-09-29 08:38:18',NULL,'public'),(137,0,'icon-3','icon-3',7,'image/png',3452,'general/icon-3.png','[]','2024-09-29 08:38:18','2024-09-29 08:38:18',NULL,'public'),(138,0,'icon-4','icon-4',7,'image/png',3369,'general/icon-4.png','[]','2024-09-29 08:38:18','2024-09-29 08:38:18',NULL,'public'),(139,0,'icon-5','icon-5',7,'image/png',4435,'general/icon-5.png','[]','2024-09-29 08:38:18','2024-09-29 08:38:18',NULL,'public'),(140,0,'instagram','instagram',7,'image/png',2935,'general/instagram.png','[]','2024-09-29 08:38:18','2024-09-29 08:38:18',NULL,'public'),(141,0,'loading','loading',7,'image/gif',23986,'general/loading.gif','[]','2024-09-29 08:38:18','2024-09-29 08:38:18',NULL,'public'),(142,0,'login-1','login-1',7,'image/png',20332,'general/login-1.png','[]','2024-09-29 08:38:18','2024-09-29 08:38:18',NULL,'public'),(143,0,'logo','logo',7,'image/png',16069,'general/logo.png','[]','2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,'public'),(144,0,'newsletter-background-image','newsletter-background-image',7,'image/png',58306,'general/newsletter-background-image.png','[]','2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,'public'),(145,0,'newsletter-image','newsletter-image',7,'image/png',14191,'general/newsletter-image.png','[]','2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,'public'),(146,0,'open-graph-image','open-graph-image',7,'image/png',387270,'general/open-graph-image.png','[]','2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,'public'),(147,0,'paper-plane','paper-plane',7,'image/png',5184,'general/paper-plane.png','[]','2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,'public'),(148,0,'payment-methods','payment-methods',7,'image/png',476,'general/payment-methods.png','[]','2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,'public'),(149,0,'pinterest','pinterest',7,'image/png',2430,'general/pinterest.png','[]','2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,'public'),(150,0,'twitter','twitter',7,'image/png',2058,'general/twitter.png','[]','2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,'public'),(151,0,'youtube','youtube',7,'image/png',1296,'general/youtube.png','[]','2024-09-29 08:38:19','2024-09-29 08:38:19',NULL,'public'),(152,0,'1','1',8,'image/png',11540,'promotion/1.png','[]','2024-09-29 08:38:20','2024-09-29 08:38:20',NULL,'public'),(153,0,'10','10',8,'image/png',7883,'promotion/10.png','[]','2024-09-29 08:38:20','2024-09-29 08:38:20',NULL,'public'),(154,0,'11','11',8,'image/png',7883,'promotion/11.png','[]','2024-09-29 08:38:20','2024-09-29 08:38:20',NULL,'public'),(155,0,'12','12',8,'image/png',7883,'promotion/12.png','[]','2024-09-29 08:38:20','2024-09-29 08:38:20',NULL,'public'),(156,0,'2','2',8,'image/png',11540,'promotion/2.png','[]','2024-09-29 08:38:20','2024-09-29 08:38:20',NULL,'public'),(157,0,'3','3',8,'image/png',11540,'promotion/3.png','[]','2024-09-29 08:38:20','2024-09-29 08:38:20',NULL,'public'),(158,0,'4','4',8,'image/png',13954,'promotion/4.png','[]','2024-09-29 08:38:20','2024-09-29 08:38:20',NULL,'public'),(159,0,'5','5',8,'image/png',26326,'promotion/5.png','[]','2024-09-29 08:38:20','2024-09-29 08:38:20',NULL,'public'),(160,0,'6','6',8,'image/png',26326,'promotion/6.png','[]','2024-09-29 08:38:20','2024-09-29 08:38:20',NULL,'public'),(161,0,'7','7',8,'image/png',14402,'promotion/7.png','[]','2024-09-29 08:38:20','2024-09-29 08:38:20',NULL,'public'),(162,0,'8','8',8,'image/png',7028,'promotion/8.png','[]','2024-09-29 08:38:20','2024-09-29 08:38:20',NULL,'public'),(163,0,'9','9',8,'image/png',7883,'promotion/9.png','[]','2024-09-29 08:38:21','2024-09-29 08:38:21',NULL,'public'),(164,0,'1','1',9,'image/png',5327,'stores/1.png','[]','2024-09-29 08:38:21','2024-09-29 08:38:21',NULL,'public'),(165,0,'10','10',9,'image/png',5327,'stores/10.png','[]','2024-09-29 08:38:21','2024-09-29 08:38:21',NULL,'public'),(166,0,'11','11',9,'image/png',5327,'stores/11.png','[]','2024-09-29 08:38:21','2024-09-29 08:38:21',NULL,'public'),(167,0,'12','12',9,'image/png',5327,'stores/12.png','[]','2024-09-29 08:38:21','2024-09-29 08:38:21',NULL,'public'),(168,0,'13','13',9,'image/png',5327,'stores/13.png','[]','2024-09-29 08:38:21','2024-09-29 08:38:21',NULL,'public'),(169,0,'14','14',9,'image/png',5327,'stores/14.png','[]','2024-09-29 08:38:21','2024-09-29 08:38:21',NULL,'public'),(170,0,'15','15',9,'image/png',5327,'stores/15.png','[]','2024-09-29 08:38:21','2024-09-29 08:38:21',NULL,'public'),(171,0,'16','16',9,'image/png',5327,'stores/16.png','[]','2024-09-29 08:38:21','2024-09-29 08:38:21',NULL,'public'),(172,0,'17','17',9,'image/png',5327,'stores/17.png','[]','2024-09-29 08:38:21','2024-09-29 08:38:21',NULL,'public'),(173,0,'2','2',9,'image/png',5327,'stores/2.png','[]','2024-09-29 08:38:21','2024-09-29 08:38:21',NULL,'public'),(174,0,'3','3',9,'image/png',5327,'stores/3.png','[]','2024-09-29 08:38:22','2024-09-29 08:38:22',NULL,'public'),(175,0,'4','4',9,'image/png',5327,'stores/4.png','[]','2024-09-29 08:38:22','2024-09-29 08:38:22',NULL,'public'),(176,0,'5','5',9,'image/png',5327,'stores/5.png','[]','2024-09-29 08:38:22','2024-09-29 08:38:22',NULL,'public'),(177,0,'6','6',9,'image/png',5327,'stores/6.png','[]','2024-09-29 08:38:22','2024-09-29 08:38:22',NULL,'public'),(178,0,'7','7',9,'image/png',5327,'stores/7.png','[]','2024-09-29 08:38:22','2024-09-29 08:38:22',NULL,'public'),(179,0,'8','8',9,'image/png',5327,'stores/8.png','[]','2024-09-29 08:38:22','2024-09-29 08:38:22',NULL,'public'),(180,0,'9','9',9,'image/png',5327,'stores/9.png','[]','2024-09-29 08:38:22','2024-09-29 08:38:22',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'product-categories',NULL,'product-categories',0,'2024-09-29 08:38:01','2024-09-29 08:38:01',NULL),(2,0,'products',NULL,'products',0,'2024-09-29 08:38:03','2024-09-29 08:38:03',NULL),(3,0,'customers',NULL,'customers',0,'2024-09-29 08:38:09','2024-09-29 08:38:09',NULL),(4,0,'flash-sales',NULL,'flash-sales',0,'2024-09-29 08:38:13','2024-09-29 08:38:13',NULL),(5,0,'sliders',NULL,'sliders',0,'2024-09-29 08:38:13','2024-09-29 08:38:13',NULL),(6,0,'news',NULL,'news',0,'2024-09-29 08:38:15','2024-09-29 08:38:15',NULL),(7,0,'general',NULL,'general',0,'2024-09-29 08:38:17','2024-09-29 08:38:17',NULL),(8,0,'promotion',NULL,'promotion',0,'2024-09-29 08:38:20','2024-09-29 08:38:20',NULL),(9,0,'stores',NULL,'stores',0,'2024-09-29 08:38:21','2024-09-29 08:38:21',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-09-29 08:38:24','2024-09-29 08:38:24'),(2,2,'header-navigation','2024-09-29 08:38:24','2024-09-29 08:38:24');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/','fi-rs-home',0,'Home',NULL,'_self',1,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(2,1,1,1,'Botble\\Page\\Models\\Page','/',NULL,0,'Home 1',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Home 2',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Home 3',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Home 4',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(6,1,1,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Home 5',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(7,1,1,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Home 6',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(9,1,8,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(10,1,8,NULL,NULL,'/products?layout=product-right-sidebar',NULL,0,'Shop Grid - Right Sidebar',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(11,1,8,NULL,NULL,'/products?layout=product-left-sidebar',NULL,0,'Shop Grid - Left Sidebar',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(12,1,8,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Products Of Category',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(13,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',1,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(14,1,13,NULL,NULL,'/stores',NULL,0,'Stores - Grid',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(15,1,13,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Stores - List',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(16,1,13,NULL,NULL,'',NULL,0,'Store - Detail',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(17,1,0,NULL,NULL,'',NULL,0,'Product',NULL,'_self',1,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(18,1,17,NULL,NULL,'',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(19,1,17,NULL,NULL,'',NULL,0,'Product Left Sidebar',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(20,1,17,NULL,NULL,'',NULL,0,'Product Full Width',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(21,1,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog',NULL,'_self',1,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(22,1,21,5,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog Grid',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(23,1,21,13,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog List',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(24,1,21,14,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog Big',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(25,1,21,15,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog Wide',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(26,1,21,NULL,NULL,'',NULL,0,'Single Post',NULL,'_self',1,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(27,1,26,NULL,NULL,'',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(28,1,26,NULL,NULL,'',NULL,0,'Single Post Left Sidebar',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(29,1,26,NULL,NULL,'',NULL,0,'Single Post Full Width',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(30,1,26,NULL,NULL,'',NULL,0,'Single Post with Product Listing',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(31,1,0,18,'Botble\\Page\\Models\\Page',NULL,NULL,0,'FAQ',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(32,1,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Contact',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(33,2,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About Us',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(34,2,0,NULL,NULL,'/orders/tracking',NULL,0,'Order Tracking',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(35,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Milks and Dairies',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(36,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Clothing & beauty',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(37,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Pet Toy',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(38,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Baking material',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(39,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Fresh Fruit',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(40,3,0,6,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Wines & Drinks',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(41,4,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Contact Us',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(42,4,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About Us',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(43,4,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Cookie Policy',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(44,4,0,9,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Terms & Conditions',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(45,4,0,10,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Returns & Exchanges',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(46,4,0,11,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Shipping & Delivery',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(47,4,0,12,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Privacy Policy',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(48,5,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About us',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(49,5,0,NULL,NULL,'#',NULL,0,'Affiliate',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(50,5,0,NULL,NULL,'#',NULL,0,'Career',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24'),(51,5,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Contact us',NULL,'_self',0,'2024-09-29 08:38:24','2024-09-29 08:38:24');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-09-29 08:38:24','2024-09-29 08:38:24'),(2,'Header menu','header-menu','published','2024-09-29 08:38:24','2024-09-29 08:38:24'),(3,'Product categories','product-categories','published','2024-09-29 08:38:24','2024-09-29 08:38:24'),(4,'Information','information','published','2024-09-29 08:38:24','2024-09-29 08:38:24'),(5,'Company','company','published','2024-09-29 08:38:24','2024-09-29 08:38:24');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'background_color','[\"#F2FCE4\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2024-09-29 08:38:03','2024-09-29 08:38:03'),(2,'background_color','[\"#FFFCEB\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2024-09-29 08:38:03','2024-09-29 08:38:03'),(3,'background_color','[\"#ECFFEC\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2024-09-29 08:38:03','2024-09-29 08:38:03'),(4,'background_color','[\"#FEEFEA\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2024-09-29 08:38:03','2024-09-29 08:38:03'),(5,'background_color','[\"#FFF3EB\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2024-09-29 08:38:03','2024-09-29 08:38:03'),(6,'background_color','[\"#FFF3FF\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2024-09-29 08:38:03','2024-09-29 08:38:03'),(7,'background_color','[\"#F2FCE4\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2024-09-29 08:38:03','2024-09-29 08:38:03'),(8,'background_color','[\"#FFFCEB\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2024-09-29 08:38:03','2024-09-29 08:38:03'),(9,'background_color','[\"#ECFFEC\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2024-09-29 08:38:03','2024-09-29 08:38:03'),(10,'background_color','[\"#FEEFEA\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2024-09-29 08:38:03','2024-09-29 08:38:03'),(11,'background_color','[\"#FFF3EB\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2024-09-29 08:38:03','2024-09-29 08:38:03'),(12,'background_color','[\"#FFF3FF\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2024-09-29 08:38:03','2024-09-29 08:38:03'),(13,'background_color','[\"#F2FCE4\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2024-09-29 08:38:03','2024-09-29 08:38:03'),(14,'background_color','[\"#FFFCEB\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2024-09-29 08:38:03','2024-09-29 08:38:03'),(15,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(16,'is_popular','[\"1\"]',1,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(17,'faq_ids','[[1,4,5,8,9]]',1,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(18,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(19,'faq_ids','[[1,2,4,5,10]]',2,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(20,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(21,'is_popular','[\"1\"]',3,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(22,'faq_ids','[[3,5,8,9,10]]',3,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(23,'faq_ids','[[4,7,8,9,10]]',4,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(24,'is_popular','[\"1\"]',5,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(25,'faq_ids','[[1,4,6,8,10]]',5,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(26,'faq_ids','[[2,3,5,6,10]]',6,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(27,'is_popular','[\"1\"]',7,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(28,'faq_ids','[[5,6,7,9,10]]',7,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(29,'faq_ids','[[2,3,4,6,7]]',8,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(30,'is_popular','[\"1\"]',9,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(31,'faq_ids','[[1,3,4,5,8]]',9,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(32,'faq_ids','[[1,3,5,7,9]]',10,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(33,'is_popular','[\"1\"]',11,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(34,'faq_ids','[[2,3,6,7,10]]',11,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(35,'faq_ids','[[2,4,8,9,10]]',12,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(36,'is_popular','[\"1\"]',13,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(37,'faq_ids','[[2,4,8,9,10]]',13,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(38,'faq_ids','[[2,3,4,5,9]]',14,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(39,'is_popular','[\"1\"]',15,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(40,'faq_ids','[[1,2,4,8,10]]',15,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(41,'faq_ids','[[1,2,3,6,10]]',16,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(42,'is_popular','[\"1\"]',17,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(43,'faq_ids','[[1,4,5,9,10]]',17,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(44,'faq_ids','[[2,3,5,7,8]]',18,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(45,'is_popular','[\"1\"]',19,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(46,'faq_ids','[[1,2,3,6,9]]',19,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(47,'faq_ids','[[2,3,4,5,10]]',20,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(48,'is_popular','[\"1\"]',21,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(49,'faq_ids','[[2,6,7,9,10]]',21,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(50,'faq_ids','[[1,2,3,6,8]]',22,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(51,'is_popular','[\"1\"]',23,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(52,'faq_ids','[[1,2,3,5,7]]',23,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(53,'faq_ids','[[2,4,5,6,10]]',24,'Botble\\Ecommerce\\Models\\Product','2024-09-29 08:38:08','2024-09-29 08:38:08'),(54,'image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2024-09-29 08:38:13','2024-09-29 08:38:13'),(55,'image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2024-09-29 08:38:13','2024-09-29 08:38:13'),(56,'image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2024-09-29 08:38:13','2024-09-29 08:38:13'),(57,'image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2024-09-29 08:38:13','2024-09-29 08:38:13'),(58,'image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2024-09-29 08:38:13','2024-09-29 08:38:13'),(59,'simple_slider_style','[\"style-4\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-09-29 08:38:15','2024-09-29 08:38:15'),(60,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-09-29 08:38:15','2024-09-29 08:38:15'),(61,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-09-29 08:38:15','2024-09-29 08:38:15'),(62,'simple_slider_style','[\"style-1\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-09-29 08:38:15','2024-09-29 08:38:15'),(63,'simple_slider_style','[\"style-5\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-09-29 08:38:15','2024-09-29 08:38:15'),(64,'simple_slider_style','[\"style-6\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-09-29 08:38:15','2024-09-29 08:38:15'),(65,'simple_slider_style','[\"style-1\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-09-29 08:38:15','2024-09-29 08:38:15'),(66,'header_style','[\"header-style-5\"]',16,'Botble\\Page\\Models\\Page','2024-09-29 08:38:17','2024-09-29 08:38:17'),(67,'header_style','[\"header-style-5\"]',17,'Botble\\Page\\Models\\Page','2024-09-29 08:38:17','2024-09-29 08:38:17'),(68,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(69,'subtitle','[\"Everyday Fresh & \\nClean with Our \\nProducts\"]',1,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(70,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(71,'subtitle','[\"Make your Breakfast Healthy and Easy\"]',2,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(72,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(73,'subtitle','[\"The best Organic Products Online\"]',3,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(74,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(75,'subtitle','[\"Bring nature into your home\"]',4,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(76,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(77,'subtitle','[\"Delivered to your home\"]',5,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(78,'button_text','[\"Shop now\"]',6,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(79,'subtitle','[\"Save 17% <br \\/>on Oganic <br \\/>Juice\"]',6,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(80,'button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(81,'subtitle','[\"Everyday Fresh & Clean with Our Products\"]',7,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(82,'button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(83,'subtitle','[\"The best Organic Products Online\"]',8,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(84,'button_text','[\"Go to supplier\"]',9,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(85,'subtitle','[\"Everyday Fresh with\\n Our Products\"]',9,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(86,'button_text','[\"Go to supplier\"]',10,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(87,'subtitle','[\"100% guaranteed all\\n Fresh items\"]',10,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(88,'button_text','[\"Go to supplier\"]',11,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(89,'subtitle','[\"Special grocery sale\\n off this month\"]',11,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(90,'button_text','[\"Go to supplier\"]',12,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(91,'subtitle','[\"Enjoy 15% OFF for all\\n vegetable and fruit\"]',12,'Botble\\Ads\\Models\\Ads','2024-09-29 08:38:21','2024-09-29 08:38:21'),(92,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',1,'Botble\\Marketplace\\Models\\Store','2024-09-29 08:38:23','2024-09-29 08:38:23'),(93,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',2,'Botble\\Marketplace\\Models\\Store','2024-09-29 08:38:23','2024-09-29 08:38:23'),(94,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',3,'Botble\\Marketplace\\Models\\Store','2024-09-29 08:38:23','2024-09-29 08:38:23'),(95,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',4,'Botble\\Marketplace\\Models\\Store','2024-09-29 08:38:23','2024-09-29 08:38:23'),(96,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',5,'Botble\\Marketplace\\Models\\Store','2024-09-29 08:38:23','2024-09-29 08:38:23'),(97,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',6,'Botble\\Marketplace\\Models\\Store','2024-09-29 08:38:23','2024-09-29 08:38:23');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(31,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(32,'2024_01_07_072057_update_theme_option_for_login_page',1),(33,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(34,'2024_04_25_021317_remove_wrong_widget',1),(35,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(36,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(37,'2024_07_12_100000_change_random_hash_for_media',1),(38,'2020_11_18_150916_ads_create_ads_table',2),(39,'2021_12_02_035301_add_ads_translations_table',2),(40,'2023_04_17_062645_add_open_in_new_tab',2),(41,'2023_11_07_023805_add_tablet_mobile_image',2),(42,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(43,'2024_04_27_100730_improve_analytics_setting',3),(44,'2015_06_29_025744_create_audit_history',4),(45,'2023_11_14_033417_change_request_column_in_table_audit_histories',4),(46,'2015_06_18_033822_create_blog_table',5),(47,'2021_02_16_092633_remove_default_value_for_author_type',5),(48,'2021_12_03_030600_create_blog_translations',5),(49,'2022_04_19_113923_add_index_to_table_posts',5),(50,'2023_08_29_074620_make_column_author_id_nullable',5),(51,'2024_07_30_091615_fix_order_column_in_categories_table',5),(52,'2016_06_17_091537_create_contacts_table',6),(53,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(54,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(55,'2024_03_25_000001_update_captcha_settings_for_contact',6),(56,'2024_04_19_063914_create_custom_fields_table',6),(57,'2020_03_05_041139_create_ecommerce_tables',7),(58,'2021_01_01_044147_ecommerce_create_flash_sale_table',7),(59,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',7),(60,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',7),(61,'2021_02_18_073505_update_table_ec_reviews',7),(62,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',7),(63,'2021_03_10_025153_change_column_tax_amount',7),(64,'2021_03_20_033103_add_column_availability_to_table_ec_products',7),(65,'2021_04_28_074008_ecommerce_create_product_label_table',7),(66,'2021_05_31_173037_ecommerce_create_ec_products_translations',7),(67,'2021_08_17_105016_remove_column_currency_id_in_some_tables',7),(68,'2021_08_30_142128_add_images_column_to_ec_reviews_table',7),(69,'2021_10_04_030050_add_column_created_by_to_table_ec_products',7),(70,'2021_10_05_122616_add_status_column_to_ec_customers_table',7),(71,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',7),(72,'2021_11_23_071403_correct_languages_for_product_variations',7),(73,'2021_11_28_031808_add_product_tags_translations',7),(74,'2021_12_01_031123_add_featured_image_to_ec_products',7),(75,'2022_01_01_033107_update_table_ec_shipments',7),(76,'2022_02_16_042457_improve_product_attribute_sets',7),(77,'2022_03_22_075758_correct_product_name',7),(78,'2022_04_19_113334_add_index_to_ec_products',7),(79,'2022_04_28_144405_remove_unused_table',7),(80,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',7),(81,'2022_05_18_143720_add_index_to_table_ec_product_categories',7),(82,'2022_06_16_095633_add_index_to_some_tables',7),(83,'2022_06_30_035148_create_order_referrals_table',7),(84,'2022_07_24_153815_add_completed_at_to_ec_orders_table',7),(85,'2022_08_14_032836_create_ec_order_returns_table',7),(86,'2022_08_14_033554_create_ec_order_return_items_table',7),(87,'2022_08_15_040324_add_billing_address',7),(88,'2022_08_30_091114_support_digital_products_table',7),(89,'2022_09_13_095744_create_options_table',7),(90,'2022_09_13_104347_create_option_value_table',7),(91,'2022_10_05_163518_alter_table_ec_order_product',7),(92,'2022_10_12_041517_create_invoices_table',7),(93,'2022_10_12_142226_update_orders_table',7),(94,'2022_10_13_024916_update_table_order_returns',7),(95,'2022_10_21_030830_update_columns_in_ec_shipments_table',7),(96,'2022_10_28_021046_update_columns_in_ec_shipments_table',7),(97,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',7),(98,'2022_11_19_041643_add_ec_tax_product_table',7),(99,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',7),(100,'2022_12_17_041532_fix_address_in_order_invoice',7),(101,'2022_12_26_070329_create_ec_product_views_table',7),(102,'2023_01_04_033051_fix_product_categories',7),(103,'2023_01_09_050400_add_ec_global_options_translations_table',7),(104,'2023_01_10_093754_add_missing_option_value_id',7),(105,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',7),(106,'2023_01_26_021854_add_ec_customer_used_coupons_table',7),(107,'2023_02_08_015900_update_options_column_in_ec_order_product_table',7),(108,'2023_02_27_095752_remove_duplicate_reviews',7),(109,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',7),(110,'2023_04_21_082427_create_ec_product_categorizables_table',7),(111,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',7),(112,'2023_05_17_025812_fix_invoice_issue',7),(113,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',7),(114,'2023_05_27_144611_fix_exchange_rate_setting',7),(115,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',7),(116,'2023_06_30_042512_create_ec_order_tax_information_table',7),(117,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',7),(118,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',7),(119,'2023_08_15_064505_create_ec_tax_rules_table',7),(120,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',7),(121,'2023_08_22_094114_drop_unique_for_barcode',7),(122,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',7),(123,'2023_09_07_094312_add_index_to_product_sku_and_translations',7),(124,'2023_09_19_024955_create_discount_product_categories_table',7),(125,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',7),(126,'2023_11_22_154643_add_unique_in_table_ec_products_variations',7),(127,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',7),(128,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',7),(129,'2023_12_25_040604_ec_create_review_replies_table',7),(130,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',7),(131,'2024_01_16_070706_fix_translation_tables',7),(132,'2024_01_23_075227_add_proof_file_to_ec_orders_table',7),(133,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',7),(134,'2024_03_27_062402_create_ec_customer_deletion_requests_table',7),(135,'2024_03_29_042242_migrate_old_captcha_settings',7),(136,'2024_03_29_093946_create_ec_order_return_histories_table',7),(137,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',7),(138,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',7),(139,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',7),(140,'2024_05_07_073153_improve_table_wishlist',7),(141,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',7),(142,'2024_05_15_021503_fix_invoice_path',7),(143,'2024_06_20_160724_create_ec_shared_wishlists_table',7),(144,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',7),(145,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',7),(146,'2024_07_14_071826_make_customer_email_nullable',7),(147,'2024_07_15_104916_add_video_media_column_to_ec_products_table',7),(148,'2024_07_26_052530_add_percentage_to_tax_rules_table',7),(149,'2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table',7),(150,'2024_08_19_132849_create_specification_tables',7),(151,'2024_09_07_060744_add_author_column_to_specification_tables',7),(152,'2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table',7),(153,'2024_09_25_073928_remove_wrong_product_slugs',7),(154,'2018_07_09_221238_create_faq_table',8),(155,'2021_12_03_082134_create_faq_translations',8),(156,'2023_11_17_063408_add_description_column_to_faq_categories_table',8),(157,'2016_10_03_032336_create_languages_table',9),(158,'2023_09_14_022423_add_index_for_language_table',9),(159,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(160,'2021_12_03_075608_create_page_translations',10),(161,'2023_07_06_011444_create_slug_translations_table',10),(162,'2019_11_18_061011_create_country_table',11),(163,'2021_12_03_084118_create_location_translations',11),(164,'2021_12_03_094518_migrate_old_location_data',11),(165,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',11),(166,'2022_01_16_085908_improve_plugin_location',11),(167,'2022_08_04_052122_delete_location_backup_tables',11),(168,'2023_04_23_061847_increase_state_translations_abbreviation_column',11),(169,'2023_07_26_041451_add_more_columns_to_location_table',11),(170,'2023_07_27_041451_add_more_columns_to_location_translation_table',11),(171,'2023_08_15_073307_drop_unique_in_states_cities_translations',11),(172,'2023_10_21_065016_make_state_id_in_table_cities_nullable',11),(173,'2024_08_17_094600_add_image_into_countries',11),(174,'2021_07_06_030002_create_marketplace_table',12),(175,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',12),(176,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',12),(177,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',12),(178,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',12),(179,'2021_12_06_031304_update_table_mp_customer_revenues',12),(180,'2022_10_19_152916_add_columns_to_mp_stores_table',12),(181,'2022_10_20_062849_create_mp_category_sale_commissions_table',12),(182,'2022_11_02_071413_add_more_info_for_store',12),(183,'2022_11_02_080444_add_tax_info',12),(184,'2023_02_01_062030_add_store_translations',12),(185,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',12),(186,'2023_02_17_023648_fix_store_prefix',12),(187,'2024_04_03_062451_add_cover_image_to_table_mp_stores',12),(188,'2024_05_07_082630_create_mp_messages_table',12),(189,'2024_07_19_131849_add_documents_to_mp_stores_table',12),(190,'2024_08_18_083119_add_tax_id_column_to_mp_stores_table',12),(191,'2024_08_27_141244_add_block_reason_to_ec_customers_table',12),(192,'2024_09_17_125408_add_square_logo_to_stores_table',12),(193,'2017_10_24_154832_create_newsletter_table',13),(194,'2024_03_25_000001_update_captcha_settings_for_newsletter',13),(195,'2017_05_18_080441_create_payment_tables',14),(196,'2021_03_27_144913_add_customer_type_into_table_payments',14),(197,'2021_05_24_034720_make_column_currency_nullable',14),(198,'2021_08_09_161302_add_metadata_column_to_payments_table',14),(199,'2021_10_19_020859_update_metadata_field',14),(200,'2022_06_28_151901_activate_paypal_stripe_plugin',14),(201,'2022_07_07_153354_update_charge_id_in_table_payments',14),(202,'2024_07_04_083133_create_payment_logs_table',14),(203,'2017_07_11_140018_create_simple_slider_table',15),(204,'2024_09_14_100108_add_stripe_connect_details_to_ec_customers_table',16),(205,'2016_10_07_193005_create_translations_table',17),(206,'2023_12_12_105220_drop_translations_table',17);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_messages`
--

DROP TABLE IF EXISTS `mp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_messages`
--

LOCK TABLES `mp_messages` WRITE;
/*!40000 ALTER TABLE `mp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_square` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `government_id_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','amy16@example.org','+12034504472','4993 Gorczany Wells Apt. 601','ZA','New York','West Ivamouth',2,'stores/1.png',NULL,NULL,'Accusamus occaecati vel deserunt.','Assumenda dolores similique ut saepe placeat voluptatibus. Ipsa laudantium dicta occaecati quas exercitationem.','published',NULL,'2024-09-29 08:38:23','2024-09-29 08:38:23',NULL,NULL,NULL,NULL,NULL),(2,'Global Office','howell.rachel@example.net','+16288655078','817 Estell Estates','CU','Mississippi','Lake Rafaela',3,'stores/2.png',NULL,NULL,'Totam doloribus facere velit.','Et voluptate iste voluptatibus molestiae aspernatur. Repudiandae sunt itaque sunt nisi fugiat. Saepe eum officia ipsa nihil.','published',NULL,'2024-09-29 08:38:23','2024-09-29 08:38:23',NULL,NULL,NULL,NULL,NULL),(3,'Young Shop','volkman.adah@example.net','+13476735160','23600 O\'Kon Highway Apt. 118','ZW','Indiana','Evelynfurt',5,'stores/3.png',NULL,NULL,'Et et repellendus et nihil ea.','Aut a dicta voluptatem nihil quo aut. Dolores fugit quam unde nobis quia inventore. Rerum voluptas minus reprehenderit.','published',NULL,'2024-09-29 08:38:23','2024-09-29 08:38:23',NULL,NULL,NULL,NULL,NULL),(4,'Global Store','walker.kenneth@example.net','+15152613023','499 Littel Centers Apt. 142','MV','Vermont','Lake Marshall',6,'stores/4.png',NULL,NULL,'Velit et voluptatem laborum aut enim.','Autem odio doloribus ipsa ipsum. Voluptas odit expedita ipsum aut non unde aut. Qui deleniti ex fuga voluptate quia odit.','published',NULL,'2024-09-29 08:38:23','2024-09-29 08:38:23',NULL,NULL,NULL,NULL,NULL),(5,'Robert’s Store','ocremin@example.net','+15312951069','4632 Stiedemann Stream Suite 173','NC','Massachusetts','Bashiriantown',7,'stores/5.png',NULL,NULL,'Molestiae sapiente rerum id nihil.','Accusamus aut vitae voluptatum beatae magni amet. Sed aut earum placeat. Ab quia deleniti iusto.','published',NULL,'2024-09-29 08:38:23','2024-09-29 08:38:23',NULL,NULL,NULL,NULL,NULL),(6,'Stouffer','karlie41@example.com','+13378267050','80893 Heller Trail','CX','New Mexico','New Perry',9,'stores/6.png',NULL,NULL,'Voluptatem dolores maxime est.','Culpa assumenda assumenda quia omnis autem alias quis. Vel tenetur expedita neque aut eaque in.','published',NULL,'2024-09-29 08:38:23','2024-09-29 08:38:23',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$jROSFrZw2rRW4mOYXjzGAugS61igEUW263AoDMdJpG4OB0fUQDLj.','{\"name\":\"Brown Lynch\",\"number\":\"+15399860219\",\"full_name\":\"Alexandrea Friesen\",\"description\":\"Prof. Robert Ullrich III\"}','2024-09-29 08:38:22','2024-09-29 08:38:22','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$3YUtuVM.yY6bJ7zYKg2Bb.rAml4UXhvtgQFp/DQCqTak9yxto0/vG','{\"name\":\"Coleman Hickle DVM\",\"number\":\"+17574527435\",\"full_name\":\"Austyn Kulas\",\"description\":\"Rita Mann\"}','2024-09-29 08:38:22','2024-09-29 08:38:22','bank_transfer',NULL),(3,5,0.00,0.00,0.00,'$2y$12$HySuoo.zx3VmO9VW0CTk2Oojk.LSmWbl7SVGvi59cpW8YNFFQTwXi','{\"name\":\"Miss Shanna Larkin\",\"number\":\"+19125998097\",\"full_name\":\"Ulices McCullough\",\"description\":\"Breanna Klein\"}','2024-09-29 08:38:23','2024-09-29 08:38:23','bank_transfer',NULL),(4,6,0.00,0.00,0.00,'$2y$12$TamAb3jIbNN8lTG0Rh9dIeH5dZjnHUO9OJwy.ZCssgN4drWKYDp6m','{\"name\":\"Ms. Harmony Heaney\",\"number\":\"+14846277919\",\"full_name\":\"Miss Meggie Donnelly\",\"description\":\"Miss Natalie Bartell MD\"}','2024-09-29 08:38:23','2024-09-29 08:38:23','bank_transfer',NULL),(5,7,0.00,0.00,0.00,'$2y$12$zXZNA.vS/08zMgCGLwL4L.TifSiZJWuwKHfoK1sRHqhGJJ7R5dnGi','{\"name\":\"Tiara Daugherty III\",\"number\":\"+18589640401\",\"full_name\":\"Dr. Paul Kessler V\",\"description\":\"Miss Sabrina Mills\"}','2024-09-29 08:38:23','2024-09-29 08:38:23','bank_transfer',NULL),(6,9,0.00,0.00,0.00,'$2y$12$uXBobsmVTbtbloN68YWucuiOc807.EhrTK8iU20JWWgLjfVq34kjW','{\"name\":\"Fabian Beahan\",\"number\":\"+18434932486\",\"full_name\":\"Janick Ernser\",\"description\":\"Libbie Toy DDS\"}','2024-09-29 08:38:23','2024-09-29 08:38:23','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2024-09-29 08:38:17','2024-09-29 08:38:17'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div>',1,NULL,'homepage',NULL,'published','2024-09-29 08:38:17','2024-09-29 08:38:17'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2024-09-29 08:38:17','2024-09-29 08:38:17'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2024-09-29 08:38:17','2024-09-29 08:38:17'),(5,'Blog','<p>---</p>',1,NULL,'blog-grid',NULL,'published','2024-09-29 08:38:17','2024-09-29 08:38:17'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',NULL,'published','2024-09-29 08:38:17','2024-09-29 08:38:17'),(7,'About us','<p>Now I growl when I\'m pleased, and wag my tail when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'Come, let\'s hear some of them can explain it,\' said Alice, who felt ready to talk nonsense. The Queen\'s argument was, that if you please! \"William the Conqueror, whose cause was favoured by the English, who wanted leaders, and had no idea how to spell \'stupid,\' and that in about half no time! Take your choice!\' The Duchess took her.</p><p>I\'ll have you executed.\' The miserable Hatter dropped his teacup instead of the Nile On every golden scale! \'How cheerfully he seems to like her, down here, that I should frighten them out of that is--\"The more there is of mine, the less there is of yours.\"\' \'Oh, I know!\' exclaimed Alice, who felt ready to make herself useful, and looking anxiously round to see what this bottle was NOT marked \'poison,\' it is to France-- Then turn not pale, beloved snail, but come and join the dance. Will you.</p><p>Alice, \'they\'re sure to happen,\' she said to herself, for this time she heard a little of it?\' said the Caterpillar. \'Is that the poor child, \'for I never understood what it was: at first was moderate. But the insolence of his great wig.\' The judge, by the English, who wanted leaders, and had no very clear notion how long ago anything had happened.) So she sat on, with closed eyes, and feebly stretching out one paw, trying to touch her. \'Poor little thing!\' said the Queen, but she had grown to.</p><p>Improve his shining tail, And pour the waters of the trees under which she had got its head impatiently, and said, without opening its eyes, \'Of course, of course; just what I say--that\'s the same thing a Lobster Quadrille The Mock Turtle went on. \'Or would you like to be no use denying it. I suppose it doesn\'t understand English,\' thought Alice; but she got to do,\' said Alice in a whisper, half afraid that it was growing, and very soon found an opportunity of saying to herself, as she went.</p>',1,NULL,'right-sidebar',NULL,'published','2024-09-29 08:38:17','2024-09-29 08:38:17'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-09-29 08:38:17','2024-09-29 08:38:17'),(9,'Terms &amp; Conditions','<p>Queen say only yesterday you deserved to be an old Turtle--we used to it as she could, and soon found out a race-course, in a hoarse, feeble voice: \'I heard the Rabbit in a solemn tone, \'For the Duchess. An invitation for the pool as it can be,\' said the Gryphon. \'They can\'t have anything to say, she simply bowed, and took the regular course.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, to begin again, it was only sobbing,\' she thought, and rightly too, that very few.</p><p>Duchess; \'I never heard before, \'Sure then I\'m here! Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw one that size? Why, it fills the whole she thought it would be only rustling in the middle of one! There ought to have no sort of idea that they would go, and making faces at him as he spoke, and then they wouldn\'t be so easily offended, you know!\' The Mouse looked at the Footman\'s head: it just at first, the two creatures got so much about a.</p><p>White Rabbit read:-- \'They told me you had been broken to pieces. \'Please, then,\' said the Gryphon said to herself, rather sharply; \'I advise you to get in?\' asked Alice again, for really I\'m quite tired and out of sight before the officer could get away without being seen, when she went back to yesterday, because I was going on, as she was quite surprised to find it out, we should all have our heads cut off, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'shall I NEVER.</p><p>Yet you turned a corner, \'Oh my ears and the beak-- Pray how did you begin?\' The Hatter was the Duchess\'s cook. She carried the pepper-box in her life, and had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it advisable--\"\' \'Found WHAT?\' said the Caterpillar; and it said in a piteous tone. And the Gryphon said, in a minute or two sobs choked his.</p>',1,NULL,'default',NULL,'published','2024-09-29 08:38:17','2024-09-29 08:38:17'),(10,'Returns &amp; Exchanges','<p>Gryphon said to Alice, flinging the baby with some surprise that the mouse to the other side of the lefthand bit. * * * * * * * * * * * * * * * * * * * * * * * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice hastily, afraid that it was her turn or not. So she swallowed one of the baby?\' said the Gryphon. \'Then, you know,\' said Alice hastily; \'but I\'m not used to say.\' \'So he did, so he did,\' said the Hatter, \'when the Queen was silent. The King and Queen of Hearts were.</p><p>The Queen\'s Croquet-Ground A large rose-tree stood near the right height to be.\' \'It is a long breath, and said \'No, never\') \'--so you can have no notion how long ago anything had happened.) So she tucked it away under her arm, with its eyelids, so he did,\' said the Hatter: \'it\'s very interesting. I never understood what it meant till now.\' \'If that\'s all the jurymen on to the Mock Turtle a little pattering of footsteps in the air. She did not feel encouraged to ask them what the name \'W.</p><p>Duchess. \'Everything\'s got a moral, if only you can find them.\' As she said to herself as she picked her way into that lovely garden. I think it so yet,\' said the Caterpillar. \'Well, perhaps not,\' said the Mock Turtle sighed deeply, and began, in a furious passion, and went on eagerly. \'That\'s enough about lessons,\' the Gryphon hastily. \'Go on with the end of the Lizard\'s slate-pencil, and the March Hare moved into the sky all the rest waited in silence. At last the Mouse, turning to the.</p><p>Alice quietly said, just as the Lory hastily. \'I don\'t see,\' said the Caterpillar angrily, rearing itself upright as it spoke. \'As wet as ever,\' said Alice as it was certainly English. \'I don\'t like the look of it in large letters. It was all dark overhead; before her was another long passage, and the March Hare. \'Yes, please do!\' but the three gardeners instantly threw themselves flat upon their faces, and the little door into that beautiful garden--how IS that to be Involved in this way!.</p>',1,NULL,'default',NULL,'published','2024-09-29 08:38:17','2024-09-29 08:38:17'),(11,'Shipping &amp; Delivery','<p>Mock Turtle had just begun to dream that she knew that it was too dark to see what was going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter asked triumphantly. Alice did not like the look of things at all, as the Rabbit, and had come back with the glass table and the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' the Gryphon repeated impatiently: \'it begins \"I passed by his garden.\"\' Alice did not like the Queen?\' said the Mock Turtle, suddenly.</p><p>Lory, as soon as she ran. \'How surprised he\'ll be when he sneezes: He only does it matter to me whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' the Hatter was the White Rabbit as he came, \'Oh! the Duchess, \'chop off her head!\' the Queen had only one way up as the March Hare. The Hatter opened his eyes. He looked at the other birds tittered audibly. \'What I was sent for.\' \'You ought to be a lesson to you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, (she had.</p><p>King, with an M, such as mouse-traps, and the reason so many out-of-the-way things to happen, that it made no mark; but he could go. Alice took up the fan and two or three of the garden: the roses growing on it but tea. \'I don\'t think--\' \'Then you may stand down,\' continued the Hatter, it woke up again as quickly as she was surprised to see if there are, nobody attends to them--and you\'ve no idea how confusing it is I hate cats and dogs.\' It was so ordered about by mice and rabbits. I almost.</p><p>She pitied him deeply. \'What is his sorrow?\' she asked the Gryphon, \'that they WOULD put their heads down! I am now? That\'ll be a book of rules for shutting people up like telescopes: this time she had expected: before she came upon a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about in all their simple joys, remembering her own ears for having cheated herself in Wonderland, though she felt that it was done. They had not attended to this last word two or.</p>',1,NULL,'default',NULL,'published','2024-09-29 08:38:17','2024-09-29 08:38:17'),(12,'Privacy Policy','<p>Elsie, Lacie, and Tillie; and they sat down, and felt quite relieved to see the Hatter said, tossing his head mournfully. \'Not I!\' he replied. \'We quarrelled last March--just before HE went mad, you know--\' She had not gone much farther before she found herself falling down a good deal frightened at the window.\' \'THAT you won\'t\' thought Alice, \'it\'ll never do to come yet, please your Majesty!\' the soldiers did. After these came the guests, mostly Kings and Queens, and among them Alice.</p><p>Gryphon whispered in reply, \'for fear they should forget them before the officer could get to the Mock Turtle. So she called softly after it, \'Mouse dear! Do come back with the tea,\' the Hatter replied. \'Of course twinkling begins with an M, such as mouse-traps, and the turtles all advance! They are waiting on the stairs. Alice knew it was a long tail, certainly,\' said Alice, who was talking. Alice could hardly hear the Rabbit angrily. \'Here! Come and help me out of this was the first.</p><p>Mock Turtle replied; \'and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never heard before, \'Sure then I\'m here! Digging for apples, indeed!\' said the Caterpillar took the hookah out of the accident, all except the King, \'that saves a world of trouble, you know, upon the other side. The further off from England the nearer is to France-- Then turn not pale, beloved snail, but come and join the dance? \"You can really have no idea how confusing.</p><p>Alice began to feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be four thousand miles down, I think--\' (for, you see, Alice had begun to dream that she never knew whether it was talking in a sulky tone, as it can be,\' said the March Hare and his friends shared their never-ending meal, and the shrill voice of thunder, and people began running about in the common way. So she called softly after it, never once considering how in the pool of tears which she had.</p>',1,NULL,'default',NULL,'published','2024-09-29 08:38:17','2024-09-29 08:38:17'),(13,'Blog List','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-list',NULL,'published','2024-09-29 08:38:17','2024-09-29 08:38:17'),(14,'Blog Big','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-big',NULL,'published','2024-09-29 08:38:17','2024-09-29 08:38:17'),(15,'Blog Wide','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-wide',NULL,'published','2024-09-29 08:38:17','2024-09-29 08:38:17'),(16,'Homepage 5','<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2024-09-29 08:38:17','2024-09-29 08:38:17'),(17,'Homepage 6','<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"What are you looking for?\"][/big-banner]</div><div>[trending-products title=\"Trending items\" per_row=\"5\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2024-09-29 08:38:17','2024-09-29 08:38:17'),(18,'Faq','<div>[faqs][/faqs]</div>',1,NULL,'default',NULL,'published','2024-09-29 08:38:17','2024-09-29 08:38:17');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(3,1),(1,2),(4,2),(2,3),(3,3),(2,4),(4,4),(2,5),(3,5),(1,6),(3,6),(1,7),(3,7),(1,8),(3,8),(1,9),(4,9),(2,10),(4,10),(2,11),(3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/1.png',565,NULL,'2024-09-29 08:38:16','2024-09-29 08:38:16'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/2.png',1104,NULL,'2024-09-29 08:38:16','2024-09-29 08:38:16'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/3.png',1433,NULL,'2024-09-29 08:38:16','2024-09-29 08:38:16'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/4.png',1191,NULL,'2024-09-29 08:38:16','2024-09-29 08:38:16'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/5.png',730,NULL,'2024-09-29 08:38:16','2024-09-29 08:38:16'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/6.png',171,NULL,'2024-09-29 08:38:16','2024-09-29 08:38:16'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/7.png',1743,NULL,'2024-09-29 08:38:16','2024-09-29 08:38:16'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/8.png',2085,NULL,'2024-09-29 08:38:16','2024-09-29 08:38:16'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/9.png',913,NULL,'2024-09-29 08:38:16','2024-09-29 08:38:16'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/10.png',1874,NULL,'2024-09-29 08:38:16','2024-09-29 08:38:16'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',0,'news/11.png',670,NULL,'2024-09-29 08:38:16','2024-09-29 08:38:16');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-09-29 08:38:17','2024-09-29 08:38:17');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','cd6a3635ad47279889b9f66358da519c',NULL,'2024-09-29 08:38:21'),(2,'api_enabled','0',NULL,'2024-09-29 08:38:21'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"bottom-bar-menu\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"stripe-connect\",\"translation\"]',NULL,'2024-09-29 08:38:21'),(4,'analytics_dashboard_widgets','0','2024-09-29 08:37:56','2024-09-29 08:37:56'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2024-09-29 08:37:57','2024-09-29 08:37:57'),(6,'api_layer_api_key','',NULL,'2024-09-29 08:38:21'),(9,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2024-09-29 08:38:00','2024-09-29 08:38:00'),(10,'theme','nest',NULL,'2024-09-29 08:38:21'),(11,'show_admin_bar','1',NULL,'2024-09-29 08:38:21'),(12,'language_hide_default','1',NULL,'2024-09-29 08:38:21'),(13,'language_switcher_display','dropdown',NULL,'2024-09-29 08:38:21'),(14,'language_display','all',NULL,'2024-09-29 08:38:21'),(15,'language_hide_languages','[]',NULL,'2024-09-29 08:38:21'),(16,'ecommerce_store_name','Nest',NULL,NULL),(17,'ecommerce_store_phone','18006268',NULL,NULL),(18,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(19,'ecommerce_store_state','Singapore',NULL,NULL),(20,'ecommerce_store_city','Singapore',NULL,NULL),(21,'ecommerce_store_country','SG',NULL,NULL),(22,'payment_cod_status','1',NULL,'2024-09-29 08:38:21'),(23,'payment_bank_transfer_status','1',NULL,'2024-09-29 08:38:21'),(24,'admin_favicon','general/favicon.png',NULL,'2024-09-29 08:38:21'),(25,'admin_logo','general/logo.png',NULL,'2024-09-29 08:38:21'),(26,'permalink-botble-blog-models-post','blog',NULL,'2024-09-29 08:38:21'),(27,'permalink-botble-blog-models-category','blog',NULL,'2024-09-29 08:38:21'),(28,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-09-29 08:38:21'),(29,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-09-29 08:38:21'),(30,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-09-29 08:38:21'),(31,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-09-29 08:38:21'),(32,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-09-29 08:38:21'),(33,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-09-29 08:38:21'),(34,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-09-29 08:38:21'),(35,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2024-09-29 08:38:21'),(36,'ecommerce_product_sku_format','NST-2443-[%S]',NULL,'2024-09-29 08:38:21'),(37,'ecommerce_enable_product_specification','1',NULL,'2024-09-29 08:38:21'),(38,'theme-nest-site_title','Nest - Laravel Multipurpose eCommerce Script',NULL,NULL),(39,'theme-nest-seo_description','Nest is an attractive Laravel multi-vendor eCommerce script specially designed for the multipurpose shops like mega store, grocery store, supermarket, organic shop, and online stores selling products like beverages, vegetables, fruits, ice creams, paste, herbs, juice, meat, cold drinks, sausages, cocktails, soft drinks, cookies…',NULL,NULL),(40,'theme-nest-copyright','Copyright © %Y Nest all rights reserved. Powered by Botble.',NULL,NULL),(41,'theme-nest-favicon','general/favicon.png',NULL,NULL),(42,'theme-nest-logo','general/logo.png',NULL,NULL),(43,'theme-nest-seo_og_image','general/open-graph-image.png',NULL,NULL),(44,'theme-nest-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(45,'theme-nest-hotline','1900 - 888',NULL,NULL),(46,'theme-nest-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(47,'theme-nest-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(48,'theme-nest-homepage_id','1',NULL,NULL),(49,'theme-nest-blog_page_id','5',NULL,NULL),(50,'theme-nest-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(51,'theme-nest-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(52,'theme-nest-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(53,'theme-nest-payment_methods','general/payment-methods.png',NULL,NULL),(54,'theme-nest-number_of_cross_sale_product','4',NULL,NULL),(55,'theme-nest-mobile-header-message','<span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>',NULL,NULL),(56,'theme-nest-blog_page_background','general/header-bg.png',NULL,NULL),(57,'theme-nest-blog_page_icon','general/category-1.png',NULL,NULL),(58,'theme-nest-login_background','general/login-1.png',NULL,NULL),(59,'theme-nest-number_of_products_per_page','12',NULL,NULL),(60,'theme-nest-preloader_enabled','yes',NULL,NULL),(61,'theme-nest-preloader_version','v2',NULL,NULL),(62,'theme-nest-preloader_image','general/loading.gif',NULL,NULL),(63,'theme-nest-sticky_header_content_position','middle',NULL,NULL),(64,'theme-nest-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"general\\/facebook.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"general\\/twitter.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"general\\/instagram.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"general\\/pinterest.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"general\\/youtube.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\"}]]',NULL,NULL),(65,'theme-nest-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Super Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(66,'theme-nest-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL),(67,'theme-nest-number_of_products_per_row','5',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Don’t miss amazing<br> grocery deals','sliders/1-1.png','/products','Sign up for the daily newsletter',1,'2024-09-29 08:38:15','2024-09-29 08:38:15'),(2,1,'Fresh Vegetables<br>\n										Big discount','sliders/1-2.png','/products','Save up to 50% off on your first order',2,'2024-09-29 08:38:15','2024-09-29 08:38:15'),(3,2,'Don’t miss amazing<br> grocery deals','sliders/2-1.png','/products','Sign up for the daily newsletter',1,'2024-09-29 08:38:15','2024-09-29 08:38:15'),(4,2,'Fresh Vegetables<br>\n										Big discount','sliders/2-2.png','/products','Save up to 50% off on your first order',2,'2024-09-29 08:38:15','2024-09-29 08:38:15'),(5,3,'Don’t miss amazing<br> grocery deals','sliders/3-1.png','/products','Sign up for the daily newsletter',1,'2024-09-29 08:38:15','2024-09-29 08:38:15'),(6,3,'Fresh Vegetables<br>\n										Big discount','sliders/3-2.png','/products','Save up to 50% off on your first order',2,'2024-09-29 08:38:15','2024-09-29 08:38:15'),(7,4,'Don’t miss amazing<br> grocery deals','sliders/4-1.png','/products','Sign up for the daily newsletter',1,'2024-09-29 08:38:15','2024-09-29 08:38:15'),(8,4,'Fresh Vegetables<br>\n										Big discount','sliders/4-2.png','/products','Save up to 50% off on your first order',2,'2024-09-29 08:38:15','2024-09-29 08:38:15'),(9,5,'Don’t miss amazing<br> grocery deals','sliders/5-1.png','/products','Sign up for the daily newsletter',1,'2024-09-29 08:38:15','2024-09-29 08:38:15'),(10,5,'Fresh Vegetables<br>\n										Big discount','sliders/5-2.png','/products','Save up to 50% off on your first order',2,'2024-09-29 08:38:15','2024-09-29 08:38:15'),(11,6,'Don’t miss amazing<br> grocery deals','sliders/6-1.png','/products','Sign up for the daily newsletter',1,'2024-09-29 08:38:15','2024-09-29 08:38:15'),(12,7,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2024-09-29 08:38:15','2024-09-29 08:38:15'),(13,7,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2024-09-29 08:38:15','2024-09-29 08:38:15'),(14,7,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2024-09-29 08:38:15','2024-09-29 08:38:15'),(15,7,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2024-09-29 08:38:15','2024-09-29 08:38:15'),(16,7,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2024-09-29 08:38:15','2024-09-29 08:38:15'),(17,7,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2024-09-29 08:38:15','2024-09-29 08:38:15');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2024-09-29 08:38:15','2024-09-29 08:38:15'),(2,'Home slider 2','home-slider-2',NULL,'published','2024-09-29 08:38:15','2024-09-29 08:38:15'),(3,'Home slider 3','home-slider-3',NULL,'published','2024-09-29 08:38:15','2024-09-29 08:38:15'),(4,'Home slider 4','home-slider-4',NULL,'published','2024-09-29 08:38:15','2024-09-29 08:38:15'),(5,'Home slider 5','home-slider-5',NULL,'published','2024-09-29 08:38:15','2024-09-29 08:38:15'),(6,'Home slider 6','home-slider-6',NULL,'published','2024-09-29 08:38:15','2024-09-29 08:38:15'),(7,'Blog slider 1','blog-slider-1',NULL,'published','2024-09-29 08:38:15','2024-09-29 08:38:15');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-09-29 08:38:01','2024-09-29 08:38:01'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-09-29 08:38:01','2024-09-29 08:38:01'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-09-29 08:38:01','2024-09-29 08:38:01'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-09-29 08:38:01','2024-09-29 08:38:01'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-09-29 08:38:01','2024-09-29 08:38:01'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2024-09-29 08:38:01','2024-09-29 08:38:01'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2024-09-29 08:38:01','2024-09-29 08:38:01'),(8,'milks-and-dairies',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:38:03','2024-09-29 08:38:03'),(9,'clothing-beauty',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:38:03','2024-09-29 08:38:03'),(10,'pet-toy',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:38:03','2024-09-29 08:38:03'),(11,'baking-material',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:38:03','2024-09-29 08:38:03'),(12,'fresh-fruit',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:38:03','2024-09-29 08:38:03'),(13,'wines-drinks',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:38:03','2024-09-29 08:38:03'),(14,'fresh-seafood',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:38:03','2024-09-29 08:38:03'),(15,'fast-food',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:38:03','2024-09-29 08:38:03'),(16,'vegetables',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:38:03','2024-09-29 08:38:03'),(17,'bread-and-juice',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:38:03','2024-09-29 08:38:03'),(18,'cake-milk',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:38:03','2024-09-29 08:38:03'),(19,'coffee-teas',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:38:03','2024-09-29 08:38:03'),(20,'pet-foods',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:38:03','2024-09-29 08:38:03'),(21,'diet-foods',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-09-29 08:38:03','2024-09-29 08:38:03'),(22,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-09-29 08:38:03','2024-09-29 08:38:03'),(23,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-09-29 08:38:03','2024-09-29 08:38:03'),(24,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-09-29 08:38:03','2024-09-29 08:38:03'),(25,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-09-29 08:38:03','2024-09-29 08:38:03'),(26,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-09-29 08:38:03','2024-09-29 08:38:03'),(27,'seeds-of-change-organic-quinoe',1,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:08'),(28,'all-natural-italian-style-chicken-meatballs',2,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:08'),(29,'angies-boomchickapop-sweet-salty-kettle-corn',3,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:08'),(30,'foster-farms-takeout-crispy-classic-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:24'),(31,'blue-diamond-almonds-lightly',5,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:08'),(32,'chobani-complete-vanilla-greek',6,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:08'),(33,'canada-dry-ginger-ale-2-l-bottle',7,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:08'),(34,'encore-seafoods-stuffed-alaskan-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:24'),(35,'gortons-beer-battered-fish-fillets',9,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:08'),(36,'haagen-dazs-caramel-cone-ice-cream',10,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:08'),(37,'nestle-original-coffee-mate-coffee-creamer',11,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:08'),(38,'naturally-flavored-cinnamon-vanilla-light-roast-coffee-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:24'),(39,'pepperidge-farm-farmhouse-hearty-white-bread',13,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:08'),(40,'organic-frozen-triple-berry-blend',14,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:08'),(41,'oroweat-country-buttermilk-bread',15,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:08'),(42,'foster-farms-takeout-crispy-classic-buffalo-wings-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:24'),(43,'angies-boomchickapop-sweet-salty-kettle-corn',17,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:08'),(44,'all-natural-italian-style-chicken-meatballs',18,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:08'),(45,'simply-lemonade-with-raspberry-juice',19,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:08'),(46,'perdue-simply-smart-organics-gluten-free-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:24'),(47,'chen-watermelon',21,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:08'),(48,'organic-cage-free-grade-a-large-brown-eggs',22,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:08'),(49,'colorful-banana',23,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:08'),(50,'signature-wood-fired-mushroom-and-caramelized-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:08','2024-09-29 08:38:24'),(51,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2024-09-29 08:38:16','2024-09-29 08:38:19'),(52,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-09-29 08:38:16','2024-09-29 08:38:19'),(53,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-09-29 08:38:16','2024-09-29 08:38:19'),(54,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-09-29 08:38:16','2024-09-29 08:38:19'),(55,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-09-29 08:38:16','2024-09-29 08:38:16'),(56,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-09-29 08:38:16','2024-09-29 08:38:16'),(57,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-09-29 08:38:16','2024-09-29 08:38:16'),(58,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-09-29 08:38:16','2024-09-29 08:38:16'),(59,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-09-29 08:38:16','2024-09-29 08:38:16'),(60,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:38:16','2024-09-29 08:38:19'),(61,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:38:16','2024-09-29 08:38:19'),(62,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:38:16','2024-09-29 08:38:19'),(63,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:38:16','2024-09-29 08:38:19'),(64,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:38:16','2024-09-29 08:38:19'),(65,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:38:16','2024-09-29 08:38:19'),(66,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:38:16','2024-09-29 08:38:19'),(67,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:38:16','2024-09-29 08:38:19'),(68,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:38:16','2024-09-29 08:38:19'),(69,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:38:16','2024-09-29 08:38:19'),(70,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-09-29 08:38:16','2024-09-29 08:38:19'),(71,'homepage',1,'Botble\\Page\\Models\\Page','','2024-09-29 08:38:17','2024-09-29 08:38:17'),(72,'homepage-2',2,'Botble\\Page\\Models\\Page','','2024-09-29 08:38:17','2024-09-29 08:38:17'),(73,'homepage-3',3,'Botble\\Page\\Models\\Page','','2024-09-29 08:38:17','2024-09-29 08:38:17'),(74,'homepage-4',4,'Botble\\Page\\Models\\Page','','2024-09-29 08:38:17','2024-09-29 08:38:17'),(75,'blog',5,'Botble\\Page\\Models\\Page','','2024-09-29 08:38:17','2024-09-29 08:38:17'),(76,'contact',6,'Botble\\Page\\Models\\Page','','2024-09-29 08:38:17','2024-09-29 08:38:17'),(77,'about-us',7,'Botble\\Page\\Models\\Page','','2024-09-29 08:38:17','2024-09-29 08:38:17'),(78,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2024-09-29 08:38:17','2024-09-29 08:38:17'),(79,'terms-conditions',9,'Botble\\Page\\Models\\Page','','2024-09-29 08:38:17','2024-09-29 08:38:17'),(80,'returns-exchanges',10,'Botble\\Page\\Models\\Page','','2024-09-29 08:38:17','2024-09-29 08:38:17'),(81,'shipping-delivery',11,'Botble\\Page\\Models\\Page','','2024-09-29 08:38:17','2024-09-29 08:38:17'),(82,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2024-09-29 08:38:17','2024-09-29 08:38:17'),(83,'blog-list',13,'Botble\\Page\\Models\\Page','','2024-09-29 08:38:17','2024-09-29 08:38:17'),(84,'blog-big',14,'Botble\\Page\\Models\\Page','','2024-09-29 08:38:17','2024-09-29 08:38:17'),(85,'blog-wide',15,'Botble\\Page\\Models\\Page','','2024-09-29 08:38:17','2024-09-29 08:38:17'),(86,'homepage-5',16,'Botble\\Page\\Models\\Page','','2024-09-29 08:38:17','2024-09-29 08:38:17'),(87,'homepage-6',17,'Botble\\Page\\Models\\Page','','2024-09-29 08:38:17','2024-09-29 08:38:17'),(88,'faq',18,'Botble\\Page\\Models\\Page','','2024-09-29 08:38:17','2024-09-29 08:38:17'),(89,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-09-29 08:38:23','2024-09-29 08:38:23'),(90,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-09-29 08:38:23','2024-09-29 08:38:23'),(91,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-09-29 08:38:23','2024-09-29 08:38:23'),(92,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-09-29 08:38:23','2024-09-29 08:38:23'),(93,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2024-09-29 08:38:23','2024-09-29 08:38:23'),(94,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2024-09-29 08:38:23','2024-09-29 08:38:23'),(95,'seeds-of-change-organic-quinoe',25,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(96,'all-natural-italian-style-chicken-meatballs',26,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(97,'all-natural-italian-style-chicken-meatballs',27,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(98,'angies-boomchickapop-sweet-salty-kettle-corn',28,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(99,'foster-farms-takeout-crispy-classic-digital',29,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(100,'foster-farms-takeout-crispy-classic-digital',30,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(101,'foster-farms-takeout-crispy-classic-digital',31,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(102,'foster-farms-takeout-crispy-classic-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(103,'foster-farms-takeout-crispy-classic-digital',33,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(104,'chobani-complete-vanilla-greek',34,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(105,'encore-seafoods-stuffed-alaskan-digital',35,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(106,'encore-seafoods-stuffed-alaskan-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(107,'encore-seafoods-stuffed-alaskan-digital',37,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(108,'gortons-beer-battered-fish-fillets',38,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(109,'gortons-beer-battered-fish-fillets',39,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(110,'gortons-beer-battered-fish-fillets',40,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(111,'haagen-dazs-caramel-cone-ice-cream',41,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(112,'haagen-dazs-caramel-cone-ice-cream',42,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(113,'haagen-dazs-caramel-cone-ice-cream',43,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(114,'haagen-dazs-caramel-cone-ice-cream',44,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(115,'haagen-dazs-caramel-cone-ice-cream',45,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(116,'nestle-original-coffee-mate-coffee-creamer',46,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(117,'nestle-original-coffee-mate-coffee-creamer',47,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(118,'organic-frozen-triple-berry-blend',48,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(119,'organic-frozen-triple-berry-blend',49,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(120,'organic-frozen-triple-berry-blend',50,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(121,'oroweat-country-buttermilk-bread',51,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(122,'oroweat-country-buttermilk-bread',52,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(123,'angies-boomchickapop-sweet-salty-kettle-corn',53,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(124,'angies-boomchickapop-sweet-salty-kettle-corn',54,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(125,'all-natural-italian-style-chicken-meatballs',55,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(126,'all-natural-italian-style-chicken-meatballs',56,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(127,'all-natural-italian-style-chicken-meatballs',57,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(128,'simply-lemonade-with-raspberry-juice',58,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(129,'simply-lemonade-with-raspberry-juice',59,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(130,'simply-lemonade-with-raspberry-juice',60,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(131,'perdue-simply-smart-organics-gluten-free-digital',61,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(132,'perdue-simply-smart-organics-gluten-free-digital',62,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(133,'perdue-simply-smart-organics-gluten-free-digital',63,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(134,'perdue-simply-smart-organics-gluten-free-digital',64,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24'),(135,'perdue-simply-smart-organics-gluten-free-digital',65,'Botble\\Ecommerce\\Models\\Product','products','2024-09-29 08:38:24','2024-09-29 08:38:24');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-29 08:38:16','2024-09-29 08:38:16'),(2,'Design',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-29 08:38:16','2024-09-29 08:38:16'),(3,'Fashion',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-29 08:38:16','2024-09-29 08:38:16'),(4,'Branding',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-29 08:38:16','2024-09-29 08:38:16'),(5,'Modern',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-29 08:38:16','2024-09-29 08:38:16');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ikris@muller.com',NULL,'$2y$12$9vY8nvhJ.zBnjENFEZgMy.IocYKscIqIulMejqJVdro5Utgjh1g1q',NULL,'2024-09-29 08:38:17','2024-09-29 08:38:17','Aiyana','Schaefer','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','nest',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\",\"about\":\"Awesome grocery store website template\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Mon - Sat\"}','2024-09-29 08:38:21','2024-09-29 08:38:21'),(2,'CustomMenuWidget','footer_sidebar','nest',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2024-09-29 08:38:21','2024-09-29 08:38:21'),(3,'CustomMenuWidget','footer_sidebar','nest',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2024-09-29 08:38:21','2024-09-29 08:38:21'),(4,'CustomMenuWidget','footer_sidebar','nest',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2024-09-29 08:38:21','2024-09-29 08:38:21'),(5,'InstallAppWidget','footer_sidebar','nest',3,'{\"id\":\"InstallAppWidget\",\"name\":\"Install App\",\"apps_description\":\"From App Store or Google Play\",\"ios_app_url\":\"#\",\"ios_app_image\":\"general\\/app-store.jpg\",\"android_app_url\":\"#\",\"android_app_image\":\"general\\/google-play.jpg\",\"payment_gateway_description\":\"Secured Payment Gateways\",\"payment_gateway_image\":\"general\\/payment-methods.png\"}','2024-09-29 08:38:21','2024-09-29 08:38:21'),(6,'BlogSearchWidget','primary_sidebar','nest',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2024-09-29 08:38:21','2024-09-29 08:38:21'),(7,'ProductCategoriesWidget','primary_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2024-09-29 08:38:21','2024-09-29 08:38:21'),(8,'TrendingProductsWidget','primary_sidebar','nest',2,'{\"id\":\"TrendingProductsWidget\",\"name\":\"Trending Now\",\"number_display\":4}','2024-09-29 08:38:21','2024-09-29 08:38:21'),(9,'TagsWidget','primary_sidebar','nest',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2024-09-29 08:38:21','2024-09-29 08:38:21'),(10,'AdsWidget','primary_sidebar','nest',5,'{\"id\":\"AdsWidget\",\"name\":\"Organic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2024-09-29 08:38:21','2024-09-29 08:38:21'),(11,'ProductCategoriesWidget','product_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2024-09-29 08:38:21','2024-09-29 08:38:21'),(12,'NewProductsWidget','product_sidebar','nest',3,'{\"id\":\"NewProductsWidget\",\"name\":\"New products\"}','2024-09-29 08:38:21','2024-09-29 08:38:21'),(13,'AdsWidget','product_sidebar','nest',4,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2024-09-29 08:38:21','2024-09-29 08:38:21'),(14,'NewsletterWidget','pre_footer_sidebar','nest',0,'{\"id\":\"NewsletterWidget\",\"title\":\"Stay home & get your daily <br \\/>needs from our shop\",\"subtitle\":\"Start Your Daily Shopping with <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2024-09-29 08:38:21','2024-09-29 08:38:21'),(15,'SiteFeaturesWidget','pre_footer_sidebar','nest',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Best prices & offers\",\"subtitle\":\"Orders $50 or more\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Free delivery\",\"subtitle\":\"24\\/7 amazing services\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"Great daily deal\",\"subtitle\":\"When you sign up\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Wide assortment\",\"subtitle\":\"Mega Discounts\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"Easy returns\",\"subtitle\":\"Within 30 days\"}}}','2024-09-29 08:38:21','2024-09-29 08:38:21');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-29 22:38:25
