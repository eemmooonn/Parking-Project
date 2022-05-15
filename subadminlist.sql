-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220511.c3fb567b13
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 12, 2022 at 11:48 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `subadminlist`
--

-- --------------------------------------------------------

--
-- Table structure for table `subadminlist`
--

CREATE TABLE `subadminlist` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(20) NOT NULL,
  `address` varchar(150) NOT NULL,
  `security` int(20) NOT NULL,
  `division` varchar(20) NOT NULL,
  `bike` varchar(50) NOT NULL,
  `bikeslot` int(50) NOT NULL,
  `car` varchar(50) NOT NULL,
  `carslot` int(50) NOT NULL,
  `opentime` varchar(20) NOT NULL,
  `endtime` varchar(20) NOT NULL,
  `placecategory` varchar(100) NOT NULL,
  `facility` varchar(100) NOT NULL,
  `parkingplace` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subadminlist`
--

INSERT INTO `subadminlist` (`id`, `name`, `email`, `mobile`, `address`, `security`, `division`, `bike`, `bikeslot`, `car`, `carslot`, `opentime`, `endtime`, `placecategory`, `facility`, `parkingplace`) VALUES
(1, 'Tamim', 'tamim@gmail.com', 1234567896, 'mazar', 1547896321, 'Dhaka', 'Yes', 10, 'Yes', 9, '06:00', '23:59', 'Residential', 'Both(CCTV & Guard)', 'Indoor'),
(2, 'Emon', 'emon@gmail.com', 1254639870, 'siddhirganj,', 1254639872, 'Dhaka', 'Yes', 6, 'Yes', 8, '05:35', '23:59', 'Residential', 'Guard', 'Indoor'),
(3, ' Nahid', 'nahid@gmail.com', 1235478569, 'mautail, jatrabari', 125468973, 'Dhaka', 'Yes', 26, ' Yes', 15, '06:55', '23:59', 'Market', 'Both(CCTV & Guard)', 'Both(Indoor & Outdoor)'),
(4, 'Tanjil', 'tanjil@gmail.com', 147896325, 'danmondi', 156324789, 'Dhaka', 'Yes', 8, 'Yes', 2, '06:02', '23:59', 'Residential', 'CCTV', 'Indoor'),
(5, 'Sharif', 'sharif@gmail.com', 1478523654, 'mirpor', 215487963, 'Dhaka', 'Yes', 8, 'Yes', 6, '06:17', '23:17', 'Residential', 'CCTV', 'Indoor'),
(6, 'Mamun', 'mamun@gmail.com', 1235478963, 'panthopoth', 1254769832, 'Dhaka', 'Yes', 30, 'Yes', 20, '06:00', '23:59', 'Market', 'Both(CCTV & Guard)', 'Outdoor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subadminlist`
--
ALTER TABLE `subadminlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subadminlist`
--
ALTER TABLE `subadminlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



