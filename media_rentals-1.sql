-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2024 at 07:53 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `media_rentals`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `actor_id` int(10) NOT NULL,
  `stage_name` varchar(40) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `birth_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`actor_id`, `stage_name`, `first_name`, `last_name`, `birth_date`) VALUES
(1, 'Mark The Jiggler', 'Mark', 'Garren', '2000-10-05'),
(2, 'Simple Singer', 'David', 'Rinese', '2000-06-17'),
(3, 'John Doe The Common', 'John', 'Doe', '2001-08-23'),
(4, 'Mary The Pianist', 'Mary', 'Susie', '2001-03-09');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `home_phone` varchar(12) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(2) NOT NULL,
  `email` varchar(25) DEFAULT NULL,
  `cell_phone` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `last_name`, `first_name`, `home_phone`, `address`, `city`, `state`, `email`, `cell_phone`) VALUES
(101, 'palombo', 'Lisa', '716-270-2669', '123 Main St', 'Buffalo', 'NY', 'palombo@ecc.edu', '716-555-1212'),
(102, 'Silver', 'Lucy', ' 06-84812427', 'Orionstraat 116', 'Dordrecht', 'ZH', 'silverlucy@ecc.edu', ' 06-84812427'),
(103, 'Harren', 'Ash', '07 4534 02', '68 Boorie Road', 'Stalworth', 'QS', 'ashharren@ecc.edu', '07 0256 45'),
(104, 'Yuan', 'Chang', '2426 9165', 'Charmay Centre', 'Kwai Chung', 'HK', 'yuanchang@ecc.edu', '2426 9165'),
(105, 'james', 'arthur', '061 543 1345', '140 PAYA LEBAR 08-05 A-Z BUILDING', 'Singapore', 'SP', 'jamesarthur@ecc.edu', ' 67464393'),
(106, 'johnson', 'michael', '662 4152961', '48/330 Mooban Dk Kanchanapisek Road', 'Bangkhunthian', 'BK', 'michaeljohnson@ecc.edu', '662 4152961');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `media_id` int(10) NOT NULL,
  `format` varchar(3) NOT NULL,
  `title_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`media_id`, `format`, `title_id`) VALUES
(1, 'DVD', 0),
(2, 'VHS', 0);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `title_id` int(10) NOT NULL,
  `title` varchar(60) NOT NULL,
  `description` varchar(400) NOT NULL,
  `rating` int(4) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `release_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`title_id`, `title`, `description`, `rating`, `category`, `release_date`) VALUES
(1, 'That Season', 'That Season a lot happened.', 5, 'Drama', '2023-12-25'),
(2, 'Documentary Of Life In The Small Villages', 'Life in small villages', 5, 'Documentary', '1994-10-28'),
(3, 'Are you joking?', 'Are you serious?', 5, 'Comedy', '2014-01-27'),
(4, 'Tips and Tricks', 'Are you looking for tips and tricks?', 4, 'Drama', '2017-12-04'),
(5, 'The Ocean', 'The Beauty Of Waters', 5, 'Documentary', '2022-12-15'),
(6, 'The Raven', 'Light Of The Raven', 4, 'Action', '2022-04-20');

-- --------------------------------------------------------

--
-- Table structure for table `rental_history`
--

CREATE TABLE `rental_history` (
  `media_id` int(10) NOT NULL,
  `rental_date` date NOT NULL,
  `customer_id` int(10) NOT NULL,
  `return_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rental_history`
--

INSERT INTO `rental_history` (`media_id`, `rental_date`, `customer_id`, `return_date`) VALUES
(0, '2014-04-24', 0, '2014-06-28'),
(0, '2016-01-14', 0, '2017-03-06'),
(0, '2023-10-10', 0, '2023-11-16'),
(0, '2023-12-13', 0, '2013-12-23');

-- --------------------------------------------------------

--
-- Table structure for table `star_billings`
--

CREATE TABLE `star_billings` (
  `actor_id` int(10) NOT NULL,
  `title_id` int(10) NOT NULL,
  `comments` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `star_billings`
--

INSERT INTO `star_billings` (`actor_id`, `title_id`, `comments`) VALUES
(101, 0, 'Amazing '),
(102, 0, 'Received'),
(103, 0, 'Where is the part 2?'),
(104, 0, 'I learned new things. Thanks!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`actor_id`),
  ADD KEY `lastname_index` (`last_name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`title_id`);

--
-- Indexes for table `rental_history`
--
ALTER TABLE `rental_history`
  ADD PRIMARY KEY (`rental_date`);

--
-- Indexes for table `star_billings`
--
ALTER TABLE `star_billings`
  ADD PRIMARY KEY (`actor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `actor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `media_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `title_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `star_billings`
--
ALTER TABLE `star_billings`
  MODIFY `actor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`media_id`) REFERENCES `movies` (`title_id`);

--
-- Constraints for table `star_billings`
--
ALTER TABLE `star_billings`
  ADD CONSTRAINT `star_billings_ibfk_1` FOREIGN KEY (`actor_id`) REFERENCES `customers` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
