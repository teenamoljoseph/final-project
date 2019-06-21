-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2019 at 10:17 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `royalfurniture`
--

-- --------------------------------------------------------

--
-- Table structure for table `tble_cart`
--

CREATE TABLE `tble_cart` (
  `cart_id` int(15) NOT NULL,
  `login_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tble_cart`
--

INSERT INTO `tble_cart` (`cart_id`, `login_id`, `product_id`, `quantity`) VALUES
(2, 1, 2, 1),
(3, 1, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tble_category`
--

CREATE TABLE `tble_category` (
  `category_id` int(100) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tble_category`
--

INSERT INTO `tble_category` (`category_id`, `category_name`) VALUES
(1, 'bed cot'),
(2, 'Chair'),
(3, 'Dinning Set'),
(4, 'Drawers'),
(6, 'shelves'),
(7, 'tables');

-- --------------------------------------------------------

--
-- Table structure for table `tble_delivery_details`
--

CREATE TABLE `tble_delivery_details` (
  `delivery_id` int(15) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email_id` varchar(25) NOT NULL,
  `contact_no` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `pincode` varchar(25) NOT NULL,
  `location` varchar(25) NOT NULL,
  `district` varchar(25) NOT NULL,
  `login_id` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tble_delivery_details`
--

INSERT INTO `tble_delivery_details` (`delivery_id`, `name`, `email_id`, `contact_no`, `address`, `pincode`, `location`, `district`, `login_id`) VALUES
(1, 'tobin joseph', 'tjtobin@gmail.com', '9526490938', 'Kallupurakal', '688501', 'knry', 'alappuzha', 1),
(2, 'tobin joseph', 'tjtobin@gmail.com', '9526490938', 'Kallupurakal', '688501', 'knry', 'alappuzha', 1),
(3, 'tobin joseph', 'tjtobin@gmail.com', '9526490938', 'Kallupurakal', '688501', 'knry', 'alappuzha', 1),
(4, 'gfdg', 'tjteenajoseph1996@gmail.c', '08281704684', 'Kallupurakal', '688501', 'xxx', 'Malappuram', 1),
(5, 'bdjh', 'tjteenajoseph1996@gmail.c', '08281704684', 'kappankal,kayaliparambu', '688501', 'hhh', 'alappuzha', 1),
(6, 'lhfhfh', 'tjteenajoseph1996@gmail.c', '08281704684', 'Kallupurakal', '688501', 'll', 'kochiiii', 1),
(7, 'hhggfdg', 'tjteenajoseph1996@gmail.c', '08281704685', 'kappankal,kayaliparambu', '688501', 'llll', 'alappuzha', 1),
(8, 'vccnbmnm', 'tjteenajoseph1996@gmail.c', '08281704687', 'Kallupurakal', '688501', 'kkkk', 'kochiiii', 1),
(9, 'vccnbmnm', 'tjteenajoseph1996@gmail.c', '08281704687', 'Kallupurakal', '688501', 'kkkk', 'kochiiii', 1),
(10, 'vccnbmnm', 'tjteenajoseph1996@gmail.c', '08281704687', 'Kallupurakal', '688501', 'kkkk', 'kochiiii', 1),
(11, 'vccnbmnm', 'tjteenajoseph1996@gmail.c', '08281704687', 'Kallupurakal', '688501', 'kkkk', 'kochiiii', 1),
(12, 'Teena joseph', 'tjteenajoseph1996@gmail.c', '8281634684', 'Kallupurakal', '688501', 'knry', 'Alappuzha', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tble_images`
--

CREATE TABLE `tble_images` (
  `image_id` int(10) NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo1` varchar(100) NOT NULL,
  `photo2` varchar(100) NOT NULL,
  `photo3` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tble_images`
--

INSERT INTO `tble_images` (`image_id`, `product_id`, `photo1`, `photo2`, `photo3`) VALUES
(2, 2, 'na-foam-seattle-jet-swivel-denim-homehq-blue-original-imaf8yyfkmprtgwj.jpeg', 'na-foam-seattle-jet-swivel-denim-homehq-blue-original-imaf8yyewwpceykh.jpg', 'na-foam-seattle-jet-swivel-denim-homehq-blue-original-imaf8yyfkmprtgwj.jpeg'),
(3, 4, 'pp-clo-fur-wf-med-drwr-brown-cello-brown-original-imaf9ss8kr3rgtx7.jpeg', 'pp-clo-fur-wf-med-drwr-brown-cello-brown-original-imaf9ss84rdegnds.jpeg', 'pp-clo-fur-wf-med-drwr-brown-cello-brown-original-imaf9ss89fgq9ftg.jpeg'),
(4, 6, 'particle-board-600406023003-hometown-wenge-original-imaf77e4veggwued.jpeg', 'particle-board-600406023003-hometown-wenge-original-imaf77e4k7r9fzwy.jpeg', 'particle-board-600406023003-hometown-wenge-original-imaf6n6eqkanmzfr.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tble_login`
--

CREATE TABLE `tble_login` (
  `login_id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  `usertype` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tble_login`
--

INSERT INTO `tble_login` (`login_id`, `username`, `password`, `status`, `usertype`) VALUES
(1, 'teena@gmail.com', 'teena', 1, 3),
(3, 'tobin@gmail.com', 'tobin', 1, 2),
(4, 'admin@gmail.com', 'admin', 1, 1),
(5, 'nithin@gmail.com', 'nithin', 1, 2),
(6, 'anisha@gmail.com', 'anisha', 1, 3),
(7, 'neethu@gmail.com', 'neethu', 1, 3),
(8, 'cinta@gmail.com', 'cinta', 1, 3),
(9, 'achu@gmail.com', 'achu123', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tble_messages`
--

CREATE TABLE `tble_messages` (
  `message_id` int(11) NOT NULL,
  `login_id_user` int(11) NOT NULL,
  `login_id_supplier` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `message` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tble_messages`
--

INSERT INTO `tble_messages` (`message_id`, `login_id_user`, `login_id_supplier`, `product_id`, `message`, `time`) VALUES
(1, 1, 5, 3, 'hi', '2019-05-17 03:47:37'),
(2, 1, 5, 3, 'hi', '2019-05-17 03:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `tble_payment`
--

CREATE TABLE `tble_payment` (
  `payment_id` int(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `card_type` varchar(100) NOT NULL,
  `card_holder_name` varchar(100) NOT NULL,
  `card_number` int(100) NOT NULL,
  `cvv_number` int(3) NOT NULL,
  `expiry_date` varchar(100) NOT NULL,
  `total_amount` int(100) NOT NULL,
  `status` int(2) NOT NULL,
  `login_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tble_payment`
--

INSERT INTO `tble_payment` (`payment_id`, `email_id`, `card_type`, `card_holder_name`, `card_number`, `cvv_number`, `expiry_date`, `total_amount`, `status`, `login_id`) VALUES
(1, 'tjtobin@gmail.com', 'visa', 'tobin joseph', 2147483647, 0, '2023-10', 35500, 1, 1),
(2, 'tjtobin@gmail.com', 'visa', 'tobin joseph', 2147483647, 0, '2023-10', 35500, 1, 1),
(3, 'tjtobin@gmail.com', 'visa', 'tobin joseph', 2147483647, 0, '2023-10', 35500, 1, 1),
(4, 'tjteenajoseph1996@gmail.com', 'visa', 'gfdg', 2147483647, 0, '2027-10', 35500, 1, 1),
(5, 'tjteenajoseph1996@gmail.com', 'visa', 'kbbnbc', 2147483647, 0, '2024-08', 35500, 1, 1),
(6, 'tjteenajoseph1996@gmail.com', 'visa', 'tobin joseph', 2147483647, 0, '2023-04', 88750, 1, 1),
(7, 'tjteenajoseph1996@gmail.com', 'visa', 'kkkk', 2147483647, 0, '2023-03', 106500, 1, 1),
(8, 'tjteenajoseph1996@gmail.com', 'visa', 'gfdg', 2147483647, 0, '2023-03', 106500, 1, 1),
(9, 'tjteenajoseph1996@gmail.com', 'visa', 'gfdg', 2147483647, 0, '2023-03', 106500, 1, 1),
(10, 'tjteenajoseph1996@gmail.com', 'visa', 'gfdg', 2147483647, 0, '2023-03', 106500, 1, 1),
(11, 'tjteenajoseph1996@gmail.com', 'visa', 'gfdg', 2147483647, 0, '2023-03', 106500, 1, 1),
(12, 'tjteenajoseph1996@gmail.com', 'visa', 'Teenamol Joseph', 2147483647, 0, '2021-02', 4769, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tble_product`
--

CREATE TABLE `tble_product` (
  `login_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_color` varchar(100) NOT NULL,
  `product_size` varchar(100) NOT NULL,
  `wood_type` varchar(100) NOT NULL,
  `product_warrenty` int(11) NOT NULL,
  `product_image` varchar(1500) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `replacement_details` varchar(100) NOT NULL,
  `specification` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tble_product`
--

INSERT INTO `tble_product` (`login_id`, `product_id`, `category_id`, `product_name`, `product_color`, `product_size`, `wood_type`, `product_warrenty`, `product_image`, `price`, `quantity`, `replacement_details`, `specification`) VALUES
(3, 2, 2, 'HomeHq fabric', 'navy blue', '604.52mm*706.12mm*609.6mm', '1', 0, 'na-foam-seattle-jet-swivel-denim-homehq-blue-original-imaf8yyervu65zbx.jpeg', 17750, 43, '10', 'installation and demo not required'),
(5, 3, 4, 'cello infiniti plastic', 'dark brown', '77.97*85.59', '2', 24, 'pp-clo-fur-wf-med-drwr-brown-cello-brown-original-imaf9ss8jyvkynxm.jpeg', 6839, 20, '10', 'demo is not required'),
(9, 4, 6, 'Homtown lbis ', 'dark wenge', '80mm*110mm', '3', 24, 'particle-board-600406023003-hometown-wenge-original-imafdk9gmcqb9sky.jpeg', 4769, 25, '10', 'free installtion and demo');

-- --------------------------------------------------------

--
-- Table structure for table `tble_reply`
--

CREATE TABLE `tble_reply` (
  `reply_id` int(15) NOT NULL,
  `login_id_supplier` int(11) NOT NULL,
  `login_id_user` int(11) NOT NULL,
  `message` varchar(50) NOT NULL,
  `reply_message` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tble_reply`
--

INSERT INTO `tble_reply` (`reply_id`, `login_id_supplier`, `login_id_user`, `message`, `reply_message`, `time`) VALUES
(1, 5, 1, 'hi', 'helloo', '2019-05-17 03:50:52'),
(2, 3, 1, 'hi', 'hello', '2019-05-17 10:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `tble_stock`
--

CREATE TABLE `tble_stock` (
  `stock_id` int(100) NOT NULL,
  `category_id` varchar(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tble_supplierreg`
--

CREATE TABLE `tble_supplierreg` (
  `reg_id` int(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `company_name` varchar(30) NOT NULL,
  `company_license_number` varchar(30) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `contact_no` varchar(25) NOT NULL,
  `aadhar_no` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tble_supplierreg`
--

INSERT INTO `tble_supplierreg` (`reg_id`, `name`, `company_name`, `company_license_number`, `email_id`, `contact_no`, `aadhar_no`) VALUES
(3, 'tobin joseph', 'duo sharjaha', '45789856', 'tobin@gmail.com', '9526490945', '701045789856'),
(5, 'nithin alias', 'wudkart', '7485984565', 'nithin@gmail.com', '8281704684', '778855995547'),
(9, 'achu joseph', 'skyline', '75104578', 'achu@gmail.com', '7589564123', '785263419852');

-- --------------------------------------------------------

--
-- Table structure for table `tble_userreg`
--

CREATE TABLE `tble_userreg` (
  `reg_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email_id` varchar(20) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `aadhar_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tble_userreg`
--

INSERT INTO `tble_userreg` (`reg_id`, `name`, `email_id`, `contact_no`, `aadhar_no`) VALUES
(1, 'teena joseph', 'teena@gmail.com', '8281634684', '701112457858'),
(6, 'anisha thomas', 'anisha@gmail.com', '8574968541', '874596857842'),
(7, 'neethu alias', 'neethu@gmail.com', '8574126589', '789564123558'),
(8, 'cinta felixon', 'cinta@gmail.com', '7845985212', '758485651247');

-- --------------------------------------------------------

--
-- Table structure for table `tble_usertype`
--

CREATE TABLE `tble_usertype` (
  `usertypeid` int(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tble_usertype`
--

INSERT INTO `tble_usertype` (`usertypeid`, `role`, `status`) VALUES
(1, 'admin', 1),
(2, 'supplier', 1),
(3, 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tble_user_request`
--

CREATE TABLE `tble_user_request` (
  `request_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `message` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tble_wood_type`
--

CREATE TABLE `tble_wood_type` (
  `wood_type_id` int(10) NOT NULL,
  `wood_type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tble_wood_type`
--

INSERT INTO `tble_wood_type` (`wood_type_id`, `wood_type_name`) VALUES
(1, 'Walnut'),
(2, 'Teak'),
(3, 'Mahogany'),
(4, 'Elm');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_otp`
--

CREATE TABLE `tbl_otp` (
  `otp_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `otp` varchar(100) NOT NULL,
  `status` int(100) NOT NULL,
  `count` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_otp`
--

INSERT INTO `tbl_otp` (`otp_id`, `email`, `otp`, `status`, `count`) VALUES
(33, 'tjteenajoseph1996@gmail.com', '517172', 0, 0),
(34, 'tjteenajoseph1996@gmail.com', '323975', 0, 0),
(35, 'tjteenajoseph1996@gmail.com', '150643', 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tble_cart`
--
ALTER TABLE `tble_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tble_category`
--
ALTER TABLE `tble_category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `tble_delivery_details`
--
ALTER TABLE `tble_delivery_details`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `tble_images`
--
ALTER TABLE `tble_images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `tble_login`
--
ALTER TABLE `tble_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tble_messages`
--
ALTER TABLE `tble_messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `tble_payment`
--
ALTER TABLE `tble_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tble_product`
--
ALTER TABLE `tble_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tble_reply`
--
ALTER TABLE `tble_reply`
  ADD PRIMARY KEY (`reply_id`);

--
-- Indexes for table `tble_stock`
--
ALTER TABLE `tble_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `tble_supplierreg`
--
ALTER TABLE `tble_supplierreg`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `tble_userreg`
--
ALTER TABLE `tble_userreg`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `tble_usertype`
--
ALTER TABLE `tble_usertype`
  ADD PRIMARY KEY (`usertypeid`);

--
-- Indexes for table `tble_wood_type`
--
ALTER TABLE `tble_wood_type`
  ADD PRIMARY KEY (`wood_type_id`);

--
-- Indexes for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  ADD PRIMARY KEY (`otp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tble_cart`
--
ALTER TABLE `tble_cart`
  MODIFY `cart_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tble_category`
--
ALTER TABLE `tble_category`
  MODIFY `category_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tble_delivery_details`
--
ALTER TABLE `tble_delivery_details`
  MODIFY `delivery_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tble_images`
--
ALTER TABLE `tble_images`
  MODIFY `image_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tble_login`
--
ALTER TABLE `tble_login`
  MODIFY `login_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tble_messages`
--
ALTER TABLE `tble_messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tble_payment`
--
ALTER TABLE `tble_payment`
  MODIFY `payment_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tble_product`
--
ALTER TABLE `tble_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tble_reply`
--
ALTER TABLE `tble_reply`
  MODIFY `reply_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tble_stock`
--
ALTER TABLE `tble_stock`
  MODIFY `stock_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tble_supplierreg`
--
ALTER TABLE `tble_supplierreg`
  MODIFY `reg_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tble_userreg`
--
ALTER TABLE `tble_userreg`
  MODIFY `reg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tble_usertype`
--
ALTER TABLE `tble_usertype`
  MODIFY `usertypeid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tble_wood_type`
--
ALTER TABLE `tble_wood_type`
  MODIFY `wood_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  MODIFY `otp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
