-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2016 at 05:45 AM
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
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_id` int(11) NOT NULL,
  `Student_name` varchar(100) NOT NULL,
  `Student_address` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact_no` varchar(50) NOT NULL,
  `course_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `facililator_id` int(11) NOT NULL,
  `Enroll_date` date NOT NULL,
  `facilitator_id` int(11) DEFAULT NULL,
  `batch_no` int(11) DEFAULT NULL,
  `enroll_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_id`, `Student_name`, `Student_address`, `Email`, `Contact_no`, `course_id`, `faculty_id`, `facililator_id`, `Enroll_date`, `facilitator_id`, `batch_no`, `enroll_id`) VALUES
(101, 'Justin_bieber', 'NY', 'Ny@gmail.com', '456789', 1, 7, 60, '2016-08-16', 60, 2, 15),
(102, 'Grishma', 'Bhaktpur', 'kio@gmail.com', '3456789', 2, 7, 65, '2016-08-16', 65, 2, 16),
(105, 'binita_Sharma', 'Las Vegas', 'bini@gmail.com', '23456789', 3, 9, 65, '2016-08-16', 65, 3, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`),
  ADD KEY `faculty_id` (`faculty_id`),
  ADD KEY `facilitator_id` (`facilitator_id`),
  ADD KEY `enroll_id` (`enroll_id`),
  ADD KEY `batch_no` (`batch_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`Faculty_id`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`facilitator_id`) REFERENCES `facilitator` (`facilitator_id`),
  ADD CONSTRAINT `student_ibfk_3` FOREIGN KEY (`enroll_id`) REFERENCES `enroll` (`Enroll_id`),
  ADD CONSTRAINT `student_ibfk_4` FOREIGN KEY (`batch_no`) REFERENCES `batch` (`Batch_no`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
