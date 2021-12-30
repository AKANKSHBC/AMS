-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2021 at 02:59 AM
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

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `19is162_det` ()  BEGIN
select * from `attendance` where `stat_id` like "4nm19is162";
end$$

DELIMITER ;

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
('4nm19is201', 'password', '4nm19is201@nmamit.in', 'pratosha mc', '8618070033', 'student'),
('4nm20is001', 'password', '4nm20is001@nmamit.in', 'aaditya', '9999999999', 'student'),
('4nm20is199', 'password', '4nm20is199@nmamit.in', 'wilson walker', '9999999999', 'student'),
('admin', 'admin', 'admin@admin.com', 'admin', '9999999999', 'admin'),
('prasad', 'password', 'prasad@nitte.edu.in', 'prasad', '9999999999', 'teacher'),
('preethi', 'password', ' preethisalian@nitte.edu.in', 'preethi salian', '9999999999', 'teacher'),
('ramesh', 'password', 'ramesh@nitte.edu.in', 'ramesh', '9999999999', 'teacher'),
('shreyas', 'password', '4nm18is166@nmamit.in', 'Shreyas', '9999999999', 'student'),
('srikanth', 'password', 'srikanthbhat@nitte.edu.in', 'srikanth bhat', '9999999999', 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `stat_id` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `st_status` varchar(10) NOT NULL,
  `stat_date` date NOT NULL,
  `stat_period` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`stat_id`, `course`, `st_status`, `stat_date`, `stat_period`) VALUES
('4nm19is052', 'DSM', 'Present', '2021-12-30', 1),
('4nm19is114', 'DSM', 'Present', '2021-12-30', 1),
('4nm19is123', 'DSM', 'Present', '2021-12-30', 1),
('4nm19is161', 'DSM', 'Present', '2021-12-30', 1),
('4nm19is162', 'DSM', 'Present', '2021-12-30', 1),
('4nm19is201', 'DSM', 'Present', '2021-12-30', 1),
('4nm19is052', 'DSM', 'Present', '2021-12-30', 2),
('4nm19is114', 'DSM', 'Present', '2021-12-30', 2),
('4nm19is123', 'DSM', 'Absent', '2021-12-30', 2),
('4nm19is161', 'DSM', 'Present', '2021-12-30', 2),
('4nm19is162', 'DSM', 'Absent', '2021-12-30', 2),
('4nm19is201', 'DSM', 'Present', '2021-12-30', 2),
('4nm19is052', 'DSM', 'Absent', '2021-12-30', 3),
('4nm19is114', 'DSM', 'Absent', '2021-12-30', 3),
('4nm19is123', 'DSM', 'Absent', '2021-12-30', 3),
('4nm19is161', 'DSM', 'Absent', '2021-12-30', 3),
('4nm19is162', 'DSM', 'Absent', '2021-12-30', 3),
('4nm19is201', 'DSM', 'Absent', '2021-12-30', 3),
('4nm19is052', 'DSM', 'Present', '2021-12-30', 4),
('4nm19is114', 'DSM', 'Present', '2021-12-30', 4),
('4nm19is123', 'DSM', 'Present', '2021-12-30', 4),
('4nm19is161', 'DSM', 'Present', '2021-12-30', 4),
('4nm19is162', 'DSM', 'Present', '2021-12-30', 4),
('4nm19is201', 'DSM', 'Present', '2021-12-30', 4),
('4nm19is052', 'DSM', 'Present', '2021-12-30', 5),
('4nm19is114', 'DSM', 'Absent', '2021-12-30', 5),
('4nm19is123', 'DSM', 'Present', '2021-12-30', 5),
('4nm19is161', 'DSM', 'Present', '2021-12-30', 5),
('4nm19is162', 'DSM', 'Absent', '2021-12-30', 5),
('4nm19is201', 'DSM', 'Present', '2021-12-30', 5),
('4nm19is052', 'DSM', 'Present', '2021-12-30', 6),
('4nm19is114', 'DSM', 'Present', '2021-12-30', 6),
('4nm19is123', 'DSM', 'Present', '2021-12-30', 6),
('4nm19is161', 'DSM', 'Present', '2021-12-30', 6),
('4nm19is162', 'DSM', 'Present', '2021-12-30', 6),
('4nm19is201', 'DSM', 'Present', '2021-12-30', 6),
('4nm19is052', 'DSM', 'Present', '2021-12-30', 7),
('4nm19is114', 'DSM', 'Present', '2021-12-30', 7),
('4nm19is123', 'DSM', 'Present', '2021-12-30', 7),
('4nm19is161', 'DSM', 'Present', '2021-12-30', 7),
('4nm19is162', 'DSM', 'Absent', '2021-12-30', 7),
('4nm19is201', 'DSM', 'Present', '2021-12-30', 7),
('4nm20is001', 'DSM', 'Absent', '2021-12-30', 1),
('4nm20is199', 'DSM', 'Present', '2021-12-30', 1),
('4nm20is001', 'DSM', 'Absent', '2021-12-30', 2),
('4nm20is199', 'DSM', 'Present', '2021-12-30', 2),
('4nm20is001', 'DSM', 'Absent', '2021-12-30', 3),
('4nm20is199', 'DSM', 'Present', '2021-12-30', 3),
('4nm20is001', 'DSM', 'Absent', '2021-12-30', 5),
('4nm20is199', 'DSM', 'Absent', '2021-12-30', 5),
('4nm20is001', 'DSM', 'Absent', '2021-12-30', 6),
('4nm20is199', 'DSM', 'Present', '2021-12-30', 6),
('4nm20is001', 'DSM', 'Absent', '2021-12-30', 7),
('4nm20is199', 'DSM', 'Absent', '2021-12-30', 7),
('4nm20is001', 'DSM', 'Absent', '2021-12-30', 4),
('4nm20is199', 'DSM', 'Present', '2021-12-30', 4);

-- --------------------------------------------------------

--
-- Stand-in structure for view `p_dsm`
-- (See below for the actual view)
--
CREATE TABLE `p_dsm` (
`tc_id` varchar(20)
,`tc_name` varchar(20)
,`tc_dept` varchar(20)
,`tc_email` varchar(30)
,`tc_course` varchar(20)
);

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
-- Stand-in structure for view `student2023`
-- (See below for the actual view)
--
CREATE TABLE `student2023` (
`st_id` varchar(20)
,`st_name` varchar(20)
,`st_dept` varchar(20)
,`st_batch` int(4)
,`st_sem` int(11)
,`st_email` varchar(30)
);

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
('4nm18is165', 'Shreyas', 'ISE', 2022, 7, '4nm18is165@nmamit.in'),
('4nm19is052', 'Arvind', 'ISE', 2023, 5, '4nm19is052@nmamit.in'),
('4nm19is114', 'geeta', 'ISE', 2023, 5, '4nm19is114@nmamit.in'),
('4nm19is123', 'sindhura', 'ISE', 2023, 5, '4nm19is123@nmamit.in'),
('4nm19is161', 'Shreyas', 'ISE', 2023, 5, '4nm19is161@nmamit.in'),
('4nm19is162', 'Shreyas Vivek', 'ISE', 2023, 5, '4nm19is162@nmamit.in'),
('4nm19is201', 'pratosha mc', 'ISE', 2023, 5, '4nm19i@nms201amit.in'),
('4nm20is001', 'Aaditya', 'ISE', 2024, 3, '4nm20is001@nmamit.in'),
('4nm20is199', 'wilson walker', 'ISE', 2024, 3, '4nm20is199@nmamit.in');

--
-- Triggers `students`
--
DELIMITER $$
CREATE TRIGGER `update_batch` AFTER UPDATE ON `students` FOR EACH ROW update `students` set `st_sem` = "6" where `st_batch` = "2023"
$$
DELIMITER ;

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

-- --------------------------------------------------------

--
-- Structure for view `p_dsm`
--
DROP TABLE IF EXISTS `p_dsm`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `p_dsm`  AS SELECT `teachers`.`tc_id` AS `tc_id`, `teachers`.`tc_name` AS `tc_name`, `teachers`.`tc_dept` AS `tc_dept`, `teachers`.`tc_email` AS `tc_email`, `teachers`.`tc_course` AS `tc_course` FROM `teachers` WHERE `teachers`.`tc_name` like 'P%' AND `teachers`.`tc_course` like 'Database%' ;

-- --------------------------------------------------------

--
-- Structure for view `student2023`
--
DROP TABLE IF EXISTS `student2023`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student2023`  AS SELECT `students`.`st_id` AS `st_id`, `students`.`st_name` AS `st_name`, `students`.`st_dept` AS `st_dept`, `students`.`st_batch` AS `st_batch`, `students`.`st_sem` AS `st_sem`, `students`.`st_email` AS `st_email` FROM `students` WHERE `students`.`st_batch` = '2023' AND `students`.`st_name` like 's%' ;

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
