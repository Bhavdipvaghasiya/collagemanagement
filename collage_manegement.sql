-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 01, 2021 at 11:45 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `collage_manegement`
--

-- --------------------------------------------------------

--
-- Table structure for table `addstudent`
--

CREATE TABLE IF NOT EXISTS `addstudent` (
  `name` varchar(20) DEFAULT NULL,
  `fathers_name` varchar(20) DEFAULT NULL,
  `age` varchar(5) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `class_x` varchar(10) DEFAULT NULL,
  `class_xii` varchar(10) DEFAULT NULL,
  `aadhar` varchar(15) DEFAULT NULL,
  `rollno` varchar(15) DEFAULT NULL,
  `course` varchar(10) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addstudent`
--

INSERT INTO `addstudent` (`name`, `fathers_name`, `age`, `dob`, `address`, `phone`, `email`, `class_x`, `class_xii`, `aadhar`, `rollno`, `course`, `branch`) VALUES
('fh', 'thf', '23', '17/01/2019', 'dffgr', '3434343434', 'dsg@dfg.', '34.43', '43.34', '343454554545', '3', 'Bca', 'Computer'),
('fh', 'thf', '23', '17/01/2019', 'dffgr', '3434343434', 'dsg@dfg.', '34.43', '43.34', '343454554545', '3', 'Bca', 'Computer'),
('sar', 'manu', '19', '02/02/2003', 'hadmatiya', '1234445454', 'ajdh@as.', '12.00', '12.00', '123456789786', '22', 'Bca', 'Bca');

-- --------------------------------------------------------

--
-- Table structure for table `add_teacher`
--

CREATE TABLE IF NOT EXISTS `add_teacher` (
  `name` varchar(20) DEFAULT NULL,
  `fathers_name` varchar(20) DEFAULT NULL,
  `age` varchar(5) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `class_x` varchar(10) DEFAULT NULL,
  `class_xii` varchar(10) DEFAULT NULL,
  `aadhar` varchar(15) DEFAULT NULL,
  `emp_id` varchar(15) DEFAULT NULL,
  `course` varchar(10) DEFAULT NULL,
  `dept` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_teacher`
--

INSERT INTO `add_teacher` (`name`, `fathers_name`, `age`, `dob`, `address`, `phone`, `email`, `class_x`, `class_xii`, `aadhar`, `emp_id`, `course`, `dept`) VALUES
('kishan', 'bhikhubhai', '20', '29/08/2002', 'nanahadamatiya', '9898655140', 'kishanpaghdal29@gmail.com', '55.90', '75.90', '873467382938', '23', 'Bca', 'Computer');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_student`
--

CREATE TABLE IF NOT EXISTS `attendance_student` (
  `rollno` varchar(20) DEFAULT NULL,
  `Date` varchar(30) DEFAULT NULL,
  `first` varchar(10) DEFAULT NULL,
  `second` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_student`
--

INSERT INTO `attendance_student` (`rollno`, `Date`, `first`, `second`) VALUES
('3', 'Tue Jan 01 01:26:03 IST 2019', 'Present', 'Present'),
('22', 'Fri Nov 05 09:00:13 IST 2021', 'Absent', 'Leave');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_teacher`
--

CREATE TABLE IF NOT EXISTS `attendance_teacher` (
  `emp_id` varchar(20) DEFAULT NULL,
  `Date` varchar(30) DEFAULT NULL,
  `first` varchar(10) DEFAULT NULL,
  `second` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_teacher`
--

INSERT INTO `attendance_teacher` (`emp_id`, `Date`, `first`, `second`) VALUES
('23', 'Tue Jan 01 01:26:33 IST 2019', 'Present', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE IF NOT EXISTS `fee` (
  `rollno` varchar(20) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `fathers_name` varchar(25) DEFAULT NULL,
  `course` varchar(10) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `fee_paid` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`rollno`, `name`, `fathers_name`, `course`, `branch`, `semester`, `fee_paid`) VALUES
('3', 'fh', 'thf', 'Bca', 'Science', '1st', '454');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE IF NOT EXISTS `library` (
  `name` varchar(100) NOT NULL,
  `rollno` varchar(111) NOT NULL,
  `book_name` varchar(111) NOT NULL,
  `issue_date` varchar(100) NOT NULL,
  `submit_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`name`, `rollno`, `book_name`, `issue_date`, `submit_date`) VALUES
('fh', '3', 'dosi nani umar ma mari gay', '01/01/2008', '01/01/2020');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`) VALUES
('bhavdip', 'bhavdip'),
('kishan', 'kishan');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE IF NOT EXISTS `marks` (
  `stream` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `rollno` varchar(100) NOT NULL,
  `marks1` varchar(100) NOT NULL,
  `marks2` varchar(100) NOT NULL,
  `marks3` varchar(100) NOT NULL,
  `marks4` varchar(100) NOT NULL,
  `marks5` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`stream`, `semester`, `rollno`, `marks1`, `marks2`, `marks3`, `marks4`, `marks5`) VALUES
('Btech', '1', '3', '45', '45', '44', '44', '56');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE IF NOT EXISTS `salary` (
  `rollno` varchar(20) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `fathers_name` varchar(25) DEFAULT NULL,
  `course` varchar(10) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `fee_paid` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--


-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `stream` varchar(50) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `rollno` varchar(50) NOT NULL,
  `subject1` varchar(50) NOT NULL,
  `subject2` varchar(50) NOT NULL,
  `subject3` varchar(50) NOT NULL,
  `subject4` varchar(50) NOT NULL,
  `subject5` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`stream`, `semester`, `rollno`, `subject1`, `subject2`, `subject3`, `subject4`, `subject5`) VALUES
('Btech', '1', '3', 'a', 'aa', 'cvb', 'bn', 'bv');

-- --------------------------------------------------------

--
-- Table structure for table `s_log`
--

CREATE TABLE IF NOT EXISTS `s_log` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_log`
--

INSERT INTO `s_log` (`username`, `password`) VALUES
('assdAsf', '2@"vdb121233A'),
('aaaaaa', 'aaAA11@@'),
('kishan', 'kishan@123K'),
('abcabc', 'aA@123123');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--


-- --------------------------------------------------------

--
-- Table structure for table `t_log`
--

CREATE TABLE IF NOT EXISTS `t_log` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_log`
--

INSERT INTO `t_log` (`username`, `password`) VALUES
('abcdef', 'vbh@123VBH');
