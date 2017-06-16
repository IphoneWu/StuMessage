/*
Navicat MySQL Data Transfer

Source Server         : asda
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : student_info

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2017-06-16 15:36:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '小明', '123456');
INSERT INTO `admin` VALUES ('2', '小东', '45678910');
INSERT INTO `admin` VALUES ('3', '小强', '9527110');
INSERT INTO `admin` VALUES ('4', 'xiaoming', '123456');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cno` varchar(20) NOT NULL,
  `cname` varchar(20) NOT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('01', 'c语言');
INSERT INTO `course` VALUES ('02', 'office');
INSERT INTO `course` VALUES ('03', '唐诗300首');
INSERT INTO `course` VALUES ('04', '写作');
INSERT INTO `course` VALUES ('05', '计算机科学与概论');
INSERT INTO `course` VALUES ('06', '现代鉴赏');
INSERT INTO `course` VALUES ('07', '大学心理');
INSERT INTO `course` VALUES ('15', '现代啊');

-- ----------------------------
-- Table structure for stu
-- ----------------------------
DROP TABLE IF EXISTS `stu`;
CREATE TABLE `stu` (
  `sno` varchar(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `ssex` varchar(20) DEFAULT NULL,
  `sbirth` date DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `class_1` varchar(20) NOT NULL,
  `college` varchar(20) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu
-- ----------------------------
INSERT INTO `stu` VALUES ('1101', '张国荣', '男', '1998-02-01', '香港九龙', '11', '计算机');
INSERT INTO `stu` VALUES ('1102', '赵本山', '男', '1996-02-01', '哈尔滨', '11', '计算机');
INSERT INTO `stu` VALUES ('2201', '罗文', '男', '1994-03-02', '新疆', '22', '文学院');
INSERT INTO `stu` VALUES ('2202', '邓紫棋', '女', '2000-01-01', '意大利', '22', '文学院');
INSERT INTO `stu` VALUES ('3301', '于正', '男', '2006-08-07', '山东', '33', '生科院');
INSERT INTO `stu` VALUES ('3302', '李强', '男', '1994-05-02', '大连', '33', '生科院');
INSERT INTO `stu` VALUES ('4401', '大强', '女', '1992-01-09', '潮州', '44', '地驴');
INSERT INTO `stu` VALUES ('4402', '小强', '男', '1998-04-23', '澳门', '44', '地驴');
INSERT INTO `stu` VALUES ('4403', '大红', '女', '1990-01-02', '新加波', '44', '地驴');
INSERT INTO `stu` VALUES ('4404', '小红', '女', '1994-09-21', '马来西亚', '44', '地驴');
INSERT INTO `stu` VALUES ('4405', '红红', '女', '1997-03-01', '马来西亚', '44', '地驴');
INSERT INTO `stu` VALUES ('5503', '大明', '男', '1998-08-11', '山西', '55', '教育学');
INSERT INTO `stu` VALUES ('5504', '小明sb', '男', '2009-01-01', '山东', '55', '教育学');
INSERT INTO `stu` VALUES ('5506', 'b', '女', '2001-05-02', '山西', '55', '教育学');
INSERT INTO `stu` VALUES ('5507', 'c', '女', '1994-02-01', '山东', '55', '教育学');
INSERT INTO `stu` VALUES ('5508', 'd', '女', '1993-02-15', '山西', '55', '教育学');
INSERT INTO `stu` VALUES ('5509', 'e', '女', '1995-09-11', '大连', '55', '教育学');
INSERT INTO `stu` VALUES ('5510', 'f', '女', '1995-08-11', '大连', '55', '教育学');
INSERT INTO `stu` VALUES ('5511', 'g', '男', '1995-02-01', '河南', '55', '教育学');
INSERT INTO `stu` VALUES ('5512', 'h', '男', '1995-02-01', '河南', '55', '教育学');
INSERT INTO `stu` VALUES ('5513', 'i', '男', '1995-02-01', '河南', '55', '教育学');
INSERT INTO `stu` VALUES ('5514', 'j', '男', '1995-02-01', '河南', '55', '教育学');
INSERT INTO `stu` VALUES ('5515', 'k', '男', '1995-02-01', '河南', '55', '教育学');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `idcard` varchar(50) NOT NULL,
  `passowrd` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('13', '5511', '123456');
INSERT INTO `user` VALUES ('15', '3366', '123456789');
INSERT INTO `user` VALUES ('17', '26546546', '123456789');
INSERT INTO `user` VALUES ('21', '9999999', '9999999');
INSERT INTO `user` VALUES ('22', '999999', '9999999');
INSERT INTO `user` VALUES ('23', 'sadasd', 'sdsadasd');

-- ----------------------------
-- Table structure for user_cou
-- ----------------------------
DROP TABLE IF EXISTS `user_cou`;
CREATE TABLE `user_cou` (
  `cno` varchar(20) NOT NULL,
  `sno` varchar(20) NOT NULL,
  `mark` int(100) NOT NULL,
  PRIMARY KEY (`cno`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_cou
-- ----------------------------
INSERT INTO `user_cou` VALUES ('01', '1101', '50');
INSERT INTO `user_cou` VALUES ('01', '1102', '77');
INSERT INTO `user_cou` VALUES ('02', '1101', '55');
INSERT INTO `user_cou` VALUES ('02', '1102', '90');
INSERT INTO `user_cou` VALUES ('03', '2201', '55');
INSERT INTO `user_cou` VALUES ('03', '2202', '78');
INSERT INTO `user_cou` VALUES ('04', '2201', '100');
INSERT INTO `user_cou` VALUES ('04', '2202', '99');
