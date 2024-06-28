-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2024 at 07:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_col`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'Rony_admin', 'archis123456admin', '2024-05-15 18:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(10) NOT NULL,
  `Firstname` varchar(30) NOT NULL,
  `Lastname` varchar(30) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `Firstname`, `Lastname`, `address`, `phone`, `created_at`) VALUES
(24, 'Archisman ', 'Mukherjee ', 'awhfvugaiogfiaef', 123456789, '2024-06-17 17:39:00'),
(26, 'Nikhil', 'thakur', 'utururfiyriu', 1234567897, '2024-06-19 02:48:11'),
(28, 'rabi', 'pujara', 'viuguigvii8', 8956231470, '2024-06-18 08:40:40'),
(29, 'Partha', 'Chattaraj', 'Durgapur', 9832236447, '2024-06-25 04:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `age` int(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` bigint(30) NOT NULL,
  `bgroup` varchar(10) NOT NULL,
  `disease` varchar(100) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `adddate` date NOT NULL,
  `ward` bigint(100) NOT NULL,
  `amount` int(255) NOT NULL,
  `room` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `Firstname`, `Lastname`, `DOB`, `age`, `gender`, `email`, `phone`, `street`, `city`, `state`, `pin`, `bgroup`, `disease`, `notes`, `adddate`, `ward`, `amount`, `room`, `created_at`) VALUES
(1, 'Archisman', 'mukherjee', '2024-06-12', 0, 'male', 'archismanmukherjee500@gmail.com', 7076316329, 's/234 bidhannagar', 'kolkata', 'westbengal', 789560, 'A+', 'math phobia', 'gy', '2024-06-25', 45, 100, 'caben', '2024-06-16 16:07:31'),
(2, 'Rony', 'das', '2010-06-17', 0, 'male', 'rony@gmail.com', 9876325410, 'sckhc', 'kolkata', 'west bengal', 7895623, 'AB-', 'sgvuksgj', 'veajgfjglv', '2024-06-05', 49, 100, 'caben', '2024-06-17 04:09:32'),
(3, 'Akhilesh', 'das', '2012-03-17', 0, 'Other', 'abhranildey2004@gmail.com', 7076316329, 's/234 bidhannagar', 'kolkata', 'westbengal', 789560, 'AB-', 'math phobia', 'lewra loson mdarachod', '2024-06-17', 69, 1000, 'Cabin', '2024-06-17 15:11:24'),
(5, 'anurup', 'mondal', '2004-08-09', 20, 'Other', 'ncode609@gmail.com', 8250657923, '1c/12 vidyapzti road', 'durgapur', 'West Bengal', 713205, 'A+', 'chicken pox', 'death very fast take you at the last', '2024-06-18', 69, 50000, 'Normal bed', '2024-06-18 14:10:20'),
(6, 'sreya', 'ghosh', '2005-10-28', 19, 'Femail', 'chakrabortysoumili33@gmail.com', 7076316329, 's/890 jn avenue', 'Durgapur ', 'West Bengal', 713206, 'AB-', 'actident', 'get well soon', '2024-06-19', 69, 1500, 'Cabin', '2024-06-19 06:59:20'),
(7, 'Nikhil', 'Kumar', '2010-07-16', 14, 'Mail', 'nikhilthak19@gmail.com', 7076316329, 's/234 bidhannagar', 'kolkata', 'westbengal', 789560, 'A+', 'bodvio', 'ucwoubobvoi', '2024-06-20', 69, 10000, 'Cabin', '2024-06-20 06:20:38'),
(8, 'Shreya', 'Ghosh', '2008-07-24', 16, 'Femail', 'fortry996@gmail.com', 7076316329, 'park street', 'kolkata', 'west bengal', 700006, 'O+', 'bone crack', 'get well soon', '2024-06-26', 45, 100000000, 'Cabin', '2024-06-26 17:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `reception`
--

CREATE TABLE `reception` (
  `id` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reception`
--

INSERT INTO `reception` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'reception1234', 'rec123890', '2024-05-28 18:12:49');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `createpass` varchar(30) NOT NULL,
  `confirm` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `phone`, `email`, `createpass`, `confirm`, `created_at`) VALUES
(415, 'Archisman mukherjee', 7076316329, 'archismanmukherjee500@gmail.com', '1234', '1234', '2024-06-20 07:54:24'),
(418, 'Rony', 7076316329, 'rony@gmail.com', 'rony1234', 'rony1234', '2024-06-21 17:11:19'),
(419, 'Archisman mukherjee', 7076316329, 'archismanmukherjee500@gmail.com', 'gyigmi,hou', ',ob9,uh9u', '2024-06-25 04:40:26'),
(420, 'Archisman mukherjee', 7076316329, 'archismanmukherjee500@gmail.com', 'gyigmi,hou', ',ob9,uh9u', '2024-06-25 04:40:28'),
(421, 'subhadep', 9936162032, 'achintagoswami.ag@gmail.com', '432156', '432156', '2024-06-25 04:44:40'),
(422, 'Shreya', 7076316329, 'fortry996@gmail.com', '123456789', '123456789', '2024-06-26 17:39:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reception`
--
ALTER TABLE `reception`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reception`
--
ALTER TABLE `reception`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
