-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2012 at 07:16 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rss_feed`
--

-- --------------------------------------------------------

--
-- Table structure for table `addedfeeds`
--

CREATE TABLE IF NOT EXISTS `addedfeeds` (
  `ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `URL` varchar(200) NOT NULL,
  `isTwitter` tinyint(1) NOT NULL,
  `PageLink` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_2` (`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `addedfeeds`
--

INSERT INTO `addedfeeds` (`ID`, `Name`, `URL`, `isTwitter`, `PageLink`) VALUES
(1, 'Hacker News', 'http://news.ycombinator.com/rss', 0, 'http://news.ycombinator.com/'),
(2, 'Design Soujorn', 'http://www.designsojourn.com/feed/', 0, 'http://www.designsojourn.com'),
(3, 'Coding Horror', 'http://feeds.feedburner.com/codinghorror', 0, 'http://www.codinghorror.com/blog/'),
(4, 'Yahoo! News', 'http://rss.news.yahoo.com/rss/', 0, 'http://news.yahoo.com/'),
(5, 'Hi hi', 'slicknet', 1, ''),
(6, 'TED', 'TEDx', 1, ''),
(7, 'Josh', 'hungonatree', 1, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
