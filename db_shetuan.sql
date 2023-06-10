/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : db_shetuan

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2020-01-20 16:47:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sid` int(11) DEFAULT NULL COMMENT '社团',
  `name` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(2555) DEFAULT NULL COMMENT '内容',
  `optime` varchar(255) DEFAULT NULL COMMENT '活动时间',
  `isdel` int(11) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1', '1', '活动标题2', '<p>活动内容2</p>', '2019-12-09', '0');
INSERT INTO `activity` VALUES ('2', '1', '活动标题1', '<p>活动内容1</p>', '2019-12-08', '0');
INSERT INTO `activity` VALUES ('3', '1', '全体成员注意', '全体成员注意22', '2020-01-21', '0');
INSERT INTO `activity` VALUES ('4', '3', 'www', 'www', '2020-01-24', '0');

-- ----------------------------
-- Table structure for caiwu
-- ----------------------------
DROP TABLE IF EXISTS `caiwu`;
CREATE TABLE `caiwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sid` int(11) DEFAULT NULL COMMENT '社团',
  `name` varchar(255) DEFAULT NULL COMMENT '项目',
  `status` varchar(255) DEFAULT NULL COMMENT '支出，收入',
  `price` int(11) DEFAULT NULL COMMENT '金额',
  `optime` varchar(255) DEFAULT NULL COMMENT '记账时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caiwu
-- ----------------------------
INSERT INTO `caiwu` VALUES ('1', '1', '购买彩旗', '支出', '200', '2020-01-23');
INSERT INTO `caiwu` VALUES ('2', '1', '收赞助费', '收入', '1000', '2020-01-20');

-- ----------------------------
-- Table structure for gonggao
-- ----------------------------
DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(2555) DEFAULT NULL COMMENT '内容',
  `optime` varchar(255) DEFAULT NULL COMMENT '发布时间',
  `isdel` int(11) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gonggao
-- ----------------------------
INSERT INTO `gonggao` VALUES ('1', '公告1', '公告1222<p><br></p>', '2019-12-17 12:00:00', '0');
INSERT INTO `gonggao` VALUES ('2', '公告2', '公告2', '2019-12-17 12:00:00', '0');
INSERT INTO `gonggao` VALUES ('3', '公告3', '<p>公告3公告3公告3</p>', '2020-01-16 12:00:00', '1');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sid` int(11) DEFAULT NULL COMMENT '社团',
  `sno` varchar(255) DEFAULT NULL COMMENT '成员学号',
  `status` varchar(255) DEFAULT NULL COMMENT '申请加入，已加入，申请退出',
  `liyou` varchar(255) DEFAULT NULL COMMENT '申请退出理由',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('3', '3', '1005', '已加入', null);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sno` varchar(255) DEFAULT NULL COMMENT '发件人',
  `rno` varchar(255) DEFAULT NULL COMMENT '收件人',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(2550) DEFAULT NULL COMMENT '内容',
  `optime` varchar(110) DEFAULT NULL COMMENT '时间',
  `isdel` int(11) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('47', 'admin', '1009', '关于申请社团通过的邮件', '您申请的社团相声社团审核已通过，成立时间为2020-01-17,您的身份已变成社长！', '2020-01-17 20:00:34', '0');
INSERT INTO `message` VALUES ('48', 'admin', '1001', '关于申请社团通过的邮件', '您申请的社团街舞社团审核已通过，成立时间为2020-01-17,您的身份已变成社长！', '2020-01-17 20:00:37', '0');
INSERT INTO `message` VALUES ('49', '1009', '1005', '关于被删除并退出社团的邮件', '您已被被动退出相声社团社团，您的身份已变成普通学生！', '2020-01-17 20:22:56', '0');
INSERT INTO `message` VALUES ('50', '1009', '1005', '关于申请加入社团通过的邮件', '您申请加入的社团相声社团审核已通过,您的身份已变成社员！', '2020-01-17 20:26:01', '0');
INSERT INTO `message` VALUES ('51', '1009', '1005', '全体相声社团成员注意', '全体相声社团成员注意', '2020-01-17 20:29:17', '0');
INSERT INTO `message` VALUES ('52', '1009', '1009', '全体相声社团成员注意', '全体相声社团成员注意', '2020-01-17 20:29:17', '0');
INSERT INTO `message` VALUES ('53', '1009', '1009', '关于社团转让成功的邮件', '您申请转让的社团相声社团审核已通过，转让时间为2020-01-17,转让给高邦,您的身份已变成社员！', '2020-01-17 21:18:12', '0');
INSERT INTO `message` VALUES ('54', '1009', '1005', '关于社团转让成功的邮件', '您所在的社团相声社团，原社长测试将社长之位转让与您，转让时间为2020-01-17,从现在开始，您的身份已变成社长！', '2020-01-17 21:18:12', '0');
INSERT INTO `message` VALUES ('55', '1009', '1005', '关于社团转让成功的邮件', '您申请转让的社团相声社团审核已通过，转让时间为2020-01-17,转让给高邦,您的身份已变成社员！', '2020-01-17 21:18:16', '0');
INSERT INTO `message` VALUES ('56', '1009', '1005', '关于社团转让成功的邮件', '您所在的社团相声社团，原社长高邦将社长之位转让与您，转让时间为2020-01-17,从现在开始，您的身份已变成社长！', '2020-01-17 21:18:16', '1');
INSERT INTO `message` VALUES ('57', '1005', '1005', '关于社团转让成功的邮件', '您申请转让的社团相声社团审核已通过，转让时间为2020-01-17,转让给高邦,您的身份已变成社员！', '2020-01-17 21:50:28', '0');
INSERT INTO `message` VALUES ('58', '1005', '1005', '关于社团转让成功的邮件', '您所在的社团相声社团，原社长高邦将社长之位转让与您，转让时间为2020-01-17,从现在开始，您的身份已变成社长！', '2020-01-17 21:50:28', '0');
INSERT INTO `message` VALUES ('59', '1005', '1005', '关于社团转让成功的邮件', '您申请转让的社团相声社团审核已通过，转让时间为2020-01-17,转让给高邦,您的身份已变成社员！', '2020-01-17 21:51:27', '0');
INSERT INTO `message` VALUES ('60', '1005', '1005', '关于社团转让成功的邮件', '您所在的社团相声社团，原社长高邦将社长之位转让与您，转让时间为2020-01-17,从现在开始，您的身份已变成社长！', '2020-01-17 21:51:27', '0');
INSERT INTO `message` VALUES ('61', '1005', '1005', '关于社团转让成功的邮件', '您申请转让的社团相声社团审核已通过，转让时间为2020-01-17,转让给测试,您的身份已变成社员！', '2020-01-17 21:57:30', '0');
INSERT INTO `message` VALUES ('62', '1005', '1009', '关于社团转让成功的邮件', '您所在的社团相声社团，原社长高邦将社长之位转让与您，转让时间为2020-01-17,从现在开始，您的身份已变成社长！', '2020-01-17 21:57:33', '0');
INSERT INTO `message` VALUES ('63', '1005', '1005', '关于社团转让成功的邮件', '您申请转让的社团相声社团审核已通过，转让时间为2020-01-17,转让给测试,您的身份已变成社员！', '2020-01-17 22:00:27', '0');
INSERT INTO `message` VALUES ('64', '1005', '1009', '关于社团转让成功的邮件', '您所在的社团相声社团，原社长高邦将社长之位转让与您，转让时间为2020-01-17,从现在开始，您的身份已变成社长！', '2020-01-17 22:00:27', '0');
INSERT INTO `message` VALUES ('65', '1009', '1005', '关于成功退出社团的邮件', '您申请退出相声社团社团的审核已通过，您的身份已变成普通学生！', '2020-01-17 22:03:04', '0');
INSERT INTO `message` VALUES ('66', '1009', '1009', '关于社团撤销的邮件', '您所在的社团相声社团已经被撤销，撤销时间为2020-01-17,您的身份已变成普通学生！', '2020-01-17 22:15:15', '0');
INSERT INTO `message` VALUES ('67', 'admin', '1009', '关于社团撤销的邮件', '您所在的社团相声社团已经被撤销，撤销时间为2020-01-17,您的身份已变成普通学生！', '2020-01-17 22:16:55', '0');
INSERT INTO `message` VALUES ('68', 'admin', '1002', '关于申请社团通过的邮件', '您申请的社团sss审核已通过，成立时间为2020-01-18,您的身份已变成社长！', '2020-01-18 18:55:55', '0');
INSERT INTO `message` VALUES ('69', '1002', '1005', '关于申请加入社团通过的邮件', '您申请加入的社团sss审核已通过,您的身份已变成社员！', '2020-01-18 18:59:03', '0');
INSERT INTO `message` VALUES ('70', '1002', '1002', 'qqq', 'qq', '2020-01-18 19:01:33', '0');
INSERT INTO `message` VALUES ('71', '1002', '1005', 'qqq', 'qq', '2020-01-18 19:01:33', '1');

-- ----------------------------
-- Table structure for shetuan
-- ----------------------------
DROP TABLE IF EXISTS `shetuan`;
CREATE TABLE `shetuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sno` varchar(255) DEFAULT NULL COMMENT '社长编号',
  `name` varchar(255) DEFAULT NULL COMMENT '社团名',
  `content` varchar(2550) DEFAULT NULL COMMENT '社团介绍',
  `optime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `status` varchar(255) DEFAULT NULL COMMENT '申请成立，已成立，申请撤销，已撤销，',
  `isdel` int(11) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shetuan
-- ----------------------------
INSERT INTO `shetuan` VALUES ('1', '1001', '街舞社团', '喜欢街舞的朋友都来参加2', '2020-01-17', '已成立', '0');
INSERT INTO `shetuan` VALUES ('2', '1009', '相声社团', '相声社团', '2020-01-17', '已撤销', '1');
INSERT INTO `shetuan` VALUES ('3', '1002', 'sss', 'sss', '2020-01-18', '已成立', '0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `sno` varchar(255) NOT NULL COMMENT '学号',
  `sid` int(11) DEFAULT NULL COMMENT '所属社团',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `nation` varchar(255) DEFAULT NULL COMMENT '民族',
  `role` int(11) DEFAULT NULL COMMENT '身份,0管理员1社长2社员3普通学生',
  `isdel` int(11) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1001', '1', '123', '李刚', '18989765413', '男', '汉族', '1', '0');
INSERT INTO `users` VALUES ('1002', '3', '123', '李利', '18676564531', '男', '汉族', '1', '0');
INSERT INTO `users` VALUES ('1003', '1', '123', '王伟', '15676754534', '男', '汉族', '2', '0');
INSERT INTO `users` VALUES ('1004', '1', '123', '赵刚', '18765432312', '男', '汉族', '2', '0');
INSERT INTO `users` VALUES ('1005', '3', '123456', '高邦', '18789876543', '男', '汉族', '2', '0');
INSERT INTO `users` VALUES ('1007', null, '123456', '陈丽', '17876565434', '女', '汉族', '3', '0');
INSERT INTO `users` VALUES ('1009', '0', '123456', '测试', '18789898978', '男', '回族', '3', '0');
INSERT INTO `users` VALUES ('admin', null, 'admin', '管理员', '18789909878', '男', '汉族', '0', '0');
