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
  CONSTRAINT `FK_s3hs3kjeite8e9hqxl21v2pix` FOREIGN KEY (`account_id`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_pgish3unlt9gi56tei7isfs28` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`)
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
  CONSTRAINT `FK_hex8g2tan86es2g3y2ladncsg` FOREIGN KEY (`assistant`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_duwys39vekj9hd3go0s1bvkjh` FOREIGN KEY (`master`) REFERENCES `t_account` (`id`)
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
INSERT INTO `t_classification` VALUES (1,'Blood Routine'),(2,'Liver Function'),(3,'IMX'),(4,'Hepatitis C'),(5,'Oncofetal Proteins'),(6,'Chest X-Ray/CT'),(7,'CA19-9'),(8,'Stomach CT/MR'),(9,'Ultrasound'),(10,'Imaging'),(11,'Others');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_department`
--

LOCK TABLES `t_department` WRITE;
/*!40000 ALTER TABLE `t_department` DISABLE KEYS */;
INSERT INTO `t_department` VALUES (1,'The division of cardiology pursues its goals of educating future leaders in cardiovascular medicine, exploring leading edge basic translational, clinical and population research that will redefine the field, and providing exceptional care for patients at risk for or with established cardiovascular disease.','Cardiology',1),(2,'The Division provides a comprehensive spectrum of services, tailored towards accurate diagnosis and management of all surgical conditions in an inpatient and outpatient setting.','General Surgery',1),(3,'The Division provides comprehensive multidisciplinary assessment and care for patients with malignancies of the thoracic cavity including lung cancer, gastroesophageal carcinoma, and thymoma.','Pneumology',1),(4,'The Department of Dermatology excels at diagnosing and treating conditions affecting the skin, hair and nails. Patients have turned to us for years to receive the most advanced treatments in medical, surgical and cosmetic dermatology.','Dermatology',1),(5,'The Division including joint reconstruction, sports medicine, cartilage restoration, pediatric orthopaedics, spinal disorders, hand, foot and ankle, trauma, musculoskeletal oncology, shoulder and elbow, microvascular repair and major limb reconstruction.','Orthopedics',1),(6,'The Division focuses on neurovascular diseases, neurodiagnostics, movement disorders, neuroimmunology and neurorehabilitation.','Neurology and Neurosurgery',1),(7,'The Division encompasses the full spectrum of Endocrinology, including Diabetes, Thyroid, Pituitary, Adrenal, Bone, Gonadal, and Metabolic Disorders.','Endocrinology Surgery',1),(8,'The Division provides a comprehensive array of diagnostic and therapeutic treatment for digestive and liver diseases.','Hepatology',1),(9,'The Division includes surgeons with additional training and expertise in all urological subspecialties including andropause, endourology, erectile dysfunction, female urology, incontinence, minimally-invasive surgery, pediatric urology, Peyronie’s disease, lower urinary tract and penile reconstructive surgery, renal transplantation, robotic surgery, stone disease, urologic oncology, urodynamics and neurourology.','Urology',1),(10,'The Division is to care for the whole patient, with particular emphasis on the female reproductive system, including routine primary and preventive care, pregnancy and delivery, menopause, and medical or surgical management of all gynecological problems.','Gynecology and Obstetrics',1),(11,'The Division specialize in advanced and innovative diagnostic and treatment techniques in MRI, CT, mammography, ultrasound, nuclear medicine, vascular and interventional and general radiology.','Interventional Radiology',1),(12,'The Division can be particularly effective for complex diseases with multiple causes, including metabolic diseases, chronic and degenerative conditions  and age-related diseases.','Division of Chinese Medicine',1),(13,'The Division is staffed by a multi-disciplinary team of health care specialists who are committed to providing comprehensive, individualized care to patients with headaches or facial pain disorders.','Headache Center',1),(14,'The Division provides care in the areas of burns, craniofacial surgery, breast, aesthetic surgery, skin cancer, hand and upper extremity, peripheral nerve, post-oncology limb salvage, and have been instrumental in the development of new and innovative areas such as composite vascularized allotransplantation and organ transplantation.','Facial Plastic and Reconstructive Surgery',1),(15,'There are a number of clinical programs at this Center that are designed to diagnosis and treat memory disorders.This includes programs that focus on Alzheimer’s disease, Frontotemporal dementia, Huntington’s disease, Normal Pressure Hydrocephalus, as well as stroke and related vascular conditions.  Each of these programs is led by an outstanding clinician with many years of experience in clinical care.  Wherever possible, the care is multidisciplinary, involving clinicians from the Departments of Neurology, Psychiatry, and Geriatric Medicine.','Memory Disorders Center',1),(16,'The Spine Center is dedicated to relieving pain, restoring function, and implementing cures for a range of conditions affecting the spine.','Spine Center',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dicom_series`
--

LOCK TABLES `t_dicom_series` WRITE;
/*!40000 ALTER TABLE `t_dicom_series` DISABLE KEYS */;
INSERT INTO `t_dicom_series` VALUES (1,'image_04-17-2013_0','173470',2,'CT','1.2.840.113704.1.111.5232.1363571195.6',1,'2016-01-21 05:23:29'),(2,'image_04-17-2013_0','173470',1,'CT','1.2.840.113704.1.111.5232.1363571581.10',1,'2016-01-21 04:48:08'),(3,'image_04-17-2013_6','173470',3,'CT','1.2.840.113704.1.111.5232.1363571581.14',1,'2016-01-21 05:00:40'),(4,'image_09-12-2013_0','10070764',4,'CT','1.2.840.113619.2.294.3.279769203.328.1375846758.606',1,'2016-01-21 05:05:03'),(5,'image_06-10-2014_0','10193331',8,'CT','1.2.840.113704.1.111.5408.1390356593.25',1,'2016-01-21 07:55:20'),(6,'image_06-10-2014_24','10193331',8,'CT','1.2.840.113704.1.111.5408.1390356593.24',1,'2016-01-21 07:55:22'),(7,'000000','LIDC-IDRI-0001',9,'CT','1.3.6.1.4.1.14519.5.2.1.6279.6001.179049373636438705059720603192',1,'2016-01-21 07:57:19');
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
  CONSTRAINT `FK_qv77a10kub8c6o05strgpc27s` FOREIGN KEY (`snapshot_id`) REFERENCES `t_snapshot` (`id`),
  CONSTRAINT `FK_kpkcf3w5295lpjirdin2h3kqs` FOREIGN KEY (`creator_id`) REFERENCES `t_account` (`id`),
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_healthrecord`
--

LOCK TABLES `t_healthrecord` WRITE;
/*!40000 ALTER TABLE `t_healthrecord` DISABLE KEYS */;
INSERT INTO `t_healthrecord` VALUES (3,'2016-01-21 13:23:31','image_04-17-2013_0',6308731,NULL,'1.2.840.113704.1.111.5232.1363571195.6','',1,3,'/2/3884c52e14c54e6e8558065a0c1af109.mha',NULL,8,2),(4,'2016-01-21 11:25:06','6080832',1777185,'jZ0F1jQ7uzaIb3C+UzazUQ==',NULL,NULL,1,1,'/2/b6b5eddf7ab04e0e973ff2bbe236ae18.pdf','IiAQ6UglIX4y9wFnVH8+Hg==',3,2),(5,'2016-01-21 11:25:54','scan dicom',247242,'Y0ums33HVLQLaMPTLZhfkg==',NULL,NULL,1,1,'/2/2f1f7934f7db43ff87ad07102ec93477.pdf','dzoHtzZvm6vCmjm6DSnV5Q==',10,2),(6,'2016-01-21 12:43:52','blood routine2',70853,'q6/WiER4Fd/nj4IpRGZxHw==',NULL,NULL,1,1,'/2/1c26df8075614edc8ab531e8c38f6d80.pdf','omf5cNN0g6C1+xld6av26Q==',1,2),(7,'2016-01-21 13:24:21','image_04-17-2013_0',3504669,NULL,'1.2.840.113704.1.111.5232.1363571581.10','',1,3,'/1/bd524cf6f2af4f0aab24a79e67e25a08.mha',NULL,6,1),(8,'2016-01-21 12:51:06','blood routine2',70853,'pUQHfwD/npWV+FBcLzqkSQ==',NULL,NULL,1,1,'/1/fc6d11a1d2e2431bb1917d229c652302.pdf','eTp14shU4TZcUy9FiL5wMQ==',1,1),(9,'2016-01-21 12:52:01','2e8a9f5152164b02bb4ec62ca63d46de_thumbnail',17520,'yp5maaHozeiT3J6BnAH/wg==',NULL,NULL,1,1,'/1/4dedc8a620044868af5a108b8a8f52a6.pdf','TFVzrI/8jHiu+VCsAw5Rrw==',10,1),(10,'2016-01-21 12:52:14','scan dicom',247242,'bMmJGIq8F+jUbu9lOrisSA==',NULL,NULL,1,1,'/1/69584c761cc8489b99fb504e85b05a61.pdf','3tUSKlSy+RrU4qkSBuPOwg==',10,1),(13,'2016-01-21 12:59:50','61b7c674618816328cfa4423cd2234',92938,'buyrVNb+6ZUmOZ38Tsdx4A==',NULL,NULL,1,1,'/1/b2e166b598e949b2975b910122755ad1.pdf','gpKHgvAm4+2ddN2TsUFXNQ==',9,1),(14,'2016-01-21 12:59:51','172_BG5_0004 (1)',62058,'3mRJgLJGOovMkZ9Hy9um6Q==',NULL,NULL,1,1,'/1/1b02f4b074234b6eb70017b01deb2b58.pdf','l+AH6PPUZ/rzBrmp9H40Hg==',9,1),(15,'2016-01-21 13:02:16','image_04-17-2013_6',3186444,NULL,'1.2.840.113704.1.111.5232.1363571581.14','',1,3,'/3/ab0534432b414eeea81a125530ff3695.mha',NULL,8,3),(16,'2016-01-21 13:01:03','2e8a9f5152164b02bb4ec62ca63d46de_thumbnail',17629,'JeVkORb/pHvxaTIceV91kg==',NULL,NULL,1,1,'/3/a8fe01e9f22c4d67ae58bced23f67ae7.pdf','1iHa8cp3iaz4G27Lt8A6ZA==',10,3),(17,'2016-01-21 13:01:12','blood routine1',300408,'YRM8OjqnmKjjyje7je/p5A==',NULL,NULL,1,1,'/3/c34a18bee2aa4021849096b5aa19dd1a.pdf','VbK5ayOnWq0U6Bs26CPB3w==',1,3),(18,'2016-01-21 13:01:35','ehr2',18733,'2WNjdQQqhvuZe7IlwNAeVg==',NULL,NULL,1,1,'/3/9730a2b319664c7881e5a1eb9ea1bb57.pdf','41KSJJoQ1hvNrS9kw2lmeg==',3,3),(19,'2016-01-21 13:01:59','blood routine1',298572,'cvGxFXzxI1tbwweYM1mIyg==',NULL,NULL,1,1,'/4/fb7fd3ff2b664aaaaa805df5bfff09f4.pdf','htamGcvnjggLlMsEZvj/LA==',1,4),(20,'2016-01-21 13:02:29','172_BG5_0004 (1)',62058,'bmkuGQcqJ+X+YrOalEhFqw==',NULL,NULL,1,1,'/4/a27769036f3744a6a767b0bfc30bf99a.pdf','TRtX0GHrIRhjxEsPSBjZJA==',9,4),(21,'2016-01-21 13:02:30','us1',91686,'YqMlqgPW2brlRb76qTWcUg==',NULL,NULL,1,1,'/4/4d98c3595b364a8d93d6ea443a5d5384.pdf','WCjEISfaNSCh1Dp0foNGwg==',9,4),(22,'2016-01-21 13:03:45','case report',229648,'pp+WFAmU0BjwT7N3Jw5upw==',NULL,NULL,1,1,'/4/5174c4a709c845e09fd6c8e69468e707.pdf','kN+BVAKheKCzreuO1j316Q==',4,4),(23,'2016-01-21 13:37:49','image_09-12-2013_0',1827394,NULL,'1.2.840.113619.2.294.3.279769203.328.1375846758.606','',1,3,'/4/9c29c776d39e417ab649c8787097a0a4.mha',NULL,8,4),(24,'2016-01-21 13:23:12','blood routine1',301039,'FZJ1pbcysorCXCeBoIjbgQ==',NULL,NULL,1,1,'/5/b6e8cca3b1bd45bb8b5575377307861f.pdf','4L/+4qnL2qFe+F0h/WLbTA==',1,5),(25,'2016-01-21 13:23:31','image_04-17-2013_0',6308731,NULL,'1.2.840.113704.1.111.5232.1363571195.6','',1,3,'/5/3884c52e14c54e6e8558065a0c1af109.mha',NULL,8,5),(26,'2016-01-21 13:29:51','2e8a9f5152164b02bb4ec62ca63d46de_thumbnail',17667,'UAAFWa9fRHTrqZvLHwQrtA==',NULL,NULL,1,1,'/5/c21c577428fa4680915acc4f6432a9d6.pdf','ekwEBd2HLyHZYCTk81XqkQ==',10,5),(27,'2016-01-21 13:30:02','f25334c848d19bd988258582ad8726',87688,'l4Dykb9Etx2uDJ7BVFK5XQ==',NULL,NULL,1,1,'/5/6c34641e9b1b4f30925004560e0e4226.pdf','yPPkSPNSB0SG4YdHL4I/BQ==',9,5),(28,'2016-01-21 13:36:32','blood routine2',70853,'PTkw+tD4jd9NY6p3EDpuYQ==',NULL,NULL,1,1,'/6/6cf4eace690c4a32b7de615a82d1a958.pdf','zenRE4qcakupxllGi/lw7A==',1,6),(29,'2016-01-21 13:36:41','2e8a9f5152164b02bb4ec62ca63d46de_thumbnail',18076,'4tx/hwZNCEOpkY1FZil/tQ==',NULL,NULL,1,1,'/6/013510619f15417b91ff4e1427d8633d.pdf','HTuhvwXHudrfoFFCK/8EYA==',10,6),(30,'2016-01-21 13:36:41','scan dicom',247242,'y5jV/l8th4u4xf3kzW+uXw==',NULL,NULL,1,1,'/6/aef0bba992cd42e2bd03677c4177435c.pdf','99rOT+wQmue8jWJisGOFBQ==',10,6),(31,'2016-01-21 13:36:52','2-Liver-Abscess-labelled',204328,'INCLZO/M5NJc3vS5Fo9dGg==',NULL,NULL,1,1,'/6/31cfe4cdfa83402792a84dd93eb82072.pdf','SsenZ4z0pc2auO+N4HvysQ==',9,6),(32,'2016-01-21 13:24:21','image_04-17-2013_0',3504669,NULL,'1.2.840.113704.1.111.5232.1363571581.10','',1,3,'/6/bd524cf6f2af4f0aab24a79e67e25a08.mha',NULL,6,6),(33,'2016-01-21 15:55:01','blood routine2',70768,'NxJOxjoZ6xdX4MHldx0rww==',NULL,NULL,1,1,'/8/ff1f58be19a84c73a0fb7eb78c183fce.pdf','QII36O6Ki9h2FYdNjFt3DA==',1,8),(34,'2016-01-21 15:55:29','image_06-10-2014_0',12946422,NULL,'1.2.840.113704.1.111.5408.1390356593.25','',1,3,'/8/e468ad6a0b97400ebcc3cb34fbf87f79.mha',NULL,8,8),(36,'2016-01-21 15:56:03','2e8a9f5152164b02bb4ec62ca63d46de_thumbnail',16776,'iBLtiwYzugzPBua44WJY5g==',NULL,NULL,1,1,'/8/1e19e4ec58894addadcd37cfc50fc223.pdf','1ZC73KovLwSk/fIWv6jxDw==',10,8),(37,'2016-01-21 15:56:16','lib result',55018,'ocSmZklQSVpplSalPwUw4g==',NULL,NULL,1,1,'/8/c1e863f47a104d3099a7e5862f563c30.pdf','nP9sn6XYaD85F4CXK3ZH+w==',3,8),(38,'2016-01-21 15:56:36','blood routine1',290857,'XHOVfX2HxGFyhTl3eNyJZA==',NULL,NULL,1,1,'/9/4291106c82c548c7b483723c234aeb50.pdf','iFH+nxsnogLZ9a/DGRBXHQ==',1,9),(39,'2016-01-21 15:56:50','ehr1',35535,'OoGvr6YKLx5j+q1Kv/SSng==',NULL,NULL,1,1,'/9/056ed94ae1474a7893d671889fc40b3e.pdf','Jt2L8dLjFq24wJVUcb9SoQ==',2,9),(40,'2016-01-21 15:57:01','scan dicom',247400,'mRwznWYen4RaE03tai2IqA==',NULL,NULL,1,1,'/9/c0ef2d9868a04f7aa64738cc190fb650.pdf','LUANPclXOd0xkp7ytJXGmw==',10,9),(41,'2016-01-21 15:57:29','000000',15042943,NULL,'1.3.6.1.4.1.14519.5.2.1.6279.6001.179049373636438705059720603192','',1,3,'/9/a0ed83fe28c04d2b89ad93c64f164b4e.mha',NULL,6,9),(42,'2016-01-21 15:57:56','6080832',1777190,'77yRozzJi3oew3iEkyEnOg==',NULL,NULL,1,1,'/7/3ce8f8e041a74828b6d19fbe7f8261c2.pdf','3moYD19Xdigeg0PLG17gkA==',4,7),(43,'2016-01-21 15:58:07','case report 01',947254,'4+qcuFIcWWn4pWFq9M5m8A==',NULL,NULL,1,1,'/7/11c0a605f0ae40bd85d7cc71c832ac2e.pdf','xzV7hI+E/SsQ+lTkvjOnpQ==',2,7),(44,'2016-01-21 15:58:20','lib result',55018,'8kv+l6Q2YpmaE55s+1tsyA==',NULL,NULL,1,1,'/7/a103e734d46345599e76380409e834f7.pdf','a7Q/Od1Y+MakvuePFGlOxw==',7,7);
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
INSERT INTO `t_hospital` VALUES (1,NULL,'Beijing Changgeng Hospital',1),(2,NULL,'Beijing Union Medical College Hospital',1);
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
  CONSTRAINT `FK_fsh3o56i13msibdqimfe9fat4` FOREIGN KEY (`event_id`) REFERENCES `t_mdtevent` (`id`),
  CONSTRAINT `FK_c194m4nomw9s41ryubq4im7qv` FOREIGN KEY (`attendee_id`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mdt_attendees`
--

LOCK TABLES `t_mdt_attendees` WRITE;
/*!40000 ALTER TABLE `t_mdt_attendees` DISABLE KEYS */;
INSERT INTO `t_mdt_attendees` VALUES (1,1,3,1),(2,1,5,1),(3,1,6,1),(4,1,7,1),(5,1,3,2),(6,1,6,2),(7,1,7,2),(8,1,5,2),(9,1,6,3),(10,1,7,3),(11,1,5,3),(12,1,7,4),(13,1,3,4),(14,1,6,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mdt_patient_history`
--

LOCK TABLES `t_mdt_patient_history` WRITE;
/*!40000 ALTER TABLE `t_mdt_patient_history` DISABLE KEYS */;
INSERT INTO `t_mdt_patient_history` VALUES (1,'2016-01-21 14:17:38','In a larger portion, tumor cells showed a unique growth pattern in which thick trabeculae or irregularly shaped tumor islands were filled with compact or loose mucin-producing glands.','2016-01-21 14:14:07',1,5,3,3,5);
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
  CONSTRAINT `FK_m6t839pjya0y6pa5xh7hea6t7` FOREIGN KEY (`patient_history_id`) REFERENCES `t_patient_history` (`id`),
  CONSTRAINT `FK_5d5ggcn0vhsvhhaeavh58bx7j` FOREIGN KEY (`event_id`) REFERENCES `t_mdtevent` (`id`),
  CONSTRAINT `FK_bah91xtu295s1vgxtxyhhxty1` FOREIGN KEY (`doctor_id`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_lgxnah1ki3yso97a1qlvn0k9j` FOREIGN KEY (`creator_id`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mdt_suggestion`
--

LOCK TABLES `t_mdt_suggestion` WRITE;
/*!40000 ALTER TABLE `t_mdt_suggestion` DISABLE KEYS */;
INSERT INTO `t_mdt_suggestion` VALUES (1,'Upper digestive tract endoscopy did not show signs of esophageal varix. The cardiac function evaluation (ECG, echocardiography and clinical) excluded any symptom of heart failure.','2016-01-19 21:15:00',3,3,1,1),(2,'Residual disease was predominantly localized at the segment IV of the liver in the upper site area of the left portal trunk which, in any case, was re-canalized as compared to the previous assessment.','2016-01-19 21:18:00',7,7,1,1),(3,'He had seen multiple naturopathic physicians for these complaints, before an urgent care visit one week earlier. At that time, he had been started on azithromycin and doxycycline for a presumptive diagnosis of pneumonia.','2016-01-21 14:11:49',3,3,2,5),(4,'Pertinent physical findings revealed typical, non-tender cupping marks on his back. More concerning was an absence of breath sounds on the right side of the chest on auscultation.','2016-01-21 14:12:08',7,7,2,5),(5,'His abdomen was soft and non-tender. The remainder of the physical examination was non-contributory.','2016-01-21 14:13:44',6,6,2,5),(6,'A bedside ultrasound was subsequently performed in the ED, initially in order to examine the size of the pleural effusion in which a startling discovery was made.','2016-01-21 14:17:57',3,3,3,5),(7,'Bedside ultrasound images showing multiple, hypoechoic, loculated fluid collections within the parenchyma of the liver, consistent with hepatic abscesses.','2016-01-21 14:18:13',7,7,3,5),(8,'As a result of these abscess findings, the patient underwent a computed tomography (CT) of the chest, abdomen and pelvis to determine the extent of the pulmonary and hepatic disease.','2016-01-21 14:18:52',5,5,3,5),(9,'Residual disease was predominantly localized at the segment IV of the liver in the upper site area of the left portal trunk which, in any case, was re-canalized as compared to the previous assessment.','2016-01-21 14:19:18',6,6,3,5),(10,'In general, it is difficult to distinguish IPTs from malignant tumors by radiographic studies. Literature shows that in some (individual) cases a percutaneous tumor biopsy provided the correct diagnosis.','2016-01-21 15:53:31',7,7,4,9),(11,'A further problem suggested in the literature, besides recurrence, is the potential malignant transformation of IPTs some years after hepatectomy.','2016-01-21 15:53:48',3,3,4,9),(12,'Needle tract seeding has been reported to occur in 5.1% of patients with hepatocellular carcinoma (HCC), who underwent percutaneous needle biopsy.','2016-01-21 15:54:06',6,6,4,9);
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
  CONSTRAINT `FK_g4v2yayocb8803w8b8csk3fa9` FOREIGN KEY (`ticket_id`) REFERENCES `t_ticket` (`id`),
  CONSTRAINT `FK_cnfp2qntdry9kaj90f1tqat5w` FOREIGN KEY (`event_id`) REFERENCES `t_mdtevent` (`id`),
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
  CONSTRAINT `FK_9is60di5k9jrwsa8v1kninn40` FOREIGN KEY (`quote_id`) REFERENCES `t_mdtcomment` (`id`),
  CONSTRAINT `FK_3md346nyac28gqnnl2me7tnjd` FOREIGN KEY (`patient_id`) REFERENCES `t_patient` (`id`),
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mdtevent`
--

LOCK TABLES `t_mdtevent` WRITE;
/*!40000 ALTER TABLE `t_mdtevent` DISABLE KEYS */;
INSERT INTO `t_mdtevent` VALUES (1,NULL,'2016-01-19 08:00:00',NULL,NULL,NULL,NULL,'The following parameters turned out altered: AFP level 353 ng/ml (nv <7); CA 19-9 45.8 U/ml (nv <39); AST 99 (nv <40 U/L), ALT 142 (nv <41 U/l); platelet count 126/L (nv 150-400). Kidney function was within the normal limits.',NULL,1,NULL,1,NULL,3,1),(2,NULL,'2016-01-21 13:30:18',NULL,'2016-01-21 14:14:07',NULL,NULL,'He was an otherwise healthy heterosexual male, without drug use or travel outside the country. He had no known sick contacts.',NULL,2,NULL,1,NULL,3,5),(3,NULL,'2016-01-21 14:17:38',120,NULL,'Room 501, 4F, Build 3','2016-01-29 14:30:00','Cannot handle it by self and need to hold a meeting to discuss with other doctors','COV-1601000',1,'Hold a meeting to discuss with others',2,NULL,5,NULL),(4,NULL,'2016-01-21 15:53:11',NULL,NULL,NULL,NULL,'As part of the metastatic work-up he was also submitted to a chest CT, esophagogastroscopy and colonoscopy.',NULL,1,NULL,1,NULL,7,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_patient`
--

LOCK TABLES `t_patient` WRITE;
/*!40000 ALTER TABLE `t_patient` DISABLE KEYS */;
INSERT INTO `t_patient` VALUES (1,NULL,'2016-01-01 08:00:00',NULL,'213122196512253011','13877777777','Jacky Zhang','P000001',1,1,4),(2,NULL,'2015-12-08 08:00:00',NULL,'613122198511104321','13688888888','Susan Wang','P000002',2,1,4),(3,NULL,'2016-01-03 08:00:00',NULL,'321212197210304011','13612345678','Franco Li','P000003',1,1,4),(4,NULL,'2016-01-12 08:00:00',NULL,'613122196905163032','13587654321','Fred Wu','P000004',1,1,4),(5,NULL,'2016-01-21 13:22:53',NULL,'213122195712253022','13666666666','Rain Wang','P000005',1,1,3),(6,NULL,'2016-01-21 13:36:14',NULL,'213122195712253054','13666666666','Frank Li','P000006',2,1,3),(7,NULL,'2016-01-21 15:50:49',NULL,'213122197412253022','13888888888','Leo Chen','P000007',1,1,7),(8,NULL,'2016-01-21 15:51:34',NULL,'213122198212253015','13888888888','Richard Cai','P000008',1,1,7),(9,NULL,'2016-01-21 15:52:54',NULL,'213122196912253022','13877777777','Ray Zhao','P000009',1,1,7),(10,NULL,'2016-01-21 15:59:38',NULL,'213122195712253025','13888888888','Alex Liu','P00010',2,1,6);
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
  CONSTRAINT `FK_ivabrkpe9oq5pi23ywrj96xyh` FOREIGN KEY (`patient_id`) REFERENCES `t_patient` (`id`),
  CONSTRAINT `FK_5efiwbe0nw1x7x0ygeny6c4i9` FOREIGN KEY (`creator_id`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_jxv92824io0j2mygbs1an5351` FOREIGN KEY (`assigner_id`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_sq0fcr1g58760iwkinlb25ma` FOREIGN KEY (`doctor_id`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_patient_history`
--

LOCK TABLES `t_patient_history` WRITE;
/*!40000 ALTER TABLE `t_patient_history` DISABLE KEYS */;
INSERT INTO `t_patient_history` VALUES (1,'2016-01-19 08:00:00','1','2016-01-19 08:00:00',NULL,'The patient was in good shape (ECOG PS 0) with a history of chronic HCV-related hepatopathy clinically-functionally compensated.',NULL,NULL,0,2,4,4,3,1),(2,'2016-01-19 08:00:00','2','2016-01-19 08:00:00',NULL,'The aetiological frame carried out in our Unit confirmed the diagnosis of chronic hepatopathy evolving towards cirrhosis due to chronic HCV infection.',NULL,NULL,0,1,4,4,3,2),(3,'2016-01-19 08:00:00','3','2016-01-19 08:00:00',NULL,'The lesion spread from the liver dome and from the margin of the Glisson capsule to the anterior area of the left portal trunk and its branch to segment III which were clotted.',NULL,NULL,0,1,4,4,3,3),(4,'2016-01-19 08:00:00','4','2016-01-19 08:00:00',NULL,'Residual disease was predominantly localized at the segment IV of the liver in the upper site area of the left portal trunk which, in any case, was re-canalized as compared to the previous assessment.',NULL,NULL,0,1,4,4,3,4),(5,'2016-01-21 13:22:53','5','2016-01-21 13:22:53',NULL,'The cupping procedure is an alternative medicine practice that uses local suction to theoretically stimulate blood flow and promote healing. He had no previous issues with the procedure. On further history he reported having had approximately 6 weeks of intermittent fevers, cough, anorexia and general malaise.',NULL,NULL,0,4,3,3,3,5),(6,'2016-01-21 13:36:14','6','2016-01-21 13:36:14',NULL,'She had been found to have liver masses 5 years previously in 1995 during a preoperative evaluation of an ovarian mass. She subsequently underwent total abdominal hysterectomy with bilateral salpingo-oophorectomy for this large ovarian mass, which was found to be an endometrioma She had had thyroidectomy 20 years earlier for a papillary carcinoma of the thyroid.',NULL,NULL,0,1,3,3,3,6),(7,'2016-01-21 15:50:49','7','2016-01-21 15:50:49',NULL,'His past medical history revealed that he had been a hepatitis B (HB) virus carrier. His family history was noncontributory.',NULL,NULL,0,1,7,7,7,7),(8,'2016-01-21 15:51:34','8','2016-01-21 15:51:34',NULL,'Serologic examination on admission was positive for HB surface antigen, and negative for HB surface antibody, hepatitis C virus, hepatitis A virus, and human immunodeficiency virus.',NULL,NULL,0,1,7,7,7,8),(9,'2016-01-21 15:52:54','9','2016-01-21 15:52:54',NULL,'He presented with a three-day history of right upper quadrant abdominal pain. He also complained of anorexia and weight loss (5 kg) in one month. He had no fever or night sweats and he presented without jaundice.',NULL,NULL,0,2,7,7,7,9),(10,'2016-01-21 15:59:38','10','2016-01-21 15:59:38',NULL,'She presented with fasting hypoglicemia (blood glucose 35 mg/dl) and high serum insulin levels (insulin 115.9 microU/ml). A computerized tomographic scan showed a pancreatic tail lesion of about 6 cm in max diameter and multiple liver metastases.',NULL,NULL,0,1,6,6,6,10);
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
INSERT INTO `t_permission` VALUES (1,'create','create a patient','patient',0,'patient'),(2,'list','list all patients','patient',0,'patient'),(3,'remove','remove-existing-patient','patient ',0,'patient'),(4,'update','update-existing-patient','patient',0,'patient'),(5,'detail','view patient details','patient',0,'patient'),(6,'healthrecord-create','add new healthrecord for patient','patient',0,'patient'),(7,'healthrecord-list','list all healthrecords of patient ','patient',0,'patient'),(8,'healthrecord-remove','healthrecord-remove','patient',0,'patient'),(9,'healthrecord-view','healthrecord-view','patient',0,'patient'),(10,'healthrecoed-snapshot','healthrecoed-snapshot','patient',0,'patient'),(11,'consolate','consolate','patient',0,'patient'),(12,'assign','assign','patient',0,'patient'),(13,'create','create-a-user','user',0,'user'),(14,'list','list-users-content','user',0,'user'),(15,'remove','remove-existing-user','user',0,'user'),(16,'update','update-existing-user','user',0,'user'),(17,'view','view-existing-user','user',0,'user'),(18,'create','create-a-mdt','mdt',0,'mdt'),(19,'list','list-mdts','mdt',0,'mdt'),(20,'update','update-a-mdt','mdt',0,'mdt'),(21,'detail','mdt-detail','mdt',0,'mdt'),(22,'create','create-a-meeting','meeting',0,'meeting'),(23,'list','list-meetings','meeting',0,'meeting'),(24,'remove','remove-meeting','meeting',0,'meeting'),(25,'update','update-a-meeting','meeting',0,'meeting'),(26,'detail','meeting-detail','meeting',0,'meeting'),(27,'create','create-a-role','role',0,'role'),(28,'list','list-roles','role',0,'role'),(29,'remove','remove-a-role','role',0,'role'),(30,'update','update-a-role','role',0,'role'),(31,'view','view-a-role','role',0,'role'),(32,'list','log-list','audit',0,'audit'),(33,'profile','user profile page','user',0,'user'),(34,'pwd-reset','reset user password','user',0,'user'),(35,'list','list favorite users','favorite',0,'favorite'),(36,'create','create a new doctor social','social',0,'doctor-social'),(37,'list','list all social','social',0,'doctor-social'),(38,'doctor','display doctor\'s dashboard','dashboard',0,'dashboard'),(39,'moderator','display moderator\'s dashboard','dashboard',0,'dashboard'),(40,'navigator','display navigator\'s dashboard','dashboard',0,'dashboard'),(41,'patient','display patient\'s dashboard','dashboard',0,'dashboard'),(42,'admin','display admin\'s dashboard','dashboard',0,'dashboard');
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
  CONSTRAINT `FK_t66iccm6aiw9eeh1coenrou2m` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`),
  CONSTRAINT `FK_3y324c6bptbhq19nbeh9wibpg` FOREIGN KEY (`permission_id`) REFERENCES `t_permission` (`id`)
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
  CONSTRAINT `FK_om88xhhclannsla7mnb1yq2hx` FOREIGN KEY (`temp_attendee_id`) REFERENCES `t_mdt_temp_attendees` (`id`),
  CONSTRAINT `FK_1qqxqw3t4bl5wveng5xj9co2v` FOREIGN KEY (`creator_id`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FK_844pp36rdw5qhc7ck2qc8r3rg` FOREIGN KEY (`healthrecord_id`) REFERENCES `t_healthrecord` (`id`),
  CONSTRAINT `FK_93ns5kyd0s9dfsw7k725r9w7p` FOREIGN KEY (`event_id`) REFERENCES `t_mdtevent` (`id`)
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ticket`
--

LOCK TABLES `t_ticket` WRITE;
/*!40000 ALTER TABLE `t_ticket` DISABLE KEYS */;
INSERT INTO `t_ticket` VALUES (1,'2016-01-21 09:45:04','2016-01-24 03:45:04','David','281b4b66706d4efe82c6fc6ae2070fce',3),(2,'2016-01-21 13:31:32','2016-01-22 13:31:32','Sun','1927d824ce614271b89ec3ac7619b139',6),(3,'2016-01-21 14:11:56','2016-01-22 20:11:56','White','8e2e29486ead473db3383d94905fd5b7',7),(4,'2016-01-21 14:14:15','2016-01-22 14:14:15','Will','e65adf0ea435429e9331c10b93bbf385',5);
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
INSERT INTO `t_user_info` VALUES (1,'/0.png','1973-06-25 00:00:00',NULL,NULL,'Ming','410-550-3466',1,1,8,1,1),(2,'/1.png','1973-06-25 00:00:00',NULL,NULL,'Ben','410-550-3466',1,2,8,1,2),(3,'/2.png','1971-08-01 00:00:00',NULL,NULL,'David','410-550-0409',1,3,1,1,3),(4,'/3.png','1976-07-13 00:00:00',NULL,NULL,'Emma','410-955-9441',2,4,2,1,9),(5,'/4.png','1970-06-19 00:00:00',NULL,NULL,'Will','410-955-5268',1,5,3,2,5),(6,'/5.png','1970-06-19 00:00:00',NULL,NULL,'Sun','410-955-5269',1,6,4,1,4),(7,'/6.png','1982-02-19 00:00:00',NULL,NULL,'White','410-955-5277',1,7,3,2,4);
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
INSERT INTO `t_usertitle` VALUES (1,'Other'),(2,'Chief Physicians'),(3,'Associate Professor'),(4,'Attending Doctor'),(5,'Doctor'),(6,'Assistant Doctor'),(7,'Head Nurse'),(8,'Associate Chief of Nursing'),(9,'Nurse Practitioner'),(10,'Nurse'),(11,'Nursing');
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
INSERT INTO `t_usertype` VALUES (1,'admin'),(2,'doctor'),(3,'nurse'),(4,'moderator');
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

-- Dump completed on 2016-01-22  8:56:06
