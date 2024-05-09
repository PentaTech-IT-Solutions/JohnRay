-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2024 at 01:43 PM
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
-- Database: `penta`
--

-- --------------------------------------------------------

--
-- Table structure for table `pentatech`
--

CREATE TABLE `pentatech` (
  `id` int(11) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` int(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirmpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pentatech`
--

INSERT INTO `pentatech` (`id`, `fullname`, `username`, `email`, `telephone`, `password`, `confirmpassword`) VALUES
(1, 'John Ray', 'johnray', 'johnray@gmail.com', 1234567890, '81dc9bdb52d04dc20036', '81dc9bdb52d04dc20036'),
(2, 'Glitse Ray', 'glitseray', 'gray@gmail.com', 1234567890, '1234', '1234'),
(3, 'Amidu Samadu', 'amidusamadu', 'asamadu@gmail.com', 244822108, 'asamadu', 'asamadu'),
(4, 'Ali Dawin', 'alidawin', 'alidawin@gmail.com', 1234567890, 'alidawin', 'alidawin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pentatech`
--
ALTER TABLE `pentatech`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pentatech`
--
ALTER TABLE `pentatech`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
