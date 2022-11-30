-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 05:43 AM
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

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `maxDanceabilityAlbum` (IN `albumName` VARCHAR(50))   SELECT S.name, A.maxStat
FROM song AS S,
	(SELECT name, MAX(song.danceability) AS maxStat
	FROM album NATURAL JOIN part_of NATURAL JOIN song
	WHERE album_name = albumName) as A
WHERE S.danceability = A.maxStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `maxDanceabilityPlaylist` (IN `playlistName` VARCHAR(50))   SELECT S.name, P.maxStat
FROM song AS S,
    (SELECT name, MAX(song.danceability) AS maxStat
    FROM playlist NATURAL JOIN contains NATURAL JOIN song
    WHERE playlist_name = playlistName) as P
WHERE S.danceability = P.maxStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `maxDurationAlbum` (IN `albumName` VARCHAR(50))   SELECT S.name, A.maxStat
FROM song AS S,
	(SELECT name, MAX(song.duration) AS maxStat
	FROM album NATURAL JOIN part_of NATURAL JOIN song
	WHERE album_name = albumName) as A
WHERE S.duration = A.maxStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `maxDurationPlaylist` (IN `playlistName` VARCHAR(50))   SELECT S.name, P.maxStat
FROM song AS S,
    (SELECT name, MAX(song.duration) AS maxStat
    FROM playlist NATURAL JOIN contains NATURAL JOIN song
    WHERE playlist_name = playlistName) as P
WHERE S.duration = P.maxStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `maxValenceAlbum` (IN `albumName` VARCHAR(50))   SELECT S.name, A.maxStat
FROM song AS S,
	(SELECT name, MAX(song.valence) AS maxStat
	FROM album NATURAL JOIN part_of NATURAL JOIN song
	WHERE album_name = albumName) as A
WHERE S.valence = A.maxStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `maxEnergyAlbum` (IN `albumName` VARCHAR(50))   SELECT S.name, A.maxStat
FROM song AS S,
	(SELECT name, MAX(song.energy) AS maxStat
	FROM album NATURAL JOIN part_of NATURAL JOIN song
	WHERE album_name = albumName) as A
WHERE S.energy = A.maxStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `maxEnergyPlaylist` (IN `playlistName` VARCHAR(50))   SELECT S.name, P.maxStat
FROM song AS S,
    (SELECT name, MAX(song.energy) AS maxStat
    FROM playlist NATURAL JOIN contains NATURAL JOIN song
    WHERE playlist_name = playlistName) as P
WHERE S.energy = P.maxStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `maxInstrumentalnessAlbum` (IN `albumName` VARCHAR(50))   SELECT S.name, A.maxStat
FROM song AS S,
	(SELECT name, MAX(song.instrumentalness) AS maxStat
	FROM album NATURAL JOIN part_of NATURAL JOIN song
	WHERE album_name = albumName) as A
WHERE S.instrumentalness = A.maxStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `maxInstrumentalnessPlaylist` (IN `playlistName` VARCHAR(50))   SELECT S.name, P.maxStat
FROM song AS S,
    (SELECT name, MAX(song.instrumentalness) AS maxStat
    FROM playlist NATURAL JOIN contains NATURAL JOIN song
    WHERE playlist_name = playlistName) as P
WHERE S.instrumentalness = P.maxStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `maxLoudnessAlbum` (IN `albumName` VARCHAR(50))   SELECT S.name, A.maxStat
FROM song AS S,
	(SELECT name, MAX(song.loudness) AS maxStat
	FROM album NATURAL JOIN part_of NATURAL JOIN song
	WHERE album_name = albumName) as A
WHERE S.loudness = A.maxStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `maxLoudnessPlaylist` (IN `playlistName` VARCHAR(50))   SELECT S.name, P.maxStat
FROM song AS S,
    (SELECT name, MAX(song.loudness) AS maxStat
    FROM playlist NATURAL JOIN contains NATURAL JOIN song
    WHERE playlist_name = playlistName) as P
WHERE S.loudness = P.maxStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `maxTempoAlbum` (IN `albumName` VARCHAR(50))   SELECT S.name, A.maxStat
FROM song AS S,
	(SELECT name, MAX(song.tempo) AS maxStat
	FROM album NATURAL JOIN part_of NATURAL JOIN song
	WHERE album_name = albumName) as A
WHERE S.tempo = A.maxStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `maxTempoPlaylist` (IN `playlistName` VARCHAR(50))   SELECT S.name, P.maxStat
FROM song AS S,
    (SELECT name, MAX(song.tempo) AS maxStat
    FROM playlist NATURAL JOIN contains NATURAL JOIN song
    WHERE playlist_name = playlistName) as P
WHERE S.tempo = P.maxStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `maxValencePlaylist` (IN `playlistName` VARCHAR(50))   SELECT S.name, P.maxStat
FROM song AS S,
    (SELECT name, MAX(song.valence) AS maxStat
    FROM playlist NATURAL JOIN contains NATURAL JOIN song
    WHERE playlist_name = playlistName) as P
WHERE S.valence = P.maxStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `minDanceabilityAlbum` (IN `albumName` VARCHAR(50))   SELECT S.name, A.minStat
FROM song AS S,
	(SELECT name, MIN(song.danceability) AS minStat
	FROM Album NATURAL JOIN Part_of NATURAL JOIN Song
	WHERE album_name = albumName) as A
WHERE S.danceability = A.minStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `minDanceabilityPlaylist` (IN `playlistName` VARCHAR(50))   SELECT S.name, P.minStat
FROM song AS S,
  (SELECT name, MIN(song.danceability) AS minStat
  FROM playlist NATURAL JOIN contains NATURAL JOIN song
  WHERE playlist_name = playlistName) as P
WHERE S.danceability = P.minStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `minDurationAlbum` (IN `albumName` VARCHAR(50))   SELECT S.name, A.minStat
FROM song AS S,
	(SELECT name, MIN(song.duration) AS minStat
	FROM Album NATURAL JOIN Part_of NATURAL JOIN Song
	WHERE album_name = albumName) as A
WHERE S.duration = A.minStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `minDurationPlaylist` (IN `playlistName` VARCHAR(50))   SELECT S.name, P.minStat
FROM song AS S,
  (SELECT name, MIN(song.duration) AS minStat
  FROM playlist NATURAL JOIN contains NATURAL JOIN song
  WHERE playlist_name = playlistName) as P
WHERE S.duration = P.minStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `minEnergyAlbum` (IN `albumName` VARCHAR(50))   SELECT S.name, A.minStat
FROM song AS S,
	(SELECT name, MIN(song.energy) AS minStat
	FROM Album NATURAL JOIN Part_of NATURAL JOIN Song
	WHERE album_name = albumName) as A
WHERE S.energy = A.minStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `minEnergyPlaylist` (IN `playlistName` VARCHAR(50))   SELECT S.name, P.minStat
FROM song AS S,
  (SELECT name, MIN(song.energy) AS minStat
  FROM playlist NATURAL JOIN contains NATURAL JOIN song
  WHERE playlist_name = playlistName) as P
WHERE S.energy = P.minStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `minInstrumentalnessAlbum` (IN `albumName` VARCHAR(50))   SELECT S.name, A.minStat
FROM song AS S,
	(SELECT name, MIN(song.instrumentalness) AS minStat
	FROM Album NATURAL JOIN Part_of NATURAL JOIN Song
	WHERE album_name = albumName) as A
WHERE S.instrumentalness = A.minStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `minInstrumentalnessPlaylist` (IN `playlistName` VARCHAR(50))   SELECT S.name, P.minStat
FROM song AS S,
  (SELECT name, MIN(song.instrumentalness) AS minStat
  FROM playlist NATURAL JOIN contains NATURAL JOIN song
  WHERE playlist_name = playlistName) as P
WHERE S.instrumentalness = P.minStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `minLoudnessAlbum` (IN `albumName` VARCHAR(50))   SELECT S.name, A.minStat
FROM song AS S,
	(SELECT name, MIN(song.loudness) AS minStat
	FROM Album NATURAL JOIN Part_of NATURAL JOIN Song
	WHERE album_name = albumName) as A
WHERE S.loudness = A.minStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `minLoudnessPlaylist` (IN `playlistName` VARCHAR(50))   SELECT S.name, P.minStat
FROM song AS S,
  (SELECT name, MIN(song.loudness) AS minStat
  FROM playlist NATURAL JOIN contains NATURAL JOIN song
  WHERE playlist_name = playlistName) as P
WHERE S.loudness = P.minStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `minTempoAlbum` (IN `albumName` VARCHAR(50))   SELECT S.name, A.minStat
FROM song AS S,
	(SELECT name, MIN(song.tempo) AS minStat
	FROM Album NATURAL JOIN Part_of NATURAL JOIN Song
	WHERE album_name = albumName) as A
WHERE S.tempo = A.minStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `minTempoPlaylist` (IN `playlistName` VARCHAR(50))   SELECT S.name, P.minStat
FROM song AS S,
  (SELECT name, MIN(song.tempo) AS minStat
  FROM playlist NATURAL JOIN contains NATURAL JOIN song
  WHERE playlist_name = playlistName) as P
WHERE S.tempo = P.minStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `minValenceAlbum` (IN `albumName` VARCHAR(50))   SELECT S.name, A.minStat
FROM song AS S,
	(SELECT name, MIN(song.valence) AS minStat
	FROM Album NATURAL JOIN Part_of NATURAL JOIN Song
	WHERE album_name = albumName) as A
WHERE S.valence = A.minStat$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `minValencePlaylist` (IN `playlistName` VARCHAR(50))   SELECT S.name, P.minStat
FROM song AS S,
  (SELECT name, MIN(song.valence) AS minStat
  FROM playlist NATURAL JOIN contains NATURAL JOIN song
  WHERE playlist_name = playlistName) as P
WHERE S.valence = P.minStat$$

DELIMITER ;

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
('04PEOM6kIEeq9lRp1asNP2', 'I Ain’t Worried (Music From The Motion Picture \"To'),
('06RK0wX4GqHcxBtHlVoGH5', 'Black Panther: Wakanda Forever - Music From and In'),
('0bUTHlWbkSQysoM3VsWldT', 'Demon Days'),
('0gX9tkL5njRax8ymWcXARi', 'Unholy (feat. Kim Petras)'),
('0h5MuD9O9o1VoN07mQmwMQ', 'Super Freaky Girl'),
('151w1FgRZfnKZA9FEcg9Z3', 'Midnights'),
('1CmTOKCeyz1aHH04OwvTPv', 'Something in the Orange'),
('274YHaMmctXWht39Olh8ub', 'Maladroit'),
('2kCDZ3gCr5hXFgbFsPMcxP', 'House of Sugar'),
('2ORO3nNnFXxsvz9Pcd9RdI', 'You Proof'),
('2pqdSWeJVsXAhHFuVLzuA8', 'As It Was'),
('3cf4iSSKd8ffTncbtKljXw', 'Honestly, Nevermind'),
('3HHNR44YbP7XogMVwzbodx', 'Twelve Carat Toothache'),
('3Ks0eeH0GWpY4AU20D5HPD', 'Gemini Rights'),
('3mH6qwIy9crq0I9YQbOuDf', 'Blonde'),
('3okhA6w5uau6ZNhnVpwVww', 'Indigo (Extended)'),
('4eXE0Hr07bjAeZxe4yn95M', 'Die For You'),
('4I5zzKYd2SKDgZ9DRf5LVk', '\"Heroes\" (2017 Remaster)'),
('5I9K0u8r52jp4Y2bF8mOaz', 'Song Machine, Season One: Strange Timez (Deluxe)'),
('5MS3MvWHJ3lOZPLiMxzOU6', 'Her Loss'),
('5pWTwcfZTdSPtOd1u48Q1o', 'Velouria'),
('5wnCTZtzIZxasRSHzI1JeW', 'Heaven To A Tortured Mind'),
('61ulfFSmmxMhc2wCdmdMkN', 'Merry Christmas'),
('6FJxoadUE4JNVwWHghBwnb', 'RENAISSANCE'),
('6JlCkqkqobGirPsaleJpFr', 'Dangerous: The Double Album'),
('6mm1Skz3JE6AXneya9Nyiv', 'Oracular Spectacular'),
('74g0V2gxEA5MCSaivAwZyb', 'ELVIS (Original Motion Picture Soundtrack)'),
('7BbRSUBwTB37ut0Ht3yAqt', 'Joy as an Act of Resistance.'),
('7JcfNKXoHSaog85a1hd4lx', 'Vampire Weekend'),
('7M842DMhYVALrXsw3ty7B3', 'I\'m Good (Blue)');

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
('06HL4z0CvFAxyc27GXpf02', 'Taylor Swift'),
('0hCNtLu0JehylgoiP8L4Gh', 'Nicki Minaj'),
('0oSGxfWSnnOXhD2fKuz2Gy', 'David Bowie'),
('0qu422H5MOoQxGjd4IzHbS', 'Yves Tumor'),
('0SwO7SWeDHJijQ3XNS7xEE', 'MGMT'),
('1Cs0zKBU1kc0i8ypK3B9ai', 'David Guetta'),
('1Xyo4u8uXC1ZmMpatF05PJ', 'The Weeknd'),
('246dkjvS1zLTtiykXe5h60', 'Post Malone'),
('2h93pZq0e7k5yf4dywlkpM', 'Frank Ocean'),
('2wY79sveU1sp5g7SokKOiI', 'Sam Smith'),
('3AA28KZvwAUcZuOKwyblJQ', 'Gorillaz'),
('3jOstUTkEu2JkjvRdBA5Gu', 'Weezer'),
('3TVXtAsR1Inumwj472S9r4', 'Drake'),
('40ZNYROS4zLfyyBSs2PGe2', 'Zach Bryan'),
('4iHNK0tOyZPYnBU7nGAgpQ', 'Mariah Carey'),
('4oUHIQIBe0LHzYfvXNW4QM', 'Morgan Wallen'),
('57vWImR43h4CaDao012Ofp', 'Steve Lacy'),
('5BvJzeQpmsdsFp4HGUYUEx', 'Vampire Weekend'),
('5cj0lLjcoR7YOSnhnX0Po5', 'Doja Cat'),
('5pKCCKE2ajJHZ9KAiaK11H', 'Rihanna'),
('5Pwc4xIPtQLFEnJriah9YJ', 'OneRepublic'),
('6KImCVD70vtIoJWnq6nGn3', 'Harry Styles'),
('6lcwlkAjBPSKnFBZjjZFJs', 'Alex G'),
('6vWDO969PvNqNYHIOW5v0m', 'Beyoncé'),
('6zvul52xwTWzilBZl6BUbT', 'Pixies'),
('75mafsNqNE1WSEVxIKuY5C', 'IDLES'),
('7bXgB6jMjp9ATFy66eO08Z', 'Chris Brown');

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
('75mafsNqNE1WSEVxIKuY5C', 'modern rock'),
('3TVXtAsR1Inumwj472S9r4', 'canadian hip hop'),
('3TVXtAsR1Inumwj472S9r4', 'canadian pop'),
('3TVXtAsR1Inumwj472S9r4', 'hip hop'),
('3TVXtAsR1Inumwj472S9r4', 'rap'),
('3TVXtAsR1Inumwj472S9r4', 'toronto rap'),
('06HL4z0CvFAxyc27GXpf02', 'pop'),
('2wY79sveU1sp5g7SokKOiI', 'dance pop'),
('2wY79sveU1sp5g7SokKOiI', 'pop'),
('2wY79sveU1sp5g7SokKOiI', 'uk pop'),
('57vWImR43h4CaDao012Ofp', 'afrofuturism'),
('6KImCVD70vtIoJWnq6nGn3', 'pop'),
('1Cs0zKBU1kc0i8ypK3B9ai', 'big room'),
('1Cs0zKBU1kc0i8ypK3B9ai', 'dance pop'),
('1Cs0zKBU1kc0i8ypK3B9ai', 'edm'),
('5pKCCKE2ajJHZ9KAiaK11H', 'pop'),
('5pKCCKE2ajJHZ9KAiaK11H', 'urban contemporary'),
('0hCNtLu0JehylgoiP8L4Gh', 'hip hop'),
('0hCNtLu0JehylgoiP8L4Gh', 'rap'),
('0hCNtLu0JehylgoiP8L4Gh', 'pop'),
('4oUHIQIBe0LHzYfvXNW4QM', 'contemporary country'),
('246dkjvS1zLTtiykXe5h60', 'rap'),
('246dkjvS1zLTtiykXe5h60', 'melodic rap'),
('7bXgB6jMjp9ATFy66eO08Z', 'dance pop'),
('7bXgB6jMjp9ATFy66eO08Z', 'pop'),
('7bXgB6jMjp9ATFy66eO08Z', 'r&b'),
('5cj0lLjcoR7YOSnhnX0Po5', 'dance pop'),
('5cj0lLjcoR7YOSnhnX0Po5', 'pop'),
('40ZNYROS4zLfyyBSs2PGe2', 'oklahoma country'),
('6vWDO969PvNqNYHIOW5v0m', 'dance pop'),
('6vWDO969PvNqNYHIOW5v0m', 'pop'),
('6vWDO969PvNqNYHIOW5v0m', 'r&b'),
('5Pwc4xIPtQLFEnJriah9YJ', 'piano rock'),
('5Pwc4xIPtQLFEnJriah9YJ', 'pop'),
('4iHNK0tOyZPYnBU7nGAgpQ', 'dance pop'),
('4iHNK0tOyZPYnBU7nGAgpQ', 'pop'),
('4iHNK0tOyZPYnBU7nGAgpQ', 'urban contemporary'),
('1Xyo4u8uXC1ZmMpatF05PJ', 'canadian contemporary r&b'),
('1Xyo4u8uXC1ZmMpatF05PJ', 'canadian pop'),
('1Xyo4u8uXC1ZmMpatF05PJ', 'pop'),
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
('75mafsNqNE1WSEVxIKuY5C', 'modern rock'),
('3TVXtAsR1Inumwj472S9r4', 'canadian hip hop'),
('3TVXtAsR1Inumwj472S9r4', 'canadian pop'),
('3TVXtAsR1Inumwj472S9r4', 'hip hop'),
('3TVXtAsR1Inumwj472S9r4', 'rap'),
('3TVXtAsR1Inumwj472S9r4', 'toronto rap'),
('06HL4z0CvFAxyc27GXpf02', 'pop'),
('2wY79sveU1sp5g7SokKOiI', 'dance pop'),
('2wY79sveU1sp5g7SokKOiI', 'pop'),
('2wY79sveU1sp5g7SokKOiI', 'uk pop'),
('57vWImR43h4CaDao012Ofp', 'afrofuturism'),
('6KImCVD70vtIoJWnq6nGn3', 'pop'),
('1Cs0zKBU1kc0i8ypK3B9ai', 'big room'),
('1Cs0zKBU1kc0i8ypK3B9ai', 'dance pop'),
('1Cs0zKBU1kc0i8ypK3B9ai', 'edm'),
('5pKCCKE2ajJHZ9KAiaK11H', 'pop'),
('5pKCCKE2ajJHZ9KAiaK11H', 'urban contemporary'),
('0hCNtLu0JehylgoiP8L4Gh', 'hip hop'),
('0hCNtLu0JehylgoiP8L4Gh', 'rap'),
('0hCNtLu0JehylgoiP8L4Gh', 'pop'),
('4oUHIQIBe0LHzYfvXNW4QM', 'contemporary country'),
('246dkjvS1zLTtiykXe5h60', 'rap'),
('246dkjvS1zLTtiykXe5h60', 'melodic rap'),
('7bXgB6jMjp9ATFy66eO08Z', 'dance pop'),
('7bXgB6jMjp9ATFy66eO08Z', 'pop'),
('7bXgB6jMjp9ATFy66eO08Z', 'r&b'),
('5cj0lLjcoR7YOSnhnX0Po5', 'dance pop'),
('5cj0lLjcoR7YOSnhnX0Po5', 'pop'),
('40ZNYROS4zLfyyBSs2PGe2', 'oklahoma country'),
('6vWDO969PvNqNYHIOW5v0m', 'dance pop'),
('6vWDO969PvNqNYHIOW5v0m', 'pop'),
('6vWDO969PvNqNYHIOW5v0m', 'r&b'),
('5Pwc4xIPtQLFEnJriah9YJ', 'piano rock'),
('5Pwc4xIPtQLFEnJriah9YJ', 'pop'),
('4iHNK0tOyZPYnBU7nGAgpQ', 'dance pop'),
('4iHNK0tOyZPYnBU7nGAgpQ', 'pop'),
('4iHNK0tOyZPYnBU7nGAgpQ', 'urban contemporary'),
('1Xyo4u8uXC1ZmMpatF05PJ', 'canadian contemporary r&b'),
('1Xyo4u8uXC1ZmMpatF05PJ', 'canadian pop'),
('1Xyo4u8uXC1ZmMpatF05PJ', 'pop');

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
('4', '6EyRxPp1m7f4jHhLavfAdZ'),
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
('04PEOM6kIEeq9lRp1asNP2', '5Pwc4xIPtQLFEnJriah9YJ'),
('06RK0wX4GqHcxBtHlVoGH5', '5pKCCKE2ajJHZ9KAiaK11H'),
('0bUTHlWbkSQysoM3VsWldT', '3AA28KZvwAUcZuOKwyblJQ'),
('0gX9tkL5njRax8ymWcXARi', '2wY79sveU1sp5g7SokKOiI'),
('0h5MuD9O9o1VoN07mQmwMQ', '0hCNtLu0JehylgoiP8L4Gh'),
('151w1FgRZfnKZA9FEcg9Z3', '06HL4z0CvFAxyc27GXpf02'),
('1CmTOKCeyz1aHH04OwvTPv', '40ZNYROS4zLfyyBSs2PGe2'),
('274YHaMmctXWht39Olh8ub', '3jOstUTkEu2JkjvRdBA5Gu'),
('2kCDZ3gCr5hXFgbFsPMcxP', '6lcwlkAjBPSKnFBZjjZFJs'),
('2ORO3nNnFXxsvz9Pcd9RdI', '4oUHIQIBe0LHzYfvXNW4QM'),
('2pqdSWeJVsXAhHFuVLzuA8', '6KImCVD70vtIoJWnq6nGn3'),
('3cf4iSSKd8ffTncbtKljXw', '3TVXtAsR1Inumwj472S9r4'),
('3HHNR44YbP7XogMVwzbodx', '246dkjvS1zLTtiykXe5h60'),
('3Ks0eeH0GWpY4AU20D5HPD', '57vWImR43h4CaDao012Ofp'),
('3mH6qwIy9crq0I9YQbOuDf', '2h93pZq0e7k5yf4dywlkpM'),
('3okhA6w5uau6ZNhnVpwVww', '7bXgB6jMjp9ATFy66eO08Z'),
('4eXE0Hr07bjAeZxe4yn95M', '1Xyo4u8uXC1ZmMpatF05PJ'),
('4I5zzKYd2SKDgZ9DRf5LVk', '0oSGxfWSnnOXhD2fKuz2Gy'),
('5I9K0u8r52jp4Y2bF8mOaz', '3AA28KZvwAUcZuOKwyblJQ'),
('5MS3MvWHJ3lOZPLiMxzOU6', '3TVXtAsR1Inumwj472S9r4'),
('5pWTwcfZTdSPtOd1u48Q1o', '6zvul52xwTWzilBZl6BUbT'),
('5wnCTZtzIZxasRSHzI1JeW', '0qu422H5MOoQxGjd4IzHbS'),
('61ulfFSmmxMhc2wCdmdMkN', '4iHNK0tOyZPYnBU7nGAgpQ'),
('6FJxoadUE4JNVwWHghBwnb', '6vWDO969PvNqNYHIOW5v0m'),
('6JlCkqkqobGirPsaleJpFr', '4oUHIQIBe0LHzYfvXNW4QM'),
('6mm1Skz3JE6AXneya9Nyiv', '0SwO7SWeDHJijQ3XNS7xEE'),
('74g0V2gxEA5MCSaivAwZyb', '5cj0lLjcoR7YOSnhnX0Po5'),
('7BbRSUBwTB37ut0Ht3yAqt', '75mafsNqNE1WSEVxIKuY5C'),
('7JcfNKXoHSaog85a1hd4lx', '5BvJzeQpmsdsFp4HGUYUEx'),
('7M842DMhYVALrXsw3ty7B3', '1Cs0zKBU1kc0i8ypK3B9ai');

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
('0bYg9bo50gSsH3LtXe2SQn', '61ulfFSmmxMhc2wCdmdMkN'),
('0d28khcov6AiegSCpG5TuT', '0bUTHlWbkSQysoM3VsWldT'),
('0ITfYkVUoFdPKd3BOAoYsH', '4eXE0Hr07bjAeZxe4yn95M'),
('0O6u0VJ46W86TxN9wgyqDj', '3HHNR44YbP7XogMVwzbodx'),
('0V3wPSX9ygBnCm8psDIegu', '151w1FgRZfnKZA9FEcg9Z3'),
('1595LW73XBxkRk2ciQOHfr', '7JcfNKXoHSaog85a1hd4lx'),
('17yrCsl1Ai6CZLBmGj6d6p', '3mH6qwIy9crq0I9YQbOuDf'),
('19YKaevk2bce4odJkP5L22', '3mH6qwIy9crq0I9YQbOuDf'),
('1bDbXMyjaUIooNwFE9wn0N', '5MS3MvWHJ3lOZPLiMxzOU6'),
('1BViPjTT585XAhkUUrkts0', '3mH6qwIy9crq0I9YQbOuDf'),
('1IdZvb2XK8NmsovQlV6CPn', '3mH6qwIy9crq0I9YQbOuDf'),
('1VZLEW5ZfcAbKZ94XQiSZF', '3mH6qwIy9crq0I9YQbOuDf'),
('1xzi1Jcr7mEi9K2RfzLOqS', '6FJxoadUE4JNVwWHghBwnb'),
('1ytYTPuKbW0NIXb2kgmSVq', '274YHaMmctXWht39Olh8ub'),
('20Mof2MdzPJX1QfE8Ojdla', '5pWTwcfZTdSPtOd1u48Q1o'),
('25Gp0MpGdvrs4hL1u4L2TF', '5I9K0u8r52jp4Y2bF8mOaz'),
('2JUqYobT8NvARdPmc4ES2x', '3mH6qwIy9crq0I9YQbOuDf'),
('2LMkwUfqC6S6s6qDVlEuzV', '3mH6qwIy9crq0I9YQbOuDf'),
('2qtoRFCOEL1gRn5q9DJC7F', '3mH6qwIy9crq0I9YQbOuDf'),
('2ZL7WZcjuYKi1KUDtp4kCC', '5MS3MvWHJ3lOZPLiMxzOU6'),
('2ZWlPOoWh0626oTaHrnl2a', '3mH6qwIy9crq0I9YQbOuDf'),
('34tz0eDhGuFErIuW3q4mPX', '5MS3MvWHJ3lOZPLiMxzOU6'),
('34xTFwjPQ1dC6uJmleno7x', '3mH6qwIy9crq0I9YQbOuDf'),
('35xSkNIXi504fcEwz9USRB', '3mH6qwIy9crq0I9YQbOuDf'),
('36zqSzaPzQWZYDCNm1klgY', '2kCDZ3gCr5hXFgbFsPMcxP'),
('3cBsEDNhFI9E82vPj3kvi3', '6JlCkqkqobGirPsaleJpFr'),
('3F5CgOj3wFlRv51JsHbxhe', '3cf4iSSKd8ffTncbtKljXw'),
('3FtYbEfBqAlGO46NUDQSAt', '6mm1Skz3JE6AXneya9Nyiv'),
('3FWwi61OP7vXEikwqhZCPZ', '74g0V2gxEA5MCSaivAwZyb'),
('3nqQXoyQOWXiESFLlDF1hG', '0gX9tkL5njRax8ymWcXARi'),
('3WMj8moIAXJhHsyLaqIIHI', '1CmTOKCeyz1aHH04OwvTPv'),
('3xKsf9qdS1CyvXSMEid6g8', '3mH6qwIy9crq0I9YQbOuDf'),
('46LX0sSwIU4GFLcj23ZfMA', '5wnCTZtzIZxasRSHzI1JeW'),
('46s57QULU02Voy0Kup6UEb', '5MS3MvWHJ3lOZPLiMxzOU6'),
('4C6Uex2ILwJi9sZXRdmqXp', '0h5MuD9O9o1VoN07mQmwMQ'),
('4h9wh7iOZ0GGn8QVp4RAOB', '04PEOM6kIEeq9lRp1asNP2'),
('4k6Uh1HXdhtusDW5y8Gbvy', '3Ks0eeH0GWpY4AU20D5HPD'),
('4LRPiXqCikLlN15c3yImP7', '2pqdSWeJVsXAhHFuVLzuA8'),
('4uUG5RXrOk84mYEfFvj3cK', '7M842DMhYVALrXsw3ty7B3'),
('4xR3MAscflQ262kMeiKshQ', '3mH6qwIy9crq0I9YQbOuDf'),
('5GUYJTQap5F3RDQiCOJhrS', '3mH6qwIy9crq0I9YQbOuDf'),
('5IgjP7X4th6nMNDh4akUHb', '3okhA6w5uau6ZNhnVpwVww'),
('5jQI2r1RdgtuT8S3iG8zFC', '151w1FgRZfnKZA9FEcg9Z3'),
('5k8LB57xOq8UUNVaKWSqrf', '3mH6qwIy9crq0I9YQbOuDf'),
('5uU1uuyaUIBOiiUSQG7Wl3', '2ORO3nNnFXxsvz9Pcd9RdI'),
('6EyRxPp1m7f4jHhLavfAdZ', '7BbRSUBwTB37ut0Ht3yAqt'),
('6sCvvleqKbeyOkQDieBYgp', '06RK0wX4GqHcxBtHlVoGH5'),
('73D5hBkiVZkopZrmBZTBWf', '3mH6qwIy9crq0I9YQbOuDf'),
('7eqoqGkKwgOaWNNHx90uEZ', '3mH6qwIy9crq0I9YQbOuDf'),
('7GeTsDIc5ykNB6lORO6Cee', '5MS3MvWHJ3lOZPLiMxzOU6'),
('7Jh1bpe76CNTCgdgAdBw4Z', '4I5zzKYd2SKDgZ9DRf5LVk'),
('7l2nxyx7IkBX5orhkALg0V', '5MS3MvWHJ3lOZPLiMxzOU6');

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
('0bYg9bo50gSsH3LtXe2SQn', 'All I Want for Christmas Is You', 241107, 0, -7.463, 0.336, 150.273, 0.627, 7, 0.35),
('0d28khcov6AiegSCpG5TuT', 'Feel Good Inc.', 222640, 0.00233, -6.679, 0.818, 138.559, 0.705, 6, 0.772),
('0ITfYkVUoFdPKd3BOAoYsH', 'Die For You', 260256, 0, -8.197, 0.602, 67.129, 0.505, 1, 0.457),
('0O6u0VJ46W86TxN9wgyqDj', 'I Like You (A Happier Song) (with Doja Cat)', 192841, 0, -6.009, 0.733, 100.964, 0.67, 5, 0.472),
('0V3wPSX9ygBnCm8psDIegu', 'Anti-Hero', 200690, 0.0000018, -6.571, 0.637, 97.008, 0.643, 4, 0.533),
('1595LW73XBxkRk2ciQOHfr', 'A-Punk', 137760, 0.0543, -4.478, 0.548, 174.993, 0.816, 2, 0.857),
('17yrCsl1Ai6CZLBmGj6d6p', 'Pretty Sweet', 158478, 0.0252, -6.742, 0.202, 154.037, 0.724, 0, 0.165),
('19YKaevk2bce4odJkP5L22', 'Nikes', 314075, 0.000222, -9.638, 0.633, 138.023, 0.395, 8, 0.123),
('1bDbXMyjaUIooNwFE9wn0N', 'Rich Flex', 239360, 0.00000186, -9.342, 0.561, 153.15, 0.52, 11, 0.424),
('1BViPjTT585XAhkUUrkts0', 'Seigfried', 334570, 0.000259, -11.155, 0.377, 125.403, 0.253, 4, 0.367),
('1IdZvb2XK8NmsovQlV6CPn', 'Be Yourself', 86944, 0, -11.143, 0.746, 88.413, 0.429, 7, 0.932),
('1VZLEW5ZfcAbKZ94XQiSZF', 'Close To You', 85754, 0.0013, -8.401, 0.855, 77.978, 0.663, 5, 0.815),
('1xzi1Jcr7mEi9K2RfzLOqS', 'CUFF IT', 225389, 0.00000969, -5.668, 0.78, 115.042, 0.689, 7, 0.642),
('1ytYTPuKbW0NIXb2kgmSVq', 'Burndt Jamb', 158592, 0.000686, -8.062, 0.591, 97.696, 0.666, 11, 0.451),
('20Mof2MdzPJX1QfE8Ojdla', 'The Thing', 119493, 0.00205, -9.068, 0.736, 109.733, 0.572, 0, 0.89),
('25Gp0MpGdvrs4hL1u4L2TF', 'Aries (feat. Peter Hook and Georgia)', 253333, 0.0844, -7.801, 0.615, 120.006, 0.667, 2, 0.795),
('2JUqYobT8NvARdPmc4ES2x', 'Good Guy', 66786, 0.00433, -12.787, 0.525, 107.007, 0.131, 0, 0.811),
('2LMkwUfqC6S6s6qDVlEuzV', 'White Ferrari', 248808, 0, -15.605, 0.501, 108.741, 0.0958, 0, 0.54),
('2qtoRFCOEL1gRn5q9DJC7F', 'Solo (Reprise)', 78743, 0, -6.811, 0.669, 80.169, 0.749, 7, 0.608),
('2ZL7WZcjuYKi1KUDtp4kCC', 'Spin Bout U', 214589, 0, -6.386, 0.773, 129.963, 0.701, 7, 0.203),
('2ZWlPOoWh0626oTaHrnl2a', 'Ivy', 249191, 0.000289, -9.584, 0.575, 116.408, 0.386, 9, 0.466),
('34tz0eDhGuFErIuW3q4mPX', 'On BS', 261544, 0, -8.368, 0.841, 158.014, 0.358, 9, 0.329),
('34xTFwjPQ1dC6uJmleno7x', 'Godspeed', 177922, 0.000168, -12.578, 0.399, 109.54, 0.0969, 6, 0.0758),
('35xSkNIXi504fcEwz9USRB', 'Solo', 257380, 0.00000248, -10.625, 0.469, 133.805, 0.289, 5, 0.258),
('36zqSzaPzQWZYDCNm1klgY', 'Gretel', 190218, 0.469, -6.172, 0.449, 140.078, 0.875, 8, 0.43),
('3cBsEDNhFI9E82vPj3kvi3', 'Wasted On You', 178520, 0.00107, -5.24, 0.505, 196, 0.657, 11, 0.252),
('3F5CgOj3wFlRv51JsHbxhe', 'Jimmy Cooks (feat. 21 Savage)', 218365, 0.00000241, -4.711, 0.529, 165.921, 0.673, 0, 0.366),
('3FtYbEfBqAlGO46NUDQSAt', 'Electric Feel', 229640, 0.285, -3.713, 0.763, 103.04, 0.803, 1, 0.561),
('3FWwi61OP7vXEikwqhZCPZ', 'Vegas', 183027, 0.0000489, -7.616, 0.789, 159.979, 0.604, 8, 0.765),
('3nqQXoyQOWXiESFLlDF1hG', 'Unholy (feat. Kim Petras)', 156943, 0.00000451, -7.375, 0.714, 131.121, 0.472, 2, 0.238),
('3WMj8moIAXJhHsyLaqIIHI', 'Something in the Orange', 228013, 0.00000835, -12.151, 0.369, 175.212, 0.192, 4, 0.148),
('3xKsf9qdS1CyvXSMEid6g8', 'Pink + White', 184516, 0.0000548, -7.362, 0.545, 159.94, 0.545, 9, 0.549),
('46LX0sSwIU4GFLcj23ZfMA', 'Gospel For a New Century', 198627, 0.00000306, -6.715, 0.565, 178.078, 0.726, 0, 0.715),
('46s57QULU02Voy0Kup6UEb', 'Major Distribution', 170502, 0, -10.491, 0.908, 131.016, 0.546, 8, 0.225),
('4C6Uex2ILwJi9sZXRdmqXp', 'Super Freaky Girl', 170977, 0.0000177, -2.653, 0.95, 133.01, 0.891, 2, 0.912),
('4h9wh7iOZ0GGn8QVp4RAOB', 'I Ain\'t Worried', 148486, 0.000745, -5.927, 0.704, 139.994, 0.797, 0, 0.825),
('4k6Uh1HXdhtusDW5y8Gbvy', 'Bad Habit', 232067, 0.000058, -7.093, 0.686, 168.946, 0.494, 1, 0.7),
('4LRPiXqCikLlN15c3yImP7', 'As It Was', 167303, 0.00101, -5.338, 0.52, 173.93, 0.731, 6, 0.662),
('4uUG5RXrOk84mYEfFvj3cK', 'I\'m Good (Blue)', 175238, 0.00000707, -3.673, 0.561, 128.04, 0.965, 7, 0.304),
('4xR3MAscflQ262kMeiKshQ', 'Skyline To', 184600, 0.00000621, -13.645, 0.43, 129.048, 0.296, 3, 0.386),
('5GUYJTQap5F3RDQiCOJhrS', 'Self Control', 249668, 0, -10.426, 0.581, 80.099, 0.21, 8, 0.452),
('5IgjP7X4th6nMNDh4akUHb', 'Under The Influence', 184613, 0.00000118, -5.529, 0.733, 116.992, 0.69, 9, 0.31),
('5jQI2r1RdgtuT8S3iG8zFC', 'Lavender Haze', 202396, 0.000573, -10.489, 0.733, 96.985, 0.436, 10, 0.0976),
('5k8LB57xOq8UUNVaKWSqrf', 'Futura Free', 564166, 0.0000937, -12.364, 0.266, 83.434, 0.678, 1, 0.201),
('5uU1uuyaUIBOiiUSQG7Wl3', 'You Proof', 157478, 0, -4.913, 0.731, 119.706, 0.85, 9, 9),
('6EyRxPp1m7f4jHhLavfAdZ', 'I\'m Scum', 189976, 0.000192, -3.66, 0.534, 116.031, 0.854, 11, 0.484),
('6sCvvleqKbeyOkQDieBYgp', 'Lift Me Up', 196520, 0, -6.083, 0.247, 177.115, 0.299, 9, 0.172),
('73D5hBkiVZkopZrmBZTBWf', 'Facebook Story', 68588, 0, -20.55, 0.526, 81.993, 0.179, 0, 0.698),
('7eqoqGkKwgOaWNNHx90uEZ', 'Nights', 307151, 0.00000115, -9.36, 0.457, 89.87, 0.551, 5, 0.428),
('7GeTsDIc5ykNB6lORO6Cee', 'Circo Loco', 236795, 0, -8.476, 0.734, 103.976, 0.605, 1, 0.252),
('7Jh1bpe76CNTCgdgAdBw4Z', 'Heroes - 2017 Remaster', 371413, 0.49, -6.491, 0.489, 112.113, 0.758, 7, 0.435),
('7l2nxyx7IkBX5orhkALg0V', 'Privileged Rappers', 160821, 0, -7.384, 0.934, 144.045, 0.614, 5, 0.616);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `first_name`, `last_name`, `email`, `username`, `password`) VALUES
(1, 'Joseph', 'Paquin', 'jjp2atm@virginia.edu', 'jjp2404', NULL),
(2, 'Michael', 'Vaden', 'mtv2eva@virginia.edu', 'michael_vaden', NULL),
(3, 'Ethan', 'Ashley', 'ea9qjn@virginia.edu', 'ethan_ashley', NULL),
(4, 'Jacob', 'Rice', 'jwr5ky@virginia.edu', 'jacob_rice', NULL);

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
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
