-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 04:33 PM
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
-- Database: `statify`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `albumID` varchar(30) NOT NULL,
  `album_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`albumID`, `album_name`) VALUES
('0bUTHlWbkSQysoM3VsWldT', 'Demon Days'),
('274YHaMmctXWht39Olh8ub', 'Maladroit'),
('2kCDZ3gCr5hXFgbFsPMcxP', 'House of Sugar'),
('3mH6qwIy9crq0I9YQbOuDf', 'Blonde'),
('4I5zzKYd2SKDgZ9DRf5LVk', '\"Heroes\" (2017 Remaster)'),
('5I9K0u8r52jp4Y2bF8mOaz', 'Song Machine, Season One: Strange Timez (Deluxe)'),
('5pWTwcfZTdSPtOd1u48Q1o', 'Velouria'),
('5wnCTZtzIZxasRSHzI1JeW', 'Heaven To A Tortured Mind'),
('6mm1Skz3JE6AXneya9Nyiv', 'Oracular Spectacular'),
('7BbRSUBwTB37ut0Ht3yAqt', 'Joy as an Act of Resistance.'),
('7JcfNKXoHSaog85a1hd4lx', 'Vampire Weekend');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artistID` varchar(30) NOT NULL,
  `artist_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artistID`, `artist_name`) VALUES
('0oSGxfWSnnOXhD2fKuz2Gy', 'David Bowie'),
('0qu422H5MOoQxGjd4IzHbS', 'Yves Tumor'),
('0SwO7SWeDHJijQ3XNS7xEE', 'MGMT'),
('2h93pZq0e7k5yf4dywlkpM', 'Frank Ocean'),
('3AA28KZvwAUcZuOKwyblJQ', 'Gorillaz'),
('3jOstUTkEu2JkjvRdBA5Gu', 'Weezer'),
('5BvJzeQpmsdsFp4HGUYUEx', 'Vampire Weekend'),
('6lcwlkAjBPSKnFBZjjZFJs', 'Alex G'),
('6zvul52xwTWzilBZl6BUbT', 'Pixies'),
('75mafsNqNE1WSEVxIKuY5C', 'IDLES');

-- --------------------------------------------------------

--
-- Table structure for table `artist_genre`
--

CREATE TABLE `artist_genre` (
  `artistID` varchar(30) NOT NULL,
  `genre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist_genre`
--

INSERT INTO `artist_genre` (`artistID`, `genre`) VALUES
('2h93pZq0e7k5yf4dywlkpM', 'hip hop'),
('2h93pZq0e7k5yf4dywlkpM', 'lgbtq+ hip hop'),
('2h93pZq0e7k5yf4dywlkpM', 'neo soul'),
('2h93pZq0e7k5yf4dywlkpM', 'pop'),
('0oSGxfWSnnOXhD2fKuz2Gy', 'art rock'),
('0oSGxfWSnnOXhD2fKuz2Gy', 'classic rock'),
('0oSGxfWSnnOXhD2fKuz2Gy', 'glam rock'),
('0oSGxfWSnnOXhD2fKuz2Gy', 'permanent wave'),
('0oSGxfWSnnOXhD2fKuz2Gy', 'rock'),
('0qu422H5MOoQxGjd4IzHbS', 'alternative r&b'),
('0qu422H5MOoQxGjd4IzHbS', 'art pop'),
('0qu422H5MOoQxGjd4IzHbS', 'escape room'),
('0qu422H5MOoQxGjd4IzHbS', 'experimental r&b'),
('0SwO7SWeDHJijQ3XNS7xEE', 'alternative dance'),
('0SwO7SWeDHJijQ3XNS7xEE', 'indietronica'),
('0SwO7SWeDHJijQ3XNS7xEE', 'modern rock'),
('0SwO7SWeDHJijQ3XNS7xEE', 'rock'),
('3AA28KZvwAUcZuOKwyblJQ', 'alternative hip hop'),
('3jOstUTkEu2JkjvRdBA5Gu', 'alternative rock'),
('3jOstUTkEu2JkjvRdBA5Gu', 'modern power pop'),
('3jOstUTkEu2JkjvRdBA5Gu', 'modern rock'),
('3jOstUTkEu2JkjvRdBA5Gu', 'permanent wave'),
('3jOstUTkEu2JkjvRdBA5Gu', 'rock'),
('5BvJzeQpmsdsFp4HGUYUEx', ''),
('0oSGxfWSnnOXhD2fKuz2Gy', 'art rock'),
('0oSGxfWSnnOXhD2fKuz2Gy', 'classic rock'),
('0oSGxfWSnnOXhD2fKuz2Gy', 'glam rock'),
('0oSGxfWSnnOXhD2fKuz2Gy', 'permanent wave'),
('0oSGxfWSnnOXhD2fKuz2Gy', 'rock'),
('0qu422H5MOoQxGjd4IzHbS', 'alternative r&b'),
('0qu422H5MOoQxGjd4IzHbS', 'art pop'),
('0qu422H5MOoQxGjd4IzHbS', 'escape room'),
('0qu422H5MOoQxGjd4IzHbS', 'experimental r&b'),
('0SwO7SWeDHJijQ3XNS7xEE', 'alternative dance'),
('0SwO7SWeDHJijQ3XNS7xEE', 'indietronica'),
('0SwO7SWeDHJijQ3XNS7xEE', 'modern rock'),
('0SwO7SWeDHJijQ3XNS7xEE', 'rock'),
('3AA28KZvwAUcZuOKwyblJQ', 'alternative hip hop'),
('3jOstUTkEu2JkjvRdBA5Gu', 'alternative rock'),
('3jOstUTkEu2JkjvRdBA5Gu', 'modern power pop'),
('3jOstUTkEu2JkjvRdBA5Gu', 'modern rock'),
('3jOstUTkEu2JkjvRdBA5Gu', 'permanent wave'),
('3jOstUTkEu2JkjvRdBA5Gu', 'rock'),
('5BvJzeQpmsdsFp4HGUYUEx', 'baroque pop'),
('5BvJzeQpmsdsFp4HGUYUEx', 'indie rock'),
('5BvJzeQpmsdsFp4HGUYUEx', 'modern rock'),
('5BvJzeQpmsdsFp4HGUYUEx', 'rock'),
('6lcwlkAjBPSKnFBZjjZFJs', 'indie pop'),
('6lcwlkAjBPSKnFBZjjZFJs', 'philly indie'),
('6zvul52xwTWzilBZl6BUbT', 'alternative rock'),
('6zvul52xwTWzilBZl6BUbT', 'boston rock'),
('6zvul52xwTWzilBZl6BUbT', 'modern rock'),
('6zvul52xwTWzilBZl6BUbT', 'permanent wave'),
('6zvul52xwTWzilBZl6BUbT', 'rock'),
('75mafsNqNE1WSEVxIKuY5C', 'bristol indie'),
('75mafsNqNE1WSEVxIKuY5C', 'modern rock');

-- --------------------------------------------------------

--
-- Table structure for table `contains`
--

CREATE TABLE `contains` (
  `playlistID` varchar(30) NOT NULL,
  `songID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contains`
--

INSERT INTO `contains` (`playlistID`, `songID`) VALUES
('1', '17yrCsl1Ai6CZLBmGj6d6p'),
('1', '19YKaevk2bce4odJkP5L22'),
('1', '1BViPjTT585XAhkUUrkts0'),
('1', '1IdZvb2XK8NmsovQlV6CPn'),
('1', '1VZLEW5ZfcAbKZ94XQiSZF'),
('1', '2JUqYobT8NvARdPmc4ES2x'),
('1', '2LMkwUfqC6S6s6qDVlEuzV'),
('1', '2qtoRFCOEL1gRn5q9DJC7F'),
('1', '2ZWlPOoWh0626oTaHrnl2a'),
('1', '34xTFwjPQ1dC6uJmleno7x'),
('1', '35xSkNIXi504fcEwz9USRB'),
('1', '3xKsf9qdS1CyvXSMEid6g8'),
('1', '4xR3MAscflQ262kMeiKshQ'),
('1', '5GUYJTQap5F3RDQiCOJhrS'),
('1', '5k8LB57xOq8UUNVaKWSqrf'),
('1', '73D5hBkiVZkopZrmBZTBWf'),
('1', '7eqoqGkKwgOaWNNHx90uEZ'),
('2', '3FtYbEfBqAlGO46NUDQSAt'),
('2', '46LX0sSwIU4GFLcj23ZfMA'),
('2', '6EyRxPp1m7f4jHhLavfAdZ'),
('2', '1ytYTPuKbW0NIXb2kgmSVq'),
('2', '36zqSzaPzQWZYDCNm1klgY'),
('2', '25Gp0MpGdvrs4hL1u4L2TF'),
('2', '1595LW73XBxkRk2ciQOHfr'),
('2', '7Jh1bpe76CNTCgdgAdBw4Z'),
('2', '0d28khcov6AiegSCpG5TuT'),
('2', '20Mof2MdzPJX1QfE8Ojdla'),
('3', '2LMkwUfqC6S6s6qDVlEuzV'),
('3', '1ytYTPuKbW0NIXb2kgmSVq'),
('3', '35xSkNIXi504fcEwz9USRB'),
('3', '20Mof2MdzPJX1QfE8Ojdla'),
('3', '2ZWlPOoWh0626oTaHrnl2a'),
('4', '7eqoqGkKwgOaWNNHx90uEZ'),
('4', '25Gp0MpGdvrs4hL1u4L2TF'),
('4', '3FtYbEfBqAlGO46NUDQSAt'),
('4', '46LX0sSwIU4GFLcj23ZfMA'),
('4', '1595LW73XBxkRk2ciQOHfr'),
('4', '0d28khcov6AiegSCpG5TuT'),
('4', '6EyRxPp1m7f4jHhLavfAdZ');

-- --------------------------------------------------------

--
-- Table structure for table `made`
--

CREATE TABLE `made` (
  `albumID` varchar(30) NOT NULL,
  `artistID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `made`
--

INSERT INTO `made` (`albumID`, `artistID`) VALUES
('0bUTHlWbkSQysoM3VsWldT', '3AA28KZvwAUcZuOKwyblJQ'),
('274YHaMmctXWht39Olh8ub', '3jOstUTkEu2JkjvRdBA5Gu'),
('2kCDZ3gCr5hXFgbFsPMcxP', '6lcwlkAjBPSKnFBZjjZFJs'),
('3mH6qwIy9crq0I9YQbOuDf', '2h93pZq0e7k5yf4dywlkpM'),
('4I5zzKYd2SKDgZ9DRf5LVk', '0oSGxfWSnnOXhD2fKuz2Gy'),
('5I9K0u8r52jp4Y2bF8mOaz', '3AA28KZvwAUcZuOKwyblJQ'),
('5pWTwcfZTdSPtOd1u48Q1o', '6zvul52xwTWzilBZl6BUbT'),
('5wnCTZtzIZxasRSHzI1JeW', '0qu422H5MOoQxGjd4IzHbS'),
('6mm1Skz3JE6AXneya9Nyiv', '0SwO7SWeDHJijQ3XNS7xEE'),
('7BbRSUBwTB37ut0Ht3yAqt', '75mafsNqNE1WSEVxIKuY5C'),
('7JcfNKXoHSaog85a1hd4lx', '5BvJzeQpmsdsFp4HGUYUEx');

-- --------------------------------------------------------

--
-- Table structure for table `owns`
--

CREATE TABLE `owns` (
  `playlistID` int(11) NOT NULL,
  `userID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owns`
--

INSERT INTO `owns` (`playlistID`, `userID`) VALUES
(1, '1'),
(2, '2'),
(3, '4'),
(4, '3');

-- --------------------------------------------------------

--
-- Table structure for table `part_of`
--

CREATE TABLE `part_of` (
  `songID` varchar(30) NOT NULL,
  `albumID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `part_of`
--

INSERT INTO `part_of` (`songID`, `albumID`) VALUES
('0d28khcov6AiegSCpG5TuT', '0bUTHlWbkSQysoM3VsWldT'),
('1595LW73XBxkRk2ciQOHfr', '7JcfNKXoHSaog85a1hd4lx'),
('17yrCsl1Ai6CZLBmGj6d6p', '3mH6qwIy9crq0I9YQbOuDf'),
('19YKaevk2bce4odJkP5L22', '3mH6qwIy9crq0I9YQbOuDf'),
('1BViPjTT585XAhkUUrkts0', '3mH6qwIy9crq0I9YQbOuDf'),
('1IdZvb2XK8NmsovQlV6CPn', '3mH6qwIy9crq0I9YQbOuDf'),
('1VZLEW5ZfcAbKZ94XQiSZF', '3mH6qwIy9crq0I9YQbOuDf'),
('1ytYTPuKbW0NIXb2kgmSVq', '274YHaMmctXWht39Olh8ub'),
('20Mof2MdzPJX1QfE8Ojdla', '5pWTwcfZTdSPtOd1u48Q1o'),
('25Gp0MpGdvrs4hL1u4L2TF', '5I9K0u8r52jp4Y2bF8mOaz'),
('2JUqYobT8NvARdPmc4ES2x', '3mH6qwIy9crq0I9YQbOuDf'),
('2LMkwUfqC6S6s6qDVlEuzV', '3mH6qwIy9crq0I9YQbOuDf'),
('2qtoRFCOEL1gRn5q9DJC7F', '3mH6qwIy9crq0I9YQbOuDf'),
('2ZWlPOoWh0626oTaHrnl2a', '3mH6qwIy9crq0I9YQbOuDf'),
('34xTFwjPQ1dC6uJmleno7x', '3mH6qwIy9crq0I9YQbOuDf'),
('35xSkNIXi504fcEwz9USRB', '3mH6qwIy9crq0I9YQbOuDf'),
('36zqSzaPzQWZYDCNm1klgY', '2kCDZ3gCr5hXFgbFsPMcxP'),
('3FtYbEfBqAlGO46NUDQSAt', '6mm1Skz3JE6AXneya9Nyiv'),
('3xKsf9qdS1CyvXSMEid6g8', '3mH6qwIy9crq0I9YQbOuDf'),
('46LX0sSwIU4GFLcj23ZfMA', '5wnCTZtzIZxasRSHzI1JeW'),
('4xR3MAscflQ262kMeiKshQ', '3mH6qwIy9crq0I9YQbOuDf'),
('5GUYJTQap5F3RDQiCOJhrS', '3mH6qwIy9crq0I9YQbOuDf'),
('5k8LB57xOq8UUNVaKWSqrf', '3mH6qwIy9crq0I9YQbOuDf'),
('6EyRxPp1m7f4jHhLavfAdZ', '7BbRSUBwTB37ut0Ht3yAqt'),
('73D5hBkiVZkopZrmBZTBWf', '3mH6qwIy9crq0I9YQbOuDf'),
('7eqoqGkKwgOaWNNHx90uEZ', '3mH6qwIy9crq0I9YQbOuDf'),
('7Jh1bpe76CNTCgdgAdBw4Z', '4I5zzKYd2SKDgZ9DRf5LVk');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `playlistID` int(11) NOT NULL,
  `playlist_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`playlistID`, `playlist_name`) VALUES
(1, 'Joseph\'s Jams'),
(2, 'Summer Songs'),
(3, 'Study Songs'),
(4, 'Party Playlist');

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `songID` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `duration` int(11) NOT NULL,
  `instrumentalness` double NOT NULL,
  `loudness` double NOT NULL,
  `danceability` double NOT NULL,
  `tempo` double NOT NULL,
  `energy` double NOT NULL,
  `song_key` int(11) NOT NULL,
  `valence` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`songID`, `name`, `duration`, `instrumentalness`, `loudness`, `danceability`, `tempo`, `energy`, `song_key`, `valence`) VALUES
('0d28khcov6AiegSCpG5TuT', 'Feel Good Inc.', 222640, 0.00233, -6.679, 0.818, 138.559, 0.705, 6, 0.772),
('1595LW73XBxkRk2ciQOHfr', 'A-Punk', 137760, 0.0543, -4.478, 0.548, 174.993, 0.816, 2, 0.857),
('17yrCsl1Ai6CZLBmGj6d6p', 'Pretty Sweet', 158478, 0.0252, -6.742, 0.202, 154.037, 0.724, 0, 0.165),
('19YKaevk2bce4odJkP5L22', 'Nikes', 314075, 0.000222, -9.638, 0.633, 138.023, 0.395, 8, 0.123),
('1BViPjTT585XAhkUUrkts0', 'Seigfried', 334570, 0.000259, -11.155, 0.377, 125.403, 0.253, 4, 0.367),
('1IdZvb2XK8NmsovQlV6CPn', 'Be Yourself', 86944, 0, -11.143, 0.746, 88.413, 0.429, 7, 0.932),
('1VZLEW5ZfcAbKZ94XQiSZF', 'Close To You', 85754, 0.0013, -8.401, 0.855, 77.978, 0.663, 5, 0.815),
('1ytYTPuKbW0NIXb2kgmSVq', 'Burndt Jamb', 158592, 0.000686, -8.062, 0.591, 97.696, 0.666, 11, 0.451),
('20Mof2MdzPJX1QfE8Ojdla', 'The Thing', 119493, 0.00205, -9.068, 0.736, 109.733, 0.572, 0, 0.89),
('25Gp0MpGdvrs4hL1u4L2TF', 'Aries (feat. Peter Hook and Georgia)', 253333, 0.0844, -7.801, 0.615, 120.006, 0.667, 2, 0.795),
('2JUqYobT8NvARdPmc4ES2x', 'Good Guy', 66786, 0.00433, -12.787, 0.525, 107.007, 0.131, 0, 0.811),
('2LMkwUfqC6S6s6qDVlEuzV', 'White Ferrari', 248808, 0, -15.605, 0.501, 108.741, 0.0958, 0, 108.741),
('2qtoRFCOEL1gRn5q9DJC7F', 'Solo (Reprise)', 78743, 0, -6.811, 0.669, 80.169, 0.749, 7, 0.608),
('2ZWlPOoWh0626oTaHrnl2a', 'Ivy', 249191, 0.000289, -9.584, 0.575, 116.408, 0.386, 9, 0.466),
('34xTFwjPQ1dC6uJmleno7x', 'Godspeed', 177922, 0.000168, -12.578, 0.399, 109.54, 0.0969, 6, 0.0758),
('35xSkNIXi504fcEwz9USRB', 'Solo', 257380, 0.00000248, -10.625, 0.469, 133.805, 0.289, 5, 0.258),
('36zqSzaPzQWZYDCNm1klgY', 'Gretel', 190218, 0.469, -6.172, 0.449, 140.078, 0.875, 8, 0.43),
('3FtYbEfBqAlGO46NUDQSAt', 'Electric Feel', 229640, 0.285, -3.713, 0.763, 103.04, 0.803, 1, 0.561),
('3xKsf9qdS1CyvXSMEid6g8', 'Pink + White', 184516, 0.0000548, -7.362, 0.545, 159.94, 0.545, 9, 0.549),
('46LX0sSwIU4GFLcj23ZfMA', 'Gospel For a New Century', 198627, 0.00000306, -6.715, 0.565, 178.078, 0.726, 0, 0.715),
('4xR3MAscflQ262kMeiKshQ', 'Skyline To', 184600, 0.00000621, -13.645, 0.43, 129.048, 0.296, 3, 0.386),
('5GUYJTQap5F3RDQiCOJhrS', 'Self Control', 249668, 0, -10.426, 0.581, 80.099, 0.21, 8, 0.452),
('5k8LB57xOq8UUNVaKWSqrf', 'Futura Free', 564166, 0.0000937, -12.364, 0.266, 83.434, 0.678, 1, 0.201),
('6EyRxPp1m7f4jHhLavfAdZ', 'I\'m Scum', 189976, 0.000192, -3.66, 0.534, 116.031, 0.854, 11, 0.484),
('73D5hBkiVZkopZrmBZTBWf', 'Facebook Story', 68588, 0, -20.55, 0.526, 81.993, 0.179, 0, 0.698),
('7eqoqGkKwgOaWNNHx90uEZ', 'Nights', 307151, 0.00000115, -9.36, 0.457, 89.87, 0.551, 5, 0.428),
('7Jh1bpe76CNTCgdgAdBw4Z', 'Heroes - 2017 Remaster', 371413, 0.49, -6.491, 0.489, 112.113, 0.758, 7, 0.435);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `spotify_username` varchar(30) NOT NULL,
  CONSTRAINT validEmail CHECK (`email` LIKE '_%@_%._%') 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `first_name`, `last_name`, `email`, `spotify_username`) VALUES
(1, 'Joseph', 'Paquin', 'jjp2atm@virginia.edu', 'jjp2404'),
(2, 'Michael', 'Vaden', 'mtv2eva@virginia.edu', 'michael_vaden'),
(3, 'Ethan', 'Ashley', 'ea9qjn@virginia.edu', 'ethan_ashley'),
(4, 'Jacob', 'Rice', 'jwr5ky@virginia.edu', 'jacob_rice');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumID`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artistID`);

--
-- Indexes for table `made`
--
ALTER TABLE `made`
  ADD PRIMARY KEY (`albumID`);

--
-- Indexes for table `owns`
--
ALTER TABLE `owns`
  ADD PRIMARY KEY (`playlistID`);

--
-- Indexes for table `part_of`
--
ALTER TABLE `part_of`
  ADD PRIMARY KEY (`songID`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`playlistID`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`songID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `playlistID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

DELIMITER $$
CREATE PROCEDURE maxDurationAlbum(IN albumName varchar(50))
SELECT S.name, A.maxStat
FROM song AS S,
	(SELECT name, MAX(song.duration) AS maxStat
	FROM album NATURAL JOIN part_of NATURAL JOIN song
	WHERE album_name = albumName) as A
WHERE S.duration = A.maxStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE minDurationAlbum(IN albumName varchar(50))
SELECT S.name, A.minStat
FROM song AS S,
	(SELECT name, MIN(song.duration) AS minStat
	FROM Album NATURAL JOIN Part_of NATURAL JOIN Song
	WHERE album_name = albumName) as A
WHERE S.duration = A.minStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE maxDurationPlaylist(IN playlistName varchar(50))
SELECT S.name, P.maxStat
FROM song AS S,
    (SELECT name, MAX(song.duration) AS maxStat
    FROM playlist NATURAL JOIN contains NATURAL JOIN song
    WHERE playlist_name = playlistName) as P
WHERE S.duration = P.maxStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE minDurationPlaylist(IN playlistName varchar(50))
SELECT S.name, P.minStat
FROM song AS S,
  (SELECT name, MIN(song.duration) AS minStat
  FROM playlist NATURAL JOIN contains NATURAL JOIN song
  WHERE playlist_name = playlistName) as P
WHERE S.duration = P.minStat;
$$
DELIMITER ;

-- instrumentalness --

DELIMITER $$
CREATE PROCEDURE maxInstrumentalnessAlbum(IN albumName varchar(50))
SELECT S.name, A.maxStat
FROM song AS S,
	(SELECT name, MAX(song.instrumentalness) AS maxStat
	FROM album NATURAL JOIN part_of NATURAL JOIN song
	WHERE album_name = albumName) as A
WHERE S.instrumentalness = A.maxStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE minInstrumentalnessAlbum(IN albumName varchar(50))
SELECT S.name, A.minStat
FROM song AS S,
	(SELECT name, MIN(song.instrumentalness) AS minStat
	FROM Album NATURAL JOIN Part_of NATURAL JOIN Song
	WHERE album_name = albumName) as A
WHERE S.instrumentalness = A.minStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE maxInstrumentalnessPlaylist(IN playlistName varchar(50))
SELECT S.name, P.maxStat
FROM song AS S,
    (SELECT name, MAX(song.instrumentalness) AS maxStat
    FROM playlist NATURAL JOIN contains NATURAL JOIN song
    WHERE playlist_name = playlistName) as P
WHERE S.instrumentalness = P.maxStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE minInstrumentalnessPlaylist(IN playlistName varchar(50))
SELECT S.name, P.minStat
FROM song AS S,
  (SELECT name, MIN(song.instrumentalness) AS minStat
  FROM playlist NATURAL JOIN contains NATURAL JOIN song
  WHERE playlist_name = playlistName) as P
WHERE S.instrumentalness = P.minStat;
$$
DELIMITER ;

-- loudness --

DELIMITER $$
CREATE PROCEDURE maxLoudnessAlbum(IN albumName varchar(50))
SELECT S.name, A.maxStat
FROM song AS S,
	(SELECT name, MAX(song.loudness) AS maxStat
	FROM album NATURAL JOIN part_of NATURAL JOIN song
	WHERE album_name = albumName) as A
WHERE S.loudness = A.maxStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE minLoudnessAlbum(IN albumName varchar(50))
SELECT S.name, A.minStat
FROM song AS S,
	(SELECT name, MIN(song.loudness) AS minStat
	FROM Album NATURAL JOIN Part_of NATURAL JOIN Song
	WHERE album_name = albumName) as A
WHERE S.loudness = A.minStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE maxLoudnessPlaylist(IN playlistName varchar(50))
SELECT S.name, P.maxStat
FROM song AS S,
    (SELECT name, MAX(song.loudness) AS maxStat
    FROM playlist NATURAL JOIN contains NATURAL JOIN song
    WHERE playlist_name = playlistName) as P
WHERE S.loudness = P.maxStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE minLoudnessPlaylist(IN playlistName varchar(50))
SELECT S.name, P.minStat
FROM song AS S,
  (SELECT name, MIN(song.loudness) AS minStat
  FROM playlist NATURAL JOIN contains NATURAL JOIN song
  WHERE playlist_name = playlistName) as P
WHERE S.loudness = P.minStat;
$$
DELIMITER ;

-- danceability --

DELIMITER $$
CREATE PROCEDURE maxDanceabilityAlbum(IN albumName varchar(50))
SELECT S.name, A.maxStat
FROM song AS S,
	(SELECT name, MAX(song.danceability) AS maxStat
	FROM album NATURAL JOIN part_of NATURAL JOIN song
	WHERE album_name = albumName) as A
WHERE S.danceability = A.maxStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE minDanceabilityAlbum(IN albumName varchar(50))
SELECT S.name, A.minStat
FROM song AS S,
	(SELECT name, MIN(song.danceability) AS minStat
	FROM Album NATURAL JOIN Part_of NATURAL JOIN Song
	WHERE album_name = albumName) as A
WHERE S.danceability = A.minStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE maxDanceabilityPlaylist(IN playlistName varchar(50))
SELECT S.name, P.maxStat
FROM song AS S,
    (SELECT name, MAX(song.danceability) AS maxStat
    FROM playlist NATURAL JOIN contains NATURAL JOIN song
    WHERE playlist_name = playlistName) as P
WHERE S.danceability = P.maxStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE minDanceabilityPlaylist(IN playlistName varchar(50))
SELECT S.name, P.minStat
FROM song AS S,
  (SELECT name, MIN(song.danceability) AS minStat
  FROM playlist NATURAL JOIN contains NATURAL JOIN song
  WHERE playlist_name = playlistName) as P
WHERE S.danceability = P.minStat;
$$
DELIMITER ;

-- tempo --

DELIMITER $$
CREATE PROCEDURE maxTempoAlbum(IN albumName varchar(50))
SELECT S.name, A.maxStat
FROM song AS S,
	(SELECT name, MAX(song.tempo) AS maxStat
	FROM album NATURAL JOIN part_of NATURAL JOIN song
	WHERE album_name = albumName) as A
WHERE S.tempo = A.maxStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE minTempoAlbum(IN albumName varchar(50))
SELECT S.name, A.minStat
FROM song AS S,
	(SELECT name, MIN(song.tempo) AS minStat
	FROM Album NATURAL JOIN Part_of NATURAL JOIN Song
	WHERE album_name = albumName) as A
WHERE S.tempo = A.minStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE maxTempoPlaylist(IN playlistName varchar(50))
SELECT S.name, P.maxStat
FROM song AS S,
    (SELECT name, MAX(song.tempo) AS maxStat
    FROM playlist NATURAL JOIN contains NATURAL JOIN song
    WHERE playlist_name = playlistName) as P
WHERE S.tempo = P.maxStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE minTempoPlaylist(IN playlistName varchar(50))
SELECT S.name, P.minStat
FROM song AS S,
  (SELECT name, MIN(song.tempo) AS minStat
  FROM playlist NATURAL JOIN contains NATURAL JOIN song
  WHERE playlist_name = playlistName) as P
WHERE S.tempo = P.minStat;
$$
DELIMITER ;

-- energy --

DELIMITER $$
CREATE PROCEDURE maxEnergyAlbum(IN albumName varchar(50))
SELECT S.name, A.maxStat
FROM song AS S,
	(SELECT name, MAX(song.energy) AS maxStat
	FROM album NATURAL JOIN part_of NATURAL JOIN song
	WHERE album_name = albumName) as A
WHERE S.energy = A.maxStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE minEnergyAlbum(IN albumName varchar(50))
SELECT S.name, A.minStat
FROM song AS S,
	(SELECT name, MIN(song.energy) AS minStat
	FROM Album NATURAL JOIN Part_of NATURAL JOIN Song
	WHERE album_name = albumName) as A
WHERE S.energy = A.minStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE maxEnergyPlaylist(IN playlistName varchar(50))
SELECT S.name, P.maxStat
FROM song AS S,
    (SELECT name, MAX(song.energy) AS maxStat
    FROM playlist NATURAL JOIN contains NATURAL JOIN song
    WHERE playlist_name = playlistName) as P
WHERE S.energy = P.maxStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE minEnergyPlaylist(IN playlistName varchar(50))
SELECT S.name, P.minStat
FROM song AS S,
  (SELECT name, MIN(song.energy) AS minStat
  FROM playlist NATURAL JOIN contains NATURAL JOIN song
  WHERE playlist_name = playlistName) as P
WHERE S.energy = P.minStat;
$$
DELIMITER ;

-- valence --

DELIMITER $$
CREATE PROCEDURE maxDValenceAlbum(IN albumName varchar(50))
SELECT S.name, A.maxStat
FROM song AS S,
	(SELECT name, MAX(song.valence) AS maxStat
	FROM album NATURAL JOIN part_of NATURAL JOIN song
	WHERE album_name = albumName) as A
WHERE S.valence = A.maxStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE minValenceAlbum(IN albumName varchar(50))
SELECT S.name, A.minStat
FROM song AS S,
	(SELECT name, MIN(song.valence) AS minStat
	FROM Album NATURAL JOIN Part_of NATURAL JOIN Song
	WHERE album_name = albumName) as A
WHERE S.valence = A.minStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE maxValencePlaylist(IN playlistName varchar(50))
SELECT S.name, P.maxStat
FROM song AS S,
    (SELECT name, MAX(song.valence) AS maxStat
    FROM playlist NATURAL JOIN contains NATURAL JOIN song
    WHERE playlist_name = playlistName) as P
WHERE S.valence = P.maxStat;
$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE minValencePlaylist(IN playlistName varchar(50))
SELECT S.name, P.minStat
FROM song AS S,
  (SELECT name, MIN(song.valence) AS minStat
  FROM playlist NATURAL JOIN contains NATURAL JOIN song
  WHERE playlist_name = playlistName) as P
WHERE S.valence = P.minStat;
$$
DELIMITER ;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;