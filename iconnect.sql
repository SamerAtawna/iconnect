-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2018 at 09:52 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iconnect`
--

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `likeid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`likeid`, `postid`, `userid`) VALUES
(1, 44, 0),
(2, 44, 0),
(3, 44, 0),
(4, 44, 0),
(5, 44, 11),
(6, 41, 11),
(7, 44, 11),
(8, 39, 11),
(9, 44, 11),
(10, 44, 11),
(11, 44, 11),
(12, 44, 11),
(13, 44, 11),
(14, 44, 11),
(15, 29, 11),
(16, 29, 11),
(17, 36, 11),
(18, 39, 11),
(19, 32, 11),
(20, 44, 11),
(21, 52, 11),
(22, 64, 11),
(23, 55, 11),
(24, 54, 11),
(25, 54, 11),
(26, 54, 11),
(27, 54, 11),
(28, 54, 11),
(29, 54, 11),
(30, 54, 11),
(31, 54, 11),
(32, 54, 11),
(33, 54, 11),
(34, 54, 11),
(35, 54, 11),
(36, 63, 37),
(37, 49, 37),
(38, 49, 37),
(39, 49, 37),
(40, 49, 37),
(41, 67, 37),
(42, 67, 37),
(43, 67, 37),
(44, 67, 37),
(45, 67, 37),
(46, 67, 37),
(47, 67, 37),
(48, 67, 37),
(49, 67, 37),
(50, 67, 37),
(51, 67, 37),
(52, 67, 37),
(53, 67, 37),
(54, 67, 37),
(55, 67, 37),
(56, 67, 37),
(57, 67, 37),
(58, 67, 37),
(59, 67, 37),
(60, 67, 37),
(61, 67, 37),
(62, 67, 37),
(63, 67, 37),
(64, 67, 37),
(65, 66, 37),
(66, 68, 37),
(67, 68, 37),
(68, 68, 37),
(69, 68, 37),
(70, 68, 37),
(71, 68, 37),
(72, 68, 37),
(73, 68, 37),
(74, 68, 37),
(75, 68, 37),
(76, 68, 37),
(77, 68, 37),
(78, 68, 37),
(79, 68, 37),
(80, 68, 37),
(81, 68, 37),
(82, 68, 37),
(83, 68, 37),
(84, 68, 37),
(85, 68, 37),
(86, 68, 37),
(87, 68, 37),
(88, 68, 37),
(89, 68, 37),
(90, 68, 37),
(91, 68, 37),
(92, 68, 37),
(93, 68, 37),
(94, 68, 37),
(95, 68, 37),
(96, 68, 37),
(97, 68, 37),
(98, 68, 37),
(99, 68, 37),
(100, 68, 37),
(101, 68, 37),
(102, 67, 37),
(103, 67, 37),
(104, 63, 37),
(105, 63, 37),
(106, 58, 37),
(107, 58, 37),
(108, 58, 37),
(109, 57, 37),
(110, 57, 37),
(111, 56, 37),
(112, 56, 37),
(113, 56, 37),
(114, 55, 37),
(115, 54, 37),
(116, 53, 37),
(117, 53, 37),
(118, 52, 37),
(119, 52, 37),
(120, 58, 37),
(121, 58, 37),
(122, 35, 11),
(123, 36, 11),
(124, 36, 11),
(125, 34, 11),
(126, 34, 11),
(127, 34, 11),
(128, 34, 11),
(129, 34, 11),
(130, 34, 11),
(131, 34, 11),
(132, 56, 12),
(133, 66, 12),
(134, 68, 12),
(135, 63, 12),
(136, 60, 12),
(137, 60, 12),
(138, 59, 12),
(139, 56, 12),
(140, 56, 12),
(141, 56, 12),
(142, 55, 12),
(143, 67, 11),
(144, 67, 11),
(145, 67, 11),
(146, 67, 11),
(147, 67, 11),
(148, 67, 11),
(149, 66, 11),
(150, 63, 11),
(151, 17, 11),
(152, 17, 11),
(153, 67, 11),
(154, 68, 11),
(155, 50, 11),
(156, 37, 11),
(157, 39, 11),
(158, 40, 11),
(159, 40, 11),
(160, 40, 11),
(161, 68, 11),
(162, 67, 11),
(163, 67, 11),
(164, 64, 11),
(165, 62, 11),
(166, 61, 11),
(167, 60, 11),
(168, 60, 11),
(169, 59, 11),
(170, 58, 11),
(171, 58, 11),
(172, 67, 11),
(173, 68, 11),
(174, 68, 11),
(175, 68, 11),
(176, 68, 11),
(177, 68, 11),
(178, 68, 11),
(179, 68, 11),
(180, 68, 11),
(181, 68, 11),
(182, 68, 11),
(183, 68, 11),
(184, 68, 11),
(185, 68, 11),
(186, 66, 11),
(187, 66, 11),
(188, 66, 11),
(189, 63, 11),
(190, 63, 11),
(191, 62, 11),
(192, 69, 11);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `post` varchar(20000) COLLATE utf8_bin NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postid`, `userid`, `post`, `date`) VALUES
(16, 12, 'Thats my first post', '0000-00-00 00:00:00'),
(17, 11, 'Hello WORLDDDDDDDDDDDDDDD', '0000-00-00 00:00:00'),
(18, 11, 'qweqweqwe', '2018-10-01 00:00:00'),
(19, 11, 'weqrdsafxc', '2018-10-01 12:22:20'),
(20, 11, 'weqrdsafxc', '2018-10-01 12:01:23'),
(21, 11, 'asdfasdfasdfasdf', '2018-10-01 12:29:21'),
(22, 11, '×¤×•×¡×˜ ×—×“×© !', '2018-10-01 12:29:49'),
(23, 11, '×‘×“×™×§×”', '2018-10-01 12:41:42'),
(24, 11, 'texst', '2018-10-01 12:41:51'),
(25, 11, 'Ø´Ø³ØªÙ†ÙŠØ§ØªÙ†Ø´Ø³ ÙŠÙ„Ø¨', '2018-10-01 12:42:02'),
(26, 33, 'This is maz hhh', '2018-10-01 14:50:59'),
(27, 33, 'test', '2018-10-01 14:53:09'),
(28, 11, 'samer test', '2018-10-01 14:54:10'),
(29, 34, 'helo all', '2018-10-01 15:15:46'),
(30, 35, '×©×œ×•× ×œ×›× ×× ×™ ×—×“×© ×¤×”\n×ž×§×•×•×” ×©××ª× × ×”× ×™×', '2018-10-01 15:37:29'),
(31, 11, 'Test', '2018-10-01 16:29:02'),
(32, 11, 'helo all', '2018-10-01 16:29:19'),
(33, 11, 'asd', '2018-10-01 16:29:26'),
(34, 11, 'asda asd', '2018-10-01 16:29:41'),
(35, 11, 'Ù‡Ø°Ø§ Ù‡Ùˆ Ø§Ù„Ù…ÙˆØ¶ÙˆØ¹ ØŸ\nÙ„ÙƒÙ† ÙˆØ§Ù‚Ø¹ÙŠÙŠÙ† Ù„Ù…Ø§Ø°Ø§ ÙŠÙØ¹Ù„ÙˆÙ† Ù‡Ø°Ø§ ØŸ ', '2018-10-01 16:34:43'),
(36, 11, '', '2018-10-01 18:00:09'),
(37, 11, 'ðŸ˜€ðŸ˜€ðŸ˜€ thanks', '2018-10-01 19:55:41'),
(39, 11, 'test ðŸ™‚ðŸ¤‘', '2018-10-01 19:57:44'),
(40, 11, 'sadf askdf asd f\nasd fasd f\nðŸ¤“ðŸ˜€ðŸ¤–\n', '2018-10-01 20:02:48'),
(41, 11, 'ðŸ˜‚ðŸ˜‚ðŸ˜‚', '2018-10-01 20:04:50'),
(42, 0, '', '2018-10-03 10:39:00'),
(43, 36, 'ðŸ‘´ðŸ¿×¤×•×¡×˜ ×¨××©×•×Ÿ ×©×œ×™ ðŸ˜', '2018-10-03 10:39:00'),
(44, 11, '<b1>Samer</b1>', '2018-10-03 11:11:44'),
(45, 11, '\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or', '2018-10-05 13:55:41'),
(46, 11, '\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or', '2018-10-05 13:55:51'),
(47, 11, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or ', '2018-10-05 13:56:10'),
(48, 11, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2018-10-05 13:56:33'),
(49, 11, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborumLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborumLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2018-10-05 13:57:54'),
(50, 11, 'asdasdqwd', '2018-10-05 13:59:22'),
(51, 11, 'asdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdf\n\n', '2018-10-05 13:59:42'),
(52, 11, 's\ns\ns\ns\ns\ns\ns\ns\ns\ns\ns\nsss\ns\ns\ns\ns\ns\ns\ns\ns\ns\ns\ns\ns\ns\n', '2018-10-05 14:00:07'),
(53, 11, 'sssssssssssss', '2018-10-05 14:19:22'),
(54, 11, 'Ss ', '2018-10-05 14:19:43'),
(55, 11, 'asdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdfasdasdfasdf\nasdasdfasdf\n', '2018-10-05 14:19:57'),
(56, 11, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2018-10-05 14:20:18'),
(57, 11, 'asd S', '2018-10-05 14:21:36'),
(58, 11, 'asd ', '2018-10-05 14:21:43'),
(59, 11, 'Ø³ÙŠ', '2018-10-05 14:21:50'),
(60, 11, 'asdasdØ³ÙŠ', '2018-10-05 14:26:55'),
(61, 11, 'Ø´Ù†Ù…Ø³ØªÙŠðŸ˜Œ', '2018-10-05 14:42:53'),
(62, 11, '×‘×“×™×§×” â˜º', '2018-10-05 14:43:05'),
(63, 11, ' pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or', '2018-10-05 14:47:00'),
(64, 11, 'aðŸ˜‚', '2018-10-05 14:48:14'),
(65, 11, 'ðŸ˜…', '2018-10-05 14:53:58'),
(66, 11, '×‘×“×™×§×” !!ðŸ‹ðŸ½â™‚ðŸ˜Œâ˜º', '2018-10-05 14:59:34'),
(67, 37, '×–×” ×”×¤×•×¡×˜ ×”×¨××©×•×Ÿ ×©×œ×™ !!ðŸš€ðŸš€ðŸš€', '2018-10-05 15:22:11'),
(68, 37, 'asdasd', '2018-10-05 15:40:13'),
(69, 11, 'asdasd', '2018-10-07 17:19:30');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `fname` varchar(50) COLLATE utf8_bin NOT NULL,
  `lname` varchar(50) COLLATE utf8_bin NOT NULL,
  `age` float NOT NULL,
  `profileid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`fname`, `lname`, `age`, `profileid`) VALUES
('', '', 0, 0),
('Samer', 'Atawna', 0, 11),
('Mohamad', 'Atawna', 0, 12),
('wq', 'wq', 0, 13),
('asd', 'qw', 0, 14),
('asd', 'qw', 0, 15),
('asd', 'qw', 0, 16),
('asd', 'qw', 0, 17),
('asd', 'qw', 0, 18),
('asdasd', 'asdasd', 0, 19),
('asdasd', 'asdasd', 0, 20),
('asdasd', 'asdasd', 0, 21),
('asdasd', 'asdasd', 0, 22),
('asdasd', 'asdasd', 0, 23),
('asdasd', 'asdasd', 0, 24),
('asdasd', 'asdasd', 0, 25),
('asdasd', 'asdasd', 0, 26),
('asdasd', 'asdasd', 0, 27),
('asdasd', 'asdasd', 0, 28),
('asdasd', 'asdasd', 0, 29),
('asdasd', 'asdasd', 0, 30),
('asdasd', 'asdasd', 0, 31),
('Rafi', 'Nok', 0, 32),
('Mzi', 'Aer', 0, 33),
('Hisham', 'Atawna', 0, 34),
('×¡××ž×¨', '××œ×¢×˜××•× ×”', 0, 35),
('Liron', 'Ashual', 0, 36),
('×ž×—×ž×“', '××œ×¢×˜××•× ×”', 0, 37);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `email`, `password`) VALUES
(11, 'sameralatawneh@gmail.com', '123'),
(12, 'mo@gmail.com', '123'),
(13, 'asd@walla.com', '123'),
(14, 'sa@askd.com', '111'),
(15, 'sa@askd.com', '111'),
(16, 'sa@askd.com', '111'),
(17, 'sa@askd.com', '111'),
(18, 'sa@askd.com', '111'),
(19, 'adminqw', '123'),
(20, 'adminqw', '123'),
(21, 'adminqw', '123'),
(22, 'adminqw', '123'),
(23, 'adminqw', '123'),
(24, 'adminqw', '123'),
(25, 'adminqw', '123'),
(26, 'adminqw', '123'),
(27, 'adminqw', '123'),
(28, 'adminqw', '123'),
(29, 'adminqw', '123'),
(30, 'adminqw', '123'),
(31, 'adminqw', '123'),
(32, 'rafo@walla.com', '123'),
(33, 'maz@walla.com', '123'),
(34, 'hish@walla.com', '123'),
(35, 'ss@walla.com', '123'),
(36, 'liron@walla.com', '123'),
(37, 'ma', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`likeid`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postid`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`profileid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
