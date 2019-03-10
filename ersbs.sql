-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2019 at 05:32 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ersbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `collegecourse`
--

CREATE TABLE `collegecourse` (
  `collegecourseid` int(11) NOT NULL,
  `collegecourse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collegecourse`
--

INSERT INTO `collegecourse` (`collegecourseid`, `collegecourse`) VALUES
(8, 'Animation'),
(10, 'Fashion Design and Technology'),
(5, 'Financial Management'),
(2, 'Game Development'),
(4, 'Marketing and Advertising Management'),
(9, 'Multimedia Arts and Design'),
(7, 'Psychology'),
(6, 'Real Estate Mangement'),
(1, 'Software Engineering'),
(3, 'Web Development');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseid` int(11) NOT NULL,
  `collegecourseid` int(11) NOT NULL,
  `shscourseid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventID` int(11) NOT NULL,
  `eventCategory` varchar(30) NOT NULL,
  `eventName` varchar(40) NOT NULL,
  `eventInformation` varchar(250) NOT NULL,
  `organizerName` varchar(30) NOT NULL,
  `venue` varchar(50) NOT NULL,
  `objectives` varchar(300) NOT NULL,
  `competitionStructure` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventID`, `eventCategory`, `eventName`, `eventInformation`, `organizerName`, `venue`, `objectives`, `competitionStructure`) VALUES
(2, 'coCurricular', 'Testing Competition', 'Wala Lang', 'Ram', 'Recycle Bin', 'Gumana', 'roundRobin'),
(3, 'curricular', 'Sample1', 'zxczxc', 'sample', 'satabitabi', 'objective1', 'singleElimination');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `color` varchar(7) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `color`, `start`, `end`) VALUES
(1, 'All Day Event', '#40E0D0', '2016-01-01 00:00:00', '0000-00-00 00:00:00'),
(2, 'Long Event', '#FF0000', '2016-01-07 00:00:00', '2016-01-10 00:00:00'),
(3, 'Repeating Event', '#0071c5', '2016-01-09 16:00:00', '0000-00-00 00:00:00'),
(4, 'Conference', '#FFD700', '2016-01-11 00:00:00', '2016-01-13 00:00:00'),
(5, 'Meeting', '#000', '2016-01-12 10:30:00', '2016-01-12 12:30:00'),
(6, 'Lunch', '#0071c5', '2016-01-12 12:00:00', '0000-00-00 00:00:00'),
(7, 'Happy Hour', '#0071c5', '2016-01-12 17:30:00', '0000-00-00 00:00:00'),
(8, 'Dinner', '#0071c5', '2016-01-12 20:00:00', '0000-00-00 00:00:00'),
(9, 'Birthday Party', '#FFD700', '2016-01-14 07:00:00', '2016-01-14 07:00:00'),
(13, 'sample3', '#FF8C00', '2015-12-01 00:00:00', '2015-12-02 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `roleid` int(11) NOT NULL,
  `roles` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`roleid`, `roles`) VALUES
(1, 'admin'),
(5, 'alumni'),
(3, 'depthead'),
(2, 'professor'),
(4, 'students');

-- --------------------------------------------------------

--
-- Table structure for table `shscourse`
--

CREATE TABLE `shscourse` (
  `shscourseid` int(11) NOT NULL,
  `shscourse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shscourse`
--

INSERT INTO `shscourse` (`shscourseid`, `shscourse`) VALUES
(1, 'Accountancy Business and Management'),
(4, 'Animation'),
(8, 'Audio Production'),
(5, 'Fashion Design'),
(6, 'Graphic Illustration'),
(2, 'Humanities and Social Science'),
(7, 'Media and Visual Arts'),
(9, 'Robotics'),
(3, 'Software Development');

-- --------------------------------------------------------

--
-- Table structure for table `strand`
--

CREATE TABLE `strand` (
  `strandid` int(11) NOT NULL,
  `strand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `strand`
--

INSERT INTO `strand` (`strandid`, `strand`) VALUES
(1, 'college'),
(2, 'shs');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `idnumber` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `courseid` int(11) NOT NULL,
  `strandid` int(11) NOT NULL,
  `yearlevelid` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contactno` varchar(200) NOT NULL,
  `is_active` varchar(200) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `roleid`, `idnumber`, `lastname`, `firstname`, `middlename`, `email`, `courseid`, `strandid`, `yearlevelid`, `password`, `contactno`, `is_active`, `created_at`) VALUES
(1, 0, '201', '', '', '', '', 0, 0, 0, '$2y$10$.qtROT1P9f2XrR.6OlwQpO2bxdmOMPeb.A66/w0XahH63y.WsdH2e', '', '', '2019-03-10 12:09:22');

-- --------------------------------------------------------

--
-- Table structure for table `yearlevel`
--

CREATE TABLE `yearlevel` (
  `yearlevelid` int(11) NOT NULL,
  `yearlevel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yearlevel`
--

INSERT INTO `yearlevel` (`yearlevelid`, `yearlevel`) VALUES
(1, '1st'),
(2, '2nd'),
(3, '3rd'),
(4, '4th');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collegecourse`
--
ALTER TABLE `collegecourse`
  ADD PRIMARY KEY (`collegecourseid`),
  ADD UNIQUE KEY `collegecourse` (`collegecourse`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseid`),
  ADD KEY `collegecourseid` (`collegecourseid`),
  ADD KEY `shscourseid` (`shscourseid`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventID`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`roleid`),
  ADD UNIQUE KEY `roles` (`roles`);

--
-- Indexes for table `shscourse`
--
ALTER TABLE `shscourse`
  ADD PRIMARY KEY (`shscourseid`),
  ADD UNIQUE KEY `shscourse` (`shscourse`);

--
-- Indexes for table `strand`
--
ALTER TABLE `strand`
  ADD PRIMARY KEY (`strandid`),
  ADD UNIQUE KEY `strand` (`strand`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `idnumber` (`idnumber`);

--
-- Indexes for table `yearlevel`
--
ALTER TABLE `yearlevel`
  ADD PRIMARY KEY (`yearlevelid`),
  ADD UNIQUE KEY `yearlevel` (`yearlevel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collegecourse`
--
ALTER TABLE `collegecourse`
  MODIFY `collegecourseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `eventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `roleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shscourse`
--
ALTER TABLE `shscourse`
  MODIFY `shscourseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `strand`
--
ALTER TABLE `strand`
  MODIFY `strandid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `yearlevel`
--
ALTER TABLE `yearlevel`
  MODIFY `yearlevelid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`collegecourseid`) REFERENCES `collegecourse` (`collegecourseid`),
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`shscourseid`) REFERENCES `shscourse` (`shscourseid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
