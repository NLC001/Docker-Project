-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2023 at 10:55 PM
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
-- Database: `computers`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(6, 'John', '$2y$10$9oUDvZYkXSsKZ9ZvJxQwleDsLP5dTwaFrE0IILNH2Cw0b/Zbray1C');

-- --------------------------------------------------------

--
-- Table structure for table `computer_services`
--

CREATE TABLE `computer_services` (
  `id` int(11) NOT NULL,
  `Status_name` varchar(255) NOT NULL,
  `repair_types_name` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `specifications` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `computer_services`
--

INSERT INTO `computer_services` (`id`, `Status_name`, `repair_types_name`, `name`, `model`, `serial_number`, `specifications`) VALUES
(31, 'Pending', 'Hardware Repair', 'Asus S 13 OLED', 'UMX5304', '7357899829865', '1cm Thick, Ultralight, Oled'),
(32, 'Pending', 'Software Installation', 'LG', 'Gram', '85745678939', 'Thin,Oled'),
(33, 'Pending', 'Virus Removal', 'Acer ', 'Aspire', '8763456456654', '16GB, 512RAM, Corei7'),
(34, 'Pending', 'Data Recovery', 'Asus', 'Vivobook', '876523456789', 'Touchscreen'),
(35, 'Pending', 'Network Configuration', 'Hp', 'Spectre', '234569876544', 'Ultra slim, Touchscreen, Oled');

-- --------------------------------------------------------

--
-- Table structure for table `repair_types`
--

CREATE TABLE `repair_types` (
  `repair_types_id` bigint(20) NOT NULL,
  `repair_types_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `repair_types`
--

INSERT INTO `repair_types` (`repair_types_id`, `repair_types_name`) VALUES
(1, 'Hardware Repair'),
(2, 'Software Installation'),
(3, 'Virus Removal'),
(4, 'Data Recovery'),
(5, 'Network Configuration');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `Status_id` int(11) NOT NULL,
  `Status_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`Status_id`, `Status_name`) VALUES
(1, 'Pending'),
(2, 'In Process'),
(3, 'Ready'),
(4, 'Returned');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(5, 'lucky', '$2y$10$t9XeMccnVWPAXUO1lsiF1.OqKfTUxiBgzVo9g/awQLU3COJa5NSBW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `computer_services`
--
ALTER TABLE `computer_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repair_types`
--
ALTER TABLE `repair_types`
  ADD PRIMARY KEY (`repair_types_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`Status_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `computer_services`
--
ALTER TABLE `computer_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `repair_types`
--
ALTER TABLE `repair_types`
  MODIFY `repair_types_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `Status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
