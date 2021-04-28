/*
SQLyog Professional v12.09 (64 bit)
MySQL - 8.0.15 : Database - renthousedb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`renthousedb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `renthousedb`;

/*Table structure for table `address_category` */

DROP TABLE IF EXISTS `address_category`;

CREATE TABLE `address_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL COMMENT '编码',
  `name` varchar(100) DEFAULT NULL COMMENT '这个分类名',
  `parentname` varchar(100) DEFAULT NULL COMMENT '上级类的name',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

/*Data for the table `address_category` */

insert  into `address_category`(`id`,`code`,`name`,`parentname`) values (1,'region1','道里区',NULL),(2,'region2','南岗区',NULL),(3,'region3','道外区',NULL),(4,'region4','平房区',NULL),(5,'region5','松北区',NULL),(6,'region6','香坊区',NULL),(7,'region7','呼兰区',NULL),(8,'region8','阿城区',NULL),(9,'region9','双城区',NULL),(10,'estate1-1','聚贤花园','道里区'),(11,'estate1-2','祥瑞官邸','道里区'),(12,'estate1-3','共乐小区','道里区'),(13,'estate1-4','康健小区','道里区'),(14,'estate1-5','新发家园','道里区'),(15,'estate2-1','悦山国际','南岗区'),(16,'estate2-2','君贵·东方瑞景','南岗区'),(17,'estate2-3','文化帝景','南岗区'),(18,'estate2-4','赫时','南岗区'),(19,'estate2-5','东泰金谷','南岗区'),(20,'estate3-1','春江小区','道外区'),(21,'estate3-2','东直小区','道外区'),(22,'estate3-3','青年城邦','道外区'),(23,'estate3-4','红城小区','道外区'),(24,'estate3-5','宇轩花园二期','道外区'),(25,'estate4-1','兴建小区','平房区'),(26,'estate4-2','金色嘉园','平房区'),(27,'estate4-3','南城名苑','平房区'),(28,'estate4-4','南城明珠','平房区'),(29,'estate4-5','万达华府','平房区'),(30,'estate5-1','海域岛屿墅','松北区'),(31,'estate5-2','常盛源小区','松北区'),(32,'estate5-3','北岸明珠','松北区'),(33,'estate5-4','万达华园|恒源街898号','松北区'),(34,'estate5-5','银河小区','松北区'),(35,'estate6-1','林机小区','香坊区'),(36,'estate6-2','万象上东','香坊区'),(37,'estate6-3','闽江小区','香坊区'),(38,'estate6-4','汇龙十九街区','香坊区'),(39,'estate6-5','泰山小区','香坊区'),(40,'estate7-1','锦秀丽都','呼兰区'),(41,'estate7-2','果菜小区','呼兰区'),(42,'estate7-3','美澳花园','呼兰区'),(43,'estate7-4','杉尼家园','呼兰区'),(44,'estate7-5','弘基世纪','呼兰区'),(45,'estate8-1','金源嘉园(阿城)','阿城区'),(46,'estate8-2','上京广场','阿城区'),(47,'estate8-3','商住小区','阿城区'),(48,'estate8-4','阳光公寓','阿城区'),(49,'estate8-5','聚丰综合楼','阿城区'),(50,'estate9-1','世纪现代城','双城区'),(51,'estate9-2','福瑞家园','双城区'),(52,'estate9-3','俊合新城','双城区'),(53,'estate9-4','金安金融花园','双城区'),(54,'estate9-5','民乐家园','双城区'),(55,'estate3-6','太古小区','道外区');

/*Table structure for table `admin_user` */

DROP TABLE IF EXISTS `admin_user`;

CREATE TABLE `admin_user` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(20) NOT NULL,
  `adminpassword` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `admin_user` */

insert  into `admin_user`(`id`,`adminname`,`adminpassword`) values (1,'admin','123');

/*Table structure for table `common_user` */

DROP TABLE IF EXISTS `common_user`;

CREATE TABLE `common_user` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `commonusername` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '昵称',
  `realname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(15) NOT NULL COMMENT '密码',
  `phonenumber` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `idnumber` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `address` varchar(120) DEFAULT NULL COMMENT '固定住址',
  `role` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色：a.寻租者/b.房东/c.中介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `common_user` */

insert  into `common_user`(`id`,`commonusername`,`realname`,`password`,`phonenumber`,`idnumber`,`address`,`role`) values (1,'admin','管理员','123','18845592347','232700000000000022','哈尔滨商业大学','管理员'),(8,'test','赵桐辉','123','18845149114','232700199609060000','大兴安岭','寻租者'),(10,'test001','游茂钰','123','2222222','123456789123456789','哈尔滨','寻租者'),(11,'master1','赵桐辉','123','18845592347','234700199600000000','哈商大','房东');

/*Table structure for table `fault` */

DROP TABLE IF EXISTS `fault`;

CREATE TABLE `fault` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `userid` int(4) NOT NULL COMMENT '报障人ID',
  `address` varchar(120) DEFAULT NULL COMMENT '报障地址',
  `detail` varchar(200) DEFAULT NULL COMMENT '报障内容',
  `createdate` date DEFAULT NULL COMMENT '报障时间',
  `state` varchar(50) DEFAULT NULL COMMENT '保障状态',
  PRIMARY KEY (`id`),
  KEY `fk_userid_commonuser` (`userid`),
  CONSTRAINT `fk_userid_commonuser` FOREIGN KEY (`userid`) REFERENCES `common_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `fault` */

insert  into `fault`(`id`,`userid`,`address`,`detail`,`createdate`,`state`) values (1,8,'松北水木清华B1-1单元','灯坏啦','2019-05-06','已维修'),(2,8,'水木清华',NULL,'2019-05-06','已维修'),(3,8,'银河小区6单元','水管坏了','2019-05-06','待维修'),(4,8,'银河小区6单元','水管坏了','2019-05-06','待维修');

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL COMMENT '留言人',
  `detail` varchar(300) DEFAULT NULL COMMENT '留言内容',
  `createdate` datetime DEFAULT NULL COMMENT '留言时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `message` */

insert  into `message`(`id`,`username`,`detail`,`createdate`) values (1,'我最水','这房子不错啊','2019-05-05 22:52:52'),(5,'XX','嘻嘻\r\n','2019-05-05 23:01:34'),(6,'XX','嘻嘻\r\n','2019-05-05 23:02:37'),(7,'123','1.环境优雅，周围紧邻公交车站和地铁，交\r\n\r\n      通便利。\r\n\r\n2：房子户型：2室厅厨卫阳台，豪华装修，保您住的\r\n\r\n      舒心、安心、顺心 。\r\n\r\n3：室内采光足，整体干净清爽，家电齐全，\r\n\r\n     东朝向，温馨家园，值得您拥有。\r\n\r\n4：可随时看房，随时入住，欢迎各路租客来电','2019-05-05 23:03:01');

/*Table structure for table `message_reply` */

DROP TABLE IF EXISTS `message_reply`;

CREATE TABLE `message_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `messageid` int(10) NOT NULL COMMENT '回复的留言编号（ID）',
  `replyname` varchar(20) NOT NULL COMMENT '回复人名称',
  `detail` varchar(300) NOT NULL COMMENT '回复内容',
  `createdate` datetime DEFAULT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`),
  KEY `fk_messageid_message` (`messageid`),
  CONSTRAINT `fk_messageid_message` FOREIGN KEY (`messageid`) REFERENCES `message` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `message_reply` */

insert  into `message_reply`(`id`,`messageid`,`replyname`,`detail`,`createdate`) values (2,1,'qq123','回复2','2019-05-05 23:41:24'),(3,1,'qq123','回复2','2019-05-05 23:42:12'),(5,1,'一个谜','是的','2019-05-05 23:44:33'),(6,1,'admin','1111','2019-05-06 12:29:02');

/*Table structure for table `notice` */

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '公告标题',
  `detail` varchar(300) DEFAULT NULL COMMENT '公告详细内容',
  `date` date DEFAULT NULL COMMENT '公告创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `notice` */

insert  into `notice`(`id`,`title`,`detail`,`date`) values (1,'本网站用户须知','哈尔滨租房网站为广大在哈尔滨内有租房需求的人士提供便捷的平台，无中间商赚差价！','2019-05-01'),(3,'测试公告','测试公告内容','2019-05-05');

/*Table structure for table `rent_info` */

DROP TABLE IF EXISTS `rent_info`;

CREATE TABLE `rent_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '房源标题',
  `type` varchar(20) NOT NULL COMMENT '户型',
  `area` double DEFAULT NULL COMMENT '面积',
  `category1` varchar(20) DEFAULT NULL COMMENT '分类市内哪个区',
  `category2` varchar(20) DEFAULT NULL COMMENT '分类各自区中的哪个小区',
  `detailaddress` varchar(20) NOT NULL COMMENT '详细地址楼-门牌号',
  `rentmoney` double NOT NULL COMMENT '租金',
  `phonenumber` varchar(20) NOT NULL COMMENT '联系电话',
  `createdate` datetime DEFAULT NULL COMMENT '创建时间',
  `more` varchar(300) DEFAULT NULL COMMENT '更多说明',
  `systemboolean` varchar(10) NOT NULL COMMENT '是否为系统房源：是/否',
  `state` varchar(20) NOT NULL COMMENT '房屋状态：未审核/审核通过/审核失败/未出租/已出租',
  `masterid` int(4) NOT NULL COMMENT '房主ID',
  `tenanterid` int(4) DEFAULT NULL COMMENT '承租人ID',
  `img` varchar(300) DEFAULT NULL COMMENT '房屋图片',
  PRIMARY KEY (`id`),
  KEY `fk_masterid_commonuser` (`masterid`),
  KEY `fk_tenanterid_commonuser` (`tenanterid`),
  CONSTRAINT `fk_masterid_commonuser` FOREIGN KEY (`masterid`) REFERENCES `common_user` (`id`),
  CONSTRAINT `fk_tenanterid_commonuser` FOREIGN KEY (`tenanterid`) REFERENCES `common_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `rent_info` */

insert  into `rent_info`(`id`,`title`,`type`,`area`,`category1`,`category2`,`detailaddress`,`rentmoney`,`phonenumber`,`createdate`,`more`,`systemboolean`,`state`,`masterid`,`tenanterid`,`img`) values (14,'便宜租 一室一厨一卫 嘎嘎板正 手慢就没了','一室一厨一卫',56,'南岗区','悦山国际','看房面谈',1500,'17096325156','2019-04-30 21:40:55','来看看,壹品新境小区找不到性价比这么高的房子了，年付1500每月，半年付1600每月。\r\n\r\n哈希万达商圈，西城红场，金爵万象都近，交通嘎嘎便利。\r\n\r\n楼下超市，生鲜，餐饮啥都有，满足日常生活所需。\r\n\r\n真房子，真照片，刚和业主谈完价。\r\n\r\n冰箱，洗衣机，热水器\r\n\r\n煤气灶，油烟机啥都有','是','未租',1,NULL,'upload/70ce7d8dfe304d958ec64f32a3e6e822.jpg'),(16,'银河小区单间拎包入住','单间',30,'松北区','银河小区','看房面谈',800,'170 9632 7839','2019-04-30 21:44:55','1.供暖采光朝向好视野佳，紧邻万达茂商圈，世贸大道，繁华地段交通便利，室内基础设施齐全拎包入住交通便利，周围配套设施齐全，可预约看房 \r\n2.家电齐全，室内环境温馨舒适\r\n3.因家具齐全，所以需有押金，\r\n4.生活氛围很浓，附近有超市，早市夜市，银行，学校，松北购物中心、万达茂、红星美凯龙，商业大学日常所需就在附近，毗邻万达茂，配有基础的家具、家电，独立卫生间，可做饭，精装修，高楼层，视野开阔，您可以尽情享受倚窗俯瞰的豁达畅快！','是','未租',1,NULL,'upload/ff50302ea303436c98bc88aa7c9d2b09.jpg'),(17,'太古小区3楼2室双阳台','2室1厅',47,'道外区','太古小区','看房面谈',1200,'170 7468 0131','2019-04-30 21:51:18','市住房公积金、长青公园、市游泳馆、第四中学、第三中学、医大四院、哈尔滨火车站、南极市场、南极书城、滨江站、承德客运站、黑天鹅家电商场、第一职业高级中学、江边花鸟鱼市场、儿少活动中学、老年大学、儿童医院、道里商圈、南岗商圈、楼下就是公交站台、出行购物方便','是','未租',1,NULL,'upload/8d3db68ba44d48adab7859276c1ec7df.jpg'),(18,'太古小区4楼精装修配套齐全干净拎包入住','一室一厅',45,'道外区','太古小区','看房面谈',1200,'170 7468 0131','2019-04-30 21:52:38','市住房公积金、长青公园、市游泳馆、第四中学、第三中学、医大四院、哈尔滨火车站、南极市场、南极书城、滨江站、承德客运站、黑天鹅家电商场、第一职业高级中学、江边花鸟鱼市场、儿少活动中学、老年大学、儿童医院、道里商圈、南岗商圈、楼下就是公交站台、出行购物方便','是','未租',1,NULL,'upload/9524d35a08c64ac59dc4108676fa3efc.jpg'),(19,'华远水木清华 出租单间 家电齐全 只租女生','单间',40,'松北区','银河小区','水木清华',800,'17000000000','2019-05-05 01:07:48','1.供暖采光朝向好视野佳，紧邻商业大学，万达茂商圈，世贸大道，繁华地段交通便利，室内基础设施齐全拎包入住交通便利，周围配套设施齐全，可预约看房\r\n\r\n2.家电齐全，室内环境温馨舒适\r\n3.因家具齐全，所以需有押金，','是','未租',1,NULL,'upload/ae2e1b5d2c0e49178ef50576d715583e.jpg'),(24,'万达华府高档小区电梯住宅出租家居完善','1室1厅',45,'平房区','万达华府','面谈',900,'17096327736','2019-05-05 20:23:20','宜佳房产 出租 平房区各个小区房源 详情电讯 告诉我你的要求 微信13684636831','否','未租',1,NULL,'upload/df7e2d4a947b4e47b49fb0bbd7bda92d.jpg'),(27,'民航小区3楼押一付一有热水器，冰箱，洗衣机','1室1厅',48,'香坊区','泰山小区','xx',1500,'17074649934','2019-05-06 20:48:08','民航路，民航小区，近邻天鹅饭店，迪康大厦，齐鲁大厦，常青大厦，万达广场','否','已租',11,10,'upload/b717982b52fa47e59c0ef9acd8a108d5.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
