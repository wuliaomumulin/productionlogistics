/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50168
Source Host           : localhost:3306
Source Database       : productionlogistics

Target Server Type    : MYSQL
Target Server Version : 50168
File Encoding         : 65001

Date: 2016-08-31 19:41:31
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `ljst_score`
-- ----------------------------
DROP TABLE IF EXISTS `ljst_score`;
CREATE TABLE `ljst_score` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `status` tinyint(1) DEFAULT '0' COMMENT '已评卷:1;未评卷:0',
  `taskId` int(10) unsigned DEFAULT NULL COMMENT '所属组课id',
  `score` int(11) DEFAULT NULL COMMENT '成绩',
  `Dtime` int(11) unsigned DEFAULT NULL COMMENT '添加时间',
  `Etime` int(11) unsigned DEFAULT NULL COMMENT '完成时间',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示（0，不显示，1，显示，默认为显示）',
  `class_id` int(11) DEFAULT '0' COMMENT '该学生所在班级id',
  `situationup_id` int(11) DEFAULT '0' COMMENT '完整上传内容ID',
  `situationstepup_id` int(11) DEFAULT '0' COMMENT '分布上传内容ID',
  `comment` varchar(255) DEFAULT NULL COMMENT '评论',
  PRIMARY KEY (`id`),
  KEY `u_status_show` (`uid`,`status`,`is_show`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ljst_score
-- ----------------------------
INSERT INTO ljst_score VALUES ('55', '13', '1', '186', '10', '1472635984', '1472635984', '1', '0', '58', null, '虽然交了白卷，但是看在天气不错的份上，就给你10分吧。');
INSERT INTO ljst_score VALUES ('56', '13', '0', '186', '0', '1472635984', '1472635984', '1', '0', '65', null, '');
INSERT INTO ljst_score VALUES ('57', '13', '0', '186', '0', '1472635984', '1472635984', '1', '0', '67', null, '');
INSERT INTO ljst_score VALUES ('58', '13', '0', '186', '0', '1472635984', '1472635984', '1', '0', '72', null, '');
INSERT INTO ljst_score VALUES ('59', '13', '0', '186', '0', '1472635984', '1472635984', '1', '0', '73', null, '');
