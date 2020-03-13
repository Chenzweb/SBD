-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 09:14 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_komputer`
--

-- --------------------------------------------------------

--
-- Table structure for table `purchasing_order`
--

CREATE TABLE `purchasing_order` (
  `purchasing_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `time_order` time NOT NULL,
  `time_delivery` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchasing_order`
--

INSERT INTO `purchasing_order` (`purchasing_id`, `price`, `time_order`, `time_delivery`) VALUES
(1, 35000, '15:00:00', '17:00:00'),
(2, 50000, '08:30:00', '12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `purchasing_order_detail`
--

CREATE TABLE `purchasing_order_detail` (
  `po_id` int(11) NOT NULL,
  `expedition` varchar(255) NOT NULL,
  `arrival` time NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchasing_order_detail`
--

INSERT INTO `purchasing_order_detail` (`po_id`, `expedition`, `arrival`, `quantity`) VALUES
(1, 'JNE', '17:00:00', 1),
(2, 'JNE', '15:00:00', 5);

-- --------------------------------------------------------

--
-- Table structure for table `stock_detail`
--

CREATE TABLE `stock_detail` (
  `stock_spec` varchar(255) NOT NULL,
  `stock_photo` varchar(255) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_detail`
--

INSERT INTO `stock_detail` (`stock_spec`, `stock_photo`, `stock_id`, `quantity`) VALUES
('ROG MOTHERBOARD', '', '01', 1),
('ROG MOUSE', '', '02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `stock_id` int(11) NOT NULL,
  `storage_id` int(11) NOT NULL,
  `storage_location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`stock_id`, `storage_id`, `storage_location`) VALUES
('01', 'M01', 'A01'),
('02', 'M02', 'A02');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `nama` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `suplier_id` int(11) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_person` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`nama`, `address`, `suplier_id`, `phone`, `email`, `contact_person`) VALUES
('SQL', 'JL.PEMUDA', 1, '086201234578', 'sql@uib.com', 'ERL'),
('PHP', 'JL.PEMUDI', 2, '086201234579', 'PHP@uib.edu', 'ERN');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
