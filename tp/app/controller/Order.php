<?php
namespace app\controller;
use app\model\Cart;
use think\facade\View;

class order
{
    public function index()
    {
        return View::fetch();
    }
}


?>