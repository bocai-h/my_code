/*
SQLyog Community Edition- MySQL GUI v6.54
MySQL - 5.5.25a : Database - weizhang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`weizhang` /*!40100 DEFAULT CHARACTER SET gb2312 */;

USE `weizhang`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `creattime` varchar(50) DEFAULT NULL,
  `flag` int(4) DEFAULT NULL,
  `isuse` int(4) DEFAULT NULL,
  `logintimes` int(4) DEFAULT NULL,
  `quanxian` varchar(1000) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`,`creattime`,`flag`,`isuse`,`logintimes`,`quanxian`) values (1,'admin','ae7783f0ae4cb82dfe39bb4ec4a53047','2014-4-25 02:19:12',1,1,49,'1'),(4,'111111','96e79218965eb72c92a549dd5a330112','2014-4-25 02:19:12',1,1,0,'自用');

/*Table structure for table `affiche` */

DROP TABLE IF EXISTS `affiche`;

CREATE TABLE `affiche` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `addtime` varchar(30) DEFAULT NULL,
  `adder` varchar(50) DEFAULT NULL,
  `ifhide` int(4) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

/*Data for the table `affiche` */

insert  into `affiche`(`id`,`title`,`content`,`addtime`,`adder`,`ifhide`) values (4,'车辆违章管理系统','车辆违章管理系统','2014-05-05 01:37:23','admin',1);

/*Table structure for table `bf` */

DROP TABLE IF EXISTS `bf`;

CREATE TABLE `bf` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `cp` varchar(500) DEFAULT NULL,
  `cj` varchar(500) DEFAULT NULL,
  `lx` varchar(500) DEFAULT NULL,
  `js` varchar(500) DEFAULT NULL,
  `gz` varchar(500) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

/*Data for the table `bf` */

insert  into `bf`(`id`,`cp`,`cj`,`lx`,`js`,`gz`) values (3,'京A11111','DFA2323','正常报废年限到了','2014年4月1日','测试');

/*Table structure for table `courses` */

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `cp` varchar(100) DEFAULT NULL,
  `cj` varchar(100) DEFAULT NULL,
  `lx` varchar(100) DEFAULT NULL,
  `js` varchar(100) DEFAULT NULL,
  `gz` varchar(50) DEFAULT NULL,
  `cpx` varchar(500) DEFAULT NULL,
  `syr` varchar(500) DEFAULT NULL,
  `dw` varchar(500) DEFAULT NULL,
  `ns` varchar(500) DEFAULT NULL,
  `bx` varchar(500) DEFAULT NULL,
  `yd` varchar(500) DEFAULT NULL,
  `bz` varchar(500) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=gb2312;

/*Data for the table `courses` */

insert  into `courses`(`id`,`cp`,`cj`,`lx`,`js`,`gz`,`cpx`,`syr`,`dw`,`ns`,`bx`,`yd`,`bz`) values (15,'京A99999','432423433','奥迪A6L','3212121212','2014年5月1日','CP1009','张三风','新闻集团','已审','已保','非异地','测试备注');

/*Table structure for table `guestbook` */

DROP TABLE IF EXISTS `guestbook`;

CREATE TABLE `guestbook` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `qq` varchar(50) DEFAULT NULL,
  `weburl` varchar(50) DEFAULT NULL,
  `blogurl` varchar(50) DEFAULT NULL,
  `expressions` varchar(50) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `addtime` varchar(30) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `replay` int(4) DEFAULT NULL,
  `ifhide` int(4) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gb2312;

/*Data for the table `guestbook` */

insert  into `guestbook`(`id`,`nickname`,`pic`,`email`,`qq`,`weburl`,`blogurl`,`expressions`,`content`,`addtime`,`ip`,`replay`,`ifhide`) values (1,'游客','images/nobody.gif','','','','','images/face/12.gif','有什么捷径吗','2014-05-04 23:35:41','127.0.0.1',1,1),(2,'游客','images/nobody.gif','','','','','images/face/1.gif','测试交流功能','2014-05-04 23:35:41','127.0.0.1',1,1),(4,'test','images/nobody.gif','test','test','test','test','test','测试下','2014-05-04 23:35:41','127.0.0.1',1,1),(5,'xiaoqiang','images/nobody.gif','test','test','test','test','test','aa','2014-05-04 23:35:41','127.0.0.1',0,1),(6,'1','images/nobody.gif','test','test','test','test','test','2','2014-05-21 13:44:17','127.0.0.1',0,1),(7,'1','images/nobody.gif','test','test','test','test','test','2','2014-05-21 13:44:20','127.0.0.1',0,1),(8,'提交时提交时','images/nobody.gif','test','test','test','test','test','提交时提交时提交时','2014-05-21 13:44:26','127.0.0.1',0,1);

/*Table structure for table `jsy` */

DROP TABLE IF EXISTS `jsy`;

CREATE TABLE `jsy` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `cp` varchar(100) DEFAULT NULL,
  `cj` varchar(100) DEFAULT NULL,
  `lx` varchar(100) DEFAULT NULL,
  `js` varchar(100) DEFAULT NULL,
  `gz` varchar(50) DEFAULT NULL,
  `cpx` varchar(500) DEFAULT NULL,
  `syr` varchar(500) DEFAULT NULL,
  `dw` varchar(500) DEFAULT NULL,
  `ns` varchar(500) DEFAULT NULL,
  `bx` varchar(500) DEFAULT NULL,
  `yd` varchar(500) DEFAULT NULL,
  `bz` varchar(500) DEFAULT NULL,
  `shcd` varchar(500) DEFAULT NULL,
  `hjnr` varchar(500) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=gb2312;

/*Data for the table `jsy` */

insert  into `jsy`(`id`,`cp`,`cj`,`lx`,`js`,`gz`,`cpx`,`syr`,`dw`,`ns`,`bx`,`yd`,`bz`,`shcd`,`hjnr`) values (19,'J1212400009','阿飞','男','19900909','21122019900909123','20100101','6','3','大货及以下','13900000000','未检',NULL,NULL,NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `fl` varchar(50) DEFAULT NULL,
  `content` text,
  `addtime` varchar(30) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=gb2312;

/*Data for the table `news` */

insert  into `news`(`id`,`title`,`fl`,`content`,`addtime`) values (24,'测试交通新闻','交通新闻','<p>测试交通新闻测试交通新闻测试交通新闻测试交通新闻测试交通新闻测试交通新闻测试交通新闻测试交通新闻测试交通新闻测试交通新闻测试交通新闻测试交通新闻测试交通新闻测试交通新闻测试交通新闻测试交通新闻测试交通新闻测试交通新闻测试交通新闻测试交通新闻测试交通新闻</p>','2014-05-04 23:42:20'),(25,'测试安全常识','安全常识','<p>测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识测试安全常识</p>','2014-05-04 23:42:33');

/*Table structure for table `replay` */

DROP TABLE IF EXISTS `replay`;

CREATE TABLE `replay` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `mid` int(4) DEFAULT NULL,
  `replay` varchar(200) DEFAULT NULL,
  `replayer` varchar(50) DEFAULT NULL,
  `replaytime` varchar(30) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

/*Data for the table `replay` */

insert  into `replay`(`id`,`mid`,`replay`,`replayer`,`replaytime`) values (1,1,'好的明天我给你问问','admin','2014-05-05 01:37:33'),(2,2,'test','admin','2014-05-04 23:35:41'),(3,4,'OK','admin','2014-05-04 23:35:41');

/*Table structure for table `sg` */

DROP TABLE IF EXISTS `sg`;

CREATE TABLE `sg` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `cp` varchar(100) DEFAULT NULL,
  `cj` varchar(100) DEFAULT NULL,
  `lx` varchar(100) DEFAULT NULL,
  `js` varchar(100) DEFAULT NULL,
  `gz` varchar(50) DEFAULT NULL,
  `cpx` varchar(500) DEFAULT NULL,
  `syr` varchar(500) DEFAULT NULL,
  `dw` varchar(500) DEFAULT NULL,
  `ns` varchar(500) DEFAULT NULL,
  `bx` varchar(500) DEFAULT NULL,
  `yd` varchar(500) DEFAULT NULL,
  `bz` varchar(500) DEFAULT NULL,
  `shcd` varchar(500) DEFAULT NULL,
  `hjnr` varchar(500) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=gb2312;

/*Data for the table `sg` */

insert  into `sg`(`id`,`cp`,`cj`,`lx`,`js`,`gz`,`cpx`,`syr`,`dw`,`ns`,`bx`,`yd`,`bz`,`shcd`,`hjnr`) values (17,'S11212','AFDA12211','京A55555','奔驰','4月30日下午1点','追尾','海淀交警','1000','600','张三风','天安门','北汽集团','保险杠掉落','测试');

/*Table structure for table `system` */

DROP TABLE IF EXISTS `system`;

CREATE TABLE `system` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `reasons` varchar(100) DEFAULT NULL,
  `dir` varchar(100) DEFAULT NULL,
  `record` varchar(100) DEFAULT NULL,
  `copyright` text,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

/*Data for the table `system` */

insert  into `system`(`id`,`sitename`,`url`,`keyword`,`description`,`email`,`state`,`reasons`,`dir`,`record`,`copyright`) values (1,'车辆违章管理系统','车辆违章管理系统','车辆违章管理系统','车辆违章管理系统','车辆违章管理系统','open','车辆违章管理系统','admin','车辆违章管理系统','车辆违章管理系统');

/*Table structure for table `wx` */

DROP TABLE IF EXISTS `wx`;

CREATE TABLE `wx` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `cp` varchar(100) DEFAULT NULL,
  `cj` varchar(100) DEFAULT NULL,
  `lx` varchar(100) DEFAULT NULL,
  `js` varchar(100) DEFAULT NULL,
  `gz` varchar(50) DEFAULT NULL,
  `cpx` varchar(500) DEFAULT NULL,
  `syr` varchar(500) DEFAULT NULL,
  `dw` varchar(500) DEFAULT NULL,
  `ns` varchar(500) DEFAULT NULL,
  `bx` varchar(500) DEFAULT NULL,
  `yd` varchar(500) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=gb2312;

/*Data for the table `wx` */

insert  into `wx`(`id`,`cp`,`cj`,`lx`,`js`,`gz`,`cpx`,`syr`,`dw`,`ns`,`bx`,`yd`) values (19,'京A99999','SD3223','火花塞','1','机油','1','滤清器','1','4月1日下午','1080','测试');

/*Table structure for table `wz` */

DROP TABLE IF EXISTS `wz`;

CREATE TABLE `wz` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `cp` varchar(500) DEFAULT NULL,
  `cj` varchar(500) DEFAULT NULL,
  `lx` varchar(500) DEFAULT NULL,
  `js` varchar(500) DEFAULT NULL,
  `gz` varchar(500) DEFAULT NULL,
  `wzsj` varchar(500) DEFAULT NULL,
  `cllx` varchar(500) DEFAULT '小型车',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

/*Data for the table `wz` */

insert  into `wz`(`id`,`cp`,`cj`,`lx`,`js`,`gz`,`wzsj`,`cllx`) values (2,'京A99999','SD3223','闯红灯','罚款200扣3分','测试','2014年4月1日下午15点30分','大型车'),(3,'1','2','3','4','6','5','大型车');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
