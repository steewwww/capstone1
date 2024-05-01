-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2024 at 05:26 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cart_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_name`, `description`, `product_price`, `product_image`, `qty`, `total_price`, `product_code`) VALUES
(687, 'sets ', '0.80m x 1.20m, Glass Window with complete \r\naccessories', '4200', '', 1, '4200', '5'),
(688, 'Unit', 'Desktop i3 \r\nWindows 11 Home \r\nIntel Core i3-13th gen \r\n 8GB DDR4 Memory \r\n1TB HDD, 256GB, M.2 2280 PCI-E SSD \r\nIntel UHD 770 Graphics \r\nMS Office home and student 2021 \r\n(licensed) \r\n23.8\" screen monitor, 1920x1080 @60Hz \r\n keyboard and mouse \r\n', '40000', '', 1, '40000', '2'),
(689, 'Unit', 'Printer for transparent sticker \r\n? Print Dimension: 200mm*200mm, \r\n210mm*290mm, 210mm*300mm, \r\n297mm*210mm, A4 \r\n? Weight: 34kg \r\n? Ink Type: UV Type \r\n? Dimension (L*W*H): 636*547*490mm \r\n? Color and Page: Multicolor \r\n? Video Outgoing Inspection: Provided \r\n? Software: AcroRIP white ver.9.0 \r\n? Printing Resolution: 1440*1440DPI \r\n? Printing Size: 21*30CM \r\n? Color: CMYK+W+Varnish \r\n? Support System: Windows XP \r\n? Printer Gross Weight: 45kg \r\n', '300000', '', 1, '300000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `input_one` text NOT NULL,
  `input_two` text NOT NULL,
  `input_three` text NOT NULL,
  `selected_name` text NOT NULL,
  `selected_role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT 1,
  `product_image` varchar(255) NOT NULL,
  `product_code` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `description`, `product_price`, `product_qty`, `product_image`, `product_code`, `category`) VALUES
(99, 'Unit', 'Printer for transparent sticker \r\n? Print Dimension: 200mm*200mm, \r\n210mm*290mm, 210mm*300mm, \r\n297mm*210mm, A4 \r\n? Weight: 34kg \r\n? Ink Type: UV Type \r\n? Dimension (L*W*H): 636*547*490mm \r\n? Color and Page: Multicolor \r\n? Video Outgoing Inspection: Provided \r\n? Software: AcroRIP white ver.9.0 \r\n? Printing Resolution: 1440*1440DPI \r\n? Printing Size: 21*30CM \r\n? Color: CMYK+W+Varnish \r\n? Support System: Windows XP \r\n? Printer Gross Weight: 45kg \r\n', '300000', 5, '', 1, 'electronics'),
(101, 'Unit', 'Desktop i3 \r\nWindows 11 Home \r\nIntel Core i3-13th gen \r\n 8GB DDR4 Memory \r\n1TB HDD, 256GB, M.2 2280 PCI-E SSD \r\nIntel UHD 770 Graphics \r\nMS Office home and student 2021 \r\n(licensed) \r\n23.8\" screen monitor, 1920x1080 @60Hz \r\n keyboard and mouse \r\n', '40000', 5, '', 2, 'electronics'),
(102, 'bag', 'Tile, 300cm x 300cm ', '60', 1, '', 3, 'materials'),
(103, 'pcs ', 'Tek screw, 12 x 65 Steel - Steel ', '2', 2, '', 4, 'materials'),
(104, 'sets ', '0.80m x 1.20m, Glass Window with complete \r\naccessories', '4200', 7, '', 5, 'materials');

-- --------------------------------------------------------

--
-- Table structure for table `signatories`
--

CREATE TABLE `signatories` (
  `id` int(11) NOT NULL,
  `signatoryName` varchar(50) NOT NULL,
  `signatoryRole` varchar(255) NOT NULL,
  `signatoryImage` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signatories`
--

INSERT INTO `signatories` (`id`, `signatoryName`, `signatoryRole`, `signatoryImage`) VALUES
(7, 'John Rafael Balaba', 'BAC Secretary, Goods and Consulting Services', '65b651efcb2c7.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `usertype` varchar(100) NOT NULL DEFAULT 'canvasser',
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `email`, `password`, `usertype`, `date`) VALUES
(8, 1, 'admin@gmail.com', '123', 'admin', '2023-11-19 07:06:21'),
(29, 0, 'user@user', '123', 'user', '2023-12-04 05:08:54'),
(34, 5408, 'janjan@gmail.com', '123', 'canvasser', '2024-01-11 02:17:54'),
(36, 0, 'janjan1@gmail.com', '111', 'canvasser', '2024-01-21 16:24:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signatories`
--
ALTER TABLE `signatories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=690;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `signatories`
--
ALTER TABLE `signatories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
