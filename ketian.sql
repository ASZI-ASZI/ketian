/*
Navicat MySQL Data Transfer

Source Server         : kt
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ketian

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-12-14 18:04:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `addressDetail` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL COMMENT '手机',
  `name` varchar(255) DEFAULT NULL,
  `areaCode` varchar(255) DEFAULT NULL COMMENT '地区编码',
  `postlCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '1', '浙江省', '杭州市', '余杭区', '仓溢绿苑海曙路128号', '13326154345', '张三', '330110', '123456');
INSERT INTO `address` VALUES ('2', '1', '浙江省', '杭州市', '余杭区', '仓溢绿苑海曙路128号', '13326154345', '李四', '330110', '123456');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `goods_id` int(11) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `count` int(11) NOT NULL,
  `total` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1', '1', '1', '119.00', '1', '119.00');
INSERT INTO `cart` VALUES ('2', '1', '2', '188.00', '1', '188.00');
INSERT INTO `cart` VALUES ('3', '1', '2', '188.00', '1', '188.00');
INSERT INTO `cart` VALUES ('4', '2', '1', '119.00', '10', '1190.00');
INSERT INTO `cart` VALUES ('5', '2', '1', '119.00', '1', '119.00');
INSERT INTO `cart` VALUES ('6', '2', '1', '119.00', '1', '119.00');
INSERT INTO `cart` VALUES ('7', '3', '1', '119.00', '1', '119.00');
INSERT INTO `cart` VALUES ('8', '3', '1', '119.00', '1', '119.00');
INSERT INTO `cart` VALUES ('9', '3', '1', '119.00', '1', '119.00');
INSERT INTO `cart` VALUES ('10', '5', '1', '119.00', '1', '119.00');
INSERT INTO `cart` VALUES ('11', '6', '1', '119.00', '1', '119.00');
INSERT INTO `cart` VALUES ('12', '6', '1', '119.00', '1', '119.00');
INSERT INTO `cart` VALUES ('13', '6', '1', '119.00', '1', '119.00');

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '类型',
  `time` varchar(255) DEFAULT NULL COMMENT '时间',
  `zk` decimal(12,2) DEFAULT NULL COMMENT '折扣',
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `desc1` varchar(255) DEFAULT NULL,
  `desc2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES ('1', '1', '蛋糕卷', '有效期至2021-12-30', '3.50', '1', '1.本券可用于所有可甜商品。', '2.本券一次使用1张限1件商品,自领取日起有效期3天。', '3.本优惠券不与其他优惠同享。');
INSERT INTO `coupon` VALUES ('2', '1', '蛋糕卷', '有效期至2021-12-30', '3.00', '2', '1.本券可用于所有可甜商品。', '2.本券一次使用1张限1件商品,自领取日起有效期3天。', '3.本优惠券不与其他优惠同享。');
INSERT INTO `coupon` VALUES ('3', '1', '蛋糕卷', '有效期至2021-12-30', '2.00', '3', '1.本券可用于所有可甜商品。', '2.本券一次使用1张限1件商品,自领取日起有效期3天。', '3.本优惠券不与其他优惠同享。');
INSERT INTO `coupon` VALUES ('4', '2', '蛋糕卷', '有效期至2021-12-30', '3.00', '4', '1.本券可用于所有可甜商品。', '2.本券一次使用1张限1件商品,自领取日起有效期3天。', '3.本优惠券不与其他优惠同享。');
INSERT INTO `coupon` VALUES ('5', '2', '蛋糕卷', '有效期至2021-12-30', '2.00', '5', '1.本券可用于所有可甜商品。', '2.本券一次使用1张限1件商品,自领取日起有效期3天。', '3.本优惠券不与其他优惠同享。');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name_title` varchar(255) DEFAULT NULL COMMENT '商品名',
  `name_type` varchar(255) DEFAULT NULL COMMENT '类型',
  `class_id` int(11) DEFAULT NULL,
  `cpgg_title` varchar(255) NOT NULL COMMENT '商品名字2',
  `sprice` decimal(12,2) DEFAULT NULL COMMENT '价格',
  `oprice` decimal(12,2) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL COMMENT '毫升',
  `img` varchar(255) DEFAULT NULL COMMENT '图片',
  `cover` varchar(255) DEFAULT NULL COMMENT '商品图片2',
  `detail` varchar(255) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  `tj_index` int(255) DEFAULT '0' COMMENT '推荐图片',
  `avatar` varchar(255) DEFAULT NULL,
  `spxq_title` varchar(255) DEFAULT NULL,
  `spxq_descs` varchar(255) DEFAULT NULL,
  `nbs_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '芒果榴莲千层', '千层蛋糕 ', '4', '芒果榴莲千层', '119.00', '999.00', '900', 'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i2/2201284998721/O1CN01QMURLL2EIGkhCReEz_!!2201284998721.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i2/2201284998721/O1CN01gUlH5u2EIGcbeQjcG_!!2201284998721.jpg_60x60q90.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', null, '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('2', '四拼蛋糕千层', '千层蛋糕', '4', '四拼蛋糕千层', '188.00', '999.00', '900', 'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i2/2201284998721/O1CN01QMURLL2EIGkhCReEz_!!2201284998721.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i2/2201284998721/O1CN01QMURLL2EIGkhCReEz_!!2201284998721.jpg_60x60q90.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', '1', '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('3', '奥巧芝士蛋糕', '芝士蛋糕', '3', '奥巧芝士蛋糕', '79.00', '999.00', '900', 'https://img.alicdn.com/imgextra/i3/2455221099/O1CN01z4pgJq1JzNwcfIUJk_!!2455221099.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i3/2455221099/O1CN01z4pgJq1JzNwcfIUJk_!!2455221099.jpg_60x60q90.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', '2', '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('4', '半熟芝士蛋糕', '芝士蛋糕', '3', '半熟芝士蛋糕', '78.00', '999.00', '900', 'https://img.alicdn.com/imgextra/i4/2455221099/O1CN01HmJF9A1JzNzGIUpLZ_!!2455221099.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i4/2455221099/O1CN01HmJF9A1JzNzGIUpLZ_!!2455221099.jpg_60x60q90.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', '45', '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('5', '水果生日蛋糕', '水果蛋糕', '5', '水果生日蛋糕', '188.00', '999.00', '900', 'https://img.alicdn.com/imgextra/i1/2203660013/O1CN01y8n9Et1BxzjG9fXZD_!!0-item_pic.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i1/2203660013/O1CN01y8n9Et1BxzjG9fXZD_!!0-item_pic.jpg_60x60q90.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', '5', '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('6', '草莓水果蛋糕', '水果蛋糕', '5', '草莓水果蛋糕', '188.00', '999.00', '900', 'https://img.alicdn.com/imgextra/i1/2203660013/TB2TcEgs4WYBuNjy1zkXXXGGpXa_!!2203660013.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i1/2203660013/TB2TcEgs4WYBuNjy1zkXXXGGpXa_!!2203660013.jpg_60x60q90.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', null, '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('7', '芒果水果蛋糕', '水果蛋糕', '5', '芒果水果蛋糕', '198.00', '999.00', '900', 'https://img.alicdn.com/imgextra/i3/2207869214346/O1CN01LVKV511hyVzhvCSyE_!!2207869214346.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i3/2207869214346/O1CN01LVKV511hyVzhvCSyE_!!2207869214346.jpg_60x60q90.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', null, '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('8', '海盐芝士面包', '夹心面包', '2', '海盐芝士面包', '29.00', '999.00', '900', 'https://img.alicdn.com/imgextra/i3/2207869214346/O1CN01LVKV511hyVzhvCSyE_!!2207869214346.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i3/2207869214346/O1CN01LVKV511hyVzhvCSyE_!!2207869214346.jpg_60x60q90.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', null, '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('9', '乳酸菌味面包', '夹心面包', '2', '乳酸菌味面包', '19.00', '999.00', '900', 'https://img.alicdn.com/imgextra/i3/2207869214346/O1CN01eIaWHy1hyVtauEr4D_!!2207869214346.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i3/2207869214346/O1CN01eIaWHy1hyVtauEr4D_!!2207869214346.jpg_60x60q90.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', null, '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('10', '轻芯吐司面包', '夹心面包', '2', '轻芯吐司面包', '29.00', '999.00', '900', 'https://img.alicdn.com/imgextra/i4/3512189193/O1CN017jdTXs2HmRXqnEpsL_!!3512189193.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i4/3512189193/O1CN017jdTXs2HmRXqnEpsL_!!3512189193.jpg_60x60q90.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', null, '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('11', '草莓水果面包', '夹心面包', '2', '草莓水果面包', '32.00', '999.00', '900', 'https://img.alicdn.com/imgextra/i2/3512189193/O1CN01L4J1ZE2HmRjTd6P9L_!!3512189193.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i2/3512189193/O1CN01L4J1ZE2HmRjTd6P9L_!!3512189193.jpg_60x60q90.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', null, '现在的孩子都是奶孩子，你要当好一个好奶爸！！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('12', '卡通儿童蛋糕1', '儿童蛋糕', '1', '卡通儿童蛋糕1', '298.00', '999.00', '900', 'https://img12.360buyimg.com/n5/jfs/t1/87411/32/14575/430382/5e6734a3E2465356d/5118063a50e9afb4.jpg', 'https://img12.360buyimg.com/n5/jfs/t1/87411/32/14575/430382/5e6734a3E2465356d/5118063a50e9afb4.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', null, '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('13', '卡通儿童蛋糕2', '儿童蛋糕', '1', '卡通儿童蛋糕2', '188.00', '999.00', '900', 'https://img.alicdn.com/imgextra/i1/2201284998721/O1CN0191yhE42EIGm7yiUFy_!!2201284998721.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i1/2201284998721/O1CN0191yhE42EIGm7yiUFy_!!2201284998721.jpg_60x60q90.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', null, '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('14', '卡通儿童蛋糕3', '儿童蛋糕', '1', '卡通儿童蛋糕3', '178.00', '999.00', '900', 'https://img.alicdn.com/imgextra/i3/2201284998721/O1CN01Ds4tgw2EIGmjmjOLo_!!2201284998721.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i3/2201284998721/O1CN01Ds4tgw2EIGmjmjOLo_!!2201284998721.jpg_60x60q90.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', null, '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('15', '卡通儿童蛋糕4', '儿童蛋糕', '1', '卡通儿童蛋糕4', '228.00', '999.00', '900', 'https://img12.360buyimg.com/n5/jfs/t1/175234/1/11900/106683/60b0aa19Eab8ab59f/a6fcdfb0ada0ae0e.jpg', 'https://img12.360buyimg.com/n5/jfs/t1/175234/1/11900/106683/60b0aa19Eab8ab59f/a6fcdfb0ada0ae0e.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', null, '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('16', '卡通儿童蛋糕5', '儿童蛋糕', '1', '卡通儿童蛋糕5', '179.00', '999.00', '900', 'https://img11.360buyimg.com/n5/jfs/t1/141288/35/953/122693/5eeb3067E892a8de1/b8befe7318f0a84f.jpg', 'https://img11.360buyimg.com/n5/jfs/t1/141288/35/953/122693/5eeb3067E892a8de1/b8befe7318f0a84f.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', null, '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('17', '卡通儿童蛋糕6', '儿童蛋糕', '1', '卡通儿童蛋糕6', '188.00', '999.00', '900', 'https://img11.360buyimg.com/n5/jfs/t1/141288/35/953/122693/5eeb3067E892a8de1/b8befe7318f0a84f.jpg', 'https://img11.360buyimg.com/n5/jfs/t1/141288/35/953/122693/5eeb3067E892a8de1/b8befe7318f0a84f.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', null, '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('18', '卡通儿童蛋糕7', '儿童蛋糕', '1', '卡通儿童蛋糕7', '188.00', '999.00', '900', 'https://img11.360buyimg.com/n5/jfs/t1/141288/35/953/122693/5eeb3067E892a8de1/b8befe7318f0a84f.jpg', 'https://img11.360buyimg.com/n5/jfs/t1/141288/35/953/122693/5eeb3067E892a8de1/b8befe7318f0a84f.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', null, '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('19', '卡通儿童蛋糕8', '儿童蛋糕', '1', '卡通儿童蛋糕8', '188.00', '999.00', '900', 'https://img11.360buyimg.com/n5/jfs/t1/141288/35/953/122693/5eeb3067E892a8de1/b8befe7318f0a84f.jpg', 'https://img11.360buyimg.com/n5/jfs/t1/141288/35/953/122693/5eeb3067E892a8de1/b8befe7318f0a84f.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', null, '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('20', '卡通儿童蛋糕9', '儿童蛋糕', '1', '卡通儿童蛋糕9', '188.00', '999.00', '900', 'https://img11.360buyimg.com/n5/jfs/t1/141288/35/953/122693/5eeb3067E892a8de1/b8befe7318f0a84f.jpg', 'https://img11.360buyimg.com/n5/jfs/t1/141288/35/953/122693/5eeb3067E892a8de1/b8befe7318f0a84f.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', null, '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');
INSERT INTO `goods` VALUES ('21', '卡通儿童蛋糕10', '儿童蛋糕', '1', '卡通儿童蛋糕10', '188.00', '999.00', '900', 'https://img11.360buyimg.com/n5/jfs/t1/141288/35/953/122693/5eeb3067E892a8de1/b8befe7318f0a84f.jpg', 'https://img11.360buyimg.com/n5/jfs/t1/141288/35/953/122693/5eeb3067E892a8de1/b8befe7318f0a84f.jpg', '独特的风味，本产品不含任何有害成分，请放心使用，图片仅供参考，请以实物为准，建议在保质期内引用', '1、面价：面价为商品的标示价格 2、促俏价：促俏价格为商品的促俏价格 3、我的钱包(优惠券)：我的钱包(优惠券)可以兑换面额与面价同等的商品 4、商品具体成交价格以订单结算页面价格为准，如有疑问，请在购买前联系客服', null, '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '\'独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。\'\r\n				', '可甜');

-- ----------------------------
-- Table structure for goods_class
-- ----------------------------
DROP TABLE IF EXISTS `goods_class`;
CREATE TABLE `goods_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '类型',
  `img` varchar(255) DEFAULT NULL COMMENT '图片',
  `sort` int(255) DEFAULT '0' COMMENT '推荐图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_class
-- ----------------------------
INSERT INTO `goods_class` VALUES ('1', '儿童蛋糕', 'https://img12.360buyimg.com/n5/jfs/t1/87411/32/14575/430382/5e6734a3E2465356d/5118063a50e9afb4.jpg', '1');
INSERT INTO `goods_class` VALUES ('2', '夹心面包', 'https://img.alicdn.com/imgextra/i3/2207869214346/O1CN01LVKV511hyVzhvCSyE_!!2207869214346.jpg_60x60q90.jpg', '2');
INSERT INTO `goods_class` VALUES ('3', '芝士蛋糕', 'https://img.alicdn.com/imgextra/i3/2455221099/O1CN01z4pgJq1JzNwcfIUJk_!!2455221099.jpg_60x60q90.jpg', '3');
INSERT INTO `goods_class` VALUES ('4', '千层蛋糕', 'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i2/2201284998721/O1CN01QMURLL2EIGkhCReEz_!!2201284998721.jpg_60x60q90.jpg', '4');
INSERT INTO `goods_class` VALUES ('5', '水果蛋糕', 'https://img.alicdn.com/imgextra/i1/2203660013/O1CN01y8n9Et1BxzjG9fXZD_!!0-item_pic.jpg_60x60q90.jpg', '5');

-- ----------------------------
-- Table structure for home
-- ----------------------------
DROP TABLE IF EXISTS `home`;
CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `cpgg_title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name_title` varchar(255) DEFAULT NULL,
  `sprice` decimal(12,2) DEFAULT NULL,
  `oprice` decimal(12,2) DEFAULT NULL,
  `nbs_title` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `spxq_title` varchar(255) DEFAULT NULL,
  `spxq_descs` varchar(255) DEFAULT NULL,
  `tj_index` int(11) DEFAULT NULL,
  `numb` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of home
-- ----------------------------
INSERT INTO `home` VALUES ('1', 'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i2/2201284998721/O1CN01QMURLL2EIGkhCReEz_!!2201284998721.jpg_60x60q90.jpg', '潮品自营', '四拼蛋糕千层', 'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i2/2201284998721/O1CN01QMURLL2EIGkhCReEz_!!2201284998721.jpg_60x60q90.jpg', '千层蛋糕', '56.00', '333.00', '可甜', '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。', '1', '332', '现在的孩子都是奶孩子，你要当好一个好奶爸！');
INSERT INTO `home` VALUES ('2', 'https://img.alicdn.com/imgextra/i3/2455221099/O1CN01z4pgJq1JzNwcfIUJk_!!2455221099.jpg_60x60q90.jpg', '潮品自营', '奥巧芝士蛋糕', 'https://img.alicdn.com/imgextra/i3/2455221099/O1CN01z4pgJq1JzNwcfIUJk_!!2455221099.jpg_60x60q90.jpg', '早鲜奶', '154.00', '245.00', '可甜', '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。', '2', '556', '现在的孩子都是奶孩子，你要当好一个好奶爸！');
INSERT INTO `home` VALUES ('3', 'https://img.alicdn.com/imgextra/i4/2455221099/O1CN01HmJF9A1JzNzGIUpLZ_!!2455221099.jpg_60x60q90.jpg', '潮品自营', '半熟芝士蛋糕', 'https://img.alicdn.com/imgextra/i4/2455221099/O1CN01HmJF9A1JzNzGIUpLZ_!!2455221099.jpg_60x60q90.jpg', '新儿童鲜奶', '78.00', '754.00', '可甜', '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。', '10', '123', '现在的孩子都是奶孩子，你要当好一个好奶爸！');
INSERT INTO `home` VALUES ('4', 'https://img.alicdn.com/imgextra/i1/2203660013/O1CN01y8n9Et1BxzjG9fXZD_!!0-item_pic.jpg_60x60q90.jpg', '潮品自营', '水果生日蛋糕', 'https://img.alicdn.com/imgextra/i1/2203660013/O1CN01y8n9Et1BxzjG9fXZD_!!0-item_pic.jpg_60x60q90.jpg', '早鲜奶', '65.00', '450.00', '可甜', '现在的孩子都是奶孩子，你要当好一个好奶爸！', '商品详情', '独特的风味，本产品不含任何**成份，请放心使用，建议轻摇后再饮用。主要原材料:牛奶、白糖。本产品仅供冷饮，图片仅供参考，请以实物为准。建议送达后，请在保质期内饮用。', '22', '325', '现在的孩子都是奶孩子，你要当好一个好奶爸！');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_dt` datetime NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '1', '2021-10-21 10:00:00', '您已获得1张3.8折限定蛋糕卷');
INSERT INTO `message` VALUES ('2', '1', '2021-10-21 12:00:00', '您已获得1张15元无门槛满减卷');
INSERT INTO `message` VALUES ('3', '1', '2021-10-21 12:00:00', '您已获得1张5折全场使用卷');
INSERT INTO `message` VALUES ('4', '2', '2021-10-21 12:00:00', '您已获得1张5折全场使用卷');
INSERT INTO `message` VALUES ('5', '3', '2021-10-21 12:00:00', '您已获得1张5折全场使用卷');
INSERT INTO `message` VALUES ('6', '3', '2021-10-21 12:00:00', '您已获得1张5折全场使用卷');
INSERT INTO `message` VALUES ('7', '5', '2021-10-21 12:00:00', '您已获得1张5折全场使用卷');
INSERT INTO `message` VALUES ('8', '6', '2021-10-21 12:00:00', '您已获得1张5折全场使用卷');
INSERT INTO `message` VALUES ('9', '7', '2021-10-21 12:00:00', '您已获得1张5折全场使用卷');
INSERT INTO `message` VALUES ('10', '8', '2021-10-21 12:00:00', '您已获得1张5折全场使用卷');
INSERT INTO `message` VALUES ('11', '8', '2021-10-21 12:00:00', '您已获得1张5折全场使用卷');
INSERT INTO `message` VALUES ('12', '9', '2021-10-21 12:00:00', '您已获得1张5折全场使用卷');
INSERT INTO `message` VALUES ('13', '9', '2021-10-21 12:00:00', '您已获得1张5折全场使用卷');
INSERT INTO `message` VALUES ('14', '9', '2021-10-21 12:00:00', '您已获得1张5折全场使用卷');
INSERT INTO `message` VALUES ('15', '9', '2021-10-21 12:00:00', '您已获得1张5折全场使用卷');
INSERT INTO `message` VALUES ('16', '10', '2021-10-21 12:00:00', '您已获得1张5折全场使用卷');
INSERT INTO `message` VALUES ('17', '11', '2021-10-21 12:00:00', '您已获得1张5折全场使用卷');
INSERT INTO `message` VALUES ('18', '11', '2021-10-21 12:00:00', '您已获得1张5折全场使用卷');
INSERT INTO `message` VALUES ('19', '11', '2021-10-21 12:00:00', '您已获得1张5折全场使用卷');
INSERT INTO `message` VALUES ('20', '11', '2021-10-21 12:00:00', '您已获得1张5折全场使用卷');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `time` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '1', '2021-12-02 13:54:02', '您已获得1张3.5折限定蛋糕卷');
INSERT INTO `news` VALUES ('2', '1', '2021-12-02 13:54:02', '您已获得1张3折限定蛋糕卷');
INSERT INTO `news` VALUES ('3', '1', '2021-12-02 13:54:02', '您已获得1张2折全场使用卷');
INSERT INTO `news` VALUES ('4', '2', '2021-12-02 13:54:02', '您已获得1张3折全场使用卷');
INSERT INTO `news` VALUES ('5', '3', '2021-12-02 13:54:02', '您已获得1张2折全场使用卷');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL COMMENT '地址',
  `status` varchar(12) NOT NULL,
  `get_mode` varchar(12) NOT NULL,
  `location` varchar(255) NOT NULL COMMENT '地址',
  `time` datetime NOT NULL COMMENT '订单时间',
  `type` varchar(129) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', '1', '33678998726301', '仓溢绿苑海曙路128号', '准备中', '配送', '梦想小镇店（NO.0998）', '2021-12-02 13:54:02', '立等可取');
INSERT INTO `order` VALUES ('2', '1', '33678998726201', '仓溢绿苑海曙路128号', '配送中', '自取', '梦想小镇店（NO.0998）', '2021-12-02 13:54:02', '立等可取');
INSERT INTO `order` VALUES ('3', '1', '33678998726201', '仓溢绿苑海曙路128号', '完成', '配送', '梦想小镇店（NO.0998）', '2021-12-02 13:54:02', '立等可取');
INSERT INTO `order` VALUES ('4', '1', '33678998726301', '仓溢绿苑海曙路128号', '完成', '自取', '梦想小镇店（NO.0998）', '2021-12-02 13:54:02', '立等可取');
INSERT INTO `order` VALUES ('5', '1', '33678998726301', '仓溢绿苑海曙路128号', '准备中', '配送', '梦想小镇店（NO.0998）', '2021-12-02 13:54:02', '立等可取');
INSERT INTO `order` VALUES ('6', '1', '33678998726301', '仓溢绿苑海曙路128号', '准备中', '配送', '梦想小镇店（NO.0998）', '2021-12-02 13:54:02', '立等可取');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) NOT NULL COMMENT '订单id',
  `goods_id` varchar(255) NOT NULL COMMENT '商品id',
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('1', '1', '1', '新青年牛奶1', '1', '20.00');
INSERT INTO `order_detail` VALUES ('2', '1', '1', '新青年牛奶2', '1', '20.00');
INSERT INTO `order_detail` VALUES ('3', '2', '1', '儿童早鲜奶', '1', '20.00');
INSERT INTO `order_detail` VALUES ('4', '3', '1', '儿童早鲜奶', '1', '20.00');
INSERT INTO `order_detail` VALUES ('5', '4', '1', '老年牛奶', '1', '20.00');
INSERT INTO `order_detail` VALUES ('6', '5', '1', '老年牛奶', '1', '20.00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `balance` decimal(12,2) DEFAULT '0.00',
  `wallet` decimal(12,2) DEFAULT '0.00',
  `salt` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '越前龙马', '123456', '浙江省宁波市镇海区毓秀路488号', '13326154345', '500.00', '200.00', '');
INSERT INTO `user` VALUES ('7', '路飞', '123456', '浙江省宁波市镇海区毓秀路488号', '13326154345', '100.00', '213.00', null);
INSERT INTO `user` VALUES ('8', '索隆', '123456', '浙江省宁波市镇海区毓秀路488号', '13326154345', '200.00', '654.00', null);
INSERT INTO `user` VALUES ('9', '山治', '123456', '浙江省宁波市镇海区毓秀路488号', '13326154345', '30.00', '523.00', null);
INSERT INTO `user` VALUES ('10', '乔巴', '123456', '浙江省宁波市镇海区毓秀路488号', '13326154345', '50.00', '567.00', null);
INSERT INTO `user` VALUES ('11', '娜美', '123456', '浙江省宁波市镇海区毓秀路488号', '13326154345', '410.00', '231.00', null);
INSERT INTO `user` VALUES ('12', '鸣人', '123456', '浙江省宁波市镇海区毓秀路488号', '13326154345', '230.00', '531.00', null);
INSERT INTO `user` VALUES ('13', '佐助', '123456', '浙江省宁波市镇海区毓秀路488号', '13326154345', '31.00', '212.00', null);
INSERT INTO `user` VALUES ('14', '卡卡西', '123456', '浙江省宁波市镇海区毓秀路488号', '13326154345', '453.00', '371.00', null);
INSERT INTO `user` VALUES ('15', '鼬', '123456', '浙江省宁波市镇海区毓秀路488号', '13326154345', '53.00', '564.00', null);
INSERT INTO `user` VALUES ('16', '自来也', '123456', '浙江省宁波市镇海区毓秀路488号', '13326154345', '354.00', '216.00', null);
INSERT INTO `user` VALUES ('17', 'dingding', 'e10adc3949ba59abbe56e057f20f883e', '地址  啊啊啊啊啊啊啊啊啊', '12334567891', '0.00', '0.00', '0');
INSERT INTO `user` VALUES ('19', 'tingting', '4297f44b13955235245b2497399d7a93', '123123', '123123', '0.00', '0.00', null);

-- ----------------------------
-- View structure for v_order
-- ----------------------------
DROP VIEW IF EXISTS `v_order`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_order` AS SELECT
order.id,
order.order_number,
order.status,
order.get_mode,
order.location,
DATE_FORMAT(order.time,'%Y-%m-%d %H:%i') as time,
order.type

FROM
`order` ; ;

-- ----------------------------
-- View structure for v_order_detail
-- ----------------------------
DROP VIEW IF EXISTS `v_order_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_order_detail` AS SELECT
order.id,
order.order_number,
order.status,
order.get_mode,
order.location,
DATE_FORMAT(order.time,'%Y-%m-%d %H:%i') as time,
order.type,
order_detail.name,
order_detail.number,
order_detail.price
FROM
`order` ,
order_detail
WHERE
order.id = order_detail.order_id ;
