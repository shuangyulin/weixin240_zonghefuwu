/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuanzonghefuwupingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuanzonghefuwupingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuanzonghefuwupingtai`;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2022-04-19 11:11:01','2022-04-19 11:11:01','2022-04-19 11:11:01'),(2,3,'收货人2','17703786902','地址2',1,'2022-04-19 11:11:01','2022-04-19 11:11:01','2022-04-19 11:11:01'),(3,3,'收货人3','17703786903','地址3',1,'2022-04-19 11:11:01','2022-04-19 11:11:01','2022-04-19 11:11:01'),(4,1,'收货人4','17703786904','地址4',1,'2022-04-19 11:11:01','2022-04-19 11:11:01','2022-04-19 11:11:01'),(5,2,'收货人5','17703786905','地址5',1,'2022-04-19 11:11:01','2022-04-19 11:11:01','2022-04-19 11:11:01');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-04-19 11:10:40'),(2,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-04-19 11:10:40'),(3,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-04-19 11:10:40'),(4,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-04-19 11:10:40'),(5,'goods_types','商品类型',1,'商品类型1',NULL,NULL,'2022-04-19 11:10:40'),(6,'goods_types','商品类型',2,'商品类型2',NULL,NULL,'2022-04-19 11:10:40'),(7,'goods_types','商品类型',3,'商品类型3',NULL,NULL,'2022-04-19 11:10:40'),(8,'goods_order_types','订单类型',1,'已支付',NULL,NULL,'2022-04-19 11:10:40'),(9,'goods_order_types','订单类型',2,'退款',NULL,NULL,'2022-04-19 11:10:40'),(10,'goods_order_types','订单类型',3,'已发货',NULL,NULL,'2022-04-19 11:10:40'),(11,'goods_order_types','订单类型',4,'已收货',NULL,NULL,'2022-04-19 11:10:40'),(13,'goods_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-04-19 11:10:40'),(14,'gongao_types','资讯类型',1,'校园新闻',NULL,NULL,'2022-04-19 11:10:40'),(15,'gongao_types','资讯类型',2,'学校通知',NULL,NULL,'2022-04-19 11:10:40'),(16,'gongao_types','资讯类型',3,'学校资讯',NULL,NULL,'2022-04-19 11:10:41'),(17,'gongao_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-19 11:10:41'),(18,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-19 11:10:41'),(19,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-19 11:10:41'),(20,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-19 11:10:41'),(21,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-19 11:10:41'),(22,'news_types','公告类型',3,'活动信息',NULL,NULL,'2022-04-19 11:10:41'),(23,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-19 11:10:41'),(24,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-19 11:10:41'),(25,'shiwuzhaoling_types','物品类型名称',1,'物品类型1',NULL,NULL,'2022-04-19 11:10:41'),(26,'shiwuzhaoling_types','物品类型名称',2,'物品类型2',NULL,NULL,'2022-04-19 11:10:41'),(27,'shiwuzhaoling_types','物品类型名称',3,'物品类型3',NULL,'','2022-04-19 11:10:41'),(28,'status_types','物品状态',1,'未找回',NULL,NULL,'2022-04-19 11:10:41'),(29,'status_types','物品状态',2,'已找回',NULL,NULL,'2022-04-19 11:10:41'),(30,'shiwurenling_yesno_types','审核',1,'未审核',NULL,NULL,'2022-04-19 11:10:41'),(31,'shiwurenling_yesno_types','审核',2,'通过',NULL,NULL,'2022-04-19 11:10:41'),(32,'shiwurenling_yesno_types','审核',3,'拒绝',NULL,NULL,'2022-04-19 11:10:41');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',NULL,1,'2022-04-19 11:11:01','2022-04-19 11:11:01','2022-04-19 11:11:01'),(2,'帖子标题2',1,NULL,'发布内容2',NULL,1,'2022-04-19 11:11:01','2022-04-19 11:11:01','2022-04-19 11:11:01'),(3,'帖子标题3',1,NULL,'发布内容3',NULL,1,'2022-04-19 11:11:01','2022-04-19 11:11:01','2022-04-19 11:11:01'),(4,'帖子标题4',1,NULL,'发布内容4',NULL,1,'2022-04-19 11:11:01','2022-04-19 11:11:01','2022-04-19 11:11:01'),(5,'帖子标题5',1,NULL,'发布内容5',NULL,1,'2022-04-19 11:11:01','2022-04-19 11:11:01','2022-04-19 11:11:01'),(6,NULL,1,NULL,'评论1123',5,2,'2022-04-19 15:49:16',NULL,'2022-04-19 15:49:16'),(7,NULL,NULL,1,'管理评论23',5,2,'2022-04-19 16:09:32',NULL,'2022-04-19 16:09:32');

/*Table structure for table `gongao` */

DROP TABLE IF EXISTS `gongao`;

CREATE TABLE `gongao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongao_name` varchar(200) DEFAULT NULL COMMENT '资讯标题  Search111',
  `gongao_types` int(11) DEFAULT NULL COMMENT '资讯类型  Search111',
  `gongao_photo` varchar(200) DEFAULT NULL COMMENT '资讯图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `gongao_content` text COMMENT '资讯详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='校园资讯';

/*Data for the table `gongao` */

insert  into `gongao`(`id`,`gongao_name`,`gongao_types`,`gongao_photo`,`insert_time`,`gongao_content`,`create_time`) values (1,'资讯标题1',3,'http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/1650339713789.jpeg','2022-04-19 11:11:01','<p>资讯详情1</p>','2022-04-19 11:11:01'),(2,'资讯标题2',1,'http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/1650339704590.jpeg','2022-04-19 11:11:01','<p>资讯详情2</p>','2022-04-19 11:11:01'),(3,'资讯标题3',2,'http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/1650339697398.jpeg','2022-04-19 11:11:01','<p>资讯详情3</p>','2022-04-19 11:11:01'),(4,'资讯标题4',2,'http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/1650339688270.jpg','2022-04-19 11:11:01','<p>资讯详情4</p>','2022-04-19 11:11:01'),(5,'资讯标题5',3,'http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/1650339680207.jpg','2022-04-19 11:11:01','<p>资讯详情5</p>','2022-04-19 11:11:01');

/*Table structure for table `gongao_collection` */

DROP TABLE IF EXISTS `gongao_collection`;

CREATE TABLE `gongao_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongao_id` int(11) DEFAULT NULL COMMENT '校园资讯',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `gongao_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='校园资讯收藏';

/*Data for the table `gongao_collection` */

insert  into `gongao_collection`(`id`,`gongao_id`,`yonghu_id`,`gongao_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-04-19 11:11:01','2022-04-19 11:11:01'),(2,2,3,1,'2022-04-19 11:11:01','2022-04-19 11:11:01'),(4,4,2,1,'2022-04-19 11:11:01','2022-04-19 11:11:01'),(5,5,2,1,'2022-04-19 11:11:01','2022-04-19 11:11:01'),(6,5,1,1,'2022-04-19 15:48:42','2022-04-19 15:48:42');

/*Table structure for table `gongao_liuyan` */

DROP TABLE IF EXISTS `gongao_liuyan`;

CREATE TABLE `gongao_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongao_id` int(11) DEFAULT NULL COMMENT '校园资讯',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `gongao_liuyan_text` text COMMENT '评论内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='校园资讯评论';

/*Data for the table `gongao_liuyan` */

insert  into `gongao_liuyan`(`id`,`gongao_id`,`yonghu_id`,`gongao_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评论内容1','2022-04-19 11:11:01','回复信息1','2022-04-19 11:11:01','2022-04-19 11:11:01'),(2,2,1,'评论内容2','2022-04-19 11:11:01','回复信息2','2022-04-19 11:11:01','2022-04-19 11:11:01'),(3,3,2,'评论内容3','2022-04-19 11:11:01','回复信息3','2022-04-19 11:11:01','2022-04-19 11:11:01'),(4,4,1,'评论内容4','2022-04-19 11:11:01','回复信息4','2022-04-19 11:11:01','2022-04-19 11:11:01'),(5,5,3,'评论内容5','2022-04-19 11:11:01','回复信息5132312312','2022-04-19 16:09:43','2022-04-19 11:11:01');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `goods_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号  Search111 ',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `goods_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `goods_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `goods_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `goods_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `goods_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价 ',
  `goods_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `goods_content` text COMMENT '商品介绍 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `goods_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `goods` */

insert  into `goods`(`id`,`goods_uuid_number`,`goods_name`,`goods_photo`,`goods_types`,`goods_kucun_number`,`goods_old_money`,`goods_new_money`,`goods_clicknum`,`goods_content`,`yonghu_id`,`shangxia_types`,`goods_delete`,`create_time`) values (1,'165033786119211','商品名称1','http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/goods1.jpg',2,101,'722.00','212.12',379,'商品介绍1',1,1,1,'2022-04-19 11:11:01'),(2,'16503378611945','商品名称2','http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/goods2.jpg',1,102,'783.42','467.51',252,'商品介绍2',2,1,1,'2022-04-19 11:11:01'),(3,'16503378611948','商品名称3','http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/goods3.jpg',2,102,'540.87','159.52',68,'商品介绍3',3,1,1,'2022-04-19 11:11:01'),(4,'16503378611943','商品名称4','http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/goods4.jpg',3,103,'612.55','86.36',48,'商品介绍4',2,1,1,'2022-04-19 11:11:01'),(5,'165033786119410','商品名称5','http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/goods5.jpg',2,105,'843.07','469.89',453,'商品介绍5',1,2,1,'2022-04-19 11:11:01');

/*Table structure for table `goods_commentback` */

DROP TABLE IF EXISTS `goods_commentback`;

CREATE TABLE `goods_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `goods_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `goods_commentback` */

insert  into `goods_commentback`(`id`,`goods_id`,`yonghu_id`,`goods_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评价内容1','2022-04-19 11:11:01','回复信息1','2022-04-19 11:11:01','2022-04-19 11:11:01'),(2,2,2,'评价内容2','2022-04-19 11:11:01','回复信息2','2022-04-19 11:11:01','2022-04-19 11:11:01'),(3,3,2,'评价内容3','2022-04-19 11:11:01','回复信息3','2022-04-19 11:11:01','2022-04-19 11:11:01'),(4,4,2,'评价内容4','2022-04-19 11:11:01','回复信息4','2022-04-19 11:11:01','2022-04-19 11:11:01'),(5,5,3,'评价内容5','2022-04-19 11:11:01','回复信息5','2022-04-19 11:11:01','2022-04-19 11:11:01');

/*Table structure for table `goods_order` */

DROP TABLE IF EXISTS `goods_order`;

CREATE TABLE `goods_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `goods_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `goods_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `goods_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `goods_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `goods_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `goods_order_text` text COMMENT '订单备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `goods_order` */

insert  into `goods_order`(`id`,`goods_order_uuid_number`,`address_id`,`goods_id`,`yonghu_id`,`buy_number`,`goods_order_true_price`,`goods_order_courier_name`,`goods_order_courier_number`,`goods_order_types`,`goods_order_payment_types`,`goods_order_text`,`insert_time`,`create_time`) values (1,'1650352756945',4,4,1,1,'86.36','顺丰','SF:13123123123123123',4,1,NULL,'2022-04-19 15:19:17','2022-04-19 15:19:17'),(2,'1650354235999',4,2,1,1,'467.51',NULL,NULL,2,1,NULL,'2022-04-19 15:43:56','2022-04-19 15:43:56'),(3,'1650354492424',4,3,1,1,'159.52','京东','JD:11223123124125123123',4,1,NULL,'2022-04-19 15:48:12','2022-04-19 15:48:12');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/news1.jpg','2022-04-19 11:11:01','公告详情1','2022-04-19 11:11:01'),(2,'公告标题2',3,'http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/news2.jpg','2022-04-19 11:11:01','公告详情2','2022-04-19 11:11:01'),(3,'公告标题3',3,'http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/news3.jpg','2022-04-19 11:11:01','公告详情3','2022-04-19 11:11:01'),(4,'公告标题4',2,'http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/news4.jpg','2022-04-19 11:11:01','公告详情4','2022-04-19 11:11:01'),(5,'公告标题5',1,'http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/news5.jpg','2022-04-19 11:11:01','公告详情5','2022-04-19 11:11:01');

/*Table structure for table `shiwurenling` */

DROP TABLE IF EXISTS `shiwurenling`;

CREATE TABLE `shiwurenling` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaoyuanshiwuzhaoling_id` int(11) DEFAULT NULL COMMENT '失物id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '认领用户',
  `shiwurenling_text` text COMMENT '认领凭证',
  `shiwurenling_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态',
  `shiwurenling_yesno_text` text COMMENT '审核结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '认领时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='失物认领';

/*Data for the table `shiwurenling` */

insert  into `shiwurenling`(`id`,`xiaoyuanshiwuzhaoling_id`,`yonghu_id`,`shiwurenling_text`,`shiwurenling_yesno_types`,`shiwurenling_yesno_text`,`insert_time`,`create_time`) values (6,3,1,'凭证123123',1,'','2022-04-19 14:51:12','2022-04-19 14:51:12'),(7,2,1,'认领凭证11111',1,'','2022-04-19 15:44:22','2022-04-19 15:44:22'),(8,2,1,'认领凭证1231',1,'','2022-04-19 15:49:01','2022-04-19 15:49:01'),(10,4,1,'123',2,'','2022-04-19 16:11:39','2022-04-19 16:11:39');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','zx110e5fs1z8le0jlxrdpgu57fwjcyjc','2022-04-19 11:40:40','2022-04-19 17:18:52'),(2,1,'a1','yonghu','用户','wsicenhbmhyoeqr0zsc4mn02ulj62yo8','2022-04-19 13:14:52','2022-04-19 17:11:13'),(3,2,'a2','yonghu','用户','4b2edogy76cge7huhyjo4s5fhyjwo3sx','2022-04-19 15:22:43','2022-04-19 16:56:09'),(4,3,'a3','yonghu','用户','78dou0mnzdvjxnd5sn3q8q4aropud67a','2022-04-19 15:49:57','2022-04-19 17:12:31');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `xiaoyuanshiwuzhaoling` */

DROP TABLE IF EXISTS `xiaoyuanshiwuzhaoling`;

CREATE TABLE `xiaoyuanshiwuzhaoling` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaoyuanshiwuzhaoling_uuid_number` varchar(200) DEFAULT NULL COMMENT '失物编号',
  `xiaoyuanshiwuzhaoling_name` varchar(200) DEFAULT NULL COMMENT '物品名称 Search111',
  `shiwuzhaoling_types` int(11) DEFAULT NULL COMMENT '物品类型 Search111',
  `status_types` int(11) DEFAULT NULL COMMENT '物品状态 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiaoyuanshiwuzhaoling_photo` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `xiaoyuanshiwuzhaoling_time` timestamp NULL DEFAULT NULL COMMENT '拾遗时间',
  `xiaoyuanshiwuzhaoling_dizhi` varchar(200) DEFAULT NULL COMMENT '拾遗地址',
  `xiaoyuanshiwuzhaoling_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='失物招领';

/*Data for the table `xiaoyuanshiwuzhaoling` */

insert  into `xiaoyuanshiwuzhaoling`(`id`,`xiaoyuanshiwuzhaoling_uuid_number`,`xiaoyuanshiwuzhaoling_name`,`shiwuzhaoling_types`,`status_types`,`yonghu_id`,`xiaoyuanshiwuzhaoling_photo`,`xiaoyuanshiwuzhaoling_time`,`xiaoyuanshiwuzhaoling_dizhi`,`xiaoyuanshiwuzhaoling_content`,`create_time`) values (1,'165033786122015','物品名称1',3,1,3,'http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/1650339878117.jpg','2022-04-19 11:11:01','拾遗地址1','<p>详情1</p>','2022-04-19 11:11:01'),(2,'165033786122016','物品名称2',2,1,2,'http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/1650339866809.jpg','2022-04-19 11:11:01','拾遗地址2','<p>详情2</p>','2022-04-19 11:11:01'),(3,'165033786122017','物品名称3',3,1,1,'http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/1650339839801.jpg','2022-04-19 11:11:01','拾遗地址3','<p>详情3</p>','2022-04-19 11:11:01'),(4,'165033786122012','物品名称4',2,2,3,'http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/1650339823990.jpeg','2022-04-19 11:11:01','拾遗地址4','<p>详情4</p>','2022-04-19 11:11:01'),(5,'165033786122019','物品名称5',3,2,1,'http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/1650339806758.webp','2022-04-19 11:11:01','拾遗地址5','<p>详情5</p>','2022-04-19 11:11:01');

/*Table structure for table `xiaoyuanshiwuzhaoling_liuyan` */

DROP TABLE IF EXISTS `xiaoyuanshiwuzhaoling_liuyan`;

CREATE TABLE `xiaoyuanshiwuzhaoling_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaoyuanshiwuzhaoling_id` int(11) DEFAULT NULL COMMENT '物品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiaoyuanshiwuzhaoling_liuyan_text` text COMMENT '评论内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='失物招领评论';

/*Data for the table `xiaoyuanshiwuzhaoling_liuyan` */

insert  into `xiaoyuanshiwuzhaoling_liuyan`(`id`,`xiaoyuanshiwuzhaoling_id`,`yonghu_id`,`xiaoyuanshiwuzhaoling_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,2,'评论内容1','回复信息1','2022-04-19 11:11:01','2022-04-19 11:11:01','2022-04-19 11:11:01'),(2,2,2,'评论内容2','回复信息2','2022-04-19 11:11:01','2022-04-19 11:11:01','2022-04-19 11:11:01'),(3,3,1,'评论内容3','回复信息3','2022-04-19 11:11:01','2022-04-19 11:11:01','2022-04-19 11:11:01'),(4,4,3,'评论内容4','回复信息4','2022-04-19 11:11:01','2022-04-19 11:11:01','2022-04-19 11:11:01'),(5,5,2,'评论内容5','回复信息5','2022-04-19 11:11:01','2022-04-19 11:11:01','2022-04-19 11:11:01');

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
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/yonghu1.jpg',1,'1@qq.com','9885.12','2022-04-19 11:11:01'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/yonghu2.jpg',2,'2@qq.com','797.04','2022-04-19 11:11:01'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/xiaoyuanzonghefuwupingtai/upload/yonghu3.jpg',2,'3@qq.com','923.03','2022-04-19 11:11:01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
