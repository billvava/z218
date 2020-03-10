-- MySQL database dump
-- 主机: 
-- 生成日期: 2020 年  03 月 09 日 19:37
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

INSERT INTO `article` VALUES('69','新加坡丰益集团介绍','1011','','&lt;p&gt;&lt;span class=&quot;text-able&quot; style=&quot;-webkit-tap-highlight-col: transparent; margin: 0px; padding: 0px; -webkit-user-: text;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;/span&gt;&lt;span style=&quot;col: rgb(238, 236, 225); margin: 0px; padding: 0px;&quot;&gt;&amp;nbsp; 丰益国际集团（Wilmar International）成立于1991年，经过近三十年的发展，已发展成为一个农业综合型跨国粮油企业集团。2010年起连续入选“全球最受赞赏公司排行榜-食品生产行业”之一。2018年营业额445亿美元，荣列2019年世界500强258位。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(238, 236, 225); margin: 0px; padding: 0px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 作为丰益国际集团在中国大陆投资的一系列粮油食品加工、销售等业务的统称的益海嘉里集团（是以益海嘉里金龙鱼粮油食品股份有限公司为核心的企业集团的简称），是由著名爱国华侨郭鹤年先生和他的侄子郭孔丰先生共同投资，旗下拥有家喻户晓的金龙鱼、欧丽薇兰、胡姬花等著名粮油品牌。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(238, 236, 225); margin: 0px; padding: 0px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2018年7月19日，《财富》世界500强排行榜发布，丰益国际位列248位。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2018年11月，益海嘉里母公司丰益国际携旗下众多产品亮相进博会。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;丰益国际集团成立于1991年，是世界领先的农业综合型跨国粮油企业集团，荣列2019年《财富》世界500强第258位。在全球拥有超过900家加工厂，大部分位于亚洲、非洲“一带一路”沿线，全球员工超过9万名。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;丰益国际业务范围包括棕榈种植，油籽压榨，食用油精炼，食糖加工和提炼，消费品、专用油脂、面粉及大米加工，油脂化工品、棕榈生物柴油和化肥制造等，销售网络遍及中国、印度、印尼等50多个国家和地区。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(238, 236, 225); margin: 0px; padding: 0px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 荣誉：《财富》杂志2019年全球500强排名第258位&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 《财富》杂志2012年全球最受赞赏公司：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;食品生产行业中排名第1位，并于2010年起连续入选“全球最受赞赏公司排行榜-食品生产行业”&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;2017福布斯全球企业2000强，排名第388位。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;2012年全球最受赞赏公司：食品生产行业中排名第1位&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(238, 236, 225); margin: 0px; padding: 0px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;家喻户晓的益海嘉里及“金龙鱼”食用油就出自该集团。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;据了解，丰益国际全球研发中心是全球粮油产业中最大的纯研发中心之一，丰益国际将以此为平台，加强对外合作交流，借助全球的智慧，促进前沿的技术在中国的科技转化，带动中国从“粮油消费大国”转变为“粮油科技大国”, 真正让中国农业在世界粮油领域占据话语权，改变世界粮油发展被欧美国家控制的局面。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;丰益全球研发中心将建设成为粮油技术与产品研发，新产品及技术咨询，产品技术服务，科技合作与交流，粮油食品专业人才培育的“5个中心”，对全球粮油行业发展共同关注的6大技术领域进行研究。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(238, 236, 225);&quot;&gt;&lt;strong style=&quot;font-size: 20px;&quot;&gt;在中国的发展&lt;/strong&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(238, 236, 225); margin: 0px; padding: 0px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;作为知名侨商之一，丰益国际集团对中国有着深厚的感情，一直以实际行动支持中国发展。对丰益国际而言，中国是最重要的投资发展基地和产品销售市场。2018 年益海嘉里营业额 250 亿美元，约占丰益国际全球营业额的 56%。丰益国际旗下益海嘉里在上海设立研发中心，丰益国际积极发挥全球产业布局优势，将各国优质农产品输送到中国。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 中国是丰益国际重要的投资发展基地和产品销售市场，每年从全球进口到中国的农产品和食品的货值总额超过100亿美元，且有较大的增长空间。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(238, 236, 225); margin: 0px; padding: 0px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 益海嘉里及母公司丰益国际将抓住扩大开放机遇，在中国进一步扩大投资和贸易合作，继续利用全球布局的优势，将世界各地尤其是“一带一路”沿线国家的更多优质优价产品输送到中国助力提升中国食品安全。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(238, 236, 225);&quot;&gt;&lt;strong&gt;&lt;span style=&quot;col: rgb(238, 236, 225); margin: 0px; padding: 0px; font-size: 20px;&quot;&gt;&amp;nbsp;发展历程&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2018年：丰益国际旗下益海嘉里集团金龙鱼总部大厦在上海浦东落成。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2010年：丰益国际旗下益海嘉里集团金龙鱼大米产业链创新技术荣获中国粮油学会科学技术奖一等奖。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2009年：丰益国际及其益海嘉里将全球研发中心落户上海。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2007年，丰益国际整合在华投资粮油企业，成立益海嘉里集团。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2006年：丰益国际旗下益海嘉里集团金龙鱼成为北京2008年奥运会食用油独家供应商。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(238, 236, 225); margin: 0px; padding: 0px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2002年：丰益国际旗下益海嘉里集团金龙鱼第二代食用调和油上市。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2000年：丰益国际整合在华粮油企业，统称为益海集团。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(238, 236, 225);&quot;&gt;&lt;strong&gt;&lt;span style=&quot;col: rgb(238, 236, 225); margin: 0px; padding: 0px; font-size: 20px;&quot;&gt;企业荣誉&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;2019年7月，《财富》世界500强排行榜发布，丰益国际位列258位。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;2017年，2017福布斯全球企业2000强，排名第388位。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2012年，《财富》杂志2012年全球最受赞赏公司：食品生产行业中排名第1位，并于2010年起连续入选“全球最受赞赏公司排行榜-食品生产行业”&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&lt;strong&gt;&lt;span style=&quot;col: rgb(238, 236, 225); margin: 0px; padding: 0px; font-size: 20px;&quot;&gt;企业责任&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; col: rgb(238, 236, 225);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 丰益国际注重与当地合作伙伴共同发展事业，实行本土化企业管理，研发生产适合当地市场的优质产品，提倡可持续发展的理念，成为保护环境、造福社会、责任担当的企业公民。&lt;/span&gt;&lt;/p&gt;','2020-03-08 14:08:00','1','20200308142122.jpg');
INSERT INTO `article` VALUES('70','一分钟读懂丰益国际','1012','','&lt;p&gt;丰益国际是一本书&amp;nbsp;&lt;/p&gt;&lt;p&gt;有人只看了封面&lt;/p&gt;&lt;p&gt;有人只阅了目录&lt;/p&gt;&lt;p&gt;有人随意翻了几页&lt;/p&gt;&lt;p&gt;有人耐心一字一句地看了&lt;/p&gt;&lt;p&gt;有人边阅边写心得&lt;/p&gt;&lt;p&gt;边写总结，读懂了，也领悟了，也看清了方向与明天！&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;丰益国际只度有缘人，无缘千佛也难渡!&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;【丰益国际】平台！10元即可参与！模式独特创新有亮点！简单易懂！控盘严谨！控进不控出！矿产可循环复投！生生不息！长长久久！随时提现快速到账！&lt;/p&gt;&lt;p&gt;&amp;nbsp;静态：投资购买理财每天3-8％，可提现！可先复投去倍增！&lt;/p&gt;&lt;p&gt;收益够1元就可复投，每天3-8％的倍增更给力！&lt;/p&gt;&lt;p&gt;收益也可随时提现，提现真正的快速到账！&lt;/p&gt;&lt;p&gt;&amp;nbsp;动态：推广市场拿28代奖励&lt;/p&gt;&lt;p&gt;模式就这么简单！&lt;/p&gt;&lt;p&gt;看懂速加入！我们一起努力！一起赚大钱！&lt;/p&gt;&lt;p&gt;再好的平台项目！你不参与永远是个局外人！不参与更不会赚到钱！&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 再牛逼的项目，提现不顺畅，那就是套路。&lt;/p&gt;&lt;p&gt;&amp;nbsp; 吹的再牛，那都是忽悠，项目真实实力 、真正目的，从【提现】这个问题上就能看出来。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;【丰益国际】就是这样一个 连每一个静态会员都能安心赚到钱的项目，不玩套路，也不用说的太多，公司一直用实际行动证明自己的实力！&lt;/p&gt;&lt;p&gt;2020的口号就是&lt;/p&gt;&lt;p&gt;地球不爆炸，我们不放假！&lt;/p&gt;&lt;p&gt;宇宙不重启，我们不休息！&lt;/p&gt;&lt;p&gt;风里、雨里、 雾里、 霾里， 我永远在【丰益国际】等你&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;遇见你之前，我千挑万选。&lt;/p&gt;&lt;p&gt;遇上你之后，我钟情不变。&lt;/p&gt;&lt;p&gt;&amp;nbsp;“刚好遇见你”&lt;/p&gt;&lt;p&gt;&amp;nbsp;“从此不放弃”&lt;/p&gt;&lt;p&gt;&amp;nbsp;丰益国际——为财富而生！&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;【丰益国际】怎么玩？&lt;/p&gt;&lt;p&gt;找推荐人识别二维码注册下载APP&lt;/p&gt;&lt;p&gt;&amp;nbsp;点购买理财激活账户，10元起购，封顶20000理财&lt;/p&gt;&lt;p&gt;&amp;nbsp;静态每天按3-8%分红，2倍出局！每天晚上0点过后开始分红&lt;/p&gt;&lt;p&gt;&amp;nbsp;直接分红到余额钱包提现，可复投&lt;/p&gt;&lt;p&gt;&amp;nbsp;满1块钱，直接提现到支付宝，不扣任何手续费，实力公司，全网首发&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 丰益国际 火爆来袭&lt;/p&gt;&lt;p&gt;&amp;nbsp;10元即可投资&lt;/p&gt;&lt;p&gt;&amp;nbsp;1元即可提现，0手续费&lt;/p&gt;&lt;p&gt;&amp;nbsp;静态投资按3-8%每天分红&lt;/p&gt;&lt;p&gt;&amp;nbsp;10元拿28代推广奖励&lt;/p&gt;&lt;p&gt;&amp;nbsp;现全网对接领导人，2020一起共赢未来&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;怀疑的，拿100试试！&lt;/p&gt;&lt;p&gt;有兴趣的，拿1000试试！&lt;/p&gt;&lt;p&gt;想解决问题的，拿5000试试！&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;丰益国际理财表&amp;nbsp;&lt;/p&gt;&lt;p&gt;投100，每天分红3-8元&lt;/p&gt;&lt;p&gt;投500，每天分红15-40元&lt;/p&gt;&lt;p&gt;投1000，每天分红30-80元&lt;/p&gt;&lt;p&gt;投2000，每天分红60-160元&lt;/p&gt;&lt;p&gt;投5000，每天分红150-400元&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;最低可以投10元，&lt;/p&gt;&lt;p&gt;控进不控出&amp;nbsp;&lt;/p&gt;&lt;p&gt;今天报单，晚上12点分红。&lt;/p&gt;&lt;p&gt;全年无休假&amp;nbsp; 天天分红，&lt;/p&gt;&lt;p&gt;提现无手续费&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','2020-03-08 14:24:27','1','20200308142717.jpg');
INSERT INTO `article` VALUES('71','丰益国际操作注意事项','1013','','&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;欢迎大家来到新加坡丰益国际金融理财板块&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;怎么购买丰益理财产品？&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;注册好下载丰益国际APP&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;在商城首页理财板块根据自己情况选择理财产品&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;选定产品直接立即购买&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;可以手动增加投资金额&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;选择支付宝支付即可&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;购买支付成功累计投资没有怎么办？&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;第一时间联系客服&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;截图支付凭证和ID账号提交客服&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;今天购买什么时候开始有分红？&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;当天购买、过晚上24：00准时发放理财金&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;余额怎么提现？&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;提现早上9：00-晚上21：00&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;T+0到账支付宝&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;1元起提现&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;丰益币有什么用？&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;丰益集团第一步金融理财打造大数据&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;第二步跨界上交易所&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;col: rgb(242, 242, 242);&quot;&gt;那个时候就会一币难求&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','2020-03-09 03:09:02','1','20200309032038.jpg');
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
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='提现记录';

--
-- 转存表中的数据 cash

INSERT INTO `cash` VALUES('75','55567','邬立春','15526326905','321.00','1','2020-03-09 18:48:10','2020-03-09 19:04:09');
INSERT INTO `cash` VALUES('76','56193','柯礼文','15270850726','160.00','1','2020-03-09 18:48:55','2020-03-09 19:06:54');
INSERT INTO `cash` VALUES('77','55756','邬立春','17347224148','20.00','1','2020-03-09 18:59:40','2020-03-09 19:07:16');
INSERT INTO `cash` VALUES('78','55757','邬立春','18073789565','40.00','1','2020-03-09 19:00:19','2020-03-09 19:08:28');
INSERT INTO `cash` VALUES('79','55543','无','15256336862','21.00','2','2020-03-09 19:04:31','2020-03-09 19:13:44');
INSERT INTO `cash` VALUES('80','55642','曾天长','17770788905','13.00','1','2020-03-09 19:04:46','2020-03-09 19:10:11');
INSERT INTO `cash` VALUES('81','55543','崔恩强','15256336862','25.00','1','2020-03-09 19:19:44','2020-03-09 19:21:48');
INSERT INTO `cash` VALUES('82','55646','钟方福','15758727331','43.20','1','2020-03-09 19:21:32','2020-03-09 19:24:48');
INSERT INTO `cash` VALUES('83','55764','王元松','1845843263@qq.com','141.00','1','2020-03-09 19:24:14','2020-03-09 19:26:06');
INSERT INTO `cash` VALUES('84','55601','朱吉梅','15898337424','1.00','1','2020-03-09 19:25:36','2020-03-09 19:27:47');
INSERT INTO `cash` VALUES('85','55539','吴燕荣','13409926750','27.00','1','2020-03-09 19:25:59','2020-03-09 19:29:22');
INSERT INTO `cash` VALUES('86','56193','柯礼文','15270850726','8.00','1','2020-03-09 19:26:38','2020-03-09 19:31:11');
INSERT INTO `cash` VALUES('87','55609','于波','18243930508','23.00','1','2020-03-09 19:29:26','2020-03-09 19:32:31');
INSERT INTO `cash` VALUES('88','55598','敦攀攀','18310237109','1.40','0','2020-03-09 19:36:55','0000-00-00 00:00:00');
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
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

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
INSERT INTO `customer` VALUES('24','56323','0','1583741865','九点','0');
INSERT INTO `customer` VALUES('25','56345','0','1583750933','投2000的怎么没有收益？','0');
INSERT INTO `customer` VALUES('26','56345','0','1583751330','投的没有收益？','0');
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
) ENGINE=MyISAM AUTO_INCREMENT=5730229 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='财务表';

--
-- 转存表中的数据 finance

INSERT INTO `finance` VALUES('5729780','55753','10.00','1','投资10元！','0.00','2020-03-09 12:15:50');
INSERT INTO `finance` VALUES('5729781','55494','0.80','1','推荐会员投资10元奖励1代0.8元！','0.80','2020-03-09 12:15:50');
INSERT INTO `finance` VALUES('5729782','55753','10.00','1','投资10元！','0.00','2020-03-09 12:16:54');
INSERT INTO `finance` VALUES('5729783','55494','0.80','1','推荐会员投资10元奖励1代0.8元！','1.60','2020-03-09 12:16:54');
INSERT INTO `finance` VALUES('5729784','56318','10.00','1','充值','0.00','2020-03-09 14:09:31');
INSERT INTO `finance` VALUES('5729785','56318','10.00','1','投资10元！','0.00','2020-03-09 14:09:31');
INSERT INTO `finance` VALUES('5729786','55754','1.50','1','会员投资10元获得团队奖1.5元！','0.00','2020-03-09 14:09:31');
INSERT INTO `finance` VALUES('5729787','55753','1.00','1','会员投资10元获得团队奖1元！','0.00','2020-03-09 14:09:31');
INSERT INTO `finance` VALUES('5729788','55753','0.60','1','推荐会员投资10元奖励2代0.6元！','1.60','2020-03-09 14:09:31');
INSERT INTO `finance` VALUES('5729789','55494','0.20','1','推荐会员投资10元奖励3代0.2元！','1.80','2020-03-09 14:09:31');
INSERT INTO `finance` VALUES('5729790','56321','10.00','1','充值','0.00','2020-03-09 14:15:56');
INSERT INTO `finance` VALUES('5729791','56321','10.00','1','投资10元！','0.00','2020-03-09 14:15:56');
INSERT INTO `finance` VALUES('5729792','55753','1.00','1','会员投资10元获得团队奖1元！','1.60','2020-03-09 14:15:56');
INSERT INTO `finance` VALUES('5729793','56320','0.80','1','推荐会员投资10元奖励1代0.8元！','0.80','2020-03-09 14:15:56');
INSERT INTO `finance` VALUES('5729794','56319','0.60','1','推荐会员投资10元奖励2代0.6元！','0.60','2020-03-09 14:15:56');
INSERT INTO `finance` VALUES('5729795','55753','0.20','1','推荐会员投资10元奖励3代0.2元！','2.80','2020-03-09 14:15:56');
INSERT INTO `finance` VALUES('5729796','55494','0.10','1','推荐会员投资10元奖励4代0.1元！','1.90','2020-03-09 14:15:56');
INSERT INTO `finance` VALUES('5729797','55753','10.00','1','投资10元！','2.80','2020-03-09 14:48:17');
INSERT INTO `finance` VALUES('5729798','55494','0.80','1','推荐会员投资10元奖励1代0.8元！','2.70','2020-03-09 14:48:17');
INSERT INTO `finance` VALUES('5729799','56321','10.00','1','投资10元！','0.00','2020-03-09 15:01:38');
INSERT INTO `finance` VALUES('5729800','56320','0.80','1','推荐会员投资10元奖励1代0.8元！','1.60','2020-03-09 15:01:38');
INSERT INTO `finance` VALUES('5729801','56319','0.60','1','推荐会员投资10元奖励2代0.6元！','1.20','2020-03-09 15:01:38');
INSERT INTO `finance` VALUES('5729802','55753','0.20','1','推荐会员投资10元奖励3代0.2元！','3.00','2020-03-09 15:01:38');
INSERT INTO `finance` VALUES('5729803','55494','0.10','1','推荐会员投资10元奖励4代0.1元！','2.80','2020-03-09 15:01:38');
INSERT INTO `finance` VALUES('5729804','56319','1.00','1','会员投资10元获得团队奖1元！','1.20','2020-03-09 15:01:38');
INSERT INTO `finance` VALUES('5729805','55753','0.50','1','会员投资10元获得团队奖0.5元！','3.00','2020-03-09 15:01:38');
INSERT INTO `finance` VALUES('5729806','55757','10.00','1','投资10元！','0.00','2020-03-09 16:17:32');
INSERT INTO `finance` VALUES('5729807','55756','0.80','1','推荐会员投资10元奖励1代0.8元！','0.80','2020-03-09 16:17:32');
INSERT INTO `finance` VALUES('5729808','55567','0.60','1','推荐会员投资10元奖励2代0.6元！','0.60','2020-03-09 16:17:32');
INSERT INTO `finance` VALUES('5729809','55543','0.20','1','推荐会员投资10元奖励3代0.2元！','0.20','2020-03-09 16:17:32');
INSERT INTO `finance` VALUES('5729810','55540','0.10','1','推荐会员投资10元奖励4代0.1元！','0.10','2020-03-09 16:17:32');
INSERT INTO `finance` VALUES('5729811','55539','0.10','1','推荐会员投资10元奖励5代0.1元！','0.10','2020-03-09 16:17:32');
INSERT INTO `finance` VALUES('5729812','55538','0.10','1','推荐会员投资10元奖励6代0.1元！','0.10','2020-03-09 16:17:32');
INSERT INTO `finance` VALUES('5729813','55494','0.10','1','推荐会员投资10元奖励7代0.1元！','2.90','2020-03-09 16:17:32');
INSERT INTO `finance` VALUES('5729814','55567','10.00','1','投资10元！','0.60','2020-03-09 16:19:34');
INSERT INTO `finance` VALUES('5729815','55543','0.80','1','推荐会员投资10元奖励1代0.8元！','1.00','2020-03-09 16:19:34');
INSERT INTO `finance` VALUES('5729816','55540','0.60','1','推荐会员投资10元奖励2代0.6元！','0.70','2020-03-09 16:19:34');
INSERT INTO `finance` VALUES('5729817','55539','0.20','1','推荐会员投资10元奖励3代0.2元！','0.30','2020-03-09 16:19:34');
INSERT INTO `finance` VALUES('5729818','55538','0.10','1','推荐会员投资10元奖励4代0.1元！','0.20','2020-03-09 16:19:34');
INSERT INTO `finance` VALUES('5729819','55494','0.10','1','推荐会员投资10元奖励5代0.1元！','3.00','2020-03-09 16:19:34');
INSERT INTO `finance` VALUES('5729820','55756','10.00','1','投资10元！','0.80','2020-03-09 16:20:39');
INSERT INTO `finance` VALUES('5729821','55567','0.80','1','推荐会员投资10元奖励1代0.8元！','1.40','2020-03-09 16:20:40');
INSERT INTO `finance` VALUES('5729822','55543','0.60','1','推荐会员投资10元奖励2代0.6元！','1.60','2020-03-09 16:20:40');
INSERT INTO `finance` VALUES('5729823','55540','0.20','1','推荐会员投资10元奖励3代0.2元！','0.90','2020-03-09 16:20:40');
INSERT INTO `finance` VALUES('5729824','55539','0.10','1','推荐会员投资10元奖励4代0.1元！','0.40','2020-03-09 16:20:40');
INSERT INTO `finance` VALUES('5729825','55538','0.10','1','推荐会员投资10元奖励5代0.1元！','0.30','2020-03-09 16:20:40');
INSERT INTO `finance` VALUES('5729826','55494','0.10','1','推荐会员投资10元奖励6代0.1元！','3.10','2020-03-09 16:20:40');
INSERT INTO `finance` VALUES('5729827','55893','10.00','1','投资10元！','0.00','2020-03-09 18:21:36');
INSERT INTO `finance` VALUES('5729828','55891','0.80','1','推荐会员投资10元奖励1代0.8元！','0.80','2020-03-09 18:21:36');
INSERT INTO `finance` VALUES('5729829','55540','0.60','1','推荐会员投资10元奖励2代0.6元！','1.50','2020-03-09 18:21:36');
INSERT INTO `finance` VALUES('5729830','55539','0.20','1','推荐会员投资10元奖励3代0.2元！','0.60','2020-03-09 18:21:36');
INSERT INTO `finance` VALUES('5729831','55538','0.10','1','推荐会员投资10元奖励4代0.1元！','0.40','2020-03-09 18:21:36');
INSERT INTO `finance` VALUES('5729832','55494','0.10','1','推荐会员投资10元奖励5代0.1元！','3.20','2020-03-09 18:21:36');
INSERT INTO `finance` VALUES('5729833','55891','1.50','1','会员投资10元获得团队奖1.5元！','0.80','2020-03-09 18:21:36');
INSERT INTO `finance` VALUES('5729834','55891','10.00','1','投资10元！','2.30','2020-03-09 18:24:04');
INSERT INTO `finance` VALUES('5729835','55540','0.80','1','推荐会员投资10元奖励1代0.8元！','2.30','2020-03-09 18:24:04');
INSERT INTO `finance` VALUES('5729836','55539','0.60','1','推荐会员投资10元奖励2代0.6元！','1.20','2020-03-09 18:24:04');
INSERT INTO `finance` VALUES('5729837','55538','0.20','1','推荐会员投资10元奖励3代0.2元！','0.60','2020-03-09 18:24:04');
INSERT INTO `finance` VALUES('5729838','55494','0.10','1','推荐会员投资10元奖励4代0.1元！','3.30','2020-03-09 18:24:04');
INSERT INTO `finance` VALUES('5729839','55594','10.00','1','投资10元！','0.00','2020-03-09 18:26:09');
INSERT INTO `finance` VALUES('5729840','55591','0.80','1','推荐会员投资10元奖励1代0.8元！','0.80','2020-03-09 18:26:09');
INSERT INTO `finance` VALUES('5729841','55589','0.60','1','推荐会员投资10元奖励2代0.6元！','0.60','2020-03-09 18:26:09');
INSERT INTO `finance` VALUES('5729842','55542','0.20','1','推荐会员投资10元奖励3代0.2元！','0.20','2020-03-09 18:26:09');
INSERT INTO `finance` VALUES('5729843','55540','0.10','1','推荐会员投资10元奖励4代0.1元！','2.40','2020-03-09 18:26:09');
INSERT INTO `finance` VALUES('5729844','55539','0.10','1','推荐会员投资10元奖励5代0.1元！','1.30','2020-03-09 18:26:09');
INSERT INTO `finance` VALUES('5729845','55538','0.10','1','推荐会员投资10元奖励6代0.1元！','0.70','2020-03-09 18:26:09');
INSERT INTO `finance` VALUES('5729846','55494','0.10','1','推荐会员投资10元奖励7代0.1元！','3.40','2020-03-09 18:26:09');
INSERT INTO `finance` VALUES('5729847','55542','1.50','1','会员投资10元获得团队奖1.5元！','0.20','2020-03-09 18:26:09');
INSERT INTO `finance` VALUES('5729848','55896','10.00','1','投资10元！','0.00','2020-03-09 18:27:54');
INSERT INTO `finance` VALUES('5729849','55893','0.80','1','推荐会员投资10元奖励1代0.8元！','0.80','2020-03-09 18:27:54');
INSERT INTO `finance` VALUES('5729850','55891','0.60','1','推荐会员投资10元奖励2代0.6元！','2.90','2020-03-09 18:27:54');
INSERT INTO `finance` VALUES('5729851','55540','0.20','1','推荐会员投资10元奖励3代0.2元！','2.60','2020-03-09 18:27:54');
INSERT INTO `finance` VALUES('5729852','55539','0.10','1','推荐会员投资10元奖励4代0.1元！','1.40','2020-03-09 18:27:54');
INSERT INTO `finance` VALUES('5729853','55538','0.10','1','推荐会员投资10元奖励5代0.1元！','0.80','2020-03-09 18:27:54');
INSERT INTO `finance` VALUES('5729854','55494','0.10','1','推荐会员投资10元奖励6代0.1元！','3.50','2020-03-09 18:27:54');
INSERT INTO `finance` VALUES('5729855','55891','1.50','1','会员投资10元获得团队奖1.5元！','2.90','2020-03-09 18:27:54');
INSERT INTO `finance` VALUES('5729856','55899','10.00','1','投资10元！','0.00','2020-03-09 18:28:49');
INSERT INTO `finance` VALUES('5729857','55896','0.80','1','推荐会员投资10元奖励1代0.8元！','0.80','2020-03-09 18:28:49');
INSERT INTO `finance` VALUES('5729858','55893','0.60','1','推荐会员投资10元奖励2代0.6元！','1.40','2020-03-09 18:28:49');
INSERT INTO `finance` VALUES('5729859','55891','0.20','1','推荐会员投资10元奖励3代0.2元！','4.60','2020-03-09 18:28:49');
INSERT INTO `finance` VALUES('5729860','55540','0.10','1','推荐会员投资10元奖励4代0.1元！','2.70','2020-03-09 18:28:49');
INSERT INTO `finance` VALUES('5729861','55539','0.10','1','推荐会员投资10元奖励5代0.1元！','1.50','2020-03-09 18:28:49');
INSERT INTO `finance` VALUES('5729862','55538','0.10','1','推荐会员投资10元奖励6代0.1元！','0.90','2020-03-09 18:28:49');
INSERT INTO `finance` VALUES('5729863','55494','0.10','1','推荐会员投资10元奖励7代0.1元！','3.60','2020-03-09 18:28:49');
INSERT INTO `finance` VALUES('5729864','55891','1.50','1','会员投资10元获得团队奖1.5元！','4.60','2020-03-09 18:28:49');
INSERT INTO `finance` VALUES('5729865','55606','10.00','1','投资10元！','0.00','2020-03-09 18:29:07');
INSERT INTO `finance` VALUES('5729866','55602','0.80','1','推荐会员投资10元奖励1代0.8元！','0.80','2020-03-09 18:29:07');
INSERT INTO `finance` VALUES('5729867','55601','0.60','1','推荐会员投资10元奖励2代0.6元！','0.60','2020-03-09 18:29:07');
INSERT INTO `finance` VALUES('5729868','55598','0.20','1','推荐会员投资10元奖励3代0.2元！','0.20','2020-03-09 18:29:07');
INSERT INTO `finance` VALUES('5729869','55594','0.10','1','推荐会员投资10元奖励4代0.1元！','0.10','2020-03-09 18:29:07');
INSERT INTO `finance` VALUES('5729870','55591','0.10','1','推荐会员投资10元奖励5代0.1元！','0.90','2020-03-09 18:29:07');
INSERT INTO `finance` VALUES('5729871','55589','0.10','1','推荐会员投资10元奖励6代0.1元！','0.70','2020-03-09 18:29:07');
INSERT INTO `finance` VALUES('5729872','55542','0.10','1','推荐会员投资10元奖励7代0.1元！','1.80','2020-03-09 18:29:07');
INSERT INTO `finance` VALUES('5729873','55540','0.10','1','推荐会员投资10元奖励8代0.1元！','2.80','2020-03-09 18:29:07');
INSERT INTO `finance` VALUES('5729874','55539','0.10','1','推荐会员投资10元奖励9代0.1元！','1.60','2020-03-09 18:29:07');
INSERT INTO `finance` VALUES('5729875','55538','0.10','1','推荐会员投资10元奖励10代0.1元！','1.00','2020-03-09 18:29:07');
INSERT INTO `finance` VALUES('5729876','55494','0.05','1','推荐会员投资10元奖励11代0.05元！','3.65','2020-03-09 18:29:07');
INSERT INTO `finance` VALUES('5729877','55542','1.50','1','会员投资10元获得团队奖1.5元！','1.80','2020-03-09 18:29:07');
INSERT INTO `finance` VALUES('5729878','55904','10.00','1','投资10元！','0.00','2020-03-09 18:29:44');
INSERT INTO `finance` VALUES('5729879','55899','0.80','1','推荐会员投资10元奖励1代0.8元！','0.80','2020-03-09 18:29:44');
INSERT INTO `finance` VALUES('5729880','55896','0.60','1','推荐会员投资10元奖励2代0.6元！','1.40','2020-03-09 18:29:44');
INSERT INTO `finance` VALUES('5729881','55893','0.20','1','推荐会员投资10元奖励3代0.2元！','1.60','2020-03-09 18:29:44');
INSERT INTO `finance` VALUES('5729882','55891','0.10','1','推荐会员投资10元奖励4代0.1元！','6.20','2020-03-09 18:29:44');
INSERT INTO `finance` VALUES('5729883','55540','0.10','1','推荐会员投资10元奖励5代0.1元！','2.90','2020-03-09 18:29:44');
INSERT INTO `finance` VALUES('5729884','55539','0.10','1','推荐会员投资10元奖励6代0.1元！','1.70','2020-03-09 18:29:44');
INSERT INTO `finance` VALUES('5729885','55538','0.10','1','推荐会员投资10元奖励7代0.1元！','1.10','2020-03-09 18:29:44');
INSERT INTO `finance` VALUES('5729886','55494','0.10','1','推荐会员投资10元奖励8代0.1元！','3.75','2020-03-09 18:29:44');
INSERT INTO `finance` VALUES('5729887','55891','1.50','1','会员投资10元获得团队奖1.5元！','6.20','2020-03-09 18:29:44');
INSERT INTO `finance` VALUES('5729888','55609','10.00','1','投资10元！','0.00','2020-03-09 18:30:25');
INSERT INTO `finance` VALUES('5729889','55606','0.80','1','推荐会员投资10元奖励1代0.8元！','0.80','2020-03-09 18:30:25');
INSERT INTO `finance` VALUES('5729890','55602','0.60','1','推荐会员投资10元奖励2代0.6元！','1.40','2020-03-09 18:30:25');
INSERT INTO `finance` VALUES('5729891','55601','0.20','1','推荐会员投资10元奖励3代0.2元！','0.80','2020-03-09 18:30:25');
INSERT INTO `finance` VALUES('5729892','55598','0.10','1','推荐会员投资10元奖励4代0.1元！','0.30','2020-03-09 18:30:25');
INSERT INTO `finance` VALUES('5729893','55594','0.10','1','推荐会员投资10元奖励5代0.1元！','0.20','2020-03-09 18:30:25');
INSERT INTO `finance` VALUES('5729894','55591','0.10','1','推荐会员投资10元奖励6代0.1元！','1.00','2020-03-09 18:30:25');
INSERT INTO `finance` VALUES('5729895','55589','0.10','1','推荐会员投资10元奖励7代0.1元！','0.80','2020-03-09 18:30:25');
INSERT INTO `finance` VALUES('5729896','55542','0.10','1','推荐会员投资10元奖励8代0.1元！','3.40','2020-03-09 18:30:25');
INSERT INTO `finance` VALUES('5729897','55540','0.10','1','推荐会员投资10元奖励9代0.1元！','3.00','2020-03-09 18:30:25');
INSERT INTO `finance` VALUES('5729898','55539','0.10','1','推荐会员投资10元奖励10代0.1元！','1.80','2020-03-09 18:30:25');
INSERT INTO `finance` VALUES('5729899','55538','0.05','1','推荐会员投资10元奖励11代0.05元！','1.15','2020-03-09 18:30:25');
INSERT INTO `finance` VALUES('5729900','55494','0.05','1','推荐会员投资10元奖励12代0.05元！','3.80','2020-03-09 18:30:25');
INSERT INTO `finance` VALUES('5729901','55542','1.50','1','会员投资10元获得团队奖1.5元！','3.40','2020-03-09 18:30:25');
INSERT INTO `finance` VALUES('5729902','55545','10.00','1','投资10元！','0.00','2020-03-09 18:34:15');
INSERT INTO `finance` VALUES('5729903','55540','0.80','1','推荐会员投资10元奖励1代0.8元！','3.80','2020-03-09 18:34:15');
INSERT INTO `finance` VALUES('5729904','55539','0.60','1','推荐会员投资10元奖励2代0.6元！','2.40','2020-03-09 18:34:15');
INSERT INTO `finance` VALUES('5729905','55538','0.20','1','推荐会员投资10元奖励3代0.2元！','1.35','2020-03-09 18:34:15');
INSERT INTO `finance` VALUES('5729906','55494','0.10','1','推荐会员投资10元奖励4代0.1元！','3.90','2020-03-09 18:34:15');
INSERT INTO `finance` VALUES('5729907','56345','2000.00','1','投资2000元！','0.00','2020-03-09 18:46:41');
INSERT INTO `finance` VALUES('5729908','56193','160.00','1','推荐会员投资2000元奖励1代160元！','160.00','2020-03-09 18:46:41');
INSERT INTO `finance` VALUES('5729909','55764','120.00','1','推荐会员投资2000元奖励2代120元！','120.00','2020-03-09 18:46:41');
INSERT INTO `finance` VALUES('5729910','55757','40.00','1','推荐会员投资2000元奖励3代40元！','40.00','2020-03-09 18:46:41');
INSERT INTO `finance` VALUES('5729911','55756','20.00','1','推荐会员投资2000元奖励4代20元！','20.80','2020-03-09 18:46:41');
INSERT INTO `finance` VALUES('5729912','55567','20.00','1','推荐会员投资2000元奖励5代20元！','21.40','2020-03-09 18:46:41');
INSERT INTO `finance` VALUES('5729913','55543','20.00','1','推荐会员投资2000元奖励6代20元！','21.60','2020-03-09 18:46:41');
INSERT INTO `finance` VALUES('5729914','55540','20.00','1','推荐会员投资2000元奖励7代20元！','23.80','2020-03-09 18:46:41');
INSERT INTO `finance` VALUES('5729915','55539','20.00','1','推荐会员投资2000元奖励8代20元！','22.40','2020-03-09 18:46:41');
INSERT INTO `finance` VALUES('5729916','55538','20.00','1','推荐会员投资2000元奖励9代20元！','21.35','2020-03-09 18:46:41');
INSERT INTO `finance` VALUES('5729917','55494','20.00','1','推荐会员投资2000元奖励10代20元！','23.90','2020-03-09 18:46:41');
INSERT INTO `finance` VALUES('5729918','55567','300.00','1','会员投资2000元获得团队奖300元！','21.40','2020-03-09 18:46:41');
INSERT INTO `finance` VALUES('5729919','55567','321.00','2','余额提现321元','321.40','2020-03-09 18:48:10');
INSERT INTO `finance` VALUES('5729920','56193','160.00','2','余额提现160元','160.00','2020-03-09 18:48:55');
INSERT INTO `finance` VALUES('5729921','55617','10.00','1','投资10元！','0.00','2020-03-09 18:52:37');
INSERT INTO `finance` VALUES('5729922','55604','0.80','1','推荐会员投资10元奖励1代0.8元！','0.80','2020-03-09 18:52:37');
INSERT INTO `finance` VALUES('5729923','55602','0.60','1','推荐会员投资10元奖励2代0.6元！','2.00','2020-03-09 18:52:37');
INSERT INTO `finance` VALUES('5729924','55601','0.20','1','推荐会员投资10元奖励3代0.2元！','1.00','2020-03-09 18:52:37');
INSERT INTO `finance` VALUES('5729925','55598','0.10','1','推荐会员投资10元奖励4代0.1元！','0.40','2020-03-09 18:52:37');
INSERT INTO `finance` VALUES('5729926','55594','0.10','1','推荐会员投资10元奖励5代0.1元！','0.30','2020-03-09 18:52:37');
INSERT INTO `finance` VALUES('5729927','55591','0.10','1','推荐会员投资10元奖励6代0.1元！','1.10','2020-03-09 18:52:37');
INSERT INTO `finance` VALUES('5729928','55589','0.10','1','推荐会员投资10元奖励7代0.1元！','0.90','2020-03-09 18:52:37');
INSERT INTO `finance` VALUES('5729929','55542','0.10','1','推荐会员投资10元奖励8代0.1元！','5.00','2020-03-09 18:52:37');
INSERT INTO `finance` VALUES('5729930','55540','0.10','1','推荐会员投资10元奖励9代0.1元！','23.90','2020-03-09 18:52:37');
INSERT INTO `finance` VALUES('5729931','55539','0.10','1','推荐会员投资10元奖励10代0.1元！','22.50','2020-03-09 18:52:37');
INSERT INTO `finance` VALUES('5729932','55538','0.05','1','推荐会员投资10元奖励11代0.05元！','21.40','2020-03-09 18:52:37');
INSERT INTO `finance` VALUES('5729933','55494','0.05','1','推荐会员投资10元奖励12代0.05元！','23.95','2020-03-09 18:52:37');
INSERT INTO `finance` VALUES('5729934','55594','1.50','1','会员投资10元获得团队奖1.5元！','0.30','2020-03-09 18:52:37');
INSERT INTO `finance` VALUES('5729935','55646','10.00','1','投资10元！','0.00','2020-03-09 18:52:49');
INSERT INTO `finance` VALUES('5729936','55642','0.80','1','推荐会员投资10元奖励1代0.8元！','0.80','2020-03-09 18:52:49');
INSERT INTO `finance` VALUES('5729937','55640','0.60','1','推荐会员投资10元奖励2代0.6元！','0.60','2020-03-09 18:52:49');
INSERT INTO `finance` VALUES('5729938','55637','0.20','1','推荐会员投资10元奖励3代0.2元！','0.20','2020-03-09 18:52:49');
INSERT INTO `finance` VALUES('5729939','55632','0.10','1','推荐会员投资10元奖励4代0.1元！','0.10','2020-03-09 18:52:49');
INSERT INTO `finance` VALUES('5729940','55629','0.10','1','推荐会员投资10元奖励5代0.1元！','0.10','2020-03-09 18:52:49');
INSERT INTO `finance` VALUES('5729941','55546','0.10','1','推荐会员投资10元奖励6代0.1元！','0.10','2020-03-09 18:52:49');
INSERT INTO `finance` VALUES('5729942','55540','0.10','1','推荐会员投资10元奖励7代0.1元！','24.00','2020-03-09 18:52:49');
INSERT INTO `finance` VALUES('5729943','55539','0.10','1','推荐会员投资10元奖励8代0.1元！','22.60','2020-03-09 18:52:49');
INSERT INTO `finance` VALUES('5729944','55538','0.10','1','推荐会员投资10元奖励9代0.1元！','21.50','2020-03-09 18:52:49');
INSERT INTO `finance` VALUES('5729945','55494','0.10','1','推荐会员投资10元奖励10代0.1元！','24.05','2020-03-09 18:52:49');
INSERT INTO `finance` VALUES('5729946','55642','1.50','1','会员投资10元获得团队奖1.5元！','0.80','2020-03-09 18:52:49');
INSERT INTO `finance` VALUES('5729947','55543','10.00','1','投资10元！','21.60','2020-03-09 18:59:17');
INSERT INTO `finance` VALUES('5729948','55540','0.80','1','推荐会员投资10元奖励1代0.8元！','24.80','2020-03-09 18:59:17');
INSERT INTO `finance` VALUES('5729949','55539','0.60','1','推荐会员投资10元奖励2代0.6元！','23.20','2020-03-09 18:59:17');
INSERT INTO `finance` VALUES('5729950','55538','0.20','1','推荐会员投资10元奖励3代0.2元！','21.70','2020-03-09 18:59:17');
INSERT INTO `finance` VALUES('5729951','55494','0.10','1','推荐会员投资10元奖励4代0.1元！','24.15','2020-03-09 18:59:17');
INSERT INTO `finance` VALUES('5729952','55756','20.00','2','余额提现20元','20.80','2020-03-09 18:59:40');
INSERT INTO `finance` VALUES('5729953','56363','100.00','1','投资100元！','0.00','2020-03-09 18:59:46');
INSERT INTO `finance` VALUES('5729954','55646','8.00','1','推荐会员投资100元奖励1代8元！','8.00','2020-03-09 18:59:46');
INSERT INTO `finance` VALUES('5729955','55642','6.00','1','推荐会员投资100元奖励2代6元！','8.30','2020-03-09 18:59:46');
INSERT INTO `finance` VALUES('5729956','55640','2.00','1','推荐会员投资100元奖励3代2元！','2.60','2020-03-09 18:59:46');
INSERT INTO `finance` VALUES('5729957','55637','1.00','1','推荐会员投资100元奖励4代1元！','1.20','2020-03-09 18:59:46');
INSERT INTO `finance` VALUES('5729958','55632','1.00','1','推荐会员投资100元奖励5代1元！','1.10','2020-03-09 18:59:46');
INSERT INTO `finance` VALUES('5729959','55629','1.00','1','推荐会员投资100元奖励6代1元！','1.10','2020-03-09 18:59:46');
INSERT INTO `finance` VALUES('5729960','55546','1.00','1','推荐会员投资100元奖励7代1元！','1.10','2020-03-09 18:59:46');
INSERT INTO `finance` VALUES('5729961','55540','1.00','1','推荐会员投资100元奖励8代1元！','25.80','2020-03-09 18:59:46');
INSERT INTO `finance` VALUES('5729962','55539','1.00','1','推荐会员投资100元奖励9代1元！','24.20','2020-03-09 18:59:46');
INSERT INTO `finance` VALUES('5729963','55538','1.00','1','推荐会员投资100元奖励10代1元！','22.70','2020-03-09 18:59:46');
INSERT INTO `finance` VALUES('5729964','55494','0.50','1','推荐会员投资100元奖励11代0.5元！','24.65','2020-03-09 18:59:46');
INSERT INTO `finance` VALUES('5729965','55646','10.00','1','会员投资100元获得团队奖10元！','8.00','2020-03-09 18:59:46');
INSERT INTO `finance` VALUES('5729966','55642','5.00','1','会员投资100元获得团队奖5元！','8.30','2020-03-09 18:59:46');
INSERT INTO `finance` VALUES('5729967','55757','40.00','2','余额提现40元','40.00','2020-03-09 19:00:19');
INSERT INTO `finance` VALUES('5729968','55543','21.00','2','余额提现21元','21.60','2020-03-09 19:04:31');
INSERT INTO `finance` VALUES('5729969','55642','13.00','2','余额提现13元','13.30','2020-03-09 19:04:46');
INSERT INTO `finance` VALUES('5729970','56357','10.00','1','投资10元！','0.00','2020-03-09 19:06:22');
INSERT INTO `finance` VALUES('5729971','56008','0.80','1','推荐会员投资10元奖励1代0.8元！','0.80','2020-03-09 19:06:22');
INSERT INTO `finance` VALUES('5729972','55904','0.60','1','推荐会员投资10元奖励2代0.6元！','0.60','2020-03-09 19:06:22');
INSERT INTO `finance` VALUES('5729973','55899','0.20','1','推荐会员投资10元奖励3代0.2元！','1.00','2020-03-09 19:06:22');
INSERT INTO `finance` VALUES('5729974','55896','0.10','1','推荐会员投资10元奖励4代0.1元！','1.50','2020-03-09 19:06:22');
INSERT INTO `finance` VALUES('5729975','55893','0.10','1','推荐会员投资10元奖励5代0.1元！','1.70','2020-03-09 19:06:22');
INSERT INTO `finance` VALUES('5729976','55891','0.10','1','推荐会员投资10元奖励6代0.1元！','7.80','2020-03-09 19:06:22');
INSERT INTO `finance` VALUES('5729977','55540','0.10','1','推荐会员投资10元奖励7代0.1元！','25.90','2020-03-09 19:06:22');
INSERT INTO `finance` VALUES('5729978','55539','0.10','1','推荐会员投资10元奖励8代0.1元！','24.30','2020-03-09 19:06:22');
INSERT INTO `finance` VALUES('5729979','55538','0.10','1','推荐会员投资10元奖励9代0.1元！','22.80','2020-03-09 19:06:22');
INSERT INTO `finance` VALUES('5729980','55494','0.10','1','推荐会员投资10元奖励10代0.1元！','24.75','2020-03-09 19:06:22');
INSERT INTO `finance` VALUES('5729981','56008','1.50','1','会员投资10元获得团队奖1.5元！','0.80','2020-03-09 19:06:22');
INSERT INTO `finance` VALUES('5729982','56169','10.00','1','投资10元！','0.00','2020-03-09 19:06:38');
INSERT INTO `finance` VALUES('5729983','56166','0.80','1','推荐会员投资10元奖励1代0.8元！','0.80','2020-03-09 19:06:38');
INSERT INTO `finance` VALUES('5729984','56156','0.60','1','推荐会员投资10元奖励2代0.6元！','0.60','2020-03-09 19:06:38');
INSERT INTO `finance` VALUES('5729985','55771','0.20','1','推荐会员投资10元奖励3代0.2元！','0.20','2020-03-09 19:06:38');
INSERT INTO `finance` VALUES('5729986','55757','0.10','1','推荐会员投资10元奖励4代0.1元！','0.10','2020-03-09 19:06:38');
INSERT INTO `finance` VALUES('5729987','55756','0.10','1','推荐会员投资10元奖励5代0.1元！','0.90','2020-03-09 19:06:38');
INSERT INTO `finance` VALUES('5729988','55567','0.10','1','推荐会员投资10元奖励6代0.1元！','0.50','2020-03-09 19:06:38');
INSERT INTO `finance` VALUES('5729989','55543','0.10','1','推荐会员投资10元奖励7代0.1元！','0.70','2020-03-09 19:06:38');
INSERT INTO `finance` VALUES('5729990','55540','0.10','1','推荐会员投资10元奖励8代0.1元！','26.00','2020-03-09 19:06:38');
INSERT INTO `finance` VALUES('5729991','55539','0.10','1','推荐会员投资10元奖励9代0.1元！','24.40','2020-03-09 19:06:38');
INSERT INTO `finance` VALUES('5729992','55538','0.10','1','推荐会员投资10元奖励10代0.1元！','22.90','2020-03-09 19:06:38');
INSERT INTO `finance` VALUES('5729993','55494','0.05','1','推荐会员投资10元奖励11代0.05元！','24.80','2020-03-09 19:06:38');
INSERT INTO `finance` VALUES('5729994','55567','1.50','1','会员投资10元获得团队奖1.5元！','0.50','2020-03-09 19:06:38');
INSERT INTO `finance` VALUES('5729995','56364','10.00','1','投资10元！','0.00','2020-03-09 19:07:54');
INSERT INTO `finance` VALUES('5729996','55646','0.80','1','推荐会员投资10元奖励1代0.8元！','18.80','2020-03-09 19:07:54');
INSERT INTO `finance` VALUES('5729997','55642','0.60','1','推荐会员投资10元奖励2代0.6元！','0.90','2020-03-09 19:07:54');
INSERT INTO `finance` VALUES('5729998','55640','0.20','1','推荐会员投资10元奖励3代0.2元！','2.80','2020-03-09 19:07:54');
INSERT INTO `finance` VALUES('5729999','55637','0.10','1','推荐会员投资10元奖励4代0.1元！','1.30','2020-03-09 19:07:54');
INSERT INTO `finance` VALUES('5730000','55632','0.10','1','推荐会员投资10元奖励5代0.1元！','1.20','2020-03-09 19:07:54');
INSERT INTO `finance` VALUES('5730001','55629','0.10','1','推荐会员投资10元奖励6代0.1元！','1.20','2020-03-09 19:07:54');
INSERT INTO `finance` VALUES('5730002','55546','0.10','1','推荐会员投资10元奖励7代0.1元！','1.20','2020-03-09 19:07:54');
INSERT INTO `finance` VALUES('5730003','55540','0.10','1','推荐会员投资10元奖励8代0.1元！','26.10','2020-03-09 19:07:54');
INSERT INTO `finance` VALUES('5730004','55539','0.10','1','推荐会员投资10元奖励9代0.1元！','24.50','2020-03-09 19:07:54');
INSERT INTO `finance` VALUES('5730005','55538','0.10','1','推荐会员投资10元奖励10代0.1元！','23.00','2020-03-09 19:07:54');
INSERT INTO `finance` VALUES('5730006','55494','0.05','1','推荐会员投资10元奖励11代0.05元！','24.85','2020-03-09 19:07:54');
INSERT INTO `finance` VALUES('5730007','55646','1.00','1','会员投资10元获得团队奖1元！','18.80','2020-03-09 19:07:54');
INSERT INTO `finance` VALUES('5730008','55642','0.50','1','会员投资10元获得团队奖0.5元！','0.90','2020-03-09 19:07:54');
INSERT INTO `finance` VALUES('5730009','56337','10.00','1','投资10元！','0.00','2020-03-09 19:09:04');
INSERT INTO `finance` VALUES('5730010','55545','0.80','1','推荐会员投资10元奖励1代0.8元！','0.80','2020-03-09 19:09:04');
INSERT INTO `finance` VALUES('5730011','55540','0.60','1','推荐会员投资10元奖励2代0.6元！','26.70','2020-03-09 19:09:04');
INSERT INTO `finance` VALUES('5730012','55539','0.20','1','推荐会员投资10元奖励3代0.2元！','24.70','2020-03-09 19:09:04');
INSERT INTO `finance` VALUES('5730013','55538','0.10','1','推荐会员投资10元奖励4代0.1元！','23.10','2020-03-09 19:09:04');
INSERT INTO `finance` VALUES('5730014','55494','0.10','1','推荐会员投资10元奖励5代0.1元！','24.95','2020-03-09 19:09:04');
INSERT INTO `finance` VALUES('5730015','55545','1.50','1','会员投资10元获得团队奖1.5元！','0.80','2020-03-09 19:09:04');
INSERT INTO `finance` VALUES('5730016','55649','10.00','1','投资10元！','0.00','2020-03-09 19:09:48');
INSERT INTO `finance` VALUES('5730017','55646','0.80','1','推荐会员投资10元奖励1代0.8元！','20.60','2020-03-09 19:09:48');
INSERT INTO `finance` VALUES('5730018','55642','0.60','1','推荐会员投资10元奖励2代0.6元！','2.00','2020-03-09 19:09:48');
INSERT INTO `finance` VALUES('5730019','55640','0.20','1','推荐会员投资10元奖励3代0.2元！','3.00','2020-03-09 19:09:48');
INSERT INTO `finance` VALUES('5730020','55637','0.10','1','推荐会员投资10元奖励4代0.1元！','1.40','2020-03-09 19:09:48');
INSERT INTO `finance` VALUES('5730021','55632','0.10','1','推荐会员投资10元奖励5代0.1元！','1.30','2020-03-09 19:09:48');
INSERT INTO `finance` VALUES('5730022','55629','0.10','1','推荐会员投资10元奖励6代0.1元！','1.30','2020-03-09 19:09:48');
INSERT INTO `finance` VALUES('5730023','55546','0.10','1','推荐会员投资10元奖励7代0.1元！','1.30','2020-03-09 19:09:48');
INSERT INTO `finance` VALUES('5730024','55540','0.10','1','推荐会员投资10元奖励8代0.1元！','26.80','2020-03-09 19:09:48');
INSERT INTO `finance` VALUES('5730025','55539','0.10','1','推荐会员投资10元奖励9代0.1元！','24.80','2020-03-09 19:09:48');
INSERT INTO `finance` VALUES('5730026','55538','0.10','1','推荐会员投资10元奖励10代0.1元！','23.20','2020-03-09 19:09:48');
INSERT INTO `finance` VALUES('5730027','55494','0.05','1','推荐会员投资10元奖励11代0.05元！','25.00','2020-03-09 19:09:48');
INSERT INTO `finance` VALUES('5730028','55646','1.00','1','会员投资10元获得团队奖1元！','20.60','2020-03-09 19:09:48');
INSERT INTO `finance` VALUES('5730029','55642','0.50','1','会员投资10元获得团队奖0.5元！','2.00','2020-03-09 19:09:48');
INSERT INTO `finance` VALUES('5730030','55543','21.00','1','提现失败，返还金额21.00元','0.70','2020-03-09 19:13:44');
INSERT INTO `finance` VALUES('5730031','55556','10.00','1','投资10元！','0.00','2020-03-09 19:14:48');
INSERT INTO `finance` VALUES('5730032','55543','0.80','1','推荐会员投资10元奖励1代0.8元！','22.50','2020-03-09 19:14:48');
INSERT INTO `finance` VALUES('5730033','55540','0.60','1','推荐会员投资10元奖励2代0.6元！','27.40','2020-03-09 19:14:48');
INSERT INTO `finance` VALUES('5730034','55539','0.20','1','推荐会员投资10元奖励3代0.2元！','25.00','2020-03-09 19:14:48');
INSERT INTO `finance` VALUES('5730035','55538','0.10','1','推荐会员投资10元奖励4代0.1元！','23.30','2020-03-09 19:14:48');
INSERT INTO `finance` VALUES('5730036','55494','0.10','1','推荐会员投资10元奖励5代0.1元！','25.10','2020-03-09 19:14:48');
INSERT INTO `finance` VALUES('5730037','55543','1.50','1','会员投资10元获得团队奖1.5元！','22.50','2020-03-09 19:14:48');
INSERT INTO `finance` VALUES('5730038','56334','100.00','1','投资100元！','0.00','2020-03-09 19:14:52');
INSERT INTO `finance` VALUES('5730039','56193','8.00','1','推荐会员投资100元奖励1代8元！','8.00','2020-03-09 19:14:52');
INSERT INTO `finance` VALUES('5730040','55764','6.00','1','推荐会员投资100元奖励2代6元！','126.00','2020-03-09 19:14:52');
INSERT INTO `finance` VALUES('5730041','55757','2.00','1','推荐会员投资100元奖励3代2元！','2.10','2020-03-09 19:14:52');
INSERT INTO `finance` VALUES('5730042','55756','1.00','1','推荐会员投资100元奖励4代1元！','1.90','2020-03-09 19:14:52');
INSERT INTO `finance` VALUES('5730043','55567','1.00','1','推荐会员投资100元奖励5代1元！','3.00','2020-03-09 19:14:52');
INSERT INTO `finance` VALUES('5730044','55543','1.00','1','推荐会员投资100元奖励6代1元！','25.00','2020-03-09 19:14:52');
INSERT INTO `finance` VALUES('5730045','55540','1.00','1','推荐会员投资100元奖励7代1元！','28.40','2020-03-09 19:14:52');
INSERT INTO `finance` VALUES('5730046','55539','1.00','1','推荐会员投资100元奖励8代1元！','26.00','2020-03-09 19:14:52');
INSERT INTO `finance` VALUES('5730047','55538','1.00','1','推荐会员投资100元奖励9代1元！','24.30','2020-03-09 19:14:52');
INSERT INTO `finance` VALUES('5730048','55494','1.00','1','推荐会员投资100元奖励10代1元！','26.10','2020-03-09 19:14:52');
INSERT INTO `finance` VALUES('5730049','55764','15.00','1','会员投资100元获得团队奖15元！','126.00','2020-03-09 19:14:52');
INSERT INTO `finance` VALUES('5730050','55656','10.00','1','投资10元！','0.00','2020-03-09 19:17:46');
INSERT INTO `finance` VALUES('5730051','55646','0.80','1','推荐会员投资10元奖励1代0.8元！','22.40','2020-03-09 19:17:46');
INSERT INTO `finance` VALUES('5730052','55642','0.60','1','推荐会员投资10元奖励2代0.6元！','3.10','2020-03-09 19:17:46');
INSERT INTO `finance` VALUES('5730053','55640','0.20','1','推荐会员投资10元奖励3代0.2元！','3.20','2020-03-09 19:17:46');
INSERT INTO `finance` VALUES('5730054','55637','0.10','1','推荐会员投资10元奖励4代0.1元！','1.50','2020-03-09 19:17:46');
INSERT INTO `finance` VALUES('5730055','55632','0.10','1','推荐会员投资10元奖励5代0.1元！','1.40','2020-03-09 19:17:46');
INSERT INTO `finance` VALUES('5730056','55629','0.10','1','推荐会员投资10元奖励6代0.1元！','1.40','2020-03-09 19:17:46');
INSERT INTO `finance` VALUES('5730057','55546','0.10','1','推荐会员投资10元奖励7代0.1元！','1.40','2020-03-09 19:17:46');
INSERT INTO `finance` VALUES('5730058','55540','0.10','1','推荐会员投资10元奖励8代0.1元！','28.50','2020-03-09 19:17:46');
INSERT INTO `finance` VALUES('5730059','55539','0.10','1','推荐会员投资10元奖励9代0.1元！','26.10','2020-03-09 19:17:46');
INSERT INTO `finance` VALUES('5730060','55538','0.10','1','推荐会员投资10元奖励10代0.1元！','24.40','2020-03-09 19:17:46');
INSERT INTO `finance` VALUES('5730061','55494','0.05','1','推荐会员投资10元奖励11代0.05元！','26.15','2020-03-09 19:17:46');
INSERT INTO `finance` VALUES('5730062','55646','1.00','1','会员投资10元获得团队奖1元！','22.40','2020-03-09 19:17:46');
INSERT INTO `finance` VALUES('5730063','55642','0.50','1','会员投资10元获得团队奖0.5元！','3.10','2020-03-09 19:17:46');
INSERT INTO `finance` VALUES('5730064','55543','25.00','2','余额提现25元','25.00','2020-03-09 19:19:44');
INSERT INTO `finance` VALUES('5730065','55649','100.00','1','投资100元！','0.00','2020-03-09 19:19:46');
INSERT INTO `finance` VALUES('5730066','55646','8.00','1','推荐会员投资100元奖励1代8元！','31.40','2020-03-09 19:19:46');
INSERT INTO `finance` VALUES('5730067','55642','6.00','1','推荐会员投资100元奖励2代6元！','9.60','2020-03-09 19:19:46');
INSERT INTO `finance` VALUES('5730068','55640','2.00','1','推荐会员投资100元奖励3代2元！','5.20','2020-03-09 19:19:46');
INSERT INTO `finance` VALUES('5730069','55637','1.00','1','推荐会员投资100元奖励4代1元！','2.50','2020-03-09 19:19:46');
INSERT INTO `finance` VALUES('5730070','55632','1.00','1','推荐会员投资100元奖励5代1元！','2.40','2020-03-09 19:19:46');
INSERT INTO `finance` VALUES('5730071','55629','1.00','1','推荐会员投资100元奖励6代1元！','2.40','2020-03-09 19:19:46');
INSERT INTO `finance` VALUES('5730072','55546','1.00','1','推荐会员投资100元奖励7代1元！','2.40','2020-03-09 19:19:46');
INSERT INTO `finance` VALUES('5730073','55540','1.00','1','推荐会员投资100元奖励8代1元！','29.50','2020-03-09 19:19:46');
INSERT INTO `finance` VALUES('5730074','55539','1.00','1','推荐会员投资100元奖励9代1元！','27.10','2020-03-09 19:19:46');
INSERT INTO `finance` VALUES('5730075','55538','1.00','1','推荐会员投资100元奖励10代1元！','25.40','2020-03-09 19:19:46');
INSERT INTO `finance` VALUES('5730076','55494','0.50','1','推荐会员投资100元奖励11代0.5元！','26.65','2020-03-09 19:19:46');
INSERT INTO `finance` VALUES('5730077','55646','10.00','1','会员投资100元获得团队奖10元！','31.40','2020-03-09 19:19:46');
INSERT INTO `finance` VALUES('5730078','55642','5.00','1','会员投资100元获得团队奖5元！','9.60','2020-03-09 19:19:46');
INSERT INTO `finance` VALUES('5730079','56367','10.00','1','投资10元！','0.00','2020-03-09 19:20:45');
INSERT INTO `finance` VALUES('5730080','55646','0.80','1','推荐会员投资10元奖励1代0.8元！','42.20','2020-03-09 19:20:45');
INSERT INTO `finance` VALUES('5730081','55642','0.60','1','推荐会员投资10元奖励2代0.6元！','15.20','2020-03-09 19:20:45');
INSERT INTO `finance` VALUES('5730082','55640','0.20','1','推荐会员投资10元奖励3代0.2元！','5.40','2020-03-09 19:20:45');
INSERT INTO `finance` VALUES('5730083','55637','0.10','1','推荐会员投资10元奖励4代0.1元！','2.60','2020-03-09 19:20:45');
INSERT INTO `finance` VALUES('5730084','55632','0.10','1','推荐会员投资10元奖励5代0.1元！','2.50','2020-03-09 19:20:45');
INSERT INTO `finance` VALUES('5730085','55629','0.10','1','推荐会员投资10元奖励6代0.1元！','2.50','2020-03-09 19:20:45');
INSERT INTO `finance` VALUES('5730086','55546','0.10','1','推荐会员投资10元奖励7代0.1元！','2.50','2020-03-09 19:20:45');
INSERT INTO `finance` VALUES('5730087','55540','0.10','1','推荐会员投资10元奖励8代0.1元！','29.60','2020-03-09 19:20:45');
INSERT INTO `finance` VALUES('5730088','55539','0.10','1','推荐会员投资10元奖励9代0.1元！','27.20','2020-03-09 19:20:45');
INSERT INTO `finance` VALUES('5730089','55538','0.10','1','推荐会员投资10元奖励10代0.1元！','25.50','2020-03-09 19:20:45');
INSERT INTO `finance` VALUES('5730090','55494','0.05','1','推荐会员投资10元奖励11代0.05元！','26.70','2020-03-09 19:20:45');
INSERT INTO `finance` VALUES('5730091','55646','1.00','1','会员投资10元获得团队奖1元！','42.20','2020-03-09 19:20:45');
INSERT INTO `finance` VALUES('5730092','55642','0.50','1','会员投资10元获得团队奖0.5元！','15.20','2020-03-09 19:20:45');
INSERT INTO `finance` VALUES('5730093','55646','43.20','2','余额提现43.2元','43.20','2020-03-09 19:21:32');
INSERT INTO `finance` VALUES('5730094','55694','50.00','1','投资50元！','0.00','2020-03-09 19:22:58');
INSERT INTO `finance` VALUES('5730095','55642','4.00','1','推荐会员投资50元奖励1代4元！','19.70','2020-03-09 19:22:58');
INSERT INTO `finance` VALUES('5730096','55640','3.00','1','推荐会员投资50元奖励2代3元！','8.40','2020-03-09 19:22:58');
INSERT INTO `finance` VALUES('5730097','55637','1.00','1','推荐会员投资50元奖励3代1元！','3.60','2020-03-09 19:22:58');
INSERT INTO `finance` VALUES('5730098','55632','0.50','1','推荐会员投资50元奖励4代0.5元！','3.00','2020-03-09 19:22:58');
INSERT INTO `finance` VALUES('5730099','55629','0.50','1','推荐会员投资50元奖励5代0.5元！','3.00','2020-03-09 19:22:58');
INSERT INTO `finance` VALUES('5730100','55546','0.50','1','推荐会员投资50元奖励6代0.5元！','3.00','2020-03-09 19:22:58');
INSERT INTO `finance` VALUES('5730101','55540','0.50','1','推荐会员投资50元奖励7代0.5元！','30.10','2020-03-09 19:22:58');
INSERT INTO `finance` VALUES('5730102','55539','0.50','1','推荐会员投资50元奖励8代0.5元！','27.70','2020-03-09 19:22:58');
INSERT INTO `finance` VALUES('5730103','55538','0.50','1','推荐会员投资50元奖励9代0.5元！','26.00','2020-03-09 19:22:58');
INSERT INTO `finance` VALUES('5730104','55494','0.50','1','推荐会员投资50元奖励10代0.5元！','27.20','2020-03-09 19:22:58');
INSERT INTO `finance` VALUES('5730105','55642','7.50','1','会员投资50元获得团队奖7.5元！','19.70','2020-03-09 19:22:58');
INSERT INTO `finance` VALUES('5730106','55653','10.00','1','投资10元！','0.00','2020-03-09 19:23:51');
INSERT INTO `finance` VALUES('5730107','55649','0.80','1','推荐会员投资10元奖励1代0.8元！','0.80','2020-03-09 19:23:51');
INSERT INTO `finance` VALUES('5730108','55646','0.60','1','推荐会员投资10元奖励2代0.6元！','0.60','2020-03-09 19:23:51');
INSERT INTO `finance` VALUES('5730109','55642','0.20','1','推荐会员投资10元奖励3代0.2元！','27.40','2020-03-09 19:23:51');
INSERT INTO `finance` VALUES('5730110','55640','0.10','1','推荐会员投资10元奖励4代0.1元！','8.50','2020-03-09 19:23:51');
INSERT INTO `finance` VALUES('5730111','55637','0.10','1','推荐会员投资10元奖励5代0.1元！','3.70','2020-03-09 19:23:51');
INSERT INTO `finance` VALUES('5730112','55632','0.10','1','推荐会员投资10元奖励6代0.1元！','3.10','2020-03-09 19:23:51');
INSERT INTO `finance` VALUES('5730113','55629','0.10','1','推荐会员投资10元奖励7代0.1元！','3.10','2020-03-09 19:23:51');
INSERT INTO `finance` VALUES('5730114','55546','0.10','1','推荐会员投资10元奖励8代0.1元！','3.10','2020-03-09 19:23:51');
INSERT INTO `finance` VALUES('5730115','55540','0.10','1','推荐会员投资10元奖励9代0.1元！','30.20','2020-03-09 19:23:51');
INSERT INTO `finance` VALUES('5730116','55539','0.10','1','推荐会员投资10元奖励10代0.1元！','27.80','2020-03-09 19:23:51');
INSERT INTO `finance` VALUES('5730117','55538','0.05','1','推荐会员投资10元奖励11代0.05元！','26.05','2020-03-09 19:23:51');
INSERT INTO `finance` VALUES('5730118','55494','0.05','1','推荐会员投资10元奖励12代0.05元！','27.25','2020-03-09 19:23:51');
INSERT INTO `finance` VALUES('5730119','55646','1.00','1','会员投资10元获得团队奖1元！','0.60','2020-03-09 19:23:51');
INSERT INTO `finance` VALUES('5730120','55642','0.50','1','会员投资10元获得团队奖0.5元！','27.40','2020-03-09 19:23:51');
INSERT INTO `finance` VALUES('5730121','55764','141.00','2','余额提现141元','141.00','2020-03-09 19:24:14');
INSERT INTO `finance` VALUES('5730122','55601','1.00','2','余额提现1元','1.00','2020-03-09 19:25:36');
INSERT INTO `finance` VALUES('5730123','55539','27.00','2','余额提现27元','27.80','2020-03-09 19:25:59');
INSERT INTO `finance` VALUES('5730124','56193','8.00','2','余额提现8元手续费:0','8.00','2020-03-09 19:26:38');
INSERT INTO `finance` VALUES('5730125','55761','10.00','1','投资10元！','0.00','2020-03-09 19:27:35');
INSERT INTO `finance` VALUES('5730126','55757','0.80','1','推荐会员投资10元奖励1代0.8元！','2.90','2020-03-09 19:27:35');
INSERT INTO `finance` VALUES('5730127','55756','0.60','1','推荐会员投资10元奖励2代0.6元！','2.50','2020-03-09 19:27:35');
INSERT INTO `finance` VALUES('5730128','55567','0.20','1','推荐会员投资10元奖励3代0.2元！','3.20','2020-03-09 19:27:35');
INSERT INTO `finance` VALUES('5730129','55543','0.10','1','推荐会员投资10元奖励4代0.1元！','0.10','2020-03-09 19:27:35');
INSERT INTO `finance` VALUES('5730130','55540','0.10','1','推荐会员投资10元奖励5代0.1元！','30.30','2020-03-09 19:27:35');
INSERT INTO `finance` VALUES('5730131','55539','0.10','1','推荐会员投资10元奖励6代0.1元！','0.90','2020-03-09 19:27:35');
INSERT INTO `finance` VALUES('5730132','55538','0.10','1','推荐会员投资10元奖励7代0.1元！','26.15','2020-03-09 19:27:35');
INSERT INTO `finance` VALUES('5730133','55494','0.10','1','推荐会员投资10元奖励8代0.1元！','27.35','2020-03-09 19:27:35');
INSERT INTO `finance` VALUES('5730134','55757','1.50','1','会员投资10元获得团队奖1.5元！','2.90','2020-03-09 19:27:35');
INSERT INTO `finance` VALUES('5730135','56388','10.00','1','投资10元！','0.00','2020-03-09 19:27:48');
INSERT INTO `finance` VALUES('5730136','56357','0.80','1','推荐会员投资10元奖励1代0.8元！','0.80','2020-03-09 19:27:48');
INSERT INTO `finance` VALUES('5730137','56008','0.60','1','推荐会员投资10元奖励2代0.6元！','2.90','2020-03-09 19:27:48');
INSERT INTO `finance` VALUES('5730138','55904','0.20','1','推荐会员投资10元奖励3代0.2元！','0.80','2020-03-09 19:27:48');
INSERT INTO `finance` VALUES('5730139','55899','0.10','1','推荐会员投资10元奖励4代0.1元！','1.10','2020-03-09 19:27:48');
INSERT INTO `finance` VALUES('5730140','55896','0.10','1','推荐会员投资10元奖励5代0.1元！','1.60','2020-03-09 19:27:48');
INSERT INTO `finance` VALUES('5730141','55893','0.10','1','推荐会员投资10元奖励6代0.1元！','1.80','2020-03-09 19:27:48');
INSERT INTO `finance` VALUES('5730142','55891','0.10','1','推荐会员投资10元奖励7代0.1元！','7.90','2020-03-09 19:27:48');
INSERT INTO `finance` VALUES('5730143','55540','0.10','1','推荐会员投资10元奖励8代0.1元！','30.40','2020-03-09 19:27:48');
INSERT INTO `finance` VALUES('5730144','55539','0.10','1','推荐会员投资10元奖励9代0.1元！','1.00','2020-03-09 19:27:48');
INSERT INTO `finance` VALUES('5730145','55538','0.10','1','推荐会员投资10元奖励10代0.1元！','26.25','2020-03-09 19:27:48');
INSERT INTO `finance` VALUES('5730146','55494','0.05','1','推荐会员投资10元奖励11代0.05元！','27.40','2020-03-09 19:27:48');
INSERT INTO `finance` VALUES('5730147','56008','1.50','1','会员投资10元获得团队奖1.5元！','2.90','2020-03-09 19:27:48');
INSERT INTO `finance` VALUES('5730148','56389','100.00','1','投资100元！','0.00','2020-03-09 19:28:15');
INSERT INTO `finance` VALUES('5730149','55609','8.00','1','推荐会员投资100元奖励1代8元！','8.00','2020-03-09 19:28:15');
INSERT INTO `finance` VALUES('5730150','55606','6.00','1','推荐会员投资100元奖励2代6元！','6.80','2020-03-09 19:28:15');
INSERT INTO `finance` VALUES('5730151','55602','2.00','1','推荐会员投资100元奖励3代2元！','4.00','2020-03-09 19:28:15');
INSERT INTO `finance` VALUES('5730152','55601','1.00','1','推荐会员投资100元奖励4代1元！','1.00','2020-03-09 19:28:15');
INSERT INTO `finance` VALUES('5730153','55598','1.00','1','推荐会员投资100元奖励5代1元！','1.40','2020-03-09 19:28:15');
INSERT INTO `finance` VALUES('5730154','55594','1.00','1','推荐会员投资100元奖励6代1元！','2.80','2020-03-09 19:28:15');
INSERT INTO `finance` VALUES('5730155','55591','1.00','1','推荐会员投资100元奖励7代1元！','2.10','2020-03-09 19:28:15');
INSERT INTO `finance` VALUES('5730156','55589','1.00','1','推荐会员投资100元奖励8代1元！','1.90','2020-03-09 19:28:15');
INSERT INTO `finance` VALUES('5730157','55542','1.00','1','推荐会员投资100元奖励9代1元！','6.00','2020-03-09 19:28:15');
INSERT INTO `finance` VALUES('5730158','55540','1.00','1','推荐会员投资100元奖励10代1元！','31.40','2020-03-09 19:28:15');
INSERT INTO `finance` VALUES('5730159','55539','0.50','1','推荐会员投资100元奖励11代0.5元！','1.50','2020-03-09 19:28:15');
INSERT INTO `finance` VALUES('5730160','55538','0.50','1','推荐会员投资100元奖励12代0.5元！','26.75','2020-03-09 19:28:15');
INSERT INTO `finance` VALUES('5730161','55494','0.50','1','推荐会员投资100元奖励13代0.5元！','27.90','2020-03-09 19:28:15');
INSERT INTO `finance` VALUES('5730162','55609','15.00','1','会员投资100元获得团队奖15元！','8.00','2020-03-09 19:28:15');
INSERT INTO `finance` VALUES('5730163','55609','23.00','2','余额提现23元','23.00','2020-03-09 19:29:26');
INSERT INTO `finance` VALUES('5730164','56351','10.00','1','投资10元！','0.00','2020-03-09 19:31:19');
INSERT INTO `finance` VALUES('5730165','56337','0.80','1','推荐会员投资10元奖励1代0.8元！','0.80','2020-03-09 19:31:19');
INSERT INTO `finance` VALUES('5730166','55545','0.60','1','推荐会员投资10元奖励2代0.6元！','2.90','2020-03-09 19:31:19');
INSERT INTO `finance` VALUES('5730167','55540','0.20','1','推荐会员投资10元奖励3代0.2元！','31.60','2020-03-09 19:31:19');
INSERT INTO `finance` VALUES('5730168','55539','0.10','1','推荐会员投资10元奖励4代0.1元！','1.60','2020-03-09 19:31:19');
INSERT INTO `finance` VALUES('5730169','55538','0.10','1','推荐会员投资10元奖励5代0.1元！','26.85','2020-03-09 19:31:19');
INSERT INTO `finance` VALUES('5730170','55494','0.10','1','推荐会员投资10元奖励6代0.1元！','28.00','2020-03-09 19:31:19');
INSERT INTO `finance` VALUES('5730171','56337','1.50','1','会员投资10元获得团队奖1.5元！','0.80','2020-03-09 19:31:19');
INSERT INTO `finance` VALUES('5730172','56402','10.00','1','投资10元！','0.00','2020-03-09 19:31:51');
INSERT INTO `finance` VALUES('5730173','56351','0.10','1','推荐会员投资10元奖励5代0.1元！','0.10','2020-03-09 19:31:51');
INSERT INTO `finance` VALUES('5730174','56337','0.10','1','推荐会员投资10元奖励6代0.1元！','2.40','2020-03-09 19:31:51');
INSERT INTO `finance` VALUES('5730175','55545','0.10','1','推荐会员投资10元奖励7代0.1元！','3.00','2020-03-09 19:31:51');
INSERT INTO `finance` VALUES('5730176','55540','0.10','1','推荐会员投资10元奖励8代0.1元！','31.70','2020-03-09 19:31:51');
INSERT INTO `finance` VALUES('5730177','55539','0.10','1','推荐会员投资10元奖励9代0.1元！','1.70','2020-03-09 19:31:51');
INSERT INTO `finance` VALUES('5730178','55538','0.10','1','推荐会员投资10元奖励10代0.1元！','26.95','2020-03-09 19:31:51');
INSERT INTO `finance` VALUES('5730179','55494','0.05','1','推荐会员投资10元奖励11代0.05元！','28.05','2020-03-09 19:31:51');
INSERT INTO `finance` VALUES('5730180','56361','1.50','1','会员投资10元获得团队奖1.5元！','0.00','2020-03-09 19:31:51');
INSERT INTO `finance` VALUES('5730181','56381','100.00','1','投资100元！','0.00','2020-03-09 19:31:55');
INSERT INTO `finance` VALUES('5730182','56008','6.00','1','推荐会员投资100元奖励2代6元！','10.40','2020-03-09 19:31:55');
INSERT INTO `finance` VALUES('5730183','55904','2.00','1','推荐会员投资100元奖励3代2元！','2.80','2020-03-09 19:31:55');
INSERT INTO `finance` VALUES('5730184','55899','1.00','1','推荐会员投资100元奖励4代1元！','2.10','2020-03-09 19:31:55');
INSERT INTO `finance` VALUES('5730185','55896','1.00','1','推荐会员投资100元奖励5代1元！','2.60','2020-03-09 19:31:55');
INSERT INTO `finance` VALUES('5730186','55893','1.00','1','推荐会员投资100元奖励6代1元！','2.80','2020-03-09 19:31:55');
INSERT INTO `finance` VALUES('5730187','55891','1.00','1','推荐会员投资100元奖励7代1元！','8.90','2020-03-09 19:31:55');
INSERT INTO `finance` VALUES('5730188','55540','1.00','1','推荐会员投资100元奖励8代1元！','32.70','2020-03-09 19:31:55');
INSERT INTO `finance` VALUES('5730189','55539','1.00','1','推荐会员投资100元奖励9代1元！','2.70','2020-03-09 19:31:55');
INSERT INTO `finance` VALUES('5730190','55538','1.00','1','推荐会员投资100元奖励10代1元！','27.95','2020-03-09 19:31:55');
INSERT INTO `finance` VALUES('5730191','55494','0.50','1','推荐会员投资100元奖励11代0.5元！','28.55','2020-03-09 19:31:55');
INSERT INTO `finance` VALUES('5730192','56008','15.00','1','会员投资100元获得团队奖15元！','10.40','2020-03-09 19:31:55');
INSERT INTO `finance` VALUES('5730193','56376','100.00','1','投资100元！','0.00','2020-03-09 19:32:27');
INSERT INTO `finance` VALUES('5730194','55904','8.00','1','推荐会员投资100元奖励1代8元！','10.80','2020-03-09 19:32:27');
INSERT INTO `finance` VALUES('5730195','55899','6.00','1','推荐会员投资100元奖励2代6元！','8.10','2020-03-09 19:32:27');
INSERT INTO `finance` VALUES('5730196','55896','2.00','1','推荐会员投资100元奖励3代2元！','4.60','2020-03-09 19:32:27');
INSERT INTO `finance` VALUES('5730197','55893','1.00','1','推荐会员投资100元奖励4代1元！','3.80','2020-03-09 19:32:27');
INSERT INTO `finance` VALUES('5730198','55891','1.00','1','推荐会员投资100元奖励5代1元！','9.90','2020-03-09 19:32:27');
INSERT INTO `finance` VALUES('5730199','55540','1.00','1','推荐会员投资100元奖励6代1元！','33.70','2020-03-09 19:32:27');
INSERT INTO `finance` VALUES('5730200','55539','1.00','1','推荐会员投资100元奖励7代1元！','3.70','2020-03-09 19:32:27');
INSERT INTO `finance` VALUES('5730201','55538','1.00','1','推荐会员投资100元奖励8代1元！','28.95','2020-03-09 19:32:27');
INSERT INTO `finance` VALUES('5730202','55494','1.00','1','推荐会员投资100元奖励9代1元！','29.55','2020-03-09 19:32:27');
INSERT INTO `finance` VALUES('5730203','55904','15.00','1','会员投资100元获得团队奖15元！','10.80','2020-03-09 19:32:27');
INSERT INTO `finance` VALUES('5730204','56399','10.00','1','投资10元！','0.00','2020-03-09 19:34:12');
INSERT INTO `finance` VALUES('5730205','55649','0.80','1','推荐会员投资10元奖励1代0.8元！','1.60','2020-03-09 19:34:12');
INSERT INTO `finance` VALUES('5730206','55646','0.60','1','推荐会员投资10元奖励2代0.6元！','2.20','2020-03-09 19:34:12');
INSERT INTO `finance` VALUES('5730207','55642','0.20','1','推荐会员投资10元奖励3代0.2元！','28.10','2020-03-09 19:34:12');
INSERT INTO `finance` VALUES('5730208','55640','0.10','1','推荐会员投资10元奖励4代0.1元！','8.60','2020-03-09 19:34:12');
INSERT INTO `finance` VALUES('5730209','55637','0.10','1','推荐会员投资10元奖励5代0.1元！','3.80','2020-03-09 19:34:12');
INSERT INTO `finance` VALUES('5730210','55632','0.10','1','推荐会员投资10元奖励6代0.1元！','3.20','2020-03-09 19:34:12');
INSERT INTO `finance` VALUES('5730211','55629','0.10','1','推荐会员投资10元奖励7代0.1元！','3.20','2020-03-09 19:34:12');
INSERT INTO `finance` VALUES('5730212','55546','0.10','1','推荐会员投资10元奖励8代0.1元！','3.20','2020-03-09 19:34:12');
INSERT INTO `finance` VALUES('5730213','55540','0.10','1','推荐会员投资10元奖励9代0.1元！','33.80','2020-03-09 19:34:12');
INSERT INTO `finance` VALUES('5730214','55539','0.10','1','推荐会员投资10元奖励10代0.1元！','3.80','2020-03-09 19:34:12');
INSERT INTO `finance` VALUES('5730215','55538','0.05','1','推荐会员投资10元奖励11代0.05元！','29.00','2020-03-09 19:34:12');
INSERT INTO `finance` VALUES('5730216','55494','0.05','1','推荐会员投资10元奖励12代0.05元！','29.60','2020-03-09 19:34:12');
INSERT INTO `finance` VALUES('5730217','55646','1.00','1','会员投资10元获得团队奖1元！','2.20','2020-03-09 19:34:12');
INSERT INTO `finance` VALUES('5730218','55642','0.50','1','会员投资10元获得团队奖0.5元！','28.10','2020-03-09 19:34:12');
INSERT INTO `finance` VALUES('5730219','56382','10.00','1','投资10元！','0.00','2020-03-09 19:35:19');
INSERT INTO `finance` VALUES('5730220','56351','0.10','1','推荐会员投资10元奖励5代0.1元！','0.20','2020-03-09 19:35:19');
INSERT INTO `finance` VALUES('5730221','56337','0.10','1','推荐会员投资10元奖励6代0.1元！','2.50','2020-03-09 19:35:19');
INSERT INTO `finance` VALUES('5730222','55545','0.10','1','推荐会员投资10元奖励7代0.1元！','3.10','2020-03-09 19:35:19');
INSERT INTO `finance` VALUES('5730223','55540','0.10','1','推荐会员投资10元奖励8代0.1元！','33.90','2020-03-09 19:35:19');
INSERT INTO `finance` VALUES('5730224','55539','0.10','1','推荐会员投资10元奖励9代0.1元！','3.90','2020-03-09 19:35:19');
INSERT INTO `finance` VALUES('5730225','55538','0.10','1','推荐会员投资10元奖励10代0.1元！','29.10','2020-03-09 19:35:19');
INSERT INTO `finance` VALUES('5730226','55494','0.05','1','推荐会员投资10元奖励11代0.05元！','29.65','2020-03-09 19:35:19');
INSERT INTO `finance` VALUES('5730227','56361','1.50','1','会员投资10元获得团队奖1.5元！','1.50','2020-03-09 19:35:19');
INSERT INTO `finance` VALUES('5730228','55598','1.40','2','余额提现1.4元','1.40','2020-03-09 19:36:55');
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
) ENGINE=MyISAM AUTO_INCREMENT=2819 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目投资表';

--
-- 转存表中的数据 invest

INSERT INTO `invest` VALUES('2698','202003090300078622','55494','115','丰益金融周期收益20元','20.00','10','50','3.00','1','每日返息,两倍出局','0','2020-03-09 03:00:07','0','0','0');
INSERT INTO `invest` VALUES('2699','202003091207261849','55753','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 12:07:26','0','0','0');
INSERT INTO `invest` VALUES('2700','202003091215369931','55753','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 12:15:36','1','1583727350','0');
INSERT INTO `invest` VALUES('2701','202003091216215204','55753','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 12:16:21','0','0','0');
INSERT INTO `invest` VALUES('2702','202003091216264610','55753','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 12:16:26','0','0','0');
INSERT INTO `invest` VALUES('2703','202003091216303527','55753','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 12:16:30','1','1583727414','0');
INSERT INTO `invest` VALUES('2704','202003091218008420','55753','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 12:18:00','0','0','0');
INSERT INTO `invest` VALUES('2705','202003091220565155','55753','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 12:20:56','0','0','0');
INSERT INTO `invest` VALUES('2706','202003091221048183','55753','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 12:21:04','0','0','0');
INSERT INTO `invest` VALUES('2707','202003091321083040','55753','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 13:21:08','0','0','0');
INSERT INTO `invest` VALUES('2708','202003091358262652','55753','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 13:58:26','0','0','0');
INSERT INTO `invest` VALUES('2709','','56318','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 14:09:31','1','0','0');
INSERT INTO `invest` VALUES('2710','','56321','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 14:15:56','1','0','0');
INSERT INTO `invest` VALUES('2711','202003091439485816','55753','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 14:39:48','0','0','0');
INSERT INTO `invest` VALUES('2712','202003091440002348','55753','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 14:40:00','0','0','0');
INSERT INTO `invest` VALUES('2713','202003091440021827','55753','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 14:40:02','0','0','0');
INSERT INTO `invest` VALUES('2714','202003091440054657','55753','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 14:40:05','0','0','0');
INSERT INTO `invest` VALUES('2715','202003091441094238','56320','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 14:41:09','0','0','0');
INSERT INTO `invest` VALUES('2716','202003091441154432','56320','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 14:41:15','0','0','0');
INSERT INTO `invest` VALUES('2717','202003091448083733','55753','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 14:48:08','1','1583736497','0');
INSERT INTO `invest` VALUES('2718','202003091501186573','56321','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 15:01:18','1','1583737298','0');
INSERT INTO `invest` VALUES('2719','202003091602273899','55567','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 16:02:27','0','0','0');
INSERT INTO `invest` VALUES('2720','202003091602431385','55567','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 16:02:43','0','0','0');
INSERT INTO `invest` VALUES('2721','202003091602518353','55567','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 16:02:51','0','0','0');
INSERT INTO `invest` VALUES('2722','202003091617112367','55757','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 16:17:11','0','0','0');
INSERT INTO `invest` VALUES('2723','202003091617126122','55757','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 16:17:12','1','1583741852','0');
INSERT INTO `invest` VALUES('2724','202003091619175938','55567','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 16:19:17','1','1583741974','0');
INSERT INTO `invest` VALUES('2725','202003091620188747','55756','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 16:20:18','1','1583742039','0');
INSERT INTO `invest` VALUES('2726','202003091821152362','55893','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 18:21:15','1','1583749296','0');
INSERT INTO `invest` VALUES('2727','202003091823534805','55891','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 18:23:53','1','1583749444','0');
INSERT INTO `invest` VALUES('2728','202003091825341239','55594','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 18:25:34','0','0','0');
INSERT INTO `invest` VALUES('2729','202003091825347316','55694','119','丰益金融收益20元','100.00','50','50','3.00','0','到期还本还息','0','2020-03-09 18:25:34','0','0','0');
INSERT INTO `invest` VALUES('2730','202003091825378647','55694','119','丰益金融收益20元','100.00','50','50','3.00','0','到期还本还息','0','2020-03-09 18:25:37','0','0','0');
INSERT INTO `invest` VALUES('2731','202003091825408533','55694','119','丰益金融收益20元','100.00','50','50','3.00','0','到期还本还息','0','2020-03-09 18:25:40','0','0','0');
INSERT INTO `invest` VALUES('2732','202003091825511642','55594','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 18:25:51','1','1583749569','0');
INSERT INTO `invest` VALUES('2733','202003091827453187','55896','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 18:27:45','1','1583749674','0');
INSERT INTO `invest` VALUES('2734','202003091828375138','55899','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 18:28:37','1','1583749729','0');
INSERT INTO `invest` VALUES('2735','202003091828551436','55606','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 18:28:55','1','1583749747','0');
INSERT INTO `invest` VALUES('2736','202003091829332999','55904','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 18:29:33','1','1583749784','0');
INSERT INTO `invest` VALUES('2737','202003091830158824','55609','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 18:30:15','1','1583749825','0');
INSERT INTO `invest` VALUES('2738','202003091832283149','55545','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 18:32:28','0','0','0');
INSERT INTO `invest` VALUES('2739','202003091832472615','55545','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 18:32:47','0','0','0');
INSERT INTO `invest` VALUES('2740','202003091833284345','55545','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 18:33:28','1','1583750055','0');
INSERT INTO `invest` VALUES('2741','202003091838571073','55653','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 18:38:57','0','0','0');
INSERT INTO `invest` VALUES('2742','202003091841541550','55653','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 18:41:54','0','0','0');
INSERT INTO `invest` VALUES('2743','202003091843051811','56345','122','丰益金融收益2000元','2000.00','1000','50','3.00','1','每日返息,两倍出局','0','2020-03-09 18:43:05','0','0','0');
INSERT INTO `invest` VALUES('2744','202003091846111843','56345','122','丰益金融收益2000元','4000.00','2000','50','3.00','1','每日返息,两倍出局','0','2020-03-09 18:46:11','1','1583750801','0');
INSERT INTO `invest` VALUES('2745','202003091846328151','55653','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 18:46:32','0','0','0');
INSERT INTO `invest` VALUES('2746','202003091848222070','55653','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 18:48:22','0','0','0');
INSERT INTO `invest` VALUES('2747','202003091848468966','56353','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 18:48:46','0','0','0');
INSERT INTO `invest` VALUES('2748','202003091849075532','55653','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 18:49:07','0','0','0');
INSERT INTO `invest` VALUES('2749','202003091852155671','55617','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 18:52:15','0','0','0');
INSERT INTO `invest` VALUES('2750','202003091852178942','55617','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 18:52:17','1','1583751157','0');
INSERT INTO `invest` VALUES('2751','202003091852339297','55646','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 18:52:33','1','1583751169','0');
INSERT INTO `invest` VALUES('2752','202003091859001059','55543','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 18:59:00','1','1583751557','0');
INSERT INTO `invest` VALUES('2753','202003091859291692','56363','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 18:59:29','0','0','0');
INSERT INTO `invest` VALUES('2754','202003091859305671','56363','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 18:59:30','1','1583751586','0');
INSERT INTO `invest` VALUES('2755','202003091903554549','55791','119','丰益金融收益20元','200.00','100','50','3.00','0','到期还本还息','0','2020-03-09 19:03:55','0','0','0');
INSERT INTO `invest` VALUES('2756','202003091904126151','56169','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:04:12','0','0','0');
INSERT INTO `invest` VALUES('2757','202003091904247669','55649','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:04:24','0','0','0');
INSERT INTO `invest` VALUES('2758','202003091904289082','55791','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:04:28','0','0','0');
INSERT INTO `invest` VALUES('2759','202003091905001297','56337','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:05:00','1','1583752144','0');
INSERT INTO `invest` VALUES('2760','202003091906002669','56169','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:06:00','1','1583751998','0');
INSERT INTO `invest` VALUES('2761','202003091906041470','56357','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:06:04','1','1583751982','0');
INSERT INTO `invest` VALUES('2762','202003091906461350','56364','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:06:46','0','0','0');
INSERT INTO `invest` VALUES('2763','202003091907279686','56364','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:07:27','1','1583752074','0');
INSERT INTO `invest` VALUES('2764','202003091907492047','55649','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:07:49','0','0','0');
INSERT INTO `invest` VALUES('2765','202003091908138516','55649','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:08:13','0','0','0');
INSERT INTO `invest` VALUES('2766','202003091908548557','55649','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:08:54','1','1583752188','0');
INSERT INTO `invest` VALUES('2767','202003091911573424','55653','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:11:57','0','0','0');
INSERT INTO `invest` VALUES('2768','202003091913008510','56334','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:13:00','0','0','0');
INSERT INTO `invest` VALUES('2769','202003091913047055','56334','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:13:04','0','0','0');
INSERT INTO `invest` VALUES('2770','202003091914351759','56334','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:14:35','1','1583752492','0');
INSERT INTO `invest` VALUES('2771','202003091914385846','55556','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:14:38','1','1583752488','0');
INSERT INTO `invest` VALUES('2772','202003091914458560','55656','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:14:45','0','0','0');
INSERT INTO `invest` VALUES('2773','202003091917227161','55653','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:17:22','0','0','0');
INSERT INTO `invest` VALUES('2774','202003091917332007','55656','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:17:33','0','0','0');
INSERT INTO `invest` VALUES('2775','202003091917358156','55656','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:17:35','1','1583752666','0');
INSERT INTO `invest` VALUES('2776','202003091918423035','55649','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:18:42','0','0','0');
INSERT INTO `invest` VALUES('2777','202003091919197601','55649','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:19:19','1','1583752786','0');
INSERT INTO `invest` VALUES('2778','202003091920142491','56367','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:20:14','0','0','0');
INSERT INTO `invest` VALUES('2779','202003091920165072','56367','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:20:16','1','1583752845','0');
INSERT INTO `invest` VALUES('2780','202003091921132619','56376','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:21:13','0','0','0');
INSERT INTO `invest` VALUES('2781','202003091922245775','55694','119','丰益金融收益20元','100.00','50','50','3.00','0','到期还本还息','0','2020-03-09 19:22:24','1','1583752978','0');
INSERT INTO `invest` VALUES('2782','202003091923369191','55653','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:23:36','1','1583753031','0');
INSERT INTO `invest` VALUES('2783','202003091924027633','56389','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:24:02','0','0','0');
INSERT INTO `invest` VALUES('2784','202003091924515153','56376','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:24:51','0','0','0');
INSERT INTO `invest` VALUES('2785','202003091924557992','56389','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:24:55','0','0','0');
INSERT INTO `invest` VALUES('2786','202003091926018531','56376','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:26:01','0','0','0');
INSERT INTO `invest` VALUES('2787','202003091926228377','56389','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:26:22','0','0','0');
INSERT INTO `invest` VALUES('2788','202003091926254270','55761','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:26:25','0','0','0');
INSERT INTO `invest` VALUES('2789','202003091926483624','56389','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:26:48','0','0','0');
INSERT INTO `invest` VALUES('2790','202003091926568008','56401','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:26:56','0','0','0');
INSERT INTO `invest` VALUES('2791','202003091927107895','56388','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:27:10','0','0','0');
INSERT INTO `invest` VALUES('2792','202003091927116932','56388','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:27:11','1','1583753268','0');
INSERT INTO `invest` VALUES('2793','202003091927151023','55761','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:27:15','0','0','0');
INSERT INTO `invest` VALUES('2794','202003091927179449','55761','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:27:17','1','1583753255','0');
INSERT INTO `invest` VALUES('2795','202003091927202880','56389','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:27:20','0','0','0');
INSERT INTO `invest` VALUES('2796','202003091927411148','56389','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:27:41','0','0','0');
INSERT INTO `invest` VALUES('2797','202003091928085431','56389','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:28:08','1','1583753295','0');
INSERT INTO `invest` VALUES('2798','202003091929358629','56388','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:29:35','0','0','0');
INSERT INTO `invest` VALUES('2799','202003091930078900','55653','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:30:07','0','0','0');
INSERT INTO `invest` VALUES('2800','202003091930195247','55653','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:30:19','0','0','0');
INSERT INTO `invest` VALUES('2801','202003091930426568','56351','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:30:42','1','1583753479','0');
INSERT INTO `invest` VALUES('2802','202003091931216792','56402','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:31:21','0','0','0');
INSERT INTO `invest` VALUES('2803','202003091931243278','56402','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:31:24','1','1583753510','0');
INSERT INTO `invest` VALUES('2804','202003091931407805','56381','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:31:40','1','1583753515','0');
INSERT INTO `invest` VALUES('2805','202003091931578915','56376','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:31:57','1','1583753547','0');
INSERT INTO `invest` VALUES('2806','202003091932265770','56399','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:32:26','0','0','0');
INSERT INTO `invest` VALUES('2807','202003091932311151','56405','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:32:31','0','0','0');
INSERT INTO `invest` VALUES('2808','202003091932326383','56405','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:32:32','0','0','0');
INSERT INTO `invest` VALUES('2809','202003091932503346','56382','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:32:50','0','0','0');
INSERT INTO `invest` VALUES('2810','202003091932521968','56382','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:32:52','0','0','0');
INSERT INTO `invest` VALUES('2811','202003091932547338','56382','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:32:54','0','0','0');
INSERT INTO `invest` VALUES('2812','202003091933089195','56399','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:33:08','0','0','0');
INSERT INTO `invest` VALUES('2813','202003091933574550','56399','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:33:57','1','1583753652','0');
INSERT INTO `invest` VALUES('2814','202003091934362500','56382','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:34:36','0','0','0');
INSERT INTO `invest` VALUES('2815','202003091935091455','56382','119','丰益金融收益20元','20.00','10','50','3.00','0','到期还本还息','0','2020-03-09 19:35:09','1','1583753719','0');
INSERT INTO `invest` VALUES('2816','202003091935387792','56399','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:35:38','0','0','0');
INSERT INTO `invest` VALUES('2817','202003091936151986','56399','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:36:15','0','0','0');
INSERT INTO `invest` VALUES('2818','202003091936385717','56399','120','丰益金融收益200元','200.00','100','50','3.00','1','每日返息,两倍出局','0','2020-03-09 19:36:38','0','0','0');
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
  `rate` decimal(10,2) unsigned zerofill NOT NULL DEFAULT '00000000.00' COMMENT '费率',
  `percent` varchar(10) NOT NULL DEFAULT '0.00' COMMENT '模拟进度',
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
  `frbl` varchar(150) NOT NULL DEFAULT '0.00' COMMENT '分润比例',
  `red` varchar(150) NOT NULL,
  `class` varchar(20) NOT NULL DEFAULT '0',
  `clock` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目表';

--
-- 转存表中的数据 item

INSERT INTO `item` VALUES('119','丰益金融收益20元','','20200309140008.png','10000.00','00000003.00','','50','0','10.00','10000.00','1000','','0','','2020-03-09 03:02:08','1','','','','0');
INSERT INTO `item` VALUES('122','丰益金融收益2000元','','20200309030651.png','10000.00','00000003.00','','50','1','1000.00','10000.00','1000','','0','','2020-03-09 03:05:54','4','000.00','0.00','0','0');
INSERT INTO `item` VALUES('121','丰益金融收益1000元','','20200309030549.png','10000.00','00000003.00','','50','1','500.00','10000.00','1000','','0','','2020-03-09 03:05:05','3','000.00','0.00','0','0');
INSERT INTO `item` VALUES('120','丰益金融收益200元','','20200309030444.png','10000.00','00000003.00','','50','1','100.00','10000.00','1000','','0','','2020-03-09 03:04:08','2','000.00','0.00','0','0');
INSERT INTO `item` VALUES('123','丰益金融收益4000元','','20200309140149.jpg','10000.00','00000003.00','','50','0','2000.00','10000.00','1000','','0','','2021-05-09 16:00:00','5','','','','0');
INSERT INTO `item` VALUES('124','丰益金融收益10000元','','20200309140219.jpg','10000.00','00000003.00','','50','0','5000.00','10000.00','1000','','0','','2021-04-09 15:00:00','6','','','','0');
INSERT INTO `item` VALUES('125','丰益金融收益20000元','','20200309140244.jpg','10000.00','00000003.00','','50','0','10000.00','10000.00','1000','','0','','2021-03-03 14:49:00','7','','','','0');
INSERT INTO `item` VALUES('126','丰益金融收益40000元','','20200309140803.jpg','10000.00','00000003.00','','50','0','20000.00','100000.00','1000','','0','','2021-03-10 15:00:00','8','','','','0');
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
-- 表的结构padian_record
--
DROP TABLE IF EXISTS `padian_record`;
CREATE TABLE `padian_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` varchar(100) NOT NULL COMMENT '转让会员（给）',
  `uid` varchar(100) DEFAULT NULL COMMENT '获得会员（收）',
  `padian` varchar(100) DEFAULT NULL COMMENT '转让点数',
  `time` varchar(255) DEFAULT NULL COMMENT '转让时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 padian_record

INSERT INTO `padian_record` VALUES('5','55753','17858704295','5','1583734081');
INSERT INTO `padian_record` VALUES('6','55753','15088833353','10','1583734746');
INSERT INTO `padian_record` VALUES('7','56323','15088833353','3','1583739411');
INSERT INTO `padian_record` VALUES('8','56323','15088833355','1','1583749958');
INSERT INTO `padian_record` VALUES('9','55891','13876066097','15','1583750196');
INSERT INTO `padian_record` VALUES('10','55893','13350473250','15','1583750230');
INSERT INTO `padian_record` VALUES('11','55896','18889790842','15','1583750285');
INSERT INTO `padian_record` VALUES('12','55546','15779026132','15','1583750335');
INSERT INTO `padian_record` VALUES('13','55899','15348886579','15','1583750378');
INSERT INTO `padian_record` VALUES('14','55629','15879434358','15','1583750383');
INSERT INTO `padian_record` VALUES('15','55632','18350228139','15','1583750410');
INSERT INTO `padian_record` VALUES('16','55637','17770789095','15','1583750439');
INSERT INTO `padian_record` VALUES('17','55904','15993702893','15','1583750452');
INSERT INTO `padian_record` VALUES('18','55640','17770788905','15','1583750462');
INSERT INTO `padian_record` VALUES('19','55904','18865110814','15','1583750480');
INSERT INTO `padian_record` VALUES('20','55904','17776492012','15','1583750491');
INSERT INTO `padian_record` VALUES('21','55904','18909845170','15','1583750500');
INSERT INTO `padian_record` VALUES('22','55904','13982048884','15','1583750523');
INSERT INTO `padian_record` VALUES('23','55904','15727212262','15','1583750536');
INSERT INTO `padian_record` VALUES('24','55904','13100940764','15','1583750545');
INSERT INTO `padian_record` VALUES('25','55642','15758727331','10','1583750550');
INSERT INTO `padian_record` VALUES('26','55904','15549087900','15','1583750562');
INSERT INTO `padian_record` VALUES('27','55904','15108429423','15','1583750575');
INSERT INTO `padian_record` VALUES('28','55904','13345485972','15','1583750587');
INSERT INTO `padian_record` VALUES('29','55545','15881886240','15','1583750626');
INSERT INTO `padian_record` VALUES('30','56323','15088833354','1','1583750649');
INSERT INTO `padian_record` VALUES('31','55543','15528935571','15','1583750664');
INSERT INTO `padian_record` VALUES('32','55543','13100621679','15','1583750677');
INSERT INTO `padian_record` VALUES('33','55543','18358992542','15','1583750694');
INSERT INTO `padian_record` VALUES('34','55543','18009569219','15','1583750701');
INSERT INTO `padian_record` VALUES('35','55543','13904429417','15','1583750711');
INSERT INTO `padian_record` VALUES('36','55543','18093627883','15','1583750719');
INSERT INTO `padian_record` VALUES('37','55543','17553841898','15','1583750728');
INSERT INTO `padian_record` VALUES('38','55543','18529562160','15','1583750734');
INSERT INTO `padian_record` VALUES('39','55543','15526326905','15','1583750743');
INSERT INTO `padian_record` VALUES('40','55543','17060741085','15','1583750754');
INSERT INTO `padian_record` VALUES('41','55547','13353981117','15','1583750967');
INSERT INTO `padian_record` VALUES('42','55547','13957194263','15','1583751005');
INSERT INTO `padian_record` VALUES('43','55547','15662266144','15','1583751028');
INSERT INTO `padian_record` VALUES('44','55542','18506072597','15','1583751045');
INSERT INTO `padian_record` VALUES('45','55589','13409926750','15','1583751086');
INSERT INTO `padian_record` VALUES('46','55591','18243930508','15','1583751120');
INSERT INTO `padian_record` VALUES('47','55594','18310237109','15','1583751390');
INSERT INTO `padian_record` VALUES('48','55598','15898337424','15','1583751627');
INSERT INTO `padian_record` VALUES('49','55601','17754465396','15','1583751720');
INSERT INTO `padian_record` VALUES('50','55602','13943919187','15','1583751817');
INSERT INTO `padian_record` VALUES('51','55602','17339060197','15','1583751837');
INSERT INTO `padian_record` VALUES('52','55602','15520878338','15','1583751854');
INSERT INTO `padian_record` VALUES('53','55602','15277016460','15','1583751867');
INSERT INTO `padian_record` VALUES('54','55602','18133932585','15','1583751879');
INSERT INTO `padian_record` VALUES('55','55606','15643974469','15','1583752039');
INSERT INTO `padian_record` VALUES('56','55606','13268213460','15','1583752053');
INSERT INTO `padian_record` VALUES('57','55567','17347224148','15','1583752151');
INSERT INTO `padian_record` VALUES('58','55756','18073789565','15','1583752227');
INSERT INTO `padian_record` VALUES('59','56337','13686807852','15','1583752235');
INSERT INTO `padian_record` VALUES('60','55904','18911768728','15','1583752239');
INSERT INTO `padian_record` VALUES('61','55757','15020915337','15','1583752268');
INSERT INTO `padian_record` VALUES('62','55904','18388828361','15','1583752269');
INSERT INTO `padian_record` VALUES('63','55757','15008262324','15','1583752338');
INSERT INTO `padian_record` VALUES('64','55757','15957119247','15','1583752349');
INSERT INTO `padian_record` VALUES('65','56351','18281863755','15','1583752367');
INSERT INTO `padian_record` VALUES('66','55757','15180135388','15','1583752390');
INSERT INTO `padian_record` VALUES('67','55757','18324351817','15','1583752400');
INSERT INTO `padian_record` VALUES('68','55757','15011376459','15','1583752428');
INSERT INTO `padian_record` VALUES('69','55757','19107472480','15','1583752438');
INSERT INTO `padian_record` VALUES('70','55757','15070006641','15','1583752448');
INSERT INTO `padian_record` VALUES('71','55757','13693302298','15','1583752460');
INSERT INTO `padian_record` VALUES('72','55757','13390987488','15','1583752470');
INSERT INTO `padian_record` VALUES('73','55757','18169479427','15','1583752484');
INSERT INTO `padian_record` VALUES('74','55757','18668994914','15','1583752495');
INSERT INTO `padian_record` VALUES('75','55757','17635003285','15','1583752641');
INSERT INTO `padian_record` VALUES('76','55757','13111085346','15','1583752651');
INSERT INTO `padian_record` VALUES('77','55757','13429475178','15','1583752661');
INSERT INTO `padian_record` VALUES('78','55757','16651385152','15','1583752670');
INSERT INTO `padian_record` VALUES('79','55757','16726383685','15','1583752679');
INSERT INTO `padian_record` VALUES('80','55757','17643192854','15','1583752688');
INSERT INTO `padian_record` VALUES('81','55757','13911355313','15','1583752703');
INSERT INTO `padian_record` VALUES('82','55757','18088177576','15','1583752713');
INSERT INTO `padian_record` VALUES('83','55757','13594572114','15','1583752724');
INSERT INTO `padian_record` VALUES('84','55757','18812126721','15','1583752734');
INSERT INTO `padian_record` VALUES('85','55757','13853739789','15','1583752743');
INSERT INTO `padian_record` VALUES('86','55757','13869984000','15','1583752752');
INSERT INTO `padian_record` VALUES('87','55757','13963007101','15','1583752762');
INSERT INTO `padian_record` VALUES('88','55757','13237539399','15','1583752773');
INSERT INTO `padian_record` VALUES('89','55757','13824741341','15','1583752782');
INSERT INTO `padian_record` VALUES('90','55757','17319258057','15','1583752791');
INSERT INTO `padian_record` VALUES('91','55757','15504329071','15','1583752800');
INSERT INTO `padian_record` VALUES('92','55757','15623370693','15','1583752810');
INSERT INTO `padian_record` VALUES('93','55757','13737244905','15','1583752819');
INSERT INTO `padian_record` VALUES('94','55757','13502491285','15','1583752844');
INSERT INTO `padian_record` VALUES('95','55757','13510580382','15','1583752855');
INSERT INTO `padian_record` VALUES('96','55757','13904916325','15','1583752863');
INSERT INTO `padian_record` VALUES('97','55757','15586239751','15','1583752872');
INSERT INTO `padian_record` VALUES('98','55757','13071665887','15','1583752882');
INSERT INTO `padian_record` VALUES('99','55757','15738767095','15','1583752892');
INSERT INTO `padian_record` VALUES('100','55757','17610526582','15','1583752901');
INSERT INTO `padian_record` VALUES('101','55757','18093627833','15','1583752911');
INSERT INTO `padian_record` VALUES('102','55757','17184051881','15','1583752921');
INSERT INTO `padian_record` VALUES('103','56351','13756226927','15','1583752928');
INSERT INTO `padian_record` VALUES('104','55959','13555209708','15','1583752933');
INSERT INTO `padian_record` VALUES('105','55963','18814657767','15','1583753056');
INSERT INTO `padian_record` VALUES('106','55564','17853818373','15','1583753136');
INSERT INTO `padian_record` VALUES('107','56359','15585111319','15','1583753137');
INSERT INTO `padian_record` VALUES('108','55745','15122938885','7','1583753222');
INSERT INTO `padian_record` VALUES('109','56028','15569266872','15','1583753386');
INSERT INTO `padian_record` VALUES('110','56330','15299248085','15','1583753419');
INSERT INTO `padian_record` VALUES('111','56331','15051602643','15','1583753448');
INSERT INTO `padian_record` VALUES('112','55791','15842185305','8','1583753601');
INSERT INTO `padian_record` VALUES('113','55609','15093547956','15','1583753716');
INSERT INTO `padian_record` VALUES('114','56333','17838531172','15','1583753735');
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户支付日志记录数据表';

--
-- 转存表中的数据 pay_buy_log

INSERT INTO `pay_buy_log` VALUES('27','202003090300078622','55494','1583694007','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003090300078622\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309030052101173406\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"822ee6935f1397f1136a1c7792092304\"}');
INSERT INTO `pay_buy_log` VALUES('28','202003091207261849','55753','1583726846','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091207261849\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309120742101179658\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"8ff3097afa97c793890db74334e3eada\"}');
INSERT INTO `pay_buy_log` VALUES('29','202003091215369931','55753','1583727336','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091215369931\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309121610101171232\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"32a165e938fe0a913d2bacab7ddd16fd\"}');
INSERT INTO `pay_buy_log` VALUES('30','202003091216303527','55753','1583727390','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091216303527\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309121707101178739\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"0da4169df234140bc8bd5a87ccd7b926\"}');
INSERT INTO `pay_buy_log` VALUES('31','202003091221048183','55753','1583727664','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091221048183\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309122151101179725\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"50c5010adb1308404c4b9bbdd8953ba7\"}');
INSERT INTO `pay_buy_log` VALUES('32','202003091440054657','55753','1583736005','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091440054657\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309144125101171694\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"1e7096245305cb451b33099fc8894ead\"}');
INSERT INTO `pay_buy_log` VALUES('33','202003091441154432','56320','1583736075','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091441154432\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309144237101172965\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"28736a7c94e0b0639ad1e1b8b5d993c2\"}');
INSERT INTO `pay_buy_log` VALUES('34','202003091448083733','55753','1583736489','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091448083733\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309144946101171662\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"2798bad86dec42cd4f97bbd70032114a\"}');
INSERT INTO `pay_buy_log` VALUES('35','202003091501186573','56321','1583737278','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091501186573\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309150325101179472\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"faadbd7934be941a78231d1f3c9a8add\"}');
INSERT INTO `pay_buy_log` VALUES('36','202003091602431385','55567','1583740963','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091602431385\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309160446101174548\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"3340b5d941a07428bfb2d11a3c8aacbe\"}');
INSERT INTO `pay_buy_log` VALUES('37','202003091602518353','55567','1583740971','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091602518353\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309160454101171321\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"06cb9f1bf70ac1369c1cdedb5d0e7c91\"}');
INSERT INTO `pay_buy_log` VALUES('38','202003091617112367','55757','1583741831','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091617112367\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309161729101178685\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"220122a1ac01af6975f95f2f98ed3c30\"}');
INSERT INTO `pay_buy_log` VALUES('39','202003091617126122','55757','1583741833','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091617126122\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309161730101177467\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"8023d14827fcf2480862a59200a189c0\"}');
INSERT INTO `pay_buy_log` VALUES('40','202003091619175938','55567','1583741957','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091619175938\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309161939101178121\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"6cd0bbbe5ded0ba563e460e5cdfbce8b\"}');
INSERT INTO `pay_buy_log` VALUES('41','202003091620188747','55756','1583742018','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091620188747\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309162043101179505\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"71539fac160a825e823bcecae2488cc2\"}');
INSERT INTO `pay_buy_log` VALUES('42','202003091821152362','55893','1583749275','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091821152362\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309182130101178759\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"1c6f22f52241c6a34a424174c9f347e9\"}');
INSERT INTO `pay_buy_log` VALUES('43','202003091823534805','55891','1583749433','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091823534805\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309182414101176959\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"1534180f1ec1c8eefddda3c5f8fe26e4\"}');
INSERT INTO `pay_buy_log` VALUES('44','202003091825347316','55694','1583749534','{\"amount\":5000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091825347316\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309182559101174145\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"b5394174c908dbd1b9dd334170c0d1ab\"}');
INSERT INTO `pay_buy_log` VALUES('45','202003091825378647','55694','1583749537','{\"amount\":5000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091825378647\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309182602101174169\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"e8f40db04f7a6e02c860ae1fba950ec4\"}');
INSERT INTO `pay_buy_log` VALUES('46','202003091825408533','55694','1583749540','{\"amount\":5000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091825408533\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309182605101171268\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"b4b07bbb2fc8abf4f0f74023f697aeab\"}');
INSERT INTO `pay_buy_log` VALUES('47','202003091825511642','55594','1583749551','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091825511642\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309182617101172240\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"b97eef27c4833b4a534637e20f4c0c04\"}');
INSERT INTO `pay_buy_log` VALUES('48','202003091827453187','55896','1583749665','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091827453187\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309182815101179553\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"fd6a5c6b0ecf2317db693c272abde146\"}');
INSERT INTO `pay_buy_log` VALUES('49','202003091828375138','55899','1583749717','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091828375138\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309182909101175547\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"3c1af3ad700d323f32223dec3a95f531\"}');
INSERT INTO `pay_buy_log` VALUES('50','202003091828551436','55606','1583749735','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091828551436\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309182928101177739\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"fa859233b3d4e7c3f59463e47aa97297\"}');
INSERT INTO `pay_buy_log` VALUES('51','202003091829332999','55904','1583749773','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091829332999\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309183007101178335\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"95802b15556ad4cc8795a3761c8fd647\"}');
INSERT INTO `pay_buy_log` VALUES('52','202003091830158824','55609','1583749815','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091830158824\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309183050101175499\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"f29dd452910aff8a3e02e42a703a4755\"}');
INSERT INTO `pay_buy_log` VALUES('53','202003091832472615','55545','1583749968','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091832472615\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309183329101176372\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"becd5fbf1ad4577e132841d1764d524e\"}');
INSERT INTO `pay_buy_log` VALUES('54','202003091833284345','55545','1583750008','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091833284345\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309183411101173572\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"2e0b2048c7dad8a783c6578b2487dad6\"}');
INSERT INTO `pay_buy_log` VALUES('55','202003091846111843','56345','1583750772','{\"amount\":200000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091846111843\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309184724101179452\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"cec480b3f0aaeba12f984c648ece8c42\"}');
INSERT INTO `pay_buy_log` VALUES('56','202003091848222070','55653','1583750902','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091848222070\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309184939101177840\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"fc4b27c94bf60f6f8c74797d39f55949\"}');
INSERT INTO `pay_buy_log` VALUES('57','202003091852155671','55617','1583751135','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091852155671\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309185341101178837\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"db52927a07c498776c7631d3e42dc05a\"}');
INSERT INTO `pay_buy_log` VALUES('58','202003091852178942','55617','1583751138','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091852178942\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309185344101176444\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"dc8f353c23009e6285229e0bf49add38\"}');
INSERT INTO `pay_buy_log` VALUES('59','202003091852339297','55646','1583751153','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091852339297\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309185400101178135\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"b9be794c0a7aa31fb98bc6c040dc047c\"}');
INSERT INTO `pay_buy_log` VALUES('60','202003091859001059','55543','1583751541','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091859001059\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309190042101173265\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"ac45b7d3d64fc1591c5ee53a786285ce\"}');
INSERT INTO `pay_buy_log` VALUES('61','202003091859291692','56363','1583751570','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091859291692\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309190112101176151\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"8b4dcb5f0d461acceb82cff99cc13da4\"}');
INSERT INTO `pay_buy_log` VALUES('62','202003091859305671','56363','1583751570','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091859305671\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309190113101179741\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"72e656f579fdefa62408de061ebfc737\"}');
INSERT INTO `pay_buy_log` VALUES('63','202003091904247669','55649','1583751864','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091904247669\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309190618101174418\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"33a14d86fc76738f6cc87cd04d71f737\"}');
INSERT INTO `pay_buy_log` VALUES('64','202003091904289082','55791','1583751868','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091904289082\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309190623101176261\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"69933d489f6139b7bbac9c2ae93e9e47\"}');
INSERT INTO `pay_buy_log` VALUES('65','202003091905001297','56337','1583751900','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091905001297\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309190655101178527\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"a5b202244e7f42c07a36bf3a8064d89b\"}');
INSERT INTO `pay_buy_log` VALUES('66','202003091906002669','56169','1583751960','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091906002669\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309190758101175535\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"2ae3e9649c47d6af60ae5f8de397432d\"}');
INSERT INTO `pay_buy_log` VALUES('67','202003091906041470','56357','1583751965','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091906041470\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309190803101175092\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"31f22755e012e6f160de080752040f24\"}');
INSERT INTO `pay_buy_log` VALUES('68','202003091907279686','56364','1583752047','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091907279686\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309190928101175520\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"11c7e244092659f47bf54a099f69cadf\"}');
INSERT INTO `pay_buy_log` VALUES('69','202003091908138516','55649','1583752093','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091908138516\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309191016101175651\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"4a7dfa8b5f16cc3897be088df8cedaf3\"}');
INSERT INTO `pay_buy_log` VALUES('70','202003091908548557','55649','1583752134','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091908548557\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309191058101173215\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"5e7fc73f22a374cb34c4b3397e42ab87\"}');
INSERT INTO `pay_buy_log` VALUES('71','202003091913008510','56334','1583752381','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091913008510\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309191514101176337\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"d0fb2759e75e3a4b159587000554f086\"}');
INSERT INTO `pay_buy_log` VALUES('72','202003091913047055','56334','1583752385','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091913047055\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309191518101178375\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"94649637ca6948a63f5e93d3a2c95053\"}');
INSERT INTO `pay_buy_log` VALUES('73','202003091914351759','56334','1583752476','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091914351759\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309191653101179963\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"df5aa2d744e15504cb6c2bc7a0867ac2\"}');
INSERT INTO `pay_buy_log` VALUES('74','202003091914385846','55556','1583752478','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091914385846\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309191655101178541\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"2591fb3974c2dfc6f13a7ecd4887a078\"}');
INSERT INTO `pay_buy_log` VALUES('75','202003091917332007','55656','1583752653','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091917332007\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309191735101171161\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"0bb4047fa81ddc4a87b2954a90aeef5b\"}');
INSERT INTO `pay_buy_log` VALUES('76','202003091917358156','55656','1583752655','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091917358156\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309191737101175244\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"4e9162447fba8ea79462fb8ac7404b68\"}');
INSERT INTO `pay_buy_log` VALUES('77','202003091918423035','55649','1583752722','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091918423035\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309191847101179947\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"942191d99109b850bd8f6502ae166c30\"}');
INSERT INTO `pay_buy_log` VALUES('78','202003091919197601','55649','1583752759','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091919197601\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309191925101173356\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"cfc8d411ffa3f33f3c61be040dd276a9\"}');
INSERT INTO `pay_buy_log` VALUES('79','202003091920142491','56367','1583752814','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091920142491\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309192022101176131\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"0a3db26c84584a6e1008b040cfab95df\"}');
INSERT INTO `pay_buy_log` VALUES('80','202003091920165072','56367','1583752816','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091920165072\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309192024101179634\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"cb39231fd8240a3edb25d5fa414fe6e6\"}');
INSERT INTO `pay_buy_log` VALUES('81','202003091922245775','55694','1583752944','{\"amount\":5000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091922245775\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309192237101176328\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"540f839c288d8727767b804892769feb\"}');
INSERT INTO `pay_buy_log` VALUES('82','202003091923369191','55653','1583753016','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091923369191\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309192352101176740\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"c7b1478b7297e71df28d505868ba7f9f\"}');
INSERT INTO `pay_buy_log` VALUES('83','202003091924557992','56389','1583753095','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091924557992\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309192514101179322\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"43ebbf3b171e074e127e21691b147b3f\"}');
INSERT INTO `pay_buy_log` VALUES('84','202003091926018531','56376','1583753161','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091926018531\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309192623101172694\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"a3ecd780444dbc559de3172306e5b612\"}');
INSERT INTO `pay_buy_log` VALUES('85','202003091926228377','56389','1583753182','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091926228377\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309192644101171597\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"263d789b97965154e802fe000703be0f\"}');
INSERT INTO `pay_buy_log` VALUES('86','202003091926568008','56401','1583753217','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091926568008\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309192720101174273\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"6e3dab669f8d565fab28110cd99a9c75\"}');
INSERT INTO `pay_buy_log` VALUES('87','202003091927107895','56388','1583753230','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091927107895\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309192734101171708\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"67d80c0aa43b4f35a22b7a6841b3b00d\"}');
INSERT INTO `pay_buy_log` VALUES('88','202003091927116932','56388','1583753231','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091927116932\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309192735101178793\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"0a4c09c339ff304a3f934cd630fb8294\"}');
INSERT INTO `pay_buy_log` VALUES('89','202003091927151023','55761','1583753235','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091927151023\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309192739101179326\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"36ded8d9527fb627628873809a12d522\"}');
INSERT INTO `pay_buy_log` VALUES('90','202003091927179449','55761','1583753237','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091927179449\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309192741101175278\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"d42fe8b7dde08c2e4fb48b0723d1836d\"}');
INSERT INTO `pay_buy_log` VALUES('91','202003091927411148','56389','1583753261','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091927411148\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309192806101175377\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"300ee0e9812755cbca33765fa7dea262\"}');
INSERT INTO `pay_buy_log` VALUES('92','202003091928085431','56389','1583753288','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091928085431\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309192834101171545\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"87a78f0d4d26df6736f3df8474203c1d\"}');
INSERT INTO `pay_buy_log` VALUES('93','202003091930426568','56351','1583753442','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091930426568\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309193114101175080\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"dacd850b58542ad38868df630c094818\"}');
INSERT INTO `pay_buy_log` VALUES('94','202003091931216792','56402','1583753481','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091931216792\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309193155101178205\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"897551e118df11f47f6a704b58df9567\"}');
INSERT INTO `pay_buy_log` VALUES('95','202003091931243278','56402','1583753484','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091931243278\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309193157101173301\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"a0d76762d0b1ed3ac9f298bfc9c1b586\"}');
INSERT INTO `pay_buy_log` VALUES('96','202003091931407805','56381','1583753501','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091931407805\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309193215101171495\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"4f7f17d85e4d5695e1df562d4805fec7\"}');
INSERT INTO `pay_buy_log` VALUES('97','202003091931578915','56376','1583753517','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091931578915\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309193231101179293\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"8e96b676dcea69c7917a8d14079c8d3f\"}');
INSERT INTO `pay_buy_log` VALUES('98','202003091932311151','56405','1583753552','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091932311151\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309193308101173657\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"4b3c0a96849f1b46ba934b55c47669d7\"}');
INSERT INTO `pay_buy_log` VALUES('99','202003091932326383','56405','1583753552','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091932326383\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309193308101175712\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"e1d5e331d4ef819f264f43d90faf0621\"}');
INSERT INTO `pay_buy_log` VALUES('100','202003091932503346','56382','1583753571','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091932503346\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309193327101174035\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"82cfe69c766fbd32a3d02ef5b52826f6\"}');
INSERT INTO `pay_buy_log` VALUES('101','202003091932521968','56382','1583753573','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091932521968\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309193329101177429\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"ad97b55acdd6f6b2263bdb2eac63fc9c\"}');
INSERT INTO `pay_buy_log` VALUES('102','202003091932547338','56382','1583753574','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091932547338\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309193331101177315\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"3a0c19cade278b41c9bcc72524e9da8b\"}');
INSERT INTO `pay_buy_log` VALUES('103','202003091933574550','56399','1583753637','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091933574550\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309193436101178183\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"7d59135ab4539d4d1e339b519f10169d\"}');
INSERT INTO `pay_buy_log` VALUES('104','202003091935091455','56382','1583753709','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"merchant_id\":\"10117\",\"msg\":\"000\",\"out_trade_no\":\"202003091935091455\",\"pass_type_id\":1,\"payurl\":\"http:\\/\\/shelllinks.com\\/index\\/apipay?order_id=20200309193551101174571\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"6e787771d8988c3486f8b068e452824e\"}');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='支付回调日志记录数据表';

--
-- 转存表中的数据 pay_notice_log

INSERT INTO `pay_notice_log` VALUES('16','202003091215369931','1','1583727350','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091215369931\",\"pay_time\":\"2020-03-09 12:16:21\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"e1485949eb3b1d028c5f5c225581ad4e\"}','1583727350');
INSERT INTO `pay_notice_log` VALUES('17','202003091216303527','1','1583727414','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091216303527\",\"pay_time\":\"2020-03-09 12:17:30\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"9a40ca7481b6b81f6762a377e73fe3f2\"}','1583727414');
INSERT INTO `pay_notice_log` VALUES('18','202003091448083733','1','1583736497','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091448083733\",\"pay_time\":\"2020-03-09 14:49:53\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"6648567b1b28a3fbddf78e5fedb6b471\"}','1583736497');
INSERT INTO `pay_notice_log` VALUES('19','202003091501186573','1','1583737297','{\"amount\":1,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091501186573\",\"pay_time\":\"2020-03-09 15:03:43\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"b06bc341ed5a2972232404387293df25\"}','1583737298');
INSERT INTO `pay_notice_log` VALUES('20','202003091617126122','1','1583741852','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091617126122\",\"pay_time\":\"2020-03-09 16:17:48\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"c4bfcb2b8f6836dd8c92fc33f7faa14f\"}','1583741852');
INSERT INTO `pay_notice_log` VALUES('21','202003091619175938','1','1583741974','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091619175938\",\"pay_time\":\"2020-03-09 16:19:55\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"c806d3d28e381962a21bc256fbf06016\"}','1583741974');
INSERT INTO `pay_notice_log` VALUES('22','202003091620188747','1','1583742039','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091620188747\",\"pay_time\":\"2020-03-09 16:21:01\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"a4992a08c8798dc394f159db8570dcfc\"}','1583742039');
INSERT INTO `pay_notice_log` VALUES('23','202003091821152362','1','1583749296','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091821152362\",\"pay_time\":\"2020-03-09 18:21:51\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"0b2d80d13a59e3a777a932202eef0b74\"}','1583749296');
INSERT INTO `pay_notice_log` VALUES('24','202003091823534805','1','1583749444','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091823534805\",\"pay_time\":\"2020-03-09 18:24:24\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"b51fe190900faae46ef1e02f9dd3f1bd\"}','1583749444');
INSERT INTO `pay_notice_log` VALUES('25','202003091825511642','1','1583749569','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091825511642\",\"pay_time\":\"2020-03-09 18:26:34\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"6a515470ff661b1d63e022b0eb0c9829\"}','1583749569');
INSERT INTO `pay_notice_log` VALUES('26','202003091827453187','1','1583749674','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091827453187\",\"pay_time\":\"2020-03-09 18:28:23\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"05450ba39a2764abec60f63e17da5497\"}','1583749674');
INSERT INTO `pay_notice_log` VALUES('27','202003091828375138','1','1583749729','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091828375138\",\"pay_time\":\"2020-03-09 18:29:21\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"f5783baff5a4864dd18aab2f658deca8\"}','1583749729');
INSERT INTO `pay_notice_log` VALUES('28','202003091828551436','1','1583749747','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091828551436\",\"pay_time\":\"2020-03-09 18:29:38\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"a02786d5865a34c4d7a8a1008fe9471d\"}','1583749747');
INSERT INTO `pay_notice_log` VALUES('29','202003091829332999','1','1583749784','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091829332999\",\"pay_time\":\"2020-03-09 18:30:17\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"3572eed6485b8cfc4c4a8038a6573786\"}','1583749784');
INSERT INTO `pay_notice_log` VALUES('30','202003091830158824','1','1583749825','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091830158824\",\"pay_time\":\"2020-03-09 18:30:59\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"034b690973facfb279d0f2ce1ed9031c\"}','1583749825');
INSERT INTO `pay_notice_log` VALUES('31','202003091833284345','1','1583750055','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091833284345\",\"pay_time\":\"2020-03-09 18:34:58\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"a74138731162c2e0e24039016cb07733\"}','1583750055');
INSERT INTO `pay_notice_log` VALUES('32','202003091846111843','1','1583750801','{\"amount\":200000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091846111843\",\"pay_time\":\"2020-03-09 18:47:53\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"a60cd29fa49467aeef5d22a333c6982a\"}','1583750801');
INSERT INTO `pay_notice_log` VALUES('33','202003091852178942','1','1583751157','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091852178942\",\"pay_time\":\"2020-03-09 18:54:03\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"0bd9acf49ae942cda73302e2588e10b2\"}','1583751157');
INSERT INTO `pay_notice_log` VALUES('34','202003091852339297','1','1583751169','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091852339297\",\"pay_time\":\"2020-03-09 18:54:13\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"40fed9630e486f44fee0c37be7d78bda\"}','1583751169');
INSERT INTO `pay_notice_log` VALUES('35','202003091859001059','1','1583751557','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091859001059\",\"pay_time\":\"2020-03-09 19:00:58\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"140aa170a22c9eaaadf569bad9fa9c6f\"}','1583751557');
INSERT INTO `pay_notice_log` VALUES('36','202003091859305671','1','1583751586','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091859305671\",\"pay_time\":\"2020-03-09 19:01:28\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"927e8f356e0331558e1e6d51a630688c\"}','1583751586');
INSERT INTO `pay_notice_log` VALUES('37','202003091906041470','1','1583751982','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091906041470\",\"pay_time\":\"2020-03-09 19:08:19\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"e419683ee571ce0b787c548452a88442\"}','1583751982');
INSERT INTO `pay_notice_log` VALUES('38','202003091906002669','1','1583751998','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091906002669\",\"pay_time\":\"2020-03-09 19:08:36\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"f81556fe7b938354bf0ee08e47c023cd\"}','1583751998');
INSERT INTO `pay_notice_log` VALUES('39','202003091907279686','1','1583752074','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091907279686\",\"pay_time\":\"2020-03-09 19:09:55\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"7a7871ee048dccff057254b7c5d6983d\"}','1583752074');
INSERT INTO `pay_notice_log` VALUES('40','202003091905001297','1','1583752144','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091905001297\",\"pay_time\":\"2020-03-09 19:11:06\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"4080ee5022b9e4cfdcd3294aaf98dd2d\"}','1583752144');
INSERT INTO `pay_notice_log` VALUES('41','202003091908548557','1','1583752188','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091908548557\",\"pay_time\":\"2020-03-09 19:11:53\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"07d621ec9737df60b6b9b90e40577be0\"}','1583752188');
INSERT INTO `pay_notice_log` VALUES('42','202003091914385846','1','1583752488','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091914385846\",\"pay_time\":\"2020-03-09 19:17:04\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"4b8533852642f46ce50c286c4796f4d9\"}','1583752488');
INSERT INTO `pay_notice_log` VALUES('43','202003091914351759','1','1583752492','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091914351759\",\"pay_time\":\"2020-03-09 19:17:09\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"f8b49f58231b7d6b827ad1ab1d406dc7\"}','1583752492');
INSERT INTO `pay_notice_log` VALUES('44','202003091917358156','1','1583752666','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091917358156\",\"pay_time\":\"2020-03-09 19:17:47\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"ef292ee2fced08624a6f196d68a22d42\"}','1583752666');
INSERT INTO `pay_notice_log` VALUES('45','202003091919197601','1','1583752786','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091919197601\",\"pay_time\":\"2020-03-09 19:19:52\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"c0ca8c197900dc1b0f85b34a78070214\"}','1583752786');
INSERT INTO `pay_notice_log` VALUES('46','202003091920165072','1','1583752845','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091920165072\",\"pay_time\":\"2020-03-09 19:20:53\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"29e9646c57cb4481307e59f0e70c8942\"}','1583752845');
INSERT INTO `pay_notice_log` VALUES('47','202003091922245775','1','1583752978','{\"amount\":5000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091922245775\",\"pay_time\":\"2020-03-09 19:23:11\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"68fe51465a01b4ffb0f51c4de3b4dddd\"}','1583752978');
INSERT INTO `pay_notice_log` VALUES('48','202003091923369191','1','1583753031','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091923369191\",\"pay_time\":\"2020-03-09 19:24:04\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"a8de5954a204a4e3a6b6786c83a66868\"}','1583753031');
INSERT INTO `pay_notice_log` VALUES('49','202003091927179449','1','1583753255','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091927179449\",\"pay_time\":\"2020-03-09 19:27:59\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"213732f8b481608f883ef2dadfe8fd7f\"}','1583753255');
INSERT INTO `pay_notice_log` VALUES('50','202003091927116932','1','1583753268','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091927116932\",\"pay_time\":\"2020-03-09 19:28:12\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"9ec2b6fac341cc063066eda0a1a5d063\"}','1583753268');
INSERT INTO `pay_notice_log` VALUES('51','202003091928085431','1','1583753295','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091928085431\",\"pay_time\":\"2020-03-09 19:28:40\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"912a79579a261871ebb43cc548257ce4\"}','1583753295');
INSERT INTO `pay_notice_log` VALUES('52','202003091930426568','1','1583753479','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091930426568\",\"pay_time\":\"2020-03-09 19:31:51\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"4cc1f7785918bd6ee437050fae575246\"}','1583753479');
INSERT INTO `pay_notice_log` VALUES('53','202003091931243278','1','1583753510','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091931243278\",\"pay_time\":\"2020-03-09 19:32:24\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"5f26f814b3d22e7c5d11af6427ab5ac1\"}','1583753511');
INSERT INTO `pay_notice_log` VALUES('54','202003091931407805','1','1583753515','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091931407805\",\"pay_time\":\"2020-03-09 19:32:27\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"fa354ebc1c73caf10bf7e581e2034475\"}','1583753515');
INSERT INTO `pay_notice_log` VALUES('55','202003091931578915','1','1583753547','{\"amount\":10000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091931578915\",\"pay_time\":\"2020-03-09 19:33:01\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"45dfced33a2f1270b2c870d0b26122af\"}','1583753547');
INSERT INTO `pay_notice_log` VALUES('56','202003091933574550','1','1583753652','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091933574550\",\"pay_time\":\"2020-03-09 19:34:50\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"e6a941d0720f8e97d7a1291cf3e01fa1\"}','1583753652');
INSERT INTO `pay_notice_log` VALUES('57','202003091935091455','1','1583753718','{\"amount\":1000,\"body\":\"\\u5546\\u54c122\",\"is_success\":\"success\",\"out_trade_no\":\"202003091935091455\",\"pay_time\":\"2020-03-09 19:35:59\",\"subject\":\"\\u5546\\u54c11\",\"sign\":\"2c4c69324a34f1ba0c4a1b8969953197\"}','1583753719');
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
) ENGINE=MyISAM AUTO_INCREMENT=11252 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='充值表';

--
-- 转存表中的数据 recharge

INSERT INTO `recharge` VALUES('11008','56318','10.00','系统充值','PAY1583734171125','1','0','无','2020-03-09 14:09:31','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11009','56321','10.00','系统充值','PAY1583734556690','1','0','无','2020-03-09 14:15:56','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11010','0','1.00','微信扫码','PAY1583753331564','0','0','无','2020-03-09 19:28:51','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11011','0','1.00','支付宝扫码','PAY1583753332890','0','0','无','2020-03-09 19:28:52','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11012','0','0.00','支付宝扫码','PAY1583753400840','0','0','无','2020-03-09 19:30:00','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11013','0','0.00','支付宝扫码','PAY1583753400978','0','0','无','2020-03-09 19:30:00','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11014','0','1.00','支付宝扫码','PAY1583753400738','0','0','无','2020-03-09 19:30:00','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11015','0','0.00','支付宝扫码','PAY1583753400160','0','0','无','2020-03-09 19:30:00','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11016','0','1.00','支付宝扫码','PAY1583753401838','0','0','无','2020-03-09 19:30:01','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11017','0','1.00','支付宝扫码','PAY1583753401352','0','0','无','2020-03-09 19:30:01','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11018','0','0.00','微信扫码','PAY1583753401985','0','0','无','2020-03-09 19:30:01','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11019','0','1.00','支付宝扫码','PAY1583753401105','0','0','无','2020-03-09 19:30:01','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11020','0','5.00','支付宝扫码','PAY1583753401591','0','0','无','2020-03-09 19:30:01','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11021','0','0.00','微信扫码','PAY1583753401488','0','0','无','2020-03-09 19:30:01','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11022','0','1.00','微信扫码','PAY1583753401421','0','0','无','2020-03-09 19:30:01','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11023','0','0.00','微信扫码','PAY1583753401656','0','0','无','2020-03-09 19:30:01','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11024','0','1.00','微信扫码','PAY1583753402390','0','0','无','2020-03-09 19:30:02','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11025','0','1.00','未知支付','PAY1583753402428','0','0','无','2020-03-09 19:30:02','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11026','0','1.00','未知支付','PAY1583753402981','0','0','无','2020-03-09 19:30:02','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11027','0','1.00','未知支付','PAY1583753402763','0','0','无','2020-03-09 19:30:02','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11028','0','1.00','未知支付','PAY1583753402280','0','0','无','2020-03-09 19:30:02','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11029','0','1.00','未知支付','PAY1583753402203','0','0','无','2020-03-09 19:30:02','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11030','0','0.00','支付宝扫码','PAY1583753403686','0','0','无','2020-03-09 19:30:03','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11031','0','0.00','支付宝扫码','PAY1583753403253','0','0','无','2020-03-09 19:30:03','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11032','0','0.00','支付宝扫码','PAY1583753403352','0','0','无','2020-03-09 19:30:03','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11033','0','0.00','支付宝扫码','PAY1583753403992','0','0','无','2020-03-09 19:30:03','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11034','0','0.00','支付宝扫码','PAY1583753403302','0','0','无','2020-03-09 19:30:03','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11035','0','0.00','支付宝扫码','PAY1583753403285','0','0','无','2020-03-09 19:30:03','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11036','0','0.00','支付宝扫码','PAY1583753404786','0','0','无','2020-03-09 19:30:04','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11037','0','1.00','支付宝扫码','PAY1583753404854','0','0','无','2020-03-09 19:30:04','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11038','0','0.00','支付宝扫码','PAY1583753404570','0','0','无','2020-03-09 19:30:04','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11039','0','0.00','支付宝扫码','PAY1583753404914','0','0','无','2020-03-09 19:30:04','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11040','0','0.00','微信扫码','PAY1583753404160','0','0','无','2020-03-09 19:30:04','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11041','0','0.00','支付宝扫码','PAY1583753404623','0','0','无','2020-03-09 19:30:04','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11042','0','1.00','微信扫码','PAY1583753404730','0','0','无','2020-03-09 19:30:04','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11043','0','0.00','支付宝扫码','PAY1583753404889','0','0','无','2020-03-09 19:30:04','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11044','0','0.00','支付宝扫码','PAY1583753404108','0','0','无','2020-03-09 19:30:04','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11045','0','0.00','微信扫码','PAY1583753404107','0','0','无','2020-03-09 19:30:04','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11046','0','0.00','支付宝扫码','PAY1583753404503','0','0','无','2020-03-09 19:30:04','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11047','0','0.00','支付宝扫码','PAY1583753404597','0','0','无','2020-03-09 19:30:04','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11048','0','1.00','未知支付','PAY1583753405614','0','0','无','2020-03-09 19:30:05','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11049','0','0.00','支付宝扫码','PAY1583753405368','0','0','无','2020-03-09 19:30:05','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11050','0','0.00','支付宝扫码','PAY1583753405567','0','0','无','2020-03-09 19:30:05','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11051','0','0.00','微信扫码','PAY1583753405918','0','0','无','2020-03-09 19:30:05','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11052','0','0.00','支付宝扫码','PAY1583753405471','0','0','无','2020-03-09 19:30:05','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11053','0','0.00','支付宝扫码','PAY1583753405516','0','0','无','2020-03-09 19:30:05','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11054','0','0.00','微信扫码','PAY1583753405880','0','0','无','2020-03-09 19:30:05','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11055','0','0.00','支付宝扫码','PAY1583753405107','0','0','无','2020-03-09 19:30:05','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11056','0','1.00','未知支付','PAY1583753405504','0','0','无','2020-03-09 19:30:05','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11057','0','1.00','支付宝扫码','PAY1583753405854','0','0','无','2020-03-09 19:30:05','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11058','0','0.00','微信扫码','PAY1583753405980','0','0','无','2020-03-09 19:30:05','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11059','0','0.00','微信扫码','PAY1583753405634','0','0','无','2020-03-09 19:30:05','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11060','0','1.00','未知支付','PAY1583753405396','0','0','无','2020-03-09 19:30:05','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11061','0','0.00','支付宝扫码','PAY1583753406396','0','0','无','2020-03-09 19:30:06','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11062','0','0.00','微信扫码','PAY1583753406475','0','0','无','2020-03-09 19:30:06','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11063','0','1.00','未知支付','PAY1583753406160','0','0','无','2020-03-09 19:30:06','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11064','0','0.00','微信扫码','PAY1583753406735','0','0','无','2020-03-09 19:30:06','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11065','0','1.00','未知支付','PAY1583753406358','0','0','无','2020-03-09 19:30:06','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11066','0','0.00','支付宝扫码','PAY1583753406158','0','0','无','2020-03-09 19:30:06','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11067','0','0.00','微信扫码','PAY1583753406718','0','0','无','2020-03-09 19:30:06','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11068','0','1.00','支付宝扫码','PAY1583753406332','0','0','无','2020-03-09 19:30:06','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11069','0','0.00','微信扫码','PAY1583753406680','0','0','无','2020-03-09 19:30:06','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11070','0','0.00','支付宝扫码','PAY1583753406674','0','0','无','2020-03-09 19:30:06','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11071','0','1.00','支付宝扫码','PAY1583753406103','0','0','无','2020-03-09 19:30:06','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11072','0','0.00','支付宝扫码','PAY1583753406259','0','0','无','2020-03-09 19:30:06','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11073','0','1.00','微信扫码','PAY1583753406104','0','0','无','2020-03-09 19:30:06','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11074','0','0.00','支付宝扫码','PAY1583753406483','0','0','无','2020-03-09 19:30:06','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11075','0','0.00','微信扫码','PAY1583753407710','0','0','无','2020-03-09 19:30:07','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11076','0','1.00','支付宝扫码','PAY1583753407628','0','0','无','2020-03-09 19:30:07','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11077','0','0.00','支付宝扫码','PAY1583753407586','0','0','无','2020-03-09 19:30:07','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11078','0','1.00','未知支付','PAY1583753407814','0','0','无','2020-03-09 19:30:07','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11079','0','6.00','支付宝扫码','PAY1583753407133','0','0','无','2020-03-09 19:30:07','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11080','0','0.00','微信扫码','PAY1583753407753','0','0','无','2020-03-09 19:30:07','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11081','0','0.00','支付宝扫码','PAY1583753407451','0','0','无','2020-03-09 19:30:07','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11082','0','0.00','支付宝扫码','PAY1583753407315','0','0','无','2020-03-09 19:30:07','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11083','0','1.00','未知支付','PAY1583753407549','0','0','无','2020-03-09 19:30:07','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11084','0','519.00','支付宝扫码','PAY1583753407665','0','0','无','2020-03-09 19:30:07','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11085','0','1.00','未知支付','PAY1583753407343','0','0','无','2020-03-09 19:30:07','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11086','0','0.00','支付宝扫码','PAY1583753407717','0','0','无','2020-03-09 19:30:07','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11087','0','1.00','未知支付','PAY1583753407409','0','0','无','2020-03-09 19:30:07','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11088','0','0.00','支付宝扫码','PAY1583753408271','0','0','无','2020-03-09 19:30:08','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11089','0','1.00','未知支付','PAY1583753408147','0','0','无','2020-03-09 19:30:08','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11090','0','1.00','未知支付','PAY1583753408612','0','0','无','2020-03-09 19:30:08','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11091','0','0.00','支付宝扫码','PAY1583753408490','0','0','无','2020-03-09 19:30:08','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11092','0','0.00','支付宝扫码','PAY1583753408801','0','0','无','2020-03-09 19:30:08','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11093','0','0.00','支付宝扫码','PAY1583753408310','0','0','无','2020-03-09 19:30:08','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11094','0','1.00','未知支付','PAY1583753408297','0','0','无','2020-03-09 19:30:08','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11095','0','0.00','微信扫码','PAY1583753408608','0','0','无','2020-03-09 19:30:08','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11096','0','1.00','支付宝扫码','PAY1583753408476','0','0','无','2020-03-09 19:30:08','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11097','0','0.00','微信扫码','PAY1583753408442','0','0','无','2020-03-09 19:30:08','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11098','0','0.00','支付宝扫码','PAY1583753408510','0','0','无','2020-03-09 19:30:08','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11099','0','1.00','未知支付','PAY1583753409175','0','0','无','2020-03-09 19:30:09','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11100','0','1.00','微信扫码','PAY1583753409737','0','0','无','2020-03-09 19:30:09','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11101','0','0.00','支付宝扫码','PAY1583753409413','0','0','无','2020-03-09 19:30:09','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11102','0','0.00','微信扫码','PAY1583753409742','0','0','无','2020-03-09 19:30:09','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11103','0','0.00','支付宝扫码','PAY1583753409232','0','0','无','2020-03-09 19:30:09','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11104','0','0.00','支付宝扫码','PAY1583753409632','0','0','无','2020-03-09 19:30:09','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11105','0','1.00','未知支付','PAY1583753409827','0','0','无','2020-03-09 19:30:09','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11106','0','0.00','微信扫码','PAY1583753409602','0','0','无','2020-03-09 19:30:09','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11107','0','1.00','微信扫码','PAY1583753409799','0','0','无','2020-03-09 19:30:09','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11108','0','0.00','微信扫码','PAY1583753409317','0','0','无','2020-03-09 19:30:09','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11109','0','0.00','微信扫码','PAY1583753409663','0','0','无','2020-03-09 19:30:09','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11110','0','0.00','支付宝扫码','PAY1583753409332','0','0','无','2020-03-09 19:30:09','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11111','0','1.00','未知支付','PAY1583753409269','0','0','无','2020-03-09 19:30:09','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11112','0','0.00','微信扫码','PAY1583753409450','0','0','无','2020-03-09 19:30:09','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11113','0','0.00','微信扫码','PAY1583753410660','0','0','无','2020-03-09 19:30:10','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11114','0','0.00','微信扫码','PAY1583753410714','0','0','无','2020-03-09 19:30:10','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11115','0','0.00','微信扫码','PAY1583753410513','0','0','无','2020-03-09 19:30:10','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11116','0','0.00','支付宝扫码','PAY1583753410322','0','0','无','2020-03-09 19:30:10','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11117','0','0.00','支付宝扫码','PAY1583753410110','0','0','无','2020-03-09 19:30:10','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11118','0','0.00','微信扫码','PAY1583753410917','0','0','无','2020-03-09 19:30:10','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11119','0','1.00','未知支付','PAY1583753410108','0','0','无','2020-03-09 19:30:10','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11120','0','0.00','微信扫码','PAY1583753410771','0','0','无','2020-03-09 19:30:10','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11121','0','0.00','微信扫码','PAY1583753410137','0','0','无','2020-03-09 19:30:10','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11122','0','1.00','微信扫码','PAY1583753410295','0','0','无','2020-03-09 19:30:10','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11123','0','0.00','支付宝扫码','PAY1583753410510','0','0','无','2020-03-09 19:30:10','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11124','0','1.00','未知支付','PAY1583753410222','0','0','无','2020-03-09 19:30:10','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11125','0','1.00','未知支付','PAY1583753410276','0','0','无','2020-03-09 19:30:10','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11126','0','0.00','微信扫码','PAY1583753410864','0','0','无','2020-03-09 19:30:10','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11127','0','1.00','未知支付','PAY1583753411261','0','0','无','2020-03-09 19:30:11','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11128','0','1.00','微信扫码','PAY1583753411621','0','0','无','2020-03-09 19:30:11','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11129','0','0.00','支付宝扫码','PAY1583753411707','0','0','无','2020-03-09 19:30:11','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11130','0','1.00','未知支付','PAY1583753411938','0','0','无','2020-03-09 19:30:11','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11131','0','0.00','支付宝扫码','PAY1583753411298','0','0','无','2020-03-09 19:30:11','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11132','0','0.00','微信扫码','PAY1583753411534','0','0','无','2020-03-09 19:30:11','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11133','0','1.00','未知支付','PAY1583753411485','0','0','无','2020-03-09 19:30:11','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11134','0','0.00','微信扫码','PAY1583753411247','0','0','无','2020-03-09 19:30:11','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11135','0','0.00','支付宝扫码','PAY1583753411799','0','0','无','2020-03-09 19:30:11','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11136','0','1.00','未知支付','PAY1583753411725','0','0','无','2020-03-09 19:30:11','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11137','0','0.00','微信扫码','PAY1583753411317','0','0','无','2020-03-09 19:30:11','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11138','0','0.00','微信扫码','PAY1583753411503','0','0','无','2020-03-09 19:30:11','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11139','0','1.00','未知支付','PAY1583753411534','0','0','无','2020-03-09 19:30:11','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11140','0','0.00','支付宝扫码','PAY1583753411334','0','0','无','2020-03-09 19:30:11','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11141','0','1.00','未知支付','PAY1583753412118','0','0','无','2020-03-09 19:30:12','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11142','0','1.00','未知支付','PAY1583753412405','0','0','无','2020-03-09 19:30:12','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11143','0','0.00','微信扫码','PAY1583753412568','0','0','无','2020-03-09 19:30:12','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11144','0','0.00','支付宝扫码','PAY1583753412123','0','0','无','2020-03-09 19:30:12','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11145','0','0.00','微信扫码','PAY1583753412647','0','0','无','2020-03-09 19:30:12','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11146','0','0.00','支付宝扫码','PAY1583753412493','0','0','无','2020-03-09 19:30:12','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11147','0','1.00','未知支付','PAY1583753412923','0','0','无','2020-03-09 19:30:12','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11148','0','0.00','微信扫码','PAY1583753412131','0','0','无','2020-03-09 19:30:12','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11149','0','0.00','支付宝扫码','PAY1583753412682','0','0','无','2020-03-09 19:30:12','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11150','0','0.00','微信扫码','PAY1583753412725','0','0','无','2020-03-09 19:30:12','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11151','0','1.00','支付宝扫码','PAY1583753412526','0','0','无','2020-03-09 19:30:12','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11152','0','0.00','微信扫码','PAY1583753413858','0','0','无','2020-03-09 19:30:13','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11153','0','0.00','支付宝扫码','PAY1583753413915','0','0','无','2020-03-09 19:30:13','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11154','0','0.00','微信扫码','PAY1583753413263','0','0','无','2020-03-09 19:30:13','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11155','0','0.00','微信扫码','PAY1583753413956','0','0','无','2020-03-09 19:30:13','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11156','0','0.00','支付宝扫码','PAY1583753413775','0','0','无','2020-03-09 19:30:13','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11157','0','0.00','微信扫码','PAY1583753413321','0','0','无','2020-03-09 19:30:13','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11158','0','0.00','微信扫码','PAY1583753413806','0','0','无','2020-03-09 19:30:13','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11159','0','0.00','微信扫码','PAY1583753413823','0','0','无','2020-03-09 19:30:13','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11160','0','0.00','支付宝扫码','PAY1583753413992','0','0','无','2020-03-09 19:30:13','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11161','0','1.00','未知支付','PAY1583753413217','0','0','无','2020-03-09 19:30:13','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11162','0','0.00','微信扫码','PAY1583753413537','0','0','无','2020-03-09 19:30:13','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11163','0','0.00','微信扫码','PAY1583753414811','0','0','无','2020-03-09 19:30:14','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11164','0','0.00','支付宝扫码','PAY1583753414423','0','0','无','2020-03-09 19:30:14','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11165','0','1.00','未知支付','PAY1583753414527','0','0','无','2020-03-09 19:30:14','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11166','0','0.00','微信扫码','PAY1583753414552','0','0','无','2020-03-09 19:30:14','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11167','0','1.00','未知支付','PAY1583753414477','0','0','无','2020-03-09 19:30:14','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11168','0','0.00','支付宝扫码','PAY1583753414527','0','0','无','2020-03-09 19:30:14','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11169','0','1.00','未知支付','PAY1583753414998','0','0','无','2020-03-09 19:30:14','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11170','0','1.00','未知支付','PAY1583753414396','0','0','无','2020-03-09 19:30:14','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11171','0','1.00','未知支付','PAY1583753414167','0','0','无','2020-03-09 19:30:14','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11172','0','0.00','支付宝扫码','PAY1583753414397','0','0','无','2020-03-09 19:30:14','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11173','0','1.00','未知支付','PAY1583753415709','0','0','无','2020-03-09 19:30:15','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11174','0','1.00','未知支付','PAY1583753415912','0','0','无','2020-03-09 19:30:15','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11175','0','0.00','微信扫码','PAY1583753415624','0','0','无','2020-03-09 19:30:15','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11176','0','1.00','未知支付','PAY1583753415819','0','0','无','2020-03-09 19:30:15','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11177','0','0.00','支付宝扫码','PAY1583753415416','0','0','无','2020-03-09 19:30:15','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11178','0','1.00','未知支付','PAY1583753415232','0','0','无','2020-03-09 19:30:15','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11179','0','1.00','未知支付','PAY1583753415527','0','0','无','2020-03-09 19:30:15','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11180','0','0.00','微信扫码','PAY1583753415936','0','0','无','2020-03-09 19:30:15','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11181','0','1.00','未知支付','PAY1583753415627','0','0','无','2020-03-09 19:30:15','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11182','0','0.00','支付宝扫码','PAY1583753415718','0','0','无','2020-03-09 19:30:15','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11183','0','0.00','支付宝扫码','PAY1583753416590','0','0','无','2020-03-09 19:30:16','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11184','0','1.00','未知支付','PAY1583753416475','0','0','无','2020-03-09 19:30:16','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11185','0','1.00','未知支付','PAY1583753416921','0','0','无','2020-03-09 19:30:16','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11186','0','1.00','微信扫码','PAY1583753416530','0','0','无','2020-03-09 19:30:16','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11187','0','0.00','支付宝扫码','PAY1583753416374','0','0','无','2020-03-09 19:30:16','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11188','0','0.00','微信扫码','PAY1583753416443','0','0','无','2020-03-09 19:30:16','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11189','0','0.00','支付宝扫码','PAY1583753416974','0','0','无','2020-03-09 19:30:16','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11190','0','1.00','未知支付','PAY1583753416714','0','0','无','2020-03-09 19:30:16','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11191','0','0.00','微信扫码','PAY1583753416209','0','0','无','2020-03-09 19:30:16','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11192','0','0.00','微信扫码','PAY1583753416350','0','0','无','2020-03-09 19:30:16','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11193','0','1.00','未知支付','PAY1583753417889','0','0','无','2020-03-09 19:30:17','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11194','0','0.00','支付宝扫码','PAY1583753417326','0','0','无','2020-03-09 19:30:17','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11195','0','1.00','未知支付','PAY1583753417359','0','0','无','2020-03-09 19:30:17','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11196','0','0.00','微信扫码','PAY1583753417472','0','0','无','2020-03-09 19:30:17','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11197','0','1.00','微信扫码','PAY1583753417316','0','0','无','2020-03-09 19:30:17','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11198','0','1.00','未知支付','PAY1583753417552','0','0','无','2020-03-09 19:30:17','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11199','0','1.00','支付宝扫码','PAY1583753417711','0','0','无','2020-03-09 19:30:17','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11200','0','0.00','微信扫码','PAY1583753417988','0','0','无','2020-03-09 19:30:17','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11201','0','1.00','未知支付','PAY1583753417180','0','0','无','2020-03-09 19:30:17','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11202','0','9.00','微信扫码','PAY1583753417242','0','0','无','2020-03-09 19:30:17','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11203','0','0.00','微信扫码','PAY1583753417413','0','0','无','2020-03-09 19:30:17','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11204','0','0.00','微信扫码','PAY1583753417833','0','0','无','2020-03-09 19:30:17','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11205','0','1.00','未知支付','PAY1583753418504','0','0','无','2020-03-09 19:30:18','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11206','0','0.00','微信扫码','PAY1583753418920','0','0','无','2020-03-09 19:30:18','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11207','0','0.00','微信扫码','PAY1583753418159','0','0','无','2020-03-09 19:30:18','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11208','0','1.00','未知支付','PAY1583753418895','0','0','无','2020-03-09 19:30:18','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11209','0','1.00','未知支付','PAY1583753418499','0','0','无','2020-03-09 19:30:18','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11210','0','0.00','微信扫码','PAY1583753418626','0','0','无','2020-03-09 19:30:18','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11211','0','0.00','微信扫码','PAY1583753418966','0','0','无','2020-03-09 19:30:18','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11212','0','0.00','支付宝扫码','PAY1583753418258','0','0','无','2020-03-09 19:30:18','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11213','0','1.00','未知支付','PAY1583753418762','0','0','无','2020-03-09 19:30:18','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11214','0','1.00','未知支付','PAY1583753419675','0','0','无','2020-03-09 19:30:19','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11215','0','0.00','微信扫码','PAY1583753419105','0','0','无','2020-03-09 19:30:19','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11216','0','0.00','微信扫码','PAY1583753419652','0','0','无','2020-03-09 19:30:19','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11217','0','1.00','未知支付','PAY1583753419316','0','0','无','2020-03-09 19:30:19','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11218','0','1.00','未知支付','PAY1583753420994','0','0','无','2020-03-09 19:30:20','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11219','0','1.00','支付宝扫码','PAY1583753420973','0','0','无','2020-03-09 19:30:20','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11220','0','1.00','未知支付','PAY1583753420877','0','0','无','2020-03-09 19:30:20','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11221','0','0.00','微信扫码','PAY1583753420780','0','0','无','2020-03-09 19:30:20','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11222','0','0.00','微信扫码','PAY1583753421306','0','0','无','2020-03-09 19:30:21','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11223','0','1.00','未知支付','PAY1583753421125','0','0','无','2020-03-09 19:30:21','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11224','0','0.00','微信扫码','PAY1583753421565','0','0','无','2020-03-09 19:30:21','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11225','0','1.00','未知支付','PAY1583753421971','0','0','无','2020-03-09 19:30:21','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11226','0','1.00','微信扫码','PAY1583753421662','0','0','无','2020-03-09 19:30:21','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11227','0','1.00','微信扫码','PAY1583753422542','0','0','无','2020-03-09 19:30:22','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11228','0','1.00','未知支付','PAY1583753422840','0','0','无','2020-03-09 19:30:22','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11229','0','1.00','微信扫码','PAY1583753422630','0','0','无','2020-03-09 19:30:22','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11230','0','1.00','未知支付','PAY1583753422788','0','0','无','2020-03-09 19:30:22','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11231','0','1.00','未知支付','PAY1583753423477','0','0','无','2020-03-09 19:30:23','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11232','0','1.00','未知支付','PAY1583753423291','0','0','无','2020-03-09 19:30:23','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11233','0','0.00','微信扫码','PAY1583753423855','0','0','无','2020-03-09 19:30:23','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11234','0','1.00','未知支付','PAY1583753423772','0','0','无','2020-03-09 19:30:23','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11235','0','1.00','未知支付','PAY1583753423141','0','0','无','2020-03-09 19:30:23','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11236','0','1.00','未知支付','PAY1583753424908','0','0','无','2020-03-09 19:30:24','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11237','0','1.00','未知支付','PAY1583753424114','0','0','无','2020-03-09 19:30:24','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11238','0','1.00','微信扫码','PAY1583753424831','0','0','无','2020-03-09 19:30:24','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11239','0','1.00','未知支付','PAY1583753425864','0','0','无','2020-03-09 19:30:25','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11240','0','1.00','未知支付','PAY1583753425958','0','0','无','2020-03-09 19:30:25','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11241','0','1.00','未知支付','PAY1583753426257','0','0','无','2020-03-09 19:30:26','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11242','0','1.00','未知支付','PAY1583753426449','0','0','无','2020-03-09 19:30:26','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11243','0','1.00','未知支付','PAY1583753426803','0','0','无','2020-03-09 19:30:26','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11244','0','1.00','未知支付','PAY1583753427692','0','0','无','2020-03-09 19:30:27','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11245','0','1.00','未知支付','PAY1583753427695','0','0','无','2020-03-09 19:30:27','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11246','0','1.00','未知支付','PAY1583753427297','0','0','无','2020-03-09 19:30:27','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11247','0','1.00','未知支付','PAY1583753428968','0','0','无','2020-03-09 19:30:28','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11248','0','1.00','未知支付','PAY1583753428937','0','0','无','2020-03-09 19:30:28','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11249','0','1.00','未知支付','PAY1583753428535','0','0','无','2020-03-09 19:30:28','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11250','0','1.00','未知支付','PAY1583753429997','0','0','无','2020-03-09 19:30:29','0000-00-00 00:00:00');
INSERT INTO `recharge` VALUES('11251','0','1.00','未知支付','PAY1583753429180','0','0','无','2020-03-09 19:30:29','0000-00-00 00:00:00');
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
  `padian` int(100) DEFAULT '0' COMMENT '帕点奖',
  `alipay` varchar(255) DEFAULT NULL COMMENT '支付宝',
  `level` varchar(255) DEFAULT '0' COMMENT '级别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=56425 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员表';

--
-- 转存表中的数据 user

INSERT INTO `user` VALUES('55494','15088833350','无','无','0','c274d398e8afdbf87d4e15e22578450c','c274d398e8afdbf87d4e15e22578450c','53703','0','29.65','0','0.00','1583753432','0','0','2020-03-02 14:51:57','127.0.0.1','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55538','15103845082','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55494','0','29.10','10','0.00','1583736482','0','0','2020-03-09 00:49:35','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55539','15103845083','吴燕荣','无','0','1c88d37be4e1d375f341d906f58288f4','1c88d37be4e1d375f341d906f58288f4','55538','0','3.90','10','0.00','1583753791','0','0','2020-03-09 00:50:19','223.89.128.229','0','','0.00','0','13409926750','2');
INSERT INTO `user` VALUES('55540','15103845084','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55539','0','33.90','10','0.00','1583753542','0','0','2020-03-09 00:50:50','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55542','13636066080','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55540','0','6.00','0','0.00','1583753816','0','0','2020-03-09 00:52:25','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55543','15256336862','崔恩强','无','0','6d3b83abcbebef8a9fbcf4e4ff384496','e10adc3949ba59abbe56e057f20f883e','55540','8029','0.10','10','0.00','1583752946','0','0','2020-03-09 00:53:03','223.89.128.229','0','','0.00','15','15256336862','2');
INSERT INTO `user` VALUES('55906','13307489313','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:27:54','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55545','15851494368','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55540','8029','3.10','10','0.00','1583750648','0','0','2020-03-09 00:54:43','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55546','17770780525','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55540','0','3.20','10','0.00','1583750358','0','0','2020-03-09 00:55:31','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55547','15206300381','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55540','0','0.00','0','0.00','1583751223','0','0','2020-03-09 00:56:10','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55548','13353981117','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55547','0','0.00','0','0.00','1583753797','0','0','2020-03-09 00:58:33','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55549','15662266144','林军明','无','0','aaa05d1e1e1feb5542efb53b46fe7657','84e3b36e3e77d40268758038bff097e6','55547','0','0.00','0','0.00','1583751668','0','0','2020-03-09 00:59:12','223.89.128.229','0','','0.00','15','718456036@qq.com','2');
INSERT INTO `user` VALUES('55905','13828661713','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:27:40','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55904','15348886579','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55899','8029','25.80','10','0.00','1583753747','0','0','2020-03-09 09:27:25','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55901','18013051909','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:26:33','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55902','18132611182','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:27:06','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55903','15173878999','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:27:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55900','18051879689','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:26:17','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55556','15528935571','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55543','8029','0.00','10','0.00','1583753552','0','0','2020-03-09 01:06:08','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55899','18889790842','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55896','8029','8.10','10','0.00','1583750383','0','0','2020-03-09 09:26:08','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55558','18358992542','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55543','0','0.00','0','0.00','0','0','0','2020-03-09 01:06:44','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55559','13100621679','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55543','0','0.00','0','0.00','0','0','0','2020-03-09 01:07:17','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55563','18009569219','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55543','0','0.00','0','0.00','1583751656','0','0','2020-03-09 01:08:43','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55561','13904429417','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55543','0','0.00','0','0.00','1583749810','0','0','2020-03-09 01:07:52','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55562','18093627883','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55543','0','0.00','0','0.00','0','0','0','2020-03-09 01:08:16','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55564','17553841898','无','无','0','e3dc4da5835d7fa0f844ac3d7b19686b','e10adc3949ba59abbe56e057f20f883e','55543','0','0.00','0','0.00','1583753141','0','0','2020-03-09 01:09:15','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55898','18973231677','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:25:59','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55566','18529562160','123456','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55543','0','0.00','0','0.00','1583752641','0','0','2020-03-09 01:09:38','119.165.104.92','0','','0.00','15','15256336863','2');
INSERT INTO `user` VALUES('55567','15526326905','邬立春','无','0','523dfa660c26cbb36a6214edbbbf2ae5','e10adc3949ba59abbe56e057f20f883e','55543','8029','3.20','10','0.00','1583752157','0','0','2020-03-09 01:10:02','119.165.104.92','0','','0.00','15','15526326905','2');
INSERT INTO `user` VALUES('55897','19163722601','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:25:39','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55569','17060741085','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55543','0','0.00','0','0.00','0','0','0','2020-03-09 01:10:23','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55896','13350473250','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55893','8029','4.60','10','0.00','1583750309','0','0','2020-03-09 09:25:26','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55895','15890259825','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:25:04','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55572','18093625749','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55562','0','0.00','0','0.00','0','0','0','2020-03-09 01:13:03','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55894','15970526705','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:24:45','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55574','18909366247','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55572','0','0.00','0','0.00','0','0','0','2020-03-09 01:14:12','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55893','13876066097','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55891','8029','3.80','10','0.00','1583753620','0','0','2020-03-09 09:23:56','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55576','18093626233','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 01:14:50','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55892','18973819162','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:23:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55578','15166590923','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:15:37','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55891','13322050579','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55540','8029','9.90','10','0.00','1583751387','0','0','2020-03-09 09:23:13','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55890','15111231033','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:22:58','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55581','17634207831','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:16:33','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55582','13419099621','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:16:56','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55585','15084338365','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:17:55','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55584','13100351495','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:17:24','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55586','13856805700','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:18:16','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55587','15653358829','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:19:38','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55588','18037966179','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:19:58','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55589','18506072597','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55542','0','1.90','0','0.00','1583751097','0','0','2020-03-09 01:20:12','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55590','15738251683','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:20:33','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55591','13409926750','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55589','0','2.10','0','0.00','1583751129','0','0','2020-03-09 01:20:57','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55592','18280882983','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:21:13','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55593','15838894000','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:21:46','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55594','18243930508','于波','无','0','0552c796951d66bc429b9569aae9122e','35fd19fbe470f0cb5581884fa700610f','55591','8029','2.80','10','0.00','1583752111','0','0','2020-03-09 01:21:47','223.89.128.229','0','','0.00','15','18243930508','2');
INSERT INTO `user` VALUES('55595','15994774877','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:22:08','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55596','17638577796','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:22:29','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55597','13006660510','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:22:49','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55598','18310237109','敦攀攀','无','0','80d273a13a688fa1c9d04283c266bc22','038cceab2d383cc578461633bd5e2963','55594','0','0.00','0','0.00','1583753824','0','0','2020-03-09 01:23:02','223.89.128.229','0','','0.00','15','18310237109','2');
INSERT INTO `user` VALUES('55599','13456831520','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:23:23','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55600','18347021837','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:23:47','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55601','15898337424','朱吉梅','无','0','c3b71743088e1fd7c4ef8dc2a1cd4c68','e10adc3949ba59abbe56e057f20f883e','55598','0','1.00','0','0.00','1583753805','0','0','2020-03-09 01:24:04','223.89.128.229','0','','0.00','15','15898337424','2');
INSERT INTO `user` VALUES('55602','17754465396','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55601','0','4.00','0','0.00','1583753002','0','0','2020-03-09 01:24:45','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55603','18769986360','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:24:52','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55604','17339060197','宋秀梅','无','0','80d273a13a688fa1c9d04283c266bc22','038cceab2d383cc578461633bd5e2963','55602','0','0.80','0','0.00','1583753771','0','0','2020-03-09 01:25:24','223.89.128.229','0','','0.00','15','18738213471','2');
INSERT INTO `user` VALUES('55605','15538883869','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:26:09','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55606','13943919187','无','无','0','0552c796951d66bc429b9569aae9122e','35fd19fbe470f0cb5581884fa700610f','55602','8029','6.80','10','0.00','1583752057','0','0','2020-03-09 01:26:14','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55607','18336466704','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:26:33','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55608','13194739638','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:27:44','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55609','15643974469','于波','无','0','0552c796951d66bc429b9569aae9122e','35fd19fbe470f0cb5581884fa700610f','55606','8029','0.00','10','0.00','1583753717','0','0','2020-03-09 01:27:51','223.89.128.229','0','','0.00','15','18243930508','2');
INSERT INTO `user` VALUES('55610','15999587881','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:28:20','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55611','18786983688','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:28:48','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55612','18595846626','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:29:35','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55613','18738213471','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55604','0','0.00','0','0.00','1583752273','0','0','2020-03-09 01:31:03','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55614','13343639827','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:31:45','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55615','15511134457','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55604','0','0.00','0','0.00','0','0','0','2020-03-09 01:31:48','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55616','13654405060','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:32:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55617','15623955507','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55604','8029','0.00','10','0.00','1583753781','0','0','2020-03-09 01:32:33','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55618','15083191755','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:32:47','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55619','13209563256','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:33:11','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55620','15197498176','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:33:40','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55621','15520878338','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55602','0','0.00','0','0.00','0','0','0','2020-03-09 01:33:48','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55622','15116835685','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:34:12','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55623','15277016460','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55602','0','0.00','0','0.00','0','0','0','2020-03-09 01:34:43','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55624','19881553078','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:42:07','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55625','17131948031','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:42:29','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55626','18846103177','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:42:47','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55627','13666383823','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:43:07','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55628','19965412404','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:43:29','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55629','15779026132','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55546','0','3.20','10','0.00','1583750388','0','0','2020-03-09 01:43:31','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55630','13021783663','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:43:51','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55631','15034197421','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:44:12','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55632','15879434358','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55629','0','3.20','10','0.00','1583750413','0','0','2020-03-09 01:44:13','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55633','18770210088','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:44:28','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55634','13706647229','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:44:46','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55635','13255871339','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:45:01','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55636','18473987011','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:45:19','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55637','18350228139','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55632','0','3.80','10','0.00','1583750442','0','0','2020-03-09 01:45:24','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55638','13307589463','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55576','0','0.00','0','0.00','0','0','0','2020-03-09 01:45:37','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55639','13646989373','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55638','0','0.00','0','0.00','0','0','0','2020-03-09 01:46:15','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55640','17770789095','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55637','0','8.60','10','0.00','1583752990','0','0','2020-03-09 01:46:17','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55641','13328837785','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55638','0','0.00','0','0.00','0','0','0','2020-03-09 01:46:48','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55642','17770788905','曾天长','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55640','0','28.60','10','0.00','1583753362','0','0','2020-03-09 01:47:04','223.89.128.229','0','','0.00','15','17770788905','2');
INSERT INTO `user` VALUES('55643','13860910108','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55638','0','0.00','0','0.00','0','0','0','2020-03-09 01:47:13','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55644','15630190581','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55638','0','0.00','0','0.00','0','0','0','2020-03-09 01:47:31','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55645','15377575554','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55638','0','0.00','0','0.00','0','0','0','2020-03-09 01:47:55','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55646','15758727331','钟方福','无','0','db4c3b4fa04b19eab4f8b81d36fda285','490d43ced496c7fc106288d99060dc3e','55642','8029','3.20','10','0.00','1583753093','0','0','2020-03-09 01:48:04','223.89.128.229','0','','0.00','10','15758727331','2');
INSERT INTO `user` VALUES('55647','18642631950','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55638','0','0.00','0','0.00','0','0','0','2020-03-09 01:48:18','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55648','15507935730','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55638','0','0.00','0','0.00','0','0','0','2020-03-09 01:48:39','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55649','13928119859','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55646','8029','1.60','110','0.00','1583753179','0','0','2020-03-09 01:48:58','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55650','15277848220','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55638','0','0.00','0','0.00','0','0','0','2020-03-09 01:49:06','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55651','18613891964','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55644','0','0.00','0','0.00','0','0','0','2020-03-09 01:49:40','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55652','15302208273','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55644','0','0.00','0','0.00','0','0','0','2020-03-09 01:50:10','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55653','18326059600','谢伟','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55649','8029','0.00','10','0.00','1583753497','0','0','2020-03-09 01:50:15','223.89.128.229','0','','0.00','0','18326059600','2');
INSERT INTO `user` VALUES('55654','13114720216','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55644','0','0.00','0','0.00','0','0','0','2020-03-09 01:50:35','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55655','15385200066','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55644','0','0.00','0','0.00','0','0','0','2020-03-09 01:51:02','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55656','19862672268','无','无','0','0a2cb03c4dc29cfc0d56afa46ae8fd2e','9519bc1bbb643029053f051d004ce283','55646','8029','0.00','10','0.00','1583753354','0','0','2020-03-09 01:51:04','223.89.128.229','0','','0.00','0','19862672268','2');
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
INSERT INTO `user` VALUES('55673','15882587964','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55669','0','0.00','0','0.00','1583753122','0','0','2020-03-09 01:58:05','119.165.104.92','0','','0.00','0','','2');
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
INSERT INTO `user` VALUES('55694','13611841949','吴晓军','无','0','c1358d35d3f93ab8ac88cb3ed27db63c','e10adc3949ba59abbe56e057f20f883e','55642','8029','0.00','50','0.00','1583753231','0','0','2020-03-09 02:05:14','223.89.128.229','0','','0.00','0','18916420238','2');
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
INSERT INTO `user` VALUES('55743','18061299098','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','1583752961','0','0','2020-03-09 02:44:43','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55744','15943399228','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 02:45:39','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55745','17853818373','刘杰','无','0','e3dc4da5835d7fa0f844ac3d7b19686b','e10adc3949ba59abbe56e057f20f883e','55564','0','0.00','0','0.00','1583753819','0','0','2020-03-09 02:47:53','119.165.104.92','0','','0.00','15','17853815373','2');
INSERT INTO `user` VALUES('55746','19906973776','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55745','0','0.00','0','0.00','1583750393','0','0','2020-03-09 02:49:02','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55747','18760161178','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55746','0','0.00','0','0.00','0','0','0','2020-03-09 02:49:40','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55748','15122938885','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55745','0','0.00','0','0.00','1583750431','0','0','2020-03-09 02:50:21','119.165.104.92','0','','0.00','7','','2');
INSERT INTO `user` VALUES('55749','15229512787','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55745','0','0.00','0','0.00','0','0','0','2020-03-09 02:51:01','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55750','18370616648','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55566','0','0.00','0','0.00','0','0','0','2020-03-09 02:51:48','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55751','18296675305','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55750','0','0.00','0','0.00','0','0','0','2020-03-09 02:52:28','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55752','17690000518','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55745','0','0.00','0','0.00','1583752930','0','0','2020-03-09 02:53:05','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56323','15088833352','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55494','0','0.00','0','0.00','1583751161','0','0','2020-03-09 15:33:09','119.165.104.92','0','','0.00','12','','2');
INSERT INTO `user` VALUES('56324','15088833353','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56323','0','0.00','0','0.00','1583741128','0','0','2020-03-09 15:33:40','119.165.104.92','0','','0.00','3','','2');
INSERT INTO `user` VALUES('55756','17347224148','邬立春','无','0','523dfa660c26cbb36a6214edbbbf2ae5','e10adc3949ba59abbe56e057f20f883e','55567','8029','2.50','10','0.00','1583752232','0','0','2020-03-09 07:14:22','119.165.104.92','0','','0.00','15','17347224148','2');
INSERT INTO `user` VALUES('55757','18073789565','邬立春','无','0','523dfa660c26cbb36a6214edbbbf2ae5','e10adc3949ba59abbe56e057f20f883e','55756','8029','4.40','10','0.00','1583753023','0','0','2020-03-09 07:14:58','119.165.104.92','0','','0.00','15','18073789565','2');
INSERT INTO `user` VALUES('55758','15020915337','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:16:28','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55759','15008262324','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:17:17','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55760','15957119247','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:18:10','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55761','15180135388','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','8029','0.00','10','0.00','1583753395','0','0','2020-03-09 07:18:40','119.165.104.92','0','','0.00','15','54473617@qq.com','2');
INSERT INTO `user` VALUES('55762','18324351817','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:19:00','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55763','15011376459','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','1583753234','0','0','2020-03-09 07:19:24','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55764','19107472480','王元松','无','0','bc478e92f5711eaa49a922abefa0408d','0fdd00f9ec7405dcd46885e314e4811a','55757','0','0.00','0','0.00','1583753243','0','0','2020-03-09 07:19:45','119.165.104.92','0','','0.00','15','1845843263@qq.com','2');
INSERT INTO `user` VALUES('55765','15070006641','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:20:08','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55766','13693302298','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:20:34','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55767','13390987488','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:20:52','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55768','18169479427','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','1583749727','0','0','2020-03-09 07:21:12','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55769','18668994914','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:21:53','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55770','17635003285','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:22:13','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55771','13111085346','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.20','0','0.00','1583753000','0','0','2020-03-09 07:22:31','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55772','13429475178','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','1583749569','0','0','2020-03-09 07:23:13','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55773','16651385152','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:23:38','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55774','16726383685','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:23:56','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55775','17643192854','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:24:13','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55776','13911355313','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:24:31','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55777','18088177576','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:24:49','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55778','13594572114','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:25:06','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55779','18812126721','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:25:20','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55780','13853739789','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:25:35','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55781','13869984000','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:25:51','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55782','13963007101','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','1583752855','0','0','2020-03-09 07:26:11','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55783','13237539399','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:26:28','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55784','13824741341','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:26:47','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55785','17319258057','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:27:13','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55786','15504329071','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','1583751787','0','0','2020-03-09 07:27:28','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55787','15623370693','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:27:48','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55788','13737244905','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','1583753197','0','0','2020-03-09 07:28:04','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55789','13502491285','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:28:21','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55790','13510580382','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:28:41','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55791','13904916325','刘树国','无','0','66b5730df6f71732aa956c743bdb01fd','b032ce489817a89a01e0390281944f20','55757','8029','0.00','0','0.00','1583753637','0','0','2020-03-09 07:28:56','119.165.104.92','0','','0.00','15','13904916325','2');
INSERT INTO `user` VALUES('55792','15586239751','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:29:13','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55793','13071665887','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 07:29:28','119.165.104.92','0','','0.00','15','','2');
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
INSERT INTO `user` VALUES('55821','17740128990','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','1583753391','0','0','2020-03-09 08:44:12','119.165.104.92','0','','0.00','0','','2');
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
INSERT INTO `user` VALUES('55874','13268213460','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55606','0','0.00','0','0.00','0','0','0','2020-03-09 09:04:05','223.89.128.229','0','','0.00','15','','2');
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
INSERT INTO `user` VALUES('55909','15993702893','无','无','0','ebca881efd4c1f6feb83194a98157d81','2ece68d980e4673a1dcf9ec04c010bb4','55904','0','0.00','0','0.00','1583753321','0','0','2020-03-09 09:28:35','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55910','19118853202','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:28:42','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55911','18870473174','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:29:00','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55912','18873810735','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:29:16','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55913','18358245925','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:29:32','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55914','13827598252','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:29:50','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55915','18535284084','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:30:08','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55916','18865110814','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55904','0','0.00','0','0.00','0','0','0','2020-03-09 09:30:17','223.89.128.229','0','','0.00','15','','2');
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
INSERT INTO `user` VALUES('55931','17776492012','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55904','0','0.00','0','0.00','0','0','0','2020-03-09 09:35:23','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55932','15778047811','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:35:30','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55933','17896755909','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:35:49','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55934','18909845170','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55904','0','0.00','0','0.00','0','0','0','2020-03-09 09:36:06','223.89.128.229','0','','0.00','15','','2');
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
INSERT INTO `user` VALUES('55951','13982048884','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55904','0','0.00','0','0.00','0','0','0','2020-03-09 09:41:12','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55952','18024859895','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:41:13','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55953','18032696051','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:41:30','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55954','15879752633','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:41:45','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55955','15727212262','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55904','0','0.00','0','0.00','0','0','0','2020-03-09 09:41:59','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55956','13170970212','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:42:14','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55957','18379475410','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:42:31','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55958','15767900092','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:42:48','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55959','13100940764','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55904','0','0.00','0','0.00','1583753032','0','0','2020-03-09 09:43:03','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55960','17362061659','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:43:03','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55961','14715915005','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:43:20','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55962','13921993572','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:43:35','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55963','13555209708','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55959','0','0.00','0','0.00','1583753067','0','0','2020-03-09 09:43:37','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('55964','15690629507','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:43:51','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('55965','18814657767','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55963','0','0.00','0','0.00','1583753133','0','0','2020-03-09 09:44:06','223.89.128.229','0','','0.00','15','','2');
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
INSERT INTO `user` VALUES('56008','15549087900','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55904','0','25.40','0','0.00','1583753404','0','0','2020-03-09 09:53:06','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('56009','18305617322','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:53:14','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56010','15263569680','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:53:47','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56011','15108429423','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55904','0','0.00','0','0.00','1583752092','0','0','2020-03-09 09:54:05','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('56012','18594009051','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:54:11','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56013','13595676391','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:54:25','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56014','13438870171','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56011','0','0.00','0','0.00','0','0','0','2020-03-09 09:54:40','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56015','15886759309','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:54:49','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56016','19194238044','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55761','0','0.00','0','0.00','0','0','0','2020-03-09 09:57:20','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56017','18782032573','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56014','0','0.00','0','0.00','0','0','0','2020-03-09 09:57:45','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56018','18252841101','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 09:58:03','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56019','18733492111','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 09:58:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56020','18328089670','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56017','0','0.00','0','0.00','1583753671','0','0','2020-03-09 09:58:40','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56021','17638787629','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 09:58:42','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56022','18056803350','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 09:59:13','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56023','18147580085','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56020','0','0.00','0','0.00','0','0','0','2020-03-09 09:59:30','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56024','18364945597','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 09:59:30','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56025','18205405063','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 09:59:46','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56026','17637427265','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 10:00:03','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56027','15068169429','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 10:00:23','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56028','13345485972','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55904','0','0.00','0','0.00','1583753393','0','0','2020-03-09 10:00:37','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('56029','17859576062','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 10:00:44','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56030','18132205592','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 10:01:01','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56031','15723381181','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 10:01:18','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56032','13957194263','吴劲勇','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55547','0','0.00','0','0.00','1583752342','0','0','2020-03-09 10:01:30','223.89.128.229','0','','0.00','15','13957194263','2');
INSERT INTO `user` VALUES('56033','18685584780','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 10:01:35','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56034','13083026634','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:03:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56035','18365132558','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:03:40','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56036','17324806505','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:03:54','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56037','15770886511','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:04:11','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56038','13568639921','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:04:29','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56039','18134242515','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:04:47','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56040','13738125299','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55765','0','0.00','0','0.00','0','0','0','2020-03-09 10:05:04','119.165.104.92','0','','0.00','0','','2');
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
INSERT INTO `user` VALUES('56097','17304222663','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55762','0','0.00','0','0.00','0','0','0','2020-03-09 10:31:13','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56098','15825735916','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55762','0','0.00','0','0.00','0','0','0','2020-03-09 10:31:30','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56099','18676382349','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55762','0','0.00','0','0.00','0','0','0','2020-03-09 10:31:52','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56100','17645256761','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55762','0','0.00','0','0.00','0','0','0','2020-03-09 10:32:17','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56101','15067342926','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55762','0','0.00','0','0.00','0','0','0','2020-03-09 10:32:27','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56102','13597227508','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55762','0','0.00','0','0.00','0','0','0','2020-03-09 10:32:40','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56103','15957911216','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55762','0','0.00','0','0.00','0','0','0','2020-03-09 10:32:52','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56104','18613355602','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55762','0','0.00','0','0.00','0','0','0','2020-03-09 10:33:03','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56105','18057802113','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55762','0','0.00','0','0.00','0','0','0','2020-03-09 10:33:24','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56106','13053324218','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55762','0','0.00','0','0.00','0','0','0','2020-03-09 10:33:42','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56107','13656834791','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55762','0','0.00','0','0.00','0','0','0','2020-03-09 10:33:58','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56108','13220338796','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55762','0','0.00','0','0.00','0','0','0','2020-03-09 10:34:15','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56109','15134122673','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55762','0','0.00','0','0.00','0','0','0','2020-03-09 10:34:29','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56110','15214495761','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55762','0','0.00','0','0.00','0','0','0','2020-03-09 10:34:40','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56111','17316254870','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55758','0','0.00','0','0.00','0','0','0','2020-03-09 10:35:49','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56112','18106331452','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55758','0','0.00','0','0.00','0','0','0','2020-03-09 10:36:02','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56113','13826203280','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55758','0','0.00','0','0.00','0','0','0','2020-03-09 10:36:13','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56114','15838506732','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55758','0','0.00','0','0.00','0','0','0','2020-03-09 10:36:24','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56115','18985633931','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55758','0','0.00','0','0.00','0','0','0','2020-03-09 10:36:40','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56116','15054253967','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55758','0','0.00','0','0.00','0','0','0','2020-03-09 10:36:51','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56117','15981340190','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55758','0','0.00','0','0.00','1583751531','0','0','2020-03-09 10:37:02','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56118','15853988201','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55758','0','0.00','0','0.00','0','0','0','2020-03-09 10:37:16','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56119','15972141917','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55758','0','0.00','0','0.00','0','0','0','2020-03-09 10:37:31','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56120','15820522683','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55784','0','0.00','0','0.00','0','0','0','2020-03-09 10:37:56','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56121','15800139181','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55784','0','0.00','0','0.00','0','0','0','2020-03-09 10:38:09','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56122','18676135332','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55784','0','0.00','0','0.00','0','0','0','2020-03-09 10:38:20','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56123','18680592000','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55784','0','0.00','0','0.00','0','0','0','2020-03-09 10:38:32','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56124','18310481896','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55763','0','0.00','0','0.00','1583750162','0','0','2020-03-09 10:38:50','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56125','13522836455','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55763','0','0.00','0','0.00','1583753189','0','0','2020-03-09 10:39:02','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56126','18079850933','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56125','0','0.00','0','0.00','0','0','0','2020-03-09 10:39:59','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56127','18843748806','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56125','0','0.00','0','0.00','0','0','0','2020-03-09 10:40:11','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56128','13376240391','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55788','0','0.00','0','0.00','0','0','0','2020-03-09 10:40:36','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56129','19815669449','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55788','0','0.00','0','0.00','0','0','0','2020-03-09 10:40:58','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56130','18105432664','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55788','0','0.00','0','0.00','0','0','0','2020-03-09 10:41:08','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56131','13150357199','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55788','0','0.00','0','0.00','0','0','0','2020-03-09 10:41:17','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56132','13528994986','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55788','0','0.00','0','0.00','0','0','0','2020-03-09 10:41:33','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56133','18878712608','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55788','0','0.00','0','0.00','0','0','0','2020-03-09 10:41:43','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56134','15061169693','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55788','0','0.00','0','0.00','1583752749','0','0','2020-03-09 10:41:52','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56135','15170835279','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55788','0','0.00','0','0.00','0','0','0','2020-03-09 10:42:02','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56136','13173730513','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55788','0','0.00','0','0.00','0','0','0','2020-03-09 10:42:32','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56137','17605913732','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55788','0','0.00','0','0.00','0','0','0','2020-03-09 10:42:42','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56138','18200240075','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55788','0','0.00','0','0.00','0','0','0','2020-03-09 10:42:53','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56139','17685693536','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55788','0','0.00','0','0.00','0','0','0','2020-03-09 10:43:02','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56140','18950236710','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55788','0','0.00','0','0.00','0','0','0','2020-03-09 10:43:12','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56141','18687490114','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55788','0','0.00','0','0.00','0','0','0','2020-03-09 10:43:22','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56142','15390592377','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55788','0','0.00','0','0.00','0','0','0','2020-03-09 10:43:31','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56143','13628178578','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55788','0','0.00','0','0.00','0','0','0','2020-03-09 10:43:40','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56144','17789766218','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55788','0','0.00','0','0.00','0','0','0','2020-03-09 10:43:51','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56145','15504602773','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55788','0','0.00','0','0.00','0','0','0','2020-03-09 10:44:01','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56146','15165571925','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55771','0','0.00','0','0.00','0','0','0','2020-03-09 10:45:03','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56147','13109805438','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55771','0','0.00','0','0.00','0','0','0','2020-03-09 10:45:21','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56148','13079817982','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55771','0','0.00','0','0.00','0','0','0','2020-03-09 10:45:34','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56149','13998960522','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55771','0','0.00','0','0.00','0','0','0','2020-03-09 10:45:44','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56150','15841584739','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55771','0','0.00','0','0.00','0','0','0','2020-03-09 10:45:56','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56151','15777998030','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55771','0','0.00','0','0.00','0','0','0','2020-03-09 10:46:08','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56152','13029777981','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55771','0','0.00','0','0.00','0','0','0','2020-03-09 10:46:17','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56153','13940978719','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55771','0','0.00','0','0.00','0','0','0','2020-03-09 10:46:28','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56154','15834236215','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55771','0','0.00','0','0.00','0','0','0','2020-03-09 10:46:39','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56155','17742595261','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55771','0','0.00','0','0.00','0','0','0','2020-03-09 10:46:49','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56156','15834075093','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55771','0','0.60','0','0.00','0','0','0','2020-03-09 10:47:02','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56157','13189865849','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56156','0','0.00','0','0.00','0','0','0','2020-03-09 10:49:19','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56158','18940934896','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56156','0','0.00','0','0.00','0','0','0','2020-03-09 10:49:33','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56159','13803617069','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56156','0','0.00','0','0.00','0','0','0','2020-03-09 10:49:45','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56160','18877146036','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56156','0','0.00','0','0.00','0','0','0','2020-03-09 10:49:56','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56161','19512033367','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56156','0','0.00','0','0.00','0','0','0','2020-03-09 10:50:23','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56162','13875733196','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56156','0','0.00','0','0.00','0','0','0','2020-03-09 10:50:42','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56163','18583656653','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56156','0','0.00','0','0.00','0','0','0','2020-03-09 10:50:54','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56164','13796397792','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56156','0','0.00','0','0.00','0','0','0','2020-03-09 10:51:04','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56165','13943548173','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56156','0','0.00','0','0.00','0','0','0','2020-03-09 10:51:15','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56166','13383515877','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56156','0','0.80','0','0.00','1583753733','0','0','2020-03-09 10:51:38','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56167','15235996928','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56166','0','0.00','0','0.00','0','0','0','2020-03-09 10:52:21','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56168','18061606404','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56166','0','0.00','0','0.00','0','0','0','2020-03-09 10:52:41','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56169','13378770826','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56166','8029','0.00','10','0.00','1583752035','0','0','2020-03-09 10:53:09','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56170','19922018667','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56166','0','0.00','0','0.00','0','0','0','2020-03-09 10:53:20','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56171','18839329098','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56166','0','0.00','0','0.00','0','0','0','2020-03-09 10:55:42','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56172','18543911769','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56166','0','0.00','0','0.00','1583753790','0','0','2020-03-09 10:56:04','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56173','15981381280','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56166','0','0.00','0','0.00','0','0','0','2020-03-09 10:56:25','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56174','18781974967','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56166','0','0.00','0','0.00','0','0','0','2020-03-09 10:59:26','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56175','15842185305','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55791','0','0.00','0','0.00','1583753668','0','0','2020-03-09 11:00:19','119.165.104.92','0','','0.00','8','','2');
INSERT INTO `user` VALUES('56176','13470216698','无','无','0','66b5730df6f71732aa956c743bdb01fd','b032ce489817a89a01e0390281944f20','55791','0','0.00','0','0.00','1583753286','0','0','2020-03-09 11:00:47','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56177','18842155305','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55791','0','0.00','0','0.00','0','0','0','2020-03-09 11:01:23','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56178','18304208416','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55791','0','0.00','0','0.00','0','0','0','2020-03-09 11:01:44','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56179','13052615578','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55791','0','0.00','0','0.00','0','0','0','2020-03-09 11:02:05','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56180','15040879439','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55791','0','0.00','0','0.00','0','0','0','2020-03-09 11:02:23','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56181','13464254947','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55791','0','0.00','0','0.00','0','0','0','2020-03-09 11:02:40','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56182','13898236311','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55791','0','0.00','0','0.00','0','0','0','2020-03-09 11:02:59','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56183','15942191570','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55791','0','0.00','0','0.00','1583753561','0','0','2020-03-09 11:03:14','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56184','15566647928','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55791','0','0.00','0','0.00','0','0','0','2020-03-09 11:03:46','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56185','15642171371','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55791','0','0.00','0','0.00','0','0','0','2020-03-09 11:04:02','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56186','13942126828','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55791','0','0.00','0','0.00','0','0','0','2020-03-09 11:04:16','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56187','13274226335','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55791','0','0.00','0','0.00','0','0','0','2020-03-09 11:04:36','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56188','15242163773','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55791','0','0.00','0','0.00','0','0','0','2020-03-09 11:04:49','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56189','15084212598','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55791','0','0.00','0','0.00','0','0','0','2020-03-09 11:05:06','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56190','18004910090','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55791','0','0.00','0','0.00','0','0','0','2020-03-09 11:05:19','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56191','13358926129','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55791','0','0.00','0','0.00','0','0','0','2020-03-09 11:05:34','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56192','15942126521','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55791','0','0.00','0','0.00','0','0','0','2020-03-09 11:05:51','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56193','15270850726','柯礼文','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','1583753707','0','0','2020-03-09 11:06:09','119.165.104.92','0','','0.00','0','15270850726','2');
INSERT INTO `user` VALUES('56194','15180125301','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 11:06:24','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56195','15137886627','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 11:06:35','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56196','17738163890','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55764','0','0.00','0','0.00','0','0','0','2020-03-09 11:06:45','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56197','17753387992','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55916','0','0.00','0','0.00','0','0','0','2020-03-09 11:07:31','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56198','15738767095','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','1583753468','0','0','2020-03-09 11:08:13','119.165.104.92','0','','0.00','15','','2');
INSERT INTO `user` VALUES('56199','15889473576','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55790','0','0.00','0','0.00','0','0','0','2020-03-09 11:08:31','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56200','19925243419','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56199','0','0.00','0','0.00','0','0','0','2020-03-09 11:08:52','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56201','18818771657','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56200','0','0.00','0','0.00','0','0','0','2020-03-09 11:09:11','119.165.104.92','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56202','15817482988','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56201','0','0.00','0','0.00','0','0','0','2020-03-09 11:16:57','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56203','18914272510','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:17:36','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56204','15626558164','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:18:11','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56205','13267168615','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:19:28','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56206','13766319841','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:20:01','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56207','18681509794','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:20:36','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56208','15766863134','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:21:19','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56209','13015761426','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:21:58','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56210','13556878226','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:23:04','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56211','18922879368','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:23:43','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56212','18620505007','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:24:20','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56213','13211693361','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:25:03','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56214','13248097686','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:25:40','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56215','13817919329','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:26:27','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56216','18717169348','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:27:04','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56217','17621955467','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:27:41','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56218','13681728839','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:28:14','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56219','13597541257','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:28:51','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56220','18616378667','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:29:27','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56221','18566222918','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:30:07','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56222','13524021136','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:30:46','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56223','18552641391','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:31:20','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56224','15317814978','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:31:52','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56225','18917552862','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:32:23','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56226','17608123222','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:32:53','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56227','13587155537','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:33:30','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56228','15017977537','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:34:00','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56229','18221122615','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:34:32','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56230','14714335958','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:35:03','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56231','13632097164','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:35:28','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56232','13928728657','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:36:09','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56233','15090128978','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:37:23','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56234','15017904200','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:37:52','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56235','17317122618','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:38:20','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56236','13818865629','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:38:50','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56237','13632938627','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:39:27','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56238','13923794494','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:40:01','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56239','13928442758','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:40:31','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56240','16625193149','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:41:02','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56241','18676736013','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:41:36','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56242','13823263413','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:42:13','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56243','13684925965','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:42:43','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56244','15093135012','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:43:11','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56245','18689517311','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:43:40','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56246','13709965422','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:44:06','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56247','15099947418','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:44:57','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56248','13714796593','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:45:27','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56249','18124071669','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:46:29','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56250','18938088452','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:47:03','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56251','16725837687','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:47:30','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56252','13916447818','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:47:59','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56253','18721876731','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:48:27','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56254','13825290318','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:48:55','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56255','13662564134','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:49:29','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56256','18371353577','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:50:11','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56257','13927459345','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:50:43','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56258','18688759013','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:51:13','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56259','13602531888','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:51:46','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56260','13922873161','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:52:15','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56261','13925203111','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:54:04','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56262','13714921327','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:54:32','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56263','15021553220','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:55:02','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56264','13622390853','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:55:33','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56265','15837073848','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:56:01','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56266','15652186693','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:56:29','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56267','13167229448','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:56:55','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56268','18028720788','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:57:26','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56269','15986750310','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:58:05','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56270','18926771835','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:58:34','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56271','15151320338','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 11:59:04','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56272','13852361506','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:01:43','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56273','13164997927','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:02:43','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56274','13045886811','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:03:08','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56275','13692136812','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:03:44','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56276','13858352958','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:04:13','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56277','15354715970','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:04:43','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56278','13641403863','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:05:11','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56279','15216681576','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:06:07','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56280','13828735824','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:06:35','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56281','13302466162','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:07:04','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56282','13715363906','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:07:36','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56283','15801874651','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:09:01','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56284','14752222167','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:09:36','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56285','15818668965','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:10:04','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56286','15361453114','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:11:09','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56287','15095255470','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:11:53','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56288','19817622516','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:12:53','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56289','15301780786','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:13:28','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56290','15270226383','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:14:07','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56291','17722653447','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:14:35','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56292','13602581351','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:15:09','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56293','13686451345','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:15:44','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56294','13480174673','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:16:16','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56295','18818992507','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:16:52','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56296','17512081616','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:17:22','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56297','18682131462','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:18:04','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56298','13632797495','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:18:35','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56299','13923418287','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:19:15','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56300','13129533847','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:19:44','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56301','13774325653','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:20:18','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56302','13312934513','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:21:30','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56303','18809967370','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:22:10','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56304','18076785523','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:22:41','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56305','19876427649','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:23:12','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56306','18666352167','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:23:49','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56307','15626560433','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:24:34','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56308','13530101406','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:25:28','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56309','15989337923','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:26:21','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56310','13808837286','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:26:57','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56311','13917913748','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:27:55','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56312','13337489109','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56202','0','0.00','0','0.00','0','0','0','2020-03-09 12:28:27','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56313','15103845080','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55768','0','0.00','0','0.00','0','0','0','2020-03-09 12:29:54','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56314','17610526582','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 12:30:53','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('56315','15266351267','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','0','0','0.00','0','0.00','0','1','0','2020-03-09 12:31:31','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56316','17674720325','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55574','0','0.00','0','0.00','0','0','0','2020-03-09 12:32:59','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56317','18093627833','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','0','0','0','2020-03-09 12:34:58','223.89.128.229','0','','0.00','15','','2');
INSERT INTO `user` VALUES('56322','13216638913','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55540','0','0.00','0','0.00','0','0','0','2020-03-09 14:52:07','223.89.128.229','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56326','15088833355','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56323','0','0.00','0','0.00','0','0','0','2020-03-09 15:34:27','119.165.104.92','0','','0.00','1','','2');
INSERT INTO `user` VALUES('56325','15088833354','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56323','0','0.00','0','0.00','0','0','0','2020-03-09 15:34:06','119.165.104.92','0','','0.00','1','','2');
INSERT INTO `user` VALUES('56327','18133932585','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55602','0','0.00','0','0.00','1583750842','0','0','2020-03-09 18:18:46','119.84.153.153','0','','0.00','15','','0');
INSERT INTO `user` VALUES('56328','18699241234','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56327','0','0.00','0','0.00','1583749277','0','0','2020-03-09 18:21:11','119.84.153.147','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56329','18919287924','无','无','0','25f9e794323b453885f5181f1b624d0b','25f9e794323b453885f5181f1b624d0b','55549','0','0.00','0','0.00','1583751917','0','0','2020-03-09 18:25:13','123.151.77.48','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56330','15569266872','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56028','0','0.00','0','0.00','1583753423','0','0','2020-03-09 18:26:03','119.84.153.163','0','','0.00','15','','0');
INSERT INTO `user` VALUES('56331','15299248085','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56330','0','0.00','0','0.00','1583753808','0','0','2020-03-09 18:26:55','119.84.153.163','0','','0.00','15','','0');
INSERT INTO `user` VALUES('56332','17695703618','无','无','0','da3bf1e00b8cd9424faf48b661c3c9f1','da3bf1e00b8cd9424faf48b661c3c9f1','56193','0','0.00','0','0.00','1583752851','0','0','2020-03-09 18:28:18','111.33.223.172','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56333','15051602643','无','无','0','9c54853a2b39e4361d8694901ea89708','9c54853a2b39e4361d8694901ea89708','56331','0','0.00','0','0.00','1583753738','0','0','2020-03-09 18:28:59','14.116.133.171','0','','0.00','15','','0');
INSERT INTO `user` VALUES('56334','15184206909','戴景旺','无','0','5391704dd806e2e4d8c685577fa23c67','5391704dd806e2e4d8c685577fa23c67','56193','8029','0.00','100','0.00','1583753287','0','0','2020-03-09 18:30:00','117.132.194.182','0','','0.00','0','15184206909','2');
INSERT INTO `user` VALUES('56335','15295700714','无','无','0','c984ffc0363b81217a9f94ee8240af46','c984ffc0363b81217a9f94ee8240af46','56193','0','0.00','0','0.00','1583749992','0','0','2020-03-09 18:32:07','223.104.4.57','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56336','13709923391','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56327','0','0.00','0','0.00','1583750125','0','0','2020-03-09 18:33:37','119.84.153.147','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56337','15881886240','无','无','0','4753fc9c8759a8702d5b2513748bf696','4753fc9c8759a8702d5b2513748bf696','55545','8029','2.50','10','0.00','1583752300','0','0','2020-03-09 18:36:25','58.250.143.96','0','','0.00','15','','2');
INSERT INTO `user` VALUES('56338','13565570198','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56336','0','0.00','0','0.00','1583750214','0','0','2020-03-09 18:36:30','119.84.153.147','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56339','13270923506','无','无','0','af8f9dffa5d420fbc249141645b962ee','af8f9dffa5d420fbc249141645b962ee','55604','0','0.00','0','0.00','1583750387','0','0','2020-03-09 18:37:26','61.129.7.254','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56340','15559345111','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56338','0','0.00','0','0.00','1583750304','0','0','2020-03-09 18:37:57','119.84.153.147','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56341','18940319315','无','无','0','13dbc986a4b13536e2fdb799aa23bd4f','13dbc986a4b13536e2fdb799aa23bd4f','55601','0','0.00','0','0.00','1583752807','0','0','2020-03-09 18:38:19','220.194.106.93','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56342','16687189026','无','无','0','20917c851c4a54f2a054390dac9085b7','20917c851c4a54f2a054390dac9085b7','55540','0','0.00','0','0.00','1583753139','0','0','2020-03-09 18:38:20','39.128.37.52','0','','0.00','15','','0');
INSERT INTO `user` VALUES('56343','15559341770','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56340','0','0.00','0','0.00','1583750398','0','0','2020-03-09 18:39:33','119.84.153.147','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56344','17715300810','无','无','0','a5a4fa51da21ed4680e50b58072cb791','a5a4fa51da21ed4680e50b58072cb791','56193','0','0.00','0','0.00','1583750467','0','0','2020-03-09 18:40:39','49.80.180.159','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56345','15846878755','无','无','0','f52a6636b442555a21f6c1f1f23d5ef3','f52a6636b442555a21f6c1f1f23d5ef3','56193','8029','0.00','2000','0.00','1583753788','0','0','2020-03-09 18:40:46','117.136.7.62','0','','0.00','0','15846878755','2');
INSERT INTO `user` VALUES('56346','18099920839','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56343','0','0.00','0','0.00','1583750483','0','0','2020-03-09 18:40:49','119.84.153.147','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56347','15529291518','郭艳','无','0','442418727583668cc85e798c69ac2f69','442418727583668cc85e798c69ac2f69','56008','0','0.00','0','0.00','1583751244','0','0','2020-03-09 18:41:19','157.255.193.24','0','','0.00','0','17382674229','0');
INSERT INTO `user` VALUES('56348','18116870800','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56346','0','0.00','0','0.00','1583753704','0','0','2020-03-09 18:42:08','119.84.153.147','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56349','13682910516','无','无','0','2dbec46faede2a9a4b22bdae4e10f8bb','2dbec46faede2a9a4b22bdae4e10f8bb','55549','0','0.00','0','0.00','1583750654','0','0','2020-03-09 18:43:47','223.104.64.46','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56350','13575749716','无','无','0','653f73f60dab374e4f7f3b48999b5d45','653f73f60dab374e4f7f3b48999b5d45','56341','0','0.00','0','0.00','1583751193','0','0','2020-03-09 18:44:38','112.17.236.28','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56351','13686807852','无','无','0','4d6a60e44247a37070a934d4054200b2','4d6a60e44247a37070a934d4054200b2','56337','8029','0.20','10','0.00','1583753507','0','0','2020-03-09 18:47:50','113.96.219.247','0','','0.00','15','','2');
INSERT INTO `user` VALUES('56352','17838531172','无','无','0','356e40e5c3ce017a80b793d3961babf7','356e40e5c3ce017a80b793d3961babf7','56333','0','0.00','0','0.00','1583751482','0','0','2020-03-09 18:47:54','157.255.172.126','0','','0.00','15','','0');
INSERT INTO `user` VALUES('56353','18133831770','无','无','0','1143ef1e4a727e1a6a36b8d670b3b63a','1143ef1e4a727e1a6a36b8d670b3b63a','55617','8029','0.00','0','0.00','1583750926','0','0','2020-03-09 18:48:08','183.196.170.82','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56354','15899245710','黄先华','无','0','ac2d3ab1130f9de60708b985f6fb6d63','ac2d3ab1130f9de60708b985f6fb6d63','56347','0','0.00','0','0.00','1583752945','0','0','2020-03-09 18:48:17','119.84.153.208','0','','0.00','0','15899245710','0');
INSERT INTO `user` VALUES('56355','18576422248','无','无','0','be3481f7fe27d542afd02882700c387c','be3481f7fe27d542afd02882700c387c','56008','0','0.00','0','0.00','1583750971','0','0','2020-03-09 18:48:59','157.255.172.17','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56356','17751091019','无','无','0','4732bfd6fbcc522260e3379d318fec12','4732bfd6fbcc522260e3379d318fec12','55673','0','0.00','0','0.00','1583751978','0','0','2020-03-09 18:49:26','58.247.212.207','0','','0.00','0','13171971050','0');
INSERT INTO `user` VALUES('56357','13834161741','无','无','0','dd0a91e6b4a4d4765b03abded1be30a6','dd0a91e6b4a4d4765b03abded1be30a6','56008','8029','0.80','10','0.00','1583752069','0','0','2020-03-09 18:50:13','39.149.89.138','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56358','15153213538','无','无','0','6b4308e762489d86fd98151fbb476d2e','6b4308e762489d86fd98151fbb476d2e','56345','0','0.00','0','0.00','1583751485','0','0','2020-03-09 18:50:35','14.116.137.170','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56359','17184051881','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55757','0','0.00','0','0.00','1583753259','0','0','2020-03-09 18:51:31','111.30.142.78','0','','0.00','15','','0');
INSERT INTO `user` VALUES('56360','13943500999','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55646','0','0.00','0','0.00','1583752923','0','0','2020-03-09 18:52:30','175.31.239.51','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56361','18281863755','冯圣平','无','0','a7e77921ee089a1645c5f299138856db','a7e77921ee089a1645c5f299138856db','56351','0','3.00','0','0.00','1583753821','0','0','2020-03-09 18:53:06','14.116.133.169','0','','0.00','15','18281863755','0');
INSERT INTO `user` VALUES('56362','13843408414','郑有付','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55646','0','0.00','0','0.00','1583751976','0','0','2020-03-09 18:54:03','111.30.142.227','0','','0.00','0','15585437980','0');
INSERT INTO `user` VALUES('56363','13704439992','无','无','0','22624cda72434ea97a836dc596db7ea5','22624cda72434ea97a836dc596db7ea5','55646','8029','0.00','100','0.00','1583751793','0','0','2020-03-09 18:54:11','139.208.69.37','0','','0.00','0','13704439992','2');
INSERT INTO `user` VALUES('56364','18868720400','无','无','0','1020bc6bf7c8f5ae2a09075225d80a62','1020bc6bf7c8f5ae2a09075225d80a62','55646','8029','0.00','10','0.00','1583752122','0','0','2020-03-09 18:54:35','122.231.238.152','0','','0.00','0','18868720400','2');
INSERT INTO `user` VALUES('56365','15083091944','无','无','0','25e4d103832cee6cd6929d01e3d8f251','25e4d103832cee6cd6929d01e3d8f251','56352','0','0.00','0','0.00','1583751863','0','0','2020-03-09 18:56:50','111.30.142.252','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56366','18279009876','无','无','0','d8718eeb20c120d484cd3e4438fef39b','d8718eeb20c120d484cd3e4438fef39b','55617','0','0.00','0','0.00','1583751825','0','0','2020-03-09 18:57:52','119.4.253.56','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56367','13500974488','丁宇红','无','0','78b724fc1156315325f91324b6636545','78b724fc1156315325f91324b6636545','55646','8029','0.00','10','0.00','1583752899','0','0','2020-03-09 18:57:59','220.194.106.92','0','','0.00','0','13500974488','2');
INSERT INTO `user` VALUES('56368','15585111319','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56359','0','0.00','0','0.00','1583752290','0','0','2020-03-09 18:58:49','220.194.91.101','0','','0.00','15','','0');
INSERT INTO `user` VALUES('56369','15881835077','无','无','0','a7e77921ee089a1645c5f299138856db','a7e77921ee089a1645c5f299138856db','56361','0','0.00','0','0.00','1583751644','0','0','2020-03-09 19:00:35','14.116.133.169','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56370','15705944952','无','无','0','a7e77921ee089a1645c5f299138856db','a7e77921ee089a1645c5f299138856db','56369','0','0.00','0','0.00','1583751793','0','0','2020-03-09 19:03:08','14.116.133.169','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56371','13526129795','无','无','0','356e40e5c3ce017a80b793d3961babf7','356e40e5c3ce017a80b793d3961babf7','56365','0','0.00','0','0.00','1583752017','0','0','2020-03-09 19:03:18','14.116.133.171','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56372','17844735237','无','无','0','a7e77921ee089a1645c5f299138856db','a7e77921ee089a1645c5f299138856db','56370','0','0.00','0','0.00','1583751894','0','0','2020-03-09 19:04:49','14.116.133.169','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56373','18337297129','无','无','0','356e40e5c3ce017a80b793d3961babf7','356e40e5c3ce017a80b793d3961babf7','56371','0','0.00','0','0.00','1583752417','0','0','2020-03-09 19:06:15','14.116.133.171','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56374','15268304790','无','无','0','0a98f1d2b744a3bd24906b65c28f9064','0a98f1d2b744a3bd24906b65c28f9064','56193','0','0.00','0','0.00','1583752190','0','0','2020-03-09 19:07:08','61.151.180.39','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56375','15998875523','刘正军','无','0','d8e423a9d5eb97da9e2d58cd57b92808','d8e423a9d5eb97da9e2d58cd57b92808','55617','0','0.00','0','0.00','1583753355','0','0','2020-03-09 19:07:20','223.101.22.45','0','','0.00','0','15998875523','0');
INSERT INTO `user` VALUES('56376','18911768728','无','无','0','08c0893ed203dc2c21296d5f3789cbed','08c0893ed203dc2c21296d5f3789cbed','55904','8029','0.00','100','0.00','1583753819','0','0','2020-03-09 19:07:54','111.30.142.233','0','','0.00','15','','2');
INSERT INTO `user` VALUES('56377','18388828361','无','无','0','a18152e3f4b0e6a80b6ed6e1ad4eb946','a18152e3f4b0e6a80b6ed6e1ad4eb946','55904','0','0.00','0','0.00','1583753304','0','0','2020-03-09 19:08:11','14.116.133.171','0','','0.00','15','','0');
INSERT INTO `user` VALUES('56378','18786705286','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56368','0','0.00','0','0.00','1583753100','0','0','2020-03-09 19:09:02','58.251.103.172','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56379','17138717273','无','无','0','c5ad9965a8dd049faa6bf88535ee60ea','c5ad9965a8dd049faa6bf88535ee60ea','56193','0','0.00','0','0.00','1583752481','0','0','2020-03-09 19:11:16','115.84.116.107','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56380','18839706110','无','无','0','356e40e5c3ce017a80b793d3961babf7','356e40e5c3ce017a80b793d3961babf7','56373','0','0.00','0','0.00','1583753104','0','0','2020-03-09 19:11:17','157.255.172.25','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56381','13079723798','张福春','无','0','789ff7a2d96c4ec80adff0f270992ff4','789ff7a2d96c4ec80adff0f270992ff4','56347','8029','0.00','100','0.00','1583753675','0','0','2020-03-09 19:11:21','111.30.142.233','0','','0.00','0','13079723798','2');
INSERT INTO `user` VALUES('56382','13615931093','郑仕模','无','0','cdc8ef4e36292150572c27973e9995d7','cdc8ef4e36292150572c27973e9995d7','56372','8029','0.00','10','0.00','1583753823','0','0','2020-03-09 19:11:36','223.104.47.178','0','','0.00','0','13615931093','2');
INSERT INTO `user` VALUES('56383','13390738248','无','无','0','0a59d378e940d050537c5ec1afa31e23','0a59d378e940d050537c5ec1afa31e23','56372','0','0.00','0','0.00','1583752390','0','0','2020-03-09 19:11:55','61.151.207.252','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56384','13196122718','无','无','0','a79b9069b0f91fab1e74ecac071c0930','a79b9069b0f91fab1e74ecac071c0930','55673','0','0.00','0','0.00','1583753385','0','0','2020-03-09 19:13:39','123.151.77.73','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56385','13978649890','无','无','0','338e5fedf89b3754b64cc009ed561ef2','338e5fedf89b3754b64cc009ed561ef2','56020','0','0.00','0','0.00','1583753664','0','0','2020-03-09 19:14:50','14.116.137.170','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56386','15643877135','无','无','0','a79b9069b0f91fab1e74ecac071c0930','a79b9069b0f91fab1e74ecac071c0930','56384','0','0.00','0','0.00','1583752642','0','0','2020-03-09 19:17:19','111.30.142.233','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56387','15684129910','无','无','0','6b2a8080d9dfe6843766e12bfa2a7f06','6b2a8080d9dfe6843766e12bfa2a7f06','56020','0','0.00','0','0.00','1583752816','0','0','2020-03-09 19:17:56','125.39.46.56','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56388','18338738299','无','无','0','58352a697cec28d78d8f11690dd2ff6a','58352a697cec28d78d8f11690dd2ff6a','56357','8029','0.00','10','0.00','1583753455','0','0','2020-03-09 19:18:04','125.39.46.56','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56389','13049768150','无','无','0','f1cf3e36753081de676611e34731088f','f1cf3e36753081de676611e34731088f','55609','8029','0.00','100','0.00','1583753348','0','0','2020-03-09 19:19:09','112.97.215.75','0','','0.00','0','','2');
INSERT INTO `user` VALUES('56390','17138717272','无','无','0','c5ad9965a8dd049faa6bf88535ee60ea','c5ad9965a8dd049faa6bf88535ee60ea','56193','0','0.00','0','0.00','1583752832','0','0','2020-03-09 19:19:28','115.84.116.107','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56391','13275877337','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55653','0','0.00','0','0.00','1583753819','0','0','2020-03-09 19:20:06','183.192.201.97','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56392','15317907285','无','无','0','ca065bd9b22985b495fc6be15f0564e6','ca065bd9b22985b495fc6be15f0564e6','56384','0','0.00','0','0.00','1583753045','0','0','2020-03-09 19:20:14','120.204.17.69','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56393','13391610100','无','无','0','92c5468b60bb53101a30c0645af29eac','92c5468b60bb53101a30c0645af29eac','56376','0','0.00','0','0.00','1583752869','0','0','2020-03-09 19:20:36','218.68.91.88','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56394','13546326024','无','无','0','dc483e80a7a0bd9ef71d8cf973673924','dc483e80a7a0bd9ef71d8cf973673924','56341','0','0.00','0','0.00','1583752852','0','0','2020-03-09 19:20:44','58.250.143.191','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56395','13756226927','无','无','0','d3786ec2413a8cd9413bfcb24be95a73','d3786ec2413a8cd9413bfcb24be95a73','56351','0','0.00','0','0.00','1583753020','0','0','2020-03-09 19:21:18','111.25.55.255','0','','0.00','15','13756226927','0');
INSERT INTO `user` VALUES('56396','13610828603','刘强','无','0','dc483e80a7a0bd9ef71d8cf973673924','dc483e80a7a0bd9ef71d8cf973673924','56008','0','0.00','0','0.00','1583753802','0','0','2020-03-09 19:21:29','123.151.77.71','0','','0.00','0','13610828603','0');
INSERT INTO `user` VALUES('56397','18640585807','无','无','0','d8e423a9d5eb97da9e2d58cd57b92808','d8e423a9d5eb97da9e2d58cd57b92808','56375','0','0.00','0','0.00','1583753412','0','0','2020-03-09 19:21:41','223.101.22.45','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56398','13999293235','无','无','0','44ebfc91ddcdcce6108bec6a10fc16a7','44ebfc91ddcdcce6108bec6a10fc16a7','56354','0','0.00','0','0.00','1583752960','0','0','2020-03-09 19:22:38','119.84.153.163','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56399','15080750990','无','无','0','f589c85900ee245711dee4539e4f43d1','f589c85900ee245711dee4539e4f43d1','55649','8029','0.00','10','0.00','1583753798','0','0','2020-03-09 19:25:01','183.3.255.35','0','','0.00','0','15080750990','2');
INSERT INTO `user` VALUES('56400','13331677479','无','无','0','d3786ec2413a8cd9413bfcb24be95a73','d3786ec2413a8cd9413bfcb24be95a73','56395','0','0.00','0','0.00','1583753336','0','0','2020-03-09 19:25:33','220.201.8.217','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56401','15093547956','无','无','0','061c7b87f6a96b95415db96f7f8322d7','061c7b87f6a96b95415db96f7f8322d7','55609','8029','0.00','0','0.00','1583753792','0','0','2020-03-09 19:25:46','42.248.62.195','0','','0.00','15','','0');
INSERT INTO `user` VALUES('56402','13827188178','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','56372','8029','0.00','10','0.00','1583753484','0','0','2020-03-09 19:26:04','113.96.218.50','0','','0.00','0','13827188178','2');
INSERT INTO `user` VALUES('56403','13458986097','无','无','0','2e6ce8a5fec3010ea6c647b0661a64db','2e6ce8a5fec3010ea6c647b0661a64db','56392','0','0.00','0','0.00','1583753290','0','0','2020-03-09 19:27:26','157.255.172.20','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56404','15214325765','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55646','0','0.00','0','0.00','1583753436','0','0','2020-03-09 19:28:25','119.84.153.147','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56405','17035362917','无','无','0','96e79218965eb72c92a549dd5a330112','96e79218965eb72c92a549dd5a330112','55745','8029','0.00','0','0.00','1583753552','0','0','2020-03-09 19:29:00','106.118.185.124','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56406','13836729450','无','无','0','05c5579bffda902ebf0f00c2d69e1e86','05c5579bffda902ebf0f00c2d69e1e86','56400','0','0.00','0','0.00','1583753386','0','0','2020-03-09 19:29:27','123.151.77.91','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56407','15147379910','无','无','0','65e5bf8c5a2938b496e13316147337ab','65e5bf8c5a2938b496e13316147337ab','55646','0','0.00','0','0.00','1583753548','0','0','2020-03-09 19:30:12','111.30.142.227','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56408','13938327377','无','无','0','9c84976514ed854e5813e893cffd1490','9c84976514ed854e5813e893cffd1490','56372','0','0.00','0','0.00','1583753821','0','0','2020-03-09 19:30:46','125.39.46.56','0','','0.00','0','13938327377','0');
INSERT INTO `user` VALUES('56409','18646692098','无','无','0','05c5579bffda902ebf0f00c2d69e1e86','05c5579bffda902ebf0f00c2d69e1e86','56406','0','0.00','0','0.00','1583753468','0','0','2020-03-09 19:30:48','218.68.91.23','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56410','19981767403','谭永局','无','0','a4acf92f3c3810e161ddb8cef76632bf','a4acf92f3c3810e161ddb8cef76632bf','56372','0','0.00','0','0.00','1583753728','0','0','2020-03-09 19:31:09','58.250.137.193','0','','0.00','0','19981767403','0');
INSERT INTO `user` VALUES('56411','13013036799','无','无','0','f638226a1a5b2be10abb5385d7ece6a0','f638226a1a5b2be10abb5385d7ece6a0','56372','0','0.00','0','0.00','1583753644','0','0','2020-03-09 19:31:43','101.226.225.84','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56412','15214325675','无','无','0','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','55646','0','0.00','0','0.00','1583753689','0','0','2020-03-09 19:31:50','119.84.153.147','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56413','15842448072','无','无','0','d3786ec2413a8cd9413bfcb24be95a73','d3786ec2413a8cd9413bfcb24be95a73','56409','0','0.00','0','0.00','1583753580','0','0','2020-03-09 19:32:52','111.25.55.255','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56414','15604487136','无','无','0','d3786ec2413a8cd9413bfcb24be95a73','d3786ec2413a8cd9413bfcb24be95a73','56413','0','0.00','0','0.00','1583753615','0','0','2020-03-09 19:33:30','111.25.55.255','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56415','15841149144','无','无','0','d3786ec2413a8cd9413bfcb24be95a73','d3786ec2413a8cd9413bfcb24be95a73','56414','0','0.00','0','0.00','1583753661','0','0','2020-03-09 19:34:09','111.25.55.255','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56416','13074321085','无','无','0','d3786ec2413a8cd9413bfcb24be95a73','d3786ec2413a8cd9413bfcb24be95a73','56415','0','0.00','0','0.00','1583753697','0','0','2020-03-09 19:34:54','111.25.55.255','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56417','15553526031','无','无','0','4db63086c291f8e407dbd0ce7196c657','4db63086c291f8e407dbd0ce7196c657','55782','0','0.00','0','0.00','1583753740','0','0','2020-03-09 19:35:26','220.194.106.93','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56418','15724568933','无','无','0','d3786ec2413a8cd9413bfcb24be95a73','d3786ec2413a8cd9413bfcb24be95a73','56416','0','0.00','0','0.00','1583753730','0','0','2020-03-09 19:35:27','111.25.55.255','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56419','13266591870','无','无','0','bd5a33108a7961693c47f5ab74dda20c','bd5a33108a7961693c47f5ab74dda20c','55604','0','0.00','0','0.00','1583753822','0','0','2020-03-09 19:35:41','157.255.172.21','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56420','18343039323','无','无','0','d3786ec2413a8cd9413bfcb24be95a73','d3786ec2413a8cd9413bfcb24be95a73','56418','0','0.00','0','0.00','1583753793','0','0','2020-03-09 19:35:57','111.25.55.255','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56421','17365966844','无','无','0','150d603db2a89bb4b31cc08b4b95bbfd','150d603db2a89bb4b31cc08b4b95bbfd','55673','0','0.00','0','0.00','1583753792','0','0','2020-03-09 19:36:29','125.39.46.19','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56422','18813074670','无','无','0','c3abb8001b586d81944860b78ded28d9','c3abb8001b586d81944860b78ded28d9','56364','0','0.00','0','0.00','1583753807','0','0','2020-03-09 19:36:29','101.226.225.86','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56423','15563382565','无','无','0','4db63086c291f8e407dbd0ce7196c657','4db63086c291f8e407dbd0ce7196c657','56417','0','0.00','0','0.00','1583753802','0','0','2020-03-09 19:36:37','223.104.188.161','0','','0.00','0','','0');
INSERT INTO `user` VALUES('56424','13171971050','无','无','0','4732bfd6fbcc522260e3379d318fec12','4732bfd6fbcc522260e3379d318fec12','56377','0','0.00','0','0.00','1583753819','0','0','2020-03-09 19:36:56','183.192.164.79','0','','0.00','0','','0');
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
