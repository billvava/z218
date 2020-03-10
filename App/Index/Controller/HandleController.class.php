<?php
//dezend by http://www.yunlu99.com/
namespace index\Controller;

class HandleController extends \Think\Controller
{
    

    // public function test(){
      // echo 'test';exit;
    // }
    //订单每日分红
    public  function jiesuan(){

        $check = self::checkJie() ;
        if($check){
            echo 'ok' ;
            exit();
        }


        $list = M('invest t')
            ->join('LEFT JOIN item as i on t.pid = i.id')
            ->where(array('stype'=>0,'pay_status'=>1))
            ->field('t.id,t.uid,surplus_bonus,t.money,i.title,i.rate')
            ->select();

        foreach ($list as $v){
           // $item = M('item')->where(array('id'=>$v['pid']))->find();
            $money = $v['money']*$v['rate']/100;
            if ($money>=$v['surplus_bonus']){
                $money = $v['surplus_bonus'];
                M('invest')->where(array('id'=>$v['id']))->setInc('stype',1);
            }
            M('invest')->where(array('id'=>$v['id']))->setDec('surplus_bonus',$money);
            $rs = M('user')->where(array('id'=>$v['uid']))->setInc('money',$money);
//                        print_r($rs);die;
            if ($rs){
addFinance($v['uid'], $money, $v['title'] . '；分红收益' . $money . '元', 1, getUserField($v['uid'], 'money'));
            }
        }

       self::addJie($list);
        echo 'ok end' ;
        exit();

    }

    private function addJie($note){
        $data = [
            'title'=>json_encode($note),
            'time'=>time(),
        ];
       $j = M('jiesuan_log')->add($data);
        return $j ;
    }

    private function checkJie(){
        $todayFirst   = strtotime(date("Y-m-d", time()));//php当天 00：00：00 时间戳
        $fenhong_list = getData('jiesuan_log', 1, 'time >= \'' . $todayFirst . '\'');
        return $fenhong_list;
    }


    public function jiesuan1()
    {
        header('Content-type:text/html; charset=utf-8');
        $time = date('Y-m-d H:i:s');

        $todayFirst = strtotime(date("Y-m-d", time()));//php当天 00：00：00 时间戳

        if (getInfo('jiesuan') == 0) {
            echo '平台暂停回款！' . $time;
        } else {
            echo $time . '<hr/>';
            $list = getData('invest_list', 'all', 'time1 <= \'' . $time . '\' AND status = 0', '0,1');

            if (!empty($list)) {
                foreach ($list as $l) {
                    $id     = $l['id'];
                    $money  = $l['pay1'];
                    $money1 = $l['money1'];
                    $title  = $l['title'];
                    $num    = $l['num'];
                    $uid    = $l['uid'];
                    $data   = array('time2' => date('Y-m-d H:i:s'), 'pay2' => $money, 'status' => 1);
                    echo getUserPhone($uid) . ' ' . $title . ' 第' . $num . '期到账' . $money . '元！<br/>';

                    if (editData('invest_list', $data, 'id=\'' . $id . '\'')) {
                        if (0 < $money) {
                            addFinance($uid, $money, $title . ' 第' . $num . '期收益' . $money . '元', 1, getUserField($uid, 'money'));
                            setNumber('user', 'money', $money, 1, 'id=\'' . $uid . '\'');
                            setNumber('user', 'income', $money1, 1, 'id=\'' . $uid . '\'');
                            sendSms(getUserPhone($uid), '18003', $money);
                        }
                    }
                }
            }
        }
        $url = 'http://' . $_SERVER['HTTP_HOST'] . $_SERVER['PHP_SELF'] . '?' . $_SERVER['QUERY_STRING'];
        echo '<script type="text/javascript">
            setInterval(refresh,1000)
            function refresh(){
                window.location.href = "' . $url . '";
            }
        </script>';
    }

    public function FengHong()
    {
        $todayFirst   = strtotime(date("Y-m-d", time()));//php当天 00：00：00 时间戳
        $fenhong_list = getData('fenhong_log', 1, 'time >= \'' . $todayFirst . '\'');
        $utinfo       = M('reward')->where(1)->find();//团队奖参数
        if (empty($fenhong_list)) {
            $user_list      = getData('user', 'all');
            $Firstyesterday = strtotime(date("Y-m-d", strtotime("-1 day")));
            $Firstyesterday = date("Y-m-d H:i:s", $Firstyesterday);
            $Lastyesterday  = $todayFirst - 1;
            $Lastyesterday  = date("Y-m-d H:i:s", $Lastyesterday);
            $data['time']   = [['gt', $Firstyesterday], ['lt', $Lastyesterday]];
            $s_money        = M('invest')->where($data)->sum('money');
            $money          = $s_money * $utinfo['company_dividends'] / 100;
            foreach ($user_list as $v) {
                $uid            = $v['id'];
                $datas['top']   = ['eq', $uid];
                $datas['value'] = ['gt', 0];
                $datas['time']  = [['gt', $Firstyesterday], ['lt', $Lastyesterday]];
                $u_con          = M('user')->where($datas)->count();
                if ($u_con >= $utinfo['daily_tuijian']) {
                    setNumber('user', 'money', $money, 1, 'id=\'' . $uid . '\'');
                    addFinance($uid, $money, '推荐会员达标元奖励公司当日分红1%，即' . $money . '元！', 1, getUserField($uid, 'money'));
                }
            }
            $add['time'] = time();
            M('fenhong_log')->add($add);
        }
    }

    public function qiandao()
    {
        $uid = $_SESSION['uid'];

        if (empty($uid)) {
            $data = array('code' => '001', 'msg' => '请登录后再进行签到！');
            $this->ajaxReturn($data);
        }

        $user  = getData('user', 1, 'id = \'' . $uid . '\'');
        $today = date('Y-m-d 00:00:00');

        if ($today <= $user['qiandao']) {
            $data = array('code' => '002', 'msg' => '每天只能签到一次！');
            $this->ajaxReturn($data);
        }

        if ($user['auth'] != 1) {
            $data = array('code' => '003', 'msg' => '实名认证后再进行签到！');
            $this->ajaxReturn($data);
        } else {
            $money = getReward('qiandao');
            $data  = array('code' => '000', 'msg' => '签到成功，获得' . $money . '元！');
            editData('user', array('qiandao' => date('Y-m-d H:i:s')), 'id=\'' . $uid . '\'');
            addFinance($uid, $money, '每日签到，获得奖励' . $money . '元', 1, getUserField($uid, 'money'));
            setNumber('user', 'money', $money, 1, 'id=\'' . $uid . '\'');
            setNumber('user', 'income', $money, 1, 'id=\'' . $uid . '\'');
            $this->ajaxReturn($data);
        }
    }

    public function zhuce()
    {
        $phone    = getValue('phone');
        $code     = getValue('code');
        $randcode = $_SESSION['smsRandCode'];

        $smsCode = getValue('smsCode');
        if (!check_sms($smsCode, $phone)) {
            ajaxReturn('验证码错误或已过期');
        }

        if (empty($randcode)) {
            $this->ajaxReturn(array('-1', '网络繁忙，请刷新后重试！'));
        }

        if (empty($code)) {
            $this->ajaxReturn(array('-2', '请输入图形验证码后再提交！'));
        }

        if ($code != $randcode) {
            $this->ajaxReturn(array('-2', '图形验证码不正确2！'));
        }

        unset($_SESSION['smsRandCode']);

        if (!judge($phone, 'phone')) {
            $this->ajaxReturn(array('0', '手机号码格式不正确！'));
        }

        if (getData('user', 1, 'phone=\'' . $phone . '\'')) {
            $this->ajaxReturn(array('0', '该手机号已存在！'));
        }

        $rand                   = rand(1000, 9999);
        $_SESSION['regSmsCode'] = $rand;
        // $data = sendSms($phone, '18001', $rand);

        // if ($data['code'] == '000') {
        // $this->ajaxReturn(array('1', '发送成功！'));
        // }
        // else {
        // $this->ajaxReturn(array('0', $data['msg'] . '！'));
        // }
    }

    public function zhaohui()
    {
        $phone    = getValue('phone');
        $code     = getValue('code');
        $randcode = $_SESSION['smsRandCode'];

        if (empty($randcode)) {
            $this->ajaxReturn(array('-1', '网络繁忙，请刷新后重试！'));
        }

        if (empty($code)) {
            $this->ajaxReturn(array('-2', '请输入图形验证码后再提交！'));
        }

        if ($code != $randcode) {
            $this->ajaxReturn(array('-2', '图形验证码不正确！'));
        }

        unset($_SESSION['smsRandCode']);

        if (!judge($phone, 'phone')) {
            $this->ajaxReturn(array('0', '手机号码格式不正确！'));
        }

        if (!getData('user', 1, 'phone=\'' . $phone . '\'')) {
            $this->ajaxReturn(array('0', '该手机号不存在！'));
        }

        $rand                      = rand(1000, 9999);
        $_SESSION['forgetSmsCode'] = $rand;
        $data                      = sendSms($phone, '18004', $rand);

        if ($data['code'] == '000') {
            $this->ajaxReturn(array('1', '发送成功！'));
        } else {
            $this->ajaxReturn(array('0', $data['msg'] . '！'));
        }
    }

    public function smsrand()
    {
        $rand                    = rand(1000, 9999);
        $_SESSION['smsRandCode'] = $rand;
        $this->ajaxReturn($rand);
    }

    public function pay()
    {
        $key_   = getAlipayInfo('appkey');
        $md5key = getAlipayInfo('md5key');
        $data   = $_POST ?: $_GET;
        file_put_contents('./testfile.log', json_encode($data) . '#000');
        $getkey = trim($_REQUEST['key']);
        $tno    = $orderid    = trim($_REQUEST['tno']);
        $payno  = trim($_REQUEST['payno']);
        $money  = trim($_REQUEST['money']);
        $sign   = trim($_REQUEST['sign']);
        $typ    = (int)$_REQUEST['typ'];

        if ($typ == 1) {
            $typname = '手工充值';
        } elseif ($typ == 2) {
            $typname = '支付宝充值';
        } elseif ($typ == 3) {
            $typname = '财付通充值';
        } elseif ($typ == 4) {
            $typname = '手Q充值';
        } else {
            if ($typ == 5) {
                $typname = '微信充值';
            }
        }

        if (!$tno) {
            exit('没有订单号');
        }

        if (!$payno) {
            exit('没有付款说明');
        }

        if ($getkey != $key_) {
            exit('KEY错误');
        }

        if (strtoupper($sign) != strtoupper(md5($tno . $payno . $money . $md5key))) {
            exit('签名错误');
        }

        $data = $_POST ?: $_GET;

        if (empty($orderid)) {
            file_put_contents('./testfile.log', json_encode($data) . '#0');
            exit('ERROR');
        }

        $recharge = getData('recharge', 1, 'orderid=\'' . $orderid . '\'');

        if ($recharge['status'] == 1) {
            file_put_contents('./testfile.log', json_encode($data) . '#1');
            exit('SUCCESS');
        }
        file_put_contents('./testfile.log', json_encode($data) . '#3');
        $uid   = $recharge['uid'];
        $money = floatval($recharge['money']);
        $type  = $recharge['type'];

        if (editData('recharge', array('status' => 1, 'time2' => date('Y-m-d H:i:s')), 'orderid = \'' . $orderid . '\'')) {
            addFinance($uid, $money, $type . '入款' . $money . '元', 1, getUserField($uid, 'money'));
            setNumber('user', 'money', $money, 1, 'id=\'' . $uid . '\'');
            $tid = getUserField($uid, 'top');
            setRechargeRebate($tid, $money);
        }

        header('Content-type:text/html; charset=utf-8');
        exit('支付成功！');
    }

    public function test()
    {
        $item = getData('item', 'all', 'auto1 > 0 AND auto2 > 0 AND auto1 < auto2 AND percent < 100');
        dump($item);

        foreach ($item as $i) {
            $iid  = $i['id'];
            $data = $i;
            $h    = date('H');
            if (9 <= $h && $h <= 24 && $data['percent'] != 100 && 0 < $data['auto1'] && 0 < $data['auto2'] && $data['auto1'] < $data['auto2']) {
                $m     = 30;
                $auto1 = round($data['auto1'] / $m, 2) * 100;
                $auto2 = round($data['auto2'] / $m, 2) * 100;
                $auto  = mt_rand($auto1, $auto2) / 100;

                if (100 < $data['percent'] + $auto) {
                    $auto = 100 - $data['percent'];
                }

                setNumber('item', 'percent', $auto, 1, 'id=\'' . $iid . '\'');
            }
        }
    }

    public function delete()
    {
    }

    public function sendCode()
    {
        $mobile = I('post.mobile');
        if (empty($mobile)) {
            $mes['status']  = 0;
            $mes['message'] = '手机号码不能为空';
            $this->ajaxReturn($mes);
        }
        if (!empty($_SERVER["HTTP_CLIENT_IP"])) {
            $cip = $_SERVER["HTTP_CLIENT_IP"];
        } elseif (!empty($_SERVER["HTTP_X_FORWARDED_FOR"])) {
            $cip = $_SERVER["HTTP_X_FORWARDED_FOR"];
        } elseif (!empty($_SERVER["REMOTE_ADDR"])) {
            $cip = $_SERVER["REMOTE_ADDR"];
        }

        $result = sendMsg($mobile);

        $this->ajaxReturn($result);
        // return json_encode($result);
    }
}
