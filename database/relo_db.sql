-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2022 at 10:56 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jewelry_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `colour_id` int(30) NOT NULL,
  `size_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `price` float NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `colour_id`, `size_id`, `qty`, `price`, `ip_address`, `date_created`) VALUES
(4, 2, 2, 1, 2, 1, 3500, '', '2022-05-22 16:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `date_created`) VALUES
(1, 'Audemars Piguet', '																								<span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur scelerisque eget ante eu laoreet. Duis a rutrum eros. Duis maximus varius ipsum eu maximus. Proin et feugiat felis, non sodales erat. Nunc porta diam sit amet diam tincidunt, eleifend volutpat erat tristique. Integer vitae ex nec dolor tempus rutrum vel sed nulla. Nam elit enim, placerat vel lectus quis, facilisis sollicitudin velit. Vivamus blandit lectus vitae libero facilisis, vitae bibendum arcu consequat. Duis viverra interdum molestie. Vivamus mattis auctor velit.</span>																																				', '0000-00-00 00:00:00'),
(2, 'Tag Heuer', '								<span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Duis quis felis sit amet odio convallis ullamcorper vel sed eros. Donec leo magna, tincidunt non ipsum quis, semper convallis eros. Nam et lectus vitae est mollis facilisis sit amet vitae metus. Aliquam sagittis ligula non vulputate consequat. Pellentesque non eleifend dolor, ac facilisis velit. Aenean pulvinar eget lorem et dictum. Nulla et sollicitudin eros. Donec eu tortor ac nibh tincidunt gravida id in nisl. Nam auctor ultrices justo et fermentum. Quisque quis risus libero. Aliquam porttitor ante vel sem fringilla suscipit. Nulla ac tempus velit. Sed laoreet vestibulum rutrum. Proin tellus erat, fermentum imperdiet feugiat non, vestibulum at velit. Proin orci lectus, mattis vel ultricies id, iaculis et nunc.</span>																						', '0000-00-00 00:00:00'),
(3, 'Rolex', '																<span style=\"color: rgb(0, 0, 0);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur scelerisque eget ante eu laoreet. Duis a rutrum eros. Duis maximus varius ipsum eu maximus. Proin et feugiat felis, non sodales erat. Nunc porta diam sit amet diam tincidunt, eleifend volutpat erat tristique. Integer vitae ex nec dolor tempus rutrum vel sed nulla. Nam elit enim, placerat vel lectus quis, facilisis sollicitudin velit. Vivamus blandit lectus vitae libero facilisis, vitae bibendum arcu consequat. Duis viverra interdum molestie. Vivamus mattis auctor velit.</span>																													', '0000-00-00 00:00:00'),
(4, 'Patek Philippe', '<span style=\"color: rgb(0, 0, 0);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur scelerisque eget ante eu laoreet. Duis a rutrum eros. Duis maximus varius ipsum eu maximus. Proin et feugiat felis, non sodales erat. Nunc porta diam sit amet diam tincidunt, eleifend volutpat erat tristique. Integer vitae ex nec dolor tempus rutrum vel sed nulla. Nam elit enim, placerat vel lectus quis, facilisis sollicitudin velit. Vivamus blandit lectus vitae libero facilisis, vitae bibendum arcu consequat. Duis viverra interdum molestie. Vivamus mattis auctor velit.</span>																														', '0000-00-00 00:00:00'),
(5, 'Michael Kors', '<span style=\"color: rgb(0, 0, 0);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur scelerisque eget ante eu laoreet. Duis a rutrum eros. Duis maximus varius ipsum eu maximus. Proin et feugiat felis, non sodales erat. Nunc porta diam sit amet diam tincidunt, eleifend volutpat erat tristique. Integer vitae ex nec dolor tempus rutrum vel sed nulla. Nam elit enim, placerat vel lectus quis, facilisis sollicitudin velit. Vivamus blandit lectus vitae libero facilisis, vitae bibendum arcu consequat. Duis viverra interdum molestie. Vivamus mattis auctor velit.</span>																														', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `colours`
--

CREATE TABLE `colours` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `color` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colours`
--

INSERT INTO `colours` (`id`, `product_id`, `color`, `date_created`) VALUES
(1, 2, 'Gold', '2022-05-22 16:56:10'),
(2, 2, 'Silver', '2022-05-22 16:56:10'),
(3, 3, 'Gold', '2022-05-22 17:10:34'),
(4, 4, 'Gold ', '2022-05-22 16:49:20'),
(5, 5, 'Gold', '2022-05-22 16:48:56'),
(6, 3, 'Silver', '2022-05-22 17:10:34'),
(7, 4, 'Silver', '2022-05-22 16:49:20'),
(8, 5, 'Silver', '2022-05-22 16:48:56'),
(9, 6, 'Gold', '2022-05-22 16:57:47'),
(10, 6, 'Silver', '2022-05-22 16:57:47');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `ref_id` varchar(200) NOT NULL,
  `user_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ref_id`, `user_id`, `delivery_address`, `status`, `date_created`) VALUES
(3, 'xs19Vmk2WUL5MDnj', 3, 'sample address', 1, '2022-05-22 20:55:09'),
(4, 'j5sfteuiXA42UP9C', 3, 'sample address', 4, '2022-05-22 21:11:53'),
(5, 'DEcpLv9Axi1rY24I', 3, 'sample address', 3, '2022-05-23 16:06:57'),
(6, 'CRYcnZgGMwmJFQyS', 3, 'sample address', 0, '2022-05-23 16:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `colour_id` int(30) NOT NULL,
  `size_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `colour_id`, `size_id`, `qty`, `price`, `date_created`) VALUES
(4, 3, 5, 8, 8, 2, 3500, '2022-05-22 20:55:09'),
(5, 4, 6, 10, 9, 4, 4000, '2022-05-22 21:11:53'),
(6, 5, 7, 12, 10, 2, 2500, '2022-05-23 16:06:57'),
(7, 5, 2, 2, 14, 2, 3500, '2022-05-23 16:06:57'),
(8, 5, 5, 5, 8, 3, 5000, '2022-05-23 16:06:57'),
(9, 6, 6, 9, 9, 2, 3500, '2022-05-23 16:54:28'),
(10, 6, 4, 7, 6, 4, 4500, '2022-05-23 16:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `item_code` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `item_code`, `price`, `date_created`) VALUES
(2, 1, 'Royal Oak Offshore', '																																								&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur scelerisque eget ante eu laoreet. Duis a rutrum eros. Duis maximus varius ipsum eu maximus. Proin et feugiat felis, non sodales erat. Nunc porta diam sit amet diam tincidunt, eleifend volutpat erat tristique. Integer vitae ex nec dolor tempus rutrum vel sed nulla. Nam elit enim, placerat vel lectus quis, facilisis sollicitudin velit. Vivamus blandit lectus vitae libero facilisis, vitae bibendum arcu consequat. Duis viverra interdum molestie. Vivamus mattis auctor velit.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Duis quis felis sit amet odio convallis ullamcorper vel sed eros. Donec leo magna, tincidunt non ipsum quis, semper convallis eros. Nam et lectus vitae est mollis facilisis sit amet vitae metus. Aliquam sagittis ligula non vulputate consequat. Pellentesque non eleifend dolor, ac facilisis velit. Aenean pulvinar eget lorem et dictum. Nulla et sollicitudin eros. Donec eu tortor ac nibh tincidunt gravida id in nisl. Nam auctor ultrices justo et fermentum. Quisque quis risus libero. Aliquam porttitor ante vel sem fringilla suscipit. Nulla ac tempus velit. Sed laoreet vestibulum rutrum. Proin tellus erat, fermentum imperdiet feugiat non, vestibulum at velit. Proin orci lectus, mattis vel ultricies id, iaculis et nunc.&lt;/p&gt;																																																		', 'JCSMmyV453K7xEg9', 3500, '2022-05-22 16:50:47'),
(3, 4, 'Tiffany', '																								&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Aliquam consequat non tortor sed placerat. Mauris pulvinar suscipit est at tempor. Curabitur tempor ornare mauris, vitae sagittis massa congue ac. Nulla nisl ante, convallis at metus non, laoreet feugiat nisi. Proin rutrum lorem ut interdum suscipit. Sed ultrices nec magna eget rutrum. Nunc aliquam mauris vitae accumsan pulvinar. Nullam lorem neque, auctor in nisl vel, accumsan ultrices sapien. Morbi porta, ante at placerat eleifend, risus tellus consequat nisi, quis euismod ipsum ligula ac elit. Ut auctor nulla at sem blandit eleifend. Sed mollis auctor varius. Fusce tristique nibh quis orci sagittis viverra. Nullam consequat vestibulum volutpat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla dapibus fermentum nulla et ultricies.&lt;/span&gt;																																				', 'b9qSY10cfy7uPmI6', 5000, '2022-05-22 16:52:20'),
(4, 5, 'Triple Black', '																&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Aliquam consequat non tortor sed placerat. Mauris pulvinar suscipit est at tempor. Curabitur tempor ornare mauris, vitae sagittis massa congue ac. Nulla nisl ante, convallis at metus non, laoreet feugiat nisi. Proin rutrum lorem ut interdum suscipit. Sed ultrices nec magna eget rutrum. Nunc aliquam mauris vitae accumsan pulvinar. Nullam lorem neque, auctor in nisl vel, accumsan ultrices sapien. Morbi porta, ante at placerat eleifend, risus tellus consequat nisi, quis euismod ipsum ligula ac elit. Ut auctor nulla at sem blandit eleifend. Sed mollis auctor varius. Fusce tristique nibh quis orci sagittis viverra. Nullam consequat vestibulum volutpat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla dapibus fermentum nulla et ultricies.&lt;/span&gt;																													', 'NoHid3pArPCSqTEk', 4500, '2022-05-22 16:54:21'),
(5, 2, 'Carrera Calibre 36', '								&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Aliquam consequat non tortor sed placerat. Mauris pulvinar suscipit est at tempor. Curabitur tempor ornare mauris, vitae sagittis massa congue ac. Nulla nisl ante, convallis at metus non, laoreet feugiat nisi. Proin rutrum lorem ut interdum suscipit. Sed ultrices nec magna eget rutrum. Nunc aliquam mauris vitae accumsan pulvinar. Nullam lorem neque, auctor in nisl vel, accumsan ultrices sapien. Morbi porta, ante at placerat eleifend, risus tellus consequat nisi, quis euismod ipsum ligula ac elit. Ut auctor nulla at sem blandit eleifend. Sed mollis auctor varius. Fusce tristique nibh quis orci sagittis viverra. Nullam consequat vestibulum volutpat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla dapibus fermentum nulla et ultricies.&lt;/span&gt;																						', '5KygmkTuPLDaHRob', 5000, '2022-05-22 16:56:10'),
(6, 3, 'Submariner', '																&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Aliquam consequat non tortor sed placerat. Mauris pulvinar suscipit est at tempor. Curabitur tempor ornare mauris, vitae sagittis massa congue ac. Nulla nisl ante, convallis at metus non, laoreet feugiat nisi. Proin rutrum lorem ut interdum suscipit. Sed ultrices nec magna eget rutrum. Nunc aliquam mauris vitae accumsan pulvinar. Nullam lorem neque, auctor in nisl vel, accumsan ultrices sapien. Morbi porta, ante at placerat eleifend, risus tellus consequat nisi, quis euismod ipsum ligula ac elit. Ut auctor nulla at sem blandit eleifend. Sed mollis auctor varius. Fusce tristique nibh quis orci sagittis viverra. Nullam consequat vestibulum volutpat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla dapibus fermentum nulla et ultricies.&lt;/span&gt;																													', 'NoHid3pArPCSqTEh', 3500, '2022-05-22 16:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `product_id` int(30) NOT NULL,
  `size` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `product_id`, `size`, `date_created`) VALUES
(4, 2, 'Unisex (38-41 mm)', '2022-05-23 16:31:24'),
(5, 3, 'Unisex (38-41 mm)', '2022-05-23 16:40:12'),
(6, 4, 'Unisex (38-41 mm)', '2022-05-23 16:49:10'),
(7, 4, 'Large (42-49 mm)', '2022-05-23 16:50:10'),
(8, 5, 'Unisex (38-41 mm)', '2022-05-23 16:52:40'),
(9, 6, 'Unisex (38-41 mm)', '2022-05-23 16:56:47'),
(14, 2, 'Large (42-49 mm)', '2022-05-23 15:17:56'),
(15, 3, 'Large (42-49 mm)', '2022-05-23 15:44:51'),
(16, 5, 'Large (42-49 mm)', '2022-05-23 15:57:18'),
(17, 6, 'Large (42-49 mm)', '2022-05-23 16:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Admin,2= users',
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(1, 'Admin', 'Admin', '', '+12354654787', 'Sample', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, '', '2022-05-23 16:31:00'),
(3, 'kimchi', 'korea', 'bulgogi', '+123456', 'sample address', 'sample2@gmail.com', 'edcc21dc21a00842a4c3509b844ddeb3', 2, '', '2022-05-22 20:14:58'),
(4, 'captain', 'tagalog', 'america', '+12345678', 'mabunga st.', 'sample3@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '', '2022-05-23 16:23:18'),
(5, 'Laurence', 'Admin', 'The', '124567', 'sa tabi lang', 'laurence@admin.com', '202cb962ac59075b964b07152d234b70', 1, '', '2022-05-23 16:26:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colours`
--
ALTER TABLE `colours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `colours`
--
ALTER TABLE `colours`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
