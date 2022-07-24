-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2022 at 09:41 AM
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
-- Database: `relo_db`
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
(4, 2, 2, 1, 2, 1, 3500, '', '2022-05-22 16:05:02'),
(15, 6, 4, 7, 6, 1, 4500, '', '2022-06-13 04:53:12'),
(18, 6, 3, 6, 5, 1, 5000, '', '2022-07-11 23:31:00'),
(20, 4, 6, 9, 9, 1, 3500, '', '2022-07-13 19:11:20'),
(24, 5, 2, 1, 4, 3, 3500, '', '2022-07-19 22:17:19'),
(25, 5, 5, 5, 8, 1, 0, '', '2022-07-19 22:29:59'),
(28, 4, 6, 10, 17, 1, 3500, '', '2022-07-24 14:05:34');

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
(1, 'Audemars Piguet', '																<div style=\"text-align: justify; \"><font color=\"#000000\">Audemars Piguet Holding SA is a Swiss manufacturer of luxury mechanical watches and clocks, headquartered in Le Brassus, Switzerland. The company was founded by Jules Louis Audemars and Edward Auguste Piguet in the Vallée de Joux in 1875, acquiring the name Audemars Piguet &amp; Cie in 1881. The company has been family-owned since its founding.</font></div>														', '0000-00-00 00:00:00'),
(2, 'Tag Heuer', '<div style=\"text-align: justify; \"><font color=\"#000000\">\r\nTAG Heuer S.A. is a Swiss luxury watchmaker that designs, manufactures and markets watches and fashion accessories, as well as eyewear and mobile phones manufactured under license by other companies and carrying the TAG Heuer brand name. The company began as Uhrenmanufaktur Heuer AG, founded in 1860 by Edouard Heuer in St-Imier, Switzerland. In 1985, TAG Group purchased a majority stake in the company, forming TAG Heuer. In 1999, French luxury goods conglomerate LVMH bought nearly 100 percent of the Swiss company. The name TAG Heuer combines the initials of \"Techniques d\'Avant Garde\" and the founder\'s surname.\r\n</font></div>			', '0000-00-00 00:00:00'),
(3, 'Rolex', '<span style=\"color: rgb(0, 0, 0); text-align: justify;\">Rolex SA is a British-founded Swiss watch designer and manufacturer based in Geneva, Switzerland. Founded in 1905 as Wilsdorf and Davis by Hans Wilsdorf and Alfred Davis in London, England, the company registered the word \'Rolex\' as the brand name of its watches in 1908, and it became Rolex Watch Co. Ltd. in 1915. After World War I, the company moved its base of operations to Geneva because of the unfavorable economy in the United Kingdom. In 1920, Hans Wilsdorf registered Montres Rolex SA in Geneva as the new company name (montre is French for a watch (timepiece)); it later became Rolex SA. Since 1960, the company has been owned by the Hans Wilsdorf Foundation, a private family trust. Rolex SA and its subsidiary Montres TUDOR SA design, make, distribute, and service wristwatches sold under the Rolex and Tudor brands. Rolex did not produce their watches in-house since its foundation until the early 21st century where they bought over the components\' manufacturers which made the watches for Rolex, notably Jean Aegler. Rolex\'s past business model consists of purchasing all the watch components from third-party manufacturers and finishing the final assembly in the Rolex headquarters.</span>', '0000-00-00 00:00:00'),
(4, 'Patek Philippe', '<span style=\"color: rgb(0, 0, 0); text-align: justify;\">Patek Philippe SA is a Swiss luxury watch and clock manufacturer, located in the Canton of Geneva and the Vallée de Joux. Established in 1839, it is named after two of its founders, Antoni Patek and Adrien Philippe. Since 1932, the company has been owned by the Stern family in Switzerland and remains the last family-owned independent watch manufacturer in Geneva. Patek Philippe is one of the oldest watch manufacturers in the world with an uninterrupted watchmaking history since its founding. It designs and manufactures timepieces as well as movements, including some of the most complicated mechanical watches. The company maintains over 400 retail locations globally and over a dozen distribution centers across Asia, Europe, North America, and Oceania. In 2001, it opened the Patek Philippe Museum in Geneva.</span>', '0000-00-00 00:00:00'),
(5, 'Michael Kors', '<span style=\"color: rgb(0, 0, 0); text-align: justify;\">Michael Kors is a world-renowned, award-winning designer of luxury accessories and ready-to-wear. His namesake company, established in 1981, currently produces a range of products under his signature Michael Kors Collection, MICHAEL Michael Kors and Michael Kors Mens labels. These products include accessories, footwear, watches, jewelry, women’s and men’s ready-to-wear, wearable technology, eyewear and a full line of fragrance products. Michael Kors stores are operated, either directly or through licensing partners, in some of the most prestigious cities in the world, including New York, Beverly Hills, Chicago, London, Milan, Paris, Munich, Istanbul, Dubai, Seoul, Tokyo, Hong Kong, Shanghai and Rio de Janeiro. The company prides itself on hiring and retaining diverse talent and providing an inclusive work environment for all, while celebrating global events and cultures that reflect the diversity, experiences and perspectives of people around the world. Behind this burgeoning empire stands a singular designer with an innate sense of glamour and an unfailing eye for timeless chic. Michael Kors has won numerous accolades within the fashion industry, been honored for his philanthropy, and earned the respect and affection of millions. Wholly dedicated to a vision of style that is as sophisticated as it is indulgent, as iconic as it is modern, he has created an enduring luxury lifestyle empire with a global reach.</span>', '0000-00-00 00:00:00');

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
(4, 4, 'Black', '2022-05-22 16:49:20'),
(5, 5, 'Gold', '2022-05-22 16:48:56'),
(6, 3, 'Silver', '2022-05-22 17:10:34'),
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
(9, 'Gdfwb90nWhuymgLo', 4, 'mabunga st.', 2, '2022-07-13 19:06:37'),
(10, 'JkIqSt0aj7ZXKisD', 5, 'sa tabi lang', 0, '2022-07-19 22:06:57'),
(11, '2TdMRv3Pp5ojt9YW', 3, '123 address', 1, '2022-07-22 10:46:36');

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
(13, 9, 5, 8, 16, 1, 5000, '2022-07-13 19:06:37'),
(14, 10, 5, 5, 8, 4, 0, '2022-07-19 22:06:57'),
(15, 11, 6, 10, 17, 1, 3500, '2022-07-22 10:46:36');

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
(2, 1, 'Royal Oak Offshore', '																																																&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;text-align: start;&quot;&gt;The Royal Oak Offshore collection has defied established conventions since 1993, giving an ever more powerful and sportier take on the Royal Oak and its aesthetic codes.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;																																																									', 'JCSMmyV453K7xEg9', 3500, '2022-05-22 16:50:47'),
(3, 4, 'Tiffany', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Source Sans Pro&amp;quot;; font-size: 18px; text-align: center;&quot;&gt;In 2008, Patek Philippe opened its first U.S. boutique at Tiffany&rsquo;s Fifth Avenue flagship store. The elegant space celebrated the watchmaker&rsquo;s heritage and world-renowned timepieces for which Tiffany &amp;amp; Co. is the only retailer in America whose name appears on a&amp;nbsp;Patek&amp;nbsp;Philippe dial, making these timepieces highly sought-after by collectors.&amp;nbsp;&amp;nbsp;&lt;/span&gt;', 'b9qSY10cfy7uPmI6', 5000, '2022-05-22 16:52:20'),
(4, 5, 'Triple Black', '								The dark side never looked so good. Enter the Bradshaw, a sophisticated watch in brushed-black stainless steel featuring Roman numeral time-stops and chronograph dials. We especially like how old and new come together in this resilient and refined piece. Team it with a white T-shirt and blue jeans&mdash;the contrasting black will add an air of the unexpected to your work or weekend looks.							', 'NoHid3pArPCSqTEk', 4500, '2022-05-22 16:54:21'),
(5, 2, 'Carrera Calibre 36', '																								&lt;p&gt;																&lt;span style=&quot;font-size: 11px;&quot;&gt;﻿&lt;/span&gt;&lt;span class=&quot;title-label&quot; style=&quot;font-weight: 600; letter-spacing: 0.2rem; font-family: ProximaNova, sans-serif; font-size: 12px; text-transform: uppercase; padding-bottom: 3rem; display: inline-block; color: rgb(0, 0, 0);&quot;&gt;FUELING A NEED FOR SPEED&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Helvetica, Arial, sans-serif; font-size: 12px;&quot;&gt;&lt;/span&gt;&lt;h2 class=&quot;title-banner&quot; style=&quot;font-weight: 600; font-size: 2.4rem; font-family: ProximaNova, sans-serif; letter-spacing: 0.1rem; text-transform: uppercase; color: rgb(0, 0, 0); padding-bottom: 0.5rem;&quot;&gt;THE SPORTS WATCH OF AN ACTIVE ACHIEVER&lt;/h2&gt;&lt;p class=&quot;paragraph2 py-4 p contrast-black-txt&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 1.6rem; font-family: Helvetica, Arial, sans-serif; line-height: 1.5; color: grey;&quot;&gt;With refined indexes and hands to better catch the light, the TAG Heuer Carrera is easy to read even at full speed. Parallel and elongated lugs that feel solid and sturdy on the wrist, and metal crown for an elegant yet sporty feel.&lt;/p&gt;														&lt;/p&gt;																					', '5KygmkTuPLDaHRob', 5500, '2022-05-22 16:56:10'),
(6, 3, 'Submariner', 'Launched in 1953, the Submariner was the first divers&rsquo; wristwatch waterproof to a depth of 100 metres (330 feet). This was the second great breakthrough in the technical mastery of waterproofness, following the invention of the Oyster, the world&rsquo;s first waterproof wristwatch, in 1926. In watchmaking, the Submariner represented a historic turning point; it set the standard for divers&rsquo; watches. Today, the Submariner is waterproof to a depth of 300 metres (1,000 feet).', 'NoHid3pArPCSqTEh', 3500, '2022-05-22 16:59:10');

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
(1, 'Admin', 'Admin', '', '+1245678', 'Barangay Sample', 'admin@admin.com', 'd41d8cd98f00b204e9800998ecf8427e', 1, '', '2022-05-23 16:31:00'),
(3, 'kimchi', 'korea', 'bulgogi', '+123456', 'sample address', 'sample2@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 2, '', '2022-05-22 20:14:58'),
(4, 'captain', 'tagalog', 'america', '+12345678', '55 manggahan, mabunga st.  pasig city', 'sample3@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '', '2022-05-23 16:23:18'),
(5, 'Laurence', 'Admin', 'The', '124567', 'sa tabi lang', 'laurence@admin.com', '202cb962ac59075b964b07152d234b70', 1, '', '2022-05-23 16:26:52'),
(6, 'test', 'test', 'test', '12345', 'test address', 'test@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 2, '', '2022-06-13 04:34:09');

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
