<?php
//dezend by http://www.yunlu99.com/
namespace index\Controller;

class UserController extends \Think\Controller
{
    public function _initialize()
    {
        if (!isLogin()) {
            header('Location:' . U('mobile/login'));
        }

    }

    //获取旗下所有用户信息
    public function getScounts($uid)
    {
        $ins2 = [];
        if ($uid) {
            $ins = array($uid);
            do {
                $insf['top'] = array('in', $ins);
                $uinfo       = M('user')->where($insf)->field('id,phone,value')->select();
                $ins         = '';
                foreach ($uinfo as $k => $v) {
                    $ins[]  = $v['id'];
                    $ins2[] = $v ;
                }
            } while ($ins);
        }

        return $ins2;
    }

    public function person()
    {

        $uid     = $_SESSION['uid'];
        $insId   = $this->getScounts($uid);
        $u_count = count($insId);

        $yj_money = array_sum(array_column($insId,'value'));

        $user = getData('user', 1, 'id = \'' . $uid . '\'');
        $tnum = M('user')->where(array('top' => $uid))->count(1);
        $this->assign('uid', $uid);
        $this->assign('user', $user);
        $this->assign('yj_money', $yj_money+$user['value']);
        $this->assign('u_count', $u_count+1);
        $this->assign('tnum', $tnum);

        $this->display();
    }


    public function index()
    {
        $this->display();
    }

    public function fund()
    {
        $uid     = $_SESSION['uid'];
        $finance = getData('finance', 'all', 'uid=\'' . $uid . '\'', '', 'id desc');
        $this->assign('finance', $finance);
        $this->display();
    }

    public function certification()
    {
        $uid    = $_SESSION['uid'];
        $user     = M('user')->where(array('id'=>$uid))->find();
        if ($_POST) {
            $send   = getValue('send');
            $padian   = getValue('padian');
            if ($user['padian']<$padian){
                msg('您的可转让帕点不足！');
            }
            if ($send) {
               M('user')->where(array('phone' => $send))->setInc('padian', $padian);
               $data['pid'] = $uid;
               $data['uid'] = $send;
               $data['padian'] = $padian;
               $data['time'] = time();
               $rs =  M('padian_record')->add($data);
            }
            if ($rs) {
                msg('转让帕点成功！', 2, U('person'));
            } else {
                msg('转让帕点失败！');
            }
        } else {

            if ($user['padian']<1) {
                msg('对不起，您还没有帕点！',2, U('person'));
            }
            $datae['top']   = ['eq', $uid];
            $datae['padian'] = ['eq', 0];
            $top_list = M('user')->where($datae)->select();
//            print_r($top_list);die;
            $datas['top']   = ['eq', $uid];
            $datas['padian'] = ['gt', 0];
            $pd_u     = M('user')->where($datas)->find();
            $padian_list = M('padian_record')->where(array('pid'=>$uid))->select();
//            print_r($padian_list);die;
            $this->assign('user', $user);
            $this->assign('top_list', $top_list);
            $this->assign('pd_u', $pd_u);
            $this->assign('padian_list', $padian_list);
            $this->display();
        }
    }

    public function pwd_login()
    {
        if ($_POST) {
            $uid    = $_SESSION['uid'];
            $user   = getData('user', 1, 'id = \'' . $uid . '\'');
            $oldpwd = getValue('oldpwd');
            $pwd    = getValue('pwd');
            $pwd2   = getValue('pwd2');

            if ($user['password'] != md5($oldpwd)) {
                msg('原登录密码错误！');
            }

            if (strlen($pwd) < 6 || 16 < strlen($pwd)) {
                msg('请输入6-16位密码！');
            }

            if (strlen($pwd2) < 6 || 16 < strlen($pwd2)) {
                msg('请再次输入6-16位密码！');
            }

            if ($pwd != $pwd2) {
                msg('两次密码不一致！');
            }

            if (editData('user', array('password' => md5($pwd)), 'id=\'' . $uid . '\'')) {
                msg('修改成功！');
            } else {
                msg('修改失败！');
            }
        } else {
            $this->display();
        }
    }

    public function pwd_pay()
    {
        if ($_POST) {
            $uid    = $_SESSION['uid'];
            $user   = getData('user', 1, 'id = \'' . $uid . '\'');
            $oldpwd = getValue('oldpwd');
            $pwd    = getValue('pwd');
            $pwd2   = getValue('pwd2');

            if ($user['password2'] != md5($oldpwd)) {
                msg('原交易密码错误！');
            }

            if (strlen($pwd) < 6 || 16 < strlen($pwd)) {
                msg('请输入6-16位密码！');
            }

            if (strlen($pwd2) < 6 || 16 < strlen($pwd2)) {
                msg('请再次输入6-16位密码！');
            }

            if ($pwd != $pwd2) {
                msg('两次密码不一致！');
            }

            if (editData('user', array('password2' => md5($pwd)), 'id=\'' . $uid . '\'')) {
                msg('修改成功！');
            } else {
                msg('修改失败！');
            }
        } else {
            $this->display();
        }
    }

    public function recharge()
    {
        if ($_POST) {
            $uid   = $_SESSION['uid'];
            $money = getValue('money', 'float');
            $type  = getValue('type', 'str');

            if ($money < 0) {
                msg('小于最低充值金额0元！');
            }
            if ($type == 'bank') {
                $v               = getData('info');
                $where['status'] = '1';
                $where['uid']    = $uid;
                $recharge        = M("recharge"); // 实例化User对象
                $tixian          = $recharge->where($where)->sum('money');

                $tixiana = $tixian ? $tixian : 0;

                if ($v['icar'] > $tixiana) {
                    msg('您的充值金额没有达到 ' . $v['icar'] . '查看不了银行信息');
                }
            }

            $orderid = 'PAY' . time() . rand(100, 999);

            $data = array('orderid' => $orderid, 'uid' => $uid, 'money' => $money, 'type' => getPayName($type), 'status' => 0, 'time' => date('Y-m-d H:i:s'), 'time2' => '0000-00-00 00:00:00');

            if (addData('recharge', $data)) {
                if ($type == 'wechat') {
                    gotoWechatPay($money);
                } elseif ($type == 'alipay') {
                    gotoAlipay($money);
                } elseif ($type == 'bank') {
                    header('Location:' . U('bank', 'money=' . $money . '&orderid=' . $orderid));
                } elseif ($type == 'online_wechat') {
                    header("location:/codepay/codepay.php?user=" . $uid . "&price=" . $money . "&type=3&orderid=" . $orderid);
                /* 	$token = md5($money . '#' . $uid . '#token' . $orderid);
                    $online = getData('online', 1);
                    $url = $online['domain'] . '/index.php/H5/weiH5Pay/money/' . $money . '/uid/' . $uid . '/orderid/' . $orderid . '/token/' . $token . '.html';
                    $this->assign('url', $url);
                    $this->assign('out_trade_no', $orderid);
                    $this->display('weipay'); */
                } elseif ($type == 'wechat_scan') {
                    $token  = md5($money . '#' . $uid . '#token' . $orderid);
                    $online = getData('online', 1);
                    $url    = $online['domain'] . '/index.php/Scan/pay/money/' . $money . '/uid/' . $uid . '/orderid/' . $orderid . '/token/' . $token . '.html';
                    $this->assign('url', $url);
                    $this->assign('out_trade_no', $orderid);
                    $this->display('weipay');
                } else {
                    if ($type == 'online_alipay') {
                        header("location:/codepay/codepay.php?user=" . $uid . "&price=" . $money . "&type=1&orderid=" . $orderid);
                        exit('zhifub');
                        /* 	$token = md5($money . '#' . $uid . '#token' . $orderid);
                            $online = getData('online', 1);
                            $url = $online['domain'] . '/index.php/Scan/alipay/money/' . $money . '/uid/' . $uid . '/orderid/' . $orderid . '/token/' . $token . '.html';
                            $this->assign('url', $url);
                            $this->assign('out_trade_no', $orderid);
                            $this->display('weipay'); */
                    }
                }
            } else {
                msg('系统繁忙，暂时无法充值！');
            }
        } else {
            $this->display();
        }
    }

    public function scan()
    {
        $type  = getValue('type');
        $money = getValue('money', 'float');

        if ($type == 'wechat') {
            $qr = getInfo('qr_wechat_img');
        } else {
            $qr = getInfo('qr_alipay_img');
        }

        $this->assign('qrcode', $qr);
        $this->assign('money', $money);
        $this->display();
    }

    public function bank()
    {
        $orderid = getValue('orderid');

        if (empty($orderid)) {
            msg('参数有误！', 2, U('person'));
        }

        if ($_POST) {
            $name   = getValue('name');
            $reason = getValue('reason');
            $data   = array('reason' => '付款人：' . $name . '<br/>转账附言：' . $reason);

            if (editData('recharge', $data, 'orderid=\'' . $orderid . '\'')) {
                msg('提交成功，等待入账！', 2, U('person'));
            } else {
                msg('提交失败！', 2, U('person'));
            }
        } else {
            $money = getValue('money', 'float');
            $this->assign('money', $money);
            $this->assign('orderid', $orderid);
            $this->display();
        }
    }

    public function add_card()
    {
        $uid = $_SESSION['uid'];
        if ($_POST) {
            $name   = getValue('name');
            $alipay = getValue('alipay');
            // $account = getValue('account');

            if (empty($name)) {
                msg('请输入姓名！');
            }

            if (empty($alipay)) {
                msg('请输入支付宝账号！');
            }
            header('Content-type:text/html; charset=utf-8');

            $data['name']   = $name;
            $data['alipay'] = $alipay;
            // print_r($data);die;
            // array('name' => $name, 'alipay' => $alipay);
            $rs = M('user')->where(array('id' => $uid))->save($data);
            if ($rs) {
                msg('添加成功！');
            } else {
                msg('添加失败！');
            }
        } else {
            $user = M('user')->where(array('id' => $uid))->find();
            // print_r($user);die;
            $this->assign('list', $user);
            $this->assign('uid', $uid);
            $this->display();
        }
    }

    public function del_card()
    {
        $id = getValue('id', 'int');

        if (delData('bank', 'id=\'' . $id . '\'')) {
            msg('删除成功！', 2, U('add_card'));
        } else {
            msg('删除失败！', 2, U('add_card'));
        }
    }

    public function cash()
    {
        if ($_POST) {
            $pwd    = getValue('pwd');
            $bid    = getValue('bank');
            $money  = getValue('money');
            $uid    = $_SESSION['uid'];
            $user   = getData('user', 1, 'id = \'' . $uid . '\'');
            $bank   = getData('bank', 1, 'id = \'' . $bid . '\'');
            $infos  = getData('info');
            $moneys = $money + $money * $infos['charged'] / 100;
            $invest = getData('invest', 1, 'uid = \'' . $uid . '\'');
            $zong   = $user['money'] - $user['dongjiemoney'];
            if ($zong < $money) {
                msg('您的余额被冻结（' . $user['dongjiemoney'] . '），请联系管理员', 2, U('user/recharge'));
            }
            if ($user['password2'] != md5($pwd)) {
                msg('交易密码不正确！');
            }

            if ($user['money'] < $moneys) {
                msg('提现金额大于会员余额！');
            }

            if (empty($user['name']) || empty($user['alipay'])) {
                msg('请填写支付宝后再进行提现！', 2, U('User/add_card'));
            }

            // if ($bank['uid'] != $uid || empty($bank)) {
            // 	msg('提现银行卡暂时不能使用！');
            // }

            // if (empty($invest)) {
            // 	msg('未投资不能提现！');
            // }

            $v = getData('info');
            // $msg = (explode(",",$v['allowable']));
            // if($msg['1'] == 0){
            // 	$tixianri = '日';

            // }else{
            // 	$tixianri = $msg['1'];
            // }
            $msg = (explode("|", $v['allowable']));

            $time  = time();
            $msg22 = $msg['0'];
            $msg33 = $msg['1'];
            // $err_msg = '请在周一至周五'.$msg22.':00-'.$msg33.':00 提交申请!';
            $err_msg = '请在' . $msg22 . ':00-' . $msg33 . ':00 提交申请!';
            $week    = date('w', $time);
            $hour    = date('H', $time);
            // if($week < 1 || $week > 5){
            // 	msg($err_msg);
            // 	exit;
            // }
            if ($hour < $msg22 || $hour > $msg33) {
                msg($err_msg);
                exit;
            }

            $cash = M("cash"); // 实例化User对象
            $uid  = $_SESSION['uid'];

            $today = (date('Y-m-d 00:00:00'));

            $data['time']   = array('egt', $today);
            $data['uid']    = $uid;
            $data['status'] = '1';
            $userCount      = $cash->where($data)->count("id");
            $data           = array('uid' => $uid, 'name' => $user['name'], 'alipay' => $user['alipay'], 'money' => $money, 'status' => 0, 'time' => date('Y-m-d H:i:s'), 'time2' => '0000-00-00 00:00:00');

            if ($userCount >= $v['withdrawals']) {
                if (addData('cash', $data)) {
                    $shouxu = $money * $v['charged'] / 100;
                    $Charge = $shouxu + $money;
                    addFinance($uid, $Charge, '余额提现' . $money . '元手续费:' . $shouxu . '', 2, getUserField($uid, 'money'));
                    setNumber('user', 'money', $Charge, 2, 'id=\'' . $uid . '\'');
                    msg('提现成功！');
                } else {
                    msg('提现失败！');
                }
                //echo $err_msg;exit;
            } else {
                if (addData('cash', $data)) {
                    addFinance($uid, $money, '余额提现' . $money . '元', 2, getUserField($uid, 'money'));
                    setNumber('user', 'money', $money, 2, 'id=\'' . $uid . '\'');
                    msg('提现成功！');
                } else {
                    msg('提现失败！');
                }
            }
        } else {
            $uid  = $_SESSION['uid'];
            $user = M('user')->where(array('id' => $uid))->find();
            $info = getData('info');
            $this->assign('user', $user);
            $this->assign('info', $info);
            $this->display();
        }
    }

    public function interest()
    {
        $uid    = $_SESSION['uid'];
        $invest = getData('invest_list', 'all', 'uid=\'' . $uid . '\' AND status = 1 AND pay1 <> 0', '', 'time2 desc');
        $this->assign('invest', $invest);
        $this->display();
    }

    public function invest()
    {
        $uid    = $_SESSION['uid'];
        $invest = getData('invest', 'all', 'uid = \'' . $uid . '\' AND pay_status = 1
', '', 'id desc');
        $this->assign('invest', $invest);
        $this->display();
    }

    //团队级别详情
    public function team()
    {
        $uid = $_SESSION['uid'];
        $id = getValue('id', 'int');
        if($id==1){
            $list = getUserChildren($uid,$id) ;
        }else{
            $list1 = getUserChildren($uid,$id-1) ;
            $list2 = getUserChildren($uid,$id) ;
            $list = array_diff_key($list2,$list1);
        }
        $this->assign('list', $list);
        $this->display();
    }


    public function tuandui(){
        $uid = $_SESSION['uid'];
        $user = M('user')->where(array('id'=>$uid))->find();
        $dai   = $this->getScount($uid);
        $list[1] = count($dai);

        $j=1;
        do{
            if ($dai){
                $cid   = implode(',', $dai);
                $c     = array('in', $cid);
                $dai   = $this->getScount($c);
                $list[$j+1] = count($dai);
            }else{
                $list[$j+1] = 0;
            }
            $j++;
        }while($j<28);
//        var_dump($user);die;
        $this->assign('list', $list);
        $this->display();
//        var_dump($list);die;

    }



    public function getScount($uid)
    {
        if ($uid) {
            $uinfo = M('user')->where(array('top' => $uid))->select();

            foreach ($uinfo as $k => $v) {
                $ins[] = $v['id'];
            }

            return $ins;
        }
    }

    public function details()
    {
        $uid = $_SESSION['uid'];
        $id  = getValue('id', 'int');

        if (empty($id)) {
            msg('参数缺失！', 2, U('invest'));
        }

        $invest = getData('invest', 1, 'id=\'' . $id . '\'');
        $list   = getData('invest_list', 'all', 'uid = \'' . $uid . '\' AND iid = \'' . $id . '\'', '', 'id asc');
        if (empty($list) || empty($invest)) {
            msg('系统繁忙！', 2, U('invest'));
        }

        $this->assign('invest', $invest);
        $this->assign('list', $list);
        $this->display();
    }

    public function contract()
    {
        $uid = $_SESSION['uid'];
        $id  = getValue('id', 'int');

        if (empty($id)) {
            msg('参数缺失！', 2, U('invest'));
        }

        $invest = getData('invest', 1, 'id=\'' . $id . '\'');
        // print_r($invest);die;
        $list = getData('invest_list', 'all', 'uid = \'' . $uid . '\' AND iid = \'' . $id . '\'', '', 'id desc');
        if (empty($list) || empty($invest)) {
            msg('系统繁忙！', 2, U('invest'));
        }

        $this->assign('invest', $invest);
        $this->assign('list', $list);
        $this->display();
    }

    public function recharge_record()
    {
        $uid      = $_SESSION['uid'];
        $recharge = getData('recharge', 'all', 'uid = \'' . $uid . '\'', '', 'id desc');
        $this->assign('recharge', $recharge);
        $this->display();
    }

    public function cash_record()
    {
        $uid  = $_SESSION['uid'];
        $cash = getData('cash', 'all', 'uid = \'' . $uid . '\'', '', 'id desc');
        $this->assign('cash', $cash);
        $this->display();
    }

    public function recommend()
    {
        $uid  = $_SESSION['uid'];
        $data = getData('user', 'all', 'top = \'' . $uid . '\'', '', 'id desc');
        $this->assign('data', $data);
        $this->assign('uid', $uid);
        $this->display();
    }

    public function tuiguang()
    {
        $uid = $_SESSION['uid'];

        $recharge = M("recharge"); // 实例化User对象

        $cash    = M("cash"); // 实例化User对象
        $finance = M("user"); // 实例化User对象
        $results = $finance->order('time desc')->select();

        //$where = sUserList();

        if (isset($_GET["reg_ip"])) {
            if (trim($_GET["reg_ip"]) != "") {
                $where .= " and reg_ip like  '%" . trim($_GET["reg_ip"]) . "%'";
            }
        }
        $wherea['status'] = '1';
        $where['status']  = '1';
        $result           = $this->GetTeamMember($results, $uid);//所有分销
        //dump($result);exit;
        $arraya = '';
        foreach ($result as $key => $value) {
            $arraya .= ($value['id']) . ',';
            $wherea['uid']             = $value['id'];
            $result[$key]['sum']       = $recharge->where($wherea)->sum('money');
            $result[$key]['tixiansum'] = $cash->where($wherea)->sum('money');
        }

        $arraaa = explode(',', $arraya);
        $arraaa = array_unique($arraaa);//内置数组去重算法
        $data   = implode(',', $arraaa);
        $data   = trim($data, ',');//trim — 去除字符串首尾处的空白字符（或者其他字符）,假如不使用，后面会多个逗号

        $where['uid'] = array("in", $data);

        $tixian   = $recharge->where($where)->sum('money');
        $chongzhi = $cash->where($where)->sum('money');

        $this->assign('results', $results);
        $this->assign('tixian', $tixian);
        $this->assign('chongzhi', $chongzhi);
        $this->assign('uid', $uid);
        $this->assign('results', $result);

        $this->display();
    }

    public function GetTeamMember($members, $mid)
    {
        $Teams = array();//最终结果
        $mids  = array($mid);//第一次执行时候的用户id
        do {
            $othermids = array();
            $state     = false;
            foreach ($mids as $valueone) {
                foreach ($members as $key => $valuetwo) {
                    if ($valuetwo['top'] == $valueone) {
                        $Teams[]     = $valuetwo;//找到我的下级立即添加到最终结果中
                        $othermids[] = $valuetwo['id'];//将我的下级id保存起来用来下轮循环他的下级
                        array_splice($members, $key, 1);//从所有会员中删除他
                        $state = true;
                    }
                }
            }
            $mids = $othermids;//foreach中找到的我的下级集合,用来下次循环
        } while ($state == true);

        return $Teams;
    }

    public function zhannei()//站内消息
    {
        $uid    = $_SESSION['uid'];
        $invest = getData('station', 'all', 'uid=\'' . $uid . '\'', '', 'time desc');
        //var_dump($invest);
        $this->assign('invest', $invest);
        $this->display();
    }

    public function query()
    {
        $orderid = getValue('orderid');
        $order   = getData('recharge', 1, 'orderid=\'' . $orderid . '\'');
        if ($order['status'] != 1 || empty($order)) {
            $this->ajaxReturn(0);
        } else {
            $this->ajaxReturn(1);
        }
    }

    public function logout()
    {
        $_SESSION['uid'] = '';
        msg('已退出登录！', 2, U('mobile/index'));
    }

    public function yuebaozhuanru()
    {
        $this->display();
    }

    public function addzhuanru()
    {
        $User   = M("User"); // 实例化User对象
        $yuebao = M("yuebao"); // 实例化User对象

        $money = getValue('money');
        $uid   = $_SESSION['uid'];

        $res = getData('user', 1, 'id = \'' . $uid . '\'');
        if ($res['money'] < $money) {
            msg('金额大于余额', 2, U('yuebaozhuanru'));
        }
        $result = $User->where(['id' => $uid])->setDec('money', $money); // 用户的积分减5
        if ($result) {
            $data = array('uid' => $uid, 'paypal' => $money, 'time' => time());
            if (!getData('yuebao', 1, 'uid = \'' . $uid . '\'')) {
                if (addData('yuebao', $data)) {
                    msg('转入成功！', 2, U('yuebaozhuanru'));
                } else {
                    msg('转入失败！', 2, U('yuebaozhuanru'));
                }
            } else {
                if ($yuebao->where(['uid' => $uid])->setInc('paypal', $money)) {
                    msg('转入成功！', 2, U('yuebaozhuanru'));
                } else {
                    msg('转入失败！', 2, U('yuebaozhuanru'));
                }
            }
        } else {
            msg('参数错误', 2, U('yuebaozhuanru'));
        }
    }

    public function yuebaozhuanchu()
    {
        $uid = $_SESSION['uid'];
        $res = getData('yuebao', 1, 'uid = \'' . $uid . '\'');
        $this->assign('res', $res);
        $this->display();
    }

    public function addzhuanchu()
    {
        $User   = M("User"); // 实例化User对象
        $yuebao = M("yuebao"); // 实例化User对象
        $money  = getValue('money');
        $uid    = $_SESSION['uid'];

        $res = getData('yuebao', 1, 'uid = \'' . $uid . '\'');
        if ($res['paypal'] < $money) {
            msg('金额大于余额', 2, U('yuebaozhuanchu'));
        }

        $result = $yuebao->where(['uid' => $uid])->setDec('paypal', $money); // 用户的积分减5
        if ($result) {
            if ($User->where(['id' => $uid])->setInc('money', $money)) {
                msg('转出成功！', 2, U('yuebaozhuanchu'));
            } else {
                msg('错误请联系开发者', 2, U('yuebaozhuanchu'));
            }
        } else {
            msg('错误请联系开发者', 2, U('yuebaozhuanchu'));
        }
    }

    public function customer()
    {
        if (!isLogin()) {
            msg('请登录后再进行操作！', 2, U('mobile/login'));
        }
        $_SESSION['LAST_GET_MSG_ID'] = 0;//进入聊天室就重置上次搜索的最大id
        file_put_contents('./log.txt', '');
        $this->display();
    }

    //发送信息
    public function sendmsg()
    {
        $content = $_REQUEST['content'];
        $content = htmlspecialchars($content);

        $vp_customer = M('Customer');

        $data['u_id']     = $_SESSION['uid'];
        $data['d_id']     = 0;
        $data['add_time'] = time();
        $data['content']  = $content;

        $list = $vp_customer->add($data);
        $this->ajaxReturn(array('status' => 1));
    }

    public function sendImg()
    {
        if (!$result['error']) {
            $result = myUpload();

            if (!$result['error']) {
                $vp_customer      = M('Customer');
                $img_src          = $result['file'];
                $data['u_id']     = $_SESSION['uid'];
                $data['d_id']     = 0;
                $data['add_time'] = time();
                $data['content']  = htmlspecialchars("<img class='content_img' src='$img_src'>");

                $vp_customer->add($data);
            }
        }
        echo json_encode($result, JSON_UNESCAPED_SLASHES);

        die;
    }

    //获取信息
    public function getmsg()
    {
        // print_r(111);exit;
        $vp_customer = M('customer');
        $member      = M('user');

        if (!isset($_SESSION['LAST_GET_MSG_ID'])) {
            $_SESSION['LAST_GET_MSG_ID'] = 0;
        }

        $this_user_id = 0;

        $where = '(u_id=' . $_SESSION['uid'] . ' or d_id=' . $_SESSION['uid'] . ')';
        if ($this_user_id > 0) {
            $where = '((u_id=' . $_SESSION['uid'] . ' and d_id=' . $this_user_id . ') or (u_id=' . $this_user_id . ' and d_id=' . $_SESSION['uid'] . '))';
        }

        $where .= ' and id>' . $_SESSION['LAST_GET_MSG_ID'];

        $list = $vp_customer->where($where)->order('add_time asc')->select();

        $vp_customer->where($where . ' and d_id=' . $_SESSION['uid'])->setField('read', 1);//改变信息状态
        foreach ($list as $k => $v) {
            $list[$k]['add_time'] = date('Y-m-d H:i:s', $v['add_time']);
            $list[$k]['u_id']     = (int)$v['u_id'];
            $list[$k]['content']  = htmlspecialchars_decode($v['content']);
            if ($v['u_id'] == 0) {
                $list[$k]['user_number'] = '管理员';
            } else {
                $list[$k]['user_number'] = $member->where('id=' . $v['u_id'])->getField('phone');
            }
            if ((int)$v['u_id'] == (int)$_SESSION['uid']) {
                $list[$k]['is_me'] = 1;
            } else {
                $list[$k]['is_me'] = 0;
            }
            //获取最大id
            if ((int)$v['id'] > (int)$_SESSION['LAST_GET_MSG_ID']) {
                $_SESSION['LAST_GET_MSG_ID'] = $v['id'];
            }
        }
        $this->ajaxReturn(array('status' => 1, 'list' => $list, 'start_time' => $start_time));
    }


}
