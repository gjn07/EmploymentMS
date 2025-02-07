/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 8.0.34 : Database - edb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`edb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `edb`;

/*Table structure for table `dept` */

DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
  `did` int NOT NULL AUTO_INCREMENT,
  `dname` varchar(20) NOT NULL,
  `dremark` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`did`) USING BTREE,
  UNIQUE KEY `dname` (`dname`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `dept` */

insert  into `dept`(`did`,`dname`,`dremark`) values 
(1,'管理部',''),
(2,'技术部',''),
(3,'养老护理部',''),
(4,'工勤部','');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `dept_id` int DEFAULT NULL,
  `job_id` int DEFAULT NULL,
  `card_id` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `post_code` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `qq_num` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `sex` enum('男','女') DEFAULT NULL,
  `party` enum('群众','共青团员','共产党员') DEFAULT NULL,
  `birthday` varchar(30) DEFAULT NULL,
  `race` varchar(10) DEFAULT NULL,
  `education` varchar(5) DEFAULT NULL,
  `speciality` varchar(15) DEFAULT NULL,
  `hobby` varchar(30) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `create_date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `card_id` (`card_id`) USING BTREE,
  KEY `foreikey` (`dept_id`) USING BTREE,
  KEY `job_id` (`job_id`) USING BTREE,
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`jid`) ON DELETE CASCADE,
  CONSTRAINT `foreikey` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`did`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `employee` */

insert  into `employee`(`id`,`name`,`dept_id`,`job_id`,`card_id`,`address`,`post_code`,`tel`,`phone`,`qq_num`,`email`,`sex`,`party`,`birthday`,`race`,`education`,`speciality`,`hobby`,`remark`,`create_date`) values 
(1,'杜大胜',1,4,'123456','河南省','654321','12345678910','12345678910','111111111','dds@qq.com','男','共产党员','2002-05-15','汉','本科','计算机','打篮球','Java后端开发','2024-09-11 10:15:16 上午'),
(2,'浮亚林',3,3,'222222','河南省','222222','10987654321','10987654321','2222222222','fyl@qq.com','男','共产党员','2002-04-27','汉','本科','营销','打印','','2024-09-11 10:17:00 上午'),
(3,'陈罗鑫',3,4,'654321','河南省','123456','12345676543','12345676543','3333333333','clx@qq.com','男','共产党员','2002-01-22','汉','本科','睡觉','睡觉','','2024-09-11 10:18:15 上午');

/*Table structure for table `job` */

DROP TABLE IF EXISTS `job`;

CREATE TABLE `job` (
  `jid` int NOT NULL AUTO_INCREMENT,
  `jname` varchar(20) NOT NULL,
  `jremark` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`jid`) USING BTREE,
  UNIQUE KEY `jname` (`jname`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `job` */

insert  into `job`(`jid`,`jname`,`jremark`) values 
(1,'营养师',''),
(2,'心理咨询师',''),
(3,'护理员',''),
(4,'保洁员',''),
(5,'管理员','');

/*Table structure for table `notice` */

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `title` varchar(250) NOT NULL,
  `content` longtext,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `notice` */

insert  into `notice`(`id`,`username`,`name`,`title`,`content`,`remark`) values 
(1,'浮亚林','敬老院221宿舍日报','我开打印店','努力打扫',''),
(2,'杜大胜','敬老院221宿舍日报','我去应聘了','尊老爱幼',''),
(3,'陈罗鑫','敬老院221宿舍日报','我去租房了','加油挣钱','');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `rname` varchar(20) NOT NULL,
  `rremark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `role` */

insert  into `role`(`rid`,`rname`,`rremark`) values 
(1,'普通员工','三级员工'),
(2,'管理员','二级员工'),
(3,'总管','一级员工');

/*Table structure for table `uploadfile` */

DROP TABLE IF EXISTS `uploadfile`;

CREATE TABLE `uploadfile` (
  `id` int NOT NULL,
  `uploadName` varchar(50) DEFAULT NULL,
  `fileName` varchar(100) DEFAULT NULL,
  `uploadDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `uploadfile` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `number` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role_id` int DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `remark` varchar(50) NOT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `user` */

insert  into `user`(`number`,`password`,`role_id`,`phone`,`createdate`,`username`,`remark`) values 
('1','1',1,'11122233333','2023-05-23 09:21:13','gjn','管理部'),
('2','123456',2,'44455566666','2023-05-23 09:29:10','xiaoming','技术部'),
('3','123456',3,'77788899999','2023-05-23 09:32:08','xiaohong','工勤部');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
