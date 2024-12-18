/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - dianyingjiaoliupingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dianyingjiaoliupingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dianyingjiaoliupingtai`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='客服聊天';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'111111111','2023-04-26 17:12:03',NULL,NULL,2,1,'2023-04-26 17:12:04'),(2,1,NULL,NULL,'2222222222222','2023-04-26 17:12:42',NULL,2,'2023-04-26 17:12:42');

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

/*Table structure for table `dianying` */

DROP TABLE IF EXISTS `dianying`;

CREATE TABLE `dianying` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `dianying_name` varchar(200) DEFAULT NULL COMMENT '电影名称 Search111 ',
  `dianying_types` int(11) DEFAULT NULL COMMENT '电影类型 Search111',
  `dianying_photo` varchar(200) DEFAULT NULL COMMENT '封    面',
  `dianying_video` varchar(200) DEFAULT NULL COMMENT '视    频',
  `dianying_shijian` varchar(200) DEFAULT NULL COMMENT '更新时间',
  `dianying_faxing` varchar(200) DEFAULT NULL COMMENT '出品公司',
  `dianying_add` varchar(200) DEFAULT NULL COMMENT '地    区',
  `dianying_gs` varchar(200) DEFAULT NULL COMMENT '发行公司',
  `chuchang_time` date DEFAULT NULL COMMENT '发行日期',
  `dianying_sc` varchar(200) DEFAULT NULL COMMENT '时    长',
  `dianying_daoyan` varchar(200) DEFAULT NULL COMMENT '导    演',
  `dianying_new_money` decimal(10,2) DEFAULT NULL COMMENT '价    格',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `dianying_content` text COMMENT '电影详情',
  `dianying_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='电影信息';

/*Data for the table `dianying` */

insert  into `dianying`(`id`,`dianying_name`,`dianying_types`,`dianying_photo`,`dianying_video`,`dianying_shijian`,`dianying_faxing`,`dianying_add`,`dianying_gs`,`chuchang_time`,`dianying_sc`,`dianying_daoyan`,`dianying_new_money`,`zan_number`,`cai_number`,`dianying_content`,`dianying_delete`,`insert_time`,`create_time`) values (1,'电影名称1',2,'upload/dianying1.jpg','upload/video.mp4','更新时间1','出品公司1','地    区1','发行公司1','2023-04-26','时    长1','导    演1','251.37',59,370,'电影详情1',1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(2,'电影名称2',3,'upload/dianying2.jpg','upload/video.mp4','更新时间2','出品公司2','地    区2','发行公司2','2023-04-26','时    长2','导    演2','466.16',320,495,'电影详情2',1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(3,'电影名称3',2,'upload/dianying3.jpg','upload/video.mp4','更新时间3','出品公司3','地    区3','发行公司3','2023-04-26','时    长3','导    演3','286.92',84,141,'电影详情3',1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(4,'电影名称4',2,'upload/dianying4.jpg','upload/video.mp4','更新时间4','出品公司4','地    区4','发行公司4','2023-04-26','时    长4','导    演4','329.48',97,421,'电影详情4',1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(5,'电影名称5',1,'upload/dianying5.jpg','upload/video.mp4','更新时间5','出品公司5','地    区5','发行公司5','2023-04-26','时    长5','导    演5','168.76',414,22,'电影详情5',1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(6,'电影名称6',1,'upload/dianying6.jpg','upload/video.mp4','更新时间6','出品公司6','地    区6','发行公司6','2023-04-26','时    长6','导    演6','477.95',486,60,'电影详情6',1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(7,'电影名称7',3,'upload/dianying7.jpg','upload/video.mp4','更新时间7','出品公司7','地    区7','发行公司7','2023-04-26','时    长7','导    演7','35.85',329,400,'电影详情7',1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(8,'电影名称8',3,'upload/dianying8.jpg','upload/video.mp4','更新时间8','出品公司8','地    区8','发行公司8','2023-04-26','时    长8','导    演8','451.17',253,105,'电影详情8',1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(9,'电影名称9',2,'upload/dianying9.jpg','upload/video.mp4','更新时间9','出品公司9','地    区9','发行公司9','2023-04-26','时    长9','导    演9','396.83',270,349,'电影详情9',1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(10,'电影名称10',3,'upload/dianying10.jpg','upload/video.mp4','更新时间10','出品公司10','地    区10','发行公司10','2023-04-26','时    长10','导    演10','58.42',167,183,'电影详情10',1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(11,'电影名称11',1,'upload/dianying11.jpg','upload/video.mp4','更新时间11','出品公司11','地    区11','发行公司11','2023-04-26','时    长11','导    演11','316.51',78,114,'电影详情11',1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(12,'电影名称12',1,'upload/dianying12.jpg','upload/video.mp4','更新时间12','出品公司12','地    区12','发行公司12','2023-04-26','时    长12','导    演12','320.51',188,407,'电影详情12',1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(13,'电影名称13',2,'upload/dianying13.jpg','upload/video.mp4','更新时间13','出品公司13','地    区13','发行公司13','2023-04-26','时    长13','导    演13','195.87',217,492,'电影详情13',1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(14,'电影名称14',1,'upload/dianying14.jpg','upload/video.mp4','更新时间14','出品公司14','地    区14','发行公司14','2023-04-26','时    长14','导    演14','161.28',450,296,'<p>电影详情14</p>',1,'2023-04-26 10:57:47','2023-04-26 10:57:47');

/*Table structure for table `dianying_collection` */

DROP TABLE IF EXISTS `dianying_collection`;

CREATE TABLE `dianying_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianying_id` int(11) DEFAULT NULL COMMENT '电影',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dianying_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='电影收藏';

/*Data for the table `dianying_collection` */

insert  into `dianying_collection`(`id`,`dianying_id`,`yonghu_id`,`dianying_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(2,2,2,1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(3,3,1,1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(4,4,1,1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(5,5,2,1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(7,7,2,1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(8,8,2,1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(12,12,2,1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(13,13,2,1,'2023-04-26 10:57:47','2023-04-26 10:57:47'),(14,14,3,1,'2023-04-26 10:57:47','2023-04-26 10:57:47');

/*Table structure for table `dianying_liuyan` */

DROP TABLE IF EXISTS `dianying_liuyan`;

CREATE TABLE `dianying_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianying_id` int(11) DEFAULT NULL COMMENT '电影',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dianying_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='电影评价';

/*Data for the table `dianying_liuyan` */

insert  into `dianying_liuyan`(`id`,`dianying_id`,`yonghu_id`,`dianying_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-04-26 10:57:47','回复信息1','2023-04-26 10:57:47','2023-04-26 10:57:47'),(2,2,3,'留言内容2','2023-04-26 10:57:47','回复信息2','2023-04-26 10:57:47','2023-04-26 10:57:47'),(3,3,1,'留言内容3','2023-04-26 10:57:47','回复信息3','2023-04-26 10:57:47','2023-04-26 10:57:47'),(4,4,3,'留言内容4','2023-04-26 10:57:47','回复信息4','2023-04-26 10:57:47','2023-04-26 10:57:47'),(5,5,2,'留言内容5','2023-04-26 10:57:47','回复信息5','2023-04-26 10:57:47','2023-04-26 10:57:47'),(6,6,2,'留言内容6','2023-04-26 10:57:47','回复信息6','2023-04-26 10:57:47','2023-04-26 10:57:47'),(7,7,3,'留言内容7','2023-04-26 10:57:47','回复信息7','2023-04-26 10:57:47','2023-04-26 10:57:47'),(8,8,1,'留言内容8','2023-04-26 10:57:47','回复信息8','2023-04-26 10:57:47','2023-04-26 10:57:47'),(9,9,1,'留言内容9','2023-04-26 10:57:47','回复信息9','2023-04-26 10:57:47','2023-04-26 10:57:47'),(10,10,3,'留言内容10','2023-04-26 10:57:47','回复信息10','2023-04-26 10:57:47','2023-04-26 10:57:47'),(11,11,3,'留言内容11','2023-04-26 10:57:47','回复信息11','2023-04-26 10:57:47','2023-04-26 10:57:47'),(12,12,1,'留言内容12','2023-04-26 10:57:47','回复信息12','2023-04-26 10:57:47','2023-04-26 10:57:47'),(13,13,2,'留言内容13','2023-04-26 10:57:47','回复信息13','2023-04-26 10:57:47','2023-04-26 10:57:47'),(14,14,3,'留言内容14','2023-04-26 10:57:47','回复信息14','2023-04-26 10:57:47','2023-04-26 10:57:47'),(15,14,1,'11111111111','2023-04-26 17:10:21','22222222222','2023-04-26 17:12:58','2023-04-26 17:10:21');

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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (103,'dianying_types','电影类型',1,'电影类型1',NULL,NULL,'2023-04-26 10:44:06'),(104,'dianying_types','电影类型',2,'电影类型2',NULL,NULL,'2023-04-26 10:44:06'),(105,'dianying_types','电影类型',3,'电影类型3',NULL,NULL,'2023-04-26 10:44:06'),(106,'dianying_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-26 10:44:06'),(107,'dianying_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-26 10:44:06'),(108,'dianying_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-26 10:44:06'),(109,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-04-26 10:44:06'),(110,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-04-26 10:44:06'),(111,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-04-26 10:44:06'),(112,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-04-26 10:44:06'),(113,'forum_types','帖子类型',1,'剧本编写',NULL,NULL,'2023-04-26 10:44:07'),(114,'forum_types','帖子类型',2,'日常分享',NULL,NULL,'2023-04-26 10:44:07'),(115,'forum_types','帖子类型',3,'电影文化探讨',NULL,NULL,'2023-04-26 10:44:07'),(116,'forum_types','帖子类型',4,'观影攻略',NULL,NULL,'2023-04-26 10:44:07'),(117,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-26 10:44:07'),(118,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-26 10:44:07'),(119,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-26 10:44:07'),(120,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-26 10:44:07'),(121,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-26 10:44:07'),(122,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-26 10:44:07'),(123,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-04-26 10:44:07');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='论坛信息';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_types`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,3,'发布内容1',118,1,'2023-04-26 10:57:47','2023-04-26 10:57:47','2023-04-26 10:57:47'),(2,'帖子标题2',2,NULL,2,'发布内容2',102,1,'2023-04-26 10:57:47','2023-04-26 10:57:47','2023-04-26 10:57:47'),(3,'帖子标题3',3,NULL,2,'发布内容3',424,1,'2023-04-26 10:57:47','2023-04-26 10:57:47','2023-04-26 10:57:47'),(4,'帖子标题4',3,NULL,1,'发布内容4',125,1,'2023-04-26 10:57:47','2023-04-26 10:57:47','2023-04-26 10:57:47'),(5,'帖子标题5',1,NULL,2,'发布内容5',218,1,'2023-04-26 10:57:47','2023-04-26 10:57:47','2023-04-26 10:57:47'),(6,'帖子标题6',2,NULL,4,'发布内容6',266,1,'2023-04-26 10:57:47','2023-04-26 10:57:47','2023-04-26 10:57:47'),(7,'帖子标题7',3,NULL,2,'发布内容7',213,1,'2023-04-26 10:57:47','2023-04-26 10:57:47','2023-04-26 10:57:47'),(8,'帖子标题8',3,NULL,2,'发布内容8',296,1,'2023-04-26 10:57:47','2023-04-26 10:57:47','2023-04-26 10:57:47'),(9,'帖子标题9',3,NULL,1,'发布内容9',168,1,'2023-04-26 10:57:47','2023-04-26 10:57:47','2023-04-26 10:57:47'),(10,'帖子标题10',1,NULL,2,'发布内容10',330,1,'2023-04-26 10:57:47','2023-04-26 10:57:47','2023-04-26 10:57:47'),(11,'帖子标题11',3,NULL,1,'发布内容11',225,1,'2023-04-26 10:57:47','2023-04-26 10:57:47','2023-04-26 10:57:47'),(12,'帖子标题12',2,NULL,4,'发布内容12',437,1,'2023-04-26 10:57:47','2023-04-26 10:57:47','2023-04-26 10:57:47'),(13,'帖子标题13',1,NULL,4,'发布内容13',103,1,'2023-04-26 10:57:47','2023-04-26 10:57:47','2023-04-26 10:57:47'),(14,'帖子标题14',3,NULL,4,'发布内容14',198,1,'2023-04-26 10:57:47','2023-04-26 10:57:47','2023-04-26 10:57:47'),(15,NULL,1,NULL,NULL,'11111111111111111111111111',14,2,'2023-04-26 17:11:55',NULL,'2023-04-26 17:11:55'),(16,NULL,NULL,1,NULL,'2',14,2,'2023-04-26 17:13:10',NULL,'2023-04-26 17:13:10');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'upload/news1.jpg','2023-04-26 10:57:47','公告详情1','2023-04-26 10:57:47'),(2,'公告标题2',2,'upload/news2.jpg','2023-04-26 10:57:47','公告详情2','2023-04-26 10:57:47'),(3,'公告标题3',1,'upload/news3.jpg','2023-04-26 10:57:47','公告详情3','2023-04-26 10:57:47'),(4,'公告标题4',1,'upload/news4.jpg','2023-04-26 10:57:47','公告详情4','2023-04-26 10:57:47'),(5,'公告标题5',1,'upload/news5.jpg','2023-04-26 10:57:47','公告详情5','2023-04-26 10:57:47'),(6,'公告标题6',2,'upload/news6.jpg','2023-04-26 10:57:47','公告详情6','2023-04-26 10:57:47'),(7,'公告标题7',1,'upload/news7.jpg','2023-04-26 10:57:47','公告详情7','2023-04-26 10:57:47'),(8,'公告标题8',3,'upload/news8.jpg','2023-04-26 10:57:47','公告详情8','2023-04-26 10:57:47'),(9,'公告标题9',3,'upload/news9.jpg','2023-04-26 10:57:47','公告详情9','2023-04-26 10:57:47'),(10,'公告标题10',1,'upload/news10.jpg','2023-04-26 10:57:47','公告详情10','2023-04-26 10:57:47'),(11,'公告标题11',2,'upload/news11.jpg','2023-04-26 10:57:47','公告详情11','2023-04-26 10:57:47'),(12,'公告标题12',3,'upload/news12.jpg','2023-04-26 10:57:47','公告详情12','2023-04-26 10:57:47'),(13,'公告标题13',1,'upload/news13.jpg','2023-04-26 10:57:47','公告详情13','2023-04-26 10:57:47'),(14,'公告标题14',1,'upload/news14.jpg','2023-04-26 10:57:47','公告详情14','2023-04-26 10:57:47');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '采购员id',
  `username` varchar(100) NOT NULL COMMENT '采购员名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','1b0jekjclln9bpuff36qe7odohe2crr6','2023-04-26 16:34:54','2023-04-26 18:30:44'),(2,1,'a1','yonghu','用户','urspee8p9a9co46nu3z45erjf39qo8or','2023-04-26 16:43:40','2023-04-26 18:24:43');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '采购员名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-26 10:44:06');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','upload/yonghu1.jpg','17703786901','410224199010102001',1,1,'2023-04-26 10:57:47'),(2,'a2','123456','用户姓名2','upload/yonghu2.jpg','17703786902','410224199010102002',1,1,'2023-04-26 10:57:47'),(3,'a3','123456','用户姓名3','upload/yonghu3.jpg','17703786903','410224199010102003',1,1,'2023-04-26 10:57:47');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
