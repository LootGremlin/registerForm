-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2021 at 06:23 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(32) NOT NULL,
  `LastName` varchar(32) NOT NULL,
  `HashPass` longtext NOT NULL,
  `Email` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`Id`, `FirstName`, `LastName`, `HashPass`, `Email`) VALUES
(1, 'Admin', 'Admin', '827ccb0eea8a706c4c34a16891f84e7b', 'admin@gmail.com'),
(3, 'Lizzy', 'Nightray', 'e10adc3949ba59abbe56e057f20f883e', 'Lootgremlin@gmail.com'),
(4, 'Josh', 'Baz', 'e10adc3949ba59abbe56e057f20f883e', 'joshbaz@gmail.com'),
(6, 'Bruddah', 'Bear', '202cb962ac59075b964b07152d234b70', 'bruddahBear@gmail.com'),
(7, 'Kylo', 'Solo', 'e10adc3949ba59abbe56e057f20f883e', 'bensolo@gmail.com'),
(8, 'Kyla', 'Conlu', 'e10adc3949ba59abbe56e057f20f883e', 'kylaconlu@gmail.com'),
(9, 'Christian', 'Maderazo', 'e10adc3949ba59abbe56e057f20f883e', 'christianmadarazo@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
