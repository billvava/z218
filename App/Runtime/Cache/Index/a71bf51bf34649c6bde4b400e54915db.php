<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <title>个人中心</title>
    <link rel="stylesheet" href="/Public/mobile/css/base.css?k=<?php echo rand(1,99999);?>"/>
    <script type="text/javascript" src="/Public/mobile/js/adaptive.js"></script>
    <script type="text/javascript" src="/Public/mobile/js/config.js"></script>
    <script type="text/javascript" src="/Public/mobile/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="/Public/mobile/js/public.js"></script>
    <script type="text/javascript">
        function msg(title,content,type,url){
            $("#msgTitle").html(title);
            $("#msgContent").html(content);
            if(type==1){
                var btn = '<input type="button" value="确定" onclick="$(\'#msgBox\').hide();" style="background-color: #4f79bc;color:#fff;border: none;padding:5px 10px;"/>';
            }
            else{
                var btn = '<input type="button" value="确定" onclick="window.location.href=\''+url+'\'" style="background-color: #4f79bc;color:#fff;border: none;padding:5px 10px;"/>';
            }
            $("#msgBtn").html(btn);
            $("#msgBox").show();
        }
    </script>
</head>
<body>
<div id="msgBox" style="width: 100%;background-color: rgba(0,0,0,0.25);height: 1000px;position: fixed;top: 0;left: 0;z-index: 9999;font-size:.28rem;display: none;">
    <div style="width: 80%;margin-top: 40%;margin-left: 10%;background-color: #fff;border-radius: 5px;overflow: hidden;">
        <div id="msgTitle" style="padding:10px 20px;background-color: #4f79bc;color:#fff;">
            提示
        </div>
        <div id="msgContent" style="padding:20px;line-height: 25px;">
            内容
        </div>
        <div id="msgBtn" style="padding: 10px 20px;text-align: right;border-top: 1px solid #eee;">
            <input type="button" value="确定" style="background-color: #4f79bc;color:#fff;border: none;padding:5px 10px;"/>
            <input type="button" value="取消" style="background-color: #4f79bc;color:#fff;border: none;padding:5px 10px;"/>
        </div>
    </div>
</div>
<style>
    body{background:url('/Public/mobile/img/zxbg.jpg')no-repeat;background-size:100% 100%;}
    .user_list{background:none;}
    .my_total{background:none;}
    .user_list li a{border-bottom: 0px solid #eaeaea;color: #f7f1f1;}
</style>
<div class="mobile">
    <div class="my_total">
        <div class="user">
            <!-- <span>我的账户：<?php echo ($user["phone"]); ?></span> -->
            <span>用户等级：<?php echo getUserMember($user['level']);?></span>
        </div>
        <p class="bal"><?php echo ($user["money"]); ?></p>
        <p class="bal_tit">账户余额（元）</p><br>
        <p class="bal_tit">我的账户：<?php echo ($user["phone"]); ?></p>
<!-- <?php if($user["dongjiemoney"] != ''): ?><p class="bal"><?php echo ($user["dongjiemoney"]); ?></p>
        <p class="bal_tit">冻结余额（元）</p>
					<?php else: endif; ?> -->

        <div class="wait">
            <div class="item">
                <span class="span_num"><?php echo ($user["value"]); ?></span>
                <span class="span_tit">累计投资</span>
            </div>
			<div class="item">
                <span class="span_num"><?php echo ($yj_money); ?></span>
                <span class="span_tit">团队总业绩</span>
            </div>
			<div class="item">
                <span class="span_num"><?php echo ($u_count); ?></span>
                <span class="span_tit">团队总人数</span>
            </div>
            <div class="item">
                <span class="span_num"><?php echo ($tnum); ?></span>
                <span class="span_tit">直推人数</span>
            </div>
            <!-- <div class="item">
                <span class="span_num"><?php echo getUserUnIncome($uid);?></span>
                <span class="span_tit">待收利息（元）</span>
            </div> -->
            <!-- <div class="item">
                <span class="span_num"><?php echo getUserUnPrincipal($uid);?></span>
                <span class="span_tit">待收本金（元）</span>
            </div> -->
        </div>
    </div>
    <div class="user_btn" >
        <a href="<?php echo U('Mobile/details_futou');?>"  style = "    color: #ffffff;background: #ffac16;">复投</a>
        <a href="<?php echo U('cash');?>"  style = "    color: #ffffff;background: #ffac16;">提现</a>
    </div>
    <ul class="user_list">

        <li><a href="<?php echo U('fund');?>"><img src="/Public/mobile/img/user_fund.png">资金明细</a></li>
        <li><a href="<?php echo U('invest');?>"><img src="/Public/mobile/img/user_invest.png">投资明细</a></li>
        <li><a href="<?php echo U('interest');?>"><img src="/Public/mobile/img/user_inter.png">收益流水</a></li>
        <li><a href="<?php echo U('tuiguang');?>"><img src="/Public/mobile/img/user_inter.png">推广流水</a></li>
        <li><a href="<?php echo U('tuandui');?>"><img src="/Public/mobile/img/user_inter.png">团队明细</a></li>
        <li><a href="<?php echo U('cash_record');?>"><img src="/Public/mobile/img/user_cash.png">提现流水</a></li>
    </ul>
    <ul class="user_list">
        <li><a href="<?php echo U('set_account');?>"><img src="/Public/mobile/img/user_safe.png">账户安全</a></li>
        <li><a href="<?php echo U('add_card');?>"><img src="/Public/mobile/img/user_card.png">支付宝绑定</a></li>
         <?php if(($user['padian']) > "0"): ?><li><a href="<?php echo U('certification');?>"><img src="/Public/mobile/img/user_cert.png">帕点转让</a></li><?php endif; ?>
    </ul>
    <ul class="user_list">
        <li><a href="<?php echo U('recommend');?>"><img src="/Public/mobile/img/user_invite.png">邀请好友</a></li>
        <a href="<?php echo U('logout');?>" class="input_btn">安全退出</a>
    </ul>
    <a href="<?php echo U('logout');?>" class="input_btn">安全退出</a>

    <script type="text/javascript" src="/Public/xin_mobile/static/js/rem.js"></script>
<script>

$(function(){

    $('#kefu').click(function(event) {
        $('#ts').toggle();
        $('#x').toggle();
     });

     $('#x').click(function(event) {
        $('#ts').hide();
        $('#x').hide();
     });

})

</script>
<link type="text/css" rel="stylesheet" href="/Public/xin_mobile/static/css/foot.css" />
<style>

    .footer{background:url('/Public/mobile/img/zxbg.jpg') no-repeat;background-size:100% 100%;}

.footer>a{    width: 25%;}

    .footer>a:nth-child(1),.footer>a:nth-child(2),.footer>a:nth-child(3),.footer>a:nth-child(4){
        margin-top: 0.1rem;
    }
</style>
<footer class=footer>
<a href="<?php echo U('mobile/index');?>"><img src="/Public/xin_mobile/static/picture/rbtn_home_hot_normal.png"></a>
<a href="<?php echo U('mobile/TradingHall');?>"><img src="/Public/xin_mobile/static/picture/rbtn_home_product_checked.png"></a>
<!-- <a id="kefu"><img src="/Public/xin_mobile/static/picture/icon_sanbiao_home.png"></a> -->
<!-- <a href="tencent://message/?uin=<?php echo getInfo('qq');?>&Site=&Menu=yes"><img src="/Public/xin_mobile/static/picture/icon_sanbiao_home.png"></a> -->
<!-- <a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo getInfo('qq');?>&site=qq&menu=yes"><img src="/Public/xin_mobile/static/picture/icon_sanbiao_home.png"></a> -->
<!-- <a href="<?php echo U('user/customer');?>"><img src="/Public/xin_mobile/static/picture/icon_sanbiao_home.png"></a> -->
<a href="<?php echo U('about/index');?>"><img src="/Public/xin_mobile/static/picture/rbtn_home_find_normal.png"></a>
<a href="<?php echo U('user/person');?>"><img src="/Public/xin_mobile/static/picture/rbtn_home_my_normal.png"></a></footer>



</div>
</body>
</html>