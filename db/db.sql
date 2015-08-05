/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : liaoliaoba

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2015-08-06 00:18:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `llb_activity`
-- ----------------------------
DROP TABLE IF EXISTS `llb_activity`;
CREATE TABLE `llb_activity` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` char(50) NOT NULL COMMENT '标题',
  `intro` char(255) NOT NULL COMMENT '活动简介',
  `guest` char(50) DEFAULT NULL COMMENT '嘉宾',
  `gender` char(1) DEFAULT NULL COMMENT '性别',
  `age` tinyint(3) DEFAULT NULL COMMENT '年龄',
  `job` char(50) DEFAULT NULL COMMENT '工作',
  `guest_intro` char(255) DEFAULT NULL COMMENT '嘉宾介绍',
  `createdate` datetime DEFAULT NULL COMMENT '创建时间',
  `enddate` datetime DEFAULT NULL COMMENT '结束时间',
  `ownerid` int(8) DEFAULT NULL COMMENT '管理员id',
  `status` tinyint(3) DEFAULT NULL COMMENT '状态',
  `views` int(8) DEFAULT NULL COMMENT '点击量',
  `formid` int(8) DEFAULT NULL COMMENT '表单id',
  `starttime` datetime DEFAULT NULL COMMENT '活动开始时间',
  `address` char(255) DEFAULT NULL COMMENT '活动地址',
  `address_intro` char(255) DEFAULT NULL COMMENT '活动简介',
  `endintro` char(255) DEFAULT NULL COMMENT '页尾简介',
  `attachment` text COMMENT '附件',
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of llb_activity
-- ----------------------------
INSERT INTO `llb_activity` VALUES ('1', '如果另一半出轨了你会不会原谅他', '这里是简介简介', '刺猬大师', '男', '33', '程序猴', '一边写代码，一边玩咨询', '2015-08-03 22:35:35', '2015-08-20 22:35:38', '1', '1', '200', '1', '2015-08-03 22:36:12', '青岛新闻网络传播有限公司', '这就是一个公司，没别的', '欢迎合作', null);

-- ----------------------------
-- Table structure for `llb_admin`
-- ----------------------------
DROP TABLE IF EXISTS `llb_admin`;
CREATE TABLE `llb_admin` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `admin_name` char(20) NOT NULL,
  `admin_pass` char(32) NOT NULL,
  `admin_status` tinyint(3) NOT NULL,
  `admin_lower` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of llb_admin
-- ----------------------------

-- ----------------------------
-- Table structure for `llb_form`
-- ----------------------------
DROP TABLE IF EXISTS `llb_form`;
CREATE TABLE `llb_form` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `lid` int(8) NOT NULL COMMENT '活动id ',
  `name` char(50) NOT NULL COMMENT '昵称',
  `Contact` char(255) NOT NULL COMMENT '联系方式',
  `gender` char(1) NOT NULL COMMENT '性别',
  `age` tinyint(3) NOT NULL COMMENT '年龄',
  `job` char(255) NOT NULL COMMENT '职业',
  `thinking` char(255) NOT NULL COMMENT '想法',
  `status` tinyint(3) NOT NULL,
  `datetime` datetime NOT NULL,
  `ip` char(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lid` (`lid`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of llb_form
-- ----------------------------
