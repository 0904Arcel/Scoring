-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2024 at 06:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scoring_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `score_card`
--

CREATE TABLE `score_card` (
  `id` int(11) NOT NULL,
  `holeName` varchar(50) NOT NULL,
  `1` int(100) NOT NULL,
  `2` int(100) NOT NULL,
  `3` int(100) NOT NULL,
  `4` int(100) NOT NULL,
  `5` int(100) NOT NULL,
  `6` int(100) NOT NULL,
  `7` int(100) NOT NULL,
  `8` int(100) NOT NULL,
  `9` int(100) NOT NULL,
  `s_out` int(100) NOT NULL,
  `10` int(100) NOT NULL,
  `11` int(100) NOT NULL,
  `12` int(100) NOT NULL,
  `13` int(100) NOT NULL,
  `14` int(100) NOT NULL,
  `15` int(100) NOT NULL,
  `16` int(100) NOT NULL,
  `17` int(100) NOT NULL,
  `18` int(100) NOT NULL,
  `s_in` int(100) NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `score_card`
--

INSERT INTO `score_card` (`id`, `holeName`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `s_out`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `s_in`, `total`) VALUES
(1, 'arcel', 123, 435, 345, 657, 233, 789, 234, 456, 654, 2345, 567, 345, 354, 345, 345, 345, 345, 345, 345, 3245, 2345),
(2, 'edmund', 123, 122, 312, 123, 123, 123, 123, 123, 123, 1234, 132, 123, 123, 123, 123, 123, 123, 123, 123, 123, 123),
(3, 'patirck', 123, 123, 123, 123, 123, 123, 123, 123, 123, 1234, 123, 123, 123, 123, 123, 123, 123, 123, 123, 1234, 1234),
(4, 'jaycee', 567, 567, 567, 567, 567, 576, 567, 567, 567, 5676, 657, 567, 567, 567, 567, 567, 567, 567, 567, 5678, 5678);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `score_card`
--
ALTER TABLE `score_card`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `score_card`
--
ALTER TABLE `score_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
