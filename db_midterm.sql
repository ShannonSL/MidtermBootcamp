-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 17, 2018 at 01:38 AM
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
-- Database: `db_midterm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

DROP TABLE IF EXISTS `tbl_color`;
CREATE TABLE IF NOT EXISTS `tbl_color` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `color` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`ID`, `color`) VALUES
(1, '#dddddd'),
(2, '#000000'),
(3, '#ffffff');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
CREATE TABLE IF NOT EXISTS `tbl_products` (
  `ID` int(15) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `product_description` text NOT NULL,
  `product_img` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`ID`, `product_name`, `product_description`, `product_img`) VALUES
(1, 'WALL MOUNT DETAILS  & FEATURES', 'The ThermoSecure system on the wall mount is special because it gives you the ability to:\r\n- increase/decrease the temperature between the heat/cool set-points \r\n- use the Amazon Alex Voice Service \r\n- regulate indoor humidity to prevent frost buildup on outside windows \r\n- view your current indoor temperature, outdoor temperature and the daily/weekly forecasts', 'Smart_Thermostat7.jpg'),
(2, 'WATCH DETAILS  & FEATURES', 'Through the ThermoSecure app available for smart watches, you\'re able to: \r\n- increase/decrease the temperature between the heat/cool set-points \r\n- use the Amazon Alex Voice Service \r\n- regulate indoor humidity to prevent frost buildup on outside windows \r\n- view your current indoor temperature, outdoor temperature and the daily/weekly forecasts', 'watchGUI.jpg'),
(3, 'MOBILE DETAILS & FEATURES', 'When using you\'re ThermoSecure app on your smartphone, you can: \r\n- increase/decrease the temperature between the heat/cool set-points \r\n- use the Amazon Alex Voice Service \r\n- regulate indoor humidity to prevent frost buildup on outside windows \r\n- view your current indoor temperature, outdoor temperature and the daily/weekly forecasts', 'phoneMockUp.jpg'),
(4, 'TABLET DETAILS & FEATURES', 'On your tablet, you\'re able to control your ThermoSecure system through the app and: \r\n- increase/decrease the temperature between the heat/cool set-points \r\n- use the Amazon Alex Voice Service \r\n- regulate indoor humidity to prevent frost buildup on outside windows \r\n- view your current indoor temperature, outdoor temperature and the daily/weekly forecasts', 'iPadMockUp.jpg'),
(5, 'WEBSITE DETAILS & FEATURES', 'Lastly, on the website, you\'re able to control your ThermoSecure system by: \r\n- increase/decrease the temperature between the heat/cool set-points \r\n- use the Amazon Alex Voice Service \r\n- regulate indoor humidity to prevent frost buildup on outside windows \r\n- view your current indoor temperature, outdoor temperature and the daily/weekly forecasts', 'macMockUp.jpg'),
(6, 'THERMOSECURE AVAILABLE ON', '', 'Smart_Thermostat4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_color`
--

DROP TABLE IF EXISTS `tbl_product_color`;
CREATE TABLE IF NOT EXISTS `tbl_product_color` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `product_ID` int(10) NOT NULL,
  `color_ID` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`ID`, `product_ID`, `color_ID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
