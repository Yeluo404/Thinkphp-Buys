<?php
namespace app\controller;
use app\model\Goods as goodss;
use think\facade\View;

class Goods
{
    public function goods()
    {
        $qqq = new goodss();
        $newdata = $qqq->select();
        View::assign('goodsdata',$newdata);
        return View::fetch();
    }

    public function dateil()
    {
        $bbb = new goodss();
        $result = input('param.id');
        $sqldata = $bbb->where("id","$result")->select();
        View::assign('data',$sqldata);
        return View::fetch();
    }
}

?>