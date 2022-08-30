-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: crud_db:3306
-- Generation Time: Jan 19, 2022 at 03:14 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsstand_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `editors`
--

CREATE TABLE `editors` (
  `ed_id` int NOT NULL,
  `ed_firstname` varchar(255) NOT NULL,
  `ed_lastname` varchar(255) NOT NULL,
  `ed_datestarted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `editors`
--

INSERT INTO `editors` (`ed_id`, `ed_firstname`, `ed_lastname`, `ed_datestarted`) VALUES
(1, 'Katharine', 'Viner', NULL),
(2, 'Chris', 'Evans', NULL),
(3, 'John', 'Witherow', NULL),
(4, 'Roula', 'Khalaf', NULL),
(5, 'Amol', 'Rajan', NULL),
(6, 'Neil', 'McIntosh', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `newspapers`
--

CREATE TABLE `newspapers` (
  `np_id` int NOT NULL,
  `ed_id` int NOT NULL,
  `np_name` varchar(255) NOT NULL,
  `np_url` varchar(255) NOT NULL,
  `np_image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `newspapers`
--

INSERT INTO `newspapers` (`np_id`, `ed_id`, `np_name`, `np_url`, `np_image_url`) VALUES
(1, 1, 'The Guardian', 'https://www.theguardian.com/uk', '/static/images/theguardian.jpg'),
(2, 3, 'The Times', 'https://www.thetimes.co.uk/', '/static/images/thetimes.jpg'),
(3, 2, 'The Telegraph', 'https://www.telegraph.co.uk/', '/static/images/thetelegraph.jpg'),
(4, 4, 'Financial Times', 'https://www.ft.com/', '/static/images/financialtimes.jpg'),
(5, 5, 'Independent', 'https://www.independent.co.uk/', '/static/images/independent.jpg'),
(6, 6, 'The Scotsman', 'https://www.scotsman.com/', '/static/images/thescotsman.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `editors`
--
ALTER TABLE `editors`
  ADD PRIMARY KEY (`ed_id`);

--
-- Indexes for table `newspapers`
--
ALTER TABLE `newspapers`
  ADD PRIMARY KEY (`np_id`),
  ADD KEY `ed_id` (`ed_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `editors`
--
ALTER TABLE `editors`
  MODIFY `ed_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `newspapers`
--
ALTER TABLE `newspapers`
  MODIFY `np_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `newspapers`
--
ALTER TABLE `newspapers`
  ADD CONSTRAINT `newspapers_ibfk_1` FOREIGN KEY (`ed_id`) REFERENCES `editors` (`ed_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
