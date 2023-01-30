/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL
 Source Server Type    : MySQL
 Source Server Version : 50741
 Source Host           : localhost:3306
 Source Schema         : world

 Target Server Type    : MySQL
 Target Server Version : 50741
 File Encoding         : 65001

 Date: 30/01/2023 15:14:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for _teleport_item_template
-- ----------------------------
DROP TABLE IF EXISTS `_teleport_item_template`;
CREATE TABLE `_teleport_item_template`  (
  `Id` int(11) UNSIGNED NOT NULL COMMENT '跳转ID',
  `ItemId` int(11) NULL DEFAULT 1000000 COMMENT '物品ID',
  `MenuId` int(11) NULL DEFAULT NULL COMMENT '节点ID',
  `SubMenuId` int(11) NULL DEFAULT NULL COMMENT '跳转ID （没有跳转设为0）',
  `Icon` tinyint(5) UNSIGNED NULL DEFAULT NULL COMMENT '图标id',
  `Comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传送地点',
  `MapId` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '地图ID',
  `X` float(11, 2) NULL DEFAULT NULL COMMENT 'PostionX',
  `Y` float(11, 2) NULL DEFAULT NULL COMMENT 'PostionY',
  `Z` float(11, 2) NULL DEFAULT NULL COMMENT 'PostionZ',
  `O` float(11, 2) NULL DEFAULT NULL COMMENT 'Orientation',
  `Faction` tinyint(5) NOT NULL COMMENT '-1为公共区域，0为部落，1为联盟',
  `IsEmpty` tinyint(5) UNSIGNED NOT NULL COMMENT '没有传送功能为1，有传送功能为0',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of _teleport_item_template
-- ----------------------------
INSERT INTO `_teleport_item_template` VALUES (2, 100000, 1, 0, 1, '——各大主城传送—————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (3, 100000, 1, 3, 1, '    |CFF0000cc[ 主城 ]|r  传送各大主城', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (4, 100000, 1, 0, 1, '|CFF8B0000＊|r野外难度超高，请满级后再挑战！\r\n　　', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (10, 100000, 1, 0, 1, '——地下城传送——————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (11, 100000, 1, 11, 1, '    |CFF0000cc[ 副本区域 ]|r  Lv.13－29', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (12, 100000, 1, 12, 1, '    |CFF0000cc[ 副本区域 ]|r  Lv.30－45', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (13, 100000, 1, 13, 1, '    |CFF0000cc[ 副本区域 ]|r  Lv.45－60', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (14, 100000, 1, 14, 1, '    |CFF0000cc[ 副本区域 ]|r  Lv.60－70', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (15, 100000, 1, 15, 1, '    |CFF0000cc[ 副本区域 ]|r  Lv.70－80', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (16, 100000, 1, 16, 1, '    |CFF0000cc[ 副本区域 ]|r  Lv.81－85', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (17, 100000, 1, 17, 1, '    |CFF0000cc[ 副本区域 ]|r  Lv.86－90', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (18, 100000, 1, 17, 1, '    |CFF0000cc[ 副本区域 ]|r  Lv.91－100', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (19, 100000, 1, 18, 1, '    |CFF0000cc[ 副本区域 ]|r  Lv.100+', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20, 100000, 1, 0, 1, '|CFF8B0000＊|r副本大量经验，大量装备掉落！\r\n　　', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (21, 100000, 1, 0, 1, '——野外地图传送—————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (22, 100000, 1, 0, 1, '    |CFF0000cc[ 野外区域 ]|r  Lv.10－25', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (23, 100000, 1, 0, 1, '    |CFF0000cc[ 野外区域 ]|r  Lv.26－45', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (24, 100000, 1, 0, 1, '    |CFF0000cc[ 野外区域 ]|r  Lv.46－60', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (25, 100000, 1, 0, 1, '    |CFF0000cc[ 野外区域 ]|r  Lv.61－70', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (26, 100000, 1, 0, 1, '    |CFF0000cc[ 野外区域 ]|r  Lv.71－80', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (27, 100000, 1, 0, 1, '    |CFF0000cc[ 野外区域 ]|r  Lv.81－90', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (28, 100000, 1, 0, 1, '    |CFF0000cc[ 野外区域 ]|r  Lv.91－100', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (29, 100000, 1, 0, 1, '    |CFF0000cc[ 野外区域 ]|r  Lv.100+', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (30, 100000, 1, 0, 1, '|CFF8B0000＊|r任务奖励丰富，满级后挑战！\r\n　　', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (10000, 100000, 3, 0, 1, '——主城传送———————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (10001, 100000, 3, 0, 1, '破碎群岛：苏拉玛  Lv.110+', 1220, 373.75, 3228.08, 142.01, 0.81, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (10002, 100000, 3, 0, 1, '—', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (10003, 100000, 3, 0, 1, '卡里姆多：奥格瑞玛', 1, 1569.32, -4397.73, 16.08, 0.57, 0, 0);
INSERT INTO `_teleport_item_template` VALUES (10004, 100000, 3, 0, 1, '东部王国：幽暗城', 0, 1562.79, 239.23, -43.28, 4.47, 0, 0);
INSERT INTO `_teleport_item_template` VALUES (10005, 100000, 3, 0, 1, '卡里姆多：雷霆崖', 1, -1235.74, 73.83, 129.43, 5.58, 0, 0);
INSERT INTO `_teleport_item_template` VALUES (10006, 100000, 3, 0, 1, '外域：银月城', 530, 9496.70, -7280.97, 14.31, 6.11, 0, 0);
INSERT INTO `_teleport_item_template` VALUES (10007, 100000, 3, 0, 1, '潘达利亚：科赞', 648, -8119.75, 1393.63, 23.51, 2.80, 0, 0);
INSERT INTO `_teleport_item_template` VALUES (10008, 100000, 3, 0, 1, '东部王国：暴风城', 0, -8830.42, 625.61, 93.94, 0.68, 1, 0);
INSERT INTO `_teleport_item_template` VALUES (10009, 100000, 3, 0, 1, '东部王国：铁炉堡', 0, -4924.69, -949.34, 501.55, 5.39, 1, 0);
INSERT INTO `_teleport_item_template` VALUES (10010, 100000, 3, 0, 1, '卡里姆多：埃索达', 530, -4023.77, -11678.30, -135.20, 3.16, 1, 0);
INSERT INTO `_teleport_item_template` VALUES (10011, 100000, 3, 0, 1, '卡里姆多：达纳苏斯', 1, 9947.49, 2485.21, 1316.26, 1.96, 1, 0);
INSERT INTO `_teleport_item_template` VALUES (10012, 100000, 3, 0, 1, '东部王国：吉尔尼斯城', 0, -1509.76, 1606.90, 20.49, 0.13, 1, 0);
INSERT INTO `_teleport_item_template` VALUES (10013, 100000, 3, 0, 1, '—', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (10014, 100000, 3, 0, 1, '卡里姆多：荆齿城  Lv.20+', 1, -961.09, -3762.65, 5.29, 0.98, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (10015, 100000, 3, 0, 1, '东部王国：藏宝海湾  Lv.35+', 0, -14292.89, 541.47, 8.69, 4.28, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (10016, 100000, 3, 0, 1, '卡里姆多：塞纳里奥要塞  Lv.55+', 1, -6810.27, 802.15, 51.53, 2.07, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (10017, 100000, 3, 0, 1, '外域：沙塔斯城  Lv.65+', 530, -1936.34, 5393.74, -12.42, 0.49, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (10018, 100000, 3, 0, 1, '诺森德：达拉然  Lv.75+', 571, 5817.03, 422.59, 658.78, 1.69, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (10019, 100000, 3, 0, 1, '诺森德：银色十字军  Lv.80+', 571, 8515.70, 676.30, 558.32, 4.69, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (10020, 100000, 3, 0, 1, '潘达利亚：锦绣谷双月殿  Lv.90+', 870, 1601.61, 921.27, 470.62, 0.13, 0, 0);
INSERT INTO `_teleport_item_template` VALUES (10021, 100000, 3, 0, 1, '潘达利亚：锦绣谷七星殿  Lv.90+', 870, 882.37, 297.28, 503.11, 3.75, 1, 0);
INSERT INTO `_teleport_item_template` VALUES (10022, 100000, 3, 0, 1, '德拉诺：纳格兰  Lv.100+', 1116, 3671.11, 5776.30, 44.80, 5.68, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (10023, 100000, 3, 0, 1, '破碎群岛：苏拉玛  Lv.110+', 1220, 373.75, 3228.08, 142.01, 0.81, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (10024, 100000, 3, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (10025, 100000, 3, 1, 1, '|CFF0000cc返回上级菜单|r', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (10026, 100000, 3, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20000, 100000, 11, 0, 1, '——地下城传送—————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20001, 100000, 11, 0, 1, '    前往怒焰裂谷  Lv.13－15', 389, 3.80, -14.80, -17.00, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20002, 100000, 11, 0, 1, '    前往死亡矿井  Lv.16－18', 36, -16.00, -383.00, 62.00, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20003, 100000, 11, 0, 1, '    前往哀嚎洞穴  Lv.19－20', 43, -163.00, 132.00, -73.00, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20004, 100000, 11, 0, 1, '    前往影牙城堡  Lv.19－21', 33, -228.19, 2110.56, 76.88, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20005, 100000, 11, 0, 1, '    前往黑暗深渊  Lv.22－23', 48, -153.96, 96.77, -40.70, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20006, 100000, 11, 0, 1, '    前往暴风城监狱  Lv.24－25', 34, 54.23, 0.28, -18.34, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20007, 100000, 11, 0, 1, '    前往剃刀沼泽  Lv.25－26', 47, 1954.95, 1595.97, 82.60, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20008, 100000, 11, 0, 1, '    前往诺莫瑞根  Lv.27－29', 90, -332.00, -2.20, -151.00, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20009, 100000, 11, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20010, 100000, 11, 1, 1, '    |CFF0000cc返回上级菜单|r', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20011, 100000, 11, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20012, 100000, 12, 0, 1, '——地下城传送—————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20013, 100000, 12, 0, 1, '    前往血色墓园  Lv.30－31', 189, 1695.99, 1053.66, 18.49, 0.03, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20014, 100000, 12, 0, 1, '    前往血色图书馆  Lv.34－35', 189, 268.91, -212.32, 20.07, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20015, 100000, 12, 0, 1, '    前往血色军械库  Lv.32－33', 189, 1625.56, -312.79, 18.00, 4.67, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20016, 100000, 12, 0, 1, '    前往剃刀高地  Lv.35－36', 129, 2593.97, 1104.59, 52.00, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20017, 100000, 12, 0, 1, '    前往血色教堂  Lv.36－38', 189, 871.16, 1322.29, 18.68, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20018, 100000, 12, 0, 1, '    前往奥达曼  Lv.37－39', 70, -227.53, 45.01, -46.02, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20019, 100000, 12, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20020, 100000, 12, 1, 1, '    |CFF0000cc返回上级菜单|r', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20021, 100000, 12, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20022, 100000, 13, 0, 1, '——地下城传送—————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20023, 100000, 13, 0, 1, '    前往玛拉顿  Lv.44－45', 349, 1061.57, -466.03, -32.77, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20024, 100000, 13, 0, 1, '    前往祖尔法拉克  Lv.44－46', 209, 1213.00, 841.80, 8.90, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20025, 100000, 13, 0, 1, '    前往沉没的神庙  Lv.48－49', 109, -335.00, 95.39, -90.84, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20026, 100000, 13, 0, 1, '    前往黑石深渊  Lv.47－50', 230, 456.77, 28.79, -70.00, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20027, 100000, 13, 0, 1, '    前往厄运之槌东区  Lv.51－52', 429, 55.50, -152.50, -2.71, 4.76, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20028, 100000, 13, 0, 1, '    前往厄运之槌西区  Lv.52－53', 429, 39.65, 157.65, -3.47, 1.49, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20029, 100000, 13, 0, 1, '    前往厄运之槌北区  Lv.53－54', 429, 268.59, -27.20, -1.74, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20030, 100000, 13, 0, 1, '    前往斯坦索姆  Lv.54－55', 329, 3392.00, -3379.00, 143.00, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20031, 100000, 13, 0, 1, '    前往通灵学院  Lv.56－58', 289, 199.00, 126.00, 135.00, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20032, 100000, 13, 0, 1, '    前往黑石塔  Lv.59－60', 229, 78.19, -227.63, 49.72, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20033, 100000, 13, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20034, 100000, 13, 1, 1, '    |CFF0000cc返回上级菜单|r', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20035, 100000, 13, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20036, 100000, 14, 0, 1, '——地下城传送—————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20037, 100000, 14, 0, 1, '    前往地狱火城墙  Lv.60－61', 543, -1355.28, 1643.79, 68.40, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20038, 100000, 14, 0, 1, '    前往鲜血熔炉  Lv.61－62', 542, -4.10, 15.56, -44.79, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20039, 100000, 14, 0, 1, '    前往奴隶围栏  Lv.61－62', 547, 122.36, -130.21, -1.14, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20040, 100000, 14, 0, 1, '    前往幽暗沼泽  Lv.62－63', 546, 15.56, -21.54, -2.76, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20041, 100000, 14, 0, 1, '    前往法力陵墓  Lv.62－63', 557, 0.02, 0.95, -0.95, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20042, 100000, 14, 0, 1, '    前往奥金尼地穴  Lv.63－64', 558, 7.49, 0.52, 1.06, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20043, 100000, 14, 0, 1, '    前往逃离敦霍尔德  Lv.63－64', 560, 2375.55, 1178.65, 65.46, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20044, 100000, 14, 0, 1, '    前往塞泰克大厅  Lv.64－65', 556, -4.68, -0.09, 0.01, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20045, 100000, 14, 0, 1, '    前往能源舰  Lv.64－65', 554, -28.91, 0.68, -1.81, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20046, 100000, 14, 0, 1, '    前往破碎大厅  Lv.65－66', 540, -19.64, 0.25, -13.15, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20047, 100000, 14, 0, 1, '    前往生态船  Lv.65－66', 553, 1.56, 0.08, -0.95, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20048, 100000, 14, 0, 1, '    前往蒸汽地窟  Lv.66－67', 545, -13.84, 6.75, -4.26, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20049, 100000, 14, 0, 1, '    前往暗影迷宫  Lv.66－67', 555, -7.79, -0.02, -1.04, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20050, 100000, 14, 0, 1, '    前往开启黑暗之门  Lv.67－68', 269, -1542.67, 7115.22, 32.90, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20051, 100000, 14, 0, 1, '    前往禁魔监狱  Lv.68－69', 552, 34.66, -0.02, 0.86, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20052, 100000, 14, 0, 1, '    前往魔导师平台  Lv.69－70', 585, 42.67, 0.05, -1.90, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20053, 100000, 14, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20054, 100000, 14, 1, 1, '    |CFF0000cc返回上级菜单|r', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20055, 100000, 14, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20056, 100000, 15, 0, 1, '——地下城传送—————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20057, 100000, 15, 0, 1, '    前往乌特加德城堡  Lv.70－71', 574, 165.60, -82.10, 13.31, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20058, 100000, 15, 0, 1, '    前往魔枢  Lv.71－72', 576, 159.18, -5.41, -15.53, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20059, 100000, 15, 0, 1, '    前往艾卓-尼鲁布  Lv.71－72', 601, 431.08, 778.69, 828.50, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20060, 100000, 15, 0, 1, '    前往安卡古代王国  Lv.72－73', 619, 346.19, -1101.93, 59.69, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20061, 100000, 15, 0, 1, '    前往达克萨隆要塞  Lv.72－73', 600, -518.52, -526.68, 12.53, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20062, 100000, 15, 0, 1, '    前往紫罗兰监狱  Lv.73－74', 608, 1841.40, 803.84, 46.37, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20063, 100000, 15, 0, 1, '    前往古达克  Lv.73－74', 604, 1835.00, 624.04, 128.30, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20064, 100000, 15, 0, 1, '    前往岩石大厅  Lv.74－75', 599, 1153.93, 809.81, 196.54, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20065, 100000, 15, 0, 1, '    前往乌特加德之巅  Lv.74－75', 575, 563.14, -327.11, 111.10, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20066, 100000, 15, 0, 1, '    前往闪电大厅  Lv.75－76', 602, 1330.60, 235.84, 53.96, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20067, 100000, 15, 0, 1, '    前往魔环  Lv.75－76', 578, 1058.94, 985.53, 362.25, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20068, 100000, 15, 0, 1, '    前往冠军的试炼  Lv.76－77', 650, 796.50, 618.05, 413.19, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20069, 100000, 15, 0, 1, '    前往净化斯坦索姆  Lv.76－77', 595, 1581.62, 634.63, 101.90, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20070, 100000, 15, 0, 1, '    前往映像大厅  Lv.77－78', 668, 5242.83, 1936.40, 708.28, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20071, 100000, 15, 0, 1, '    前往灵魂洪炉  Lv.78－79', 632, 4915.74, 2212.50, 639.63, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20072, 100000, 15, 0, 1, '    前往萨隆矿坑  Lv.79－80', 658, 439.14, 209.54, 528.71, 0.01, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20073, 100000, 15, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20074, 100000, 15, 1, 1, '    |CFF0000cc返回上级菜单|r', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20075, 100000, 15, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20076, 100000, 16, 0, 1, '——地下城传送—————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20077, 100000, 16, 0, 1, '    前往黑石岩窟  Lv.80', 645, 211.12, 1131.11, 206.00, 4.67, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20078, 100000, 16, 0, 1, '    前往潮汐王座  Lv.80', 643, -609.50, 807.20, 245.00, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20079, 100000, 16, 0, 1, '    前往巨石之核  Lv.81', 725, 852.32, 986.51, 318.00, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20080, 100000, 16, 0, 1, '    前往托维尔失落之城  Lv.81', 755, -10705.26, -1314.00, 18.00, 3.41, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20081, 100000, 16, 0, 1, '    前往旋云之巅  Lv.82', 657, -347.73, 5.62, 632.00, 4.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20082, 100000, 16, 0, 1, '    前往起源大厅  Lv.82', 644, -948.01, 488.27, 52.00, 0.03, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20083, 100000, 16, 0, 1, '    前往格瑞姆巴托  Lv.83', 670, -616.13, -218.93, 277.00, 4.92, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20084, 100000, 16, 0, 1, '    前往影牙城堡  Lv.83', 33, -225.89, 2113.95, 77.00, 1.24, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20085, 100000, 16, 0, 1, '    前往死亡矿井  Lv.84', 36, -17.08, -377.45, 61.00, 3.20, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20086, 100000, 16, 0, 1, '    前往祖尔格拉布  Lv.84', 859, -11916.33, -1243.91, 93.00, 4.74, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20087, 100000, 16, 0, 1, '    前往祖阿曼  Lv.85', 568, 121.00, 1748.44, 43.00, 4.72, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20088, 100000, 16, 0, 1, '    前往永恒之井  Lv.85', 939, 3234.00, -5001.59, 195.00, 2.18, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20089, 100000, 16, 0, 1, '    前往时光之末  Lv.85', 938, 3724.69, -395.39, 112.00, 2.21, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20090, 100000, 16, 0, 1, '    前往暮光审判  Lv.85', 940, 4935.57, 309.72, 101.00, 4.10, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20091, 100000, 16, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20092, 100000, 16, 1, 1, '    |CFF0000cc返回上级菜单|r', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20093, 100000, 16, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20094, 100000, 17, 0, 1, '——地下城传送—————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20095, 100000, 17, 0, 1, '    前往青龙寺  Lv.85', 960, 951.88, -2491.85, 181.00, 4.38, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20096, 100000, 17, 0, 1, '    前往风暴烈酒酿造厂  Lv.85', 961, -733.02, 1269.83, 117.00, 1.81, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20097, 100000, 17, 0, 1, '    前往影踪禅院  Lv.86', 959, 3657.42, 2551.96, 767.00, 0.45, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20098, 100000, 17, 0, 1, '    前往围攻砮皂寺  Lv.87', 1011, 1472.14, 5115.33, 161.00, 6.10, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20099, 100000, 17, 0, 1, '    前往残阳关  Lv.88', 962, 721.80, 2115.10, 402.93, 1.56, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20100, 100000, 17, 0, 1, '    前往血色修道院  Lv.88', 1004, 1124.46, 519.01, 1.00, 1.61, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20101, 100000, 17, 0, 1, '    前往通灵学院  Lv.89', 1007, 200.50, 109.00, 133.00, 4.70, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20102, 100000, 17, 0, 1, '    前往血色大厅  Lv.90', NULL, -3968.99, -2544.44, 27.00, 994.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20103, 100000, 17, 0, 1, '    前往魔古山宫殿  Lv.90', 1001, 838.23, 616.14, 13.00, 4.67, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20104, 100000, 17, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20105, 100000, 17, 1, 1, '    |CFF0000cc返回上级菜单|r', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20106, 100000, 17, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20107, 100000, 18, 0, 1, '——地下城传送—————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20108, 100000, 18, 0, 1, '    前往血槌炉渣矿井  Lv.90', 1116, 7264.00, 4454.00, 130.00, 0.00, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20109, 100000, 18, 0, 1, '    前往钢铁码头  Lv.92', 1195, 6749.73, -554.15, 5.00, 4.70, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20110, 100000, 18, 0, 1, '    前往奥金顿  Lv.94', 1182, 1493.75, 2953.15, 36.00, 0.02, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20111, 100000, 18, 0, 1, '    前往通天峰  Lv.96', 1209, 1227.51, 1738.90, 178.00, 0.74, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20112, 100000, 18, 0, 1, '    前往恐轨车站  Lv.97', 1116, 7874.00, 562.00, 125.00, 0.35, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20113, 100000, 18, 0, 1, '    前往永茂林地  Lv.98', 1279, 450.33, 1346.32, 120.00, 0.67, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20114, 100000, 18, 0, 1, '    前往影月墓地  Lv.99', 1176, 1741.49, 224.52, 318.00, 5.82, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20115, 100000, 18, 0, 1, '    前往黑石塔上层  Lv.100', 1358, 127.46, -319.37, 71.00, 0.05, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20116, 100000, 18, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20117, 100000, 18, 1, 1, '    |CFF0000cc返回上级菜单|r', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20118, 100000, 18, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20119, 100000, 19, 0, 1, '——地下城传送—————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20120, 100000, 19, 0, 1, '    前往耐萨里奥的巢穴  Lv.98', 1458, 2968.14, 992.00, 371.00, 2.47, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20121, 100000, 19, 0, 1, '    前往艾萨拉之眼  Lv.99', 1456, -3917.09, 4541.58, 88.00, 5.93, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20122, 100000, 19, 0, 1, '    前往英灵殿  Lv.100', 1477, 3788.66, 528.59, 604.00, 3.13, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20123, 100000, 19, 0, 1, '    前往黑心林地  Lv.102', 1466, 3234.86, 1826.66, 234.00, 3.24, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20124, 100000, 19, 0, 1, '    前往突袭紫罗兰监狱  Lv.103', 1544, 4581.60, 3993.06, 84.00, 1.64, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20125, 100000, 19, 0, 1, '    前往守望者地窟  Lv.104', 1493, 4184.32, -757.27, 270.00, 1.57, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20126, 100000, 19, 0, 1, '    前往黑鸦堡垒  Lv.106', 1501, 3472.65, 7643.57, -9.00, 3.41, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20127, 100000, 19, 0, 1, '    前往魔法回廊  Lv.107', 1516, 3511.54, 4805.13, 591.00, 3.18, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20128, 100000, 19, 0, 1, '    前往噬魂之喉  Lv.108', 1492, 7198.55, 7318.02, 24.00, 5.66, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20129, 100000, 19, 0, 1, '    前往群星庭院  Lv.109', 1571, 960.46, 3465.23, 3.00, 5.61, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20130, 100000, 19, 0, 1, '    前往重返卡拉赞  Lv.110', 1651, -11043.00, -1993.36, 98.00, 2.12, -1, 0);
INSERT INTO `_teleport_item_template` VALUES (20131, 100000, 19, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20132, 100000, 19, 1, 1, '    |CFF0000cc返回上级菜单|r', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);
INSERT INTO `_teleport_item_template` VALUES (20133, 100000, 19, 0, 1, '————————————————', 0, 0.00, 0.00, 0.00, 0.00, -1, 1);

SET FOREIGN_KEY_CHECKS = 1;
