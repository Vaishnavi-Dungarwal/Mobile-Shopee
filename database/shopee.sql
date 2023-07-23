-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2020 at 08:50 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `item_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_MRP` double(10,2) NOT NULL,
  `item_save` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_MRP`, `item_save`, `item_image`, `item_register`) VALUES
(1, 'One-Plus', 'One-Plus Nord', 30000.00, 32000.00, 2000.00, './assets/Product/1.png', '2020-10-30 19:20:41'),
(2, 'Apple', 'Apple 11', 68000.00, 70000.00, 2000.00, './assets/Product/2.png', '2020-10-30 19:20:41'),
(3, 'Apple', 'Apple XR', 60000.00, 61500.00, 1500.00, './assets/Product/3.png', '2020-10-30 19:20:41'),
(4, 'Apple', 'Apple 11 Pro Max', 95000.00, 97000.00, 3000.00, './assets/Product/4.png', '2020-10-30 19:20:41'),
(5, 'Samsung', 'Samsung Galaxy Note 10', 85000.00, 89000.00, 4000.00, './assets/Product/5.png', '2020-10-30 19:20:41'),
(6, 'Samsung', 'Samsung Galaxy S8 plus', 60000.00, 62000.00, 2000.00, './assets/Product/6.png', '2020-10-30 19:20:41'),
(7, 'Samsung', 'Samsung Galaxy Note 9', 75000.00, 77000.00, 2000.00, './assets/Product/7.png', '2020-10-30 19:20:41'),
(8, 'Samsung', 'Samsung Galaxy S20 Plus', 80000.00, 83000.00, 3000.00, './assets/Product/8.png', '2020-10-30 19:20:41'),
(9, 'Samsung', 'Samsung Galaxy S20 Ultra', 105000.00, 107000.00, 2000.00, './assets/Product/9.png', '2020-10-30 19:20:41'),
(10, 'One-Plus', 'One-Plus 8', 40000.00, 43000.00, 3000.00, './assets/Product/10.png', '2020-10-30 19:20:41'),
(11, 'One-Plus', 'One-Plus 7t', 35000.00, 37000.00, 2000.00, './assets/Product/11.png', '2020-10-30 19:20:41'),
(12, 'Apple', 'Apple SE', 45000.00, 47000.00, 2000.00, './assets/Product/12.png', '2020-10-30 19:20:41'),
(13, 'Redmi', 'Redmi K20', 25000.00, 28000.00, 3000.00, './assets/Product/13.png', '2020-10-30 19:20:41'),
(14, 'Redmi', 'Redmi Note 9 Pro', 15000.00, 17000.00, 2000.00, './assets/Product/14.png', '2020-10-30 19:20:41'),
(15, 'Redmi', 'Redmi Note 8', 13000.00, 15000.00, 2000.00, './assets/Product/15.png', '2020-10-30 19:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_data`) VALUES
(1, 'Brainy', 'Buddies', '2020-10-24 13:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `item_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
