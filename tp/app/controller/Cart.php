<?php

namespace app\controller;

use app\model\Cart as cartss;
use app\model\Goods as goodss;
use think\facade\View;
use think\middleware\SessionInit;

class Cart
{
    public function join()
    {
        $carts = new cartss();
        $result = input('get.id');
        $numss = input('get.numss');
        if (!empty($result)) {
            $dataArray = [
                'user_id' => '0',
                'goods_id' => $result,
                'num' => '1'
            ];
            $aaa = $carts->where('goods_id', "$result")->select()->toArray();
            if (isset($aaa[0]['num'])) {
                $carts->where('goods_id', "$result")->update(['num' => $aaa[0]['num'] + 1]);
            } else {
                $carts->insert($dataArray);
            }
            return redirect('/cart/cart');
        }
    }
    public function cart()
    {
        $carts = new cartss();
        $result = $carts->date();
        View::assign('qqqq', $result);
        return View::fetch();
    }
    public function call()
    {
        $carts = new cartss();
        $id = input('post.id');
        $name = input('post.name');
        $aaa = $carts->where('goods_id', "$id")->select()->toArray();
        if ($name == 'add') {
            $carts->where('goods_id', "$id")->update(['num' => $aaa[0]['num'] + 1]);
        } else if ($name == 'sub' && $aaa[0]['num'] > 1) {
            $carts->where('goods_id', "$id")->update(['num' => $aaa[0]['num'] - 1]);
        } else if ($name == 'remove') {
            $carts->where('goods_id', "$id")->delete();
        }
        $newdata = $carts->where('goods_id', "$id")->select()->toArray();
        return $newdata;
    }
}
