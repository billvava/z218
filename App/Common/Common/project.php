<?php
//dezend by http://www.yunlu99.com/
function getProjectType($pid)
{
    $str = '到期还本还息';

    switch ($pid) {
        case 1:
            $str = '每日返息,两倍出局';
            break;
    }

    return $str;
}

function setProjectType()
{
    $data = array(
        array('id' => 1, 'name' => '每日返息,两倍出局'),
    );

    return $data;
}

function getprojectclass()
{
    $invest = getData('project_class', 'all');

    return $invest;
}

function getprojectclassname($id)
{
    $data = getData('project_class', 1, 'id=\'' . $id . '\'');

    return $data['name'];
}

function qiangetprojectclassname($id)
{
    $data = getData('item', 'all', 'class=\'' . $id . '\'');

    return $data;
}

function getProjectPercent($pid)
{
    $data        = getData('item', 1, 'id=\'' . $pid . '\'');
    $pid         = $data['id'];
    $percent     = $data['percent'];
    $invest      = getData('invest', 'all', 'pid=\'' . $pid . '\'');
    $investMoney = 0;

    foreach ($invest as $i) {
        $investMoney += $i['money'];
    }

    $actual = $investMoney / ($data['total'] * 10000) * 100;
    $total  = $actual + $percent;

    if (100 < $total) {
        return 100;
    }

    return $total;
}

function getProjectPerson($pid)
{
}

function getProjectNum($pid)
{
}

function getProjectSurplus($pid)
{
    $percent = getprojectpercent($pid);
    $data    = getData('item', 1, 'id=\'' . $pid . '\'');
    $surplus = (100 - $percent) * $data['total'] * 100;

    if ($surplus < 0) {
        return 0;
    }

    return $surplus;
}

function getRandPhoneNum()
{
    $p = array(3, 5, 6, 7, 8, 9);
    $r = rand(0, 5);

    return '1' . $p[$r] . '****' . rand(10, 99);
}

function getInvestStatus($id)
{
    $invest = getData('invest_list', 'all', 'status = 0 AND iid = \'' . $id . '\'');

    if (0 < count($invest)) {
        return '未完成';
    }

    return '已完成';
}

function getInvestSchedule($id)
{
}

function getInvestMoney($id)
{
    $invest = getData('invest_list', 'all', 'iid = \'' . $id . '\' AND pay1 <> 0');
    $money  = 0;

    foreach ($invest as $i) {
        $money += $i['money1'];
    }

    return $money;
}

function getFuliIncome($money, $rate, $day)
{
    $sum = $money;
    $i   = 0;

    while ($i < $day) {
        $sum = $sum + $sum * $rate / 100;
        ++$i;
    }

    return round($sum - $money, 2);
}

//后端添加复投可能有问题
function getInvestList_futou($id, $money, $uid)
{
    $item   = getData('item', 1, 'id=\'' . $id . '\'');
    $title  = $item['title'];
    $type   = $item['type'];
    $day    = $item['day'];
    $rate   = $item['rate'];
    $mid    = getUserField($uid, 'member');
    $member = getData('user_member', 1, 'id=\'' . $mid . '\'');
    if (!empty($member) && 0 < $member['rate']) {
        $rate += $member['rate'];
    }

    $invest = array('uid' => $uid, 'pid' => $id, 'title' => $title, 'money' => $money, 'pay_status' => 1, 'day' => $day,'surplus_bonus'=>$money*2, 'rate' => $rate, 'type1' => $type, 'type2' => getprojecttype($type), 'status' => 0, 'time' => date('Y-m-d H:i:s'));

    //setNumber('user', 'value', $money, 1, 'id=\'' . $uid . '\'');

    setUserMember($uid, getUserField($uid, 'value'));

    $iid = addData('invest', $invest);

//    if (!empty($iid)) {
//        $money = $money * $rate / 100;
//       $b     = addInvestList($uid, $iid, $title, $money, $day);
//        return $b;
//    }

    return false;
}

function getInvestList($id, $money, $uid, $order_sn)
{
    $item   = getData('item', 1, 'id=\'' . $id . '\'');
    $title  = $item['title'];
    $type   = $item['type'];
    $day    = $item['day'];
    $rate   = $item['rate'];
    $mid    = getUserField($uid, 'member');
    $member = getData('user_member', 1, 'id=\'' . $mid . '\'');
    if (!empty($member) && 0 < $member['rate']) {
        $rate += $member['rate'];
    }

    $invest = array('uid' => $uid, 'pid' => $id, 'order_sn' => $order_sn, 'title' => $title, 'money' => $money,'surplus_bonus'=>$money*2, 'day' => $day, 'rate' => $rate, 'type1' => $type, 'type2' => getprojecttype($type), 'status' => 0, 'time' => date('Y-m-d H:i:s'));
    // setNumber('user', 'value', $money, 1, 'id=\'' . $uid . '\'');
    setUserMember($uid, getUserField($uid, 'value'));
    // setInvestReward($uid, $money, $id);
    $iid = addData('invest', $invest);

    if (!empty($iid)) {
        return true;
    }

    return false;
}

function getItemField($id, $field)
{
    $item = getData('item', 1, 'id = \'' . $id . '\'');

    return $item[$field];
}

function getInvestPayment()
{
    $recharge = getData('recharge', 'all');
    $pay      = array();

    foreach ($recharge as $r) {
        $pay[] = $r['type'];
    }

    $pay = array_unique($pay);

    return $pay;
}


//只获取out代
function getUserChildren($id,$out)
{
    $i = 0;
    $ins = [$id] ;
    $b = [] ;
    do {
        if(empty($ins)){
            break ;
        }
        $map['top'] = array('in', $ins);
        $uinfos = M('user')->where($map)->select();
        $ins = [];
        if($uinfos){
            foreach ($uinfos as $k => $v) {
                $b[$v['id']] = $v;
                $ins[] = $v['id'];
            }
            $i++;
        }
        else{
            break ;
        }
    } while ($i<$out);
    return $b ;
}



//等级，投资金额叠加
function setUserRank($uid,$money)
{
    $utinfo     = M('reward')->where(1)->find();//团队奖参数
    $user_value = M('user')->where(array('id'=>$uid))->find();
    $v = $user_value['value']+$money ;
    $data['value'] = $v ;
    if ($v>=$utinfo['investment_diamonds']){
        $level = 2;
    }
    if ($user_value['level'] != $level){
        $data['level'] = $level ;
    }
    $b = M('user')->where(array('id'=>$uid))->save($data);
    addFinance($uid, $money, '投资' . $money . '元！', 1, getUserField($uid, 'money'));
    return $b ;
}

//团队奖 推荐奖
function GetTeams($uid, $dhnums)
{
    $utinfo        = M('reward')->where(1)->find();//团队奖参数

    $tuijianjiang2 = explode("|", $utinfo['tuijianjiang2']);
    $j      = 0;
    $p = M('user')->where(['id'=>$uid])->field('top')->find();
    if($p && $p['top']){
        $pid = $p['top'] ;
        do {
            $vtypes = 0;
            $user_list = M('user')->where(array('id' => $pid))->find();
            if(!$user_list){
                break ;
            }

            if ($user_list['level'] > 1) {
                $vtypes = 2;
                $bl     = $tuijianjiang2[$j];
            }
            $j++;
            if ($vtypes > 0) {
                $money = $dhnums * $bl / 100;
                setNumber('user', 'money', $money, 1, 'id=\'' . $pid . '\'');
                addFinance($user_list['id'], $money, '推荐会员投资' . $dhnums . '元奖励' . $j . '代' . $money . '元！', 1, getUserField($user_list['id'], 'money'));
            }

            $pid = $user_list['top'] ;

        } while ($pid && $j < 28);

    }

    return true;
}

//帕点奖
function PaDian($uid, $dhnums)
{
    $pid       = M('user')->where(['id'=>$uid])->getField('top');//上级会员id
    $pad = 0;
    if($pid){
        do {
        $padian = 0;

            $user_list = M('user')->where(array('id' => $pid))->field('id,top,padian,money')->find();

            $padian = $user_list['padian']-$pad;
            if ($user_list && $padian > 0) {
                $money = $padian * $dhnums / 100;
                setNumber('user', 'money', $money, 1, 'id=\'' . $pid . '\'');
                addFinance($user_list['id'], $money, '会员投资' . $dhnums . '元获得团队奖' . $money . '元！', 1, $user_list['money'] );

            }
            $pad =$user_list['padian'];
            $pid = $user_list['top'];
        } while ($pid);
    }
    return true;
}

