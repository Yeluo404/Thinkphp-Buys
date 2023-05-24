<?php
namespace app\model;
use think\Model;
use think\facade\Db;

class Cart extends Model
{
    public function date()
    {
        // $result = $this -> field('goods_id') -> select() -> toArray();
        $result = Db::table('wfz_cart')
            ->alias('c')
            ->join('wfz_goods g', 'c.goods_id = g.id')
            ->field('c.num as cart_num, g.id, g.shopname, g.price, g.path')
            ->select();
        return $result;
    }
}
?>

