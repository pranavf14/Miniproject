-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2019 at 11:54 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `main1`
--

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE `guide` (
  `gid` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `grid` int(20) NOT NULL,
  `des` varchar(255) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guide`
--

INSERT INTO `guide` (`gid`, `name`, `pass`, `grid`, `des`, `dob`) VALUES
(1, 'sakshi', 'd41d8cd98f00b204e9800998ecf8427e', 1, '', '0000-00-00'),
(4, 's', 'd41d8cd98f00b204e9800998ecf8427e', 2, '', '0000-00-00'),
(5, 'ms Pawar', 'd41d8cd98f00b204e9800998ecf8427e', 3, '', '0000-00-00'),
(7, 'sak1', '827ccb0eea8a706c4c34a16891f84e7b', 0, '', '1999-12-14'),
(9, 'tj', '456c2e75fe0faa57fd1cfd87117e0963', 0, 'tj', '2019-09-11'),
(10, 'rit', '080045a7526717bb2ad9b5e7ca28dd13', 0, 'g', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `guideact`
--

CREATE TABLE `guideact` (
  `grid` int(100) NOT NULL,
  `act_name` varchar(255) NOT NULL,
  `weekno` int(100) NOT NULL,
  `status` varchar(255) NOT NULL,
  `marks` int(100) NOT NULL,
  `deadline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guideact`
--

INSERT INTO `guideact` (`grid`, `act_name`, `weekno`, `status`, `marks`, `deadline`) VALUES
(0, '', 0, '', 0, '0000-00-00'),
(0, '', 0, '', 0, '0000-00-00'),
(0, '', 0, '', 0, '0000-00-00'),
(0, '', 0, '', 0, '0000-00-00'),
(0, '', 0, '', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `grid` int(100) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `spon` varchar(255) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`grid`, `pname`, `domain`, `spon`, `pro_id`) VALUES
(1, 'management', 'ml', 'no', 1),
(2, 'jay', 'ai', 'yes', 2),
(3, 'manage', 'mini', 'no', 3);

-- --------------------------------------------------------

--
-- Table structure for table `studact`
--

CREATE TABLE `studact` (
  `grid` int(11) NOT NULL,
  `actname` varchar(255) NOT NULL,
  `week` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `grid` int(100) NOT NULL,
  `prn` int(100) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `gm1` varchar(255) NOT NULL,
  `gm2` varchar(255) NOT NULL,
  `gm3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`grid`, `prn`, `sname`, `dob`, `password`, `gm1`, `gm2`, `gm3`) VALUES
(1, 17013001, 'sakshi', '2015-12-12', 'sakshi', 'jui', 'pranav', ''),
(2, 17013002, 'bhuj', '2015-12-11', 'bhuj', 'aniket', 'saurabh', 'vinu'),
(3, 4, 'jui1', '1999-08-21', 'jui1', 'sak1', 'pranav1', 'xyz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`grid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guide`
--
ALTER TABLE `guide`
  MODIFY `gid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `grid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
