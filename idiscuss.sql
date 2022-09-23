-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2022 at 09:37 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idiscuss`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  `categories_description` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_description`, `created`) VALUES
(1, 'javascript', 'javascript language it used for making the  dyanmic website', '2022-09-18 00:38:52'),
(2, 'python', 'python is a very easy language', '2022-09-18 02:44:17'),
(3, 'Django', 'Django it is frame work python', '2022-09-18 19:06:31'),
(4, 'flask', 'flask it is another framework python', '2022-09-18 19:07:02');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(10) NOT NULL,
  `comment_content` text NOT NULL,
  `thread_id` int(10) NOT NULL,
  `comment_by` int(80) NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `thread_id`, `comment_by`, `comment_time`) VALUES
(1, 'shffakjfjvdncndljvjndf fcmdsfmnksnf', 1, 4, '2022-09-20 00:02:04'),
(2, '', 1, 5, '2022-09-20 00:19:19'),
(3, '', 2, 4, '2022-09-20 00:20:47'),
(4, '', 1, 5, '2022-09-20 00:22:32'),
(5, '', 1, 4, '2022-09-20 00:35:25'),
(6, 'mmkk', 6, 7, '2022-09-23 00:42:40');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `thread_id` int(7) NOT NULL,
  `thread_title` varchar(250) NOT NULL,
  `thread_desc` text NOT NULL,
  `thread_cat_id` int(7) NOT NULL,
  `thread_user_id` int(7) NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`thread_id`, `thread_title`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `timestamp`) VALUES
(1, 'pycharm not install', 'not able to download option', 1, 4, 0),
(4, 'sd', 'sdsfd', 3, 4, 2147483647),
(5, 'dsf', 'fdfsdf', 2, 4, 2147483647),
(6, 'sffddffsf', 'dssdffdsd', 1, 5, 2147483647),
(7, '', 'sf', 1, 4, 2147483647),
(8, '', '', 1, 5, 2147483647),
(9, '', '', 1, 4, 2147483647),
(10, '', '', 1, 5, 2147483647),
(11, '', '', 1, 4, 2147483647),
(12, '', '', 1, 4, 2147483647),
(13, '', '', 1, 5, 2147483647),
(14, 'mkmkm', 'kmkol', 1, 7, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_pass` varchar(100) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `user_email`, `user_pass`, `timestamp`) VALUES
(4, 'prathameshsaraf2002@gmail.com', '$2y$10$e8XKTt0kzjJRPb0MndeNcuD6R/a/f.o03qma4trL4ZecbN5y2LbGC', '2022-09-21 00:21:46'),
(5, 'a@gmail.com', '$2y$10$b6TahR56HPVyy3gDe3.G9.W9foW7bdNvMTMx6C47yH7l.GN9zPWIq', '2022-09-21 00:44:03'),
(6, 'prathameshs2002@gmail.com', '$2y$10$HButHCj2R23.TlI57JctTuERpW1ou0LLeVRuI9cxMOomLreOxk40a', '2022-09-21 22:33:11'),
(7, '2002@gmail.com', '$2y$10$WTNv1pC3Byc96HW9SmqNUu1/lMwkqV2qoANVmeLfgFSC51C6f4IgW', '2022-09-23 00:42:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`thread_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
