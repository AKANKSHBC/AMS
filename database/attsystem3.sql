-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2021 at 05:18 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

CREATE TABLE `admininfo` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`username`, `password`, `email`, `fname`, `phone`, `type`) VALUES
('4nm18is162', 'password', '4nm18is162@nmamit.in', 'ramesh', '9999999999', 'student'),
('4nm19is052', 'password', '4nm19is052@nmamit.in', 'arvind', '9999999999', 'student'),
('4nm19is123', 'password', '4nm19is123@nmamit.in', 'sindhura', '9999999999', 'student'),
('4nm19is161', 'password', '4nm19is161@nmamit.in', 'shreyas', '9999999999', 'student'),
('4nm19is162', 'password', '4nm19is162@nmamit.in', 'shreyas vivek', '9999999999', 'student'),
('4nm20is001', 'password', '4nm20is001@nmamit.in', 'aaditya', '9999999999', 'student'),
('4nm20is199', 'password', '4nm20is199@nmamit.in', 'wilson walker', '9999999999', 'student'),
('admin', 'admin', 'admin@admin.com', 'admin', '9999999999', 'admin'),
('prasad', 'password', 'prasad@nitte.edu.in', 'prasad', '9999999999', 'teacher'),
('preethi', 'password', '	 preethisalian@nitte.edu.in', 'preethi salian', '9999999999', 'teacher'),
('ramesh', 'password', '	 ramesh@nitte.edu.in', 'ramesh', '9999999999', 'teacher'),
('srikanth', 'password', 'srikanthbhat@nitte.edu.in', 'srikanth bhat', '9999999999', 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `stat_id` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `st_status` varchar(10) NOT NULL,
  `stat_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `st_id` varchar(30) NOT NULL,
  `course` varchar(30) NOT NULL,
  `st_name` varchar(30) NOT NULL,
  `st_dept` varchar(30) NOT NULL,
  `st_batch` int(11) NOT NULL,
  `total_classes` int(11) NOT NULL,
  `class_attended` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `st_id` varchar(20) NOT NULL,
  `st_name` varchar(20) NOT NULL,
  `st_dept` varchar(20) NOT NULL,
  `st_batch` int(4) NOT NULL,
  `st_sem` int(11) NOT NULL,
  `st_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`st_id`, `st_name`, `st_dept`, `st_batch`, `st_sem`, `st_email`) VALUES
('4nm18is162', 'Ramesh', 'ISE', 2022, 7, '4nm18is162@nmamit.in'),
('4nm19is052', 'Arvind', 'ISE', 2023, 5, '4nm19is052@nmamit.in'),
('4nm19is123', 'sindhura', 'ISE', 2023, 5, '4nm19is123@nmamit.in'),
('4nm19is161', 'Shreyas', 'ISE', 2023, 5, '4nm19is161@nmamit.in'),
('4nm19is162', 'Shreyas Vivek', 'ISE', 2023, 5, '4nm19is162@nmamit.in'),
('4nm20is001', 'Aaditya', 'ISE', 2024, 3, '4nm20is001@nmamit.in'),
('4nm20is199', 'wilson walker', 'ISE', 2024, 3, '4nm20is199@nmamit.in');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `tc_id` varchar(20) NOT NULL,
  `tc_name` varchar(20) NOT NULL,
  `tc_dept` varchar(20) NOT NULL,
  `tc_email` varchar(30) NOT NULL,
  `tc_course` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`tc_id`, `tc_name`, `tc_dept`, `tc_email`, `tc_course`) VALUES
('empise01', 'Preethi salian', 'ISE', 'preethisalian@nitte.edu.in', 'Database system mode'),
('empise02', 'Srikanth Bhat', 'ISE', 'srikanthbhat@nitte.edu.in', 'Operating Systems'),
('empise03', 'Ramesh ramu', 'ISE', 'ramesh@nitte.edu.in', 'Software Engineering'),
('empise04', 'prasad', 'ISE', 'prasad@nitte.edu.in', 'Database system mode');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admininfo`
--
ALTER TABLE `admininfo`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `stat_id` (`stat_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD KEY `st_id` (`st_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`tc_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`stat_id`) REFERENCES `students` (`st_id`);

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`st_id`) REFERENCES `attendance` (`stat_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
