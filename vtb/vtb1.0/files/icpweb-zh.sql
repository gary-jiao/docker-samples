-- MySQL dump 10.13  Distrib 5.5.24, for Win64 (x86)
--
-- Host: 10.243.116.120    Database: icpwebtest2
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Table structure for table `t_account`
--

DROP TABLE IF EXISTS `t_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_account`
--

LOCK TABLES `t_account` WRITE;
/*!40000 ALTER TABLE `t_account` DISABLE KEYS */;
INSERT INTO `t_account` VALUES (1,'Admin','2012-05-09 08:00:00',NULL,'admin@gmail.com','626-780-7552','5ad755ec9fc9ea79c71b9b278fb97115da8cbc88f363dc4334b327b157e3caed8b2fdc80e862fe780a382e422fb3e82eae3eef7d2c5000ee98d7ef3d58dc5726',1),(2,'Ben','2012-05-09 08:00:00',NULL,'ben@gmail.com','626-780-7552','5ad755ec9fc9ea79c71b9b278fb97115da8cbc88f363dc4334b327b157e3caed8b2fdc80e862fe780a382e422fb3e82eae3eef7d2c5000ee98d7ef3d58dc5726',1),(3,'David','2015-03-16 08:00:00',NULL,'David@gmail.com','310-123-4567','5ad755ec9fc9ea79c71b9b278fb97115da8cbc88f363dc4334b327b157e3caed8b2fdc80e862fe780a382e422fb3e82eae3eef7d2c5000ee98d7ef3d58dc5726',1),(4,'Emma','2015-03-21 08:00:00',NULL,'Emma@gmail.com','617-669-3556','5ad755ec9fc9ea79c71b9b278fb97115da8cbc88f363dc4334b327b157e3caed8b2fdc80e862fe780a382e422fb3e82eae3eef7d2c5000ee98d7ef3d58dc5726',1),(5,'Will','2015-04-16 08:00:00',NULL,'Will@gmail.com','212-556-8793','5ad755ec9fc9ea79c71b9b278fb97115da8cbc88f363dc4334b327b157e3caed8b2fdc80e862fe780a382e422fb3e82eae3eef7d2c5000ee98d7ef3d58dc5726',1),(6,'Sun','2015-04-16 08:00:00',NULL,'sun@gmail.com','216-467-3553','5ad755ec9fc9ea79c71b9b278fb97115da8cbc88f363dc4334b327b157e3caed8b2fdc80e862fe780a382e422fb3e82eae3eef7d2c5000ee98d7ef3d58dc5726',1),(7,'White','2015-04-16 08:00:00',NULL,'white@gmail.com','216-467-3553','5ad755ec9fc9ea79c71b9b278fb97115da8cbc88f363dc4334b327b157e3caed8b2fdc80e862fe780a382e422fb3e82eae3eef7d2c5000ee98d7ef3d58dc5726',1);
/*!40000 ALTER TABLE `t_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_account_role`
--

DROP TABLE IF EXISTS `t_account_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_account_role` (
  `account_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`account_id`,`role_id`),
  KEY `FK_pgish3unlt9gi56tei7isfs28` (`role_id`),
  CONSTRAINT `FK_pgish3unlt9gi56tei7isfs28` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`),
  CONSTRAINT `FK_s3hs3kjeite8e9hqxl21v2pix` FOREIGN KEY (`account_id`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_account_role`
--

LOCK TABLES `t_account_role` WRITE;
/*!40000 ALTER TABLE `t_account_role` DISABLE KEYS */;
INSERT INTO `t_account_role` VALUES (1,1),(2,2),(3,2),(6,2),(7,2),(5,3),(4,4);
/*!40000 ALTER TABLE `t_account_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_assistants`
--

DROP TABLE IF EXISTS `t_assistants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_assistants` (
  `assistant` bigint(20) NOT NULL,
  `master` bigint(20) NOT NULL,
  PRIMARY KEY (`master`,`assistant`),
  KEY `FK_hex8g2tan86es2g3y2ladncsg` (`assistant`),
  CONSTRAINT `FK_duwys39vekj9hd3go0s1bvkjh` FOREIGN KEY (`master`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_hex8g2tan86es2g3y2ladncsg` FOREIGN KEY (`assistant`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_assistants`
--

LOCK TABLES `t_assistants` WRITE;
/*!40000 ALTER TABLE `t_assistants` DISABLE KEYS */;
INSERT INTO `t_assistants` VALUES (2,1);
/*!40000 ALTER TABLE `t_assistants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_audit_log`
--

DROP TABLE IF EXISTS `t_audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_audit_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action_content` text COLLATE utf8_unicode_ci,
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remote_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resource` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fg1qns17osjv9mx4wmn65gir5` (`account_id`),
  CONSTRAINT `FK_fg1qns17osjv9mx4wmn65gir5` FOREIGN KEY (`account_id`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_audit_log`
--

LOCK TABLES `t_audit_log` WRITE;
/*!40000 ALTER TABLE `t_audit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_classification`
--

DROP TABLE IF EXISTS `t_classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_classification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_classification`
--

LOCK TABLES `t_classification` WRITE;
/*!40000 ALTER TABLE `t_classification` DISABLE KEYS */;
INSERT INTO `t_classification` VALUES (1,'血常规'),(2,'肝功'),(3,'乙肝两对半'),(4,'丙肝'),(5,'癌胚蛋白'),(6,'胸片或胸部CT'),(7,'CA19-9'),(8,'腹部CT或MR'),(9,'超声数据'),(10,'影像数据'),(11,'其他');
/*!40000 ALTER TABLE `t_classification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_department`
--

DROP TABLE IF EXISTS `t_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(800) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_department`
--

LOCK TABLES `t_department` WRITE;
/*!40000 ALTER TABLE `t_department` DISABLE KEYS */;
INSERT INTO `t_department` VALUES (1,'冠心病、高血压、高血脂、心肌病、心力衰竭、瓣膜病等心内科各种疾病的诊治','心内科',1),(2,'胃肠道肿瘤、腹腔镜外科、乳腺肿瘤，结直肠、胆道疾病内镜、乳腺疾病、甲状腺疾病、胃肠道肿瘤以及腹外疝等的外科诊治','普外科',1),(3,'肺部感染、肺部炎症、慢性阻塞性肺病、肺栓塞、 慢阻肺，哮喘、各种呼吸系统疾病的诊治','呼吸科',1),(4,'肺癌、食管癌、贲门癌、纵膈肿瘤、气管、肺良恶性疾病、以及各种胸外科疑难杂症的诊治','胸外科',1),(5,'股骨头坏死、骨关节炎、腰突症，颈椎病，腰椎滑脱，椎管狭窄，脊柱外伤、骨与关节损伤及疾病','骨科',1),(6,'头痛、眩（头）晕、癫痫、脑血管病、痴呆及记忆力减退、帕金森病诊治及神经保护策略','神经内科',1),(7,'糖尿病、肾上腺疾病、血脂紊乱、骨代谢疾病、骨质疏松症、代谢综合征、甲亢、甲状腺结节等内分泌代谢疾病','内分泌科',1),(8,'肝肿瘤外科诊治，肝移植、肝癌综合治疗','肝外科',1),(9,'泌尿系统肿瘤诊治，尿控相关疾病','泌尿科',1),(10,'月经失调，围绝经期疾病，妇科良，恶性肿瘤的诊治；产科合并症及并发症的处理','妇产科',1),(11,'CT、MR和X线对肾上腺、腹膜后、骨骼系统、泌尿系统和结外淋巴瘤的诊断','放射科',1),(12,'中西医结合治疗肿瘤（肝癌、胃癌、肠癌），血管病，风湿病等','中医科',1),(13,'皮肤病、性病、红斑狼疮、皮肌炎、硬皮病、皮炎、湿疹、荨麻疹等免疫性皮肤病','皮肤科',1),(14,'美容手术、血管瘤、淋巴水肿、创伤、软组织肿瘤切除后创伤修复','整形外科',1),(15,'肝胆胰肿瘤、大肠肿瘤、妇科肿瘤、泌尿系统肿瘤、胸部肿瘤治疗','肿瘤科',1);
/*!40000 ALTER TABLE `t_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dicom_series`
--

DROP TABLE IF EXISTS `t_dicom_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dicom_series` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dicom_patientId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `match_patientHistoryId` bigint(20) DEFAULT NULL,
  `modality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `series_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3fgbu75idgf51f24qu97xndxb` (`series_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dicom_series`
--

LOCK TABLES `t_dicom_series` WRITE;
/*!40000 ALTER TABLE `t_dicom_series` DISABLE KEYS */;
INSERT INTO `t_dicom_series` VALUES (1,'image_04-18-2013_0','173484',1,'CT','1.2.840.113704.1.111.4152.1363743104.22',1,'2016-01-25 07:12:18');
/*!40000 ALTER TABLE `t_dicom_series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_doctor_group`
--

DROP TABLE IF EXISTS `t_doctor_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_doctor_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_jc0tes93hr2cmlc42kmkjlxsj` (`creator_id`),
  CONSTRAINT `FK_jc0tes93hr2cmlc42kmkjlxsj` FOREIGN KEY (`creator_id`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_doctor_group`
--

LOCK TABLES `t_doctor_group` WRITE;
/*!40000 ALTER TABLE `t_doctor_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_doctor_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_doctor_group_healthrecord`
--

DROP TABLE IF EXISTS `t_doctor_group_healthrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_doctor_group_healthrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `creator_id` bigint(20) NOT NULL,
  `group_message_id` bigint(20) NOT NULL,
  `healthrecord_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_khxar8snu7gdau2e0ae77g8y5` (`creator_id`),
  KEY `FK_no8wu65u4ftncj8ff7yas9csg` (`group_message_id`),
  KEY `FK_fauls08afcs12mdvtf7f184nu` (`healthrecord_id`),
  CONSTRAINT `FK_fauls08afcs12mdvtf7f184nu` FOREIGN KEY (`healthrecord_id`) REFERENCES `t_healthrecord` (`id`),
  CONSTRAINT `FK_khxar8snu7gdau2e0ae77g8y5` FOREIGN KEY (`creator_id`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_no8wu65u4ftncj8ff7yas9csg` FOREIGN KEY (`group_message_id`) REFERENCES `t_doctor_group_message` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_doctor_group_healthrecord`
--

LOCK TABLES `t_doctor_group_healthrecord` WRITE;
/*!40000 ALTER TABLE `t_doctor_group_healthrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_doctor_group_healthrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_doctor_group_member`
--

DROP TABLE IF EXISTS `t_doctor_group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_doctor_group_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `creator_id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5vmsaruy59vtj2665tb91pvm8` (`creator_id`),
  KEY `FK_rv3b7x4fmh9ardy6k4t0rwdeg` (`group_id`),
  KEY `FK_42f5uw78to1syg3u7k6j55r78` (`member_id`),
  CONSTRAINT `FK_42f5uw78to1syg3u7k6j55r78` FOREIGN KEY (`member_id`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_5vmsaruy59vtj2665tb91pvm8` FOREIGN KEY (`creator_id`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_rv3b7x4fmh9ardy6k4t0rwdeg` FOREIGN KEY (`group_id`) REFERENCES `t_doctor_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_doctor_group_member`
--

LOCK TABLES `t_doctor_group_member` WRITE;
/*!40000 ALTER TABLE `t_doctor_group_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_doctor_group_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_doctor_group_message`
--

DROP TABLE IF EXISTS `t_doctor_group_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_doctor_group_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `create_time` datetime DEFAULT NULL,
  `creator_id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_j041r73habdyakn2amiiasoqj` (`creator_id`),
  KEY `FK_fu7rb83oru1npgtfbq8jld8r5` (`group_id`),
  CONSTRAINT `FK_fu7rb83oru1npgtfbq8jld8r5` FOREIGN KEY (`group_id`) REFERENCES `t_doctor_group` (`id`),
  CONSTRAINT `FK_j041r73habdyakn2amiiasoqj` FOREIGN KEY (`creator_id`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_doctor_group_message`
--

LOCK TABLES `t_doctor_group_message` WRITE;
/*!40000 ALTER TABLE `t_doctor_group_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_doctor_group_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_doctor_group_patient`
--

DROP TABLE IF EXISTS `t_doctor_group_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_doctor_group_patient` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `creator_id` bigint(20) NOT NULL,
  `group_message_id` bigint(20) NOT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9ju5bxjyqbt8pxuonk4dbc9st` (`creator_id`),
  KEY `FK_q410elhtixwmpqdm69k9ps6p4` (`group_message_id`),
  KEY `FK_92gdmh888s70g4k8qf1sk7u7g` (`patient_id`),
  CONSTRAINT `FK_92gdmh888s70g4k8qf1sk7u7g` FOREIGN KEY (`patient_id`) REFERENCES `t_patient` (`id`),
  CONSTRAINT `FK_9ju5bxjyqbt8pxuonk4dbc9st` FOREIGN KEY (`creator_id`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_q410elhtixwmpqdm69k9ps6p4` FOREIGN KEY (`group_message_id`) REFERENCES `t_doctor_group_message` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_doctor_group_patient`
--

LOCK TABLES `t_doctor_group_patient` WRITE;
/*!40000 ALTER TABLE `t_doctor_group_patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_doctor_group_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_doctor_group_snapshot`
--

DROP TABLE IF EXISTS `t_doctor_group_snapshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_doctor_group_snapshot` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `creator_id` bigint(20) NOT NULL,
  `group_message_id` bigint(20) NOT NULL,
  `snapshot_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_kpkcf3w5295lpjirdin2h3kqs` (`creator_id`),
  KEY `FK_r6px57hk1xwrie76fv920ht2l` (`group_message_id`),
  KEY `FK_qv77a10kub8c6o05strgpc27s` (`snapshot_id`),
  CONSTRAINT `FK_kpkcf3w5295lpjirdin2h3kqs` FOREIGN KEY (`creator_id`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_qv77a10kub8c6o05strgpc27s` FOREIGN KEY (`snapshot_id`) REFERENCES `t_snapshot` (`id`),
  CONSTRAINT `FK_r6px57hk1xwrie76fv920ht2l` FOREIGN KEY (`group_message_id`) REFERENCES `t_doctor_group_message` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_doctor_group_snapshot`
--

LOCK TABLES `t_doctor_group_snapshot` WRITE;
/*!40000 ALTER TABLE `t_doctor_group_snapshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_doctor_group_snapshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_healthrecord`
--

DROP TABLE IF EXISTS `t_healthrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_healthrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `desciption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `owner_passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reserved1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reserved2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT '0',
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` bigint(20) DEFAULT NULL,
  `patient_history_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sk27kvcm2xxdddso2ib4jfkgx` (`classification`),
  KEY `FK_6703ktfu3c33xnfrwgj6m99yi` (`patient_history_id`),
  CONSTRAINT `FK_6703ktfu3c33xnfrwgj6m99yi` FOREIGN KEY (`patient_history_id`) REFERENCES `t_patient_history` (`id`),
  CONSTRAINT `FK_sk27kvcm2xxdddso2ib4jfkgx` FOREIGN KEY (`classification`) REFERENCES `t_classification` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_healthrecord`
--

LOCK TABLES `t_healthrecord` WRITE;
/*!40000 ALTER TABLE `t_healthrecord` DISABLE KEYS */;
INSERT INTO `t_healthrecord` VALUES (1,'2016-01-25 13:44:32','201601121512162303',194939,'C/MeYcqlffu+FuCJafXbXg==',NULL,NULL,1,1,'/1/6432e0d853b14c2985043f9eb4b99275.pdf','ILhmbnaGCxwV/bwF/fuQYg==',11,1),(2,'2016-01-25 13:46:07','图一 (2)',93616,'I7scg4r1Ozf5IUhgaTvkQw==',NULL,NULL,1,1,'/2/32dc6fd31e1c4fbf842d21d1fae5b048.pdf','roeugMihUJQfOeBvICbMYQ==',11,2),(3,'2016-01-25 13:46:07','图二 (2)',94636,'gVGGF2elQa6/Jsrr5CI7UQ==',NULL,NULL,1,1,'/2/6c9fe0fca7a24e4cbff43283b48a5f8e.pdf','nMzWqUR3vNydNM72uos56w==',11,2),(4,'2016-01-25 13:46:58','图一 (3)',160553,'mLMxjB/OIFs18kPVavawjg==',NULL,NULL,1,1,'/4/967d9451f6b8419f96dee86f01af99bd.pdf','eGpunZTgJw2CQMwYMqsdFw==',11,4),(5,'2016-01-25 13:46:58','图二 (3)',159588,'1Pq7qZpnrHC5Iqqf1gAsdg==',NULL,NULL,1,1,'/4/3ea668eb0a5c4515bc8133bcb112ecc8.pdf','j7tpv4buafr9qDQNIoC7uw==',11,4),(6,'2016-01-25 13:47:39','图一 (4)',127974,'319Z8238hxhNuiWE2XVshg==',NULL,NULL,1,1,'/5/a93a6fda6f344327992078baff4f5a05.pdf','Sy9fhyXgWfhYcyVb3mjEqg==',11,5),(7,'2016-01-25 13:48:54','1 (2)',12864,'YiL7lCabYrzU/julfwkpiw==',NULL,NULL,1,1,'/7/b9dae841dc4d44858382ed5ecc4e4ba6.pdf','fi87uwMPXYDH2wCgOO7OUw==',10,7),(8,'2016-01-25 13:48:54','2 (2)',8639,'wmYl5UU+3u6hNmNQzkSc2w==',NULL,NULL,1,1,'/7/7b8d67a359654ab2adf606c259109e2b.pdf','Gmr6NFXvJh3h71G+b5qUpg==',10,7),(9,'2016-01-25 13:48:54','3 (2)',13364,'ZD9jOnGAF6W6PQWZyroMeg==',NULL,NULL,1,1,'/7/19bc9ccfe7b442759c17dcf9944f45f7.pdf','yhSsha4IjtRnPGUY3XtjfA==',10,7),(10,'2016-01-25 13:48:55','4 (2)',14361,'B0vIgIplQmg8DST5NS6KWw==',NULL,NULL,1,1,'/7/9075826a64544e1f8235b5f635b5a22b.pdf','nNUj6rDm6bZ2Q8M3Hi8K5A==',10,7),(11,'2016-01-25 13:50:16','1 (3)',37362,'299W5nJfPyP/4Xp4jvdpIw==',NULL,NULL,1,1,'/8/e3a13ca2c19543f6a211a04baf0a2ce6.pdf','F9d5fbd0QY48TmKx80gRUg==',10,8),(12,'2016-01-25 13:50:17','2 (3)',20303,'RJK5mKjA5HDbiBPVtOUTLg==',NULL,NULL,1,1,'/8/3e317a345dc149acbfae7e517daf4c51.pdf','sWz89O60zKq7qBgMlyVsJw==',10,8),(13,'2016-01-25 13:51:42','1 (4)',22638,'KkZ20raA9oLtMCBfc3FqNA==',NULL,NULL,1,1,'/10/abb64fd2304843f78e79343482cd4d3f.pdf','XEIXqfHWgZDoOWGCJ+fzQQ==',10,10),(14,'2016-01-25 13:51:42','2 (4)',22638,'2HkVS2mtkELUHKCSDl5OnA==',NULL,NULL,1,1,'/10/e243ec60510b4fdf8e5d80a8523dcf5a.pdf','cXrCUH0w2B9sebWJfQar+w==',10,10),(15,'2016-01-25 13:51:42','3 (3)',24953,'guZTdpZZZH+Ba2xWV4OR9Q==',NULL,NULL,1,1,'/10/b95241922d654dcaa891d853b7423a01.pdf','Y5vqR+LfbB+3E6PXwLw3Rw==',10,10),(16,'2016-01-25 13:51:42','4 (3)',24953,'+jjAGEmkGwb61g8oqCd5rQ==',NULL,NULL,1,1,'/10/e007902ccc694d998a0268a1544ba348.pdf','XVEnjVefdvh62Ju+XC+4AA==',10,10),(17,'2016-01-25 13:52:17','图一 (5)',155270,'vHDn9GRCv6s8TP0tPccIsw==',NULL,NULL,1,1,'/12/66ca0af07c28442d9b11d9bd7205a550.pdf','Tlh5aoiY+/CjMp28pLm66A==',11,12),(18,'2016-01-25 14:51:52','20151109054910300',34991,'vhlOJulzBUZlL8sc3hoLgg==',NULL,NULL,1,1,'/7/598a848542f445e9904bff3bfcaa9f34.pdf','dNFwCSjYgKtrKsK3oTf/MA==',6,7),(19,'2016-01-25 14:51:52','20151109054910392',26500,'JRsm1i8t4M3fKnCZ/MIQLw==',NULL,NULL,1,1,'/7/41d52cdacd9d4b59b5f66be8498bbe39.pdf','++Qa3OZ9mwaEBDIMLAgFUQ==',6,7),(20,'2016-01-25 14:51:52','20151109054910423',35023,'NqYi1hcTfbbJjO2G8Ce4kA==',NULL,NULL,1,1,'/7/c25c3679abfb4b77b898130117f30842.pdf','/5+kOcoKXn1vEZbZ7wRkmA==',6,7),(21,'2016-01-25 14:51:52','20151109054910506',26979,'NpR/6s8zBkYczTGi1dv+5g==',NULL,NULL,1,1,'/7/d58abdd44e654a92a33ce99d5f661eb2.pdf','Ahm2TMLvmtmCkq/6eokokQ==',6,7),(22,'2016-01-25 14:51:53','20151109054910523',26470,'ehdGvE/CmPI6iWCtyIibjg==',NULL,NULL,1,1,'/7/246c43e007804428afe24a066877c3a7.pdf','s6tjrHGdFo+NDRo66lWtEQ==',6,7),(23,'2016-01-25 14:51:53','20151109054910544',34681,'yLibhYeyOiss0IR0WEGmvw==',NULL,NULL,1,1,'/7/4eb516d536584116a20ff3caf7ba2074.pdf','FvgtStUn68fCtGxREQRkCg==',6,7),(24,'2016-01-25 14:51:53','20151109054910679',26165,'U/RJMK3RkKJIC/57D3Zyug==',NULL,NULL,1,1,'/7/06a7a6492b2c48868a272b7b1966b01c.pdf','7OP/6NUYIKWToUXlgBs++w==',6,7),(25,'2016-01-25 14:52:49','20151109054910474',33964,'v2V4hZFaxvE1oWiWqg3yxg==',NULL,NULL,1,1,'/7/c71ae7839a4d44f39e79544ffd0dbbd5.pdf','S2q9taUs8BhHPtPk6qAvYQ==',6,7),(26,'2016-01-25 14:52:49','20151109054910726',34320,'WrAjeYR1xGxkE12czhNIiw==',NULL,NULL,1,1,'/7/929a0122675648f9898392ae53ac837e.pdf','W3+dMiYvPfDPOHOYByl0sg==',6,7),(27,'2016-01-25 14:55:01','20151105050244709',22586,'v8fH3wIBjsf68vXZgR+25w==',NULL,NULL,1,1,'/1/a9d4c87cfb06488a826a63dbf8d645ce.pdf','YNtJAOPf/hRJlavPoHI7Rw==',6,1),(28,'2016-01-25 14:55:01','20151105050244986',22059,'cyYPptC41DeDaWH1S6emjA==',NULL,NULL,1,1,'/1/d1d8f017e06e499797b2875012163ef4.pdf','Bb9Llox3pGU7MTx4j9AarA==',6,1),(29,'2016-01-25 15:03:26','20150930111213104',23727,'P8CUS4L9Ldc3K0mYOV+ruA==',NULL,NULL,1,1,'/1/439824e7cf8d4234847c0ecdaa82d8f6.pdf','B7ni96RwW1PbXPTj01H5mA==',9,1),(30,'2016-01-25 15:03:26','20150930111213194',24266,'9nGnSOOuAxwqhjuCaQMNKQ==',NULL,NULL,1,1,'/1/3c235a24ff134494b05111e81c6f9ab3.pdf','qa1mJV5XqSZ5qWvJhJbH/A==',9,1),(31,'2016-01-25 15:03:27','20150930111213282',116004,'SJ31qMhUwdlcfc+t8Ox6Bg==',NULL,NULL,1,1,'/1/e44bf736fbc54597a503ee2198bb444a.pdf','O0UIMVRApmIuqHEebf6lQg==',9,1),(32,'2016-01-25 15:14:34','image_04-18-2013_0',2989860,NULL,'1.2.840.113704.1.111.4152.1363743104.22','',1,3,'/1/617a317471794f009785c42dafa366dd.mha',NULL,8,1),(33,'2016-01-25 15:17:27','0b55b319ebc4b74512442e07cffc1e178b8215ca',193372,'upOXzt7j83Jh2eRdLzmj7A==',NULL,NULL,1,1,'/7/9ddad6639f55404e81752507174d5dca.pdf','T0ApsltWpKqOZ3GEAqXlUw==',1,7),(34,'2016-01-25 15:17:49','20150930111213104',23727,'O6thVOulr6DU3VCySsheSA==',NULL,NULL,1,1,'/7/1e2f913ebca443a9be568ab4b047db9f.pdf','1Yu1mwSgt9TDo31cK5Q0Ow==',9,7),(35,'2016-01-25 15:17:49','20150930111213194',24266,'xdgjFz0lKLRdjlE8T0O5NQ==',NULL,NULL,1,1,'/7/58fd2f4881f64f3c8e06028c9016bc0b.pdf','pwv6B68NtMOYwPzWgSAGoA==',9,7),(36,'2016-01-25 15:17:50','20150930111213282',116004,'/2SUrpAwAU4UXAaajt5XCA==',NULL,NULL,1,1,'/7/1aab31b267e14094a9e2750a06ccd9d5.pdf','F/wUT34IjBCVAQDjcHUChg==',9,7),(37,'2016-01-25 15:19:02','8b82b9014a90f603ffa0d0fe3912b31bb051ed73',49316,'k6txW6SE7LoJ8ljXbTeY4Q==',NULL,NULL,1,1,'/7/a3fa8e8295714089881568a42667eb0b.pdf','L6SMzjXjKQzsy3mQuM4lCA==',2,7),(38,'2016-01-25 15:21:22','b64543a98226cffc90fde591ba014a90f603ea3a',91997,'5sVPH/BCBqiHRTAHLfQs7w==',NULL,NULL,1,1,'/7/7f0260fe20194679a434f37c6b77ec57.pdf','IljGGCB4BP5Kx37RWMYAAA==',7,7),(39,'2016-01-25 15:21:37','0b55b319ebc4b74512442e07cffc1e178b8215ca',193372,'6ddh4/W0qMohhCj7oUZvLA==',NULL,NULL,1,1,'/12/1cbd3124cca94a7b81b13551fd5d872a.pdf','F28ImcafscOPJmDSOL5ffw==',1,12),(40,'2016-01-25 15:21:44','8b82b9014a90f603ffa0d0fe3912b31bb051ed73',49316,'HZqp/tUrgf6hHx2iz62ulg==',NULL,NULL,1,1,'/12/1eb963389a2e44f8bb234c0a34b3645b.pdf','iQGhqXqSkG14e6IMPsm+XQ==',2,12),(41,'2016-01-25 15:21:51','b64543a98226cffc90fde591ba014a90f603ea3a',91997,'09zSQ3wA2eEmjqE1jolFQw==',NULL,NULL,1,1,'/12/91789ac90b424d178909bb6288e48eec.pdf','NCerEUdNIUQRzHfhJSvF3Q==',7,12),(42,'2016-01-25 15:22:25','0b55b319ebc4b74512442e07cffc1e178b8215ca',193372,'y/UowUCggXn+l0TP1qtEfQ==',NULL,NULL,1,1,'/11/4aa6080fdf2b47e08b5c935ce5fc650e.pdf','di6looR3Yg2fqLRbD36Hbw==',1,11),(43,'2016-01-25 15:22:31','8b82b9014a90f603ffa0d0fe3912b31bb051ed73',49316,'0/2el8GfMX7YRTmSXA6XzQ==',NULL,NULL,1,1,'/11/cc26a33b6ef642fb891866b77de372bc.pdf','vB3hmxHWbfejuamRP1FIDA==',2,11),(44,'2016-01-25 15:22:39','b64543a98226cffc90fde591ba014a90f603ea3a',91997,'u+nPYqGbrtqSx0gqNrOBuA==',NULL,NULL,1,1,'/11/8aab7f09c6e847b69927f064cbc54ba8.pdf','uGnPOSNQyqmJtC74gcztBg==',7,11),(45,'2016-01-25 15:22:59','0b55b319ebc4b74512442e07cffc1e178b8215ca',193372,'VsscMsgrECVQEQWGsqe4pA==',NULL,NULL,1,1,'/10/4a80b7695f7a4ed4a2f4510c73bbbbef.pdf','8YklxRcLZCv57CEO1q8qNw==',1,10),(46,'2016-01-25 15:23:06','8b82b9014a90f603ffa0d0fe3912b31bb051ed73',49316,'WUSUoP3VUKvQI0q9xi6b0w==',NULL,NULL,1,1,'/10/95e5506239ac46149cadee380de58973.pdf','fJ5k6AvxIFi/XbmhsCiXMg==',2,10),(47,'2016-01-25 15:23:13','b64543a98226cffc90fde591ba014a90f603ea3a',91997,'mvlQXykPUdI0eSeG+Lc48g==',NULL,NULL,1,1,'/10/324d853c056d4273bd81e3f9ac568663.pdf','yhxZUnIfcJrr/2TgYC+drA==',7,10),(48,'2016-01-25 15:23:23','0b55b319ebc4b74512442e07cffc1e178b8215ca',193372,'CwAyJUOYEZ8jpCTUjqhzNw==',NULL,NULL,1,1,'/9/f45ad7c1853746a391acd6867045c5cc.pdf','KM0FlOFM8zED3ynG76rcUw==',1,9),(49,'2016-01-25 15:23:30','8b82b9014a90f603ffa0d0fe3912b31bb051ed73',49316,'LR3n5cNNZh9z19Xth371Mg==',NULL,NULL,1,1,'/9/61ec376285224b7b9ae690e2f0b0622e.pdf','qdBXTRxVFM1aKoauw4NwtA==',2,9),(50,'2016-01-25 15:23:37','b64543a98226cffc90fde591ba014a90f603ea3a',91997,'K//qqvX1sauArULlWNmbsA==',NULL,NULL,1,1,'/9/f41a3dffeb9840089bd7d4be53235939.pdf','/PjDkXOzHcMI7DSij4DhFg==',7,9),(51,'2016-01-25 15:23:51','0b55b319ebc4b74512442e07cffc1e178b8215ca',193372,'nRnijZfTdOMzfrktMI/7nA==',NULL,NULL,1,1,'/8/0cdee2fe260e486096bcf35ec222097a.pdf','041HluJJoUZGpX9oBhal8A==',1,8),(52,'2016-01-25 15:23:56','8b82b9014a90f603ffa0d0fe3912b31bb051ed73',49316,'1eIKTR9MImvoqsY92fefUg==',NULL,NULL,1,1,'/8/74c56603c1ca470a8a8b97503db87e65.pdf','Pn7YiKztKzNqfd4p0me48Q==',2,8),(53,'2016-01-25 15:24:03','b64543a98226cffc90fde591ba014a90f603ea3a',91997,'zLKV2CZz2oSbjCW2BHRsaw==',NULL,NULL,1,1,'/8/8b202bc39b854ebab93c316097635374.pdf','K55sK4iDhnYXuJeQD3z9QA==',7,8),(54,'2016-01-25 15:24:15','0b55b319ebc4b74512442e07cffc1e178b8215ca',193372,'I5on8EcRes/8p9xDd+/zDQ==',NULL,NULL,1,1,'/6/0d48369fe3dc42298236effe8c4f5a08.pdf','qTXbRO6vgvIhi0PbqFSYEw==',1,6),(55,'2016-01-25 15:24:21','8b82b9014a90f603ffa0d0fe3912b31bb051ed73',49316,'MSQpsRyaI0Osc65utTX3mQ==',NULL,NULL,1,1,'/6/068a413df1fc4edebb38dad2597d8619.pdf','36bj6Z0iU7DCkJ9Mm/D3eA==',2,6),(56,'2016-01-25 15:24:29','b64543a98226cffc90fde591ba014a90f603ea3a',91997,'tI3Iat9BmluR5tDMmxZ4sw==',NULL,NULL,1,1,'/6/636026e775664d83a5edc5f062326f77.pdf','MYsl5LyxjvR4ALwnO0c6oQ==',7,6),(57,'2016-01-25 15:24:39','0b55b319ebc4b74512442e07cffc1e178b8215ca',193372,'HRgSaMnwKYHvawtifjfA4w==',NULL,NULL,1,1,'/5/dc3944b7e9704e3793ab9289d3bef954.pdf','19wbVEmji1isi6IK8Om3IA==',1,5),(58,'2016-01-25 15:24:45','8b82b9014a90f603ffa0d0fe3912b31bb051ed73',49316,'DZH+m3IoI4gqKdmoz8UPJA==',NULL,NULL,1,1,'/5/940f602aca84403793661a6a12453ee3.pdf','3D6id9HbQ4fCbyeKlx55fg==',2,5),(59,'2016-01-25 15:24:52','b64543a98226cffc90fde591ba014a90f603ea3a',91997,'9jMhpa794Qe2SB9A2tVixQ==',NULL,NULL,1,1,'/5/a9d623b512fe47da806a24a7bf74c38c.pdf','/HCB6k93ozFRYHxWGfYBZQ==',7,5),(60,'2016-01-25 15:25:00','0b55b319ebc4b74512442e07cffc1e178b8215ca',193372,'kjN1CkPcoL6QQ6YuLkYFcA==',NULL,NULL,1,1,'/4/57168411190a44daac386c19dd8678c5.pdf','yDFBcMwLa2tmitouSfG93w==',1,4),(61,'2016-01-25 15:25:05','8b82b9014a90f603ffa0d0fe3912b31bb051ed73',49316,'VscscP+b7C77xyauwx1R3g==',NULL,NULL,1,1,'/4/a9449689d21a4b50af5d05a5ba934ec8.pdf','dgluyY3elkrA75PQ08/R+g==',2,4),(62,'2016-01-25 15:25:12','b64543a98226cffc90fde591ba014a90f603ea3a',91997,'bJA8DUt7Wqa4eYpHU65JOQ==',NULL,NULL,1,1,'/4/f8bcf9261db64fc8bfbaa8d3dcac87bc.pdf','N7/+w2TDAnl6jx6QuIgo9Q==',7,4),(63,'2016-01-25 15:25:22','0b55b319ebc4b74512442e07cffc1e178b8215ca',193372,'ieHE+3GYonjRwIxqBc1a8g==',NULL,NULL,1,1,'/3/5f9ab9e21b4c4c53a32050cb8d06c394.pdf','iPBuSFTR+JbArrEd++OmmQ==',1,3),(64,'2016-01-25 15:25:29','8b82b9014a90f603ffa0d0fe3912b31bb051ed73',49316,'FvaMQFxnc2TrTGblWVAUBA==',NULL,NULL,1,1,'/3/e490e15036c34e2b889ce84231535c79.pdf','oz+oh2uMn9bydVvOvf9IAg==',2,3),(65,'2016-01-25 15:25:36','b64543a98226cffc90fde591ba014a90f603ea3a',91997,'QmGobuVLuZqKJH8ojxs+Cg==',NULL,NULL,1,1,'/3/b730e5f13da4441592f1597f6c8e4b55.pdf','3jERF3amt9BDkEV6RU78Ew==',7,3),(66,'2016-01-25 15:25:47','0b55b319ebc4b74512442e07cffc1e178b8215ca',193372,'qkQ1MXfC0nTvjm1ludg83A==',NULL,NULL,1,1,'/2/ba010508106c4f10ba7f9da0bb63bfac.pdf','hStB4rFDPM55rkbuq3NIYg==',1,2),(67,'2016-01-25 15:25:53','8b82b9014a90f603ffa0d0fe3912b31bb051ed73',49316,'62x++M15DSOt2nQBrxoyZA==',NULL,NULL,1,1,'/2/ec3d1c8c3455463c81d49633390974e0.pdf','86uh5Vseq1L8jbij1SfM/g==',2,2),(68,'2016-01-25 15:25:59','b64543a98226cffc90fde591ba014a90f603ea3a',91997,'B30BuArEZt4iuDJEUwSgSg==',NULL,NULL,1,1,'/2/4e767957501f44ca909113deb439cd66.pdf','TRb/iVjt3KDSmLQyTyLg1g==',7,2),(69,'2016-01-25 15:26:13','0b55b319ebc4b74512442e07cffc1e178b8215ca',193372,'DkeeHBCHGd2wpp9Ymch+Vw==',NULL,NULL,1,1,'/1/4918753c43664afc98096bf3fcd02466.pdf','dnUD5mzWnYx60K5Sob25jQ==',1,1),(70,'2016-01-25 15:26:18','8b82b9014a90f603ffa0d0fe3912b31bb051ed73',49316,'36nh5Dd+dWss7CX3r74Z1Q==',NULL,NULL,1,1,'/1/11b4dc9456c74504a2eff32858759a64.pdf','ZWdtUBWnX9WGbvL9zvGYSA==',2,1),(71,'2016-01-25 15:26:25','b64543a98226cffc90fde591ba014a90f603ea3a',91997,'FZb3VCsqOq3T4tBA+9Udkw==',NULL,NULL,1,1,'/1/bdcd439663924db8b412de736d13e02f.pdf','m7UL4cnxK9Vt0AZrif788A==',7,1);
/*!40000 ALTER TABLE `t_healthrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hospital`
--

DROP TABLE IF EXISTS `t_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_hospital` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(800) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospital`
--

LOCK TABLES `t_hospital` WRITE;
/*!40000 ALTER TABLE `t_hospital` DISABLE KEYS */;
INSERT INTO `t_hospital` VALUES (1,NULL,'北京清华长庚医院',1),(2,NULL,'北京协和医院',1);
/*!40000 ALTER TABLE `t_hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mdt_announcement`
--

DROP TABLE IF EXISTS `t_mdt_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mdt_announcement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `creator_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cre1bkvrx0atxasjs7apfhjon` (`creator_id`),
  KEY `FK_36h9q5bbcgcmnk5ng06wsnm3x` (`event_id`),
  CONSTRAINT `FK_36h9q5bbcgcmnk5ng06wsnm3x` FOREIGN KEY (`event_id`) REFERENCES `t_mdtevent` (`id`),
  CONSTRAINT `FK_cre1bkvrx0atxasjs7apfhjon` FOREIGN KEY (`creator_id`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mdt_announcement`
--

LOCK TABLES `t_mdt_announcement` WRITE;
/*!40000 ALTER TABLE `t_mdt_announcement` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mdt_announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mdt_attendees`
--

DROP TABLE IF EXISTS `t_mdt_attendees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mdt_attendees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT '1',
  `attendee_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_c194m4nomw9s41ryubq4im7qv` (`attendee_id`),
  KEY `FK_fsh3o56i13msibdqimfe9fat4` (`event_id`),
  CONSTRAINT `FK_c194m4nomw9s41ryubq4im7qv` FOREIGN KEY (`attendee_id`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_fsh3o56i13msibdqimfe9fat4` FOREIGN KEY (`event_id`) REFERENCES `t_mdtevent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mdt_attendees`
--

LOCK TABLES `t_mdt_attendees` WRITE;
/*!40000 ALTER TABLE `t_mdt_attendees` DISABLE KEYS */;
INSERT INTO `t_mdt_attendees` VALUES (1,1,3,1),(2,1,6,1),(3,1,7,1),(4,1,3,2),(5,1,6,2),(6,1,7,2),(7,1,3,3),(8,1,6,3),(9,1,7,3),(10,1,5,3),(11,1,2,3),(12,1,1,3),(13,1,7,4),(14,1,3,4),(15,1,6,4),(16,1,7,5),(17,1,3,5),(18,1,6,5),(19,1,6,6);
/*!40000 ALTER TABLE `t_mdt_attendees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mdt_patient_history`
--

DROP TABLE IF EXISTS `t_mdt_patient_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mdt_patient_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assign_time` datetime DEFAULT NULL,
  `content` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status` int(11) NOT NULL,
  `assigner_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `event_id` bigint(20) DEFAULT NULL,
  `patient_history_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_rqpw1viq10jkcswga20jdbk5u` (`assigner_id`),
  KEY `FK_depylgl3h7dcqqcrjbqsnghda` (`creator_id`),
  KEY `FK_g8fcircm06x4lcde3upslu2fa` (`event_id`),
  KEY `FK_71037xbn3cfu06rrxwtihfkfl` (`patient_history_id`),
  CONSTRAINT `FK_71037xbn3cfu06rrxwtihfkfl` FOREIGN KEY (`patient_history_id`) REFERENCES `t_patient_history` (`id`),
  CONSTRAINT `FK_depylgl3h7dcqqcrjbqsnghda` FOREIGN KEY (`creator_id`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_g8fcircm06x4lcde3upslu2fa` FOREIGN KEY (`event_id`) REFERENCES `t_mdtevent` (`id`),
  CONSTRAINT `FK_rqpw1viq10jkcswga20jdbk5u` FOREIGN KEY (`assigner_id`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mdt_patient_history`
--

LOCK TABLES `t_mdt_patient_history` WRITE;
/*!40000 ALTER TABLE `t_mdt_patient_history` DISABLE KEYS */;
INSERT INTO `t_mdt_patient_history` VALUES (1,'2016-01-25 14:10:09','肝血管病、多囊肝、包虫病、肝腺瘤、局灶性结节性增生、炎性假瘤等。','2016-01-25 13:55:48',1,5,3,6,1),(2,'2016-01-25 14:10:09','患者于昨晚 23：48 分突然出现呼吸急促，烦躁，面色灰暗，皮肤及巩膜黄染加重呈深黄色。即给予高流量吸氧，测生命体征：心率：102 次 / 分，呼吸：32 次 / 分，血压：140/80 mmHg。立即下一级护理，病重。计尿量。同时给予维生素 C，B6 及肝太乐加入 500 ml 平衡液静滴。','2016-01-25 14:07:35',1,5,7,6,7);
/*!40000 ALTER TABLE `t_mdt_patient_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mdt_suggestion`
--

DROP TABLE IF EXISTS `t_mdt_suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mdt_suggestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `creator_id` bigint(20) NOT NULL,
  `doctor_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `patient_history_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lgxnah1ki3yso97a1qlvn0k9j` (`creator_id`),
  KEY `FK_bah91xtu295s1vgxtxyhhxty1` (`doctor_id`),
  KEY `FK_5d5ggcn0vhsvhhaeavh58bx7j` (`event_id`),
  KEY `FK_m6t839pjya0y6pa5xh7hea6t7` (`patient_history_id`),
  CONSTRAINT `FK_5d5ggcn0vhsvhhaeavh58bx7j` FOREIGN KEY (`event_id`) REFERENCES `t_mdtevent` (`id`),
  CONSTRAINT `FK_bah91xtu295s1vgxtxyhhxty1` FOREIGN KEY (`doctor_id`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_lgxnah1ki3yso97a1qlvn0k9j` FOREIGN KEY (`creator_id`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_m6t839pjya0y6pa5xh7hea6t7` FOREIGN KEY (`patient_history_id`) REFERENCES `t_patient_history` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mdt_suggestion`
--

LOCK TABLES `t_mdt_suggestion` WRITE;
/*!40000 ALTER TABLE `t_mdt_suggestion` DISABLE KEYS */;
INSERT INTO `t_mdt_suggestion` VALUES (1,'入院查肿瘤标志物示CEA、CA19-9、CA12-5升高。B-R示重度贫血，WBC 及中性粒细胞升高。ECG示窦速，电轴左偏，FCG(+)。B超示肝内弥漫性实性占位病变：肝癌可能？','2016-01-25 13:53:21',3,3,1,1),(2,'肝发性囊肿，多肝内胆管轻度扩张，腹腔积液，余未见明显异常声像。肝肾功能示ALT、TBIL ↑ Tp、ALB↓ ,UA ↑,AST、ALP、GGT ↑,血糖稍低，电解质示低钠低氯血症，低血清钙。AFP正常，D二聚体↑为7.85ng/ml。术前四项抗HBS阳性。','2016-01-25 13:55:01',6,6,1,1),(3,'予以护肝、护胃、补液、止痛、抗炎等对症治疗，患者病情进展，并发肝性脑病、继发感染、肝肾综合症。','2016-01-25 13:55:28',7,7,1,1),(4,'在一线用了索坦以后，两个疗程以后就PD了，在三线的时候使用同样的索坦， 14个月达到了SD，所以这个蛮有意思的，因为从化疗的角度来讲，如一线治疗出现原发性耐药，我们一般不太会再选择相同的药物。当然这个治疗是一个靶向的治疗，与化疗存在许多不同，主治医生可以为我们解释一下可能的机制。','2016-01-26 13:45:28',3,3,2,2),(5,'病人手术后半年出现复发加转移，并且转移包括远处转移，局部复发，肿瘤负荷较大，从发病的生物学行为上判断恶性程度较高。已经进行了三线的治疗，经刚才粗略的观察，患者的病史中并未描述出最佳的疗效，因此我们不知道14个月当中的最佳疗效如何。','2016-01-26 13:44:31',7,7,2,2),(6,'该病人开始是多个结节，现在只有一个，从理论上讲高剂量大分割的放疗是有效的。我建议行放疗的同时，靶向治疗可以不停，这样一来，可见病灶就可以得到控制，继续的靶向治疗对可能看不到的病灶也会有抑制作用。','2016-01-26 13:46:32',6,6,2,2),(7,'直径<3cm的肝癌结节常常包膜完整。包膜由纤维组织组成，其声阻抗较周围肝组织及癌肿均高，因此形成界面反射，在二维声像图上可显示一圈细薄的低回声膜包围整个癌肿节。','2016-01-26 13:33:14',3,3,3,3),(8,'肝门部稍强回声光团，肝癌待定，胆囊癌待定，胆囊结石，胆囊炎；肝动脉、门静脉血管CT成像(CTA+CTV)检查示肝左内侧叶巨大恶性肿块影，胆囊壁不均匀增厚，疑肝脏病变侵犯胆囊或/及胆囊病变侵犯肝脏','2016-01-26 13:37:22',6,6,3,3),(9,'对于肝癌中晚期建议以中医治疗为主，但是不建议单纯使用中医治疗。采用手术治疗、放化疗和中医治疗结合的综合治疗会起到最好的效果。中药的话推荐服用人参皂苷Rh2(护命素)，既能缩小肿瘤，控制肿瘤细胞转移，又能抵抗放化疗副作用，提高身体对化疗药物耐药性。','2016-01-26 13:28:40',7,7,3,3),(10,'CT 可见肝体积增大、饱满，肝实质见弥漫性低密度改变。目前尚无有效的治疗方法，暂时给予改善血浆胶体渗透压、保胃粘膜、护肝、退黄、利尿、止痛、止呕等治疗。患者入院以来，黄疸呈进行性加重，腹胀、腹痛明显。','2016-01-25 14:05:40',7,7,4,7),(11,'腹部 B 超结果示：1. 肝弥漫性增大：肝癌。2. 胆囊壁增厚 3. 腹腔积液（左右髂窝可见液性无回声区，右侧液平深度 2.8 cm，左侧液平深度 3.7 cm，液体量少）。','2016-01-25 14:06:07',3,3,4,7),(12,'患者腹水量少，腹痛及腹胀、恶心等消化道症状主要由于增大肝脏压迫所致。治疗上仅能行对症支持治疗，以减轻患者痛苦，延长生存时限。','2016-01-25 14:06:28',6,6,4,7),(13,'强化的局部部位这里还有一个结节，有出现的手术残床区的瘤块和结节有明显的不均匀强化，这种表现应属于局部复发。肾癌术后肿块较大的患者容易出现局部的复发。','2016-01-26 13:21:03',7,7,5,8),(14,'诊断明确，估计病变局限于一叶或半肝者，未侵及第一、第二肝门和下腔静脉者。肝功能代偿良好，凝血酶原时间不低于正常的50%。无明显黄疸、腹水或远处转移。心、肺和肾功能良好，能耐受手术。可做手术治疗。','2016-01-25 14:10:45',3,3,6,1),(15,'瘤体大小：小于5cm，能早期手术。包    膜：完整，尚无癌栓形成。机体免疫状态：良好。可做个体化综合治疗。','2016-01-25 14:11:06',6,6,6,1),(16,'联合应用多种药物全身治疗也无肯定疗效。首先方案:  CDDP方案。肝动脉栓塞化疗（TACE）对肝癌有很好的疗效，已成为肝癌非手术疗法的首选方法。','2016-01-25 14:11:27',7,7,6,1),(17,'DIC：肝 Ca 癌栓进人血液后，引起急性弥散性血管内凝血（DIC）。依据：1.   有溶血现象，T－BiL 高迅速，以非结合胆红素升高为主，血钾升高迅速 ；2.   有休克症状 。意见：应做相关凝血功能检查，故不能肯定。','2016-01-25 14:12:19',7,7,6,7),(18,'肝功能衰竭引起的肝性脑病。依据：1 弥漫性肝癌，肝功能进行性下降（ALT，AST 不升反降）；2.   有烦躁不安，昏迷等精神症状，光反射迟钝。意见：是否有诱因？相关检查？','2016-01-25 14:13:15',3,3,6,7),(19,' 病人在无明显诱因或先兆的情况下，突然出现呼吸急促，烦躁，特别明显的是血压的短时间内的急剧下降，虽用升压药物和补液后，血压也只是短暂恢复正常，而后直线下降，以致呼吸、心跳停止。只有失血性休克可以解释病人的如此变化，肝功能衰竭和 DIC 都无法解释其急剧快速的休克。','2016-01-25 14:13:47',6,6,6,7),(20,'这位病人肿块比较大（7.5cm），是透明细胞癌的肾癌，瘤块较大时很容易出现局部复发。我们可以看到，开刀术后患者右侧的肾脏已经被切除，左侧肾脏正常。手术床的后缘包括腰背部贴近腹腔这一侧，上下翻一下有个层面是比较大的。','2016-01-26 13:20:30',3,3,5,8);
/*!40000 ALTER TABLE `t_mdt_suggestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mdt_temp_attendees`
--

DROP TABLE IF EXISTS `t_mdt_temp_attendees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mdt_temp_attendees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `creator_id` bigint(20) DEFAULT NULL,
  `event_id` bigint(20) DEFAULT NULL,
  `ticket_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_j01ffof946ni6c1ekv36pxf46` (`creator_id`),
  KEY `FK_cnfp2qntdry9kaj90f1tqat5w` (`event_id`),
  KEY `FK_g4v2yayocb8803w8b8csk3fa9` (`ticket_id`),
  CONSTRAINT `FK_cnfp2qntdry9kaj90f1tqat5w` FOREIGN KEY (`event_id`) REFERENCES `t_mdtevent` (`id`),
  CONSTRAINT `FK_g4v2yayocb8803w8b8csk3fa9` FOREIGN KEY (`ticket_id`) REFERENCES `t_ticket` (`id`),
  CONSTRAINT `FK_j01ffof946ni6c1ekv36pxf46` FOREIGN KEY (`creator_id`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mdt_temp_attendees`
--

LOCK TABLES `t_mdt_temp_attendees` WRITE;
/*!40000 ALTER TABLE `t_mdt_temp_attendees` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mdt_temp_attendees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mdtcomment`
--

DROP TABLE IF EXISTS `t_mdtcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mdtcomment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `create_time` datetime DEFAULT NULL,
  `remove_flag` int(11) DEFAULT '1',
  `creator_id` bigint(20) DEFAULT NULL,
  `event_id` bigint(20) DEFAULT NULL,
  `healthrecord_id` bigint(20) DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  `quote_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tlqk5v8y7eo0pp97bakg0b82n` (`creator_id`),
  KEY `FK_efbjuh8ifptcphg25qaki148f` (`event_id`),
  KEY `FK_h5f0ghlwwtpcjxuyvbycuyu9t` (`healthrecord_id`),
  KEY `FK_3md346nyac28gqnnl2me7tnjd` (`patient_id`),
  KEY `FK_9is60di5k9jrwsa8v1kninn40` (`quote_id`),
  CONSTRAINT `FK_3md346nyac28gqnnl2me7tnjd` FOREIGN KEY (`patient_id`) REFERENCES `t_patient` (`id`),
  CONSTRAINT `FK_9is60di5k9jrwsa8v1kninn40` FOREIGN KEY (`quote_id`) REFERENCES `t_mdtcomment` (`id`),
  CONSTRAINT `FK_efbjuh8ifptcphg25qaki148f` FOREIGN KEY (`event_id`) REFERENCES `t_mdtevent` (`id`),
  CONSTRAINT `FK_h5f0ghlwwtpcjxuyvbycuyu9t` FOREIGN KEY (`healthrecord_id`) REFERENCES `t_healthrecord` (`id`),
  CONSTRAINT `FK_tlqk5v8y7eo0pp97bakg0b82n` FOREIGN KEY (`creator_id`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mdtcomment`
--

LOCK TABLES `t_mdtcomment` WRITE;
/*!40000 ALTER TABLE `t_mdtcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mdtcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mdtevent`
--

DROP TABLE IF EXISTS `t_mdtevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mdtevent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_pwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meeting_time` datetime DEFAULT NULL,
  `remark` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `snumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT '1',
  `video_conference_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) NOT NULL,
  `patient_history_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_pb4tpvo17e2no5iptj8fr47qu` (`creator_id`),
  KEY `FK_gw6jrr04yjyi6rmcr3ewg3e15` (`patient_history_id`),
  CONSTRAINT `FK_gw6jrr04yjyi6rmcr3ewg3e15` FOREIGN KEY (`patient_history_id`) REFERENCES `t_patient_history` (`id`),
  CONSTRAINT `FK_pb4tpvo17e2no5iptj8fr47qu` FOREIGN KEY (`creator_id`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mdtevent`
--

LOCK TABLES `t_mdtevent` WRITE;
/*!40000 ALTER TABLE `t_mdtevent` DISABLE KEYS */;
INSERT INTO `t_mdtevent` VALUES (1,NULL,'2016-01-25 13:53:12',NULL,'2016-01-25 13:55:48',NULL,NULL,'2月21日腹部增强CT示肝区占位性病变性质待定：原发性肝癌并腹膜后淋巴结转移？肝囊肿  2011.3.4肝穿刺活检病检示：(肝脏肿块)穿刺小组织中见少量腺癌巢.  入院诊断：1、原发性胆管细胞癌并腹膜后淋巴结转移、腹水 2、肝囊肿、贫血（中度）、低蛋白血症、电解质失衡、轻度肝损并淤胆、脑白质变性',NULL,2,NULL,1,NULL,3,1),(2,NULL,'2016-01-25 13:56:26',NULL,NULL,NULL,NULL,'虽然影像学上看不到，但可能还会有潜在病灶存在，就算通过手术切除了现在唯一的病灶，很可能在术后未知的时间里，还会有原来已经有的亚临床病灶再长出来。',NULL,1,NULL,1,NULL,3,2),(3,NULL,'2016-01-25 14:00:50',NULL,NULL,NULL,NULL,'肝左叶可见类圆形略底密度影，大小约3.7*3.6cm，CT值约40HU，增强后周围似可见斑片状强化，肝内可见点状高密度灶。',NULL,1,NULL,1,NULL,3,3),(4,NULL,'2016-01-25 14:04:57',NULL,'2016-01-25 14:07:35',NULL,NULL,'今日上午患者到市医院就诊，检查 B 超示：肝内弥漫性占位，考虑肝癌。入科后查体全身皮肤粘膜中度黄染，巩膜重度黄染。腹部轻度膨隆，上腹部轻度压痛、无反跳痛及肌紧张，肝脏肋下约 6 cm，脾脏肋下未触及，莫氏征可疑阳性，肝区轻度叩击痛，移动性浊音阳性。',NULL,2,NULL,1,NULL,7,7),(5,NULL,'2016-01-25 14:07:56',NULL,NULL,NULL,NULL,'这个病理结果显示是肾细胞肿瘤，从原单位的病理报告来看，它是已经定性并且组织学类型明确，是肾脏透明细胞癌，Fuhrman分级二级，切缘均为阴性，也就是说这个病理诊断是肯定的结果，并且所含信息也较多。',NULL,1,NULL,1,NULL,7,8),(6,NULL,'2016-01-25 14:10:09',210,NULL,'2B-103','2016-01-25 14:30:00','多学科会诊一 备注','COV-1601000',1,'多学科会诊一',2,NULL,5,NULL);
/*!40000 ALTER TABLE `t_mdtevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_message_log`
--

DROP TABLE IF EXISTS `t_message_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_message_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `duration` int(11) DEFAULT '0',
  `from_id` bigint(20) DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `send_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `to_id` bigint(20) DEFAULT NULL,
  `to_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_message_log`
--

LOCK TABLES `t_message_log` WRITE;
/*!40000 ALTER TABLE `t_message_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_message_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_patient`
--

DROP TABLE IF EXISTS `t_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_patient` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `birthday` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `extinfo` text COLLATE utf8_unicode_ci,
  `idnumber` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` int(11) DEFAULT '1',
  `status` int(11) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7jtmh1k0yjdn6jfdq21vb7jwy` (`creator_id`),
  CONSTRAINT `FK_7jtmh1k0yjdn6jfdq21vb7jwy` FOREIGN KEY (`creator_id`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_patient`
--

LOCK TABLES `t_patient` WRITE;
/*!40000 ALTER TABLE `t_patient` DISABLE KEYS */;
INSERT INTO `t_patient` VALUES (1,NULL,'2016-01-25 13:20:20',NULL,'310111194506273301','1233333301','吴花儿','1001',2,1,4),(2,NULL,'2016-01-25 13:21:07',NULL,'310111194506273302','1233333302','李阳','1002',1,1,4),(3,NULL,'2016-01-25 13:22:03',NULL,'310111194506273303','1233333303','张建国','1003',1,1,4),(4,NULL,'2016-01-25 13:23:10',NULL,'310111198506273304','1233333304','王秀儿','1004',2,1,4),(5,NULL,'2016-01-25 13:23:58',NULL,'310111195506273305','1233333305','李梅','1005',2,1,4),(6,NULL,'2016-01-25 13:25:05',NULL,'310111197406273306','1233333306','黄晨','1006',2,1,4),(7,NULL,'2016-01-25 13:26:35',NULL,'310111196506273307','1233333307','赵娟','1007',2,1,4),(8,NULL,'2016-01-25 13:27:32',NULL,'310111197306273308','1233333308','刘诗诗','1008',2,1,4),(9,NULL,'2016-01-25 13:29:56',NULL,'310111198306273309','1233333309','赵大海','1009',1,1,4),(10,NULL,'2016-01-25 13:31:08',NULL,'310111198406273310','1233333310','吴献忠','1010',1,1,4),(11,NULL,'2016-01-25 13:40:58',NULL,'310111201406273311',NULL,'蔡棋','1012',1,1,4),(12,NULL,'2016-01-25 13:42:03',NULL,'310111200106273312','1233333313','周坤','1013',1,1,4);
/*!40000 ALTER TABLE `t_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_patient_history`
--

DROP TABLE IF EXISTS `t_patient_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_patient_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assign_time` datetime DEFAULT NULL,
  `bed_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `decision` varchar(1500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(1500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `hospital_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referral_flag` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `assigner_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) NOT NULL,
  `doctor_id` bigint(20) DEFAULT NULL,
  `patient_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_jxv92824io0j2mygbs1an5351` (`assigner_id`),
  KEY `FK_5efiwbe0nw1x7x0ygeny6c4i9` (`creator_id`),
  KEY `FK_sq0fcr1g58760iwkinlb25ma` (`doctor_id`),
  KEY `FK_ivabrkpe9oq5pi23ywrj96xyh` (`patient_id`),
  CONSTRAINT `FK_5efiwbe0nw1x7x0ygeny6c4i9` FOREIGN KEY (`creator_id`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_ivabrkpe9oq5pi23ywrj96xyh` FOREIGN KEY (`patient_id`) REFERENCES `t_patient` (`id`),
  CONSTRAINT `FK_jxv92824io0j2mygbs1an5351` FOREIGN KEY (`assigner_id`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_sq0fcr1g58760iwkinlb25ma` FOREIGN KEY (`doctor_id`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_patient_history`
--

LOCK TABLES `t_patient_history` WRITE;
/*!40000 ALTER TABLE `t_patient_history` DISABLE KEYS */;
INSERT INTO `t_patient_history` VALUES (1,'2016-01-25 13:20:20','b-1001','2016-01-25 13:20:20',NULL,'因右上腹痛半年余，诊断原发性肝癌4月余，头昏、纳差、乏力2月余。今年7月11日第七次入院。入院体查T:37.2℃  P:98次/分  R: 20次/分   BP :120/70mmHg ,神志尚清，消瘦，自动体位，慢性病容，精神差，贫血貌，恶病质。皮肤巩膜轻度黄染，浅表淋巴结不肿大。双侧，瞳孔等大等圆，对光反应灵敏。心尖搏动位于第五肋间左锁骨中线外0.5cm,触无震颤，律齐。上腹部隆起，未见胃肠型及蠕动波，腹软，上腹部压之不适，无反跳痛，肝右肋下约8CM,左肋下6CM,质硬，边钝，表面有结节感，无明显触痛，脾肋下未及，腹水征阳性。双下肢中度浮肿，四肢肌力、肌张力可。',NULL,NULL,0,4,4,4,3,1),(2,'2016-01-25 13:21:07','b-1002','2016-01-25 13:21:07',NULL,'该病人在2011年12月27日开始索坦治疗，应用两个疗程后PD。2012年3月24日开始应用二线靶向药物——飞尼妥治疗，14个月后达到了PD。三线靶向药物治疗是在2013年5月7日，又开始重新运用索坦式治疗，目前评价肿瘤是是SD。',NULL,NULL,0,2,4,4,3,2),(3,'2016-01-25 13:22:03','b-1003','2016-01-25 13:22:03',NULL,'巨块型肝MT介入治疗后，肝脏表面欠光滑，肝左内叶、右前叶巨大占位（约12cm*14cm)内见较多碘油沉积，动态增强后病灶内轻度强化；肝内另见多处囊样低密度灶，最大者位于右前叶约3cm*3.2cm,增强后无强化；门静脉左、右支受压，未见明显充盈缺损；脾脏未见肿大，密度均匀；胆囊壁光滑，未见局限性增厚，胆管未见扩张；胰腺及所见双侧肾脏无殊；后腹膜未见肿大淋巴结；腹腔内无积液。双侧胸腔少量积液。',NULL,NULL,0,2,4,4,3,3),(4,'2016-01-25 13:23:10','b-1004','2016-01-25 13:23:10',NULL,'因大便带鲜血而就诊。实验室检查见贫血。就诊时无不适，无恶心、呕吐、大便习惯改变、黄疸、食欲减退及食量减少。行诊断性肠镜检查，在横结肠中部见一质脆溃疡型环周肿物、堵塞肠腔 50%，活检为 KRAS 野生型腺癌。\n行胸、腹、盆腔 CT 检查显示横结肠中段肿物，肝脏 2、4A、5、6、7 段可见多处较大低密度病灶（图 1）。CT 引导下肝脏活检证实为转移性腺癌。肝功能及血凝参数位于正常范围内。',NULL,NULL,0,1,4,4,3,4),(5,'2016-01-25 13:23:58','b-1005','2016-01-25 13:23:58',NULL,'突然呕血1小时入院。患者去年7月份在某医院诊断为“肝硬化失代偿期”，患者于1小时前进食晚餐后出现恶心，呕出鲜红色血液，量约300ml，无血凝块。伴头晕、心悸、口干。入院后又呕鲜血约500ml，头昏、乏力，次晨共解柏油样便2次，每次约150g。患者有乙肝病史多年，确诊“肝硬化”1年余。\n入院体检：体温 36.9℃，脉率 80/min，呼吸 22/min，血压105/70mmHg，慢性病容，颈侧见2处蜘蛛痣，巩膜清，有肝掌、腹膨软，肝肋下未及，脾肋下3cm，腹部移动性浊音阳性。',NULL,NULL,0,1,4,4,3,5),(6,'2016-01-25 13:25:05','b-1006','2016-01-25 13:25:05',NULL,'上腹饱胀不适、纳差乏力1个月余入院。患者2年前发现有乙肝病史，近1个月前感到上腹饱胀不适，食欲减退，有时恶心，服“胃药”多次未见好转，乏力明显，体重较前明显减轻，近1周来牙龈时有出血。2年前发现乙肝“大三阳”(HBsAg阳性、HBeAg阳性、抗HBc阳性)，肝功能异常，白球比(A/G)下降。入院体检：腹水征阳性，肝肋下7cm，质硬，表面结节状，边缘不规则，脾肋下3cm，质中，双下肢凹陷性水肿。',NULL,NULL,0,1,4,4,3,6),(7,'2016-01-25 13:26:35','b-1007','2016-01-25 13:26:35',NULL,'患者缘 1 个月前无明显诱因始出现右上腹饱胀不适伴低热，轻度腹痛、皮肤黄染、恶心、呕吐，未予以注意。后病情逐渐加重，在地方诊所给予消炎药物治疗，具体药物不祥，治疗后无明显好转。近日腹部不适再次加重，全身皮肤黄染。',NULL,NULL,0,4,4,4,7,7),(8,'2016-01-25 13:27:32','b-1008','2016-01-25 13:27:32',NULL,'这位病人肿块比较大（7.5cm），是透明细胞癌的肾癌，瘤块较大时很容易出现局部复发。可以看到，开刀术后患者右侧的肾脏已经被切除，左侧肾脏正常。',NULL,NULL,0,2,4,4,7,8),(9,'2016-01-25 13:29:56','b-1009','2016-01-25 13:29:56',NULL,'该患者肺里存在多个病灶，通过一线的TKI，二线的m-TOR抑制剂，三线的TKI治疗后，目前腹部肿瘤都消失了。原本患者肺里有多个结节，现在只剩下一个。',NULL,NULL,0,1,4,4,7,9),(10,'2016-01-25 13:31:08','b-1010','2016-01-25 13:31:08',NULL,'这位病人在2012年2月份确诊，2011年开始了索坦治疗，治疗后出现疾病进展，然后换了二线的飞尼妥治疗，14个月后达到了PD，而后又开始了索坦治疗。',NULL,NULL,0,1,4,4,7,10),(11,'2016-01-25 13:40:58','b-1012','2016-01-25 13:40:58',NULL,'2011年 12月，术后复查CT提示右肾切除，相邻腰大肌右后缘，右侧背部多发结节，考虑转移，两下肺结节，考虑转移，纵隔淋巴结轻度肿大。诊断为右肾癌术后复发，建议入院行靶向治疗。',NULL,NULL,0,1,4,4,7,11),(12,'2016-01-25 13:42:03','b-1013','2016-01-25 13:42:03',NULL,'患者是一位男性，因体验发现右肾肿瘤于2011年在外院行腹腔镜下右肾癌根治术，术后病理示肾脏透明细胞型肾细胞癌，输尿管切缘、肾盂及肾周脂肪组织未见癌累及。',NULL,NULL,0,1,4,4,7,12);
/*!40000 ALTER TABLE `t_patient_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_permission`
--

DROP TABLE IF EXISTS `t_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `group_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `resource_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_permission`
--

LOCK TABLES `t_permission` WRITE;
/*!40000 ALTER TABLE `t_permission` DISABLE KEYS */;
INSERT INTO `t_permission` VALUES (1,'create','crete-a-patient','patient',0,'patient'),(2,'list','list-patient-content','patient',0,'patient'),(3,'remove','remove-existing-patient','patient ',0,'patient'),(4,'update','update-existing-patient','patient',0,'patient'),(5,'detail','patient-detail','patient',0,'patient'),(6,'healthrecord-create','add-a-new-healthrecord','patient',0,'patient'),(7,'healthrecord-list','healthrecord-list','patient',0,'patient'),(8,'healthrecord-remove','healthrecord-remove','patient',0,'patient'),(9,'healthrecord-view','healthrecord-view','patient',0,'patient'),(10,'healthrecoed-snapshot','healthrecoed-snapshot','patient',0,'patient'),(11,'consolate','consolate','patient',0,'patient'),(12,'assign','assign','patient',0,'patient'),(13,'create','create-a-user','user',0,'user'),(14,'list','list-users-content','user',0,'user'),(15,'remove','remove-existing-user','user',0,'user'),(16,'update','update-existing-user','user',0,'user'),(17,'view','view-existing-user','user',0,'user'),(18,'create','create-a-mdt','mdt',0,'mdt'),(19,'list','list-mdts','mdt',0,'mdt'),(20,'update','update-a-mdt','mdt',0,'mdt'),(21,'detail','mdt-detail','mdt',0,'mdt'),(22,'create','create-a-meeting','meeting',0,'meeting'),(23,'list','list-meetings','meeting',0,'meeting'),(24,'remove','remove-meeting','meeting',0,'meeting'),(25,'update','update-a-meeting','meeting',0,'meeting'),(26,'detail','meeting-detail','meeting',0,'meeting'),(27,'create','create-a-role','role',0,'role'),(28,'list','list-roles','role',0,'role'),(29,'remove','remove-a-role','role',0,'role'),(30,'update','update-a-role','role',0,'role'),(31,'view','view-a-role','role',0,'role'),(32,'list','log-list','audit',0,'audit'),(33,'profile','user profile page','user',0,'user'),(34,'pwd-reset','reset user password','user',0,'user'),(35,'list','list favorite users','favorite',0,'favorite'),(36,'create','create a new doctor social','social',0,'doctor-social'),(37,'list','list all social','social',0,'doctor-social'),(38,'doctor','display doctor\'s dashboard','dashboard',0,'dashboard'),(39,'moderator','display moderator\'s dashboard','dashboard',0,'dashboard'),(40,'navigator','display navigator\'s dashboard','dashboard',0,'dashboard'),(41,'patient','display patient\'s dashboard','dashboard',0,'dashboard'),(42,'admin','display admin\'s dashboard','dashboard',0,'dashboard');
/*!40000 ALTER TABLE `t_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role`
--

DROP TABLE IF EXISTS `t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `level` int(11) DEFAULT NULL,
  `role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` VALUES (1,'role-for-admin-the-system',0,'role-admin'),(2,'role-for-doctor',0,'role-doctor'),(3,'role-for-moderator',0,'role-moderator'),(4,'role-for-navigator',0,'role-navigator');
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role_permissions`
--

DROP TABLE IF EXISTS `t_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_role_permissions` (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `FK_3y324c6bptbhq19nbeh9wibpg` (`permission_id`),
  CONSTRAINT `FK_3y324c6bptbhq19nbeh9wibpg` FOREIGN KEY (`permission_id`) REFERENCES `t_permission` (`id`),
  CONSTRAINT `FK_t66iccm6aiw9eeh1coenrou2m` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role_permissions`
--

LOCK TABLES `t_role_permissions` WRITE;
/*!40000 ALTER TABLE `t_role_permissions` DISABLE KEYS */;
INSERT INTO `t_role_permissions` VALUES (1,1),(2,1),(4,1),(1,2),(2,2),(3,2),(4,2),(1,3),(2,3),(4,3),(1,4),(2,4),(4,4),(1,5),(2,5),(3,5),(4,5),(1,6),(2,6),(4,6),(1,7),(2,7),(3,7),(4,7),(1,8),(2,8),(4,8),(1,9),(2,9),(3,9),(4,9),(1,10),(2,10),(1,11),(2,11),(4,11),(1,12),(4,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(2,18),(1,19),(2,19),(3,19),(4,19),(1,20),(2,20),(1,21),(2,21),(1,22),(3,22),(4,22),(1,23),(2,23),(3,23),(4,23),(1,24),(3,24),(4,24),(1,25),(3,25),(4,25),(1,26),(2,26),(3,26),(4,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(2,33),(3,33),(4,33),(1,34),(2,34),(3,34),(4,34),(2,35),(2,36),(2,37),(2,38),(3,39),(4,40),(1,42);
/*!40000 ALTER TABLE `t_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_snapshot`
--

DROP TABLE IF EXISTS `t_snapshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_snapshot` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `create_time` datetime DEFAULT NULL,
  `description` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `event_id` bigint(20) DEFAULT NULL,
  `healthrecord_id` bigint(20) DEFAULT NULL,
  `temp_attendee_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1qqxqw3t4bl5wveng5xj9co2v` (`creator_id`),
  KEY `FK_93ns5kyd0s9dfsw7k725r9w7p` (`event_id`),
  KEY `FK_844pp36rdw5qhc7ck2qc8r3rg` (`healthrecord_id`),
  KEY `FK_om88xhhclannsla7mnb1yq2hx` (`temp_attendee_id`),
  CONSTRAINT `FK_1qqxqw3t4bl5wveng5xj9co2v` FOREIGN KEY (`creator_id`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_844pp36rdw5qhc7ck2qc8r3rg` FOREIGN KEY (`healthrecord_id`) REFERENCES `t_healthrecord` (`id`),
  CONSTRAINT `FK_93ns5kyd0s9dfsw7k725r9w7p` FOREIGN KEY (`event_id`) REFERENCES `t_mdtevent` (`id`),
  CONSTRAINT `FK_om88xhhclannsla7mnb1yq2hx` FOREIGN KEY (`temp_attendee_id`) REFERENCES `t_mdt_temp_attendees` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_snapshot`
--

LOCK TABLES `t_snapshot` WRITE;
/*!40000 ALTER TABLE `t_snapshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_snapshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ticket`
--

DROP TABLE IF EXISTS `t_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ticket` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticket` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1g0ww4921yi7g3oq07id926fu` (`account_id`),
  CONSTRAINT `FK_1g0ww4921yi7g3oq07id926fu` FOREIGN KEY (`account_id`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ticket`
--

LOCK TABLES `t_ticket` WRITE;
/*!40000 ALTER TABLE `t_ticket` DISABLE KEYS */;
INSERT INTO `t_ticket` VALUES (1,'2016-01-22 14:45:15','2016-01-23 14:45:15','戴伟','8358dd3709764069a8bb374d32e4744e',3),(2,'2016-01-25 10:51:03','2016-01-26 16:51:03','戴伟','190258ff999a49ffacf3fd03f71e0cf3',3),(3,'2016-01-25 13:18:45','2016-01-26 17:18:45','爱玛','b450a8a29f704aa6bacb8907d017873a',4),(4,'2016-01-25 13:54:49','2016-01-26 13:54:49','阳勇','32702b0ef68c439fabf0019817051f5e',6),(5,'2016-01-25 13:55:18','2016-01-26 19:55:18','怀特','bcafe97836fa44f5836db46885a9b568',7),(6,'2016-01-25 14:03:18','2016-01-26 14:03:18','威尔','a0b94ebdf9ce421aa8bcf6e90bfa8ff5',5),(7,'2016-01-26 15:25:17','2016-01-27 15:25:17','阳勇','db4235491b0341b19401dae6c0bfc932',6),(8,'2016-01-27 09:31:31','2016-01-28 09:31:31','爱玛','9365e021f8c14ac180f269d665248579',4),(9,'2016-01-27 13:00:16','2016-01-28 19:00:16','戴伟','19a67efa12c24901af294a0034c6d0a6',3);
/*!40000 ALTER TABLE `t_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_info`
--

DROP TABLE IF EXISTS `t_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_unicode_ci,
  `extinfo` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` int(11) DEFAULT '1',
  `account_id` bigint(20) DEFAULT NULL,
  `department` bigint(20) DEFAULT NULL,
  `hospital` bigint(20) DEFAULT NULL,
  `user_title` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_98cuyp3qmc8ux71k4vsraghnv` (`account_id`),
  KEY `FK_pwqecm3fhwbqxmrtoi8voy6u8` (`department`),
  KEY `FK_bsissdjttw3oohksaol1l858p` (`hospital`),
  KEY `FK_7fnv6yg07p9wak3x1gxg7jync` (`user_title`),
  CONSTRAINT `FK_7fnv6yg07p9wak3x1gxg7jync` FOREIGN KEY (`user_title`) REFERENCES `t_usertitle` (`id`),
  CONSTRAINT `FK_98cuyp3qmc8ux71k4vsraghnv` FOREIGN KEY (`account_id`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_bsissdjttw3oohksaol1l858p` FOREIGN KEY (`hospital`) REFERENCES `t_hospital` (`id`),
  CONSTRAINT `FK_pwqecm3fhwbqxmrtoi8voy6u8` FOREIGN KEY (`department`) REFERENCES `t_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_info`
--

LOCK TABLES `t_user_info` WRITE;
/*!40000 ALTER TABLE `t_user_info` DISABLE KEYS */;
INSERT INTO `t_user_info` VALUES (1,'/0.png','1973-06-25 00:00:00',NULL,NULL,'王小明','410-550-3466',1,1,8,1,1),(2,'/1.png','1973-06-25 00:00:00',NULL,NULL,'本杰明','410-550-3466',1,2,8,1,1),(3,'/2.png','1971-08-01 00:00:00',NULL,NULL,'戴伟','410-550-0409',1,3,1,1,3),(4,'/3.png','1976-07-13 00:00:00',NULL,NULL,'爱玛','410-955-9441',2,4,2,1,9),(5,'/4.png','1970-06-19 00:00:00',NULL,NULL,'威尔','410-955-5268',1,5,3,2,5),(6,'/5.png','1970-06-19 00:00:00',NULL,NULL,'阳勇','410-955-5269',1,6,4,1,4),(7,'/6.png','1982-02-19 00:00:00',NULL,NULL,'怀特','410-955-5277',1,7,3,2,4);
/*!40000 ALTER TABLE `t_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_usertitle`
--

DROP TABLE IF EXISTS `t_usertitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_usertitle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usertitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_usertitle`
--

LOCK TABLES `t_usertitle` WRITE;
/*!40000 ALTER TABLE `t_usertitle` DISABLE KEYS */;
INSERT INTO `t_usertitle` VALUES (1,'管理员'),(2,'主任医师'),(3,'副主任医师'),(4,'主治医师'),(5,'医师'),(6,'医士'),(7,'主任护师'),(8,'副主任护师'),(9,'护士长'),(10,'护士'),(11,'护理员');
/*!40000 ALTER TABLE `t_usertitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_usertype`
--

DROP TABLE IF EXISTS `t_usertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_usertype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usertype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_usertype`
--

LOCK TABLES `t_usertype` WRITE;
/*!40000 ALTER TABLE `t_usertype` DISABLE KEYS */;
INSERT INTO `t_usertype` VALUES (1,'管理员'),(2,'医生'),(3,'护士'),(4,'主持人');
/*!40000 ALTER TABLE `t_usertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_video_account`
--

DROP TABLE IF EXISTS `t_video_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_video_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_video_account`
--

LOCK TABLES `t_video_account` WRITE;
/*!40000 ALTER TABLE `t_video_account` DISABLE KEYS */;
INSERT INTO `t_video_account` VALUES (1,'{\"main_account\":\"aaf98f894830369d0148305381400010\",\"main_passwd\":\"9d7b86d85e0b4568a83f4cceb72f1e9d\",\"sub_account\":\"8a48b5514830387801483053f0ef002a\",\"sub_passwd\":\"32c372ae1e694eebb9521c095c14af2e\",\"voip_account\":\"82279600000001\",\"voip_passwd\":\"uxb1s0yh\"}'),(2,'{\"main_account\":\"aaf98f894830369d0148305381400010\",\"main_passwd\":\"9d7b86d85e0b4568a83f4cceb72f1e9d\",\"sub_account\":\"8a48b5514830387801483053f0fb002b\",\"sub_passwd\":\"55706d8907a04bdcae261e9be15933c9\",\"voip_account\":\"82279600000002\",\"voip_passwd\":\"e9xd610l\"}'),(3,'{\"main_account\":\"aaf98f894830369d0148305381400010\",\"main_passwd\":\"9d7b86d85e0b4568a83f4cceb72f1e9d\",\"sub_account\":\"8a48b5514830387801483053f112002c\",\"sub_passwd\":\"07e1a5c6a9824b26ba4ff4189fa31c01\",\"voip_account\":\"82279600000003\",\"voip_passwd\":\"qbrsv4ms\"}'),(4,'{\"main_account\":\"aaf98f894830369d0148305381400010\",\"main_passwd\":\"9d7b86d85e0b4568a83f4cceb72f1e9d\",\"sub_account\":\"8a48b5514830387801483053f126002d\",\"sub_passwd\":\"af363d49b7c349a4b71501e0b7686282\",\"voip_account\":\"82279600000004\",\"voip_passwd\":\"6jnmk5xg\"}'),(5,'{\"main_account\":\"aaf98f894830369d0148305381400010\",\"main_passwd\":\"9d7b86d85e0b4568a83f4cceb72f1e9d\",\"sub_account\":\"8a48b5514830387801483053f13a002e\",\"sub_passwd\":\"0ecd73353182482eb74a5fbe1facc479\",\"voip_account\":\"82279600000005\",\"voip_passwd\":\"t5222gik\"}');
/*!40000 ALTER TABLE `t_video_account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-27 14:11:34
