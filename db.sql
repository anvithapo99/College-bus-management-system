-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2021 at 06:11 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getmail` ()  SELECT email FROM studentacc2$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `bus_fees_details`
--

CREATE TABLE `bus_fees_details` (
  `Place` varchar(30) NOT NULL,
  `Sem_wise` varchar(30) DEFAULT NULL,
  `Annual` varchar(30) DEFAULT NULL,
  `Bus_no` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_fees_details`
--

INSERT INTO `bus_fees_details` (`Place`, `Sem_wise`, `Annual`, `Bus_no`) VALUES
('belman', '7000', '18990', '74'),
('bhramavara', '10000', '22000', '67'),
('kaup', '7000', '16000', '54'),
('NITTEE', '6000', '17000', '74'),
('padubidri', '8000', '16000', '70');

--
-- Triggers `bus_fees_details`
--
DELIMITER $$
CREATE TRIGGER `logs1` AFTER INSERT ON `bus_fees_details` FOR EACH ROW INSERT INTO logs1 VALUES(NEW.Place,NEW.Sem_wise,NEW.Annual,NEW.Bus_no,NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `bus_information1`
--

CREATE TABLE `bus_information1` (
  `Bus_no` varchar(30) NOT NULL,
  `Starting_piont` varchar(30) DEFAULT NULL,
  `point1` varchar(40) DEFAULT NULL,
  `point2` varchar(40) DEFAULT NULL,
  `point3` varchar(40) DEFAULT NULL,
  `Driverid` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_information1`
--

INSERT INTO `bus_information1` (`Bus_no`, `Starting_piont`, `point1`, `point2`, `point3`, `Driverid`) VALUES
('54', 'udupi', 'padubidri', 'mulki', 'mijar', '90'),
('67', 'Bhramavara', 'udupi', 'karkala', 'mijar', '500'),
('70', 'udyavara', 'padubidri', 'mulki', 'mijar', '67'),
('71', 'surathkal', 'mulki', 'vidyagiri', 'mijar', '93'),
('73', 'karkala', 'alangar', 'vidyagiri', 'mijar', '92'),
('74', 'udupi', 'belman', 'nitte', 'vidyagiri', '94'),
('89', 'mangalore', 'nanthoor', 'moodbidri', 'mijar', '100');

-- --------------------------------------------------------

--
-- Table structure for table `driver_information`
--

CREATE TABLE `driver_information` (
  `Driverid` varchar(30) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `licence_no` varchar(30) DEFAULT NULL,
  `Phone_no` varchar(30) DEFAULT NULL,
  `Poastal_address` varchar(30) DEFAULT NULL,
  `Permanent_address` varchar(30) DEFAULT NULL,
  `Pincode` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver_information`
--

INSERT INTO `driver_information` (`Driverid`, `Name`, `licence_no`, `Phone_no`, `Poastal_address`, `Permanent_address`, `Pincode`) VALUES
('100', 'Ashwin', 'ka4567890', '8798675675', 'karkala', 'mijar', '574345'),
('201', 'Anil', 'ka9090', '9878987678', 'karkala', 'delhi', '571 333'),
('500', 'bhogapa', 'ka23567890', '7890956745', 'mangalore', 'bangalore', '574 432'),
('67', 'shiva', 'up56789', '8798767898', 'bangalore', 'bangalore', '574189'),
('789', 'Guru', 'ka67889', '9876567890', 'udupi', 'udupi', '574111'),
('90', 'akshath', 'ka8900lpoi', '8767876567', 'padubidri', 'padubidri', '574112'),
('91', 'prasad', 'ka345678', '7654568901', 'mangalore', 'mysore', '574234'),
('92', 'praveen', 'ka45678987', '8765432345', 'udupi', 'udupi', '574189'),
('93', 'naveen', 'ka34567890', '8789073213', 'udupi', 'udupi', '574111'),
('94', 'sushanth', 'ka456r78', '8767897678', 'mangalore', 'mijar', '574111');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `PassType` varchar(30) NOT NULL,
  `validity_period` varchar(30) NOT NULL,
  `action` varchar(30) NOT NULL,
  `cdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`PassType`, `validity_period`, `action`, `cdate`) VALUES
('1', '1 year', 'Inserted', '2019-12-07 11:57:43'),
('2', '6 month', 'Inserted', '2019-12-07 11:57:55'),
('3', '3month', 'Inserted', '2019-12-10 11:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `logs1`
--

CREATE TABLE `logs1` (
  `Place` varchar(78) NOT NULL,
  `Sem_wise` varchar(89) NOT NULL,
  `Annual` varchar(89) NOT NULL,
  `Bus_no` varchar(89) NOT NULL,
  `cdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs1`
--

INSERT INTO `logs1` (`Place`, `Sem_wise`, `Annual`, `Bus_no`, `cdate`) VALUES
('bhramavara', '10000', '22000', '67', '2019-12-08 10:10:25'),
('karkala', '5000', '11000', '73', '2019-12-08 10:09:30'),
('kaup', '7000', '16000', '54', '2021-01-31 09:41:19'),
('mangalore', '8500', '16500', '89', '2019-12-07 12:42:22'),
('Moodbidri', '2000', '5000', '71', '2019-12-07 12:41:21'),
('mulki', '6000', '13000', '71', '2019-12-08 10:07:04'),
('NITTEE', '6000', '17000', '74', '2019-12-09 09:42:28'),
('padubidri', '8000', '16000', '67', '2019-12-07 12:41:40'),
('surathkal', '7000', '16000', '71', '2019-12-08 10:06:30'),
('udupi', '7500', '17000', '70', '2019-12-07 12:41:55'),
('udyavara', '6000', '17000', '70', '2019-12-08 10:05:17'),
('vidyagiri', '2000', '5000', '73', '2019-12-08 10:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `mailsend`
--

CREATE TABLE `mailsend` (
  `body` varchar(30) DEFAULT NULL,
  `subject` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mailsend`
--

INSERT INTO `mailsend` (`body`, `subject`) VALUES
('conformation mail', 'conformation mail');

-- --------------------------------------------------------

--
-- Table structure for table `passtype`
--

CREATE TABLE `passtype` (
  `PassType` varchar(39) NOT NULL,
  `validity_period` varchar(39) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passtype`
--

INSERT INTO `passtype` (`PassType`, `validity_period`) VALUES
('1', '1 year (annual payment)'),
('2', '6 month(sem_wise payment)'),
('3', '3month');

--
-- Triggers `passtype`
--
DELIMITER $$
CREATE TRIGGER `insertLogs` AFTER INSERT ON `passtype` FOR EACH ROW INSERT INTO logs VALUES(NEW.Passtype,NEW.validity_period,'Inserted',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `sid` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `amt` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`sid`, `fname`, `amt`) VALUES
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('4al17cs008', 'anvitha', '16000'),
('4al17cs009', 'ashika', '5000'),
('4al17ec006', 'veena', '16000'),
('4al18cv008', 'ashwini', '5000'),
('4al18ec999', 'jasmine', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `fisrtname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `User_name` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`fisrtname`, `lastname`, `User_name`, `Password`) VALUES
('veena', 'p', 'a', 'anvitha1234'),
('admi', 'as', 'aadi', 'anvithapoojary'),
('ashwini', 'acharya', 'acharya02', 'acharya02'),
('a', 'a', 'anvitha', '11111111'),
('anvithapoojary', 'poo', 'anvitha02', 'anvitha02'),
('anvitha', 'poojary', 'anvitha023', 'anvitha023'),
('ashvitha', 'shetty', 'ashvitha', '12345678'),
('anvitha', 'a', 'tttttt', '11111111');

-- --------------------------------------------------------

--
-- Table structure for table `studentacc2`
--

CREATE TABLE `studentacc2` (
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `dateofbirth` varchar(30) DEFAULT NULL,
  `usn` varchar(30) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `yearofstudy` varchar(30) DEFAULT NULL,
  `passtype` varchar(30) DEFAULT NULL,
  `sourcestop` varchar(30) DEFAULT NULL,
  `destination` varchar(30) DEFAULT NULL,
  `fromdate` varchar(30) DEFAULT NULL,
  `todate` varchar(30) DEFAULT NULL,
  `amt` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentacc2`
--

INSERT INTO `studentacc2` (`firstname`, `lastname`, `dateofbirth`, `usn`, `phone`, `email`, `password`, `address`, `gender`, `yearofstudy`, `passtype`, `sourcestop`, `destination`, `fromdate`, `todate`, `amt`) VALUES
('anvitha', 'poojary', '1999-10-02', '4al17cs008', '7897678987', 'anvithapoojary02@gmail.com', 'A', 'padubidri', 'female', '3', '1', 'padubidri', 'aiet', '2019-12-01', '2019-12-31', '16000'),
('ashika', 'kullal', '2000-02-09', '4al17cs009', '8976789876', 'ashikakulal252@gmail.com', 'B', 'moodbidri', 'female', '3', '1', 'karkala', 'aiet', '2019-12-01', '2019-12-31', '5000'),
('apeksha', 'rane', '2004-01-28', '4al17cs90', '7845345678', 'raneappi2000@gmail.com', 'O', 'karvar', 'female', '1', '2', 'nitte', 'vidyagiri', '2019-12-04', '2019-12-05', '6000'),
('asha', 'totagi', '2019-12-02', '4al17cv890', '789876789', 'anvithapoojary02@gmail.com', 'A-ve', 'udupi', 'male', '3', '1', 'udupi', 'aiet', '2019-12-03', '2019-12-31', '17000'),
('veena', 'poojary', '1998-06-18', '4al17ec006', '897656789', 'poojaryveena27@gmail.com', 'A', 'padubidri', 'female', '4', '1', 'padubidri', 'aiet', '2019-12-01', '2020-04-12', '16000'),
('ashwini', 'acharya', '1991-03-15', '4al18cv008', '9876789332', 'acharyaashwini5@gmail.com', 'B-ve', 'karkala', 'female', '4', '1', 'karkala', 'vidyagiri', '2019-12-01', '2020-04-15', '5000'),
('jasmine', 'd', '1999-05-08', '4al18ec999', '7654345678', 'jasmine90@gmail.com', 'A+ve', 'moodbidri', 'female', '3', '1', 'moodbidri', 'aiet', '2019-12-01', '2019-12-31', '5000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus_fees_details`
--
ALTER TABLE `bus_fees_details`
  ADD PRIMARY KEY (`Place`),
  ADD KEY `Bus_no` (`Bus_no`);

--
-- Indexes for table `bus_information1`
--
ALTER TABLE `bus_information1`
  ADD PRIMARY KEY (`Bus_no`),
  ADD KEY `Driverid` (`Driverid`);

--
-- Indexes for table `driver_information`
--
ALTER TABLE `driver_information`
  ADD PRIMARY KEY (`Driverid`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`PassType`);

--
-- Indexes for table `logs1`
--
ALTER TABLE `logs1`
  ADD PRIMARY KEY (`Place`);

--
-- Indexes for table `passtype`
--
ALTER TABLE `passtype`
  ADD PRIMARY KEY (`PassType`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`User_name`);

--
-- Indexes for table `studentacc2`
--
ALTER TABLE `studentacc2`
  ADD PRIMARY KEY (`usn`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bus_fees_details`
--
ALTER TABLE `bus_fees_details`
  ADD CONSTRAINT `bus_fees_details_ibfk_1` FOREIGN KEY (`Bus_no`) REFERENCES `bus_information1` (`Bus_no`) ON DELETE CASCADE;

--
-- Constraints for table `bus_information1`
--
ALTER TABLE `bus_information1`
  ADD CONSTRAINT `bus_information1_ibfk_1` FOREIGN KEY (`Driverid`) REFERENCES `driver_information` (`Driverid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
