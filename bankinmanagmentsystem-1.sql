-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2022 at 11:57 AM
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
-- Database: `bankinmanagmentsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicantofadmin`
--

CREATE TABLE `applicantofadmin` (
  `applicant_serial` int(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `nid` int(15) NOT NULL,
  `phone` int(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `cpassword` varchar(15) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `cv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employeelogin`
--

CREATE TABLE `employeelogin` (
  `emp_id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employeelogin`
--

INSERT INTO `employeelogin` (`emp_id`, `username`, `password`, `Email`, `code`) VALUES
(1, 'HAMIM', 'ARIFEEN1100@', 'hamim@gmail.com', '996340');

-- --------------------------------------------------------

--
-- Table structure for table `prebookfunds`
--

CREATE TABLE `prebookfunds` (
  `trans_id` int(10) NOT NULL,
  `trans_date` datetime NOT NULL,
  `remarks` varchar(256) NOT NULL,
  `debit` int(14) NOT NULL,
  `credit` int(14) NOT NULL,
  `balance` int(14) NOT NULL,
  `accountno` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prebookfunds`
--

INSERT INTO `prebookfunds` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`, `accountno`) VALUES
(2, '2022-08-21 17:04:01', 'Sent to: Hamim khan, AC/No: 4585446', 1000, 0, 9000, 4585446),
(3, '2022-08-21 17:04:01', 'Received from: Hamim khan, AC/No: 4585446', 0, 1000, 11000, 4585446),
(4, '2022-08-21 17:05:20', 'Sent to: Hamim khan, AC/No: 4585446', 1000, 0, 10000, 4585446),
(5, '2022-08-21 17:05:20', 'Received from: Hamim khan, AC/No: 4585446', 0, 1000, 10000, 4585446),
(6, '2022-08-21 17:07:49', 'Sent to: dfkjvbudkv jhbdfvue, AC/No: 4653775', 1000, 0, 9000, 4653775),
(7, '2022-08-21 17:07:49', 'Received from: Hamim khan, AC/No: 4585446', 0, 1000, 10000, 4653775),
(8, '2022-08-21 17:25:17', 'Sent to: Hamim khan, AC/No: 4585446', 1000, 0, 9000, 4585446),
(9, '2022-08-21 17:25:17', 'Received from: Hamim khan, AC/No: 4585446', 0, 1000, 10000, 4585446),
(10, '2022-08-22 05:59:34', 'Sent to: Hamim khan, AC/No: 4585446', 1000, 0, 9000, 4585446),
(11, '2022-08-22 05:59:34', 'Received from: Hamim khan, AC/No: 4585446', 0, 1000, 10000, 4585446);

-- --------------------------------------------------------

--
-- Table structure for table `query_user`
--

CREATE TABLE `query_user` (
  `query_sl` int(100) NOT NULL,
  `query_title` varchar(100) NOT NULL,
  `query_body` varchar(100) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `query_user`
--

INSERT INTO `query_user` (`query_sl`, `query_title`, `query_body`, `created`) VALUES
(0, 'hjvhjvhj', 'bjbjkhjkhlgglj', '2022-08-18 01:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `registrationofemployee`
--

CREATE TABLE `registrationofemployee` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `Username` text NOT NULL,
  `Email` text NOT NULL,
  `NID` int(100) NOT NULL,
  `Phone` int(100) NOT NULL,
  `Password` text NOT NULL,
  `cpassword` text NOT NULL,
  `gender` varchar(100) NOT NULL,
  `picture` text NOT NULL,
  `cv` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registrationofemployee`
--

INSERT INTO `registrationofemployee` (`id`, `fname`, `lname`, `Username`, `Email`, `NID`, `Phone`, `Password`, `cpassword`, `gender`, `picture`, `cv`) VALUES
(11, 'Hamim', 'Khan', 'arifeen', 'arifeen0099@gmail.com', 2147483647, 172198585, 'Arifeen1100@', 'Arifeen1100@', 'male', '../uploads/practice ann.png', '../uploads/simultaneous_transmission_of_data_fdm_signals.pdf'),
(12, 'Hamimhjkhjkhjk', 'Sad Aftab', 'williandon', 'arifeen0055@gmail.com', 1234567890, 2147483647, 'HAmim1100@', 'Hamim1100@', 'male', '../uploads/practice ann.png', '../uploads/simultaneous_transmission_of_data_fdm_signals.pdf'),
(13, 'Hamim', 'Sad Aftab', 'ARIFEEN', 'arifeen0099@gmail.com', 1234568790, 2147483647, 'ARIFEEN1100@', 'ARIFEEEN1100@', 'male', '../uploads/practice ann.png', '../uploads/CamScanner 08-15-2022 22.02.pdf'),
(14, 'Hamim', 'Sad Aftab', 'ARIFEEN', 'arifeen5500@gmail.com', 2147483647, 2147483647, 'ARIFEEN1100@', 'ARIFEEN1100@', 'male', '../uploads/practice ann.png', '../uploads/Shift-Reduce-Parsing.pdf'),
(15, 'Hamim', 'Sad Aftab', 'BOSSHAMIM', 'arifeenhamim@gmail.com', 1234568790, 2147483647, 'ARIFEEN1100@', 'ARIFEEN1100@', 'male', '../uploads/MicrosoftTeams-image (10).png', '../uploads/Shift-Reduce-Parsing.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `staticadmin`
--

CREATE TABLE `staticadmin` (
  `user_id` mediumint(9) NOT NULL,
  `uname` char(50) NOT NULL,
  `pass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staticadmin`
--

INSERT INTO `staticadmin` (`user_id`, `uname`, `pass`) VALUES
(1, 'aftabrakinsad', 'Aftab123@');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `nid` int(100) NOT NULL,
  `phone` text NOT NULL,
  `accountno` int(100) NOT NULL,
  `pin` int(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cpassword` varchar(100) NOT NULL,
  `picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `fname`, `lname`, `uname`, `email`, `nid`, `phone`, `accountno`, `pin`, `password`, `cpassword`, `picture`) VALUES
(1, 'Hamim', 'khan', 'arifeen1100', 'arifeenhamim@gmail.com', 45456467, '+8801864537286', 4585446, 4546, 'arifeen1100@', 'arifeen1100@', '../Uploads/'),
(2, 'dfkjvbudkv', 'jhbdfvue', 'jhbvuv', 'fdfvguy@gmail.com', 1144747474, '+880193432534', 4653775, 1234, 'Arifeen1100@', 'Arifeen1100@', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicantofadmin`
--
ALTER TABLE `applicantofadmin`
  ADD PRIMARY KEY (`nid`),
  ADD UNIQUE KEY `UNIQUE` (`applicant_serial`);

--
-- Indexes for table `employeelogin`
--
ALTER TABLE `employeelogin`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `emp_id` (`emp_id`);

--
-- Indexes for table `prebookfunds`
--
ALTER TABLE `prebookfunds`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `registrationofemployee`
--
ALTER TABLE `registrationofemployee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staticadmin`
--
ALTER TABLE `staticadmin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicantofadmin`
--
ALTER TABLE `applicantofadmin`
  MODIFY `applicant_serial` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `employeelogin`
--
ALTER TABLE `employeelogin`
  MODIFY `emp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prebookfunds`
--
ALTER TABLE `prebookfunds`
  MODIFY `trans_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `registrationofemployee`
--
ALTER TABLE `registrationofemployee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `staticadmin`
--
ALTER TABLE `staticadmin`
  MODIFY `user_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
