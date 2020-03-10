<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <title>登录</title>
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
    .input_text{background:none;padding:.1rem .3rem !important;border-radius:10px;width: 85%;
    margin: auto;border-bottom: 2px solid #e0e0e0;}
    .input_text.log input{width:100%;background:none;color:#fff;}
    .input_btn{background: linear-gradient(to right, #fdc727 , #ea9a41);border-radius: 40px;}
</style>
<div class="mobile">
    <div >
        <a class="goback" href="<?php echo U('mobile/index');?>"><img src="/Public/mobile/img/goback.png" /></a>
        <!-- <div class="othertop-font">登录</div> -->
    </div>
    <div class="header-nbsp"></div>
    <div style="text-align: center;margin: 60px 0;">
        <img src="/Public/mobile/img/2121.png" width="50%">
        <!-- <div style="font-size: 44px;font-weight: bold;padding: 50px 0;color: #4f79bc;">丰  益  国  际</div> -->
    </div>
        <div class="login_bg">
	        <form action="<?php echo U('login');?>" method="post">
	            <div class="input_text log">
	            	<!-- <label>账号</label> -->
                    <input type="text" name="account" placeholder="请输入手机号码">
                </div>
                <div class="input_text log">
	            	<!-- <label>密码</label> -->
                    <input type="password" name="password" placeholder="请输入登录密码">
                </div>
                <div class="error_tips"></div>
                <input type="submit" class="input_btn" value="登录" />
                <p class="p2 re"><a href="reg.html">注册账号</a></p>
                <?php if(smsStatus('18004') == 1): ?><p class="p1"><a href="forget.html">忘记密码?</a></p><?php endif; ?>
	        </form>
        </div>
    </div>
</body>
</html>