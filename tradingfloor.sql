-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 18, 2018 at 04:28 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tradingfloor`
--

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE IF NOT EXISTS `status` (
  `round` int(11) NOT NULL COMMENT '-1 = gameover',
  `canTrade` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`round`, `canTrade`) VALUES
(0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `trades`
--

DROP TABLE IF EXISTS `trades`;
CREATE TABLE IF NOT EXISTS `trades` (
  `trader` varchar(11) CHARACTER SET cp1250 NOT NULL,
  `stock` varchar(11) CHARACTER SET cp1250 NOT NULL,
  `price` int(11) NOT NULL,
  `amt` int(11) NOT NULL,
  `partner` varchar(11) CHARACTER SET cp1250 NOT NULL,
  `transactType` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trades`
--

INSERT INTO `trades` (`trader`, `stock`, `price`, `amt`, `partner`, `transactType`) VALUES
('hey', 'nestle', 231, 786, 'rewq', 1),
('hey', 'apple', 342, 321, 'rewq', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(10) CHARACTER SET cp1250 NOT NULL,
  `password` varchar(40) CHARACTER SET cp1250 NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '100',
  `apple` int(11) NOT NULL DEFAULT '0',
  `nestle` int(11) NOT NULL DEFAULT '0',
  `walmart` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `balance`, `apple`, `nestle`, `walmart`) VALUES
('hey', 'aa0d576b8de5cef4668d69b6b9826ca6bd3f219c', 100, 0, 0, 0),
('jkl', 'd1e56e00efe7aec303cc36e7b601120b84db554e', 100, 0, 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
