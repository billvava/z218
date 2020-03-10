-- MySQL database dump
-- 主机: 
-- 生成日期: 2020 年  02 月 28 日 11:27
-- MySQL版本: 
-- PHP 版本: 5.4.45
-- 数据库: `z200218cs`
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员账号密码';

--
-- 转存表中的数据 admin

INSERT INTO `admin` VALUES('1','1','超级管理员','admin','e10adc3949ba59abbe56e057f20f883e','1');
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
INSERT INTO `article_type` VALUES('1011','关于我们','1','1','notice');
INSERT INTO `article_type` VALUES('1012','项目说明','2','1','notice');
INSERT INTO `article_type` VALUES('1013','平台公告','3','1','notice');
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='提现记录';

--
-- 转存表中的数据 cash

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 customer

INSERT INTO `customer` VALUES('1','53690','0','1582700220','13456','1');
INSERT INTO `customer` VALUES('2','0','53690','1582700247','&lt;div&gt;6666&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','1');
INSERT INTO `customer` VALUES('3','53689','0','1582709701','大幅度爽肤水','1');
--
-- 表的结构fenhong_log
--
DROP TABLE IF EXISTS `fenhong_log`;
CREATE TABLE `fenhong_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) DEFAULT NULL COMMENT '时间戳',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 fenhong_log

INSERT INTO `fenhong_log` VALUES('3','1582732855');
INSERT INTO `fenhong_log` VALUES('4','1582819241');
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
) ENGINE=MyISAM AUTO_INCREMENT=34920 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='财务表';

--
-- 转存表中的数据 finance

INSERT INTO `finance` VALUES('34744','53564','10.00','1','13888888888','10.00','2020-02-27 08:43:36');
INSERT INTO `finance` VALUES('34745','53564','10.00','1','13888888888','20.00','2020-02-27 08:43:36');
INSERT INTO `finance` VALUES('34746','53564','10.00','1','13888888888','30.00','2020-02-27 08:43:36');
INSERT INTO `finance` VALUES('34747','53564','10.00','1','13888888888','40.00','2020-02-27 08:43:37');
INSERT INTO `finance` VALUES('34748','53564','10.00','1','13888888888','50.00','2020-02-27 08:43:37');
INSERT INTO `finance` VALUES('34749','53564','10.00','1','13888888888','60.00','2020-02-27 08:43:37');
INSERT INTO `finance` VALUES('34750','53703','10.00','1','13888888888','10.00','2020-02-27 08:43:56');
INSERT INTO `finance` VALUES('34751','53704','10.00','1','13888888886','10.00','2020-02-27 08:44:20');
INSERT INTO `finance` VALUES('34752','53705','10.00','1','13888888886','10.00','2020-02-27 08:44:36');
INSERT INTO `finance` VALUES('34753','53706','10.00','1','13888888884','10.00','2020-02-27 08:44:58');
INSERT INTO `finance` VALUES('34754','53564','10.00','2','投资项目：周期收益20元，使用余额10元','70.00','2020-02-27 08:44:59');
INSERT INTO `finance` VALUES('34755','53707','10.00','1','13888888884','10.00','2020-02-27 08:45:17');
INSERT INTO `finance` VALUES('34756','53708','10.00','1','13888888884','10.00','2020-02-27 08:45:35');
INSERT INTO `finance` VALUES('34757','53709','10.00','1','13888888884','10.00','2020-02-27 08:45:55');
INSERT INTO `finance` VALUES('34758','53564','10.00','2','投资项目：周期收益20元，使用余额10元','70.00','2020-02-27 12:00:52');
INSERT INTO `finance` VALUES('34759','53564','10.00','2','投资项目：周期收益20元，使用余额10元','70.00','2020-02-27 12:12:00');
INSERT INTO `finance` VALUES('34760','53564','10.00','2','投资项目：周期收益20元，使用余额10元','70.00','2020-02-27 12:48:02');
INSERT INTO `finance` VALUES('34761','53564','10.00','2','投资项目：周期收益20元，使用余额10元','70.00','2020-02-27 14:46:10');
INSERT INTO `finance` VALUES('34762','53564','10.00','2','投资项目：周期收益20元，使用余额10元','70.00','2020-02-27 14:46:18');
INSERT INTO `finance` VALUES('34763','53564','10.00','2','投资项目：周期收益20元，使用余额10元','70.00','2020-02-27 14:51:48');
INSERT INTO `finance` VALUES('34764','53564','10.00','2','投资项目：周期收益20元，使用余额10元','70.00','2020-02-27 14:53:59');
INSERT INTO `finance` VALUES('34765','53564','10.00','2','投资项目：周期收益20元，使用余额10元','70.00','2020-02-27 14:56:04');
INSERT INTO `finance` VALUES('34766','53564','10.00','2','投资项目：周期收益20元，使用余额10元','70.00','2020-02-27 15:47:19');
INSERT INTO `finance` VALUES('34767','53564','10.00','2','投资项目：周期收益20元，使用余额10元','70.00','2020-02-27 15:49:39');
INSERT INTO `finance` VALUES('34768','53564','10.00','2','投资项目：周期收益20元，使用余额10元','70.00','2020-02-27 15:57:30');
INSERT INTO `finance` VALUES('34769','53564','10.00','2','投资项目：周期收益20元，使用余额10元','70.00','2020-02-27 18:59:54');
INSERT INTO `finance` VALUES('34770','53703','10.00','2','投资项目：周期收益20元，使用余额10元','0.00','2020-02-27 19:06:12');
INSERT INTO `finance` VALUES('34771','53564','0.80','1','推荐会员投资10元奖励1代0.8元！','70.80','2020-02-27 19:06:27');
INSERT INTO `finance` VALUES('34772','54054','10.00','2','投资项目：周期收益20元，使用余额10元','0.00','2020-02-27 19:20:23');
INSERT INTO `finance` VALUES('34773','53564','10.00','2','投资项目：周期收益20元，使用余额10元','70.80','2020-02-27 19:20:49');
INSERT INTO `finance` VALUES('34774','54054','10.00','1','充值','0.00','2020-02-27 19:31:14');
INSERT INTO `finance` VALUES('34775','53564','10.00','2','投资项目：周期收益20元，使用余额10元','70.80','2020-02-27 19:31:33');
INSERT INTO `finance` VALUES('34776','53712','10.00','2','投资项目：周期收益20元，使用余额10元','0.00','2020-02-27 19:31:34');
INSERT INTO `finance` VALUES('34777','53564','10.00','2','投资项目：周期收益20元，使用余额10元','70.80','2020-02-27 19:31:54');
INSERT INTO `finance` VALUES('34778','54054','10.00','2','投资项目：周期收益20元，使用余额10元','10.00','2020-02-27 19:32:00');
INSERT INTO `finance` VALUES('34779','53564','10.00','2','投资项目：周期收益20元，使用余额10元','70.80','2020-02-27 19:32:18');
INSERT INTO `finance` VALUES('34780','54054','10.00','2','投资项目：周期收益20元，使用余额10元','10.00','2020-02-27 19:32:22');
INSERT INTO `finance` VALUES('34781','53703','10.00','2','投资项目：周期收益20元，使用余额10元','0.00','2020-02-27 20:35:21');
INSERT INTO `finance` VALUES('34782','53703','10.00','2','投资项目：周期收益20元，使用余额10元','0.00','2020-02-27 20:36:58');
INSERT INTO `finance` VALUES('34783','53703','10.00','2','投资项目：周期收益20元，使用余额10元','0.00','2020-02-27 20:37:12');
INSERT INTO `finance` VALUES('34784','53564','0.80','1','推荐会员投资10元奖励1代0.8元！','71.60','2020-02-27 20:37:25');
INSERT INTO `finance` VALUES('34785','53703','10.00','2','投资项目：周期收益20元，使用余额10元','0.00','2020-02-27 20:38:57');
INSERT INTO `finance` VALUES('34786','53564','0.80','1','推荐会员投资10元奖励1代0.8元！','72.40','2020-02-27 20:39:08');
INSERT INTO `finance` VALUES('34787','53712','50.00','2','投资项目：周期收益100元，使用余额50元','0.00','2020-02-27 20:43:13');
INSERT INTO `finance` VALUES('34788','53712','50.00','2','投资项目：周期收益100元，使用余额50元','0.00','2020-02-27 20:43:23');
INSERT INTO `finance` VALUES('34789','53712','10.00','2','投资项目：周期收益20元，使用余额10元','0.00','2020-02-27 20:44:45');
INSERT INTO `finance` VALUES('34790','53711','0.80','1','推荐会员投资10元奖励1代0.8元！','0.80','2020-02-27 20:45:28');
INSERT INTO `finance` VALUES('34791','53710','0.60','1','推荐会员投资10元奖励2代0.6元！','0.60','2020-02-27 20:45:28');
INSERT INTO `finance` VALUES('34792','53709','0.20','1','推荐会员投资10元奖励3代0.2元！','0.20','2020-02-27 20:45:28');
INSERT INTO `finance` VALUES('34793','53708','0.10','1','推荐会员投资10元奖励4代0.1元！','0.10','2020-02-27 20:45:28');
INSERT INTO `finance` VALUES('34794','53707','0.05','1','推荐会员投资10元奖励5代0.05元！','1.05','2020-02-27 20:45:28');
INSERT INTO `finance` VALUES('34795','53706','0.05','1','推荐会员投资10元奖励6代0.05元！','0.05','2020-02-27 20:45:28');
INSERT INTO `finance` VALUES('34796','53705','0.05','1','推荐会员投资10元奖励7代0.05元！','0.05','2020-02-27 20:45:28');
INSERT INTO `finance` VALUES('34797','53704','0.05','1','推荐会员投资10元奖励8代0.05元！','0.05','2020-02-27 20:45:28');
INSERT INTO `finance` VALUES('34798','53703','0.05','1','推荐会员投资10元奖励9代0.05元！','0.05','2020-02-27 20:45:28');
INSERT INTO `finance` VALUES('34799','53564','0.05','1','推荐会员投资10元奖励10代0.05元！','72.45','2020-02-27 20:45:28');
INSERT INTO `finance` VALUES('34800','53708','10.00','2','投资项目：周期收益20元，使用余额10元','0.10','2020-02-27 20:56:47');
INSERT INTO `finance` VALUES('34801','53707','0.80','1','推荐会员投资10元奖励1代0.8元！','1.85','2020-02-27 20:57:30');
INSERT INTO `finance` VALUES('34802','53706','0.60','1','推荐会员投资10元奖励2代0.6元！','0.65','2020-02-27 20:57:30');
INSERT INTO `finance` VALUES('34803','53705','0.20','1','推荐会员投资10元奖励3代0.2元！','0.25','2020-02-27 20:57:30');
INSERT INTO `finance` VALUES('34804','53704','0.10','1','推荐会员投资10元奖励4代0.1元！','0.15','2020-02-27 20:57:30');
INSERT INTO `finance` VALUES('34805','53703','0.05','1','推荐会员投资10元奖励5代0.05元！','0.10','2020-02-27 20:57:30');
INSERT INTO `finance` VALUES('34806','53564','0.05','1','推荐会员投资10元奖励6代0.05元！','72.50','2020-02-27 20:57:30');
INSERT INTO `finance` VALUES('34807','53703','10.00','2','投资项目：周期收益20元，使用余额10元','0.10','2020-02-27 23:14:44');
INSERT INTO `finance` VALUES('34808','53703','10.00','2','投资项目：周期收益20元，使用余额10元','0.10','2020-02-27 23:15:51');
INSERT INTO `finance` VALUES('34809','53703','10.00','2','投资项目：周期收益20元，使用余额10元','0.10','2020-02-27 23:16:38');
INSERT INTO `finance` VALUES('34810','53703','0.40','1','周期收益20元 第1期收益0.40元','0.10','2020-02-28 00:00:40');
INSERT INTO `finance` VALUES('34811','53703','0.40','1','周期收益20元 第1期收益0.40元','0.50','2020-02-28 00:01:36');
INSERT INTO `finance` VALUES('34812','53712','0.40','1','周期收益20元 第1期收益0.40元','0.00','2020-02-28 00:02:36');
INSERT INTO `finance` VALUES('34813','53708','0.40','1','周期收益20元 第1期收益0.40元','0.10','2020-02-28 00:03:37');
INSERT INTO `finance` VALUES('34814','53703','0.40','1','周期收益20元 第1期收益0.40元','0.90','2020-02-28 00:04:37');
INSERT INTO `finance` VALUES('34815','53703','0.40','1','周期收益20元 第1期收益0.40元','1.30','2020-02-28 00:05:37');
INSERT INTO `finance` VALUES('34816','53708','50.00','2','投资项目：周期收益100元，使用余额50元','0.50','2020-02-28 00:40:23');
INSERT INTO `finance` VALUES('34817','53708','50.00','2','投资项目：周期收益100元，使用余额50元','0.50','2020-02-28 00:42:45');
INSERT INTO `finance` VALUES('34818','53703','10.00','2','投资项目：周期收益20元，使用余额10元','1.70','2020-02-28 00:50:58');
INSERT INTO `finance` VALUES('34819','53703','10.00','2','投资项目：周期收益20元，使用余额10元','1.70','2020-02-28 00:51:50');
INSERT INTO `finance` VALUES('34820','53708','500.00','2','投资项目：周期收益1000元，使用余额500元','0.50','2020-02-28 01:03:54');
INSERT INTO `finance` VALUES('34821','53708','500.00','2','投资项目：周期收益1000元，使用余额500元','0.50','2020-02-28 01:04:12');
INSERT INTO `finance` VALUES('34822','53708','10.00','2','投资项目：周期收益20元，使用余额10元','0.50','2020-02-28 01:08:53');
INSERT INTO `finance` VALUES('34823','53707','0.80','1','推荐会员投资10元奖励1代0.8元！','2.65','2020-02-28 01:09:10');
INSERT INTO `finance` VALUES('34824','53706','0.60','1','推荐会员投资10元奖励2代0.6元！','1.25','2020-02-28 01:09:10');
INSERT INTO `finance` VALUES('34825','53705','0.20','1','推荐会员投资10元奖励3代0.2元！','0.45','2020-02-28 01:09:10');
INSERT INTO `finance` VALUES('34826','53704','0.10','1','推荐会员投资10元奖励4代0.1元！','0.25','2020-02-28 01:09:10');
INSERT INTO `finance` VALUES('34827','53703','0.05','1','推荐会员投资10元奖励5代0.05元！','1.75','2020-02-28 01:09:10');
INSERT INTO `finance` VALUES('34828','53703','10.00','2','投资项目：周期收益20元，使用余额10元','1.75','2020-02-28 01:32:05');
INSERT INTO `finance` VALUES('34829','53703','10000.00','2','投资项目：周期收益20000元，使用余额10000元','1.75','2020-02-28 01:40:56');
INSERT INTO `finance` VALUES('34830','53710','1000.00','2','投资项目：周期收益2000元，使用余额1000元','0.60','2020-02-28 07:14:07');
INSERT INTO `finance` VALUES('34831','53703','10.00','2','投资项目：周期收益20元，使用余额10元','1.75','2020-02-28 09:06:11');
INSERT INTO `finance` VALUES('34832','53703','1.00','2','复投项目：周期收益20元，使用余额1元','1001.75','2020-02-28 10:03:59');
INSERT INTO `finance` VALUES('34833','53703','0.04','1','周期收益20元 第1期收益0.04元','1000.75','2020-02-28 10:04:09');
INSERT INTO `finance` VALUES('34834','53703','0.04','1','周期收益20元 第2期收益0.04元','1000.79','2020-02-28 10:05:09');
INSERT INTO `finance` VALUES('34835','53703','0.04','1','周期收益20元 第3期收益0.04元','1000.83','2020-02-28 10:06:09');
INSERT INTO `finance` VALUES('34836','53703','0.04','1','周期收益20元 第4期收益0.04元','1000.87','2020-02-28 10:07:08');
INSERT INTO `finance` VALUES('34837','53703','10.00','2','复投项目：周期收益20元，使用余额10元','1000.91','2020-02-28 10:08:03');
INSERT INTO `finance` VALUES('34838','53703','0.04','1','周期收益20元 第5期收益0.04元','990.91','2020-02-28 10:08:09');
INSERT INTO `finance` VALUES('34839','53703','0.04','1','周期收益20元 第6期收益0.04元','990.95','2020-02-28 10:09:07');
INSERT INTO `finance` VALUES('34840','53703','0.04','1','周期收益20元 第7期收益0.04元','990.99','2020-02-28 10:10:07');
INSERT INTO `finance` VALUES('34841','53703','0.04','1','周期收益20元 第8期收益0.04元','991.03','2020-02-28 10:11:07');
INSERT INTO `finance` VALUES('34842','53703','0.04','1','周期收益20元 第9期收益0.04元','991.07','2020-02-28 10:12:07');
INSERT INTO `finance` VALUES('34843','53703','0.04','1','周期收益20元 第10期收益0.04元','991.11','2020-02-28 10:13:07');
INSERT INTO `finance` VALUES('34844','53703','0.04','1','周期收益20元 第11期收益0.04元','991.15','2020-02-28 10:14:06');
INSERT INTO `finance` VALUES('34845','53703','0.04','1','周期收益20元 第12期收益0.04元','991.19','2020-02-28 10:15:06');
INSERT INTO `finance` VALUES('34846','53703','0.04','1','周期收益20元 第13期收益0.04元','991.23','2020-02-28 10:16:06');
INSERT INTO `finance` VALUES('34847','53703','0.04','1','周期收益20元 第14期收益0.04元','991.27','2020-02-28 10:17:06');
INSERT INTO `finance` VALUES('34848','53703','0.04','1','周期收益20元 第15期收益0.04元','991.31','2020-02-28 10:18:07');
INSERT INTO `finance` VALUES('34849','53703','0.04','1','周期收益20元 第16期收益0.04元','991.35','2020-02-28 10:19:08');
INSERT INTO `finance` VALUES('34850','53703','0.04','1','周期收益20元 第17期收益0.04元','991.39','2020-02-28 10:20:07');
INSERT INTO `finance` VALUES('34851','53703','0.04','1','周期收益20元 第18期收益0.04元','991.43','2020-02-28 10:21:07');
INSERT INTO `finance` VALUES('34852','53703','0.04','1','周期收益20元 第19期收益0.04元','991.47','2020-02-28 10:22:07');
INSERT INTO `finance` VALUES('34853','53703','1.00','2','复投项目：周期收益20元，使用余额1元','991.51','2020-02-28 10:22:08');
INSERT INTO `finance` VALUES('34854','53703','1.00','2','复投项目：周期收益20元，使用余额1元','990.51','2020-02-28 10:22:48');
INSERT INTO `finance` VALUES('34855','53703','0.04','1','周期收益20元 第20期收益0.04元','989.51','2020-02-28 10:23:07');
INSERT INTO `finance` VALUES('34856','53703','0.04','1','周期收益20元 第21期收益0.04元','989.55','2020-02-28 10:24:07');
INSERT INTO `finance` VALUES('34857','53703','0.04','1','周期收益20元 第22期收益0.04元','989.59','2020-02-28 10:25:06');
INSERT INTO `finance` VALUES('34858','53703','0.04','1','周期收益20元 第23期收益0.04元','989.63','2020-02-28 10:26:06');
INSERT INTO `finance` VALUES('34859','53703','0.04','1','周期收益20元 第24期收益0.04元','989.67','2020-02-28 10:27:07');
INSERT INTO `finance` VALUES('34860','53703','0.04','1','周期收益20元 第25期收益0.04元','989.71','2020-02-28 10:28:06');
INSERT INTO `finance` VALUES('34861','53703','0.04','1','周期收益20元 第26期收益0.04元','989.75','2020-02-28 10:29:06');
INSERT INTO `finance` VALUES('34862','53703','0.04','1','周期收益20元 第27期收益0.04元','989.79','2020-02-28 10:30:06');
INSERT INTO `finance` VALUES('34863','53703','0.04','1','周期收益20元 第28期收益0.04元','989.83','2020-02-28 10:31:05');
INSERT INTO `finance` VALUES('34864','53703','0.04','1','周期收益20元 第29期收益0.04元','989.87','2020-02-28 10:32:05');
INSERT INTO `finance` VALUES('34865','53703','0.04','1','周期收益20元 第30期收益0.04元','989.91','2020-02-28 10:33:05');
INSERT INTO `finance` VALUES('34866','53703','0.04','1','周期收益20元 第31期收益0.04元','989.95','2020-02-28 10:34:05');
INSERT INTO `finance` VALUES('34867','53703','0.04','1','周期收益20元 第32期收益0.04元','989.99','2020-02-28 10:35:06');
INSERT INTO `finance` VALUES('34868','53703','0.04','1','周期收益20元 第33期收益0.04元','990.03','2020-02-28 10:36:05');
INSERT INTO `finance` VALUES('34869','53703','0.04','1','周期收益20元 第34期收益0.04元','990.07','2020-02-28 10:37:05');
INSERT INTO `finance` VALUES('34870','53703','0.04','1','周期收益20元 第35期收益0.04元','990.11','2020-02-28 10:38:05');
INSERT INTO `finance` VALUES('34871','53703','0.04','1','周期收益20元 第36期收益0.04元','990.15','2020-02-28 10:39:05');
INSERT INTO `finance` VALUES('34872','53703','0.04','1','周期收益20元 第37期收益0.04元','990.19','2020-02-28 10:40:05');
INSERT INTO `finance` VALUES('34873','53703','0.04','1','周期收益20元 第38期收益0.04元','990.23','2020-02-28 10:41:05');
INSERT INTO `finance` VALUES('34874','53703','0.04','1','周期收益20元 第39期收益0.04元','990.27','2020-02-28 10:42:05');
INSERT INTO `finance` VALUES('34875','53703','0.04','1','周期收益20元 第40期收益0.04元','990.31','2020-02-28 10:43:04');
INSERT INTO `finance` VALUES('34876','53703','0.04','1','周期收益20元 第41期收益0.04元','990.35','2020-02-28 10:44:05');
INSERT INTO `finance` VALUES('34877','53703','0.04','1','周期收益20元 第42期收益0.04元','990.39','2020-02-28 10:45:04');
INSERT INTO `finance` VALUES('34878','53703','0.04','1','周期收益20元 第43期收益0.04元','990.43','2020-02-28 10:46:04');
INSERT INTO `finance` VALUES('34879','53703','0.04','1','周期收益20元 第44期收益0.04元','990.47','2020-02-28 10:47:04');
INSERT INTO `finance` VALUES('34880','53703','0.04','1','周期收益20元 第45期收益0.04元','990.51','2020-02-28 10:48:04');
INSERT INTO `finance` VALUES('34881','53703','0.04','1','周期收益20元 第46期收益0.04元','990.55','2020-02-28 10:49:04');
INSERT INTO `finance` VALUES('34882','53703','0.04','1','周期收益20元 第47期收益0.04元','990.59','2020-02-28 10:50:04');
INSERT INTO `finance` VALUES('34883','53703','0.04','1','周期收益20元 第48期收益0.04元','990.63','2020-02-28 10:51:04');
INSERT INTO `finance` VALUES('34884','53703','0.04','1','周期收益20元 第49期收益0.04元','990.67','2020-02-28 10:52:04');
INSERT INTO `finance` VALUES('34885','53703','0.04','1','周期收益20元 第50期收益0.04元','990.71','2020-02-28 10:53:03');
INSERT INTO `finance` VALUES('34886','53703','0.40','1','周期收益20元 第1期收益0.40元','990.75','2020-02-28 10:54:03');
INSERT INTO `finance` VALUES('34887','53703','0.40','1','周期收益20元 第2期收益0.40元','991.15','2020-02-28 10:55:03');
INSERT INTO `finance` VALUES('34888','53703','0.40','1','周期收益20元 第3期收益0.40元','991.55','2020-02-28 10:56:03');
INSERT INTO `finance` VALUES('34889','53703','0.40','1','周期收益20元 第4期收益0.40元','991.95','2020-02-28 10:57:02');
INSERT INTO `finance` VALUES('34890','53703','0.40','1','周期收益20元 第5期收益0.40元','992.35','2020-02-28 10:58:02');
INSERT INTO `finance` VALUES('34891','53703','0.40','1','周期收益20元 第6期收益0.40元','992.75','2020-02-28 10:59:02');
INSERT INTO `finance` VALUES('34892','53703','0.40','1','周期收益20元 第7期收益0.40元','993.15','2020-02-28 11:00:02');
INSERT INTO `finance` VALUES('34893','53703','0.40','1','周期收益20元 第8期收益0.40元','993.55','2020-02-28 11:01:02');
INSERT INTO `finance` VALUES('34894','53703','0.40','1','周期收益20元 第9期收益0.40元','993.95','2020-02-28 11:02:01');
INSERT INTO `finance` VALUES('34895','53703','0.40','1','周期收益20元 第10期收益0.40元','994.35','2020-02-28 11:03:01');
INSERT INTO `finance` VALUES('34896','53703','0.40','1','周期收益20元 第11期收益0.40元','994.75','2020-02-28 11:04:01');
INSERT INTO `finance` VALUES('34897','53703','0.40','1','周期收益20元 第12期收益0.40元','995.15','2020-02-28 11:05:01');
INSERT INTO `finance` VALUES('34898','53703','0.40','1','周期收益20元 第13期收益0.40元','995.55','2020-02-28 11:06:01');
INSERT INTO `finance` VALUES('34899','53703','0.40','1','周期收益20元 第14期收益0.40元','995.95','2020-02-28 11:07:00');
INSERT INTO `finance` VALUES('34900','53703','0.40','1','周期收益20元 第15期收益0.40元','996.35','2020-02-28 11:08:00');
INSERT INTO `finance` VALUES('34901','53703','0.40','1','周期收益20元 第16期收益0.40元','996.75','2020-02-28 11:09:00');
INSERT INTO `finance` VALUES('34902','53703','0.40','1','周期收益20元 第17期收益0.40元','997.15','2020-02-28 11:10:01');
INSERT INTO `finance` VALUES('34903','53703','0.40','1','周期收益20元 第18期收益0.40元','997.55','2020-02-28 11:10:59');
INSERT INTO `finance` VALUES('34904','53703','0.40','1','周期收益20元 第19期收益0.40元','997.95','2020-02-28 11:11:59');
INSERT INTO `finance` VALUES('34905','53703','0.40','1','周期收益20元 第20期收益0.40元','998.35','2020-02-28 11:12:58');
INSERT INTO `finance` VALUES('34906','53703','0.40','1','周期收益20元 第21期收益0.40元','998.75','2020-02-28 11:13:59');
INSERT INTO `finance` VALUES('34907','53703','0.40','1','周期收益20元 第22期收益0.40元','999.15','2020-02-28 11:14:58');
INSERT INTO `finance` VALUES('34908','53703','0.40','1','周期收益20元 第23期收益0.40元','999.55','2020-02-28 11:15:58');
INSERT INTO `finance` VALUES('34909','53703','0.40','1','周期收益20元 第24期收益0.40元','999.95','2020-02-28 11:17:00');
INSERT INTO `finance` VALUES('34910','53703','0.40','1','周期收益20元 第25期收益0.40元','1000.35','2020-02-28 11:17:57');
INSERT INTO `finance` VALUES('34911','53703','0.40','1','周期收益20元 第26期收益0.40元','1000.75','2020-02-28 11:18:58');
INSERT INTO `finance` VALUES('34912','53703','0.40','1','周期收益20元 第27期收益0.40元','1001.15','2020-02-28 11:19:56');
INSERT INTO `finance` VALUES('34913','53703','0.40','1','周期收益20元 第28期收益0.40元','1001.55','2020-02-28 11:20:56');
INSERT INTO `finance` VALUES('34914','53703','0.40','1','周期收益20元 第29期收益0.40元','1001.95','2020-02-28 11:21:55');
INSERT INTO `finance` VALUES('34915','53703','0.40','1','周期收益20元 第30期收益0.40元','1002.35','2020-02-28 11:22:55');
INSERT INTO `finance` VALUES('34916','53703','0.40','1','周期收益20元 第31期收益0.40元','1002.75','2020-02-28 11:23:54');
INSERT INTO `finance` VALUES('34917','53703','0.40','1','周期收益20元 第32期收益0.40元','1003.15','2020-02-28 11:24:54');
INSERT INTO `finance` VALUES('34918','53703','0.40','1','周期收益20元 第33期收益0.40元','1003.55','2020-02-28 11:25:54');
INSERT INTO `finance` VALUES('34919','53703','0.40','1','周期收益20元 第34期收益0.40元','1003.95','2020-02-28 11:26:55');
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

INSERT INTO `info` VALUES('1','金桔财富','金桔财富','','','','/mobile/kefu.html','/mobile/app.html','','','','0','','','请复制收款人、收款账号进行网银转账，网银转账10000元以上返1%（含10000元）入款后直接与在线客服联系！谢谢','','','','0','微信充值，长按二维码保存或截图二维码，打开微信，扫一扫，点击右上角相册，选择刚保存的二维码，充值即可。温馨提示：请您在充值的时候尽量不要充值整数，比如您要充值100元，您可以选择充值100.01元或99.99元，尽量在小数点选择比较特殊的金额，让系统更快识别您的充值订单，以免耽误您的投资，详细充值步骤可以看平台公告。','20191211222357.jpg','1','支付宝充值，长按二维码保存或截图二维码，打开支付宝，扫一扫，点击右上角相册，选择刚保存的二维码，充值即可。温馨提示：请您在充值的时候尽量不要充值整数，比如您要充值100元，您可以选择充值100.01元或99.99元，尽量在小数点选择比较特殊的金额，让系统更快识别您的充值订单，以免耽误您的投资，详细充值步骤可以看平台公告。','20191211222357.jpg','1','0','/Public/uploads/activity.png','0','1','0','1','three','无','','','','8|23','1','0','0','1');
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
) ENGINE=MyISAM AUTO_INCREMENT=2067 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目投资表';

--
-- 转存表中的数据 invest

INSERT INTO `invest` VALUES('2033','202002271859544948','53564','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-27 18:59:54','1','1582801224');
INSERT INTO `invest` VALUES('2034','202002271906129783','53703','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-27 19:06:12','1','1582801587');
INSERT INTO `invest` VALUES('2035','202002271920232022','54054','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-27 19:20:23','0','0');
INSERT INTO `invest` VALUES('2036','202002271920498089','53564','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-27 19:20:49','0','0');
INSERT INTO `invest` VALUES('2037','202002271931547530','53564','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-27 19:31:54','0','0');
INSERT INTO `invest` VALUES('2038','202002271932001459','54054','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-27 19:32:00','0','0');
INSERT INTO `invest` VALUES('2039','202002271932189112','53564','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-27 19:32:18','0','0');
INSERT INTO `invest` VALUES('2040','202002271932226376','54054','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-27 19:32:22','0','0');
INSERT INTO `invest` VALUES('2041','202002272035218661','53703','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-27 20:35:21','0','0');
INSERT INTO `invest` VALUES('2042','202002272036588625','53703','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-27 20:36:58','0','0');
INSERT INTO `invest` VALUES('2043','202002272037126796','53703','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-27 20:37:12','1','1582807045');
INSERT INTO `invest` VALUES('2044','202002272038577064','53703','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-27 20:38:57','1','1582807148');
INSERT INTO `invest` VALUES('2045','202002272043135207','53712','103','周期收益100元','50','50','4.00','0','到期还本还息','0','2020-02-27 20:43:13','0','0');
INSERT INTO `invest` VALUES('2046','202002272043235146','53712','103','周期收益100元','50','50','4.00','0','到期还本还息','0','2020-02-27 20:43:23','0','0');
INSERT INTO `invest` VALUES('2047','202002272044458150','53712','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-27 20:44:45','1','1582807528');
INSERT INTO `invest` VALUES('2048','202002272056473480','53708','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-27 20:56:47','1','1582808250');
INSERT INTO `invest` VALUES('2049','202002272314446885','53703','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-27 23:14:44','0','0');
INSERT INTO `invest` VALUES('2050','202002272315512301','53703','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-27 23:15:51','1','1582816575');
INSERT INTO `invest` VALUES('2051','202002272316381655','53703','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-27 23:16:38','1','1582816623');
INSERT INTO `invest` VALUES('2052','202002280040238932','53708','103','周期收益100元','50','50','4.00','0','到期还本还息','0','2020-02-28 00:40:23','0','0');
INSERT INTO `invest` VALUES('2053','202002280042456216','53708','103','周期收益100元','50','50','4.00','0','到期还本还息','0','2020-02-28 00:42:45','0','0');
INSERT INTO `invest` VALUES('2054','202002280050589629','53703','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-28 00:50:58','0','0');
INSERT INTO `invest` VALUES('2055','202002280051506057','53703','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-28 00:51:50','0','0');
INSERT INTO `invest` VALUES('2056','202002280103544194','53708','108','周期收益1000元','500','50','4.00','0','到期还本还息','0','2020-02-28 01:03:54','0','0');
INSERT INTO `invest` VALUES('2057','202002280104127971','53708','108','周期收益1000元','500','50','4.00','0','到期还本还息','0','2020-02-28 01:04:12','0','0');
INSERT INTO `invest` VALUES('2058','202002280108534413','53708','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-28 01:08:53','1','1582823350');
INSERT INTO `invest` VALUES('2059','202002280132052170','53703','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-28 01:32:05','0','0');
INSERT INTO `invest` VALUES('2060','202002280140567648','53703','112','周期收益20000元','10000','50','4.00','1','每日返息,两倍出局','0','2020-02-28 01:40:56','0','0');
INSERT INTO `invest` VALUES('2061','202002280714076388','53710','109','周期收益2000元','1000','50','4.00','1','每日返息,两倍出局','0','2020-02-28 07:14:07','0','0');
INSERT INTO `invest` VALUES('2062','202002280906113971','53703','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-28 09:06:11','0','0');
INSERT INTO `invest` VALUES('2063','','53703','102','周期收益20元','1','50','4.00','0','到期还本还息','0','2020-02-28 10:03:59','0','0');
INSERT INTO `invest` VALUES('2064','','53703','102','周期收益20元','10','50','4.00','0','到期还本还息','0','2020-02-28 10:08:03','0','0');
INSERT INTO `invest` VALUES('2065','','53703','102','周期收益20元','1','50','4.00','0','到期还本还息','0','2020-02-28 10:22:08','1','0');
INSERT INTO `invest` VALUES('2066','','53703','102','周期收益20元','1','50','4.00','0','到期还本还息','0','2020-02-28 10:22:48','1','0');
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
) ENGINE=MyISAM AUTO_INCREMENT=3987 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目投资详情表';

--
-- 转存表中的数据 invest_list

INSERT INTO `invest_list` VALUES('3286','53564','2033','1','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:00:20','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3287','53564','2033','2','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:01:20','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3288','53564','2033','3','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:02:20','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3289','53564','2033','4','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:03:20','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3290','53564','2033','5','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:04:19','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3291','53564','2033','6','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:05:21','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3292','53564','2033','7','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:06:19','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3293','53564','2033','8','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:07:19','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3294','53564','2033','9','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:08:19','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3295','53564','2033','10','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:09:18','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3296','53564','2033','11','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:10:18','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3297','53564','2033','12','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:11:21','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3298','53564','2033','13','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:12:18','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3299','53564','2033','14','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:13:18','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3300','53564','2033','15','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:14:18','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3301','53564','2033','16','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:15:18','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3302','53564','2033','17','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:16:18','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3303','53564','2033','18','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:17:17','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3304','53564','2033','19','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:18:17','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3305','53564','2033','20','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:19:16','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3306','53564','2033','21','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:20:16','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3307','53564','2033','22','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:21:16','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3308','53564','2033','23','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:22:16','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3309','53564','2033','24','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:23:16','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3310','53564','2033','25','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:24:16','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3311','53564','2033','26','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:25:16','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3312','53564','2033','27','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:26:16','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3313','53564','2033','28','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:27:15','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3314','53564','2033','29','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:28:15','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3315','53564','2033','30','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:29:15','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3316','53564','2033','31','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:30:15','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3317','53564','2033','32','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:31:15','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3318','53564','2033','33','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:32:15','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3319','53564','2033','34','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:33:15','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3320','53564','2033','35','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:34:14','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3321','53564','2033','36','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:35:16','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3322','53564','2033','37','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:36:14','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3323','53564','2033','38','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:37:14','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3324','53564','2033','39','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:38:14','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3325','53564','2033','40','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:39:17','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3326','53564','2033','41','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:40:13','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3327','53564','2033','42','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:41:14','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3328','53564','2033','43','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:42:14','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3329','53564','2033','44','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:43:13','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3330','53564','2033','45','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:44:13','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3331','53564','2033','46','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:45:13','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3332','53564','2033','47','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:46:13','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3333','53564','2033','48','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:47:13','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3334','53564','2033','49','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:48:13','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3335','53564','2033','50','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:49:13','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3336','53703','2034','1','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:50:12','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3337','53703','2034','2','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:51:13','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3338','53703','2034','3','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:52:12','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3339','53703','2034','4','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:53:12','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3340','53703','2034','5','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:54:12','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3341','53703','2034','6','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:55:12','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3342','53703','2034','7','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:56:11','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3343','53703','2034','8','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:57:12','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3344','53703','2034','9','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:58:11','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3345','53703','2034','10','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 19:59:11','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3346','53703','2034','11','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:00:11','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3347','53703','2034','12','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:01:11','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3348','53703','2034','13','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:02:10','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3349','53703','2034','14','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:03:10','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3350','53703','2034','15','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:04:10','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3351','53703','2034','16','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:05:11','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3352','53703','2034','17','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:06:10','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3353','53703','2034','18','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:07:10','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3354','53703','2034','19','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:08:09','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3355','53703','2034','20','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:09:12','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3356','53703','2034','21','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:10:09','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3357','53703','2034','22','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:11:10','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3358','53703','2034','23','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:12:09','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3359','53703','2034','24','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:13:09','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3360','53703','2034','25','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:14:09','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3361','53703','2034','26','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:15:09','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3362','53703','2034','27','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:16:09','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3363','53703','2034','28','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:17:09','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3364','53703','2034','29','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:18:08','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3365','53703','2034','30','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:19:08','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3366','53703','2034','31','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:20:08','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3367','53703','2034','32','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:21:08','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3368','53703','2034','33','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:22:07','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3369','53703','2034','34','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:23:07','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3370','53703','2034','35','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:24:07','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3371','53703','2034','36','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:25:07','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3372','53703','2034','37','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:26:07','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3373','53703','2034','38','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:27:06','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3374','53703','2034','39','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:28:06','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3375','53703','2034','40','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:29:06','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3376','53703','2034','41','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:30:06','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3377','53703','2034','42','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:31:06','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3378','53703','2034','43','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:32:06','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3379','53703','2034','44','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:33:06','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3380','53703','2034','45','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:34:06','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3381','53703','2034','46','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:35:07','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3382','53703','2034','47','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:36:05','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3383','53703','2034','48','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:37:05','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3384','53703','2034','49','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:38:05','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3385','53703','2034','50','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:39:08','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3386','54054','2035','1','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:40:05','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3387','54054','2035','2','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:41:05','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3388','54054','2035','3','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:42:04','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3389','54054','2035','4','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:43:04','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3390','54054','2035','5','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:44:04','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3391','54054','2035','6','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:45:05','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3392','54054','2035','7','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:46:04','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3393','54054','2035','8','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:47:03','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3394','54054','2035','9','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:48:03','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3395','54054','2035','10','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:49:03','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3396','54054','2035','11','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:50:03','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3397','54054','2035','12','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:51:03','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3398','54054','2035','13','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:52:03','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3399','54054','2035','14','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:53:03','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3400','54054','2035','15','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:54:03','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3401','54054','2035','16','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:55:03','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3402','54054','2035','17','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:56:03','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3403','54054','2035','18','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:57:02','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3404','54054','2035','19','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:58:03','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3405','54054','2035','20','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 20:59:02','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3406','54054','2035','21','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:00:02','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3407','54054','2035','22','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:01:02','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3408','54054','2035','23','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:02:02','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3409','54054','2035','24','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:03:02','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3410','54054','2035','25','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:04:02','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3411','54054','2035','26','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:05:02','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3412','54054','2035','27','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:06:01','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3413','54054','2035','28','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:07:01','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3414','54054','2035','29','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:08:01','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3415','54054','2035','30','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:09:01','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3416','54054','2035','31','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:10:01','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3417','54054','2035','32','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:11:00','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3418','54054','2035','33','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:12:00','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3419','54054','2035','34','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:13:00','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3420','54054','2035','35','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:14:00','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3421','54054','2035','36','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:14:39','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3422','54054','2035','37','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:14:41','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3423','54054','2035','38','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:14:42','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3424','54054','2035','39','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:14:44','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3425','54054','2035','40','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:14:45','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3426','54054','2035','41','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:14:47','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3427','54054','2035','42','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:14:48','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3428','54054','2035','43','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:14:50','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3429','54054','2035','44','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:14:50','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3430','54054','2035','45','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:14:52','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3431','54054','2035','46','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:14:53','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3432','54054','2035','47','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:14:54','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3433','54054','2035','48','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:14:56','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3434','54054','2035','49','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:14:57','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3435','54054','2035','50','周期收益20元','0.00','0.00','2020-02-27 00:00:00','2020-02-27 21:14:59','0.00','0.00','1');
INSERT INTO `invest_list` VALUES('3436','53703','2043','1','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 00:00:40','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3437','53703','2043','2','周期收益20元','0.40','0.00','2020-02-29 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3438','53703','2043','3','周期收益20元','0.40','0.00','2020-03-01 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3439','53703','2043','4','周期收益20元','0.40','0.00','2020-03-02 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3440','53703','2043','5','周期收益20元','0.40','0.00','2020-03-03 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3441','53703','2043','6','周期收益20元','0.40','0.00','2020-03-04 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3442','53703','2043','7','周期收益20元','0.40','0.00','2020-03-05 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3443','53703','2043','8','周期收益20元','0.40','0.00','2020-03-06 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3444','53703','2043','9','周期收益20元','0.40','0.00','2020-03-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3445','53703','2043','10','周期收益20元','0.40','0.00','2020-03-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3446','53703','2043','11','周期收益20元','0.40','0.00','2020-03-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3447','53703','2043','12','周期收益20元','0.40','0.00','2020-03-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3448','53703','2043','13','周期收益20元','0.40','0.00','2020-03-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3449','53703','2043','14','周期收益20元','0.40','0.00','2020-03-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3450','53703','2043','15','周期收益20元','0.40','0.00','2020-03-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3451','53703','2043','16','周期收益20元','0.40','0.00','2020-03-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3452','53703','2043','17','周期收益20元','0.40','0.00','2020-03-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3453','53703','2043','18','周期收益20元','0.40','0.00','2020-03-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3454','53703','2043','19','周期收益20元','0.40','0.00','2020-03-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3455','53703','2043','20','周期收益20元','0.40','0.00','2020-03-18 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3456','53703','2043','21','周期收益20元','0.40','0.00','2020-03-19 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3457','53703','2043','22','周期收益20元','0.40','0.00','2020-03-20 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3458','53703','2043','23','周期收益20元','0.40','0.00','2020-03-21 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3459','53703','2043','24','周期收益20元','0.40','0.00','2020-03-22 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3460','53703','2043','25','周期收益20元','0.40','0.00','2020-03-23 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3461','53703','2043','26','周期收益20元','0.40','0.00','2020-03-24 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3462','53703','2043','27','周期收益20元','0.40','0.00','2020-03-25 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3463','53703','2043','28','周期收益20元','0.40','0.00','2020-03-26 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3464','53703','2043','29','周期收益20元','0.40','0.00','2020-03-27 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3465','53703','2043','30','周期收益20元','0.40','0.00','2020-03-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3466','53703','2043','31','周期收益20元','0.40','0.00','2020-03-29 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3467','53703','2043','32','周期收益20元','0.40','0.00','2020-03-30 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3468','53703','2043','33','周期收益20元','0.40','0.00','2020-03-31 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3469','53703','2043','34','周期收益20元','0.40','0.00','2020-04-01 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3470','53703','2043','35','周期收益20元','0.40','0.00','2020-04-02 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3471','53703','2043','36','周期收益20元','0.40','0.00','2020-04-03 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3472','53703','2043','37','周期收益20元','0.40','0.00','2020-04-04 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3473','53703','2043','38','周期收益20元','0.40','0.00','2020-04-05 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3474','53703','2043','39','周期收益20元','0.40','0.00','2020-04-06 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3475','53703','2043','40','周期收益20元','0.40','0.00','2020-04-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3476','53703','2043','41','周期收益20元','0.40','0.00','2020-04-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3477','53703','2043','42','周期收益20元','0.40','0.00','2020-04-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3478','53703','2043','43','周期收益20元','0.40','0.00','2020-04-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3479','53703','2043','44','周期收益20元','0.40','0.00','2020-04-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3480','53703','2043','45','周期收益20元','0.40','0.00','2020-04-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3481','53703','2043','46','周期收益20元','0.40','0.00','2020-04-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3482','53703','2043','47','周期收益20元','0.40','0.00','2020-04-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3483','53703','2043','48','周期收益20元','0.40','0.00','2020-04-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3484','53703','2043','49','周期收益20元','0.40','0.00','2020-04-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3485','53703','2043','50','周期收益20元','0.40','0.00','2020-04-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3486','53703','2043','51','周期收益20元','0.40','0.00','2020-04-18 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3487','53703','2044','1','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 00:01:36','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3488','53703','2044','2','周期收益20元','0.40','0.00','2020-02-29 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3489','53703','2044','3','周期收益20元','0.40','0.00','2020-03-01 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3490','53703','2044','4','周期收益20元','0.40','0.00','2020-03-02 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3491','53703','2044','5','周期收益20元','0.40','0.00','2020-03-03 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3492','53703','2044','6','周期收益20元','0.40','0.00','2020-03-04 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3493','53703','2044','7','周期收益20元','0.40','0.00','2020-03-05 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3494','53703','2044','8','周期收益20元','0.40','0.00','2020-03-06 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3495','53703','2044','9','周期收益20元','0.40','0.00','2020-03-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3496','53703','2044','10','周期收益20元','0.40','0.00','2020-03-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3497','53703','2044','11','周期收益20元','0.40','0.00','2020-03-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3498','53703','2044','12','周期收益20元','0.40','0.00','2020-03-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3499','53703','2044','13','周期收益20元','0.40','0.00','2020-03-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3500','53703','2044','14','周期收益20元','0.40','0.00','2020-03-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3501','53703','2044','15','周期收益20元','0.40','0.00','2020-03-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3502','53703','2044','16','周期收益20元','0.40','0.00','2020-03-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3503','53703','2044','17','周期收益20元','0.40','0.00','2020-03-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3504','53703','2044','18','周期收益20元','0.40','0.00','2020-03-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3505','53703','2044','19','周期收益20元','0.40','0.00','2020-03-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3506','53703','2044','20','周期收益20元','0.40','0.00','2020-03-18 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3507','53703','2044','21','周期收益20元','0.40','0.00','2020-03-19 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3508','53703','2044','22','周期收益20元','0.40','0.00','2020-03-20 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3509','53703','2044','23','周期收益20元','0.40','0.00','2020-03-21 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3510','53703','2044','24','周期收益20元','0.40','0.00','2020-03-22 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3511','53703','2044','25','周期收益20元','0.40','0.00','2020-03-23 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3512','53703','2044','26','周期收益20元','0.40','0.00','2020-03-24 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3513','53703','2044','27','周期收益20元','0.40','0.00','2020-03-25 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3514','53703','2044','28','周期收益20元','0.40','0.00','2020-03-26 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3515','53703','2044','29','周期收益20元','0.40','0.00','2020-03-27 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3516','53703','2044','30','周期收益20元','0.40','0.00','2020-03-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3517','53703','2044','31','周期收益20元','0.40','0.00','2020-03-29 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3518','53703','2044','32','周期收益20元','0.40','0.00','2020-03-30 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3519','53703','2044','33','周期收益20元','0.40','0.00','2020-03-31 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3520','53703','2044','34','周期收益20元','0.40','0.00','2020-04-01 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3521','53703','2044','35','周期收益20元','0.40','0.00','2020-04-02 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3522','53703','2044','36','周期收益20元','0.40','0.00','2020-04-03 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3523','53703','2044','37','周期收益20元','0.40','0.00','2020-04-04 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3524','53703','2044','38','周期收益20元','0.40','0.00','2020-04-05 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3525','53703','2044','39','周期收益20元','0.40','0.00','2020-04-06 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3526','53703','2044','40','周期收益20元','0.40','0.00','2020-04-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3527','53703','2044','41','周期收益20元','0.40','0.00','2020-04-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3528','53703','2044','42','周期收益20元','0.40','0.00','2020-04-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3529','53703','2044','43','周期收益20元','0.40','0.00','2020-04-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3530','53703','2044','44','周期收益20元','0.40','0.00','2020-04-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3531','53703','2044','45','周期收益20元','0.40','0.00','2020-04-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3532','53703','2044','46','周期收益20元','0.40','0.00','2020-04-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3533','53703','2044','47','周期收益20元','0.40','0.00','2020-04-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3534','53703','2044','48','周期收益20元','0.40','0.00','2020-04-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3535','53703','2044','49','周期收益20元','0.40','0.00','2020-04-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3536','53703','2044','50','周期收益20元','0.40','0.00','2020-04-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3537','53712','2047','1','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 00:02:36','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3538','53712','2047','2','周期收益20元','0.40','0.00','2020-02-29 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3539','53712','2047','3','周期收益20元','0.40','0.00','2020-03-01 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3540','53712','2047','4','周期收益20元','0.40','0.00','2020-03-02 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3541','53712','2047','5','周期收益20元','0.40','0.00','2020-03-03 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3542','53712','2047','6','周期收益20元','0.40','0.00','2020-03-04 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3543','53712','2047','7','周期收益20元','0.40','0.00','2020-03-05 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3544','53712','2047','8','周期收益20元','0.40','0.00','2020-03-06 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3545','53712','2047','9','周期收益20元','0.40','0.00','2020-03-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3546','53712','2047','10','周期收益20元','0.40','0.00','2020-03-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3547','53712','2047','11','周期收益20元','0.40','0.00','2020-03-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3548','53712','2047','12','周期收益20元','0.40','0.00','2020-03-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3549','53712','2047','13','周期收益20元','0.40','0.00','2020-03-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3550','53712','2047','14','周期收益20元','0.40','0.00','2020-03-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3551','53712','2047','15','周期收益20元','0.40','0.00','2020-03-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3552','53712','2047','16','周期收益20元','0.40','0.00','2020-03-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3553','53712','2047','17','周期收益20元','0.40','0.00','2020-03-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3554','53712','2047','18','周期收益20元','0.40','0.00','2020-03-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3555','53712','2047','19','周期收益20元','0.40','0.00','2020-03-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3556','53712','2047','20','周期收益20元','0.40','0.00','2020-03-18 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3557','53712','2047','21','周期收益20元','0.40','0.00','2020-03-19 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3558','53712','2047','22','周期收益20元','0.40','0.00','2020-03-20 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3559','53712','2047','23','周期收益20元','0.40','0.00','2020-03-21 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3560','53712','2047','24','周期收益20元','0.40','0.00','2020-03-22 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3561','53712','2047','25','周期收益20元','0.40','0.00','2020-03-23 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3562','53712','2047','26','周期收益20元','0.40','0.00','2020-03-24 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3563','53712','2047','27','周期收益20元','0.40','0.00','2020-03-25 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3564','53712','2047','28','周期收益20元','0.40','0.00','2020-03-26 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3565','53712','2047','29','周期收益20元','0.40','0.00','2020-03-27 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3566','53712','2047','30','周期收益20元','0.40','0.00','2020-03-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3567','53712','2047','31','周期收益20元','0.40','0.00','2020-03-29 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3568','53712','2047','32','周期收益20元','0.40','0.00','2020-03-30 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3569','53712','2047','33','周期收益20元','0.40','0.00','2020-03-31 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3570','53712','2047','34','周期收益20元','0.40','0.00','2020-04-01 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3571','53712','2047','35','周期收益20元','0.40','0.00','2020-04-02 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3572','53712','2047','36','周期收益20元','0.40','0.00','2020-04-03 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3573','53712','2047','37','周期收益20元','0.40','0.00','2020-04-04 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3574','53712','2047','38','周期收益20元','0.40','0.00','2020-04-05 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3575','53712','2047','39','周期收益20元','0.40','0.00','2020-04-06 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3576','53712','2047','40','周期收益20元','0.40','0.00','2020-04-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3577','53712','2047','41','周期收益20元','0.40','0.00','2020-04-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3578','53712','2047','42','周期收益20元','0.40','0.00','2020-04-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3579','53712','2047','43','周期收益20元','0.40','0.00','2020-04-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3580','53712','2047','44','周期收益20元','0.40','0.00','2020-04-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3581','53712','2047','45','周期收益20元','0.40','0.00','2020-04-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3582','53712','2047','46','周期收益20元','0.40','0.00','2020-04-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3583','53712','2047','47','周期收益20元','0.40','0.00','2020-04-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3584','53712','2047','48','周期收益20元','0.40','0.00','2020-04-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3585','53712','2047','49','周期收益20元','0.40','0.00','2020-04-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3586','53712','2047','50','周期收益20元','0.40','0.00','2020-04-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3587','53708','2048','1','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 00:03:37','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3588','53708','2048','2','周期收益20元','0.40','0.00','2020-02-29 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3589','53708','2048','3','周期收益20元','0.40','0.00','2020-03-01 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3590','53708','2048','4','周期收益20元','0.40','0.00','2020-03-02 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3591','53708','2048','5','周期收益20元','0.40','0.00','2020-03-03 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3592','53708','2048','6','周期收益20元','0.40','0.00','2020-03-04 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3593','53708','2048','7','周期收益20元','0.40','0.00','2020-03-05 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3594','53708','2048','8','周期收益20元','0.40','0.00','2020-03-06 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3595','53708','2048','9','周期收益20元','0.40','0.00','2020-03-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3596','53708','2048','10','周期收益20元','0.40','0.00','2020-03-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3597','53708','2048','11','周期收益20元','0.40','0.00','2020-03-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3598','53708','2048','12','周期收益20元','0.40','0.00','2020-03-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3599','53708','2048','13','周期收益20元','0.40','0.00','2020-03-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3600','53708','2048','14','周期收益20元','0.40','0.00','2020-03-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3601','53708','2048','15','周期收益20元','0.40','0.00','2020-03-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3602','53708','2048','16','周期收益20元','0.40','0.00','2020-03-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3603','53708','2048','17','周期收益20元','0.40','0.00','2020-03-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3604','53708','2048','18','周期收益20元','0.40','0.00','2020-03-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3605','53708','2048','19','周期收益20元','0.40','0.00','2020-03-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3606','53708','2048','20','周期收益20元','0.40','0.00','2020-03-18 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3607','53708','2048','21','周期收益20元','0.40','0.00','2020-03-19 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3608','53708','2048','22','周期收益20元','0.40','0.00','2020-03-20 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3609','53708','2048','23','周期收益20元','0.40','0.00','2020-03-21 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3610','53708','2048','24','周期收益20元','0.40','0.00','2020-03-22 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3611','53708','2048','25','周期收益20元','0.40','0.00','2020-03-23 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3612','53708','2048','26','周期收益20元','0.40','0.00','2020-03-24 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3613','53708','2048','27','周期收益20元','0.40','0.00','2020-03-25 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3614','53708','2048','28','周期收益20元','0.40','0.00','2020-03-26 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3615','53708','2048','29','周期收益20元','0.40','0.00','2020-03-27 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3616','53708','2048','30','周期收益20元','0.40','0.00','2020-03-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3617','53708','2048','31','周期收益20元','0.40','0.00','2020-03-29 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3618','53708','2048','32','周期收益20元','0.40','0.00','2020-03-30 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3619','53708','2048','33','周期收益20元','0.40','0.00','2020-03-31 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3620','53708','2048','34','周期收益20元','0.40','0.00','2020-04-01 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3621','53708','2048','35','周期收益20元','0.40','0.00','2020-04-02 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3622','53708','2048','36','周期收益20元','0.40','0.00','2020-04-03 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3623','53708','2048','37','周期收益20元','0.40','0.00','2020-04-04 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3624','53708','2048','38','周期收益20元','0.40','0.00','2020-04-05 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3625','53708','2048','39','周期收益20元','0.40','0.00','2020-04-06 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3626','53708','2048','40','周期收益20元','0.40','0.00','2020-04-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3627','53708','2048','41','周期收益20元','0.40','0.00','2020-04-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3628','53708','2048','42','周期收益20元','0.40','0.00','2020-04-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3629','53708','2048','43','周期收益20元','0.40','0.00','2020-04-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3630','53708','2048','44','周期收益20元','0.40','0.00','2020-04-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3631','53708','2048','45','周期收益20元','0.40','0.00','2020-04-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3632','53708','2048','46','周期收益20元','0.40','0.00','2020-04-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3633','53708','2048','47','周期收益20元','0.40','0.00','2020-04-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3634','53708','2048','48','周期收益20元','0.40','0.00','2020-04-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3635','53708','2048','49','周期收益20元','0.40','0.00','2020-04-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3636','53708','2048','50','周期收益20元','0.40','0.00','2020-04-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3637','53703','2050','1','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 00:04:37','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3638','53703','2050','2','周期收益20元','0.40','0.00','2020-02-29 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3639','53703','2050','3','周期收益20元','0.40','0.00','2020-03-01 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3640','53703','2050','4','周期收益20元','0.40','0.00','2020-03-02 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3641','53703','2050','5','周期收益20元','0.40','0.00','2020-03-03 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3642','53703','2050','6','周期收益20元','0.40','0.00','2020-03-04 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3643','53703','2050','7','周期收益20元','0.40','0.00','2020-03-05 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3644','53703','2050','8','周期收益20元','0.40','0.00','2020-03-06 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3645','53703','2050','9','周期收益20元','0.40','0.00','2020-03-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3646','53703','2050','10','周期收益20元','0.40','0.00','2020-03-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3647','53703','2050','11','周期收益20元','0.40','0.00','2020-03-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3648','53703','2050','12','周期收益20元','0.40','0.00','2020-03-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3649','53703','2050','13','周期收益20元','0.40','0.00','2020-03-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3650','53703','2050','14','周期收益20元','0.40','0.00','2020-03-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3651','53703','2050','15','周期收益20元','0.40','0.00','2020-03-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3652','53703','2050','16','周期收益20元','0.40','0.00','2020-03-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3653','53703','2050','17','周期收益20元','0.40','0.00','2020-03-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3654','53703','2050','18','周期收益20元','0.40','0.00','2020-03-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3655','53703','2050','19','周期收益20元','0.40','0.00','2020-03-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3656','53703','2050','20','周期收益20元','0.40','0.00','2020-03-18 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3657','53703','2050','21','周期收益20元','0.40','0.00','2020-03-19 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3658','53703','2050','22','周期收益20元','0.40','0.00','2020-03-20 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3659','53703','2050','23','周期收益20元','0.40','0.00','2020-03-21 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3660','53703','2050','24','周期收益20元','0.40','0.00','2020-03-22 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3661','53703','2050','25','周期收益20元','0.40','0.00','2020-03-23 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3662','53703','2050','26','周期收益20元','0.40','0.00','2020-03-24 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3663','53703','2050','27','周期收益20元','0.40','0.00','2020-03-25 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3664','53703','2050','28','周期收益20元','0.40','0.00','2020-03-26 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3665','53703','2050','29','周期收益20元','0.40','0.00','2020-03-27 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3666','53703','2050','30','周期收益20元','0.40','0.00','2020-03-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3667','53703','2050','31','周期收益20元','0.40','0.00','2020-03-29 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3668','53703','2050','32','周期收益20元','0.40','0.00','2020-03-30 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3669','53703','2050','33','周期收益20元','0.40','0.00','2020-03-31 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3670','53703','2050','34','周期收益20元','0.40','0.00','2020-04-01 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3671','53703','2050','35','周期收益20元','0.40','0.00','2020-04-02 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3672','53703','2050','36','周期收益20元','0.40','0.00','2020-04-03 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3673','53703','2050','37','周期收益20元','0.40','0.00','2020-04-04 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3674','53703','2050','38','周期收益20元','0.40','0.00','2020-04-05 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3675','53703','2050','39','周期收益20元','0.40','0.00','2020-04-06 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3676','53703','2050','40','周期收益20元','0.40','0.00','2020-04-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3677','53703','2050','41','周期收益20元','0.40','0.00','2020-04-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3678','53703','2050','42','周期收益20元','0.40','0.00','2020-04-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3679','53703','2050','43','周期收益20元','0.40','0.00','2020-04-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3680','53703','2050','44','周期收益20元','0.40','0.00','2020-04-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3681','53703','2050','45','周期收益20元','0.40','0.00','2020-04-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3682','53703','2050','46','周期收益20元','0.40','0.00','2020-04-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3683','53703','2050','47','周期收益20元','0.40','0.00','2020-04-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3684','53703','2050','48','周期收益20元','0.40','0.00','2020-04-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3685','53703','2050','49','周期收益20元','0.40','0.00','2020-04-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3686','53703','2050','50','周期收益20元','0.40','0.00','2020-04-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3687','53703','2051','1','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 00:05:37','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3688','53703','2051','2','周期收益20元','0.40','0.00','2020-02-29 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3689','53703','2051','3','周期收益20元','0.40','0.00','2020-03-01 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3690','53703','2051','4','周期收益20元','0.40','0.00','2020-03-02 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3691','53703','2051','5','周期收益20元','0.40','0.00','2020-03-03 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3692','53703','2051','6','周期收益20元','0.40','0.00','2020-03-04 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3693','53703','2051','7','周期收益20元','0.40','0.00','2020-03-05 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3694','53703','2051','8','周期收益20元','0.40','0.00','2020-03-06 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3695','53703','2051','9','周期收益20元','0.40','0.00','2020-03-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3696','53703','2051','10','周期收益20元','0.40','0.00','2020-03-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3697','53703','2051','11','周期收益20元','0.40','0.00','2020-03-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3698','53703','2051','12','周期收益20元','0.40','0.00','2020-03-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3699','53703','2051','13','周期收益20元','0.40','0.00','2020-03-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3700','53703','2051','14','周期收益20元','0.40','0.00','2020-03-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3701','53703','2051','15','周期收益20元','0.40','0.00','2020-03-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3702','53703','2051','16','周期收益20元','0.40','0.00','2020-03-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3703','53703','2051','17','周期收益20元','0.40','0.00','2020-03-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3704','53703','2051','18','周期收益20元','0.40','0.00','2020-03-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3705','53703','2051','19','周期收益20元','0.40','0.00','2020-03-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3706','53703','2051','20','周期收益20元','0.40','0.00','2020-03-18 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3707','53703','2051','21','周期收益20元','0.40','0.00','2020-03-19 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3708','53703','2051','22','周期收益20元','0.40','0.00','2020-03-20 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3709','53703','2051','23','周期收益20元','0.40','0.00','2020-03-21 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3710','53703','2051','24','周期收益20元','0.40','0.00','2020-03-22 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3711','53703','2051','25','周期收益20元','0.40','0.00','2020-03-23 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3712','53703','2051','26','周期收益20元','0.40','0.00','2020-03-24 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3713','53703','2051','27','周期收益20元','0.40','0.00','2020-03-25 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3714','53703','2051','28','周期收益20元','0.40','0.00','2020-03-26 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3715','53703','2051','29','周期收益20元','0.40','0.00','2020-03-27 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3716','53703','2051','30','周期收益20元','0.40','0.00','2020-03-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3717','53703','2051','31','周期收益20元','0.40','0.00','2020-03-29 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3718','53703','2051','32','周期收益20元','0.40','0.00','2020-03-30 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3719','53703','2051','33','周期收益20元','0.40','0.00','2020-03-31 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3720','53703','2051','34','周期收益20元','0.40','0.00','2020-04-01 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3721','53703','2051','35','周期收益20元','0.40','0.00','2020-04-02 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3722','53703','2051','36','周期收益20元','0.40','0.00','2020-04-03 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3723','53703','2051','37','周期收益20元','0.40','0.00','2020-04-04 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3724','53703','2051','38','周期收益20元','0.40','0.00','2020-04-05 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3725','53703','2051','39','周期收益20元','0.40','0.00','2020-04-06 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3726','53703','2051','40','周期收益20元','0.40','0.00','2020-04-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3727','53703','2051','41','周期收益20元','0.40','0.00','2020-04-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3728','53703','2051','42','周期收益20元','0.40','0.00','2020-04-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3729','53703','2051','43','周期收益20元','0.40','0.00','2020-04-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3730','53703','2051','44','周期收益20元','0.40','0.00','2020-04-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3731','53703','2051','45','周期收益20元','0.40','0.00','2020-04-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3732','53703','2051','46','周期收益20元','0.40','0.00','2020-04-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3733','53703','2051','47','周期收益20元','0.40','0.00','2020-04-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3734','53703','2051','48','周期收益20元','0.40','0.00','2020-04-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3735','53703','2051','49','周期收益20元','0.40','0.00','2020-04-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3736','53703','2051','50','周期收益20元','0.40','0.00','2020-04-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3737','53708','2058','1','周期收益20元','0.40','0.00','2020-02-29 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3738','53708','2058','2','周期收益20元','0.40','0.00','2020-03-01 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3739','53708','2058','3','周期收益20元','0.40','0.00','2020-03-02 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3740','53708','2058','4','周期收益20元','0.40','0.00','2020-03-03 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3741','53708','2058','5','周期收益20元','0.40','0.00','2020-03-04 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3742','53708','2058','6','周期收益20元','0.40','0.00','2020-03-05 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3743','53708','2058','7','周期收益20元','0.40','0.00','2020-03-06 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3744','53708','2058','8','周期收益20元','0.40','0.00','2020-03-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3745','53708','2058','9','周期收益20元','0.40','0.00','2020-03-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3746','53708','2058','10','周期收益20元','0.40','0.00','2020-03-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3747','53708','2058','11','周期收益20元','0.40','0.00','2020-03-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3748','53708','2058','12','周期收益20元','0.40','0.00','2020-03-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3749','53708','2058','13','周期收益20元','0.40','0.00','2020-03-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3750','53708','2058','14','周期收益20元','0.40','0.00','2020-03-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3751','53708','2058','15','周期收益20元','0.40','0.00','2020-03-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3752','53708','2058','16','周期收益20元','0.40','0.00','2020-03-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3753','53708','2058','17','周期收益20元','0.40','0.00','2020-03-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3754','53708','2058','18','周期收益20元','0.40','0.00','2020-03-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3755','53708','2058','19','周期收益20元','0.40','0.00','2020-03-18 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3756','53708','2058','20','周期收益20元','0.40','0.00','2020-03-19 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3757','53708','2058','21','周期收益20元','0.40','0.00','2020-03-20 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3758','53708','2058','22','周期收益20元','0.40','0.00','2020-03-21 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3759','53708','2058','23','周期收益20元','0.40','0.00','2020-03-22 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3760','53708','2058','24','周期收益20元','0.40','0.00','2020-03-23 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3761','53708','2058','25','周期收益20元','0.40','0.00','2020-03-24 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3762','53708','2058','26','周期收益20元','0.40','0.00','2020-03-25 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3763','53708','2058','27','周期收益20元','0.40','0.00','2020-03-26 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3764','53708','2058','28','周期收益20元','0.40','0.00','2020-03-27 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3765','53708','2058','29','周期收益20元','0.40','0.00','2020-03-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3766','53708','2058','30','周期收益20元','0.40','0.00','2020-03-29 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3767','53708','2058','31','周期收益20元','0.40','0.00','2020-03-30 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3768','53708','2058','32','周期收益20元','0.40','0.00','2020-03-31 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3769','53708','2058','33','周期收益20元','0.40','0.00','2020-04-01 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3770','53708','2058','34','周期收益20元','0.40','0.00','2020-04-02 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3771','53708','2058','35','周期收益20元','0.40','0.00','2020-04-03 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3772','53708','2058','36','周期收益20元','0.40','0.00','2020-04-04 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3773','53708','2058','37','周期收益20元','0.40','0.00','2020-04-05 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3774','53708','2058','38','周期收益20元','0.40','0.00','2020-04-06 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3775','53708','2058','39','周期收益20元','0.40','0.00','2020-04-07 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3776','53708','2058','40','周期收益20元','0.40','0.00','2020-04-08 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3777','53708','2058','41','周期收益20元','0.40','0.00','2020-04-09 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3778','53708','2058','42','周期收益20元','0.40','0.00','2020-04-10 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3779','53708','2058','43','周期收益20元','0.40','0.00','2020-04-11 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3780','53708','2058','44','周期收益20元','0.40','0.00','2020-04-12 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3781','53708','2058','45','周期收益20元','0.40','0.00','2020-04-13 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3782','53708','2058','46','周期收益20元','0.40','0.00','2020-04-14 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3783','53708','2058','47','周期收益20元','0.40','0.00','2020-04-15 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3784','53708','2058','48','周期收益20元','0.40','0.00','2020-04-16 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3785','53708','2058','49','周期收益20元','0.40','0.00','2020-04-17 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3786','53708','2058','50','周期收益20元','0.40','0.00','2020-04-18 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3787','53703','2063','1','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:04:09','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3788','53703','2063','2','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:05:09','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3789','53703','2063','3','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:06:09','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3790','53703','2063','4','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:07:08','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3791','53703','2063','5','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:08:09','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3792','53703','2063','6','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:09:07','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3793','53703','2063','7','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:10:07','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3794','53703','2063','8','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:11:07','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3795','53703','2063','9','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:12:07','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3796','53703','2063','10','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:13:07','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3797','53703','2063','11','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:14:06','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3798','53703','2063','12','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:15:06','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3799','53703','2063','13','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:16:06','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3800','53703','2063','14','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:17:06','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3801','53703','2063','15','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:18:07','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3802','53703','2063','16','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:19:08','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3803','53703','2063','17','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:20:07','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3804','53703','2063','18','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:21:07','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3805','53703','2063','19','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:22:07','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3806','53703','2063','20','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:23:07','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3807','53703','2063','21','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:24:07','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3808','53703','2063','22','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:25:06','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3809','53703','2063','23','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:26:06','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3810','53703','2063','24','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:27:07','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3811','53703','2063','25','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:28:06','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3812','53703','2063','26','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:29:06','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3813','53703','2063','27','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:30:06','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3814','53703','2063','28','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:31:05','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3815','53703','2063','29','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:32:05','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3816','53703','2063','30','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:33:05','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3817','53703','2063','31','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:34:05','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3818','53703','2063','32','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:35:06','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3819','53703','2063','33','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:36:05','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3820','53703','2063','34','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:37:05','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3821','53703','2063','35','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:38:05','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3822','53703','2063','36','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:39:05','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3823','53703','2063','37','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:40:05','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3824','53703','2063','38','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:41:05','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3825','53703','2063','39','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:42:05','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3826','53703','2063','40','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:43:04','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3827','53703','2063','41','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:44:05','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3828','53703','2063','42','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:45:04','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3829','53703','2063','43','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:46:04','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3830','53703','2063','44','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:47:04','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3831','53703','2063','45','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:48:04','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3832','53703','2063','46','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:49:04','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3833','53703','2063','47','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:50:04','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3834','53703','2063','48','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:51:04','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3835','53703','2063','49','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:52:04','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3836','53703','2063','50','周期收益20元','0.04','0.00','2020-02-28 00:00:00','2020-02-28 10:53:03','0.04','0.04','1');
INSERT INTO `invest_list` VALUES('3837','53703','2064','1','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 10:54:03','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3838','53703','2064','2','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 10:55:03','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3839','53703','2064','3','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 10:56:03','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3840','53703','2064','4','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 10:57:02','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3841','53703','2064','5','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 10:58:02','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3842','53703','2064','6','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 10:59:02','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3843','53703','2064','7','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:00:02','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3844','53703','2064','8','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:01:01','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3845','53703','2064','9','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:02:01','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3846','53703','2064','10','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:03:01','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3847','53703','2064','11','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:04:01','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3848','53703','2064','12','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:05:01','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3849','53703','2064','13','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:06:01','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3850','53703','2064','14','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:07:00','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3851','53703','2064','15','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:08:00','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3852','53703','2064','16','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:09:00','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3853','53703','2064','17','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:10:01','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3854','53703','2064','18','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:10:59','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3855','53703','2064','19','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:11:59','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3856','53703','2064','20','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:12:58','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3857','53703','2064','21','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:13:59','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3858','53703','2064','22','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:14:58','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3859','53703','2064','23','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:15:57','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3860','53703','2064','24','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:17:00','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3861','53703','2064','25','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:17:57','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3862','53703','2064','26','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:18:58','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3863','53703','2064','27','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:19:56','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3864','53703','2064','28','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:20:56','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3865','53703','2064','29','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:21:55','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3866','53703','2064','30','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:22:55','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3867','53703','2064','31','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:23:54','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3868','53703','2064','32','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:24:54','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3869','53703','2064','33','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:25:54','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3870','53703','2064','34','周期收益20元','0.40','0.00','2020-02-28 00:00:00','2020-02-28 11:26:55','0.40','0.40','1');
INSERT INTO `invest_list` VALUES('3871','53703','2064','35','周期收益20元','0.40','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3872','53703','2064','36','周期收益20元','0.40','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3873','53703','2064','37','周期收益20元','0.40','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3874','53703','2064','38','周期收益20元','0.40','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3875','53703','2064','39','周期收益20元','0.40','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3876','53703','2064','40','周期收益20元','0.40','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3877','53703','2064','41','周期收益20元','0.40','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3878','53703','2064','42','周期收益20元','0.40','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3879','53703','2064','43','周期收益20元','0.40','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3880','53703','2064','44','周期收益20元','0.40','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3881','53703','2064','45','周期收益20元','0.40','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3882','53703','2064','46','周期收益20元','0.40','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3883','53703','2064','47','周期收益20元','0.40','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3884','53703','2064','48','周期收益20元','0.40','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3885','53703','2064','49','周期收益20元','0.40','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3886','53703','2064','50','周期收益20元','0.40','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.40','0.00','0');
INSERT INTO `invest_list` VALUES('3887','53703','2065','1','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3888','53703','2065','2','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3889','53703','2065','3','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3890','53703','2065','4','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3891','53703','2065','5','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3892','53703','2065','6','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3893','53703','2065','7','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3894','53703','2065','8','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3895','53703','2065','9','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3896','53703','2065','10','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3897','53703','2065','11','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3898','53703','2065','12','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3899','53703','2065','13','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3900','53703','2065','14','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3901','53703','2065','15','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3902','53703','2065','16','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3903','53703','2065','17','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3904','53703','2065','18','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3905','53703','2065','19','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3906','53703','2065','20','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3907','53703','2065','21','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3908','53703','2065','22','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3909','53703','2065','23','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3910','53703','2065','24','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3911','53703','2065','25','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3912','53703','2065','26','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3913','53703','2065','27','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3914','53703','2065','28','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3915','53703','2065','29','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3916','53703','2065','30','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3917','53703','2065','31','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3918','53703','2065','32','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3919','53703','2065','33','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3920','53703','2065','34','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3921','53703','2065','35','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3922','53703','2065','36','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3923','53703','2065','37','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3924','53703','2065','38','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3925','53703','2065','39','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3926','53703','2065','40','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3927','53703','2065','41','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3928','53703','2065','42','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3929','53703','2065','43','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3930','53703','2065','44','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3931','53703','2065','45','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3932','53703','2065','46','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3933','53703','2065','47','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3934','53703','2065','48','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3935','53703','2065','49','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3936','53703','2065','50','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3937','53703','2066','1','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3938','53703','2066','2','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3939','53703','2066','3','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3940','53703','2066','4','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3941','53703','2066','5','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3942','53703','2066','6','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3943','53703','2066','7','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3944','53703','2066','8','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3945','53703','2066','9','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3946','53703','2066','10','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3947','53703','2066','11','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3948','53703','2066','12','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3949','53703','2066','13','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3950','53703','2066','14','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3951','53703','2066','15','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3952','53703','2066','16','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3953','53703','2066','17','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3954','53703','2066','18','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3955','53703','2066','19','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3956','53703','2066','20','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3957','53703','2066','21','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3958','53703','2066','22','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3959','53703','2066','23','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3960','53703','2066','24','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3961','53703','2066','25','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3962','53703','2066','26','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3963','53703','2066','27','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3964','53703','2066','28','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3965','53703','2066','29','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3966','53703','2066','30','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3967','53703','2066','31','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3968','53703','2066','32','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3969','53703','2066','33','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3970','53703','2066','34','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3971','53703','2066','35','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3972','53703','2066','36','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3973','53703','2066','37','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3974','53703','2066','38','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3975','53703','2066','39','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3976','53703','2066','40','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3977','53703','2066','41','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3978','53703','2066','42','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3979','53703','2066','43','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3980','53703','2066','44','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3981','53703','2066','45','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3982','53703','2066','46','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3983','53703','2066','47','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3984','53703','2066','48','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3985','53703','2066','49','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
INSERT INTO `invest_list` VALUES('3986','53703','2066','50','周期收益20元','0.04','0.00','2020-02-28 00:00:00','0000-00-00 00:00:00','0.04','0.00','0');
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

INSERT INTO `item` VALUES('102','周期收益20元','','20200227233711.png','10000.00','4.00','0.00','50','0','10.00','10000.00','10000','','0','','2020-02-26 21:48:00','1','0.00','0.00','13','0');
INSERT INTO `item` VALUES('104','周期收益200元','','20200227234140.png','10000.00','4.00','0.00','50','0','100.00','0.00','10000','','0','','2020-02-27 15:10:25','2','0.00','0.00','13','0');
INSERT INTO `item` VALUES('103','周期收益100元','','20200226231635.png','10000.00','4.00','0.00','50','0','50.00','50.00','10000','','0','','2020-02-26 23:15:37','1','0.00','0.00','13','0');
INSERT INTO `item` VALUES('109','周期收益2000元','','20200227235024.png','10000.00','4.00','0.00','50','1','1000.00','10000.00','10000','','0','','2020-02-27 23:48:36','5','0.00','0.00','13','0');
INSERT INTO `item` VALUES('108','周期收益1000元','','20200227234600.png','10000.00','4.00','0.00','50','0','500.00','10000.00','10000','','0','','2020-02-27 23:44:45','3','0.00','0.00','13','0');
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
) ENGINE=MyISAM AUTO_INCREMENT=10971 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='充值表';

--
-- 转存表中的数据 recharge

INSERT INTO `recharge` VALUES('10948','53703','10.00','系统充值','PAY1582762973350','1','0','无','2020-02-27 08:22:53','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10949','53704','10.00','系统充值','PAY1582763042675','1','0','无','2020-02-27 08:24:02','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10950','53705','10.00','系统充值','PAY1582763145753','1','0','无','2020-02-27 08:25:45','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10951','53706','10.00','系统充值','PAY1582763208717','1','0','无','2020-02-27 08:26:48','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10952','53707','10.00','系统充值','PAY1582763314232','1','0','无','2020-02-27 08:28:34','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10953','53708','10.00','系统充值','PAY1582763376853','1','0','无','2020-02-27 08:29:36','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10954','53709','7.00','系统充值','PAY1582763434175','1','0','无','2020-02-27 08:30:34','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10955','53709','3.00','系统充值','PAY1582763738215','1','0','无','2020-02-27 08:35:38','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10956','53564','10.00','系统充值','PAY1582764216284','1','0','无','2020-02-27 08:43:36','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10957','53564','10.00','系统充值','PAY1582764216820','1','0','无','2020-02-27 08:43:36','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10958','53564','10.00','系统充值','PAY1582764216116','1','0','无','2020-02-27 08:43:36','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10959','53564','10.00','系统充值','PAY1582764217539','1','0','无','2020-02-27 08:43:37','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10960','53564','10.00','系统充值','PAY1582764217246','1','0','无','2020-02-27 08:43:37','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10961','53564','10.00','系统充值','PAY1582764217195','1','0','无','2020-02-27 08:43:37','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10962','53703','10.00','系统充值','PAY1582764236630','1','0','无','2020-02-27 08:43:56','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10963','53704','10.00','系统充值','PAY1582764260749','1','0','无','2020-02-27 08:44:20','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10964','53705','10.00','系统充值','PAY1582764276949','1','0','无','2020-02-27 08:44:36','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10965','53706','10.00','系统充值','PAY1582764298417','1','0','无','2020-02-27 08:44:58','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10966','53707','10.00','系统充值','PAY1582764317687','1','0','无','2020-02-27 08:45:17','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10967','53708','10.00','系统充值','PAY1582764335932','1','0','无','2020-02-27 08:45:35','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10968','53709','10.00','系统充值','PAY1582764355140','1','0','无','2020-02-27 08:45:55','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10969','54054','10.00','系统充值','PAY1582803074502','1','0','无','2020-02-27 19:31:14','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('10970','53703','1000.00','系统充值','PAY1582855420164','1','0','无','2020-02-28 10:03:40','0000-00-00 00:00:00');
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

INSERT INTO `reward` VALUES('1','0','0','0','3','2','1','0','0','10','500','','4|3|2|1|0.5|','8|6|2|1|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|','1','8','0.1');
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

INSERT INTO `station` VALUES('1','2','aaaaaaaaaaaaaaaaaa','1560088562');
INSERT INTO `station` VALUES('2','2','dsafaada','1560088647');
INSERT INTO `station` VALUES('3','2','dsssssssssss','1970-01-01 08:00:00');
INSERT INTO `station` VALUES('4','2','dsssssssss','2019-06-09 22:00:03');
INSERT INTO `station` VALUES('5','2','起初站内只有一只沙发和一张桌子，但现在已经有了电视机、艺术品，甚至装上了窗帘。ItstartedwithasofaatablenowhasaTV,artevencurtains.www.hjengli','2019-06-09 22:01:45');
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

INSERT INTO `team` VALUES('1','30|50|100');
INSERT INTO `team` VALUES('2','3|5|8');
INSERT INTO `team` VALUES('3','6|10|15');
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
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT '成长值',
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
) ENGINE=MyISAM AUTO_INCREMENT=54559 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员表';

--
-- 转存表中的数据 user

INSERT INTO `user` VALUES('54079','15214495761','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53718','0','0.00','0','0.00','0','0','0','2020-02-27 23:09:50','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53710','15526326905','邬立春','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53709','0','0.60','0','0.00','1582857571','0','0','2020-02-27 09:27:44','58.243.254.82','0','','0.00','0','15526326905','2');
INSERT INTO `user` VALUES('53707','13888888883','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53706','0','2.65','0','0.00','0','0','0','2020-02-27 08:21:34','58.243.254.82','0','10','0.00','0','','2');
INSERT INTO `user` VALUES('53708','13888888882','32','18695879324786657','1','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53707','0','0.50','30','0.40','1582849165','0','0','2020-02-27 08:21:58','58.243.254.82','0','10','0.00','0','','2');
INSERT INTO `user` VALUES('53709','13888888881','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53708','0','0.20','0','0.00','1582845310','0','0','2020-02-27 08:22:23','58.243.254.82','0','10','0.00','0','','2');
INSERT INTO `user` VALUES('53706','13888888884','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53705','0','1.25','0','0.00','1582845462','0','0','2020-02-27 08:21:12','58.243.254.82','0','10','0.00','0','','2');
INSERT INTO `user` VALUES('53704','13888888886','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53703','0','0.25','0','0.00','0','0','0','2020-02-27 08:19:35','58.243.254.82','0','10','0.00','0','','2');
INSERT INTO `user` VALUES('53705','13888888885','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53704','0','0.45','0','0.00','1582764593','0','0','2020-02-27 08:20:48','58.243.254.82','0','10','0.00','0','','2');
INSERT INTO `user` VALUES('53703','13888888887','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53564','0','1004.35','83','17.20','1582860415','0','0','2020-02-27 08:19:13','58.243.254.82','0','10','0.00','0','','2');
INSERT INTO `user` VALUES('53711','17347224148','邬立春','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53710','0','0.80','0','0.00','1582858359','0','0','2020-02-27 09:28:24','58.243.254.82','0','','0.00','0','17347224148','2');
INSERT INTO `user` VALUES('53712','18073789565','邬立春','432302197610106615','1','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53711','0','0.40','110','0.40','1582858792','0','2020-02-27 10:51:47','2020-02-27 09:28:58','58.243.254.82','0','','0.00','0','18073789565','2');
INSERT INTO `user` VALUES('53713','15020915337','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:32:24','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53714','15008262324','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:33:02','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53715','15627874857','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','1582793360','0','0','2020-02-27 09:33:37','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53716','15957119247','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:34:15','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53717','15180135388','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:34:50','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53718','18324351817','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:35:26','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53719','15011376459','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:36:06','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53720','19107472480','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:36:42','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53721','15070006641','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','1582793389','0','0','2020-02-27 09:37:22','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53722','13693302298','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:38:14','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53723','13390987488','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:38:47','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53724','18169479427','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:39:21','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53725','18093625749','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:40:04','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53726','18668994914','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:40:31','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53727','17635003285','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:41:00','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53728','13111085346','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','1582852623','0','0','2020-02-27 09:41:30','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53729','13429475178','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:42:07','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53730','16651385152','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:42:46','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53731','16726383685','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:43:20','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53732','17643192854','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:43:52','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53733','13911355313','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:44:33','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53734','18088177576','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:45:05','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53735','13594572114','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:45:39','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53736','18812126721','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:46:11','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53737','13853739789','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:46:41','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53738','13869984000','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:47:12','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53739','13963007101','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:47:42','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53740','13237539399','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:48:13','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53741','13824741341','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:48:44','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53742','17319258057','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:49:14','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53743','15504329071','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','10','0.00','0','0','0','2020-02-27 09:49:43','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53744','15623370693','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:50:12','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53745','13737244905','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53712','0','0.00','0','0.00','0','0','0','2020-02-27 09:50:46','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53746','15256336862','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53709','0','0.00','10','0.00','1582854909','0','0','2020-02-27 09:59:10','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53747','18952336573','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53746','0','0.00','10','0.00','0','0','0','2020-02-27 10:05:48','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53748','15017043238','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53746','0','0.00','10','0.00','0','0','0','2020-02-27 10:06:27','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53749','15913304703','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53746','0','0.00','10','0.00','0','0','0','2020-02-27 10:07:38','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53750','18539500798','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53746','0','0.00','10','0.00','0','0','0','2020-02-27 10:09:08','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53751','13409926750','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53705','0','0.00','0','0.00','1582802274','0','0','2020-02-27 10:10:11','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53752','18093626233','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53725','0','0.00','0','0.00','0','0','0','2020-02-27 10:10:12','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53753','13274855158','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53746','0','0.00','10','0.00','0','0','0','2020-02-27 10:10:21','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53754','18506072597','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53751','0','0.00','0','0.00','1582859551','0','0','2020-02-27 10:10:32','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53755','18133932585','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53754','0','0.00','0','0.00','1582858458','0','0','2020-02-27 10:11:03','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53756','18565880832','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53746','0','0.00','10','0.00','0','0','0','2020-02-27 10:11:12','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53757','18093627883','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53752','0','0.00','0','0.00','0','0','0','2020-02-27 10:11:29','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53758','17853818373','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53746','0','0.00','10','0.00','0','0','0','2020-02-27 10:12:11','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53759','15565154593','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:12:25','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53760','18116870800','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53755','0','0.00','0','0.00','0','0','0','2020-02-27 10:12:30','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53761','13322050579','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53754','0','0.00','0','0.00','1582857100','0','0','2020-02-27 10:13:06','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53762','13362230797','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:13:08','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53763','13716748152','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53746','0','0.00','10','0.00','0','0','0','2020-02-27 10:13:17','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53764','13641418257','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53754','0','0.00','0','0.00','0','0','0','2020-02-27 10:13:35','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53765','19842510302','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:13:51','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53766','13687394941','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53760','0','0.00','0','0.00','0','0','0','2020-02-27 10:14:07','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53767','17118770502','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53746','0','0.00','10','0.00','0','0','0','2020-02-27 10:14:14','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53768','18670110763','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:14:22','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53769','13754168444','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:14:55','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53770','13775980295','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:15:30','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53771','18099920839','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53755','0','0.00','0','0.00','0','0','0','2020-02-27 10:16:06','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53772','18310237109','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53754','0','0.00','0','0.00','0','0','0','2020-02-27 10:16:36','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53773','13785183610','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:16:58','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53774','15898337424','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53754','0','0.00','0','0.00','0','0','0','2020-02-27 10:17:04','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53775','18940319315','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53774','0','0.00','0','0.00','0','0','0','2020-02-27 10:17:33','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53776','17821828613','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:17:52','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53777','15540699762','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53774','0','0.00','0','0.00','0','0','0','2020-02-27 10:18:03','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53778','13904916325','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53775','0','0.00','0','0.00','0','0','0','2020-02-27 10:18:31','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53779','18887983350','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:18:32','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53780','17553841898','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53758','0','0.00','10','0.00','1582772869','0','0','2020-02-27 10:18:50','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53781','15842185305','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53778','0','0.00','0','0.00','0','0','0','2020-02-27 10:19:04','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53782','18533758562','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:19:05','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53783','19906973776','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53780','0','0.00','10','0.00','0','0','0','2020-02-27 10:19:32','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53784','13137768510','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:19:34','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53785','13464254947','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53778','0','0.00','0','0.00','0','0','0','2020-02-27 10:19:35','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53786','15636755466','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53780','0','0.00','10','0.00','0','0','0','2020-02-27 10:20:11','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53787','13944162628','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53771','0','0.00','0','0.00','0','0','0','2020-02-27 10:20:15','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53788','13961036142','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:20:28','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53789','13575749716','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53775','0','0.00','0','0.00','0','0','0','2020-02-27 10:20:45','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53790','13546326024','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53775','0','0.00','0','0.00','0','0','0','2020-02-27 10:21:16','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53791','13854819458','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53780','0','0.00','10','0.00','0','0','0','2020-02-27 10:22:03','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53792','18203319062','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53780','0','0.00','10','0.00','0','0','0','2020-02-27 10:22:39','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53793','13513439579','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:22:42','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53794','13863473458','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53775','0','0.00','0','0.00','0','0','0','2020-02-27 10:22:44','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53795','15536667639','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:23:10','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53796','18652287998','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53774','0','0.00','0','0.00','0','0','0','2020-02-27 10:23:14','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53797','18470334238','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:23:37','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54076','13656834791','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53718','0','0.00','0','0.00','0','0','0','2020-02-27 23:08:13','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53799','13673593108','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:24:06','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53800','17608123222','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53755','0','0.00','0','0.00','0','0','0','2020-02-27 10:24:09','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53801','18158263510','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:24:34','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53802','13814080806','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53755','0','0.00','0','0.00','0','0','0','2020-02-27 10:24:38','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53803','13280537802','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53755','0','0.00','0','0.00','0','0','0','2020-02-27 10:25:05','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53804','18877724117','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:25:06','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53805','15118019144','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:25:32','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53806','18745280827','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53803','0','0.00','0','0.00','0','0','0','2020-02-27 10:25:33','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53807','13508604267','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53803','0','0.00','0','0.00','0','0','0','2020-02-27 10:25:59','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53808','19881553078','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:26:17','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53809','13946272752','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53806','0','0.00','0','0.00','0','0','0','2020-02-27 10:26:27','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53810','13706647229','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:26:51','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53811','17399142527','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53755','0','0.00','0','0.00','0','0','0','2020-02-27 10:26:58','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53812','13255871339','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:27:19','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54074','13053324218','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53718','0','0.00','0','0.00','0','0','0','2020-02-27 23:07:08','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53814','18473987011','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:27:48','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54073','15840949258','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53920','0','0.00','0','0.00','0','0','0','2020-02-27 23:06:16','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53816','15501772669','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:28:24','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54072','18057802113','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53718','0','0.00','0','0.00','0','0','0','2020-02-27 23:06:06','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53818','13870604773','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53780','0','0.00','10','0.00','0','0','0','2020-02-27 10:28:28','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53819','13712208973','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:28:54','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54071','13149582688','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53920','0','0.00','0','0.00','0','0','0','2020-02-27 23:05:43','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53821','19961591254','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:29:22','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54070','15940919433','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53920','0','0.00','0','0.00','0','0','0','2020-02-27 23:05:24','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53823','18236473931','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:29:51','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53824','15975177593','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:30:23','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54069','17175967415','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53920','0','0.00','0','0.00','0','0','0','2020-02-27 23:04:58','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53826','18818771657','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53811','0','0.00','0','0.00','0','0','0','2020-02-27 10:31:03','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53827','18760161178','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53783','0','0.00','10','0.00','0','0','0','2020-02-27 10:31:09','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53829','19925243419','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53826','0','0.00','0','0.00','0','0','0','2020-02-27 10:31:36','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53830','18532112070','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53792','0','0.00','10','0.00','0','0','0','2020-02-27 10:31:43','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53831','18344533476','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:31:50','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53832','15889473576','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53829','0','0.00','0','0.00','0','0','0','2020-02-27 10:32:06','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53833','13289178873','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53792','0','0.00','10','0.00','0','0','0','2020-02-27 10:32:08','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53834','15169267833','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:32:18','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53835','13510580382','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53832','0','0.00','0','0.00','0','0','0','2020-02-27 10:32:32','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53836','13328696783','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:32:44','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54077','13220338796','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53718','0','0.00','0','0.00','0','0','0','2020-02-27 23:08:42','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53838','18705088290','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53757','0','0.00','0','0.00','0','0','0','2020-02-27 10:33:10','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54075','15900122894','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53718','0','0.00','0','0.00','0','0','0','2020-02-27 23:07:45','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54068','18613355602','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53718','0','0.00','0','0.00','0','0','0','2020-02-27 23:04:48','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54067','15957911216','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53718','0','0.00','0','0.00','0','0','0','2020-02-27 23:04:14','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54066','13114616815','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53920','0','0.00','0','0.00','0','0','0','2020-02-27 23:04:09','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53844','13693049441','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53763','0','0.00','10','0.00','0','0','0','2020-02-27 10:37:00','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53845','13155826808','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:37:07','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54065','13936176848','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53920','0','0.00','0','0.00','0','0','0','2020-02-27 23:03:52','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54064','13597227508','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53718','0','0.00','0','0.00','0','0','0','2020-02-27 23:03:42','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53848','18249043672','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:37:39','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53849','13521129585','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53844','0','0.00','10','0.00','0','0','0','2020-02-27 10:37:49','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53850','13083026634','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:38:10','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54063','15046051248','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53920','0','0.00','0','0.00','0','0','0','2020-02-27 23:03:17','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53852','18518884108','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53849','0','0.00','10','0.00','0','0','0','2020-02-27 10:38:30','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53853','18365132558','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:38:37','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54080','19981681087','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53718','0','0.00','0','0.00','0','0','0','2020-02-27 23:10:21','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54062','15067342926','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53718','0','0.00','0','0.00','0','0','0','2020-02-27 23:02:48','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53856','17324806505','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:39:05','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53857','18736390046','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53849','0','0.00','10','0.00','0','0','0','2020-02-27 10:39:10','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54061','18345183569','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53920','0','0.00','0','0.00','0','0','0','2020-02-27 23:02:24','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54060','17645256761','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53718','0','0.00','0','0.00','0','0','0','2020-02-27 23:02:19','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53860','15770886511','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:40:12','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54059','13351279013','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53920','0','0.00','0','0.00','0','0','0','2020-02-27 23:01:54','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54058','13268213460','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53718','0','0.00','0','0.00','0','0','0','2020-02-27 23:01:23','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53863','13568639921','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:41:07','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54057','15825735916','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53718','0','0.00','0','0.00','0','0','0','2020-02-27 23:00:46','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53865','18134242515','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:41:34','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53866','15348886579','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53761','0','0.00','0','0.00','0','0','0','2020-02-27 10:41:45','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53867','13738125299','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:42:02','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53868','17694871665','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53866','0','0.00','0','0.00','0','0','0','2020-02-27 10:42:09','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53869','15980365227','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:42:33','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53870','15993782893','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53866','0','0.00','0','0.00','0','0','0','2020-02-27 10:42:37','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53871','13939141998','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53870','0','0.00','0','0.00','0','0','0','2020-02-27 10:43:02','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53872','13651775848','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53802','0','0.00','0','0.00','0','0','0','2020-02-27 10:43:59','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53873','15005163884','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53802','0','0.00','0','0.00','0','0','0','2020-02-27 10:44:24','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53874','15290857844','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53802','0','0.00','0','0.00','0','0','0','2020-02-27 10:44:49','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53875','15098899392','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53866','0','0.00','0','0.00','0','0','0','2020-02-27 10:45:13','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53876','13751866498','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53802','0','0.00','0','0.00','0','0','0','2020-02-27 10:45:40','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53877','13540212883','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53866','0','0.00','0','0.00','0','0','0','2020-02-27 10:46:05','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53878','17583105410','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53877','0','0.00','0','0.00','0','0','0','2020-02-27 10:46:30','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53879','13002835281','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53877','0','0.00','0','0.00','0','0','0','2020-02-27 10:46:56','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53880','18241459133','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53771','0','0.00','0','0.00','0','0','0','2020-02-27 10:47:21','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53881','18453355143','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:47:55','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53882','13190474891','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53880','0','0.00','0','0.00','0','0','0','2020-02-27 10:48:03','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53883','13751303350','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:48:23','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53884','15640862467','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53754','0','0.00','0','0.00','1582857187','0','0','2020-02-27 10:48:33','117.136.103.111','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53885','17634779115','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:48:55','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53886','15027522266','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:49:25','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53887','17820427775','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:49:56','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53888','15103845081','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53746','0','0.00','0','0.00','1582817915','0','0','2020-02-27 10:50:54','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53889','15103845082','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53888','0','0.00','0','0.00','0','0','0','2020-02-27 10:52:38','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53890','15157596958','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:53:09','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53891','18746782981','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:53:36','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53892','18359333900','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:54:08','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53893','15103845083','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53889','0','0.00','0','0.00','1582773316','0','0','2020-02-27 10:54:11','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53894','13637116736','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:54:37','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53895','18176445220','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:55:04','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53896','16559160547','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:55:31','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53897','15145350368','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:56:01','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53898','18270244582','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:56:32','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53899','15128864485','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:57:02','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53900','15797700306','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:57:31','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53901','15143492517','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:57:57','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53902','13887866589','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53893','0','0.00','0','0.00','0','0','0','2020-02-27 10:58:00','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53903','15083222394','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:58:26','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53904','13540401798','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53893','0','0.00','0','0.00','0','0','0','2020-02-27 10:58:29','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53905','16608329218','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53893','0','0.00','0','0.00','0','0','0','2020-02-27 10:58:57','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53906','15759766705','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:59:02','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53907','13086647666','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:59:30','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53908','18560646869','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53893','0','0.00','0','0.00','0','0','0','2020-02-27 10:59:34','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53909','18377010525','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 10:59:58','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53910','15140142363','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 11:00:28','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53911','18403829940','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 11:00:55','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53912','15851494368','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53893','0','0.00','0','0.00','0','0','0','2020-02-27 11:00:59','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53913','18831524961','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 11:01:23','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53914','13136228475','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 11:01:54','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53915','15119616232','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53893','0','0.00','0','0.00','0','0','0','2020-02-27 11:02:13','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53916','15081456345','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 11:02:29','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53917','13547392990','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 11:02:59','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53918','15232451897','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 11:03:26','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53919','15363973139','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 11:03:58','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53920','13130456858','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53893','0','0.00','0','0.00','1582783316','0','0','2020-02-27 11:04:00','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53921','18832515149','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 11:04:29','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53922','15093547956','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53893','0','0.00','10','0.00','0','0','0','2020-02-27 11:04:33','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53923','18075796107','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 11:04:56','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53924','16504038315','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 11:05:27','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53925','18724624702','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 11:06:02','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53926','13383800483','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 11:06:29','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53927','15030494115','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 11:06:57','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53928','15128861984','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53721','0','0.00','0','0.00','0','0','0','2020-02-27 11:07:24','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53929','13192880453','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:09:54','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53930','18823646068','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:10:31','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53931','18934722092','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:11:09','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53932','15844387091','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53893','0','0.00','0','0.00','0','0','0','2020-02-27 11:13:11','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53963','16532872611','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:29:48','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53933','13397810619','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:16:03','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53934','18504225793','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:16:32','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53935','17610466036','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:17:04','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53936','13969523098','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:17:33','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53937','18365738816','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:18:01','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53938','13432055086','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:18:48','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53939','18354447260','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:19:17','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53940','15882587964','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:19:49','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53941','13962024770','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:20:18','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53942','13864689356','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:20:53','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53943','18236688777','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:21:20','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53944','18963977503','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:21:45','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53945','13416573227','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:22:10','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53946','18288177766','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53902','0','0.00','0','0.00','0','0','0','2020-02-27 11:22:12','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53947','15816205821','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:22:42','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53948','17708246622','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:23:11','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53949','18988203503','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53946','0','0.00','0','0.00','0','0','0','2020-02-27 11:23:20','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53950','13376731033','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:23:37','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53951','19986793692','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:24:21','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53952','18029859109','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:24:48','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53953','13892921399','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:25:14','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53954','18358863086','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:25:45','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53955','13196122718','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:26:14','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53956','18973575561','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:26:51','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53957','18456527862','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:27:21','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53958','15812997404','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:27:49','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53959','16532874311','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:28:19','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53960','16532872711','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:28:46','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53961','15987567687','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53949','0','0.00','0','0.00','0','0','0','2020-02-27 11:29:07','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53962','16532873811','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:29:13','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53964','18125855668','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:30:35','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53965','13988217911','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53949','0','0.00','10','0.00','0','0','0','2020-02-27 11:30:42','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53966','13569795350','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53893','0','0.00','0','0.00','0','0','0','2020-02-27 11:30:43','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53967','18938812063','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:31:02','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53968','18933057463','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:32:07','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53969','15916450265','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:32:39','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53970','13990177880','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53949','0','0.00','0','0.00','0','0','0','2020-02-27 11:32:58','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53971','15992321311','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:33:12','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53972','15251063891','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:33:48','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53973','13946309912','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:34:17','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53974','15095149315','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:34:47','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53975','13361551758','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:35:15','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53976','15192499922','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:37:06','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53977','13578260099','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53965','0','0.00','10','0.00','0','0','0','2020-02-27 11:37:10','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53978','13892906699','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:38:10','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53979','18288110118','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53965','0','0.00','10','0.00','0','0','0','2020-02-27 11:38:14','223.89.128.227','0','','0.00','0','admin','2');
INSERT INTO `user` VALUES('53980','13992063698','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:38:43','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53981','13892098959','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:39:16','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53982','13796190671','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:39:45','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53983','18313065219','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53979','0','0.00','0','0.00','0','0','0','2020-02-27 11:40:08','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53984','13684936417','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:40:10','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53985','13651301085','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:40:37','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53986','13988286837','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53979','0','0.00','10','0.00','0','0','0','2020-02-27 11:41:10','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53987','15098660899','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:41:15','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53988','13780924133','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:41:44','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53989','18306993627','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53979','0','0.00','10','0.00','0','0','0','2020-02-27 11:41:47','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53990','17606952980','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53983','0','0.00','10','0.00','0','0','0','2020-02-27 11:42:38','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53991','13792539873','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:42:45','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53992','17763069356','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:43:21','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53993','18988210992','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53989','0','0.00','10','0.00','0','0','0','2020-02-27 11:43:32','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53994','17763059356','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:44:29','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53995','13532087643','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:44:59','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53996','13708629645','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53989','0','0.00','10','0.00','0','0','0','2020-02-27 11:45:20','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53997','15887552872','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53989','0','0.00','10','0.00','0','0','0','2020-02-27 11:46:03','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53998','18696081786','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:46:26','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('53999','17703763891','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53966','0','0.00','0','0.00','0','0','0','2020-02-27 11:48:42','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54000','13161270907','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:49:10','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54001','13526028131','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53966','0','0.00','0','0.00','0','0','0','2020-02-27 11:49:25','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54002','18701229097','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:49:38','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54003','15837637081','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53966','0','0.00','0','0.00','0','0','0','2020-02-27 11:50:15','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54004','15322710018','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:50:15','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54005','13802300825','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:50:45','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54006','15937600188','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53966','0','0.00','0','0.00','0','0','0','2020-02-27 11:50:59','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54007','13553700097','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:51:15','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54008','13715823135','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:51:48','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54009','15218539222','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:52:22','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54010','15137637946','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53966','0','0.00','0','0.00','0','0','0','2020-02-27 11:52:32','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54011','13569772714','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53966','0','0.00','0','0.00','0','0','0','2020-02-27 11:53:10','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54012','13670734639','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:53:11','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54013','13974377685','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:53:43','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54014','15029475061','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:54:20','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54015','15606569656','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:54:58','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54016','18059193696','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53932','0','0.00','0','0.00','0','0','0','2020-02-27 11:54:59','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54017','13076481000','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:55:29','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54018','13682610516','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53932','0','0.00','0','0.00','0','0','0','2020-02-27 11:55:51','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54019','18933051463','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:55:57','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54020','18262621737','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53932','0','0.00','0','0.00','0','0','0','2020-02-27 11:56:54','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54021','13591383978','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53920','0','0.00','0','0.00','0','0','0','2020-02-27 11:56:59','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54022','17620782323','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53932','0','0.00','0','0.00','0','0','0','2020-02-27 11:57:25','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54023','13349517630','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53920','0','0.00','0','0.00','0','0','0','2020-02-27 11:57:32','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54024','17676104313','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:58:02','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54025','18800434759','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53920','0','0.00','0','0.00','0','0','0','2020-02-27 11:58:04','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54026','18150039293','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54016','0','0.00','0','0.00','0','0','0','2020-02-27 11:58:21','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54027','13380476773','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-27 11:58:33','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54028','13613675146','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53920','0','0.00','0','0.00','0','0','0','2020-02-27 11:58:38','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54029','13674683453','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53920','0','0.00','0','0.00','0','0','0','2020-02-27 11:59:20','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54030','13212926110','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53920','0','0.00','0','0.00','0','0','0','2020-02-27 11:59:50','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54031','13212906119','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53920','0','0.00','0','0.00','0','0','0','2020-02-27 12:00:22','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54032','15939629410','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53922','0','0.00','10','0.00','0','0','0','2020-02-27 12:01:08','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54033','13069882013','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53920','0','0.00','0','0.00','0','0','0','2020-02-27 12:01:32','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54034','15542194019','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54032','0','0.00','0','0.00','0','0','0','2020-02-27 12:02:10','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54035','15939624123','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54032','0','0.00','0','0.00','0','0','0','2020-02-27 12:04:41','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54036','18676382349','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53713','0','0.00','0','0.00','0','0','0','2020-02-27 12:54:31','58.243.254.82','0','','0.00','0','admin','2');
INSERT INTO `user` VALUES('54037','17316254870','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53713','0','0.00','0','0.00','0','0','0','2020-02-27 12:55:03','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54038','18106331452','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53713','0','0.00','0','0.00','0','0','0','2020-02-27 12:55:34','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54039','13826203280','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53713','0','0.00','0','0.00','0','0','0','2020-02-27 12:56:04','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54040','15838506732','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53713','0','0.00','0','0.00','0','0','0','2020-02-27 12:56:34','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54041','18985633931','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53713','0','0.00','0','0.00','0','0','0','2020-02-27 12:57:04','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54042','15054253967','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53713','0','0.00','0','0.00','0','0','0','2020-02-27 12:57:43','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54043','15981340190','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53713','0','0.00','0','0.00','0','0','0','2020-02-27 12:58:13','58.243.254.82','0','','0.00','0','admin','2');
INSERT INTO `user` VALUES('54044','15820522683','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53741','0','0.00','0','0.00','0','0','0','2020-02-27 13:00:17','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54045','15800139181','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53741','0','0.00','0','0.00','0','0','0','2020-02-27 13:00:50','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54046','18676135332','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53741','0','0.00','0','0.00','0','0','0','2020-02-27 13:01:22','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54047','18680592000','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53741','0','0.00','0','0.00','0','0','0','2020-02-27 13:01:57','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54048','13401880087','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53730','0','0.00','0','0.00','0','0','0','2020-02-27 13:02:34','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54049','17849830786','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53730','0','0.00','0','0.00','0','0','0','2020-02-27 13:03:01','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54078','15134122673','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53718','0','0.00','0','0.00','0','0','0','2020-02-27 23:09:13','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54140','13927570620','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:29:00','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54056','17304222663','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53718','0','0.00','0','0.00','0','0','0','2020-02-27 23:00:12','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54081','15706449265','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54021','0','0.00','0','0.00','0','0','0','2020-02-27 23:11:44','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54082','13525632273','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54021','0','0.00','0','0.00','0','0','0','2020-02-27 23:12:59','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54083','13271241621','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54021','0','0.00','0','0.00','0','0','0','2020-02-27 23:13:34','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54084','13796669364','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54021','0','0.00','0','0.00','0','0','0','2020-02-27 23:14:00','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54085','13479465140','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:14:09','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54086','18679539929','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54021','0','0.00','0','0.00','0','0','0','2020-02-27 23:14:28','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54087','15216100458','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:14:43','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54088','13307050152','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54021','0','0.00','0','0.00','0','0','0','2020-02-27 23:14:57','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54089','19108403583','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:15:13','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54090','15633216520','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54021','0','0.00','0','0.00','0','0','0','2020-02-27 23:15:32','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54091','18295085445','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:15:44','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54092','15630253931','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54021','0','0.00','0','0.00','0','0','0','2020-02-27 23:15:58','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54093','18009569219','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:16:22','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54094','15130470118','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54021','0','0.00','0','0.00','0','0','0','2020-02-27 23:16:29','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54095','13610390286','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:17:06','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54096','15641178786','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54021','0','0.00','0','0.00','0','0','0','2020-02-27 23:17:08','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54097','15977391323','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:17:35','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54098','17339391576','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54082','0','0.00','0','0.00','0','0','0','2020-02-27 23:17:39','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54099','13983514353','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:18:07','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54100','17339392983','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54082','0','0.00','0','0.00','0','0','0','2020-02-27 23:18:12','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54101','18616556567','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:18:40','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54102','13478621350','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54096','0','0.00','0','0.00','0','0','0','2020-02-27 23:19:15','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54103','18933629693','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:19:15','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54104','18292962459','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54096','0','0.00','0','0.00','0','0','0','2020-02-27 23:19:38','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54105','15812957138','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:19:49','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54106','18631591337','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54096','0','0.00','0','0.00','0','0','0','2020-02-27 23:20:07','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54107','18978939921','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:20:18','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54108','15710583959','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54034','0','0.00','0','0.00','0','0','0','2020-02-27 23:20:21','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54109','15589333819','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54082','0','0.00','0','0.00','0','0','0','2020-02-27 23:20:32','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54110','18336405988','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54096','0','0.00','0','0.00','0','0','0','2020-02-27 23:21:04','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54111','13022527580','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:21:20','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54112','13834664605','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54034','0','0.00','0','0.00','0','0','0','2020-02-27 23:21:22','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54113','13610473150','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:21:52','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54114','15712387639','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54096','0','0.00','0','0.00','0','0','0','2020-02-27 23:22:00','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54115','18663147525','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:22:23','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54116','13223088703','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54096','0','0.00','0','0.00','0','0','0','2020-02-27 23:22:36','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54117','13538148974','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:22:53','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54118','18659093352','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54096','0','0.00','0','0.00','0','0','0','2020-02-27 23:23:08','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54119','13210524168','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:23:24','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54120','18792427795','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:23:54','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54121','18365427403','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:24:04','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54122','13504796057','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:24:20','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54123','18940167103','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54108','0','0.00','0','0.00','0','0','0','2020-02-27 23:24:21','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54124','13214497635','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:24:49','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54125','19902490457','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:25:22','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54126','15629149302','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:25:39','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54127','18940167105','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54123','0','0.00','0','0.00','0','0','0','2020-02-27 23:25:43','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54128','13633561827','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:25:59','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54129','18476594233','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:26:13','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54130','15535600519','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:26:31','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54131','13927590084','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:26:50','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54132','14798137895','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:26:52','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54133','15733542565','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54127','0','0.00','0','0.00','0','0','0','2020-02-27 23:27:02','223.89.128.227','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54134','18244958992','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:27:25','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54135','13944251189','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:27:29','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54136','13798267294','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:27:56','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54137','14798250645','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:27:58','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54138','18223753117','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:28:29','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54139','18004384637','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:28:33','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54141','13722809000','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:29:06','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54142','15812816725','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:29:31','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54143','13618181293','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:29:43','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54144','17740128990','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:30:03','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54145','18876398202','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:30:15','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54146','13559788423','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:30:53','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54147','19905069283','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:30:55','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54148','15393537190','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:31:35','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54149','17398808885','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:31:43','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54150','18294190829','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:32:08','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54151','15214101902','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:32:28','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54152','18677451317','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:32:42','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54153','13643325378','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:32:55','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54154','18200176251','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:33:17','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54155','15032486531','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:33:37','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54156','17732412836','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:34:00','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54157','18476437360','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:34:08','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54158','18503542665','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:34:28','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54159','18073034763','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:34:39','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54160','13869373030','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:35:04','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54161','15064789120','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:35:23','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54162','13869332984','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:35:42','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54163','15506581680','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:35:52','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54164','15253355058','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:36:10','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54165','18974982060','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:36:21','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54166','16574560640','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:36:38','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54167','13713050938','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:36:50','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54168','16574560641','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54104','0','0.00','0','0.00','0','0','0','2020-02-27 23:37:05','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54169','18889930438','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:37:25','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54170','18395081786','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:37:58','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54171','15877513837','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54106','0','0.00','0','0.00','0','0','0','2020-02-27 23:38:07','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54172','13538304311','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:38:29','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54173','13583335231','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54106','0','0.00','0','0.00','0','0','0','2020-02-27 23:38:34','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54174','18630244010','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54106','0','0.00','0','0.00','0','0','0','2020-02-27 23:38:56','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54175','13927591640','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:39:00','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54176','13984309957','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54106','0','0.00','0','0.00','0','0','0','2020-02-27 23:39:15','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54177','13464659118','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54106','0','0.00','0','0.00','0','0','0','2020-02-27 23:39:37','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54178','13512968886','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:39:40','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54179','15881086049','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54106','0','0.00','0','0.00','0','0','0','2020-02-27 23:39:56','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54180','17624599108','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:40:11','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54181','13564468775','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54106','0','0.00','0','0.00','0','0','0','2020-02-27 23:40:14','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54182','13058833247','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:40:45','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54183','13064584750','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54106','0','0.00','0','0.00','0','0','0','2020-02-27 23:40:59','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54203','18273532544','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:51:02','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54185','18612707877','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:41:40','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54186','18733037761','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54106','0','0.00','0','0.00','0','0','0','2020-02-27 23:41:43','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54187','18578681893','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54106','0','0.00','0','0.00','0','0','0','2020-02-27 23:42:01','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54188','13835804259','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54106','0','0.00','0','0.00','0','0','0','2020-02-27 23:42:38','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54189','18777011078','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:42:49','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54190','15046198677','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:43:23','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54196','18952709179','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:45:46','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54192','18814694124','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:43:55','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54197','15145026158','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:46:22','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54194','15317103256','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:44:33','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54195','15097199018','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:45:07','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54198','18235933986','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:47:13','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54199','17788839483','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:47:40','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54200','13314702311','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:48:40','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54201','13402079536','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:49:25','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54202','18668326502','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:50:30','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54204','18980781960','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54106','0','0.00','0','0.00','0','0','0','2020-02-27 23:51:13','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54205','16635717225','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:51:35','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54206','18382435479','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54204','0','0.00','0','0.00','0','0','0','2020-02-27 23:51:43','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54207','13838730804','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:52:07','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54208','13513673670','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:52:36','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54209','15982307593','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54204','0','0.00','0','0.00','0','0','0','2020-02-27 23:52:39','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54210','17760999431','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54204','0','0.00','0','0.00','0','0','0','2020-02-27 23:53:09','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54211','15393200533','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:53:31','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54212','17358673664','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54204','0','0.00','0','0.00','0','0','0','2020-02-27 23:53:42','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54213','13228184619','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54204','0','0.00','0','0.00','0','0','0','2020-02-27 23:53:58','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54214','15174229662','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:54:02','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54215','13730648984','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54204','0','0.00','0','0.00','0','0','0','2020-02-27 23:54:30','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54216','15119634634','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:54:36','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54217','15706661940','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:55:05','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54218','15182191926','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54204','0','0.00','0','0.00','0','0','0','2020-02-27 23:55:17','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54219','15819130663','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:55:34','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54220','19148999362','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54204','0','0.00','0','0.00','0','0','0','2020-02-27 23:55:51','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54221','18306684213','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:56:03','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54222','15028733783','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:56:29','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54223','13191144965','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54171','0','0.00','0','0.00','0','0','0','2020-02-27 23:56:47','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54224','17376519497','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:56:55','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54225','18476313231','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:57:25','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54226','16634278785','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54171','0','0.00','0','0.00','0','0','0','2020-02-27 23:57:42','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54227','18582309915','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:57:56','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54228','13015437414','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54171','0','0.00','0','0.00','0','0','0','2020-02-27 23:58:18','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54229','15895880048','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:58:26','58.243.254.82','0','','0.00','0','','0');
INSERT INTO `user` VALUES('54230','15877503754','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54171','0','0.00','0','0.00','0','0','0','2020-02-27 23:58:47','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54231','18734657084','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:59:09','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54232','18991731796','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54171','0','0.00','0','0.00','0','0','0','2020-02-27 23:59:12','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54233','18181146708','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-27 23:59:40','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54234','18604158032','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54171','0','0.00','0','0.00','0','0','0','2020-02-27 23:59:45','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54235','18982584578','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:00:08','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54236','13050393137','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54171','0','0.00','0','0.00','0','0','0','2020-02-28 00:00:22','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54237','13361210926','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:00:37','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54238','18576363576','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:01:11','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54239','13238251965','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54171','0','0.00','0','0.00','0','0','0','2020-02-28 00:01:23','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54240','18577184959','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:01:43','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54241','15946172839','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:02:14','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54242','13050305699','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54171','0','0.00','0','0.00','0','0','0','2020-02-28 00:02:32','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54243','13332160398','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54171','0','0.00','0','0.00','0','0','0','2020-02-28 00:02:52','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54244','13642624500','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:02:54','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54245','13081257998','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54171','0','0.00','0','0.00','0','0','0','2020-02-28 00:03:16','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54246','13875356165','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:03:36','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54247','18641509692','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54171','0','0.00','0','0.00','0','0','0','2020-02-28 00:03:45','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54248','13038279881','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:04:06','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54249','15841543268','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54171','0','0.00','0','0.00','0','0','0','2020-02-28 00:04:11','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54250','15641546219','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54171','0','0.00','0','0.00','0','0','0','2020-02-28 00:04:39','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54251','13462816868','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:04:41','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54252','15191062526','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:05:18','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54253','18263667153','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54171','0','0.00','0','0.00','0','0','0','2020-02-28 00:05:19','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54254','13508924207','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54171','0','0.00','0','0.00','0','0','0','2020-02-28 00:05:52','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54255','13185579007','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:06:02','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54256','13237382205','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:06:37','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54257','13922550445','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:07:08','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54258','13840624727','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54177','0','0.00','0','0.00','0','0','0','2020-02-28 00:07:24','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54259','13710473752','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:07:37','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54260','17177315333','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:08:04','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54261','13898939759','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54177','0','0.00','0','0.00','0','0','0','2020-02-28 00:08:06','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54262','15674935587','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:08:31','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54263','13487586087','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:09:22','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54264','13975143699','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:10:40','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54265','18741616317','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54177','0','0.00','0','0.00','0','0','0','2020-02-28 00:10:48','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54266','15107386626','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:11:10','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54267','13591284042','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54177','0','0.00','0','0.00','0','0','0','2020-02-28 00:11:17','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54268','15841646318','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54177','0','0.00','0','0.00','0','0','0','2020-02-28 00:11:38','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54269','15111231033','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:11:38','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54270','18973819162','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:12:07','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54271','13470609719','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54177','0','0.00','0','0.00','0','0','0','2020-02-28 00:12:07','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54272','15040956181','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54177','0','0.00','0','0.00','0','0','0','2020-02-28 00:12:31','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54273','15970526705','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:12:40','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54274','15204163817','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54177','0','0.00','0','0.00','0','0','0','2020-02-28 00:12:53','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54275','15890259825','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:13:07','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54276','15084159918','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54177','0','0.00','0','0.00','0','0','0','2020-02-28 00:13:15','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54277','15941602472','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54177','0','0.00','0','0.00','0','0','0','2020-02-28 00:13:37','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54278','19163722601','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:13:38','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54279','15110798194','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54177','0','0.00','0','0.00','0','0','0','2020-02-28 00:14:02','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54280','18973231677','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:14:05','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54281','18051879689','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:14:35','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54282','13284236262','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54102','0','0.00','0','0.00','0','0','0','2020-02-28 00:14:37','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54283','18013051909','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:15:08','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54284','13126768531','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54282','0','0.00','0','0.00','0','0','0','2020-02-28 00:15:20','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54285','18132611182','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:15:38','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54286','13604111936','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54282','0','0.00','0','0.00','0','0','0','2020-02-28 00:15:53','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54287','15173878999','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:16:05','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54288','15940995970','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54282','0','0.00','0','0.00','0','0','0','2020-02-28 00:16:16','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54289','13828661713','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:16:36','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54290','13307489313','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:17:07','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54291','13537348747','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:17:33','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54292','15196336665','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:18:00','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54293','19118853202','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:18:26','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54294','18870473174','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:18:57','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54295','18873810735','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:19:29','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54296','18358245925','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:19:53','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54297','13827598252','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:20:17','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54298','18535284084','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:20:44','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54299','13293735003','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:21:14','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54300','15232469335','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:21:42','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54301','18933607729','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:22:08','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54302','15336981890','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:22:37','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54303','13511271129','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:23:09','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54304','18566153270','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:23:38','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54305','17346967364','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 00:25:28','58.243.254.82','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54307','18342003317','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53884','0','0.00','0','0.00','0','0','0','2020-02-28 00:34:57','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54308','18195276700','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54307','0','0.00','0','0.00','0','0','0','2020-02-28 00:35:31','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54309','13189865849','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54307','0','0.00','0','0.00','0','0','0','2020-02-28 00:36:19','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54314','15566960567','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54307','0','0.00','0','0.00','0','0','0','2020-02-28 00:41:27','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54311','13886453376','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54309','0','0.00','0','0.00','0','0','0','2020-02-28 00:37:11','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54312','18826172507','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54309','0','0.00','0','0.00','0','0','0','2020-02-28 00:37:42','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54315','16741865625','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54314','0','0.00','0','0.00','0','0','0','2020-02-28 00:41:55','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54316','13837079848','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54312','0','0.00','0','0.00','0','0','0','2020-02-28 00:42:28','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54317','18975564766','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54312','0','0.00','0','0.00','0','0','0','2020-02-28 00:43:02','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54318','13938564886','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54312','0','0.00','0','0.00','0','0','0','2020-02-28 00:43:33','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54319','18707355558','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54312','0','0.00','0','0.00','0','0','0','2020-02-28 00:44:06','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54320','15145032111','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54312','0','0.00','0','0.00','0','0','0','2020-02-28 00:44:34','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54321','13007881580','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54312','0','0.00','0','0.00','0','0','0','2020-02-28 00:45:19','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54322','17119327526','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54315','0','0.00','0','0.00','0','0','0','2020-02-28 00:46:03','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54324','13517928997','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:07:55','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54498','15643877135','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53940','0','0.00','0','0.00','0','0','0','2020-02-28 09:49:11','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54325','15766058543','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:09:03','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54326','17596979780','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:09:37','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54327','15778047811','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:10:10','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54328','17896755909','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:10:53','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54329','13721830300','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:11:22','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54330','13386366690','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:11:51','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54331','13053686636','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:12:18','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54332','18906461952','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:13:00','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54333','15318917651','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:13:26','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54334','17635044023','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:15:55','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54335','18698534221','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:16:48','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54336','17377112913','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:17:34','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54337','18617027510','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:18:08','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54338','19985562121','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:18:33','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54339','15390874571','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:18:58','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54340','13075881432','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:19:31','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54341','18438573229','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:20:19','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54342','17521519445','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:20:44','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54343','18024859895','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:21:22','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54344','18032696051','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:22:08','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54345','15879752633','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:22:33','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54346','13170970212','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:23:50','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54347','18379475410','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:24:28','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54348','15767900092','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:24:56','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54349','17362061659','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:25:22','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54350','14715915005','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:25:50','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54351','13921993572','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:26:16','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54352','15690629507','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:26:40','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54353','13097318470','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:27:36','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54354','18863635167','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:28:05','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54355','17678047811','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:28:30','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54356','19150260227','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:29:15','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54357','16556288628','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:29:40','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54358','13097075475','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:30:09','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54359','13970717682','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:30:54','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54360','13033259403','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:31:18','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54361','13879155795','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:32:04','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54362','15727689584','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:32:31','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54363','15296402368','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:33:13','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54364','13046068131','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:33:48','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54365','13097314860','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:34:48','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54366','13666360296','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:35:19','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54367','15309648390','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:35:51','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54368','13097076614','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:36:42','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54369','15970684932','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:37:04','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54370','13185146204','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:37:28','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54371','13097315421','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:38:09','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54372','13033231407','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:38:36','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54373','18116870987','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53760','0','0.00','0','0.00','0','0','0','2020-02-28 08:38:41','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54374','13033231470','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:39:03','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54375','17379749989','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:39:28','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54376','18695081786','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:39:51','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54377','17128137330','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:41:27','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54378','13290474591','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53880','0','0.00','0','0.00','0','0','0','2020-02-28 08:41:36','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54379','16562112358','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:41:54','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54380','13828202401','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:42:23','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54384','18305617322','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:43:55','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54382','17329838826','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:42:46','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54383','18898312084','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:43:13','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54385','13199964441','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53811','0','0.00','0','0.00','0','0','0','2020-02-28 08:44:00','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54386','13709965422','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54385','0','0.00','0','0.00','0','0','0','2020-02-28 08:44:27','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54387','15263569680','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:44:34','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54388','18594009051','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:45:18','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54389','13595676391','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:45:44','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54390','15299370279','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54386','0','0.00','0','0.00','0','0','0','2020-02-28 08:45:53','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54391','15886759309','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:46:28','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54392','15609960519','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54386','0','0.00','0','0.00','0','0','0','2020-02-28 08:46:44','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54393','19194238044','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53717','0','0.00','0','0.00','0','0','0','2020-02-28 08:46:56','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54394','18809967370','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54386','0','0.00','0','0.00','0','0','0','2020-02-28 08:47:17','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54395','13779662119','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54386','0','0.00','0','0.00','0','0','0','2020-02-28 08:47:41','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54396','15684341402','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:48:23','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54397','13958195847','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:48:47','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54398','15066745603','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:49:13','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54399','13854435871','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:49:40','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54400','13557739510','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:50:04','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54401','13848801175','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:50:31','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54402','15542271383','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:50:54','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54403','13591477728','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:51:18','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54404','13591475752','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:51:50','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54405','13757144857','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:52:17','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54406','13750694093','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:52:45','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54407','13840190196','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:53:09','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54408','18982286193','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53755','0','0.00','0','0.00','0','0','0','2020-02-28 08:53:12','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54411','13368922622','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53755','0','0.00','0','0.00','0','0','0','2020-02-28 08:54:14','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54410','13940640957','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53771','0','0.00','0','0.00','0','0','0','2020-02-28 08:53:46','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54412','15041243063','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:54:29','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54413','18204024323','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:54:53','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54414','13898809884','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:55:17','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54415','13609828872','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:55:45','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54416','18632569712','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:56:08','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54417','13711521803','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:56:39','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54418','15348894050','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54411','0','0.00','0','0.00','0','0','0','2020-02-28 08:56:41','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54419','13070232070','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54418','0','0.00','0','0.00','0','0','0','2020-02-28 08:57:05','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54420','18039983682','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:57:07','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54421','15974204517','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:57:33','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54422','18889584157','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54419','0','0.00','0','0.00','0','0','0','2020-02-28 08:57:41','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54423','18532552735','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53729','0','0.00','0','0.00','0','0','0','2020-02-28 08:57:57','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54424','15579889091','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53866','0','0.00','0','0.00','0','0','0','2020-02-28 08:58:50','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54425','18681765601','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53866','0','0.00','0','0.00','0','0','0','2020-02-28 08:59:32','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54426','13140529992','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53866','0','0.00','0','0.00','0','0','0','2020-02-28 09:00:03','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54427','13071665887','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:00:06','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54428','13376240391','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:00:33','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54429','13060954550','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54425','0','0.00','0','0.00','0','0','0','2020-02-28 09:00:52','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54430','13597255169','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:00:58','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54431','13183768081','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54429','0','0.00','0','0.00','0','0','0','2020-02-28 09:01:25','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54432','19815669449','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:01:28','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54433','13183768551','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54431','0','0.00','0','0.00','0','0','0','2020-02-28 09:01:51','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54434','18105432664','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:01:52','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54435','15228112156','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54433','0','0.00','0','0.00','0','0','0','2020-02-28 09:02:36','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54436','17683186939','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54435','0','0.00','0','0.00','0','0','0','2020-02-28 09:03:21','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54437','15882612959','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54436','0','0.00','0','0.00','0','0','0','2020-02-28 09:03:50','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54438','18582238654','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54437','0','0.00','0','0.00','0','0','0','2020-02-28 09:04:41','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54442','18788611149','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54438','0','0.00','0','0.00','0','0','0','2020-02-28 09:14:49','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54443','18718527942','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54442','0','0.00','0','0.00','0','0','0','2020-02-28 09:15:23','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54444','15685611340','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54443','0','0.00','0','0.00','0','0','0','2020-02-28 09:15:51','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54445','18685262496','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54444','0','0.00','0','0.00','0','0','0','2020-02-28 09:16:32','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54446','13884331801','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54445','0','0.00','0','0.00','0','0','0','2020-02-28 09:18:50','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54447','13150357199','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:19:01','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54448','15268753224','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54446','0','0.00','0','0.00','0','0','0','2020-02-28 09:19:22','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54449','13528994986','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:19:30','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54450','15168047179','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54448','0','0.00','0','0.00','0','0','0','2020-02-28 09:19:47','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54451','18878712608','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:20:00','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54452','15061169693','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:20:24','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54453','15170835279','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:20:52','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54454','13173730513','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:21:16','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54455','17605913732','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:24:24','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54456','18200240075','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:26:03','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54457','17685693536','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:26:28','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54458','18950236710','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:26:49','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54459','17039158315','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53803','0','0.00','0','0.00','0','0','0','2020-02-28 09:26:59','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54460','18687490114','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:27:21','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54461','15229393565','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53803','0','0.00','0','0.00','0','0','0','2020-02-28 09:27:30','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54462','15390592377','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:27:41','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54463','13628178578','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:28:01','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54464','17789766218','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:28:26','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54465','15504602773','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:28:46','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54466','15683199764','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53745','0','0.00','0','0.00','0','0','0','2020-02-28 09:29:07','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54467','15834075093','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53728','0','0.00','0','0.00','0','0','0','2020-02-28 09:30:39','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54468','13383515877','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54467','0','0.00','0','0.00','0','0','0','2020-02-28 09:31:10','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54469','15165571925','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53728','0','0.00','0','0.00','0','0','0','2020-02-28 09:31:47','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54470','13109805438','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53728','0','0.00','0','0.00','0','0','0','2020-02-28 09:32:15','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54471','13079817982','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53728','0','0.00','0','0.00','0','0','0','2020-02-28 09:32:38','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54472','18582237654','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54437','0','0.00','0','0.00','0','0','0','2020-02-28 09:32:57','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54473','13998960522','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53728','0','0.00','0','0.00','0','0','0','2020-02-28 09:33:01','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54474','15841584739','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53728','0','0.00','0','0.00','0','0','0','2020-02-28 09:33:20','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54475','19858360255','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54450','0','0.00','0','0.00','0','0','0','2020-02-28 09:33:44','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54476','15777998030','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53728','0','0.00','0','0.00','0','0','0','2020-02-28 09:33:44','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54477','13029777981','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53728','0','0.00','0','0.00','0','0','0','2020-02-28 09:34:08','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54478','13940978719','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53728','0','0.00','0','0.00','0','0','0','2020-02-28 09:34:28','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54479','15834236215','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53728','0','0.00','0','0.00','0','0','0','2020-02-28 09:34:55','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54480','18940934896','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54467','0','0.00','0','0.00','0','0','0','2020-02-28 09:36:03','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54481','13803617069','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54467','0','0.00','0','0.00','0','0','0','2020-02-28 09:36:30','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54482','18877146036','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54467','0','0.00','0','0.00','0','0','0','2020-02-28 09:36:47','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54483','19512033367','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54467','0','0.00','0','0.00','0','0','0','2020-02-28 09:37:37','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54484','13875733196','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54467','0','0.00','0','0.00','0','0','0','2020-02-28 09:38:10','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54485','18583656653','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54467','0','0.00','0','0.00','0','0','0','2020-02-28 09:38:31','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54486','13796397792','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54467','0','0.00','0','0.00','0','0','0','2020-02-28 09:39:17','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54487','13943548173','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54467','0','0.00','0','0.00','0','0','0','2020-02-28 09:39:35','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54488','15333006559','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54468','0','0.00','0','0.00','0','0','0','2020-02-28 09:40:32','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54489','19922018667','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54468','0','0.00','0','0.00','0','0','0','2020-02-28 09:40:52','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54490','17636665711','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54468','0','0.00','0','0.00','0','0','0','2020-02-28 09:41:08','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54491','13383517752','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54468','0','0.00','0','0.00','0','0','0','2020-02-28 09:41:37','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54492','18839329098','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54468','0','0.00','0','0.00','0','0','0','2020-02-28 09:42:15','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54493','18543911769','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54468','0','0.00','0','0.00','0','0','0','2020-02-28 09:42:35','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54494','18061606404','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54468','0','0.00','0','0.00','0','0','0','2020-02-28 09:42:58','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54497','15981381280','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54468','0','0.00','0','0.00','0','0','0','2020-02-28 09:45:06','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54496','18781974967','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54468','0','0.00','0','0.00','0','0','0','2020-02-28 09:43:49','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54499','15317907285','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53940','0','0.00','0','0.00','0','0','0','2020-02-28 09:49:42','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54500','13211045658','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53940','0','0.00','0','0.00','0','0','0','2020-02-28 09:50:02','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54501','18938332180','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53940','0','0.00','0','0.00','0','0','0','2020-02-28 09:50:23','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54502','15084029540','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53940','0','0.00','0','0.00','0','0','0','2020-02-28 09:50:43','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54503','18674166668','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53940','0','0.00','0','0.00','0','0','0','2020-02-28 09:51:04','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54504','15023861395','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53940','0','0.00','0','0.00','0','0','0','2020-02-28 09:51:35','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54505','13868917428','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53940','0','0.00','0','0.00','0','0','0','2020-02-28 09:52:00','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54506','13070338596','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53940','0','0.00','0','0.00','0','0','0','2020-02-28 09:52:15','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54507','18843165258','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53940','0','0.00','0','0.00','0','0','0','2020-02-28 09:52:33','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54508','13458986097','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53940','0','0.00','0','0.00','0','0','0','2020-02-28 09:52:53','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54509','18566011690','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53940','0','0.00','0','0.00','0','0','0','2020-02-28 09:53:10','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54510','15844948909','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54493','0','0.00','0','0.00','0','0','0','2020-02-28 09:55:30','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54511','18744263392','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54510','0','0.00','0','0.00','0','0','0','2020-02-28 09:57:04','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54512','18937424829','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54510','0','0.00','0','0.00','0','0','0','2020-02-28 09:57:39','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54513','13777883943','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54510','0','0.00','0','0.00','0','0','0','2020-02-28 09:58:04','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54514','13634390400','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54510','0','0.00','0','0.00','0','0','0','2020-02-28 09:58:28','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54515','18338092087','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54492','0','0.00','0','0.00','0','0','0','2020-02-28 09:59:04','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54516','13030310160','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54492','0','0.00','0','0.00','0','0','0','2020-02-28 09:59:35','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54517','13461620318','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54492','0','0.00','0','0.00','0','0','0','2020-02-28 10:00:00','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54519','15130573280','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53724','0','0.00','0','0.00','0','0','0','2020-02-28 10:05:27','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54518','15103845080','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53724','0','0.00','0','0.00','0','0','0','2020-02-28 10:04:02','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54520','15710658356','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53724','0','0.00','0','0.00','0','0','0','2020-02-28 10:06:16','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54521','15060794374','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54520','0','0.00','0','0.00','0','0','0','2020-02-28 10:06:47','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54522','13666029704','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54521','0','0.00','0','0.00','1582855752','0','0','2020-02-28 10:07:10','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54526','15959203003','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54525','0','0.00','0','0.00','0','0','0','2020-02-28 10:11:55','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54525','18805070506','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','0','0','0.00','0','0.00','0','0','0','2020-02-28 10:11:25','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54527','17359836185','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54526','0','0.00','0','0.00','0','0','0','2020-02-28 10:12:22','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54528','18974141043','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53744','0','0.00','0','0.00','0','0','0','2020-02-28 10:12:50','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54529','15856582432','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53744','0','0.00','0','0.00','0','0','0','2020-02-28 10:13:17','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54530','13421349640','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53744','0','0.00','0','0.00','0','0','0','2020-02-28 10:13:39','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54531','17512010630','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53744','0','0.00','0','0.00','0','0','0','2020-02-28 10:14:00','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54534','13522836455','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53719','0','0.00','0','0.00','0','0','0','2020-02-28 10:15:18','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54533','18310481896','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53719','0','0.00','0','0.00','0','0','0','2020-02-28 10:14:30','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54535','18079850933','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54534','0','0.00','0','0.00','0','0','0','2020-02-28 10:15:45','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54536','15972141917','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53713','0','0.00','0','0.00','0','0','0','2020-02-28 10:16:13','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54537','15501775669','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53715','0','0.00','0','0.00','0','0','0','2020-02-28 10:16:38','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54538','15308929098','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54422','0','0.00','0','0.00','0','0','0','2020-02-28 10:28:36','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54539','13368923622','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54538','0','0.00','0','0.00','0','0','0','2020-02-28 10:29:50','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54541','15308925593','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54539','0','0.00','0','0.00','0','0','0','2020-02-28 10:32:18','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54542','18389664437','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54541','0','0.00','0','0.00','0','0','0','2020-02-28 10:37:07','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54543','13647562430','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54542','0','0.00','0','0.00','0','0','0','2020-02-28 10:37:50','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54545','13876251601','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54543','0','0.00','0','0.00','0','0','0','2020-02-28 10:39:56','114.237.74.113','0','','0.00','0','','0');
INSERT INTO `user` VALUES('54546','13976295688','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54545','0','0.00','0','0.00','0','0','0','2020-02-28 10:40:31','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54547','13545553780','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53771','0','0.00','0','0.00','0','0','0','2020-02-28 10:41:21','114.237.74.113','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54549','13569541731','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','0','0','0.00','0','0.00','0','0','0','2020-02-28 10:49:02','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54550','18549811352','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','0','0','0.00','0','0.00','0','0','0','2020-02-28 10:49:51','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54551','13589408232','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','0','0','0.00','0','0.00','0','0','0','2020-02-28 10:54:43','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54552','19966723762','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','0','0','0.00','0','0.00','0','0','0','2020-02-28 10:56:34','58.243.250.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54557','18766973158','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','0','0','0.00','0','0.00','0','0','0','2020-02-28 11:21:25','111.1.107.165','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54554','15878100729','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','53703','0','0.00','0','0.00','0','0','0','2020-02-28 11:08:36','182.90.206.80','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54555','15878100721','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54554','0','0.00','0','0.00','0','0','0','2020-02-28 11:09:54','182.90.206.80','0','','0.00','0','','0');
INSERT INTO `user` VALUES('54556','13999999991','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54555','0','0.00','0','0.00','0','0','0','2020-02-28 11:16:04','111.1.107.165','0','','0.00','0','','2');
INSERT INTO `user` VALUES('54558','15878100722','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','54557','0','0.00','0','0.00','0','0','0','2020-02-28 11:24:06','182.90.206.80','0','','0.00','0','','0');
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

INSERT INTO `user_member` VALUES('8026','铜钻会员','10','1');
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
