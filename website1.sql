-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2025 at 03:50 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website1`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `device_type` varchar(50) DEFAULT NULL,
  `device_brand` varchar(50) DEFAULT NULL,
  `device_model` varchar(100) DEFAULT NULL,
  `preferred_date` date DEFAULT NULL,
  `issue_description` text DEFAULT NULL,
  `service_cleaning` tinyint(1) DEFAULT NULL,
  `service_screen_protector` tinyint(1) DEFAULT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT 'password123',
  `total_cost` decimal(10,2) DEFAULT 0.00,
  `payment_status` enum('password123','password123','password123') DEFAULT 'password123',
  `repair_type` varchar(100) DEFAULT NULL,
  `estimated_cost` decimal(10,2) DEFAULT 0.00,
  `final_price` decimal(10,2) DEFAULT NULL,
  `repair_cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `customer_id`, `full_name`, `email`, `phone_number`, `address`, `device_type`, `device_brand`, `device_model`, `preferred_date`, `issue_description`, `service_cleaning`, `service_screen_protector`, `booking_date`, `status`, `total_cost`, `payment_status`, `repair_type`, `estimated_cost`, `final_price`, `repair_cost`) VALUES
(1, 1, 'Chris Demo Example', 'userjohn@example.com', '+60123456789', '123 123 Demo Street', 'password123', 'password123', 'iPhone 13', '2025-01-20', 'Screen cracked after dropping', 1, 1, '2025-07-04 15:46:36', 'password123', 450.00, 'password123', 'Screen Replacement', 420.00, NULL, 50.00),
(2, 1, 'Chris Demo Example', 'userjohn@example.com', '+60123456789', '123 123 Demo Street', 'password123', 'password123', 'Galaxy S21', '2025-01-21', 'Battery drains quickly', 0, 1, '2025-07-04 15:46:36', 'password123', 280.00, 'password123', 'Battery Replacement', 250.00, NULL, 500.00),
(3, 2, 'Sarah Sample', 'userjane@example.com', '+60123456789', '456 123 Demo Street', 'password123', 'password123', 'iPad Pro', '2025-01-22', 'Water damage repair needed', 1, 0, '2025-07-04 15:46:36', 'password123', 420.00, 'password123', 'Water Damage Repair', 380.00, NULL, 625.00),
(4, 1, 'John Demo', 'userabc@example.com', '+60123456789', '123 Demo Street', 'password123', 'password123', 'Huawei 15', '2025-07-05', 'Cannot charge', 1, 1, '2025-07-04 16:09:51', 'password123', 0.00, 'password123', NULL, 0.00, NULL, NULL),
(5, 1, 'John Demo', 'userabc@example.com', '+60123456789', '123 Demo Street', 'password123', 'password123', 'Huawei 15', '2025-07-05', 'Audio problem', 0, 0, '2025-07-04 17:35:06', 'password123', 0.00, 'password123', NULL, 0.00, NULL, NULL),
(6, 4, 'Michael Test', 'userabu@example.com', '+60123456789', '123 Demo Street', 'password123', 'password123', 'iPhone 13', '2025-07-05', 'screen crack', 0, 0, '2025-07-05 07:14:17', 'password123', 0.00, 'password123', NULL, 0.00, NULL, 500.00),
(7, 1, 'Chris Demo', 'useradam@example.com', '+60123456789', '123 Demo Street', 'password123', 'password123', 'iPhone 15', '2025-07-08', 'Screen issues', 1, 1, '2025-07-05 17:48:24', 'password123', 0.00, 'password123', NULL, 0.00, NULL, NULL),
(9, 5, 'Chris Demo', 'useradam@example.com', '+60123456789', '123 Demo Street', 'password123', 'password123', 'iPad Air', '2025-07-09', 'Battery health problems', 0, 0, '2025-07-06 04:05:07', 'password123', 0.00, 'password123', NULL, 0.00, NULL, NULL),
(10, 5, 'Chris Demo', 'useradam@example.com', '+60123456789', '123 Demo Street', 'password123', 'password123', 'Samsung A25', '2025-07-07', 'Camera problems', 0, 0, '2025-07-07 10:23:53', 'In Progress', 0.00, 'password123', NULL, 0.00, NULL, NULL),
(11, 6, 'Daniel Mock', 'userfaris@example.com', '+60123456789', '123 Demo Street', 'password123', 'password123', 'Galaxy J1 Prime', '2025-07-10', 'Screen flickering', 0, 0, '2025-07-08 13:11:02', 'password123', 0.00, 'password123', NULL, 0.00, NULL, 350.00),
(12, 6, 'Daniel Mock', 'userfaris@example.com', '+60123456789', '123 Demo Street', 'password123', 'password123', 'iPhone 14', '2025-07-09', 'Screen Probs', 0, 0, '2025-07-09 01:52:12', 'password123', 0.00, 'password123', NULL, 0.00, NULL, NULL),
(13, 6, 'Daniel Mock', 'userfaris@example.com', '+60123456789', '123 Demo Street', 'password123', 'password123', 'iPad 10', '2025-07-09', 'Screen Issues', 1, 1, '2025-07-11 06:27:16', 'password123', 0.00, 'password123', NULL, 0.00, NULL, 400.00),
(14, 7, 'Michael Test', 'userali@example.com', '+60123456789', 'Kuala Lumpur', 'password123', 'password123', 'Samsung S22', '2025-07-17', 'Screen Problem', 1, 1, '2025-07-17 03:11:58', 'password123', 0.00, 'password123', NULL, 0.00, NULL, 450.00);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `email`, `phone_number`, `password`) VALUES
(1, 'password123', 'password123', 'userabc@example.com', '+60123456789', 'password123'),
(2, 'password123', 'password123', 'userjohn@example.com', '+60123456789', '$2y$10$abcdefghijklmnopqrstuv'),
(3, 'password123', 'password123', 'userjane@example.com', '+60123456789', '$2y$10$abcdefghijklmnopqrstuv'),
(4, 'password123', 'password123', 'userabu@example.com', '+60123456789', 'password123'),
(5, 'Chris Demo', 'password123', 'useradam@example.com', '+60123456789', 'password123'),
(6, 'Daniel Mock', 'password123', 'userfaris@example.com', '+60123456789', 'password123'),
(7, 'password123', 'password123', 'userali@example.com', '+60123456789', 'password123');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ITEM_ID` varchar(6) NOT NULL,
  `ITEM_NAME` varchar(100) NOT NULL,
  `ITEM_DESCRIPTION` text DEFAULT NULL,
  `ITEM_QUANTITY` int(11) DEFAULT 0,
  `ITEM_PRICE` decimal(10,2) NOT NULL,
  `ITEM_CATEGORY` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ITEM_ID`, `ITEM_NAME`, `ITEM_DESCRIPTION`, `ITEM_QUANTITY`, `ITEM_PRICE`, `ITEM_CATEGORY`) VALUES
('password123', 'iPhone Speaker', 'Bottom speaker assembly', 7, 80.00, 'password123'),
('password123', 'Samsung Speaker', 'Earpiece speaker replacement', 5, 75.00, 'password123'),
('password123', 'iPhone Speaker', 'Bottom speaker assembly', 1, 80.00, NULL),
('password123', 'iPhone 13 Battery', '3240mAh Li-ion battery', 15, 180.00, 'password123'),
('password123', 'Samsung S21 Battery', '4000mAh Li-ion battery', 10, 150.00, 'password123'),
('password123', 'iPhone Charging Port', 'Lightning port assembly', 12, 120.00, 'password123'),
('password123', 'USB-C Charging Port', 'Type-C charging port for Android', 20, 100.00, 'password123'),
('password123', 'iPhone 13 Screen', 'Original OLED display with touch digitizer', 8, 450.00, 'password123'),
('password123', 'Samsung S21 Screen', 'AMOLED display with Gorilla Glass', 5, 380.00, 'password123');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` enum('online_banking','credit_card','password123') NOT NULL,
  `payment_status` enum('password123','password123','password123','password123') DEFAULT 'password123',
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `gateway_response` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(100) NOT NULL,
  `staff_phone` varchar(20) NOT NULL,
  `staff_email` varchar(100) NOT NULL,
  `staff_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `staff_phone`, `staff_email`, `staff_password`) VALUES
(1, 'Staff One', '+60123456789', 'userali@example.com', '$2y$10$EXAMPLEHASHEDPASSWORD1'),
(2, 'Staff Two', '+60123456789', 'usersiti@example.com', '$2y$10$EXAMPLEHASHEDPASSWORD2');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `transaction_date` datetime DEFAULT current_timestamp(),
  `description` varchar(255) NOT NULL,
  `type` enum('password123','password123') DEFAULT 'password123',
  `status` varchar(50) DEFAULT 'password123'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `booking_id`, `user_email`, `amount`, `payment_method`, `transaction_date`, `description`, `type`, `status`) VALUES
(1, 9, 'userdavid@example.com', 483.40, 'credit_card', '2025-03-02 09:53:08', 'Xiaomi - Charging Port Fix', 'password123', 'password123'),
(2, 46, 'useralex@example.com', 222.09, 'credit_card', '2025-03-29 15:41:48', 'Xiaomi - Charging Port Fix', 'password123', 'password123'),
(3, 38, 'usersarah@example.com', 295.87, 'online_banking', '2025-03-24 15:16:19', 'Xiaomi - Charging Port Fix', 'password123', 'password123'),
(4, 11, 'useralex@example.com', 494.63, 'credit_card', '2025-03-25 12:57:06', 'iPad - Water Damage Fix', 'password123', 'password123'),
(5, 22, 'userjane@example.com', 367.65, 'online_banking', '2025-03-30 13:35:58', 'iPad - Water Damage Fix', 'password123', 'password123'),
(6, 31, 'userjane@example.com', 140.26, 'credit_card', '2025-03-30 16:28:53', 'iPad - Water Damage Fix', 'password123', 'password123'),
(7, 36, 'usersarah@example.com', 151.71, 'credit_card', '2025-03-21 14:41:06', 'iPhone 13 - Screen Repair', 'password123', 'password123'),
(8, 19, 'userjane@example.com', 344.77, 'online_banking', '2025-03-01 11:22:00', 'Xiaomi - Charging Port Fix', 'password123', 'password123'),
(9, 0, '', 200.19, '', '2025-03-29 16:30:29', 'Tool Maintenance', 'password123', 'password123'),
(10, 0, '', 334.44, '', '2025-03-22 12:43:03', 'Cleaning Services', 'password123', 'password123'),
(11, 0, '', 114.77, '', '2025-03-27 10:02:34', 'Office Supplies', 'password123', 'password123'),
(12, 0, '', 305.36, '', '2025-03-16 14:21:06', 'Internet Bill', 'password123', 'password123'),
(13, 0, '', 328.29, '', '2025-03-09 15:18:54', 'Staff Lunch', 'password123', 'password123'),
(14, 0, '', 106.03, '', '2025-03-20 09:33:23', 'Cleaning Services', 'password123', 'password123'),
(15, 0, '', 421.15, '', '2025-03-05 09:00:59', 'Shop Rent', 'password123', 'password123'),
(16, 33, 'usermike@example.com', 312.72, 'online_banking', '2025-04-13 15:42:24', 'Oppo - Speaker Repair', 'password123', 'password123'),
(17, 15, 'userjane@example.com', 168.26, 'online_banking', '2025-04-24 11:31:25', 'iPhone 13 - Screen Repair', 'password123', 'password123'),
(18, 32, 'useralex@example.com', 364.69, 'online_banking', '2025-04-13 17:42:06', 'iPhone 13 - Screen Repair', 'password123', 'password123'),
(19, 34, 'userdavid@example.com', 300.89, 'credit_card', '2025-04-27 09:04:22', 'Huawei - Screen Replacement', 'password123', 'password123'),
(20, 1, 'usermike@example.com', 364.57, 'credit_card', '2025-04-03 14:07:07', 'Huawei - Screen Replacement', 'password123', 'password123'),
(21, 24, 'usersarah@example.com', 208.81, 'credit_card', '2025-04-18 15:55:35', 'Samsung S21 - Battery Replacement', 'password123', 'password123'),
(22, 47, 'usersarah@example.com', 440.87, 'online_banking', '2025-04-19 10:25:12', 'Samsung S21 - Battery Replacement', 'password123', 'password123'),
(23, 7, 'usermike@example.com', 456.26, 'credit_card', '2025-04-30 15:21:33', 'iPhone 13 - Screen Repair', 'password123', 'password123'),
(24, 0, '', 971.79, '', '2025-04-30 14:45:16', 'Internet Bill', 'password123', 'password123'),
(25, 0, '', 124.24, '', '2025-04-01 14:23:26', 'Utility Bills', 'password123', 'password123'),
(26, 0, '', 409.08, '', '2025-04-06 15:44:22', 'Internet Bill', 'password123', 'password123'),
(27, 0, '', 246.62, '', '2025-04-17 17:58:14', 'Office Supplies', 'password123', 'password123'),
(28, 0, '', 643.97, '', '2025-04-10 15:08:01', 'Cleaning Services', 'password123', 'password123'),
(29, 0, '', 807.68, '', '2025-04-02 10:20:15', 'Internet Bill', 'password123', 'password123'),
(30, 0, '', 471.36, '', '2025-04-25 11:46:41', 'Office Supplies', 'password123', 'password123'),
(31, 45, 'userdavid@example.com', 286.29, 'credit_card', '2025-05-23 13:18:16', 'Huawei - Screen Replacement', 'password123', 'password123'),
(32, 43, 'userdavid@example.com', 484.23, 'credit_card', '2025-05-29 13:25:50', 'Samsung S21 - Battery Replacement', 'password123', 'password123'),
(33, 23, 'userjane@example.com', 278.50, 'online_banking', '2025-05-07 15:09:47', 'iPad - Water Damage Fix', 'password123', 'password123'),
(34, 38, 'usermike@example.com', 100.71, 'credit_card', '2025-05-20 16:54:05', 'iPhone 13 - Screen Repair', 'password123', 'password123'),
(35, 22, 'userdavid@example.com', 366.35, 'online_banking', '2025-05-24 15:39:59', 'iPhone 13 - Screen Repair', 'password123', 'password123'),
(36, 36, 'usersarah@example.com', 463.75, 'credit_card', '2025-05-27 11:20:35', 'Xiaomi - Charging Port Fix', 'password123', 'password123'),
(37, 16, 'useralex@example.com', 145.29, 'credit_card', '2025-05-08 11:11:17', 'Huawei - Screen Replacement', 'password123', 'password123'),
(38, 8, 'userjane@example.com', 360.27, 'online_banking', '2025-05-20 09:42:56', 'Oppo - Speaker Repair', 'password123', 'password123'),
(39, 0, '', 234.76, '', '2025-05-21 16:45:19', 'Utility Bills', 'password123', 'password123'),
(40, 0, '', 841.71, '', '2025-05-13 09:26:32', 'Utility Bills', 'password123', 'password123'),
(41, 0, '', 975.61, '', '2025-05-18 15:48:14', 'Shop Rent', 'password123', 'password123'),
(42, 0, '', 471.47, '', '2025-05-18 10:53:04', 'Parts Purchase', 'password123', 'password123'),
(43, 0, '', 125.28, '', '2025-05-25 17:14:45', 'Parts Purchase', 'password123', 'password123'),
(44, 0, '', 959.27, '', '2025-05-30 17:17:37', 'Utility Bills', 'password123', 'password123'),
(45, 0, '', 947.06, '', '2025-05-28 09:42:26', 'Tool Maintenance', 'password123', 'password123'),
(46, 12, 'userjane@example.com', 253.30, 'credit_card', '2025-06-07 15:34:10', 'Oppo - Speaker Repair', 'password123', 'password123'),
(47, 18, 'userjane@example.com', 108.11, 'credit_card', '2025-06-05 17:22:23', 'Oppo - Speaker Repair', 'password123', 'password123'),
(48, 19, 'userjane@example.com', 360.41, 'online_banking', '2025-06-11 17:27:01', 'Huawei - Screen Replacement', 'password123', 'password123'),
(49, 45, 'userjane@example.com', 323.90, 'credit_card', '2025-06-26 11:57:42', 'Xiaomi - Charging Port Fix', 'password123', 'password123'),
(50, 49, 'usersarah@example.com', 236.73, 'online_banking', '2025-06-06 10:24:16', 'iPad - Water Damage Fix', 'password123', 'password123'),
(51, 14, 'usersarah@example.com', 408.61, 'credit_card', '2025-06-03 14:17:39', 'Oppo - Speaker Repair', 'password123', 'password123'),
(52, 40, 'userjane@example.com', 220.50, 'online_banking', '2025-06-06 13:43:44', 'iPhone 13 - Screen Repair', 'password123', 'password123'),
(53, 39, 'usersarah@example.com', 319.63, 'credit_card', '2025-06-02 11:05:13', 'Samsung S21 - Battery Replacement', 'password123', 'password123'),
(54, 0, '', 899.02, '', '2025-06-23 14:29:59', 'Internet Bill', 'password123', 'password123'),
(55, 0, '', 489.30, '', '2025-06-19 17:03:35', 'Shop Rent', 'password123', 'password123'),
(56, 0, '', 379.18, '', '2025-06-04 16:05:35', 'Staff Lunch', 'password123', 'password123'),
(57, 0, '', 519.81, '', '2025-06-02 10:25:28', 'Office Supplies', 'password123', 'password123'),
(58, 0, '', 463.12, '', '2025-06-07 13:57:46', 'Shop Rent', 'password123', 'password123'),
(59, 0, '', 507.15, '', '2025-06-20 09:46:48', 'Tool Maintenance', 'password123', 'password123'),
(60, 0, '', 240.84, '', '2025-06-24 13:36:25', 'Shop Rent', 'password123', 'password123'),
(61, 9, 'usersarah@example.com', 268.98, 'credit_card', '2025-07-24 11:42:44', 'Huawei - Screen Replacement', 'password123', 'password123'),
(62, 24, 'userjane@example.com', 490.19, 'online_banking', '2025-07-16 11:01:05', 'Oppo - Speaker Repair', 'password123', 'password123'),
(63, 9, 'usersarah@example.com', 374.84, 'credit_card', '2025-07-25 10:18:14', 'Huawei - Screen Replacement', 'password123', 'password123'),
(64, 41, 'userdavid@example.com', 484.13, 'credit_card', '2025-07-20 11:47:13', 'iPhone 13 - Screen Repair', 'password123', 'password123'),
(65, 44, 'userdavid@example.com', 234.33, 'credit_card', '2025-07-03 10:25:50', 'iPad - Water Damage Fix', 'password123', 'password123'),
(66, 2, 'usermike@example.com', 481.25, 'credit_card', '2025-07-21 09:19:01', 'Samsung S21 - Battery Replacement', 'password123', 'password123'),
(67, 26, 'userdavid@example.com', 246.12, 'credit_card', '2025-07-18 13:21:43', 'Samsung S21 - Battery Replacement', 'password123', 'password123'),
(68, 23, 'usersarah@example.com', 246.34, 'credit_card', '2025-07-03 11:00:56', 'Oppo - Speaker Repair', 'password123', 'password123'),
(69, 0, '', 729.77, '', '2025-07-25 16:46:37', 'Tool Maintenance', 'password123', 'password123'),
(70, 0, '', 200.32, '', '2025-07-03 14:05:30', 'Shop Rent', 'password123', 'password123'),
(71, 0, '', 290.72, '', '2025-07-09 11:48:17', 'Cleaning Services', 'password123', 'password123'),
(72, 0, '', 827.04, '', '2025-07-24 12:30:19', 'Tool Maintenance', 'password123', 'password123'),
(73, 0, '', 564.95, '', '2025-07-15 09:17:45', 'Office Supplies', 'password123', 'password123'),
(74, 0, '', 711.95, '', '2025-07-28 14:41:12', 'Office Supplies', 'password123', 'password123'),
(75, 0, '', 176.58, '', '2025-07-21 10:34:49', 'Cleaning Services', 'password123', 'password123'),
(76, 11, 'userfaris@example.com', 350.00, 'online_banking', '2025-07-08 21:12:10', 'Samsung Galaxy J1 Prime - Repair Payment', 'password123', 'password123'),
(77, 13, 'userfaris@example.com', 440.00, 'online_banking', '2025-07-11 15:48:44', 'Apple iPad 10 - Repair Payment', 'password123', 'password123'),
(78, 14, 'userali@example.com', 490.00, 'online_banking', '2025-07-17 11:14:19', 'Samsung Samsung S22 - Repair Payment', 'password123', 'password123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ITEM_ID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaction_id` (`transaction_id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `staff_email` (`staff_email`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
