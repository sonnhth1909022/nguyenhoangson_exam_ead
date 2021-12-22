-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 22, 2021 at 03:09 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examead`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `date_of_manf` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `prod_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `date_of_manf`, `description`, `price`, `prod_name`) VALUES
(1, '2021-12-22 14:35:08', 'ahduawhd', 123, 'dawdawdawd'),
(2, '2021-12-22 14:35:08', 'iowieowkeo', 455, 'dawdpppp');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sl_no` int(11) NOT NULL,
  `dos` datetime DEFAULT NULL,
  `prod_id` int(11) NOT NULL,
  `sales_man_id` varchar(255) DEFAULT NULL,
  `sales_man_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sl_no`, `dos`, `prod_id`, `sales_man_id`, `sales_man_name`) VALUES
(1, '2021-12-22 14:35:37', 1, 'kjdawkdoakwd', 'awdawdawdawd'),
(2, '2021-12-22 14:35:37', 1, 'awdawdawdawd', 'ppoaodoad'),
(3, '2021-12-22 14:35:55', 2, 'adawdawdawd', 'awdawdawdawduuuu'),
(4, '2021-12-22 14:35:55', 2, 'ooodajkd', 'awdawdooo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sl_no`),
  ADD KEY `FK50nkvl5ym2fotc285xo1iu26y` (`prod_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `FK50nkvl5ym2fotc285xo1iu26y` FOREIGN KEY (`prod_id`) REFERENCES `products` (`prod_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
