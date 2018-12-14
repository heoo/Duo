/*
 Navicat Premium Data Transfer

 Source Server         : Mac-mysql-root
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : 127.0.0.1:3306
 Source Schema         : duoi

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 07/12/2018 11:21:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for acls
-- ----------------------------
DROP TABLE IF EXISTS `acls`;
CREATE TABLE `acls` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL COMMENT '商户编号',
  `key` varchar(255) DEFAULT NULL,
  `rule` text COMMENT '规则',
  `role_name` varchar(255) DEFAULT NULL COMMENT '角色的中文名',
  `role_code` varchar(255) DEFAULT NULL COMMENT '角色编号',
  `status` varchar(10) DEFAULT '0' COMMENT '状态，0：正常 1：已删除',
  `created` int(10) DEFAULT NULL COMMENT '加入时间',
  `createdby` varchar(255) DEFAULT NULL COMMENT '创建人',
  `updated` int(10) DEFAULT NULL COMMENT '最后一次修改时间',
  `updatedby` varchar(255) DEFAULT NULL COMMENT '最后修改人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='权限资源表';

-- ----------------------------
-- Records of acls
-- ----------------------------
BEGIN;
INSERT INTO `acls` VALUES (1, 'b0fe17a07b', 'acls_b0fe17a07b', '{\"users\":[\"list\"],\"diamond\":[\"list\"],\"order\":[\"list\",\"info\",\"delete\",\"operate\",\"printInvoice\",\"add\",\"edit\"],\"admins\":[\"list\"],\"bail\":[\"list\",\"add\",\"edit\",\"delete\",\"outbail\",\"info\"]}', '管理员', 'bb57a7b22a', '0', 1445247816, 'admin', 1458012128, 'admin');
COMMIT;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `code` varchar(10) DEFAULT NULL COMMENT '管理员编号',
  `key` varchar(255) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL COMMENT '用户账户',
  `password` varchar(255) DEFAULT NULL COMMENT '用户密码',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `role_code` varchar(11) DEFAULT NULL COMMENT '角色code',
  `seller_code` varchar(10) DEFAULT '0' COMMENT '商家code',
  `last_ip` int(11) DEFAULT NULL COMMENT '最后一次登录ip',
  `status` int(11) DEFAULT '0' COMMENT '状态(0:启用;1:停用)',
  `qq` varchar(20) DEFAULT NULL COMMENT 'qq号码',
  `email` varchar(255) DEFAULT NULL COMMENT 'email',
  `last_time` int(11) DEFAULT NULL COMMENT '最后一次登录时间',
  `created` int(9) DEFAULT NULL COMMENT '加入时间',
  `createdby` varchar(10) DEFAULT NULL COMMENT '创建人',
  `updated` int(9) DEFAULT NULL COMMENT '最后一次修改时间',
  `updatedby` varchar(10) DEFAULT NULL COMMENT '最后修改人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`) USING BTREE,
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='平台管理员';

-- ----------------------------
-- Records of admins
-- ----------------------------
BEGIN;
INSERT INTO `admins` VALUES (1, 'fd66395b19', 'admin_fd66395b19', 'Aphalcon', '$2y$08$Y0IwM05ybTlTalU3dStxbeT.PlKvodQuQwfo43J7Yu9u2eOwuOwgO', 'Aphalcon', '7b8312f30b', '0', NULL, 0, '1330581922', 'admin@qq.com', NULL, 1434507849, NULL, 1502692998, 'Aphalcon');
INSERT INTO `admins` VALUES (2, 'eeeeddeff4', 'admins_eeeeddeff4', '123', '$2y$08$Y1dmSy90cGhaL2V4anoxVek8VVL7n7NkHQ0U8yg.7LoszwV5erBZS', '321', '7b8312f30b', '0', NULL, 0, '122221', '111@qq.com', NULL, 1502445415, 'Aphalcon', 1502445415, 'Aphalcon');
INSERT INTO `admins` VALUES (3, '607a68ebba', 'admins_607a68ebba', '111111', '$2y$08$aFhwdFg3OXRRYktyUlY5WeJDmOyfzb1oTqf2ir9S0EGLo0Xde4xRi', '123', '7b8312f30b', '0', NULL, 0, '11111', '111@qq.com', NULL, 1502445593, 'Aphalcon', 1502445758, 'Aphalcon');
COMMIT;

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(200) NOT NULL COMMENT '编号',
  `key` varchar(50) DEFAULT NULL COMMENT '缓存key',
  `name` varchar(100) DEFAULT NULL COMMENT '广告标题',
  `logo` varchar(100) DEFAULT NULL COMMENT '广告图片',
  `client` enum('app','pc') NOT NULL DEFAULT 'app' COMMENT '分类(app,pc)',
  `location` enum('index','list','info') NOT NULL DEFAULT 'index' COMMENT '广告位置(index:首页;list:列表;info:详情)',
  `listorder` tinyint(2) DEFAULT '0' COMMENT '图片排序',
  `siteurl` varchar(100) DEFAULT NULL COMMENT '链接地址',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态:1启用;0:删除',
  `created` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `createdby` varchar(50) NOT NULL COMMENT '创建人',
  `updated` int(10) unsigned DEFAULT '0' COMMENT '修改时间',
  `updatedby` varchar(50) NOT NULL COMMENT '修改人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `code` varchar(30) NOT NULL COMMENT '编号',
  `key` varchar(20) NOT NULL COMMENT '缓存键',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `language` enum('zh','en') DEFAULT 'zh' COMMENT '栏目版本(zh:中文;en:英文)',
  `type` enum('page','url','posts') NOT NULL DEFAULT 'posts' COMMENT '数据模型(page:单页模型;url:外部链接;posts:文章模型)',
  `val` varchar(50) NOT NULL DEFAULT '' COMMENT '扩展参数',
  `isnav` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示导航(0不显示,1显示)',
  `sort` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态(0删除,1可用)',
  `created` int(10) NOT NULL COMMENT '创建时间',
  `createdby` varchar(50) NOT NULL COMMENT '创建人',
  `updated` int(10) NOT NULL COMMENT '更新时间',
  `updatedby` varchar(50) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES (1, '59c054a4b2', 'category_59c054a4b2', '关于我们', 'zh', 'page', '5', 1, 0, 1, 1502958367, 'Aphalcon', 1502958367, 'Aphalcon');
INSERT INTO `category` VALUES (2, '6dbdc3e5a7', 'category_6dbdc3e5a7', 'About', 'en', 'page', '6', 1, 0, 1, 1502958379, 'Aphalcon', 1502959229, 'Aphalcon');
INSERT INTO `category` VALUES (3, '6c30d69558', 'category_6c30d69558', '项目案例', 'zh', 'posts', '', 1, 1, 1, 1503477712, 'Aphalcon', 1503482454, 'Aphalcon');
INSERT INTO `category` VALUES (4, '61d80b98ec', 'category_61d80b98ec', '联系我们', 'zh', 'page', '14', 1, 0, 1, 1503482132, 'Aphalcon', 1503482132, 'Aphalcon');
INSERT INTO `category` VALUES (5, 'a794bcc611', 'category_a794bcc611', 'Contact', 'en', 'page', '15', 1, 0, 1, 1503482394, 'Aphalcon', 1503482394, 'Aphalcon');
INSERT INTO `category` VALUES (6, '67bed7fa66', 'category_67bed7fa66', 'Projects', 'en', 'posts', '', 1, 1, 1, 1505299012, 'Aphalcon', 1505375961, 'Aphalcon');
COMMIT;

-- ----------------------------
-- Table structure for links
-- ----------------------------
DROP TABLE IF EXISTS `links`;
CREATE TABLE `links` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(200) NOT NULL COMMENT '编号',
  `key` varchar(50) DEFAULT NULL COMMENT '缓存key',
  `name` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(80) NOT NULL DEFAULT '',
  `siteurl` varchar(150) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `siteinfo` mediumtext NOT NULL COMMENT '网站描述',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态:1启用;0:删除',
  `created` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `createdby` varchar(50) NOT NULL COMMENT '创建人',
  `updated` int(10) unsigned DEFAULT '0' COMMENT '修改时间',
  `updatedby` varchar(50) NOT NULL COMMENT '修改人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `code` varchar(200) NOT NULL COMMENT '编号',
  `key` varchar(50) DEFAULT NULL COMMENT '缓存key',
  `keyword` varchar(255) DEFAULT NULL COMMENT '关键字',
  `cid` tinyint(2) unsigned DEFAULT '0' COMMENT '栏目编号',
  `type` enum('posts','page','url') DEFAULT 'posts' COMMENT '数据模型(page:单页模型;url:外部链接;posts:文章模型)',
  `name` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `class` enum('default','large','vertical','horizontal') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'default' COMMENT '图片排版(default:默认;large:放大;vertical:垂直;horizontal:水平)',
  `thumb` varchar(200) DEFAULT '' COMMENT '缩略图',
  `digest` varchar(255) DEFAULT '' COMMENT '文章摘要',
  `text` text COMMENT '案例描述',
  `attachment` text COMMENT '案例附件',
  `designer` varchar(255) DEFAULT '' COMMENT '项目设计者(事务所)',
  `hits` int(10) unsigned DEFAULT '0' COMMENT '点击量',
  `language` enum('zh','en') NOT NULL DEFAULT 'zh' COMMENT '文章类型(en:英文;zh:中文)',
  `allowComment` char(1) DEFAULT '1' COMMENT '是否允许评论',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态:1已发表;0:删除',
  `created` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `createdby` varchar(50) NOT NULL COMMENT '创建人',
  `updated` int(10) unsigned DEFAULT '0' COMMENT '修改时间',
  `updatedby` varchar(50) NOT NULL COMMENT '修改人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts
-- ----------------------------
BEGIN;
INSERT INTO `posts` VALUES (7, '583eaa628f', 'posts_583eaa628f', '室内设计,广州', 3, 'posts', '广州印潮商城室内设计', 'default', '/uploads/20170920/20170920111206649thumb.jpg', '', '', '/uploads/20170920/20170920111206649.jpg,/uploads/20170920/20170920111215297.jpg,/uploads/20170920/20170920111220215.jpg,/uploads/20170920/20170920111226267.jpg,/uploads/20170920/20170920111235763.jpg,/uploads/20170920/20170920111243107.jpg,/uploads/20170920/20170920111250999.jpg', '', 0, 'zh', '1', 0, 1505299909, 'Aphalcon', 1544077343, 'Aphalcon');
INSERT INTO `posts` VALUES (8, '813f3eea31', 'posts_813f3eea31', '', 6, 'posts', 'GuangZhou YinChao mall', 'default', '', '', '', '/uploads/20170920/20170920114040216.jpg,/uploads/20170920/20170920114046859.jpg,/uploads/20170920/20170920114051794.jpg,/uploads/20170920/20170920114056866.jpg,/uploads/20170920/20170920114102727.jpg,/uploads/20170920/20170920114106780.jpg,/uploads/20170920/20170920114113514.jpg', '', 0, 'en', '1', 0, 1505356504, 'Aphalcon', 1522920972, 'Aphalcon');
INSERT INTO `posts` VALUES (2, 'fe4b423783', 'posts_fe4b423783', '西安,酒店', 3, 'posts', '西安上善若谷方案设计', 'default', '/uploads/20170919/20170919185617649thumb.jpg', '', '', '/uploads/20170919/20170919185617649.jpg,/uploads/20170919/20170919185738554.jpg,/uploads/20170919/20170919185743168.jpg,/uploads/20170919/20170919185752923.jpg,/uploads/20170919/20170919185758704.jpg,/uploads/20170919/20170919185811850.jpg,/uploads/20170919/20170919185826508.jpg', '', 0, 'zh', '1', 1, 1505291318, 'Aphalcon', 1544077356, 'Aphalcon');
INSERT INTO `posts` VALUES (3, 'cb8b0a9dde', 'posts_cb8b0a9dde', '改造', 3, 'posts', '小榄镇菊花园改造设计', 'default', '/uploads/20170920/20170920104220672thumb.jpg', '', '', '/uploads/20170920/20170920104220672.jpg,/uploads/20170920/20170920104243144.jpg,/uploads/20170920/20170920104247426.jpg,/uploads/20170920/20170920104253693.jpg,/uploads/20170920/20170920104302788.jpg,/uploads/20170920/20170920104306850.jpg', '', 0, 'zh', '1', 1, 1505292971, 'Aphalcon', 1544077353, 'Aphalcon');
INSERT INTO `posts` VALUES (4, '6dc925b950', 'posts_6dc925b950', '竞赛,歌剧院', 3, 'posts', '韩国釜山歌剧院', 'default', '/uploads/20170928/20170928111722460thumb.jpg', '', '', '/uploads/20170928/20170928111722460.jpg,/uploads/20170928/20170928111729724.jpg,/uploads/20170928/20170928111733766.jpg,/uploads/20170928/20170928111737638.jpg', '', 0, 'zh', '1', 1, 1505294193, 'Aphalcon', 1544077349, 'Aphalcon');
INSERT INTO `posts` VALUES (9, '63eb2ff795', 'posts_63eb2ff795', '', 6, 'posts', 'Busan Opera House ', 'default', '', '', '', '/uploads/20170919/20170919175517534.jpg,/uploads/20170919/20170919175522543.jpg,/uploads/20170919/20170919175525214.jpg,/uploads/20170919/20170919175529114.jpg', '', 0, 'en', '1', 1, 1505359625, 'Aphalcon', 1505814931, 'Aphalcon');
INSERT INTO `posts` VALUES (10, '365df06c97', 'posts_365df06c97', '', 6, 'posts', 'XiAn ShangShanRuoGu Holiday Valley', 'default', '', '', '', '/uploads/20170919/20170919190042664.jpg,/uploads/20170919/20170919190200990.jpg,/uploads/20170919/20170919190205308.jpg,/uploads/20170919/20170919190210533.jpg,/uploads/20170919/20170919190216453.jpg,/uploads/20170919/20170919190226297.jpg,/uploads/20170919/20170919190238929.jpg', '', 0, 'en', '1', 1, 1505360639, 'Aphalcon', 1506568324, 'Aphalcon');
INSERT INTO `posts` VALUES (11, '473fe514a9', 'posts_473fe514a9', '', 6, 'posts', 'XiaoLan Transformation Design', 'default', '', '', '', '/uploads/20170920/20170920104437431.jpg,/uploads/20170920/20170920104456346.jpg,/uploads/20170920/20170920104517931.jpg,/uploads/20170920/20170920104524141.jpg,/uploads/20170920/20170920104529259.jpg,/uploads/20170920/20170920104534337.jpg', '', 0, 'en', '1', 1, 1505361792, 'Aphalcon', 1505875536, 'Aphalcon');
INSERT INTO `posts` VALUES (5, '342bed8377', 'posts_342bed8377', '', 1, 'page', '关于我们', 'default', '', '', '', '/uploads/20170913/20170913180230190.jpg', '', 0, 'zh', '1', 1, 1505296966, 'Aphalcon', 1505297910, 'Aphalcon');
INSERT INTO `posts` VALUES (6, 'b068565e99', 'posts_b068565e99', '', 2, 'page', 'About us', 'default', '', '', '', '/uploads/20170913/20170913180337239.jpg', '', 0, 'en', '1', 1, 1505297019, 'Aphalcon', 1505298031, 'Aphalcon');
INSERT INTO `posts` VALUES (12, '37944731ad', 'posts_37944731ad', '学校', 3, 'posts', '北滘小学建筑设计', 'default', '/uploads/20170928/20170928111959798thumb.jpg', '', '', '/uploads/20170928/20170928111959798.jpg,/uploads/20170928/20170928112003645.jpg,/uploads/20170928/20170928112007337.jpg,/uploads/20170928/20170928112011344.jpg,/uploads/20170928/20170928112015713.jpg', '', 0, 'zh', '1', 1, 1505363705, 'Aphalcon', 1544077339, 'Aphalcon');
INSERT INTO `posts` VALUES (13, '9b10d1c457', 'posts_9b10d1c457', '', 6, 'posts', 'BeiJiao Primary School ', 'default', '', 'School', '', '/uploads/20170920/20170920120007471.jpg,/uploads/20170920/20170920120012865.jpg,/uploads/20170920/20170920120019993.jpg,/uploads/20170920/20170920120026766.jpg,/uploads/20170920/20170920120031609.jpg', '', 0, 'en', '1', 1, 1505365088, 'Aphalcon', 1505880037, 'Aphalcon');
INSERT INTO `posts` VALUES (14, '4a2a360e77', 'posts_4a2a360e77', '', 4, 'page', '联系我们', 'default', '', '', '', '/uploads/20170914/20170914144341186.jpg', '', 0, 'zh', '1', 1, 1505371422, 'Aphalcon', 1505371422, 'Aphalcon');
INSERT INTO `posts` VALUES (15, '1fd9211d34', 'posts_1fd9211d34', '', 5, 'page', 'Contact', 'default', '', '', '', '/uploads/20170914/20170914144549709.jpg', '', 0, 'en', '1', 1, 1505371553, 'Aphalcon', 1505371553, 'Aphalcon');
INSERT INTO `posts` VALUES (17, '2dafc100e5', 'posts_2dafc100e5', '', 6, 'posts', 'TaiWan Tower', 'default', '', '', '', '/uploads/20170920/20170920124117966.jpg,/uploads/20170920/20170920124127816.jpg,/uploads/20170920/20170920124137477.jpg,/uploads/20170920/20170920124143801.jpg,/uploads/20170920/20170920124148760.jpg,/uploads/20170920/20170920124152290.jpg,/uploads/20170920/20170920124158454.jpg,/uploads/20170920/20170920124203828.jpg', '', 0, 'en', '1', 0, 1505373162, 'Aphalcon', 1522920969, 'Aphalcon');
INSERT INTO `posts` VALUES (16, '7afa9d4e1a', 'posts_7afa9d4e1a', '高层,竞赛', 3, 'posts', '台湾塔建筑设计', 'default', '/uploads/20170928/20170928113156375thumb.jpg', '', '', '/uploads/20170928/20170928113156375.jpg,/uploads/20170928/20170928113200538.jpg,/uploads/20170928/20170928113205324.jpg,/uploads/20170928/20170928113210146.jpg,/uploads/20170928/20170928113218842.jpg,/uploads/20170928/20170928113222404.jpg,/uploads/20170928/20170928113226298.jpg,/uploads/20170928/20170928113233230.jpg', '', 0, 'zh', '1', 0, 1505372193, 'Aphalcon', 1544077335, 'Aphalcon');
INSERT INTO `posts` VALUES (18, '8f4bb4f9fc', 'posts_8f4bb4f9fc', '体育中心', 3, 'posts', '荆州体育中心', 'default', '/uploads/20170928/20170928114447121thumb.jpg', '', '', '/uploads/20170928/20170928114447121.jpg,/uploads/20170928/20170928114452101.jpg,/uploads/20170928/20170928114456209.jpg,/uploads/20170928/20170928114500785.jpg,/uploads/20170928/20170928114505530.jpg,/uploads/20170928/20170928114508875.jpg', '', 0, 'zh', '1', 1, 1505373979, 'Aphalcon', 1544077331, 'Aphalcon');
INSERT INTO `posts` VALUES (19, 'fb6eb989df', 'posts_fb6eb989df', '', 6, 'posts', 'JingZhou Sport Center', 'default', '', '', '', '/uploads/20170920/20170920124923524.jpg,/uploads/20170920/20170920124930632.jpg,/uploads/20170920/20170920124938553.jpg,/uploads/20170920/20170920124944584.jpg,/uploads/20170920/20170920124957529.jpg,/uploads/20170920/20170920125001925.jpg', '', 0, 'en', '1', 1, 1505375372, 'Aphalcon', 1506570384, 'Aphalcon');
INSERT INTO `posts` VALUES (20, 'b9a7093a2e', 'posts_b9a7093a2e', '商业,北京', 3, 'posts', '北京崇文门商业中心', 'default', '/uploads/20170928/20170928115818110thumb.jpg', '', '', '/uploads/20170928/20170928115818110.jpg,/uploads/20170928/20170928115905583.jpg,/uploads/20170928/20170928115910197.jpg,/uploads/20170928/20170928115915829.jpg,/uploads/20170928/20170928115920855.jpg,/uploads/20170928/20170928115928850.jpg,/uploads/20170928/20170928115932509.jpg', '', 0, 'zh', '1', 1, 1505375961, 'Aphalcon', 1544077327, 'Aphalcon');
INSERT INTO `posts` VALUES (21, 'b91330fe89', 'posts_b91330fe89', '', 6, 'posts', 'BeiJing ChongWenMen Conceptual Center', 'default', '', '', '', '/uploads/20170920/20170920125439496.jpg,/uploads/20170920/20170920125445191.jpg,/uploads/20170920/20170920125448580.jpg,/uploads/20170920/20170920125509518.jpg,/uploads/20170920/20170920125514783.jpg,/uploads/20170920/20170920125518634.jpg,/uploads/20170920/20170920125527996.jpg', '', 0, 'en', '1', 1, 1505377580, 'Aphalcon', 1506570544, 'Aphalcon');
INSERT INTO `posts` VALUES (22, 'b4a6278408', 'posts_b4a6278408', '桥梁', 3, 'posts', '海花岛跨海大桥', 'default', '/uploads/20170919/20170919171002983thumb.jpg', '', '', '/uploads/20170919/20170919171002983.jpg,/uploads/20170919/20170919171011288.jpg,/uploads/20170919/20170919171019344.jpg,/uploads/20170919/20170919171027637.jpg,/uploads/20170919/20170919171033170.jpg,/uploads/20170919/20170919171039687.jpg,/uploads/20170919/20170919171046729.jpg,/uploads/20170919/20170919171052602.jpg,/uploads/20170919/20170919171100545.jpg,/uploads/20170919/20170919171107371.jpg', '', 0, 'zh', '1', 1, 1505378675, 'Aphalcon', 1544077324, 'Aphalcon');
INSERT INTO `posts` VALUES (23, '1aaa11947f', 'posts_1aaa11947f', '', 6, 'posts', '1# Bridge Of Haihua Island', 'default', '', '', '', '/uploads/20170919/20170919171339508.jpg,/uploads/20170919/20170919171346123.jpg,/uploads/20170919/20170919171353345.jpg,/uploads/20170919/20170919171359971.jpg,/uploads/20170919/20170919171405966.jpg,/uploads/20170919/20170919171411484.jpg,/uploads/20170919/20170919171417648.jpg,/uploads/20170919/20170919171427419.jpg,/uploads/20170919/20170919171435968.jpg,/uploads/20170919/20170919171442655.jpg', '', 0, 'en', '1', 1, 1505382144, 'Aphalcon', 1505812484, 'Aphalcon');
INSERT INTO `posts` VALUES (24, '3e0e8b26d0', 'posts_3e0e8b26d0', '博物馆,竞赛', 3, 'posts', '赫尔辛基古根海姆博物馆', 'default', '/uploads/20170928/20170928120429503thumb.jpg', '', '', '/uploads/20170928/20170928120429503.jpg,/uploads/20170928/20170928120433416.jpg,/uploads/20170928/20170928120438196.jpg,/uploads/20170928/20170928120442296.jpg,/uploads/20170928/20170928120500508.jpg,/uploads/20170928/20170928120504291.jpg', '', 0, 'zh', '1', 0, 1505383014, 'Aphalcon', 1544077320, 'Aphalcon');
INSERT INTO `posts` VALUES (56, '496417bb4f', 'posts_496417bb4f', '', 6, 'posts', 'PuTian ski facility', 'default', '', '', '', '/uploads/20171206/20171206111935365.jpg,/uploads/20171206/20171206111939602.jpg,/uploads/20171206/20171206111948735.jpg,/uploads/20171206/20171206111956357.jpg,/uploads/20171206/20171206112003198.jpg,/uploads/20171206/20171206112011354.jpg,/uploads/20171206/20171206112016675.jpg,/uploads/20171206/20171206112020624.jpg', '', 0, 'en', '1', 0, 1512530771, 'Aphalcon', 1524800481, 'Aphalcon');
INSERT INTO `posts` VALUES (25, '015c954e82', 'posts_015c954e82', '', 6, 'posts', 'Helsinki Guggenheim Museum', 'default', '', '', '', '/uploads/20170920/20170920152915430.jpg,/uploads/20170920/20170920152922545.jpg,/uploads/20170920/20170920152930688.jpg,/uploads/20170920/20170920152935613.jpg,/uploads/20170920/20170920152953308.jpg,/uploads/20170920/20170920152957136.jpg', '', 0, 'en', '1', 0, 1505384748, 'Aphalcon', 1522920930, 'Aphalcon');
INSERT INTO `posts` VALUES (26, '8dea71642e', 'posts_8dea71642e', '博物馆', 3, 'posts', '超跑博物馆', 'default', '/uploads/20170919/20170919170150439thumb.jpg', '', '', '/uploads/20170919/20170919170150439.jpg,/uploads/20170919/20170919170323893.jpg,/uploads/20170919/20170919170330992.jpg,/uploads/20170919/20170919170338826.jpg,/uploads/20170919/20170919170343919.jpg', '', 0, 'zh', '1', 0, 1505385341, 'Aphalcon', 1544077315, 'Aphalcon');
INSERT INTO `posts` VALUES (27, 'f8e7d9e5f8', 'posts_f8e7d9e5f8', 'Conceptual Design', 6, 'posts', 'Super Car Museum Conceptual Design', 'default', '', '', '', '/uploads/20170919/20170919170615119.jpg,/uploads/20170919/20170919170622637.jpg,/uploads/20170919/20170919170628728.jpg,/uploads/20170919/20170919170633662.jpg,/uploads/20170919/20170919170637266.jpg', '', 0, 'en', '1', 0, 1505386079, 'Aphalcon', 1505815577, 'Aphalcon');
INSERT INTO `posts` VALUES (28, '952e16e9fc', 'posts_952e16e9fc', '运动中心', 3, 'posts', '海花岛运动中心', 'default', '/uploads/20170919/20170919160426168thumb.jpg', '', '', '/uploads/20170919/20170919160426168.jpg,/uploads/20170919/20170919160616284.jpg,/uploads/20170919/20170919162706911.jpg,/uploads/20170919/20170919162710418.jpg', '', 0, 'zh', '1', 0, 1505386831, 'Aphalcon', 1544077311, 'Aphalcon');
INSERT INTO `posts` VALUES (29, '403e80cdc0', 'posts_403e80cdc0', '', 6, 'posts', 'Haihua Sports Center', 'default', '', '', '', '/uploads/20170919/20170919163039490.jpg,/uploads/20170919/20170919163044253.jpg,/uploads/20170919/20170919163053773.jpg,/uploads/20170919/20170919163057219.jpg', '', 0, 'en', '1', 1, 1505388112, 'Aphalcon', 1506571647, 'Aphalcon');
INSERT INTO `posts` VALUES (30, 'c395eeb38b', 'posts_c395eeb38b', '创意中心,广州', 3, 'posts', '广州琶洲科技创意中心', 'default', '/uploads/20170928/20170928123210656thumb.jpg', '', '', '/uploads/20170928/20170928123210656.jpg,/uploads/20170928/20170928123221921.jpg,/uploads/20170928/20170928123225780.jpg,/uploads/20170928/20170928123230731.jpg,/uploads/20170928/20170928123237878.jpg,/uploads/20170928/20170928123247990.jpg', '', 0, 'zh', '1', 1, 1505444637, 'Aphalcon', 1544077307, 'Aphalcon');
INSERT INTO `posts` VALUES (31, 'fc80e21c4d', 'posts_fc80e21c4d', '', 6, 'posts', 'GuangZhou PaZhou Scientific Innovation Center', 'default', '', '', '', '/uploads/20170915/20170915192601488.jpg,/uploads/20170915/20170915192614315.jpg,/uploads/20170915/20170915192623156.jpg,/uploads/20170915/20170915192631453.jpg,/uploads/20170915/20170915192644319.jpg,/uploads/20170915/20170915192651640.jpg', '', 0, 'en', '1', 1, 1505474817, 'Aphalcon', 1506573225, 'Aphalcon');
INSERT INTO `posts` VALUES (32, '8c3a5f3264', 'posts_8c3a5f3264', '概念设计', 3, 'posts', '唐山月坨岛概念设计', 'default', '/uploads/20170928/20170928105832558thumb.jpg', '', '', '/uploads/20170928/20170928105832558.jpg,/uploads/20170928/20170928123628128.jpg', '', 0, 'zh', '1', 1, 1505703725, 'Aphalcon', 1544077301, 'Aphalcon');
INSERT INTO `posts` VALUES (33, 'c4d29fe9b5', 'posts_c4d29fe9b5', 'lsland', 6, 'posts', 'Yuetuo lsland', 'default', '', '', '', '/uploads/20170919/20170919144628666.jpg,/uploads/20170919/20170919144653265.jpg', '', 0, 'en', '1', 0, 1505704978, 'Aphalcon', 1522920949, 'Aphalcon');
INSERT INTO `posts` VALUES (34, '3a0c4c1ce0', 'posts_3a0c4c1ce0', '高层', 3, 'posts', '济宁超高层', 'default', '/uploads/20170918/20170918121143889thumb.jpg', '', '', '/uploads/20170918/20170918121143889.jpg', '', 0, 'zh', '1', 0, 1505707906, 'Aphalcon', 1544077297, 'Aphalcon');
INSERT INTO `posts` VALUES (35, 'ab9f7aee49', 'posts_ab9f7aee49', '高层', 3, 'posts', '济宁超高层', 'default', '/uploads/20170928/20170928124403136thumb.jpg', '', '', '/uploads/20170928/20170928124403136.jpg,/uploads/20170928/20170928124408682.jpg,/uploads/20170928/20170928124412499.jpg', '', 0, 'zh', '1', 1, 1505707907, 'Aphalcon', 1544077293, 'Aphalcon');
INSERT INTO `posts` VALUES (36, '4fc8f404df', 'posts_4fc8f404df', 'Tower', 6, 'posts', 'JiNing ShangCheng Project', 'default', '/uploads/20170918/20170918123256127.flv', '', '', '/uploads/20170928/20170928124517945.jpg,/uploads/20170928/20170928124521980.jpg,/uploads/20170928/20170928124525584.jpg', '', 0, 'en', '1', 1, 1505709178, 'Aphalcon', 1506573927, 'Aphalcon');
INSERT INTO `posts` VALUES (57, 'e52f9786c8', 'posts_e52f9786c8', '会展中心', 3, 'posts', '咸阳国际会展中心', 'default', '/uploads/20180124/20180124173419600thumb.jpg', '', '', '/uploads/20180124/20180124173419600.jpg,/uploads/20180124/20180124173954349.jpg,/uploads/20180124/20180124174000808.jpg,/uploads/20180124/20180124174006260.jpg', '', 0, 'zh', '1', 0, 1516786244, 'Aphalcon', 1544077240, 'Aphalcon');
INSERT INTO `posts` VALUES (53, '21f79a7f05', 'posts_21f79a7f05', '香港', 3, 'posts', '香港全息俱乐部', 'default', '/uploads/20171012/20171012114346246thumb.jpg', '', '', '/uploads/20171012/20171012114346246.jpg,/uploads/20171012/20171012114350348.jpg,/uploads/20171012/20171012114354489.jpg,/uploads/20171012/20171012114358439.jpg', '', 0, 'zh', '1', 1, 1507779448, 'Aphalcon', 1544077231, 'Aphalcon');
INSERT INTO `posts` VALUES (54, '91c6f3e26b', 'posts_91c6f3e26b', '', 6, 'posts', 'HongKong Holo Club', 'default', '/uploads/20171012/20171012144319984.mp4', '', '', '/uploads/20171012/20171012144245527.jpg,/uploads/20171012/20171012144251987.jpg,/uploads/20171012/20171012144255869.jpg,/uploads/20171012/20171012144300562.jpg', '', 0, 'en', '1', 1, 1507790608, 'Aphalcon', 1507961689, 'Aphalcon');
INSERT INTO `posts` VALUES (55, 'db6659c450', 'posts_db6659c450', '滑雪场，概念设计', 3, 'posts', '莆田冰雪小镇体育休闲旅游项目概念设计', 'default', '/uploads/20171206/20171206111516770thumb.jpg', '', '', '/uploads/20171206/20171206111516770.jpg,/uploads/20171206/20171206111552992.jpg,/uploads/20171206/20171206111601499.jpg,/uploads/20171206/20171206111610974.jpg,/uploads/20171206/20171206111615631.jpg,/uploads/20171206/20171206111625193.jpg,/uploads/20171206/20171206111630883.jpg,/uploads/20171206/20171206111636580.jpg', '', 0, 'zh', '1', 0, 1512530119, 'Aphalcon', 1544077235, 'Aphalcon');
INSERT INTO `posts` VALUES (38, 'f43f1d7564', 'posts_f43f1d7564', '', 6, 'posts', 'Gymnasium of Beijing Vocational College of Finance and Commerce', 'default', '', '', '', '/uploads/20170920/20170920174526283.jpg,/uploads/20170920/20170920174546282.jpg,/uploads/20170920/20170920174550222.jpg', '', 0, 'en', '1', 1, 1505900729, 'Aphalcon', 1506575046, 'Aphalcon');
INSERT INTO `posts` VALUES (37, '0b76dcaef8', 'posts_0b76dcaef8', '体育馆,北京', 3, 'posts', '北京财贸职业学院体育馆', 'default', '/uploads/20170928/20170928130328123thumb.jpg', '', '', '/uploads/20170928/20170928130328123.jpg,/uploads/20170928/20170928130336917.jpg,/uploads/20170928/20170928130340776.jpg', '', 0, 'zh', '1', 1, 1505898717, 'Aphalcon', 1544077289, 'Aphalcon');
INSERT INTO `posts` VALUES (39, '5786faeb85', 'posts_5786faeb85', '规划,西安', 3, 'posts', '榆林市空港生态区生态广场', 'default', '/uploads/20170928/20170928143425140thumb.jpg', '', '', '/uploads/20170928/20170928143425140.jpg,/uploads/20170928/20170928143431527.png,/uploads/20170928/20170928143443719.png,/uploads/20170928/20170928144242703.jpg,/uploads/20170928/20170928144324881.png,/uploads/20170928/20170928144329646.jpg', '', 0, 'zh', '1', 0, 1505902240, 'Aphalcon', 1544077284, 'Aphalcon');
INSERT INTO `posts` VALUES (40, '50145aec09', 'posts_50145aec09', '', 6, 'posts', 'Yulin Konggang Ecological Areas Headquarters  Ecological  Square', 'default', '', '', '', '/uploads/20170920/20170920190051874.jpg,/uploads/20170920/20170920190128320.png,/uploads/20170920/20170920190139866.png,/uploads/20170920/20170920190149136.jpg,/uploads/20170920/20170920190510162.png,/uploads/20170920/20170920190514171.jpg', '', 0, 'en', '1', 0, 1505905254, 'Aphalcon', 1522920858, 'Aphalcon');
INSERT INTO `posts` VALUES (52, 'dd0e08f2ae', 'posts_dd0e08f2ae', '', 6, 'posts', 'Beijiao Sports Center', 'default', '/uploads/20170929/20170929115041924.flv', '', '', '/uploads/20170929/20170929114257463.jpg,/uploads/20170929/20170929115101829.jpg,/uploads/20170929/20170929115131322.jpg,/uploads/20170929/20170929115137720.jpg,/uploads/20170929/20170929115143162.jpg,/uploads/20170929/20170929115155987.jpg,/uploads/20170929/20170929115201922.jpg,/uploads/20170929/20170929115209179.jpg,/uploads/20170929/20170929115220821.jpg', '', 0, 'en', '1', 1, 1506656579, 'Aphalcon', 1506657142, 'Aphalcon');
INSERT INTO `posts` VALUES (41, 'c35b3a14ad', 'posts_c35b3a14ad', '西安,概念设计', 3, 'posts', '朱雀谷概念设计', 'default', '/uploads/20170928/20170928150210281thumb.jpg', '', '', '/uploads/20170928/20170928150210281.jpg,/uploads/20170928/20170928150402408.jpg,/uploads/20170928/20170928150415445.jpg,/uploads/20170928/20170928150422344.jpg,/uploads/20170928/20170928150428329.jpg,/uploads/20170928/20170928150431481.jpg', '', 0, 'zh', '1', 0, 1505907063, 'Aphalcon', 1544077276, 'Aphalcon');
INSERT INTO `posts` VALUES (42, 'fef79a8ec0', 'posts_fef79a8ec0', '', 6, 'posts', 'ZhuQue Gu', 'default', '', '', '', '/uploads/20170921/20170921110358268.jpg,/uploads/20170921/20170921110605600.jpg,/uploads/20170921/20170921110619848.jpg,/uploads/20170921/20170921110631691.jpg,/uploads/20170921/20170921110642824.jpg,/uploads/20170921/20170921110646607.jpg,/uploads/20170921/20170921110656935.jpg', '', 0, 'en', '1', 0, 1505963040, 'Aphalcon', 1522920901, 'Aphalcon');
INSERT INTO `posts` VALUES (43, '59211f85d8', 'posts_59211f85d8', '海花岛,概念设计', 3, 'posts', '海花岛概念设计', 'default', '/uploads/20170928/20170928151658460thumb.jpg', '', '', '/uploads/20170928/20170928151658460.jpg,/uploads/20170928/20170928151705840.jpg,/uploads/20170928/20170928151709316.jpg,/uploads/20170928/20170928151713126.jpg,/uploads/20170928/20170928151717760.jpg', '', 0, 'zh', '1', 0, 1505965886, 'Aphalcon', 1544077272, 'Aphalcon');
INSERT INTO `posts` VALUES (44, '105977861d', 'posts_105977861d', '', 6, 'posts', 'Haihua Island', 'default', '', '', '', '/uploads/20170921/20170921120335734.jpg,/uploads/20170921/20170921120340648.jpg,/uploads/20170921/20170921120344552.jpg,/uploads/20170921/20170921120347824.jpg,/uploads/20170921/20170921120351180.jpg', '', 0, 'en', '1', 0, 1505966634, 'Aphalcon', 1522920907, 'Aphalcon');
INSERT INTO `posts` VALUES (45, '0da90ac32e', 'posts_0da90ac32e', '学校,体育馆', 3, 'posts', '黄冈体育中心', 'default', '/uploads/20170928/20170928160357506thumb.jpg', '', '', '/uploads/20170928/20170928160357506.jpg,/uploads/20170928/20170928160402304.jpg,/uploads/20170928/20170928160411198.jpg,/uploads/20170928/20170928160421681.jpg,/uploads/20170928/20170928160425774.jpg,/uploads/20170928/20170928160429608.jpg,/uploads/20170928/20170928160433208.jpg', '', 0, 'zh', '1', 1, 1505967519, 'Aphalcon', 1544077268, 'Aphalcon');
INSERT INTO `posts` VALUES (51, '6e1d80a0e4', 'posts_6e1d80a0e4', '市民中心', 3, 'posts', '北滘市民康体中心', 'default', '/uploads/20170928/20170928190129127thumb.jpg', '', '', '/uploads/20170928/20170928190129127.jpg,/uploads/20170928/20170928190241657.jpg,/uploads/20170928/20170928192758613.jpg,/uploads/20170928/20170928192831740.jpg,/uploads/20170928/20170928193029241.jpg,/uploads/20170928/20170928193033264.jpg,/uploads/20170928/20170928193054470.jpg,/uploads/20170928/20170928193102435.jpg,/uploads/20170928/20170928193109423.jpg', '', 0, 'zh', '1', 1, 1506593545, 'Aphalcon', 1544077227, 'Aphalcon');
INSERT INTO `posts` VALUES (46, '2dd7742815', 'posts_2dd7742815', 'school', 6, 'posts', 'Huanggang Sports Center', 'default', '', '', '', '/uploads/20170921/20170921124000523.jpg,/uploads/20170921/20170921124052909.jpg,/uploads/20170921/20170921124109171.jpg,/uploads/20170921/20170921124118767.jpg,/uploads/20170921/20170921124123913.jpg,/uploads/20170921/20170921124129732.jpg,/uploads/20170921/20170921124133823.jpg', '', 0, 'en', '1', 1, 1505968900, 'Aphalcon', 1506586263, 'Aphalcon');
INSERT INTO `posts` VALUES (47, 'a5bd76a594', 'posts_a5bd76a594', '购物', 3, 'posts', '乌兰察布蓝摩尔时尚购物广场', 'default', '/uploads/20170928/20170928162013753thumb.jpg', '', '', '/uploads/20170928/20170928162013753.jpg,/uploads/20170928/20170928162020587.jpg,/uploads/20170928/20170928162026262.jpg,/uploads/20170928/20170928162033567.jpg,/uploads/20170928/20170928162038742.jpg,/uploads/20170928/20170928162102794.jpg', '', 0, 'zh', '1', 1, 1506327373, 'Aphalcon', 1544077263, 'Aphalcon');
INSERT INTO `posts` VALUES (50, '2dcc141ebf', 'posts_2dcc141ebf', 'GuangZhou', 6, 'posts', 'GuangZhou Real Estate School', 'default', '', '', '', '/uploads/20170928/20170928173109214.jpg,/uploads/20170928/20170928173113183.jpg,/uploads/20170928/20170928173119577.jpg,/uploads/20170928/20170928173123165.jpg,/uploads/20170928/20170928173126877.jpg,/uploads/20170928/20170928173130541.jpg', '', 0, 'en', '1', 1, 1506591093, 'Aphalcon', 1506591093, 'Aphalcon');
INSERT INTO `posts` VALUES (48, 'dbbb300cb3', 'posts_dbbb300cb3', '', 6, 'posts', 'Wulanchabu City Springtime Plaza', 'default', '', '', '', '/uploads/20170925/20170925165033675.jpg,/uploads/20170925/20170925165037543.jpg,/uploads/20170925/20170925165058905.jpg,/uploads/20170925/20170925165110848.jpg,/uploads/20170925/20170925165122974.jpg,/uploads/20170925/20170925165128789.jpg', '', 0, 'en', '1', 1, 1506329506, 'Aphalcon', 1506586940, 'Aphalcon');
INSERT INTO `posts` VALUES (49, '41fad67891', 'posts_41fad67891', '学校,广州', 3, 'posts', '广州市土地房产管理职业学院', 'default', '/uploads/20170928/20170928172511745thumb.jpg', '', '', '/uploads/20170928/20170928172511745.jpg,/uploads/20170928/20170928172516186.jpg,/uploads/20170928/20170928172527476.jpg,/uploads/20170928/20170928172534778.jpg,/uploads/20170928/20170928172631196.jpg,/uploads/20170928/20170928172651133.jpg', '', 0, 'zh', '1', 1, 1506590249, 'Aphalcon', 1544077260, 'Aphalcon');
INSERT INTO `posts` VALUES (58, 'a7f1a6c3bf', 'posts_a7f1a6c3bf', '', 6, 'posts', 'XianYang International Conference Center', 'default', '', '', '', '/uploads/20180124/20180124174442905.jpg,/uploads/20180124/20180124174459495.jpg,/uploads/20180124/20180124174508675.jpg,/uploads/20180124/20180124174512698.jpg', '', 0, 'en', '1', 0, 1516787115, 'Aphalcon', 1522920879, 'Aphalcon');
INSERT INTO `posts` VALUES (59, '7c349d86f1', 'posts_7c349d86f1', '', 3, 'posts', '永利国际金融中心室内及景观设计', 'default', '/uploads/20180405/20180405175210910thumb.jpg', '', '由DUO建筑设计事务所设计的永利国际金融中心室内及景观工程竣工。室内设计运用多种类型的非线性元素营造动静呼应的空间体验感；外部景观延续室内设计元素，营造“无内无外”的整体空间效果。', '/uploads/20180405/20180405175210910.jpg,/uploads/20180405/20180405175210367.jpg,/uploads/20180405/20180405175211593.jpg,/uploads/20180405/20180405175211780.jpg,/uploads/20180405/20180405175211558.jpg,/uploads/20180405/20180405175212821.jpg,/uploads/20180405/20180405175212378.jpg,/uploads/20180405/20180405175212422.jpg,/uploads/20180405/20180405175212323.jpg,/uploads/20180405/20180405175212577.jpg,/uploads/20180405/20180405175213691.jpg,/uploads/20180405/20180405175213253.jpg,/uploads/20180405/20180405175213798.jpg,/uploads/20180405/20180405175213717.jpg,/uploads/20180405/20180405175214363.jpg,/uploads/20180405/20180405175216441.jpg', '', 0, 'zh', '1', 0, 1522922206, 'Aphalcon', 1544077245, 'Aphalcon');
INSERT INTO `posts` VALUES (60, '2cd791af34', 'posts_2cd791af34', '', 6, 'posts', 'SHANXI YONGLI OFFICE BUILDING INTERIOR AND LANDSCAPE DESIGN', 'default', '', '', '', '/uploads/20180405/20180405180528687.jpg,/uploads/20180405/20180405180528982.jpg,/uploads/20180405/20180405180528729.jpg,/uploads/20180405/20180405180528975.jpg,/uploads/20180405/20180405180528260.jpg,/uploads/20180405/20180405180528336.jpg,/uploads/20180405/20180405180529801.jpg,/uploads/20180405/20180405180529608.jpg,/uploads/20180405/20180405180529606.jpg,/uploads/20180405/20180405180529950.jpg,/uploads/20180405/20180405180529510.jpg,/uploads/20180405/20180405180529225.jpg,/uploads/20180405/20180405180529490.jpg,/uploads/20180405/20180405180530985.jpg,/uploads/20180405/20180405180530753.jpg,/uploads/20180405/20180405180530755.jpg', '', 0, 'en', '1', 0, 1522922732, 'Aphalcon', 1522929594, 'Aphalcon');
INSERT INTO `posts` VALUES (61, '633eb717a7', 'posts_633eb717a7', '', 3, 'posts', '未央国际', 'default', '/uploads/20180405/20180405195005179thumb.jpg', '', '', '/uploads/20180405/20180405195005179.jpg,/uploads/20180405/20180405195005325.jpg,/uploads/20180405/20180405195005769.jpg,/uploads/20180405/20180405195005791.jpg,/uploads/20180405/20180405195005325.jpg,/uploads/20180405/20180405195005295.jpg,/uploads/20180405/20180405195005653.jpg,/uploads/20180405/20180405195006498.jpg,/uploads/20180405/20180405195006183.jpg,/uploads/20180405/20180405195006509.jpg,/uploads/20180405/20180405195006200.jpg,/uploads/20180405/20180405195006460.jpg,/uploads/20180405/20180405195006194.jpg', '', 0, 'zh', '1', 1, 1522924182, 'Aphalcon', 1544077252, 'Aphalcon');
INSERT INTO `posts` VALUES (62, 'b1822ea5f8', 'posts_b1822ea5f8', '', 6, 'posts', 'WEI YANG INTERNATIONAL', 'default', '', '', '', '/uploads/20180405/20180405191604598.jpg,/uploads/20180405/20180405191604304.jpg,/uploads/20180405/20180405191604551.jpg,/uploads/20180405/20180405191604878.jpg,/uploads/20180405/20180405191604713.jpg,/uploads/20180405/20180405191604803.jpg,/uploads/20180405/20180405191604794.jpg,/uploads/20180405/20180405191604926.jpg,/uploads/20180405/20180405191604794.jpg,/uploads/20180405/20180405191604275.jpg,/uploads/20180405/20180405191604708.jpg,/uploads/20180405/20180405191604857.jpg,/uploads/20180405/20180405191606915.jpg', '', 0, 'en', '1', 1, 1522926969, 'Aphalcon', 1522926969, 'Aphalcon');
INSERT INTO `posts` VALUES (63, '3c0271af96', 'posts_3c0271af96', '', 6, 'posts', 'HANGZHOU A13 APPARTMENT', 'default', '', '', '', '/uploads/20180405/20180405192529928.jpg,/uploads/20180405/20180405192529130.jpg,/uploads/20180405/20180405192530261.jpg,/uploads/20180405/20180405192530642.jpg,/uploads/20180405/20180405192530859.jpg,/uploads/20180405/20180405192530555.jpg,/uploads/20180405/20180405192531349.jpg', '', 0, 'en', '1', 1, 1522927534, 'Aphalcon', 1522927534, 'Aphalcon');
INSERT INTO `posts` VALUES (64, 'f4ca08aa3d', 'posts_f4ca08aa3d', '', 3, 'posts', '杭州彼岸公寓', 'vertical', '/uploads/20180405/20180405194608883thumb.jpg', '', '', '/uploads/20180405/20180405194608883.jpg,/uploads/20180405/20180405194608304.jpg,/uploads/20180405/20180405194608416.jpg,/uploads/20180405/20180405194608418.jpg,/uploads/20180405/20180405194608671.jpg,/uploads/20180405/20180405194608604.jpg,/uploads/20180405/20180405194608241.jpg', '', 0, 'zh', '1', 1, 1522927575, 'Aphalcon', 1544077207, 'Aphalcon');
INSERT INTO `posts` VALUES (65, '7ef591fada', 'posts_7ef591fada', '', 6, 'posts', 'WAI PU LA ', 'default', '', '', '', '/uploads/20180405/20180405193835147.jpg,/uploads/20180405/20180405193835367.jpg,/uploads/20180405/20180405193835703.jpg,/uploads/20180405/20180405193835981.jpg,/uploads/20180405/20180405193835350.jpg,/uploads/20180405/20180405193835157.jpg,/uploads/20180405/20180405193835752.jpg,/uploads/20180405/20180405193835237.jpg,/uploads/20180405/20180405193836973.jpg', '', 0, 'en', '1', 1, 1522928318, 'Aphalcon', 1522928318, 'Aphalcon');
INSERT INTO `posts` VALUES (66, '0e8f36b25f', 'posts_0e8f36b25f', '', 3, 'posts', '外普拉村公益项目', 'default', '/uploads/20180405/20180405194207162thumb.jpg', '', '', '/uploads/20180405/20180405194207162.jpg,/uploads/20180405/20180405194207369.jpg,/uploads/20180405/20180405194207531.jpg,/uploads/20180405/20180405194207390.jpg,/uploads/20180405/20180405194207726.jpg,/uploads/20180405/20180405194208561.jpg,/uploads/20180405/20180405194208882.jpg,/uploads/20180405/20180405194208209.jpg,/uploads/20180405/20180405194208841.jpg', '', 0, 'zh', '1', 1, 1522928376, 'Aphalcon', 1544077202, 'Aphalcon');
INSERT INTO `posts` VALUES (67, '673a01ea92', 'posts_673a01ea92', '', 3, 'posts', '永利国际金融中心室内设计及景观设计', 'default', '/uploads/20180405/20180405195902362thumb.jpg', '', '', '/uploads/20180405/20180405195902362.jpg,/uploads/20180405/20180405200320940.jpg,/uploads/20180405/20180405200320448.jpg,/uploads/20180405/20180405200320607.jpg,/uploads/20180405/20180405200320895.jpg,/uploads/20180405/20180405200320597.jpg,/uploads/20180405/20180405200320837.jpg,/uploads/20180405/20180405200320881.jpg,/uploads/20180405/20180405200321140.jpg,/uploads/20180405/20180405200321844.jpg,/uploads/20180405/20180405200321741.jpg,/uploads/20180405/20180405200321139.jpg,/uploads/20180405/20180405200321933.jpg,/uploads/20180405/20180405200321899.jpg,/uploads/20180405/20180405200322459.jpg', '', 0, 'zh', '1', 1, 1522929545, 'Aphalcon', 1544077198, 'Aphalcon');
INSERT INTO `posts` VALUES (68, '5af4e595ba', 'posts_5af4e595ba', '', 6, 'posts', 'SHANXI YONGLI OFFICE BUILDING INTERIOR AND LANDSCAPE DESIGN ', 'default', '', '', '', '/uploads/20180405/20180405200048139.jpg,/uploads/20180405/20180405200049324.jpg,/uploads/20180405/20180405200051745.jpg,/uploads/20180405/20180405200052256.jpg,/uploads/20180405/20180405200052518.jpg,/uploads/20180405/20180405200056873.jpg,/uploads/20180405/20180405200057302.jpg,/uploads/20180405/20180405200058263.jpg,/uploads/20180405/20180405200058408.jpg,/uploads/20180405/20180405200100881.jpg,/uploads/20180405/20180405200102699.jpg,/uploads/20180405/20180405200102800.jpg,/uploads/20180405/20180405200103487.jpg,/uploads/20180405/20180405200104213.jpg,/uploads/20180405/20180405200104587.jpg,/uploads/20180405/20180405200105132.jpg', '', 0, 'en', '1', 1, 1522929670, 'Aphalcon', 1522929670, 'Aphalcon');
INSERT INTO `posts` VALUES (69, '676d05a96a', 'posts_676d05a96a', '滑雪场，概念设计', 3, 'posts', '莆田冰雪小镇体育休闲旅游项目概念设计', 'large', '/uploads/20180427/20180427113905332thumb.jpg', '', '', '/uploads/20180427/20180427113905332.jpg,/uploads/20180427/20180427113910800.jpg,/uploads/20180427/20180427113916760.jpg,/uploads/20180427/20180427113922742.jpg,/uploads/20180427/20180427113929514.jpg,/uploads/20180427/20180427113937654.jpg,/uploads/20180427/20180427113945256.jpg,/uploads/20180427/20180427113951535.jpg', '', 0, 'zh', '1', 1, 1524800397, 'Aphalcon', 1544077193, 'Aphalcon');
INSERT INTO `posts` VALUES (70, '66efebfc13', 'posts_66efebfc13', '', 6, 'posts', 'PuTian ski facility', 'default', '', '', '', '/uploads/20180427/20180427114157866.jpg,/uploads/20180427/20180427114211591.jpg,/uploads/20180427/20180427114219270.jpg,/uploads/20180427/20180427114223227.jpg,/uploads/20180427/20180427114229730.jpg,/uploads/20180427/20180427114235557.jpg,/uploads/20180427/20180427114240223.jpg,/uploads/20180427/20180427114246966.jpg', '', 0, 'en', '1', 1, 1524800570, 'Aphalcon', 1524800570, 'Aphalcon');
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `code` char(10) DEFAULT NULL COMMENT '缓存',
  `pid` smallint(6) DEFAULT '0' COMMENT '默认0为顶级权限',
  `key` varchar(255) DEFAULT NULL COMMENT '缓存值',
  `name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `created` int(9) DEFAULT NULL COMMENT '创建时间',
  `createdby` varchar(255) DEFAULT NULL COMMENT '创建人',
  `updated` int(9) DEFAULT NULL COMMENT '更新时间',
  `updatedby` varchar(255) DEFAULT '' COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES (1, '7b8312f30b', 0, 'user_7b8312f30b', '超级管理员', 1435563000, 'admin', 1435563836, 'admin');
INSERT INTO `roles` VALUES (2, 'ac46782f3a', 0, 'user_ac46782f3a', '产品编辑', 2323, 'admin', 1435563850, 'admin');
COMMIT;

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `tagid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `tagname` char(20) NOT NULL DEFAULT '' COMMENT '标签名称',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`tagid`),
  KEY `tagname` (`tagname`),
  KEY `status` (`status`,`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
