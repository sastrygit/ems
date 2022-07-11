-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 10, 2021 at 07:30 AM
-- Server version: 5.7.34-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `ename` varchar(15) NOT NULL,
  `day` date NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`ename`, `day`, `status`) VALUES
('Gowthami', '2021-07-02', 'present'),
('Nirmala', '2021-07-02', 'present'),
('Anusha', '2021-07-02', 'present'),
('Sowmya', '2021-07-02', 'present'),
('Mamatha', '2021-07-02', 'absent'),
('Nova', '2021-07-02', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `empid` varchar(10) NOT NULL,
  `ename` varchar(15) NOT NULL,
  `dept` varchar(10) NOT NULL,
  `desig` varchar(15) NOT NULL,
  `pay` decimal(10,0) NOT NULL DEFAULT '0',
  `status` varchar(10) NOT NULL DEFAULT 'absent'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`empid`, `ename`, `dept`, `desig`, `pay`, `status`) VALUES
('E101', 'Gowthami', 'IT', 'manager', '22500', 'absent'),
('E102', 'Nirmala', 'Admin', 'Supervisor', '13050', 'absent'),
('E103', 'Anusha', 'Production', 'manager', '24210', 'absent'),
('E104', 'Sowmya', 'IT', 'programmer', '15260', 'absent'),
('E105', 'Mamatha', 'IT', 'Coder', '15000', 'absent'),
('E106', 'Nova', 'IT', 'Tester', '18000', 'absent'),
('E107', 'N.Gayathri', 'IT', 'Coder', '19000', 'absent'),
('E108', 'Gayathri', 'production', 'manager', '20000', 'absent'),
('E109', 'Usharani', 'HR', 'manager', '22000', 'absent'),
('E110', 'Priyanka', 'Research', 'Tester', '24200', 'absent'),
('E111', 'Nirosha', 'Finance', 'Trader', '17250', 'absent'),
('E112', 'Aswini', 'production', 'devolper', '19280', 'absent'),
('E113', 'Vineetha', 'production', 'devolper', '20000', 'absent');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `ename` varchar(15) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(4) NOT NULL,
  `presents` int(11) NOT NULL,
  `absents` int(11) NOT NULL,
  `tot_days` int(11) NOT NULL DEFAULT '30',
  `lops` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`ename`, `month`, `year`, `presents`, `absents`, `tot_days`, `lops`) VALUES
('Anusha', 'june', '2021', 1, 0, 30, 29),
('Gowthami', 'July', '2021', 1, 0, 30, 29),
('Mamatha', 'July', '2021', 0, 1, 30, 30),
('Nirmala', 'July', '2021', 1, 0, 30, 29),
('Nova', 'July', '2021', 1, 0, 30, 29),
('Sowmya', 'July', '2021', 1, 0, 30, 29);

-- --------------------------------------------------------

--
-- Table structure for table `recogface`
--

CREATE TABLE `recogface` (
  `empid` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `logtime` time NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recogface`
--

INSERT INTO `recogface` (`empid`, `date`, `logtime`, `status`) VALUES
('anusha', '2021-07-06', '11:34:28', 'present'),
('Aswini', '2021-07-09', '15:45:39', 'present'),
('Gayathri', '2021-07-09', '15:30:45', 'present'),
('gowthami', '2021-07-02', '11:34:24', 'present'),
('Mamatha', '2021-07-06', '16:59:57', 'present'),
('N.Gayathri', '2021-07-09', '14:25:06', 'present'),
('nirmala', '2021-07-02', '11:34:28', 'present'),
('Nirosha', '2021-07-09', '15:44:13', 'present'),
('nova', '2021-07-02', '11:35:12', 'present'),
('Priyanka', '2021-07-09', '15:44:25', 'present'),
('Sowmya', '2021-07-06', '16:59:59', 'present'),
('Unknown', '2021-07-02', '11:34:54', 'present'),
('usharani', '2021-07-09', '15:45:10', 'present'),
('Vineetha', '2021-07-09', '15:44:18', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `empid` varchar(15) NOT NULL,
  `basic` decimal(10,0) NOT NULL DEFAULT '0',
  `da` decimal(10,0) NOT NULL DEFAULT '0',
  `hra` decimal(10,0) NOT NULL DEFAULT '0',
  `pf` decimal(10,0) NOT NULL DEFAULT '0',
  `allow` decimal(10,0) NOT NULL DEFAULT '0',
  `lops` int(5) NOT NULL DEFAULT '0',
  `ded` decimal(10,0) NOT NULL DEFAULT '0',
  `gross` decimal(10,0) NOT NULL DEFAULT '0',
  `netsalary` decimal(10,0) NOT NULL DEFAULT '0',
  `month` varchar(10) NOT NULL,
  `year` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`empid`, `basic`, `da`, `hra`, `pf`, `allow`, `lops`, `ded`, `gross`, `netsalary`, `month`, `year`) VALUES
('E101', '22500', '15750', '3375', '2700', '1125', 29, '21750', '42750', '18300', 'July', '2021'),
('E102', '13050', '9135', '1958', '1566', '653', 29, '12615', '24796', '10615', 'July', '2021'),
('E103', '24210', '16947', '3632', '2905', '1211', 29, '23403', '46000', '19692', 'July', '2021'),
('E104', '15260', '10682', '2289', '1831', '763', 29, '14751', '28994', '12412', 'July', '2021'),
('E105', '15000', '10500', '2250', '1800', '750', 30, '15000', '28500', '11700', 'July', '2021'),
('E106', '18000', '12600', '2700', '2160', '900', 29, '17400', '34200', '14640', 'July', '2021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `recogface`
--
ALTER TABLE `recogface`
  ADD PRIMARY KEY (`empid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
