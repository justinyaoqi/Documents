CREATE DATABASE  IF NOT EXISTS `zanqy` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `zanqy`;
-- MySQL dump 10.13  Distrib 5.6.17, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: zanqy
-- ------------------------------------------------------
-- Server version	5.5.39-log

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
-- Table structure for table `ts_anti_email`
--

DROP TABLE IF EXISTS `ts_anti_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_anti_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `email` char(32) NOT NULL DEFAULT '' COMMENT 'Email',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='过滤Email';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_anti_email`
--

LOCK TABLES `ts_anti_email` WRITE;
/*!40000 ALTER TABLE `ts_anti_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_anti_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_anti_ip`
--

DROP TABLE IF EXISTS `ts_anti_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_anti_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `ip` char(32) NOT NULL DEFAULT '' COMMENT 'IP地址',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='垃圾IP';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_anti_ip`
--

LOCK TABLES `ts_anti_ip` WRITE;
/*!40000 ALTER TABLE `ts_anti_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_anti_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_anti_user`
--

DROP TABLE IF EXISTS `ts_anti_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_anti_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='过滤用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_anti_user`
--

LOCK TABLES `ts_anti_user` WRITE;
/*!40000 ALTER TABLE `ts_anti_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_anti_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_anti_word`
--

DROP TABLE IF EXISTS `ts_anti_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_anti_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` char(32) NOT NULL DEFAULT '' COMMENT '垃圾词',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=522 DEFAULT CHARSET=utf8 COMMENT='垃圾词';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_anti_word`
--

LOCK TABLES `ts_anti_word` WRITE;
/*!40000 ALTER TABLE `ts_anti_word` DISABLE KEYS */;
INSERT INTO `ts_anti_word` VALUES (1,'国民党','2012-08-28 15:23:10'),(2,'邓小平','2012-08-28 15:23:10'),(3,'江泽民','2012-08-28 15:23:10'),(4,'胡锦涛','2012-08-28 15:23:10'),(5,'共产党','2012-08-28 15:23:10'),(6,'毛主席','2012-08-28 15:23:10'),(7,'毛泽东','2012-08-28 15:23:10'),(8,'中共','2012-08-28 15:23:10'),(9,'中国共产党','2012-08-28 15:23:10'),(10,'枪','2012-08-28 15:23:10'),(11,'弹药','2012-08-28 15:23:10'),(12,'枪支','2012-08-28 15:23:10'),(13,'氣槍','2012-08-28 15:23:10'),(14,'猎槍','2012-08-28 15:23:10'),(15,'来福','2012-08-28 15:23:10'),(16,'雷鸣登','2012-08-28 15:23:10'),(17,'五连发','2012-08-28 15:23:10'),(18,'平式双管','2012-08-28 15:23:10'),(19,'立式双管','2012-08-28 15:23:10'),(20,'麻醉','2012-08-28 15:23:10'),(21,'军用','2012-08-28 15:23:10'),(22,'进口','2012-08-28 15:23:10'),(23,'录入员','2012-08-28 15:23:10'),(24,'招聘兼职','2012-08-28 15:23:10'),(25,'1332566258','2012-08-28 15:23:10'),(26,'直流电阻测试仪','2012-08-28 15:23:10'),(27,'继电保护测试仪','2012-08-28 15:23:10'),(28,'串联谐振','2012-08-28 15:23:10'),(29,'分压器','2012-08-28 15:23:10'),(30,'www.hbyhdl.com','2012-08-28 15:23:10'),(31,'www.bd-seo.net','2012-08-28 15:23:10'),(32,'武汉网站优化','2012-08-28 15:23:10'),(33,'武汉网络推广','2012-08-28 15:23:10'),(34,'武汉网络营销','2012-08-28 15:23:10'),(35,'武汉SEO','2012-08-28 15:23:10'),(36,'大脚骨矫正器','2012-08-28 15:23:10'),(37,'379056061','2012-08-28 15:23:10'),(38,'拇外翻','2012-08-28 15:23:10'),(39,'小姐','2012-08-28 15:23:10'),(40,'习近平','2012-08-28 15:23:10'),(41,'王立军','2012-08-28 15:23:10'),(42,'两会','2012-08-28 15:23:10'),(43,'薄熙来','2012-08-28 15:23:10'),(44,'谷开来','2012-08-28 15:23:10'),(45,'唱红打黑','2012-08-28 15:23:10'),(46,'听党指挥','2012-08-28 15:23:10'),(47,'薄一波','2012-08-28 15:23:10'),(48,'李长春','2012-08-28 15:23:10'),(49,'周永康','2012-08-28 15:23:10'),(50,'政府','2012-08-28 15:23:10'),(51,'zhenfu','2012-08-28 15:23:10'),(52,'傻逼','2012-08-28 15:23:10'),(53,'zhengfu','2012-08-28 15:23:10'),(54,'他杀','2012-08-28 15:23:10'),(55,'枪杀','2012-08-28 15:23:10'),(56,'谋杀','2012-08-28 15:23:10'),(57,'起义','2012-08-28 15:23:10'),(58,'就义','2012-08-28 15:23:10'),(59,'法轮功','2012-08-28 15:23:10'),(60,'邪教','2012-08-28 15:23:10'),(61,'GCD','2012-08-28 15:23:10'),(62,'hege123','2012-08-28 15:23:10'),(63,'菲律宾','2012-08-28 15:23:10'),(64,'薄熙莱','2012-08-28 15:23:10'),(65,'小姐上门','2012-08-28 15:23:10'),(66,'一夜情','2012-08-28 15:23:10'),(67,'性爱','2012-08-28 15:23:10'),(68,'性息','2012-08-28 15:23:10'),(69,'武汉婚纱摄影','2012-08-28 15:23:10'),(70,'武汉婚纱照','2012-08-28 15:23:10'),(71,'武汉艺术照','2012-08-28 15:23:10'),(72,'武汉婚纱摄影工作室','2012-08-28 15:23:10'),(73,'www.yilongphoto.com','2012-08-28 15:23:10'),(74,'www.windyx.com','2012-08-28 15:23:10'),(75,'www.ruile.net','2012-08-28 15:23:10'),(76,'www.wo-niu.com.cn','2012-08-28 15:23:10'),(77,'www.wlzb518.com','2012-08-28 15:23:10'),(78,'www.wufangzhai-zongzi.com','2012-08-28 15:23:10'),(79,'www.hege123.com','2012-08-28 15:23:10'),(80,'按摩','2012-08-28 15:23:10'),(81,'按摩服务','2012-08-28 15:23:10'),(82,'cwsurf.de','2012-08-28 15:23:10'),(83,'出台','2012-08-28 15:23:10'),(84,'包夜','2012-08-28 15:23:10'),(85,'www.maizongzi.com','2012-08-28 15:23:10'),(86,'代刷','2012-08-28 15:23:10'),(87,'微笑网络','2012-08-28 15:23:10'),(88,'刷信誉','2012-08-28 15:23:10'),(89,'53530.cn','2012-08-28 15:23:10'),(90,'waimaodao.com','2012-08-28 15:23:10'),(91,'小 妹','2012-08-28 15:23:10'),(92,'上 门 服 务','2012-08-28 15:23:10'),(93,'小 妹 上 门','2012-08-28 15:23:10'),(94,'王哥','2012-08-28 15:23:10'),(95,'花姐','2012-08-28 15:23:10'),(96,'学妹','2012-08-28 15:23:10'),(97,'姓ˊ感ˊ少ˊ妇','2012-08-28 15:23:10'),(98,'丰ˊ韵ˊ熟ˊ妇','2012-08-28 15:23:10'),(99,'丽人岛休闲会所','2012-08-28 15:23:10'),(100,'越ˊ南ˊ妹','2012-08-28 15:23:10'),(101,'77057','2012-08-28 15:23:10'),(102,'饥ˊ渴ˊ熟ˊ女','2012-08-28 15:23:10'),(103,'饥渴熟女','2012-08-28 15:23:10'),(104,'性感人妻','2012-08-28 15:23:10'),(105,'姓感少妇','2012-08-28 15:23:10'),(106,'51gouku.com','2012-08-28 15:23:10'),(107,'51够酷','2012-08-28 15:23:10'),(108,'585.cc','2012-08-28 15:23:10'),(109,'腋臭','2012-08-28 15:23:10'),(110,'狐臭','2012-08-28 15:23:10'),(111,'兼职学生妹','2012-08-28 15:23:10'),(112,'湘湘','2012-08-28 15:23:10'),(113,'小唐','2012-08-28 15:23:10'),(114,'学生妹','2012-08-28 15:23:10'),(115,'wufangzhai-zongzi.com','2012-08-28 15:23:10'),(116,'冰毒','2012-08-28 15:23:10'),(117,'海洛因','2012-08-28 15:23:10'),(118,'毒品','2012-08-28 15:23:10'),(119,'吸毒','2012-08-28 15:23:10'),(120,'66dao.com','2012-08-28 15:23:10'),(121,'办证','2012-08-28 15:23:10'),(122,'赵小姐','2012-08-28 15:23:10'),(123,'douyapai.com','2012-08-28 15:23:10'),(124,'ntxz.cc','2012-08-28 15:23:10'),(125,'豆芽派','2012-08-28 15:23:10'),(126,'tdjyedu','2012-08-28 15:23:10'),(127,'自考招生','2012-08-28 15:23:10'),(128,'sinoest','2012-08-28 15:23:10'),(129,'身份證买卖','2012-08-28 15:23:10'),(130,'身份证买卖','2012-08-28 15:23:10'),(131,'895316992','2012-08-28 15:23:10'),(132,'爱游中国','2012-08-28 15:23:10'),(133,'上門服务','2012-08-28 15:23:10'),(134,'客人隐私','2012-08-28 15:23:10'),(135,'suoniao.com','2012-08-28 15:23:10'),(136,'男科医院','2012-08-28 15:23:10'),(137,'男性医院','2012-08-28 15:23:10'),(138,'包皮','2012-08-28 15:23:10'),(139,'包茎','2012-08-28 15:23:10'),(140,'男科','2012-08-28 15:23:10'),(141,'做爱','2012-08-28 15:23:10'),(142,'小妹上门','2012-08-28 15:23:10'),(143,'小妹服务','2012-08-28 15:23:10'),(144,'sm','2012-08-28 15:23:10'),(145,'sm女王','2012-08-28 15:23:10'),(146,'成熟少妇','2012-08-28 15:23:10'),(147,'包吹','2012-08-28 15:23:10'),(148,'极品校花','2012-08-28 15:23:10'),(149,'sinoest.com','2012-08-28 15:23:10'),(150,'尖锐湿疣','2012-08-28 15:23:10'),(151,'耳鼻喉医院','2012-08-28 15:23:10'),(152,'过敏性鼻炎','2012-08-28 15:23:10'),(153,'ibuonline.com','2012-08-28 15:23:10'),(154,'福彩','2012-08-28 15:23:10'),(155,'福彩3d','2012-08-28 15:23:10'),(156,'totutu.com','2012-08-28 15:23:10'),(157,'去黑头','2012-08-28 15:23:10'),(158,'东方软峰','2012-08-28 15:23:10'),(159,'yileee.com','2012-08-28 15:23:10'),(160,'新特药','2012-08-28 15:23:10'),(161,'fgt120.com','2012-08-28 15:23:10'),(162,'99spcar.com','2012-08-28 15:23:10'),(163,'meiti520.com','2012-08-28 15:23:10'),(164,'bbswuhan.com','2012-08-28 15:23:10'),(165,'18611314446','2012-11-08 22:51:12'),(166,'丰韵熟妇','2012-11-08 22:51:12'),(167,'越南妹','2012-11-08 22:51:12'),(168,'maizongzi.com','2012-11-08 22:51:12'),(169,'上门服务','2012-11-08 22:51:12'),(170,'小妹','2012-11-08 22:51:12'),(171,'windyx.com','2012-11-08 22:51:12'),(172,'wlzb518.com','2012-11-08 22:51:12'),(173,'wo-niu.com.cn','2012-11-08 22:51:12'),(174,'ruile.net','2012-11-08 22:51:12'),(175,'bd-seo.net','2012-11-08 22:51:12'),(176,'hbyhdl.com','2012-11-08 22:51:12'),(177,'yilongphoto.com','2012-11-08 22:51:12'),(178,'hege123.com','2012-11-08 22:51:12'),(179,'發票','2012-11-08 22:51:13'),(180,'开票电','2012-11-08 22:51:13'),(181,'开票','2012-11-08 22:51:13'),(182,'发票','2012-11-08 22:51:13'),(183,'代开发票','2012-11-08 22:51:13'),(184,'私募','2012-11-08 22:51:13'),(185,'走私车','2012-11-08 22:51:13'),(186,'资本运作','2012-11-08 22:51:13'),(187,'真人视频','2012-11-08 22:51:13'),(188,'造价通','2012-11-08 22:51:13'),(189,'移民网','2012-11-08 22:51:13'),(190,'药商','2012-11-08 22:51:13'),(191,'亚布力','2012-11-08 22:51:13'),(192,'雅思','2012-11-08 22:51:13'),(193,'新皇宝','2012-11-08 22:51:13'),(194,'校花聊天室','2012-11-08 22:51:13'),(195,'消费投资合法','2012-11-08 22:51:13'),(196,'西安卖肾','2012-11-08 22:51:13'),(197,'同城女','2012-11-08 22:51:13'),(198,'丝袜交友','2012-11-08 22:51:13'),(199,'兼职服务','2012-11-08 22:51:13'),(200,'草榴社区','2012-11-08 22:51:13'),(201,'搬家公司','2012-11-08 22:51:13'),(202,'代開','2012-11-08 22:51:13'),(203,'代开','2012-11-08 22:51:13'),(204,'醱票','2012-11-08 22:51:13'),(205,'開瞟','2012-11-08 22:51:13'),(206,'瞟据','2012-11-08 22:51:13'),(207,'瞟务','2012-11-08 22:51:13'),(208,'酒店住宿','2012-11-08 22:51:13'),(209,'13826544598','2012-11-08 22:51:13'),(210,'2645989872','2012-11-08 22:51:13'),(211,'18312006833','2012-11-08 22:51:13'),(212,'费发','2012-11-08 22:51:13'),(213,'314721888','2012-11-08 22:51:13'),(214,'办理假证件','2012-11-08 22:51:13'),(215,'394057341','2012-11-08 22:51:13'),(216,'费發','2012-11-08 22:51:13'),(217,'13533391062','2012-11-08 22:51:13'),(218,'13544261868','2012-11-08 22:51:13'),(219,'13828442144','2012-11-08 22:51:13'),(220,'13728999976','2012-11-08 22:51:13'),(221,'13662622538','2012-11-08 22:51:13'),(222,'897839088','2012-11-08 22:51:13'),(223,'vpswolf.com','2012-11-08 22:51:13'),(224,'vanshen.com','2012-11-08 22:51:13'),(225,'yapai.cc','2012-11-08 22:51:13'),(226,'daqiaogw.com','2012-11-08 22:51:13'),(227,'hfkszdm.com','2012-11-08 22:51:13'),(228,'jinqiaohc.com','2012-11-08 22:51:13'),(229,'0553rl.com','2012-11-08 22:51:13'),(230,'ln580.cn','2012-11-08 22:51:13'),(231,'qifanweb.com','2012-11-08 22:51:13'),(232,'qifanseo.com','2012-11-08 22:51:13'),(233,'qifanit.com','2012-11-08 22:51:13'),(234,'028zfyy.com','2012-11-08 22:51:13'),(235,'aitecentury.com','2012-11-08 22:51:13'),(236,'aite55.com','2012-11-08 22:51:13'),(237,'shentongkang.com','2012-11-08 22:51:13'),(238,'dss.so','2012-11-08 22:51:13'),(239,'3ja.net','2012-11-08 22:51:13'),(240,'sin55.com','2012-11-08 22:51:13'),(241,'2008ns.com','2012-11-08 22:51:13'),(242,'203529769','2012-11-08 22:51:13'),(243,'binhaijincheng.com','2012-11-08 22:51:13'),(244,'美女服务','2012-11-08 22:51:13'),(245,'18611325651','2012-11-08 22:51:13'),(246,'caihua.cc','2012-11-08 22:51:13'),(247,'51mm.com.cn','2012-11-08 22:51:13'),(248,'tbwtmall.net','2012-11-08 22:51:13'),(249,'lubaolin.com','2012-11-08 22:51:13'),(250,'糖尿病治疗仪','2012-11-08 22:51:13'),(251,'tangniaobingok.com','2012-11-08 22:51:13'),(252,'糖尿病','2012-11-08 22:51:13'),(253,'chtip.org','2012-11-08 22:51:13'),(254,'56156.com','2012-11-08 22:51:13'),(255,'07uuu.com','2012-11-08 22:51:13'),(256,'haoyouren.com','2012-11-08 22:51:13'),(257,'便秘','2012-11-08 22:51:13'),(258,'haoyouren','2012-11-08 22:51:13'),(259,'xxcun.com','2012-11-08 22:51:13'),(260,'iisp.com','2012-11-08 22:51:13'),(261,'gmwhy.com','2012-11-08 22:51:13'),(262,'feelyz.com','2012-11-08 22:51:13'),(263,'369in.com','2012-11-08 22:51:13'),(264,'cdtarena.com','2012-11-08 22:51:13'),(265,'肝硬化','2012-11-08 22:51:13'),(266,'youbian.com','2012-11-08 22:51:13'),(267,'162net.com','2012-11-08 22:51:13'),(268,'comnetcnn.com','2012-11-08 22:51:13'),(269,'2233.cn','2012-11-08 22:51:13'),(270,'鸡巴','2012-11-08 22:51:13'),(271,'119tx.com','2012-11-08 22:51:13'),(272,'0377521.com','2012-11-08 22:51:13'),(273,'028zuanji.com','2013-07-27 14:54:52'),(274,'dzwan.net','2013-07-27 14:54:52'),(275,'dodomo.net','2013-07-27 14:54:52'),(276,'sina.com','2013-07-27 14:54:52'),(277,'fobshanghai.com','2013-07-27 14:54:52'),(278,'芬恩','2013-07-27 14:54:52'),(279,'2659477099','2013-07-27 14:54:52'),(280,'58692026','2013-07-27 14:54:52'),(281,'65111117','2013-07-27 14:54:52'),(282,'英文SEO','2013-07-27 14:54:52'),(283,'仿牌SEO','2013-07-27 14:54:52'),(284,'外贸SEO','2013-07-27 14:54:52'),(285,'1550957342','2013-07-27 14:54:52'),(286,'pingan.com','2013-07-27 14:54:52'),(287,'痔疮','2013-07-27 14:54:52'),(288,'86889299','2013-07-27 14:54:52'),(289,'800002356','2013-07-27 14:54:52'),(290,'cqddgc.cn','2013-07-27 14:54:52'),(291,'股票','2013-07-27 14:54:52'),(292,'nyimei.com','2013-07-27 14:54:52'),(293,'天衣坊','2013-07-27 14:54:52'),(294,'宏天景秀','2013-07-27 14:54:52'),(295,'sugon.com','2013-07-27 14:54:52'),(296,'微博008','2013-07-27 14:54:52'),(297,'qqbct.com','2013-07-27 14:54:52'),(298,'qqsuncity.com','2013-07-27 14:54:52'),(299,'99txzq.com','2013-07-27 14:54:52'),(300,'88txzq.com','2013-07-27 14:54:52'),(301,'sdebh.cn','2013-07-27 14:54:52'),(302,'9501317248463','2013-07-27 14:54:52'),(303,'248463','2013-07-27 14:54:52'),(304,'飞机票','2013-07-27 14:54:52'),(305,'网银','2013-07-27 14:54:52'),(306,'火车票','2013-07-27 14:54:52'),(307,'无卡存款','2013-07-27 14:54:52'),(308,'66667959','2013-07-27 14:54:52'),(309,'订票','2013-07-27 14:54:52'),(310,'火车站','2013-07-27 14:54:52'),(311,'57071215','2013-07-27 14:54:52'),(312,'889584017','2013-07-27 14:54:52'),(313,'获奖查询','2013-07-27 14:54:52'),(314,'穫獎查詢','2013-07-27 14:54:52'),(315,'82425','2013-07-27 14:54:52'),(316,'5782','2013-07-27 14:54:52'),(317,'中獎','2013-07-27 14:54:52'),(318,'熱線','2013-07-27 14:54:52'),(319,'1931033','2013-07-27 14:54:52'),(320,'代售点','2013-07-27 14:54:52'),(321,'w1a2.icoc.cc','2013-07-27 14:54:52'),(322,'1317241334','2013-07-27 14:54:52'),(323,'车票改签','2013-07-27 14:54:52'),(324,'嘿咻','2013-07-27 14:54:52'),(325,'加盟','2013-07-27 14:54:52'),(326,'湿疹','2013-07-27 14:54:52'),(327,'塑胶','2013-07-27 14:54:52'),(328,'1817001212','2013-07-27 14:54:52'),(329,'4000318885','2013-07-27 14:54:52'),(330,'800007699','2013-07-27 14:54:52'),(331,'4008521119','2013-07-27 14:54:52'),(332,'花月婷','2013-07-27 14:54:52'),(333,'xpjin.com','2013-07-27 14:54:52'),(334,'新葡京娱乐城','2013-07-27 14:54:52'),(335,'eshibo68.com','2013-07-27 14:54:52'),(336,'tt5201314.com','2013-07-27 14:54:52'),(337,'TT娱乐城','2013-07-27 14:54:52'),(338,'娱乐城','2013-07-27 14:54:52'),(339,'qinzi5.com','2013-07-27 14:54:52'),(340,'21202','2013-07-27 14:54:52'),(341,'火車票','2013-07-27 14:54:52'),(342,'089','2013-07-27 14:54:52'),(343,'8369','2013-07-27 14:54:52'),(344,'退票','2013-07-27 14:54:52'),(345,'改簽','2013-07-27 14:54:52'),(346,'預訂','2013-07-27 14:54:52'),(347,'ruijintc.com','2013-07-27 14:54:52'),(348,'ruijintc.net','2013-07-27 14:54:52'),(349,'草榴','2013-07-27 14:54:52'),(350,'caoliu','2013-07-27 14:54:52'),(351,'5177game.com','2013-07-27 14:54:52'),(352,'cao','2013-07-27 14:54:52'),(353,'wgb320330.com','2013-07-27 14:54:52'),(354,'公關','2013-07-27 14:54:52'),(355,'公关','2013-07-27 14:54:52'),(356,'夜总会','2013-07-27 14:54:52'),(357,'兼职','2013-07-27 14:54:52'),(358,'同性恋','2013-07-27 14:54:52'),(359,'丝足','2013-07-27 14:54:52'),(360,'同志','2013-07-27 14:54:52'),(361,'女王','2013-07-27 14:54:52'),(362,'鸭子','2013-07-27 14:54:52'),(363,'调教','2013-07-27 14:54:52'),(364,'KTV','2013-07-27 14:54:52'),(365,'夜场','2013-07-27 14:54:52'),(366,'娱乐场','2013-07-27 14:54:52'),(367,'陪护','2013-07-27 14:54:52'),(368,'情感陪护','2013-07-27 14:54:52'),(369,'公主','2013-07-27 14:54:52'),(370,'LES','2013-07-27 14:54:52'),(371,'GAY','2013-07-27 14:54:52'),(372,'兼職','2013-07-27 14:54:52'),(373,'18611102232','2013-07-27 14:54:52'),(374,'男妓','2013-07-27 14:54:52'),(375,'妓男','2013-07-27 14:54:52'),(376,'女妓','2013-07-27 14:54:52'),(377,'cs12388.com','2013-07-27 14:54:52'),(378,'liketuan.com','2013-07-27 14:54:52'),(379,'xiunvfang.com','2013-07-27 14:54:52'),(380,'tmall.com','2013-07-27 14:54:52'),(381,'rekuai.com','2013-07-27 14:54:52'),(382,'gyouz.com','2013-07-27 14:54:52'),(383,'u95.cc','2013-07-27 14:54:52'),(384,'ikphp.com','2013-07-27 14:54:52'),(385,'12ik.com','2013-07-27 14:54:52'),(386,'7lo.cn','2013-07-27 14:54:52'),(387,'hufuin.com','2013-07-27 14:54:52'),(388,'fa66.com','2013-07-27 14:54:52'),(389,'itcpa.cn','2013-07-27 14:54:52'),(390,'72jz.com','2013-07-27 14:54:52'),(391,'网赚','2013-07-27 14:54:52'),(392,'ikphp','2013-07-27 14:54:52'),(393,'12ik','2013-07-27 14:54:52'),(394,'weadge.com','2013-07-27 14:54:52'),(395,'mfkds.com','2013-07-27 14:54:52'),(396,'svs123.com','2013-07-27 14:54:52'),(397,'dlnmd.com','2013-07-27 14:54:52'),(398,'nicenic.com','2013-07-27 14:54:52'),(399,'13311372110','2013-07-27 14:54:52'),(400,'58464602','2013-07-27 14:54:52'),(401,'bf3.cn','2014-04-16 23:19:33'),(402,'你妹啊','2014-04-16 23:19:33'),(403,'33md.co','2014-04-16 23:19:33'),(404,'梅毒','2014-04-16 23:19:33'),(405,'你妈','2014-04-16 23:19:33'),(406,'hywww.net','2014-04-16 23:19:33'),(407,'2015230140','2014-04-16 23:19:33'),(408,'淋病','2014-04-16 23:19:33'),(409,'非淋病','2014-04-16 23:19:33'),(410,'damazha.com','2014-04-16 23:19:33'),(411,'mitang.pw','2014-04-16 23:19:33'),(412,'六合彩','2014-04-16 23:19:33'),(413,'赛马','2014-04-16 23:19:33'),(414,'三陪','2014-04-16 23:19:33'),(415,'51shuaige.com','2014-04-16 23:19:33'),(416,'369tong.com','2014-04-16 23:19:33'),(417,'holde.cn','2014-04-16 23:19:33'),(418,'18xi.com','2014-04-16 23:19:33'),(419,'信息代发','2014-04-16 23:19:33'),(420,'推广软件','2014-04-16 23:19:33'),(421,'营销软件','2014-04-16 23:19:33'),(422,'网络推广','2014-04-16 23:19:33'),(423,'营销人','2014-04-16 23:19:33'),(424,'91renren.com','2014-04-16 23:19:33'),(425,'kukud.net','2014-04-16 23:19:33'),(426,'chuntu.cc','2014-04-16 23:19:33'),(427,'jinhusns.com','2014-04-16 23:19:33'),(428,'鼻炎','2014-04-16 23:19:33'),(429,'医院','2014-04-16 23:19:33'),(430,'153075777','2014-04-16 23:19:33'),(431,'hqbsns.com','2014-04-16 23:19:33'),(432,'jjyulecheng77g.com','2014-04-16 23:19:33'),(433,'senlang.net','2014-04-16 23:19:33'),(434,'xiyingmenyulecheng8a.com','2014-04-16 23:19:33'),(435,'osforce.cn','2014-04-16 23:19:33'),(436,'51neixun.com','2014-04-16 23:19:33'),(437,'你妈逼','2014-04-16 23:19:33'),(438,'杀人','2014-04-16 23:19:33'),(439,'操你妈','2014-04-16 23:19:33'),(440,'草泥马','2014-04-16 23:19:33'),(441,'税票','2014-04-16 23:19:33'),(442,'wanlidq.com','2014-04-16 23:19:33'),(443,'醫院','2014-04-16 23:19:33'),(444,'mrdodo.net','2014-04-16 23:19:33'),(445,'188123581','2014-04-16 23:19:33'),(446,'zhengma.com','2014-04-16 23:19:33'),(447,'4008166005','2015-02-03 17:44:15'),(448,'400','2015-02-03 17:44:15'),(449,'800','2015-02-03 17:44:15'),(450,'化妆','2015-02-03 17:44:15'),(451,'陈派','2015-02-03 17:44:15'),(452,'税务','2015-02-03 17:44:15'),(453,'整形','2015-02-03 17:44:15'),(454,'美容','2015-02-03 17:44:15'),(455,'隆胸','2015-02-03 17:44:15'),(456,'jinyuanbao.cn','2015-02-03 17:44:15'),(457,'xkqmj.org','2015-02-03 17:44:15'),(458,'baishiheyuan.com','2015-02-03 17:44:15'),(459,'057160989861','2015-02-03 17:44:15'),(460,'hiici.com','2015-02-03 17:44:15'),(461,'518202.com','2015-02-03 17:44:15'),(462,'微店','2015-02-03 17:44:15'),(463,'60989861','2015-02-03 17:44:15'),(464,'1433607382','2015-02-03 17:44:15'),(465,'18921182443','2015-02-03 17:44:15'),(466,'82835166','2015-02-03 17:44:15'),(467,'官方推荐','2015-02-03 17:44:15'),(468,'百度认证','2015-02-03 17:44:15'),(469,'sh419x.net','2015-02-03 17:44:15'),(470,'hhy021.com','2015-02-03 17:44:15'),(471,'ehuanka.com','2015-02-03 17:44:15'),(472,'柘荣太子参','2015-02-03 17:44:15'),(473,'buluocc.com','2015-02-03 17:44:15'),(474,'buluocc','2015-02-03 17:44:15'),(475,'szprovence.com','2015-02-03 17:44:15'),(476,'上海龙凤','2015-02-03 17:44:15'),(477,'shlf9.net','2015-02-03 17:44:15'),(478,'shlf9.com','2015-02-03 17:44:15'),(479,'shlf99.net','2015-02-03 17:44:15'),(480,'shlf99.com','2015-02-03 17:44:15'),(481,'shlf999.net','2015-02-03 17:44:15'),(482,'shlf999.com','2015-02-03 17:44:15'),(483,'aishiso.com','2015-02-03 17:44:15'),(484,'qhf021.com','2015-02-03 17:44:15'),(485,'cfg021.com','2015-02-03 17:44:15'),(486,'uoko.com','2015-02-03 17:44:15'),(487,'guizubbx.com','2015-02-03 17:44:15'),(488,'esosn.com','2015-02-03 17:44:15'),(489,'win7zhijia.cn','2015-02-03 17:44:15'),(490,'xtcheng.net','2015-02-03 17:44:15'),(491,'867590759','2015-02-03 17:44:15'),(492,'888xitong.com','2015-02-03 17:44:15'),(493,'1378206455','2015-02-03 17:44:15'),(494,'宜人贷','2015-02-03 17:44:15'),(495,'win7qjb.com','2015-02-03 17:44:15'),(496,'xitongcheng','2015-02-03 17:44:15'),(497,'onerare.com','2015-02-03 17:44:15'),(498,'xitong1.com','2015-02-03 17:44:15'),(499,'ghostxpsp3.net','2015-02-03 17:44:15'),(500,'windows114.com','2015-02-03 17:44:15'),(501,'djie.net','2015-02-03 17:44:15'),(502,'999ghost.com','2015-02-03 17:44:15'),(503,'xitongcity.com','2015-02-03 17:44:15'),(504,'51rgb.com','2015-02-03 17:44:15'),(505,'mingtaov.com','2015-02-03 17:44:15'),(506,'228224.com','2015-02-03 17:44:15'),(507,'hb7526.com','2015-02-03 17:44:15'),(508,'jx8091.com','2015-02-03 17:44:15'),(509,'drf8953.com','2015-02-03 17:44:15'),(510,'xpjgj9186.com','2015-02-03 17:44:15'),(511,'hjjb9981.com','2015-02-03 17:44:15'),(512,'dwj5266.com','2015-02-03 17:44:15'),(513,'xq81365.com','2015-02-03 17:44:15'),(514,'nc2787.com','2015-02-03 17:44:15'),(515,'wfgj7656.com','2015-02-03 17:44:15'),(516,'seowhy.com','2015-02-03 17:44:15'),(517,'ceo2351.com','2015-02-03 17:44:15'),(518,'fc5517.com','2015-02-03 17:44:15'),(519,'bg6261.com','2015-02-03 17:44:15'),(520,'fbgj8620.com','2015-02-03 17:44:15'),(521,'ylgj2523.com','2015-02-03 17:44:15');
/*!40000 ALTER TABLE `ts_anti_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_article`
--

DROP TABLE IF EXISTS `ts_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_article` (
  `articleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `locationid` int(11) NOT NULL DEFAULT '0' COMMENT '同城ID',
  `cateid` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` char(64) NOT NULL DEFAULT '' COMMENT '标题',
  `content` longtext NOT NULL COMMENT '内容',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '路径',
  `photo` char(32) NOT NULL DEFAULT '' COMMENT '图片路径',
  `isaudit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否审核',
  `isrecommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `count_comment` int(11) NOT NULL DEFAULT '0' COMMENT '统计评论数',
  `count_recommend` int(11) NOT NULL DEFAULT '0' COMMENT '统计推荐次数',
  `count_view` int(11) NOT NULL DEFAULT '0' COMMENT '统计查看',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  PRIMARY KEY (`articleid`),
  UNIQUE KEY `title_2` (`title`),
  KEY `addtime` (`addtime`),
  KEY `cateid` (`cateid`),
  KEY `isrecommend` (`isrecommend`),
  KEY `count_recommend` (`count_recommend`,`addtime`),
  KEY `title` (`title`),
  KEY `count_view` (`count_view`),
  KEY `count_view_2` (`count_view`,`addtime`),
  KEY `locationid` (`locationid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_article`
--

LOCK TABLES `ts_article` WRITE;
/*!40000 ALTER TABLE `ts_article` DISABLE KEYS */;
INSERT INTO `ts_article` VALUES (4,1,1,3,'告诉对方告诉对方公司的风格的师傅告诉对方','\n&lt;p class=\"f_center\" style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-align: center; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;&lt;img src=\"/ueditor/php/upload/image/20150203/1422956776409188.jpg\" style=\"vertical-align: top; border: 0px;\"&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;酷品试用第二期上线啦！本期试用的产品是知趣网推出的&lt;strong&gt;Calm车载空气净化器&lt;/strong&gt;。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;本次公测活动由网易科技智能硬件频道和雷锋网合作举办。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;&lt;strong&gt;报名时间：&lt;/strong&gt;2015年2月3日-2月7日（因快递10日停止服务，想要试用的朋友还请提早报名）&lt;br&gt;&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;&lt;strong&gt;试用流程：&lt;/strong&gt;按要求完整填写报名表&rarr;通过审核&rarr;查看公测名单&rarr;交押金&rarr;收货评测&rarr;投递评测稿件&rarr;稿件被选用&rarr;退还押金不需寄回产品（如稿件未被选用&rarr;寄回产品&rarr;退还押金）。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;&lt;strong&gt;急性子：&lt;a href=\"http://tech.163.com/special/kupinbm2/\" style=\"color: rgb(15, 107, 153);\" target=\"_blank\"&gt;【直达报名页面】&lt;/a&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;Calm车载空气净化器小巧便携，可以应用于车载和小型房间（10平方米内）环境。&lt;/p&gt;&lt;p class=\"f_center\" style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-align: center; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;&lt;img src=\"/ueditor/php/upload/image/20150203/1422956776915538.png\" style=\"vertical-align: top; border: 0px;\"&gt;&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;内部材料方面，Calm内置小型臭氧机，其滤芯总共三层，第一层是一个PET织物网，用于过滤大颗粒和毛发等；第二层是一个H11级别的HEPA网；第三层是椰壳活性炭填充物。官方称，Calm一次15分钟左右的活氧杀菌处理，利用O3的强氧化性杀灭车内的微生物。而活氧杀菌之后，Calm会回复到空气净化状态，利用滤网去除残余的臭氧。&lt;/p&gt;&lt;p class=\"f_center\" style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-align: center; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;&lt;img src=\"/ueditor/php/upload/image/20150203/1422956776680463.png\" style=\"vertical-align: top; border: 0px;\"&gt;&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;另外，Calm空净采用后向离心风机，配合具有设计专利的风道，在最大功率工作时噪音控制在45db之内。&lt;/p&gt;&lt;p class=\"f_center\" style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-align: center; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;&lt;img src=\"/ueditor/php/upload/image/20150203/1422956776631178.jpg\" style=\"vertical-align: top; border: 0px;\"&gt;&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;智能特性方面，Calm配备有相应的手机客户端，在手机客户端勾选车载模式之后，将不再需要对它做任何操控。官方称，车载模式下的Calm，可智能感知车主接近，只要感知到车主走近汽车，Calm提前启动净化；Calm同样也可以智能感知车主停车离开，自动进入待机状态节省电量；在行车过程中，Calm会根据车内空气水平自动输出合适的净化功率。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;安全性方面，官方称，在停车怠速或者在车内吸烟时，车内最大的空气危害是发动机不完全燃烧产生的一氧化碳，以及烟气一氧化碳污染。Calm带有CO传感器，在一氧化碳浓度影响车内人体健康之前急促报警，提示用户通风或者离车。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;续航方面，Calm中内置的是5000毫安时的锂聚合物防爆电池。官方称，考虑到汽车有可能经历暴晒，Calm的电池会在温度达到70摄氏度时自动断开IC电路。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;以上这些功能等待报名的达人们来评测！&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;&lt;strong&gt;注意事项：&lt;/strong&gt;&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;1.此次评测产品属稍贵重物品（Calm在知趣网预约价格为999元，正式开卖价格是1680元），被选中参加此次评测的朋友需要交纳押金999元，评测后有专门人员处理返还，请知悉。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;2.Calm的活氧杀菌功能是不能从机器上启动的，必须使用手机App启动，而且必须输入启动密码，防范儿童误操作。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;3.我们推荐的Calm车载智能空气净化器安装方式是，用前风挡吸盘和我们附赠的防滑垫将Calm固定在驾驶台上，保持稳定性。&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n','','',0,0,0,0,2,'2015-02-03 17:46:23'),(3,2,1,3,'阿里巴巴在美国遭集体诉讼 被指隐瞒监管信息','\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p class=\"__BAIDUNEWS__text\" style=\"margin-bottom: 26px; padding: 0px; line-height: 26px; border: 0px; font-size: 14px; text-indent: 28px; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"&gt;新浪科技讯 北京时间2月2日午间消息，据彭博社报道。阿里巴巴(NYSE:BABA)在美遭到集体诉讼，被指控发布误导性声明并隐瞒受到监管调查的情况。&lt;/p&gt;&lt;p class=\"__BAIDUNEWS__text\" style=\"margin-bottom: 26px; padding: 0px; line-height: 26px; border: 0px; font-size: 14px; text-indent: 28px; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"&gt;美国律所Robbins Geller Rudman &amp;amp; Dowd LLP上周五宣布以涉嫌违犯证券法为由将阿里巴巴及其部分高管告上纽约联邦法院。&lt;/p&gt;&lt;p class=\"__BAIDUNEWS__text\" style=\"margin-bottom: 26px; padding: 0px; line-height: 26px; border: 0px; font-size: 14px; text-indent: 28px; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"&gt;据这家律所提供的起诉书复印件，起诉阿里巴巴的理由为，在距该公司上市仅剩两个月的2014年7月，阿里巴巴高管曾与中国国家工商总局会面，后者对该公司可能存在非法商业行为表示出顾虑，而阿里巴巴未曾披露这一事项。&lt;/p&gt;&lt;p class=\"__BAIDUNEWS__text\" style=\"margin-bottom: 26px; padding: 0px; line-height: 26px; border: 0px; font-size: 14px; text-indent: 28px; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"&gt;该律所称，阿里巴巴旗下网络平台上的非法活动包括平台零售商&ldquo;大量销售假货&rdquo;，例如假烟、假酒、仿冒品牌箱包以及禁售武器等。起诉书中还写道，阿里巴巴员工收受商户贿赂，帮助后者提高搜索排名和获得广告空间。&lt;/p&gt;&lt;p class=\"__BAIDUNEWS__text\" style=\"margin-bottom: 26px; padding: 0px; line-height: 26px; border: 0px; font-size: 14px; text-indent: 28px; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"&gt;阿里巴巴发言人向彭博社回应称：&ldquo;阿里巴巴认为诉讼中指控的罪名缺乏法律依据，公司将积极抗辩。&rdquo;(李林)&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n','0/0','0/0/3.jpg',0,0,0,0,0,'2015-02-03 17:40:25'),(5,1,1,3,'的施工费收入都给我二哥顺荣股份v','\n&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;开阔的空白市场加上资本的热捧，无人机产业成为名符其实的&ldquo;风口飞猪&rdquo;。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;&ldquo;键鼠第一股&rdquo;雷柏科技1月21日携手零度智控发布首款消费级&ldquo;无人机&rdquo;。雷柏科技董事长曾浩对《每日经济新闻》记者表示，鼠标键盘主业市场已很难取得重大发展，公司尝试把所有优势发挥到一个未来行业。无人机具有较高的毛利率以及变现能力强的特点，随着应用场景越来越广泛，无人机将是雷柏未来重点业务。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;零度智控总经理杨建军表示，无人机销售国内和海外市场比例大概在2：8甚至1:9，欧美仍旧是最重要的销售市场，国内市场处在风口起飞的临界点。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;&lt;strong&gt;无人机市场开始爆发&lt;/strong&gt;&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;以无线鼠标、键盘起家，雷柏以隐形冠军的身份于2011年4月登陆A股，但鼠标行业已面临明显衰退迹象。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;2014年前三季度，雷柏科技归属股东净利润为6522万元，其中乐汇天下贡献6154万元，公司传统的PC周边产品，加上新业务电视盒子、机器人系统集成等，总共贡献利润仅368万元，公司开始谋求改变。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;2013年12月，公司5.88亿元收购乐汇天下70%股权，涉足手游业务；2014年成立机器人业务线，向新业务领域拓展。根据公告，雷柏与零度出资3000万在深圳前海成立控股子公司，业务方向为研发、生产、销售个人消费领域内应用的小型无人机及周边产品。双方按照出资比列分别占60%和40%的股权。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;曾浩表示，从今年3月份开始，无人机消费级产品每月预计出货一万台。同时将兼顾无人机行业市场，两条腿走路。&ldquo;相比消费级市场，无人机行业市场更追求安全、稳定，对价格不敏感。一套成本几千元的无人机，售价能够达到6万甚至更高，更能体现技术价值。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;目前我国约有150多家民用无人机生产单位，初步估计已生产15000余架无人机。涉足无人机业务的上市公司包括洪都航空、山东矿机、山河智能等15家公司。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;在拉斯维加斯刚刚结束的2015CES展会上，芯片巨头高通和英特尔推出搭载无人机产品应用的基带和芯片，杨建军认为，随着更多巨头加入产品供应链，无人机产品有了出货量爆发的基础。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;&lt;strong&gt;消费级市场蛋糕大&lt;/strong&gt;&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;与大疆创新相比，作为无人智能系统开发商、小型无人机应用和娱乐领域的系统集成商的零度智控还没有被业内熟知。据杨建军介绍，2010年零度开发的固定翼飞控无人机雨燕，在2010年玉树地震期间拍摄出第一张震区航空摄影图，被国家地震局向时任总理的温家宝汇报时采用。目前无人机在行业市场应用领域主要有影视航拍、空中测绘、地质勘探，其他领域有医疗救援、低空物流、安防监控等行业。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;&ldquo;在行业市场应用上，影视和测绘已经相当成熟，各无人机厂商有一定的市场份额。&rdquo;杨建军表示，随着技术更新和新厂商的加入，无人机市场会更加细分。&ldquo;比如，农业市场未来将是增长最快的市场，一是空间适用，二是需求正在启动。农业市场的无人机，需要按照政府、行业企业、用户各方面标准和需求来制定。&rdquo;&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;捧红无人机的另外一个角色是电商。亚马逊创始人贝索斯去年12月宣布了利用无人机展开递送服务的计划，并表示如联邦航空局条规允许，亚马逊将在2015年推出这项服务；2013年7、8月份，国内快递企业顺丰已在深圳、东莞等城市内测试无人机配送服务。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;杨建军表示，&ldquo;无人机在点对点的物流配送上，技术上已经完全可以实现。但是要对接到复杂的物流系统至少还需要2年时间，目前各家都在做切入尝试。零度的载重无人机正在与国内几家大型电商探索从中转站到中转站的配送尝试，由于航空监管的限制，亚马逊提出的直接入户的配送，复杂度更高，需要更久的探索。&rdquo;&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;此次和雷柏合作，是零度首次推出消费级无人机产品。相比行业市场追求安全、稳定，杨建军表示，消费者更追求体验。精致、便宜、安全，还有&ldquo;现在就要&rdquo;。从产品设计和销售服务上，都是全新的。目前无人机产品销售国内和海外市场比例大概在2：8甚至1:9，欧美仍旧是最重要的销售市场。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;&ldquo;国内市场处在风口起飞的临界点，预测消费级市场将来是一块很大的蛋糕。&rdquo;&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;他分析，因为涉及到专业操控和技术维修，无人机在国内销售渠道主要是传统的模型店。但随着消费级市场出货量增大，售后服务的完善以及&ldquo;到手即飞&rdquo;的操控体验日益成熟，未来类似手机等数码产品渠道将对无人机开放。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;&lt;strong&gt;低空监管仍是悬剑&lt;/strong&gt;&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;近日有媒体报道，一架小四轴飞行器日前在美国白宫范围内坠毁，引起保安人员恐慌。事件中的无人机正是深圳大疆创新的产品，该事件也引起业内对无人机航空管制的讨论。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;在国内，由民航局首批《民用无人驾驶航空系统驾驶员训练机构合格证》已经在8月份颁发，首批获得牌照的有三家企业，包括山河智能参股的湖南山河科技股份有限公司、湖北易瓦特科技有限公司、河南安阳全丰航空植保科技有限公司。上述证书的获得表明相关企业可以开展无人机驾驶方面的培训业务。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;知情人士表示，无人机培训班为期半个月，内容大致分为&ldquo;理论培训&rdquo;和&ldquo;实践培训&rdquo;两大部分，主要教授无人机原理、法规、空域规范、操作理论以及产品维护等知识，同时也会进行无人机的各种试飞操作训练。考试合格者将颁发中国民航局下属AOPA协会 （中国航空器拥有者及驾驶员协会）颁发的AOPA民用无人驾驶航空器系统驾驶员结业证书及民用无人驾驶航空器系统驾驶员合格证。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;根据2013年出台的《民用无人驾驶航空器系统驾驶员管理暂行规定》,重量小于等于7公斤的微型无人机,飞行范围在目视视距内半径500米、相对高度低于120米范围内,无须证照。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;&lt;span style=\"text-indent: 2em;\"&gt;杨建军对记者表示，虽然不能最终控制消费者如何使用产品，但它们已经加入了一些预防措施。比如，使用全球定位系统规定用户飞行高度不超过法定高度。此外，还根据各地立法，对该地区销售的无人机限定飞行高度。&lt;/span&gt;&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;&ldquo;消费级无人机会越来越小型化和智能化，现在小型无人机重量约在1.2公斤，下一步消费级无人机重量可能将减小到500克，高通在CES推出无人机应用双目识别系统，智能机测距会更加精准，减少碰撞事件的出现。&rdquo;杨建军称。&lt;/p&gt;&lt;p style=\"padding: 0px; margin-top: 26px; margin-bottom: 26px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; white-space: normal;\"&gt;曾浩表示，&ldquo;新生事物需要一个接受过程，需要时间让立法机关思考监管。目前小型的无人机已经设定了禁飞区，不会在机场以及人口集中的地域飞行，我认为政府会疏导，出台一些限制，但是不会禁止。&rdquo;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n','0/0','0/0/5.jpg',0,0,1,0,6,'2015-02-03 17:48:13');
/*!40000 ALTER TABLE `ts_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_article_cate`
--

DROP TABLE IF EXISTS `ts_article_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_article_cate` (
  `cateid` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `catename` char(16) NOT NULL DEFAULT '' COMMENT '分类名称',
  `orderid` int(11) NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`cateid`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_article_cate`
--

LOCK TABLES `ts_article_cate` WRITE;
/*!40000 ALTER TABLE `ts_article_cate` DISABLE KEYS */;
INSERT INTO `ts_article_cate` VALUES (3,'新闻',0),(4,'体育',0),(7,'娱乐',0),(8,'财经',0),(9,'视频',0),(10,'女人',0),(11,'科技',0),(12,'手机',0),(13,'数码',0),(14,'汽车',0),(15,'旅游',0),(16,'房产',0),(17,'教育',0),(18,'亲子',0);
/*!40000 ALTER TABLE `ts_article_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_article_comment`
--

DROP TABLE IF EXISTS `ts_article_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_article_comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT,
  `articleid` int(11) NOT NULL DEFAULT '0' COMMENT '文章ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `content` text NOT NULL COMMENT '评论内容',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`commentid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='文章评论';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_article_comment`
--

LOCK TABLES `ts_article_comment` WRITE;
/*!40000 ALTER TABLE `ts_article_comment` DISABLE KEYS */;
INSERT INTO `ts_article_comment` VALUES (1,5,1,'\n&lt;p&gt;&lt;img title=\"正在上传...\" class=\"loadingclass\" id=\"loading_i5p6g0eq\" src=\"http://192.168.0.113/plugins/pubs/ueditor/themes/default/images/spacer.gif\"&gt;&lt;/p&gt;\n',1422961325);
/*!40000 ALTER TABLE `ts_article_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_article_options`
--

DROP TABLE IF EXISTS `ts_article_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_article_options` (
  `optionname` char(12) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_article_options`
--

LOCK TABLES `ts_article_options` WRITE;
/*!40000 ALTER TABLE `ts_article_options` DISABLE KEYS */;
INSERT INTO `ts_article_options` VALUES ('appname','新闻'),('appdesc','比比赞新闻频道'),('appkey','比比赞新闻频道'),('allowpost','1'),('isaudit','0');
/*!40000 ALTER TABLE `ts_article_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_article_recommend`
--

DROP TABLE IF EXISTS `ts_article_recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_article_recommend` (
  `articleid` int(11) NOT NULL DEFAULT '0' COMMENT '文章ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  UNIQUE KEY `articleid` (`articleid`,`userid`),
  KEY `articleid_2` (`articleid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章推荐';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_article_recommend`
--

LOCK TABLES `ts_article_recommend` WRITE;
/*!40000 ALTER TABLE `ts_article_recommend` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_article_recommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_attach`
--

DROP TABLE IF EXISTS `ts_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_attach` (
  `attachid` int(11) NOT NULL AUTO_INCREMENT COMMENT '附件ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `locationid` int(11) NOT NULL DEFAULT '0' COMMENT '同城ID',
  `albumid` int(11) NOT NULL DEFAULT '0' COMMENT '资料库ID',
  `attachname` char(64) NOT NULL DEFAULT '' COMMENT '附件名字',
  `attachtype` char(32) NOT NULL DEFAULT '' COMMENT '附件类型',
  `attachurl` char(64) NOT NULL DEFAULT '' COMMENT '附件url',
  `attachsize` char(32) NOT NULL DEFAULT '' COMMENT '附件大小',
  `count_down` int(11) NOT NULL DEFAULT '0' COMMENT '统计下载量',
  `isshow` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示',
  `isaudit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0审核1未审核',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`attachid`),
  KEY `albumid` (`albumid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_attach`
--

LOCK TABLES `ts_attach` WRITE;
/*!40000 ALTER TABLE `ts_attach` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_attach_album`
--

DROP TABLE IF EXISTS `ts_attach_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_attach_album` (
  `albumid` int(11) NOT NULL AUTO_INCREMENT COMMENT '资料库ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `title` char(64) NOT NULL DEFAULT '' COMMENT '资料库名称',
  `content` varchar(2000) NOT NULL DEFAULT '' COMMENT '资料库介绍',
  `count_attach` int(11) NOT NULL DEFAULT '0' COMMENT '统计资料',
  `isaudit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0审核1未审核',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `uptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`albumid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='资料库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_attach_album`
--

LOCK TABLES `ts_attach_album` WRITE;
/*!40000 ALTER TABLE `ts_attach_album` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_attach_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_attach_options`
--

DROP TABLE IF EXISTS `ts_attach_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_attach_options` (
  `optionname` char(12) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_attach_options`
--

LOCK TABLES `ts_attach_options` WRITE;
/*!40000 ALTER TABLE `ts_attach_options` DISABLE KEYS */;
INSERT INTO `ts_attach_options` VALUES ('appname','资料'),('appdesc','资料'),('appkey','资料');
/*!40000 ALTER TABLE `ts_attach_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_cache`
--

DROP TABLE IF EXISTS `ts_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_cache` (
  `cacheid` int(11) NOT NULL AUTO_INCREMENT COMMENT '缓存ID',
  `cachename` char(32) NOT NULL DEFAULT '' COMMENT '缓存名字',
  `cachevalue` text NOT NULL COMMENT '缓存内容',
  PRIMARY KEY (`cacheid`),
  UNIQUE KEY `cachename` (`cachename`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='缓存';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_cache`
--

LOCK TABLES `ts_cache` WRITE;
/*!40000 ALTER TABLE `ts_cache` DISABLE KEYS */;
INSERT INTO `ts_cache` VALUES (1,'pubs_plugins','1424674598a:10:{i:9;s:10:\"floatlayer\";i:19;s:8:\"customer\";i:25;s:5:\"gotop\";i:27;s:2:\"qq\";i:29;s:5:\"weibo\";i:31;s:9:\"footertip\";i:32;s:8:\"leftuser\";i:35;s:4:\"navs\";i:36;s:6:\"douban\";i:37;s:7:\"ueditor\";}'),(2,'home_plugins','1424659064a:8:{i:11;s:9:\"newtopics\";i:19;s:8:\"newgroup\";i:20;s:7:\"article\";i:23;s:5:\"links\";i:25;s:8:\"hottopic\";i:26;s:8:\"newtopic\";i:27;s:3:\"tag\";i:28;s:5:\"weibo\";}'),(3,'system_options','1422981100a:25:{s:10:\"site_title\";s:9:\"赞庆阳\";s:13:\"site_subtitle\";s:24:\"又一个ThinkSAAS社区\";s:8:\"site_key\";s:9:\"thinksaas\";s:9:\"site_desc\";s:9:\"thinksaas\";s:8:\"site_url\";s:21:\"http://192.168.0.113/\";s:8:\"link_url\";s:21:\"http://192.168.0.113/\";s:10:\"site_email\";s:15:\"admin@admin.com\";s:8:\"site_icp\";s:20:\"京ICP备09050100号\";s:6:\"isface\";s:1:\"0\";s:8:\"isinvite\";s:1:\"0\";s:8:\"isverify\";s:1:\"0\";s:6:\"istomy\";s:1:\"0\";s:10:\"isauthcode\";s:1:\"0\";s:6:\"isgzip\";s:1:\"0\";s:12:\"isunattended\";s:1:\"0\";s:13:\"isallowdelete\";s:1:\"0\";s:11:\"isallowedit\";s:1:\"0\";s:8:\"timezone\";s:14:\"Asia/Hong_Kong\";s:10:\"site_theme\";s:6:\"sample\";s:12:\"site_urltype\";s:1:\"2\";s:10:\"photo_size\";s:1:\"2\";s:10:\"photo_type\";s:16:\"jpg,gif,png,jpeg\";s:11:\"attach_size\";s:1:\"2\";s:11:\"attach_type\";s:19:\"zip,rar,doc,txt,ppt\";s:4:\"logo\";s:8:\"logo.gif\";}'),(4,'system_appnav','1423147448a:4:{s:4:\"home\";s:6:\"首页\";s:5:\"group\";s:6:\"赞吧\";s:7:\"article\";s:6:\"新闻\";s:4:\"user\";s:6:\"用户\";}'),(5,'system_anti_word','1422956655s:5582:\"国民党|邓小平|江泽民|胡锦涛|共产党|毛主席|毛泽东|中共|中国共产党|枪|弹药|枪支|氣槍|猎槍|来福|雷鸣登|五连发|平式双管|立式双管|麻醉|军用|进口|录入员|招聘兼职|1332566258|直流电阻测试仪|继电保护测试仪|串联谐振|分压器|www.hbyhdl.com|www.bd-seo.net|武汉网站优化|武汉网络推广|武汉网络营销|武汉SEO|大脚骨矫正器|379056061|拇外翻|小姐|习近平|王立军|两会|薄熙来|谷开来|唱红打黑|听党指挥|薄一波|李长春|周永康|政府|zhenfu|傻逼|zhengfu|他杀|枪杀|谋杀|起义|就义|法轮功|邪教|GCD|hege123|菲律宾|薄熙莱|小姐上门|一夜情|性爱|性息|武汉婚纱摄影|武汉婚纱照|武汉艺术照|武汉婚纱摄影工作室|www.yilongphoto.com|www.windyx.com|www.ruile.net|www.wo-niu.com.cn|www.wlzb518.com|www.wufangzhai-zongzi.com|www.hege123.com|按摩|按摩服务|cwsurf.de|出台|包夜|www.maizongzi.com|代刷|微笑网络|刷信誉|53530.cn|waimaodao.com|小 妹|上 门 服 务|小 妹 上 门|王哥|花姐|学妹|姓ˊ感ˊ少ˊ妇|丰ˊ韵ˊ熟ˊ妇|丽人岛休闲会所|越ˊ南ˊ妹|77057|饥ˊ渴ˊ熟ˊ女|饥渴熟女|性感人妻|姓感少妇|51gouku.com|51够酷|585.cc|腋臭|狐臭|兼职学生妹|湘湘|小唐|学生妹|wufangzhai-zongzi.com|冰毒|海洛因|毒品|吸毒|66dao.com|办证|赵小姐|douyapai.com|ntxz.cc|豆芽派|tdjyedu|自考招生|sinoest|身份證买卖|身份证买卖|895316992|爱游中国|上門服务|客人隐私|suoniao.com|男科医院|男性医院|包皮|包茎|男科|做爱|小妹上门|小妹服务|sm|sm女王|成熟少妇|包吹|极品校花|sinoest.com|尖锐湿疣|耳鼻喉医院|过敏性鼻炎|ibuonline.com|福彩|福彩3d|totutu.com|去黑头|东方软峰|yileee.com|新特药|fgt120.com|99spcar.com|meiti520.com|bbswuhan.com|18611314446|丰韵熟妇|越南妹|maizongzi.com|上门服务|小妹|windyx.com|wlzb518.com|wo-niu.com.cn|ruile.net|bd-seo.net|hbyhdl.com|yilongphoto.com|hege123.com|發票|开票电|开票|发票|代开发票|私募|走私车|资本运作|真人视频|造价通|移民网|药商|亚布力|雅思|新皇宝|校花聊天室|消费投资合法|西安卖肾|同城女|丝袜交友|兼职服务|草榴社区|搬家公司|代開|代开|醱票|開瞟|瞟据|瞟务|酒店住宿|13826544598|2645989872|18312006833|费发|314721888|办理假证件|394057341|费發|13533391062|13544261868|13828442144|13728999976|13662622538|897839088|vpswolf.com|vanshen.com|yapai.cc|daqiaogw.com|hfkszdm.com|jinqiaohc.com|0553rl.com|ln580.cn|qifanweb.com|qifanseo.com|qifanit.com|028zfyy.com|aitecentury.com|aite55.com|shentongkang.com|dss.so|3ja.net|sin55.com|2008ns.com|203529769|binhaijincheng.com|美女服务|18611325651|caihua.cc|51mm.com.cn|tbwtmall.net|lubaolin.com|糖尿病治疗仪|tangniaobingok.com|糖尿病|chtip.org|56156.com|07uuu.com|haoyouren.com|便秘|haoyouren|xxcun.com|iisp.com|gmwhy.com|feelyz.com|369in.com|cdtarena.com|肝硬化|youbian.com|162net.com|comnetcnn.com|2233.cn|鸡巴|119tx.com|0377521.com|028zuanji.com|dzwan.net|dodomo.net|sina.com|fobshanghai.com|芬恩|2659477099|58692026|65111117|英文SEO|仿牌SEO|外贸SEO|1550957342|pingan.com|痔疮|86889299|800002356|cqddgc.cn|股票|nyimei.com|天衣坊|宏天景秀|sugon.com|微博008|qqbct.com|qqsuncity.com|99txzq.com|88txzq.com|sdebh.cn|9501317248463|248463|飞机票|网银|火车票|无卡存款|66667959|订票|火车站|57071215|889584017|获奖查询|穫獎查詢|82425|5782|中獎|熱線|1931033|代售点|w1a2.icoc.cc|1317241334|车票改签|嘿咻|加盟|湿疹|塑胶|1817001212|4000318885|800007699|4008521119|花月婷|xpjin.com|新葡京娱乐城|eshibo68.com|tt5201314.com|TT娱乐城|娱乐城|qinzi5.com|21202|火車票|089|8369|退票|改簽|預訂|ruijintc.com|ruijintc.net|草榴|caoliu|5177game.com|cao|wgb320330.com|公關|公关|夜总会|兼职|同性恋|丝足|同志|女王|鸭子|调教|KTV|夜场|娱乐场|陪护|情感陪护|公主|LES|GAY|兼職|18611102232|男妓|妓男|女妓|cs12388.com|liketuan.com|xiunvfang.com|tmall.com|rekuai.com|gyouz.com|u95.cc|ikphp.com|12ik.com|7lo.cn|hufuin.com|fa66.com|itcpa.cn|72jz.com|网赚|ikphp|12ik|weadge.com|mfkds.com|svs123.com|dlnmd.com|nicenic.com|13311372110|58464602|bf3.cn|你妹啊|33md.co|梅毒|你妈|hywww.net|2015230140|淋病|非淋病|damazha.com|mitang.pw|六合彩|赛马|三陪|51shuaige.com|369tong.com|holde.cn|18xi.com|信息代发|推广软件|营销软件|网络推广|营销人|91renren.com|kukud.net|chuntu.cc|jinhusns.com|鼻炎|医院|153075777|hqbsns.com|jjyulecheng77g.com|senlang.net|xiyingmenyulecheng8a.com|osforce.cn|51neixun.com|你妈逼|杀人|操你妈|草泥马|税票|wanlidq.com|醫院|mrdodo.net|188123581|zhengma.com|4008166005|400|800|化妆|陈派|税务|整形|美容|隆胸|jinyuanbao.cn|xkqmj.org|baishiheyuan.com|057160989861|hiici.com|518202.com|微店|60989861|1433607382|18921182443|82835166|官方推荐|百度认证|sh419x.net|hhy021.com|ehuanka.com|柘荣太子参|buluocc.com|buluocc|szprovence.com|上海龙凤|shlf9.net|shlf9.com|shlf99.net|shlf99.com|shlf999.net|shlf999.com|aishiso.com|qhf021.com|cfg021.com|uoko.com|guizubbx.com|esosn.com|win7zhijia.cn|xtcheng.net|867590759|888xitong.com|1378206455|宜人贷|win7qjb.com|xitongcheng|onerare.com|xitong1.com|ghostxpsp3.net|windows114.com|djie.net|999ghost.com|xitongcity.com|51rgb.com|mingtaov.com|228224.com|hb7526.com|jx8091.com|drf8953.com|xpjgj9186.com|hjjb9981.com|dwj5266.com|xq81365.com|nc2787.com|wfgj7656.com|seowhy.com|ceo2351.com|fc5517.com|bg6261.com|fbgj8620.com|ylgj2523.com\";'),(6,'user_options','1400593143a:6:{s:7:\"appname\";s:6:\"用户\";s:7:\"appdesc\";s:12:\"用户中心\";s:6:\"appkey\";s:6:\"用户\";s:8:\"isenable\";s:1:\"0\";s:7:\"isgroup\";s:0:\"\";s:7:\"banuser\";s:25:\"官方用户|官方团队\";}'),(7,'mail_options','1401554381a:8:{s:7:\"appname\";s:6:\"邮件\";s:7:\"appdesc\";s:15:\"ThinkSAAS邮件\";s:8:\"isenable\";s:1:\"0\";s:8:\"mailhost\";s:18:\"smtp.exmail.qq.com\";s:3:\"ssl\";s:1:\"1\";s:8:\"mailport\";s:3:\"465\";s:8:\"mailuser\";s:23:\"postmaster@thinksaas.cn\";s:7:\"mailpwd\";s:12:\"1231qa2342ws\";}'),(8,'article_options','1422956642a:5:{s:7:\"appname\";s:6:\"新闻\";s:7:\"appdesc\";s:21:\"比比赞新闻频道\";s:6:\"appkey\";s:21:\"比比赞新闻频道\";s:9:\"allowpost\";s:1:\"1\";s:7:\"isaudit\";s:1:\"0\";}'),(9,'attach_options','1400593032a:3:{s:7:\"appname\";s:6:\"资料\";s:7:\"appdesc\";s:6:\"资料\";s:6:\"appkey\";s:6:\"资料\";}'),(10,'feed_options','1400593039a:3:{s:7:\"appname\";s:6:\"动态\";s:7:\"appdesc\";s:6:\"动态\";s:6:\"appkey\";s:6:\"动态\";}'),(11,'group_options','1400593050a:6:{s:7:\"appname\";s:6:\"小组\";s:7:\"appdesc\";s:15:\"ThinkSAAS小组\";s:6:\"appkey\";s:6:\"小组\";s:8:\"iscreate\";s:1:\"0\";s:7:\"isaudit\";s:1:\"0\";s:7:\"joinnum\";s:2:\"20\";}'),(12,'photo_options','1400593102a:3:{s:7:\"appname\";s:6:\"相册\";s:7:\"appdesc\";s:6:\"相册\";s:6:\"appkey\";s:6:\"相册\";}'),(13,'redeem_options','1400593113a:3:{s:7:\"appname\";s:12:\"积分兑换\";s:7:\"appdesc\";s:12:\"积分兑换\";s:6:\"appkey\";s:12:\"积分兑换\";}'),(14,'weibo_options','1400593153a:3:{s:7:\"appname\";s:6:\"唠叨\";s:7:\"appdesc\";s:6:\"唠叨\";s:6:\"appkey\";s:6:\"唠叨\";}'),(15,'plugins_pubs_wordad','1400602928a:4:{i:0;a:2:{s:5:\"title\";s:22:\"ThinkSAAS文字广告1\";s:3:\"url\";s:23:\"http://www.thinksaas.cn\";}i:1;a:2:{s:5:\"title\";s:22:\"ThinkSAAS文字广告2\";s:3:\"url\";s:23:\"http://www.thinksaas.cn\";}i:2;a:2:{s:5:\"title\";s:22:\"ThinkSAAS文字广告3\";s:3:\"url\";s:23:\"http://www.thinksaas.cn\";}i:3;a:2:{s:5:\"title\";s:22:\"ThinkSAAS文字广告4\";s:3:\"url\";s:23:\"http://www.thinksaas.cn\";}}'),(16,'user_role','1400602955a:17:{i:0;a:3:{s:8:\"rolename\";s:6:\"列兵\";s:11:\"score_start\";s:1:\"0\";s:9:\"score_end\";s:4:\"5000\";}i:1;a:3:{s:8:\"rolename\";s:6:\"下士\";s:11:\"score_start\";s:4:\"5000\";s:9:\"score_end\";s:5:\"20000\";}i:2;a:3:{s:8:\"rolename\";s:6:\"中士\";s:11:\"score_start\";s:5:\"20000\";s:9:\"score_end\";s:5:\"40000\";}i:3;a:3:{s:8:\"rolename\";s:6:\"上士\";s:11:\"score_start\";s:5:\"40000\";s:9:\"score_end\";s:5:\"80000\";}i:4;a:3:{s:8:\"rolename\";s:12:\"三级准尉\";s:11:\"score_start\";s:5:\"80000\";s:9:\"score_end\";s:6:\"160000\";}i:5;a:3:{s:8:\"rolename\";s:12:\"二级准尉\";s:11:\"score_start\";s:6:\"160000\";s:9:\"score_end\";s:6:\"320000\";}i:6;a:3:{s:8:\"rolename\";s:12:\"一级准尉\";s:11:\"score_start\";s:6:\"320000\";s:9:\"score_end\";s:6:\"640000\";}i:7;a:3:{s:8:\"rolename\";s:6:\"少尉\";s:11:\"score_start\";s:6:\"640000\";s:9:\"score_end\";s:7:\"1280000\";}i:8;a:3:{s:8:\"rolename\";s:6:\"中尉\";s:11:\"score_start\";s:7:\"1280000\";s:9:\"score_end\";s:7:\"2560000\";}i:9;a:3:{s:8:\"rolename\";s:6:\"上尉\";s:11:\"score_start\";s:7:\"2560000\";s:9:\"score_end\";s:7:\"5120000\";}i:10;a:3:{s:8:\"rolename\";s:6:\"少校\";s:11:\"score_start\";s:7:\"5120000\";s:9:\"score_end\";s:8:\"10240000\";}i:11;a:3:{s:8:\"rolename\";s:6:\"中校\";s:11:\"score_start\";s:8:\"10240000\";s:9:\"score_end\";s:8:\"20480000\";}i:12;a:3:{s:8:\"rolename\";s:6:\"上校\";s:11:\"score_start\";s:8:\"20480000\";s:9:\"score_end\";s:8:\"40960000\";}i:13;a:3:{s:8:\"rolename\";s:6:\"准将\";s:11:\"score_start\";s:8:\"40960000\";s:9:\"score_end\";s:8:\"81920000\";}i:14;a:3:{s:8:\"rolename\";s:6:\"少将\";s:11:\"score_start\";s:8:\"81920000\";s:9:\"score_end\";s:9:\"123840000\";}i:15;a:3:{s:8:\"rolename\";s:6:\"中将\";s:11:\"score_start\";s:9:\"123840000\";s:9:\"score_end\";s:9:\"327680000\";}i:16;a:3:{s:8:\"rolename\";s:6:\"上将\";s:11:\"score_start\";s:9:\"327680000\";s:9:\"score_end\";s:1:\"0\";}}'),(17,'plugins_pubs_gobad','1400603098a:3:{i:300;s:20:\"宽度300px广告位\";i:468;s:20:\"宽度468px广告位\";i:960;s:20:\"宽度960px广告位\";}'),(18,'plugins_pubs_feedback','1406109222s:52:\"<a href=\\\"http://www.thinksaas.cn\\\">意见反馈</a>\";'),(19,'plugins_pubs_counter','1403494882s:338:\"<script type=\\\"text/javascript\\\">var cnzz_protocol = ((\\\"https:\\\" == document.location.protocol) ? \\\" https://\\\" : \\\" http://\\\");document.write(unescape(\\\"%3Cspan id=\\\'cnzz_stat_icon_5824195\\\'%3E%3C/span%3E%3Cscript src=\\\'\\\" + cnzz_protocol + \\\"s23.cnzz.com/stat.php%3Fid%3D5824195\\\' type=\\\'text/javascript\\\'%3E%3C/script%3E\\\"));</script>\";'),(20,'plugins_home_links','1422941647N;'),(21,'plugins_pubs_navs','1400833863a:1:{i:0;a:2:{s:7:\"navname\";s:9:\"ThinkSAAS\";s:6:\"navurl\";s:23:\"http://www.thinksaas.cn\";}}'),(22,'plugins_pubs_gonggao','1401614806a:2:{s:5:\"title\";s:27:\"ThinkSAAS2.2等你来测试\";s:3:\"url\";s:23:\"http://www.thinksaas.cn\";}'),(23,'group_plugins','1401899510b:0;');
/*!40000 ALTER TABLE `ts_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_editor`
--

DROP TABLE IF EXISTS `ts_editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_editor` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `type` char(32) NOT NULL DEFAULT 'photo' COMMENT '类型photo,file',
  `title` char(64) NOT NULL DEFAULT '' COMMENT '标题',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '路径',
  `url` char(32) NOT NULL DEFAULT '' COMMENT '图片或者文件',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='编辑器上传图片和文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_editor`
--

LOCK TABLES `ts_editor` WRITE;
/*!40000 ALTER TABLE `ts_editor` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_feed`
--

DROP TABLE IF EXISTS `ts_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_feed` (
  `feedid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `template` varchar(1024) NOT NULL DEFAULT '' COMMENT '动态模板',
  `data` varchar(1024) NOT NULL DEFAULT '' COMMENT '动态数据',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`feedid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='全站动态';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_feed`
--

LOCK TABLES `ts_feed` WRITE;
/*!40000 ALTER TABLE `ts_feed` DISABLE KEYS */;
INSERT INTO `ts_feed` VALUES (1,1,'<span class=\"pl\">发布了帖子：<a href=\"{link}\">{title}</a></span><div class=\"quote\"><span class=\"inq\">{content}</span> <span><a class=\"j a_saying_reply\" href=\"{link}\" rev=\"unfold\">回应</a></span></div>','{\"link\":\"http%3A%2F%2Flocalhost%2Findex.php%3Fapp%3Dgroup%26ac%3Dtopic%26id%3D1\",\"title\":\"%E5%BA%9F%E5%BC%83%E7%89%A9%E9%AB%98%E5%B3%B0%E6%9C%9F%E8%AE%A9%E6%88%91%E8%BF%87%E5%8E%BB%E6%88%91%E5%A6%82%E6%9E%9C\",\"content\":\"%E8%B5%B7%E8%BF%9D%E6%B3%95%E6%9C%AA%E5%8C%BA%E5%88%86%E4%B8%BA%E7%A7%8B%E9%A3%8E%E6%97%A0%E6%83%85\"}',1422594360),(2,1,'<span class=\"pl\">评论了帖子：<a href=\"{link}\">{title}</a></span><div class=\"quote\"><span class=\"inq\">{content}</span> <span><a class=\"j a_saying_reply\" href=\"{link}\" rev=\"unfold\">回应</a></span></div>','{\"link\":\"http%3A%2F%2Flocalhost%2Findex.php%3Fapp%3Dgroup%26ac%3Dtopic%26id%3D1\",\"title\":\"%E5%BA%9F%E5%BC%83%E7%89%A9%E9%AB%98%E5%B3%B0%E6%9C%9F%E8%AE%A9%E6%88%91%E8%BF%87%E5%8E%BB%E6%88%91%E5%A6%82%E6%9E%9C\",\"content\":\"%E5%9C%B0%E6%96%B9%E4%B8%8D%E5%A4%A7%E8%88%92%E6%9C%8D%E5%90%A7\"}',1422594453),(3,2,'<span class=\"pl\">发布了帖子：<a href=\"{link}\">{title}</a></span><div class=\"quote\"><span class=\"inq\">{content}</span> <span><a class=\"j a_saying_reply\" href=\"{link}\" rev=\"unfold\">回应</a></span></div>','{\"link\":\"http%3A%2F%2F192.168.0.113%2Findex.php%3Fapp%3Dgroup%26ac%3Dtopic%26id%3D2\",\"title\":\"%E7%9C%8B%E8%B5%B7%E6%9D%A5%E9%83%BD%E4%B8%8D%E9%94%99%E5%93%A6\",\"content\":\"if%C2%A0%28empty%28%24_SESSION%29%29+%7B+%C2%A0%C2%A0%C2%A0%C2%A0if%C2%A0%28in_array%28%24action%2C%C2%A0...\"}',1422865392),(4,1,'<span class=\"pl\">发布了帖子：<a href=\"{link}\">{title}</a></span><div class=\"quote\"><span class=\"inq\">{content}</span> <span><a class=\"j a_saying_reply\" href=\"{link}\" rev=\"unfold\">回应</a></span></div>','{\"link\":\"http%3A%2F%2F192.168.0.113%2Findex.php%3Fapp%3Dgroup%26ac%3Dtopic%26id%3D3\",\"title\":\"%E7%AB%8B%E5%88%BB%E5%B0%B1%E4%BC%9Avkj\",\"content\":\"%E4%B8%8E%E6%AC%A7%E9%98%B3+%E6%A0%B9%E6%8D%AE%E5%90%88%E8%82%A5%E5%A5%B6%E7%B2%89%E5%93%A5%E6%8B%BF%E7%BB%99%E4%BD%A0%E5%8D%97%E6%96%B9%E4%BE%9B%E6%9A%96%E5%8F%8D%E5%BC%B9%E5%9B%9E%E5%8D%97%E4%BA%AC%E6%94%BE%E8%BF%87%E4%BD%A0%E5%B0%B1%E5%80%9F%E5%8F%A4%E8%AE%BD%E4%BB%8A%E8%AE%A9%E6%88%BF%E4%BB%B7%E4%B9%9F%E8%AE%A9%E4%BB%96%E5%B7%B2%E7%BB%8F%E5%A5%B3%E4%BD%A0%E4%BC%9A%E8%AE%A9%E4%BB%96%E4%B9%9F%E5%BE%88%E9%9A%BE%E9%97%A8%E7%A6%81%E5%8D%A1...\"}',1422961214),(5,1,'<span class=\"pl\">评论了帖子：<a href=\"{link}\">{title}</a></span><div class=\"quote\"><span class=\"inq\">{content}</span> <span><a class=\"j a_saying_reply\" href=\"{link}\" rev=\"unfold\">回应</a></span></div>','{\"link\":\"http%3A%2F%2F192.168.0.113%2Findex.php%2Fgroup%2Ftopic%2Fid-1\",\"title\":\"%E5%BA%9F%E5%BC%83%E7%89%A9%E9%AB%98%E5%B3%B0%E6%9C%9F%E8%AE%A9%E6%88%91%E8%BF%87%E5%8E%BB%E6%88%91%E5%A6%82%E6%9E%9C\",\"content\":\"yaoqi\"}',1424657240),(6,1,'<span class=\"pl\">评论了帖子：<a href=\"{link}\">{title}</a></span><div class=\"quote\"><span class=\"inq\">{content}</span> <span><a class=\"j a_saying_reply\" href=\"{link}\" rev=\"unfold\">回应</a></span></div>','{\"link\":\"http%3A%2F%2F192.168.0.113%2Findex.php%2Fgroup%2Ftopic%2Fid-1\",\"title\":\"%E5%BA%9F%E5%BC%83%E7%89%A9%E9%AB%98%E5%B3%B0%E6%9C%9F%E8%AE%A9%E6%88%91%E8%BF%87%E5%8E%BB%E6%88%91%E5%A6%82%E6%9E%9C\",\"content\":\"%E6%B5%B7%E7%BA%B3%E7%99%BE%E5%B7%9D\"}',1424657278),(7,1,'<span class=\"pl\">说：</span><div class=\"quote\"><span class=\"inq\">{content}</span> <span><a class=\"j a_saying_reply\" href=\"{link}\" rev=\"unfold\">回应</a></span></div>','{\"link\":\"http%3A%2F%2F192.168.0.113%2Findex.php%2Fweibo%2Fshow%2Fid-1\",\"content\":\"%E5%93%88%E5%93%88%E5%93%88\"}',1424659417),(8,1,'<span class=\"pl\">说：</span><div class=\"quote\"><span class=\"inq\">{content}</span> <span><a class=\"j a_saying_reply\" href=\"{link}\" rev=\"unfold\">回应</a></span></div>','{\"link\":\"http%3A%2F%2F192.168.0.113%2Findex.php%2Fweibo%2Fshow%2Fid-2\",\"content\":\"%E5%93%88%E5%93%88%E5%93%88\"}',1424659420),(9,1,'<span class=\"pl\">说：</span><div class=\"quote\"><span class=\"inq\">{content}</span> <span><a class=\"j a_saying_reply\" href=\"{link}\" rev=\"unfold\">回应</a></span></div>','{\"link\":\"http%3A%2F%2F192.168.0.113%2Findex.php%2Fweibo%2Fshow%2Fid-3\",\"content\":\"%E5%93%88%E5%93%88%E5%93%88\"}',1424659422),(10,1,'<span class=\"pl\">发布了帖子：<a href=\"{link}\">{title}</a></span><div class=\"quote\"><span class=\"inq\">{content}</span> <span><a class=\"j a_saying_reply\" href=\"{link}\" rev=\"unfold\">回应</a></span></div>','{\"link\":\"http%3A%2F%2F192.168.0.113%2Findex.php%2Fgroup%2Ftopic%2Fid-4\",\"title\":\"%E6%B5%8B%E8%AF%95%E4%B8%80%E4%B8%8B%E5%9B%BE%E7%89%87\",\"content\":\"\"}',1424661843),(11,2,'<span class=\"pl\">评论了帖子：<a href=\"{link}\">{title}</a></span><div class=\"quote\"><span class=\"inq\">{content}</span> <span><a class=\"j a_saying_reply\" href=\"{link}\" rev=\"unfold\">回应</a></span></div>','{\"link\":\"http%3A%2F%2F192.168.0.113%2Findex.php%2Fgroup%2Ftopic%2Fid-4\",\"title\":\"%E6%B5%8B%E8%AF%95%E4%B8%80%E4%B8%8B%E5%9B%BE%E7%89%87\",\"content\":\"\"}',1424690123),(12,2,'<span class=\"pl\">发布了帖子：<a href=\"{link}\">{title}</a></span><div class=\"quote\"><span class=\"inq\">{content}</span> <span><a class=\"j a_saying_reply\" href=\"{link}\" rev=\"unfold\">回应</a></span></div>','{\"link\":\"http%3A%2F%2F192.168.0.113%2Findex.php%2Fgroup%2Ftopic%2Fid-5\",\"title\":\"libulib\",\"content\":\"lvlb\"}',1424690142),(13,1,'<span class=\"pl\">发布了帖子：<a href=\"{link}\">{title}</a></span><div class=\"quote\"><span class=\"inq\">{content}</span> <span><a class=\"j a_saying_reply\" href=\"{link}\" rev=\"unfold\">回应</a></span></div>','{\"link\":\"http%3A%2F%2F192.168.0.113%2Findex.php%2Fgroup%2Ftopic%2Fid-6\",\"title\":\"%E5%AE%A2%E5%AE%B6%E8%AF%9Dvjk\",\"content\":\"\"}',1424850736),(14,1,'<span class=\"pl\">发布了帖子：<a href=\"{link}\">{title}</a></span><div class=\"quote\"><span class=\"inq\">{content}</span> <span><a class=\"j a_saying_reply\" href=\"{link}\" rev=\"unfold\">回应</a></span></div>','{\"link\":\"http%3A%2F%2F192.168.0.113%2Findex.php%2Fgroup%2Ftopic%2Fid-7\",\"title\":\"%E8%8C%83%E6%95%AC%E5%AE%9C\",\"content\":\"\"}',1424850755),(15,1,'<span class=\"pl\">发布了帖子：<a href=\"{link}\">{title}</a></span><div class=\"quote\"><span class=\"inq\">{content}</span> <span><a class=\"j a_saying_reply\" href=\"{link}\" rev=\"unfold\">回应</a></span></div>','{\"link\":\"http%3A%2F%2F192.168.0.113%2Findex.php%2Fgroup%2Ftopic%2Fid-8\",\"title\":\"ljb\",\"content\":\"lkjblbh\"}',1424857332);
/*!40000 ALTER TABLE `ts_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_feed_options`
--

DROP TABLE IF EXISTS `ts_feed_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_feed_options` (
  `optionname` char(12) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_feed_options`
--

LOCK TABLES `ts_feed_options` WRITE;
/*!40000 ALTER TABLE `ts_feed_options` DISABLE KEYS */;
INSERT INTO `ts_feed_options` VALUES ('appname','动态'),('appdesc','动态'),('appkey','动态');
/*!40000 ALTER TABLE `ts_feed_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_group`
--

DROP TABLE IF EXISTS `ts_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_group` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT COMMENT '小组ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `cateid` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `cateid2` int(11) NOT NULL DEFAULT '0' COMMENT '二级分类ID',
  `cateid3` int(11) NOT NULL DEFAULT '0' COMMENT '三级分类ID',
  `groupname` char(32) NOT NULL DEFAULT '' COMMENT '群组名字',
  `groupdesc` text NOT NULL COMMENT '小组介绍',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '图标路径',
  `photo` char(32) NOT NULL DEFAULT '' COMMENT '小组图标',
  `count_topic` int(11) NOT NULL DEFAULT '0' COMMENT '帖子统计',
  `count_topic_today` int(11) NOT NULL DEFAULT '0' COMMENT '统计今天发帖',
  `count_user` int(11) NOT NULL DEFAULT '0' COMMENT '小组成员数',
  `count_topic_audit` int(11) NOT NULL DEFAULT '0' COMMENT '统计未审核帖子数',
  `joinway` tinyint(1) NOT NULL DEFAULT '0' COMMENT '加入方式',
  `role_leader` char(32) NOT NULL DEFAULT '组长' COMMENT '组长角色名称',
  `role_admin` char(32) NOT NULL DEFAULT '管理员' COMMENT '管理员角色名称',
  `role_user` char(32) NOT NULL DEFAULT '成员' COMMENT '成员角色名称',
  `addtime` int(11) DEFAULT '0' COMMENT '创建时间',
  `isrecommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `isopen` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否公开或者私密',
  `isaudit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否审核',
  `ispost` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允许会员发帖',
  `isshow` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示',
  `ispostaudit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否发帖审核',
  `uptime` int(11) NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  PRIMARY KEY (`groupid`),
  KEY `userid` (`userid`),
  KEY `isshow` (`isshow`),
  KEY `groupname` (`groupname`),
  KEY `cateid` (`cateid`),
  KEY `isaudit` (`isaudit`),
  KEY `addtime` (`addtime`),
  KEY `isrecommend` (`isrecommend`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='微群组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_group`
--

LOCK TABLES `ts_group` WRITE;
/*!40000 ALTER TABLE `ts_group` DISABLE KEYS */;
INSERT INTO `ts_group` VALUES (1,1,3,19,0,'赞庆阳','\n&lt;p&gt;EGR阀而&lt;br&gt;&lt;/p&gt;\n','0/0','0/0/1.jpg',6,0,2,0,0,'组长','管理员','成员',1422591955,1,0,0,0,0,0,1424857332),(2,1,0,0,0,'今日明天','\n&lt;p&gt;父亲为分歧无法而微软官方DVD二位二位但是我热饭威锋网而无法&lt;br&gt;&lt;/p&gt;\n','0/0','0/0/2.jpg',1,0,1,0,0,'组长','管理员','成员',1422958668,1,0,0,0,0,0,1422961214);
/*!40000 ALTER TABLE `ts_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_group_album`
--

DROP TABLE IF EXISTS `ts_group_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_group_album` (
  `albumid` int(11) NOT NULL AUTO_INCREMENT COMMENT '专辑ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `groupid` int(11) NOT NULL DEFAULT '0' COMMENT '小组ID',
  `albumname` char(64) NOT NULL DEFAULT '' COMMENT '专辑名字',
  `albumdesc` varchar(2000) NOT NULL DEFAULT '' COMMENT '专辑介绍',
  `count_topic` int(11) NOT NULL DEFAULT '0' COMMENT '统计帖子',
  `isaudit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '审核',
  `addtime` datetime NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`albumid`),
  KEY `userid` (`userid`),
  KEY `count_topic` (`count_topic`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='小组帖子专辑';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_group_album`
--

LOCK TABLES `ts_group_album` WRITE;
/*!40000 ALTER TABLE `ts_group_album` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_group_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_group_album_topic`
--

DROP TABLE IF EXISTS `ts_group_album_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_group_album_topic` (
  `albumid` int(11) NOT NULL DEFAULT '0' COMMENT '专辑ID',
  `topicid` int(11) NOT NULL DEFAULT '0' COMMENT '帖子ID',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  UNIQUE KEY `albumid_2` (`albumid`,`topicid`),
  KEY `albumid` (`albumid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='专辑帖子';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_group_album_topic`
--

LOCK TABLES `ts_group_album_topic` WRITE;
/*!40000 ALTER TABLE `ts_group_album_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_group_album_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_group_cate`
--

DROP TABLE IF EXISTS `ts_group_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_group_cate` (
  `cateid` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `catename` char(32) NOT NULL DEFAULT '' COMMENT '分类名字',
  `referid` int(11) NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `count_group` int(11) NOT NULL DEFAULT '0' COMMENT '群组个数',
  `uptime` int(11) NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  PRIMARY KEY (`cateid`),
  KEY `referid` (`referid`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_group_cate`
--

LOCK TABLES `ts_group_cate` WRITE;
/*!40000 ALTER TABLE `ts_group_cate` DISABLE KEYS */;
INSERT INTO `ts_group_cate` VALUES (2,'人文自然',0,0,0),(3,'地区',0,1,0),(4,'学校',0,0,0),(5,'游戏',0,0,0),(6,'生活',0,0,0),(7,'体育',0,0,0),(8,'电影、追剧',0,0,0),(9,'娱乐爱好',0,0,0),(10,'人文',2,0,0),(11,'历史',2,0,0),(12,'军事',2,0,0),(13,'自然',2,0,0),(14,'语言文化',2,0,0),(15,'动植物',2,0,0),(16,'姓氏',2,0,0),(17,'社会科学',2,0,0),(18,'其他自然话题',2,0,0),(19,'甘肃',3,1,0),(20,'山东',3,0,0),(21,'河北',3,0,0),(22,'山西',3,0,0),(23,'西藏',3,0,0),(24,'新疆',3,0,0),(25,'四川',3,0,0),(26,'青海',3,0,0),(27,'宁夏',3,0,0),(28,'内蒙古',3,0,0),(29,'山西',3,0,0),(30,'山东',3,0,0),(31,'河北',3,0,0),(32,'河南',3,0,0),(33,'湖北',3,0,0),(34,'湖南',3,0,0),(35,'江西',3,0,0),(36,'福建',3,0,0),(37,'广东',3,0,0),(38,'广西',3,0,0),(39,'贵州',3,0,0),(40,'云南',3,0,0),(41,'四川',3,0,0),(42,'海南',3,0,0),(43,'辽宁',3,0,0),(44,'黑龙江',3,0,0),(45,'吉林',3,0,0),(46,'上海',3,0,0),(47,'重庆',3,0,0),(48,'北京',3,0,0),(49,'港澳台',3,0,0),(50,'安徽',3,0,0),(51,'其他地区',3,0,0),(52,'足球',7,0,0),(53,'篮球',7,0,0);
/*!40000 ALTER TABLE `ts_group_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_group_options`
--

DROP TABLE IF EXISTS `ts_group_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_group_options` (
  `optionname` char(12) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_group_options`
--

LOCK TABLES `ts_group_options` WRITE;
/*!40000 ALTER TABLE `ts_group_options` DISABLE KEYS */;
INSERT INTO `ts_group_options` VALUES ('appname','小组'),('appdesc','ThinkSAAS小组'),('appkey','小组'),('iscreate','0'),('isaudit','0'),('joinnum','20');
/*!40000 ALTER TABLE `ts_group_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_group_topic`
--

DROP TABLE IF EXISTS `ts_group_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_group_topic` (
  `topicid` int(11) NOT NULL AUTO_INCREMENT COMMENT '话题ID',
  `typeid` int(11) NOT NULL DEFAULT '0' COMMENT '帖子分类ID',
  `groupid` int(11) NOT NULL DEFAULT '0' COMMENT '小组ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `locationid` int(11) NOT NULL DEFAULT '0' COMMENT '同城ID',
  `title` char(64) NOT NULL DEFAULT '' COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `count_comment` int(11) NOT NULL DEFAULT '0' COMMENT '回复统计',
  `count_view` int(11) NOT NULL DEFAULT '0' COMMENT '帖子展示数',
  `count_love` int(11) NOT NULL DEFAULT '0' COMMENT '喜欢数',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `isclose` int(4) NOT NULL DEFAULT '0' COMMENT '是否关闭帖子',
  `iscomment` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允许评论',
  `iscommentshow` tinyint(1) NOT NULL DEFAULT '0' COMMENT '?Ƿ????ۺ???ʾ????????0????Ҫ1??Ҫ',
  `isposts` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否精华帖子',
  `isaudit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不审核1审核',
  `isdelete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不删除1删除',
  `isrecommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1为推荐',
  `addtime` int(11) DEFAULT '0' COMMENT '创建时间',
  `uptime` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `topic_img` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`topicid`),
  KEY `groupid` (`groupid`),
  KEY `userid` (`userid`),
  KEY `title` (`title`),
  KEY `groupid_2` (`groupid`),
  KEY `typeid` (`typeid`),
  KEY `addtime` (`addtime`),
  KEY `count_comment` (`count_comment`),
  KEY `count_view` (`count_view`),
  KEY `count_love` (`count_love`),
  KEY `count_view_2` (`count_view`,`addtime`),
  KEY `isshow` (`isaudit`,`uptime`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='小组话题';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_group_topic`
--

LOCK TABLES `ts_group_topic` WRITE;
/*!40000 ALTER TABLE `ts_group_topic` DISABLE KEYS */;
INSERT INTO `ts_group_topic` VALUES (1,0,1,1,1,'废弃物高峰期让我过去我如果','\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;div id=\"xunlei_com_thunder_helper_plugin_d462f475-c18e-46be-bd10-327458d045bd\"&gt;起违法未区分为秋风无情&lt;/div&gt;\n',3,29,0,0,0,0,0,1,0,0,0,1422594360,1424657278,NULL),(2,0,1,2,1,'看起来都不错哦','\n&lt;pre class=\"brush:php;toolbar:false\"&gt;if&nbsp;(empty($_SESSION[\'user_id\']))\r\n\r\n{\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!in_array($action,&nbsp;$not_login_arr))\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;{\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(in_array($action,&nbsp;$ui_arr))\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;如果需要登录,并是显示页面的操作，记录当前操作，用于登录后跳转到相应操作\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;($action&nbsp;==&nbsp;\'login\')\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(isset($_REQUEST[\'back_act\']))\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$back_act&nbsp;=&nbsp;trim($_REQUEST[\'back_act\']);\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{}*/\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!empty($_SERVER[\'QUERY_STRING\']))\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$back_act&nbsp;=&nbsp;\'user.php?\'&nbsp;.&nbsp;strip_tags($_SERVER[\'QUERY_STRING\']);\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$action&nbsp;=&nbsp;\'login\';\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//未登录提交数据。非正常途径提交数据！\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;die($_LANG[\'require_login\']);\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n}&lt;/pre&gt;&lt;p&gt;&lt;/p&gt;\n',0,5,0,0,0,0,0,0,0,0,0,1422865392,1422865392,NULL),(3,0,2,1,1,'立刻就会vkj','\n&lt;p&gt;与欧阳 根据合肥奶粉哥拿给你南方供暖反弹回南京放过你就借古讽今让房价也让他已经女你会让他也很难门禁卡规律音乐推荐吃饭哪地方挺好用条件看发vjretyjytj 负电荷固态&lt;/p&gt;\n',0,2,0,0,0,0,0,0,0,0,0,1422961214,1422961214,NULL),(4,0,1,1,1,'测试一下图片','\n&lt;p&gt;&lt;img src=\"/ueditor/php/upload/image/20150223/1424661839243125.jpg\" title=\"1424661839243125.jpg\" alt=\"电影.jpg\"&gt;&lt;/p&gt;\n',1,7,0,0,0,0,0,0,0,0,0,1424661843,1424690123,NULL),(5,0,1,2,1,'libulib','\n&lt;p&gt;lvlb&lt;/p&gt;\n',0,4,0,0,0,0,0,1,0,0,0,1424690142,1424690142,NULL),(6,0,1,1,1,'客家话vjk','\n&lt;p&gt;&lt;img title=\"1424850615778311.png\" alt=\"下载.png\" src=\"/ueditor/php/upload/image/20150225/1424850615778311.png\"&gt;&lt;/p&gt;\n',0,1,0,0,0,0,0,0,0,0,0,1424850736,1424850736,NULL),(7,0,1,1,1,'范敬宜','\n&lt;p&gt;&lt;img title=\"1424850749328535.png\" alt=\"下载.png\" src=\"/ueditor/php/upload/image/20150225/1424850749328535.png\"&gt;&lt;/p&gt;\n',0,1,0,0,0,0,0,0,0,0,0,1424850755,1424850755,NULL);
/*!40000 ALTER TABLE `ts_group_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_group_topic_add`
--

DROP TABLE IF EXISTS `ts_group_topic_add`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_group_topic_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '补贴ID',
  `topicid` int(11) NOT NULL COMMENT '话题ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `title` char(64) NOT NULL DEFAULT '' COMMENT '帖子标题',
  `content` text NOT NULL COMMENT '帖子内容',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '图片或者附件存储目录',
  `photo` char(32) NOT NULL DEFAULT '' COMMENT '图片地址',
  `attach` char(32) NOT NULL DEFAULT '' COMMENT '附件地址',
  `attachname` char(64) NOT NULL DEFAULT '' COMMENT '附件名字',
  `orderid` int(11) NOT NULL DEFAULT '0' COMMENT '排序ID',
  `addtime` int(11) DEFAULT '0' COMMENT '创建时间',
  `uptime` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `title` (`title`),
  KEY `topicid` (`topicid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='小组话题';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_group_topic_add`
--

LOCK TABLES `ts_group_topic_add` WRITE;
/*!40000 ALTER TABLE `ts_group_topic_add` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_group_topic_add` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_group_topic_collect`
--

DROP TABLE IF EXISTS `ts_group_topic_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_group_topic_collect` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` char(64) NOT NULL DEFAULT '' COMMENT '用户名',
  `topicid` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '收藏时间',
  UNIQUE KEY `userid_2` (`userid`,`topicid`),
  KEY `userid` (`userid`),
  KEY `topicid` (`topicid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='帖子收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_group_topic_collect`
--

LOCK TABLES `ts_group_topic_collect` WRITE;
/*!40000 ALTER TABLE `ts_group_topic_collect` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_group_topic_collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_group_topic_comment`
--

DROP TABLE IF EXISTS `ts_group_topic_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_group_topic_comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `referid` int(11) NOT NULL DEFAULT '0',
  `topicid` int(11) NOT NULL DEFAULT '0' COMMENT '话题ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `content` text NOT NULL COMMENT '回复内容',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '图片或者附件存储目录',
  `photo` char(32) NOT NULL DEFAULT '' COMMENT '图片地址',
  `attach` char(32) NOT NULL DEFAULT '' COMMENT '附件地址',
  `attachname` char(64) NOT NULL DEFAULT '' COMMENT '附件名字',
  `addtime` int(11) DEFAULT '0' COMMENT '回复时间',
  PRIMARY KEY (`commentid`),
  KEY `topicid` (`topicid`),
  KEY `userid` (`userid`),
  KEY `referid` (`referid`,`topicid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='话题回复/评论';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_group_topic_comment`
--

LOCK TABLES `ts_group_topic_comment` WRITE;
/*!40000 ALTER TABLE `ts_group_topic_comment` DISABLE KEYS */;
INSERT INTO `ts_group_topic_comment` VALUES (1,0,1,1,'\n&lt;p&gt;地方不大舒服吧&lt;br&gt;&lt;/p&gt;&lt;div id=\"xunlei_com_thunder_helper_plugin_d462f475-c18e-46be-bd10-327458d045bd\"&gt;&lt;/div&gt;\n','','','','',1422594453),(2,0,1,1,'\n&lt;p&gt;@yaoqi&lt;br&gt;&lt;/p&gt;\n','','','','',1424657240),(3,0,1,1,'\n&lt;p&gt;@海纳百川&lt;br&gt;&lt;/p&gt;\n','','','','',1424657278),(4,0,4,2,'\n&lt;p&gt;&lt;img src=\"/ueditor/php/upload/image/20150223/1424675912452550.jpg\" title=\"1424675912452550.jpg\" alt=\"ncml.jpg\"&gt;&lt;/p&gt;\n','','','','',1424690123);
/*!40000 ALTER TABLE `ts_group_topic_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_group_topic_edit`
--

DROP TABLE IF EXISTS `ts_group_topic_edit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_group_topic_edit` (
  `editid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编辑ID',
  `topicid` int(11) NOT NULL DEFAULT '0' COMMENT '话题ID',
  `title` char(128) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `isupdate` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未更新1更新',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`editid`),
  UNIQUE KEY `topicid` (`topicid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='话题编辑';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_group_topic_edit`
--

LOCK TABLES `ts_group_topic_edit` WRITE;
/*!40000 ALTER TABLE `ts_group_topic_edit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_group_topic_edit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_group_topic_type`
--

DROP TABLE IF EXISTS `ts_group_topic_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_group_topic_type` (
  `typeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子分类ID',
  `groupid` int(11) NOT NULL DEFAULT '0' COMMENT '小组ID',
  `typename` char(32) NOT NULL DEFAULT '' COMMENT '帖子分类名称',
  `count_topic` int(11) NOT NULL DEFAULT '0' COMMENT '统计帖子',
  PRIMARY KEY (`typeid`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='帖子分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_group_topic_type`
--

LOCK TABLES `ts_group_topic_type` WRITE;
/*!40000 ALTER TABLE `ts_group_topic_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_group_topic_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_group_user`
--

DROP TABLE IF EXISTS `ts_group_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_group_user` (
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `groupid` int(11) NOT NULL DEFAULT '0' COMMENT '群组ID',
  `isadmin` int(11) NOT NULL DEFAULT '0' COMMENT '是否管理员',
  `isfounder` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否创始人',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '加入时间',
  UNIQUE KEY `userid_2` (`userid`,`groupid`),
  KEY `userid` (`userid`),
  KEY `groupid` (`groupid`),
  KEY `groupid_2` (`groupid`,`isadmin`,`isfounder`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='群组和用户对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_group_user`
--

LOCK TABLES `ts_group_user` WRITE;
/*!40000 ALTER TABLE `ts_group_user` DISABLE KEYS */;
INSERT INTO `ts_group_user` VALUES (1,1,0,0,1422591955),(2,1,0,0,1422864878),(1,2,0,0,1422958668);
/*!40000 ALTER TABLE `ts_group_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_group_user_isaudit`
--

DROP TABLE IF EXISTS `ts_group_user_isaudit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_group_user_isaudit` (
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `groupid` int(11) NOT NULL DEFAULT '0' COMMENT '小组ID',
  UNIQUE KEY `userid` (`userid`,`groupid`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用于申请加入小组的成员审核';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_group_user_isaudit`
--

LOCK TABLES `ts_group_user_isaudit` WRITE;
/*!40000 ALTER TABLE `ts_group_user_isaudit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_group_user_isaudit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_home_info`
--

DROP TABLE IF EXISTS `ts_home_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_home_info` (
  `infoid` int(11) NOT NULL AUTO_INCREMENT,
  `infokey` char(32) NOT NULL DEFAULT '',
  `title` char(64) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  PRIMARY KEY (`infoid`),
  UNIQUE KEY `infokey` (`infokey`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_home_info`
--

LOCK TABLES `ts_home_info` WRITE;
/*!40000 ALTER TABLE `ts_home_info` DISABLE KEYS */;
INSERT INTO `ts_home_info` VALUES (1,'about','关于我们','关于我们'),(2,'contact','联系我们','联系我们'),(3,'agreement','用户条款','<p>本协议适用ThinkSAAS发布的所有程序版本和代码。</p>\r\n<p>ThinkSAAS官方指：ThinkSAAS社区，奇鸟软件（北京）有限公司和ThinkSAAS社区系统开发者邱君。</p>\r\n<p>ThinkSAAS禁止用户在使用中触犯中国法律范围内的任何法律条文。</p>\r\n<p>ThinkSAAS、奇鸟软件（北京）有限公司及其创始人邱君拥有对ThinkSAAS的所有权，任何个人，公司和组织不得以任何形式和目的侵犯ThinkSAAS的版权和著作权</p>\r\n<p>ThinkSAAS官方拥有对ThinkSAAS社区软件绝对的版权和著作权。</p>\r\n<p>ThinkSAAS商业授权全面免费，公司和个人可以用ThinkSAAS搭建任何商业应用和网站，不用再支付任何商业授权费用。</p>\r\n<p>ThinkSAAS不会监控用户网站信息，但有权通过邮件或者其他联系方式获悉用户使用情况，有权拿用户网站用作案例展示。</p>\r\n<p>在未经ThinkSAAS官方书面允许的情况下，除【自身运营】外，任何个人、公司和组织不能单方面发布和出售以ThinkSAAS为基础开发的任何互联网软件或者产品，否则将视为侵权行为，将依照中华人民共和国法律追究其法律责任。</p>\r\n<p>ThinkSAAS官方拥有对此协议的修改和不断完善。</p>\r\n<p>【自身运营】解释：即用户在使用ThinkSAAS中，不通过出售任何以ThinkSAAS为基础开发的产品，仅用作自身学习和自身商业运营的网站。</p>'),(4,'privacy','隐私申明','隐私申明'),(5,'job','加入我们','加入我们');
/*!40000 ALTER TABLE `ts_home_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_location`
--

DROP TABLE IF EXISTS `ts_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_location` (
  `locationid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `title` char(64) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容介绍',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '路径',
  `photo` char(32) NOT NULL DEFAULT '' COMMENT '图片',
  `orderid` int(11) NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`locationid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='同城';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_location`
--

LOCK TABLES `ts_location` WRITE;
/*!40000 ALTER TABLE `ts_location` DISABLE KEYS */;
INSERT INTO `ts_location` VALUES (1,'赞庆阳','赞庆阳同城','0/0','0/0/1.jpg',0);
/*!40000 ALTER TABLE `ts_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_mail_options`
--

DROP TABLE IF EXISTS `ts_mail_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_mail_options` (
  `optionid` int(11) NOT NULL AUTO_INCREMENT COMMENT '选项ID',
  `optionname` char(12) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  PRIMARY KEY (`optionid`),
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_mail_options`
--

LOCK TABLES `ts_mail_options` WRITE;
/*!40000 ALTER TABLE `ts_mail_options` DISABLE KEYS */;
INSERT INTO `ts_mail_options` VALUES (1,'appname','邮件'),(2,'appdesc','ThinkSAAS邮件'),(3,'isenable','0'),(4,'mailhost','smtp.exmail.qq.com'),(5,'ssl','1'),(6,'mailport','465'),(7,'mailuser','postmaster@thinksaas.cn'),(8,'mailpwd','1231qa2342ws');
/*!40000 ALTER TABLE `ts_mail_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_message`
--

DROP TABLE IF EXISTS `ts_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_message` (
  `messageid` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '发送用户ID',
  `touserid` int(11) NOT NULL DEFAULT '0' COMMENT '接收消息的用户ID',
  `content` text NOT NULL COMMENT '内容',
  `isread` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已读',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`messageid`),
  KEY `touserid` (`touserid`,`isread`),
  KEY `userid` (`userid`,`touserid`,`isread`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='短消息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_message`
--

LOCK TABLES `ts_message` WRITE;
/*!40000 ALTER TABLE `ts_message` DISABLE KEYS */;
INSERT INTO `ts_message` VALUES (1,0,1,'恭喜，你的帖子：《废弃物高峰期让我过去我如果》被评为精华帖啦^_^ <br />[SITE_URL]index.php?app=group&ac=topic&id=1',1,1422594498),(2,0,2,'亲爱的 海纳百川 ：<br />您成功加入了 赞庆阳<br />在遵守本站的规定的同时，享受您的愉快之旅吧!',0,1422864823),(3,0,1,'恭喜你，你的小组《今日明天》被推荐啦！快去看看吧<br />[SITE_URL]index.php/group/show/id-2',1,1423412357),(4,0,1,'恭喜你，你的小组《赞庆阳》被推荐啦！快去看看吧<br />[SITE_URL]index.php/group/show/id-1',1,1423412359),(5,0,1,'你的帖子：《测试一下图片》新增一条评论，快去看看给个回复吧^_^ <br /><a href=\\\"[SITE_URL]index.php/group/topic/id-4\\\">[SITE_URL]index.php/group/topic/id-4</a>',1,1424690123),(6,0,3,'亲爱的 大漠孤鹰 ：<br />您成功加入了 赞庆阳<br />在遵守本站的规定的同时，享受您的愉快之旅吧!',0,1424844196),(7,0,2,'恭喜，你的帖子：《libulib》被评为精华帖啦^_^ <br />[SITE_URL]index.php/group/topic/id-5',0,1424847668);
/*!40000 ALTER TABLE `ts_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_photo`
--

DROP TABLE IF EXISTS `ts_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_photo` (
  `photoid` int(11) NOT NULL AUTO_INCREMENT,
  `albumid` int(11) NOT NULL DEFAULT '0' COMMENT '相册ID',
  `userid` int(11) NOT NULL DEFAULT '0',
  `locationid` int(11) NOT NULL DEFAULT '0' COMMENT '同城iD',
  `photoname` char(64) NOT NULL DEFAULT '',
  `phototype` char(32) NOT NULL DEFAULT '',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '图片路径',
  `photourl` char(120) NOT NULL DEFAULT '',
  `photosize` char(32) NOT NULL DEFAULT '',
  `photodesc` char(120) NOT NULL DEFAULT '',
  `count_view` int(11) NOT NULL DEFAULT '0',
  `isrecommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不推荐1推荐',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  PRIMARY KEY (`photoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_photo`
--

LOCK TABLES `ts_photo` WRITE;
/*!40000 ALTER TABLE `ts_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_photo_album`
--

DROP TABLE IF EXISTS `ts_photo_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_photo_album` (
  `albumid` int(11) NOT NULL AUTO_INCREMENT COMMENT '相册ID',
  `userid` int(11) NOT NULL DEFAULT '0',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '相册路径',
  `albumface` char(64) NOT NULL DEFAULT '' COMMENT '相册封面',
  `albumname` char(64) NOT NULL DEFAULT '',
  `albumdesc` varchar(400) NOT NULL DEFAULT '' COMMENT '相册介绍',
  `count_photo` int(11) NOT NULL DEFAULT '0',
  `count_view` int(11) NOT NULL DEFAULT '0',
  `isrecommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `isaudit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0审核1未审核',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `uptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`albumid`),
  KEY `userid` (`userid`),
  KEY `isrecommend` (`isrecommend`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='相册';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_photo_album`
--

LOCK TABLES `ts_photo_album` WRITE;
/*!40000 ALTER TABLE `ts_photo_album` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_photo_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_photo_comment`
--

DROP TABLE IF EXISTS `ts_photo_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_photo_comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `referid` int(11) NOT NULL DEFAULT '0',
  `photoid` int(11) NOT NULL DEFAULT '0' COMMENT '相册ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `content` char(255) NOT NULL DEFAULT '' COMMENT '回复内容',
  `addtime` int(11) DEFAULT '0' COMMENT '回复时间',
  PRIMARY KEY (`commentid`),
  KEY `userid` (`userid`),
  KEY `referid` (`referid`,`photoid`),
  KEY `photoid` (`photoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图片回复/评论';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_photo_comment`
--

LOCK TABLES `ts_photo_comment` WRITE;
/*!40000 ALTER TABLE `ts_photo_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_photo_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_photo_options`
--

DROP TABLE IF EXISTS `ts_photo_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_photo_options` (
  `optionid` int(11) NOT NULL AUTO_INCREMENT COMMENT '选项ID',
  `optionname` char(16) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  PRIMARY KEY (`optionid`),
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_photo_options`
--

LOCK TABLES `ts_photo_options` WRITE;
/*!40000 ALTER TABLE `ts_photo_options` DISABLE KEYS */;
INSERT INTO `ts_photo_options` VALUES (1,'appname','相册'),(2,'appdesc','相册'),(3,'appkey','相册');
/*!40000 ALTER TABLE `ts_photo_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_redeem_cate`
--

DROP TABLE IF EXISTS `ts_redeem_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_redeem_cate` (
  `cateid` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `catename` char(32) NOT NULL DEFAULT '' COMMENT '分类名称',
  PRIMARY KEY (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_redeem_cate`
--

LOCK TABLES `ts_redeem_cate` WRITE;
/*!40000 ALTER TABLE `ts_redeem_cate` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_redeem_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_redeem_goods`
--

DROP TABLE IF EXISTS `ts_redeem_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_redeem_goods` (
  `goodsid` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品ID',
  `cateid` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` char(64) NOT NULL DEFAULT '' COMMENT '产品标题',
  `content` text NOT NULL COMMENT '产品介绍',
  `nums` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `scores` int(11) NOT NULL DEFAULT '0' COMMENT '需要积分',
  `return` int(11) NOT NULL DEFAULT '0' COMMENT '返还积分',
  `endtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '结束时间',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '路径',
  `photo` char(32) NOT NULL DEFAULT '' COMMENT '图片',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  PRIMARY KEY (`goodsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_redeem_goods`
--

LOCK TABLES `ts_redeem_goods` WRITE;
/*!40000 ALTER TABLE `ts_redeem_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_redeem_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_redeem_options`
--

DROP TABLE IF EXISTS `ts_redeem_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_redeem_options` (
  `optionname` char(12) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_redeem_options`
--

LOCK TABLES `ts_redeem_options` WRITE;
/*!40000 ALTER TABLE `ts_redeem_options` DISABLE KEYS */;
INSERT INTO `ts_redeem_options` VALUES ('appname','积分兑换'),('appdesc','积分兑换'),('appkey','积分兑换');
/*!40000 ALTER TABLE `ts_redeem_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_redeem_user`
--

DROP TABLE IF EXISTS `ts_redeem_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_redeem_user` (
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `goodsid` int(11) NOT NULL DEFAULT '0' COMMENT '产品ID',
  `isreturn` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否返还0未返还1返还',
  KEY `userid` (`userid`,`goodsid`),
  KEY `userid_2` (`userid`),
  KEY `goodsid` (`goodsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户兑换了什么产品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_redeem_user`
--

LOCK TABLES `ts_redeem_user` WRITE;
/*!40000 ALTER TABLE `ts_redeem_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_redeem_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_session`
--

DROP TABLE IF EXISTS `ts_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_session` (
  `session` char(64) NOT NULL DEFAULT '' COMMENT 'SESSIONID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `session_expires` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  `ip` char(32) NOT NULL DEFAULT '' COMMENT 'IP',
  `session_data` varchar(512) NOT NULL DEFAULT '' COMMENT 'SESSION数据',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '时间',
  UNIQUE KEY `session` (`session`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SESSION';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_session`
--

LOCK TABLES `ts_session` WRITE;
/*!40000 ALTER TABLE `ts_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_slide`
--

DROP TABLE IF EXISTS `ts_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_slide` (
  `slideid` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(128) NOT NULL DEFAULT '',
  `url` char(128) NOT NULL DEFAULT '',
  `path` char(32) NOT NULL DEFAULT '',
  `photo` char(32) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`slideid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='轮播';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_slide`
--

LOCK TABLES `ts_slide` WRITE;
/*!40000 ALTER TABLE `ts_slide` DISABLE KEYS */;
INSERT INTO `ts_slide` VALUES (1,'ThinkSAAS开源社区','http://www.thinksaas.cn','0/0','0/0/1.jpg',1416533676);
/*!40000 ALTER TABLE `ts_slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_system_options`
--

DROP TABLE IF EXISTS `ts_system_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_system_options` (
  `optionname` char(32) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统管理配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_system_options`
--

LOCK TABLES `ts_system_options` WRITE;
/*!40000 ALTER TABLE `ts_system_options` DISABLE KEYS */;
INSERT INTO `ts_system_options` VALUES ('site_title','赞庆阳'),('site_subtitle','又一个ThinkSAAS社区'),('site_key','thinksaas'),('site_desc','thinksaas'),('site_url','http://192.168.0.113/'),('link_url','http://192.168.0.113/'),('site_email','admin@admin.com'),('site_icp','京ICP备09050100号'),('isface','0'),('isinvite','0'),('isverify','0'),('istomy','0'),('isauthcode','0'),('isgzip','0'),('isunattended','0'),('isallowdelete','0'),('isallowedit','0'),('timezone','Asia/Hong_Kong'),('site_theme','sample'),('site_urltype','2'),('photo_size','2'),('photo_type','jpg,gif,png,jpeg'),('attach_size','2'),('attach_type','zip,rar,doc,txt,ppt'),('logo','logo.gif');
/*!40000 ALTER TABLE `ts_system_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_tag`
--

DROP TABLE IF EXISTS `ts_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_tag` (
  `tagid` int(11) NOT NULL AUTO_INCREMENT,
  `tagname` char(16) NOT NULL DEFAULT '',
  `count_user` int(11) NOT NULL DEFAULT '0',
  `count_group` int(11) NOT NULL DEFAULT '0',
  `count_topic` int(11) NOT NULL DEFAULT '0',
  `count_bang` int(11) NOT NULL DEFAULT '0',
  `count_article` int(11) NOT NULL DEFAULT '0',
  `count_photo` int(11) NOT NULL DEFAULT '0' COMMENT '统计图片使用数',
  `isenable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可用',
  `uptime` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`tagid`),
  UNIQUE KEY `tagname` (`tagname`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_tag`
--

LOCK TABLES `ts_tag` WRITE;
/*!40000 ALTER TABLE `ts_tag` DISABLE KEYS */;
INSERT INTO `ts_tag` VALUES (1,'生活',0,1,0,0,0,0,0,1424847584),(2,'测试',0,1,0,0,0,0,0,1424847584),(3,'庆阳',1,0,0,0,0,0,0,1424849129),(4,'新闻',1,0,0,0,0,0,0,1424849129),(5,'站长',1,0,0,0,0,0,0,1424849135);
/*!40000 ALTER TABLE `ts_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_tag_article_index`
--

DROP TABLE IF EXISTS `ts_tag_article_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_tag_article_index` (
  `articleid` int(11) NOT NULL DEFAULT '0' COMMENT '帖子ID',
  `tagid` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `articleid_2` (`articleid`,`tagid`),
  KEY `articleid` (`articleid`),
  KEY `tagid` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_tag_article_index`
--

LOCK TABLES `ts_tag_article_index` WRITE;
/*!40000 ALTER TABLE `ts_tag_article_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_tag_article_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_tag_group_index`
--

DROP TABLE IF EXISTS `ts_tag_group_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_tag_group_index` (
  `groupid` int(11) NOT NULL DEFAULT '0',
  `tagid` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `groupid_2` (`groupid`,`tagid`),
  KEY `groupid` (`groupid`),
  KEY `tagid` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_tag_group_index`
--

LOCK TABLES `ts_tag_group_index` WRITE;
/*!40000 ALTER TABLE `ts_tag_group_index` DISABLE KEYS */;
INSERT INTO `ts_tag_group_index` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `ts_tag_group_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_tag_photo_index`
--

DROP TABLE IF EXISTS `ts_tag_photo_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_tag_photo_index` (
  `photoid` int(11) NOT NULL DEFAULT '0' COMMENT '图片ID',
  `tagid` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `photoid_2` (`photoid`,`tagid`),
  KEY `tagid` (`tagid`),
  KEY `photoid` (`photoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_tag_photo_index`
--

LOCK TABLES `ts_tag_photo_index` WRITE;
/*!40000 ALTER TABLE `ts_tag_photo_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_tag_photo_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_tag_topic_index`
--

DROP TABLE IF EXISTS `ts_tag_topic_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_tag_topic_index` (
  `topicid` int(11) NOT NULL DEFAULT '0' COMMENT '帖子ID',
  `tagid` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `topicid_2` (`topicid`,`tagid`),
  KEY `topicid` (`topicid`),
  KEY `tagid` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_tag_topic_index`
--

LOCK TABLES `ts_tag_topic_index` WRITE;
/*!40000 ALTER TABLE `ts_tag_topic_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_tag_topic_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_tag_user_index`
--

DROP TABLE IF EXISTS `ts_tag_user_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_tag_user_index` (
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `tagid` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `userid_2` (`userid`,`tagid`),
  KEY `userid` (`userid`),
  KEY `tagid` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_tag_user_index`
--

LOCK TABLES `ts_tag_user_index` WRITE;
/*!40000 ALTER TABLE `ts_tag_user_index` DISABLE KEYS */;
INSERT INTO `ts_tag_user_index` VALUES (1,3),(1,4),(1,5);
/*!40000 ALTER TABLE `ts_tag_user_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_task`
--

DROP TABLE IF EXISTS `ts_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_task` (
  `taskid` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `taskkey` char(32) NOT NULL DEFAULT '' COMMENT '任务标识',
  `title` char(64) NOT NULL DEFAULT '' COMMENT '任务标题',
  `content` varchar(2000) NOT NULL DEFAULT '' COMMENT '任务介绍',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  PRIMARY KEY (`taskid`),
  UNIQUE KEY `taskkey` (`taskkey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_task`
--

LOCK TABLES `ts_task` WRITE;
/*!40000 ALTER TABLE `ts_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_task_user`
--

DROP TABLE IF EXISTS `ts_task_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_task_user` (
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `taskkey` char(32) NOT NULL DEFAULT '' COMMENT '任务key',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  UNIQUE KEY `userid` (`userid`,`taskkey`),
  KEY `taskkey` (`taskkey`),
  KEY `userid_2` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户任务关联';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_task_user`
--

LOCK TABLES `ts_task_user` WRITE;
/*!40000 ALTER TABLE `ts_task_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_task_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_user`
--

DROP TABLE IF EXISTS `ts_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `pwd` char(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` char(32) NOT NULL DEFAULT '' COMMENT '加点盐',
  `email` char(64) NOT NULL DEFAULT '' COMMENT '用户email',
  `resetpwd` char(32) NOT NULL DEFAULT '' COMMENT '重设密码',
  `code` char(32) NOT NULL DEFAULT '' COMMENT '邮箱验证码',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `pwd` (`pwd`,`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_user`
--

LOCK TABLES `ts_user` WRITE;
/*!40000 ALTER TABLE `ts_user` DISABLE KEYS */;
INSERT INTO `ts_user` VALUES (1,'30d8418cf21e865b0174e57066b755bd','7fc824e351da2ab11de07e43a1e7a085','yaoqiqq@hotmail.com','',''),(2,'d05b4ca0ab743c05143dd2fbcfc1f39d','3d002e9d2f268678459f51f14bb11890','517730120@qq.com','',''),(3,'d5b6320dc76ad695fb8dd32eeadfc5ce','76a65be50e3f9b42e88644c1f1de73d4','270125541@qq.com','','');
/*!40000 ALTER TABLE `ts_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_user_follow`
--

DROP TABLE IF EXISTS `ts_user_follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_user_follow` (
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `userid_follow` int(11) NOT NULL DEFAULT '0' COMMENT '被关注的用户ID',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  UNIQUE KEY `userid_2` (`userid`,`userid_follow`),
  KEY `userid` (`userid`),
  KEY `userid_follow` (`userid_follow`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户关注跟随';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_user_follow`
--

LOCK TABLES `ts_user_follow` WRITE;
/*!40000 ALTER TABLE `ts_user_follow` DISABLE KEYS */;
INSERT INTO `ts_user_follow` VALUES (1,2,0);
/*!40000 ALTER TABLE `ts_user_follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_user_gb`
--

DROP TABLE IF EXISTS `ts_user_gb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_user_gb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reid` int(11) NOT NULL DEFAULT '0' COMMENT '回复ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '留言用户ID',
  `touserid` int(11) NOT NULL DEFAULT '0' COMMENT '被留言用户ID',
  `content` varchar(2000) NOT NULL DEFAULT '' COMMENT '内容',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `touserid` (`touserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='留言表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_user_gb`
--

LOCK TABLES `ts_user_gb` WRITE;
/*!40000 ALTER TABLE `ts_user_gb` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_user_gb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_user_group`
--

DROP TABLE IF EXISTS `ts_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户组ID',
  `groupname` char(32) NOT NULL DEFAULT '' COMMENT '用户组名字',
  `view` tinyint(1) NOT NULL DEFAULT '0' COMMENT '查看权限0有1没有',
  `delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除权限',
  `edit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '修改权限',
  `create` tinyint(1) NOT NULL DEFAULT '0' COMMENT '写入权限',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '积分挂钩',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_user_group`
--

LOCK TABLES `ts_user_group` WRITE;
/*!40000 ALTER TABLE `ts_user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_user_info`
--

DROP TABLE IF EXISTS `ts_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_user_info` (
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `locationid` int(11) NOT NULL DEFAULT '0' COMMENT '同城ID',
  `fuserid` int(11) NOT NULL DEFAULT '0' COMMENT '来自邀请用户',
  `username` char(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` char(64) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `phone` char(16) NOT NULL DEFAULT '' COMMENT '电话号码',
  `roleid` int(11) NOT NULL DEFAULT '1' COMMENT '角色ID',
  `province` char(64) NOT NULL DEFAULT '' COMMENT '省/直辖市/自治区',
  `city` char(65) NOT NULL DEFAULT '' COMMENT '市县区',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '头像路径',
  `face` char(64) NOT NULL DEFAULT '' COMMENT '会员头像',
  `signed` char(64) NOT NULL DEFAULT '' COMMENT '签名',
  `blog` char(32) NOT NULL DEFAULT '' COMMENT '博客',
  `about` char(255) NOT NULL DEFAULT '' COMMENT '关于我',
  `ip` varchar(16) NOT NULL DEFAULT '' COMMENT '登陆IP',
  `address` char(64) NOT NULL DEFAULT '',
  `comefrom` tinyint(1) NOT NULL DEFAULT '0' COMMENT '注册来自0web1手机客户端',
  `count_score` int(11) NOT NULL DEFAULT '0' COMMENT '统计积分',
  `count_follow` int(11) NOT NULL DEFAULT '0' COMMENT '统计用户跟随的',
  `count_followed` int(11) NOT NULL DEFAULT '0' COMMENT '统计用户被跟随的',
  `count_group` int(11) NOT NULL DEFAULT '0' COMMENT '统计小组数',
  `count_topic` int(11) NOT NULL DEFAULT '0' COMMENT '统计帖子',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是管理员',
  `isenable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否启用：0启用1禁用',
  `isverify` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未验证1验证',
  `isrecommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `verifycode` char(11) NOT NULL DEFAULT '' COMMENT '验证码',
  `autologin` char(128) NOT NULL DEFAULT '' COMMENT '自动登陆',
  `signin` int(11) NOT NULL DEFAULT '0' COMMENT '签到时间',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `uptime` int(11) DEFAULT '0' COMMENT '登陆时间',
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `userid` (`userid`),
  UNIQUE KEY `email_2` (`email`,`autologin`),
  KEY `fuserid` (`fuserid`),
  KEY `isrecommend` (`isrecommend`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_user_info`
--

LOCK TABLES `ts_user_info` WRITE;
/*!40000 ALTER TABLE `ts_user_info` DISABLE KEYS */;
INSERT INTO `ts_user_info` VALUES (1,1,0,'yaoqi','yaoqiqq@hotmail.com',0,'',1,'','','0/0','0/0/1.png','','','','192.168.0.113','',0,115,1,0,2,6,1,0,0,0,'','qsvswzygt80sc0o4skgggcco8k800gw',0,1422508792,1424857281),(2,1,0,'海纳百川','517730120@qq.com',0,'',1,'','','0/0','0/0/2.png','','','','192.168.0.113','',0,40,0,1,1,2,0,0,0,0,'','1jjxivvygidc0sg848wog8owc0cs8s8',0,1422864823,1422944095),(3,0,0,'大漠孤鹰','270125541@qq.com',0,'',1,'','','','','','','','192.168.0.104','',0,10,0,0,0,0,0,0,0,0,'','',0,1424844196,1424844196);
/*!40000 ALTER TABLE `ts_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_user_invites`
--

DROP TABLE IF EXISTS `ts_user_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_user_invites` (
  `inviteid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `invitecode` char(32) NOT NULL DEFAULT '' COMMENT '邀请码',
  `isused` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否使用',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`inviteid`),
  UNIQUE KEY `invitecode` (`invitecode`),
  KEY `isused` (`isused`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户邀请码';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_user_invites`
--

LOCK TABLES `ts_user_invites` WRITE;
/*!40000 ALTER TABLE `ts_user_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_user_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_user_open`
--

DROP TABLE IF EXISTS `ts_user_open`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_user_open` (
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `sitename` char(32) NOT NULL DEFAULT '' COMMENT '连接网站名称',
  `openid` char(32) NOT NULL DEFAULT '' COMMENT 'openid',
  `access_token` char(32) NOT NULL DEFAULT '' COMMENT 'access_token',
  `uptime` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  UNIQUE KEY `userid_2` (`userid`,`sitename`),
  UNIQUE KEY `sitename` (`sitename`,`openid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='第三方连接登录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_user_open`
--

LOCK TABLES `ts_user_open` WRITE;
/*!40000 ALTER TABLE `ts_user_open` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_user_open` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_user_options`
--

DROP TABLE IF EXISTS `ts_user_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_user_options` (
  `optionname` char(12) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_user_options`
--

LOCK TABLES `ts_user_options` WRITE;
/*!40000 ALTER TABLE `ts_user_options` DISABLE KEYS */;
INSERT INTO `ts_user_options` VALUES ('appname','用户'),('appdesc','用户中心'),('appkey','用户'),('isenable','0'),('isgroup',''),('banuser','官方用户|官方团队');
/*!40000 ALTER TABLE `ts_user_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_user_role`
--

DROP TABLE IF EXISTS `ts_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_user_role` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `rolename` char(32) NOT NULL DEFAULT '' COMMENT '角色名称',
  `score_start` int(11) NOT NULL DEFAULT '0' COMMENT '积分开始',
  `score_end` int(11) NOT NULL DEFAULT '0' COMMENT '积分结束',
  PRIMARY KEY (`roleid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_user_role`
--

LOCK TABLES `ts_user_role` WRITE;
/*!40000 ALTER TABLE `ts_user_role` DISABLE KEYS */;
INSERT INTO `ts_user_role` VALUES (1,'列兵',0,5000),(2,'下士',5000,20000),(3,'中士',20000,40000),(4,'上士',40000,80000),(5,'三级准尉',80000,160000),(6,'二级准尉',160000,320000),(7,'一级准尉',320000,640000),(8,'少尉',640000,1280000),(9,'中尉',1280000,2560000),(10,'上尉',2560000,5120000),(11,'少校',5120000,10240000),(12,'中校',10240000,20480000),(13,'上校',20480000,40960000),(14,'准将',40960000,81920000),(15,'少将',81920000,123840000),(16,'中将',123840000,327680000),(17,'上将',327680000,0);
/*!40000 ALTER TABLE `ts_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_user_score`
--

DROP TABLE IF EXISTS `ts_user_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_user_score` (
  `scoreid` int(11) NOT NULL AUTO_INCREMENT COMMENT '积分ID',
  `scorekey` char(32) NOT NULL DEFAULT '' COMMENT '积分key',
  `scorename` char(64) NOT NULL DEFAULT '' COMMENT '积分名称',
  `app` char(32) NOT NULL DEFAULT '' COMMENT 'APP',
  `action` char(32) NOT NULL DEFAULT '' COMMENT 'ACTION',
  `ts` char(32) NOT NULL DEFAULT '' COMMENT 'TS',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '积分数',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0加积分1减积分',
  PRIMARY KEY (`scoreid`),
  UNIQUE KEY `app` (`app`,`action`,`ts`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户积分设置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_user_score`
--

LOCK TABLES `ts_user_score` WRITE;
/*!40000 ALTER TABLE `ts_user_score` DISABLE KEYS */;
INSERT INTO `ts_user_score` VALUES (1,'user_register','用户注册','user','register','do',10,0),(2,'user_login','用户登陆','user','login','do',5,0),(3,'group_topic_add','用户小组发帖','group','add','do',10,0),(4,'group_topic_comment','用户小组帖子评论','group','comment','do',5,0),(5,'attach_upload','资料上传','attach','upload','do',10,0),(6,'user_signin','用户签到','user','signin','',5,0);
/*!40000 ALTER TABLE `ts_user_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_user_score_log`
--

DROP TABLE IF EXISTS `ts_user_score_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_user_score_log` (
  `logid` int(11) NOT NULL AUTO_INCREMENT COMMENT '积分记录ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `scorename` char(64) NOT NULL DEFAULT '' COMMENT '积分说明',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '得分',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0增加1减少',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '积分时间',
  PRIMARY KEY (`logid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='用户积分记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_user_score_log`
--

LOCK TABLES `ts_user_score_log` WRITE;
/*!40000 ALTER TABLE `ts_user_score_log` DISABLE KEYS */;
INSERT INTO `ts_user_score_log` VALUES (1,1,'用户小组发帖',10,0,1422594360),(2,1,'用户小组帖子评论',5,0,1422594453),(3,1,'用户登陆',5,0,1422863355),(4,2,'用户注册',10,0,1422864823),(5,2,'用户小组发帖',10,0,1422865392),(6,1,'用户登陆',5,0,1422935631),(7,2,'用户登陆',5,0,1422944095),(8,1,'用户小组发帖',10,0,1422961214),(9,1,'用户登陆',5,0,1422981079),(10,1,'用户登陆',5,0,1423145320),(11,1,'用户登陆',5,0,1423412332),(12,1,'用户登陆',5,0,1424172097),(13,1,'用户登陆',5,0,1424657181),(14,1,'用户小组帖子评论',5,0,1424657240),(15,1,'用户小组帖子评论',5,0,1424657278),(16,1,'用户小组发帖',10,0,1424661843),(17,2,'用户小组帖子评论',5,0,1424690123),(18,2,'用户小组发帖',10,0,1424690142),(19,1,'用户登陆',5,0,1424843522),(20,3,'用户注册',10,0,1424844196),(21,1,'用户小组发帖',10,0,1424850736),(22,1,'用户小组发帖',10,0,1424850755),(23,1,'用户小组发帖',10,0,1424857332);
/*!40000 ALTER TABLE `ts_user_score_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_weibo`
--

DROP TABLE IF EXISTS `ts_weibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_weibo` (
  `weiboid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `locationid` int(11) NOT NULL DEFAULT '0' COMMENT '同城ID',
  `content` text NOT NULL,
  `count_comment` int(11) NOT NULL DEFAULT '0',
  `photo` char(32) NOT NULL DEFAULT '',
  `path` char(32) NOT NULL DEFAULT '',
  `isaudit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否审核',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`weiboid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_weibo`
--

LOCK TABLES `ts_weibo` WRITE;
/*!40000 ALTER TABLE `ts_weibo` DISABLE KEYS */;
INSERT INTO `ts_weibo` VALUES (1,1,1,'\n&lt;p&gt;哈哈哈&lt;/p&gt;\n',0,'','',0,'2015-02-23 10:43:37','2015-02-23 10:43:37'),(2,1,1,'\n&lt;p&gt;哈哈哈&lt;/p&gt;\n',0,'','',0,'2015-02-23 10:43:40','2015-02-23 10:43:40'),(3,1,1,'\n&lt;p&gt;哈哈哈&lt;/p&gt;\n',0,'','',0,'2015-02-23 10:43:42','2015-02-23 10:43:42');
/*!40000 ALTER TABLE `ts_weibo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_weibo_comment`
--

DROP TABLE IF EXISTS `ts_weibo_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_weibo_comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `touserid` int(11) NOT NULL DEFAULT '0',
  `isread` tinyint(1) NOT NULL DEFAULT '0',
  `weiboid` int(11) NOT NULL DEFAULT '0',
  `content` varchar(512) NOT NULL DEFAULT '',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`commentid`),
  KEY `touserid` (`touserid`,`isread`),
  KEY `noteid` (`weiboid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_weibo_comment`
--

LOCK TABLES `ts_weibo_comment` WRITE;
/*!40000 ALTER TABLE `ts_weibo_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_weibo_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_weibo_options`
--

DROP TABLE IF EXISTS `ts_weibo_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_weibo_options` (
  `optionname` char(12) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_weibo_options`
--

LOCK TABLES `ts_weibo_options` WRITE;
/*!40000 ALTER TABLE `ts_weibo_options` DISABLE KEYS */;
INSERT INTO `ts_weibo_options` VALUES ('appname','唠叨'),('appdesc','唠叨'),('appkey','唠叨');
/*!40000 ALTER TABLE `ts_weibo_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wx_cfg`
--

DROP TABLE IF EXISTS `wx_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wx_cfg` (
  `cfg_id` int(11) NOT NULL AUTO_INCREMENT,
  `cfg_name` varchar(45) DEFAULT NULL,
  `cfg_value` varchar(45) DEFAULT NULL,
  `autoload` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cfg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wx_cfg`
--

LOCK TABLES `wx_cfg` WRITE;
/*!40000 ALTER TABLE `wx_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `wx_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wx_config`
--

DROP TABLE IF EXISTS `wx_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wx_config` (
  `id` int(11) NOT NULL,
  `token` varchar(45) DEFAULT NULL,
  `appid` varchar(45) DEFAULT NULL,
  `appsecret` varchar(45) DEFAULT NULL,
  `access_token` varchar(45) DEFAULT NULL,
  `dateline` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wx_config`
--

LOCK TABLES `wx_config` WRITE;
/*!40000 ALTER TABLE `wx_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `wx_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wx_menu`
--

DROP TABLE IF EXISTS `wx_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wx_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_type` varchar(45) DEFAULT NULL,
  `level` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` varchar(45) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wx_menu`
--

LOCK TABLES `wx_menu` WRITE;
/*!40000 ALTER TABLE `wx_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `wx_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wx_user`
--

DROP TABLE IF EXISTS `wx_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wx_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `subscribe` int(11) DEFAULT NULL,
  `wxid` varchar(45) DEFAULT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `language` varchar(45) DEFAULT NULL,
  `headimgurl` varchar(45) DEFAULT NULL,
  `subscribe_time` int(11) DEFAULT NULL,
  `localimg` varchar(45) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wx_user`
--

LOCK TABLES `wx_user` WRITE;
/*!40000 ALTER TABLE `wx_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `wx_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-27 20:06:40
