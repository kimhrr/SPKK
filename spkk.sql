-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2024 at 06:16 AM
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
-- Table structure for table `pelajar`
--

CREATE TABLE `pelajar` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `ic` varchar(12) NOT NULL,
  `no_tel` char(13) NOT NULL,
  `kelas` varchar(9) NOT NULL,
  `jantina` varchar(6) NOT NULL,
  `pfp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelajar`
--

INSERT INTO `pelajar` (`id`, `nama`, `ic`, `no_tel`, `kelas`, `jantina`, `pfp`) VALUES
(12, 'MUHAMMAD DANNISH HAQQEM BIN ISMAIL', '050223150285', '0182033076', '2 DVM KPD', 'Male', NULL);

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
(4, 'Danish', '2 DVM KPD', 'kl', '2024-08-24', '2024-08-29', 'Pending'),
(5, 'afzal', '2 DVM KPD', 'sakit kaki', '2024-08-22', '2024-08-24', 'Accepted');

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
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Danish', 'm-6075974@moe-dl.edu.my', 'acbf4013e3d9a60fcd524d9017823638', 'admin'),
(2, 'Nabil', 'ahmadnabilwafiq@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user'),
(3, 'atiqah comel', 'atiqah123@gmail.com', '5b119a961fcb523c81c25e8f79de2380', 'admin'),
(4, 'danish', 'gh@gmail.com', '69215793fafec162b250b7525d1f65cb', 'user'),
(13, 'Admin', 'Admin', '482c811da5d5b4bc6d497ffa98491e38', 'admin'),
(14, 'kimi', 'm@gmail.com', '8b82bd2ef31d867db598fba5014e1762', 'user');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `pelajar`
--
ALTER TABLE `pelajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pelajar_req`
--
ALTER TABLE `pelajar_req`
  MODIFY `eid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
