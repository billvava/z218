<?php
//dezend by http://www.yunlu99.com/
namespace index\Controller;

class AboutController extends \Think\Controller
{
    public function _initialize()
    {
    }
        public function index()
    {
        // 读取qlc的相关数据
        $this->selectDogx();
        //读取当前用户的币
        // $data_coin = $this->getPrice();
        //$this->assign('data_coin', $data_coin['data_coin']);
        // $this->assign('total_price', $data_coin['total_price']);
        // $this->assign('level', $data_coin['level']);
        // print_r(111);die;
        //qlc币
        /*$cur = db('clt_coin_price_setting')->order('pub_time desc')->limit(1)->find();
        $qlc_num = db('coin')->where(['member_id' => session('uid')])->value('qlc');

        if ($cur) {
            $cur_price = $cur['price'] * $qlc_num;
        } else {
            $cur_price = 0;
        }*/

        // $this->assign('qlc_num', $data_coin['qlc_num']);
        // $this->assign('cur_price', $data_coin['qlc_price'] * $data_coin['qlc_num']);

        // $nav = input('param.nav', 1);
        // $this->assign('nav', $nav);
        // $this->assign('type', 1);
        // $this->assign('status', 2);

       $this->display();
    }

    protected function selectDogx()
    {
        $list = M('clt_coin_price_setting')->order('pub_time desc')->limit(30)->select();

        krsort($list);
        foreach ($list as $key => $vo) {
            $date_str[] = date('m-d', $vo['pub_time']);
            $price[]    = $vo['price'];
        }

        $this->assign('date_str', json_encode($date_str));
        $this->assign('price', json_encode($price));

        $cur        = M('clt_coin_price_setting')->order('pub_time desc')->limit(1)->find();
        $yes        = M('clt_coin_price_setting')->order('pub_time desc')->limit(1, 1)->select();

        $price_plus = number_format($cur['price'] - $yes[0]['price'],4
            );
        $price_rate = ($price_plus / $yes[0]['price']) * 100;

        $this->assign('price_cur', number_format($cur['price'],2));
        $this->assign('price_plus', number_format($price_plus,2));
        $this->assign('price_rate', $price_rate);
        $bb = $price_plus > 0 ? '+ $' . $price_plus : '$ ' . $price_plus ;

     $this->assign('bb', $bb);
    }
    public function lists()
    {
        $id = getValue('id', 'int');

        if (empty($id)) {
            msg('系统忙碌！', 2, U('index'));
        }

        $data    = getData('article_type', 1, 'id=\'' . $id . '\'');
        $name    = $data['name'];
        $article = getData('article', 'all', 'type=\'' . $id . '\' and `show`=1', '', 'id desc');
        //var_dump($data);
        if (count($article) == 1) {
            $aid = $article[0]['id'];
            header('Location:' . U('details', 'id=' . $aid));
        }

        $this->assign('id', $id);
        $this->assign('name', $name);
        $this->assign('article', $article);
        $this->display();
    }

    public function details()
    {
        $id = getValue('id', 'int');

        if (empty($id)) {
            msg('系统忙碌！', 2, U('index'));
        }

        $article = getData('article', 1, 'type=\'' . $id . '\'');

        $this->assign('article', $article);
        $tid  = $article['type'];
        $type = getData('article_type', 1, 'id=\'' . $tid . '\'');
        $this->assign('type', $type);
        $this->display();
    }
}
