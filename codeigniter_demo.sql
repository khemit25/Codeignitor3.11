-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2021 at 03:32 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeigniter_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `dob`, `address`) VALUES
(21, 'Khemit', 'Verma', '2020-08-04', 'jaipur,india,302004'),
(22, 'manish', 'Sharma', '2021-01-22', 'passages of Lorem Ipsum available'),
(23, 'Rahul', 'Sharma', '1971-10-06', 'India rajasthan');

-- --------------------------------------------------------

--
-- Table structure for table `users_work_experience`
--

CREATE TABLE `users_work_experience` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT 'refer the primary of users table',
  `company_name` varchar(255) DEFAULT NULL,
  `company_description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_work_experience`
--

INSERT INTO `users_work_experience` (`id`, `user_id`, `company_name`, `company_description`) VALUES
(17, 21, 'Global it app', 'passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it?  It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
(18, 21, 'Fortpro Infosolution', 'ontrary to popular belief, Lorem Ipsum i'),
(19, 22, 'Infosys', 'passages of Lorem Ipsum available'),
(20, 23, 'Manvi IT Solution', 'IT Company '),
(21, 23, 'Global Info Solution', 'Software comapny');

-- --------------------------------------------------------

--
-- Table structure for table `user_portfolio_images`
--

CREATE TABLE `user_portfolio_images` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT 'refer the primary key users table',
  `portfolio_image_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_portfolio_images`
--

INSERT INTO `user_portfolio_images` (`id`, `user_id`, `portfolio_image_name`) VALUES
(23, 21, '1583130857622.jpg'),
(24, 21, 'Banner-Batterien-Solar-web_17f1199fab90a9f453b9ba4167c28e87.jpg'),
(25, 21, 'decoration.png'),
(26, 21, '2020.jpg'),
(27, 22, '1583130857622.jpg'),
(28, 22, 'Master.jpg'),
(29, 22, '2020.jpg'),
(30, 23, '2020.jpg'),
(31, 23, '1583130857622.jpg'),
(32, 23, 'manish_thzczczcumb.jpg.png'),
(33, 23, 'Banner-Batterien-Solar-web_17f1199fab90a9f453b9ba4167c28e87.jpg'),
(34, 23, 'maxresdefault.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_work_experience`
--
ALTER TABLE `users_work_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_portfolio_images`
--
ALTER TABLE `user_portfolio_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `users_work_experience`
--
ALTER TABLE `users_work_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `user_portfolio_images`
--
ALTER TABLE `user_portfolio_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
