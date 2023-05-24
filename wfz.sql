-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2023-05-21 10:30:46
-- 服务器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `wfz`
--

-- --------------------------------------------------------

--
-- 表的结构 `wfz_cart`
--

CREATE TABLE `wfz_cart` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `wfz_cart`
--

INSERT INTO `wfz_cart` (`id`, `user_id`, `goods_id`, `num`) VALUES
(20, '0', 15, 2),
(21, '0', 3, 3);

-- --------------------------------------------------------

--
-- 表的结构 `wfz_goods`
--

CREATE TABLE `wfz_goods` (
  `id` int(11) NOT NULL,
  `shopname` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `wfz_goods`
--

INSERT INTO `wfz_goods` (`id`, `shopname`, `price`, `path`) VALUES
(1, '五芳斋嘉兴肉粽紫糯粽桂花糕点点心绿豆糕青团糯米团子散装多口味', '19.9', 'giftbox/gift01.jpg'),
(2, '五芳斋粽子鲜肉粽子蛋黄大肉粽豆沙甜粽端午节礼品散装嘉兴肉粽子', '19.9', 'giftbox/gift02.jpg'),
(3, '五芳斋欢禧礼袋装粽子鲜肉粽子大肉粽子粽端午节礼品早餐速食粽', '9.9', 'giftbox/gift03.jpg'),
(4, '五芳斋粽子蛋黄肉粽大肉棕豆沙端午节猪肉粽早餐即食糯米嘉兴粽子', '19.8', 'giftbox/gift04.png'),
(5, '五芳斋苏式月饼黑芝麻百果老式酥皮月饼散装多口味中秋节礼品月饼', '14.9', 'moonCake/cake01.png'),
(6, '五芳斋苏式酥皮月饼45g*5 黑芝麻百果多口味小月饼下午茶糕点零食', '12.9', 'moonCake/cake02.png'),
(7, '五芳斋流心奶黄月饼糯米月饼拉丝焦糖红豆送礼团购4层流心2只中秋', '11.9', 'moonCake/cake03.jpg'),
(8, '五芳斋苏式月饼黑芝麻百果老式酥皮月饼散装多口味中秋节礼品月饼', '12.9', 'moonCake/cake04.jpg'),
(9, '五芳斋武汉汤圆480g 黑芝麻红豆沙花生蓉多口味冷冻元宵速食点心', '22.9', 'tangyuan/tangyuan01.jpg'),
(10, '【顺风冷链】五芳斋大黄米汤圆多种口味480g*3袋黑芝麻元宵汤团', '41.9', 'tangyuan/tangyuan02.jpg'),
(11, '五芳斋汤圆武汉汤圆黑芝麻速冷冻汤团圆子风味元宵多种口味礼袋装', '39.9', 'tangyuan/tangyuan03.jpg'),
(12, '武汉五芳斋汤圆960g480g黑芝麻红豆沙馅料大智路汤圆团购批零包邮', '39.9', 'tangyuan/tangyuan04.jpg'),
(13, '五芳斋粽子礼盒装粽子肉粽蛋黄鲜肉嘉兴特产新鲜端午节团购送礼品', '45.9', 'zongzi/zongzi01.jpg'),
(14, '五芳斋粽子礼盒装嘉兴特产新鲜肉蛋黄大肉粽豆沙红枣甜粽团购送礼', '89.9', 'zongzi/zongzi02.jpg'),
(15, '五芳斋粽子礼盒装祥和五芳礼品粽嘉兴大肉粽豆沙蜜枣团购端午送礼', '45.5', 'zongzi/zongzi03.jpg'),
(16, '【买一送一】五芳斋粽子礼盒装肉粽蛋黄肉豆沙粽嘉兴端午团购送礼', '99.8', 'zongzi/zongzi04.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `wfz_order`
--

CREATE TABLE `wfz_order` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `goods_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `wfz_user`
--

CREATE TABLE `wfz_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转储表的索引
--

--
-- 表的索引 `wfz_cart`
--
ALTER TABLE `wfz_cart`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `wfz_goods`
--
ALTER TABLE `wfz_goods`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `wfz_order`
--
ALTER TABLE `wfz_order`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `wfz_user`
--
ALTER TABLE `wfz_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `wfz_cart`
--
ALTER TABLE `wfz_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用表AUTO_INCREMENT `wfz_goods`
--
ALTER TABLE `wfz_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `wfz_order`
--
ALTER TABLE `wfz_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `wfz_user`
--
ALTER TABLE `wfz_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
