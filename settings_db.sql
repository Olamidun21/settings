-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2019 at 06:15 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `settings_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `settings_tb`
--

CREATE TABLE `settings_tb` (
  `settings_id` int(11) NOT NULL,
  `settings_name` varchar(200) DEFAULT NULL,
  `visibility` varchar(1) NOT NULL DEFAULT 'Y',
  `default` char(1) DEFAULT 'Y',
  `value1` int(55) DEFAULT '0',
  `value2` varchar(255) DEFAULT NULL,
  `value3` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sub_settings_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings_tb`
--

INSERT INTO `settings_tb` (`settings_id`, `settings_name`, `visibility`, `default`, `value1`, `value2`, `value3`, `created_at`, `Updated_at`, `sub_settings_Id`) VALUES
(1, 'Subject', 'Y', 'Y', 0, NULL, NULL, '2019-03-06 09:27:18', '2019-03-25 07:54:20', 1),
(2, 'CA', 'Y', 'Y', 0, NULL, NULL, '2019-03-06 08:23:45', '2019-03-25 07:54:20', 1),
(3, 'C.A.2', 'Y', 'Y', 0, NULL, NULL, '2019-03-06 06:17:00', '2019-03-25 07:54:20', 1),
(4, 'Exam', 'Y', 'Y', 100, NULL, NULL, '2019-03-06 06:17:00', '2019-03-25 07:54:20', 1),
(5, 'Total', 'Y', 'Y', 100, NULL, NULL, '2019-03-06 06:17:00', '2019-03-25 07:54:20', 1),
(6, 'Grade', 'N', 'Y', 0, NULL, NULL, '2019-03-06 06:17:00', '2019-03-25 07:54:20', 1),
(7, 'Remark', 'Y', 'N', 0, NULL, NULL, '2019-03-11 07:17:34', '2019-03-24 16:50:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting_category_tb`
--

CREATE TABLE `setting_category_tb` (
  `sc_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting_category_tb`
--

INSERT INTO `setting_category_tb` (`sc_id`, `category_name`) VALUES
(1, 'Academics');

-- --------------------------------------------------------

--
-- Table structure for table `sub_settings_tb`
--

CREATE TABLE `sub_settings_tb` (
  `sub_settings_id` int(11) NOT NULL,
  `Ss_name` varchar(255) NOT NULL,
  `settings_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_settings_tb`
--

INSERT INTO `sub_settings_tb` (`sub_settings_id`, `Ss_name`, `settings_category_id`) VALUES
(1, 'Result', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `settings_tb`
--
ALTER TABLE `settings_tb`
  ADD PRIMARY KEY (`settings_id`),
  ADD KEY `sub_settings_Id` (`sub_settings_Id`);

--
-- Indexes for table `setting_category_tb`
--
ALTER TABLE `setting_category_tb`
  ADD PRIMARY KEY (`sc_id`);

--
-- Indexes for table `sub_settings_tb`
--
ALTER TABLE `sub_settings_tb`
  ADD PRIMARY KEY (`sub_settings_id`),
  ADD KEY `sc_id` (`settings_category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `settings_tb`
--
ALTER TABLE `settings_tb`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_settings_tb`
--
ALTER TABLE `sub_settings_tb`
  MODIFY `sub_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `settings_tb`
--
ALTER TABLE `settings_tb`
  ADD CONSTRAINT `settings_tb_ibfk_1` FOREIGN KEY (`sub_settings_Id`) REFERENCES `sub_settings_tb` (`sub_settings_id`);

--
-- Constraints for table `sub_settings_tb`
--
ALTER TABLE `sub_settings_tb`
  ADD CONSTRAINT `sub_settings_tb_ibfk_1` FOREIGN KEY (`settings_category_id`) REFERENCES `setting_category_tb` (`sc_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
