-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2023 at 08:25 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_logo`
--

CREATE TABLE `add_logo` (
  `id` int(10) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_logo`
--

INSERT INTO `add_logo` (`id`, `img`) VALUES
(2, 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(60) NOT NULL,
  `admin_pass` varchar(60) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_email`, `admin_pass`, `role`) VALUES
(1, 'prakashpatidarply@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1);

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `ctg_id` int(11) NOT NULL,
  `ctg_name` varchar(60) NOT NULL,
  `ctg_des` varchar(150) NOT NULL,
  `ctg_status` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`ctg_id`, `ctg_name`, `ctg_des`, `ctg_status`) VALUES
(1, 'Apple', 'All kinds apple are available in this catagory ', 1),
(2, 'Banana', 'All kinds Banana are available in this category ', 1),
(3, 'Grapes', 'Reference site about Lorem Ipsum', 1),
(4, 'Orange', 'All kinds Mangos are available in this category ', 1),
(5, 'Dates', 'All kinds Deates are available in this catagory ', 1),
(6, 'Coconut', 'Here will display all Coconut', 1),
(7, 'Fruits', 'Here will display all laptop', 1),
(8, 'Mango', 'Here will display all Mango', 1),
(9, 'Litchy', 'litchies', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cupon`
--

CREATE TABLE `cupon` (
  `cupon_id` int(11) NOT NULL,
  `cupon_code` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL,
  `discount` int(5) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cupon`
--

INSERT INTO `cupon` (`cupon_id`, `cupon_code`, `description`, `discount`, `status`) VALUES
(1, 'fruitsbazar', 'It\'s a discount coupon.', 10, 1),
(2, 'eid2021', 'Eid discount', 15, 1),
(3, 'eid2021', 'Eid discount', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_feedback`
--

CREATE TABLE `customer_feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `pdt_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_feedback`
--

INSERT INTO `customer_feedback` (`id`, `user_id`, `user_name`, `pdt_id`, `comment`, `comment_date`) VALUES
(1, 1, 'saiful', 4, 'This product is very good', '2021-09-11'),
(4, 5, 'karim', 6, 'Good product', '2021-09-15');

-- --------------------------------------------------------

--
-- Table structure for table `header_info`
--

CREATE TABLE `header_info` (
  `id` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tweeter` varchar(500) NOT NULL,
  `fb_link` varchar(500) NOT NULL,
  `pinterest` varchar(500) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `header_info`
--

INSERT INTO `header_info` (`id`, `email`, `tweeter`, `fb_link`, `pinterest`, `phone`) VALUES
(10, 'fruitsbazar@gmail.com', 'https://twitter.com/', 'https://facebook.com/', 'https://pinerest.com/', '01982364958');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `pdt_quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `uses_coupon` varchar(35) NOT NULL,
  `order_status` int(3) NOT NULL,
  `trans_id` varchar(25) NOT NULL,
  `Shipping_mobile` varchar(20) NOT NULL,
  `shiping` varchar(255) NOT NULL,
  `order_time` timestamp NULL DEFAULT current_timestamp(),
  `order_date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `user_id`, `user_name`, `product_name`, `pdt_quantity`, `amount`, `uses_coupon`, `order_status`, `trans_id`, `Shipping_mobile`, `shiping`, `order_time`, `order_date`) VALUES
(1, 1, '', ' Apple Gala(1 kg)', 1, 245, '', 2, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-11 09:18:53', '2021-09-13'),
(2, 1, '', 'Apple Golden Delicious (1kg)', 1, 250, '', 2, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-11 09:18:53', '2021-09-13'),
(3, 1, '', ' Banana (Shobri) (1 P)', 1, 10, '', 2, 'afasffa', '1246798', ' SubarnaChar, Noakhali ', '2021-09-11 09:22:16', '2021-09-13'),
(4, 1, '', ' Grapes Red (Kg)', 1, 300, '', 2, 'afasffa', '1246798', ' SubarnaChar, Noakhali ', '2021-09-11 09:22:16', '2021-09-11'),
(5, 1, '', 'Coconut', 1, 10, '', 2, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-11 09:31:12', '2021-09-13'),
(6, 1, '', ' Apple Gala(1 kg)', 1, 245, 'fruitsbazar', 2, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-11 10:21:33', '2021-09-11'),
(7, 1, '', ' Grapes White (Kg)', 1, 250, 'fruitsbazar', 1, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-11 10:21:33', '2021-09-11'),
(8, 1, '', ' Banana (Shobri) (1 P)', 1, 10, '', 2, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-12 19:34:21', '2021-09-12'),
(9, 1, '', 'Black Apple', 1, 150, '', 1, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-12 19:34:21', '2021-09-12'),
(10, 2, '', ' Banana (Shagor Kola) (1 P)', 1, 12, '', 0, '156464631afdasf', '1246798', ' Maijdee, Noakhali ', '2021-09-12 20:52:40', '2021-09-13'),
(11, 2, '', ' Banana (Shobri) (1 P)', 1, 10, '', 2, '156464631afdasf', '1246798', ' Maijdee, Noakhali ', '2021-09-12 20:52:40', '2021-09-13'),
(12, 2, '', 'Black Apple', 1, 150, '', 1, '156464631afdasf', '1246798', ' Maijdee, Noakhali ', '2021-09-12 20:52:40', '2020-09-13'),
(13, 5, '', ' Apple Gala(1 kg)', 1, 245, '', 2, 'avxev125', '1840239402', ' Jatrabari, Dhaka ', '2021-09-14 07:06:53', '2021-09-14'),
(14, 5, '', '  Apple Golden Delicious (1kg)', 1, 250, '', 0, 'avxev125', '1840239402', ' Jatrabari, Dhaka ', '2021-09-14 07:06:53', '2021-09-14'),
(15, 5, '', ' Apple Fuji(1 Kg)', 1, 208, '', 0, 'avxev125', '1840239402', ' Jatrabari, Dhaka ', '2021-09-14 08:02:43', '2021-09-14'),
(16, 5, '', ' Banana (Chini Chompa) (1 P)', 1, 10, '', 0, 'avxev125', '1840239402', ' Jatrabari, Dhaka ', '2021-09-14 08:02:43', '2021-09-14'),
(17, 5, '', '  Apple Golden Delicious (1kg)', 1, 250, '', 0, 'avxev125', '1840239402', ' Jatrabari, Dhaka ', '2021-09-14 08:02:43', '2021-09-14'),
(18, 5, '', ' Navel Oranges.', 1, 150, '', 0, '164614618', '1840239402', ' Jatrabari, Dhaka ', '2021-09-15 09:05:37', '2021-09-15'),
(19, 5, '', ' Grapes Black (Kg)', 1, 250, '', 0, '164614618', '1840239402', ' Jatrabari, Dhaka ', '2021-09-15 09:05:37', '2021-09-15'),
(20, 1, '', ' Banana (Shagor Kola) (1 P)', 1, 12, '', 0, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-15 10:28:12', '2021-09-15'),
(21, 1, '', '  Apple Golden Delicious (1kg)', 1, 250, '', 0, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-15 10:28:12', '2021-09-15'),
(22, 1, '', ' Navel Oranges.', 1, 150, 'fruitsbazar', 0, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-16 09:23:53', '2021-09-16'),
(23, 1, '', ' Banana (Shobri) (1 P)', 1, 10, 'fruitsbazar', 0, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-16 09:23:53', '2021-09-16'),
(24, 1, '', 'Black Apple', 1, 150, 'fruitsbazar', 0, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-16 09:23:53', '2021-09-16'),
(25, 1, '', ' Apple Fuji(1 Kg)', 1, 208, 'fruitsbazar', 0, 'avxev125', '1246798', ' SubarnaChar, Noakhali ', '2021-09-16 09:25:36', '2021-09-16'),
(26, 1, '', ' Apple Gala(1 kg)', 1, 245, 'fruitsbazar', 1, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-16 09:57:19', '2021-09-16'),
(27, 1, '', '  Apple Golden Delicious (1kg)', 1, 250, 'fruitsbazar', 0, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-16 09:57:19', '2021-09-16'),
(28, 1, '', ' Grapes White (Kg)', 1, 250, 'fruitsbazar', 0, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-16 09:59:31', '2021-09-16');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pdt_id` int(255) NOT NULL,
  `pdt_name` varchar(200) NOT NULL,
  `pdt_price` int(255) NOT NULL,
  `pdt_des` varchar(250) NOT NULL,
  `pdt_ctg` int(200) NOT NULL,
  `pdt_img` varchar(250) NOT NULL,
  `product_stock` int(5) NOT NULL,
  `pdt_status` tinyint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pdt_id`, `pdt_name`, `pdt_price`, `pdt_des`, `pdt_ctg`, `pdt_img`, `product_stock`, `pdt_status`) VALUES
(1, '  Apple Golden Delicious (1kg)', 12, 'Fruits bazar is an online shop for providing fresh fruits in Dhaka city. Here you can get huge collection of local and foreign fruits in your finger tips          ', 1, 'apple1.jpg', 10, 1),
(2, ' Apple Gala(1 kg)', 245, 'fruits bazar is an online shop for providing fresh fruits in Dhaka city. Here you can get huge collection of local and foreign fruits in your finger tips ', 1, '2901459.jpg', 15, 1),
(3, ' Apple Fuji(1 Kg)', 208, 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator. ', 1, '2901460.jpg', 10, 1),
(4, ' Banana (Shagor Kola) (1 P)', 12, 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator. ', 2, '2901099.jpg', 10, 1),
(5, ' Banana (Shobri) (1 P)', 10, 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator. ', 2, '2901100.jpg', 8, 1),
(6, ' Banana (Chini Chompa) (1 P)', 10, 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator. ', 2, '2901141.jpg', 12, 1),
(7, ' Grapes Red (Kg)', 300, 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator. ', 3, '2901051_19.jpg', 15, 1),
(8, ' Grapes White (Kg)', 250, 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator. ', 3, 'graps_white.jpg', 13, 1),
(9, ' Grapes Black (Kg)', 250, 'Tempranillo grapes are often blended with other grape varieties, such as Syrah, Grenache, or Cabernet Sauvignon, to create delicious wines. ', 3, 'black-seedless-grapes-500x500.jpg', 12, 1),
(11, 'Coconut', 10, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 6, 'tijana-drndarski-SJxDhVZR30I-unsplash.jpg', 11, 1),
(12, 'Black Apple', 150, 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator.', 1, 'Black apple.jpg', 5, 1),
(13, ' Navel Oranges.', 150, ' Navel Orange. Navel oranges are one of the most popular kinds of oranges out there. · 2. Blood Orange. The blood orange stands out from every other type of  ', 4, 'xiaolong-wong-nibgG33H0F8-unsplash.jpg', 15, 1),
(14, ' Cara Cara Oranges', 180, 'The fruit of any citrus tree is considered a hesperidium, a kind of modified berry; it is covered by a rind originated by a rugged thickening of the ovary wall. ', 4, 'mae-mu-U1iYwZ8Dx7k-unsplash.jpg', 15, 1),
(15, ' Valencia Oranges.', 200, 'Sweet orange varieties · Common orange – There are many varieties of common orange and it is widely grown. · Blood or pigmented orange ', 4, 'monika-grabkowska-qSkWlOBHia0-unsplash.jpg', 10, 1),
(16, 'Apples', 150, 'Kashmir apples in 15o rs per kg', 1, 'download (2).jpg', 30, 1),
(17, 'Apples', 150, 'My apples', 1, 'download (2).jpg', 19, 1),
(18, 'Apples', 150, 'apples', 1, 'download (1).jpg', 10, 1),
(19, 'Apples', 150, 'pp', 1, 'download (2).jpg', 12, 0),
(20, 'apple', 230, 'pp', 1, 'download.png', 12, 1),
(21, 'apple', 234, 'pp', 2, 'download.png', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_info_ctg`
--

CREATE TABLE `product_info_ctg` (
  `pdt_id` int(255) DEFAULT NULL,
  `pdt_name` varchar(200) DEFAULT NULL,
  `pdt_price` int(255) DEFAULT NULL,
  `pdt_des` varchar(250) DEFAULT NULL,
  `pdt_img` varchar(250) DEFAULT NULL,
  `product_stock` int(5) DEFAULT NULL,
  `pdt_status` tinyint(5) DEFAULT NULL,
  `ctg_id` int(11) DEFAULT NULL,
  `ctg_name` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `first_line` varchar(255) NOT NULL,
  `second_line` varchar(255) NOT NULL,
  `third_line` varchar(255) NOT NULL,
  `btn_left` varchar(25) NOT NULL,
  `btn_right` varchar(25) NOT NULL,
  `slider_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `first_line`, `second_line`, `third_line`, `btn_left`, `btn_right`, `slider_img`) VALUES
(1, 'Pomegranate', 'Fruits 100% Organic', 'A blend of freshly squeezed green apple & fruits', 'Shop now', 'View lookbook', 'green-slide-01.jpg'),
(2, 'Pomegranate', 'Orange 100% Organic', 'A blend of freshly squeezed green apple & fruits', 'Shop now', 'View lookbook', 'green-slide-02.jpg'),
(3, 'Pomegranate', 'Banana 100% Organic', 'A blend of freshly squeezed green apple & fruits', 'Shop now', 'View lookbook', 'green-slide-01.jpg'),
(4, 'Pomegranate', 'Apple 100% Organic', 'A blend of freshly squeezed green apple & fruits', 'Shop now', 'View lookbook', 'green-slide-02.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(6) NOT NULL,
  `user_name` varchar(60) NOT NULL,
  `user_firstname` varchar(60) NOT NULL,
  `user_lastname` varchar(60) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_mobile` int(11) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_roles` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_firstname`, `user_lastname`, `user_email`, `user_password`, `user_mobile`, `user_address`, `user_roles`, `created_at`, `modified_at`) VALUES
(7, 'prakashpatidar11', ' prakash', ' patidar', 'prakash@gmail.com', '00a1f187721c63501356bf791e69382c', 2147483647, 'mandsaur', 5, '2023-03-04 06:16:53', '2023-03-04 06:16:53'),
(8, 'prakashpatidarply@gmail.com', ' prakash', ' patidar', 'prakashpatidarply@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2147483647, 'sitamau', 5, '2023-03-20 04:19:54', '2023-03-20 04:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `postal_code` varchar(8) NOT NULL,
  `city` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_payment`
--

CREATE TABLE `user_payment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `provider` varchar(35) NOT NULL,
  `account_no` int(11) DEFAULT NULL,
  `expiry` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_logo`
--
ALTER TABLE `add_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`ctg_id`);

--
-- Indexes for table `cupon`
--
ALTER TABLE `cupon`
  ADD PRIMARY KEY (`cupon_id`);

--
-- Indexes for table `customer_feedback`
--
ALTER TABLE `customer_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_info`
--
ALTER TABLE `header_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pdt_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_payment`
--
ALTER TABLE `user_payment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_logo`
--
ALTER TABLE `add_logo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `ctg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cupon`
--
ALTER TABLE `cupon`
  MODIFY `cupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_feedback`
--
ALTER TABLE `customer_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `header_info`
--
ALTER TABLE `header_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pdt_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_payment`
--
ALTER TABLE `user_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;