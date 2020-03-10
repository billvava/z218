<?php
//dezend by http://www.yunlu99.com/
function isMobile()
{
    if (isset($_SERVER['HTTP_X_WAP_PROFILE'])) {
        return true;
    }

    if (isset($_SERVER['HTTP_VIA'])) {
        return stristr($_SERVER['HTTP_VIA'], 'wap') ? true : false;
    }

    if (isset($_SERVER['HTTP_USER_AGENT'])) {
        $clientkeywords = array('nokia', 'sony', 'ericsson', 'mot', 'samsung', 'htc', 'sgh', 'lg', 'sharp', 'sie-', 'philips', 'panasonic', 'alcatel', 'lenovo', 'iphone', 'ipod', 'blackberry', 'meizu', 'android', 'netfront', 'symbian', 'ucweb', 'windowsce', 'palm', 'operamini', 'operamobi', 'openwave', 'nexusone', 'cldc', 'midp', 'wap', 'mobile');

        if (preg_match('/(' . implode('|', $clientkeywords) . ')/i', strtolower($_SERVER['HTTP_USER_AGENT']))) {
            return true;
        }
    }

    if (isset($_SERVER['HTTP_ACCEPT'])) {
        if (strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') !== false && (strpos($_SERVER['HTTP_ACCEPT'], 'text/html') === false || strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') < strpos($_SERVER['HTTP_ACCEPT'], 'text/html'))) {
            return true;
        }
    }

    return false;
}

function msg($msg, $time = 2, $url = '')
{
    echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>跳转提示</title>
    <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no,target-densitydpi = medium-dpi">
    <style type="text/css">
        *{ padding: 0; margin: 0; }
        body{ background: #fff; font-family: "微软雅黑"; color: #333; font-size: 16px; }
    </style>
</head>
<body>
<div style="width: 100%;height: 1000px;position: fixed;top: 0;left: 0;background-color: rgba(0,0,0,0.35);">
    <div style="width: 320px;height: 180px;border-radius:3px;overflow:hidden;margin: auto;position: fixed;top: 0;left: 0;right: 0;bottom: 0;background-color: #fff;box-shadow: 0 0 15px #999;">
        <div style="width: 100%;height:50px;line-height: 50px;background-color: #cfcfcf;">
            <label style="margin-left:10px;color:#666;">温馨提示</label>
            <label style="font-size: 12px;color:#888;float:right;display: block;margin-right: 10px;"><b id="wait">' . $time . '</b>秒后跳转</label>

            <div style="clear:both;"></div>
        </div>
        <div style="padding: 25px 10px;line-height: 30px;">
            <p style="background: url(\'/Public/pc/img/success.png\') no-repeat 0 -2px;;height: 32px;padding-left: 40px;">' . $msg . '</p>
            <p style="text-align: right;margin-top: 20px;font-size: 12px;">
                <a id="href" href="' . $url . '" style="display: inline-block;width: 80px;height: 30px;background-color: #888;color:#fff;text-align: center;text-decoration: none;">确定</a>
            </p>
        </div>
    </div>
</div>
<script type="text/javascript">
    (function(){
        var wait = document.getElementById("wait"),href = document.getElementById("href").href;
        var interval = setInterval(function(){
            var time = --wait.innerHTML;
            if(time <= 0) {
                location.href = href;
                clearInterval(interval);
            };
        }, 1000);
    })();
</script>
</body>
</html>';
    exit();
}

function dataarr($tree, $rootId = 0, $level = 0)
{
    foreach ($tree as $key => $leaf) {
        if ($leaf['top'] == $rootId) {
            echo str_repeat('&nbsp;&nbsp;&nbsp;&nbsp;', $level) . '名字：' . $leaf['name'] . '--电话：' . $leaf['phone'] . '下线<br/>';
            foreach ($tree as $l) {
                if ($l['top'] == $leaf['id']) {
                    dataarr($tree, $leaf['id'], $level + 1);
                    break;
                }
            }
        }
    }
}

function getValue($name, $type = 'str')
{
    $data = array(' ', '\'', '<', '>', '"', '&lt;', '&gt;', '&quot;', 'script', 'insert', 'delete', 'update', 'select', 'drop', 'exec', 'and', 'or', 'eval');

    if ($type == 'array') {
        $value = I($name);

        foreach ($value as $key => $i) {
            $value[$key] = str_ireplace($data, '', $i);
        }
    } else {
        $value = str_ireplace($data, '', I($name));

        switch ($type) {
            case 'str':
                $value = strval($value);
                break;
            case 'int':
                $value = intval($value);
                break;
            case 'float':
                $value = floatval($value);
                break;
        }
    }

    return $value;
}

function getContent($name)
{
    $data  = array('script', 'insert', 'delete', 'update', 'select', 'drop', 'exec', 'and', 'or', 'eval');
    $value = I($name, '', 'htmlspecialchars');
    $value = str_ireplace($data, '', $value);

    return $value;
}

function getData($database, $type, $where = '', $limit = '', $order = 'id asc', $group = '')
{
    if ($type == 'all') {
        $data = M($database)->where($where)->limit($limit)->order($order)->group($group)->select();
    } else {
        $data = M($database)->where($where)->limit($limit)->order($order)->find();
    }

    return $data;
}

function editData($database, $data, $where = '')
{
    $re = M($database)->where($where)->save($data);

    if ($re) {
        return true;
    }

    return false;
}

function addData($database, $data)
{
    $id = M($database)->add($data);

    return $id;
}

function delData($database, $where)
{
    $re = M($database)->where($where)->delete();

    if ($re) {
        return true;
    }

    return false;
}

function judge($str, $type)
{
    $char = '';

    if ($type == 'int') {
        $char = '/^\\d*$/';
    } elseif ($type == 'email') {
        $char = '/([\\w\\-]+\\@[\\w\\-]+\\.[\\w\\-]+)/';
    } elseif ($type == 'idcard') {
        $char = '/[0-9]{17}([0-9]|X)/';
    } elseif ($type == 'name') {
        $char = '/^[\\x{4e00}-\\x{9fa5}]+[·•]?[\\x{4e00}-\\x{9fa5}]+$/u';
    } elseif ($type == 'phone') {
        $char = '/^1[3456789]{1}\\d{9}$/';
    } elseif ($type == 'tel') {
        $char = '/(^(\\d{3,4}-)?\\d{7,8})$/';
    } elseif ($type == 'date') {
        $char = '/^\\d{4}[\\-](0?[1-9]|1[012])[\\-](0?[1-9]|[12][0-9]|3[01])?$/';
    } elseif ($type == 'time') {
        $char = '/^\\d{4}[\\-](0?[1-9]|1[012])[\\-](0?[1-9]|[12][0-9]|3[01])(\\s+(0?[0-9]|1[0-9]|2[0-3])\\:(0?[0-9]|[1-5][0-9])\\:(0?[0-9]|[1-5][0-9]))?$/';
    } elseif ($type == 'exist') {
    } else {
        return false;
    }

    if (preg_match($char, $str)) {
        return true;
    }

    return false;
}

function addNumber($database, $field, $value, $where = '')
{
    $re = M($database)->where($where)->setInc($field, $value);

    return $re;
}

function minusNumber($database, $field, $value, $where = '')
{
    $re = M($database)->where($where)->setDec($field, $value);

    return $re;
}

function addFinance($uid, $money, $reason, $type = 1, $before)
{
    $user = getData('user', 1, 'id=\'' . $uid . '\'');

    if (empty($user)) {
        return false;
    }

    $data = array('uid' => $uid, 'money' => $money, 'type' => $type, 'reason' => $reason, 'before' => $before ?: 0, 'time' => date('Y-m-d H:i:s'));
    if (empty($money) || $money <= 0 || empty($uid)) {
        return false;
    }

    if (addData('finance', $data)) {
        return true;
    }

    return false;
}

function setNumber($database, $field, $value, $type = 1, $where = '')
{
    if ($type != 1) {
        $re = M($database)->where($where)->setDec($field, $value);
    } else {
        $re = M($database)->where($where)->setInc($field, $value);
    }

    return $re;
}

function setError($type, $max = 5, $end = 900)
{
    if (empty($_SESSION[$type])) {
        $data            = array('num' => 1, 'time' => time());
        $_SESSION[$type] = $data;

        return true;
    }

    $data = $_SESSION[$type];
    $num  = $data['num'];

    if ($max <= $num) {
        if (!empty($data['end'])) {
            if (time() <= $data['end']) {
                return false;
            }

            $data            = array('num' => 1, 'time' => time());
            $_SESSION[$type] = $data;

            return true;
        }

        $_SESSION[$type]['end'] = time() + $end;

        return false;
    }

    $data            = array('num' => $num + 1, 'time' => time());
    $_SESSION[$type] = $data;

    return true;
}

function isAdmin()
{
    if (empty($_SESSION['admin']) || empty($_SESSION['adminUser'])) {
        return false;
    }

    $account = $_SESSION['adminUser'];
    $user    = $_SESSION['admin'];
    $admin   = getData('admin', 1, 'account=\'' . $account . '\'');
    if ($account == $user['account'] && $admin['password'] = $user['password']) {
        return true;
    }

    return false;
}

function getPage($database, $where, $num)
{
    $count = count(getData($database, 'all', $where));
    $Page  = new \Think\Page($count, $num);
    $Page->setConfig('header', '<span style="margin-left: 10px;">共<b>%TOTAL_ROW%</b>条记录&nbsp;第<b>%NOW_PAGE%</b>页/共<b>%TOTAL_PAGE%</b>页</span>');
    $Page->setConfig('prev', '上一页');
    $Page->setConfig('next', '下一页');
    $Page->setConfig('first', '第一页');
    $Page->setConfig('theme', '<span>%FIRST%%UP_PAGE%%LINK_PAGE%%DOWN_PAGE%%END%%HEADER%</span>');

    return $Page;
}

function uploadImg($file, $path, $name = false)
{
    $upload           = new \Think\Upload();
    $upload->maxSize  = 3145728;
    $upload->exts     = array('jpg', 'gif', 'png', 'jpeg');
    $upload->rootPath = $path;
    $upload->savePath = '';
    $upload->subName  = '';

    if ($name) {
        $upload->saveName = $name;
    } else {
        $upload->saveName = date('YmdHis');
    }

    $upload->replace = true;
    $info            = $upload->uploadOne($file);

    if (!$info) {
        return $upload->getError();
    }

    return $info['savepath'] . $info['savename'];
}

function vpost($url, $data)
{
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0);
    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 1);
    curl_setopt($curl, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']);
    curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1);
    curl_setopt($curl, CURLOPT_AUTOREFERER, 1);
    curl_setopt($curl, CURLOPT_POST, 1);
    curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
    curl_setopt($curl, CURLOPT_TIMEOUT, 30);
    curl_setopt($curl, CURLOPT_HEADER, 0);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    $tmpInfo = curl_exec($curl);

    if (curl_errno($curl)) {
        echo 'Errno' . curl_error($curl);
    }

    curl_close($curl);

    return $tmpInfo;
}

function getInfo($key = '')
{
    $info = getData('info', 1);

    if (!empty($key)) {
        $info = $info[$key];
    }

    return $info;
}

function getReward($key = '')
{
    $reward = getData('reward', 1);

    if (!empty($key)) {
        $reward = $reward[$key];
    }

    return $reward;
}

// function getReward($key = '')
// {
// 	$reward = getData('reward', 1);

// 	if (!empty($key)) {
// 		$reward = round($reward[$key], 2);
// 	}

// 	return $reward;
// }

function exportExcel($fileName, $expTitle, $expCellName, $expTableData)
{
    ob_end_clean();
    $xlsTitle = iconv('utf-8', 'gb2312', $expTitle);
    $cellNum  = count($expCellName);
    $dataNum  = count($expTableData);
    require_once './Public/PHPExcel/PHPExcel.php';
    $objPHPExcel = new PHPExcel();
    $cellName    = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'AA', 'AB', 'AC', 'AD', 'AE', 'AF', 'AG', 'AH', 'AI', 'AJ', 'AK', 'AL', 'AM', 'AN', 'AO', 'AP', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AV', 'AW', 'AX', 'AY', 'AZ');
    $i           = 0;

    while ($i < $cellNum) {
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue($cellName[$i] . '1', $expCellName[$i][1]);
        ++$i;
    }

    $i = 0;

    while ($i < $dataNum) {
        $j = 0;

        while ($j < $cellNum) {
            $objPHPExcel->getActiveSheet(0)->setCellValue($cellName[$j] . ($i + 2), $expTableData[$i][$expCellName[$j][0]]);
            ++$j;
        }

        ++$i;
    }
    header('pragma:public');
    header('Content-type:application/vnd.ms-excel;charset=utf-8;name="' . $xlsTitle . '.xls"');
    header('Content-Disposition:attachment;filename=' . $fileName . '.xls');
    $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
    $objWriter->save('php://output');
    exit();
}

function getDataSum($data, $where, $value)
{
    $data = getData($data, 'all', $where);
    $sum  = 0;

    foreach ($data as $d) {
        $sum += $d[$value];
    }

    return $sum;
}

function jiesuan1()
{
    $uid = M('user')->where(1)->order('id desc')->select();

    foreach ($uid as $k => $v) {
        fenhong($v['id']);
    }

    foreach ($uid as $k => $v) {
        meirifenhong1($v['id']);
    }
}

function fenhong($uid)
{
    $jifen = M('user')->where(array('id' => $uid))->getField('jifen');
    $fnum  = $jifen * 1.5 / 100;
    addFinance($uid, $fnum, '每日分红', 1, getUserField($uid, 'money'));//每日分红
    setNumber('user', 'money', $fnum, 1, 'id=\'' . $uid . '\'');//每日分红
    setNumber('user', 'jifen', $fnum, 2, 'id=\'' . $uid . '\'');//每日分红
    $reward = getData('reward', 1);
    $top1   = round($reward['inv1'] * $fnum / 100, 2);
    $top2   = round($reward['inv2'] * $fnum / 100, 2);
    $top3   = round($reward['inv3'] * $fnum / 100, 2);
    $t1     = getUserField($uid, 'top') ?: 0;
    $t2     = getUserField($t1, 'top') ?: 0;
    $t3     = getUserField($t2, 'top') ?: 0;
    if (0 < $top1 && !empty($t1)) {
        setNumber('user', 'meirifenhong', $top1, 1, 'id=\'' . $t1 . '\'');
    }
    if (0 < $top2 && !empty($t2)) {
        setNumber('user', 'meirifenhong', $top2, 1, 'id=\'' . $t2 . '\'');
    }
    if (0 < $top3 && !empty($t3)) {
        setNumber('user', 'meirifenhong', $top3, 1, 'id=\'' . $t3 . '\'');
    }
}

function meirifenhong1($uid)
{
    $meirifenhong = M('user')->where(array('id' => $uid))->getField('meirifenhong');//当日分红

    $child_num = M('user')->where(array('top' => $uid))->count(1);//直推人数

    if ($child_num > 0 && $child_num <= 10 && $meirifenhong <= 500) {
        $money = $meirifenhong;

        addFinance($uid, $money, '团队奖', 1, getUserField($uid, 'money'));

        setNumber('user', 'money', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'income', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'meirifenhong', $money, 2, 'id=\'' . $uid . '\'');
    } elseif ($child_num > 0 && $child_num <= 10 && $meirifenhong > 500) {
        $money = 500;

        addFinance($uid, $money, '团队奖', 1, getUserField($uid, 'money'));

        setNumber('user', 'money', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'income', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'meirifenhong', $meirifenhong, 2, 'id=\'' . $uid . '\'');
    }

    if ($child_num > 10 && $child_num <= 20 && $meirifenhong <= 1000) {
        $money = $meirifenhong;

        addFinance($uid, $money, '团队奖', 1, getUserField($uid, 'money'));

        setNumber('user', 'money', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'income', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'meirifenhong', $money, 2, 'id=\'' . $uid . '\'');
    } elseif ($child_num > 10 && $child_num <= 20 && $meirifenhong > 1000) {
        $money = 1000;

        addFinance($uid, $money, '团队奖', 1, getUserField($uid, 'money'));

        setNumber('user', 'money', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'income', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'meirifenhong', $meirifenhong, 2, 'id=\'' . $uid . '\'');
    }

    if ($child_num > 20 && $child_num <= 30 && $meirifenhong <= 3000) {
        $money = $meirifenhong;

        addFinance($uid, $money, '团队奖', 1, getUserField($uid, 'money'));

        setNumber('user', 'money', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'income', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'meirifenhong', $money, 2, 'id=\'' . $uid . '\'');
    } elseif ($child_num > 20 && $child_num <= 30 && $meirifenhong > 3000) {
        $money = 3000;

        addFinance($uid, $money, '团队奖', 1, getUserField($uid, 'money'));

        setNumber('user', 'money', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'income', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'meirifenhong', $meirifenhong, 2, 'id=\'' . $uid . '\'');
    }

    if ($child_num > 30 && $child_num <= 40 && $meirifenhong <= 5000) {
        $money = $meirifenhong;

        addFinance($uid, $money, '团队奖', 1, getUserField($uid, 'money'));

        setNumber('user', 'money', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'income', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'meirifenhong', $money, 2, 'id=\'' . $uid . '\'');
    } elseif ($child_num > 30 && $child_num <= 40 && $meirifenhong > 5000) {
        $money = 5000;

        addFinance($uid, $money, '团队奖', 1, getUserField($uid, 'money'));

        setNumber('user', 'money', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'income', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'meirifenhong', $meirifenhong, 2, 'id=\'' . $uid . '\'');
    }

    if ($child_num > 40 && $meirifenhong <= 8000) {
        $money = $meirifenhong;

        addFinance($uid, $money, '团队奖', 1, getUserField($uid, 'money'));

        setNumber('user', 'money', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'income', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'meirifenhong', $money, 2, 'id=\'' . $uid . '\'');
    } elseif ($child_num > 40 && $meirifenhong > 8000) {
        $money = 8000;

        addFinance($uid, $money, '团队奖', 1, getUserField($uid, 'money'));

        setNumber('user', 'money', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'income', $money, 1, 'id=\'' . $uid . '\'');

        setNumber('user', 'meirifenhong', $meirifenhong, 2, 'id=\'' . $uid . '\'');
    }
}

function myUpload($input_name = 'imgFile', $set_save_path = '', $max_size = 0, $dir_name = 'image')
{
    if (empty($set_save_path)) {
        $set_save_path = C('UPLOAD_SAVE_PATH');
    }

    //文件保存目录路径
    $save_path = WWWROOT . '/' . $set_save_path . '/';
    //文件保存目录URL
    $save_url = RT . $set_save_path . '/';

    //创建目录
    if (!file_exists($save_path)) {
        mkdir($save_path);
    }
    //定义允许上传的文件扩展名
    $ext_arr = array(
        'image' => array('gif', 'jpg', 'jpeg', 'png', 'bmp'),
        'flash' => array('swf', 'flv'),
        'media' => array('swf', 'flv', 'mp3', 'wav', 'wma', 'wmv', 'mid', 'avi', 'mpg', 'asf', 'rm', 'rmvb'),
        'file'  => array('doc', 'docx', 'csv', 'xls', 'xlsx', 'ppt', 'htm', 'html', 'txt', 'zip', 'rar', 'gz', 'bz2'),
    );

    //最大文件大小
    if ($max_size == 0) {
        $max_size = C('UPLOAD_MAX_SIZE');
    }

    $save_path = realpath($save_path) . '/';

    //PHP上传失败
    if (!empty($_FILES[$input_name]['error'])) {
        switch ($_FILES[$input_name]['error']) {
            case '1':
                $error = '超过php.ini允许的大小。';
                break;
            case '2':
                $error = '超过表单允许的大小。';
                break;
            case '3':
                $error = '图片只有部分被上传。';
                break;
            case '4':
                $error = '请选择图片。';
                break;
            case '6':
                $error = '找不到临时目录。';
                break;
            case '7':
                $error = '写文件到硬盘出错。';
                break;
            case '8':
                $error = 'File upload stopped by extension。';
                break;
            case '999':
            default:
                $error = '未知错误。';
        }

        return array('error' => $error);
        exit;
    }

    //有上传文件时
    if (empty($_FILES) === false) {
        //原文件名
        $file_name = $_FILES[$input_name]['name'];
        //服务器上临时文件名
        $tmp_name = $_FILES[$input_name]['tmp_name'];
        //文件大小
        $file_size = $_FILES[$input_name]['size'];
        //检查文件名

        if (!$file_name) {
            return array('error' => '请选择文件');
            exit;
        }
        //检查目录
        if (@is_dir($save_path) === false) {
            return array('error' => '上传目录不存在');
            exit;
        }
        //检查目录写权限
        if (@is_writable($save_path) === false) {
            return array('error' => '上传目录没有写权限');
            exit;
        }

        //检查是否已上传
        if (@is_uploaded_file($tmp_name) === false) {
            return array('error' => '上传失败。');
            exit;
        }
        //检查文件大小
        if ($file_size > $max_size) {
            return array('error' => '上传文件大小超过限制');
            exit;
        }
        //检查目录名

        if (empty($ext_arr[$dir_name])) {
            return array('error' => '目录名不正确');
            exit;
        }
        //获得文件扩展名
        $temp_arr = explode(".", $file_name);
        $file_ext = array_pop($temp_arr);
        $file_ext = trim($file_ext);
        $file_ext = strtolower($file_ext);
        //检查扩展名
        if (in_array($file_ext, $ext_arr[$dir_name]) === false) {
            return array('error' => $_FILES[$input_name]['error']);
            exit;
        }
        //创建文件夹

        //添加类型文件夹

        if ($dir_name !== '') {
            $save_path .= $dir_name . "/";
            $save_url .= $dir_name . "/";
            if (!file_exists($save_path)) {
                mkdir($save_path);
            }
        }

        //添加日期文件夹

        $ymd = date("Ymd");
        $save_path .= $ymd . "/";
        $save_url .= $ymd . "/";

        if (!file_exists($save_path)) {
            mkdir($save_path);
        }

        //新文件名
        $new_file_name = date("YmdHis") . '_' . rand(10000, 99999) . '.' . $file_ext;

        //移动文件
        $file_path = $save_path . $new_file_name;

        if (move_uploaded_file($tmp_name, $file_path) === false) {
            return array('error' => '上传文件失败');
            exit;
        }

        @chmod($file_path, 0644);
        $file_url = $save_url . $new_file_name;

        return array('error' => 0, 'file' => $file_url);
        exit;
    }
}

function upload_base64_paycode()
{
    $bg         = $_POST['img'];//获取图片流
    $base64_img = trim($bg);

    $up_dir = C('UPLOAD_SAVE_PATH');
    //文件保存目录路径
    $save_path = WWWROOT . '/' . $up_dir . '/';
    //文件保存目录URL
    $save_url = RT . $up_dir . '/';

    if (preg_match('/^(data:\s*image\/(\w+);base64,)/', $base64_img, $result)) {
        $type = $result[2];
        if (in_array($type, array('pjpeg', 'jpeg', 'jpg', 'gif', 'bmp', 'png'))) {
            $code = rand(10000, 99999);

            //添加类型文件夹
            $save_path .= '/image/';
            $save_url .= '/image/';
            if (!file_exists($save_path)) {
                mkdir($save_path);
            }

            //添加日期文件夹
            $ymd = date("Ymd");
            $save_path .= $ymd . "/";
            $save_url .= $ymd . "/";
            if (!file_exists($save_path)) {
                mkdir($save_path);
            }

            //新文件名
            $new_file_name = date("YmdHis") . '_' . rand(10000, 99999) . '.' . $type;
            $file_name     = $save_path . $new_file_name;
            $save_url .= $new_file_name;
            if (file_put_contents($file_name, base64_decode(str_replace($result[1], '', $base64_img)))) {
                return array('error' => 0, 'file' => $save_url);
            }

            return array('error' => '上传失败');
        }

        return array('error' => '图片格式错误');
    }

    return array('error' => '上传失败');
}

/**
 * @desc 获取支付跳转
 * @param $money string 金额 需要乘以100
 * @param $order string 订单号
 * @param mixed $order_sn
 *
 */
function goPay($money, $order_sn)
{
//    $money = $money * 100;
     $money = 1;
    $data = [
        'merchant_id' => '10108',//平台给商户分配的商户号
        'sign'        => '',//签名
        'biz_content' => '',//业务请求数据
        'timestamp'   => time()//时间戳
    ];
    $key                 = '343ad1d00918479d75a3d98edc03f7b6';//平台给商户分配的商户秘钥
    $data['biz_content'] = json_encode([
        'pass_type_id' => 1,//通道类型， Number 必填，支付宝为：1，微信为：2
        'subject'      => '商品标题',// 订单标题 String 必填 商户描述：测试商品标题
        'body'         => '商品明细',// 商品明细 String(500) 必填 商户详情：测试商品详情
        'out_trade_no' => $order_sn,// 订单编号 out_trade_no String(10,32)，必须包含日期时间：2019040138759235
        'amount'       => $money,// 交易金额 Number 必填 订单的交易金额，单位为分：100
        //异步通知地址 String	必填 异步通知地址：http://www.baidu.com/notify/api
        'notify_url' => 'http://fy.tichee.com/mobile/CallBack',
        'pay_type'   => 'web'//支付方式，String 必填 ,web跳转支付:web，扫码支付:qrcode
    ], JSON_UNESCAPED_UNICODE);

    $data['sign'] = md5($data['merchant_id'] . $data['timestamp'] . $data['biz_content'] . $key);//生成签名
    $url          = 'http://www.hibbill.com/api/alipay';//接口地址，支付宝为：http://www.hibbill.com/api/alipay，微信为：http://www.hibbill.com/api/wechatpay

    @file_put_contents('D:\log\pay-log2-' . date('Ymd') . '.txt', '初始context ：' . var_export($data, true) . PHP_EOL, FILE_APPEND);

    //发起请求
    $headers = array('Content-Type: application/x-www-form-urlencoded');
    $curl    = curl_init(); // 启动一个CURL会话
    curl_setopt($curl, CURLOPT_URL, $url); // 要访问的地址
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0); // 对认证证书来源的检查
    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 0); // 从证书中检查SSL加密算法是否存在
    curl_setopt($curl, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']); // 模拟用户使用的浏览器
    curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1); // 使用自动跳转
    curl_setopt($curl, CURLOPT_AUTOREFERER, 1); // 自动设置Referer
    curl_setopt($curl, CURLOPT_POST, 1); // 发送一个常规的Post请求
    curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($data)); // Post提交的数据包
    curl_setopt($curl, CURLOPT_TIMEOUT, 30); // 设置超时限制防止死循环
    curl_setopt($curl, CURLOPT_HEADER, 0); // 显示返回的Header区域内容
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1); // 获取的信息以文件流的形式返回
    curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
    $response = curl_exec($curl);// 执行操作
    $httpCode = curl_getinfo($curl, CURLINFO_HTTP_CODE);

    if (curl_errno($curl)) {
        echo 'Errno : ' . curl_error($curl); //捕抓异常
    }
    curl_close($curl); //关闭CURL会话
    if ($httpCode == 200) {
        $result = json_decode($response, true);

        @file_put_contents('D:\log\pay-log2-' . date('Ymd') . '.txt', '发起支付context ：' . var_export($result, true) . PHP_EOL, FILE_APPEND);

        if (isset($result['payurl'])) {
            //日志
            if ($result['out_trade_no']) {
                addPayBuyLog($_SESSION['uid'], $result['out_trade_no'], $result);
            }

            header('Location: ' . $result['payurl']);
            //echo '<img src="data:image/png;base64,' . $result['payurl'] . '">';
        }
        echo '<pre>';
        var_dump($result);
        die;
    }
    echo $response;
    die('请求异常：' . $httpCode);
}

/**
 * @desc 获取支付跳转
 * @param $money string 金额 需要乘以100
 * @param $order string 订单号
 * @param mixed $order_sn
 *
 */
function buyPay($money, $order_sn)
{
    $money = $money * 100;
    //$money = 1;
    $data = [
        'merchant_id' => '10117',//平台给商户分配的商户号,换为自己的
        'sign'        => '',//签名
        'biz_content' => '',//业务请求数据
        'timestamp'   => time()//时间戳
    ];
    $key                 = '105709c16ba7c3caec67f43ad57c1522';//平台给商户分配的商户秘钥，换为自己的
    $data['biz_content'] = json_encode([
        'pass_type_id' => 1,//通道类型， Number 必填，1支付宝2微信，拼多多为3
        'subject'      => '商品1',// 订单标题 String 必填 商户描述：测试商品标题
        'body'         => '商品22',// 商品明细 String(500) 必填 商户详情：测试商品详情
        'out_trade_no' => $order_sn,//date('YmdHis').rand(1000,9999),// 订单编号 out_trade_no String(10,32)，必须包含日期时间：2019040138759235
        'amount'       => $money,// 交易金额 Number 必填 订单的交易金额，单位为分：100
        'notify_url'   => 'http://fy.tichee.com/mobile/CallBack',//异步通知地址 String	必填 异步通知地址：http://www.baidu.com/notify/api
        'pay_pass'     => 'alipay',//支付通道,支付宝为：alipay,微信为：wechatpay
        'pay_type'     => 'wappay'//支付方式，String 必填 ,web跳转支付:web，扫码支付:qrcode
    ], JSON_UNESCAPED_UNICODE);

    $data['sign'] = md5($data['biz_content'] . $data['merchant_id'] . $data['timestamp'] . $key);//生成签名
    $url          = 'http://shelllinks.com/api/alipay';//接口地址，支付宝为：http://www.starblelink.com/api/alipay，微信为：http://www.starblelink.com/api/wechatpay

    @file_put_contents('D:\log\pay-log-' . date('Ymd') . '.txt', '初始context ：' . var_export($data, true) . PHP_EOL, FILE_APPEND);

    //发起请求
    $headers = array('Content-Type: application/x-www-form-urlencoded');
    $curl    = curl_init(); // 启动一个CURL会话
    curl_setopt($curl, CURLOPT_URL, $url); // 要访问的地址
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0); // 对认证证书来源的检查
    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 0); // 从证书中检查SSL加密算法是否存在
    curl_setopt($curl, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']); // 模拟用户使用的浏览器
    curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1); // 使用自动跳转
    curl_setopt($curl, CURLOPT_AUTOREFERER, 1); // 自动设置Referer
    curl_setopt($curl, CURLOPT_POST, 1); // 发送一个常规的Post请求
    curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($data)); // Post提交的数据包
    curl_setopt($curl, CURLOPT_TIMEOUT, 30); // 设置超时限制防止死循环
    curl_setopt($curl, CURLOPT_HEADER, 0); // 显示返回的Header区域内容
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1); // 获取的信息以文件流的形式返回
    curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
    $response = curl_exec($curl);// 执行操作
    $httpCode = curl_getinfo($curl, CURLINFO_HTTP_CODE);

    if (curl_errno($curl)) {
        echo 'Errno : ' . curl_error($curl); //捕抓异常
    }
    curl_close($curl); //关闭CURL会话
    if ($httpCode == 200) {
        $result = json_decode($response, true);

        @file_put_contents('D:\log\pay-log-' . date('Ymd') . '.txt', '发起支付context ：' . var_export($result, true) . PHP_EOL, FILE_APPEND);

        if (isset($result['payurl'])) {
            //日志
            if ($result['out_trade_no']) {
                addPayBuyLog($_SESSION['uid'], $result['out_trade_no'], $result);
            }

            header('Location: ' . $result['payurl']);
            //echo '<img src="data:image/png;base64,' . $result['payurl'] . '">';
        }
        echo '<pre>';
        var_dump($result);
        die;
    }
    echo $response;
    die('请求异常：' . $httpCode);
}

//添加用户发起支付日志
function addPayBuyLog($uid, $order_sn, $note)
{
    if (is_array($note)) {
        $note = json_encode($note);
    }
    $data = [
        'order_sn' => $order_sn,
        'uid'      => $uid,
        'add_time' => time(),
        'note'     => $note,
    ];
    $b = addData('pay_buy_log', $data);

    return $b;
}

//支付回调日志
function addPayNoticeLog($order_sn, $note)
{
    if (is_array($note)) {
        $note = json_encode($note);
    }
    $data = [
        'order_sn' => $order_sn,
        'add_time' => time(),
        'note'     => $note,
    ];
    $b = addData('pay_notice_log', $data);

    return $b;
}

//支付回调日志
function setPayNoticeLog($order_sn, $is_success = 1)
{
    $order_sn = addslashes($order_sn);
    $b        = M('pay_notice_log')->where(['order_sn' => $order_sn])->save(['is_success' => $is_success, 'update_time' => time()]);

    return $b;
}

//写个方法批量插入50记录
function addInvestList($uid, $iid, $title, $money, $days = 50)
{
    $j = 0;
    do {
        $j++;
        $timezone = date('Y-m-d H:i:s', strtotime(date('Y-m-d', strtotime('+' . $j . ' day'))));
        $data[]   = [
            'uid'    => $uid,
            'iid'    => $iid,
            'num'    => $j,
            'title'  => $title,
            'money1' => $money,
            'money2' => 0,
            'time1'  => $timezone,
            'time2'  => '0000-00-00 00:00:00',
            'pay1'   => $money,
            'pay2'   => 0,
            'status' => 0
        ];
    } while ($j < $days);
    $b = M('invest_list')->addAll($data);

    return $b;
}


function getInvestOrderStatus($type){
    $data = [
        0=>'未付款',
        1=>'已付款',
    ];
    return $data[$type];

}
function getInvestOrdeStatus($type){
    $data = [
        0=>'未完成',
        1=>'已完成',
    ];
    return $data[$type];

}
