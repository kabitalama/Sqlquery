-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2016 at 05:44 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `Enqiry_id` int(11) NOT NULL,
  `First_name` varchar(100) NOT NULL,
  `Last_name` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact_no` varchar(20) NOT NULL,
  `Course_id` int(11) NOT NULL,
  `Timing` int(11) NOT NULL,
  `Faculty_id` int(11) NOT NULL,
  `Enqiry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`Enqiry_id`, `First_name`, `Last_name`, `Email`, `Contact_no`, `Course_id`, `Timing`, `Faculty_id`, `Enqiry_date`) VALUES
(21, 'Rita', 'Ora', 'or@gmail.com', '34567890', 2, 4, 6, '2016-08-18 03:39:59'),
(22, 'Justin', 'Bieber', 'bieb@gmail.com', '3456789', 2, 5, 7, '2016-08-18 03:39:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`Enqiry_id`),
  ADD KEY `Course_id` (`Course_id`),
  ADD KEY `Faculty_id` (`Faculty_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `Enqiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD CONSTRAINT `enquiry_ibfk_1` FOREIGN KEY (`Course_id`) REFERENCES `course` (`Course_id`),
  ADD CONSTRAINT `enquiry_ibfk_2` FOREIGN KEY (`Faculty_id`) REFERENCES `faculty` (`Faculty_id`),
  ADD CONSTRAINT `enquiry_ibfk_3` FOREIGN KEY (`Course_id`) REFERENCES `course` (`Course_id`),
  ADD CONSTRAINT `enquiry_ibfk_4` FOREIGN KEY (`Faculty_id`) REFERENCES `faculty` (`Faculty_id`),
  ADD CONSTRAINT `enquiry_ibfk_5` FOREIGN KEY (`Faculty_id`) REFERENCES `faculty` (`Faculty_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
