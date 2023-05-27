/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : sql1

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 27/05/2023 20:03:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for detailgoods
-- ----------------------------
DROP TABLE IF EXISTS `detailgoods`;
CREATE TABLE `detailgoods`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `goodsdetail` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `goodscomment` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `goodsprice` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detailgoods
-- ----------------------------

-- ----------------------------
-- Table structure for goodsinfo
-- ----------------------------
DROP TABLE IF EXISTS `goodsinfo`;
CREATE TABLE `goodsinfo`  (
  `goodsid` int NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `goodsprice` int NOT NULL,
  `goodsurl` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `goodsdetail` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `goodscomment` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`goodsid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goodsinfo
-- ----------------------------
INSERT INTO `goodsinfo` VALUES (1, '华为畅想 50 Pro', 1849, 'https://res.vmallres.com/uomcdn/CN/cms/202208/68D0D716D1475F8CF11DCDB2B40AE5A2.png.webp', '5000mAh大电池', '23人评价 100%好评', 'home');
INSERT INTO `goodsinfo` VALUES (2, '华为畅想 50 Pro', 1849, 'https://res.vmallres.com/uomcdn/CN/cms/202208/68D0D716D1475F8CF11DCDB2B40AE5A2.png.webp', '5000mAh大电池', '23人评价 100%好评', 'home');
INSERT INTO `goodsinfo` VALUES (3, '华为畅想 50 Pro', 1849, 'https://res.vmallres.com/uomcdn/CN/cms/202208/68D0D716D1475F8CF11DCDB2B40AE5A2.png.webp', '5000mAh大电池', '23人评价 100%好评', 'home');
INSERT INTO `goodsinfo` VALUES (4, '华为畅想 50 Pro', 1849, 'https://res.vmallres.com/uomcdn/CN/cms/202208/68D0D716D1475F8CF11DCDB2B40AE5A2.png.webp', '5000mAh大电池', '23人评价 100%好评', 'home');
INSERT INTO `goodsinfo` VALUES (5, '华为畅想 50 Pro', 1849, 'https://res.vmallres.com/uomcdn/CN/cms/202208/68D0D716D1475F8CF11DCDB2B40AE5A2.png.webp', '5000mAh大电池', '23人评价 100%好评', 'home');
INSERT INTO `goodsinfo` VALUES (6, '华为畅想 50 Pro', 1849, 'https://res.vmallres.com/uomcdn/CN/cms/202208/68D0D716D1475F8CF11DCDB2B40AE5A2.png.webp', '5000mAh大电池', '23人评价 100%好评', 'home');
INSERT INTO `goodsinfo` VALUES (7, '华为畅想 50 Pro', 1849, 'https://res.vmallres.com/uomcdn/CN/cms/202208/68D0D716D1475F8CF11DCDB2B40AE5A2.png.webp', '5000mAh大电池', '23人评价 100%好评', 'home');
INSERT INTO `goodsinfo` VALUES (8, '华为畅想 50 Pro', 1849, 'https://res.vmallres.com/uomcdn/CN/cms/202208/68D0D716D1475F8CF11DCDB2B40AE5A2.png.webp', '5000mAh大电池', '23人评价 100%好评', 'home');
INSERT INTO `goodsinfo` VALUES (9, '华为畅想 50 Pro', 1849, 'https://res.vmallres.com/uomcdn/CN/cms/202208/68D0D716D1475F8CF11DCDB2B40AE5A2.png.webp', '5000mAh大电池', '23人评价 100%好评', 'home');
INSERT INTO `goodsinfo` VALUES (10, '华为畅想 50 Pro', 1849, 'https://res.vmallres.com/uomcdn/CN/cms/202208/68D0D716D1475F8CF11DCDB2B40AE5A2.png.webp', '5000mAh大电池', '23人评价 100%好评', 'home');
INSERT INTO `goodsinfo` VALUES (11, '华为畅想 50 Pro', 1849, 'https://res.vmallres.com/uomcdn/CN/cms/202208/68D0D716D1475F8CF11DCDB2B40AE5A2.png.webp', '5000mAh大电池', '23人评价 100%好评', 'home');
INSERT INTO `goodsinfo` VALUES (12, '华为畅想 50 Pro', 1849, 'https://res.vmallres.com/uomcdn/CN/cms/202208/68D0D716D1475F8CF11DCDB2B40AE5A2.png.webp', '5000mAh大电池', '23人评价 100%好评', 'home');
INSERT INTO `goodsinfo` VALUES (13, '华为畅想 50 Pro', 1849, 'https://res.vmallres.com/uomcdn/CN/cms/202208/68D0D716D1475F8CF11DCDB2B40AE5A2.png.webp', '5000mAh大电池', '23人评价 100%好评', 'home');
INSERT INTO `goodsinfo` VALUES (14, 'HUAWEI Mate 50', 5890, 'https://res6.vmallres.com/pimages/uomcdn/CN/pms/202209/gbom/6941487277254/800_800_42E4E1A097F8510609271122BFDB4B31mp.png', '搭载麒麟990芯片', '4.7万人评价 99%好评!', 'phone');
INSERT INTO `goodsinfo` VALUES (15, 'HUAWEI Mate 50', 5890, 'https://res6.vmallres.com/pimages/uomcdn/CN/pms/202209/gbom/6941487277254/800_800_42E4E1A097F8510609271122BFDB4B31mp.png', '搭载麒麟990芯片', '4.7万人评价 99%好评!', 'phone');
INSERT INTO `goodsinfo` VALUES (16, 'HUAWEI Mate 50', 5890, 'https://res6.vmallres.com/pimages/uomcdn/CN/pms/202209/gbom/6941487277254/800_800_42E4E1A097F8510609271122BFDB4B31mp.png', '搭载麒麟990芯片', '4.7万人评价 99%好评!', 'phone');
INSERT INTO `goodsinfo` VALUES (17, 'HUAWEI Mate 50', 5890, 'https://res6.vmallres.com/pimages/uomcdn/CN/pms/202209/gbom/6941487277254/800_800_42E4E1A097F8510609271122BFDB4B31mp.png', '搭载麒麟990芯片', '4.7万人评价 99%好评!', 'phone');
INSERT INTO `goodsinfo` VALUES (18, 'HUAWEI Mate 50', 5890, 'https://res6.vmallres.com/pimages/uomcdn/CN/pms/202209/gbom/6941487277254/800_800_42E4E1A097F8510609271122BFDB4B31mp.png', '搭载麒麟990芯片', '4.7万人评价 99%好评!', 'phone');
INSERT INTO `goodsinfo` VALUES (19, 'HUAWEI Mate 50', 5890, 'https://res6.vmallres.com/pimages/uomcdn/CN/pms/202209/gbom/6941487277254/800_800_42E4E1A097F8510609271122BFDB4B31mp.png', '搭载麒麟990芯片', '4.7万人评价 99%好评!', 'phone');
INSERT INTO `goodsinfo` VALUES (20, 'HUAWEI Mate 50', 5890, 'https://res6.vmallres.com/pimages/uomcdn/CN/pms/202209/gbom/6941487277254/800_800_42E4E1A097F8510609271122BFDB4B31mp.png', '搭载麒麟990芯片', '4.7万人评价 99%好评!', 'phone');
INSERT INTO `goodsinfo` VALUES (21, 'HUAWEI Mate 50', 5890, 'https://res6.vmallres.com/pimages/uomcdn/CN/pms/202209/gbom/6941487277254/800_800_42E4E1A097F8510609271122BFDB4B31mp.png', '搭载麒麟990芯片', '4.7万人评价 99%好评!', 'phone');
INSERT INTO `goodsinfo` VALUES (22, 'HUAWEI Mate 50', 5890, 'https://res6.vmallres.com/pimages/uomcdn/CN/pms/202209/gbom/6941487277254/800_800_42E4E1A097F8510609271122BFDB4B31mp.png', '搭载麒麟990芯片', '4.7万人评价 99%好评!', 'phone');
INSERT INTO `goodsinfo` VALUES (23, 'HUAWEI Mate 50', 5890, 'https://res6.vmallres.com/pimages/uomcdn/CN/pms/202209/gbom/6941487277254/800_800_42E4E1A097F8510609271122BFDB4B31mp.png', '搭载麒麟990芯片', '4.7万人评价 99%好评!', 'phone');
INSERT INTO `goodsinfo` VALUES (24, 'HUAWEI Mate 50', 5890, 'https://res6.vmallres.com/pimages/uomcdn/CN/pms/202209/gbom/6941487277254/800_800_42E4E1A097F8510609271122BFDB4B31mp.png', '搭载麒麟990芯片', '4.7万人评价 99%好评!', 'phone');
INSERT INTO `goodsinfo` VALUES (25, 'HUAWEI Mate 50', 5890, 'https://res6.vmallres.com/pimages/uomcdn/CN/pms/202209/gbom/6941487277254/800_800_42E4E1A097F8510609271122BFDB4B31mp.png', '搭载麒麟990芯片', '4.7万人评价 99%好评!', 'phone');
INSERT INTO `goodsinfo` VALUES (26, 'HUAWEI Mate 50', 5890, 'https://res6.vmallres.com/pimages/uomcdn/CN/pms/202209/gbom/6941487277254/800_800_42E4E1A097F8510609271122BFDB4B31mp.png', '搭载麒麟990芯片', '4.7万人评价 99%好评!', 'phone');
INSERT INTO `goodsinfo` VALUES (27, 'HUAWEI Mate 50', 5890, 'https://res6.vmallres.com/pimages/uomcdn/CN/pms/202209/gbom/6941487277254/800_800_42E4E1A097F8510609271122BFDB4B31mp.png', '搭载麒麟990芯片', '4.7万人评价 99%好评!', 'phone');
INSERT INTO `goodsinfo` VALUES (28, 'HUAWEI Mate 50', 5890, 'https://res6.vmallres.com/pimages/uomcdn/CN/pms/202209/gbom/6941487277254/800_800_42E4E1A097F8510609271122BFDB4B31mp.png', '搭载麒麟990芯片', '4.7万人评价 99%好评!', 'phone');
INSERT INTO `goodsinfo` VALUES (29, 'HUAWEI Mate 50', 5890, 'https://res6.vmallres.com/pimages/uomcdn/CN/pms/202209/gbom/6941487277254/800_800_42E4E1A097F8510609271122BFDB4B31mp.png', '搭载麒麟990芯片', '4.7万人评价 99%好评!', 'phone');
INSERT INTO `goodsinfo` VALUES (30, 'MateBook X Pro ', 9999, 'https://res8.vmallres.com/pimages/uomcdn/CN/pms/202207/gbom/6941487262915/800_800_0734AA176A25064EDB37B01BF0821362mp.png', '3.1k原色全面屏 | 12代处理器', '3.7万人评价 98%好评', 'computer');
INSERT INTO `goodsinfo` VALUES (31, 'MateBook X Pro ', 9999, 'https://res8.vmallres.com/pimages/uomcdn/CN/pms/202207/gbom/6941487262915/800_800_0734AA176A25064EDB37B01BF0821362mp.png', '3.1k原色全面屏 | 12代处理器', '3.7万人评价 98%好评', 'computer');
INSERT INTO `goodsinfo` VALUES (32, 'MateBook X Pro ', 9999, 'https://res8.vmallres.com/pimages/uomcdn/CN/pms/202207/gbom/6941487262915/800_800_0734AA176A25064EDB37B01BF0821362mp.png', '3.1k原色全面屏 | 12代处理器', '3.7万人评价 98%好评', 'computer');
INSERT INTO `goodsinfo` VALUES (33, 'MateBook X Pro ', 9999, 'https://res8.vmallres.com/pimages/uomcdn/CN/pms/202207/gbom/6941487262915/800_800_0734AA176A25064EDB37B01BF0821362mp.png', '3.1k原色全面屏 | 12代处理器', '3.7万人评价 98%好评', 'computer');
INSERT INTO `goodsinfo` VALUES (34, 'MateBook X Pro ', 9999, 'https://res8.vmallres.com/pimages/uomcdn/CN/pms/202207/gbom/6941487262915/800_800_0734AA176A25064EDB37B01BF0821362mp.png', '3.1k原色全面屏 | 12代处理器', '3.7万人评价 98%好评', 'computer');
INSERT INTO `goodsinfo` VALUES (35, 'MateBook X Pro ', 9999, 'https://res8.vmallres.com/pimages/uomcdn/CN/pms/202207/gbom/6941487262915/800_800_0734AA176A25064EDB37B01BF0821362mp.png', '3.1k原色全面屏 | 12代处理器', '3.7万人评价 98%好评', 'computer');
INSERT INTO `goodsinfo` VALUES (36, 'MateBook X Pro ', 9999, 'https://res8.vmallres.com/pimages/uomcdn/CN/pms/202207/gbom/6941487262915/800_800_0734AA176A25064EDB37B01BF0821362mp.png', '3.1k原色全面屏 | 12代处理器', '3.7万人评价 98%好评', 'computer');
INSERT INTO `goodsinfo` VALUES (37, 'MateBook X Pro ', 9999, 'https://res8.vmallres.com/pimages/uomcdn/CN/pms/202207/gbom/6941487262915/800_800_0734AA176A25064EDB37B01BF0821362mp.png', '3.1k原色全面屏 | 12代处理器', '3.7万人评价 98%好评', 'computer');
INSERT INTO `goodsinfo` VALUES (38, 'MateBook X Pro ', 9999, 'https://res8.vmallres.com/pimages/uomcdn/CN/pms/202207/gbom/6941487262915/800_800_0734AA176A25064EDB37B01BF0821362mp.png', '3.1k原色全面屏 | 12代处理器', '3.7万人评价 98%好评', 'computer');
INSERT INTO `goodsinfo` VALUES (39, 'MateBook X Pro ', 9999, 'https://res8.vmallres.com/pimages/uomcdn/CN/pms/202207/gbom/6941487262915/800_800_0734AA176A25064EDB37B01BF0821362mp.png', '3.1k原色全面屏 | 12代处理器', '3.7万人评价 98%好评', 'computer');
INSERT INTO `goodsinfo` VALUES (40, 'MateBook X Pro ', 9999, 'https://res8.vmallres.com/pimages/uomcdn/CN/pms/202207/gbom/6941487262915/800_800_0734AA176A25064EDB37B01BF0821362mp.png', '3.1k原色全面屏 | 12代处理器', '3.7万人评价 98%好评', 'computer');
INSERT INTO `goodsinfo` VALUES (41, 'MateBook X Pro ', 9999, 'https://res8.vmallres.com/pimages/uomcdn/CN/pms/202207/gbom/6941487262915/800_800_0734AA176A25064EDB37B01BF0821362mp.png', '3.1k原色全面屏 | 12代处理器', '3.7万人评价 98%好评', 'computer');
INSERT INTO `goodsinfo` VALUES (42, 'MateBook X Pro ', 9999, 'https://res8.vmallres.com/pimages/uomcdn/CN/pms/202207/gbom/6941487262915/800_800_0734AA176A25064EDB37B01BF0821362mp.png', '3.1k原色全面屏 | 12代处理器', '3.7万人评价 98%好评', 'computer');
INSERT INTO `goodsinfo` VALUES (43, 'MateBook X Pro ', 9999, 'https://res8.vmallres.com/pimages/uomcdn/CN/pms/202207/gbom/6941487262915/800_800_0734AA176A25064EDB37B01BF0821362mp.png', '3.1k原色全面屏 | 12代处理器', '3.7万人评价 98%好评', 'computer');
INSERT INTO `goodsinfo` VALUES (44, 'MateBook X Pro ', 9999, 'https://res8.vmallres.com/pimages/uomcdn/CN/pms/202207/gbom/6941487262915/800_800_0734AA176A25064EDB37B01BF0821362mp.png', '3.1k原色全面屏 | 12代处理器', '3.7万人评价 98%好评', 'computer');
INSERT INTO `goodsinfo` VALUES (45, 'MateBook X Pro ', 9999, 'https://res8.vmallres.com/pimages/uomcdn/CN/pms/202207/gbom/6941487262915/800_800_0734AA176A25064EDB37B01BF0821362mp.png', '3.1k原色全面屏 | 12代处理器', '3.7万人评价 98%好评', 'computer');

-- ----------------------------
-- Table structure for goodsorder
-- ----------------------------
DROP TABLE IF EXISTS `goodsorder`;
CREATE TABLE `goodsorder`  (
  `goodsname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goodsprice` int NULL DEFAULT NULL,
  `goodsnumber` int NULL DEFAULT 1,
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goodsorder
-- ----------------------------
INSERT INTO `goodsorder` VALUES ('华为畅想 50 Pro', 1849, 1, 'admin123', 25, 'payed');
INSERT INTO `goodsorder` VALUES ('MateBook X Pro ', 9999, 1, 'admin123', 28, 'unpayed');
INSERT INTO `goodsorder` VALUES ('华为畅想 50 Pro', 1849, 1, 'admin123', 29, 'payed');

-- ----------------------------
-- Table structure for shopcart
-- ----------------------------
DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart`  (
  `goodsname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `goodsprice` int NOT NULL,
  `goodsnumber` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopcart
-- ----------------------------
INSERT INTO `shopcart` VALUES ('华为畅想 50 Pro', 1849, 1, 1, 'admin521');
INSERT INTO `shopcart` VALUES ('华为畅想 50 Pro', 1849, 5, 2, 'admin521');
INSERT INTO `shopcart` VALUES ('华为畅想 50 Pro', 1849, 1, 38, 'admin123');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'admin',
  `password` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '123',
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, 'zhangsan', 'zhangsan', 1);
INSERT INTO `userinfo` VALUES (2, 'zhangsan1', '$2a$10$Qg6m2wbwMnHtgy0r7S6NCuASp0GVr11KbjpBNu95j7YBpEjzbYCC2', 1);
INSERT INTO `userinfo` VALUES (3, 'admin123', '$2a$10$64DX9pQVHZF1quBQsaOqKeVjH.QcCoa5ePFFG9h2IFBqUYnZK2vlm', 1);
INSERT INTO `userinfo` VALUES (4, 'admin521', '$2a$10$CMb.gKBJSmkh0AH7D0RIG.45DtYON7A9l0Vx2IIq7TqnxnBVl223G', 1);
INSERT INTO `userinfo` VALUES (5, 'zhangsan2', '$2a$10$1zImR6Ssjm9uI7iHKuvOE.lbQL8OEgzFF9lGZJCYerDe1tiRlde7a', 1);
INSERT INTO `userinfo` VALUES (6, 'admin1234', '$2a$10$8LdGrGfHDxIGF8quh1so0OQWRLsmX60mZsulf8ANhgqeAZWDHZFLW', 1);

-- ----------------------------
-- Table structure for userinfomsg
-- ----------------------------
DROP TABLE IF EXISTS `userinfomsg`;
CREATE TABLE `userinfomsg`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `usernaem` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `gender` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `telenumber` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `user` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `img` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinfomsg
-- ----------------------------
INSERT INTO `userinfomsg` VALUES (22, 'zhangsan2', '4234', 4234, '423423', '3423', NULL);
INSERT INTO `userinfomsg` VALUES (23, 'admin1234', '男', 28, '119', 'admin1234', NULL);

SET FOREIGN_KEY_CHECKS = 1;
