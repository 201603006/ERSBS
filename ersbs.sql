-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2019 at 01:13 PM
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `idnum` varchar(200) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `yearlevel` varchar(200) NOT NULL,
  `strand` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `idnum`, `lastname`, `firstname`, `middlename`, `yearlevel`, `strand`, `email`, `password`, `image`, `is_active`) VALUES
(14, '1', '', '', '', '', '', 'sample1@email.com', '0cc175b9c0f1b6a831c399e269772661', '', 0),
(18, '3', '', '', '', '', '', 'sample55@email.com', '7815696ecbf1c96e6894b779456d330e', '', 0),
(24, '2', '', '', '', '', '', 'sample55@email.com', 'f3abb86bd34cf4d52698f14c0da1dc60', '', 0),
(25, '10', '', '', '', '', '', 'sample55@email.com', '006d2143154327a64d86a264aea225f3', '', 0),
(26, '8', '', '', '', '', '', 'sample888@email.com', '7815696ecbf1c96e6894b779456d330e', '', 0),
(28, '99', '', '', '', '', '', 'sample888@email.com', '3847820138564525205299f1f444c5ec', '', 0),
(30, '99', '', '', '', '', '', 'sample888@email.com1', 'ad57484016654da87125db86f4227ea3', '', 0),
(36, '99', '', '', '', '', '', 'sample55@email.com', '5fa72358f0b4fb4f2c5d7de8c9a41846', '', 0),
(42, '1', '', '', '', '', '', 'sample55@email.com', '7815696ecbf1c96e6894b779456d330e', '', 0),
(43, '1523', '', '', '', '', '', 'nayumi02@yahoo.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 0),
(45, '2001', '', '', '', '', '', 'nayumi02@yahoo.com', '76d80224611fc919a5d54f0ff9fba446', '', 0),
(48, '20011', '', '', '', '', '', 'nayumi02@yahoo.com', '7815696ecbf1c96e6894b779456d330e', '', 0),
(51, '1513', '', '', '', '', '', 'nayumi02@yahoo.com', '4eff0335928a2d0e92f38ea9bb56d72b', '', 0),
(53, '15134', '', '', '', '', '', 'nayumi02@yahoo.com', '25ed1bcb423b0b7200f485fc5ff71c8e', '', 0),
(55, '151345', '', '', '', '', '', 'nayumi02@yahoo.com', '7815696ecbf1c96e6894b779456d330e', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `idnum` (`idnum`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
