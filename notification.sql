-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2016 at 04:20 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `notification_master`
--

CREATE TABLE IF NOT EXISTS `notification_master` (
  `notification` varchar(10000) NOT NULL,
  `id` int(10) NOT NULL,
  `PostedBy` varchar(1000) NOT NULL,
  `ImageLink` varchar(10000) NOT NULL,
  `Unread` tinyint(1) NOT NULL DEFAULT '1',
  `notificationLink` varchar(10000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_master`
--

INSERT INTO `notification_master` (`notification`, `id`, `PostedBy`, `ImageLink`, `Unread`, `notificationLink`) VALUES
('commented on the photo you were tagged on Udit''s Wall ', 1, 'Mayank Taneja', 'img/download.jpg', 0, '#services'),
('liked a video ', 2, 'Udit Saxena', 'img/download(1).jpg', 0, '#services'),
('commented on x thing', 3, 'Shubham', 'img/download.png', 1, '#services'),
('liked x thing', 4, 'Deepak', 'img/download.jpg', 0, '#services'),
('sent you a gift on 8 Ball Pool', 5, 'Ashutosh', 'img/download(1).jpg', 0, '#services'),
('shared a photo on your wall', 6, 'Kavya', 'img/images.jpg', 0, '#services'),
('was marked safe at Kolkata on Bridge Fall', 7, 'Sarthak Garg', 'img/download.png', 0, '#services'),
('asked you to like a page', 8, 'Kriti', 'img/images.jpg', 0, '#services'),
('was feeling motivated', 9, 'Prashant Singhal', 'img/download(2).jpg', 0, '#services'),
('is listening to song "Paradise"', 10, 'Rishabh ', 'img/download(1).jpg', 0, '#services'),
('is feeling angry ', 11, 'Sonakshi', 'img/images.jpg', 0, '#services'),
('is Watching India vs Pakistan', 12, 'Manas Chopra', 'img/download.png', 0, '#services');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notification_master`
--
ALTER TABLE `notification_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notification_master`
--
ALTER TABLE `notification_master`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
