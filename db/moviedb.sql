-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 26, 2022 at 03:19 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

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
(19, 'Juhan', 'Ulfsak', 'm');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

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
(11, ' Jon', 'Watts'),
(12, 'Christopher', 'Nolan');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

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
(9, 'Mystery'),
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

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
(10, 'Tenet', 2020, 150, 'English', '2020-08-22', 'AUS');

-- --------------------------------------------------------

--
-- Table structure for table `movie_cast`
--

DROP TABLE IF EXISTS `movie_cast`;
CREATE TABLE IF NOT EXISTS `movie_cast` (
  `mc_id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `role` char(30) NOT NULL,
  PRIMARY KEY (`mc_id`),
  KEY `actor_id` (`actor_id`),
  KEY `movie_id` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

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
(21, 19, 10, 'Passenger');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

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
(11, 12, 10);

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

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
(26, 10, 13);

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
