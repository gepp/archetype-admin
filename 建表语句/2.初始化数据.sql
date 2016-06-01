/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.20 : Database - security_base
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`security_base` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `security_base`;

/*Data for the table `security_menu` */

insert  into `security_menu`(`id`,`name`,`code`,`description`,`orderlist`,`img`,`url`,`parent_id`,`type`,`status`) values (1,'系统管理',NULL,NULL,4,'/res/images/leftico04.png',NULL,0,NULL,NULL),(2,'部门管理',NULL,NULL,NULL,NULL,'/securityorganization/list.htm',1,NULL,NULL),(3,'用户管理',NULL,NULL,NULL,NULL,'/securityuser/list.htm',1,NULL,NULL),(4,'角色权限管理',NULL,NULL,NULL,NULL,'/securityrole/list.htm',1,NULL,NULL),(5,'菜单管理',NULL,NULL,NULL,NULL,'/securitymenu/list.htm',1,NULL,NULL);

/*Data for the table `security_organization` */

/*Data for the table `security_organization_user` */

/*Data for the table `security_role` */

insert  into `security_role`(`id`,`code`,`name`,`description`,`status`) values (1,'SYSTEM','系统管理员','系统管理员',1);

/*Data for the table `security_role_menu` */

insert  into `security_role_menu`(`id`,`role_id`,`menu_id`) values (1,1,3),(2,1,2),(3,1,1),(4,1,0),(5,1,5),(6,1,4);

/*Data for the table `security_user` */

insert  into `security_user`(`id`,`code`,`username`,`email`,`userpwd`,`phone`,`realname`,`status`,`ctime`,`organization_id`) values (1,NULL,'system','gepp2010@163.com','c4ca4238a0b923820dcc509a6f75849b','18952028230','葛萍萍',1,NULL,NULL);

/*Data for the table `security_user_ext` */

/*Data for the table `security_user_role` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
