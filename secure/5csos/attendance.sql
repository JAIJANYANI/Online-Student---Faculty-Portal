-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2016 at 12:40 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE IF NOT EXISTS `assignment` (
  `assignment_id` varchar(6) NOT NULL,
  `question` varchar(100) DEFAULT NULL,
  `total_marks` int(2) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  PRIMARY KEY (`assignment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `question`, `total_marks`, `due_date`) VALUES
('week1', '1.What is JDK ?\r\n2.What is JRE ?', 44, '2014-02-25'),
('week10', NULL, NULL, NULL),
('week11', NULL, NULL, NULL),
('week12', NULL, NULL, NULL),
('week13', NULL, NULL, NULL),
('week14', NULL, NULL, NULL),
('week15', NULL, NULL, NULL),
('week2', 'Some other Value', 10, '2014-10-10'),
('week3', NULL, NULL, NULL),
('week4', NULL, NULL, NULL),
('week5', NULL, NULL, NULL),
('week6', NULL, NULL, NULL),
('week7', NULL, NULL, NULL),
('week8', NULL, NULL, NULL),
('week9', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `sid` int(11) NOT NULL,
  `week1` tinyint(1) DEFAULT NULL,
  `week2` tinyint(1) DEFAULT NULL,
  `week3` tinyint(1) DEFAULT NULL,
  `week4` tinyint(1) DEFAULT NULL,
  `week5` tinyint(1) DEFAULT NULL,
  `week6` tinyint(1) DEFAULT NULL,
  `week7` tinyint(1) DEFAULT NULL,
  `week8` tinyint(1) DEFAULT NULL,
  `week9` tinyint(1) DEFAULT NULL,
  `week10` tinyint(1) DEFAULT NULL,
  `week11` tinyint(1) DEFAULT NULL,
  `week12` tinyint(1) DEFAULT NULL,
  `week13` tinyint(1) DEFAULT NULL,
  `week14` tinyint(1) DEFAULT NULL,
  `week15` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `sid` (`sid`),
  UNIQUE KEY `sid_2` (`sid`),
  UNIQUE KEY `sid_3` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`sid`, `week1`, `week2`, `week3`, `week4`, `week5`, `week6`, `week7`, `week8`, `week9`, `week10`, `week11`, `week12`, `week13`, `week14`, `week15`) VALUES
(14206, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14207, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14208, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14209, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14210, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14211, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14212, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14213, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14214, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14215, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14216, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14217, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14218, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14219, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14220, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14221, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14222, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14223, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14224, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14225, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14226, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14227, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14228, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14229, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14230, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14231, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14232, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14233, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14234, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14235, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14236, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14237, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14238, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14239, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14240, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14241, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14242, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14243, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14244, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14245, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14246, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14247, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14248, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14249, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14250, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14251, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14252, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14253, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14254, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14255, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14256, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14257, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14258, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14259, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14260, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14261, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14262, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14263, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14264, 1, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14265, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14266, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14267, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14268, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14269, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14270, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `handout`
--

CREATE TABLE IF NOT EXISTS `handout` (
  `h_week_id` varchar(6) NOT NULL,
  `material` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`h_week_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `handout`
--

INSERT INTO `handout` (`h_week_id`, `material`) VALUES
('week1', 'Some material one check this website professorweb.com'),
('week10', ''),
('week11', ''),
('week12', ''),
('week13', ''),
('week14', ''),
('week15', ''),
('week2', 'http:\\professorWebsiteLink2.com\\mypage'),
('week3', ''),
('week4', ''),
('week5', ''),
('week6', ''),
('week7', ''),
('week8', ''),
('week9', '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `sid` int(50) NOT NULL DEFAULT '0',
  `photo` varchar(50) DEFAULT NULL,
  `lname` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `photo`, `lname`, `fname`) VALUES
(14206, '../images/Kim.png', 'Aayushi', 'Jain'),
(14207, '../images/Manisha.png', 'Abhay', ''),
(14208, '../images/David.png', 'Abhishek', 'Sharma'),
(14209, '../images/Jennifer.png', 'Aman', 'Raj'),
(14210, '../images/Mary.png', 'Amit', 'Kumar'),
(14211, '../images/Mac.png', 'Amit', 'Jalan'),
(14212, '../images/Dennis.png', 'Amrit', 'Pal Singh'),
(14213, '../images/Kathy.png', 'Anant', 'Sharma'),
(14214, '../images/Sam.png', 'Ankul', 'Agrawal'),
(14215, '../images/Rajan.png', 'Ankur', 'Sharma'),
(14216, '../images/Rajan.png', 'Arpit', 'Singhal'),
(14217, '../images/Kim.png', 'Arpita', 'Patidar'),
(14218, '../images/Manisha.png', 'Chanchal', 'Pareek'),
(14219, '../images/David.png', 'Chandresh', 'Chandak'),
(14220, '../images/Jennifer.png', 'Dependra', 'Singh'),
(14221, '../images/Mary.png', 'Deva ram', 'Jajra'),
(14222, '../images/Mac.png', 'Dimple', 'Udai'),
(14223, '../images/Dennis.png', 'Gajendra Singh', 'Rajpurohit'),
(14224, '../images/Kathy.png', 'Gaurav kumar', 'Guatam'),
(14225, '../images/Sam.png', 'Gaurav', 'Meena'),
(14226, '../images/Rajan.png', 'Ghanshyam', 'Meena'),
(14227, '../images/Rajan.png', 'Harshit', 'Agrawal'),
(14228, '../images/Kim.png', 'Himanshu', 'Nagar'),
(14229, '../images/David.png', 'Ishaan', 'Peer'),
(14230, '../images/Jennifer.png', 'Jai', 'Janyani'),
(14231, '../images/Mary.png', 'Kartik ', 'Agarwal'),
(14232, '../images/Mac.png', 'Khushbu', 'Jain'),
(14233, '../images/Dennis.png', 'Kratika', 'Meena'),
(14234, '../images/Kathy.png', 'Mahendra ', 'Pal Singh'),
(14235, '../images/Sam.png', 'Maya', 'Kumari'),
(14236, '../images/Rajan.png', 'MD', 'Shahjahan'),
(14237, '../images/Rajan.png', 'Mohit', 'Rai');
(14238, '../images/Manisha.png', 'Naresh', 'Nishad'),
(14239, '../images/David.png', 'Navdeep', 'Singh Bedi'),
(14240, '../images/Jennifer.png', 'Nilesh', 'Saraswat'),
(14241, '../images/Mary.png', 'Nishtha', 'Tandon'),
(14242, '../images/Mac.png', 'Pankaj', 'Kumar'),
(14243, '../images/Dennis.png', 'Poornima', 'Bhatia'),
(14244, '../images/Kathy.png', 'Prakash', 'Choudhary'),
(14245, '../images/Sam.png', 'Prashant', 'Mathur'),
(14246, '../images/Rajan.png', 'Prity', 'Goyal'),
(14247, '../images/Rajan.png', 'Rahul', 'Meher'),
(14248, '../images/Manisha.png', 'Ravi Kant', 'Gouswami'),
(14249, '../images/David.png', 'Robin', 'Sahu'),
(14250, '../images/Jennifer.png', 'Roshani', 'Kumari'),
(14251, '../images/Mary.png', 'Ruchika', 'Sharma'),
(14252, '../images/Mac.png', 'Rushali', 'Tickoo'),
(14253, '../images/Dennis.png', 'Saakshi', 'Govil'),
(14254, '../images/Kathy.png', 'Sakshi', 'Singh'),
(14255, '../images/Sam.png', 'Satyam', 'Gupta'),
(14256, '../images/Rajan.png', 'Shafaq', 'Khan'),
(14257, '../images/Rajan.png', 'Shiv Nath', 'Jogi'),
(14258, '../images/Manisha.png', 'Shivanee', 'Garg'),
(14259, '../images/David.png', 'Shivangi', ''),
(14260, '../images/Jennifer.png', 'Shreya ', 'Gupta'),
(14261, '../images/Mary.png', 'Srijan', 'Shashwat'),
(14262, '../images/Mac.png', 'Suman', 'Chokrika'),
(14263, '../images/Dennis.png', 'Sunil Kumar', 'Meena'),
(14264, '../images/Kathy.png', 'Suraj', 'Tiwari'),
(14265, '../images/Sam.png', 'Swapnil', 'Gupta'),
(14266, '../images/Rajan.png', 'Tanisha', 'Gupta'),
(14267, '../images/Rajan.png', 'Varun', 'Chaturvedi'),
(14268, '../images/Manisha.png', 'Yamoksh', 'Verma');
(14269, '../images/Rajan.png', 'Varun', 'Chaturvedi'),
(14270, '../images/Manisha.png', 'Yamoksh', 'Verma');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
