<?php
//dezend by http://www.yunlu99.com/
namespace index\Controller;

class AdminController extends \Think\Controller
{
    public function _initialize()
    {
        $this->backup_path = 'data/backup' . DIRECTORY_SEPARATOR;
        if (!strpos($_SERVER['REQUEST_URI'], 'login')) {
            if (empty($_SESSION['isAdminLogin']) || empty($_SESSION['isAdminUser'])) {
                header('Location:' . U('login'));
            }
        }
    }

    public function index()
    {
        $this->display();
    }

    public function project_list()
    {
        $auth_id  = 10;
        $sys_id   = M('admin')->where(array('account' => $_SESSION['isAdminUser']))->getField('auth_id');
        $sys_auth = M('auth')->where(array('id' => $sys_id))->getField('auth');
        $sys_auth = explode(',', trim($sys_auth, ','));
        if (!in_array($auth_id, $sys_auth)) {
            msg('无权限访问', 2, U('index'));
        }
        $where = sProjectList();
        $this->assign('where', $where);
        $Page = getPage('item', $where, 10);
        $this->assign('page', $Page->show());
        $this->assign('limit', $Page->firstRow . ',' . $Page->listRows);
        $this->display();
    }

    public function project_class()
    {
        $auth_id  = 12;
        $sys_id   = M('admin')->where(array('account' => $_SESSION['isAdminUser']))->getField('auth_id');
        $sys_auth = M('auth')->where(array('id' => $sys_id))->getField('auth');
        $sys_auth = explode(',', trim($sys_auth, ','));
        if (!in_array($auth_id, $sys_auth)) {
            msg('无权限访问', 2, U('index'));
        }
        $where = project_class();

        $this->assign('where', $where);
        $Page = getPage('project_class', $where, 10);
        $this->assign('page', $Page->show());
        $this->assign('limit', $Page->firstRow . ',' . $Page->listRows);
        $this->display();
    }

    public function project_class_add()//项目分类添加操作
    {
        if ($_POST) {
            $data             = array('name' => getValue('name'), 'note' => getValue('note'), 'color' => getValue('color'), 'sort' => getValue('sort'));
            $data['add_time'] = time();

            if (!empty($_FILES['img1']['tmp_name'])) {
                $data['img1'] = uploadImg($_FILES['img1'], './Public/uploads/item/');
            }
            if (!empty($_FILES['img2']['tmp_name'])) {
                $data['img2'] = uploadImg($_FILES['img2'], './Public/uploads/item/');
            }
            if (addData('project_class', $data)) {
                msg('添加成功！', 2, U('project_class'));
            } else {
                msg('添加失败！', 2, U('project_class_add'));
            }
        } else {
            $this->display();
        }
    }

    public function project_class_edit()//项目分类修改操作
    {
        $id = getValue('id', 'int');

        if (empty($id)) {
            msg('参数缺失！', 2, U('project_list'));
        }
        if ($_POST) {
            $data             = array('name' => getValue('name'), 'note' => getValue('note'), 'color' => getValue('color'), 'sort' => getValue('sort'));
            $data['add_time'] = time();

            if (!empty($_FILES['img1']['tmp_name'])) {
                $data['img1'] = uploadImg($_FILES['img1'], './Public/uploads/item/');
            }
            if (!empty($_FILES['img2']['tmp_name'])) {
                $data['img2'] = uploadImg($_FILES['img2'], './Public/uploads/item/');
            }

            if (editData('project_class', $data, 'id=\'' . $id . '\'')) {
                msg('修改成功！', 2, U('project_class'));
            } else {
                msg('修改失败！', 2, U('project_class_edit', 'id=' . $id));
            }
        } else {
            $data = getData('project_class', 1, 'id=\'' . $id . '\'');

            $this->assign('id', $id);
            $this->assign('data', $data);
            $this->display();
        }
    }

    public function project_alreay()
    {
        $auth_id  = 11;
        $sys_id   = M('admin')->where(array('account' => $_SESSION['isAdminUser']))->getField('auth_id');
        $sys_auth = M('auth')->where(array('id' => $sys_id))->getField('auth');
        $sys_auth = explode(',', trim($sys_auth, ','));
        if (!in_array($auth_id, $sys_auth)) {
            msg('无权限访问', 2, U('index'));
        }
        //$where = sProjectAlreay();
		$where['pay_status'] = 1;
        $this->assign('where', $where);
        $Page = getPage('invest', $where, 10);
        $this->assign('page', $Page->show());
        $this->assign('limit', $Page->firstRow . ',' . $Page->listRows);
        $this->display();
    }

    public function project_return()
    {
        $where = sProjectReturn();
        $this->assign('where', $where);
        $Page = getPage('invest_list', $where, 10);
        $this->assign('page', $Page->show());
        $this->assign('limit', $Page->firstRow . ',' . $Page->listRows);
        $this->display();
    }

    public function project_add()
    {
        if ($_POST) {
			
            $data         = array('class' => 0, 'title' => getValue('title'), 'desc' => getValue('desc'), 'total' => getValue('total'), 'frbl' => 0, 'red' => 0, 'rate' => getValue('rate'), 'percent' => getValue('percent'), 'day' => getValue('day'), 'type' => getValue('type'), 'min' => getValue('min'), 'max' => getValue('max'), 'num' => getValue('num'), 'guarantee' => getValue('guarantee'), 'time' => getValue('time'), 'content' => getContent('content'), 'sort' => getValue('sort', 'int'));
            $data['time'] = date('Y-m-d H:i:s', strtotime($data['time']));

            if (!empty($_FILES['img']['tmp_name'])) {
                $data['img'] = uploadImg($_FILES['img'], './Public/uploads/item/');
            }
			//print_r($data);die;
			$rs = M('item')->add($data);
            if ($rs) {
                msg('添加成功！', 2, U('project_list'));
            } else {
                msg('添加失败！', 2, U('project_add'));
            }
        } else {
            $this->display();
        }
    }

    public function project_edit()
    {
        $id = getValue('id', 'int');

        if (empty($id)) {
            msg('参数缺失！', 2, U('project_list'));
        }

        if ($_POST) {
            $data         = array('class' => getValue('class'), 'title' => getValue('title'), 'desc' => getValue('desc'), 'total' => getValue('total'), 'frbl' => getValue('frbl'), 'red' => getValue('red'), 'rate' => getValue('rate'), 'percent' => getValue('percent'), 'day' => getValue('day'), 'type' => getValue('type'), 'min' => getValue('min'), 'max' => getValue('max'), 'num' => getValue('num'), 'guarantee' => getValue('guarantee'), 'time' => getValue('time'), 'content' => getContent('content'), 'sort' => getValue('sort', 'int'));
            $data['time'] = date('Y-m-d H:i:s', strtotime($data['time']));

            if (!empty($_FILES['img']['tmp_name'])) {
                $data['img'] = uploadImg($_FILES['img'], './Public/uploads/item/');
            }

            if (editData('item', $data, 'id=\'' . $id . '\'')) {
                msg('修改成功！', 2, U('project_list'));
            } else {
                msg('修改失败！', 2, U('project_edit', 'id=' . $id));
            }
        } else {
            $data            = getData('item', 1, 'id=\'' . $id . '\'');
            $data['content'] = htmlspecialchars_decode($data['content']);
            $this->assign('id', $id);
            $this->assign('data', $data);
            $this->display();
        }
    }

    public function project_detials()
    {
        $iid = getValue('iid', 'int');

        if (empty($iid)) {
            msg('参数缺失！', 2, U('project_alreay'));
        }

        $this->assign('iid', $iid);
        $this->display();
    }

    public function user_quxian()
    {
        if ($_POST) {
            $value              = $_POST;
            $auth               = implode(",", $value['form-field-checkbox']);
            $title              = $value['title'];
            $data['title']      = $title;
            $data['auth']       = $auth;
            $data['addtime']    = time();
            $data['updatetime'] = time();
            $data['status']     = 1;
            $res_save           = M('auth')->add($data);
            if ($res_save) {
                msg('添加成功', 2, U('quxian_type'));
            }
        }
        $this->display();
    }

    public function quxian_edit()
    {
        $id           = getValue('id');
        $list         = M('auth')->where(array('id' => $id))->find();
        $list['auth'] = explode(',', trim($list['auth'], ','));
        $this->assign('list', $list);
        $this->display();
    }

    public function quxian_editt()
    {
        if ($_POST) {
            $value              = $_POST;
            $auth               = implode(",", $value['form-field-checkbox']);
            $id                 = $value['id'];
            $title              = $value['title'];
            $data['title']      = $title;
            $data['auth']       = $auth;
            $data['updatetime'] = time();
            $data['status']     = 1;
            $res_save           = M('auth')->where(array('id' => $id))->save($data);
            if ($res_save) {
                msg('修改成功', 2, U('quxian_type'));
            }
        }
    }

    public function quxian_type()
    {
        $auth_id  = 2;
        $sys_id   = M('admin')->where(array('account' => $_SESSION['isAdminUser']))->getField('auth_id');
        $sys_auth = M('auth')->where(array('id' => $sys_id))->getField('auth');
        $sys_auth = explode(',', trim($sys_auth, ','));
        if (!in_array($auth_id, $sys_auth)) {
            msg('无权限访问', 2, U('index'));
        }
        $list = M('auth')->where(array('status' => 1))->select();
        $this->assign('list', $list);
        $this->display();
    }

    public function user_guanli()
    {
        $auth_id  = 3;
        $sys_id   = M('admin')->where(array('account' => $_SESSION['isAdminUser']))->getField('auth_id');
        $sys_auth = M('auth')->where(array('id' => $sys_id))->getField('auth');
        $sys_auth = explode(',', trim($sys_auth, ','));
        if (!in_array($auth_id, $sys_auth)) {
            msg('无权限访问', 2, U('index'));
        }
        // print_r($_SESSION['isAdminUser']);exit;
        $list = M('admin')->where(1)->select();
        foreach ($list as $k => $v) {
            $list[$k]['auth_name'] = M('auth')->where(array('id' => $v['auth_id']))->getField('title');
        }
        $this->assign('list', $list);
        $this->display();
    }

    public function auth_stop()
    {
        $id   = getValue('id', 'int');
        $type = getValue('type', 'int');
        $re   = getValue('re');
        if (empty($id) || empty($type)) {
            msg('参数缺失！', 2, U('user_guanli'));
        }

        $data['status'] = $type - 1;

        if (editData('admin', $data, 'id=\'' . $id . '\'')) {
            msg('修改成功！', 2, $re);
        } else {
            msg('修改失败！', 2, $re);
        }
    }

    public function auth_edit()
    {
        $id   = getValue('id');
        $list = M('admin')->where(array('id' => $id))->find();
        $role = M('auth')->where(1)->order('id')->select();
        $this->assign('list', $list);
        $this->assign('role', $role);
        $this->display();
    }

    public function auth_editt()
    {
        if ($_POST) {
            if (!$_POST['id']) {
                if ($_POST['password'] != $_POST['repassword']) {
                    msg('两次密码不一致！', 2, U('auth_edit'));
                }
                $data['auth_id']  = $_POST['auth_id'];
                $data['name']     = $_POST['name'];
                $data['account']  = $_POST['account'];
                $data['password'] = md5($_POST['password']);
                $data['status']   = 1;
                $res_save         = M('admin')->add($data);
                if ($res_save) {
                    msg('添加成功', 2, U('user_guanli'));
                }
            } else {
                if (!$_POST['password']) {
                    $password         = M('admin')->where(array('id' => $_POST['id']))->getField('password');
                    $data['auth_id']  = $_POST['auth_id'];
                    $data['name']     = $_POST['name'];
                    $data['account']  = $_POST['account'];
                    $data['password'] = $password;
                    $res_save         = M('admin')->where(array('id' => $_POST['id']))->save($data);
                    if ($res_save) {
                        msg('修改成功', 2, U('user_guanli'));
                    }
                } else {
                    if ($_POST['password'] != $_POST['repassword']) {
                        msg('两次密码不一致！', 2, U('auth_edit'));
                    }
                    $data['auth_id']  = $_POST['auth_id'];
                    $data['name']     = $_POST['name'];
                    $data['account']  = $_POST['account'];
                    $data['password'] = md5($_POST['password']);
                    $res_save         = M('admin')->where(array('id' => $_POST['id']))->save($data);
                    if ($res_save) {
                        msg('修改成功', 2, U('user_guanli'));
                    }
                }
            }
        }
    }

    public function finance_payment()
    {
        $auth_id  = 7;
        $sys_id   = M('admin')->where(array('account' => $_SESSION['isAdminUser']))->getField('auth_id');
        $sys_auth = M('auth')->where(array('id' => $sys_id))->getField('auth');
        $sys_auth = explode(',', trim($sys_auth, ','));
        if (!in_array($auth_id, $sys_auth)) {
            msg('无权限访问', 2, U('index'));
        }

        $where = sFinancePayment();
        $this->assign('where', $where);
        $Page = getPage('recharge', $where, 10);
        $this->assign('page', $Page->show());
        $this->assign('limit', $Page->firstRow . ',' . $Page->listRows);

        if ($_POST) {
            $type = getValue('type');

            if ($type == 1) {
            } else {
                $id       = getValue('id');
                $recharge = getData('recharge', 1, 'id=\'' . $id . '\'');

                if (empty($recharge)) {
                    msg('参数缺失！');
                } elseif ($recharge['status'] == '0') {
                    $money = $recharge['money'];
                    $uid   = $recharge['uid'];
                    $type  = $recharge['type'];

                    if (editData('recharge', array('status' => 1, 'time2' => date('Y-m-d H:i:s')), 'id = \'' . $id . '\'')) {
                        $result = getData('reward'); //赠送积分
                        //	var_dump($result['chongzhijifen']);
                        $num_recharge  = getUserRechargeMoney($uid);
                        $num_recharge1 = explode("|", $result['num_recharge1']);
                        $num_recharge2 = explode("|", $result['num_recharge2']);
                        $num_recharge3 = explode("|", $result['num_recharge3']);
                        if ($num_recharge >= $num_recharge1[0] && $num_recharge < $num_recharge2[0]) {
                            $s_num = $money * $num_recharge1[1] / 100;
                        }

                        if ($num_recharge >= $num_recharge2[0] && $num_recharge < $num_recharge3[0]) {
                            $s_num = $money * $num_recharge2[1] / 100;
                        }

                        if ($num_recharge >= $num_recharge3[0]) {
                            $s_num = $money * $num_recharge3[1] / 100;
                        }

                        if ($num_recharge < $num_recharge1[0]) {
                            $s_num = 0;
                        }

                        M('user')->where(['id' => $uid])->setInc('money', $s_num);//充值奖励

                        $reas = '充值成功并赠送' . $s_num . '元';

                        addFinance($uid, $s_num, $reas, 1, getUserField($uid, 'money'));

                        $number = $result['chongzhijifen'] * $money;

                        M('user')->where(['id' => $uid])->setInc('jifen', $number);//赠送积分

                        $reason = '充值成功并赠送积分' . $number;
                        addFinance($uid, $money, $reason, 1, getUserField($uid, 'money'));
                        setNumber('user', 'money', $money, 1, 'id=\'' . $uid . '\'');
                        $tid = getUserField($uid, 'top');
                        setRechargeRebate($tid, $money);
                        sendSms(getUserPhone($uid), '18005', $money);
                        msg('入款成功！');
                    } else {
                        msg('入款失败！');
                    }
                } else {
                    msg('请勿重复入款！');
                }
            }
        } else {
            $reject = getValue('reject', 'int');

            if (!empty($reject)) {
                $recharge = getData('recharge', 1, 'id=\'' . $reject . '\'');
                $uid      = $recharge['uid'];
                $money    = $recharge['money'];
                $data     = array('status' => 2, 'time2' => date('Y-m-d H:i:s'));
                sendSms(getUserPhone($uid), '18006', $money);

                if (editData('recharge', $data, 'id=\'' . $reject . '\'')) {
                    msg('拒绝入款成功！', 2, U('finance_payment'));
                } else {
                    msg('拒绝入款失败！', 2, U('finance_payment'));
                }
            }

            $warn = getValue('warn', 'int');

            if (!empty($warn)) {
                $data = array('warn' => 1);

                if (editData('recharge', $data, 'id=\'' . $warn . '\'')) {
                    msg('已忽略提醒！', 2, U('finance_payment'));
                } else {
                    msg('忽略提醒失败！', 2, U('finance_payment'));
                }
            }

            $this->display();
        }
    }

    public function finance_invoice()
    {
        $auth_id  = 8;
        $sys_id   = M('admin')->where(array('account' => $_SESSION['isAdminUser']))->getField('auth_id');
        $sys_auth = M('auth')->where(array('id' => $sys_id))->getField('auth');
        $sys_auth = explode(',', trim($sys_auth, ','));
        if (!in_array($auth_id, $sys_auth)) {
            msg('无权限访问', 2, U('index'));
        }
        $where = sFinanceInvoice();
        $this->assign('where', $where);
        $Page = getPage('cash', $where, 10);
        $this->assign('page', $Page->show());
        $this->assign('limit', $Page->firstRow . ',' . $Page->listRows);

        if ($_GET) {
            $id   = getValue('id', 'int');
            $type = getValue('type', 'int');
            $cash = getData('cash', 1, 'id=\'' . $id . '\'');
            if ($cash['status'] == '1' || $cash['status'] == '2') {
                msg('请勿重复操作！', 2, U('finance_invoice'));
            }

            $uid   = $cash['uid'];
            $money = $cash['money'];

            if ($type == 1) {
                $data = array('status' => 1, 'time2' => date('Y-m-d H:i:s'));

                if (editData('cash', $data, 'id=\'' . $id . '\'')) {
                    // sendSms(getUserPhone($uid), '18007', $cash['money']);
                    msg('提现成功！', 2, U('finance_invoice'));
                } else {
                    msg('提现失败！', 2, U('finance_invoice'));
                }
            } else {
                if ($type == 2) {
                    $data = array('status' => 2, 'time2' => date('Y-m-d H:i:s'));
                    // sendSms(getUserPhone($uid), '18008', $money);
                    $money = $cash['money'];
                    addFinance($uid, $money, '提现失败，返还金额' . $money . '元', 1, getUserField($uid, 'money'));
                    setNumber('user', 'money', $money, 1, 'id=\'' . $uid . '\'');

                    if (editData('cash', $data, 'id=\'' . $id . '\'')) {
                        msg('操作成功！', 2, U('finance_invoice'));
                    } else {
                        msg('操作失败！', 2, U('finance_invoice'));
                    }
                }
            }

            $this->display();
        } else {
            $this->display();
        }
    }

    public function finance_stream()
    {
        $auth_id  = 9;
        $sys_id   = M('admin')->where(array('account' => $_SESSION['isAdminUser']))->getField('auth_id');
        $sys_auth = M('auth')->where(array('id' => $sys_id))->getField('auth');
        $sys_auth = explode(',', trim($sys_auth, ','));
        if (!in_array($auth_id, $sys_auth)) {
            msg('无权限访问', 2, U('index'));
        }
        $where = sFinanceStream();
        $this->assign('where', $where);
        // $list = M('invest')->where(array('uid'=>54747))->select();
        // print_r($list);die;
        $Page = getPage('finance', $where, 10);

        $this->assign('page', $Page->show());
        $this->assign('limit', $Page->firstRow . ',' . $Page->listRows);
        $this->display();
    }

    public function user_yhk_del()
    {
        M("bank")->where("id=" . $_POST["id"])->delete();

        $fan = array(
            "msg" => "删除成功"
        );
        echo json_encode($fan);
    }

    public function user_yhk_add()
    {
        M("bank")->add(
            array(
                "uid"     => $_POST["uid"],
                "bank"    => $_POST["bank"],
                "account" => $_POST["account"]
            )
        );

        $fan = array(
            "msg" => "银行卡添加成功"
        );
        echo json_encode($fan);
    }

    public function user_yhk_edit()
    {
        M("bank")->where("id=" . $_POST["id"])->save(
            array(
                "account" => $_POST["account"]
            )
        );

        $fan = array(
            "msg" => "编辑成功"
        );
        echo json_encode($fan);
    }

    public function user_yhk_list()
    {
        $auth_id  = 6;
        $sys_id   = M('admin')->where(array('account' => $_SESSION['isAdminUser']))->getField('auth_id');
        $sys_auth = M('auth')->where(array('id' => $sys_id))->getField('auth');
        $sys_auth = explode(',', trim($sys_auth, ','));
        if (!in_array($auth_id, $sys_auth)) {
            msg('无权限访问', 2, U('index'));
        }
        $where = sUserList();
        $where .= " and auth=1";
        $this->assign('where', $where);
        $Page = getPage('user', $where, 10);
        $this->assign('page', $Page->show());
        $this->assign('limit', $Page->firstRow . ',' . $Page->listRows);
        if (stristr(PHP_OS, 'win')) {
            $this->assign('isWin', 1);
        } else {
            $this->assign('isWin', 0);
        }
        $this->display();
    }

    public function user_list()
    {
        $auth_id  = 1;
        $sys_id   = M('admin')->where(array('account' => $_SESSION['isAdminUser']))->getField('auth_id');
        $sys_auth = M('auth')->where(array('id' => $sys_id))->getField('auth');
        $sys_auth = explode(',', trim($sys_auth, ','));
        if (!in_array($auth_id, $sys_auth)) {
            msg('无权限访问', 2, U('index'));
        }

        $where = sUserList();

        if (isset($_GET["reg_ip"])) {
            if (trim($_GET["reg_ip"]) != "") {
                $where .= " and reg_ip like  '%" . trim($_GET["reg_ip"]) . "%'";
            }
        }

        $this->assign('where', $where);

        $Page = getPage('user', $where, 10);
        $this->assign('page', $Page->show());
        $this->assign('limit', $Page->firstRow . ',' . $Page->listRows);

        if (stristr(PHP_OS, 'win')) {
            $this->assign('isWin', 1);
        } else {
            $this->assign('isWin', 0);
        }

        $this->assign('HTTP_HOST', 'http://' . $_SERVER['HTTP_HOST']);

        $this->display();
    }

    public function user_distribution()
    {
        $recharge = M("recharge"); // 实例化User对象

        $cash    = M("cash"); // 实例化User对象
        $finance = M("user"); // 实例化User对象
        $results = $finance->order('time desc')->select();

        $uid = getValue('id', 'int');
        ;

        //$where = sUserList();

        if (isset($_GET["reg_ip"])) {
            if (trim($_GET["reg_ip"]) != "") {
                $where .= " and reg_ip like  '%" . trim($_GET["reg_ip"]) . "%'";
            }
        }
        $wherea['status'] = '1';
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
        $tixian       = $recharge->where($where)->sum('money');
        $chongzhi     = $cash->where($where)->sum('money');
        //var_dump($tixian);
        if (stristr(PHP_OS, 'win')) {
            $this->assign('isWin', 1);
        } else {
            $this->assign('isWin', 0);
        }

        //$this->assign('jiegoutu', $this->data2arr($results,$uid));
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

    public function user_analysis()
    {
        $invest = getData('invest', 'all', '', '', 'sum(money) desc', 'uid');
        $user   = array();

        foreach ($invest as $i) {
            $uid                                     = $i['uid'];
            $user[$uid]['id']                        = $uid;
            $user[$uid]['phone']                     = getUserField($uid, 'phone');
            $user[$uid]['top']                       = getUserField(getUserField($uid, 'top'), 'phone');
            $user[$uid]['name']                      = getUserField($uid, 'name');
            $mid                                     = getUserField($uid, 'member');
            $member                                  = getData('user_member', 1, 'id = \'' . $mid . '\'');
            $mname                                   = $member['name'] ?: '普通会员';
            $user[$uid]['member']                    = $mname;
            $user[$uid]['money']                     = getUserField($uid, 'money');
            $user[$uid]['shop_num']                  = getUserCashMoney($uid);
            $user[$uid]['getUserInvestMoney']        = getUserInvestMoney($uid);
            $user[$uid]['getUserUntreatedPrincipal'] = getUserUnPrincipal($uid);
            $user[$uid]['getUserUntreatedInterest']  = getUserUnIncome($uid);
            $user[$uid]['getUserInterest']           = getUserIncome($uid);
            $user[$uid]['time1']                     = getUserField($uid, 'time');
            $user[$uid]['time2']                     = date('Y-m-d H:i:s', getUserField($uid, 'logintime'));
            $uinv                                    = getData('invest', 'all', 'uid=\'' . $uid . '\'', '', 'time desc');

            foreach ($uinv as $ui) {
                $user[$uid]['uindvest'][] = $ui['time'] . '<br/>使用' . $ui['money'] . '元投资“' . $ui['title'] . '”项目';
            }

            $user[$uid]['uindvest'] = implode('<hr/>', $user[$uid]['uindvest']);
        }

        $_SESSION['whereAnalysis'] = $user;
        header('Location:' . U('excelAnalysis'));
    }

    public function excelAnalysis()
    {
        $xlsName = 'analysis';
        $xlsCell = array(
            array('id', '用户ID'),
            array('phone', '手机号'),
            array('top', '推荐人'),
            array('name', '姓名'),
            array('member', 'vip等级'),
            array('money', '余额'),
            array('shop_num', '提现金额'),
            array('getUserInvestMoney', '投资金额'),
            array('getUserUntreatedPrincipal', '待收本金'),
            array('getUserUntreatedInterest', '待收利息'),
            array('getUserInterest', '已收利息'),
            array('time1', '注册时间'),
            array('time2', '最后登录'),
            // array('uindvest', '投资的项目')
        );
        $xlsData  = $_SESSION['whereAnalysis'];
        $xlsData2 = array();

        foreach ($xlsData as $data) {
            if (!empty($data['id'])) {
                $data['uindvest'] = str_replace('<br/>', '
', $data['uindvest']);
                $data['uindvest'] = str_replace('<hr/>', '

', $data['uindvest']);
                $xlsData2[] = $data;
            }
        }

        exportExcel('分析数据_' . date('YmdHis'), $xlsName, $xlsCell, $xlsData2);
    }

    public function finance_analysis()
    {
        // $cash = getData('cash', 'all', '', '', 'id desc', 'uid');
        $cash = M('cash')->where(1)->order('id desc')->select();
        $user = array();

        foreach ($cash as $k => $v) {
            $uid                    = $v['id'];
            $userid                 = $v['uid'];
            $user[$uid]['id']       = $uid;
            $user[$uid]['uid']      = $userid;
            $user[$uid]['phone']    = getUserField($userid, 'phone');
            $user[$uid]['top']      = getUserField(getUserField($userid, 'top'), 'phone');
            $user[$uid]['name']     = getUserField($userid, 'name');
            $mid                    = getUserField($userid, 'member');
            $member                 = getData('user_member', 1, 'id = \'' . $mid . '\'');
            $mname                  = $member['name'] ?: '普通会员';
            $user[$uid]['member']   = $mname;
            $user[$uid]['money']    = getUserField($userid, 'money');
            $user[$uid]['shop_num'] = getUserCashMoney1($uid);
            $user[$uid]['name']     = $v['name'];
            $user[$uid]['bank']     = $v['bank'];
            $user[$uid]['account']  = $v['account'];
            $user[$uid]['time1']    = $v['time'];
            $user[$uid]['time2']    = $v['time2'];
            if ($v['status'] == 0) {
                $user[$uid]['sname'] = '待提现';
            }
            if ($v['status'] == 1) {
                $user[$uid]['sname'] = '提现成功';
            }
            if ($v['status'] == 2) {
                $user[$uid]['sname'] = '提现失败';
            }
        }

        $_SESSION['whereAnalysis1'] = $user;
        header('Location:' . U('excelAnalysis1'));
    }

    public function excelAnalysis1()
    {
        $xlsName = 'analysis';
        $xlsCell = array(
            array('id', 'ID'),
            array('uid', '用户ID'),
            array('phone', '手机号'),
            array('top', '推荐人'),
            array('name', '姓名'),
            array('member', 'vip等级'),
            array('money', '余额'),
            array('shop_num', '提现金额'),
            array('name', '账户名称'),
            array('bank', '开户银行'),
            array('account', '银行账户'),
            array('sname', '处理进度'),
            array('time1', '提交时间'),
            array('time2', '处理时间'),
        );
        $xlsData  = $_SESSION['whereAnalysis1'];
        $xlsData2 = array();

        foreach ($xlsData as $data) {
            if (!empty($data['id'])) {
                $xlsData2[] = $data;
            }
        }
        exportExcel('提现申请_' . date('YmdHis'), $xlsName, $xlsCell, $xlsData2);
    }

    public function user_update_status()
    {
        $id   = getValue('id', 'int');
        $type = getValue('type', 'int');
        $re   = getValue('re');
        if (empty($id) || empty($type)) {
            msg('参数缺失！', 2, U('user_list'));
        }

        if ($type == 3) {
            if (M("user")->where("id=" . $id)->delete()) {
                msg('删除成功！', 2, $re);
            } else {
                msg('删除失败！', 2, $re);
            }
        }

        $data['clock'] = $type - 1;

        if (editData('user', $data, 'id=\'' . $id . '\'')) {
            msg('修改成功！', 2, $re);
        } else {
            msg('修改失败！', 2, $re);
        }
    }

    public function user_update_clock()
    {
        $id   = getValue('id', 'int');
        $type = getValue('type', 'int');
        $re   = getValue('re');
        if (empty($id) || empty($type)) {
            msg('参数缺失！', 2, U('project_list'));
        }

        $data['clock'] = $type - 1;

        if (editData('item', $data, 'id=\'' . $id . '\'')) {
            msg('修改成功！', 2, $re);
        } else {
            msg('修改失败！', 2, $re);
        }
    }

    public function user_add()
    {
        if ($_POST) {
            $top   = getValue('top');
            $phone = getValue('phone');
            $level = getValue('level');
            $pwd   = getValue('pwd');
            $pwd2  = getValue('pwd2');
            $data  = array('member' => 0, 'logintime' => 0, 'money' => 0, 'level' => $level, 'clock' => 0, 'value' => 0, 'time' => date('Y-m-d H:i:s'));

            if (0 < count(getData('user', 1, 'phone=\'' . $phone . '\''))) {
                msg('该手机号码已注册！');
            }
            if (empty($top)) {
                msg('请输入推荐人手机号码！');
            }

            if (!empty($top) && !judge($top, 'phone')) {
                msg('请输入正确的推荐人手机号码！');
            }

            if (!judge($phone, 'phone')) {
                msg('请输入正确的手机号码！');
            }

            if (strlen($pwd) != 0 && (strlen($pwd) < 6 || 16 < strlen($pwd))) {
                msg('请输入6-16个字符的登录密码！');
            }

            if (strlen($pwd2) != 0 && (strlen($pwd2) < 6 || 16 < strlen($pwd2))) {
                msg('请输入6-16个字符的交易密码！');
            }

            $data['phone'] = $phone;

            if (strlen($pwd) == 0) {
                $data['password'] = md5('123456');
            } else {
                $data['password'] = md5($pwd);
            }

            if (strlen($pwd2) == 0) {
                $data['password2'] = md5('123456');
            } else {
                $data['password2'] = md5($pwd2);
            }

            $data['top']    = getUserId($top) ?: 0;
            $data["reg_ip"] = $_SERVER['REMOTE_ADDR'];
            if (addData('user', $data)) {
                msg('添加成功！', 2, U('user_list'));
            } else {
                msg('添加失败！');
            }
        } else {
            $this->display();
        }
    }

    public function user_setmoney()
    {
        if ($_POST) {
            $phone     = getValue('phone');
            $money     = getValue('money', 'float');
            $type      = getValue('type', 'int');
            $type_i    = getValue('type_i', 'int');
            $reason    = getValue('reason');
            $uid       = getUserId($phone);
            $user_list = M('user')->where(array('phone' => $phone))->find();

            if (empty($phone) || empty($money) || empty($type) || empty($reason)) {
                msg('参数缺失！');
            }

            if (!judge($phone, 'phone')) {
                msg('手机号码格式不正确！');
            }

            if ($money <= 0) {
                msg('请输入大于0的金额！');
            }
            if (strlen($reason) < 6) {
                msg('请输入大于6个字符的理由！');
            }
            $user = getData('user', 1, 'phone=\'' . $phone . '\'');

            if (empty($user)) {
                msg('会员不存在！');
            }

            if ($type == 1) {
                $orderid = 'PAY' . time() . rand(100, 999);
                $data2   = array('orderid' => $orderid, 'uid' => $uid, 'money' => $money, 'type' => '系统充值', 'status' => 1, 'time' => date('Y-m-d H:i:s'), 'time2' => '0000-00-00 00:00:00');
                addData('recharge', $data2);
                addFinance($uid, $money, $reason, 1, getUserField($uid, 'value'));

                setUserRank($uid,$money) ;
                getInvestList_futou($type_i, $money, $user_list['id']);
                PaDian($uid, $money);

                GetTeams($uid, $money);

                sendSms($phone, '18005', $money);
                msg('成功增加投资金额' . $money . '元！');
            }
            else {
                addFinance(getUserId($phone), $money, $reason, 2, getUserField(getUserId($phone), 'value'));
                setNumber('user', 'value', $money, 2, 'phone=\'' . $phone . '\'');
                msg('成功减少投资金额' . $money . '元！');
            }
        } else {
            $phone = $_GET['phone'];
            if ($phone) {
                $this->assign('phone', $phone);
            }
            $list = M('item')->where(1)->select();
            $this->assign('list', $list);
            $this->display();
        }
    }


    public function user_vip()
    {
        $auth_id  = 4;
        $sys_id   = M('admin')->where(array('account' => $_SESSION['isAdminUser']))->getField('auth_id');
        $sys_auth = M('auth')->where(array('id' => $sys_id))->getField('auth');
        $sys_auth = explode(',', trim($sys_auth, ','));
        if (!in_array($auth_id, $sys_auth)) {
            msg('无权限访问', 2, U('index'));
        }
        if ($_POST) {
            $type = getValue('type', 'int');

            if ($type == 1) {
                $name  = getValue('name');
                $value = getValue('value');
                $rate  = getValue('rate');
                $rate  = empty($rate) ? 0 : $rate;
                $data  = array('name' => $name, 'value' => $value, 'rate' => $rate);

                if (addData('user_member', $data)) {
                    msg('添加成功！');
                } else {
                    msg('添加失败！');
                }
            } else {
                $id    = getValue('id', 'int');
                $name  = getValue('name');
                $value = getValue('value');
                $rate  = getValue('rate');
                $rate  = empty($rate) ? 0 : $rate;
                $data  = array('name' => $name, 'value' => $value, 'rate' => $rate);

                if (editData('user_member', $data, 'id=\'' . $id . '\'')) {
                    msg('修改成功！');
                } else {
                    msg('修改失败！');
                }
            }
        } else {
            $this->display();
        }
    }

    public function user_relation()
    {
        $auth_id  = 5;
        $sys_id   = M('admin')->where(array('account' => $_SESSION['isAdminUser']))->getField('auth_id');
        $sys_auth = M('auth')->where(array('id' => $sys_id))->getField('auth');
        $sys_auth = explode(',', trim($sys_auth, ','));
        if (!in_array($auth_id, $sys_auth)) {
            msg('无权限访问', 2, U('index'));
        }
        if ($_GET) {
            $where = sUserRelation();
            $this->assign('where', $where);
            $Page = getPage('user', $where, 10);
            $this->assign('page', $Page->show());
            $user = getData('user', 'all', $where, $Page->firstRow . ',' . $Page->listRows, 'id desc');
            $this->assign('user', $user);
        } else {
            $this->assign('user', array());
        }

        $this->display();
    }

    public function user_details()
    {
        $id              = getValue('id', 'int');
        $user            = getData('user', 1, 'id=\'' . $id . '\'');
        $datas['top']    = ['eq', $id];
        $datas['padian'] = ['eq', 0];
        $n_padian        = M('user')->where($datas)->select();
        $where['top']    = ['eq', $id];
        $where['padian'] = ['gt', 0];
        $y_padian        = M('user')->where($where)->order('padian desc')->find();

        // print_r($n_padian);die;

        if (empty($id)) {
            msg('参数缺失！', 2, U('user_list'));
        }

        if ($_POST) {
			// $padian = getValue('padian');
            // if ($padian<$y_padian['padian']) {
                // msg('修改帕点不能低于直推会员的最大帕点！', 2, U('user_details', 'id=' . $id));
            // }
            $data   = array('phone' => getValue('phone'), 'level' => getValue('level'), 'alipay' => getValue('alipay'), 'padian' => getValue('padian'), 'name' => getValue('name'), 'idcard' => getValue('idcard'), 'value' => getValue('value'), 'member' => getValue('member'), 'clock' => getValue('clock'), 'dongjiemoney' => getValue('dongjiemoney'), 'qq' => getValue('qq', 'int') ?: 0);
            $pwd    = getValue('pwd');
            $pwd2   = getValue('pwd2');
            $send   = getValue('send');
            $send_n = getValue('send_n');
			$padiana = getValue('padiana');
            if ($padiana>$user['padian']) {
                 msg('可转让帕点不足！', 2, U('user_details', 'id=' . $id));
            }
            if ($send) {
                M('user')->where(array('id' => $send))->save(array('padian' => $user['padian']));
            }
            
            if (!empty($pwd)) {
                $data['password'] = md5($pwd);
            }
            if (!empty($pwd2)) {
                $data['password2'] = md5($pwd2);
            }
            $topphone = getValue('top');

            if (!empty($topphone)) {
                $top = getData('user', 1, 'phone = \'' . $topphone . '\'');

                if (!empty($top)) {
                    $data['top'] = $top['id'];
                }
            }
            $money = getValue('money');

            if ($user['money'] != $money) {
                if ($user['money'] < $money) {
                    $newmoney = $money - $user['money'];
                    $orderid  = 'PAY' . time() . rand(100, 999);
                    $data2    = array('orderid' => $orderid, 'uid' => $id, 'money' => $newmoney, 'type' => '系统充值', 'status' => 1, 'time' => date('Y-m-d H:i:s'), 'time2' => '0000-00-00 00:00:00');
                    addData('recharge', $data2);
                    setNumber('user', 'money', $newmoney, 1, 'id=\'' . $id . '\'');
                    setRechargeRebate($id, $money);
                }
                if ($money < $user['money']) {
                    $newmoney = $user['money'] - $money;
                    setNumber('user', 'money', $newmoney, 2, 'id=\'' . $id . '\'');
                }
            }
            $value = getValue('value');
            setUserMember($id, $value);
            editData('user', $data, 'id=\'' . $id . '\'');
			 if ($send) {
                M('user')->where(array('phone' => $send))->setInc('padian', $padiana);
                $dataw['pid'] = $id;
                $dataw['uid'] = $send;
                $dataw['padian'] = $padiana;
                $dataw['time'] = time();
               $rs =  M('padian_record')->add($dataw);
            }
            msg('修改成功！', 2, U('user_details', 'id=' . $id));
        } else {
            $this->assign('user', $user);
            $this->assign('n_padian', $n_padian);
            $this->assign('y_padian', $y_padian);

            $this->display();
        }
    }

    public function article_type_add()
    {
        $name = getValue('name', 'str');
        $sort = getValue('sort', 'int');
        $show = getValue('show', 'int');
        $ico  = getValue('ico');
        $data = array('name' => $name, 'sort' => $sort, 'show' => $show, 'ico' => $ico);

        if (addData('article_type', $data)) {
            msg('添加成功！', 2, U('article_type'));
        } else {
            msg('添加失败！', 2, U('article_type'));
        }
    }

    public function zhannei_add()
    {
        $content = getValue('content');
        $uid     = getValue('uid', 'int');
        $time    = date('Y-m-d H:i:s');

        $data = array('content' => $content, 'uid' => $uid, 'time' => $time);

        if (addData('station', $data)) {
            msg('发送成功！', 2, U('user_list'));
        } else {
            msg('发送失败！', 2, U('user_list'));
        }
    }

    public function article_type()
    {
        $auth_id  = 13;
        $sys_id   = M('admin')->where(array('account' => $_SESSION['isAdminUser']))->getField('auth_id');
        $sys_auth = M('auth')->where(array('id' => $sys_id))->getField('auth');
        $sys_auth = explode(',', trim($sys_auth, ','));
        if (!in_array($auth_id, $sys_auth)) {
            msg('无权限访问', 2, U('index'));
        }
        $this->display();
    }

    public function article_type_edit()
    {
        $id = getValue('id', 'int');

        if (empty($id)) {
            msg('参数缺失！', 2, U('article_type'));
        }

        $name = getValue('name', 'str');
        $sort = getValue('sort', 'int');
        $show = getValue('show', 'int');
        $ico  = getValue('ico');
        $data = array('name' => $name, 'sort' => $sort, 'show' => $show, 'ico' => $ico);

        if (editData('article_type', $data, 'id=\'' . $id . '\'')) {
            msg('修改成功！', 2, U('article_type'));
        } else {
            msg('修改失败！', 2, U('article_type'));
        }
    }

    public function article_list()
    {
        $auth_id  = 14;
        $sys_id   = M('admin')->where(array('account' => $_SESSION['isAdminUser']))->getField('auth_id');
        $sys_auth = M('auth')->where(array('id' => $sys_id))->getField('auth');
        $sys_auth = explode(',', trim($sys_auth, ','));
        if (!in_array($auth_id, $sys_auth)) {
            msg('无权限访问', 2, U('index'));
        }

        $where = sArticleList();
        $this->assign('where', $where);
        $Page = getPage('article', $where, 10);
        $this->assign('page', $Page->show());
        $this->assign('limit', $Page->firstRow . ',' . $Page->listRows);
        $this->display();
    }

    public function article_add()
    {
        if ($_POST) {
            $title   = getValue('title');
            $keyword = getValue('keyword');
            $type    = getValue('type', 'int');
            $content = getContent('content');
            $show    = getValue('show', 'int');

            if (empty($title)) {
                msg('请输入标题！');
            }

            if (empty($content)) {
                msg('请输入内容！');
            }
            if (!empty($_FILES['photo']['tmp_name'])) {
                $photo = uploadImg($_FILES['photo'], './Public/uploads/item/');
            }
            $data         = array('title' => $title, 'keyword' => $keyword, 'type' => $type, 'content' => $content, 'photo' => $photo, 'show' => $show, 'time' => getValue('time'));
            $data['time'] = date('Y-m-d H:i:s', strtotime($data['time']));

            if (addData('article', $data)) {
                msg('添加成功！', 2, U('article_list'));
            } else {
                msg('添加失败！', 2, U('article_list'));
            }
        } else {
            $this->display();
        }
    }

    public function article_edit()
    {
        $id = getValue('id', 'int');

        if (empty($id)) {
            msg('参数缺失', 2, U('article_list'));
        }

        if ($_POST) {
            $title   = getValue('title');
            $keyword = getValue('keyword');
            $photoaa = getValue('photoaa');
            $type    = getValue('type', 'int');
            $content = getContent('content');
            $show    = getValue('show', 'int');
            if (!empty($_FILES['photo']['tmp_name'])) {
                $photo = uploadImg($_FILES['photo'], './Public/uploads/item/');
            }
            if (empty($title)) {
                msg('请输入标题！');
            }

            if (empty($content)) {
                msg('请输入内容！');
            }

            $data         = array('title' => $title, 'keyword' => $keyword, 'type' => $type, 'content' => $content, 'photo' => $photo ? $photo : $photoaa, 'show' => $show, 'time' => getValue('time'));
            $data['time'] = date('Y-m-d H:i:s', strtotime($data['time']));

            if (editData('article', $data, 'id=\'' . $id . '\'')) {
                msg('修改成功！', 2, U('article_list'));
            } else {
                msg('修改失败！', 2, U('article_list'));
            }
        } else {
            $data            = getData('article', 1, 'id=\'' . $id . '\'');
            $data['content'] = htmlspecialchars_decode($data['content']);
            $this->assign('id', $id);
            $this->assign('data', $data);
            $this->display();
        }
    }

    public function system_info()
    {
        $auth_id  = 15;
        $sys_id   = M('admin')->where(array('account' => $_SESSION['isAdminUser']))->getField('auth_id');
        $sys_auth = M('auth')->where(array('id' => $sys_id))->getField('auth');
        $sys_auth = explode(',', trim($sys_auth, ','));
        if (!in_array($auth_id, $sys_auth)) {
            msg('无权限访问', 2, U('index'));
        }
        if ($_POST) {
            $data    = array('webname' => getValue('webname'), 'company' => getValue('company'), 'tel' => getValue('tel'), 'address' => getValue('address'), 'notice' => getValue('notice'), 'service' => getValue('service') ?: '/mobile/kefu.html', 'app' => getValue('app') ?: '/mobile/app.html', 'icp' => getValue('icp'), 'wechat' => getValue('wechat'), 'qq' => getValue('qq'), 'icar' => getValue('icar'), 'cash' => getValue('cash'), 'ranking' => getValue('ranking'), 'contract' => getContent('contract'), 'jiesuan' => getValue('jiesuan', 'int'), 'web' => getValue('web', 'int'), 'template' => getValue('template'), 'video' => getValue('video') ?: '无', 'smsname' => getValue('smsname'), 'smskey' => getValue('smskey'), 'token' => getValue('token'), 'allowable' => getValue('allowable'), 'withdrawals' => getValue('withdrawals'), 'charged' => getValue('charged'));
            $jiesuan = getInfo('jiesuan');

            if (editData('info', $data)) {
                if ($data['jiesuan'] != $jiesuan && $data['jiesuan'] == 1) {
                    vpost('http://' . $_SERVER['SERVER_NAME'] . '/handle/jiesuan', array());
                }

                msg('修改成功！');
            } else {
                msg('修改失败！');
            }
        } else {
            $this->display();
        }
    }

    public function system_reward()
    {
        $auth_id  = 16;
        $sys_id   = M('admin')->where(array('account' => $_SESSION['isAdminUser']))->getField('auth_id');
        $sys_auth = M('auth')->where(array('id' => $sys_id))->getField('auth');
        $sys_auth = explode(',', trim($sys_auth, ','));
        if (!in_array($auth_id, $sys_auth)) {
            msg('无权限访问', 2, U('index'));
        }
        if ($_POST) {
            // $data = array('tuijianjiang1' => getValue('tuijianjiang1', 'float'));
            $data = array('tuijianjiang2' => getValue('tuijianjiang2'), 'tixian' => getValue('tixian'), 'daily_tuijian' => getValue('daily_tuijian'), 'company_dividends' => getValue('company_dividends'), 'investment_diamonds' => getValue('investment_diamonds'));

            if (editData('reward', $data)) {
                msg('修改成功！');
            } else {
                msg('修改失败！');
            }
        } else {
            $team = M('team')->where(1)->select();
            $this->assign('info', $team);
            $this->display();
        }
    }

    public function teamsUp()
    {
        for ($i = 1; $i <= 3; $i++) {
            $vals     = $_POST['vals_' . $i];
            $res_save = M('team')->where("id='$i'")->save(array('vals' => $vals));
        }
        msg('保存成功', 2, U('system_reward'));
    }

    public function tongji()
    {
        jiesuan1();
        msg('结算成功！', 2, U('index'));
    }

    public function system_contract()
    {
        if (!empty($_FILES['img']['tmp_name'])) {
            uploadImg($_FILES['img'], './Public/uploads/', 'contract');
            msg('修改成功！');
        } else {
            $this->display();
        }
    }

    public function system_img()
    {
        if ($_POST) {
            uploadImg($_FILES['logo'], './Public/uploads/', 'logo');
            uploadImg($_FILES['logo2'], './Public/uploads/', 'logo2');
            uploadImg($_FILES['wechat'], './Public/uploads/', 'wechat');
            uploadImg($_FILES['app'], './Public/uploads/', 'app');
            uploadImg($_FILES['mlogo2'], './Public/uploads/', 'mlogo2');
            uploadImg($_FILES['erweima'], './Public/uploads/', 'erweima');
            msg('修改成功！');
        } else {
            $this->display();
        }
    }

    public function system_payment()
    {
        $auth_id  = 18;
        $sys_id   = M('admin')->where(array('account' => $_SESSION['isAdminUser']))->getField('auth_id');
        $sys_auth = M('auth')->where(array('id' => $sys_id))->getField('auth');
        $sys_auth = explode(',', trim($sys_auth, ','));
        if (!in_array($auth_id, $sys_auth)) {
            msg('无权限访问', 2, U('index'));
        }
        if ($_POST) {
            $type = getValue('type', 'int');

            if ($type == 1) {
                $data = array('bid' => getValue('bid'), 'appid' => getValue('appid'), 'appkey' => getValue('appkey'), 'domain' => getValue('domain'));
                editData('online', $data, '1');
                editData('info', array('online_wechat' => getValue('online_wechat')), '1');
                msg('修改成功！');
            } else {
                $data = array('pay_bank' => getValue('pay_bank'), 'pay_bank_type' => getValue('pay_bank_type'), 'pay_bank_name' => getValue('pay_bank_name'), 'pay_bank_account' => getValue('pay_bank_account'), 'pay_bank_status' => getValue('pay_bank_status'), 'qr_alipay' => getValue('qr_alipay'), 'qr_wechat' => getValue('qr_wechat'), 'qr_alipay_status' => getValue('qr_alipay_status'), 'qr_wechat_status' => getValue('qr_wechat_status'));

                if (!empty($_FILES['wechat']['tmp_name'])) {
                    $data['qr_wechat_img'] = uploadImg($_FILES['wechat'], './Public/uploads/scan/');
                }

                if (!empty($_FILES['alipay']['tmp_name'])) {
                    $data['qr_alipay_img'] = uploadImg($_FILES['alipay'], './Public/uploads/scan/');
                }

                editData('info', $data);
                msg('修改成功！');
            }
        } else {
            $online = getData('online', 1);
            $this->assign('online', $online);
            $this->display();
        }
    }

    public function system_banner()
    {
        $auth_id  = 17;
        $sys_id   = M('admin')->where(array('account' => $_SESSION['isAdminUser']))->getField('auth_id');
        $sys_auth = M('auth')->where(array('id' => $sys_id))->getField('auth');
        $sys_auth = explode(',', trim($sys_auth, ','));
        if (!in_array($auth_id, $sys_auth)) {
            msg('无权限访问', 2, U('index'));
        }
        $where = sSystemBanner();
        $this->assign('where', $where);
        $Page = getPage('slide', $where, 10);
        $this->assign('page', $Page->show());
        $this->assign('limit', $Page->firstRow . ',' . $Page->listRows);
        $this->display();
    }

    public function system_banner_add()
    {
        if ($_POST) {
            $data = array('url' => getValue('url'), 'sort' => getValue('sort', 'int'), 'show' => getValue('show', 'int'), 'type' => getValue('type', 'type'));

            if (!empty($_FILES['img']['tmp_name'])) {
                $data['path'] = uploadImg($_FILES['img'], './Public/uploads/slide/');
            } else {
                msg('请上传幻灯片图片！');
            }

            if (addData('slide', $data)) {
                msg('上传成功！', 2, U('system_banner'));
            } else {
                msg('上传失败！');
            }
        } else {
            $this->display();
        }
    }

    public function system_banner_edit()
    {
        $id = getValue('id', 'int');

        if (empty($id)) {
            msg('参数缺失！', 2, U('system_banner'));
        }

        if ($_POST) {
            $data = array('url' => getValue('url'), 'sort' => getValue('sort', 'int'), 'show' => getValue('show', 'int'), 'type' => getValue('type', 'type'));

            if (!empty($_FILES['img']['tmp_name'])) {
                $data['path'] = uploadImg($_FILES['img'], './Public/uploads/slide/');
            }

            if (editData('slide', $data, 'id=\'' . $id . '\'')) {
                msg('修改成功！', 2, U('system_banner'));
            } else {
                msg('修改失败！', 'id=\'' . $id . '\'');
            }
        } else {
            $slide = getData('slide', 1, 'id=\'' . $id . '\'');
            $this->assign('slide', $slide);
            $this->display();
        }
    }

    public function system_pwd()
    {
        $auth_id  = 19;
        $sys_id   = M('admin')->where(array('account' => $_SESSION['isAdminUser']))->getField('auth_id');
        $sys_auth = M('auth')->where(array('id' => $sys_id))->getField('auth');
        $sys_auth = explode(',', trim($sys_auth, ','));
        if (!in_array($auth_id, $sys_auth)) {
            msg('无权限访问', 2, U('index'));
        }
        if ($_POST) {
            $old   = getValue('old');
            $pwd   = getValue('pwd');
            $pwd2  = getValue('pwd2');
            $admin = getData('admin', 1);

            if (md5($old) != $admin['password']) {
                msg('原密码错误！');
            }

            if (strlen($pwd) < 6 || 16 < strlen($pwd)) {
                msg('请输入6-16个字符的新密码！');
            }

            if (strlen($pwd2) < 6 || 16 < strlen($pwd2)) {
                msg('请再次输入6-16个字符的新密码！');
            }

            if ($pwd != $pwd2) {
                msg('两次密码不一致！');
            }

            if (editData('admin', array('password' => md5($pwd)), '1')) {
                msg('修改成功！');
            } else {
                msg('修改失败！');
            }
        } else {
            $this->display();
        }
    }

    public function system_activity()
    {
        if ($_POST) {
            $data = array('activity_url' => getValue('activity_url'), 'activity_status' => getValue('activity_status', 'int'));

            if (!empty($_FILES['img']['tmp_name'])) {
                uploadImg($_FILES['img'], './Public/uploads/', 'activity');
            }

            editData('info', $data);
            msg('修改成功！', 2, U('system_activity'));
        } else {
            $this->display();
        }
    }

    public function seeNum()
    {
        $cash          = count(getData('cash', 'all', 'status = 0'));
        $recharge      = count(getData('recharge', 'all', 'status = 0 AND warn = 0'));
        $domain        = $_SERVER['SERVER_NAME'];
        $token         = getInfo('token');
        $rechargeState = getValue('rechargeState', 'int') ?: 0;

        if ($rechargeState == 0) {
            $recharge = 0;
        }

        $data = array();
        if (0 < $cash && 0 < $recharge) {
            $data['code'] = '001';
            $data['msg']  = '您有' . $cash . '条提现记录和' . $recharge . '条充值记录，请查看！';
        } else {
            if (0 < $cash && $recharge == 0) {
                $data['code'] = '002';
                $data['msg']  = '您有' . $cash . '条提现记录，请查看！';
            } else {
                if ($cash == 0 && 0 < $recharge) {
                    $data['code'] = '003';
                    $data['msg']  = '您有' . $recharge . '条充值记录，请查看！';
                } else {
                    $data['code'] = '000';
                    $data['msg']  = '';
                    $data['url']  = '';
                }
            }
        }

        $data['url'] = '/sy.mp3';

        $this->ajaxReturn($data);
    }

    public function delList()
    {
        $data     = getValue('data');
        $list     = getValue('list');
        $re       = getValue('re');
        $id       = explode(',', $list);
        $database = array('bank', 'cash', 'finance', 'info', 'invest', 'invest_list', 'reward', 'sms', 'user');

        if (in_array($data, $database)) {
            msg('非法操作！', 2, U('index'));
        }

        foreach ($id as $i) {
            delData($data, 'id=\'' . $i . '\'');
        }

        msg('删除成功！', 2, $re);
    }

    public function login()
    {
        if ($_POST) {
            /* if (time() < $_SESSION['adminLoginError']['end']) {
                msg('连续输错5次，请' . date('H:i', $_SESSION['adminLoginError']['end']) . '后重新登录！', 5, U('login'));
            } */

            $user = getValue('user');
            $pwd  = getValue('pwd');
            $code = getValue('code');

            if (empty($code)) {
                setError('adminLoginError');
                msg('请输入验证码！');
            }

            if ($_SESSION['adminRandCode'] != $code) {
                setError('adminLoginError');
                msg('验证码不正确！');
            }

            unset($_SESSION['adminRandCode']);
            $admin = getData('admin', 1, 'account = \'' . $user . '\'');

            if (empty($admin)) {
                setError('adminLoginError');
                msg('管理员账号不存在！');
            }

            if (md5($pwd) != $admin['password']) {
                setError('adminLoginError');
                msg('管理员密码不正确！');
            } else {
                unset($_SESSION['adminLoginError']);
                $_SESSION['isAdminLogin'] = 1;
                $_SESSION['isAdminUser']  = $user;
                header('Location:' . U('index'));
            }
        }
        else {
            $rand                      = rand(1000, 9999);
            $_SESSION['adminRandCode'] = $rand;
            $this->assign('rand', $rand);
            $this->display();
        }
    }

    public function loginRand()
    {
        $rand                      = rand(1000, 9999);
        $_SESSION['adminRandCode'] = $rand;
        $this->ajaxReturn($rand);
    }

    public function logout()
    {
        unset($_SESSION['isAdminLogin'], $_SESSION['isAdminUser']);

        msg('退出成功！', 2, U('login'));
    }

    public function goods_list()
    {
        $goods = M('goods');
        $val   = I('val');
        if ($val) {
            $map['goods_name'] = array('eq', $val);
        }

        //实例化分页类
        $page = new \Think\Page($goods->where($map)->count(), 12);
        $page->setConfig('prev', '上一页');
        $page->setConfig('next', '下一页');
        $page->setConfig('first', '首页');
        $page->setConfig('last', '末页');
        $page->setConfig('theme', '%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END% %HEADER%');
        //获取数据
        $goods_list = $goods->where($map)->limit($page->firstRow, $page->listRows)->order('add_time desc')->select();
        foreach ($goods_list as $key => $vo) {
            $goods_list[$key]                  = $vo;
            $goods_list[$key]['classify_name'] = M('goods_classify')->where(array('id' => $vo['classify_id']))->getField('classify_title');
        }
        $this->assign('goods_list', $goods_list);
        $this->assign('page', $page->show());
        $this->display();
    }

    public function add_goods()
    {
        if (!IS_AJAX) {
            //$nav = new \Org\Util\Leftnav;
            $lists = M('goods_classify')->order('id asc')->select();
            //$lists = $nav::rule($lists);
            $this->assign('list', $lists);
            $id = I('id');
            if ($id) {
                $goods    = M("goods")->where(array('id' => $id))->find();
                $classify = M('goods_classify')->where(array('id' => $goods['classify_id']))->find();
                $tujilist = unserialize($goods['tujilist']);

                $this->assign('tujilist', $tujilist);
                $this->assign('goods', $goods);
                $this->assign('classify', $classify);
            }
            $this->display();
        } else {
            $data['classify_id']  = trim(I('post.classify_id', '', 'htmlspecialchars'));
            $data['goods_name']   = trim(I('post.goods_name', '', 'htmlspecialchars'));
            $data['goods_j_name'] = trim(I('post.goods_j_name', '', 'htmlspecialchars'));
            $data['goods_price']  = trim(I('post.goods_price', '', 'htmlspecialchars'));

            $data['goods_kc']      = trim(I('post.goods_kc', '', 'htmlspecialchars'));
            $data['goods_content'] = $_POST['goods_content'];
            $data['goods_remark']  = $_POST['goods_remark'];
            if (!empty($_FILES['photo']['tmp_name'])) {
                $data['photo'] = uploadImg($_FILES['photo'], './Public/uploads/item/');
            }

            $data['tujilist'] = serialize($_POST['tujilist']);
            $data['add_time'] = time();

            if (empty($data['goods_name'])) {
                $this->error('商品名称不能为空');
            }
            if (empty($data['goods_price'])) {
                $this->error('该商品的电子币价格不能为空');
            }
            if (empty($data['goods_kc'])) {
                $this->error('商品库存不能为空');
            }

            if (empty($data['goods_content'])) {
                $this->error('商品详情不能为空');
            }

            $id = I('id');
            if ($id) {
                $photo = M('goods')->where(array('id' => $id))->getField('photo');
                if ($photo && empty($data['photo'])) {
                    unset($data['photo']);
                }
                $tuji = M('goods')->where(array('id' => $id))->getField('tujilist');
                if ($tuji && empty($data['tujilist'])) {
                    unset($data['tujilist']);
                }
                M('goods')->where(array('id' => $id))->save($data);
            } else {
                M('goods')->add($data);
                M('goods_classify')->where(array('id' => $data['classify_id']))->setInc('classify_goods_num');
            }

            $this->success('操作成功', U('admin/goods_list'), 1);
        }
    }

    public function goods_state()
    {
        $id = I('id');
        if (empty($id)) {
            $this->error('非法操作', U('index'), 1);
        }
        $status = M('goods')->where(array('id' => $id))->getField('state');//判断当前状态情况
        if ($status == 1) {
            $statedata  = array('state' => 0);
            $auth_group = M('goods')->where(array('id' => $id))->setField($statedata);
            $this->success('状态禁止', 1, 1);
        } else {
            $statedata  = array('state' => 1);
            $auth_group = M('goods')->where(array('id' => $id))->setField($statedata);
            $this->success('状态开启', 1, 1);
        }
    }

    public function goods_del()
    {
        $id    = I('id');
        $class = M('goods')->where(array('id' => $id))->getField('classify_id');
        M('goods_classify')->where(array('id' => $class))->setDec('classify_goods_num');
        M('goods')->where(array('id' => $id))->delete();
        $this->redirect('admin/goods_list');
    }

    public function goods_tuijian()
    {
        $id = I('id');
        if (empty($id)) {
            $this->error('非法操作', U('index'), 1);
        }
        $status = M('goods')->where(array('id' => $id))->getField('tuijian');//判断当前状态情况
        if ($status == 1) {
            $statedata  = array('tuijian' => 0);
            $auth_group = M('goods')->where(array('id' => $id))->setField($statedata);
            $this->success('已取消推荐', 1, 1);
        } else {
            $statedata  = array('tuijian' => 1);
            $auth_group = M('goods')->where(array('id' => $id))->setField($statedata);
            $this->success('已开启推荐', 1, 1);
        }
    }

    /*** 商品分类*/
    public function classify()
    {
        $classify = M('goods_classify')->select();

        $this->assign('classify', $classify);
        $this->display();
    }

    public function add_classify()
    {
        if (!IS_AJAX) {
            $id = I('id');
            if ($id) {
                $classify = M('goods_classify')->where(array('id' => $id))->find();
                $this->assign('classify', $classify);
            }
            $this->display();
        } else {
            $id                     = I('id');
            $data['classify_title'] = I('classify_title');
            if (!empty($_FILES['photo']['tmp_name'])) {
                $data['photo'] = uploadImg($_FILES['photo'], './Public/uploads/item/');
            }

            $data['add_time'] = time();
            if (empty($data['classify_title'])) {
                $this->error('分类名称不能为空');
            }
            if ($id) {
                $photo = M('goods_classify')->where(array('id' => $id))->getField('photo');
                if ($photo && empty($data['photo'])) {
                    unset($data['photo']);
                }
                M('goods_classify')->where(array('id' => $id))->save($data);
            } else {
                M('goods_classify')->add($data);
            }
            $this->success('操作成功', U('admin/classify'), 1);
        }
    }

    public function classify_state()
    {
        $id = I('id');
        if (empty($id)) {
            $this->error('非法操作', U('index'), 1);
        }
        $status = M('goods_classify')->where(array('id' => $id))->getField('state');//判断当前状态情况
        if ($status == 1) {
            $statedata  = array('state' => 0);
            $auth_group = M('goods_classify')->where(array('id' => $id))->setField($statedata);
            $this->success('状态禁止', 1, 1);
        } else {
            $statedata  = array('state' => 1);
            $auth_group = M('goods_classify')->where(array('id' => $id))->setField($statedata);
            $this->success('状态开启', 1, 1);
        }
    }

    public function del_classify()
    {
        $id = I('id');

        M('goods_classify')->where(array('id' => $id))->delete();
        $this->redirect('admin/classify');
    }

    public function qingkong()
    {
        D('user')->where(array("id" => array("neq", 53564)))->delete();
        D('address')->where('1')->delete();
        D('bank')->where('1')->delete();
        D('cash')->where('1')->delete();
        D('finance')->where('1')->delete();
        D('goods')->where('1')->delete();
        D('invest')->where('1')->delete();
        D('invest_list')->where('1')->delete();
        D('order')->where('1')->delete();
        D('order_details')->where('1')->delete();
        D('recharge')->where('1')->delete();
        D('sms_list')->where('1')->delete();

        msg('已清空数据', 2, U('index'));
    }

    //订单处理
    public function del_order()
    {
        $order_id = I('order_id');
        M("order")->where(['order_id' => $order_id])->delete();
        M("order_details")->where(['order_id' => $order_id])->delete();
        echo 1;
    }

    public function order()
    {
        $key   = I('key');
        $state = I('state');

        $sldate     = urldecode(I('reservation', ''));//获取格式 2015-11-12 - 2015-11-18
        $arr        = explode(" - ", $sldate);//转换成数组
        $arrdateone = strtotime($arr[0]);
        $arrdatetwo = strtotime($arr[1] . ' 23:55:55');
        if ($state) {
            $map['state'] = array('eq', $state);
        }
        if ($key) {
            $map['order_sn'] = array('eq', $key);
        }
        if ($arrdateone && $arrdatetwo) {
            $map['add_time'] = array(array('egt', $arrdateone), array('elt', $arrdatetwo), 'AND');
        }

        //实例化分页类
        $page = new \Think\Page(M("order")->where($map)->count(), 12);
        $page->setConfig('prev', '上一页');
        $page->setConfig('next', '下一页');
        $page->setConfig('first', '首页');
        $page->setConfig('last', '末页');
        $page->setConfig('theme', '%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END% %HEADER%');

        //获取数据
        $order = M("order")->where($map)->limit($page->firstRow, $page->listRows)->select();

        foreach ($order as $key => $vo) {
            $order[$key]['member_name'] = M('user')->where(array('id' => $vo['member_id']))->getField('name');

            $address                = M('address')->where(['address_id' => $vo['address_id']])->find();
            $order[$key]['address'] = $address['name'] . $address['phone'] . $address['area'] . $address['details'];
        }

        $this->assign('state', $state);
        $this->assign('list', $order);
        $this->assign('page', $page->show());
        $this->display();
    }

    public function r_order()
    {
        $order_id = I('order_id');
        $order    = M('order_details')->where(array('order_id' => $order_id))->select();
        foreach ($order as $key => $vo) {
            $my_order[$key] = $vo;
        }
        echo json_encode($my_order);
    }

    public function fh_order()
    {
        $order_id = I("order_id");

        $kd_dh   = I('kd_dh');
        $kd_name = I('kd_name');

        if (empty($order_id) || empty($kd_dh) || empty($kd_name)) {
            $this->error("发货失败", U('admin/Order'));
        }
        M("order")->where(array('order_id' => $order_id))->save(array('state' => 3, 'kd_dh' => $kd_dh, 'kd_name' => $kd_name, 'fh_time' => time()));
        $this->redirect('admin/Order');
    }

    public function ck_order()
    {
        $order_id = I("order_id");
        $order    = M('order')->where(array('order_id' => $order_id))->field('kd_dh,kd_name,state')->find();
        echo json_encode($order);
    }

    public function lottery()
    {
        $condtion['id'] = 483;
        $action_mingwen = 'update check' . date('Y-m-d H', time());
        $actionmy       = md5($action_mingwen);
        $this->assign('actionmy', $actionmy);
        $action = I('post.act');
        //var_dump($action == $actionmy,$_POST);
        if ($action == $actionmy) {    // 确定是提交修改表单过来
            $User = M("Xydzp"); // 实例化User对象
            // 根据表单提交的POST数据创建数据对象
            $data   = $User->create();
            $testmy = $User->where($condtion)->save($data); // 根据条件保存修改的数据
            if ($testmy) {
                $this->success('操作成功');
            }

        }

        $result = M("Xydzp")->where($condtion)->find();
        $this->assign("result", $result);
        $this->display();
        //echo "<pre>";
        //var_dump($result);
    }

    public function getzwid()
    {
        $id     = $_POST ["id"];
        $result = M("Position")->where(array(
            "id" => $id
        ))->find();
        if ($result) {
            $this->ajaxReturn($result);
        }
    }

    public function goods_lottery()
    {
        import('Org.Util.Page'); //
        $m = M("Xydzp_record");

        //var_dump("2015/2/13"); //die();
        $count = $m->count(); // 查询满足要求的总记录数
        $Page  = new \Page($count, 10); // 实例化分页类 传入总记录数和每页显示的记录数
        $Page->setConfig('header', '条记录');
        $Page->setConfig('theme', '<li><a>%totalRow% %header%</a></li> <li>%upPage%</li> <li>%downPage%</li> <li>%first%</li>  <li>%prePage%</li>  <li>%linkPage%</li>  <li>%nextPage%</li> <li>%end%</li> ');//(对thinkphp自带分页的格式进行自定义)
        $show = $Page->show(); // 分页显示输出

        $result = $m->limit($Page->firstRow . ',' . $Page->listRows)->order('id DESC')->select();
        //将时间修改为日期型的
        foreach ($result as $key => $value) {
            $result[$key]['publishtime'] = date('Y-m-d H:i:s', $value['publishtime']);
        }

        $this->assign("menu", $menu);
        $this->assign("addmenu", $menu);
        $this->assign("page", $show); // 赋值分页输出
        $this->assign("result", $result);
        $this->display();
        //		echo "<pre>";
        //var_dump("2015/8/11",$_GET); die();
    }

    public function PHPExcel()
    {
        Vendor('phpexcel.PHPExcel');
        Vendor('phpexcel.PHPExcel.IOFactory');        //工厂类
        $objPHPExcel = new \PHPExcel();   //导入类前面最重要的是 转义字符
        //var_dump($objPHPExcel); die();
        header("Content-Type:Text/html;charset=UTF-8");            //字符编码为标准的
        //die();
        $objPHPExcel->getProperties()->setCreator("Maarten Balliauw")
            ->setLastModifiedBy("Maarten Balliauw")
            ->setTitle("Office 2007 XLSX Test Document")
            ->setSubject("Office 2007 XLSX Test Document")
            ->setDescription("Test document for Office 2007 XLSX, generated using PHP classes.")
            ->setKeywords("office 2007 openxml php")
            ->setCategory("Test result file");
        $number = 1;
        $objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue("A" . $number, "ID")
            ->setCellValue("B" . $number, "微信wxid")
            ->setCellValue("C" . $number, "姓名")
            ->setCellValue("D" . $number, "手机号")
            ->setCellValue("E" . $number, "奖项")
            ->setCellValue("F" . $number, "时间");

        $objPHPExcel->getActiveSheet()->getRowDimension($number)->setRowHeight(60);//设置行高
        $number      = 2;
        $proceedings = M('Xydzp_record')->order('id DESC')->select();
        //echo "<pre>";
        //var_dump($proceedings,M('Xydzp_record')->_sql());   die();
        if (empty($proceedings)) {
            $this->alert('暂无抽奖人员！');
            $this->goback();
            die();
        }
        foreach ($proceedings as $key => $goods) {
            $objPHPExcel->setActiveSheetIndex(0)
                ->setCellValue("A" . $number, $goods['id'])
                ->setCellValue("B" . $number, $goods['wxid'])
                ->setCellValue("C" . $number, $goods['un'])
                ->setCellValue("D" . $number, $goods['tel'])
                ->setCellValue("E" . $number, $goods['jx'])
                ->setCellValue("F" . $number, $goods['jtime']);
            //设置每行宽高
            $objPHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth(20);
            //$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setWidth(60);
            //$objPHPExcel->getActiveSheet()->getRowDimension($number)->setRowHeight(40);//设置行高
            $number++;
        }
        // Rename sheet
        $objPHPExcel->getActiveSheet()->setTitle('抽奖名单');
        $objPHPExcel->setActiveSheetIndex(0);
        $filename = "抽奖名单.xls";
        $filename = mb_convert_encoding($filename, "gb2312", "UTF-8");
        //var_dump($feliename); die();
        header('Content-Type: application/vnd.ms-excel');
        header("Content-Disposition: attachment;filename=" . $filename);
        header('Cache-Control: max-age=0');
        header('Cache-Control: max-age=1');
        header('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
        header('Last-Modified: ' . gmdate('D, d M Y H:i:s') . ' GMT'); // always modified
        header('Cache-Control: cache, must-revalidate'); // HTTP/1.1
        header('Pragma: public'); // HTTP/1.0

        $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
        $objWriter->save('php://output');
    }

    public function customer()
    {
        $m           = M();
        $vp_customer = M('Customer');
        $member      = M('user');

        $return_arr = [];

        if (IS_POST) {
            $act = $_POST['act'];
            $act = explode(',', $act);

            //前台传过来的重置标识
            if (in_array('reset_msg', $act) || !$_SESSION['ADMIN_LAST_GET_MSG_ID']) {
                $_SESSION['ADMIN_LAST_GET_MSG_ID'] = 0;
            }
            //获取会员列表
            if (in_array('find_user', $act)) {
                $user  = $_REQUEST['user'];
                $where = '1=1';
                if (!empty($user)) {
                    $where = "phone like '%{$user}%'";
                }
                $user_info = $member->where($where)->field('id,phone')->find();
                if ($user_info) {
                    $this->ajaxReturn(array('status' => 1, 'user_info' => $user_info));
                } else {
                    $this->ajaxReturn(array('status' => 0));
                }
                exit;
            }

            if (in_array('user', $act)) {
                $se_id  = 0;
                $is_all = (int)$_POST['is_all'];

                $field_sql = "select a.id,a.phone,(select count(0) from __CUSTOMER__ where `read`=0 and u_id=a.id and d_id=$se_id) as un_read";
                $order_sql = "order by (select max(add_time) from __CUSTOMER__ as b where b.u_id=a.id or b.d_id=a.id) desc";

                if ($is_all > 0) {
                    $_SESSION['IS_ALL'] = $is_all;
                }
                if ((int)$_SESSION['IS_ALL'] == 2) {
                    $where = "1=1";
                    $list  = $m->query("$field_sql from __USER__ as a where $where $order_sql");
                } else {
                    $where = "(select count(0) from __CUSTOMER__ where u_id=a.id or d_id=a.id)>0";
                    $list  = $m->query("$field_sql from __USER__ as a where $where $order_sql");
                }

                require_once('./customer_user_log.php');
                //对比上一期请求的数据
                $is_update = 0;//判断是否更新数据
                if (count($user_array) != count($list)) {
                    $is_update = 1;
                } else {
                    foreach ($user_array as $k => $v) {
                        $diff = array_diff_assoc($user_array[$k], $list[$k]);
                        if (count($diff)) {
                            $is_update = 1;
                            break;
                        }
                    }
                }
                if ($is_update) {
                    file_put_contents('./customer_user_log.php', '<?php $add_time = \'' . date('Y-m-d H:i:s') . '\';$user_array = ' . var_export($list, true) . '?>');
                    $return_arr['user'] = array('status' => 1, 'list' => $list);
                }

                //获取聊天内容
            }

            if (in_array('msg', $act)) {
                $se_id = 0;

                $this_user_id = (int)$_REQUEST['this_user_id'];//传过来的对话会员id
                //如果跟保存的id不同，则更新保存，并初始化上一期请求的最大id
                if ($this_user_id != (int)$_SESSION['TALK_USER_ID']) {
                    $_SESSION['TALK_USER_ID']          = $this_user_id;
                    $_SESSION['ADMIN_LAST_GET_MSG_ID'] = 0;//上一期请求的最大id
                }

                //有没有给自己的新消息
                $a_map   = '`read`=0 and id>' . $_SESSION['ADMIN_LAST_GET_NEW_MSG_ID'] . ' and u_id<>' . $se_id;
                $has_new = $vp_customer->where($a_map)->count();
                if ($has_new) {
                    $return_arr['has_new']                 = $has_new;
                    $_SESSION['ADMIN_LAST_GET_NEW_MSG_ID'] = $vp_customer->where($a_map)->order('add_time desc')->getField('id');
                }

                if ($this_user_id > 0) {
                    $where = 'id>' . $_SESSION['ADMIN_LAST_GET_MSG_ID'];

                    $where .= ' and ((u_id=' . $se_id . ' and d_id=' . $this_user_id . ') or (u_id=' . $this_user_id . ' and d_id=' . $se_id . '))';

                    $list = $vp_customer->where($where)->order('add_time asc')->select();

                    $vp_customer->where($where . ' and d_id=' . $se_id)->setField('read', 1);//改变信息状态
                    foreach ($list as $k => $v) {
                        $list[$k]['add_time'] = date('Y-m-d H:i:s', $v['add_time']);
                        $list[$k]['u_id']     = (int)$v['u_id'];
                        $list[$k]['content']  = htmlspecialchars_decode($v['content']);
                        if ($v['u_id'] == 0) {
                            $list[$k]['user_number'] = '管理员';
                        } else {
                            $list[$k]['user_number'] = $member->where('id=' . $v['u_id'])->getField('phone');
                        }
                        if ((int)$v['u_id'] == $se_id) {
                            $list[$k]['is_me'] = 1;
                        } else {
                            $list[$k]['is_me'] = 0;
                        }
                        //获取最大id
                        if ((int)$v['id'] > (int)$_SESSION['ADMIN_LAST_GET_MSG_ID']) {
                            $_SESSION['ADMIN_LAST_GET_MSG_ID'] = $v['id'];
                        }
                    }
                    if (count($list)) {
                        $return_arr['msg'] = array('status' => 1, 'list' => $list, 'start_time' => $start_time);
                    }
                }
            }

            if (count($return_arr) > 0) {
                $this->ajaxReturn($return_arr);
            }
            exit;
        }

        unset($_SESSION['IS_ALL'], $_SESSION['TALK_USER_ID']);

        $_SESSION['ADMIN_LAST_GET_MSG_ID']     = 0;
        $_SESSION['ADMIN_LAST_GET_NEW_MSG_ID'] = 0;

        //初始化保存的上一期请求数据
        file_put_contents('./customer_user_log.php', '<?php $add_time = \'0\';$user_array = []?>');

        $this->display();
    }

    //发送信息
    public function sendmsg()
    {
        $vp_customer  = M('Customer');
        $se_id        = 0;
        $send_type    = $_REQUEST['send_type'];
        $this_user_id = (int)$_REQUEST['this_user_id'];
        if ($this_user_id > 0) {
            if ($send_type == 'word') {
                $content      = $_REQUEST['content'];
                $this_user_id = (int)$_REQUEST['this_user_id'];
                if ($this_user_id <= 0) {
                    $this_user_id = 1;
                }
                $content = htmlspecialchars($content);

                $data['u_id']     = $se_id;
                $data['d_id']     = $this_user_id;
                $data['add_time'] = time();
                $data['content']  = $content;

                $result = $vp_customer->add($data);
                if ($result) {
                    $this->ajaxReturn(array('status' => 1));
                } else {
                    $this->ajaxReturn(array('status' => 0, 'info' => '发送失败'));
                }
            } elseif ($send_type == 'img') {
                $result = myUpload();

                if (!$result['error']) {
                    $img_src          = $result['file'];
                    $data['u_id']     = $se_id;
                    $data['d_id']     = $this_user_id;
                    $data['add_time'] = time();
                    $data['content']  = htmlspecialchars("<img class='content_img' src='$img_src'>");

                    $vp_customer->add($data);
                }
                echo json_encode($result, JSON_UNESCAPED_SLASHES);
            }
        }
        exit;
    }

    public function kstatus()
    {
        if (IS_POST) {
            $status = I('status');
            $data   = M('info')->where(1)->setField('kstatus', $status);
            $this->ajaxReturn($data);
        }
    }

    /**
     * 备份数据库（全部）
     */
    public function export()
    {
        $data = new \Org\Util\Database();

        $dir = $this->backup_path;

        // 创建目录
        if (!is_dir($dir)) {
            mkdir($dir, 0777, true) or $this->error('创建文件夹失败');
        }
        $size = 2024;
        $sql  = '';

        // 备份全部表
        if (!$tables = M()->query("show table status from " . C("DB_NAME"))) {
            $this->error('读取数据库结构失败！');
        }

        // 插入dump信息
        $sql .= $data->_base();
        // 文件名前面部分
        $filename = $dir . date('YmdHis');
        // 查出所有表
        $tables = M()->query('SHOW TABLES');
        // 第几分卷
        $p = 1;
        // 循环所有表
        foreach ($tables as $value) {
            foreach ($value as $v) {
                // 获取表结构
                $sql .= $data->_insert_table_structure($v);
                // 单条记录
                $sql .= $data->_insert_record($v);
            }
        }
        /*
          // 如果大于分卷大小，则写入文件
          if (strlen ( $sql ) >= $size * 1024) {

          $file = $filename . "_v" . $p . ".sql";
          // 写入文件
          if (!$data->_write_file ( $sql, $file, $dir )) {

          $this->error("备份卷-" . $p . "-失败",U('index'));

          }
          // 下一个分卷
          $p ++;

          }
         */

        // sql大小不够分卷大小

        if ($sql != "") {
            $filename .= ".sql";
            if ($data->_write_file($sql, $filename, $dir)) {
                $this->success('数据备份完成');
                exit;
            }
            $this->error('数据备份失败');
            exit;
        }
    }

    //币价格设置
    public function coin_price_setting(){
        if($_POST){

            $pub_time   = getValue('pub_time');
            $price   = getValue('price');
            $pub_time = strtotime($pub_time);
            if (empty($pub_time)){
                msg('请选择时间！');
            }
            if (empty($price)){
                msg('请选择价格！');
            }
            $data['pub_time'] = $pub_time;
            $data['price'] = $price;
            $rs = M('clt_coin_price_setting')->add($data);
            if ($rs){
                msg('添加成功！', 2, U('coin_price_setting'));
            }
        }

        //实例化分页类
        $page = new \Think\Page(M('clt_coin_price_setting')->count(), 12);
        $page->setConfig('prev', '上一页');
        $page->setConfig('next', '下一页');
        $page->setConfig('first', '首页');
        $page->setConfig('last', '末页');
        $page->setConfig('theme', '%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END% %HEADER%');
        //获取数据
        $goods_list = M('clt_coin_price_setting')->limit($page->firstRow, $page->listRows)->order('pub_time desc')->select();

        $this->assign('list', $goods_list);
        $this->assign('page', $page->show());
        $this->display();
    }


}
