-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 23, 2022 at 01:32 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idcloud`
--

-- --------------------------------------------------------

--
-- Table structure for table `filename`
--

CREATE TABLE `filename` (
  `text_file` text NOT NULL,
  `image_file` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filename`
--

INSERT INTO `filename` (`text_file`, `image_file`) VALUES
('HusseinFYP_Hussein_Test.txt', 'HusseinFYP_MMU_Bee.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `owner_register`
--

CREATE TABLE `owner_register` (
  `numid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner_register`
--

INSERT INTO `owner_register` (`numid`, `name`, `dob`, `gender`, `city`, `mobile`, `uname`, `password`) VALUES
(24, 'Hussein', '1997-02-16', 'Male', 'Cairo', '+6-1293812', 'HusseinFYP', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `text_file` text NOT NULL,
  `image_file` text NOT NULL,
  `request_status` text NOT NULL,
  `uname` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`text_file`, `image_file`, `request_status`, `uname`) VALUES
('HusseinFYP_Hussein_Test.txt', 'HusseinFYP_MMU_Bee.jpg', 'Permission Granted', 'HusseinFYPUser');

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `numid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`numid`, `name`, `dob`, `gender`, `city`, `mobile`, `uname`, `password`) VALUES
(25, 'HusseinFYPUser', '1997-02-16', 'Male', 'Alexandria', '+608127621', 'HusseinFYPUser', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `owner_register`
--
ALTER TABLE `owner_register`
  ADD PRIMARY KEY (`numid`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`numid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `owner_register`
--
ALTER TABLE `owner_register`
  MODIFY `numid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
  MODIFY `numid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
