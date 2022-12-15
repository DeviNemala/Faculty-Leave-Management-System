-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 12:11 PM
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
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `alogin`
--

CREATE TABLE `alogin` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alogin`
--

INSERT INTO `alogin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `nid` int(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dept` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstName`, `lastName`, `email`, `password`, `birthday`, `gender`, `contact`, `nid`, `address`, `dept`, `degree`, `pic`) VALUES
(15, 'N R N ', 'Prem kumar', 'premnrn@rguktsklm.ac.in', '1234', '2018-04-08', 'Male', '9951558848', 1, 'Faculty', 'CIVIL', 'Asst Prof(c)', 'images/no.jpg'),
(16, 'Jeevan', 'Madapala', 'jeevanm54@rguktsklm.ac.in', '1234', '2021-06-21', 'Male', '8985485038', 2, 'HOD', 'CIVIL', 'Asst Prof(c)', 'images/no.jpg'),
(17, 'S', 'Sateesh kumar', 'sateesh@rguktsklm.ac.in', '1234', '2017-07-03', 'Male', '9441116070', 3, 'Faculty', 'CSE', 'Asst Prof(c)', 'images/no.jpg'),
(19, 'N.', 'seshakumar', 'seshu@rguktsklm.ac.in', '1234', '2017-11-07', 'Male', '9703337730', 4, 'Faculty', 'CSE', 'Asst Prof(c)', 'images/no.jpg'),
(20, 'K.', 'VijayBhaskar', 'vijaybhaskarcdpc@rguktsklm.ac.in', '1234', '2018-08-01', 'Male', '7893403432', 5, 'Faculty', 'CSE', 'Asst Prof(c)', 'images/no.jpg'),
(21, 'M.', 'Roopa', 'roopamusidi@rguktsklm.ac.in', '1234', '2018-08-01', 'Female', '8125114136', 6, 'Faculty', 'CSE', 'Asst Prof(c)', 'images/no.jpg'),
(22, 'M.', 'Mounika Rayyudu', 'mounika@rguktsklm.ac.in', '1234', '2018-08-01', 'Female', '7093678968', 7, 'Faculty', 'CSE', 'Asst Prof(c)', 'images/no.jpg'),
(23, 'CH.', 'Satish kumar', 'chilla.satishkumar@rguktsklm.ac.in', '1234', '2018-08-02', 'Male', '9030224486', 8, 'Faculty', 'CSE', 'Asst Prof(c)', 'images/no.jpg'),
(24, 'T.', 'Anil kumar', 'anilkumar10491@rguktsklm.ac.in', '1234', '2018-08-06', 'Male', '970384363', 9, 'Faculty', 'CSE', 'Asst Prof(c)', 'images/no.jpg'),
(26, 'J.', 'Vishnu Priyanka', 'vishnupriya.javvadi@rguktskl.ac.in', '1234', '2021-06-12', 'Female', '8500959541', 10, 'Finance & scholarship Coordinator', 'CSE', 'Asst Prof(c)', 'images/no.jpg'),
(27, 'CH.', 'Lakshmi bala', 'lakshmibala@rguktsklm.ac.in', '1234', '2021-09-21', 'Female', '6281711851', 11, 'Faculty', 'CSE', 'Asst Prof(c)', 'images/no.jpg'),
(28, 'Dr V.', 'Ramakrishna', 'rk.dance@rguktsklm.ac.in', '1234', '2017-07-14', 'Male', '9704866232', 12, 'Faculty', 'Dance', 'Asst Prof(c)', 'images/no.jpg'),
(29, 'N.', 'Ramesh Babu', 'rameshbabun@rguktsklm.ac.in', '1234', '2018-08-02', 'Male', '7396704059', 13, 'Faculty', 'ECE', 'Asst Prof(c)', 'images/no.jpg'),
(30, 'M.', 'Ramu', 'ramu@rguktsklm.ac.in', '1234', '2018-08-02', 'Male', '8985668920', 14, 'Faculty', 'ECE', 'Asst Prof(c)', 'images/no.jpg'),
(31, 'K.', 'Sudharani', 'sudharani354@rguktsklm.ac.in', '1234', '2018-08-04', 'Female', '7661959354', 15, 'Faculty', 'ECE', 'Asst Prof(c)', 'images/no.jpg'),
(32, 'K.', 'Jayanthi', 'jayanthik@rguktsklm.ac.in', '1234', '2018-08-06', 'Female', '9885915832', 16, 'Faculty', 'ECE', 'Asst Prof(c)', 'images/no.jpg'),
(33, 'H.', 'Srinivasa vara prasad', 'hsv.prasad@rguktsklm.ac.in', '1234', '2021-07-12', 'Male', '9491321146', 17, 'ACOE', 'ECE', 'Asst Prof(c)', 'images/no.jpg'),
(34, 'T.V', 'Chaitanya', 'chaitanyatv@rguktsklm.ac.in', '1234', '2021-06-12', 'Male', '7337242839', 18, 'Faculty', 'ECE', 'Asst Prof(c)', 'images/no.jpg'),
(35, 'Y.', 'lakshmi prasanna', 'lakshmiprasanna007@rguktsklm.ac.in', '1234', '2021-06-14', 'Female', '9398003318', 19, 'Faculty', 'ECE', 'Asst Prof(c)', 'images/no.jpg'),
(36, 'Ganesh', 'Boga', 'ganesh.boga416@rguktsklm.ac.in', '1234', '2021-06-22', 'Male', '9704386337', 20, 'Ebs section', 'ECE', 'Asst Prof(c)', 'images/no.jpg'),
(37, 'K.', 'Vasundhara', 'vasundharakosuri@gmail.com', '1234', '2021-09-18', 'Female', '9100954338', 21, 'Faculty', 'ECE', 'Asst Prof(c)', 'images/no.jpg'),
(38, 'Dr. Gaddala ', 'Jaya raju', 'jayaraju2021@rguktsklm.ac.in', '1234', '2021-06-14', 'Male', '9052255584', 22, 'HOD', 'EEE', 'Asst Prof(c)', 'images/no.jpg'),
(39, 'Dr.K.S.S.V', 'Prasad', 'dr.sekharprasad@rguktsklm.ac.in', '1234', '2018-08-01', 'Male', '9985012174', 23, 'Faculty', 'ENGLISH', 'Asst Prof(c)', 'images/no.jpg'),
(40, 'A.', 'Rama devi', 'rama.kannasir.devi@gmail.com', '1234', '2018-08-02', 'Female', '8523088809', 24, ' Faculty', 'ENGLISH', 'Guest faculty', 'images/no.jpg'),
(41, 'P.', 'Siva sankar', 'perumalisankar.mfa@rguktsklm.ac.in', '1234', '2021-06-14', 'Male', '9989662967', 25, 'Faculty', 'FINE ARTS', 'Instructor', 'images/no.jpg'),
(42, 'Dr.', 'Malla purna suri ganesh', 'suriganesh007@rguktsklm.ac.in', '1234', '2021-06-12', 'Male', '9848750209', 26, 'Store+Procurement', 'Management', 'Asst Prof(c)', 'images/no.jpg'),
(43, 'P.V.', 'Ravi', 'pvravi.ravi@rguktsklm.ac.in', '1234', '2017-07-06', 'Male', '9441531267', 27, 'Faculty', 'Maths', 'Asst Prof(c)', 'images/no.jpg'),
(44, 'CH.', 'Gnanedra Rao', 'gnanendramaths@rguktsklm.ac.in', '1234', '2018-08-04', 'Male', '6300423424', 28, 'Faculty', 'Maths', 'Asst Prof(c)', 'images/no.jpg'),
(45, 'A', 'Srinivas Naik', 'azmeera91@rguktsklm.ac.in', '1234', '2018-08-01', 'Male', '7416261525', 29, 'Faculty', 'MECH', 'Not Assaigned', 'images/no.jpg'),
(46, 'G.', 'Raju', 'rajugaddala@gmail.com', '1234', '2018-08-01', 'Male', '7780309979', 30, 'Faculty', 'MECH', 'Asst Prof(c)', 'images/no.jpg'),
(47, 'P', 'Chinna Rao', 'chinna304@rguktsklm.ac.in', '1234', '2018-08-02', 'Male', '9110729092', 31, 'Faculty', 'MECH', 'Asst Prof(c)', 'images/no.jpg'),
(48, 'Mazammali', 'Ahmed Khan', 'muzammilak.fwd@rguktsklm.ac.in', '1234', '2021-06-15', 'Male', '9505293617', 32, 'Coordinator Academics', 'MECH', 'Asst Prof(c)', 'images/no.jpg'),
(49, 'G', 'Harika', 'harikagrace2@gmail.com', '1234', '2021-09-21', 'Male', '6281393391', 33, 'Faculty', 'MECH', 'Asst Prof(c)', 'images/no.jpg'),
(50, 'Gollapalli', 'Veerababu', 'veerababug8888@gmail.com', '1234', '2021-09-21', 'Male', '9866151535', 34, 'Faculty', 'Physical education', 'Intructor', 'images/no.jpg'),
(51, 'K', 'Sirisha Rani', 'sirishapsychology@rguktsklm.ac.in', '1234', '2017-03-07', 'Female', '9885886949', 35, 'DSW (Girls)', 'Psychology', 'Counselor', 'images/no.jpg'),
(52, 'T.Palli.', 'Danunjay Rao', 'danunjayraotpalli@rguktsklm.ac.in', '1234', '2021-06-14', '', '9505528735', 36, 'DSW (Boys)', 'Y0ga', 'Instructor', 'images/no.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave`
--

CREATE TABLE `employee_leave` (
  `id` int(11) DEFAULT NULL,
  `token` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `reason` char(100) DEFAULT NULL,
  `status` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `subdate` date DEFAULT '0000-00-00',
  `mark` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `eid` int(11) NOT NULL,
  `points` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`eid`, `points`) VALUES
(15, 0),
(16, 0),
(17, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 0),
(24, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `bonus` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `base`, `bonus`, `total`) VALUES
(15, 0, 0, 0),
(16, 0, 0, 0),
(17, 0, 0, 0),
(19, 0, 0, 0),
(20, 0, 0, 0),
(21, 0, 0, 0),
(22, 0, 0, 0),
(23, 0, 0, 0),
(24, 0, 0, 0),
(26, 0, 0, 0),
(27, 0, 0, 0),
(28, 0, 0, 0),
(29, 0, 0, 0),
(30, 0, 0, 0),
(31, 0, 0, 0),
(32, 0, 0, 0),
(33, 0, 0, 0),
(34, 0, 0, 0),
(35, 0, 0, 0),
(36, 0, 0, 0),
(37, 0, 0, 0),
(38, 0, 0, 0),
(39, 0, 0, 0),
(40, 0, 0, 0),
(41, 0, 0, 0),
(42, 0, 0, 0),
(43, 0, 0, 0),
(44, 0, 0, 0),
(45, 0, 0, 0),
(46, 0, 0, 0),
(47, 0, 0, 0),
(48, 0, 0, 0),
(49, 0, 0, 0),
(50, 0, 0, 0),
(51, 0, 0, 0),
(52, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alogin`
--
ALTER TABLE `alogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD PRIMARY KEY (`token`),
  ADD KEY `employee_leave_ibfk_1` (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `project_ibfk_1` (`eid`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alogin`
--
ALTER TABLE `alogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `employee_leave`
--
ALTER TABLE `employee_leave`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD CONSTRAINT `employee_leave_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rank`
--
ALTER TABLE `rank`
  ADD CONSTRAINT `rank_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
