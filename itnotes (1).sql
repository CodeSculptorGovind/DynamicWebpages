-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2019 at 07:44 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `itnotes`
--

CREATE TABLE `itnotes` (
  `id` int(11) NOT NULL,
  `TopicName` varchar(255) COLLATE armscii8_bin NOT NULL,
  `Defination` varchar(10000) COLLATE armscii8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

--
-- Dumping data for table `itnotes`
--

INSERT INTO `itnotes` (`id`, `TopicName`, `Defination`) VALUES
(1, 'Input Devices', 'In computing, an input device is a piece of computer hardware equipment used to provide data and control signals to an information processing system such as a computer or information appliance. Examples of input devices include keyboards, mouse, scanners.\r\n\r\nKeyboard. Keyboard is the most common and very popular input device which helps to input data to the computer. </br>\r\nMouse. Mouse is the most popular pointing device. </br>\r\nJoystick. Joystick is also a pointing device, which is used to move the cursor position on a monitor screen. </br>'),
(2, 'Output Device', 'An output device is any device used to send data from a computer to another device or user. Most computer data output that is meant for humans is in the form of audio or video. Thus, most output devices used by humans are in these categories. Examples include monitors, projectors, speakers, headphones and printers.'),
(3, 'Common Language Runtime (CLR)', 'The Common Language Runtime (CLR), the virtual machine component of Microsoft\'s .NET framework, manages the execution of .NET programs. Just-in-time compilation converts the managed code (compiled intermediate language code), into machine instructions which are then executed on the CPU of the computer.'),
(4, 'Common Type System (CTS)', 'Common Type System. In Microsoft\'s .NET Framework, the Common Type System (CTS) is a standard that specifies how type definitions and specific values of types are represented in computer memory. It is intended to allow programs written in different programming languages to easily share information.'),
(5, 'HuffMan Coding', 'Image result for Huffman Codingen.wikipedia.org\r\nHuffman Coding also called as Huffman Encoding is a famous greedy algorithm that is used for the lossless compression of data. It uses variable length encoding where variable length codes are assigned to all the characters depending on how frequently they occur in the given text.'),
(6, 'Shannon Fano Algorithm ', 'Shannon Fano Algorithm is an entropy encoding technique for lossless data compression of multimedia. Named after Claude Shannon and Robert Fano, it assigns a code to each symbol based on their probabilities of occurrence. It is a variable length encoding scheme, that is, the codes assigned to the symbols will be of varying length.\r\n<br>\r\nHOW DOES IT WORK?<br>\r\nThe steps of the algorithm are as follows:\r\n<ol><li>\r\nCreate a list of probabilities or frequency counts for the given set of symbols so that the relative frequency of occurrence of each symbol is known.</li>\r\n<li>\r\nSort the list of symbols in decreasing order of probability, the most probable ones to the left and least probable to the right.</li>\r\n<li>\r\nSplit the list into two parts, with the total probability of both the parts being as close to each other as possible.</li>\r\n<li>\r\nAssign the value 0 to the left part and 1 to the right part.</li>\r\n\r\n<li>Repeat the steps 3 and 4 for each part, until all the symbols are split into individual subgroups.\r\n</li></ol>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `itnotes`
--
ALTER TABLE `itnotes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `itnotes`
--
ALTER TABLE `itnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
