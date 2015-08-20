-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 20, 2015 at 05:51 පෙ.ව.
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wecelebrate`
--
CREATE DATABASE IF NOT EXISTS `wecelebrate` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wecelebrate`;

-- --------------------------------------------------------

--
-- Table structure for table `availability`
--

DROP TABLE IF EXISTS `availability`;
CREATE TABLE IF NOT EXISTS `availability` (
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `availability`
--

INSERT INTO `availability` (`date`, `time`) VALUES
('2015-08-06', '14:15:00'),
('2015-09-23', '18:00:00'),
('2015-11-16', '16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `town` varchar(50) NOT NULL,
  `reserve_date` date NOT NULL,
  `reserve_time_from` time NOT NULL,
  `phone` varchar(10) NOT NULL,
  `nic` varchar(10) NOT NULL,
  `email` varchar(80) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `reserve_time_to` time NOT NULL,
  `payment` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`first_name`, `last_name`, `town`, `reserve_date`, `reserve_time_from`, `phone`, `nic`, `email`, `reason`, `reserve_time_to`, `payment`) VALUES
('minoli', 'perera', 'matara', '2015-08-12', '02:00:00', '1234567890', '11111111V', 'perera@gmail.com', 'my salad', '11:00:00', '1100'),
('Dinali', 'Dabarera', 'Marawila', '2012-12-12', '20:00:00', '0770198933', '927670500V', 'gdrdabarera@gmail.com', 'B-day dinner party for my brother', '23:00:00', '100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`nic`,`email`),
  ADD UNIQUE KEY `reserve_time_from` (`reserve_time_from`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
