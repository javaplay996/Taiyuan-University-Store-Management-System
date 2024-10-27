/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xueyuanshangpuguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xueyuanshangpuguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xueyuanshangpuguanlixitong`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,1,'收货人1','17703786901','地址1',1,'2023-03-22 17:14:56','2023-03-22 17:14:56','2023-03-22 17:14:56'),(2,3,'收货人2','17703786902','地址2',1,'2023-03-22 17:14:56','2023-03-22 17:14:56','2023-03-22 17:14:56'),(3,1,'收货人3','17703786903','地址3',1,'2023-03-22 17:14:56','2023-03-22 17:14:56','2023-03-22 17:14:56'),(4,3,'收货人4','17703786904','地址4',1,'2023-03-22 17:14:56','2023-03-22 17:14:56','2023-03-22 17:14:56'),(5,3,'收货人5','17703786905','地址5',1,'2023-03-22 17:14:56','2023-03-22 17:14:56','2023-03-22 17:14:56'),(6,3,'收货人6','17703786906','地址6',1,'2023-03-22 17:14:56','2023-03-22 17:14:56','2023-03-22 17:14:56'),(7,2,'收货人7','17703786907','地址7',1,'2023-03-22 17:14:56','2023-03-22 17:14:56','2023-03-22 17:14:56'),(8,2,'收货人8','17703786908','地址8',1,'2023-03-22 17:14:56','2023-03-22 17:14:56','2023-03-22 17:14:56'),(9,3,'收货人9','17703786909','地址9',1,'2023-03-22 17:14:56','2023-03-22 17:14:56','2023-03-22 17:14:56'),(10,1,'收货人10','17703786910','地址10',1,'2023-03-22 17:14:56','2023-03-22 17:14:56','2023-03-22 17:14:56'),(11,1,'收货人11','17703786911','地址11',1,'2023-03-22 17:14:56','2023-03-22 17:14:56','2023-03-22 17:14:56'),(12,2,'收货人12','17703786912','地址12',1,'2023-03-22 17:14:56','2023-03-22 17:14:56','2023-03-22 17:14:56'),(13,1,'收货人13','17703786913','地址13',1,'2023-03-22 17:14:56','2023-03-22 17:14:56','2023-03-22 17:14:56'),(14,3,'收货人14','17703786914','地址14',1,'2023-03-22 17:14:56','2023-03-22 17:14:56','2023-03-22 17:14:56'),(15,4,'张5','17788889999','地址111',2,'2023-03-23 11:05:58','2023-03-23 11:05:57','2023-03-23 11:05:58');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-22 17:12:04'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-22 17:12:04'),(3,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-03-22 17:12:04'),(4,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-03-22 17:12:04'),(5,'quyu_types','区域',1,'东',NULL,NULL,'2023-03-22 17:12:04'),(6,'quyu_types','区域',2,'南',NULL,NULL,'2023-03-22 17:12:04'),(7,'quyu_types','区域',3,'西',NULL,NULL,'2023-03-22 17:12:04'),(8,'quyu_types','区域',4,'北',NULL,NULL,'2023-03-22 17:12:05'),(9,'shangjia_xingji_types','商家信用类型',1,'一级',NULL,NULL,'2023-03-22 17:12:05'),(10,'shangjia_xingji_types','商家信用类型',2,'二级',NULL,NULL,'2023-03-22 17:12:05'),(11,'shangjia_xingji_types','商家信用类型',3,'三级',NULL,NULL,'2023-03-22 17:12:05'),(12,'shangjia_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-03-22 17:12:05'),(13,'shangjia_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-03-22 17:12:05'),(14,'shangjia_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-22 17:12:05'),(15,'tuijian_types','推荐',1,'否',NULL,NULL,'2023-03-22 17:12:05'),(16,'tuijian_types','推荐',2,'是',NULL,NULL,'2023-03-22 17:12:05'),(17,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-03-22 17:12:05'),(18,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-03-22 17:12:05'),(19,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-03-22 17:12:05'),(20,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-03-22 17:12:05'),(21,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-03-22 17:12:05'),(22,'shangpin_types','商品类型',4,'商品类型4',NULL,NULL,'2023-03-22 17:12:05'),(23,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-22 17:12:05'),(24,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-03-22 17:12:05'),(25,'shangpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-03-22 17:12:05'),(26,'shangpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-03-22 17:12:05'),(27,'shangpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-03-22 17:12:05'),(28,'shangpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-03-22 17:12:05'),(29,'shangpin_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-03-22 17:12:05'),(30,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-03-22 17:12:05'),(31,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-03-22 17:12:05'),(32,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-22 17:12:05'),(33,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-22 17:12:05'),(34,'shangpin_types','商品类型',5,'商品类型5',NULL,'','2023-03-23 11:10:45');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-03-22 17:14:56','公告详情1','2023-03-22 17:14:56'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-03-22 17:14:56','公告详情2','2023-03-22 17:14:56'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-03-22 17:14:56','公告详情3','2023-03-22 17:14:56'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-03-22 17:14:56','公告详情4','2023-03-22 17:14:56'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-03-22 17:14:56','公告详情5','2023-03-22 17:14:56'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-03-22 17:14:56','公告详情6','2023-03-22 17:14:56'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-03-22 17:14:56','公告详情7','2023-03-22 17:14:56'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-03-22 17:14:56','公告详情8','2023-03-22 17:14:56'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-03-22 17:14:56','公告详情9','2023-03-22 17:14:56'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-03-22 17:14:56','公告详情10','2023-03-22 17:14:56'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-03-22 17:14:56','公告详情11','2023-03-22 17:14:56'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-03-22 17:14:56','公告详情12','2023-03-22 17:14:56'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-03-22 17:14:56','公告详情13','2023-03-22 17:14:56'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-03-22 17:14:56','公告详情14','2023-03-22 17:14:56');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_address` varchar(200) DEFAULT NULL COMMENT '店铺位置',
  `quyu_types` int(11) DEFAULT NULL COMMENT '区域 Search111 ',
  `shangjia_xingji_types` int(11) DEFAULT NULL COMMENT '商家信用类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` longtext COMMENT '商家介绍 ',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `shangjia_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `shangjia_yesno_text` longtext COMMENT '审核意见',
  `shangjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_photo`,`shangjia_address`,`quyu_types`,`shangjia_xingji_types`,`new_money`,`shangjia_content`,`jinyong_types`,`shangjia_yesno_types`,`shangjia_yesno_text`,`shangjia_shenhe_time`,`shangjia_delete`,`create_time`) values (1,'a1','123456','商家名称1','17703786901','1@qq.com','upload/shangjia1.jpg','店铺位置1',1,2,'729.20','<p>商家介绍1哈哈哈</p>',1,2,'同意','2023-03-22 17:14:56',1,'2023-03-22 17:14:56'),(2,'a2','123456','商家名称2','17703786902','2@qq.com','upload/shangjia2.jpg','店铺位置2',3,1,'1631.49','商家介绍2',1,2,'同意','2023-03-22 17:14:56',1,'2023-03-22 17:14:56'),(3,'a3','123456','商家名称3','17703786903','3@qq.com','upload/shangjia3.jpg','店铺位置3',1,1,'4192.50','商家介绍3',1,2,'同意','2023-03-22 17:14:56',1,'2023-03-22 17:14:56'),(4,'a6','123456','商家11111','17788888999','6@qq.com','/upload/1679541084727.jpg','位置1111',2,1,'0.00','<p>规划和环境军军军军军军军ghj</p>',1,2,'同意入驻','2023-03-23 11:11:08',1,'2023-03-23 11:09:54');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `tuijian_types` int(11) DEFAULT NULL COMMENT '推荐 Search111 ',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `shangpin_content` longtext COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangjia_id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_old_money`,`shangpin_new_money`,`tuijian_types`,`shangpin_clicknum`,`shangpin_content`,`shangxia_types`,`shangpin_delete`,`insert_time`,`create_time`) values (1,2,'商品名称1','1679476496773','upload/shangpin1.jpg',2,99,'849.20','400.24',2,428,'商品介绍1',1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(2,3,'商品名称2','1679476496828','upload/shangpin2.jpg',2,102,'731.47','320.20',2,24,'商品介绍2',1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(3,3,'商品名称3','1679476496822','upload/shangpin3.jpg',4,95,'973.48','383.88',2,347,'商品介绍3',1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(4,1,'商品名称4','1679476496789','upload/shangpin4.jpg',2,104,'623.41','373.87',2,414,'商品介绍4',1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(5,1,'商品名称5','1679476496835','upload/shangpin5.jpg',1,101,'829.87','144.80',2,114,'商品介绍5',1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(6,1,'商品名称6','1679476496843','upload/shangpin6.jpg',3,106,'828.25','362.42',1,95,'商品介绍6',1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(7,1,'商品名称7','1679476496828','upload/shangpin7.jpg',3,106,'527.03','381.76',2,140,'商品介绍7',1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(8,2,'商品名称8','1679476496804','upload/shangpin8.jpg',1,108,'641.10','164.01',2,115,'商品介绍8',1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(9,2,'商品名称9','1679476496812','upload/shangpin9.jpg',2,108,'980.60','258.45',1,211,'商品介绍9',1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(10,2,'商品名称10','1679476496794','upload/shangpin10.jpg',3,1010,'911.14','180.14',1,28,'商品介绍10',1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(11,1,'商品名称11','1679476496748','upload/shangpin11.jpg',1,1011,'556.89','130.27',1,296,'<p>商品介绍11挂电话</p>',1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(12,3,'商品名称12','1679476496751','upload/shangpin12.jpg',2,1008,'648.45','211.23',2,339,'商品介绍12',1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(13,2,'商品名称13','1679476496760','upload/shangpin13.jpg',1,1011,'983.50','15.60',2,467,'商品介绍13',1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(14,2,'商品名称14','1679476496760','upload/shangpin14.jpg',3,1014,'603.86','348.09',2,135,'商品介绍14',1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(2,2,2,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(3,3,1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(4,4,1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(5,5,3,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(6,6,3,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(7,7,1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(8,8,1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(9,9,1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(10,10,1,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(11,11,3,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(12,12,3,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(13,13,2,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(14,14,2,1,'2023-03-22 17:14:56','2023-03-22 17:14:56'),(15,1,4,1,'2023-03-23 11:05:15','2023-03-23 11:05:15'),(16,7,4,1,'2023-03-23 11:07:07','2023-03-23 11:07:07');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2023-03-22 17:14:56','回复信息1','2023-03-22 17:14:56','2023-03-22 17:14:56'),(2,2,1,'评价内容2','2023-03-22 17:14:56','回复信息2','2023-03-22 17:14:56','2023-03-22 17:14:56'),(3,3,1,'评价内容3','2023-03-22 17:14:56','回复信息3','2023-03-22 17:14:56','2023-03-22 17:14:56'),(4,4,2,'评价内容4','2023-03-22 17:14:56','回复信息4','2023-03-22 17:14:56','2023-03-22 17:14:56'),(5,5,1,'评价内容5','2023-03-22 17:14:56','回复信息5','2023-03-22 17:14:56','2023-03-22 17:14:56'),(6,6,2,'评价内容6','2023-03-22 17:14:56','回复信息6','2023-03-22 17:14:56','2023-03-22 17:14:56'),(7,7,1,'评价内容7','2023-03-22 17:14:56','回复信息7','2023-03-22 17:14:56','2023-03-22 17:14:56'),(8,8,3,'评价内容8','2023-03-22 17:14:56','回复信息8','2023-03-22 17:14:56','2023-03-22 17:14:56'),(9,9,2,'评价内容9','2023-03-22 17:14:56','回复信息9','2023-03-22 17:14:56','2023-03-22 17:14:56'),(10,10,2,'评价内容10','2023-03-22 17:14:56','回复信息10','2023-03-22 17:14:56','2023-03-22 17:14:56'),(11,11,3,'评价内容11','2023-03-22 17:14:56','回复信息11','2023-03-22 17:14:56','2023-03-22 17:14:56'),(12,12,1,'评价内容12','2023-03-22 17:14:56','回复信息12','2023-03-22 17:14:56','2023-03-22 17:14:56'),(13,13,2,'评价内容13','2023-03-22 17:14:56','回复信息13','2023-03-22 17:14:56','2023-03-22 17:14:56'),(14,14,1,'评价内容14','2023-03-22 17:14:56','回复信息14','2023-03-22 17:14:56','2023-03-22 17:14:56'),(15,7,4,'hjj佛挡杀佛','2023-03-23 11:12:46',NULL,NULL,'2023-03-23 11:12:46');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_courier_name`,`shangpin_order_courier_number`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1679477947015',11,13,1,1,'15.60',NULL,NULL,101,1,'2023-03-22 17:39:07','2023-03-22 17:39:07'),(2,'1679477957788',11,3,1,3,'1151.64',NULL,NULL,101,1,'2023-03-22 17:39:18','2023-03-22 17:39:18'),(3,'1679477966284',3,3,1,3,'1151.64',NULL,NULL,101,1,'2023-03-22 17:39:26','2023-03-22 17:39:26'),(4,'1679477966284',3,13,1,1,'15.60',NULL,NULL,101,1,'2023-03-22 17:39:26','2023-03-22 17:39:26'),(5,'1679540788278',15,12,4,2,'422.46',NULL,NULL,101,1,'2023-03-23 11:06:28','2023-03-23 11:06:28'),(6,'1679540794847',15,12,4,2,'422.46',NULL,NULL,101,1,'2023-03-23 11:06:35','2023-03-23 11:06:35'),(7,'1679540794847',15,3,4,2,'767.76',NULL,NULL,101,1,'2023-03-23 11:06:35','2023-03-23 11:06:35'),(8,'1679540794847',15,1,4,2,'800.48',NULL,NULL,101,1,'2023-03-23 11:06:35','2023-03-23 11:06:35'),(9,'1679540840203',15,5,4,2,'289.60',NULL,NULL,101,1,'2023-03-23 11:07:20','2023-03-23 11:07:20'),(10,'1679540922428',15,5,4,2,'289.60',NULL,NULL,101,1,'2023-03-23 11:08:42','2023-03-23 11:08:42'),(11,'1679540922428',15,7,4,1,'381.76','圆通','2415615',105,1,'2023-03-23 11:08:42','2023-03-23 11:08:42'),(12,'1679540922428',15,9,4,1,'258.45',NULL,NULL,101,1,'2023-03-23 11:08:42','2023-03-23 11:08:42');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '老师id',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','sl26vbgaraubxworvnas6dxzepos8kkc','2023-03-22 17:21:14','2023-03-23 12:11:54'),(2,1,'a1','yonghu','用户','wcb9srfzrmvti1k3hq8eaqct5lb26s6g','2023-03-22 17:38:11','2023-03-23 12:04:00'),(3,1,'a1','shangjia','商家','h4dqd741ebfgrigcgzslu6f7fp3dmyha','2023-03-22 17:46:02','2023-03-23 12:16:45'),(4,2,'a2','shangjia','商家','k0cizoza2xnkbyzcpno1z2sjf1irbdn2','2023-03-22 17:46:19','2023-03-22 18:46:19'),(5,4,'a5','yonghu','用户','izwe936185xi6g8kfaptaebhts7nc4yb','2023-03-23 11:04:53','2023-03-23 12:12:37'),(6,4,'a6','shangjia','商家','nkic3wq4xrwtjfjh229sf4eia9fkuala','2023-03-23 11:11:42','2023-03-23 12:11:42');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-22 17:12:04');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`jinyong_types`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','98318.92',1,'2023-03-22 17:14:56'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','469.02',1,'2023-03-22 17:14:56'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','272.24',1,'2023-03-22 17:14:56'),(4,'a5','123456','张5','17788889999','111777888899999999','upload/1679540738554.jpg',2,'5@qq.com','96366.43',1,'2023-03-23 11:04:49');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
