/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : cinemamanagersystem

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2016-01-10 12:23:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cinema
-- ----------------------------
DROP TABLE IF EXISTS `cinema`;
CREATE TABLE `cinema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `showtext` varchar(255) DEFAULT NULL,
  `num` int(255) DEFAULT '300',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cinema
-- ----------------------------
INSERT INTO `cinema` VALUES ('1', '1', '2014-11-01', '1号厅', '88.00', '喜剧', '299');
INSERT INTO `cinema` VALUES ('2', '2', '1992-02-02', '3号', '45.00', '热', '300');
INSERT INTO `cinema` VALUES ('3', '3', '122', '12', '33.00', '12', '299');
INSERT INTO `cinema` VALUES ('4', '4', '12-00', '4', '67.00', '很好', '298');
INSERT INTO `cinema` VALUES ('5', '4', '888', '888', '88.00', '888', '300');
INSERT INTO `cinema` VALUES ('6', '4', '12-00', '99', '99.00', '99', '299');
INSERT INTO `cinema` VALUES ('7', '4', '2016-01-09', '1号放映厅', '40.00', '折扣价，宫崎骏的暖心作品', '300');
INSERT INTO `cinema` VALUES ('8', '1', '0', '0', '0.00', '0', '300');
INSERT INTO `cinema` VALUES ('9', '4', '422-01-1', '4', '66.00', '2016', '300');
INSERT INTO `cinema` VALUES ('10', '2', '2001-00-01', '2号', '2016.00', '22222', '300');

-- ----------------------------
-- Table structure for expression
-- ----------------------------
DROP TABLE IF EXISTS `expression`;
CREATE TABLE `expression` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `fid` int(255) DEFAULT NULL,
  `uid` int(255) DEFAULT NULL,
  `con` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of expression
-- ----------------------------
INSERT INTO `expression` VALUES ('2', '2', '5', '不知道讲了啥');
INSERT INTO `expression` VALUES ('5', '8', '6', '酷酷的 很好');
INSERT INTO `expression` VALUES ('6', '7', '7', '如果邓布利多没有死就好了');
INSERT INTO `expression` VALUES ('7', '5', '4', '看了又看');

-- ----------------------------
-- Table structure for film
-- ----------------------------
DROP TABLE IF EXISTS `film`;
CREATE TABLE `film` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `director` varchar(30) DEFAULT NULL,
  `type` char(10) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of film
-- ----------------------------
INSERT INTO `film` VALUES ('1', '我的少女时代', '2015-11-01', '120', 'bo', '青春', '上映', null, '国语', 'https://www.baidu.com/');
INSERT INTO `film` VALUES ('2', '三十', '2014-02-02', '120', 'chen', '悲剧', '下架', null, '国语', 'https://www.baidu.com/');
INSERT INTO `film` VALUES ('3', '小王子', '2014-43-23', '60', '丽丽', '悲剧', '热映', null, '国语', 'https://www.baidu.com/');
INSERT INTO `film` VALUES ('4', '起风了', '1992-09-09', '80', '贝壳', '动作', '过时', null, '国语', 'https://www.baidu.com/');
INSERT INTO `film` VALUES ('5', '狼牙', '2000-09-09', '120', '吴京', '动作', '热映', null, '国语', 'https://www.baidu.com/');
INSERT INTO `film` VALUES ('6', '战狼', '2015-06-06', '120', '吴京', '动作', '热评', null, '国语', 'https://www.baidu.com/');
INSERT INTO `film` VALUES ('7', '哈利波特', '2000-09-09', '130', '梅林', '科幻', '青少年', null, '英文', 'https://www.baidu.com/');
INSERT INTO `film` VALUES ('8', '神探夏洛克', '2016-01-01', '130', 'Creator', '推理', '刚上映', null, '英语', 'http://www.baidu.com');
INSERT INTO `film` VALUES ('9', '因为是女子', '2020-09-09', '130分钟', 'lily', '暖人', '即将上映', null, '韩语', 'http://www.cau.edu.cn');
INSERT INTO `film` VALUES ('10', '星球大战', '1016-01-10', '123', '123123', '12312', '123', null, '123', 'http://www.baidu.com');

-- ----------------------------
-- Table structure for hcinema
-- ----------------------------
DROP TABLE IF EXISTS `hcinema`;
CREATE TABLE `hcinema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `showtext` varchar(255) DEFAULT NULL,
  `num` int(255) DEFAULT '300',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of hcinema
-- ----------------------------
INSERT INTO `hcinema` VALUES ('1', '1', '2014-11-01', '1号厅', '88.00', '喜剧???', '300');
INSERT INTO `hcinema` VALUES ('2', '2', '1992-02-02', '3号', '45.00', '热？？', '299');
INSERT INTO `hcinema` VALUES ('3', '1', '2005-01-01', '5号', '33.00', '好？？', '299');
INSERT INTO `hcinema` VALUES ('4', '4', '000000', '0', '78.00', '热评', '300');
INSERT INTO `hcinema` VALUES ('5', '2', '2000-11-11', '2号', '2016.00', '222222', '300');
INSERT INTO `hcinema` VALUES ('6', '6', '0000', '0', '100.00', '好看', '300');
INSERT INTO `hcinema` VALUES ('7', '9', '2000-11-11', '12', '77.00', '425', '300');

-- ----------------------------
-- Table structure for order1
-- ----------------------------
DROP TABLE IF EXISTS `order1`;
CREATE TABLE `order1` (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `cid` int(255) NOT NULL,
  `uid` int(30) NOT NULL,
  `fid` int(30) NOT NULL,
  `status` int(255) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  `listid` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order1
-- ----------------------------
INSERT INTO `order1` VALUES ('5', '2', '5', '6', '4', '2016-01-04 10:15:01', '6');
INSERT INTO `order1` VALUES ('6', '2', '5', '2', '4', '2016-01-04 10:15:03', '5');
INSERT INTO `order1` VALUES ('7', '2', '5', '4', '4', '2016-01-04 10:15:06', '4');
INSERT INTO `order1` VALUES ('8', '2', '5', '1', '4', '2016-01-04 10:15:08', '3');
INSERT INTO `order1` VALUES ('9', '2', '5', '2', '4', '2016-01-04 10:15:10', '2');
INSERT INTO `order1` VALUES ('10', '2', '5', '1', '4', '2016-01-04 10:15:12', '1');
INSERT INTO `order1` VALUES ('12', '1', '6', '4', '4', '2016-01-04 20:13:44', '10');
INSERT INTO `order1` VALUES ('14', '1', '6', '4', '1', '2016-01-04 20:13:53', '6');
INSERT INTO `order1` VALUES ('15', '1', '6', '4', '1', '2016-01-04 20:14:02', '10');
INSERT INTO `order1` VALUES ('16', '1', '6', '4', '1', '2016-01-04 20:14:04', '4');
INSERT INTO `order1` VALUES ('18', '2', '6', '2', '0', '2016-01-04 20:14:19', '5');
INSERT INTO `order1` VALUES ('19', '2', '6', '2', '2', '2016-01-04 20:14:21', '2');
INSERT INTO `order1` VALUES ('20', '3', '7', '3', '1', '2016-01-05 08:11:08', '4');
INSERT INTO `order1` VALUES ('21', '3', '7', '2', '1', '2016-01-05 08:11:11', '2');
INSERT INTO `order1` VALUES ('23', '1', '7', '4', '2', '2016-01-05 08:11:28', '6');
INSERT INTO `order1` VALUES ('24', '1', '7', '3', '1', '2016-01-05 08:12:09', '3');
INSERT INTO `order1` VALUES ('25', '1', '8', '1', '1', '2016-01-05 14:27:54', '1');
INSERT INTO `order1` VALUES ('26', '1', '8', '2', '2', '2016-01-05 14:28:18', '10');
INSERT INTO `order1` VALUES ('27', '3', '5', '3', '2', '2016-01-05 14:54:51', '4');

-- ----------------------------
-- Table structure for starcinema
-- ----------------------------
DROP TABLE IF EXISTS `starcinema`;
CREATE TABLE `starcinema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `showtext` varchar(255) DEFAULT NULL,
  `num` int(255) DEFAULT '280',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of starcinema
-- ----------------------------
INSERT INTO `starcinema` VALUES ('1', '1', '2014-11-01', '1号厅', '88.00', '喜剧!!!!', '280');
INSERT INTO `starcinema` VALUES ('2', '2', '1992-02-02', '3号', '45.00', '热!!!', '280');
INSERT INTO `starcinema` VALUES ('3', '1', '2005-01-01', '5号', '33.00', '好!!!', '280');
INSERT INTO `starcinema` VALUES ('4', '3', '1000-09-09', '10', '55.00', '热', '279');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(255) DEFAULT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `password` varchar(30) NOT NULL,
  `remainder` double DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `type` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', null, 'c1', '123', null, '89896765', '88888@126.com', '0');
INSERT INTO `user` VALUES ('2', null, 'c2', '123', null, '123', '123@qq.com', '0');
INSERT INTO `user` VALUES ('3', null, 'c3', '123321', null, '5656566', '123456@11.com', '0');
INSERT INTO `user` VALUES ('4', '王一', null, '123', '100', '18811993230', 'wangyi@qq.com', '1');
INSERT INTO `user` VALUES ('5', '112', null, '12', '100', '188119900032', '123456@11.com', '1');
INSERT INTO `user` VALUES ('6', '阿布', null, '320615', '100', '188117766554', '1111111@qq.com', '1');
INSERT INTO `user` VALUES ('7', '十六', null, '123456123456', '100', '17617717771', '78877887@126.com', '1');
INSERT INTO `user` VALUES ('8', '王天', null, '123', '100', '1988', '123@qq.com', '1');
