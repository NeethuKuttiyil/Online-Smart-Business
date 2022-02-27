-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2021 at 08:14 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartbusiness`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `area_id` int(11) NOT NULL,
  `area_name` varchar(50) NOT NULL,
  `area_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `area_name`, `area_code`) VALUES
(1, 'Mumbai', 'MUM44'),
(2, 'Satara', 'SAT66'),
(3, 'Pune', 'PUN11'),
(4, 'Nagpur', 'NRG99'),
(5, 'Nashik', 'NAI77');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(25) NOT NULL,
  `cat_details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_details`) VALUES
(1, 'IRON', 'Iron is a lustrous, ductile, malleable, silver-gray metal'),
(2, 'STEEL', ' an alloy made up of iron with typically a few tenths of a percent of carbon '),
(3, 'SLIVER', ' white lustrous metal valued for its decorative beauty and electrical conductivity'),
(5, 'BRASS', 'Brass is an alloy of Copper and zinc'),
(9, 'Bronze.', 'Bronze, alloy traditionally composed of copper and tin. .'),
(11, 'Aluminum.', 'Aluminium is a silvery-white metal.');

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `dist_id` int(11) NOT NULL,
  `dist_name` varchar(25) NOT NULL,
  `dist_email` varchar(50) DEFAULT NULL,
  `dist_phone` varchar(10) NOT NULL,
  `dist_address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`dist_id`, `dist_name`, `dist_email`, `dist_phone`, `dist_address`) VALUES
(1, 'Joey D', 'joye@gmail.com', '1254369875', 'Alpha Mall, Vastrapur,  Mumbai'),
(2, 'Jackob P', 'jp431@gmail.com', '9099430412', ', S.G. Highway, Pune'),
(3, 'Libina', 'linina@gmail.com', '7878025437', 'MG road nashik'),
(4, 'Sophia Sha', 'sha@gmail.com', '9012376544', 'JPM road Nagpur'),
(5, 'Haniket M', 'hanit@gmail.com', '8980745372', 'Pip line road Mumbai'),
(6, 'aaaaa', 'aa@gmail.com', '7854123698', 'demo');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `retailer_id` int(11) NOT NULL,
  `dist_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `total_amount` decimal(10,3) NOT NULL,
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `order_id`, `retailer_id`, `dist_id`, `date`, `total_amount`, `comments`) VALUES
(1, 2, 4, 3, '2015-04-28', '5119.500', ''),
(2, 1, 2, 5, '2015-04-28', '4780.150', ''),
(3, 3, 1, 1, '2015-04-28', '8891.680', ''),
(4, 4, 5, 4, '2015-04-28', '7888.960', ''),
(5, 5, 5, 1, '2020-12-07', '8919.880', 'asd'),
(6, 5, 5, 6, '2021-10-01', '8919.880', ''),
(7, 5, 5, 1, '2021-10-01', '8919.880', ''),
(8, 5, 5, 1, '2021-10-01', '8919.880', ''),
(9, 5, 5, 1, '2021-10-01', '8919.880', 'demo'),
(10, 5, 5, 1, '2021-10-01', '8919.880', 'demo'),
(11, 5, 5, 1, '2021-10-01', '8919.880', 'demo'),
(18, 5, 5, 4, '2021-10-01', '8919.880', ''),
(28, 5, 5, 6, '2021-10-01', '8919.880', ''),
(29, 5, 5, 6, '2021-10-01', '8919.880', ''),
(30, 5, 5, 6, '2021-10-01', '8919.880', ''),
(31, 5, 5, 6, '2021-10-01', '8919.880', ''),
(32, 5, 5, 5, '2021-10-01', '8919.880', ''),
(41, 5, 5, 2, '2021-10-04', '8919.880', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `invoice_items_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`invoice_items_id`, `invoice_id`, `product_id`, `quantity`) VALUES
(1, 1, 4, 20),
(2, 1, 5, 5),
(3, 1, 7, 10),
(4, 1, 9, 10),
(5, 1, 12, 6),
(6, 1, 14, 5),
(7, 2, 1, 20),
(8, 2, 2, 15),
(9, 2, 5, 10),
(10, 2, 8, 5),
(11, 2, 10, 8),
(12, 2, 11, 10),
(13, 2, 13, 2),
(14, 2, 15, 3),
(15, 3, 1, 2),
(16, 3, 2, 4),
(17, 3, 3, 3),
(18, 3, 4, 8),
(19, 3, 5, 10),
(20, 3, 6, 12),
(21, 3, 8, 4),
(22, 3, 11, 10),
(23, 3, 13, 3),
(24, 3, 14, 5),
(25, 3, 15, 6),
(26, 4, 2, 12),
(27, 4, 4, 30),
(28, 4, 8, 4),
(29, 4, 11, 20),
(30, 4, 14, 8);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `man_id` int(11) NOT NULL,
  `man_name` varchar(25) NOT NULL,
  `man_email` varchar(50) DEFAULT NULL,
  `man_phone` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`man_id`, `man_name`, `man_email`, `man_phone`, `username`, `password`) VALUES
(7, 'aaaaa', 'aa@gmail.com', '7845213996', 'nayana', 'neethu');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `retailer_id` int(11) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `total_amount` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `date`, `retailer_id`, `approved`, `status`, `total_amount`) VALUES
(1, '2015-04-28', 2, 1, 1, '4780.150'),
(2, '2015-04-28', 4, 1, 1, '5119.500'),
(3, '2015-04-28', 1, 1, 1, '8891.680'),
(4, '2015-04-28', 5, 1, 1, '7888.960'),
(5, '2015-04-28', 5, 1, 0, '8919.880'),
(6, '2020-12-07', 1, 0, 0, '50.010'),
(7, '2021-10-01', 6, 0, 0, '4850.800'),
(8, '2021-10-01', 6, 0, 0, '786.430'),
(9, '2021-10-01', 6, 0, 0, '120.000'),
(10, '2021-10-02', 7, 0, 0, '648.020'),
(11, '2021-10-02', 6, 0, 0, '200.040'),
(12, '2021-10-02', 9, 0, 0, '30266.720'),
(13, '2021-10-02', 6, 0, 0, '200.040'),
(14, '2021-10-04', 6, 0, 0, '210000.000'),
(15, '2021-10-05', 10, 0, 0, '210092.000');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_items_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `quantity` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_items_id`, `order_id`, `pro_id`, `quantity`) VALUES
(1, 1, 1, 20),
(2, 1, 2, 15),
(3, 1, 5, 10),
(4, 1, 8, 5),
(5, 1, 10, 8),
(6, 1, 11, 10),
(7, 1, 13, 2),
(8, 1, 15, 3),
(9, 2, 4, 20),
(10, 2, 5, 5),
(11, 2, 7, 10),
(12, 2, 9, 10),
(13, 2, 12, 6),
(14, 2, 14, 5),
(15, 3, 1, 2),
(16, 3, 2, 4),
(17, 3, 3, 3),
(18, 3, 4, 8),
(19, 3, 5, 10),
(20, 3, 6, 12),
(21, 3, 8, 4),
(22, 3, 11, 10),
(23, 3, 13, 3),
(24, 3, 14, 5),
(25, 3, 15, 6),
(26, 4, 2, 12),
(27, 4, 4, 30),
(28, 4, 8, 4),
(29, 4, 11, 20),
(30, 4, 14, 8),
(31, 5, 1, 1),
(32, 5, 2, 3),
(33, 5, 3, 5),
(34, 5, 4, 15),
(35, 5, 6, 30),
(36, 5, 8, 45),
(37, 5, 12, 20),
(38, 5, 14, 5),
(39, 6, 1, 1),
(40, 6, 2, 2),
(41, 7, 3, 50),
(42, 7, 8, 10),
(43, 7, 11, 20),
(44, 8, 1, 3),
(45, 8, 2, 4),
(46, 8, 3, 1),
(47, 8, 4, 1),
(48, 8, 5, 1),
(49, 8, 6, 1),
(50, 8, 12, 1),
(51, 8, 13, 1),
(52, 9, 11, 1),
(53, 10, 1, 5),
(54, 10, 2, 1),
(55, 10, 4, 2),
(56, 10, 11, 2),
(57, 10, 12, 2),
(58, 11, 1, 12),
(59, 12, 1, 12),
(60, 12, 2, 4),
(61, 12, 17, 10),
(62, 12, 18, 20),
(63, 13, 1, 12),
(64, 14, 1, 12),
(65, 15, 1, 12),
(66, 15, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(25) NOT NULL,
  `pro_desc` text DEFAULT NULL,
  `pro_price` decimal(10,3) NOT NULL,
  `unit` int(11) NOT NULL,
  `pro_cat` int(11) NOT NULL,
  `quantity` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pro_id`, `pro_name`, `pro_desc`, `pro_price`, `unit`, `pro_cat`, `quantity`) VALUES
(1, 'Iron_101', '', '17500.000', 1, 1, 20),
(2, 'Iron_211', '', '16.670', 1, 1, 30),
(3, 'Iron_a34', '', '559.850', 2, 1, 50),
(4, 'Iron_NN', '', '889.000', 1, 1, 60),
(5, 'Iron_aa', '', '52.500', 1, 1, 75),
(6, 'Steel_1', '', '4210.000', 2, 2, 96),
(7, 'STEEL_2', '', '46.000', 1, 2, 10),
(8, 'STEEL_3', '', '47.230', 1, 2, 5),
(9, 'STEEL_4', '', '48.500', 1, 2, 80),
(10, 'STEEL_5', '', '35.650', 2, 2, 100),
(11, 'BRONZE_@1', '', '120.000', 1, 9, 300),
(12, 'BRONZE@2', '', '112.000', 1, 9, 500),
(13, 'SLIVER#1', '', '381.670', 1, 3, 750),
(14, 'SLIVER#2', '', '480.000', 1, 3, 220),
(15, 'SLIVER', '', '395.670', 1, 3, 321),
(17, 'SLIV5', 'demoo', '1000.000', 1, 1, 85),
(18, 'AAAA', 'AAAAAAAA', '1000.000', 1, 11, 200);

-- --------------------------------------------------------

--
-- Table structure for table `retailer`
--

CREATE TABLE `retailer` (
  `retailer_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `address` varchar(200) NOT NULL,
  `area_id` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `retailer`
--

INSERT INTO `retailer` (`retailer_id`, `username`, `password`, `address`, `area_id`, `phone`, `email`) VALUES
(1, 'neethu', 'altaf123', 'A4 Ali Abad Appt, Kajal Park Soci, Sarkhej Road, Pune', 1, '9978454323', 'neethu@gmail.com'),
(2, 'nayan', 'nayan123', 'Opp. Shivalik Complex, Vastrapur, Satara', 2, '9898906523', 'nayan@gmail.com'),
(3, 'nishit', 'nishit123', 'B/H Kakariya Lake, Maninagar, mumbai', 3, '8980941941', 'nishit@gmail.com'),
(4, 'Nayan', 'dharmil123', 'JB junction Nagpur', 5, '7865340091', 'nayan@gmail.com'),
(5, 'Priya', 'rajesh123', 'C4-Pushpak Complex, New Ranip, Nagupar', 4, '7898902365', 'priya@gmail.com'),
(6, 'nayana', 'neethu', 'demo', 5, '1236547897', 'aa@gmail.com'),
(7, 'priya', 'priya', 'aemo ', 4, '1236547897', 'aa@gmail.com'),
(8, 'nayana', 'neethu', 'demo', 1, '1236547897', 'aa@gmail.com'),
(9, 'newret', 'newret', 'dm ', 1, '1236547897', 'aa@gmail.com'),
(10, 'neethu', 'neethu', 'mmn', 3, '1236547897', 'aa@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_sender_name` text NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `parent_comment_id`, `comment`, `comment_sender_name`, `date`) VALUES
(1, 0, 'gr', 'sef@gmai.com', '2021-10-04 15:14:38.598196'),
(2, 0, 'ajbdj', 'nn@gmail.com', '2021-10-04 15:24:43.455572');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment1`
--

CREATE TABLE `tbl_comment1` (
  `comment_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_sender_name` text NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_comment1`
--

INSERT INTO `tbl_comment1` (`comment_id`, `parent_comment_id`, `comment`, `comment_sender_name`, `date`) VALUES
(1, 0, 'mqq', 'nn@gmail.com', '2021-10-04 15:40:22.780615'),
(2, 0, 'asd', 'nn@gmail.com', '2021-10-04 15:42:36.410107');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(20) NOT NULL,
  `unit_details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `unit_name`, `unit_details`) VALUES
(1, 'KG', 'Kilo Gram'),
(2, 'PCS', 'Pieces'),
(3, 'LTR', 'Litre');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`dist_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `retailer_id` (`retailer_id`),
  ADD KEY `dist_id` (`dist_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`invoice_items_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`man_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `retailer_id` (`retailer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_items_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `unit` (`unit`),
  ADD KEY `pro_cat` (`pro_cat`);

--
-- Indexes for table `retailer`
--
ALTER TABLE `retailer`
  ADD PRIMARY KEY (`retailer_id`),
  ADD KEY `area_code` (`area_id`),
  ADD KEY `area_id` (`area_id`),
  ADD KEY `area_id_2` (`area_id`),
  ADD KEY `area_id_3` (`area_id`),
  ADD KEY `area_id_4` (`area_id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `tbl_comment1`
--
ALTER TABLE `tbl_comment1`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
  MODIFY `dist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `invoice_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `man_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `retailer`
--
ALTER TABLE `retailer`
  MODIFY `retailer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_comment1`
--
ALTER TABLE `tbl_comment1`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`retailer_id`) REFERENCES `retailer` (`retailer_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_ibfk_3` FOREIGN KEY (`dist_id`) REFERENCES `distributor` (`dist_id`) ON UPDATE CASCADE;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`invoice_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`pro_id`) ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`retailer_id`) REFERENCES `retailer` (`retailer_id`) ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `products` (`pro_id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`unit`) REFERENCES `unit` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`pro_cat`) REFERENCES `categories` (`cat_id`) ON UPDATE CASCADE;

--
-- Constraints for table `retailer`
--
ALTER TABLE `retailer`
  ADD CONSTRAINT `retailer_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
