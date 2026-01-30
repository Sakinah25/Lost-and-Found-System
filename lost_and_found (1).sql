-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 28, 2026 at 12:27 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lost_and_found`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_ID` int NOT NULL,
  `user_ID` int NOT NULL,
  `record_ID` int NOT NULL,
  `action` varchar(255) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_ID` int NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `claim`
--

CREATE TABLE `claim` (
  `claim_ID` int NOT NULL,
  `claimer_ID` int NOT NULL,
  `admin_ID` int NOT NULL,
  `found_item_ID` int NOT NULL,
  `lost_item_ID` int NOT NULL,
  `proof_description` text NOT NULL,
  `claim_status` enum('pending','approved','rejected') NOT NULL,
  `decision_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `found`
--

CREATE TABLE `found` (
  `found_ID` int NOT NULL,
  `user_ID` int NOT NULL,
  `found_location` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `status` enum('pending','rejected','approved') NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_ID` int NOT NULL,
  `found_date` date NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lost`
--

CREATE TABLE `lost` (
  `lost_ID` int NOT NULL,
  `user_ID` int NOT NULL,
  `category_ID` int NOT NULL,
  `unique_marks` varchar(255) NOT NULL,
  `lost_date` date NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL,
  `color` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `lost_location` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matching_claiming`
--

CREATE TABLE `matching_claiming` (
  `match_ID` int NOT NULL,
  `lost_item_ID` int NOT NULL,
  `found_item_ID` int NOT NULL,
  `status` enum('approved','rejected') NOT NULL,
  `admin_note` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_ID` int NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_no` int NOT NULL,
  `password` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD KEY `category_ibfk_2` (`category_ID`);

--
-- Indexes for table `claim`
--
ALTER TABLE `claim`
  ADD PRIMARY KEY (`claim_ID`);

--
-- Indexes for table `found`
--
ALTER TABLE `found`
  ADD PRIMARY KEY (`found_ID`);

--
-- Indexes for table `lost`
--
ALTER TABLE `lost`
  ADD PRIMARY KEY (`lost_ID`);

--
-- Indexes for table `matching_claiming`
--
ALTER TABLE `matching_claiming`
  ADD KEY `match_ID` (`match_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `claim`
--
ALTER TABLE `claim`
  MODIFY `claim_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `found`
--
ALTER TABLE `found`
  MODIFY `found_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lost`
--
ALTER TABLE `lost`
  MODIFY `lost_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_ID` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`admin_ID`) REFERENCES `claim` (`claim_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`category_ID`) REFERENCES `lost` (`lost_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_ibfk_2` FOREIGN KEY (`category_ID`) REFERENCES `found` (`found_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lost`
--
ALTER TABLE `lost`
  ADD CONSTRAINT `lost_ibfk_1` FOREIGN KEY (`lost_ID`) REFERENCES `found` (`found_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lost_ibfk_2` FOREIGN KEY (`lost_ID`) REFERENCES `claim` (`claim_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matching_claiming`
--
ALTER TABLE `matching_claiming`
  ADD CONSTRAINT `matching_claiming_ibfk_1` FOREIGN KEY (`match_ID`) REFERENCES `lost` (`lost_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matching_claiming_ibfk_2` FOREIGN KEY (`match_ID`) REFERENCES `found` (`found_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `lost` (`lost_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`user_ID`) REFERENCES `found` (`found_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
