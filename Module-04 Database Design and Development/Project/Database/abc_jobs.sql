-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2022 at 01:42 PM
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
-- Database: `abc_jobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `first_name` varchar(48) NOT NULL,
  `last_name` varchar(48) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Parker ', 'Paterson', 'parker@adminabc.com', 'parker123'),
(2, 'Raphael ', 'Crosby', 'raphael@adminabc.com', 'raphael123'),
(3, 'Luqman', 'Hakim', 'luqman@adminabc.com', 'luqman123'),
(4, 'Hatty', 'MacElholm', 'hmacelholm0@gmpg.org\r\n', '3hMyhAndlOv5'),
(5, 'Lynda', 'Durman', 'ldurman1@ucsd.edu\r\n', 'ZRCGCHx'),
(6, 'Heinrick', 'Wooland', 'hwooland2@scientificamerican.com\r\n', 'GqZM1ggsP0OT'),
(7, 'Kyla', 'Lillywhite', 'klillywhite3@nature.com\r\n', 'rEqmBMKiUBGz'),
(8, 'Kiri', 'Precious', 'kprecious4@drupal.org\r\n', 'ujjVWsBIgh');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(24) NOT NULL,
  `company_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_address`) VALUES
(1, 'Amazon', 'Seattle, Washington and Arlington, Virginia, U.S.'),
(2, 'Google', '1600 Amphitheatre Parkway, Mountain View, California, U.S.'),
(3, 'Nvidia', 'Santa Clara, California, U.S.'),
(4, 'Meta', 'Menlo Park, California, U.S.'),
(5, 'Oracle', 'Austin, Texas, United States'),
(6, 'Intel', 'Santa Clara, California, U.S.'),
(7, 'Microsoft', 'One Microsoft Way Redmond, Washington, U.S.'),
(8, 'Samsung', '40th floor Samsung Electronics Building, 11, Seocho-daero 74-gil, Seocho District, Seoul, South Korea'),
(9, 'Tencent', 'Tencent Binhai Mansion, Nanshan District, Shenzhen, Guangdong, China');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `job_id` int(11) NOT NULL,
  `company_name` varchar(24) NOT NULL,
  `job_desc` varchar(500) NOT NULL,
  `job_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `company_name`, `job_desc`, `job_type`) VALUES
(1, ' Google', 'We are looking for Back End Developer', 'Full-Time'),
(2, 'Amazon', 'We are looking for Fullstack Developer', 'Part-Time'),
(3, 'Microsoft', 'We are looking for UI Designer', 'Full-Time'),
(4, 'Samsung', 'We are looking for Front End Developer', 'Full-Time'),
(5, 'Nvidia', 'We are looking for Software Engineer', 'Part-Time');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(8) NOT NULL,
  `message` varchar(255) NOT NULL,
  `to` varchar(48) NOT NULL,
  `from` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `date`, `time`, `message`, `to`, `from`) VALUES
(1, '2021-08-01', '10:34 AM', 'Good Morning sir?', 'Barry Portillo', 'Elliot Hogan'),
(2, '2022-08-01', '10:35 AM', 'Morning sir', 'Elliot Hogan', 'Barry Portillo'),
(3, '2022-08-02', '09:00 AM', 'How are you?', 'Jannat Hamilton', 'Aniyah Hayden'),
(4, '2022-08-02', '11:35 AM', 'Im quite fine, How about you?', 'Aniyah Hayden', 'Jannat Hamilton'),
(5, '2022-08-02', '12:35 PM', 'Thanks', 'Howard Richards', 'Barry Portillo');

-- --------------------------------------------------------

--
-- Table structure for table `thread`
--

CREATE TABLE `thread` (
  `thread_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(8) NOT NULL,
  `thread_desc` varchar(500) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thread`
--

INSERT INTO `thread` (`thread_id`, `date`, `time`, `thread_desc`, `comment`) VALUES
(1, '2021-02-09', '10:34 PM', 'Very Happy', 'How was your day?'),
(2, '2021-11-11', '09:52 AM', 'It\'s time to coffe', 'Morning with coffe'),
(3, '2022-01-23', '07:32 AM', 'I\'m working on Google ', 'Google is the best company'),
(4, '2022-03-01', '03:00 PM', 'The best experience ', 'What\'s happen today?'),
(5, '2022-04-19', '08:03 AM', 'I like this Nvidia Company ', 'What about update on RTX Graphic Card?'),
(6, '2021-05-25', '10:32 PM', 'Hello Everyone', 'Hello');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(48) NOT NULL,
  `last_name` varchar(48) NOT NULL,
  `company` varchar(48) NOT NULL,
  `city` varchar(48) NOT NULL,
  `country` varchar(48) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `company`, `city`, `country`, `email`, `password`) VALUES
(1, 'Barry', 'Portillo', 'Google', 'Jakarta ', 'Indonesia', 'barry@abc.com', 'barry123'),
(2, 'Jannat', 'Hamilton', 'Google', 'Tokyo', 'Japan', 'jannat@abc.com', 'jannat123'),
(3, 'Aniyah', 'Hayden', 'Samsung', 'Bandung', 'Indonesia', 'aniyah@abc.com', 'aniyah123'),
(4, 'Elliot', 'Hogan', 'Amazon', 'New York', 'USA', 'elliot@abc.com', 'elliot123'),
(5, 'Howard', 'Richards', 'Microsoft', 'Berlin', 'German', 'howard@abc.com', 'howard123'),
(6, 'Wildan', 'Luqmanul Hakim', 'Google', 'Bandung', 'Indonesia', 'wildanluqmanul@gmail.com', 'password123'),
(9, 'User', 'Tester', 'Google', 'Jakarta ', 'Indonesia', 'user@abc.com', 'user123');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `user_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `job_status` varchar(24) NOT NULL,
  `experience` varchar(24) NOT NULL,
  `company` varchar(48) NOT NULL,
  `bio` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_id`, `status_id`, `username`, `job_status`, `experience`, `company`, `bio`) VALUES
(1, 1, 'barry_p', 'Working', 'Sofware Engineer ', 'Google', 'Lorem ipsum dolor sit amet'),
(2, 2, 'jnnath', 'Working', 'UI/UX Design', 'Google', 'Lorem ipsum dolor sit amet'),
(3, 3, 'aniyyyaah', 'Working', 'Back End Developer', 'Samsung', 'Lorem ipsum dolor sit amet'),
(4, 4, 'elliot67', 'Working', 'Business Analysis', 'Amazon', 'Lorem ipsum dolor sit amet'),
(5, 5, 'howrdddd', 'Working', 'Problem Solving', 'Microsoft', 'Lorem ipsum dolor sit amet'),
(6, 6, 'wildanlh', 'Working', 'Front End Developer', 'Google', 'Lorem ipsum dolor sit amet'),
(7, 7, 'username123', 'Working', 'CEO', 'Meta', 'Lorem Ipsum');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);
ALTER TABLE `company` ADD FULLTEXT KEY `ft_company` (`company_name`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`thread_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);
ALTER TABLE `user` ADD FULLTEXT KEY `ft_name` (`first_name`,`last_name`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`status_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);
ALTER TABLE `user_profile` ADD FULLTEXT KEY `ft_username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `thread`
--
ALTER TABLE `thread`
  MODIFY `thread_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
