-- MySQL database dump
-- 主机: 
-- 生成日期: 2020 年  03 月 06 日 23:06
-- MySQL版本: 
-- PHP 版本: 5.6.9
-- 数据库: `z200218`
-- ---------------------------------------------------------
-- 表的结构address
--
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `address_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `area` varchar(120) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `default` int(1) DEFAULT '0',
  `time` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`address_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 address

--
-- 表的结构admin
--
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `auth_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '0' COMMENT '名字',
  `account` varchar(30) NOT NULL COMMENT '管理员账号',
  `password` varchar(32) NOT NULL COMMENT '管理员密码',
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员账号密码';

--
-- 转存表中的数据 admin

INSERT INTO `admin` VALUES('1','1','超级管理员','admin','e10adc3949ba59abbe56e057f20f883e','1');
INSERT INTO `admin` VALUES('4','1','超级管理员','admin001','e10adc3949ba59abbe56e057f20f883e','1');
--
-- 表的结构article
--
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `title` varchar(100) NOT NULL DEFAULT '无' COMMENT '标题',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '文章类型',
  `keyword` varchar(200) NOT NULL DEFAULT '无' COMMENT '关键词',
  `content` text NOT NULL COMMENT '内容',
  `time` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  `show` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示，0不显示/1显示',
  `photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文章表';

--
-- 转存表中的数据 article

--
-- 表的结构article_type
--
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(30) NOT NULL DEFAULT '无' COMMENT '名称',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `show` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示，0不显示/1显示',
  `ico` varchar(10) NOT NULL DEFAULT 'help' COMMENT '类型图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1018 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文章类型表';

--
-- 转存表中的数据 article_type

INSERT INTO `article_type` VALUES('1015','项目亮点','5','1','notice');
INSERT INTO `article_type` VALUES('1011','企业介绍','1','1','notice');
INSERT INTO `article_type` VALUES('1012','读懂项目','2','1','notice');
INSERT INTO `article_type` VALUES('1013','操作说明','3','1','notice');
INSERT INTO `article_type` VALUES('1014','操作手册','4','1','notice');
--
-- 表的结构auth
--
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `auth` varchar(50) NOT NULL,
  `addtime` varchar(50) NOT NULL,
  `updatetime` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='角色';

--
-- 转存表中的数据 auth

INSERT INTO `auth` VALUES('1','超级管理员','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19','1573026976','1573112547','1');
INSERT INTO `auth` VALUES('3','灌灌灌灌','1,2,3,4,5,6,13,14','1573026976','1573031653','1');
INSERT INTO `auth` VALUES('4','阿达','1,2,20,3,4,5,6','1573099072','1573099072','1');
INSERT INTO `auth` VALUES('5','财务','7,8,9','1573099114','1573099114','1');
--
-- 表的结构bank
--
DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `bank` varchar(30) NOT NULL DEFAULT '无' COMMENT '所属银行',
  `account` varchar(30) NOT NULL DEFAULT '0' COMMENT '银行卡号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1058 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='银行卡';

--
-- 转存表中的数据 bank

INSERT INTO `bank` VALUES('1056','53564','111111111111111111','13888888888');
INSERT INTO `bank` VALUES('1057','53712','中国工商银行','6215591912000965383');
--
-- 表的结构cash
--
DROP TABLE IF EXISTS `cash`;
CREATE TABLE `cash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `name` varchar(20) NOT NULL DEFAULT '无' COMMENT '提现姓名',
  `alipay` varchar(30) NOT NULL DEFAULT '无' COMMENT '支付宝',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '提现金额',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态，0未提现/1已提现/2提现失败',
  `time` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '提交时间',
  `time2` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '处理时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='提现记录';

--
-- 转存表中的数据 cash

--
-- 表的结构clt_coin_price_setting
--
DROP TABLE IF EXISTS `clt_coin_price_setting`;
CREATE TABLE `clt_coin_price_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `price` varchar(20) NOT NULL DEFAULT '0',
  `pub_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='本地币种价格设置(根据用户自己命名)';

--
-- 转存表中的数据 clt_coin_price_setting

INSERT INTO `clt_coin_price_setting` VALUES('1','0.1','1547913600');
INSERT INTO `clt_coin_price_setting` VALUES('8','0.3','1548000000');
INSERT INTO `clt_coin_price_setting` VALUES('9','0.5','1548086400');
INSERT INTO `clt_coin_price_setting` VALUES('10','0.8','1548172800');
INSERT INTO `clt_coin_price_setting` VALUES('11','0.2847','1548259200');
INSERT INTO `clt_coin_price_setting` VALUES('12','0.2365','1547136000');
INSERT INTO `clt_coin_price_setting` VALUES('13','0.2403','1547222400');
INSERT INTO `clt_coin_price_setting` VALUES('14','0.2441','1547308800');
INSERT INTO `clt_coin_price_setting` VALUES('15','0.248','1547395200');
INSERT INTO `clt_coin_price_setting` VALUES('16','0.251','1547481600');
INSERT INTO `clt_coin_price_setting` VALUES('17','0.2544','1547568000');
INSERT INTO `clt_coin_price_setting` VALUES('18','0.2575','1547654400');
INSERT INTO `clt_coin_price_setting` VALUES('19','0.2612','1547740800');
INSERT INTO `clt_coin_price_setting` VALUES('20','0.2647','1547827200');
INSERT INTO `clt_coin_price_setting` VALUES('21','0.3','1548345600');
INSERT INTO `clt_coin_price_setting` VALUES('22','0.412','1548432000');
INSERT INTO `clt_coin_price_setting` VALUES('23','0.3256','1548518400');
INSERT INTO `clt_coin_price_setting` VALUES('24','0.5123','1548604800');
INSERT INTO `clt_coin_price_setting` VALUES('25','0.4895','1548691200');
INSERT INTO `clt_coin_price_setting` VALUES('26','0.6587','1548777600');
INSERT INTO `clt_coin_price_setting` VALUES('27','0.7','1548864000');
INSERT INTO `clt_coin_price_setting` VALUES('28','0.5','1548950400');
INSERT INTO `clt_coin_price_setting` VALUES('29','0.54','1549036800');
INSERT INTO `clt_coin_price_setting` VALUES('30','0.45','1549123200');
INSERT INTO `clt_coin_price_setting` VALUES('31','0.568','1549209600');
INSERT INTO `clt_coin_price_setting` VALUES('32','0.5','1549296000');
INSERT INTO `clt_coin_price_setting` VALUES('33','0.45','1549382400');
INSERT INTO `clt_coin_price_setting` VALUES('34','0.6','1549468800');
INSERT INTO `clt_coin_price_setting` VALUES('35','0.1','1549555200');
INSERT INTO `clt_coin_price_setting` VALUES('36','0.11','1549641600');
INSERT INTO `clt_coin_price_setting` VALUES('37','0.5','1549728000');
INSERT INTO `clt_coin_price_setting` VALUES('38','0.25','1549814400');
INSERT INTO `clt_coin_price_setting` VALUES('39','0.35','1549900800');
INSERT INTO `clt_coin_price_setting` VALUES('40','0.3644','1549987200');
INSERT INTO `clt_coin_price_setting` VALUES('41','0.3663','1550073600');
INSERT INTO `clt_coin_price_setting` VALUES('42','0.3795','1550160000');
INSERT INTO `clt_coin_price_setting` VALUES('43','0.4015','1550246400');
INSERT INTO `clt_coin_price_setting` VALUES('44','0.4273','1550332800');
INSERT INTO `clt_coin_price_setting` VALUES('45','0.526','1550419200');
INSERT INTO `clt_coin_price_setting` VALUES('46','0.5798','1550505600');
INSERT INTO `clt_coin_price_setting` VALUES('47','0.6157','1550592000');
INSERT INTO `clt_coin_price_setting` VALUES('48','0.7057','1550678400');
INSERT INTO `clt_coin_price_setting` VALUES('49','0.7555','1550764800');
INSERT INTO `clt_coin_price_setting` VALUES('50','0.8383','1550851200');
INSERT INTO `clt_coin_price_setting` VALUES('51','0.8968','1550937600');
INSERT INTO `clt_coin_price_setting` VALUES('52','0.9175','1551024000');
INSERT INTO `clt_coin_price_setting` VALUES('53','0.9948','1551110400');
INSERT INTO `clt_coin_price_setting` VALUES('54','1.091','1551196800');
INSERT INTO `clt_coin_price_setting` VALUES('55','1.1566','1551283200');
INSERT INTO `clt_coin_price_setting` VALUES('56','1.2079','1551369600');
INSERT INTO `clt_coin_price_setting` VALUES('57','1.2551','1551456000');
INSERT INTO `clt_coin_price_setting` VALUES('58','1.2556','1551542400');
INSERT INTO `clt_coin_price_setting` VALUES('59','1.2561','1551628800');
INSERT INTO `clt_coin_price_setting` VALUES('60','1.2222','1583424000');
--
-- 表的结构codepay_user
--
DROP TABLE IF EXISTS `codepay_user`;
CREATE TABLE `codepay_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `money` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `vip` int(1) NOT NULL DEFAULT '0' COMMENT '会员开通',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '会员状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 codepay_user

INSERT INTO `codepay_user` VALUES('1','admin','0.00','0','0');
--
-- 表的结构customer
--
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `content` text,
  `read` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 customer

INSERT INTO `customer` VALUES('1','53690','0','1582700220','13456','1');
INSERT INTO `customer` VALUES('2','0','53690','1582700247','&lt;div&gt;6666&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','1');
INSERT INTO `customer` VALUES('3','53689','0','1582709701','大幅度爽肤水','1');
INSERT INTO `customer` VALUES('4','53975','0','1582886330','你好','0');
INSERT INTO `customer` VALUES('5','53975','0','1582886390','没见数据','0');
INSERT INTO `customer` VALUES('6','54594','0','1582886398','官方群呢','0');
INSERT INTO `customer` VALUES('7','54708','0','1582887017','怎么提现','0');
INSERT INTO `customer` VALUES('8','54614','0','1582887650','充值没到账','0');
INSERT INTO `customer` VALUES('9','54885','0','1582887857','还免单吗','0');
INSERT INTO `customer` VALUES('10','54854','0','1582888356','支付成功了，但是投资记录没有看到，怎么办？','0');
INSERT INTO `customer` VALUES('11','54816','0','1582888433','。','0');
INSERT INTO `customer` VALUES('12','54754','0','1582889793','在吗','0');
INSERT INTO `customer` VALUES('13','54770','0','1582890105','客服你好','0');
INSERT INTO `customer` VALUES('14','54770','0','1582890117','我投了500，微信主界面没有显示','0');
INSERT INTO `customer` VALUES('15','55051','0','1582891461','你好','1');
INSERT INTO `customer` VALUES('16','55172','0','1582894464','在','0');
INSERT INTO `customer` VALUES('17','54074','0','1582894488','没平移呢，怎么都是0投资的数据呢','0');
INSERT INTO `customer` VALUES('18','55091','0','1582896479','你好','0');
INSERT INTO `customer` VALUES('19','55091','0','1582896578','我这边支付成功，钱付了，但是跳转不了界面，一直404，退出重进，我查看了下，没有买成功','0');
INSERT INTO `customer` VALUES('20','55207','0','1582898203','你好，在吗？','0');
INSERT INTO `customer` VALUES('21','54454','0','1582906082','什么时候有收益？','0');
INSERT INTO `customer` VALUES('22','55443','0','1582906960','在吗','0');
INSERT INTO `customer` VALUES('23','55362','0','1582907614','你好！老师平台交易密码是多少啊！','0');
--
-- 表的结构fenhong_log
--
DROP TABLE IF EXISTS `fenhong_log`;
CREATE TABLE `fenhong_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) DEFAULT NULL COMMENT '时间戳',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 fenhong_log

INSERT INTO `fenhong_log` VALUES('6','1583287405');
INSERT INTO `fenhong_log` VALUES('7','1583424030');
--
-- 表的结构finance
--
DROP TABLE IF EXISTS `finance`;
CREATE TABLE `finance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '类型,1收入/2支出',
  `reason` varchar(200) NOT NULL DEFAULT '无' COMMENT '摘要',
  `before` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '加入前余额',
  `time` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5729763 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='财务表';

--
-- 转存表中的数据 finance

INSERT INTO `finance` VALUES('5729691','55526','10.00','1','修改投资金额','230.00','2020-03-05 18:40:02');
INSERT INTO `finance` VALUES('5729692','55521','1.00','1','会员投资10元获得团队奖1元！','4.00','2020-03-05 18:40:02');
INSERT INTO `finance` VALUES('5729693','55525','0.80','1','推荐会员投资10元奖励1代0.8元！','6.60','2020-03-05 18:40:02');
INSERT INTO `finance` VALUES('5729694','55517','0.05','1','推荐会员投资10元奖励9代0.05元！','3.00','2020-03-05 18:40:02');
INSERT INTO `finance` VALUES('5729695','55525','10.00','1','修改投资金额','1040.00','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729696','55521','1.00','1','会员投资10元获得团队奖1元！','5.00','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729697','55523','0.60','1','推荐会员投资10元奖励2代0.6元！','0.60','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729698','55519','0.05','1','推荐会员投资10元奖励6代0.05元！','0.05','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729699','55517','0.05','1','推荐会员投资10元奖励8代0.05元！','3.05','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729700','55516','0.05','1','推荐会员投资10元奖励9代0.05元！','2.65','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729701','55514','0.05','1','推荐会员投资10元奖励11代0.05元！','2.65','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729702','55513','0.05','1','推荐会员投资10元奖励12代0.05元！','2.65','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729703','55510','0.05','1','推荐会员投资10元奖励15代0.05元！','2.65','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729704','55509','0.05','1','推荐会员投资10元奖励16代0.05元！','2.65','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729705','55508','0.05','1','推荐会员投资10元奖励17代0.05元！','2.65','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729706','55507','0.05','1','推荐会员投资10元奖励18代0.05元！','2.65','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729707','55506','0.05','1','推荐会员投资10元奖励19代0.05元！','2.65','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729708','55505','0.05','1','推荐会员投资10元奖励20代0.05元！','2.65','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729709','55504','0.05','1','推荐会员投资10元奖励21代0.05元！','2.65','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729710','55503','0.05','1','推荐会员投资10元奖励22代0.05元！','2.65','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729711','55502','0.05','1','推荐会员投资10元奖励23代0.05元！','2.65','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729712','55501','0.05','1','推荐会员投资10元奖励24代0.05元！','2.65','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729713','55500','0.05','1','推荐会员投资10元奖励25代0.05元！','2.65','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729714','55499','0.05','1','推荐会员投资10元奖励26代0.05元！','2.65','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729715','55498','0.05','1','推荐会员投资10元奖励27代0.05元！','2.65','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729716','55497','0.05','1','推荐会员投资10元奖励28代0.05元！','2.65','2020-03-05 18:53:37');
INSERT INTO `finance` VALUES('5729717','55523','0.60','1','推荐会员投资10元奖励2代0.6元！','1.20','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729718','55519','0.05','1','推荐会员投资10元奖励6代0.05元！','0.10','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729719','55517','0.05','1','推荐会员投资10元奖励8代0.05元！','3.10','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729720','55516','0.05','1','推荐会员投资10元奖励9代0.05元！','2.70','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729721','55514','0.05','1','推荐会员投资10元奖励11代0.05元！','2.70','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729722','55513','0.05','1','推荐会员投资10元奖励12代0.05元！','2.70','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729723','55510','0.05','1','推荐会员投资10元奖励15代0.05元！','2.70','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729724','55509','0.05','1','推荐会员投资10元奖励16代0.05元！','2.70','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729725','55508','0.05','1','推荐会员投资10元奖励17代0.05元！','2.70','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729726','55507','0.05','1','推荐会员投资10元奖励18代0.05元！','2.70','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729727','55506','0.05','1','推荐会员投资10元奖励19代0.05元！','2.70','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729728','55505','0.05','1','推荐会员投资10元奖励20代0.05元！','2.70','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729729','55504','0.05','1','推荐会员投资10元奖励21代0.05元！','2.70','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729730','55503','0.05','1','推荐会员投资10元奖励22代0.05元！','2.70','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729731','55502','0.05','1','推荐会员投资10元奖励23代0.05元！','2.70','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729732','55501','0.05','1','推荐会员投资10元奖励24代0.05元！','2.70','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729733','55500','0.05','1','推荐会员投资10元奖励25代0.05元！','2.70','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729734','55499','0.05','1','推荐会员投资10元奖励26代0.05元！','2.70','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729735','55498','0.05','1','推荐会员投资10元奖励27代0.05元！','2.70','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729736','55497','0.05','1','推荐会员投资10元奖励28代0.05元！','2.70','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729737','55521','1.00','1','会员投资10元获得团队奖1元！','6.00','2020-03-05 20:10:56');
INSERT INTO `finance` VALUES('5729738','55526','0.40','1','周期收益20元 第1期收益0.40元','30.40','2020-03-06 00:00:29');
INSERT INTO `finance` VALUES('5729739','55525','0.40','1','周期收益20元 第1期收益0.40元','6.60','2020-03-06 00:01:28');
INSERT INTO `finance` VALUES('5729740','55525','0.40','1','周期收益20元 第1期收益0.40元','7.00','2020-03-06 00:04:51');
INSERT INTO `finance` VALUES('5729741','55525','10.00','1','投资10元！','7.40','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729742','55523','0.60','1','推荐会员投资10元奖励2代0.6元！','1.80','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729743','55519','0.05','1','推荐会员投资10元奖励6代0.05元！','0.15','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729744','55517','0.05','1','推荐会员投资10元奖励8代0.05元！','3.15','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729745','55516','0.05','1','推荐会员投资10元奖励9代0.05元！','2.75','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729746','55514','0.05','1','推荐会员投资10元奖励11代0.05元！','2.75','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729747','55513','0.05','1','推荐会员投资10元奖励12代0.05元！','2.75','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729748','55510','0.05','1','推荐会员投资10元奖励15代0.05元！','2.75','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729749','55509','0.05','1','推荐会员投资10元奖励16代0.05元！','2.75','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729750','55508','0.05','1','推荐会员投资10元奖励17代0.05元！','2.75','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729751','55507','0.05','1','推荐会员投资10元奖励18代0.05元！','2.75','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729752','55506','0.05','1','推荐会员投资10元奖励19代0.05元！','2.75','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729753','55505','0.05','1','推荐会员投资10元奖励20代0.05元！','2.75','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729754','55504','0.05','1','推荐会员投资10元奖励21代0.05元！','2.75','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729755','55503','0.05','1','推荐会员投资10元奖励22代0.05元！','2.75','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729756','55502','0.05','1','推荐会员投资10元奖励23代0.05元！','2.75','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729757','55501','0.05','1','推荐会员投资10元奖励24代0.05元！','2.75','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729758','55500','0.05','1','推荐会员投资10元奖励25代0.05元！','2.75','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729759','55499','0.05','1','推荐会员投资10元奖励26代0.05元！','2.75','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729760','55498','0.05','1','推荐会员投资10元奖励27代0.05元！','2.75','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729761','55497','0.05','1','推荐会员投资10元奖励28代0.05元！','2.75','2020-03-06 10:49:03');
INSERT INTO `finance` VALUES('5729762','55521','1.00','1','会员投资10元获得团队奖1元！','7.00','2020-03-06 10:49:03');
--
-- 表的结构goods
--
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `goods_j_name` varchar(100) DEFAULT NULL,
  `classify_id` int(11) DEFAULT NULL COMMENT '所属分类ID',
  `goods_price` decimal(8,2) DEFAULT '0.00' COMMENT '价格',
  `goods_kc` int(11) DEFAULT '0' COMMENT '商品库存默认0',
  `goods_remark` varchar(255) DEFAULT NULL COMMENT '商品简介',
  `goods_content` text COMMENT '商品详情',
  `photo` varchar(255) DEFAULT NULL COMMENT '商品缩略图',
  `tujilist` varchar(255) DEFAULT NULL COMMENT '商品轮播图',
  `add_time` varchar(100) DEFAULT NULL COMMENT '添加时间',
  `state` int(1) DEFAULT '1' COMMENT '状态1显示0隐藏',
  `tuijian` int(1) DEFAULT '1' COMMENT '1推荐0不推荐',
  `goods_freight` decimal(11,2) DEFAULT '0.00' COMMENT '运费',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 goods

--
-- 表的结构goods_classify
--
DROP TABLE IF EXISTS `goods_classify`;
CREATE TABLE `goods_classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classify_title` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `classify_goods_num` int(11) DEFAULT '0' COMMENT '商品数量',
  `photo` varchar(255) DEFAULT NULL COMMENT '分类缩略图',
  `add_time` varchar(255) DEFAULT NULL COMMENT '添加时间',
  `state` int(1) DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 goods_classify

INSERT INTO `goods_classify` VALUES('6','数码通讯','6','20190611191916.png','1560251956','1');
INSERT INTO `goods_classify` VALUES('10','家电电器','0','20190611191930.png','1560251970','1');
INSERT INTO `goods_classify` VALUES('11','厨房用品','0','20190611191945.png','1560251985','1');
INSERT INTO `goods_classify` VALUES('12','家居生活','0','20190611192001.png','1560252001','1');
INSERT INTO `goods_classify` VALUES('13','充值卡券','0','20190611192020.png','1560252020','1');
--
-- 表的结构info
--
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `webname` varchar(100) NOT NULL DEFAULT '默认网站' COMMENT '网站名称',
  `company` varchar(100) NOT NULL DEFAULT '公司名称' COMMENT '公司名称',
  `tel` varchar(50) NOT NULL DEFAULT '400-000-0000' COMMENT '客服电话',
  `address` varchar(500) NOT NULL DEFAULT '公司地址' COMMENT '公司地址',
  `notice` varchar(500) NOT NULL DEFAULT '网站公告' COMMENT '网站公告',
  `service` varchar(500) NOT NULL DEFAULT 'http://www.yourdomain.com' COMMENT '客服地址',
  `app` varchar(500) NOT NULL DEFAULT 'http://www.yourdomain.com' COMMENT 'app下载链接',
  `icp` varchar(30) NOT NULL DEFAULT '京ICP备12345678号' COMMENT '备案号',
  `wechat` varchar(100) NOT NULL DEFAULT '微信客服' COMMENT '微信客服',
  `qq` varchar(100) NOT NULL DEFAULT '10000' COMMENT 'QQ客服',
  `cash` int(11) NOT NULL DEFAULT '0' COMMENT '最低提现金额',
  `ranking` varchar(1000) NOT NULL DEFAULT '0' COMMENT '排行榜',
  `contract` varchar(5000) NOT NULL DEFAULT '0' COMMENT '合同模板',
  `pay_bank` varchar(200) NOT NULL DEFAULT '无' COMMENT '银行入款支付描述',
  `pay_bank_type` varchar(50) NOT NULL DEFAULT '无' COMMENT '收款银行',
  `pay_bank_name` varchar(50) NOT NULL DEFAULT '无' COMMENT '收款银行开户名',
  `pay_bank_account` varchar(50) NOT NULL DEFAULT '无' COMMENT '收款银行账号',
  `pay_bank_status` int(11) NOT NULL DEFAULT '0' COMMENT '收款银行是否显示，0不显示/1显示',
  `qr_wechat` varchar(200) NOT NULL DEFAULT '无' COMMENT '微信扫码支付描述',
  `qr_wechat_img` varchar(100) NOT NULL DEFAULT '无' COMMENT '微信二维码地址',
  `qr_wechat_status` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示微信扫码,0隐藏/1显示',
  `qr_alipay` varchar(200) NOT NULL DEFAULT '无' COMMENT '支付宝扫码支付描述',
  `qr_alipay_img` varchar(100) NOT NULL DEFAULT '无' COMMENT '支付宝二维码地址',
  `qr_alipay_status` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示支付宝扫码,0隐藏/1显示',
  `online_wechat` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示微信在线支付,0隐藏/1显示',
  `activity_url` varchar(200) NOT NULL DEFAULT '#' COMMENT '活动链接',
  `activity_status` int(11) NOT NULL DEFAULT '0' COMMENT '活动是否开启,0关闭,1开启',
  `jiesuan` int(11) NOT NULL DEFAULT '1' COMMENT '是否开启结算,0关闭/1开启',
  `web` int(11) NOT NULL DEFAULT '1' COMMENT '是否开启电脑版,0关闭/1开启',
  `sms` int(11) NOT NULL DEFAULT '1' COMMENT '短信开关,0关/1开',
  `template` varchar(10) NOT NULL DEFAULT 'one' COMMENT '手机模板',
  `video` varchar(200) NOT NULL DEFAULT '无' COMMENT '视频地址',
  `smsname` varchar(200) NOT NULL DEFAULT '无' COMMENT '短信签名',
  `smskey` varchar(200) NOT NULL DEFAULT '无' COMMENT '短信密钥',
  `token` varchar(200) NOT NULL DEFAULT '无' COMMENT '程序授权码',
  `allowable` varchar(100) NOT NULL,
  `withdrawals` varchar(100) NOT NULL,
  `charged` varchar(100) NOT NULL,
  `icar` int(50) NOT NULL,
  `kstatus` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='网站信息';

--
-- 转存表中的数据 info

INSERT INTO `info` VALUES('1','丰益国际','丰益国际','','','','/mobile/kefu.html','https://ff.69nm.com/app.php/NDM0NA==','','','','0','','','请复制收款人、收款账号进行网银转账，网银转账10000元以上返1%（含10000元）入款后直接与在线客服联系！谢谢','','','','0','微信充值，长按二维码保存或截图二维码，打开微信，扫一扫，点击右上角相册，选择刚保存的二维码，充值即可。温馨提示：请您在充值的时候尽量不要充值整数，比如您要充值100元，您可以选择充值100.01元或99.99元，尽量在小数点选择比较特殊的金额，让系统更快识别您的充值订单，以免耽误您的投资，详细充值步骤可以看平台公告。','20191211222357.jpg','1','支付宝充值，长按二维码保存或截图二维码，打开支付宝，扫一扫，点击右上角相册，选择刚保存的二维码，充值即可。温馨提示：请您在充值的时候尽量不要充值整数，比如您要充值100元，您可以选择充值100.01元或99.99元，尽量在小数点选择比较特殊的金额，让系统更快识别您的充值订单，以免耽误您的投资，详细充值步骤可以看平台公告。','20191211222357.jpg','1','0','/Public/uploads/activity.png','0','1','0','1','three','无','','','','8|23','1','0','0','0');
--
-- 表的结构invest
--
DROP TABLE IF EXISTS `invest`;
CREATE TABLE `invest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `order_sn` varchar(32) NOT NULL DEFAULT '' COMMENT '订单号',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '项目ID',
  `title` varchar(200) NOT NULL DEFAULT '无' COMMENT '项目标题',
  `money` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '投资金额',
  `day` int(11) NOT NULL DEFAULT '0' COMMENT '项目天数',
  `rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '项目费率',
  `type1` int(11) NOT NULL DEFAULT '0' COMMENT '项目类型1',
  `type2` varchar(50) NOT NULL DEFAULT '无' COMMENT '项目类型2',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '还款状态',
  `time` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '投资时间',
  `pay_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单支付状态0是未支付1是支付完成',
  `pay_time` int(11) NOT NULL DEFAULT '0' COMMENT '支付更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2672 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目投资表';

--
-- 转存表中的数据 invest

INSERT INTO `invest` VALUES('2665','','55526','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-03-05 18:40:02','1','0');
INSERT INTO `invest` VALUES('2666','','55525','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-03-05 18:53:37','1','0');
INSERT INTO `invest` VALUES('2667','202003052010263528','55525','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-03-05 20:10:26','1','1583410256');
INSERT INTO `invest` VALUES('2668','202003061048217897','55525','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-03-06 10:48:21','1','1583462943');
INSERT INTO `invest` VALUES('2669','202003061348395905','55535','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-03-06 13:48:39','0','0');
INSERT INTO `invest` VALUES('2670','202003061404363102','55535','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-03-06 14:04:36','0','0');
INSERT INTO `invest` VALUES('2671','202003061841247659','55494','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-03-06 18:41:24','0','0');
--
-- 表的结构invest_list
--
DROP TABLE IF EXISTS `invest_list`;
CREATE TABLE `invest_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `iid` int(11) NOT NULL DEFAULT '0' COMMENT '投资记录ID',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '投资期数',
  `title` varchar(200) NOT NULL DEFAULT '无' COMMENT '项目标题',
  `money1` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '待还利息',
  `money2` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '待还本金',
  `time1` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '预计还款时间',
  `time2` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '实际还款时间',
  `pay1` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '预计还款金额',
  `pay2` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实际还款金额',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '项目记录,0未还款/1还款',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8737 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目投资详情表';

--
-- 转存表中的数据 invest_list

INSERT INTO `invest_list` VALUES('8537','55526','2665','1','周期收益20元','0.40','0.00','2020-03-06 00:00:00','2020-03-06 00:00:29','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('8538','55526','2665','2','周期收益20元','0.40','0.00','2020-03-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8539','55526','2665','3','周期收益20元','0.40','0.00','2020-03-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8540','55526','2665','4','周期收益20元','0.40','0.00','2020-03-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8541','55526','2665','5','周期收益20元','0.40','0.00','2020-03-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8542','55526','2665','6','周期收益20元','0.40','0.00','2020-03-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8543','55526','2665','7','周期收益20元','0.40','0.00','2020-03-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8544','55526','2665','8','周期收益20元','0.40','0.00','2020-03-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8545','55526','2665','9','周期收益20元','0.40','0.00','2020-03-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8546','55526','2665','10','周期收益20元','0.40','0.00','2020-03-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8547','55526','2665','11','周期收益20元','0.40','0.00','2020-03-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8548','55526','2665','12','周期收益20元','0.40','0.00','2020-03-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8549','55526','2665','13','周期收益20元','0.40','0.00','2020-03-18 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8550','55526','2665','14','周期收益20元','0.40','0.00','2020-03-19 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8551','55526','2665','15','周期收益20元','0.40','0.00','2020-03-20 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8552','55526','2665','16','周期收益20元','0.40','0.00','2020-03-21 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8553','55526','2665','17','周期收益20元','0.40','0.00','2020-03-22 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8554','55526','2665','18','周期收益20元','0.40','0.00','2020-03-23 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8555','55526','2665','19','周期收益20元','0.40','0.00','2020-03-24 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8556','55526','2665','20','周期收益20元','0.40','0.00','2020-03-25 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8557','55526','2665','21','周期收益20元','0.40','0.00','2020-03-26 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8558','55526','2665','22','周期收益20元','0.40','0.00','2020-03-27 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8559','55526','2665','23','周期收益20元','0.40','0.00','2020-03-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8560','55526','2665','24','周期收益20元','0.40','0.00','2020-03-29 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8561','55526','2665','25','周期收益20元','0.40','0.00','2020-03-30 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8562','55526','2665','26','周期收益20元','0.40','0.00','2020-03-31 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8563','55526','2665','27','周期收益20元','0.40','0.00','2020-04-01 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8564','55526','2665','28','周期收益20元','0.40','0.00','2020-04-02 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8565','55526','2665','29','周期收益20元','0.40','0.00','2020-04-03 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8566','55526','2665','30','周期收益20元','0.40','0.00','2020-04-04 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8567','55526','2665','31','周期收益20元','0.40','0.00','2020-04-05 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8568','55526','2665','32','周期收益20元','0.40','0.00','2020-04-06 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8569','55526','2665','33','周期收益20元','0.40','0.00','2020-04-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8570','55526','2665','34','周期收益20元','0.40','0.00','2020-04-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8571','55526','2665','35','周期收益20元','0.40','0.00','2020-04-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8572','55526','2665','36','周期收益20元','0.40','0.00','2020-04-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8573','55526','2665','37','周期收益20元','0.40','0.00','2020-04-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8574','55526','2665','38','周期收益20元','0.40','0.00','2020-04-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8575','55526','2665','39','周期收益20元','0.40','0.00','2020-04-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8576','55526','2665','40','周期收益20元','0.40','0.00','2020-04-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8577','55526','2665','41','周期收益20元','0.40','0.00','2020-04-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8578','55526','2665','42','周期收益20元','0.40','0.00','2020-04-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8579','55526','2665','43','周期收益20元','0.40','0.00','2020-04-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8580','55526','2665','44','周期收益20元','0.40','0.00','2020-04-18 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8581','55526','2665','45','周期收益20元','0.40','0.00','2020-04-19 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8582','55526','2665','46','周期收益20元','0.40','0.00','2020-04-20 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8583','55526','2665','47','周期收益20元','0.40','0.00','2020-04-21 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8584','55526','2665','48','周期收益20元','0.40','0.00','2020-04-22 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8585','55526','2665','49','周期收益20元','0.40','0.00','2020-04-23 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8586','55526','2665','50','周期收益20元','0.40','0.00','2020-04-24 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8587','55525','2666','1','周期收益20元','0.40','0.00','2020-03-06 00:00:00','2020-03-06 00:01:28','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('8588','55525','2666','2','周期收益20元','0.40','0.00','2020-03-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8589','55525','2666','3','周期收益20元','0.40','0.00','2020-03-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8590','55525','2666','4','周期收益20元','0.40','0.00','2020-03-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8591','55525','2666','5','周期收益20元','0.40','0.00','2020-03-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8592','55525','2666','6','周期收益20元','0.40','0.00','2020-03-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8593','55525','2666','7','周期收益20元','0.40','0.00','2020-03-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8594','55525','2666','8','周期收益20元','0.40','0.00','2020-03-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8595','55525','2666','9','周期收益20元','0.40','0.00','2020-03-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8596','55525','2666','10','周期收益20元','0.40','0.00','2020-03-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8597','55525','2666','11','周期收益20元','0.40','0.00','2020-03-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8598','55525','2666','12','周期收益20元','0.40','0.00','2020-03-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8599','55525','2666','13','周期收益20元','0.40','0.00','2020-03-18 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8600','55525','2666','14','周期收益20元','0.40','0.00','2020-03-19 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8601','55525','2666','15','周期收益20元','0.40','0.00','2020-03-20 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8602','55525','2666','16','周期收益20元','0.40','0.00','2020-03-21 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8603','55525','2666','17','周期收益20元','0.40','0.00','2020-03-22 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8604','55525','2666','18','周期收益20元','0.40','0.00','2020-03-23 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8605','55525','2666','19','周期收益20元','0.40','0.00','2020-03-24 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8606','55525','2666','20','周期收益20元','0.40','0.00','2020-03-25 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8607','55525','2666','21','周期收益20元','0.40','0.00','2020-03-26 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8608','55525','2666','22','周期收益20元','0.40','0.00','2020-03-27 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8609','55525','2666','23','周期收益20元','0.40','0.00','2020-03-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8610','55525','2666','24','周期收益20元','0.40','0.00','2020-03-29 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8611','55525','2666','25','周期收益20元','0.40','0.00','2020-03-30 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8612','55525','2666','26','周期收益20元','0.40','0.00','2020-03-31 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8613','55525','2666','27','周期收益20元','0.40','0.00','2020-04-01 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8614','55525','2666','28','周期收益20元','0.40','0.00','2020-04-02 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8615','55525','2666','29','周期收益20元','0.40','0.00','2020-04-03 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8616','55525','2666','30','周期收益20元','0.40','0.00','2020-04-04 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8617','55525','2666','31','周期收益20元','0.40','0.00','2020-04-05 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8618','55525','2666','32','周期收益20元','0.40','0.00','2020-04-06 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8619','55525','2666','33','周期收益20元','0.40','0.00','2020-04-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8620','55525','2666','34','周期收益20元','0.40','0.00','2020-04-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8621','55525','2666','35','周期收益20元','0.40','0.00','2020-04-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8622','55525','2666','36','周期收益20元','0.40','0.00','2020-04-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8623','55525','2666','37','周期收益20元','0.40','0.00','2020-04-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8624','55525','2666','38','周期收益20元','0.40','0.00','2020-04-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8625','55525','2666','39','周期收益20元','0.40','0.00','2020-04-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8626','55525','2666','40','周期收益20元','0.40','0.00','2020-04-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8627','55525','2666','41','周期收益20元','0.40','0.00','2020-04-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8628','55525','2666','42','周期收益20元','0.40','0.00','2020-04-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8629','55525','2666','43','周期收益20元','0.40','0.00','2020-04-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8630','55525','2666','44','周期收益20元','0.40','0.00','2020-04-18 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8631','55525','2666','45','周期收益20元','0.40','0.00','2020-04-19 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8632','55525','2666','46','周期收益20元','0.40','0.00','2020-04-20 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8633','55525','2666','47','周期收益20元','0.40','0.00','2020-04-21 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8634','55525','2666','48','周期收益20元','0.40','0.00','2020-04-22 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8635','55525','2666','49','周期收益20元','0.40','0.00','2020-04-23 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8636','55525','2666','50','周期收益20元','0.40','0.00','2020-04-24 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8637','55525','2667','1','周期收益20元','0.40','0.00','2020-03-06 00:00:00','2020-03-06 00:04:51','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('8638','55525','2667','2','周期收益20元','0.40','0.00','2020-03-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8639','55525','2667','3','周期收益20元','0.40','0.00','2020-03-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8640','55525','2667','4','周期收益20元','0.40','0.00','2020-03-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8641','55525','2667','5','周期收益20元','0.40','0.00','2020-03-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8642','55525','2667','6','周期收益20元','0.40','0.00','2020-03-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8643','55525','2667','7','周期收益20元','0.40','0.00','2020-03-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8644','55525','2667','8','周期收益20元','0.40','0.00','2020-03-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8645','55525','2667','9','周期收益20元','0.40','0.00','2020-03-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8646','55525','2667','10','周期收益20元','0.40','0.00','2020-03-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8647','55525','2667','11','周期收益20元','0.40','0.00','2020-03-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8648','55525','2667','12','周期收益20元','0.40','0.00','2020-03-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8649','55525','2667','13','周期收益20元','0.40','0.00','2020-03-18 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8650','55525','2667','14','周期收益20元','0.40','0.00','2020-03-19 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8651','55525','2667','15','周期收益20元','0.40','0.00','2020-03-20 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8652','55525','2667','16','周期收益20元','0.40','0.00','2020-03-21 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8653','55525','2667','17','周期收益20元','0.40','0.00','2020-03-22 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8654','55525','2667','18','周期收益20元','0.40','0.00','2020-03-23 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8655','55525','2667','19','周期收益20元','0.40','0.00','2020-03-24 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8656','55525','2667','20','周期收益20元','0.40','0.00','2020-03-25 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8657','55525','2667','21','周期收益20元','0.40','0.00','2020-03-26 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8658','55525','2667','22','周期收益20元','0.40','0.00','2020-03-27 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8659','55525','2667','23','周期收益20元','0.40','0.00','2020-03-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8660','55525','2667','24','周期收益20元','0.40','0.00','2020-03-29 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8661','55525','2667','25','周期收益20元','0.40','0.00','2020-03-30 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8662','55525','2667','26','周期收益20元','0.40','0.00','2020-03-31 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8663','55525','2667','27','周期收益20元','0.40','0.00','2020-04-01 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8664','55525','2667','28','周期收益20元','0.40','0.00','2020-04-02 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8665','55525','2667','29','周期收益20元','0.40','0.00','2020-04-03 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8666','55525','2667','30','周期收益20元','0.40','0.00','2020-04-04 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8667','55525','2667','31','周期收益20元','0.40','0.00','2020-04-05 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8668','55525','2667','32','周期收益20元','0.40','0.00','2020-04-06 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8669','55525','2667','33','周期收益20元','0.40','0.00','2020-04-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8670','55525','2667','34','周期收益20元','0.40','0.00','2020-04-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8671','55525','2667','35','周期收益20元','0.40','0.00','2020-04-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8672','55525','2667','36','周期收益20元','0.40','0.00','2020-04-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8673','55525','2667','37','周期收益20元','0.40','0.00','2020-04-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8674','55525','2667','38','周期收益20元','0.40','0.00','2020-04-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8675','55525','2667','39','周期收益20元','0.40','0.00','2020-04-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8676','55525','2667','40','周期收益20元','0.40','0.00','2020-04-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8677','55525','2667','41','周期收益20元','0.40','0.00','2020-04-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8678','55525','2667','42','周期收益20元','0.40','0.00','2020-04-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8679','55525','2667','43','周期收益20元','0.40','0.00','2020-04-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8680','55525','2667','44','周期收益20元','0.40','0.00','2020-04-18 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8681','55525','2667','45','周期收益20元','0.40','0.00','2020-04-19 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8682','55525','2667','46','周期收益20元','0.40','0.00','2020-04-20 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8683','55525','2667','47','周期收益20元','0.40','0.00','2020-04-21 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8684','55525','2667','48','周期收益20元','0.40','0.00','2020-04-22 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8685','55525','2667','49','周期收益20元','0.40','0.00','2020-04-23 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8686','55525','2667','50','周期收益20元','0.40','0.00','2020-04-24 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8687','55525','2668','1','周期收益20元','0.40','0.00','2020-03-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8688','55525','2668','2','周期收益20元','0.40','0.00','2020-03-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8689','55525','2668','3','周期收益20元','0.40','0.00','2020-03-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8690','55525','2668','4','周期收益20元','0.40','0.00','2020-03-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8691','55525','2668','5','周期收益20元','0.40','0.00','2020-03-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8692','55525','2668','6','周期收益20元','0.40','0.00','2020-03-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8693','55525','2668','7','周期收益20元','0.40','0.00','2020-03-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8694','55525','2668','8','周期收益20元','0.40','0.00','2020-03-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8695','55525','2668','9','周期收益20元','0.40','0.00','2020-03-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8696','55525','2668','10','周期收益20元','0.40','0.00','2020-03-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8697','55525','2668','11','周期收益20元','0.40','0.00','2020-03-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8698','55525','2668','12','周期收益20元','0.40','0.00','2020-03-18 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8699','55525','2668','13','周期收益20元','0.40','0.00','2020-03-19 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8700','55525','2668','14','周期收益20元','0.40','0.00','2020-03-20 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8701','55525','2668','15','周期收益20元','0.40','0.00','2020-03-21 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8702','55525','2668','16','周期收益20元','0.40','0.00','2020-03-22 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8703','55525','2668','17','周期收益20元','0.40','0.00','2020-03-23 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8704','55525','2668','18','周期收益20元','0.40','0.00','2020-03-24 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8705','55525','2668','19','周期收益20元','0.40','0.00','2020-03-25 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8706','55525','2668','20','周期收益20元','0.40','0.00','2020-03-26 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8707','55525','2668','21','周期收益20元','0.40','0.00','2020-03-27 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8708','55525','2668','22','周期收益20元','0.40','0.00','2020-03-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8709','55525','2668','23','周期收益20元','0.40','0.00','2020-03-29 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8710','55525','2668','24','周期收益20元','0.40','0.00','2020-03-30 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8711','55525','2668','25','周期收益20元','0.40','0.00','2020-03-31 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8712','55525','2668','26','周期收益20元','0.40','0.00','2020-04-01 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8713','55525','2668','27','周期收益20元','0.40','0.00','2020-04-02 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8714','55525','2668','28','周期收益20元','0.40','0.00','2020-04-03 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8715','55525','2668','29','周期收益20元','0.40','0.00','2020-04-04 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8716','55525','2668','30','周期收益20元','0.40','0.00','2020-04-05 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8717','55525','2668','31','周期收益20元','0.40','0.00','2020-04-06 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8718','55525','2668','32','周期收益20元','0.40','0.00','2020-04-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8719','55525','2668','33','周期收益20元','0.40','0.00','2020-04-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8720','55525','2668','34','周期收益20元','0.40','0.00','2020-04-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8721','55525','2668','35','周期收益20元','0.40','0.00','2020-04-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8722','55525','2668','36','周期收益20元','0.40','0.00','2020-04-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8723','55525','2668','37','周期收益20元','0.40','0.00','2020-04-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8724','55525','2668','38','周期收益20元','0.40','0.00','2020-04-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8725','55525','2668','39','周期收益20元','0.40','0.00','2020-04-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8726','55525','2668','40','周期收益20元','0.40','0.00','2020-04-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8727','55525','2668','41','周期收益20元','0.40','0.00','2020-04-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8728','55525','2668','42','周期收益20元','0.40','0.00','2020-04-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8729','55525','2668','43','周期收益20元','0.40','0.00','2020-04-18 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8730','55525','2668','44','周期收益20元','0.40','0.00','2020-04-19 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8731','55525','2668','45','周期收益20元','0.40','0.00','2020-04-20 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8732','55525','2668','46','周期收益20元','0.40','0.00','2020-04-21 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8733','55525','2668','47','周期收益20元','0.40','0.00','2020-04-22 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8734','55525','2668','48','周期收益20元','0.40','0.00','2020-04-23 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8735','55525','2668','49','周期收益20元','0.40','0.00','2020-04-24 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('8736','55525','2668','50','周期收益20元','0.40','0.00','2020-04-25 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
--
-- 表的结构item
--
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `title` varchar(100) NOT NULL DEFAULT '无' COMMENT '标题',
  `desc` varchar(144) NOT NULL DEFAULT '无' COMMENT '项目描述',
  `img` varchar(50) NOT NULL DEFAULT 'no_img.jpg' COMMENT '图片链接',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总金额',
  `rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '费率',
  `percent` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '模拟进度',
  `day` int(11) NOT NULL DEFAULT '0' COMMENT '期限',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '返款类型',
  `min` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '最小投资金额',
  `max` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '最大投资金额',
  `num` int(11) NOT NULL DEFAULT '1' COMMENT '最大投资次数',
  `guarantee` varchar(200) NOT NULL DEFAULT '担保公司' COMMENT '担保公司',
  `limit` int(11) NOT NULL DEFAULT '0' COMMENT '最大购买分数',
  `content` text NOT NULL,
  `time` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '开始时间',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `frbl` decimal(5,2) DEFAULT '0.00' COMMENT '分润比例',
  `red` decimal(5,2) DEFAULT NULL,
  `class` varchar(20) NOT NULL,
  `clock` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目表';

--
-- 转存表中的数据 item

INSERT INTO `item` VALUES('102','周期收益20元','','20200227233711.png','10000.00','4.00','0.00','50','0','10.00','1000.00','10000','','0','','2020-02-26 21:48:00','1','0.00','0.00','13','0');
INSERT INTO `item` VALUES('104','周期收益200元','','20200227234140.png','10000.00','4.00','0.00','50','0','100.00','1000.00','10000','','0','','2020-02-27 15:10:25','2','0.00','0.00','13','0');
INSERT INTO `item` VALUES('103','周期收益100元','','20200226231635.png','10000.00','4.00','0.00','50','0','50.00','1000.00','10000','','0','','2020-02-26 23:15:37','1','0.00','0.00','13','0');
INSERT INTO `item` VALUES('109','周期收益2000元','','20200227235024.png','10000.00','4.00','0.00','50','0','1000.00','2000.00','10000','','0','','2020-02-27 23:48:36','5','0.00','0.00','13','0');
INSERT INTO `item` VALUES('108','周期收益1000元','','20200227234600.png','10000.00','4.00','0.00','50','0','500.00','1000.00','10000','','0','','2020-02-27 23:44:45','3','0.00','0.00','13','0');
INSERT INTO `item` VALUES('110','周期收益4000元','','20200228110429.png','10000.00','4.00','0.00','50','0','2000.00','10000.00','10000','','0','','2021-03-28 12:00:00','6','0.00','0.00','13','0');
INSERT INTO `item` VALUES('111','周期收益10000元','','20200228110538.png','10000.00','4.00','0.00','50','0','5000.00','10000.00','10000','','0','','2021-02-28 12:00:00','7','0.00','0.00','13','0');
INSERT INTO `item` VALUES('112','周期收益20000元','','20200228110651.png','10000.00','4.00','0.00','50','0','10000.00','10000.00','10000','','0','','2021-02-28 12:00:00','8','0.00','0.00','13','0');
--
-- 表的结构online
--
DROP TABLE IF EXISTS `online`;
CREATE TABLE `online` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `bid` varchar(30) NOT NULL DEFAULT '无' COMMENT '商户号',
  `appid` varchar(100) NOT NULL DEFAULT '无' COMMENT 'APPID',
  `appkey` varchar(100) NOT NULL DEFAULT '无' COMMENT '密钥',
  `domain` varchar(100) NOT NULL DEFAULT '无' COMMENT '域名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='在线支付';

--
-- 转存表中的数据 online

INSERT INTO `online` VALUES('1','','','','www.j6.com');
--
-- 表的结构order
--
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `address_id` int(11) DEFAULT NULL COMMENT '地址ID',
  `member_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `pay_time` varchar(11) DEFAULT NULL COMMENT '支付时间',
  `add_time` varchar(11) DEFAULT NULL COMMENT '下单时间',
  `fh_time` varchar(11) DEFAULT NULL,
  `state` int(2) DEFAULT '1' COMMENT '1未付款 2已付款 3已发货 4完成',
  `type` int(2) DEFAULT NULL COMMENT '商品类别1套餐2普通商品',
  `order_sn` varchar(50) DEFAULT NULL COMMENT '订单号',
  `total` decimal(11,2) DEFAULT '0.00' COMMENT '商品总价',
  `kd_dh` varchar(50) DEFAULT NULL,
  `kd_name` varchar(50) DEFAULT NULL,
  `freight` decimal(11,2) DEFAULT NULL,
  `tixingfahuo` int(1) DEFAULT '0' COMMENT '提醒发货1已提醒0未提醒',
  `sh_time` varchar(11) DEFAULT NULL COMMENT '收货时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 order

--
-- 表的结构order_details
--
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL COMMENT '订单ID',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `goods_price` decimal(8,2) DEFAULT NULL COMMENT '商品价格',
  `goods_num` int(11) DEFAULT '0' COMMENT '商品数量',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `goods_photo` varchar(255) DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 order_details

--
-- 表的结构otcms_order_details
--
DROP TABLE IF EXISTS `otcms_order_details`;
CREATE TABLE `otcms_order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL COMMENT '订单ID',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `goods_price` decimal(8,2) DEFAULT NULL COMMENT '商品价格',
  `goods_num` int(11) DEFAULT '0' COMMENT '商品数量',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `goods_photo` varchar(255) DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 otcms_order_details

--
-- 表的结构pay_buy_log
--
DROP TABLE IF EXISTS `pay_buy_log`;
CREATE TABLE `pay_buy_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_sn` varchar(32) NOT NULL DEFAULT '' COMMENT '订单号',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '发起支付时间',
  `note` text COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_uid_order` (`order_sn`,`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户支付日志记录数据表';

--
-- 转存表中的数据 pay_buy_log

INSERT INTO `pay_buy_log` VALUES('1','202003052010263528','55525','1583410226','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003052010263528\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200305201106101173366\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"9fc01b7519274c85f121d538448c81c4\"}');
INSERT INTO `pay_buy_log` VALUES('2','202003061048217897','55525','1583462901','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003061048217897\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200306104908101176438\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"2cfbef01ae80761ad1fb6299cfe5db9a\"}');
INSERT INTO `pay_buy_log` VALUES('3','202003061348395905','55535','1583473719','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003061348395905\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200306134907101171841\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"dd9cad3317c08aff72fb3b32916c14e1\"}');
INSERT INTO `pay_buy_log` VALUES('4','202003061404363102','55535','1583474676','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003061404363102\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200306140545101178707\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"6f4a56129f2b088d3672d2f4f581a25b\"}');
INSERT INTO `pay_buy_log` VALUES('5','202003061841247659','55494','1583491285','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003061841247659\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200306184339101173383\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"75906ebd6362305087f1a8f9cf8f5e4b\"}');
--
-- 表的结构pay_notice_log
--
DROP TABLE IF EXISTS `pay_notice_log`;
CREATE TABLE `pay_notice_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_sn` varchar(32) NOT NULL DEFAULT '' COMMENT '订单号',
  `is_success` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态0未确认1已确认2取消',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `note` text COMMENT '备注',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_order` (`order_sn`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='支付回调日志记录数据表';

--
-- 转存表中的数据 pay_notice_log

INSERT INTO `pay_notice_log` VALUES('1','202003052010263528','1','1583410256','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003052010263528\",\"pay_time\":\"2020-03-05 20:11:34\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"2da915736356a9344c2383b07abba4d8\"}','1583410256');
INSERT INTO `pay_notice_log` VALUES('2','202003061048217897','1','1583462943','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003061048217897\",\"pay_time\":\"2020-03-06 10:49:48\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"090a25c537f6c2390b3fe26f1a532bc2\"}','1583462943');
--
-- 表的结构project_class
--
DROP TABLE IF EXISTS `project_class`;
CREATE TABLE `project_class` (
  `id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `add_time` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL DEFAULT '#000',
  `sort` varchar(20) NOT NULL,
  `user_class` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 project_class

INSERT INTO `project_class` VALUES('13','金桔财富','20200226214748.jpg','','金桔理财','1582729495','#ff0000','1','');
--
-- 表的结构recharge
--
DROP TABLE IF EXISTS `recharge`;
CREATE TABLE `recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `type` varchar(20) NOT NULL DEFAULT '无' COMMENT '付款方式',
  `orderid` varchar(50) NOT NULL DEFAULT '无' COMMENT '订单编号',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '充值状态，0未充值/1已充值',
  `warn` int(11) NOT NULL DEFAULT '0' COMMENT '充值提醒',
  `reason` varchar(100) NOT NULL DEFAULT '无' COMMENT '充值摘要',
  `time` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '提交时间',
  `time2` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11003 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='充值表';

--
-- 转存表中的数据 recharge

INSERT INTO `recharge` VALUES('11001','55526','10.00','系统充值','PAY1583404802437','1','0','无','2020-03-05 18:40:02','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11002','55525','10.00','系统充值','PAY1583405617761','1','0','无','2020-03-05 18:53:37','0000-00-00 00:00:00');
--
-- 表的结构reward
--
DROP TABLE IF EXISTS `reward`;
CREATE TABLE `reward` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `register` int(11) NOT NULL DEFAULT '0' COMMENT '用户注册',
  `register2` int(11) NOT NULL DEFAULT '0' COMMENT '邀请注册',
  `recharge` int(11) NOT NULL DEFAULT '0' COMMENT '充值奖励',
  `invest1` int(11) NOT NULL DEFAULT '0' COMMENT '投资一级奖励',
  `invest2` int(11) NOT NULL DEFAULT '0' COMMENT '投资二级奖励',
  `invest3` int(11) NOT NULL DEFAULT '0' COMMENT '投资三级奖励',
  `inv1` int(11) NOT NULL DEFAULT '0' COMMENT '团队奖1代日收益',
  `inv2` int(11) NOT NULL DEFAULT '0' COMMENT '团队奖2代日收益',
  `investment_copper` varchar(50) NOT NULL DEFAULT '0' COMMENT '铜钻投资',
  `investment_diamonds` varchar(50) NOT NULL DEFAULT '0' COMMENT '钻石投资',
  `shouyilu` varchar(50) NOT NULL COMMENT '收益率',
  `tuijianjiang1` varchar(255) NOT NULL COMMENT '铜钻级别推荐奖',
  `tuijianjiang2` varchar(255) NOT NULL COMMENT '钻石级别推荐奖',
  `tixian` varchar(200) NOT NULL COMMENT '提现最低',
  `daily_tuijian` varchar(200) NOT NULL COMMENT '每天推荐人数',
  `company_dividends` varchar(200) NOT NULL COMMENT '获得公司分红百分比',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='奖励设置';

--
-- 转存表中的数据 reward

INSERT INTO `reward` VALUES('1','0','0','0','3','2','1','0','0','10','10','','4|3|2|1|0.5','8|6|2|1|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5','1','3','0.1');
--
-- 表的结构slide
--
DROP TABLE IF EXISTS `slide`;
CREATE TABLE `slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `path` varchar(100) NOT NULL DEFAULT '#' COMMENT '图片路径',
  `url` varchar(100) NOT NULL DEFAULT '#' COMMENT '图片链接',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '图片类型，1电脑/2手机',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `show` int(11) NOT NULL DEFAULT '0' COMMENT '显示，0不显示/1显示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='幻灯片';

--
-- 转存表中的数据 slide

INSERT INTO `slide` VALUES('33','20200227220417.jpg','','1','1','1');
INSERT INTO `slide` VALUES('32','20200227220405.jpg','','2','1','1');
--
-- 表的结构sms
--
DROP TABLE IF EXISTS `sms`;
CREATE TABLE `sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `type` varchar(20) NOT NULL DEFAULT '无' COMMENT '短信类型',
  `msg` varchar(80) NOT NULL DEFAULT '无' COMMENT '内容',
  `code` varchar(20) NOT NULL DEFAULT '0' COMMENT '编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='短信模板';

--
-- 转存表中的数据 sms

INSERT INTO `sms` VALUES('1','用户注册','您的手机注册验证码是：###，如非本人操作，请忽略本信息！','18001');
INSERT INTO `sms` VALUES('4','找回密码','您的找回密码的验证码是：###，如非本人操作，请忽略本信息！','18004');
INSERT INTO `sms` VALUES('3','收益提醒','您的收益###元已到账，请登录会员中心查看！','18003');
INSERT INTO `sms` VALUES('7','提现成功提醒','您申请的提现###元已到账，如非本人操作，请忽略本信息！','18007');
INSERT INTO `sms` VALUES('5','充值成功提醒','您充值的###元已到账，如非本人操作，请忽略本信息！','18005');
INSERT INTO `sms` VALUES('8','提现失败提现','您申请的提现###元未成功，请联系在线客服！如非本人操作，请忽略本信息！','18008');
INSERT INTO `sms` VALUES('6','充值失败提醒','您充值的###元未到账，如非本人操作，请忽略本信息！','18006');
INSERT INTO `sms` VALUES('2','投资成功','您购买的“###”项目已成功！','18002');
--
-- 表的结构sms_list
--
DROP TABLE IF EXISTS `sms_list`;
CREATE TABLE `sms_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `phone` varchar(11) NOT NULL DEFAULT '无' COMMENT '手机号码',
  `msg` varchar(100) NOT NULL DEFAULT '无' COMMENT '短信记录',
  `code` varchar(100) NOT NULL DEFAULT '0' COMMENT '返回代码',
  `time` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发送时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=18692 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='短信记录';

--
-- 转存表中的数据 sms_list

--
-- 表的结构station
--
DROP TABLE IF EXISTS `station`;
CREATE TABLE `station` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `uid` int(50) NOT NULL,
  `content` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 station

--
-- 表的结构team
--
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vals` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 team

--
-- 表的结构user
--
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `phone` varchar(50) NOT NULL DEFAULT '0' COMMENT '手机号',
  `name` varchar(20) NOT NULL DEFAULT '无' COMMENT '姓名',
  `idcard` varchar(18) NOT NULL DEFAULT '无' COMMENT '身份证号码',
  `auth` int(11) NOT NULL DEFAULT '0' COMMENT '是否认证,0未认证/1已认证',
  `password` varchar(32) NOT NULL DEFAULT '0' COMMENT '登录密码',
  `password2` varchar(32) NOT NULL DEFAULT '0' COMMENT '交易密码',
  `top` int(11) NOT NULL DEFAULT '0' COMMENT '推荐人',
  `member` int(11) NOT NULL DEFAULT '0' COMMENT '会员等级',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '奖金',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT '投资金额',
  `income` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总收益金额',
  `logintime` varchar(20) NOT NULL DEFAULT '0' COMMENT '登录时间',
  `clock` int(11) NOT NULL DEFAULT '0' COMMENT '是否锁定,0否/1是',
  `qiandao` varchar(20) NOT NULL DEFAULT '0' COMMENT '签到时间',
  `time` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '注册时间',
  `reg_ip` varchar(20) NOT NULL,
  `jifen` varchar(200) DEFAULT '0' COMMENT '积分',
  `dongjiemoney` varchar(100) DEFAULT NULL,
  `meirifenhong` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '每日分红',
  `padian` varchar(100) DEFAULT '0' COMMENT '帕点奖',
  `alipay` varchar(255) DEFAULT NULL COMMENT '支付宝',
  `level` varchar(255) DEFAULT '0' COMMENT '级别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=55538 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员表';

--
-- 转存表中的数据 user

INSERT INTO `user` VALUES('55494','15878100729','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53703','8029','980.07','162','0.00','1583503778','0','0','2020-03-02 14:51:57','127.0.0.1','0','','0.00','10','','2');
INSERT INTO `user` VALUES('55507','13888888887','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55506','0','2.75','0','0.00','0','0','0','2020-03-02 15:24:39','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55495','13888888899','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55494','0','2.55','0','0.00','0','0','0','2020-03-02 15:15:38','127.0.0.1','0','','0.00','10','','2');
INSERT INTO `user` VALUES('55496','13888888898','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55495','0','2.60','0','0.00','0','0','0','2020-03-02 15:16:12','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55497','13888888897','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55496','0','2.75','0','0.00','0','0','0','2020-03-02 15:16:32','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55498','13888888896','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55497','0','2.75','0','0.00','0','0','0','2020-03-02 15:19:50','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55499','13888888895','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55498','0','2.75','0','0.00','0','0','0','2020-03-02 15:20:01','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55500','13888888894','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55499','0','2.75','0','0.00','0','0','0','2020-03-02 15:20:14','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55501','13888888893','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55500','0','2.75','0','0.00','0','0','0','2020-03-02 15:21:44','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55502','13888888892','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55501','0','2.75','0','0.00','0','0','0','2020-03-02 15:21:54','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55503','13888888891','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55502','0','2.75','0','0.00','0','0','0','2020-03-02 15:22:20','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55504','13888888890','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55503','0','2.75','0','0.00','0','0','0','2020-03-02 15:22:31','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55505','13888888889','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55504','0','2.75','0','0.00','0','0','0','2020-03-02 15:23:28','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55506','13888888888','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55505','0','2.75','0','0.00','0','0','0','2020-03-02 15:24:16','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55508','13888888886','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55507','0','2.75','0','0.00','0','0','0','2020-03-02 15:25:32','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55509','13888888885','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55508','0','2.75','0','0.00','0','0','0','2020-03-02 15:25:43','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55510','13888888884','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55509','0','2.75','0','0.00','0','0','0','2020-03-02 15:25:52','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55511','13888888883','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55510','0','2.60','0','0.00','0','0','0','2020-03-02 15:26:10','127.0.0.1','0','','0.00','0','','0');
INSERT INTO `user` VALUES('55512','13888888882','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55511','0','2.60','0','0.00','0','0','0','2020-03-02 15:26:22','127.0.0.1','0','','0.00','0','','0');
INSERT INTO `user` VALUES('55513','13888888881','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55512','0','2.75','0','0.00','0','0','0','2020-03-02 15:26:33','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55514','13888888880','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55513','0','2.75','0','0.00','0','0','0','2020-03-02 15:26:43','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55515','13888888879','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55514','0','2.60','0','0.00','0','0','0','2020-03-02 15:27:15','127.0.0.1','0','','0.00','0','','0');
INSERT INTO `user` VALUES('55516','13888888878','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55515','0','2.75','0','0.00','1583218068','0','0','2020-03-02 15:27:34','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55517','13888888877','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55516','0','3.15','0','0.00','1583226126','0','0','2020-03-02 15:27:55','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55518','13888888876','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55517','0','0.00','0','0.00','0','0','0','2020-03-02 15:28:07','127.0.0.1','0','','0.00','0','','0');
INSERT INTO `user` VALUES('55519','13888888875','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55518','0','0.15','0','0.00','0','0','0','2020-03-02 15:28:20','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55520','13888888874','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55519','0','0.00','0','0.00','0','0','0','2020-03-02 15:28:30','127.0.0.1','0','','0.00','0','','0');
INSERT INTO `user` VALUES('55521','13888888873','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55520','0','7.00','0','0.00','0','0','0','2020-03-02 15:28:41','127.0.0.1','0','','0.00','10','','0');
INSERT INTO `user` VALUES('55522','13888888872','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55521','0','0.00','0','0.00','0','0','0','2020-03-02 15:28:53','127.0.0.1','0','','0.00','0','','0');
INSERT INTO `user` VALUES('55523','13888888871','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55522','0','1.80','0','0.00','0','0','0','2020-03-02 15:29:08','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55524','13888888870','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55523','0','0.00','0','0.00','0','0','0','2020-03-02 15:30:01','127.0.0.1','0','','0.00','0','','0');
INSERT INTO `user` VALUES('55525','13888888869','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55524','8024','7.40','1070','0.80','1583481868','0','0','2020-03-02 15:30:12','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55526','13888888868','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55525','8029','30.80','240','0.80','1583228653','0','0','2020-03-02 15:31:10','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55527','15878100720','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55494','8026','0.80','20','0.80','0','0','0','2020-03-03 18:33:51','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55528','15878100721','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55494','8026','0.80','20','0.80','0','0','0','2020-03-03 18:35:06','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55529','15878100722','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55494','8026','0.80','20','0.80','0','0','0','2020-03-03 18:35:37','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55530','15878100723','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55494','8026','0.80','20','0.80','0','0','0','2020-03-03 18:36:17','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55531','15878100724','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55494','8026','0.80','20','0.80','0','0','0','2020-03-03 18:36:53','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55532','15878100725','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55494','0','0.00','0','0.00','0','0','0','2020-03-03 18:37:22','127.0.0.1','0','','0.00','0','','0');
INSERT INTO `user` VALUES('55533','15878100726','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55494','8029','4.80','220','4.80','0','0','0','2020-03-03 18:38:01','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55534','15878100727','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55494','8026','0.80','20','0.80','0','0','0','2020-03-03 18:38:29','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55535','18778354807','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55494','8029','0.00','10','0.00','1583489252','0','0','2020-03-06 11:33:13','113.96.219.250','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55536','18260962861','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55535','0','0.00','10','0.00','1583465652','0','0','2020-03-06 11:34:10','180.141.64.168','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55537','15819943529','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55535','0','0.00','10','0.00','1583489266','0','0','2020-03-06 11:35:20','180.141.64.168','0','','0.00','0','','2');
--
-- 表的结构user_member
--
DROP TABLE IF EXISTS `user_member`;
CREATE TABLE `user_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(20) NOT NULL DEFAULT '无' COMMENT '等级名称',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT '等级积分',
  `level` varchar(10) NOT NULL DEFAULT '0' COMMENT '等级加息利率',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8030 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员等级表';

--
-- 转存表中的数据 user_member

INSERT INTO `user_member` VALUES('8024','钻石会员','500','2');
INSERT INTO `user_member` VALUES('8029','普通会员','0','0');
--
-- 表的结构ysk_group_copy
--
DROP TABLE IF EXISTS `ysk_group_copy`;
CREATE TABLE `ysk_group_copy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `title` varchar(31) NOT NULL DEFAULT '' COMMENT '部门名称',
  `menu_auth` text NOT NULL COMMENT '权限列表',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门信息表';

--
-- 转存表中的数据 ysk_group_copy

--
-- 表的结构ysk_u_teams
--
DROP TABLE IF EXISTS `ysk_u_teams`;
CREATE TABLE `ysk_u_teams` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `terms` varchar(100) NOT NULL COMMENT '条件',
  `vals` varchar(200) NOT NULL COMMENT '收益参数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 ysk_u_teams

--
-- 表的结构yuebao
--
DROP TABLE IF EXISTS `yuebao`;
CREATE TABLE `yuebao` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `uid` int(20) NOT NULL,
  `paypal` varchar(255) NOT NULL,
  `time` varchar(200) NOT NULL,
  `dayyuebao` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 yuebao

INSERT INTO `yuebao` VALUES('7','3','6000','1559353495','');
INSERT INTO `yuebao` VALUES('6','2','2','1559273310','');
