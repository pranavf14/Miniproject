-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 22, 2019 at 11:39 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

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
CREATE DATABASE IF NOT EXISTS `main1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `main1`;

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE `guide` (
  `rolln1` int(11) NOT NULL,
  `rolln2` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guide`
--

INSERT INTO `guide` (`rolln1`, `rolln2`, `name`, `pass`, `dob`) VALUES
(1, 2, 's', 's', '2019-09-11'),
(3, 4, 'w', 'w', '2019-09-13'),
(5, 6, 'q', 'q', '2019-09-12'),
(7, 8, 't', 't', '2019-09-06'),
(1, 2, 's', 's', '2019-09-12'),
(78, 56, 'fbhae', 'jui', '2019-09-11');

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
  `rolln` int(100) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `gm1` varchar(255) NOT NULL,
  `gm2` varchar(255) NOT NULL,
  `gm3` varchar(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `spname` varchar(255) NOT NULL,
  `guiden` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`rolln`, `sname`, `dob`, `password`, `gm1`, `gm2`, `gm3`, `pname`, `domain`, `spname`, `guiden`) VALUES
(1, 's', '2019-09-04', 's', 's', 's', 's', 's', 's', 's', 's'),
(2, 'w', '2019-09-04', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w'),
(23, 'ss', '2019-09-05', 'ss', 'ss', 'ss', 'ss', 'ss', 'ss', 'ss', 'ss');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`rolln`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
