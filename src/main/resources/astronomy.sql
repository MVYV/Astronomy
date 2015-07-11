-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Час створення: Лип 11 2015 р., 19:39
-- Версія сервера: 5.6.17
-- Версія PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База даних: `astronomy`
--

-- --------------------------------------------------------

--
-- Структура таблиці `planets`
--

CREATE TABLE IF NOT EXISTS `planets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `satellites` int(11) NOT NULL,
  `radius` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп даних таблиці `planets`
--

INSERT INTO `planets` (`id`, `name`, `satellites`, `radius`) VALUES
(1, 'Mercury', 0, 2439.7),
(2, 'Venus', 0, 6051.8),
(3, 'Earth', 1, 6371),
(4, 'Mars', 2, 3389.5),
(5, 'Jupiter', 67, 68911),
(6, 'Saturn', 62, 58232),
(7, 'Uranus', 27, 25362),
(8, 'Neptune', 14, 24622);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
