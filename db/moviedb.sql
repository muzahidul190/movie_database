-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 28, 2022 at 04:59 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
CREATE TABLE IF NOT EXISTS `actor` (
  `actor_id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_first_name` char(20) NOT NULL,
  `actor_last_name` char(20) DEFAULT NULL,
  `actor_gender` char(1) NOT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`actor_id`, `actor_first_name`, `actor_last_name`, `actor_gender`) VALUES
(1, 'Tim', 'Robbins', 'm'),
(2, 'Morgan', 'Freeman', 'm'),
(3, 'Christian', 'Bale', 'm'),
(4, 'Heath', 'Ledger', 'm'),
(5, 'Robert', 'Downey Jr.', 'm'),
(6, 'Chris', 'Hemsworth', 'm'),
(7, 'Mark', 'Ruffalo', 'm'),
(8, 'Chris', 'Evans', 'm'),
(9, 'Scarlett', 'Johansson', 'f'),
(10, 'Stephanie', 'Beatriz', 'f'),
(11, 'Maria', 'Cecilia Botero', 'f'),
(12, 'John', 'Leguizamo', 'm'),
(13, 'Chanchal', 'Chowdhury', 'm'),
(14, 'Sariful', 'Razz', 'm'),
(15, 'Keanu', 'Reeves', 'm'),
(16, 'Tom', 'Hardy', 'm'),
(18, 'Tom', 'Holland', 'm'),
(19, 'Juhan', 'Ulfsak', 'm'),
(20, 'N.T. Rama', 'Rao Jr.', 'm'),
(21, 'Ram Charan', 'Teja', 'm'),
(22, 'Ajay', 'Devgn', 'm'),
(23, 'Prabhas', '', 'm'),
(24, 'Rana', 'Daggubati', 'm'),
(25, 'Anushka', 'Shetty', 'f'),
(26, 'TimothÃ©e', 'Chalamet', 'm'),
(27, 'Rebecca', 'Ferguson', 'f'),
(28, 'Oscar', 'Isaac', 'm'),
(30, 'Terrence', 'Howard', 'm'),
(31, 'Gwyneth', 'Paltrow', 'f'),
(32, 'Mark', 'Hamill', 'm'),
(33, 'Harrison', 'Ford', 'm'),
(34, 'Carrie', 'Fisher', 'f'),
(35, ' Jodie', ' Foster', 'f'),
(36, 'Kasi', ' Lemmons', 'f'),
(37, 'Scott', 'Glenn', 'm'),
(38, 'Nicoletta', '  Braschi', 'f'),
(39, 'Giorgio', '  Cantarin', 'm'),
(40, 'Marisa', ' Paredes', 'f'),
(41, 'Tom', 'Hanks', 'm'),
(42, 'David', 'Morse', 'm'),
(43, 'Bonnie', ' Hunt', 'm'),
(44, 'Song', ' Kang-ho', 'm'),
(45, 'Sun-kyun', ' Lee', 'm'),
(46, 'Cho', ' Yeo-jeong', 'f'),
(47, 'Joaquin', ' Phoenix', 'm'),
(48, 'Robert De Niro: Murr', 'De Niro', 'm'),
(49, 'Zazie', ' Beetz', 'f'),
(50, 'Olivia Colman: Anne', ' Colman', 'f'),
(51, 'Olivia', 'Colman', 'f'),
(52, 'Anthony', ' Hopkins', 'm'),
(53, 'Mark', 'Gatiss', 'm'),
(54, 'Natalie', 'Portman', 'f'),
(55, 'Amitabh', 'Bachchan', 'm'),
(56, 'Shahrukh', 'Khan', 'm'),
(57, 'Kajol', '', 'f'),
(58, 'Test', 'Person', 'm');

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
CREATE TABLE IF NOT EXISTS `director` (
  `director_id` int(11) NOT NULL AUTO_INCREMENT,
  `director_first_name` char(20) NOT NULL,
  `director_last_name` char(20) NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`director_id`, `director_first_name`, `director_last_name`) VALUES
(1, 'Frank', 'Darabont'),
(2, 'Christopher', 'Nolan'),
(3, 'Anthony', 'Russo'),
(4, 'Joe', 'Russo'),
(5, 'Jared', 'Bush'),
(6, 'Mejbaur', 'Rahman Sumon'),
(8, 'Lana', 'Wachowski'),
(9, 'George', 'Miller'),
(11, 'Jon', 'Watts'),
(13, 'S.S. Rajamouli', ''),
(14, 'Denis', 'Villeneuve'),
(15, 'Jon', 'Favreau'),
(16, 'George', 'Lucas'),
(17, ' Jonathan', ' Demme'),
(18, 'Roberto', ' Benigni'),
(20, 'Bong', ' Joon Ho'),
(21, 'Todd', ' Phillips'),
(22, 'Florian', ' Zeller'),
(23, 'Taika', 'Waititi'),
(24, 'Karan', 'Johar');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_name` char(20) NOT NULL,
  PRIMARY KEY (`genre_id`),
  UNIQUE KEY `genre_name` (`genre_name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES
(3, 'Action'),
(4, 'Adventure'),
(6, 'Animation'),
(7, 'Comedy'),
(5, 'Crime'),
(1, 'Drama'),
(8, 'Family'),
(12, 'Fantasy'),
(15, 'Musical'),
(9, 'Mystery'),
(14, 'Romance'),
(2, 'Sci-fi'),
(13, 'Thriller');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
CREATE TABLE IF NOT EXISTS `movie` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_title` char(50) NOT NULL,
  `movie_year` int(11) NOT NULL,
  `movie_time` int(11) NOT NULL,
  `movie_language` char(50) NOT NULL,
  `movie_release_date` date NOT NULL,
  `movie_release_country` char(5) NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movie_id`, `movie_title`, `movie_year`, `movie_time`, `movie_language`, `movie_release_date`, `movie_release_country`) VALUES
(1, 'The Shawshank Redemption', 1994, 142, 'English', '1994-09-19', 'USA'),
(2, 'The Dark Knight', 2008, 152, 'English', '2008-07-14', 'USA'),
(3, 'Avengers: Infinity War', 2018, 149, 'English', '2018-04-23', 'USA'),
(4, 'Encanto', 2021, 102, 'English', '2021-11-03', 'USA'),
(5, 'Hawa', 2020, 120, 'Bangla', '2022-07-29', 'BAN'),
(6, 'The Matrix', 1999, 136, 'English', '1999-03-24', 'USA'),
(7, 'Mad Max: Fury Road', 2015, 120, 'English', '2015-05-07', 'USA'),
(9, 'Spider-Man: No Way Home', 2021, 148, 'English', '2021-12-13', 'USA'),
(10, 'Tenet', 2020, 150, 'English', '2020-08-22', 'AUS'),
(11, 'Thor: Love and Thunder', 2022, 118, 'English', '2022-06-23', 'USA'),
(12, 'RRR', 2022, 187, 'English', '2022-06-01', 'USA'),
(13, 'Baahubali: The Beginning', 2015, 159, 'Tamil', '2015-07-10', 'IND'),
(14, 'Dune', 2021, 155, 'English', '2021-10-13', 'USA'),
(15, 'Iron Man', 2008, 126, 'English', '2008-04-30', 'USA'),
(16, 'Avengers: Endgame', 2019, 181, 'English', '2009-04-22', 'USA'),
(17, 'Star Wars', 1977, 121, ' English', '1977-05-25', 'USA'),
(18, 'The Silence of the Lambs', 1991, 118, 'English', '1991-01-30', 'USA'),
(19, 'Life Is Beautiful', 1997, 116, 'English', '1998-10-22', 'USA'),
(20, 'The Green Mile', 1999, 189, 'English', '1999-12-06', 'USA'),
(21, ' Parasite', 2019, 132, 'English', '2019-08-30', 'USA'),
(22, 'Joker', 2019, 122, 'English', '2019-09-28', 'USA'),
(23, 'The Father', 2020, 97, 'English', '2020-01-27', 'USA'),
(24, 'Kabhi Khushi Kabhie Gham...', 2001, 210, 'Hindi', '2001-12-14', 'IND');

-- --------------------------------------------------------

--
-- Table structure for table `movie_cast`
--

DROP TABLE IF EXISTS `movie_cast`;
CREATE TABLE IF NOT EXISTS `movie_cast` (
  `mc_id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `role` text NOT NULL,
  PRIMARY KEY (`mc_id`),
  KEY `actor_id` (`actor_id`),
  KEY `movie_id` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_cast`
--

INSERT INTO `movie_cast` (`mc_id`, `actor_id`, `movie_id`, `role`) VALUES
(1, 1, 1, 'Andy Dufresne'),
(2, 2, 1, 'Ellis Boyd \'Red\' Redding'),
(3, 3, 2, 'Bruce Wanyne'),
(4, 4, 2, 'Joker'),
(5, 5, 3, 'Tony Start / Iron Man'),
(6, 6, 3, 'Thor'),
(7, 7, 3, 'Bruce Banner / Hulk'),
(8, 8, 3, 'Steve Rogers/Captain America'),
(9, 9, 3, 'Natasha Romanoff/Black Widow'),
(10, 10, 4, 'Mirabel'),
(11, 11, 4, 'Abuela Alma'),
(12, 12, 4, 'Bruno'),
(13, 13, 5, 'Chan Majhi'),
(14, 14, 5, ''),
(16, 15, 6, 'Neo'),
(17, 16, 7, 'Max Rockatansky'),
(19, 18, 9, 'Peter Parker / Spider-Man'),
(21, 19, 10, 'Passenger'),
(22, 6, 11, 'Thor'),
(23, 3, 11, 'Gorr'),
(24, 32, 17, 'Luke Skywalker'),
(25, 33, 17, 'Han Solo'),
(26, 34, 17, 'Princess Leia Organa'),
(27, 20, 12, 'Komaram Bheem'),
(28, 21, 12, 'Alluri Sitarama Raju'),
(29, 22, 12, 'Venkata Rama Raju'),
(30, 23, 13, 'Baahubali'),
(31, 24, 13, 'Bhallaladeva'),
(32, 25, 13, 'Devasena'),
(33, 26, 14, 'Paul Atreides'),
(34, 27, 14, 'Lady Jessica Atreides'),
(35, 28, 14, 'Duke Leto Atreides'),
(36, 5, 15, 'Tony Stark'),
(37, 30, 15, 'Rhodey'),
(38, 31, 15, 'Pepper Potts'),
(39, 5, 16, 'Iron Man'),
(40, 8, 16, 'Captain'),
(41, 6, 16, 'Thor'),
(42, 35, 18, ' Clarice Starling'),
(43, 36, 18, 'Ardelia Mapp'),
(44, 37, 18, ' Jack Crawford'),
(45, 38, 19, ' Dora'),
(46, 39, 19, '  GiosuÃ©'),
(47, 40, 19, ' Madre di Dora'),
(48, 41, 20, ' Paul Edgecomb'),
(49, 42, 20, ' Brutus'),
(50, 43, 20, ' Jan Edgecomb'),
(51, 44, 21, ' Ki Taek'),
(52, 45, 21, ' Dong Ik'),
(53, 46, 21, ' Yeon Kyo'),
(54, 47, 22, ' Arthur Fleck'),
(55, 48, 22, ' Murray Franklin'),
(56, 49, 22, ' Sophie Dumond'),
(57, 51, 23, 'Anne'),
(58, 52, 23, 'Anthony'),
(59, 53, 23, 'The Man'),
(60, 54, 11, 'Jane Foster / The Mighty Thor'),
(61, 55, 24, 'Yashvardhan Raichand'),
(62, 56, 24, 'Rahul Raichand'),
(63, 57, 24, 'Anjali Sharma');

-- --------------------------------------------------------

--
-- Table structure for table `movie_direction`
--

DROP TABLE IF EXISTS `movie_direction`;
CREATE TABLE IF NOT EXISTS `movie_direction` (
  `md_id` int(11) NOT NULL AUTO_INCREMENT,
  `director_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  PRIMARY KEY (`md_id`),
  KEY `director_id` (`director_id`),
  KEY `movie_id` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_direction`
--

INSERT INTO `movie_direction` (`md_id`, `director_id`, `movie_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 3),
(5, 5, 4),
(6, 6, 5),
(7, 8, 6),
(8, 9, 7),
(10, 11, 9),
(11, 2, 10),
(12, 13, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 3, 16),
(17, 17, 18),
(18, 18, 19),
(19, 1, 20),
(20, 20, 21),
(21, 21, 22),
(22, 22, 23),
(23, 23, 11),
(24, 24, 24),
(25, 16, 17);

-- --------------------------------------------------------

--
-- Table structure for table `movie_genre`
--

DROP TABLE IF EXISTS `movie_genre`;
CREATE TABLE IF NOT EXISTS `movie_genre` (
  `mg_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`mg_id`),
  KEY `movie_id` (`movie_id`),
  KEY `genre_id` (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_genre`
--

INSERT INTO `movie_genre` (`mg_id`, `movie_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 2, 5),
(4, 2, 1),
(5, 3, 3),
(6, 3, 4),
(7, 3, 2),
(8, 4, 6),
(9, 4, 7),
(10, 4, 8),
(11, 5, 1),
(12, 5, 9),
(13, 6, 3),
(14, 6, 2),
(15, 7, 3),
(16, 7, 4),
(17, 7, 2),
(21, 9, 3),
(22, 9, 4),
(23, 9, 12),
(24, 10, 3),
(25, 10, 2),
(26, 10, 13),
(27, 11, 3),
(28, 11, 7),
(29, 11, 4),
(30, 17, 3),
(31, 17, 4),
(32, 17, 12),
(33, 12, 3),
(34, 12, 1),
(35, 13, 3),
(36, 13, 1),
(37, 14, 3),
(38, 14, 4),
(39, 14, 1),
(40, 14, 2),
(41, 15, 3),
(42, 15, 4),
(43, 15, 2),
(44, 16, 3),
(45, 16, 4),
(46, 16, 1),
(47, 16, 2),
(48, 18, 5),
(49, 18, 1),
(50, 18, 13),
(51, 19, 7),
(52, 19, 1),
(53, 19, 14),
(54, 20, 5),
(55, 20, 1),
(56, 20, 12),
(57, 21, 7),
(58, 21, 1),
(59, 21, 13),
(60, 22, 5),
(61, 22, 1),
(62, 22, 13),
(63, 23, 1),
(64, 23, 9),
(65, 24, 1),
(66, 24, 14),
(67, 24, 15);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie_cast`
--
ALTER TABLE `movie_cast`
  ADD CONSTRAINT `movie_cast_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`),
  ADD CONSTRAINT `movie_cast_ibfk_3` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`);

--
-- Constraints for table `movie_direction`
--
ALTER TABLE `movie_direction`
  ADD CONSTRAINT `movie_direction_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `director` (`director_id`),
  ADD CONSTRAINT `movie_direction_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`);

--
-- Constraints for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`),
  ADD CONSTRAINT `movie_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
