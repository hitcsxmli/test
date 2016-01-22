/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : timematching

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2016-01-10 20:30:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tim_activity`
-- ----------------------------
DROP TABLE IF EXISTS `tim_activity`;
CREATE TABLE `tim_activity` (
  `ActivityId` int(100) NOT NULL AUTO_INCREMENT,
  `ActivityTitle` varchar(500) DEFAULT NULL COMMENT '活动标题',
  `ActivityLeaderId` varchar(100) DEFAULT 'userId' COMMENT '活动发起者',
  `ActivityPlace` varchar(100) DEFAULT NULL,
  `ActivityLeaderName` varchar(100) DEFAULT NULL COMMENT '发起者姓名',
  `ActivityRemark` varchar(500) DEFAULT '无' COMMENT '其他说明',
  `ActivityStartDate` date DEFAULT NULL COMMENT '活动开始时间',
  `ActivityEndDate` date DEFAULT NULL COMMENT '活动结束日期',
  PRIMARY KEY (`ActivityId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tim_activity
-- ----------------------------
INSERT INTO `tim_activity` VALUES ('4', 'a', 'userId', 'a', 'a', 'a', null, null);
INSERT INTO `tim_activity` VALUES ('5', 'll', 'userId', 'll', 'll', 'll', null, null);
INSERT INTO `tim_activity` VALUES ('6', '感知计算党支部发展大会2345789', 'userId', '综合楼21623457896', '李晓明2345789', '无2345789', null, null);
INSERT INTO `tim_activity` VALUES ('7', 'test title', 'asd', '综合楼701', '张三', '无', null, null);
INSERT INTO `tim_activity` VALUES ('8', 'testa', 'userId', '综合楼', '离我好', '眼底哦饭', '2015-11-11', '2015-11-11');
INSERT INTO `tim_activity` VALUES ('9', '新增活动', 'userId', '新增活动地', '新增活动发起人', '新增活动备注', '1970-01-01', '1970-01-01');
INSERT INTO `tim_activity` VALUES ('10', '1', 'userId', '1', '1', '1212', '1970-01-01', '1970-01-01');
INSERT INTO `tim_activity` VALUES ('11', '新增活动3', 'userId', '新增活动地点', '新增活动发起人', '新增备注3', '2015-12-27', '2015-12-31');
INSERT INTO `tim_activity` VALUES ('12', '创客面对面', 'userId', '管楼216', '孙中元', '咖啡', '2015-12-28', '2015-12-28');

-- ----------------------------
-- Table structure for `tim_record`
-- ----------------------------
DROP TABLE IF EXISTS `tim_record`;
CREATE TABLE `tim_record` (
  `RecordId` int(100) NOT NULL AUTO_INCREMENT,
  `RecordDate` date DEFAULT NULL,
  `RecordDateStart` int(2) DEFAULT NULL,
  `RecordDateEnd` int(2) DEFAULT NULL,
  `RecordUserId` varchar(100) DEFAULT NULL,
  `RecordActivityId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RecordId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tim_record
-- ----------------------------
INSERT INTO `tim_record` VALUES ('6', '2015-12-27', '0', '2', 'test', '11');
INSERT INTO `tim_record` VALUES ('7', '2015-12-28', '0', '4', 'test', '11');
INSERT INTO `tim_record` VALUES ('8', '2015-12-29', '0', '6', 'test', '11');
INSERT INTO `tim_record` VALUES ('9', '2015-12-27', '0', '8', 'test3', '11');
INSERT INTO `tim_record` VALUES ('10', '2015-12-31', '0', '10', 'test', '11');
INSERT INTO `tim_record` VALUES ('11', '2015-12-27', '1', '4', 'test2', '11');
INSERT INTO `tim_record` VALUES ('12', '2015-12-28', '0', '3', 'test2', '11');
INSERT INTO `tim_record` VALUES ('13', '2015-12-29', '0', '0', 'test2', '11');
INSERT INTO `tim_record` VALUES ('14', '2015-12-30', '0', '7', 'test2', '11');
INSERT INTO `tim_record` VALUES ('15', '2015-12-31', '0', '9', 'test2', '11');
INSERT INTO `tim_record` VALUES ('16', '2015-12-28', '3', '9', 'test2', '12');

-- ----------------------------
-- Table structure for `tim_user`
-- ----------------------------
DROP TABLE IF EXISTS `tim_user`;
CREATE TABLE `tim_user` (
  `UserId` int(100) NOT NULL AUTO_INCREMENT,
  `UserOpenid` varchar(200) DEFAULT '用户的openid',
  `UserRefreshToken` varchar(200) DEFAULT NULL,
  `UserNickName` varchar(200) DEFAULT NULL,
  `UserCity` varchar(100) DEFAULT NULL,
  `UserSex` int(1) DEFAULT NULL,
  `UserProvince` varchar(100) DEFAULT NULL COMMENT '1为男',
  `UserCountry` varchar(100) DEFAULT NULL,
  `UserHeadImgUrl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tim_user
-- ----------------------------
INSERT INTO `tim_user` VALUES ('14', 'o0JATs0EAfwtFGwhbzXkrbQdSpgs', 'OezXcEiiBSKSxW0eoylIeILLiO68XO9umIQAJUml1cDLV6kj0Vfm2MMZUexKup4-Tewn_5j62LEYxM4YQoT1YRVuMWXt1aUCUKh7z8mp8ra5K6ibxGNTxKyORsAcfVSdVpVCnhid02MBRFwWNL9HWw', '小明要加油啦', '哈尔滨', '1', '黑龙江', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKvPDtNxfk8ibAcicojljWHu4pW9tHnC1OgsqqEPkx7S1U4xoxNh7pdc6d9gpBNiblNqWjvj54uNv0ibQ/0');
INSERT INTO `tim_user` VALUES ('25', 'o0JATs9whVPA80hiMToUlMcQtppE', 'OezXcEiiBSKSxW0eoylIeILLiO68XO9umIQAJUml1cAWhiDDWev8AlfYKfnsuc22AFkqSkuAtlVpc8n5glpuazs_qwCw7NB8qFfs3qviY50AxVO9kzabNajS9FZID-disQ3aoEauNcs1rrOhfbMR1Q', '小明要努力啦', '哈尔滨', '1', '黑龙江', '中国', 'http://wx.qlogo.cn/mmopen/0TZ5FJqOgiclqiaRhStXUjfjJgYPzqfxLmInLZox78QObdDxAjtWVIVIiaeyBKbyADUlibNklw2sSBblMNstgR4ia9CgFtN6dTAKQ/0');
