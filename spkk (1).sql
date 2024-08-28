-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2024 at 02:30 AM
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
-- Database: `spkk`
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelajar`
--

CREATE TABLE `pelajar` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ic` varchar(12) NOT NULL,
  `kelas` varchar(9) NOT NULL,
  `jantina` varchar(6) NOT NULL,
  `pfp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelajar`
--

INSERT INTO `pelajar` (`id`, `nama`, `email`, `ic`, `kelas`, `jantina`, `pfp`) VALUES
(22, 'MUHAMMAD SOFAT', 'm@gmail.com', '0986868785', '2 DVM KPD', 'Male', ''),
(23, 'MUHAMMAD HAIKAL', 'm-123456@moe-dl.edu.my', '0909009009', '2 DVM KPD', 'Male', ''),
(24, 'MUHAMMAD NISH KIM', 'm-6075974@moe-dl.edu.my', '0909009009', '2 DVM KPD', 'Male', ''),
(25, 'MUHAMMAD KAL', 'danishhaqqem19@gmail.com', '0909009009', '2 DVM KPD', 'Male', 'logospkk.png'),
(26, 'MUHAMMAD HAIKAL', 'm-6075974@moe-dl.edu.my', '0909009009', '2 DVM KPD', 'Male', 'logospkk.png'),
(27, 'MUHAMMAD SOFAT', 'm-123456@moe-dl.edu.my', '0909009009', '2 DVM KPD', 'Male', 'Array'),
(28, 'MUHAMMAD KAL', 'm-123456@moe-dl.edu.my', '0909009009', '2 DVM KPD', 'Male', 'default_image.jpg'),
(29, 'MUHAMMAD NISH KIM', 'danishhaqqem13@gmail.com', '0909009009', '2 DVM KPD', 'Male', 'default_image.jpg'),
(31, 'MUHAMMAD FI', 'm-123456@moe-dl.edu.my', '0909009009', '2 DVM KPD', 'Male', 'default_image.jpg'),
(32, 'MUHAMMAD KAL', 'm-123456@moe-dl.edu.my', '0909009009', '2 DVM KPD', 'Male', 'default_image.jpg'),
(33, 'MUHAMMAD SOFAT', 'danishhaqqem19@gmail.com', '0909009009', '2 DVM KPD', 'Male', 'default_image.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pelajar_req`
--

CREATE TABLE `pelajar_req` (
  `eid` int(12) NOT NULL,
  `ename` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelajar_req`
--

INSERT INTO `pelajar_req` (`eid`, `ename`, `class`, `reason`, `fromdate`, `todate`, `status`) VALUES
(10, 'MUHAMMAD NISH KIM', '2 DVM KPD', 'yeke tho', '2024-08-25', '2024-08-25', 'Accepted'),
(11, 'MUHAMMAD NISH KIM', '2 DVM KPD', 'saya sakit', '2024-08-25', '2024-08-25', 'Rejected'),
(12, 'MUHAMMAD HAIKAL', '2 DVM KPD', 'sakit bajo', '2024-08-25', '2024-08-25', 'Accepted'),
(13, 'MUHAMMAD HAIKAL', '2 DVM KPD', 'sakit bajo', '2024-08-25', '2024-08-25', 'Accepted'),
(14, 'MUHAMMAD HAIKAL', '2 DVM KPD', 'sakit bajo', '2024-08-25', '2024-08-25', 'Accepted'),
(15, 'MUHAMMAD HAIKAL', '2 DVM KPD', 'okay je saje test', '2024-08-25', '2024-08-25', 'Accepted'),
(16, 'MUHAMMAD HAIKAL', '2 DVM KPD', 'babi', '2024-08-25', '2024-08-25', 'Rejected'),
(17, 'MUHAMMAD HAIKAL', '2 DVM KPD', 'kambing', '2024-08-25', '2024-08-25', 'Accepted'),
(18, 'MUHAMMAD HAIKAL', '2 DVM KPD', 'asdas', '2024-08-25', '2024-08-25', 'Accepted'),
(19, 'kimi', '', 'babi', '2024-08-26', '2024-08-26', 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `pensyarah`
--

CREATE TABLE `pensyarah` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `no_tel` char(13) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `kos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pensyarahbertugas`
--

CREATE TABLE `pensyarahbertugas` (
  `nama` varchar(100) NOT NULL,
  `notelefon` varchar(100) NOT NULL,
  `tarikh_mula` date NOT NULL,
  `tarikh_akhir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rekod_klinik`
--

CREATE TABLE `rekod_klinik` (
  `rekod_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `hari_mc` int(11) NOT NULL,
  `appt` tinyint(1) NOT NULL,
  `appt_date` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(12) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gander` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `name`, `password`, `type`, `email`, `gander`, `city`, `department`, `phone`) VALUES
(1, '', 'Admin', 'password123', '', 'Admin', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `class`, `email`, `password`, `user_type`) VALUES
(2, 'Nabil', '', 'ahmadnabilwafiq@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user'),
(4, 'danish', '', 'gh@gmail.com', '69215793fafec162b250b7525d1f65cb', 'user'),
(13, 'Admin', '', 'Admin', '482c811da5d5b4bc6d497ffa98491e38', 'admin'),
(14, 'kimi', '', 'm@gmail.com', '8b82bd2ef31d867db598fba5014e1762', 'user'),
(15, 'MUHAMMAD NISH KIM', '2 DVM KPD', 'm-123456@moe-dl.edu.my', '69215793fafec162b250b7525d1f65cb', 'user'),
(16, 'MUHAMMAD HAIKAL', '2 DVM KPD', 'm-8899@moe-dl.edu.my', 'bc022864f419e5f201abb67179ee4acf', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelajar`
--
ALTER TABLE `pelajar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelajar_req`
--
ALTER TABLE `pelajar_req`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `pensyarah`
--
ALTER TABLE `pensyarah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pensyarahbertugas`
--
ALTER TABLE `pensyarahbertugas`
  ADD PRIMARY KEY (`nama`);

--
-- Indexes for table `rekod_klinik`
--
ALTER TABLE `rekod_klinik`
  ADD PRIMARY KEY (`rekod_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelajar`
--
ALTER TABLE `pelajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `pelajar_req`
--
ALTER TABLE `pelajar_req`
  MODIFY `eid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pensyarah`
--
ALTER TABLE `pensyarah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rekod_klinik`
--
ALTER TABLE `rekod_klinik`
  MODIFY `rekod_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
