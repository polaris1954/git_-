/*
Navicat MySQL Data Transfer
Source Host     : 127.0.0.1:3306
Source Database : student_mis
Target Host     : 127.0.0.1:3306
Target Database : student_mis
Date: 2023-05-11 22:50:17
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `real_name` varchar(50) NOT NULL DEFAULT '',
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `school` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '',
  `sex` tinyint(4) NOT NULL DEFAULT '0',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'root', 'password', 'OBY', '0', '沈阳工业大学', '1323889073@qq.com', '15939108191', '1', '2023-03-01 21:36:06');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` varchar(50) NOT NULL DEFAULT '' COMMENT '编号',
  `name` varchar(40) NOT NULL COMMENT '课程名',
  `credits` decimal(4,1) NOT NULL DEFAULT '2.0' COMMENT '学分',
  `score` int(11) NOT NULL DEFAULT '100' COMMENT '满分',
  `number` int(4) NOT NULL DEFAULT '32' COMMENT '课时',
  `year` int(6) NOT NULL DEFAULT '2016' COMMENT '届时',
  `term` tinyint(4) NOT NULL DEFAULT '0' COMMENT '学期',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类别 1必修 2选修',
  `profession` varchar(50) NOT NULL DEFAULT '' COMMENT '专业',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '数字逻辑', '4.0', '100', '18', '2021', '1', '1', '计算机科学与技术', '2023-03-01 21:36:06');
INSERT INTO `course` VALUES ('2', 'Java程序设计', '2.0', '100', '18', '2021', '1', '1', '计算机科学与技术', '2023-03-01 21:36:06');
INSERT INTO `course` VALUES ('3', '线性代数', '1.0', '100', '18', '2021', '1', '1', '计算机科学与技术', '2023-03-01 21:36:06');
INSERT INTO `course` VALUES ('4', '大学英语', '4.0', '100', '18', '2021', '1', '1', '计算机科学与技术', '2023-03-01 21:36:06');
INSERT INTO `course` VALUES ('5', '体育', '1.0', '100', '16', '2021', '1', '1', '计算机科学与技术', '2023-03-01 21:36:06');
INSERT INTO `course` VALUES ('6', '操作系统', '2.0', '100', '16', '2021', '1', '1', '计算机科学与技术', '2023-03-01 21:36:06');

-- ----------------------------
-- Table structure for course_info
-- ----------------------------
DROP TABLE IF EXISTS `course_info`;
CREATE TABLE `course_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` varchar(50) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `room` varchar(50) DEFAULT NULL,
  `profession` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of course_info
-- ----------------------------
INSERT INTO `course_info` VALUES ('1', '1', '1', '25', '404', '计算机科学与技术');
INSERT INTO `course_info` VALUES ('2', '2', '1', '25', '401', '计算机科学与技术');
INSERT INTO `course_info` VALUES ('3', '3', '1', '25', '403', '计算机科学与技术');
INSERT INTO `course_info` VALUES ('4', '4', '1', '20', '406', '计算机科学与技术');
INSERT INTO `course_info` VALUES ('5', '5', '1', '25', '405', '计算机科学与技术');
INSERT INTO `course_info` VALUES ('6', '6', '1', '25', '402', '计算机科学与技术');

-- ----------------------------
-- Table structure for profession
-- ----------------------------
DROP TABLE IF EXISTS `profession`;
CREATE TABLE `profession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of profession
-- ----------------------------
INSERT INTO `profession` VALUES ('1', '计算机科学与技术');

-- ----------------------------
-- Table structure for silent
-- ----------------------------
DROP TABLE IF EXISTS `silent`;
CREATE TABLE `silent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of silent
-- ----------------------------
INSERT INTO `silent` VALUES ('1', '0');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `real_name` varchar(50) NOT NULL DEFAULT '',
  `level` tinyint(4) NOT NULL DEFAULT '2',
  `school` varchar(50) NOT NULL DEFAULT '',
  `admission_time` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `profession` varchar(50) NOT NULL DEFAULT '',
  `grade` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '',
  `sex` tinyint(4) NOT NULL DEFAULT '0',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('3168901101', '3168901101', '123456', '林立川', '2', '沈阳工业大学', '2021', '1564387882@qq.com', '计算机科学与技术', '2101', '13358204423', '0', '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901102', '3168901102', '123456', '韩季强', '2', '沈阳工业大学', '2021', '1564387882@qq.com', '计算机科学与技术', '2101', '13904568561', '0', '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901103', '3168901103', '123456', '曹维启', '2', '沈阳工业大学', '2021', '1913637409@qq.com', '计算机科学与技术', '2101', '13700090921', '0', '2023-03-31 15:53:31');
INSERT INTO `student` VALUES ('3168901104', '3168901104', '123456', '吕德', '2', '沈阳工业大学', '2021', '1720646161@qq.com', '计算机科学与技术', '2101', '15903373628', '1', '2023-03-31 15:53:31');
INSERT INTO `student` VALUES ('3168901105', '3168901105', '123456', '柏泽', '2', '沈阳工业大学', '2021', '1030844828@qq.com', '计算机科学与技术', '2101', '13306440038', '0', '2023-03-31 15:53:31');
INSERT INTO `student` VALUES ('3168901106', '3168901106', '123456', '熊辉力', '2', '沈阳工业大学', '2021', '1368517693@qq.com', '计算机科学与技术', '2101', '13600865966', '1', '2023-03-31 15:53:31');
INSERT INTO `student` VALUES ('3168901107', '3168901107', '123456', '傅冠', '2', '沈阳工业大学', '2021', '1633449201@qq.com', '计算机科学与技术', '2101', '13701752096', '0', '2023-03-31 15:53:32');
INSERT INTO `student` VALUES ('3168901108', '3168901108', '123456', '酆保', '2', '沈阳工业大学', '2021', '1603230942@qq.com', '计算机科学与技术', '2101', '15200310443', '1', '2023-03-31 15:53:32');
INSERT INTO `student` VALUES ('3168901109', '3168901109', '123456', '郑腾', '2', '沈阳工业大学', '2021', '1905995751@qq.com', '计算机科学与技术', '2101', '13803191852', '0', '2023-03-31 15:53:32');
INSERT INTO `student` VALUES ('3168901110', '3168901110', '123456', '吴斌', '2', '沈阳工业大学', '2021', '1268829036@qq.com', '计算机科学与技术', '2101', '13104042247', '0', '2023-03-31 15:53:32');
INSERT INTO `student` VALUES ('3168901111', '3168901111', '123456', '柳慧巧', '2', '沈阳工业大学', '2021', '1866710083@qq.com', '计算机科学与技术', '2101', '13704864349', '0', '2023-03-31 15:53:32');
INSERT INTO `student` VALUES ('3168901112', '3168901112', '123456', '伏颖', '2', '沈阳工业大学', '2021', '1810351523@qq.com', '计算机科学与技术', '2101', '13003758800', '0', '2023-03-31 15:53:32');
INSERT INTO `student` VALUES ('3168901113', '3168901113', '123456', '鲍翔旭', '2', '沈阳工业大学', '2021', '1393604939@qq.com', '计算机科学与技术', '2101', '15105275012', '0', '2023-03-31 15:53:32');
INSERT INTO `student` VALUES ('3168901114', '3168901114', '123456', '周泰盛', '2', '沈阳工业大学', '2021', '1459773822@qq.com', '计算机科学与技术', '2101', '13605744985', '1', '2023-03-31 15:53:32');
INSERT INTO `student` VALUES ('3168901115', '3168901115', '123456', '葛思', '2', '沈阳工业大学', '2021', '1139434347@qq.com', '计算机科学与技术', '2101', '13102513003', '0', '2023-03-31 15:53:32');
INSERT INTO `student` VALUES ('3168901116', '3168901116', '123456', '舒乐', '2', '沈阳工业大学', '2021', '1720673668@qq.com', '计算机科学与技术', '2101', '13004250563', '0', '2023-03-31 15:53:32');
INSERT INTO `student` VALUES ('3168901117', '3168901117', '123456', '孔月莺', '2', '沈阳工业大学', '2021', '1984607297@qq.com', '计算机科学与技术', '2101', '13402975067', '0', '2023-03-31 15:53:32');
INSERT INTO `student` VALUES ('3168901118', '3168901118', '123456', '姜斌', '2', '沈阳工业大学', '2021', '1064021840@qq.com', '计算机科学与技术', '2101', '15301138688', '1', '2023-03-31 15:53:32');
INSERT INTO `student` VALUES ('3168901119', '3168901119', '123456', '汪敬震', '2', '沈阳工业大学', '2021', '1632228805@qq.com', '计算机科学与技术', '2101', '15704356031', '0', '2023-03-31 15:53:32');
INSERT INTO `student` VALUES ('3168901120', '3168901120', '123456', '曹旭', '2', '沈阳工业大学', '2021', '1189607467@qq.com', '计算机科学与技术', '2101', '13508641007', '0', '2023-03-31 15:53:32');
INSERT INTO `student` VALUES ('3168901121', '3168901121', '123456', '柳影荔', '2', '沈阳工业大学', '2021', '1860190234@qq.com', '计算机科学与技术', '2101', '13006594022', '1', '2023-03-31 15:53:32');
INSERT INTO `student` VALUES ('3168901122', '3168901122', '123456', '蓝敬震', '2', '沈阳工业大学', '2021', '1642978396@qq.com', '计算机科学与技术', '2101', '15001253493', '0', '2023-03-31 15:53:32');
INSERT INTO `student` VALUES ('3168901123', '3168901123', '123456', '陈启', '2', '沈阳工业大学', '2021', '1693928397@qq.com', '计算机科学与技术', '2101', '15901024868', '1', '2023-03-31 15:53:33');
INSERT INTO `student` VALUES ('3168901124', '3168901124', '123456', '严发', '2', '沈阳工业大学', '2021', '1377953093@qq.com', '计算机科学与技术', '2101', '13402228948', '0', '2023-03-31 15:53:33');
INSERT INTO `student` VALUES ('3168901125', '3168901125', '123456', '严强军', '2', '沈阳工业大学', '2021', '1283938615@qq.com', '计算机科学与技术', '2101', '13501243126', '1', '2023-03-31 15:51:39');
INSERT INTO `student` VALUES ('3168901126', '3168901126', '123456', '傅梅', '2', '沈阳工业大学', '2021', '1951738850@qq.com', '计算机科学与技术', '2101', '13304491796', '0', '2023-03-31 15:57:17');
INSERT INTO `student` VALUES ('3168901127', '3168901127', '123456', '齐莲', '2', '沈阳工业大学', '2021', '1518418751@qq.com', '计算机科学与技术', '2101', '13506746627', '1', '2023-03-31 15:57:17');
INSERT INTO `student` VALUES ('3168901128', '3168901128', '123456', '邹燕彩', '2', '沈阳工业大学', '2021', '1844811992@qq.com', '计算机科学与技术', '2101', '15806244167', '1', '2023-03-31 15:57:17');
INSERT INTO `student` VALUES ('3168901129', '3168901129', '123456', '滕承乐', '2', '沈阳工业大学', '2021', '1694373866@qq.com', '计算机科学与技术', '2101', '15302491589', '1', '2023-03-31 15:57:18');
INSERT INTO `student` VALUES ('3168901130', '3168901130', '123456', '吴翰', '2', '沈阳工业大学', '2021', '1443532361@qq.com', '计算机科学与技术', '2101', '15906814748', '0', '2023-03-31 15:57:18');
INSERT INTO `student` VALUES ('3168901131', '3168901131', '123456', '杨梦', '2', '沈阳工业大学', '2021', '1217218205@qq.com', '计算机科学与技术', '2101', '13507047383', '0', '2023-03-31 15:57:18');
INSERT INTO `student` VALUES ('3168901132', '3168901132', '123456', '尹厚庆', '2', '沈阳工业大学', '2021', '1563536627@qq.com', '计算机科学与技术', '2101', '15300773435', '1', '2023-03-31 15:57:18');
INSERT INTO `student` VALUES ('3168901133', '3168901133', '123456', '康莎', '2', '沈阳工业大学', '2021', '1703023907@qq.com', '计算机科学与技术', '2101', '15602604715', '1', '2023-03-31 15:57:18');
INSERT INTO `student` VALUES ('3168901134', '3168901134', '123456', '薛婉娴', '2', '沈阳工业大学', '2021', '1750397403@qq.com', '计算机科学与技术', '2101', '15206754657', '1', '2023-03-31 15:57:18');
INSERT INTO `student` VALUES ('3168901135', '3168901135', '123456', '毕强军', '2', '沈阳工业大学', '2021', '1729941302@qq.com', '计算机科学与技术', '2101', '13403206262', '1', '2023-03-31 15:57:19');
INSERT INTO `student` VALUES ('3168901136', '3168901136', '123456', '孔雅', '2', '沈阳工业大学', '2021', '1756085533@qq.com', '计算机科学与技术', '2101', '13406450046', '0', '2023-03-31 15:57:19');
INSERT INTO `student` VALUES ('3168901137', '3168901137', '123456', '谈世', '2', '沈阳工业大学', '2021', '1096417457@qq.com', '计算机科学与技术', '2101', '13307891428', '0', '2023-03-31 15:57:19');
INSERT INTO `student` VALUES ('3168901138', '3168901138', '123456', '米勤', '2', '沈阳工业大学', '2021', '1014671661@qq.com', '计算机科学与技术', '2101', '15606914831', '0', '2023-03-31 15:57:19');
INSERT INTO `student` VALUES ('3168901139', '3168901139', '123456', '水利清', '2', '沈阳工业大学', '2021', '1720099038@qq.com', '计算机科学与技术', '2101', '15008216365', '1', '2023-03-31 15:57:19');
INSERT INTO `student` VALUES ('3168901140', '3168901140', '123456', '昌飞彬', '2', '沈阳工业大学', '2021', '1651430112@qq.com', '计算机科学与技术', '2101', '13004858329', '0', '2023-03-31 15:57:19');
INSERT INTO `student` VALUES ('3168901141', '3168901141', '123456', '范之', '2', '沈阳工业大学', '2021', '1209163886@qq.com', '计算机科学与技术', '2101', '13500697610', '0', '2023-03-31 15:57:19');
INSERT INTO `student` VALUES ('3168901142', '3168901142', '123456', '薛聪澜', '2', '沈阳工业大学', '2021', '1624959266@qq.com', '计算机科学与技术', '2101', '13704804643', '0', '2023-03-31 15:57:19');
INSERT INTO `student` VALUES ('3168901143', '3168901143', '123456', '蓝盛', '2', '沈阳工业大学', '2021', '1335148161@qq.com', '计算机科学与技术', '2101', '13005132500', '0', '2023-03-31 15:57:19');
INSERT INTO `student` VALUES ('3168901144', '3168901144', '123456', '朱庆', '2', '沈阳工业大学', '2021', '1970163510@qq.com', '计算机科学与技术', '2101', '13107244178', '0', '2023-03-31 15:57:19');
INSERT INTO `student` VALUES ('3168901145', '3168901145', '123456', '殷环', '2', '沈阳工业大学', '2021', '1114181684@qq.com', '计算机科学与技术', '2101', '13605745626', '0', '2023-03-31 15:57:20');
INSERT INTO `student` VALUES ('3168901146', '3168901146', '123456', '水兴', '2', '沈阳工业大学', '2021', '1738525339@qq.com', '计算机科学与技术', '2101', '13906668841', '0', '2023-03-31 15:57:20');
INSERT INTO `student` VALUES ('3168901147', '3168901147', '123456', '姚言', '2', '沈阳工业大学', '2021', '1994704574@qq.com', '计算机科学与技术', '2101', '13003380011', '0', '2023-03-31 15:57:20');
INSERT INTO `student` VALUES ('3168901148', '3168901148', '123456', '邵震', '2', '沈阳工业大学', '2021', '1475455334@qq.com', '计算机科学与技术', '2101', '13707638959', '1', '2023-03-31 15:57:20');
INSERT INTO `student` VALUES ('3168901149', '3168901149', '123456', '史震', '2', '沈阳工业大学', '2021', '1247780895@qq.com', '计算机科学与技术', '2101', '15607800436', '0', '2023-03-31 15:57:20');
INSERT INTO `student` VALUES ('3168901150', '3168901150', '123456', '卞奇', '2', '沈阳工业大学', '2021', '1249904227@qq.com', '计算机科学与技术', '2101', '13903720567', '0', '2023-03-31 15:57:20');
INSERT INTO `student` VALUES ('3218901151', '3218901151', '123456', '小胡', '2', '沈阳工业大学', '2021', '1323889073@qq.com', '计算机科学与技术', '2101', '15939108191', '1', '2023-05-10 15:30:24');

-- ----------------------------
-- Table structure for student_course
-- ----------------------------
DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(255) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `score` varchar(11) NOT NULL,
  `point` decimal(4,2) NOT NULL,
  `credits` decimal(4,2) NOT NULL,
  `term` tinyint(4) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of student_course
-- ----------------------------
INSERT INTO `student_course` VALUES ('1', '3168901101', '1', '数字逻辑', '75', '2.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('2', '3168901102', '1', '数字逻辑', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('3', '3168901103', '1', '数字逻辑', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('4', '3168901104', '1', '数字逻辑', '78', '2.80', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('5', '3168901105', '1', '数字逻辑', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('6', '3168901106', '1', '数字逻辑', '98', '4.80', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('7', '3168901107', '1', '数字逻辑', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('8', '3168901108', '1', '数字逻辑', '55', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('9', '3168901109', '1', '数字逻辑', '67', '1.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('10', '3168901110', '1', '数字逻辑', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('11', '3168901111', '1', '数字逻辑', '32', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('12', '3168901112', '1', '数字逻辑', '43', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('13', '3168901113', '1', '数字逻辑', '100', '5.00', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('14', '3168901114', '1', '数字逻辑', '100', '5.00', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('15', '3168901115', '1', '数字逻辑', '23', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('16', '3168901116', '1', '数字逻辑', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('17', '3168901117', '1', '数字逻辑', '64', '1.40', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('18', '3168901118', '1', '数字逻辑', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('19', '3168901119', '1', '数字逻辑', '34', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('20', '3168901120', '1', '数字逻辑', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('21', '3168901121', '1', '数字逻辑', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('22', '3168901122', '1', '数字逻辑', '34', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('23', '3168901123', '1', '数字逻辑', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('24', '3168901124', '1', '数字逻辑', '34', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('25', '3168901125', '1', '数字逻辑', '100', '5.00', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('26', '3168901126', '1', '数字逻辑', '75', '2.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('27', '3168901127', '1', '数字逻辑', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('28', '3168901128', '1', '数字逻辑', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('29', '3168901129', '1', '数字逻辑', '65', '1.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('30', '3168901130', '1', '数字逻辑', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('31', '3168901131', '1', '数字逻辑', '100', '5.00', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('32', '3168901132', '1', '数字逻辑', '65', '1.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('33', '3168901133', '1', '数字逻辑', '65', '1.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('34', '3168901134', '1', '数字逻辑', '45', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('35', '3168901135', '1', '数字逻辑', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('36', '3168901136', '1', '数字逻辑', '56', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('37', '3168901137', '1', '数字逻辑', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('38', '3168901138', '1', '数字逻辑', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('39', '3168901139', '1', '数字逻辑', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('40', '3168901140', '1', '数字逻辑', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('41', '3168901141', '1', '数字逻辑', '100', '5.00', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('42', '3168901142', '1', '数字逻辑', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('43', '3168901143', '1', '数字逻辑', '100', '5.00', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('44', '3168901144', '1', '数字逻辑', '100', '5.00', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('45', '3168901145', '1', '数字逻辑', '65', '1.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('46', '3168901146', '1', '数字逻辑', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('47', '3168901147', '1', '数字逻辑', '100', '5.00', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('48', '3168901148', '1', '数字逻辑', '56', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('49', '3168901149', '1', '数字逻辑', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('50', '3168901150', '1', '数字逻辑', '45', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('51', '3168901101', '2', 'Java程序设计', '65', '1.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('52', '3168901102', '2', 'Java程序设计', '65', '1.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('53', '3168901103', '2', 'Java程序设计', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('54', '3168901104', '2', 'Java程序设计', '56', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('55', '3168901105', '2', 'Java程序设计', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('56', '3168901106', '2', 'Java程序设计', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('57', '3168901107', '2', 'Java程序设计', '87', '3.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('58', '3168901108', '2', 'Java程序设计', '87', '3.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('59', '3168901109', '2', 'Java程序设计', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('60', '3168901110', '2', 'Java程序设计', '56', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('61', '3168901111', '2', 'Java程序设计', '100', '5.00', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('62', '3168901112', '2', 'Java程序设计', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('63', '3168901113', '2', 'Java程序设计', '100', '5.00', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('64', '3168901114', '2', 'Java程序设计', '65', '1.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('65', '3168901115', '2', 'Java程序设计', '100', '5.00', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('66', '3168901116', '2', 'Java程序设计', '100', '5.00', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('67', '3168901117', '2', 'Java程序设计', '67', '1.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('68', '3168901118', '2', 'Java程序设计', '67', '1.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('69', '3168901119', '2', 'Java程序设计', '56', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('70', '3168901120', '2', 'Java程序设计', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('71', '3168901121', '2', 'Java程序设计', '34', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('72', '3168901122', '2', 'Java程序设计', '100', '5.00', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('73', '3168901123', '2', 'Java程序设计', '100', '5.00', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('74', '3168901124', '2', 'Java程序设计', '68', '1.80', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('75', '3168901125', '2', 'Java程序设计', '78', '2.80', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('76', '3168901126', '2', 'Java程序设计', '87', '3.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('77', '3168901127', '2', 'Java程序设计', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('78', '3168901128', '2', 'Java程序设计', '87', '3.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('79', '3168901129', '2', 'Java程序设计', '97', '4.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('80', '3168901130', '2', 'Java程序设计', '67', '1.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('81', '3168901131', '2', 'Java程序设计', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('82', '3168901132', '2', 'Java程序设计', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('83', '3168901133', '2', 'Java程序设计', '65', '1.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('84', '3168901134', '2', 'Java程序设计', '77', '2.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('85', '3168901135', '2', 'Java程序设计', '98', '4.80', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('86', '3168901136', '2', 'Java程序设计', '32', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('87', '3168901137', '2', 'Java程序设计', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('88', '3168901138', '2', 'Java程序设计', '65', '1.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('89', '3168901139', '2', 'Java程序设计', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('90', '3168901140', '2', 'Java程序设计', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('91', '3168901141', '2', 'Java程序设计', '65', '1.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('92', '3168901142', '2', 'Java程序设计', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('93', '3168901143', '2', 'Java程序设计', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('94', '3168901144', '2', 'Java程序设计', '75', '2.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('95', '3168901145', '2', 'Java程序设计', '65', '1.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('96', '3168901146', '2', 'Java程序设计', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('97', '3168901147', '2', 'Java程序设计', '87', '3.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('98', '3168901148', '2', 'Java程序设计', '100', '5.00', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('99', '3168901149', '2', 'Java程序设计', '45', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('100', '3168901150', '2', 'Java程序设计', '34', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('101', '3168901101', '3', '线性代数', '23', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('102', '3168901102', '3', '线性代数', '43', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('103', '3168901103', '3', '线性代数', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('104', '3168901104', '3', '线性代数', '100', '5.00', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('105', '3168901105', '3', '线性代数', '100', '5.00', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('106', '3168901106', '3', '线性代数', '75', '2.50', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('107', '3168901107', '3', '线性代数', '100', '5.00', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('108', '3168901108', '3', '线性代数', '76', '2.60', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('109', '3168901109', '3', '线性代数', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('110', '3168901110', '3', '线性代数', '65', '1.50', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('111', '3168901111', '3', '线性代数', '67', '1.70', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('112', '3168901112', '3', '线性代数', '100', '5.00', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('113', '3168901113', '3', '线性代数', '65', '1.50', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('114', '3168901114', '3', '线性代数', '76', '2.60', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('115', '3168901115', '3', '线性代数', '87', '3.70', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('116', '3168901116', '3', '线性代数', '78', '2.80', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('117', '3168901117', '3', '线性代数', '55', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('118', '3168901118', '3', '线性代数', '76', '2.60', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('119', '3168901119', '3', '线性代数', '65', '1.50', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('120', '3168901120', '3', '线性代数', '65', '1.50', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('121', '3168901121', '3', '线性代数', '65', '1.50', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('122', '3168901122', '3', '线性代数', '87', '3.70', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('123', '3168901123', '3', '线性代数', '56', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('124', '3168901124', '3', '线性代数', '34', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('125', '3168901125', '3', '线性代数', '65', '1.50', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('126', '3168901126', '3', '线性代数', '100', '5.00', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('127', '3168901127', '3', '线性代数', '56', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('128', '3168901128', '3', '线性代数', '65', '1.50', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('129', '3168901129', '3', '线性代数', '87', '3.70', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('130', '3168901130', '3', '线性代数', '67', '1.70', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('131', '3168901131', '3', '线性代数', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('132', '3168901132', '3', '线性代数', '78', '2.80', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('133', '3168901133', '3', '线性代数', '100', '5.00', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('134', '3168901134', '3', '线性代数', '87', '3.70', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('135', '3168901135', '3', '线性代数', '98', '4.80', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('136', '3168901136', '3', '线性代数', '65', '1.50', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('137', '3168901137', '3', '线性代数', '87', '3.70', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('138', '3168901138', '3', '线性代数', '98', '4.80', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('139', '3168901139', '3', '线性代数', '67', '1.70', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('140', '3168901140', '3', '线性代数', '56', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('141', '3168901141', '3', '线性代数', '78', '2.80', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('142', '3168901142', '3', '线性代数', '67', '1.70', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('143', '3168901143', '3', '线性代数', '87', '3.70', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('144', '3168901144', '3', '线性代数', '98', '4.80', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('145', '3168901145', '3', '线性代数', '56', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('146', '3168901146', '3', '线性代数', '87', '3.70', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('147', '3168901147', '3', '线性代数', '45', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('148', '3168901148', '3', '线性代数', '88', '3.80', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('149', '3168901149', '3', '线性代数', '66', '1.60', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('150', '3168901150', '3', '线性代数', '77', '2.70', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('151', '3168901101', '4', '大学英语', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('152', '3168901102', '4', '大学英语', '65', '1.50', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('153', '3168901103', '4', '大学英语', '76', '2.60', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('154', '3168901104', '4', '大学英语', '45', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('155', '3168901105', '4', '大学英语', '100', '5.00', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('156', '3168901106', '4', '大学英语', '87', '3.70', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('157', '3168901107', '4', '大学英语', '65', '1.50', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('158', '3168901108', '4', '大学英语', '87', '3.70', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('159', '3168901109', '4', '大学英语', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('160', '3168901110', '4', '大学英语', '87', '3.70', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('161', '3168901111', '4', '大学英语', '100', '5.00', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('162', '3168901112', '4', '大学英语', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('163', '3168901113', '4', '大学英语', '87', '3.70', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('164', '3168901114', '4', '大学英语', '98', '4.80', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('165', '3168901115', '4', '大学英语', '100', '5.00', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('166', '3168901116', '4', '大学英语', '76', '2.60', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('167', '3168901117', '4', '大学英语', '87', '3.70', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('168', '3168901118', '4', '大学英语', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('169', '3168901119', '4', '大学英语', '76', '2.60', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('170', '3168901120', '4', '大学英语', '87', '3.70', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('171', '3168901121', '4', '大学英语', '56', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('172', '3168901122', '4', '大学英语', '78', '2.80', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('173', '3168901123', '4', '大学英语', '65', '1.50', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('174', '3168901124', '4', '大学英语', '76', '2.60', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('175', '3168901125', '4', '大学英语', '87', '3.70', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('176', '3168901126', '4', '大学英语', '67', '1.70', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('177', '3168901127', '4', '大学英语', '87', '3.70', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('178', '3168901128', '4', '大学英语', '45', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('179', '3168901129', '4', '大学英语', '76', '2.60', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('180', '3168901130', '4', '大学英语', '77', '2.70', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('181', '3168901131', '4', '大学英语', '78', '2.80', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('182', '3168901132', '4', '大学英语', '78', '2.80', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('183', '3168901133', '4', '大学英语', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('184', '3168901134', '4', '大学英语', '65', '1.50', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('185', '3168901135', '4', '大学英语', '76', '2.60', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('186', '3168901136', '4', '大学英语', '76', '2.60', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('187', '3168901137', '4', '大学英语', '33', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('188', '3168901138', '4', '大学英语', '67', '1.70', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('189', '3168901139', '4', '大学英语', '65', '1.50', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('190', '3168901140', '4', '大学英语', '65', '1.50', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('191', '3168901141', '4', '大学英语', '76', '2.60', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('192', '3168901142', '4', '大学英语', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('193', '3168901143', '4', '大学英语', '65', '1.50', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('194', '3168901144', '4', '大学英语', '76', '2.60', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('195', '3168901145', '4', '大学英语', '100', '5.00', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('196', '3168901146', '4', '大学英语', '100', '5.00', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('197', '3168901147', '4', '大学英语', '43', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('198', '3168901148', '4', '大学英语', '73', '2.30', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('199', '3168901149', '4', '大学英语', '32', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('200', '3168901150', '4', '大学英语', '65', '1.50', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('201', '3168901101', '5', '体育', '67', '1.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('202', '3168901102', '5', '体育', '87', '3.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('203', '3168901103', '5', '体育', '65', '1.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('204', '3168901104', '5', '体育', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('205', '3168901105', '5', '体育', '64', '1.40', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('206', '3168901106', '5', '体育', '65', '1.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('207', '3168901107', '5', '体育', '77', '2.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('208', '3168901108', '5', '体育', '87', '3.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('209', '3168901109', '5', '体育', '56', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('210', '3168901110', '5', '体育', '87', '3.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('211', '3168901111', '5', '体育', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('212', '3168901112', '5', '体育', '74', '2.40', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('213', '3168901113', '5', '体育', '100', '5.00', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('214', '3168901114', '5', '体育', '57', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('215', '3168901115', '5', '体育', '85', '3.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('216', '3168901116', '5', '体育', '100', '5.00', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('217', '3168901117', '5', '体育', '85', '3.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('218', '3168901118', '5', '体育', '43', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('219', '3168901119', '5', '体育', '100', '5.00', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('220', '3168901120', '5', '体育', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('221', '3168901121', '5', '体育', '65', '1.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('222', '3168901122', '5', '体育', '34', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('223', '3168901123', '5', '体育', '75', '2.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('224', '3168901124', '5', '体育', '43', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('225', '3168901125', '5', '体育', '74', '2.40', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('226', '3168901126', '5', '体育', '77', '2.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('227', '3168901127', '5', '体育', '45', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('228', '3168901128', '5', '体育', '75', '2.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('229', '3168901129', '5', '体育', '65', '1.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('230', '3168901130', '5', '体育', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('231', '3168901131', '5', '体育', '100', '5.00', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('232', '3168901132', '5', '体育', '87', '3.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('233', '3168901133', '5', '体育', '45', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('234', '3168901134', '5', '体育', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('235', '3168901135', '5', '体育', '97', '4.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('236', '3168901136', '5', '体育', '46', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('237', '3168901137', '5', '体育', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('238', '3168901138', '5', '体育', '65', '1.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('239', '3168901139', '5', '体育', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('240', '3168901140', '5', '体育', '87', '3.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('241', '3168901141', '5', '体育', '45', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('242', '3168901142', '5', '体育', '67', '1.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('243', '3168901143', '5', '体育', '67', '1.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('244', '3168901144', '5', '体育', '87', '3.70', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('245', '3168901145', '5', '体育', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('246', '3168901146', '5', '体育', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('247', '3168901147', '5', '体育', '65', '1.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('248', '3168901148', '5', '体育', '76', '2.60', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('249', '3168901149', '5', '体育', '46', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('250', '3168901150', '5', '体育', '65', '1.50', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('251', '3168901101', '6', '操作系统', '35', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('252', '3168901102', '6', '操作系统', '100', '5.00', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('253', '3168901103', '6', '操作系统', '100', '5.00', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('254', '3168901104', '6', '操作系统', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('255', '3168901105', '6', '操作系统', '76', '2.60', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('256', '3168901106', '6', '操作系统', '100', '5.00', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('257', '3168901107', '6', '操作系统', '74', '2.40', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('258', '3168901108', '6', '操作系统', '86', '3.60', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('259', '3168901109', '6', '操作系统', '56', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('260', '3168901110', '6', '操作系统', '85', '3.50', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('261', '3168901111', '6', '操作系统', '86', '3.60', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('262', '3168901112', '6', '操作系统', '56', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('263', '3168901113', '6', '操作系统', '100', '5.00', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('264', '3168901114', '6', '操作系统', '43', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('265', '3168901115', '6', '操作系统', '83', '3.30', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('266', '3168901116', '6', '操作系统', '75', '2.50', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('267', '3168901117', '6', '操作系统', '23', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('268', '3168901118', '6', '操作系统', '86', '3.60', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('269', '3168901119', '6', '操作系统', '37', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('270', '3168901120', '6', '操作系统', '75', '2.50', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('271', '3168901121', '6', '操作系统', '76', '2.60', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('272', '3168901122', '6', '操作系统', '34', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('273', '3168901123', '6', '操作系统', '76', '2.60', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('274', '3168901124', '6', '操作系统', '43', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('275', '3168901125', '6', '操作系统', '86', '3.60', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('276', '3168901126', '6', '操作系统', '65', '1.50', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('277', '3168901127', '6', '操作系统', '43', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('278', '3168901128', '6', '操作系统', '86', '3.60', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('279', '3168901129', '6', '操作系统', '87', '3.70', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('280', '3168901130', '6', '操作系统', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('281', '3168901131', '6', '操作系统', '95', '4.50', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('282', '3168901132', '6', '操作系统', '67', '1.70', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('283', '3168901133', '6', '操作系统', '100', '5.00', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('284', '3168901134', '6', '操作系统', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('285', '3168901135', '6', '操作系统', '87', '3.70', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('286', '3168901136', '6', '操作系统', '34', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('287', '3168901137', '6', '操作系统', '77', '2.70', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('288', '3168901138', '6', '操作系统', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('289', '3168901139', '6', '操作系统', '86', '3.60', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('290', '3168901140', '6', '操作系统', '76', '2.60', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('291', '3168901141', '6', '操作系统', '23', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('292', '3168901142', '6', '操作系统', '56', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('293', '3168901143', '6', '操作系统', '65', '1.50', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('294', '3168901144', '6', '操作系统', '100', '5.00', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('295', '3168901145', '6', '操作系统', '43', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('296', '3168901146', '6', '操作系统', '54', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('297', '3168901147', '6', '操作系统', '65', '1.50', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('298', '3168901148', '6', '操作系统', '100', '5.00', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('299', '3168901149', '6', '操作系统', '43', '0.00', '0.00', '1', '2021');
INSERT INTO `student_course` VALUES ('300', '3168901150', '6', '操作系统', '65', '1.50', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('475', '3218901151', '2', 'Java程序设计', '88', '3.80', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('476', '3218901151', '4', '大学英语', '88', '3.80', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('477', '3218901151', '6', '操作系统', '88', '3.80', '2.00', '1', '2021');
INSERT INTO `student_course` VALUES ('478', '3218901151', '1', '数字逻辑', '88', '3.80', '4.00', '1', '2021');
INSERT INTO `student_course` VALUES ('479', '3218901151', '3', '线性代数', '88', '3.80', '1.00', '1', '2021');
INSERT INTO `student_course` VALUES ('480', '3218901151', '5', '体育', '88', '3.80', '1.00', '1', '2021');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `real_name` varchar(50) NOT NULL DEFAULT '',
  `level` tinyint(4) NOT NULL DEFAULT '1',
  `school` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '',
  `sex` tinyint(4) NOT NULL DEFAULT '0',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3890051 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('3890001', '3890001', '159357', 'Adam', '1', '沈阳工业大学', '1963551835@qq.com', '15501905622', '1', '2020-03-31 17:10:07');
INSERT INTO `teacher` VALUES ('3890011', '3890011', '159357', 'Brain', '1', '沈阳工业大学', '1708884815@qq.com', '13306387834', '1', '2020-03-31 17:10:07');
INSERT INTO `teacher` VALUES ('3890021', '3890021', '159357', 'Clevent', '1', '沈阳工业大学', '1544192276@qq.com', '13507731614', '1', '2020-03-31 17:10:07');
INSERT INTO `teacher` VALUES ('3890030', '3890030', '159357', 'Dave', '1', '沈阳工业大学', '1625877976@qq.com', '15300308560', '0', '2020-03-31 17:10:07');
INSERT INTO `teacher` VALUES ('3890040', '3890040', '159357', 'Elice', '1', '沈阳工业大学', '1034979625@qq.com', '13004971520', '0', '2020-03-31 17:10:07');
INSERT INTO `teacher` VALUES ('3890050', '3890050', '159357', 'Frank', '1', '沈阳工业大学', '1401785583@qq.com', '15203875368', '0', '2020-03-31 17:10:07');

-- ----------------------------
-- Table structure for teacher_course
-- ----------------------------
DROP TABLE IF EXISTS `teacher_course`;
CREATE TABLE `teacher_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` varchar(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `term` tinyint(4) NOT NULL,
  `course_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of teacher_course
-- ----------------------------
INSERT INTO `teacher_course` VALUES ('1', '3890001', '3890001', '数字逻辑', '计算机科学与技术', '2101', '1', '1');
INSERT INTO `teacher_course` VALUES ('2', '3890011', '3890011', 'Java程序设计', '计算机科学与技术', '2101', '1', '2');
INSERT INTO `teacher_course` VALUES ('3', '3890021', '3890021', '线性代数', '计算机科学与技术', '2101', '1', '3');
INSERT INTO `teacher_course` VALUES ('4', '3890030', '3890030', '大学英语', '计算机科学与技术', '2101', '1', '4');
INSERT INTO `teacher_course` VALUES ('5', '3890040', '3890040', '体育', '计算机科学与技术', '2101', '1', '5');
INSERT INTO `teacher_course` VALUES ('6', '3890050', '3890050', '操作系统', '计算机科学与技术', '2101', '1', '6');

-- ----------------------------
-- Table structure for timetable
-- ----------------------------
DROP TABLE IF EXISTS `timetable`;
CREATE TABLE `timetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `week_id` int(11) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `term` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of timetable
-- ----------------------------
INSERT INTO `timetable` VALUES ('21', '61', '计算机科学与技术', '2101', '2021', '1');
INSERT INTO `timetable` VALUES ('22', '62', '计算机科学与技术', '2101', '2021', '1');
INSERT INTO `timetable` VALUES ('23', '63', '计算机科学与技术', '2101', '2021', '1');
INSERT INTO `timetable` VALUES ('24', '64', '计算机科学与技术', '2101', '2021', '1');
INSERT INTO `timetable` VALUES ('25', '65', '计算机科学与技术', '2101', '2021', '1');
INSERT INTO `timetable` VALUES ('26', '66', '计算机科学与技术', '2101', '2021', '1');
INSERT INTO `timetable` VALUES ('27', '67', '计算机科学与技术', '2101', '2021', '1');
INSERT INTO `timetable` VALUES ('28', '68', '计算机科学与技术', '2101', '2021', '1');
INSERT INTO `timetable` VALUES ('29', '69', '计算机科学与技术', '2101', '2021', '1');
INSERT INTO `timetable` VALUES ('30', '70', '计算机科学与技术', '2101', '2021', '1');
INSERT INTO `timetable` VALUES ('31', '51', '计算机科学与技术', '2101', '2021', '2');
INSERT INTO `timetable` VALUES ('32', '52', '计算机科学与技术', '2101', '2021', '2');
INSERT INTO `timetable` VALUES ('33', '53', '计算机科学与技术', '2101', '2021', '2');
INSERT INTO `timetable` VALUES ('34', '54', '计算机科学与技术', '2101', '2021', '2');
INSERT INTO `timetable` VALUES ('35', '55', '计算机科学与技术', '2101', '2021', '2');
INSERT INTO `timetable` VALUES ('36', '56', '计算机科学与技术', '2101', '2021', '2');
INSERT INTO `timetable` VALUES ('37', '57', '计算机科学与技术', '2101', '2021', '2');
INSERT INTO `timetable` VALUES ('38', '58', '计算机科学与技术', '2101', '2021', '2');
INSERT INTO `timetable` VALUES ('39', '59', '计算机科学与技术', '2101', '2021', '2');
INSERT INTO `timetable` VALUES ('40', '60', '计算机科学与技术', '2101', '2021', '2');

-- ----------------------------
-- Table structure for upload
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of upload
-- ----------------------------
INSERT INTO `upload` VALUES ('1', '1', '0', 'sms/static/img/1e3d1f1a-33b5-4677-a70d-7ab754f3c436.jpg');
INSERT INTO `upload` VALUES ('2', '3168901102', '2', 'sms/static/img/98d6ec65-bb2c-4b41-8f7f-ac723085b59b.jpg');
INSERT INTO `upload` VALUES ('3', '3890290', '1', 'sms/static/img/859d30a4-5089-47bd-822e-0c435b009a82.png');
INSERT INTO `upload` VALUES ('4', '3168901101', '2', 'sms/static/img/4f60c9ba-d99c-4dac-9767-4d833a430d90.jpg');

-- ----------------------------
-- Table structure for week
-- ----------------------------
DROP TABLE IF EXISTS `week`;
CREATE TABLE `week` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monday` varchar(50) DEFAULT NULL,
  `tuesday` varchar(50) DEFAULT NULL,
  `wednesday` varchar(50) DEFAULT NULL,
  `thursday` varchar(50) DEFAULT NULL,
  `friday` varchar(50) DEFAULT NULL,
  `saturday` varchar(50) DEFAULT NULL,
  `sunday` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of week
-- ----------------------------
INSERT INTO `week` VALUES ('1', '数字逻辑', '一', '线性代数', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('2', '数字逻辑', '一', '线性代数', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('3', '一', '线性代数', '一', 'Java程序设计', '操作系统', '一', '一');
INSERT INTO `week` VALUES ('4', '一', '线性代数', '一', 'Java程序设计', '操作系统', '一', '一');
INSERT INTO `week` VALUES ('5', 'Java程序设计', '操作系统', '体育', '线性代数', '一', '一', '一');
INSERT INTO `week` VALUES ('6', 'Java程序设计', '操作系统', '体育', '线性代数', '一', '一', '一');
INSERT INTO `week` VALUES ('7', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('8', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('9', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('10', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('11', '一', '离散数学', '一', '物联网安全', '移动技术开发', '一', '一');
INSERT INTO `week` VALUES ('12', '一', '离散数学', '一', '物联网安全', '移动技术开发', '一', '一');
INSERT INTO `week` VALUES ('13', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('14', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('15', '物联网工程导论', '无线传感器网络', '现代传感器技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('16', '物联网工程导论', '无线传感器网络', '现代传感器技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('17', '移动技术开发', '一', '一', '物联网工程导论', '一', '一', '一');
INSERT INTO `week` VALUES ('18', '移动技术开发', '一', '一', '物联网工程导论', '一', '一', '一');
INSERT INTO `week` VALUES ('19', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('20', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('21', '一', '算法与数据结构', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('22', '一', '算法与数据结构', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('23', '网络与通信', '一', '计算机网络技术', '网络与通信', '一', '一', '一');
INSERT INTO `week` VALUES ('24', '网络与通信', '一', '计算机网络技术', '网络与通信', '一', '一', '一');
INSERT INTO `week` VALUES ('25', '一', '一', '计算机组成原理', '多媒体信息处理', '一', '一', '一');
INSERT INTO `week` VALUES ('26', '一', '一', '计算机组成原理', '多媒体信息处理', '一', '一', '一');
INSERT INTO `week` VALUES ('27', '一', '多媒体信息处理', '一', '一', '计算机组成原理', '一', '一');
INSERT INTO `week` VALUES ('28', '一', '多媒体信息处理', '一', '一', '计算机组成原理', '一', '一');
INSERT INTO `week` VALUES ('29', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('30', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('31', '一', '一', '一', '高等数学', '一', '一', '一');
INSERT INTO `week` VALUES ('32', '一', '一', '一', '高等数学', '一', '一', '一');
INSERT INTO `week` VALUES ('33', '一', '一', '一', 'C语言程序设计', '一', '一', '一');
INSERT INTO `week` VALUES ('34', '一', '一', '一', 'C语言程序设计', '一', '一', '一');
INSERT INTO `week` VALUES ('35', '通信原理', 'C语言程序设计', '一', '模拟电子技术', '移动通讯', '一', '一');
INSERT INTO `week` VALUES ('36', '通信原理', 'C语言程序设计', '一', '模拟电子技术', '移动通讯', '一', '一');
INSERT INTO `week` VALUES ('37', '高等数学', '一', '模拟电子技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('38', '高等数学', '一', '模拟电子技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('39', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('40', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('41', '线性代数', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('42', '一', '线性代数', '一', '一', '操作系统', '一', '一');
INSERT INTO `week` VALUES ('43', '一', '一', '数字逻辑', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('44', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('45', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('46', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('47', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('48', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('49', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('50', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('51', '大学英语', '一', '体育', '数字逻辑', 'Java程序设计', '一', '一');
INSERT INTO `week` VALUES ('52', '大学英语', '一', '体育', '数字逻辑', 'Java程序设计', '一', '一');
INSERT INTO `week` VALUES ('53', '一', '操作系统', '一', '操作系统', '一', '一', '一');
INSERT INTO `week` VALUES ('54', '一', '操作系统', '一', '操作系统', '一', '一', '一');
INSERT INTO `week` VALUES ('55', '一', '线性代数', 'Java程序设计', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('56', '一', '线性代数', 'Java程序设计', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('57', '数字逻辑', '一', '一', '一', '线性代数', '一', '一');
INSERT INTO `week` VALUES ('58', '数字逻辑', '一', '一', '一', '线性代数', '一', '一');
INSERT INTO `week` VALUES ('59', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('60', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('61', '操作系统', '一', '体育', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('62', '操作系统', '一', '体育', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('63', '一', '线性代数', '一', '一', '大学英语', '一', '一');
INSERT INTO `week` VALUES ('64', '一', '线性代数', '一', '一', '大学英语', '一', '一');
INSERT INTO `week` VALUES ('65', '一', '一', '一', 'Java程序设计', '一', '一', '一');
INSERT INTO `week` VALUES ('66', '一', '一', '一', 'Java程序设计', '一', '一', '一');
INSERT INTO `week` VALUES ('67', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('68', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('69', '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES ('70', '一', '一', '一', '一', '一', '一', '一');
