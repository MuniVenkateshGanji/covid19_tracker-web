-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 29, 2020 at 10:44 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id13677849_loser`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `auth_type` varchar(255) NOT NULL,
  `selector` text NOT NULL,
  `token` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_tokens`
--

INSERT INTO `auth_tokens` (`id`, `user_email`, `auth_type`, `selector`, `token`, `created_at`, `expires_at`) VALUES
(133, 'hacker123@gmail.com', 'account_verify', 'f38882cb56dc6566', '$2y$10$gPrr58vGawDoAMXbhqiFzuFodjkj1N4oYw9mTHcCSbgE817lv229e', '2020-05-13 10:17:07', '2020-05-13 11:17:07'),
(134, 'kc@gmail.com', 'account_verify', '7a558127f942ddfd', '$2y$10$l0bEx3j6rNEVGINpFqSlf.VxQZ5OHt7nj7OK2ZF37LgdoiO8xWZla', '2020-05-28 06:10:51', '2020-05-28 07:10:51');

-- --------------------------------------------------------

--
-- Table structure for table `cancel`
--

CREATE TABLE `cancel` (
  `id` int(255) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(255) NOT NULL,
  `myusername` varchar(100) NOT NULL,
  `mypassword` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `myusername`, `mypassword`) VALUES
(1, 'sivateja', 'sivateja157'),
(2, 'Gmvenkey', 'Gmvenkey123');

-- --------------------------------------------------------

--
-- Table structure for table `pdetails`
--

CREATE TABLE `pdetails` (
  `id` bigint(255) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `mail` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `problem` varchar(100) NOT NULL,
  `hospital` varchar(100) NOT NULL,
  `doctor` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
  `id` int(255) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `old` varchar(10) NOT NULL,
  `state` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `journey` varchar(50) NOT NULL,
  `problem` varchar(50) NOT NULL,
  `symptoms` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`id`, `fname`, `old`, `state`, `phone`, `journey`, `problem`, `symptoms`) VALUES
(1, 'sivateja basavagari', '20', '', '7997246964', 'no', 'No', 'dry cough'),
(2, 'sivateja basavagari', '20', 'Andhra Pradesh', '7997246964', 'no', 'No', 'dry cough'),
(3, 'dsfasfsaf64564646dsf', '20', 'Andhra Pradesh51515151', '5151', 'no', 'No', 'nothing'),
(4, 'sivateja basavagari', '20', 'Andhra Pradesh', '9493743074', 'no', 'No', 'nothing'),
(5, 'shakti', '20', 'Andhra Pradesh', '7995343154', '20', 'No', 'nothing'),
(6, '', '', '', '', '', 'Yes', 'fever'),
(7, 'sivateja basavagari', '20', 'Andhra Pradesh', '7997246964', 'no', 'No', 'nothing');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `profile_image` varchar(255) NOT NULL DEFAULT '_defaultUser.png',
  `verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `first_name`, `last_name`, `gender`, `headline`, `bio`, `profile_image`, `verified_at`, `created_at`, `updated_at`, `deleted_at`, `last_login_at`) VALUES
(37, 'webpentester', 'hacker123@gmail.com', '$2y$10$5Do.eQAx8ZAD6R9/ICpyHutbmSxtzAcQyla0UVNgd99VWpQijKV4K', 'none', 'none', 'm', 'none', 'none', '_defaultUser.png', NULL, '2020-05-13 10:17:07', '2020-05-13 10:17:07', NULL, NULL),
(38, 'Kc', 'kc@gmail.com', '$2y$10$/L/tulyYloNpq1Z02slEEu0vXOeKCD9emoZJy/cynfc20Wx1vkD/u', 'None', 'None', 'm', 'None', 'None', '_defaultUser.png', NULL, '2020-05-28 06:10:51', '2020-05-28 06:11:05', NULL, '2020-05-28 06:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `volun`
--

CREATE TABLE `volun` (
  `id` int(255) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `adhaar` varchar(50) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `faname` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `customRadioInline1` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pin` varchar(7) NOT NULL,
  `state` varchar(50) NOT NULL,
  `town` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `landmark` varchar(100) NOT NULL,
  `volunteer` varchar(50) NOT NULL,
  `img` longblob NOT NULL,
  `work` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `textarea` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volun`
--

INSERT INTO `volun` (`id`, `fname`, `lname`, `adhaar`, `occupation`, `faname`, `phone`, `mail`, `dob`, `customRadioInline1`, `city`, `pin`, `state`, `town`, `address`, `landmark`, `volunteer`, `img`, `work`, `type`, `textarea`) VALUES
(1, 'sivateja', '', '546464646464', 'software', 'jyothesswara rao', '7997246964', 'siva.teja157@gmail.com', '2000-02-20', 'male', 'venkatagiri', '524132', 'Andhra Pradesh', 'venkatagiri', 'House no.204,Tribuvani hights, Trib', 'tribuvani', 'Doctors', 0x6865616c746873657276696365342e706e67, 'Work Near by you', 'Individual', 'sadadadasdsaasdsda'),
(2, 'sivateja', 'basavagari', '5464646464', 'software', 'jyothesswara rao', '7997246964', 'siva.teja157@gmail.com', '2000-02-20', 'male', 'venkatagiri', '524132', 'Andhra Pradesh', 'venkatagiri', 'House no.204,Tribuvani hights', 'tribuvani', 'Nurse', 0x6865616c746862616e6e65722e6a7067, 'Work Near by you', 'Individual', 'gfcchchch'),
(3, 'sivateja', 'basavagari', '5554545444', 'software', 'jyothesswara rao', '9493743074', 'siva.teja157@gmail.com', '2000-02-20', 'male', 'venkatagiri', '524132', 'Andhra Pradesh', 'venkatagiri, Spsr Nellore', 'Tribuvani Center, Near RTC Bus stand', 'tribuvani', 'Doctors', 0x69635f6c61756e636865725f666f726567726f756e642e706e67, 'Work In your District', 'Organisation', 'sacascasaascacs'),
(4, 'shakti', 'dt', '55555554664', 'law', 'tejoram', '7997246964', 'siva.teja157@gmail.com', '2000-05-16', 'female', 'venkatagiri', '524132', 'Andhra Pradesh', 'venkatagiri', 'House no.204,Tribuvani hights, Trib', 'tribuvani', 'Doctors', 0x494d472d32303230303532302d5741303031332e6a7067, 'Work Near by you', 'Individual', 'fdsfadsafafasf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `cancel`
--
ALTER TABLE `cancel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdetails`
--
ALTER TABLE `pdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `id` (`id`,`username`,`email`);

--
-- Indexes for table `volun`
--
ALTER TABLE `volun`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `cancel`
--
ALTER TABLE `cancel`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pdetails`
--
ALTER TABLE `pdetails`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `survey`
--
ALTER TABLE `survey`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `volun`
--
ALTER TABLE `volun`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
