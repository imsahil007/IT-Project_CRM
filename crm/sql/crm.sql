-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 03, 2020 at 06:06 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `prequest`
--

DROP TABLE IF EXISTS `prequest`;
CREATE TABLE IF NOT EXISTS `prequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `wdd` varchar(255) DEFAULT NULL,
  `cms` varchar(255) DEFAULT NULL,
  `seo` varchar(255) DEFAULT NULL,
  `smo` varchar(255) DEFAULT NULL,
  `swd` varchar(255) DEFAULT NULL,
  `dwd` varchar(255) DEFAULT NULL,
  `fwd` varchar(255) DEFAULT NULL,
  `dr` varchar(255) DEFAULT NULL,
  `whs` varchar(255) DEFAULT NULL,
  `wm` varchar(255) DEFAULT NULL,
  `ed` varchar(255) DEFAULT NULL,
  `wta` varchar(255) DEFAULT NULL,
  `opi` varchar(255) DEFAULT NULL,
  `ld` varchar(255) DEFAULT NULL,
  `da` varchar(255) DEFAULT NULL,
  `osc` varchar(255) DEFAULT NULL,
  `nd` varchar(255) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `query` longtext,
  `posting_date` date DEFAULT NULL,
  `remark` longtext,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prequest`
--

INSERT INTO `prequest` (`id`, `name`, `email`, `contactno`, `company`, `wdd`, `cms`, `seo`, `smo`, `swd`, `dwd`, `fwd`, `dr`, `whs`, `wm`, `ed`, `wta`, `opi`, `ld`, `da`, `osc`, `nd`, `others`, `query`, `posting_date`, `remark`, `status`) VALUES
(12, 'Sahil', 'somerandom@gmail.com', '1234567890', 'Google', 'Website Design & Development', '', '', '', '', '', '', '', 'Web Hosting Services', '', '', '', '', '', '', '', '', '', 'Bruh do you even code?', '2020-12-01', 'I want to. But i dont need to', NULL),
(13, 'Aakash', 'aakash@gmail.com', '9874561230', 'Facebook', 'Website Design & Development', '', 'SEO (Search Engine Optimization)', '', 'Static Website Design', 'Dynamic Website Design', 'Flash Website Development', 'Domain Registration', '', '', '', '', '', '', '', '', '', '', 'Email me with an estimate', '2020-12-02', 'Wait for 24 working hours', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE IF NOT EXISTS `ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` varchar(11) NOT NULL,
  `email_id` varchar(300) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `task_type` varchar(300) NOT NULL,
  `prioprity` varchar(300) NOT NULL,
  `ticket` longtext NOT NULL,
  `attachment` varchar(300) DEFAULT NULL,
  `status` varchar(300) NOT NULL,
  `admin_remark` longtext,
  `posting_date` date NOT NULL,
  `admin_remark_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `ticket_id`, `email_id`, `subject`, `task_type`, `prioprity`, `ticket`, `attachment`, `status`, `admin_remark`, `posting_date`, `admin_remark_date`) VALUES
(12, '14', 'sahils.1997.s@gmail.com', 'Penterating machine file seems to be corrupted', 'billing', 'important', 'NOT WORKNG', NULL, 'Open', 'Thanks for informing this', '2020-12-02', '2020-12-02 17:11:00'),
(13, '15', 'aakash@gmail.com', 'Task some', 'ot1', 'urgent(functional problem)', 'Can you email me regarding the quote?', NULL, 'Open', 'Okay! Will report to you ASAP', '2020-12-02', '2020-12-02 17:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alt_email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT 'profile.png',
  `address` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `alt_email`, `password`, `mobile`, `gender`, `user_image`, `address`, `status`, `posting_date`) VALUES
(17, 'Test User', 'test@mail.com', NULL, '12bce374e7be15142e8172f668da00d8', '1234567890', 'm', 'profile.png', NULL, NULL, '2020-12-03 06:04:56'),
(13, 'Sahil', 'sahils.1997.s@gmail.com', 'saifisahil0@gmail.com', '9b628bda76fd01fcf254df81a88ffae4', '9911900422', 'm', 'profile2.png', 'New Delhi', NULL, '2020-12-01 04:30:27'),
(14, 'Aakash', 'aakash@gmail.com', NULL, '9b628bda76fd01fcf254df81a88ffae4', '09911900422', 'm', 'profile.png', NULL, NULL, '2020-12-02 17:25:03');

-- --------------------------------------------------------

--
-- Table structure for table `usercheck`
--

DROP TABLE IF EXISTS `usercheck`;
CREATE TABLE IF NOT EXISTS `usercheck` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logindate` varchar(255) DEFAULT '',
  `logintime` varchar(255) DEFAULT '',
  `user_id` varchar(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT '',
  `mac` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usercheck`
--

INSERT INTO `usercheck` (`id`, `logindate`, `logintime`, `user_id`, `username`, `email`, `mac`) VALUES
(117, '2020/12/02', '10:23:44pm', '13', 'Sahil', 'sahils.1997.s@gmail.com', '54-AB-3A-F6-34-03'),
(116, '2020/12/02', '09:24:35pm', '13', 'Sahil', 'sahils.1997.s@gmail.com', '54-AB-3A-F6-34-03'),
(118, '2020/12/02', '10:55:18pm', '14', 'Aakash', 'aakash@gmail.com', '54-AB-3A-F6-34-03'),
(119, '2020/12/02', '10:56:43pm', '13', 'Sahil', 'sahils.1997.s@gmail.com', '54-AB-3A-F6-34-03'),
(120, '2020/12/03', '10:55:18pm', '14', 'Aakash', 'aakash@gmail.com', '54-AB-3A-F6-34-03'),
(121, '2020/12/04', '10:55:18pm', '14', 'Aakash', 'aakash@gmail.com', '54-AB-3A-F6-34-03'),
(122, '2020/12/03', '10:23:44pm', '13', 'Sahil', 'sahils.1997.s@gmail.com', '54-AB-3A-F6-34-03'),
(123, '2020/12/03', '07:23:44pm', '13', 'Sahil', 'sahils.1997.s@gmail.com', '54-AB-3A-F6-34-03'),
(124, '2020/12/05', '10:23:44pm', '13', 'Sahil', 'sahils.1997.s@gmail.com', '54-AB-3A-F6-34-03'),
(125, '2020/12/06', '10:23:44pm', '13', 'Sahil', 'sahils.1997.s@gmail.com', '54-AB-3A-F6-34-03'),
(126, '2020/12/02', '11:03:48pm', '13', 'Sahil', 'sahils.1997.s@gmail.com', '54-AB-3A-F6-34-03'),
(127, '2020/12/02', '12:01:40am', '13', 'Sahil', 'sahils.1997.s@gmail.com', '54-AB-3A-F6-34-03'),
(128, '2020/12/03', '10:41:59am', '13', 'Sahil', 'sahils.1997.s@gmail.com', '54-AB-3A-F6-34-03'),
(129, '2020/12/03', '10:51:48am', '13', 'Sahil', 'sahils.1997.s@gmail.com', '54-AB-3A-F6-34-03'),
(130, '2020/12/03', '11:05:52am', '13', 'Sahil', 'sahils.1997.s@gmail.com', '54-AB-3A-F6-34-03'),
(131, '2020/12/03', '11:07:16am', '13', 'Sahil', 'sahils.1997.s@gmail.com', '54-AB-3A-F6-34-03'),
(132, '2020/12/03', '11:09:23am', '13', 'Sahil', 'sahils.1997.s@gmail.com', '54-AB-3A-F6-34-03'),
(133, '2020/12/03', '11:11:47am', '13', 'Sahil', 'sahils.1997.s@gmail.com', '54-AB-3A-F6-34-03'),
(134, '2020/12/03', '11:17:34am', '13', 'Sahil', 'sahils.1997.s@gmail.com', '54-AB-3A-F6-34-03'),
(135, '2020/12/03', '11:35:10am', '17', 'Test User', 'test@mail.com', '54-AB-3A-F6-34-03');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
