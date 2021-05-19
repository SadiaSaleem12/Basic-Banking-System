-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2021 at 08:56 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsf_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(5) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `balance`) VALUES
(1, 'John Cena', 'Johncena130@gmail.com', 300),
(2, 'Smith James', 'smith@gmail.com', 200),
(3, 'Ethan Winters', 'ethan@gmail.com', 500),
(4, 'Mary Jacobs', 'mary@gmail.com', 1000),
(5, 'Rick Brwon', 'rick@gmail.com', 750),
(6, 'Tom Jackson', 'tom321@gmail.com', 1200),
(7, 'Sal Whaley', 'sal543@gmail.com', 3000),
(8, 'Ezra Lyon', 'Ezra76@gmail.com', 1600),
(9, 'Alex Hinton', 'alexhinton@gmil.com', 850),
(10, 'Mariah Allen', 'maria@gmail.com', 900);

-- --------------------------------------------------------

--
-- Table structure for table `tranc_data`
--

CREATE TABLE `tranc_data` (
  `c_no` int(5) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(10) NOT NULL,
  `time` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tranc_data`
--

INSERT INTO `tranc_data` (`c_no`, `sender`, `receiver`, `balance`, `time`) VALUES

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
