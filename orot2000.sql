-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 23, 2023 at 07:03 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `'orot2000'
--

-- --------------------------------------------------------

--
-- Table structure for table `custumers`
--

DROP TABLE IF EXISTS `custumers`;
CREATE TABLE IF NOT EXISTS `custumers` (
  `id` int(11) NOT NULL,
  `password` varchar(10) NOT NULL,
  `phone` int(10) NOT NULL,
  `name` text NOT NULL,
  `ordernum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custumers`
--

INSERT INTO `custumers` (`id`, `password`, `phone`, `name`, `ordernum`) VALUES
(10, '233', 742, 'bla', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lamps`
--

DROP TABLE IF EXISTS `lamps`;
CREATE TABLE IF NOT EXISTS `lamps` (
  `code` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(256) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lamps`
--

INSERT INTO `lamps` (`code`, `name`, `price`, `quantity`, `image`) VALUES
(32523646, 'anjh', 346432, 34643, '1674128843'),
(2975, 'test', 324, 424, '1674128723'),
(100, 'nimer', 150, 50, '1674128457nlamp.gif'),
(60, 'yal', 325, 4234, '1674128467'),
(50, 'blabla', 324, 200, '1674128511'),
(6988, 'yal', 65, 200, '1674128546');

-- --------------------------------------------------------

--
-- Table structure for table `ordes`
--

DROP TABLE IF EXISTS `ordes`;
CREATE TABLE IF NOT EXISTS `ordes` (
  `num` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `custumerid` int(11) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
CREATE TABLE IF NOT EXISTS `workers` (
  `wnumber` int(11) DEFAULT NULL,
  `name` text NOT NULL,
  `password` varchar(10) NOT NULL,
  `Hsalary` int(11) DEFAULT NULL,
  `phone` int(10) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `workers`
--

INSERT INTO `workers` (`wnumber`, `name`, `password`, `Hsalary`, `phone`, `id`) VALUES
(NULL, 'nimer', '100', NULL, 506480017, 135),
(NULL, '5421', '5412', NULL, 542, 10),
(NULL, 'nimer', 'nimer123?', NULL, 506480017, 18);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
