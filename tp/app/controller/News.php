<?php
namespace app\controller;

use app\model\News as newsss;
use think\facade\View;
use app\BaseController;

class News
{
    public function news()
    {
        $qqq = new newsss();
        $newsdata = $qqq->select();
        View::assign('newsdata',$newsdata);
        return View::fetch();
    }

}