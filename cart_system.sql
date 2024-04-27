-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2024 at 06:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_name`, `description`, `product_price`, `product_image`, `qty`, `total_price`, `product_code`) VALUES
(684, 'AM Snacks (Packed Meal)', '2 Big Slices Handtossed Pizza | 5 pcs Potato Wedges | 500ml Purified Drinking Water', '145', '', 2, '290', '2'),
(685, 'Ballpen', 'black ', '5', '', 2, '10', '4');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `description`, `product_price`, `product_qty`, `product_image`, `product_code`, `category`) VALUES
(44, 'Desktop Computer, Branded ', 'Processor: Intel Core i5 12th Gen | Memory: 8GB DDR4 3200MHz | Storage: 256GB SSD + 1TB 3.5inch\r\nHDD | Graphics: Intel UHD Graphics | Monitor: 21.5inch, VGA + HDMI, 1920 x 1080 60GHz | Connectivity: 802.11ac/a/b/g/n wireless LAN and Bluetooth 4.2 LE, LAN, Gigabit Ethernet | Keyboard & Mouse: USB Wired Keyboard and Mouse | Front/Side/ I/O Connectors: Card\r\nreader, Audio jacks, USB 3.2 Gen2 Type\r\nA, USB 3.2 Gen2 Type C port(s): 1 | Rear I/O connectors: HDMI ports), LAN port, Audio jack, USB 2.0 Type AYSB 3.2 Gen1 Type A ports, PCIe x 16slot, PCIe\r\nx 1 slot, M.2 slot (for SSD) M.2 slot (for WLAN) | OS: Windows 11 Home with MS Office Home and Student 2021 (Licensed)', '42390.40', 2, '', 1, 'electronics'),
(45, 'AM Snacks (Packed Meal)', '2 Big Slices Handtossed Pizza | 5 pcs Potato Wedges | 500ml Purified Drinking Water', '145.00', 2500, '', 2, 'food'),
(46, 'Lunch (Packed Meal)', '1 pc Fried Chicken | 1 pc Pork Barbecue on Stick approx.\r\n150g | 1 cup Steamed Rice | 1 pc Pastry dessert | 1 bottle of Juice/Soda 290ml', '245.00', 2500, '', 3, 'food'),
(47, 'Ballpen', 'black ', '5.00', 200, '', 4, 'materials'),
(48, 'Ballpen', 'blue', '5.00', 200, '', 5, 'materials'),
(49, 'Ballpen', 'red ', '5.00', 200, '', 6, 'materials'),
(50, 'Epson ink', '003, black ', '290.00', 50, '', 7, 'materials'),
(51, 'Epson ink', '003, magenta ', '290.00', 25, '', 8, 'materials'),
(52, 'Epson ink', '003, yellow', '290.00', 25, '', 9, 'materials'),
(53, 'Printer', 'Multifunction, continuous ink, 3-in-1', '8771.00', 3, '', 10, 'electronics'),
(54, 'Laptop', 'Intel Core i7 12th Gen, 10c (2P+8E) 12T, Pcore, 1.7 / 4.7 GHz, E-Core 1.2 / 3.5GHz,\r\n12MB, Integrated Intel Iris Xe Graphics,\r\n8GB Soldered DDR-43200, 512GB SSD\r\nM.2 2280, PCIe 3.0x4 NVMe, Display 15.6\r\ninch FHD (1920 x 1080) IPS 300 units Antiglare, Battery Integrated 45Wh/WLAN +\r\nBluetooth Wifi 6, 11ax, 2x2 + Bt5.2,\r\nWindows 11 Home & Microsoft Office Home\r\n& Student 2021 (Licensed)', '54995.00', 2, '', 11, 'electronics'),
(55, 'Bond paper', 'A4, 70gsm', '250.00', 100, '', 12, 'materials'),
(56, 'Marker', 'Permanent, Black, Bullet type ', '8.98', 5, '', 13, 'materials'),
(57, 'Marker', 'Permanent, Blue, Bullet type ', '8.98', 5, '', 14, 'materials'),
(58, 'Marker', 'Permanent, Blue, Bullet type ', '8.98', 5, '', 15, 'materials'),
(59, 'Marker', 'whiteboard, Black ', '13.38', 5, '', 16, 'materials'),
(60, 'Marker', 'whiteboard, Blue', '13.38', 5, '', 17, 'materials'),
(61, 'Marker', 'whiteboard, Red ', '13.38', 5, '', 18, 'materials'),
(62, 'Laptop', 'Processor: Intel Core i5-12th Gen, 2.2GHz,\r\n8 Cores | Memory: 8GB DDR4 3200MHz | Storage: 512GB NVMe SSD | Display: 15.6inch, FHD (1920 x 1080) IPS 144Hz | Graphics: RTX2050 4GB GDDR6 | Webcam: HD Camera\r\n| Connectivity: Wi-fi 6 and Bluetooth 5.1,\r\nLAN Ethernet port\r\n| Input Devices: Keyboard, Touchpad, Fingerprint | Audio: Stereo HD Audio, Mic | Operating System: Windows 11 Home with\r\nMicrosoft Office Home and Student 2021\r\n(Licensed) ', '48478.00', 1, '', 19, 'electronics'),
(63, 'Smart Television', '55 \", 4K UHD resolution HDR for more details', '30000.00', 1, '', 20, 'electronics'),
(64, 'Parchment Paper', '8.5 x 11”, S20 ', '335.00', 200, '', 21, 'materials'),
(65, 'Epson ink', '003, Black', '306.00', 15, '', 22, 'materials'),
(66, 'BROOM', 'soft, tambo ', '136.24', 5, '', 23, 'materials'),
(67, 'BROOM', 'stick, ting-ting ', '18.2', 5, '', 24, 'materials'),
(68, 'CLEANER', 'toilet and urinal', '41.6', 8, '', 25, 'materials'),
(69, 'DISINFECTANT SPRAY', 'aerosol type', '128.96', 40, '', 26, 'materials'),
(70, 'DISHWASHING LIQUID', '1000mL ', '110.25', 10, '', 27, 'materials'),
(71, 'LIQUID HAND SANITIZER', '500mL ', '151.43', 15, '', 28, 'materials'),
(73, 'MURIATIC ACID ', 'N/A', '49', 5, '', 29, 'materials'),
(74, 'GARBAGE BAG', 'L, transparent', '386', 6, '', 30, 'materials'),
(75, 'FLASH DRIVE', '64GB ', '1433.25', 4, '', 31, 'electronics'),
(76, 'MOUSE', 'Optical, WIRELESS', '468.56', 4, '', 32, 'electronics'),
(77, 'HEAD SET', 'N/A', '250', 4, '', 33, 'electronics'),
(78, 'MICROPHONE, WIRELESS', 'Bandwidth: 60MHz; Modulation method:\r\nFM frequency modulation; Maximum\r\nfrequency offset: ±45KHz; Frequency\r\nResponse: 100Hz-300Hz; Signal to\r\nNoise (S/N): >50dB; Distortion (1kDz):\r\n<5%; Working temperature: -10°C ~\r\n55°C; Working Distance: 50-100meters\r\n(ideal environment); Power consumption:\r\n8W; Static power: 3W Receiver Spurious\r\nsuppression: >50dB; image rejection:\r\n>50dB; Sensitivity: 5dBuV; Audio Output\r\nlevel:; Balanced output (XLR Output\r\njack):250mV/600ohms; Working Voltage:\r\nDC 12V; Working Current: <350mA\r\nChasis Size 420(W)x175(D)x44(H)mm', '18742.50', 1, '', 34, 'electronics'),
(79, 'PROJECTOR, DLP', '3000 ansi lumens,\r\nwith tripod projector screen - Projection\r\nSystem: 3LCD, 3-chip technology; Native\r\nResolution: 1024 x 768 (XGA); Color\r\nBrightness: 3000 lumens; White\r\nBrightness: 3000 lumens, VGA and\r\nHDMI \r\n', '25000.00', 2, '', 35, 'electronics'),
(80, 'EXTERNAL HARD DRIVE', '1 TB ', '2598.84', 3, '', 36, 'electronics'),
(81, 'LAPTOP COMPUTER', 'i5 Processor,\r\n8GB RAM, 4GB Graphics,512 GB SSD,\r\n1TB HDD, 15.6\" Full HD Graphics)\r\nLicensed Windows 11 Home and MS\r\nOffice Home and Student 2021 ', '50000.00', 1, '', 37, 'electronics'),
(82, 'LAPTOP', 'Operating System - Windows 11 Home;\r\nProcessor - AMD 7 7735HS Mobile \r\nProcessor (8-core/16-thread, 16MB L3\r\ncache, up to 4.7 GHz max boost);\r\nGraphics - GeForce 4050 Laptop GPU\r\nDisplay - 6GB GDDR6; Display 14-inch\r\nQHD+ 16:10 (2560 x 1600, WQXGA),\r\nIPS-level, anti-glare display, DCIP3:100%, Refresh Rate: 165Hz,\r\nResponse Time:3ms, G-Sync, Pantone\r\nValidated, MUX Switch, Advanced\r\nOptimus, Support Dolby Vision HDR\r\n:Yes; Memory - 16GB DDR5 on board\r\nMax Capacity Ram : 32GB, Support dual\r\nchannel memory; Storage - 512GB 4.0\r\nM.2 SSD; Licensed Windows 11 Home\r\nand MS Office Home and Student 2021', '119999.00', 1, '', 38, 'electronics'),
(83, 'Camcorder', 'Up to UHD 4K60 Video,\r\nCompatible with Optional License 1/2.5\"\r\n8.29M MOS Sensor, Venus Engine 24x\r\nOptical Zoom, 48x Digital 120 fps Slow\r\nMotion, Live RTP Streaming Handle with\r\n2 XLR Inputs, LED Light\r\nManual Lens Rings and Dial, 3.5\" LCD\r\nTouchscreen Records MP4, MOV,\r\nAVCHD to Dual SD Cards Face\r\nDetection AF Feature \r\n', '197954.00', 1, '', 39, 'electronics'),
(84, 'Copy Paper', 'A4, 70gsm', '180.00', 554, '', 40, 'materials'),
(85, 'Bookshelves', 'Open Shelves, metal, 6 layers, 900L x 400mm x 1830H mm', '11025.00', 10, '', 41, 'materials'),
(86, 'Electric Switch', '2-gang', '220.50', 30, '', 42, 'electronics'),
(87, 'Electric Switch', '3-gang ', '275.63', 25, '', 43, 'electronics'),
(88, 'Electric Switch', 'single ', '165.38', 25, '', 44, 'electronics'),
(89, 'Electrical Tape', 'big ', '38.59', 20, '', 45, 'electronics'),
(90, 'Electrical Wire', 'THHN #14', '3417.75', 2, '', 46, 'electronics'),
(91, 'Electric outlet', '2-gang', '220.50', 50, '', 47, 'electronics'),
(92, 'T8 Flourescent bulb ', 'single ended, 18watts ', '1000.00', 20, '', 48, 'electronics'),
(93, 'LED Bulb', '15watts', '297.68', 20, '', 49, 'electronics'),
(94, 'Printer', 'Multifunction, continuous ink', '10993.75', 2, '', 50, 'electronics'),
(95, 'Epson ink', 'adsadsa', '20', 1, '', 51, 'electronics'),
(96, 'GARBAGE BAG', 'asdasdas', '20', 10, '', 52, 'equipments');

-- --------------------------------------------------------

--
-- Table structure for table `signatories`
--

CREATE TABLE `signatories` (
  `id` int(11) NOT NULL,
  `signatoryName` varchar(50) NOT NULL,
  `signatoryRole` varchar(255) NOT NULL,
  `signatoryImage` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=686;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

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
