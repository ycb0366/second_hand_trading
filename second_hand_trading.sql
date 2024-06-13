-- MySQL dump 10.13  Distrib 8.1.0, for Win64 (x86_64)
--
-- Host: localhost    Database: second_hand_trading
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `sh_address`
--

DROP TABLE IF EXISTS `sh_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sh_address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `consignee_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收货人姓名',
  `consignee_phone` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收货人手机号',
  `province_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '省',
  `city_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '市',
  `region_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '区',
  `detail_address` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '详细地址',
  `default_flag` tinyint NOT NULL COMMENT '是否默认地址',
  `user_id` bigint NOT NULL COMMENT '用户主键id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id_index` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sh_address`
--

LOCK TABLES `sh_address` WRITE;
/*!40000 ALTER TABLE `sh_address` DISABLE KEYS */;
INSERT INTO `sh_address` VALUES (1,'就是屑狐狸','13910305666','福建省','福州市','永泰县','翻斗花园',1,10),(2,'王一豪','13405933256','福建省','福州市','闽侯县','福建师范大学旗山校区兰苑',1,9),(27,'yape','13486588888','福建省','福州市','鼓楼区','南后街18号',1,1),(28,'Kris Yang','15859188888','福建省','福州市','福清市','玉屏街道幸福路1号',1,2),(29,'张不语','17888888888','天津市','市辖区','河东区','福建路6号',1,3),(30,'练不言','15968587777','福建省','福州市','闽侯县','桂苑',1,4),(31,'Kris Yang','15859183888','福建省','福州市','福清市','幸福路2号',0,1),(32,'wd','15689564565','福建省','福州市','台江区','翻斗花园',1,43),(33,'小帅','15612345623','河北省','秦皇岛市','山海关区','中山路4号',1,44);
/*!40000 ALTER TABLE `sh_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sh_admin`
--

DROP TABLE IF EXISTS `sh_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sh_admin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `account_number` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '管理员账号',
  `admin_password` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `admin_name` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '管理员名字',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `account_number` (`account_number`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sh_admin`
--

LOCK TABLES `sh_admin` WRITE;
/*!40000 ALTER TABLE `sh_admin` DISABLE KEYS */;
INSERT INTO `sh_admin` VALUES (1,'11','123123','超级管理员'),(2,'22','123123','管理员1'),(3,'33','123123','管理员2'),(11,'44','123123','管理员3'),(12,'55','123123','管理员4');
/*!40000 ALTER TABLE `sh_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sh_favorite`
--

DROP TABLE IF EXISTS `sh_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sh_favorite` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增主键id',
  `create_time` datetime NOT NULL COMMENT '加入收藏的时间',
  `user_id` bigint NOT NULL COMMENT '用户主键id',
  `idle_id` bigint NOT NULL COMMENT '闲置物主键id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `user_id` (`user_id`,`idle_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sh_favorite`
--

LOCK TABLES `sh_favorite` WRITE;
/*!40000 ALTER TABLE `sh_favorite` DISABLE KEYS */;
INSERT INTO `sh_favorite` VALUES (42,'2024-05-09 07:21:59',9,80),(43,'2024-05-09 22:20:08',4,90),(44,'2024-05-10 10:23:09',3,93),(45,'2024-05-11 17:56:57',3,98),(46,'2024-05-12 17:58:11',3,97),(47,'2024-06-13 04:57:25',2,107),(48,'2024-06-13 04:57:51',2,108),(49,'2024-06-13 05:55:54',4,113);
/*!40000 ALTER TABLE `sh_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sh_idle_item`
--

DROP TABLE IF EXISTS `sh_idle_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sh_idle_item` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `idle_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '闲置物名称',
  `idle_details` varchar(2048) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '详情',
  `picture_list` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图集',
  `idle_price` decimal(10,2) NOT NULL COMMENT '价格',
  `idle_place` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '发货地区',
  `idle_label` int NOT NULL COMMENT '分类标签',
  `release_time` datetime NOT NULL COMMENT '发布时间',
  `idle_status` tinyint NOT NULL COMMENT '状态（发布1、下架2、删除0）',
  `user_id` bigint NOT NULL COMMENT '用户主键id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id_index` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sh_idle_item`
--

LOCK TABLES `sh_idle_item` WRITE;
/*!40000 ALTER TABLE `sh_idle_item` DISABLE KEYS */;
INSERT INTO `sh_idle_item` VALUES (106,'S F 算法SF 萨芬无法EF','ADS佛山市FS发阿番茄WF是','[\"http://localhost:8080/image?imageName=file17182066077651002证件照.jpg\"]',30.00,'市辖区',1,'2024-06-12 15:36:53',0,43),(107,'Miku鼠标','初握没啥惊喜，但是打起来定位奇准。无论中远近距离都是。启动快，急停稳，似乎准星黏着敌人的头部，相信买了你也可以！','[\"http://localhost:8080/image?imageName=file17182518206431002e6b3be22e0ab17ce58f363d610be28b6.jpg\"]',168.00,'福州市',1,'2024-06-13 04:10:23',1,1),(108,'大耳狗玩偶','大耳狗是日本三丽鸥（Sanrio）公司推出的人气吉祥物。因为有着雪白毛绒的大大的耳朵，蓝色的眼睛，从而深受日本人民与其他国家人民的喜爱。','[\"http://localhost:8080/image?imageName=file17182523621841004906f31a81aba754371d854e83b13e9a0.jpg\"]',20.00,'福州市',5,'2024-06-13 04:21:52',1,1),(109,'登山杖','一根登山杖，爬山时非常好用。','[\"http://localhost:8080/image?imageName=file17182525589871005fa1f91966c80d783e9a462dbe47a4de2.jpg\"]',30.00,'福州市',3,'2024-06-13 04:23:30',1,1),(110,'10000毫安充电宝','这个充电宝非常好用，强烈安利。','[\"http://localhost:8080/image?imageName=file1718252661124100684d8a24fb65ce60d730f7d9e91f5bddf.jpg\"]',40.00,'福州市',1,'2024-06-13 04:25:24',1,1),(111,'miku键盘','充满miku元素的键盘，使用时仿佛miku就在你的身边。','[\"http://localhost:8080/image?imageName=file171825350287710083dd60bd21408b9cd150581e1ad2ebb13.jpg\"]',200.00,'福州市',1,'2024-06-13 04:38:25',2,43),(112,'洗衣机','这个洗衣机一次性可以洗很多衣服，非常不错','[\"http://localhost:8080/image?imageName=file17182543750101002d286c33a231f018869f34b763c394ee5.jpg\"]',400.00,'福州市',2,'2024-06-13 04:53:58',1,2),(113,'热水壶','这个热水壶烧水烧的很快，值得拥有。','[\"http://localhost:8080/image?imageName=file17182545525271004750587fdd492f2214ca00cd49e63dce9.jpg\"]',30.00,'福州市',2,'2024-06-13 04:56:51',1,2),(114,'六级参考书','想过六级，就买它，非常优惠。','[\"http://localhost:8080/image?imageName=file171825475965510053999de25e7fc31934d0f9f9ccae7ff53.jpg\"]',15.00,'福州市',4,'2024-06-13 05:00:03',1,3),(115,'在暴雪时分 ','这本书很好看，天才斯洛克选手之间的故事。','[\"http://localhost:8080/image?imageName=file1718258244616100882d027c1d16f9d52a0a09e7c2be5a0ea.jpg\"]',10.00,'福州市',4,'2024-06-13 05:57:26',1,4),(116,'欧也妮*葛朗台','这是一本好书，经典名著。','[\"http://localhost:8080/image?imageName=file171825937413810098149b0aa1b6414b0095fd129dcd265fe.jpg\"]',20.00,'福州市',4,'2024-06-13 06:16:24',1,43),(117,'库洛米玩偶','这个库洛米还真是非常可爱呢。','[\"http://localhost:8080/image?imageName=file17182664102391010a0435c725d2ff7f304ac701907f6a53a(1).jpg\"]',30.00,'福州市',5,'2024-06-13 08:13:33',1,44),(118,'运动手表','这水表可以看潮汐和月相，十分不错。','[\"http://localhost:8080/image?imageName=file17182665294031012ea72e485c015d230ef932f42dbd8f4e7.jpg\"]',300.00,'福州市',1,'2024-06-13 08:15:32',1,44),(119,'java水杯','java标志非常好看。','[\"http://localhost:8080/image?imageName=file17182665862761013d40ed7c471e89184f3103d0eec531ed5.jpg\"]',20.00,'市辖区',5,'2024-06-13 08:16:31',1,44),(120,'篮球','很好打，值得拥有。','[\"http://localhost:8080/image?imageName=file171826670452010140b2f9450003f74f15c24bf72a399f330.jpg\"]',50.00,'秦皇岛市',3,'2024-06-13 08:18:28',1,44),(121,'头戴式耳机','这个耳机音质很好，值得拥有。','[\"http://localhost:8080/image?imageName=file17182670093651015963af637f98d846bb0fc5c604e8e5abd.jpg\"]',50.00,'厦门市',1,'2024-06-13 08:23:31',1,44),(122,'满天星书包','满天星元素，潮流百搭。','[\"http://localhost:8080/image?imageName=file17182671220491016c6db6fc455e193125dc3e928c9b876a6.jpg\"]',60.00,'市辖区',3,'2024-06-13 08:25:23',1,44),(123,'游戏手柄','打游戏震动感真实。','[\"http://localhost:8080/image?imageName=file17182671612061017083a143f6fee38978cd66d05ffc3634a.jpg\"]',58.00,'淄博市',1,'2024-06-13 08:27:09',1,44),(124,'台灯','照明效果很好。','[\"http://localhost:8080/image?imageName=file17182673047331018a6f5b1e66f25b348d81ebfda3668b4de.jpg\"]',35.00,'南京市',2,'2024-06-13 08:29:01',1,44),(125,'网球拍','重磅网球拍，打击手感很好。','[\"http://localhost:8080/image?imageName=file1718267438919101943ccb6708575526f2ff35d1e4850531f.jpg\"]',20.00,'长春市',3,'2024-06-13 08:30:40',1,44),(126,'收纳盒','容量很大。','[\"http://localhost:8080/image?imageName=file17182675526091020edeeacbe7350502d58d8ab62264dfd76.jpg\"]',10.00,'厦门市',5,'2024-06-13 08:32:38',1,44);
/*!40000 ALTER TABLE `sh_idle_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sh_message`
--

DROP TABLE IF EXISTS `sh_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sh_message` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_id` bigint NOT NULL COMMENT '用户主键id',
  `idle_id` bigint NOT NULL COMMENT '闲置主键id',
  `content` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '留言内容',
  `create_time` datetime NOT NULL COMMENT '留言时间',
  `to_user` bigint NOT NULL COMMENT '所回复的用户',
  `to_message` bigint DEFAULT NULL COMMENT '所回复的留言',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id_index` (`user_id`) USING BTREE,
  KEY `idle_id_index` (`idle_id`) USING BTREE,
  KEY `to_user_index` (`to_user`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sh_message`
--

LOCK TABLES `sh_message` WRITE;
/*!40000 ALTER TABLE `sh_message` DISABLE KEYS */;
INSERT INTO `sh_message` VALUES (49,2,107,'这个鼠标真的很好用吗','2024-06-13 04:57:39',1,NULL),(50,43,110,'这个充电宝充电速度快吗','2024-06-13 07:58:21',1,NULL),(51,44,111,'想要','2024-06-13 08:18:55',43,NULL),(52,44,115,'非常喜欢这本书呢','2024-06-13 08:19:15',4,NULL);
/*!40000 ALTER TABLE `sh_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sh_order`
--

DROP TABLE IF EXISTS `sh_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sh_order` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `order_number` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单编号',
  `user_id` bigint NOT NULL COMMENT '用户主键id',
  `idle_id` bigint NOT NULL COMMENT '闲置物品主键id',
  `order_price` decimal(10,2) NOT NULL COMMENT '订单总价',
  `payment_status` tinyint NOT NULL COMMENT '支付状态',
  `payment_way` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '支付方式',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `payment_time` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` tinyint NOT NULL COMMENT '订单状态',
  `is_deleted` tinyint DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sh_order`
--

LOCK TABLES `sh_order` WRITE;
/*!40000 ALTER TABLE `sh_order` DISABLE KEYS */;
INSERT INTO `sh_order` VALUES (84,'171671463234710002',4,5,10.00,0,NULL,'2024-05-26 09:10:32',NULL,4,NULL),(85,'171671468314310003',4,4,50.00,1,'支付宝','2024-05-26 09:11:23','2024-05-26 09:11:28',1,NULL),(86,'171672401710110004',4,2,100.00,0,NULL,'2024-05-26 11:46:57',NULL,4,NULL),(87,'171826677497810002',44,111,200.00,1,'支付宝','2024-06-13 08:19:35','2024-06-13 08:21:02',1,NULL);
/*!40000 ALTER TABLE `sh_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sh_order_address`
--

DROP TABLE IF EXISTS `sh_order_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sh_order_address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `order_id` bigint NOT NULL COMMENT '订单id',
  `consignee_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收货人',
  `consignee_phone` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '电话',
  `detail_address` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收货地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `orderId` (`order_id`) USING BTREE,
  KEY `order_id_index` (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sh_order_address`
--

LOCK TABLES `sh_order_address` WRITE;
/*!40000 ALTER TABLE `sh_order_address` DISABLE KEYS */;
INSERT INTO `sh_order_address` VALUES (24,87,'小帅','15612345623','河北省秦皇岛市山海关区中山路4号');
/*!40000 ALTER TABLE `sh_order_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sh_user`
--

DROP TABLE IF EXISTS `sh_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sh_user` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `account_number` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '账号（手机号）',
  `user_password` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '登录密码',
  `nickname` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '昵称',
  `avatar` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '头像',
  `sign_in_time` datetime NOT NULL COMMENT '注册时间',
  `user_status` tinyint DEFAULT NULL COMMENT '状态（1代表封禁）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `account_number` (`account_number`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sh_user`
--

LOCK TABLES `sh_user` WRITE;
/*!40000 ALTER TABLE `sh_user` DISABLE KEYS */;
INSERT INTO `sh_user` VALUES (1,'166116','123456','Kris Yang','http://localhost:8080/image?imageName=file17182522043131003859d45827e5a0eefd4dfd27d7f543c01.jpg','2024-06-01 10:49:01',NULL),(2,'121052022101','123456','骆十一','http://localhost:8080/image?imageName=file17182545036331003e8433d90114e8afca876ef098191fa44.jpg','2024-06-01 11:47:19',NULL),(3,'121052022102','123456','范琳琳','http://localhost:8080/image?imageName=file1718254877367100647c66c3c24fd545e36a7929428168796.jpg','2024-06-01 11:47:30',NULL),(4,'121052022103','123456','陈志鑫','http://localhost:8080/image?imageName=file17182581317191007c99ab7923380eb98e488c733809193ab.jpg','2024-06-02 11:53:15',NULL),(5,'121052022104','123456','陈琪琪','http://localhost:8080/image?imageName=file16600445641151003109951165625541004.jpg','2024-06-06 12:21:50',1),(6,'121052022105','123456','飞太狼','http://localhost:8080/image?imageName=file16600445641151003109951165625541004.jpg','2024-06-07 12:22:33',1),(7,'121052022106','123456','Kris Lin','http://localhost:8080/image?imageName=file16600445641151003109951165625541004.jpg','2024-06-08 12:23:15',1),(8,'121052022107','123456','林一','http://localhost:8080/image?imageName=file16600445641151003109951165625541004.jpg','2024-06-08 12:25:36',1),(9,'121052022108','123456','胡图图','http://localhost:8080/image?imageName=file16600445641151003109951165625541004.jpg','2024-06-08 13:24:04',1),(10,'121052022109','123456','歪大帅','http://localhost:8080/image?imageName=file16600445641151003109951165625541004.jpg','2024-06-09 13:49:01',1),(43,'20030307','123456','Wd','http://localhost:8080/image?imageName=file171825333817210075e7fbceb4245cf5213e7104eb60983c6.jpg','2024-06-13 04:31:32',NULL),(44,'110110','123456','小帅','http://localhost:8080/image?imageName=file17182664190551011a0435c725d2ff7f304ac701907f6a53a(1).jpg','2024-06-13 08:09:21',NULL);
/*!40000 ALTER TABLE `sh_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-13 16:47:03
