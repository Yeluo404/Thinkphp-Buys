<?php
namespace app\controller;

use app\model\Goods as goodss;
use think\facade\View;
use app\BaseController;

class Index extends BaseController
{
    public function index()
    {
        $qqq = new goodss();
        $newdata = $qqq->limit(8)->select();
        View::assign('goodsdata',$newdata);
        return View::fetch();
    }

    public function contact()
    {
        return View::fetch();
    }

}
