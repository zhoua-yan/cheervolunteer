/*
Navicat MySQL Data Transfer

Source Server         : conn
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : personal_information

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-08-03 12:52:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `activity`
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `actID` int(11) NOT NULL,
  `actname` varchar(30) NOT NULL,
  `needpeople` int(11) NOT NULL,
  `actaddress` varchar(50) NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `director` varchar(25) NOT NULL,
  `directorphone` char(30) NOT NULL,
  `actstate` varchar(20) NOT NULL,
  `actclass` varchar(20) NOT NULL,
  PRIMARY KEY (`actID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1', 'chucao', '10', 'AiDi', '2015-08-01 20:27:46', '2015-08-01 21:27:55', 'LiYang', '13873332222', 'zhaomuING', 'JingLao');

-- ----------------------------
-- Table structure for `hobby_forte`
-- ----------------------------
DROP TABLE IF EXISTS `hobby_forte`;
CREATE TABLE `hobby_forte` (
  `forteID` int(11) NOT NULL,
  `fortename` varchar(30) NOT NULL,
  PRIMARY KEY (`forteID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of hobby_forte
-- ----------------------------
INSERT INTO `hobby_forte` VALUES ('1', 'dance');
INSERT INTO `hobby_forte` VALUES ('2', 'sing');

-- ----------------------------
-- Table structure for `login`
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `logname` char(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `logemail` char(50) NOT NULL,
  PRIMARY KEY (`logname`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('David', '111', '111@126.com');

-- ----------------------------
-- Table structure for `orginactivity`
-- ----------------------------
DROP TABLE IF EXISTS `orginactivity`;
CREATE TABLE `orginactivity` (
  `orgaddress` varchar(50) NOT NULL,
  `orgphone` char(30) NOT NULL,
  `orgusername` varchar(30) NOT NULL,
  `orgemail` varchar(30) NOT NULL,
  `orgpassword` varchar(30) NOT NULL,
  PRIMARY KEY (`orgemail`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of orginactivity
-- ----------------------------
INSERT INTO `orginactivity` VALUES ('BeijingChangPing', '69052222', 'Sunshine', '222@163.com', '222');

-- ----------------------------
-- Table structure for `orgnization`
-- ----------------------------
DROP TABLE IF EXISTS `orgnization`;
CREATE TABLE `orgnization` (
  `orgname` varchar(25) NOT NULL,
  `orgaddress` varchar(25) NOT NULL,
  `orgphone` int(25) NOT NULL,
  `orgjianjie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orgname`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of orgnization
-- ----------------------------
INSERT INTO `orgnization` VALUES ('SunshineNGO', 'BeijingHaidian', '59028888', 'Help volunteer better');

-- ----------------------------
-- Table structure for `persondata`
-- ----------------------------
DROP TABLE IF EXISTS `persondata`;
CREATE TABLE `persondata` (
  `name` char(25) NOT NULL,
  `sex` char(25) NOT NULL,
  `birth` date NOT NULL,
  `school` char(25) NOT NULL,
  `major` char(25) NOT NULL,
  `forte` varchar(255) DEFAULT NULL,
  `hobby` varchar(255) DEFAULT NULL,
  `username` char(25) NOT NULL,
  `password` char(25) NOT NULL,
  `logemail` char(50) NOT NULL,
  PRIMARY KEY (`username`,`logemail`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of persondata
-- ----------------------------
INSERT INTO `persondata` VALUES ('ZhangLi', 'female', '1995-03-03', 'CUFE', 'CEMA', 'sing', 'dance', 'zl95', '654321', '654@163.com');

-- ----------------------------
-- Table structure for `volunteer`
-- ----------------------------
DROP TABLE IF EXISTS `volunteer`;
CREATE TABLE `volunteer` (
  `name` varchar(20) NOT NULL,
  `birth` date NOT NULL,
  `sex` char(2) NOT NULL,
  `volunemail` varchar(30) NOT NULL,
  `volunphone` char(30) NOT NULL,
  `school` varchar(30) NOT NULL,
  `major` varchar(30) NOT NULL,
  `volunpass` varchar(30) NOT NULL,
  PRIMARY KEY (`volunemail`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of volunteer
-- ----------------------------
INSERT INTO `volunteer` VALUES ('JinTong', '1994-07-06', 'ma', '3232@126.com', '18812229999', 'CUFE', 'Tax', '');

-- ----------------------------
-- Table structure for `个人信息`
-- ----------------------------
DROP TABLE IF EXISTS `个人信息`;
CREATE TABLE `个人信息` (
  `姓名` char(25) NOT NULL,
  `性别` char(25) NOT NULL,
  `年龄` date NOT NULL,
  `学校` char(25) NOT NULL,
  `专业` char(25) NOT NULL,
  `特长` varchar(255) DEFAULT NULL,
  `爱好` varchar(255) DEFAULT NULL,
  `用户名` char(25) NOT NULL DEFAULT '',
  `密码` char(25) NOT NULL,
  `登录邮箱` char(50) NOT NULL,
  PRIMARY KEY (`用户名`,`登录邮箱`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of 个人信息
-- ----------------------------
INSERT INTO `个人信息` VALUES ('张丽', '女', '0000-00-00', '中央财经大学', '经济学', '唱歌', '跳舞', 'zl20', '654321', '1111@163.com');

-- ----------------------------
-- Table structure for `志愿者`
-- ----------------------------
DROP TABLE IF EXISTS `志愿者`;
CREATE TABLE `志愿者` (
  `姓名` varchar(20) NOT NULL,
  `出生日期` date NOT NULL,
  `性别` char(2) NOT NULL,
  `志愿者邮箱` varchar(30) NOT NULL,
  `志愿者电话` char(30) NOT NULL,
  `学校` varchar(30) NOT NULL,
  `专业` varchar(30) NOT NULL,
  `志愿者密码` varchar(30) NOT NULL,
  PRIMARY KEY (`志愿者邮箱`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of 志愿者
-- ----------------------------
INSERT INTO `志愿者` VALUES ('王丽', '1995-03-03', '女', '1111@163.com', '18812229999', '中央财经大学', '经济学', '654321');

-- ----------------------------
-- Table structure for `承办机构`
-- ----------------------------
DROP TABLE IF EXISTS `承办机构`;
CREATE TABLE `承办机构` (
  `机构地址` varchar(50) NOT NULL,
  `机构电话` char(30) NOT NULL,
  `机构用户名` varchar(30) NOT NULL,
  `机构邮箱` varchar(30) NOT NULL,
  `机构密码` varchar(30) NOT NULL,
  PRIMARY KEY (`机构邮箱`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of 承办机构
-- ----------------------------
INSERT INTO `承办机构` VALUES ('北京市昌平区', '69052222', '爱地敬老院', 'aaaa@126.com', '123456');

-- ----------------------------
-- Table structure for `机构信息`
-- ----------------------------
DROP TABLE IF EXISTS `机构信息`;
CREATE TABLE `机构信息` (
  `机构名称` varchar(25) NOT NULL,
  `机构地址` varchar(25) NOT NULL,
  `机构电话` int(25) NOT NULL,
  `机构简介` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`机构名称`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of 机构信息
-- ----------------------------
INSERT INTO `机构信息` VALUES ('阳光志愿', '北京市海淀区', '59028888', '旨在组织志愿者进行社会服务');

-- ----------------------------
-- Table structure for `注册信息`
-- ----------------------------
DROP TABLE IF EXISTS `注册信息`;
CREATE TABLE `注册信息` (
  `用户名` char(25) NOT NULL DEFAULT '',
  `密码` varchar(25) NOT NULL,
  `登录邮箱` char(50) NOT NULL,
  PRIMARY KEY (`用户名`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of 注册信息
-- ----------------------------
INSERT INTO `注册信息` VALUES ('会飞的鱼', '654321', '1111@163.com');

-- ----------------------------
-- Table structure for `活动`
-- ----------------------------
DROP TABLE IF EXISTS `活动`;
CREATE TABLE `活动` (
  `活动ID` int(11) NOT NULL,
  `活动名称` varchar(30) NOT NULL,
  `需求人数` int(11) NOT NULL,
  `活动地点` varchar(50) NOT NULL,
  `开始时间` time NOT NULL,
  `结束时间` time NOT NULL,
  `负责人` varchar(25) NOT NULL,
  `负责人电话` char(30) NOT NULL,
  `活动状态` varchar(20) NOT NULL,
  `活动类别` varchar(20) NOT NULL,
  PRIMARY KEY (`活动ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of 活动
-- ----------------------------
INSERT INTO `活动` VALUES ('1', '除草', '10', '爱地敬老院', '09:40:00', '12:30:00', '李杨', '13873332222', '招募中', '敬老');

-- ----------------------------
-- Table structure for `爱好或特长属性`
-- ----------------------------
DROP TABLE IF EXISTS `爱好或特长属性`;
CREATE TABLE `爱好或特长属性` (
  `特长ID` int(11) NOT NULL,
  `特长名称` varchar(30) NOT NULL,
  PRIMARY KEY (`特长ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of 爱好或特长属性
-- ----------------------------
INSERT INTO `爱好或特长属性` VALUES ('1', '计算机');
