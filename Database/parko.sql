-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2022 at 06:49 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parko`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `AdminName` varchar(40) COLLATE latin1_general_cs NOT NULL,
  `AdminPassword` varchar(20) COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `AdminName`, `AdminPassword`) VALUES
(1, 'admin', 'admin'),
(2, 'Emon', 'emon');

-- --------------------------------------------------------

--
-- Table structure for table `balance_subid:1`
--

CREATE TABLE `balance_subid:1` (
  `Booking_Id` int(11) NOT NULL,
  `Total_Paid` int(11) NOT NULL,
  `Booked_Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `balance_subid:1`
--

INSERT INTO `balance_subid:1` (`Booking_Id`, `Total_Paid`, `Booked_Date`) VALUES
(1, 570, '2022-06-23 18:56:46'),
(6, 90, '2022-06-23 18:57:03'),
(7, 150, '2022-06-23 18:57:23');

-- --------------------------------------------------------

--
-- Table structure for table `balance_subid:2`
--

CREATE TABLE `balance_subid:2` (
  `Booking_Id` int(11) NOT NULL,
  `Total_Paid` int(11) NOT NULL,
  `Booked_Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `booked_list`
--

CREATE TABLE `booked_list` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `vehicle_No` varchar(40) NOT NULL,
  `place_id` int(11) NOT NULL,
  `slot_No` int(11) NOT NULL,
  `priceperhour` int(15) NOT NULL,
  `arrival_date` date NOT NULL,
  `arrival_time` time NOT NULL,
  `departure_date` date NOT NULL,
  `departure_time` time NOT NULL,
  `totalparkinghour` int(15) NOT NULL,
  `totalrentcost` int(15) NOT NULL,
  `payment_method` varchar(30) NOT NULL,
  `transaction_id` varchar(40) NOT NULL,
  `booking_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked_list`
--

INSERT INTO `booked_list` (`booking_id`, `user_id`, `user_name`, `user_phone`, `vehicle_No`, `place_id`, `slot_No`, `priceperhour`, `arrival_date`, `arrival_time`, `departure_date`, `departure_time`, `totalparkinghour`, `totalrentcost`, `payment_method`, `transaction_id`, `booking_time`) VALUES
(1, 511, 'Emon Mazumder', '1818557778', 'Dhaka Metro LA-2354', 1, 1, 30, '2022-06-23', '15:30:00', '2022-06-24', '10:30:00', 19, 570, 'bKash', 'TS24119AFCK4780', '2022-06-22 17:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `booking_request`
--

CREATE TABLE `booking_request` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `vehicle_No` varchar(40) NOT NULL,
  `place_id` int(11) NOT NULL,
  `slot_No` int(11) NOT NULL,
  `priceperhour` int(15) NOT NULL,
  `arrival_date` date NOT NULL,
  `arrival_time` time NOT NULL,
  `departure_date` date NOT NULL,
  `departure_time` time NOT NULL,
  `totalparkinghour` int(15) NOT NULL,
  `totalrentcost` int(15) NOT NULL,
  `payment_method` varchar(30) NOT NULL,
  `transaction_id` varchar(40) NOT NULL,
  `booking_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_request`
--

INSERT INTO `booking_request` (`booking_id`, `user_id`, `user_name`, `user_phone`, `vehicle_No`, `place_id`, `slot_No`, `priceperhour`, `arrival_date`, `arrival_time`, `departure_date`, `departure_time`, `totalparkinghour`, `totalrentcost`, `payment_method`, `transaction_id`, `booking_time`) VALUES
(5, 511, 'Emon Mazumder', '1818557778', 'Dhaka Metro LA-2354', 1, 4, 30, '2022-06-24', '12:04:00', '2022-06-26', '12:02:00', 48, 1439, 'bKash', '465877', '2022-06-23 12:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `overtime`
--

CREATE TABLE `overtime` (
  `Sub_Id` int(11) NOT NULL,
  `Total_Overtime` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `overtime`
--

INSERT INTO `overtime` (`Sub_Id`, `Total_Overtime`) VALUES
(1, 0),
(2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `parkingplace`
--

CREATE TABLE `parkingplace` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `division` varchar(20) NOT NULL,
  `thana` varchar(20) NOT NULL,
  `ward` int(5) NOT NULL,
  `fulladdress` varchar(80) NOT NULL,
  `opentime` varchar(20) NOT NULL,
  `closetime` varchar(20) NOT NULL,
  `parkingcategory` varchar(20) NOT NULL,
  `facility` varchar(20) NOT NULL,
  `parkingplace` varchar(20) NOT NULL,
  `guardnumber` varchar(20) NOT NULL,
  `smallslot` int(5) NOT NULL,
  `mediumslot` int(5) NOT NULL,
  `largeslot` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parkingplace`
--

INSERT INTO `parkingplace` (`id`, `email`, `division`, `thana`, `ward`, `fulladdress`, `opentime`, `closetime`, `parkingcategory`, `facility`, `parkingplace`, `guardnumber`, `smallslot`, `mediumslot`, `largeslot`) VALUES
(1, 'mazumderemon@gmail.com', 'Dhaka', 'Jatrabari', 15, '26/9, Jatrabari, Dhaka', '07:00', '23:59', 'Residential', 'CCTV+Guard', 'Indoor', '01918381381', 5, 5, 5),
(2, 'emonmazumder000@gmail.com', 'Dhaka', 'Motijheel', 7, '23/9, Motijheel, Dhaka', '07:00', '23:59', 'Residential', 'CCTV+Guard', 'Indoor', '01818116313', 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `removed_bookedlist`
--

CREATE TABLE `removed_bookedlist` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `vehicle_No` varchar(40) NOT NULL,
  `place_id` int(11) NOT NULL,
  `slot_No` int(11) NOT NULL,
  `priceperhour` int(15) NOT NULL,
  `arrival_date` date NOT NULL,
  `arrival_time` time NOT NULL,
  `departure_date` date NOT NULL,
  `departure_time` time NOT NULL,
  `totalparkinghour` int(15) NOT NULL,
  `totalrentcost` int(15) NOT NULL,
  `payment_method` varchar(30) NOT NULL,
  `transaction_id` varchar(40) NOT NULL,
  `booking_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `removed_bookedlist`
--

INSERT INTO `removed_bookedlist` (`booking_id`, `user_id`, `user_name`, `user_phone`, `vehicle_No`, `place_id`, `slot_No`, `priceperhour`, `arrival_date`, `arrival_time`, `departure_date`, `departure_time`, `totalparkinghour`, `totalrentcost`, `payment_method`, `transaction_id`, `booking_time`) VALUES
(2, 511, 'Emon Mazumder', '1818557778', 'Dhaka Metro LA-2354', 1, 6, 50, '2022-06-22', '17:40:00', '2022-06-22', '20:40:00', 3, 150, 'Nagad', 'UUAGF17371983', '2022-06-22 17:38:46'),
(4, 511, 'Emon Mazumder', '1818557778', 'Dhaka Metro LA-2354', 1, 9, 50, '2022-06-22', '17:55:00', '2022-06-22', '23:55:00', 6, 300, '', 'TYQI119819BSB', '2022-06-22 17:50:33'),
(6, 511, 'Emon Mazumder', '1818557778', 'Dhaka Metro LA-2354', 1, 1, 30, '2022-06-23', '14:49:00', '2022-06-23', '17:49:00', 3, 90, 'bKash', 'USFH8230', '2022-06-23 14:47:34'),
(7, 511, 'Emon Mazumder', '1818557778', 'Dhaka Metro LA-2354', 1, 9, 50, '2022-06-23', '15:09:00', '2022-06-23', '18:09:00', 3, 150, 'Nagad', 'HJD71318032', '2022-06-23 15:08:19');

-- --------------------------------------------------------

--
-- Table structure for table `removed_bookingrequest`
--

CREATE TABLE `removed_bookingrequest` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `vehicle_No` varchar(40) NOT NULL,
  `place_id` int(11) NOT NULL,
  `slot_No` int(11) NOT NULL,
  `priceperhour` int(15) NOT NULL,
  `arrival_date` date NOT NULL,
  `arrival_time` time NOT NULL,
  `departure_date` date NOT NULL,
  `departure_time` time NOT NULL,
  `totalparkinghour` int(15) NOT NULL,
  `totalrentcost` int(15) NOT NULL,
  `payment_method` varchar(30) NOT NULL,
  `transaction_id` varchar(40) NOT NULL,
  `booking_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `removed_bookingrequest`
--

INSERT INTO `removed_bookingrequest` (`booking_id`, `user_id`, `user_name`, `user_phone`, `vehicle_No`, `place_id`, `slot_No`, `priceperhour`, `arrival_date`, `arrival_time`, `departure_date`, `departure_time`, `totalparkinghour`, `totalrentcost`, `payment_method`, `transaction_id`, `booking_time`) VALUES
(3, 511, 'Emon Mazumder', '1818557778', 'Dhaka Metro LA-2354', 1, 3, 30, '2022-06-23', '17:50:00', '2022-06-24', '17:50:00', 24, 720, 'bKash', 'JSAF6AIOFAHF', '2022-06-23 15:07:10');

-- --------------------------------------------------------

--
-- Table structure for table `slotlist_subid:1`
--

CREATE TABLE `slotlist_subid:1` (
  `Slot_Id` int(11) NOT NULL,
  `Sub_Admin_Id` int(11) NOT NULL,
  `Slot_Size` varchar(20) NOT NULL,
  `PricePerHour` int(20) NOT NULL,
  `Slot_Status` varchar(20) NOT NULL,
  `Booking_Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slotlist_subid:1`
--

INSERT INTO `slotlist_subid:1` (`Slot_Id`, `Sub_Admin_Id`, `Slot_Size`, `PricePerHour`, `Slot_Status`, `Booking_Status`) VALUES
(1, 1, 'Small', 30, 'Not Connected', 'Available'),
(2, 1, 'Small', 30, 'Not Connected', 'Available'),
(3, 1, 'Small', 30, 'Not Connected', 'Available'),
(4, 1, 'Small', 30, 'Not Connected', 'Available'),
(5, 1, 'Small', 30, 'Not Connected', 'Available'),
(6, 1, 'Medium', 50, 'Not Connected', 'Available'),
(7, 1, 'Medium', 50, 'Not Connected', 'Available'),
(8, 1, 'Medium', 50, 'Not Connected', 'Available'),
(9, 1, 'Medium', 50, 'Not Connected', 'Available'),
(10, 1, 'Medium', 50, 'Not Connected', 'Available'),
(11, 1, 'Large', 80, 'Not Connected', 'Available'),
(12, 1, 'Large', 80, 'Not Connected', 'Available'),
(13, 1, 'Large', 80, 'Not Connected', 'Available'),
(14, 1, 'Large', 80, 'Not Connected', 'Available'),
(15, 1, 'Large', 80, 'Not Connected', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `slotlist_subid:2`
--

CREATE TABLE `slotlist_subid:2` (
  `Slot_Id` int(11) NOT NULL,
  `Sub_Admin_Id` int(11) NOT NULL,
  `Slot_Size` varchar(20) NOT NULL,
  `PricePerHour` int(20) NOT NULL,
  `Slot_Status` varchar(20) NOT NULL,
  `Booking_Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slotlist_subid:2`
--

INSERT INTO `slotlist_subid:2` (`Slot_Id`, `Sub_Admin_Id`, `Slot_Size`, `PricePerHour`, `Slot_Status`, `Booking_Status`) VALUES
(1, 2, 'Small', 40, 'Not Connected', 'Available'),
(2, 2, 'Small', 40, 'Not Connected', 'Available'),
(3, 2, 'Small', 40, 'Not Connected', 'Available'),
(4, 2, 'Small', 40, 'Not Connected', 'Available'),
(5, 2, 'Small', 40, 'Not Connected', 'Available'),
(6, 2, 'Medium', 70, 'Not Connected', 'Available'),
(7, 2, 'Medium', 70, 'Not Connected', 'Available'),
(8, 2, 'Medium', 70, 'Not Connected', 'Available'),
(9, 2, 'Medium', 70, 'Not Connected', 'Available'),
(10, 2, 'Medium', 70, 'Not Connected', 'Available'),
(11, 2, 'Large', 100, 'Not Connected', 'Available'),
(12, 2, 'Large', 100, 'Not Connected', 'Available'),
(13, 2, 'Large', 100, 'Not Connected', 'Available'),
(14, 2, 'Large', 100, 'Not Connected', 'Available'),
(15, 2, 'Large', 100, 'Not Connected', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `subadmin_list`
--

CREATE TABLE `subadmin_list` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subadmin_list`
--

INSERT INTO `subadmin_list` (`id`, `name`, `phone`, `email`, `password`) VALUES
(1, 'Emon Mazumder', 1714687825, 'mazumderemon@gmail.com', '123456'),
(2, 'EmOn', 1714687825, 'emonmazumder000@gmail.com', '55555555'),
(4, 'Tamim', 2147483647, 'tamim@yahoo.com', '112233'),
(5, 'Tamim Iqbal', 2147483647, 'tamim2312@yahoo.com', '112233'),
(6, 'Test', 2147483647, 'ferdaushasanemon@gmail.com', '1414141'),
(357, 'Tim Sisse', 2147483647, 'tsisse0@ezinearticles.com', 'ZJDS2K86'),
(358, 'Shaina Ayrs', 2147483647, 'sayrs1@gnu.org', 'Ed2zl4Y'),
(359, 'Lurleen Giovanitti', 2147483647, 'lgiovanitti2@geocities.com', 'NQpthxC3H'),
(360, 'Gerrie Mildmott', 2147483647, 'gmildmott3@slideshare.net', '1kBv1a9M3c3V'),
(361, 'Joanie Gough', 2147483647, 'jgough4@gov.uk', '8PrKzXm'),
(362, 'Jim Bolderstone', 2147483647, 'jbolderstone5@cocolog-nifty.com', 'ZEbRfbKgCZ'),
(363, 'Marlie Surphliss', 2147483647, 'msurphliss6@nasa.gov', 'LPqbmA'),
(364, 'Mame Kennion', 2147483647, 'mkennion7@live.com', 'I6824NFD'),
(365, 'Ashia Hyams', 2147483647, 'ahyams8@netscape.com', 'BHzpyh4z'),
(366, 'Jory Iannitti', 1595750743, 'jiannitti9@newsvine.com', 'gBZtu7P1HJ'),
(367, 'Corey Tremmel', 2147483647, 'ctremmela@cbc.ca', 'nEGSX7'),
(368, 'Samara Boncoeur', 2147483647, 'sboncoeurb@webmd.com', 'ViXTHVYfX6'),
(369, 'Suellen Hollows', 1627606521, 'shollowsc@yandex.ru', 'bIrgDtz3Kt'),
(370, 'Maible Broggelli', 2147483647, 'mbroggellid@washington.edu', 'NO9lVbei2ogD'),
(371, 'Waneta Haily', 2147483647, 'whailye@whitehouse.gov', 'KMAkGF303x'),
(372, 'Cyndia Redfearn', 2147483647, 'credfearnf@redcross.org', 'tgEUBwQI49'),
(373, 'Yard Bickerdicke', 2147483647, 'ybickerdickeg@blogtalkradio.com', 'GhtMunj0Z'),
(374, 'Carlina Burnyate', 2147483647, 'cburnyateh@hud.gov', '7YTN1QhhQmM'),
(375, 'Kiri Skeat', 2147483647, 'kskeati@dailymail.co.uk', 'bCd9QMaAtolH'),
(376, 'Gregg Schrinel', 2147483647, 'gschrinelj@example.com', 'QnxasUx'),
(377, 'Bertrand Matteuzzi', 2147483647, 'bmatteuzzik@kickstarter.com', '8CzGTu'),
(378, 'Dalila Bugg', 2147483647, 'dbuggl@tripadvisor.com', 'klxT7pPNpc'),
(379, 'Gwenore Govern', 2147483647, 'ggovernm@shutterfly.com', '1hAJlL'),
(380, 'Cordie Felipe', 2147483647, 'cfelipen@php.net', '32e7bn8tR6hH'),
(381, 'Pippa Mawhinney', 1805134026, 'pmawhinneyo@yelp.com', '0NB7ZhTxiZAW'),
(382, 'Thomasina Mannion', 2147483647, 'tmannionp@pen.io', 'acvqrpUIBuh'),
(383, 'Alix Ashlin', 2147483647, 'aashlinq@merriam-webster.com', 'FvHeOb'),
(384, 'Anestassia Langdale', 2147483647, 'alangdaler@rediff.com', 'GI21NhL'),
(385, 'Amelia Yashanov', 1709420701, 'ayashanovs@google.pl', 'nen7qzGr'),
(386, 'Nicolas Myrick', 2147483647, 'nmyrickt@virginia.edu', '9wvS5xFe'),
(387, 'Sonnie Amoore', 2147483647, 'samooreu@lycos.com', 'pJRWTN'),
(388, 'Kaine Overbury', 2147483647, 'koverburyv@joomla.org', 'P0x7MJiJk'),
(389, 'Natasha Caplan', 2147483647, 'ncaplanw@jalbum.net', 'EmxT1Xbse'),
(390, 'Sallyanne Cumbes', 2147483647, 'scumbesx@columbia.edu', 'h1SClyu'),
(391, 'Marcelia Figg', 2147483647, 'mfiggy@latimes.com', 'hB3W3W'),
(392, 'Valera Tanzig', 2147483647, 'vtanzigz@geocities.jp', '7gLSotZl0ent'),
(393, 'Jada Whittle', 2147483647, 'jwhittle10@buzzfeed.com', 'Z9ON9qY7b'),
(394, 'Merrel Domonkos', 2147483647, 'mdomonkos11@smugmug.com', 'QdguaQs'),
(395, 'Vania Stapford', 2147483647, 'vstapford12@cnet.com', 'Md8Z0J'),
(396, 'Haywood Aickin', 2147483647, 'haickin13@soundcloud.com', 'xMc2MeMWnpm'),
(397, 'Deanne Dellenbrok', 2147483647, 'ddellenbrok14@php.net', 'plhsKHsR'),
(398, 'Frank Hakonsson', 2147483647, 'fhakonsson15@360.cn', 'lQoSL4JdFh'),
(399, 'Teena Souster', 2147483647, 'tsouster16@cisco.com', '7E3ygQ2qGH'),
(400, 'Davidde Hamerton', 2147483647, 'dhamerton17@miibeian.gov.cn', 'Ta0co7fpU7ij'),
(401, 'Terrill Barrott', 2147483647, 'tbarrott18@addtoany.com', 'w8Wi8CX'),
(402, 'Dane Calderon', 2147483647, 'dcalderon19@wordpress.com', 'LE3xr9'),
(403, 'Jonas Pleat', 2147483647, 'jpleat1a@yahoo.co.jp', 'e2Ja0Usw'),
(404, 'Kania Chatburn', 2147483647, 'kchatburn1b@jugem.jp', '3aUukl'),
(405, 'Giffy Luesley', 2147483647, 'gluesley1c@mlb.com', 'BvByy3b3CUyP'),
(406, 'Francoise Birchwood', 2048200927, 'fbirchwood1d@dailymail.co.uk', 'qyqXyLgR'),
(407, 'Testttt232', 2147483647, 'qtiyr@hjF.COM', '25262'),
(408, 'Test848709', 2147483647, 'kjlasfhjskf@gmail.com', '2636324'),
(411, 'Ferdaus', 191245678, 'ferdaus@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `total_balance`
--

CREATE TABLE `total_balance` (
  `sub_id` int(11) NOT NULL,
  `Total_Transaction` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `total_balance`
--

INSERT INTO `total_balance` (`sub_id`, `Total_Transaction`) VALUES
(1, 810),
(2, 1280);

-- --------------------------------------------------------

--
-- Table structure for table `user_list`
--

CREATE TABLE `user_list` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `vehicleNo` varchar(40) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_list`
--

INSERT INTO `user_list` (`id`, `name`, `phone`, `email`, `password`, `vehicleNo`, `image`) VALUES
(2, 'EmOn', 32352635, 'wrw@gmail.com', '12345678', '', ''),
(3, 'Emon Mazumder', 1714687825, 'ferdaushasanemon@gmail.com', '112233', 'Dhaka Metro LA-6512', '1f928.png'),
(4, 'Tamim ', 16, 'sgsg@gmail.com', '123456', '', ''),
(5, 'Test', 1714687825, 'test@gmail.com', '57283953-25', '', ''),
(6, 'Test2', 2372805, 'test2@gmail.com', '1235125', '', ''),
(407, 'Tally Littledike', 2147483647, 'tlittledike0@amazon.de', 'WAAkJg', '', ''),
(408, 'Rodolfo Sprake', 2147483647, 'rsprake1@mtv.com', '9el4vhqHeRk', '', ''),
(409, 'Benjamen Dunsleve', 1447270164, 'bdunsleve2@kickstarter.com', 'PKitX0', '', ''),
(410, 'Ezra Tucknott', 2147483647, 'etucknott3@nasa.gov', 'szE6VLV', '', ''),
(411, 'Jennee Scollick', 2147483647, 'jscollick4@homestead.com', '2FFNHRwl1L', '', ''),
(412, 'Andy Harrismith', 2147483647, 'aharrismith5@salon.com', 'ac7xzmpjid3', '', ''),
(413, 'Zeke Rittmeier', 1555593616, 'zrittmeier6@nature.com', '08zCJn', '', ''),
(414, 'Allx Frosch', 2083852301, 'afrosch7@auda.org.au', 'pRaoCpSjrI', '', ''),
(415, 'Cody Heaffey', 2147483647, 'cheaffey8@bluehost.com', '1Czpkt', '', ''),
(416, 'Addison Houston', 2147483647, 'ahouston9@harvard.edu', 'YCPNuwG3kuf', '', ''),
(417, 'Melisse Woolbrook', 2147483647, 'mwoolbrooka@istockphoto.com', 'ekjlz3mPI2', '', ''),
(418, 'Odey Ibel', 2147483647, 'oibelb@feedburner.com', 'tDXVN42x5GbN', '', ''),
(419, 'Larissa Gossage', 2147483647, 'lgossagec@mail.ru', '5qrMTK', '', ''),
(420, 'Linnell Aspey', 2147483647, 'laspeyd@com.com', 'wk32QR1tW', '', ''),
(421, 'Vanny Sustin', 2147483647, 'vsustine@sciencedirect.com', 'GudGIq', '', ''),
(422, 'Ring Normandale', 2147483647, 'rnormandalef@yelp.com', 'PPK39o2HwA', '', ''),
(423, 'Beck Batthew', 2147483647, 'bbatthewg@google.com', 'tADUvXxFk', '', ''),
(424, 'Rudie Byles', 2147483647, 'rbylesh@squidoo.com', 'jPlbUen', '', ''),
(425, 'Annabela Winks', 2147483647, 'awinksi@narod.ru', 'VOK9S8lJJgy', '', ''),
(426, 'Yetta Cockshut', 2147483647, 'ycockshutj@hc360.com', 'O0VK2vP', '', ''),
(427, 'Stevy Czajkowska', 2147483647, 'sczajkowskak@ocn.ne.jp', 'L4VSf63KNJ', '', ''),
(428, 'Byran De Bruyne', 2147483647, 'bdel@google.com.br', 'hkS6vtWq', '', ''),
(429, 'Annmaria Tizard', 1021604161, 'atizardm@youtu.be', '6tDHOGb7bWO6', '', ''),
(430, 'Cyrillus Josephs', 1952470914, 'cjosephsn@telegraph.co.uk', 'cy8sTU', '', ''),
(431, 'Kiel Solloway', 2147483647, 'ksollowayo@parallels.com', 'lRKCj1O8A6', '', ''),
(432, 'Albert Saw', 2147483647, 'asawp@tamu.edu', 'xPqawfv', '', ''),
(433, 'Coleman Ernshaw', 2147483647, 'cernshawq@huffingtonpost.com', '6pOG3f9cj9PE', '', ''),
(434, 'Shaylyn Bratley', 1472215242, 'sbratleyr@shop-pro.jp', 'h3XL1LzVVC', '', ''),
(435, 'Taryn Ratter', 2147483647, 'tratters@reverbnation.com', 'PnNm5FL6Z', '', ''),
(436, 'Rosita Batter', 1252398576, 'rbattert@woothemes.com', 'tRhvVQ7Q', '', ''),
(437, 'Lewes Sibbe', 2147483647, 'lsibbeu@sfgate.com', 'PzkBje8NJ77h', '', ''),
(438, 'Jillene Casoni', 2147483647, 'jcasoniv@nymag.com', 'IMF7KZ', '', ''),
(439, 'Curtis Gerhardt', 2147483647, 'cgerhardtw@myspace.com', 'vHqq4R96sfT', '', ''),
(440, 'Raye Winston', 2147483647, 'rwinstonx@prlog.org', '1TsH0jvHitc7', '', ''),
(441, 'Erina Mutter', 2147483647, 'emuttery@a8.net', 'VkJWg5', '', ''),
(442, 'Tawsha Sima', 2147483647, 'tsimaz@ycombinator.com', 'JW4x6hCtQCW', '', ''),
(443, 'Jessy Pointon', 2147483647, 'jpointon10@japanpost.jp', 'mFw4iLjmpx', '', ''),
(444, 'Jacky Willicott', 2147483647, 'jwillicott11@friendfeed.com', 'vZMhdrGuVaf5', '', ''),
(445, 'Milton McCaughey', 1487984640, 'mmccaughey12@shop-pro.jp', 'eu1f5BB2gS6v', '', ''),
(446, 'Alphonso Boissier', 2147483647, 'aboissier13@jiathis.com', 'Mm9SyVALN', '', ''),
(447, 'Alvina Erley', 2147483647, 'aerley14@dropbox.com', 'bSr60Dr', '', ''),
(448, 'Hilario MacElharge', 2147483647, 'hmacelharge15@wix.com', '4H1zx0', '', ''),
(449, 'Corey Osmond', 2131925289, 'cosmond16@acquirethisname.com', 'k7sSceudr1', '', ''),
(450, 'Erminia Willavize', 2147483647, 'ewillavize17@opensource.org', 'HnvgX4hSY0', '', ''),
(451, 'Annalee Knights', 2147483647, 'aknights18@rambler.ru', '0wh8lTFI0Zbt', '', ''),
(452, 'Rebeka Gniewosz', 2147483647, 'rgniewosz19@imgur.com', 'a0T7DIt', '', ''),
(453, 'Gilberto Craighill', 2147483647, 'gcraighill1a@ustream.tv', 'y2jqSER97', '', ''),
(454, 'Pamella Rouff', 2147483647, 'prouff1b@mozilla.org', 'WIloZJRW5Be', '', ''),
(455, 'Hamish Poytres', 2147483647, 'hpoytres1c@yahoo.co.jp', 'ycMylRnUT4hZ', '', ''),
(456, 'Hendrik Arlott', 2147483647, 'harlott1d@imdb.com', 'YTplzdw', '', ''),
(457, 'Murielle Challender', 2147483647, 'mchallender1e@weebly.com', 'uYuH8B6YH', '', ''),
(458, 'Abram Josephov', 2147483647, 'ajosephov1f@va.gov', 'Vaa4k2aTixy', '', ''),
(459, 'Hanna Forth', 2028242312, 'hforth1g@nhs.uk', 'c6cYt0SZl', '', ''),
(460, 'Mora Cheake', 2147483647, 'mcheake1h@yandex.ru', 'FYA4Vr3', '', ''),
(461, 'Susana Veall', 2147483647, 'sveall1i@istockphoto.com', 'erg2WlR', '', ''),
(462, 'Gerick Bigglestone', 2147483647, 'gbigglestone1j@etsy.com', 'wFJxkKOB', '', ''),
(463, 'Barbabas Ionnisian', 2147483647, 'bionnisian1k@ucoz.com', 'wAVIVJpKfL', '', ''),
(464, 'Carmen Brasse', 2147483647, 'cbrasse1l@pcworld.com', '2oduVkWBk', '', ''),
(465, 'Gilberto Espinoy', 2147483647, 'gespinoy1m@hud.gov', 'gJSiHboOn', '', ''),
(466, 'Onfroi Fullicks', 1319511577, 'ofullicks1n@sun.com', 'V2jLa8MP', '', ''),
(467, 'Raquel Pengilley', 2147483647, 'rpengilley1o@sbwire.com', 'fDiJWKflzdPh', '', ''),
(468, 'Kirsti Seamark', 1111111657, 'kseamark1p@nytimes.com', 'MjDbvPL', '', ''),
(469, 'Marge O\'Sheilds', 2147483647, 'mosheilds1q@github.com', 'XaBvgf2aZHj', '', ''),
(470, 'Colette Janoschek', 2147483647, 'cjanoschek1r@paypal.com', 'WudPqIbEs3', '', ''),
(471, 'Hayyim Stonuary', 2147483647, 'hstonuary1s@unesco.org', 'LnN9wNMUPBd', '', ''),
(472, 'Haley Vogele', 2147483647, 'hvogele1t@google.pl', 'rUWczEXK', '', ''),
(473, 'Olivia Wolsey', 2147483647, 'owolsey1u@cornell.edu', '89AxK4FP38DZ', '', ''),
(474, 'Willi Abarough', 2147483647, 'wabarough1v@163.com', 'Tr8qEnWlH', '', ''),
(475, 'Clarine Fozard', 2147483647, 'cfozard1w@psu.edu', 'CeAxhy', '', ''),
(476, 'Cassandry Hawkswood', 2147483647, 'chawkswood1x@blogtalkradio.com', 'fcCewfG', '', ''),
(477, 'Minnaminnie Bottby', 2147483647, 'mbottby1y@cloudflare.com', 'bPMQxH6VzSf', '', ''),
(478, 'Tabbi Karolewski', 2147483647, 'tkarolewski1z@mozilla.org', 'PKEh3X', '', ''),
(479, 'Kym Gillhespy', 2147483647, 'kgillhespy20@theglobeandmail.com', 'tJe1oH', '', ''),
(480, 'Andie Friese', 2147483647, 'afriese21@buzzfeed.com', 'tu6S1MjgT', '', ''),
(481, 'Hartley Girling', 2147483647, 'hgirling22@blinklist.com', 'ejKK7THX7V', '', ''),
(482, 'Hy Simester', 2147483647, 'hsimester23@cyberchimps.com', 'Ws5ihruTA7f', '', ''),
(483, 'Reine Weddell', 2147483647, 'rweddell24@topsy.com', 'ZOM9eKjY682s', '', ''),
(484, 'Aguste Philipart', 2147483647, 'aphilipart25@eepurl.com', 'T1qjBcNsD2m', '', ''),
(485, 'Brynna Booler', 2147483647, 'bbooler26@csmonitor.com', 'YzNcflRr', '', ''),
(486, 'Beryle Jearum', 2147483647, 'bjearum27@house.gov', 'AJomU3mW', '', ''),
(487, 'Florry Edgehill', 2147483647, 'fedgehill28@cyberchimps.com', 'SloP8xxS5K', '', ''),
(488, 'Ruby Inman', 2147483647, 'rinman29@meetup.com', 'YiPqHuiDRd', '', ''),
(489, 'Darrin Kemmey', 2147483647, 'dkemmey2a@shinystat.com', 'bXCwha', '', ''),
(490, 'Wash Bewly', 1062276749, 'wbewly2b@squidoo.com', '2cLxKENvoUl0', '', ''),
(491, 'Frasco Vanyatin', 2147483647, 'fvanyatin2c@salon.com', 'KLK1fq1BZw1F', '', ''),
(492, 'Sadella Trevithick', 2147483647, 'strevithick2d@cbc.ca', 'iWQHXY9y', '', ''),
(493, 'Kelli Stainton', 2147483647, 'kstainton2e@cloudflare.com', 'Cu8afUxJD0G', '', ''),
(494, 'Teodor Skein', 2147483647, 'tskein2f@rediff.com', 'HydIRh47i33P', '', ''),
(495, 'Gayler Blamphin', 2147483647, 'gblamphin2g@biglobe.ne.jp', 'XgrQKl1JOf', '', ''),
(496, 'Josepha Cordelette', 2147483647, 'jcordelette2h@dell.com', 'h4xhH6sClgpD', '', ''),
(497, 'Letisha Tamblingson', 2147483647, 'ltamblingson2i@globo.com', 'xz3v0ru', '', ''),
(498, 'Feliks Kingshott', 2147483647, 'fkingshott2j@photobucket.com', 'nepAdy2fPf', '', ''),
(499, 'Aluin Dominichetti', 2147483647, 'adominichetti2k@nih.gov', 'nVdzRPBA8', '', ''),
(500, 'Rafael Kwiek', 2147483647, 'rkwiek2l@ucoz.com', 'DKwxa1bZN1e', '', ''),
(501, 'Romy Petrozzi', 2147483647, 'rpetrozzi2m@who.int', 'OU4hIVd', '', ''),
(502, 'Rosemonde Blewis', 2147483647, 'rblewis2n@phoca.cz', '8pwB0f', '', ''),
(503, 'Lilias Aspland', 2147483647, 'laspland2o@tripadvisor.com', 'dxwbAGz0Ofu', '', ''),
(504, 'Marna Gullis', 2147483647, 'mgullis2p@nasa.gov', 'aExBr2b', '', ''),
(505, 'Minni Barnet', 2147483647, 'mbarnet2q@spiegel.de', 'WzVlrmGl', '', ''),
(506, 'Madeline Ruppele', 2147483647, 'mruppele2r@4shared.com', 'G39QLK', '', ''),
(507, 'Test1798125789', 2147483647, 'oygyfad354@yahoo.com', '165870261', '', ''),
(508, 'Testttt', 2147483647, 'mazumdesagsdgremon@gmail.com', '345346322', '', ''),
(509, 'Ferdaus Hasan Emon', 1714687825, 'emonmazumder000@gmail.com', '123456', 'Dhaka Metro LA-3567', 'EPSntQLWoAEB6o2.jpg'),
(511, 'Emon Mazumder', 1818557778, 'mazumderemon@gmail.com', '123456', 'Dhaka Metro LA-2354', 'osita.jpg'),
(515, 'Masnakd', 9348242, 'qeon@gmail.com', '123456', '', ''),
(516, 'Test', 78182912, 'sgtesttt2@gmail.com', '123456', '', ''),
(517, 'Test', 91299, 'qwe@gaena.com', '123456', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balance_subid:1`
--
ALTER TABLE `balance_subid:1`
  ADD PRIMARY KEY (`Booking_Id`);

--
-- Indexes for table `balance_subid:2`
--
ALTER TABLE `balance_subid:2`
  ADD PRIMARY KEY (`Booking_Id`);

--
-- Indexes for table `booked_list`
--
ALTER TABLE `booked_list`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `booking_request`
--
ALTER TABLE `booking_request`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `overtime`
--
ALTER TABLE `overtime`
  ADD PRIMARY KEY (`Sub_Id`);

--
-- Indexes for table `parkingplace`
--
ALTER TABLE `parkingplace`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `removed_bookedlist`
--
ALTER TABLE `removed_bookedlist`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `removed_bookingrequest`
--
ALTER TABLE `removed_bookingrequest`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `slotlist_subid:1`
--
ALTER TABLE `slotlist_subid:1`
  ADD PRIMARY KEY (`Slot_Id`);

--
-- Indexes for table `slotlist_subid:2`
--
ALTER TABLE `slotlist_subid:2`
  ADD PRIMARY KEY (`Slot_Id`);

--
-- Indexes for table `subadmin_list`
--
ALTER TABLE `subadmin_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total_balance`
--
ALTER TABLE `total_balance`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `user_list`
--
ALTER TABLE `user_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking_request`
--
ALTER TABLE `booking_request`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slotlist_subid:1`
--
ALTER TABLE `slotlist_subid:1`
  MODIFY `Slot_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `slotlist_subid:2`
--
ALTER TABLE `slotlist_subid:2`
  MODIFY `Slot_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subadmin_list`
--
ALTER TABLE `subadmin_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `user_list`
--
ALTER TABLE `user_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=518;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
