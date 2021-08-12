-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 11:55 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: 'hospital'
--

-- --------------------------------------------------------

--
-- Table structure for table 'admin'
--

CREATE TABLE 'admin' (
  'username' varchar(15) NOT NULL,
  'password' varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'admin'
--

INSERT INTO 'admin' ('username', 'password') VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table 'appointment'
--

CREATE TABLE 'appointment' (
  'dName' varchar(20) NOT NULL,
  'pName' varchar(15) NOT NULL,
  'room' int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table 'doctor'
--

CREATE TABLE 'doctor' (
  'count' int(11) NOT NULL,
  'date' varchar(10) NOT NULL,
  'id' varchar(10) NOT NULL,
  'name' varchar(30) NOT NULL,
  'age' int(5) NOT NULL,
  'gender' varchar(8) NOT NULL,
  'blood' varchar(4) NOT NULL,
  'dept' varchar(20) NOT NULL,
  'phone' varchar(15) NOT NULL,
  'email' varchar(30) NOT NULL,
  'status' varchar(10) NOT NULL,
  'address' varchar(20) NOT NULL,
  'room' int(11) NOT NULL,
  'username' varchar(20) NOT NULL,
  'password' varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table 'patient'
--

CREATE TABLE 'patient' (
  'count' int(11) NOT NULL,
  'date' varchar(10) NOT NULL,
  'id' varchar(20) NOT NULL,
  'name' varchar(20) NOT NULL,
  'age' int(5) NOT NULL,
  'gender' varchar(10) NOT NULL,
  'address' varchar(20) NOT NULL,
  'phone' varchar(20) NOT NULL,
  'status' varchar(10) NOT NULL,
  'disease' varchar(20) NOT NULL,
  'room' int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table 'receptionist'
--

CREATE TABLE 'receptionist' (
  'count' int(11) NOT NULL,
  'joining' varchar(15) NOT NULL,
  'id' varchar(15) NOT NULL,
  'name' varchar(30) NOT NULL,
  'age' int(5) NOT NULL,
  'gender' varchar(10) NOT NULL,
  'blood' varchar(4) NOT NULL,
  'email' varchar(40) NOT NULL,
  'phone' varchar(17) NOT NULL,
  'address' varchar(30) NOT NULL,
  'status' varchar(10) NOT NULL,
  'username' varchar(20) NOT NULL,
  'password' varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table 'doctor'
--
ALTER TABLE 'doctor'
  ADD PRIMARY KEY ('count');

--
-- Indexes for table 'patient'
--
ALTER TABLE 'patient'
  ADD PRIMARY KEY ('count');

--
-- Indexes for table 'receptionist'
--
ALTER TABLE 'receptionist'
  ADD PRIMARY KEY ('count');

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table 'doctor'
--
ALTER TABLE 'doctor'
  MODIFY 'count' int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table 'patient'
--
ALTER TABLE 'patient'
  MODIFY 'count' int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table 'receptionist'
--
ALTER TABLE 'receptionist'
  MODIFY 'count' int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
