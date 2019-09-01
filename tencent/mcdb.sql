/*
 Navicat MySQL Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : 127.0.0.1
 Source Database       : mcdb

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : utf-8

 Date: 07/05/2019 15:06:47 PM
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `liu_activity_inform`
-- ----------------------------
DROP TABLE IF EXISTS `liu_activity_inform`;
CREATE TABLE `liu_activity_inform` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `activity_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '??????',
  `activity_start_time` bigint(20) NOT NULL DEFAULT '0' COMMENT '??????',
  `activity_end_time` bigint(20) NOT NULL DEFAULT '0' COMMENT '??????',
  `activity_title` varchar(255) NOT NULL DEFAULT '' COMMENT '????',
  `activity_content` text NOT NULL COMMENT '????',
  `publisher_id` int(11) NOT NULL,
  `publisher_type` int(11) NOT NULL,
  `activity_status` int(11) NOT NULL,
  `activity_attach` varchar(255) DEFAULT NULL,
  `activity_attach_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='?????';

-- ----------------------------
--  Table structure for `liu_activity_user`
-- ----------------------------
DROP TABLE IF EXISTS `liu_activity_user`;
CREATE TABLE `liu_activity_user` (
  `activity_user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??',
  `activity_user_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '????????',
  `activity_user_type` int(11) NOT NULL DEFAULT '1' COMMENT '?????????1??2??',
  `activity_id` int(11) NOT NULL COMMENT '????',
  PRIMARY KEY (`activity_user_id`),
  KEY `liu_22` (`activity_id`),
  CONSTRAINT `liu_22` FOREIGN KEY (`activity_id`) REFERENCES `liu_activity_inform` (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='???????';

-- ----------------------------
--  Table structure for `liu_attence_setting`
-- ----------------------------
DROP TABLE IF EXISTS `liu_attence_setting`;
CREATE TABLE `liu_attence_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `setting_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '??????',
  `setting_type` int(11) NOT NULL DEFAULT '1' COMMENT '?????1???????????????????????????2?????????????????????????????',
  `setting_starttime` bigint(20) NOT NULL DEFAULT '0' COMMENT '??????',
  `setting_starttime1` bigint(20) NOT NULL DEFAULT '0' COMMENT '????????',
  `setting_endtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '??????',
  `setting_endtime1` bigint(20) NOT NULL DEFAULT '0' COMMENT '????????',
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='??????????1???????????????????????????2?????????????????????';

-- ----------------------------
--  Records of `liu_attence_setting`
-- ----------------------------
BEGIN;
INSERT INTO `liu_attence_setting` VALUES ('1', '0', '1', '0', '0', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `liu_card_record`
-- ----------------------------
DROP TABLE IF EXISTS `liu_card_record`;
CREATE TABLE `liu_card_record` (
  `card_record_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `card_id` varchar(255) DEFAULT '' COMMENT '??',
  `card_record_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '????',
  `card_record_time` bigint(20) NOT NULL DEFAULT '0' COMMENT '????',
  `card_record_address` varchar(255) NOT NULL DEFAULT '' COMMENT '????',
  `card_img_url` varchar(255) DEFAULT '' COMMENT '??????',
  PRIMARY KEY (`card_record_id`),
  KEY `liu_20` (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='????';

-- ----------------------------
--  Table structure for `liu_checkin`
-- ----------------------------
DROP TABLE IF EXISTS `liu_checkin`;
CREATE TABLE `liu_checkin` (
  `checkin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `checkin_type_id` int(11) NOT NULL COMMENT '????',
  `checkin_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '??????',
  `checkin_date` bigint(20) NOT NULL DEFAULT '0' COMMENT '????',
  `stu_id` int(11) NOT NULL COMMENT '????',
  `class_id` int(11) NOT NULL COMMENT '????',
  PRIMARY KEY (`checkin_id`),
  KEY `liu_32` (`checkin_type_id`),
  KEY `liu_33` (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `liu_checkin`
-- ----------------------------
BEGIN;
INSERT INTO `liu_checkin` VALUES ('1', '1', '1531313498', '1531238400', '1', '1'), ('2', '1', '1531313498', '1531238400', '2', '1'), ('3', '5', '1531313498', '1531238400', '3', '1'), ('4', '1', '1531354654', '1531324800', '1', '1'), ('5', '1', '1531354654', '1531324800', '2', '1'), ('6', '5', '1531354654', '1531324800', '3', '1'), ('7', '2', '1532252154', '1532188800', '1', '1'), ('8', '1', '1532252154', '1532188800', '2', '1'), ('9', '5', '1532252154', '1532188800', '3', '1');
COMMIT;

-- ----------------------------
--  Table structure for `liu_checkin_type`
-- ----------------------------
DROP TABLE IF EXISTS `liu_checkin_type`;
CREATE TABLE `liu_checkin_type` (
  `checkin_type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `checkin_type_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '??????',
  `checkin_type_name` varchar(255) NOT NULL DEFAULT '' COMMENT '????',
  `checkin_type` int(11) NOT NULL DEFAULT '0' COMMENT '?????1??2????3????',
  PRIMARY KEY (`checkin_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='????????/??/??/???';

-- ----------------------------
--  Records of `liu_checkin_type`
-- ----------------------------
BEGIN;
INSERT INTO `liu_checkin_type` VALUES ('1', '1531312812', '??', '1'), ('2', '1531312812', '??', '1'), ('3', '1531312812', '??', '2'), ('4', '1531312812', '??', '2'), ('5', '1531312812', '???', '3'), ('6', '1531312812', '???', '3');
COMMIT;

-- ----------------------------
--  Table structure for `liu_class`
-- ----------------------------
DROP TABLE IF EXISTS `liu_class`;
CREATE TABLE `liu_class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `class_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '????',
  `class_name` varchar(50) NOT NULL DEFAULT '' COMMENT '????',
  `class_abbreviation` varchar(20) NOT NULL DEFAULT '' COMMENT '????',
  `class_status` int(11) NOT NULL DEFAULT '1' COMMENT '?????1??2??3??',
  `grade_id` int(11) NOT NULL COMMENT '????',
  `class_teach_id` int(11) NOT NULL COMMENT '???',
  PRIMARY KEY (`class_id`),
  KEY `grade_id` (`grade_id`),
  KEY `liu_18` (`class_teach_id`),
  CONSTRAINT `liu_16` FOREIGN KEY (`grade_id`) REFERENCES `liu_grade` (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='???';

-- ----------------------------
--  Records of `liu_class`
-- ----------------------------
BEGIN;
INSERT INTO `liu_class` VALUES ('1', '1531313064', '1?', '1?', '1', '1', '1'), ('2', '1531313078', '2?', '2?', '1', '1', '2'), ('3', '1531313125', '1?', '1?', '1', '2', '1'), ('4', '1531313142', '2?', '2?', '1', '2', '2');
COMMIT;

-- ----------------------------
--  Table structure for `liu_course_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `liu_course_teacher`;
CREATE TABLE `liu_course_teacher` (
  `course_teach_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_teach_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '????',
  `class_id` int(11) NOT NULL COMMENT '????',
  `courses_teach_id` int(11) NOT NULL COMMENT '??????',
  PRIMARY KEY (`course_teach_id`),
  KEY `sys_teach_id` (`courses_teach_id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `liu_28` FOREIGN KEY (`class_id`) REFERENCES `liu_class` (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='??????????????';

-- ----------------------------
--  Records of `liu_course_teacher`
-- ----------------------------
BEGIN;
INSERT INTO `liu_course_teacher` VALUES ('4', '0', '2', '2'), ('5', '0', '1', '2'), ('6', '1531313125', '3', '1'), ('7', '1531313142', '4', '2');
COMMIT;

-- ----------------------------
--  Table structure for `liu_grade`
-- ----------------------------
DROP TABLE IF EXISTS `liu_grade`;
CREATE TABLE `liu_grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `grade_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '????',
  `grade_order` int(11) NOT NULL DEFAULT '1' COMMENT '????',
  `grade_name` varchar(50) NOT NULL DEFAULT '' COMMENT '????',
  `grade_abbreviation` varchar(20) NOT NULL DEFAULT '' COMMENT '????',
  `grade_graduation` int(11) NOT NULL DEFAULT '1' COMMENT '?????1?2?',
  `grade_status` int(11) NOT NULL DEFAULT '1' COMMENT '?????1??2??3??',
  `school_id` int(11) NOT NULL COMMENT '????',
  PRIMARY KEY (`grade_id`),
  KEY `school_id` (`school_id`),
  CONSTRAINT `liu_15` FOREIGN KEY (`school_id`) REFERENCES `liu_school` (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='???';

-- ----------------------------
--  Records of `liu_grade`
-- ----------------------------
BEGIN;
INSERT INTO `liu_grade` VALUES ('1', '1531312854', '1', '????', '??', '0', '1', '1'), ('2', '1531312864', '2', '????', '??', '0', '1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `liu_log`
-- ----------------------------
DROP TABLE IF EXISTS `liu_log`;
CREATE TABLE `liu_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `log_userid` int(11) NOT NULL DEFAULT '0' COMMENT '???id',
  `log_username` varchar(255) NOT NULL DEFAULT '' COMMENT '?????',
  `log_user_type` int(11) NOT NULL DEFAULT '0' COMMENT '????id',
  `log_login_ip` char(20) NOT NULL DEFAULT '' COMMENT '??ip',
  `log_content` varchar(255) NOT NULL DEFAULT '' COMMENT '????',
  `log_status` int(11) NOT NULL DEFAULT '1' COMMENT '?????1:??2???3???',
  `log_module` varchar(255) NOT NULL DEFAULT '' COMMENT '????',
  `log_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '????',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='liu??????';

-- ----------------------------
--  Records of `liu_log`
-- ----------------------------
BEGIN;
INSERT INTO `liu_log` VALUES ('1', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531312824'), ('2', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531312824'), ('3', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531312825'), ('4', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????-????', '1531312854'), ('5', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????-????', '1531312864'), ('6', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????-????', '1531312893'), ('7', '0', 'liu', '0', '127.0.0.1', '?????????', '2', '????', '1531312901'), ('8', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531312923'), ('9', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531312923'), ('10', '0', 'liu', '0', '127.0.0.1', '?????????', '2', '????', '1531312934'), ('11', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????-????', '1531312940'), ('12', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????-????', '1531312943'), ('13', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531312951'), ('14', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531312951'), ('15', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????-????', '1531312990'), ('16', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????-????', '1531313008'), ('17', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????-????', '1531313017'), ('18', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????-????', '1531313064'), ('19', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????-????', '1531313078'), ('20', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????-????', '1531313088'), ('21', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????-????', '1531313094'), ('22', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????-????', '1531313099'), ('23', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????-????', '1531313125'), ('24', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????-????', '1531313142'), ('25', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????-????', '1531313196'), ('26', '0', 'liu', '0', '127.0.0.1', '?????????', '2', '????', '1531313202'), ('27', '0', 'liu', '0', '127.0.0.1', '?????????', '2', '????', '1531313204'), ('28', '0', 'liu', '0', '127.0.0.1', '?????????', '2', '????', '1531313206'), ('29', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313361'), ('30', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313361'), ('31', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313362'), ('32', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313363'), ('33', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313363'), ('34', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313363'), ('35', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313364'), ('36', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313364'), ('37', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313364'), ('38', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313365'), ('39', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313365'), ('40', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313365'), ('41', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313366'), ('42', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313366'), ('43', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313367'), ('44', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313368'), ('45', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313368'), ('46', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313368'), ('47', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????-????', '1531313420'), ('48', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????-????', '1531313467'), ('49', '0', 'liu', '0', '127.0.0.1', '???????', '1', '????-????', '1531313498'), ('50', '0', 'liu', '0', '127.0.0.1', '???????', '1', '????-????', '1531313531'), ('51', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313927'), ('52', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313927'), ('53', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531313928'), ('54', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531354623'), ('55', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531354623'), ('56', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531354640'), ('57', '0', 'liu', '0', '127.0.0.1', '???????', '1', '????-????', '1531354654'), ('58', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531384093'), ('59', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531384093'), ('60', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1531384094'), ('61', '0', 'liu', '0', '127.0.0.1', '???????', '1', '????-????', '1531384137'), ('62', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1532252078'), ('63', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1532252078'), ('64', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1532252081'), ('65', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1532252088'), ('66', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1532252088'), ('67', '0', 'liu', '0', '127.0.0.1', '?????????', '1', '????-????', '1532252092'), ('68', '0', 'liu', '0', '127.0.0.1', '???????', '1', '????-????', '1532252154'), ('69', '0', 'liu', '0', '127.0.0.1', '???????', '1', '????-????', '1532252156'), ('70', '0', 'liu', '0', '127.0.0.1', '???????', '1', '????-????', '1532252195');
COMMIT;

-- ----------------------------
--  Table structure for `liu_message_inform`
-- ----------------------------
DROP TABLE IF EXISTS `liu_message_inform`;
CREATE TABLE `liu_message_inform` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????id',
  `message_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '????????',
  `message_title` varchar(255) NOT NULL DEFAULT '' COMMENT '??????',
  `message_content` text NOT NULL COMMENT '??????',
  `publisher_id` int(11) NOT NULL COMMENT '?????',
  `publisher_type` int(11) NOT NULL,
  `message_status` int(11) NOT NULL DEFAULT '1' COMMENT '?????1??2??3??',
  `message_content_text` text NOT NULL COMMENT '??????',
  `message_attach` varchar(255) DEFAULT NULL,
  `message_attach_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='???????';

-- ----------------------------
--  Table structure for `liu_role`
-- ----------------------------
DROP TABLE IF EXISTS `liu_role`;
CREATE TABLE `liu_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_addtime` bigint(20) NOT NULL DEFAULT '0',
  `role_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='.?????????????????????????????????????';

-- ----------------------------
--  Records of `liu_role`
-- ----------------------------
BEGIN;
INSERT INTO `liu_role` VALUES ('1', '1531312812', '??'), ('2', '1531312812', '????'), ('3', '1531312812', '????'), ('4', '1531312812', '???'), ('5', '1531312812', '???'), ('6', '1531312812', '????'), ('7', '1531312812', '???'), ('8', '1531312812', '??');
COMMIT;

-- ----------------------------
--  Table structure for `liu_role_module`
-- ----------------------------
DROP TABLE IF EXISTS `liu_role_module`;
CREATE TABLE `liu_role_module` (
  `role_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_module_addtime` bigint(20) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`role_module_id`),
  KEY `liu_26` (`module_id`),
  KEY `liu_27` (`role_id`),
  CONSTRAINT `liu_26` FOREIGN KEY (`module_id`) REFERENCES `sys_module` (`module_id`),
  CONSTRAINT `liu_27` FOREIGN KEY (`role_id`) REFERENCES `liu_role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='?? ?? ??????????';

-- ----------------------------
--  Table structure for `liu_school`
-- ----------------------------
DROP TABLE IF EXISTS `liu_school`;
CREATE TABLE `liu_school` (
  `school_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `school_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '????',
  `school_name` varchar(50) NOT NULL DEFAULT '' COMMENT '????',
  `school_address` varchar(255) NOT NULL DEFAULT '' COMMENT '????',
  `school_tel` char(20) NOT NULL DEFAULT '0' COMMENT '????',
  `school_type` varchar(50) NOT NULL DEFAULT '' COMMENT '????',
  `school_year` varchar(50) NOT NULL DEFAULT '' COMMENT '??????????????2017-2018?2018-2019',
  `school_term` varchar(50) NOT NULL DEFAULT '' COMMENT '??',
  `school_logo` varchar(255) NOT NULL DEFAULT '' COMMENT '??logo??',
  `unit_id` int(11) NOT NULL COMMENT '????',
  `school_num` int(11) NOT NULL DEFAULT '1' COMMENT '??????',
  `school_code` varchar(255) NOT NULL DEFAULT '' COMMENT '?????',
  `school_status` int(11) NOT NULL DEFAULT '1' COMMENT '?????1??2??3',
  PRIMARY KEY (`school_id`),
  KEY `school_id` (`school_id`),
  KEY `liu_14` (`unit_id`),
  CONSTRAINT `liu_14` FOREIGN KEY (`unit_id`) REFERENCES `sys_unit` (`unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='????????????????(?????????????????????????)\r\n????????';

-- ----------------------------
--  Records of `liu_school`
-- ----------------------------
BEGIN;
INSERT INTO `liu_school` VALUES ('1', '1531312811', '????', '', '0', '', '', '', '', '2', '1', '', '0');
COMMIT;

-- ----------------------------
--  Table structure for `liu_sensitive_words`
-- ----------------------------
DROP TABLE IF EXISTS `liu_sensitive_words`;
CREATE TABLE `liu_sensitive_words` (
  `sw_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '???id',
  `sw_content` varchar(255) NOT NULL DEFAULT '' COMMENT '?????',
  PRIMARY KEY (`sw_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='???';

-- ----------------------------
--  Records of `liu_sensitive_words`
-- ----------------------------
BEGIN;
INSERT INTO `liu_sensitive_words` VALUES ('1', '');
COMMIT;

-- ----------------------------
--  Table structure for `liu_stu_inform`
-- ----------------------------
DROP TABLE IF EXISTS `liu_stu_inform`;
CREATE TABLE `liu_stu_inform` (
  `teach_inform_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????????',
  `teach_inform_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '????',
  `message_id` int(11) NOT NULL COMMENT '??????',
  `stu_id` int(11) DEFAULT NULL COMMENT '????',
  `class_id` int(11) DEFAULT NULL COMMENT '????',
  `is_read` int(11) NOT NULL DEFAULT '1' COMMENT '?????1??2??',
  PRIMARY KEY (`teach_inform_id`),
  KEY `liu_20` (`stu_id`),
  KEY `liu_21` (`message_id`),
  KEY `liu_211` (`class_id`),
  CONSTRAINT `liu_20` FOREIGN KEY (`stu_id`) REFERENCES `liu_student` (`stu_id`),
  CONSTRAINT `liu_21` FOREIGN KEY (`message_id`) REFERENCES `liu_message_inform` (`message_id`),
  CONSTRAINT `liu_211` FOREIGN KEY (`class_id`) REFERENCES `liu_class` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='?????????';

-- ----------------------------
--  Table structure for `liu_stu_leave`
-- ----------------------------
DROP TABLE IF EXISTS `liu_stu_leave`;
CREATE TABLE `liu_stu_leave` (
  `leave_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `leave_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '??????',
  `leave_type_id` int(11) NOT NULL COMMENT '????',
  `leave_start_time` bigint(20) NOT NULL DEFAULT '0' COMMENT '????',
  `leave_end_time` bigint(20) NOT NULL DEFAULT '0' COMMENT '????',
  `leave_remarks` varchar(255) NOT NULL DEFAULT '' COMMENT '????',
  `leave_stu_id` int(11) NOT NULL COMMENT '??id',
  `leave_status` int(11) NOT NULL DEFAULT '1' COMMENT '?????1???2???3??',
  PRIMARY KEY (`leave_id`),
  KEY `liu_23` (`leave_stu_id`),
  KEY `liu_24` (`leave_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='?????';

-- ----------------------------
--  Table structure for `liu_student`
-- ----------------------------
DROP TABLE IF EXISTS `liu_student`;
CREATE TABLE `liu_student` (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `stu_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '????',
  `stu_account` char(20) NOT NULL DEFAULT '' COMMENT '????',
  `stu_passwd` varchar(50) NOT NULL DEFAULT '' COMMENT '????md5??',
  `stu_name` varchar(50) NOT NULL DEFAULT '' COMMENT '????',
  `stu_number` varchar(50) NOT NULL DEFAULT '' COMMENT '????',
  `stu_gender` int(11) NOT NULL DEFAULT '0' COMMENT '????:0?1?',
  `stu_birthday` bigint(20) NOT NULL DEFAULT '0' COMMENT '????',
  `stu_status` int(11) NOT NULL DEFAULT '1' COMMENT '?????1??2??3??',
  `parent_tel` char(20) NOT NULL DEFAULT '0' COMMENT '????',
  `parent_name` varchar(255) NOT NULL DEFAULT '' COMMENT '????',
  `card_id` varchar(255) NOT NULL DEFAULT '' COMMENT '???ID',
  `class_id` int(11) NOT NULL COMMENT '????',
  `wechat_token` varchar(255) NOT NULL DEFAULT '' COMMENT '????token?',
  `headImgUrl` varchar(255) NOT NULL DEFAULT '' COMMENT '????',
  `nickName` varchar(255) NOT NULL DEFAULT '' COMMENT '????',
  `stu_prefix` char(20) NOT NULL DEFAULT '' COMMENT '????',
  `stu_father_img` varchar(255) NOT NULL DEFAULT '' COMMENT '????',
  `stu_mom_img` varchar(255) NOT NULL DEFAULT '' COMMENT '????',
  `stu_img` varchar(255) NOT NULL DEFAULT '' COMMENT '????',
  PRIMARY KEY (`stu_id`),
  KEY `class_id` (`class_id`),
  KEY `liu_31` (`card_id`),
  CONSTRAINT `liu_30` FOREIGN KEY (`class_id`) REFERENCES `liu_class` (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='???\r\n????????????????????';

-- ----------------------------
--  Records of `liu_student`
-- ----------------------------
BEGIN;
INSERT INTO `liu_student` VALUES ('1', '1531313196', '??', '01d7f40760960e7bd9443513f22ab9af', '??', '001', '1', '1532275200', '1', '12312312312', '??', '12312312312', '1', '', '', '', 'liu', '', '', ''), ('2', '1531313420', 'lisi', 'dc3a8f1670d65bea69b7b65048a0ac40', '??', '002', '1', '1531584000', '1', '12312312312', '??', '12312312312', '1', '', '', '', 'liu', '', '', ''), ('3', '1531313467', '??', '9f001e4166cf26bfbdd3b4f67d9ef617', '??', '003', '0', '1531065600', '1', '23423423423', '??', '23423423423', '1', '', '', '', 'liu', '', '', '');
COMMIT;

-- ----------------------------
--  Table structure for `liu_teach`
-- ----------------------------
DROP TABLE IF EXISTS `liu_teach`;
CREATE TABLE `liu_teach` (
  `teach_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `teach_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '??????',
  `teach_account` char(20) NOT NULL DEFAULT '' COMMENT '????',
  `teach_passwd` varchar(50) NOT NULL DEFAULT '' COMMENT '????',
  `teach_tel` char(20) NOT NULL DEFAULT '0' COMMENT '????',
  `teach_status` int(11) NOT NULL DEFAULT '1' COMMENT '?????1??2??3??',
  `teach_gender` int(11) NOT NULL DEFAULT '0' COMMENT '?????0???1?',
  `teach_type` int(11) NOT NULL DEFAULT '3' COMMENT '???????3????',
  `teach_prefix` char(20) NOT NULL DEFAULT '' COMMENT '????',
  `teach_name` varchar(50) NOT NULL DEFAULT '' COMMENT '????',
  PRIMARY KEY (`teach_id`),
  UNIQUE KEY `ak_key_2` (`teach_account`),
  KEY `sys_teach_id` (`teach_id`),
  KEY `liu_6` (`teach_type`),
  CONSTRAINT `liu_6` FOREIGN KEY (`teach_type`) REFERENCES `sys_type` (`sys_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='??????????????????,??????????????3?????md5????';

-- ----------------------------
--  Records of `liu_teach`
-- ----------------------------
BEGIN;
INSERT INTO `liu_teach` VALUES ('1', '1531312893', 'caozhuren', '73bf4eca027662aa612a7bb48834e44c', '78978978978', '1', '1', '3', 'liu', '???'), ('2', '1531312990', 'liuyr', '84dc6a1547435cac4eb2f93f9f5eab93', '89089089089', '1', '1', '3', 'liu', '???');
COMMIT;

-- ----------------------------
--  Table structure for `liu_teach_role`
-- ----------------------------
DROP TABLE IF EXISTS `liu_teach_role`;
CREATE TABLE `liu_teach_role` (
  `teach_role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????id',
  `teach_role_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '????',
  `teach_id` int(11) NOT NULL COMMENT '????',
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`teach_role_id`),
  KEY `user_module_id` (`teach_role_id`),
  KEY `liu_11` (`teach_id`),
  KEY `liu_12` (`role_id`),
  CONSTRAINT `liu_11` FOREIGN KEY (`teach_id`) REFERENCES `liu_teach` (`teach_id`),
  CONSTRAINT `liu_12` FOREIGN KEY (`role_id`) REFERENCES `liu_role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='???????';

-- ----------------------------
--  Table structure for `oauth_consumer_registry`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_consumer_registry`;
CREATE TABLE `oauth_consumer_registry` (
  `ocr_id` int(11) NOT NULL AUTO_INCREMENT,
  `ocr_usa_id_ref` int(11) DEFAULT NULL,
  `ocr_consumer_key` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ocr_consumer_secret` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ocr_signature_methods` varchar(255) NOT NULL DEFAULT 'HMAC-SHA1,PLAINTEXT',
  `ocr_server_uri` varchar(255) NOT NULL,
  `ocr_server_uri_host` varchar(128) NOT NULL,
  `ocr_server_uri_path` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ocr_request_token_uri` varchar(255) NOT NULL,
  `ocr_authorize_uri` varchar(255) NOT NULL,
  `ocr_access_token_uri` varchar(255) NOT NULL,
  `ocr_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ocr_id`),
  UNIQUE KEY `ocr_consumer_key` (`ocr_consumer_key`,`ocr_usa_id_ref`,`ocr_server_uri`) USING BTREE,
  KEY `ocr_server_uri` (`ocr_server_uri`) USING BTREE,
  KEY `ocr_server_uri_host` (`ocr_server_uri_host`,`ocr_server_uri_path`) USING BTREE,
  KEY `ocr_usa_id_ref` (`ocr_usa_id_ref`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `oauth_consumer_registry`
-- ----------------------------
BEGIN;
INSERT INTO `oauth_consumer_registry` VALUES ('97', '1', '68115dc9cac312a9092bbd7cb20d7dc505b45fa0f', '60a8dfbd240b4ff56fb5566ebc76deb3', 'HMAC-SHA1,PLAINTEXT', 'http://127.0.0.1/Mcheck/index.php/Home/Login/', '127.0.0.1', '/Mcheck/index.php/Home/Login/', 'http://127.0.0.1/Mcheck/index.php/Home/Login/RequestToken', ' ', ' ', '2018-07-11 20:37:35'), ('99', '1', 'c4ec6fdae39ca454b53917fb8c0f0b5f05b45fa8b', 'd5df6a481cc6c014985031c655515b41', 'HMAC-SHA1,PLAINTEXT', 'http://127.0.0.1/Mcheck/index.php/Home/Login/', '127.0.0.1', '/Mcheck/index.php/Home/Login/', 'http://127.0.0.1/Mcheck/index.php/Home/Login/RequestToken', ' ', ' ', '2018-07-11 20:39:39'), ('104', '1', '0fb35bec8d711303377f0dfb41a2f01405b544f86', '7b41faa0c61cffa589064a04dfaf5160', 'HMAC-SHA1,PLAINTEXT', 'http://127.0.0.1/Mcheck/index.php/Home/Login/', '127.0.0.1', '/Mcheck/index.php/Home/Login/', 'http://127.0.0.1/Mcheck/index.php/Home/Login/RequestToken', ' ', ' ', '2018-07-22 17:33:58'), ('105', '3', 'fb750617b8791336898ac9ebaccc0bee05b544fad', '6eb53b5ff0bb32745418472bcfab321c', 'HMAC-SHA1,PLAINTEXT', 'http://127.0.0.1/Mcheck/index.php/Home/Login/', '127.0.0.1', '/Mcheck/index.php/Home/Login/', 'http://127.0.0.1/Mcheck/index.php/Home/Login/RequestToken', ' ', ' ', '2018-07-22 17:34:37');
COMMIT;

-- ----------------------------
--  Table structure for `oauth_consumer_token`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_consumer_token`;
CREATE TABLE `oauth_consumer_token` (
  `oct_id` int(11) NOT NULL AUTO_INCREMENT,
  `oct_ocr_id_ref` int(11) NOT NULL,
  `oct_usa_id_ref` int(11) NOT NULL,
  `oct_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `oct_token` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `oct_token_secret` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `oct_token_type` enum('request','authorized','access') DEFAULT NULL,
  `oct_token_ttl` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `oct_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`oct_id`),
  UNIQUE KEY `oct_ocr_id_ref` (`oct_ocr_id_ref`,`oct_token`) USING BTREE,
  UNIQUE KEY `oct_usa_id_ref` (`oct_usa_id_ref`,`oct_ocr_id_ref`,`oct_token_type`,`oct_name`) USING BTREE,
  KEY `oct_token_ttl` (`oct_token_ttl`) USING BTREE,
  CONSTRAINT `oauth_consumer_token_ibfk_1` FOREIGN KEY (`oct_ocr_id_ref`) REFERENCES `oauth_consumer_registry` (`ocr_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `oauth_consumer_token`
-- ----------------------------
BEGIN;
INSERT INTO `oauth_consumer_token` VALUES ('40', '97', '1', '', 'd551871b34efbd0fa0ac3c74fa095bb505b45fa0f', '96cd68e21e1ad47e6321cd742dbbcf0b', 'request', '2018-07-11 21:37:35', '2018-07-11 20:37:35'), ('42', '99', '1', '', 'a0ac4d570fd2263344d72c99fb9c5b8205b45fa8b', '5051f1bbd61b462f29814764581d793c', 'request', '2018-07-11 21:39:39', '2018-07-11 20:39:39'), ('47', '104', '1', '', '63368bb880cff951430c9b766690718f05b544f86', '76a6b8ad3525c13e79c63bee33b2edee', 'request', '2018-07-22 18:33:58', '2018-07-22 17:33:58'), ('48', '105', '3', '', '52d82a5203ada1ec874847655b5b226105b544fad', 'a5a4bfc2566d6ff81e8693f25582a53c', 'request', '2018-07-22 18:34:37', '2018-07-22 17:34:37');
COMMIT;

-- ----------------------------
--  Table structure for `oauth_server_nonce`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_server_nonce`;
CREATE TABLE `oauth_server_nonce` (
  `osn_id` int(11) NOT NULL AUTO_INCREMENT,
  `osn_consumer_key` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `osn_token` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `osn_timestamp` bigint(20) NOT NULL,
  `osn_nonce` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`osn_id`),
  UNIQUE KEY `osn_consumer_key` (`osn_consumer_key`,`osn_token`,`osn_timestamp`,`osn_nonce`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `oauth_server_nonce`
-- ----------------------------
BEGIN;
INSERT INTO `oauth_server_nonce` VALUES ('47', '0fb35bec8d711303377f0dfb41a2f01405b544f86', '0', '1532252038', '5b544f86e0456'), ('40', '68115dc9cac312a9092bbd7cb20d7dc505b45fa0f', '0', '1531312655', '5b45fa0f758a2'), ('42', 'c4ec6fdae39ca454b53917fb8c0f0b5f05b45fa8b', '0', '1531312779', '5b45fa8bae76f'), ('48', 'fb750617b8791336898ac9ebaccc0bee05b544fad', '0', '1532252077', '5b544fad4f9ae');
COMMIT;

-- ----------------------------
--  Table structure for `oauth_server_registry`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_server_registry`;
CREATE TABLE `oauth_server_registry` (
  `osr_id` int(11) NOT NULL AUTO_INCREMENT,
  `osr_usa_id_ref` int(11) DEFAULT NULL,
  `osr_consumer_key` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `osr_consumer_secret` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `osr_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `osr_status` varchar(16) NOT NULL,
  `osr_requester_name` varchar(64) NOT NULL,
  `osr_requester_email` varchar(64) NOT NULL,
  `osr_callback_uri` varchar(255) NOT NULL,
  `osr_application_uri` varchar(255) NOT NULL,
  `osr_application_title` varchar(80) NOT NULL,
  `osr_application_descr` text NOT NULL,
  `osr_application_notes` text NOT NULL,
  `osr_application_type` varchar(20) NOT NULL,
  `osr_application_commercial` tinyint(1) NOT NULL DEFAULT '0',
  `osr_issue_date` datetime NOT NULL,
  `osr_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`osr_id`),
  UNIQUE KEY `osr_consumer_key` (`osr_consumer_key`) USING BTREE,
  KEY `osr_usa_id_ref` (`osr_usa_id_ref`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `oauth_server_registry`
-- ----------------------------
BEGIN;
INSERT INTO `oauth_server_registry` VALUES ('101', '1', '68115dc9cac312a9092bbd7cb20d7dc505b45fa0f', '60a8dfbd240b4ff56fb5566ebc76deb3', '1', 'active', '127.0.0.1', ' ', '', '', '', '', '', '', '0', '2018-07-11 20:37:35', '2018-07-11 20:37:35'), ('103', '1', 'c4ec6fdae39ca454b53917fb8c0f0b5f05b45fa8b', 'd5df6a481cc6c014985031c655515b41', '1', 'active', '127.0.0.1', ' ', '', '', '', '', '', '', '0', '2018-07-11 20:39:39', '2018-07-11 20:39:39'), ('108', '1', '0fb35bec8d711303377f0dfb41a2f01405b544f86', '7b41faa0c61cffa589064a04dfaf5160', '1', 'active', '127.0.0.1', ' ', '', '', '', '', '', '', '0', '2018-07-22 17:33:58', '2018-07-22 17:33:58'), ('109', '3', 'fb750617b8791336898ac9ebaccc0bee05b544fad', '6eb53b5ff0bb32745418472bcfab321c', '1', 'active', '127.0.0.1', ' ', '', '', '', '', '', '', '0', '2018-07-22 17:34:37', '2018-07-22 17:34:37');
COMMIT;

-- ----------------------------
--  Table structure for `oauth_server_token`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_server_token`;
CREATE TABLE `oauth_server_token` (
  `ost_id` int(11) NOT NULL AUTO_INCREMENT,
  `ost_osr_id_ref` int(11) NOT NULL,
  `ost_usa_id_ref` int(11) NOT NULL,
  `ost_token` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ost_token_secret` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ost_token_type` enum('request','access') DEFAULT NULL,
  `ost_authorized` tinyint(1) NOT NULL DEFAULT '0',
  `ost_referrer_host` varchar(128) NOT NULL DEFAULT '',
  `ost_token_ttl` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `ost_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ost_verifier` char(10) DEFAULT NULL,
  `ost_callback_url` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`ost_id`),
  UNIQUE KEY `ost_token` (`ost_token`) USING BTREE,
  KEY `ost_osr_id_ref` (`ost_osr_id_ref`) USING BTREE,
  KEY `ost_token_ttl` (`ost_token_ttl`) USING BTREE,
  CONSTRAINT `oauth_server_token_ibfk_1` FOREIGN KEY (`ost_osr_id_ref`) REFERENCES `oauth_server_registry` (`osr_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `oauth_server_token`
-- ----------------------------
BEGIN;
INSERT INTO `oauth_server_token` VALUES ('40', '101', '1', 'd551871b34efbd0fa0ac3c74fa095bb505b45fa0f', '96cd68e21e1ad47e6321cd742dbbcf0b', 'request', '0', '', '2018-07-11 21:37:35', '2018-07-11 20:37:35', null, 'oob'), ('42', '103', '1', 'a0ac4d570fd2263344d72c99fb9c5b8205b45fa8b', '5051f1bbd61b462f29814764581d793c', 'request', '0', '', '2018-07-11 21:39:39', '2018-07-11 20:39:39', null, 'oob'), ('47', '108', '1', '63368bb880cff951430c9b766690718f05b544f86', '76a6b8ad3525c13e79c63bee33b2edee', 'request', '0', '', '2018-07-22 18:33:58', '2018-07-22 17:33:58', null, 'oob'), ('48', '109', '1', '52d82a5203ada1ec874847655b5b226105b544fad', 'a5a4bfc2566d6ff81e8693f25582a53c', 'request', '0', '', '2018-07-22 18:34:37', '2018-07-22 17:34:37', null, 'oob');
COMMIT;

-- ----------------------------
--  Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `log_userid` int(11) NOT NULL DEFAULT '0' COMMENT '???id',
  `log_username` varchar(255) NOT NULL COMMENT '?????',
  `log_user_type` int(11) NOT NULL DEFAULT '0' COMMENT '????id',
  `log_login_ip` char(20) NOT NULL COMMENT '??ip',
  `log_content` varchar(255) NOT NULL COMMENT '????',
  `log_status` int(11) NOT NULL DEFAULT '1' COMMENT '?????1:??2???3???',
  `log_module` varchar(255) NOT NULL COMMENT '????',
  `log_addtime` bigint(20) NOT NULL COMMENT '????',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='????';

-- ----------------------------
--  Records of `sys_log`
-- ----------------------------
BEGIN;
INSERT INTO `sys_log` VALUES ('1', '0', '', '0', '127.0.0.1', '???????', '2', '????', '1530520080'), ('2', '0', 'liuyr', '0', '127.0.0.1', '???????', '2', '????', '1530520080'), ('3', '0', '', '0', '127.0.0.1', '???????', '2', '????', '1530520095'), ('4', '0', 'admin', '0', '127.0.0.1', '??????', '2', '????', '1530520095'), ('5', '0', '', '0', '127.0.0.1', '???????', '2', '????', '1530520099'), ('6', '0', 'admin', '0', '127.0.0.1', '?????', '1', '????', '1530520099'), ('7', '0', '', '0', '127.0.0.1', '???????', '2', '????', '1531312648'), ('8', '0', 'liuyr', '0', '127.0.0.1', '???????', '2', '????', '1531312649'), ('9', '0', '', '0', '127.0.0.1', '???????', '2', '????', '1531312655'), ('10', '0', 'admin', '0', '127.0.0.1', '?????', '1', '????', '1531312655'), ('11', '0', 'admin', '0', '127.0.0.1', '?????????', '1', '????-????', '1531312707'), ('12', '0', 'admin', '0', '127.0.0.1', '?????', '1', '????', '1531312718'), ('13', '0', '', '0', '127.0.0.1', '???????', '2', '????', '1531312723'), ('14', '0', 'liuyr', '0', '127.0.0.1', '??????????', '2', '????', '1531312723'), ('15', '0', '', '0', '127.0.0.1', '???????', '2', '????', '1531312734'), ('16', '0', 'admin', '0', '127.0.0.1', '?????', '1', '????', '1531312734'), ('17', '0', 'admin', '0', '127.0.0.1', '?????????', '1', '????-????', '1531312741'), ('18', '0', '', '0', '127.0.0.1', '???????', '2', '????', '1531312779'), ('19', '0', 'admin', '0', '127.0.0.1', '?????', '1', '????', '1531312779'), ('20', '0', 'admin', '0', '127.0.0.1', '?????????', '1', '????-????', '1531312812'), ('21', '0', 'admin', '0', '127.0.0.1', '?????', '1', '????', '1531312817'), ('22', '0', '', '0', '127.0.0.1', '???????', '2', '????', '1531312822'), ('23', '0', 'liu', '0', '127.0.0.1', '?????', '1', '????', '1531312822'), ('24', '0', '', '0', '127.0.0.1', '???????', '2', '????', '1531313358'), ('25', '0', 'liu', '0', '127.0.0.1', '?????', '1', '????', '1531313358'), ('26', '0', '', '0', '127.0.0.1', '???????', '2', '????', '1531354621'), ('27', '0', 'liu', '0', '127.0.0.1', '?????', '1', '????', '1531354621'), ('28', '0', '', '0', '127.0.0.1', '???????', '2', '????', '1531384091'), ('29', '0', 'liu', '0', '127.0.0.1', '?????', '1', '????', '1531384091'), ('30', '0', '', '0', '127.0.0.1', '???????', '2', '????', '1532251995'), ('31', '0', 'li', '0', '127.0.0.1', '???????', '2', '????', '1532251995'), ('32', '0', '', '0', '127.0.0.1', '???????', '2', '????', '1532252003'), ('33', '0', 'briup', '0', '127.0.0.1', '???????', '2', '????', '1532252003'), ('34', '0', '', '0', '127.0.0.1', '???????', '2', '????', '1532252010'), ('35', '0', 'fairy', '0', '127.0.0.1', '???????', '2', '????', '1532252010'), ('36', '0', '', '0', '127.0.0.1', '???????', '2', '????', '1532252021'), ('37', '0', 'liuyr', '0', '127.0.0.1', '?????', '2', '????', '1532252021'), ('38', '0', '', '0', '127.0.0.1', '???????', '2', '????', '1532252031'), ('39', '0', 'fairy', '0', '127.0.0.1', '???????', '2', '????', '1532252031'), ('40', '0', '', '0', '127.0.0.1', '???????', '2', '????', '1532252038'), ('41', '0', 'admin', '0', '127.0.0.1', '?????', '1', '????', '1532252038'), ('42', '0', 'admin', '0', '127.0.0.1', '?????', '1', '????', '1532252072'), ('43', '0', '', '0', '127.0.0.1', '???????', '2', '????', '1532252077'), ('44', '0', 'liu', '0', '127.0.0.1', '?????', '1', '????', '1532252077');
COMMIT;

-- ----------------------------
--  Table structure for `sys_login`
-- ----------------------------
DROP TABLE IF EXISTS `sys_login`;
CREATE TABLE `sys_login` (
  `sys_login_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `sys_login_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '????',
  `sys_login_token` varchar(255) NOT NULL DEFAULT '' COMMENT '??token?',
  `user_prefix` char(20) NOT NULL DEFAULT '' COMMENT '????',
  `user_module` varbinary(255) NOT NULL DEFAULT '' COMMENT '??????',
  `user_unit_id` int(11) NOT NULL DEFAULT '0' COMMENT '????id',
  `user_type` int(11) NOT NULL DEFAULT '0' COMMENT '????',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '????',
  `user_table_name` char(20) NOT NULL DEFAULT '' COMMENT '????',
  PRIMARY KEY (`sys_login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='?????(Oauth???????)';

-- ----------------------------
--  Records of `sys_login`
-- ----------------------------
BEGIN;
INSERT INTO `sys_login` VALUES ('26', '1532252077', '52d82a5203ada1ec874847655b5b226105b544fad', 'liu', '', '0', '2', '3', 'sys_user');
COMMIT;

-- ----------------------------
--  Table structure for `sys_module`
-- ----------------------------
DROP TABLE IF EXISTS `sys_module`;
CREATE TABLE `sys_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `module_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '??????',
  `module_name` varchar(50) NOT NULL DEFAULT '' COMMENT '????',
  `module_type` int(11) NOT NULL COMMENT '????',
  `module_status` int(11) NOT NULL DEFAULT '1' COMMENT '?????1??2??3??',
  `module_upper_id` int(11) NOT NULL DEFAULT '0' COMMENT '????????0???',
  `module_web_url` varchar(255) NOT NULL DEFAULT '' COMMENT '????',
  `module_web_icon` varchar(255) NOT NULL DEFAULT '' COMMENT '????',
  `module_request` text NOT NULL,
  PRIMARY KEY (`module_id`),
  KEY `module_id` (`module_id`) USING BTREE,
  KEY `fk_reference_4` (`module_type`) USING BTREE,
  CONSTRAINT `sys_module_ibfk_1` FOREIGN KEY (`module_type`) REFERENCES `sys_type` (`sys_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='?????????????\r\n??????????????0?????????????????????????';

-- ----------------------------
--  Records of `sys_module`
-- ----------------------------
BEGIN;
INSERT INTO `sys_module` VALUES ('1', '0', '????', '1', '1', '0', '4', 'fa fa-bank', ''), ('2', '0', '????', '1', '1', '1', '/education/end', 'fa fa-user-circle', 'Logout;add_unit;get_unit;update_unit;delete_unit;show_unit;Index;'), ('3', '0', '????', '2', '1', '0', '1', 'el-icon-location', ''), ('4', '0', '????', '2', '1', '3', '/notify/school', 'fa fa-bullhorn', 'Logout;inform_school_show;inform_school_recall;inform_school_del;show_unit;inform_school_add;get_all_class;inform_school_info;inform_school_again;Index;'), ('5', '0', '????', '2', '1', '3', '/notify/active', 'fa fa-futbol-o', 'Logout;activity_school_show;activity_school_add;activity_school_recall;activity_school_del;activity_school_info;activity_school_again;show_student;show_teach;show_unit;Index;'), ('6', '0', '????', '2', '1', '0', '2', 'fa fa-calendar', ''), ('7', '0', '????', '2', '1', '6', '/check/dayStatistics', 'fa fa-bar-chart', 'Logout;today_count;today_classRate;month_check;get_all_grade;show_unit;Index;'), ('8', '0', '????', '2', '1', '6', '/check/operationAnalyse', 'fa \r\n\r\nfa-line-chart', 'Logout;operation;attendance_rate;show_unit;Index;'), ('9', '0', '????', '2', '1', '6', '/check/childCheck', 'fa fa-calendar-check-o', ''), ('10', '0', '????', '2', '1', '6', '/check/childLeave', 'fa fa-calendar-times-o', 'Logout;leave_type;show_leave;delete_leave;read_leave;get_grade_class;get_all_grade;show_unit;Index;'), ('11', '0', '????', '2', '1', '6', '/check/checkSetting', 'fa fa-cog', 'Logout;update_timeCheck;update_typeCheck;show_checkset;show_unit;Index;'), ('12', '0', '????', '2', '1', '0', '3', 'fa fa-cogs', ''), ('13', '0', '????', '2', '1', '12', '/settings/school', 'fa fa-graduation-cap', ''), ('14', '0', '????', '2', '1', '12', '/settings/users', 'fa fa-user-o', ''), ('15', '0', '????', '2', '1', '12', '/settings/power', 'fa fa-paw', 'Logout;show_role_module;update_role_module;getModule;show_unit;Index;'), ('16', '0', '????', '2', '1', '12', '/settings/system', 'fa fa-tv', 'Logout;show_log;delete_log;show_unit;Index;'), ('17', '0', '?????', '2', '1', '12', '/settings/sensitive', 'fa fa-commenting-o', 'Logout;show_sensitive_words;update_sensitive_words;show_unit;Index;'), ('18', '0', '??', '2', '1', '9', '', '', 'Logout;get_grade_class;stu_check;checkSetting;dowload_check;check_leave_type;get_all_class;show_unit;Index;'), ('19', '0', '?????', '2', '1', '9', '', '', 'Logout;attendance_rate;class_attendance_rate;class_attendance_dowload;class_attendance_dowload;show_unit;Index;'), ('20', '0', '????', '2', '1', '9', '', '', 'Logout;card_record;leave_type;card_record_dowload;get_all_class;show_unit;card_record/dowload_record/1;Index;'), ('21', '0', '????', '2', '1', '13', 'unitInfo', '', 'Logout;show_unit;update_unit;upload_logo_unit;Index;'), ('22', '0', '????', '2', '1', '13', 'gradeSetting', '', 'Logout;show_grade;delete_grade;update_grade;add_grade;get_bigGrade;show_unit;Index;'), ('23', '0', '????', '2', '1', '13', 'clazzSetting', '', 'Logout;show_class;get_all_grade;delete_class;update_class;add_class;batchAdd_class;course_teach;show_unit;Index;'), ('24', '0', '????', '2', '1', '14', 'teacher', '', 'Logout;delete_teach;delete_more_teach;update_teach;add_teach;batchALL_add_teacher;grant_teach;show_teach;getUserRole;getTeachRole;teacher_up;teacher_download;show_unit;Index;'), ('25', '0', '????', '2', '1', '14', 'student', '', 'Logout;show_student;add_student;update_student;batchALL_add_student;delete_student;delete_more_student;get_grade_class;get_all_grade;student_up;student_download;show_unit;Index;'), ('26', '0', '????', '4', '1', '0', '2', 'fa fa-calendar', ''), ('27', '0', '????', '4', '1', '26', '/check/childLeave', 'fa fa-calendar-times-o', 'Logout;show_leave;add_leave;leave_type;show_unit;Index;');
COMMIT;

-- ----------------------------
--  Table structure for `sys_type`
-- ----------------------------
DROP TABLE IF EXISTS `sys_type`;
CREATE TABLE `sys_type` (
  `sys_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `sys_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '????????',
  `sys_name` varchar(50) NOT NULL DEFAULT '' COMMENT '??????',
  PRIMARY KEY (`sys_id`),
  KEY `sys_id` (`sys_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='?????????????1????2?????????3????';

-- ----------------------------
--  Records of `sys_type`
-- ----------------------------
BEGIN;
INSERT INTO `sys_type` VALUES ('1', '0', '????'), ('2', '0', '?????'), ('3', '0', '????'), ('4', '0', '??');
COMMIT;

-- ----------------------------
--  Table structure for `sys_unit`
-- ----------------------------
DROP TABLE IF EXISTS `sys_unit`;
CREATE TABLE `sys_unit` (
  `unit_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `unit_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '???????',
  `unit_name` varchar(50) NOT NULL DEFAULT '' COMMENT '????',
  `unit_show_name` varchar(50) NOT NULL DEFAULT '' COMMENT '??????',
  `unit_level_id` int(11) NOT NULL COMMENT '????',
  `unit_status` int(11) NOT NULL DEFAULT '1' COMMENT '?????1??2??3??',
  `unit_upper_id` int(11) NOT NULL DEFAULT '0' COMMENT '??????????0?????',
  PRIMARY KEY (`unit_id`),
  KEY `unit_id` (`unit_id`) USING BTREE,
  KEY `fk_reference_1` (`unit_level_id`) USING BTREE,
  CONSTRAINT `sys_unit_ibfk_1` FOREIGN KEY (`unit_level_id`) REFERENCES `sys_unit_level` (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='?????xxx_school?????????????????????????????????xxx_schoo???';

-- ----------------------------
--  Records of `sys_unit`
-- ----------------------------
BEGIN;
INSERT INTO `sys_unit` VALUES ('1', '1531312707', '??', '????', '1', '3', '0'), ('2', '1531312811', '????', '????', '4', '1', '0');
COMMIT;

-- ----------------------------
--  Table structure for `sys_unit_level`
-- ----------------------------
DROP TABLE IF EXISTS `sys_unit_level`;
CREATE TABLE `sys_unit_level` (
  `level_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `level_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '????',
  `level_name` varchar(100) NOT NULL DEFAULT '' COMMENT '??????',
  PRIMARY KEY (`level_id`),
  KEY `level_id` (`level_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='?????:????????1??2??3??4??';

-- ----------------------------
--  Records of `sys_unit_level`
-- ----------------------------
BEGIN;
INSERT INTO `sys_unit_level` VALUES ('1', '0', '??'), ('2', '0', '??'), ('3', '0', '??'), ('4', '0', '??');
COMMIT;

-- ----------------------------
--  Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `user_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '??????',
  `user_prefix` char(20) NOT NULL DEFAULT '' COMMENT '????',
  `user_account` char(20) NOT NULL DEFAULT '' COMMENT '????',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '????',
  `user_passwd` varchar(50) NOT NULL DEFAULT '' COMMENT '?????md5????',
  `user_tel` char(20) NOT NULL DEFAULT '0' COMMENT '????',
  `user_status` int(11) NOT NULL DEFAULT '1' COMMENT '?????1??2??3??',
  `user_gender` int(11) NOT NULL DEFAULT '0' COMMENT '?????0???1?',
  `user_type` int(11) NOT NULL DEFAULT '1' COMMENT '?????1????2?????',
  `unit_id` int(11) DEFAULT NULL COMMENT '??id',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `ak_key_3` (`user_account`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `fk_reference_38` (`unit_id`) USING BTREE,
  KEY `fk_reference_5` (`user_type`) USING BTREE,
  CONSTRAINT `sys_user_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `sys_unit` (`unit_id`),
  CONSTRAINT `sys_user_ibfk_2` FOREIGN KEY (`user_type`) REFERENCES `sys_type` (`sys_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='?????????????????????+??????????????????????????????????????';

-- ----------------------------
--  Records of `sys_user`
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES ('1', '0', '', 'admin', '', '21232f297a57a5a743894a0e4a801fc3', '0', '1', '0', '1', null), ('2', '1531312707', 'liuyr', 'liuyr', '', '84dc6a1547435cac4eb2f93f9f5eab93', '0', '3', '0', '2', '1'), ('3', '1531312811', 'liu', 'liu', '', '9d4d6204ee943564637f06093236b181', '0', '1', '0', '2', '2');
COMMIT;

-- ----------------------------
--  Table structure for `sys_user_module`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_module`;
CREATE TABLE `sys_user_module` (
  `user_module_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????id',
  `user_module_addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '????',
  `module_id` int(11) NOT NULL COMMENT '????',
  `user_id` int(11) DEFAULT NULL COMMENT '??id',
  PRIMARY KEY (`user_module_id`),
  KEY `user_module_id` (`user_module_id`) USING BTREE,
  KEY `fk_reference_10` (`user_id`) USING BTREE,
  KEY `fk_reference_9` (`module_id`) USING BTREE,
  CONSTRAINT `sys_user_module_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`),
  CONSTRAINT `sys_user_module_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `sys_module` (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='????????????????????';

-- ----------------------------
--  Records of `sys_user_module`
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_module` VALUES ('1', '0', '1', '1'), ('2', '0', '2', '1'), ('3', '1531312707', '3', '2'), ('4', '1531312707', '4', '2'), ('5', '1531312707', '5', '2'), ('6', '1531312707', '6', '2'), ('7', '1531312707', '7', '2'), ('8', '1531312707', '8', '2'), ('9', '1531312707', '9', '2'), ('10', '1531312707', '10', '2'), ('11', '1531312707', '11', '2'), ('12', '1531312707', '12', '2'), ('13', '1531312707', '13', '2'), ('14', '1531312707', '14', '2'), ('15', '1531312707', '15', '2'), ('16', '1531312707', '16', '2'), ('17', '1531312707', '17', '2'), ('18', '1531312707', '18', '2'), ('19', '1531312707', '19', '2'), ('20', '1531312707', '20', '2'), ('21', '1531312707', '21', '2'), ('22', '1531312707', '22', '2'), ('23', '1531312707', '23', '2'), ('24', '1531312707', '24', '2'), ('25', '1531312707', '25', '2'), ('26', '1531312811', '3', '3'), ('27', '1531312811', '4', '3'), ('28', '1531312811', '5', '3'), ('29', '1531312811', '6', '3'), ('30', '1531312811', '7', '3'), ('31', '1531312811', '8', '3'), ('32', '1531312811', '9', '3'), ('33', '1531312811', '10', '3'), ('34', '1531312811', '11', '3'), ('35', '1531312811', '12', '3'), ('36', '1531312811', '13', '3'), ('37', '1531312811', '14', '3'), ('38', '1531312811', '15', '3'), ('39', '1531312811', '16', '3'), ('40', '1531312811', '17', '3'), ('41', '1531312811', '18', '3'), ('42', '1531312811', '19', '3'), ('43', '1531312811', '20', '3'), ('44', '1531312811', '21', '3'), ('45', '1531312811', '22', '3'), ('46', '1531312811', '23', '3'), ('47', '1531312811', '24', '3'), ('48', '1531312811', '25', '3');
COMMIT;

-- ----------------------------
--  Table structure for `xxx_cardimg`
-- ----------------------------
DROP TABLE IF EXISTS `xxx_cardimg`;
CREATE TABLE `xxx_cardimg` (
  `card_img_id` int(11) NOT NULL AUTO_INCREMENT,
  `card_img_url` varchar(255) NOT NULL COMMENT '??????',
  `card_img_date` bigint(20) NOT NULL COMMENT '????',
  PRIMARY KEY (`card_img_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='?????';

SET FOREIGN_KEY_CHECKS = 1;
