-- MySQL database dump
-- 主机: 
-- 生成日期: 2020 年  03 月 09 日 10:25
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

INSERT INTO `admin` VALUES('1','1','超级管理员','admin','c274d398e8afdbf87d4e15e22578450c','1');
INSERT INTO `admin` VALUES('4','1','超级管理员','admin001','c274d398e8afdbf87d4e15e22578450c','1');
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
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文章表';

--
-- 转存表中的数据 article

INSERT INTO `article` VALUES('69','新加坡丰益集团介绍','1011','','&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 丰益国际集团（Wilmar International）成立于1991年，经过近三十年的发展，已发展成为一个农业综合型跨国粮油企业集团。&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;2010年起连续入选“全球最受赞赏公司排行榜-食品生产行业”之一。&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;2018年营业额445亿美元，荣列2019年世界500强258位。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 作为丰益国际集团在中国大陆投资的一系列粮油食品加工、销售等业务的统称的益海嘉里集团（是以&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;益海嘉里&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;金龙鱼粮油食品股份有限公司为核心的企业集团的简称），是由著名爱国华侨&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;郭鹤年&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;先生和他的侄子&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;郭孔丰&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;先生共同投资，旗下拥有家喻户晓的&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;金龙鱼&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;、&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;欧丽薇兰&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;、&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;胡姬花&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;等著名粮油品牌。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2018年7月19日，《财富》&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;世界500强&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;排行榜发布，丰益国际位列248位。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2018年11月，益海嘉里母公司丰益国际携旗下众多产品亮相进博会。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;丰益国际集团成立于1991年，是世界领先的农业综合型跨国粮油企业集团&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;，荣列2019年《财富》世界500强第258位。&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;在全球拥有超过900家加工厂，大部分位于亚洲、非洲“一带一路”沿线，全球员工超过9万名。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;丰益国际业务范围包括棕榈种植，油籽压榨，食用油精炼，食糖加工和提炼，消费品、专用油脂、面粉及大米加工，油脂化工品、棕榈生物柴油和化肥制造等&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;，销售网络遍及中国、印度、印尼等50多个国家和地区&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 荣誉：&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;《财富》杂志2019年全球500强排名第258位&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 《财富》杂志2012年全球最受赞赏公司：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;食品生产行业中排名第1位，并于2010年起连续入选“全球最受赞赏公司排行榜-食品生产行业”&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;2017福布斯全球企业2000强，排名第388位。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;2012年全球最受赞赏公司：食品生产行业中排名第1位&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;家喻户晓的&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;益海嘉里&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;及“&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;金龙鱼&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;”食用油就出自该集团。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;据了解，丰益国际全球研发中心是全球粮油产业中最大的纯研发中心之一，丰益国际将以此为平台，加强对外合作交流，借助全球的智慧，促进前沿的技术在中国的科技转化，带动中国从“粮油消费大国”转变为“粮油科技大国”, 真正让中国农业在世界粮油领域占据话语权，改变世界粮油发展被欧美国家控制的局面。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;丰益全球研发中心将建设成为粮油技术与产品研发，新产品及技术咨询，产品技术服务，科技合作与交流，粮油食品专业人才培育的“5个中心”，对全球粮油行业发展共同关注的6大技术领域进行研究。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;strong style=&quot;font-size: 20px;&quot;&gt;在中国的发展&lt;/strong&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;作为知名侨商之一，丰益国际集团对中国有着深厚的感情，一直以实际行动支持中国发展。对丰益国际而言，中国是最重要的投资发展基地和产品销售市场。2018 年益海嘉里营业额 250 亿美元，约占丰益国际全球营业额的 56%。丰益国际旗下益海嘉里在上海设立研发中心&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;，丰益国际积极发挥全球产业布局优势，将各国优质农产品输送到中国。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 中国是丰益国际重要的投资发展基地和产品销售市场，每年从全球进口到中国的农产品和食品的货值总额超过100亿美元，且有较大的增长空间。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 益海嘉里及母公司丰益国际将抓住扩大开放机遇，在中国进一步扩大投资和贸易合作，继续利用全球布局的优势，将世界各地尤其是“一带一路”沿线国家的更多优质优价产品输送到中国&lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;助力提升中国食品安全。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text; font-size: 20px;&quot;&gt;&amp;nbsp;发展历程&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2018年：丰益国际旗下益海嘉里集团金龙鱼总部大厦在上海浦东落成。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2010年：丰益国际旗下益海嘉里集团金龙鱼大米产业链创新技术荣获中国粮油学会科学技术奖一等奖。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2009年：丰益国际及其益海嘉里将全球研发中心落户上海。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2007年，丰益国际整合在华投资粮油企业，成立益海嘉里集团。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2006年：丰益国际旗下益海嘉里集团金龙鱼成为北京2008年奥运会食用油独家供应商。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;/span&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;2002年：丰益国际旗下益海嘉里集团金龙鱼第二代食用调和油上市。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2000年：丰益国际整合在华粮油企业，统称为益海集团。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text; font-size: 20px;&quot;&gt;企业荣誉&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;2019年7月，《财富》世界500强排行榜发布，丰益国际位列258位。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;2017年，2017福布斯全球企业2000强，排名第388位。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2012年，《财富》杂志2012年全球最受赞赏公司：食品生产行业中排名第1位，并于2010年起连续入选“全球最受赞赏公司排行榜-食品生产行业”&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text; font-size: 20px;&quot;&gt;企业责任&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 丰益国际注重与当地合作伙伴共同发展事业，实行本土化企业管理，研发生产适合当地市场的优质产品，提倡可持续发展的理念，成为保护环境、造福社会、责任担当的企业公民。&lt;/span&gt;&lt;/p&gt;','2020-03-08 14:08:00','1','20200308142122.jpg');
INSERT INTO `article` VALUES('70','一分钟读懂丰益国际','1012','','&lt;p&gt;丰益国际是一本书&amp;nbsp;&lt;/p&gt;&lt;p&gt;有人只看了封面&lt;/p&gt;&lt;p&gt;有人只阅了目录&lt;/p&gt;&lt;p&gt;有人随意翻了几页&lt;/p&gt;&lt;p&gt;有人耐心一字一句地看了&lt;/p&gt;&lt;p&gt;有人边阅边写心得&lt;/p&gt;&lt;p&gt;边写总结，读懂了，也领悟了，也看清了方向与明天！&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;丰益国际只度有缘人，无缘千佛也难渡!&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;【丰益国际】平台！10元即可参与！模式独特创新有亮点！简单易懂！控盘严谨！控进不控出！矿产可循环复投！生生不息！长长久久！随时提现快速到账！&lt;/p&gt;&lt;p&gt;&amp;nbsp;静态：投资购买理财每天3-8％，可提现！可先复投去倍增！&lt;/p&gt;&lt;p&gt;收益够1元就可复投，每天3-8％的倍增更给力！&lt;/p&gt;&lt;p&gt;收益也可随时提现，提现真正的快速到账！&lt;/p&gt;&lt;p&gt;&amp;nbsp;动态：推广市场拿28代奖励&lt;/p&gt;&lt;p&gt;模式就这么简单！&lt;/p&gt;&lt;p&gt;看懂速加入！我们一起努力！一起赚大钱！&lt;/p&gt;&lt;p&gt;再好的平台项目！你不参与永远是个局外人！不参与更不会赚到钱！&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 再牛逼的项目，提现不顺畅，那就是套路。&lt;/p&gt;&lt;p&gt;&amp;nbsp; 吹的再牛，那都是忽悠，项目真实实力 、真正目的，从【提现】这个问题上就能看出来。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;【丰益国际】就是这样一个 连每一个静态会员都能安心赚到钱的项目，不玩套路，也不用说的太多，公司一直用实际行动证明自己的实力！&lt;/p&gt;&lt;p&gt;2020的口号就是&lt;/p&gt;&lt;p&gt;地球不爆炸，我们不放假！&lt;/p&gt;&lt;p&gt;宇宙不重启，我们不休息！&lt;/p&gt;&lt;p&gt;风里、雨里、 雾里、 霾里， 我永远在【丰益国际】等你&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;遇见你之前，我千挑万选。&lt;/p&gt;&lt;p&gt;遇上你之后，我钟情不变。&lt;/p&gt;&lt;p&gt;&amp;nbsp;“刚好遇见你”&lt;/p&gt;&lt;p&gt;&amp;nbsp;“从此不放弃”&lt;/p&gt;&lt;p&gt;&amp;nbsp;丰益国际——为财富而生！&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;【丰益国际】怎么玩？&lt;/p&gt;&lt;p&gt;找推荐人识别二维码注册下载APP&lt;/p&gt;&lt;p&gt;&amp;nbsp;点购买理财激活账户，10元起购，封顶20000理财&lt;/p&gt;&lt;p&gt;&amp;nbsp;静态每天按3-8%分红，2倍出局！每天晚上0点过后开始分红&lt;/p&gt;&lt;p&gt;&amp;nbsp;直接分红到余额钱包提现，可复投&lt;/p&gt;&lt;p&gt;&amp;nbsp;满1块钱，直接提现到支付宝，不扣任何手续费，实力公司，全网首发&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 丰益国际 火爆来袭&lt;/p&gt;&lt;p&gt;&amp;nbsp;10元即可投资&lt;/p&gt;&lt;p&gt;&amp;nbsp;1元即可提现，0手续费&lt;/p&gt;&lt;p&gt;&amp;nbsp;静态投资按3-8%每天分红&lt;/p&gt;&lt;p&gt;&amp;nbsp;10元拿28代推广奖励&lt;/p&gt;&lt;p&gt;&amp;nbsp;现全网对接领导人，2020一起共赢未来&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;怀疑的，拿100试试！&lt;/p&gt;&lt;p&gt;有兴趣的，拿1000试试！&lt;/p&gt;&lt;p&gt;想解决问题的，拿5000试试！&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;丰益国际理财表&amp;nbsp;&lt;/p&gt;&lt;p&gt;投100，每天分红3-8元&lt;/p&gt;&lt;p&gt;投500，每天分红15-40元&lt;/p&gt;&lt;p&gt;投1000，每天分红30-80元&lt;/p&gt;&lt;p&gt;投2000，每天分红60-160元&lt;/p&gt;&lt;p&gt;投5000，每天分红150-400元&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;最低可以投10元，&lt;/p&gt;&lt;p&gt;控进不控出&amp;nbsp;&lt;/p&gt;&lt;p&gt;今天报单，晚上12点分红。&lt;/p&gt;&lt;p&gt;全年无休假&amp;nbsp; 天天分红，&lt;/p&gt;&lt;p&gt;提现无手续费&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','2020-03-08 14:24:27','1','20200308142717.jpg');
INSERT INTO `article` VALUES('71','丰益国际操作注意事项','1013','','&lt;p&gt;欢迎大家来到新加坡丰益国际金融理财板块&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;怎么购买丰益理财产品？&lt;/p&gt;&lt;p&gt;注册好下载丰益国际APP&lt;/p&gt;&lt;p&gt;在商城首页理财板块根据自己情况选择理财产品&lt;/p&gt;&lt;p&gt;选定产品直接立即购买&lt;/p&gt;&lt;p&gt;可以手动增加投资金额&lt;/p&gt;&lt;p&gt;选择支付宝支付即可&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;购买支付成功累计投资没有怎么办？&lt;/p&gt;&lt;p&gt;第一时间联系客服&lt;/p&gt;&lt;p&gt;截图支付凭证和ID账号提交客服&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;今天购买什么时候开始有分红？&lt;/p&gt;&lt;p&gt;当天购买、过晚上24：00准时发放理财金&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;余额怎么提现？&lt;/p&gt;&lt;p&gt;提现早上9：00-晚上21：00&lt;/p&gt;&lt;p&gt;T+0到账支付宝&lt;/p&gt;&lt;p&gt;1元起提现&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;丰益币有什么用？&lt;/p&gt;&lt;p&gt;丰益集团第一步金融理财打造大数据&lt;/p&gt;&lt;p&gt;第二步跨界上交易所&lt;/p&gt;&lt;p&gt;那个时候就会一币难求&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','2020-03-09 03:09:02','1','20200309032038.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='本地币种价格设置(根据用户自己命名)';

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
INSERT INTO `clt_coin_price_setting` VALUES('60','10','1583424000');
INSERT INTO `clt_coin_price_setting` VALUES('61','1.22265','1583337600');
INSERT INTO `clt_coin_price_setting` VALUES('62','1.33','1583510400');
INSERT INTO `clt_coin_price_setting` VALUES('63','1.88','1583596800');
INSERT INTO `clt_coin_price_setting` VALUES('64','1.9','1583683200');
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

INSERT INTO `fenhong_log` VALUES('7','1583596981');
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
) ENGINE=MyISAM AUTO_INCREMENT=5729780 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='财务表';

--
-- 转存表中的数据 finance

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

INSERT INTO `info` VALUES('1','丰益国际','丰益国际','','','','/mobile/kefu.html','https://ff.69nm.com/app.php/NDc5Mg==','','','','0','','','请复制收款人、收款账号进行网银转账，网银转账10000元以上返1%（含10000元）入款后直接与在线客服联系！谢谢','','','','0','微信充值，长按二维码保存或截图二维码，打开微信，扫一扫，点击右上角相册，选择刚保存的二维码，充值即可。温馨提示：请您在充值的时候尽量不要充值整数，比如您要充值100元，您可以选择充值100.01元或99.99元，尽量在小数点选择比较特殊的金额，让系统更快识别您的充值订单，以免耽误您的投资，详细充值步骤可以看平台公告。','20191211222357.jpg','1','支付宝充值，长按二维码保存或截图二维码，打开支付宝，扫一扫，点击右上角相册，选择刚保存的二维码，充值即可。温馨提示：请您在充值的时候尽量不要充值整数，比如您要充值100元，您可以选择充值100.01元或99.99元，尽量在小数点选择比较特殊的金额，让系统更快识别您的充值订单，以免耽误您的投资，详细充值步骤可以看平台公告。','20191211222357.jpg','1','0','/Public/uploads/activity.png','0','1','0','1','three','无','','','','8|23','1','0','0','0');
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
  `surplus_bonus` decimal(10,2) NOT NULL COMMENT '可分红奖金',
  `money` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '投资金额',
  `day` int(11) NOT NULL DEFAULT '0' COMMENT '项目天数',
  `rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '项目费率',
  `type1` int(11) NOT NULL DEFAULT '0' COMMENT '项目类型1',
  `type2` varchar(50) NOT NULL DEFAULT '无' COMMENT '项目类型2',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '还款状态',
  `time` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '投资时间',
  `pay_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单支付状态0是未支付1是支付完成',
  `pay_time` int(11) NOT NULL DEFAULT '0' COMMENT '支付更新时间',
  `stype` varchar(10) NOT NULL DEFAULT '0' COMMENT '分红状态（0-可分红 1-分红完成）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2699 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目投资表';

--
-- 转存表中的数据 invest

INSERT INTO `invest` VALUES('2698','202003090300078622','55494','115','丰益金融周期收益20元','20.00','10','50','3.00','1','每日返息,两倍出局','0','2020-03-09 03:00:07','0','0','0');
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
) ENGINE=MyISAM AUTO_INCREMENT=8687 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目投资详情表';

--
-- 转存表中的数据 invest_list

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
  `rate` decimal(10,2) unsigned zerofill DEFAULT '00000000.00' COMMENT '费率',
  `percent` varchar(10) DEFAULT '0.00' COMMENT '模拟进度',
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
  `frbl` decimal(5,2) unsigned zerofill DEFAULT '000.00' COMMENT '分润比例',
  `red` decimal(5,2) DEFAULT NULL,
  `class` varchar(20) DEFAULT '0',
  `clock` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目表';

--
-- 转存表中的数据 item

INSERT INTO `item` VALUES('119','丰益金融收益20元','','20200309030319.png','10000.00','00000003.00','','50','1','10.00','10000.00','1000','','0','','2020-03-09 03:02:08','1','000.00','0.00','0','0');
INSERT INTO `item` VALUES('122','丰益金融收益2000元','','20200309030651.png','10000.00','00000003.00','','50','1','1000.00','10000.00','1000','','0','','2020-03-09 03:05:54','4','000.00','0.00','0','0');
INSERT INTO `item` VALUES('121','丰益金融收益1000元','','20200309030549.png','10000.00','00000003.00','','50','1','500.00','10000.00','1000','','0','','2020-03-09 03:05:05','3','000.00','0.00','0','0');
INSERT INTO `item` VALUES('120','丰益金融收益200元','','20200309030444.png','10000.00','00000003.00','','50','1','100.00','10000.00','1000','','0','','2020-03-09 03:04:08','2','000.00','0.00','0','0');
INSERT INTO `item` VALUES('123','丰益金融收益4000元','','20200309032409.png','10000.00','00000003.00','','50','1','2000.00','10000.00','1000','','0','','2020-03-09 03:23:24','5','000.00','0.00','0','0');
INSERT INTO `item` VALUES('124','丰益金融收益10000元','','20200309032450.png','10000.00','00000003.00','','50','1','5000.00','10000.00','1000','','0','','2020-03-09 03:24:14','6','000.00','0.00','0','0');
INSERT INTO `item` VALUES('125','丰益金融收益20000元','','20200309032608.png','10000.00','00000003.00','','50','1','10000.00','10000.00','1000','','0','','2020-03-09 03:24:54','7','000.00','0.00','0','0');
INSERT INTO `item` VALUES('126','丰益金融收益40000元','','20200309032656.png','10000.00','00000003.00','','50','1','20000.00','100000.00','1000','','0','','2020-03-09 03:26:12','8','000.00','0.00','0','0');
--
-- 表的结构jiesuan_log
--
DROP TABLE IF EXISTS `jiesuan_log`;
CREATE TABLE `jiesuan_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `time` varchar(200) DEFAULT NULL,
  `title` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 jiesuan_log

INSERT INTO `jiesuan_log` VALUES('5','1583684769','[]');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户支付日志记录数据表';

--
-- 转存表中的数据 pay_buy_log

INSERT INTO `pay_buy_log` VALUES('27','202003090300078622','55494','1583694007','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003090300078622\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309030052101173406\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"822ee6935f1397f1136a1c7792092304\"}');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='支付回调日志记录数据表';

--
-- 转存表中的数据 pay_notice_log

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
) ENGINE=MyISAM AUTO_INCREMENT=11008 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='充值表';

--
-- 转存表中的数据 recharge

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

INSERT INTO `reward` VALUES('1','0','0','0','3','2','1','0','0','10','10','','4|3|2|1|0.5','8|6|2|1|1|1|1|1|1|1|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|0.5|','1','5','0.1');
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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='幻灯片';

--
-- 转存表中的数据 slide

INSERT INTO `slide` VALUES('33','20200308134301.png','','2','2','1');
INSERT INTO `slide` VALUES('32','20200308134248.png','','2','1','1');
INSERT INTO `slide` VALUES('34','20200308134314.png','','2','3','1');
INSERT INTO `slide` VALUES('35','20200308135220.png','','2','4','1');
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
) ENGINE=MyISAM AUTO_INCREMENT=56097 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员表';

--
-- 转存表中的数据 user

INSERT INTO `user` VALUES('55494','100000','无','无','0','c274d398e8afdbf87d4e15e22578450c','c274d398e8afdbf87d4e15e22578450c','53703','8029','0.00','0','0.00','1583708740','0','0','2020-03-02 14:51:57','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55538','15103845082','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55494','0','0.00','0','0.00','1583720083','0','0','2020-03-09 00:49:35','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55539','15103845083','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55538','0','0.00','0','0.00','0','0','0','2020-03-09 00:50:19','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55540','15103845084','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55539','0','0.00','0','0.00','0','0','0','2020-03-09 00:50:50','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55542','13636066080','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55540','0','0.00','0','0.00','0','0','0','2020-03-09 00:52:25','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55543','15256336862','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55540','0','0.00','0','0.00','0','0','0','2020-03-09 00:53:03','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55906','13307489313','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:27:54','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55545','15851494368','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55540','0','0.00','0','0.00','0','0','0','2020-03-09 00:54:43','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55546','17770780525','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55540','0','0.00','10','0.00','0','0','0','2020-03-09 00:55:31','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55547','15206300381','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55540','0','0.00','0','0.00','0','0','0','2020-03-09 00:56:10','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55548','13353981117','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55547','0','0.00','0','0.00','0','0','0','2020-03-09 00:58:33','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55549','15662266144','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55547','0','0.00','0','0.00','0','0','0','2020-03-09 00:59:12','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55905','13828661713','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:27:40','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55904','15348886579','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55899','0','0.00','0','0.00','0','0','0','2020-03-09 09:27:25','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55901','18013051909','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:26:33','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55902','18132611182','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:27:06','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55903','15173878999','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:27:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55900','18051879689','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:26:17','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55556','15528935571','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55543','0','0.00','0','0.00','0','0','0','2020-03-09 01:06:08','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55899','18889790842','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55896','0','0.00','0','0.00','0','0','0','2020-03-09 09:26:08','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55558','18358992542','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55543','0','0.00','0','0.00','0','0','0','2020-03-09 01:06:44','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55559','13100621679','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55543','0','0.00','0','0.00','0','0','0','2020-03-09 01:07:17','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55563','18009569219','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55543','0','0.00','0','0.00','0','0','0','2020-03-09 01:08:43','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55561','13904429417','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55543','0','0.00','0','0.00','0','0','0','2020-03-09 01:07:52','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55562','18093627883','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55543','0','0.00','0','0.00','0','0','0','2020-03-09 01:08:16','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55564','17553841898','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55543','0','0.00','0','0.00','0','0','0','2020-03-09 01:09:15','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55898','18973231677','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:25:59','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55566','18529562160','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55543','0','0.00','0','0.00','0','0','0','2020-03-09 01:09:38','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55567','15526326905','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55543','0','0.00','0','0.00','0','0','0','2020-03-09 01:10:02','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55897','19163722601','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:25:39','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55569','17060741085','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55543','0','0.00','0','0.00','0','0','0','2020-03-09 01:10:23','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55896','13350473250','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55893','0','0.00','0','0.00','0','0','0','2020-03-09 09:25:26','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55895','15890259825','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:25:04','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55572','18093625749','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55562','0','0.00','0','0.00','0','0','0','2020-03-09 01:13:03','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55894','15970526705','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:24:45','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55574','18909366247','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55572','0','0.00','0','0.00','0','0','0','2020-03-09 01:14:12','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55893','13876066097','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55891','0','0.00','0','0.00','0','0','0','2020-03-09 09:23:56','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55576','18093626233','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 01:14:50','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55892','18973819162','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:23:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55578','15166590923','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:15:37','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55891','13322050579','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55540','0','0.00','0','0.00','0','0','0','2020-03-09 09:23:13','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55890','15111231033','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:22:58','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55581','17634207831','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:16:33','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55582','13419099621','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:16:56','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55585','15084338365','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:17:55','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55584','13100351495','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:17:24','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55586','13856805700','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:18:16','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55587','15653358829','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:19:38','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55588','18037966179','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:19:58','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55589','18506072597','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55542','0','0.00','0','0.00','0','0','0','2020-03-09 01:20:12','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55590','15738251683','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:20:33','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55591','13409926750','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55589','0','0.00','0','0.00','0','0','0','2020-03-09 01:20:57','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55592','18280882983','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:21:13','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55593','15838894000','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:21:46','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55594','18243930508','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55591','0','0.00','0','0.00','0','0','0','2020-03-09 01:21:47','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55595','15994774877','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:22:08','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55596','17638577796','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:22:29','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55597','13006660510','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:22:49','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55598','18310237109','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55594','0','0.00','0','0.00','0','0','0','2020-03-09 01:23:02','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55599','13456831520','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:23:23','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55600','18347021837','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:23:47','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55601','15898337424','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55598','0','0.00','0','0.00','0','0','0','2020-03-09 01:24:04','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55602','17754465396','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55601','0','0.00','0','0.00','0','0','0','2020-03-09 01:24:45','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55603','18769986360','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:24:52','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55604','17339060197','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55602','0','0.00','0','0.00','0','0','0','2020-03-09 01:25:24','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55605','15538883869','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:26:09','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55606','13943919187','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55602','0','0.00','0','0.00','0','0','0','2020-03-09 01:26:14','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55607','18336466704','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:26:33','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55608','13194739638','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:27:44','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55609','15643974469','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55606','0','0.00','0','0.00','0','0','0','2020-03-09 01:27:51','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55610','15999587881','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:28:20','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55611','18786983688','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:28:48','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55612','18595846626','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:29:35','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55613','18738213471','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55604','0','0.00','0','0.00','0','0','0','2020-03-09 01:31:03','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55614','13343639827','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:31:45','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55615','15511134457','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55604','0','0.00','0','0.00','0','0','0','2020-03-09 01:31:48','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55616','13654405060','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:32:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55617','15623955507','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55604','0','0.00','0','0.00','0','0','0','2020-03-09 01:32:33','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55618','15083191755','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:32:47','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55619','13209563256','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:33:11','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55620','15197498176','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:33:40','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55621','15520878338','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55602','0','0.00','0','0.00','0','0','0','2020-03-09 01:33:48','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55622','15116835685','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:34:12','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55623','15277016460','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55602','0','0.00','0','0.00','0','0','0','2020-03-09 01:34:43','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55624','19881553078','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:42:07','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55625','17131948031','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:42:29','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55626','18846103177','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:42:47','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55627','13666383823','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:43:07','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55628','19965412404','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:43:29','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55629','15779026132','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55546','0','0.00','10','0.00','0','0','0','2020-03-09 01:43:31','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55630','13021783663','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:43:51','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55631','15034197421','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:44:12','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55632','15879434358','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55629','0','0.00','10','0.00','0','0','0','2020-03-09 01:44:13','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55633','18770210088','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:44:28','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55634','13706647229','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:44:46','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55635','13255871339','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:45:01','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55636','18473987011','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:45:19','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55637','18350228139','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55632','0','0.00','10','0.00','0','0','0','2020-03-09 01:45:24','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55638','13307589463','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:45:37','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55639','13646989373','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55638','0','0.00','0','0.00','0','0','0','2020-03-09 01:46:15','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55640','17770789095','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55637','0','0.00','10','0.00','0','0','0','2020-03-09 01:46:17','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55641','13328837785','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55638','0','0.00','0','0.00','0','0','0','2020-03-09 01:46:48','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55642','17770788905','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55640','0','0.00','0','0.00','0','0','0','2020-03-09 01:47:04','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55643','13860910108','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55638','0','0.00','0','0.00','0','0','0','2020-03-09 01:47:13','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55644','15630190581','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55638','0','0.00','0','0.00','0','0','0','2020-03-09 01:47:31','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55645','15377575554','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55638','0','0.00','0','0.00','0','0','0','2020-03-09 01:47:55','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55646','15758727331','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55642','0','0.00','0','0.00','0','0','0','2020-03-09 01:48:04','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55647','18642631950','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55638','0','0.00','0','0.00','0','0','0','2020-03-09 01:48:18','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55648','15507935730','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55638','0','0.00','0','0.00','0','0','0','2020-03-09 01:48:39','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55649','13928119859','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55646','0','0.00','0','0.00','0','0','0','2020-03-09 01:48:58','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55650','15277848220','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55638','0','0.00','0','0.00','0','0','0','2020-03-09 01:49:06','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55651','18613891964','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55644','0','0.00','0','0.00','0','0','0','2020-03-09 01:49:40','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55652','15302208273','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55644','0','0.00','0','0.00','0','0','0','2020-03-09 01:50:10','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55653','18326059600','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55649','0','0.00','0','0.00','0','0','0','2020-03-09 01:50:15','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55654','13114720216','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55644','0','0.00','0','0.00','0','0','0','2020-03-09 01:50:35','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55655','15385200066','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55644','0','0.00','0','0.00','0','0','0','2020-03-09 01:51:02','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55656','19862672268','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55646','0','0.00','0','0.00','0','0','0','2020-03-09 01:51:04','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55657','15690316671','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55644','0','0.00','0','0.00','0','0','0','2020-03-09 01:52:00','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55658','13044008667','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55656','0','0.00','0','0.00','0','0','0','2020-03-09 01:52:05','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55659','18538093877','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55644','0','0.00','0','0.00','0','0','0','2020-03-09 01:52:23','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55660','17608466753','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55644','0','0.00','0','0.00','0','0','0','2020-03-09 01:52:43','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55672','13416573227','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55669','0','0.00','0','0.00','0','0','0','2020-03-09 01:57:17','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55662','15684537380','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55644','0','0.00','0','0.00','0','0','0','2020-03-09 01:53:07','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55663','15256545052','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55644','0','0.00','0','0.00','0','0','0','2020-03-09 01:53:27','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55664','13620191134','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55644','0','0.00','0','0.00','0','0','0','2020-03-09 01:53:46','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55667','13015907276','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55644','0','0.00','0','0.00','0','0','0','2020-03-09 01:54:29','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55666','15759937262','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55644','0','0.00','0','0.00','0','0','0','2020-03-09 01:54:07','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55683','15900122894','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55669','0','0.00','0','0.00','0','0','0','2020-03-09 02:01:40','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55669','15627874857','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:55:46','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55670','13288121337','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55669','0','0.00','0','0.00','0','0','0','2020-03-09 01:56:24','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55671','18365738816','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55669','0','0.00','0','0.00','0','0','0','2020-03-09 01:56:52','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55673','15882587964','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55669','0','0.00','0','0.00','0','0','0','2020-03-09 01:58:05','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55674','18456527862','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55669','0','0.00','0','0.00','0','0','0','2020-03-09 01:58:33','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55675','15161783546','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55656','0','0.00','0','0.00','0','0','0','2020-03-09 01:58:51','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55676','18358863086','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55669','0','0.00','0','0.00','0','0','0','2020-03-09 01:58:56','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55677','13670734639','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55669','0','0.00','0','0.00','0','0','0','2020-03-09 01:59:19','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55678','15992355654','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55669','0','0.00','0','0.00','0','0','0','2020-03-09 01:59:43','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55679','18823646068','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55669','0','0.00','0','0.00','0','0','0','2020-03-09 02:00:07','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55680','18504225793','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55669','0','0.00','0','0.00','0','0','0','2020-03-09 02:00:32','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55681','13397810619','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55669','0','0.00','0','0.00','0','0','0','2020-03-09 02:00:54','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55682','17708246622','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55669','0','0.00','0','0.00','0','0','0','2020-03-09 02:01:17','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55684','13504537105','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55669','0','0.00','0','0.00','0','0','0','2020-03-09 02:02:03','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55685','13852354319','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55675','0','0.00','0','0.00','0','0','0','2020-03-09 02:02:19','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55686','13845687890','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55669','0','0.00','0','0.00','0','0','0','2020-03-09 02:02:24','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55687','13712208973','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55669','0','0.00','0','0.00','0','0','0','2020-03-09 02:02:47','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55688','15315366627','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55656','0','0.00','0','0.00','0','0','0','2020-03-09 02:03:11','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55689','18174501139','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55687','0','0.00','0','0.00','0','0','0','2020-03-09 02:03:29','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55690','13671878654','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55656','0','0.00','0','0.00','0','0','0','2020-03-09 02:03:55','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55691','15684699271','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55687','0','0.00','0','0.00','0','0','0','2020-03-09 02:04:30','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55692','15006885266','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55656','0','0.00','0','0.00','0','0','0','2020-03-09 02:04:38','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55693','13296683647','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55687','0','0.00','0','0.00','0','0','0','2020-03-09 02:05:12','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55694','13611841949','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55642','0','0.00','0','0.00','0','0','0','2020-03-09 02:05:14','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55695','17698299179','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55689','0','0.00','0','0.00','0','0','0','2020-03-09 02:05:45','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55696','18366378296','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55656','0','0.00','0','0.00','0','0','0','2020-03-09 02:05:54','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55697','13670585735','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55695','0','0.00','0','0.00','0','0','0','2020-03-09 02:06:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55698','13206442793','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55688','0','0.00','0','0.00','0','0','0','2020-03-09 02:06:45','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55699','17554330821','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55695','0','0.00','0','0.00','0','0','0','2020-03-09 02:06:50','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55700','13781743949','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55688','0','0.00','0','0.00','0','0','0','2020-03-09 02:07:21','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55701','13567108240','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55688','0','0.00','0','0.00','0','0','0','2020-03-09 02:08:18','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55702','15376721396','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55688','0','0.00','0','0.00','0','0','0','2020-03-09 02:08:52','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55703','13677506280','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55688','0','0.00','0','0.00','0','0','0','2020-03-09 02:09:26','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55704','18585696984','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:10:30','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55705','13729937389','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:11:02','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55706','13356882557','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:11:26','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55707','15199076899','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:13:02','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55708','15070360600','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:14:56','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55709','15620970384','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:15:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55710','18219037840','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:15:53','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55711','13473721303','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:16:26','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55712','16677273039','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:16:55','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55713','13855257862','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:17:20','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55714','13328377608','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:17:49','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55715','15565154593','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:24:49','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55716','13362230797','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:25:15','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55717','19842510302','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:25:55','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55718','18670110763','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:26:21','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55719','13754168444','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:26:49','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55720','13775980295','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:27:16','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55721','13785183610','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:27:47','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55722','17821828613','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:28:12','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55723','18887983350','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:28:33','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55724','18533758562','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:29:01','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55725','13137768510','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:29:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55726','13961036142','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:29:43','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55727','13513439579','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:30:05','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55728','15536667639','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:30:27','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55729','18470334238','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:30:50','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55730','13673593108','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:31:10','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55731','18158263510','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:32:49','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55732','18877724117','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:33:16','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55733','15118019144','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:33:39','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55734','15501772669','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:35:47','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55735','19961591254','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:36:32','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55736','18236473931','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:37:10','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55737','15975177593','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:37:59','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55738','13569795350','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:41:38','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55739','18344533476','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:42:04','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55740','15169267833','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:42:29','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55741','13328696783','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:43:09','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55742','18705088290','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:43:43','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55743','18061299098','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:44:43','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55744','15943399228','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:45:39','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55745','17853818373','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55564','0','0.00','0','0.00','0','0','0','2020-03-09 02:47:53','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55746','19906973776','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55745','0','0.00','0','0.00','0','0','0','2020-03-09 02:49:02','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55747','18760161178','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55746','0','0.00','0','0.00','0','0','0','2020-03-09 02:49:40','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55748','15122938885','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55745','0','0.00','0','0.00','0','0','0','2020-03-09 02:50:21','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55749','15229512787','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55745','0','0.00','0','0.00','0','0','0','2020-03-09 02:51:01','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55750','18370616648','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55566','0','0.00','0','0.00','0','0','0','2020-03-09 02:51:48','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55751','18296675305','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55750','0','0.00','0','0.00','0','0','0','2020-03-09 02:52:28','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55752','17690000518','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55745','0','0.00','0','0.00','0','0','0','2020-03-09 02:53:05','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55753','15088833352','无','无','0','d57dd5fbca7a1e580d8ac2f92f5ef3a1','d57dd5fbca7a1e580d8ac2f92f5ef3a1','55494','0','0.00','0','0.00','1583709134','0','0','2020-03-09 03:31:16','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55754','15957778759','无','无','0','d57dd5fbca7a1e580d8ac2f92f5ef3a1','d57dd5fbca7a1e580d8ac2f92f5ef3a1','55753','0','0.00','0','0.00','1583708845','0','0','2020-03-09 07:07:18','119.165.104.92','0','','0.00','15','','0');
INSERT INTO `user` VALUES('55755','17858704295','无','无','0','d57dd5fbca7a1e580d8ac2f92f5ef3a1','d57dd5fbca7a1e580d8ac2f92f5ef3a1','55753','0','0.00','0','0.00','1583708947','0','0','2020-03-09 07:08:59','119.165.104.92','0','','0.00','0','','0');
INSERT INTO `user` VALUES('55756','17347224148','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55567','0','0.00','0','0.00','0','0','0','2020-03-09 07:14:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55757','18073789565','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55756','0','0.00','0','0.00','0','0','0','2020-03-09 07:14:58','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55758','15020915337','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:16:28','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55759','15008262324','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:17:17','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55760','15957119247','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:18:10','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55761','15180135388','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:18:40','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55762','18324351817','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:19:00','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55763','15011376459','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:19:24','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55764','19107472480','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:19:45','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55765','15070006641','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:20:08','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55766','13693302298','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:20:34','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55767','13390987488','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:20:52','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55768','18169479427','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:21:12','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55769','18668994914','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:21:53','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55770','17635003285','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:22:13','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55771','13111085346','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:22:31','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55772','13429475178','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:23:13','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55773','16651385152','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:23:38','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55774','16726383685','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:23:56','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55775','17643192854','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:24:13','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55776','13911355313','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:24:31','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55777','18088177576','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:24:49','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55778','13594572114','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:25:06','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55779','18812126721','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:25:20','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55780','13853739789','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:25:35','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55781','13869984000','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:25:51','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55782','13963007101','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:26:11','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55783','13237539399','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:26:28','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55784','13824741341','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:26:47','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55785','17319258057','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:27:13','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55786','15504329071','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:27:28','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55787','15623370693','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:27:48','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55788','13737244905','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:28:04','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55789','13502491285','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:28:21','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55790','13510580382','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:28:41','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55791','13904916325','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:28:56','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55792','15586239751','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:29:13','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55793','13071665887','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:29:28','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55794','13479465140','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 07:29:55','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55795','15216100458','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 07:30:17','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55796','19108403583','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 07:30:36','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55797','18295085445','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 07:30:55','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55798','13610390286','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 07:31:39','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55799','15977391323','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 07:31:56','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55800','13983514353','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 07:32:13','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55801','18616556567','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 07:32:30','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55802','18933629693','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 07:33:04','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55803','15812957138','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 07:33:21','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55804','18978939921','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 07:33:36','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55805','13022527580','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 07:34:20','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55806','13610473150','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 07:34:38','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55807','18663147525','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:37:01','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55808','13538148974','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:37:20','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55809','13210524168','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:37:49','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55810','18365427403','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:38:08','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55811','18775232787','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:39:00','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55812','13155826808','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:39:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55813','15629149302','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:39:38','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55814','18476594233','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:40:01','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55815','13927590084','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:40:24','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55816','18244958992','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:40:41','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55817','13798267294','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:41:09','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55818','18223753117','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:41:42','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55819','13927570620','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:43:19','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55820','15812816725','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:43:38','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55821','17740128990','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:44:12','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55822','13559788423','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:45:02','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55823','17398808885','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:45:19','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55824','18677451317','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:45:40','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55825','18200176251','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:46:04','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55826','18476437360','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:46:56','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55827','18073034763','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:47:15','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55828','15506581680','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:48:05','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55829','18974982060','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:48:30','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55830','13713050938','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:48:48','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55831','18889930438','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:49:08','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55832','18395081786','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:49:26','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55833','13538304311','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:49:44','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55834','13927591640','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:50:02','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55835','13512968886','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:50:18','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55836','17624599108','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:50:34','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55837','13058833247','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:50:51','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55838','18612707877','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:51:29','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55839','18777011078','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:51:45','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55840','15046198677','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:52:04','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55841','18814694124','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:52:28','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55842','15317103256','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:55:05','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55843','15097199018','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:55:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55844','18952709179','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:55:40','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55845','15145026158','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:55:56','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55846','18235933986','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:56:18','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55847','17788839483','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:56:36','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55848','18249043672','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:56:54','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55849','13314702311','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:57:10','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55850','13402079536','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:57:28','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55851','18668326502','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:57:46','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55852','18273532544','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:58:04','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55853','16635717225','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:58:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55854','13838730804','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:58:38','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55855','13513673670','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:58:55','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55856','15393200533','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:59:11','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55857','15174229662','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 08:59:26','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55858','15119634634','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:00:01','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55859','15706661940','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:00:18','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55860','15819130663','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:00:41','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55861','18306684213','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:00:58','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55862','15028733783','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:01:14','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55863','17376519497','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:01:34','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55864','18476313231','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:01:51','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55865','18582309915','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:02:07','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55866','15895880048','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:02:21','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55867','18734657084','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:02:36','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55868','18181146708','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:02:52','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55869','16604776268','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55609','0','0.00','0','0.00','0','0','0','2020-03-09 09:03:00','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55870','18982584578','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:03:08','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55871','13361210926','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:03:23','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55872','18576363576','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:03:41','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55873','18577184959','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:03:57','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55874','13268213460','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55606','0','0.00','0','0.00','0','0','0','2020-03-09 09:04:05','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55875','15946172839','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:04:12','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55876','13642624500','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:04:27','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55877','13875356165','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:04:41','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55878','13038279881','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:04:56','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55879','13462816868','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:05:11','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55880','15191062526','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:05:26','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55881','13185579007','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:05:46','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55882','13237382205','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:06:02','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55883','13922550445','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:06:17','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55884','13710473752','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:06:32','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55885','17177315333','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:06:48','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55886','15674935587','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:07:03','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55887','13487586087','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:07:18','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55888','13975143699','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:07:35','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55889','15107386626','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:08:38','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55907','13537348747','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:28:11','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55908','15196336665','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:28:27','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55909','15993702893','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55904','0','0.00','0','0.00','0','0','0','2020-03-09 09:28:35','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55910','19118853202','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:28:42','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55911','18870473174','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:29:00','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55912','18873810735','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:29:16','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55913','18358245925','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:29:32','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55914','13827598252','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:29:50','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55915','18535284084','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:30:08','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55916','18865110814','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55904','0','0.00','0','0.00','0','0','0','2020-03-09 09:30:17','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55917','13293735003','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:30:37','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55918','15232469335','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:30:54','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55919','18933607729','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:31:13','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55920','15555212996','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55916','0','0.00','0','0.00','0','0','0','2020-03-09 09:31:20','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55921','15336981890','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:31:41','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55922','13511271129','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:31:59','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55923','18566153270','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:32:17','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55924','16608843564','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55916','0','0.00','0','0.00','0','0','0','2020-03-09 09:32:51','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55925','17346967364','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:33:09','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55926','15133713162','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55916','0','0.00','0','0.00','0','0','0','2020-03-09 09:33:26','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55927','13517928997','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:34:13','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55928','17769517745','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55916','0','0.00','0','0.00','0','0','0','2020-03-09 09:34:13','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55929','15766058543','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:34:53','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55930','17596979780','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:35:14','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55931','17776492012','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55904','0','0.00','0','0.00','0','0','0','2020-03-09 09:35:23','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55932','15778047811','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:35:30','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55933','17896755909','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:35:49','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55934','18909845170','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55904','0','0.00','0','0.00','0','0','0','2020-03-09 09:36:06','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55935','13721830300','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:36:07','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55936','13386366690','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:36:24','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55937','13053686636','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:36:41','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55938','18906461952','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:37:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55939','15318917651','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:37:43','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55940','17635044023','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:38:37','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55941','18698534221','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:38:53','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55942','13330908915','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55934','0','0.00','0','0.00','0','0','0','2020-03-09 09:39:01','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55943','17377112913','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:39:16','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55944','18617027510','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:39:30','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55945','19985562121','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:39:45','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55946','15390874571','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:40:06','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55947','13628115424','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55934','0','0.00','0','0.00','0','0','0','2020-03-09 09:40:10','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55948','13075881432','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:40:24','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55949','18438573229','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:40:43','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55950','17521519445','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:40:59','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55951','13982048884','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55904','0','0.00','0','0.00','0','0','0','2020-03-09 09:41:12','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55952','18024859895','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:41:13','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55953','18032696051','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:41:30','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55954','15879752633','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:41:45','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55955','15727212262','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55904','0','0.00','0','0.00','0','0','0','2020-03-09 09:41:59','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55956','13170970212','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:42:14','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55957','18379475410','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:42:31','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55958','15767900092','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:42:48','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55959','13100940764','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55904','0','0.00','0','0.00','0','0','0','2020-03-09 09:43:03','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55960','17362061659','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:43:03','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55961','14715915005','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:43:20','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55962','13921993572','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:43:35','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55963','13555209708','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55959','0','0.00','0','0.00','0','0','0','2020-03-09 09:43:37','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55964','15690629507','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:43:51','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55965','18814657767','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55963','0','0.00','0','0.00','0','0','0','2020-03-09 09:44:06','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55966','13097318470','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:44:12','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55967','18863635167','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:44:29','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55968','18879363418','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55965','0','0.00','0','0.00','0','0','0','2020-03-09 09:44:39','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55969','17678047811','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:44:50','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55970','18631048967','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55965','0','0.00','0','0.00','0','0','0','2020-03-09 09:45:12','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55971','19150260227','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:45:13','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55972','16556288628','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:45:27','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55973','13097075475','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:45:42','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55974','17660552944','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55965','0','0.00','0','0.00','0','0','0','2020-03-09 09:45:47','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55975','13970717682','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:46:03','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55976','17319479032','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55965','0','0.00','0','0.00','0','0','0','2020-03-09 09:46:14','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55977','13033259403','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:46:20','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55978','13879155795','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:46:46','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55979','17673379973','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55965','0','0.00','0','0.00','0','0','0','2020-03-09 09:46:59','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55980','15727689584','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:47:05','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55981','15296402368','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:47:26','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55982','17585391505','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55965','0','0.00','0','0.00','0','0','0','2020-03-09 09:47:30','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55983','13046068131','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:47:45','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55984','18858341109','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55965','0','0.00','0','0.00','0','0','0','2020-03-09 09:48:00','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55985','13097314860','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:48:20','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55986','17353165013','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55965','0','0.00','0','0.00','0','0','0','2020-03-09 09:48:32','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55987','13666360296','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:48:37','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55988','15309648390','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:48:54','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55989','15152816402','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55965','0','0.00','0','0.00','0','0','0','2020-03-09 09:49:13','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55990','13097076614','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:49:15','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55991','15970684932','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:49:31','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55992','13185146204','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:49:45','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55993','18632520102','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55965','0','0.00','0','0.00','0','0','0','2020-03-09 09:49:49','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55994','13097315421','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:50:09','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55995','13237297551','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55965','0','0.00','0','0.00','0','0','0','2020-03-09 09:50:22','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55996','13033231407','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:50:32','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55997','15138011008','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55965','0','0.00','0','0.00','0','0','0','2020-03-09 09:50:48','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55998','13033231470','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:50:53','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55999','17379749989','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:51:10','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56000','15286107207','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55965','0','0.00','0','0.00','0','0','0','2020-03-09 09:51:18','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56001','18695081786','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:51:27','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56002','17128137330','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:51:42','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56003','16562112358','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:51:58','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56004','13828202401','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:52:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56005','17319318283','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55965','0','0.00','0','0.00','0','0','0','2020-03-09 09:52:24','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56006','17329838826','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:52:37','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56007','18898312084','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:52:50','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56008','15549087900','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55904','0','0.00','0','0.00','0','0','0','2020-03-09 09:53:06','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56009','18305617322','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:53:14','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56010','15263569680','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:53:47','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56011','15108429423','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55904','0','0.00','0','0.00','0','0','0','2020-03-09 09:54:05','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56012','18594009051','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:54:11','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56013','13595676391','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:54:25','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56014','13438870171','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56011','0','0.00','0','0.00','0','0','0','2020-03-09 09:54:40','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56015','15886759309','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:54:49','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56016','19194238044','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:57:20','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56017','18782032573','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56014','0','0.00','0','0.00','0','0','0','2020-03-09 09:57:45','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56018','18252841101','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 09:58:03','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56019','18733492111','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 09:58:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56020','18328089670','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56017','0','0.00','0','0.00','0','0','0','2020-03-09 09:58:40','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56021','17638787629','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 09:58:42','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56022','18056803350','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 09:59:13','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56023','18147580085','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56020','0','0.00','0','0.00','0','0','0','2020-03-09 09:59:30','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56024','18364945597','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 09:59:30','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56025','18205405063','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 09:59:46','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56026','17637427265','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 10:00:03','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56027','15068169429','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 10:00:23','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56028','13345485972','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55904','0','0.00','0','0.00','0','0','0','2020-03-09 10:00:37','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56029','17859576062','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 10:00:44','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56030','18132205592','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 10:01:01','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56031','15723381181','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 10:01:18','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56032','13957194263','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55547','0','0.00','0','0.00','0','0','0','2020-03-09 10:01:30','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56033','18685584780','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 10:01:35','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56034','13083026634','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:03:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56035','18365132558','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:03:40','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56036','17324806505','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:03:54','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56037','15770886511','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:04:11','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56038','13568639921','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:04:29','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56039','18134242515','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:04:47','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56040','13738125299','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:05:04','119.165.104.92','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56041','15980365227','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:07:10','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56042','18453355143','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:08:09','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56043','13751303350','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:08:54','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56044','17634779115','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:09:10','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56045','15027522266','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:09:29','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56046','17820427775','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:09:46','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56047','15157596958','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:10:04','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56048','18746782981','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:10:19','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56049','18359333900','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:10:34','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56050','13637116736','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:10:50','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56051','18176445220','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:11:05','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56052','16559160547','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:11:21','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56053','15145350368','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:11:36','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56054','18270244582','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:11:51','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56055','15128864485','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:12:06','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56056','15797700306','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:12:21','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56057','15143492517','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:12:33','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56058','15083222394','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:12:43','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56059','15759766705','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:12:55','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56060','13086647666','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:13:06','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56061','18377010525','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:13:16','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56062','15140142363','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:13:26','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56063','18403829940','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:13:37','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56064','18831524961','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:13:47','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56065','13136228475','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:13:57','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56066','15081456345','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:14:08','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56067','13547392990','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:14:20','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56068','15232451897','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:14:29','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56069','15363973139','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:14:38','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56070','18832515149','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:14:48','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56071','18075796107','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:14:58','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56072','16504038315','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:15:10','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56073','18724624702','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:15:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56074','13383800483','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:15:32','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56075','15030494115','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:15:45','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56076','15128861984','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:15:58','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56077','15684341402','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:16:33','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56078','13958195847','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:16:55','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56079','15066745603','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:17:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56080','13854435871','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:17:37','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56081','13557739510','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:18:08','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56082','13848801175','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:18:33','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56083','15542271383','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:18:48','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56084','13591477728','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:19:14','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56085','13591475752','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:19:26','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56086','13757144857','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:19:38','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56087','13750694093','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:19:48','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56088','13840190196','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:19:59','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56089','15041243063','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:20:10','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56090','18204024323','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:20:20','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56091','13898809884','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:20:32','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56092','13609828872','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:20:44','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56093','18632569712','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:20:55','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56094','13711521803','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:21:08','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56095','18039983682','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:21:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56096','15974204517','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55772','0','0.00','0','0.00','0','0','0','2020-03-09 10:21:37','119.165.104.92','0','','0.00','0','','2');
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

INSERT INTO `user_member` VALUES('8024','创业理事','500','2');
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
