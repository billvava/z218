<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html style='font-size: 25.875px;'>
<head>
<meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
        <title> 丰益币 </title>
<link type="text/css" rel="stylesheet" href="/Public/xin_mobile/css/app.css" />
<!--em标准js代码，请放在页面的最上方，前面最好不要再有JS代码或JS文件-->
     <script src="/Public/xin_mobile/js/jquery-1.js"></script>

<style type="text/css" media="screen">

</style>

</head>

<body>

<div id="app">
    <div id="wallet" class="view">
        <div class="header">
            <h1> 丰益币 </h1>
        </div>
        <div class="dogxinfo">
            <div class="dayprice">
                <h4><span>$ </span><?php echo ($price_cur); ?></h4>
            </div>
            <div class="rose">
                <span><?php echo ($bb); ?></span>
                <span><b></b> （<?php echo (round($price_rate,2)); ?>%）</span>
            </div>
        </div>
        <div class="charts">
            <div id="myChart"></div>
        </div>


    </div>
</div>

<link type="text/css" rel="stylesheet" href="/Public/xin_mobile/static/css/foot.css" />
<style>
   .news_detail{background:none;}

    .footer{background:url('/Public/mobile/img/zxbg.jpg') no-repeat;background-size:100% 100%;}

.footer>a{    width: 25%;}

    .footer>a:nth-child(1),.footer>a:nth-child(2),.footer>a:nth-child(3),.footer>a:nth-child(4){
        margin-top: 0.1rem;
    }
    .footer {
    z-index: 5555;
;
    overflow: hidden;
    height: 2.2rem;
    position: fixed;
    bottom: 0;
    width: 100%;
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



<script src="/Public/xin_mobile/js/echarts.min.js"></script>
<script>
    $(".size").css("font-size", $("body").width() * 0.0625 + "px")
    var myChart = echarts.init(document.getElementById('myChart'));
    var src = <?php echo ($date_str); ?>,
        src1 = <?php echo ($price); ?>,
        // num = 1;
        option = {
            color: ["red", "red"],
            tooltip: {
                trigger: 'axis'
            },

            textStyle: { //图例文字的样式
                color: '#fff',
            },
            grid: {
                left: "-5%",
                right: "5%",
                top: "3%",
                bottom: "5%",
                containLabel: !0
            },
            toolbox: {
                feature: {
                    saveAsImage: {}
                }
            },
            xAxis: [{
                type: "category",
                data: src,
                boundaryGap: !1,
                splitLine: {
                    show: !1
                },
                axisLabel: {
                    show: !0,
                    textStyle: {
                        color: "#fff",
                        fontSize: "10"
                    }
                },
                axisLine: {
                    lineStyle: {
                        color: "transparent"
                    }
                }
            }],
            yAxis: [{
                type: "value",
                splitLine: {
                    show: !1
                },
                axisLabel: {
                    show: !0,
                    textStyle: {
                        color: "transparent",
                        fontSize: "16"
                    }
                },
                axisLine: {
                    lineStyle: {
                        color: "transparent"
                    }
                }
            }],
            series: [{
                data: src1,
                type: "line",
                smooth: !0,
                symbol: "circle",
                symbolSize: 3,
                itemStyle: {
                    normal: {
                        color: "red",
                        lineStyle: {
                            color: "red",
                            width: "2"
                        }
                    }
                }
            }]
        };
    myChart.setOption(option);
</script>

</html>