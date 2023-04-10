-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 10, 2023 at 04:43 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms4.2.1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `aname` varchar(30) NOT NULL,
  `aheadline` varchar(30) NOT NULL,
  `abio` varchar(500) NOT NULL,
  `aimage` varchar(60) NOT NULL DEFAULT 'avatar.png',
  `addedby` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `datetime`, `username`, `password`, `aname`, `aheadline`, `abio`, `aimage`, `addedby`) VALUES
(1, 'January-13-2022 23:54:07', 'siva', '1234', 'Siva Matta', 'Web Developer', 'I have experience with  React, JQuery and other frameworks. Great understanding of OOP principles, Data Structures, Algorithms, Design Patterns. Experience in responsive and mobile WEB development. Works with client-side and distributed development teams. Experience with web systems running on various OS and browsers, including older versions. Strong understanding of CSS pre-processors (SASS / SCSS) and task runners (Grunt, Gulp, Webpack). ', 'biometrisch.jpg', 'Siva'),
(2, 'January-23-2022 23:57:13', 'Vinny', '1234', 'Vineela Punuru', 'Designer', '  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.   ', 'avatar.png', 'Siva Matta'),
(5, 'January-14-2023 00:20:41', 'Rupa', '1234', 'Matta Rupa', 'Writer', '  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.   ', 'avatar.png', 'Siva Matta'),
(6, 'May-14-2022 11:27:38', 'Madhuri', '1234', 'Madhuri Tawade', 'Developer, Blogger', '  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.   ', 'avatar.png', 'Vineela Punuru'),
(7, 'January-18-2023 11:28:44', 'Mani', '1234', 'Manikanta Kommuru', 'Journalist, Content Writer', 'I am good at writing. My duty involved writing content for Morning Washington. Designing social media campaign for local merchants and road map for investigative journalism. During the period of 20012-1017 i worked as a Bureau chief for Gajumatta Herald. Furthermore, i worked on many projects which includes investigating economical crisis at Mars. Finding water at Sun and writing a thesis for black holes in moon.', 'zoe.jpg', 'Siva Matta');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `datetime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `author`, `datetime`) VALUES
(11, 'Data', 'siva', 'April-10-2023 16:31:19'),
(12, 'Collaboration', 'siva', 'April-10-2023 17:06:09'),
(13, 'Sports', 'siva', 'April-10-2023 18:24:53'),
(14, 'Studying Abroad', 'Vinny', 'April-10-2023 18:25:19'),
(15, 'Night Life', 'Vinny', 'April-10-2023 18:25:28'),
(16, 'Semester', 'Vinny', 'April-10-2023 18:25:35'),
(17, 'Day In the Life', 'Rupa', 'April-10-2023 18:26:00'),
(18, 'Life as a part time student', 'Rupa', 'April-10-2023 18:26:15');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `approvedby` varchar(50) NOT NULL,
  `status` varchar(3) NOT NULL,
  `post_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `datetime`, `name`, `email`, `comment`, `approvedby`, `status`, `post_id`) VALUES
(25, 'April-10-2023 18:37:23', 'siva', 'siva@gmail.com', 'I like this post very much', 'Matta Rupa', 'ON', 56),
(26, 'April-10-2023 18:43:10', 'Matta', 'Matta@gmail.com', 'Please elborate your post', 'Siva Matta', 'ON', 61);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  `title` varchar(300) NOT NULL,
  `category` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `post` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `datetime`, `title`, `category`, `author`, `image`, `post`) VALUES
(56, 'April-10-2023 18:21:55', '8 Types of Collaboration to Use in your Digital Workplace', 'Collaboration', 'siva', 'TeamCollaboration.jpeg', 'The internet has changed the workplace forever. We now have a digital workplace and technology that can assist us in doing our work that simply did not exist a generation ago. The emphasis on developing new technology has not taken away the need for humans to interact with each other, however. We still need to collaborate to accomplish a variety of tasks. Please continue reading to discover what collaboration in the workplace is and eight kinds of collaboration used by modern businesses.'),
(57, 'April-10-2023 18:23:54', 'What Are Collaboration Methods and Techniques?', 'Collaboration', 'siva', '6ways.png', 'Gone are the days of a lone genius tapping away in the corner to generate the next big ideas and solutions.\r\n\r\nNowadays, the focus is on team effort. There are a multitude of benefits to be reaped from a collaborative workplace, from greater employee satisfaction to increased idea generation.\r\n\r\nOne of the most important outcomes of a collaborative workplace is the positive effect it has on an organisation’s innovation output. A cohesive environment is the perfect vehicle for creative thinking and idea generation.'),
(58, 'April-10-2023 18:36:55', 'Work and Study', 'Life as a part time student', 'Rupa', 'student.jpeg', 'When you look into attending university, it comes with many different options. You don’t always have to follow the standard path of doing a full time, three-year degree. Degrees can come in all varieties, and one of those options is a part-time degree. Part-time degrees are perfect for anyone who has other commitments alongside their studies. It means you don’t have to abandon whatever you’re handling right now completely; instead, you can do both! If you’re considering a part-time degree, you should make sure it suits you. There are many pros and cons for you to consider, but thankfully, this post will highlight them all for you!'),
(59, 'April-10-2023 18:40:00', 'Ending the Semester with a Student Blogging Project', 'Semester', 'Vinny', 'semster.webp', 'December is exhausting for teachers. The days are shorter. The weather grows colder and (at least here in Oregon) wetter. Students are anxious — whether it’s a buzzing excitement for vacation or a sense of dread that some kids feel in homes that are unsafe during the holidays. This year, in particular, feels harder. Students are experiencing pandemic fatigue and many of them are feeling the loss of not being able to visit loved ones for the holidays.\r\n\r\nAnd teachers are tired. They’re tired of redirecting behaviors and tired of the mid-year pressure of the test and simply tired of the sheer energy it takes to be a teacher. This year has been especially hard, with everything from school board battles over Critical Race Theory to the “deviant licks” trend leading to theft and vandalism. Add to this the sub shortage and quarantines and it’s been exhausting.\r\n\r\nStudent engagement is challenging this year and it feel disheartening when students don’t turn work in. While there’s no perfect solution for this, as teachers, we can choose to end the semester on a creative note. One of the best ways is through a project that taps into student interests.'),
(60, 'April-10-2023 18:41:19', 'A Day In My Life', 'Day In the Life', 'Vinny', 'day.jpeg', 'Once my girls are both up and going I go back to my bedroom to put on my workout clothes and then I head to the kitchen to start making breakfast and packing lunches.  El gets lunch at her school, but Ad and Kole still like to take a lunch despite my on-going efforts to convince them that school lunch is amazing and lunch from home is of the devil.  Lunch packing.  I am not a fan.  I always have the kids set their lunch boxes and water bottles out on this counter the night before so I’m not searching for them the next morning and sometimes (if I’m on my A game) they get the packing started the night before with things that won’t go bad.'),
(61, 'April-10-2023 18:42:24', 'A Day In The Life Of A Blogger', 'Day In the Life', 'Vinny', 'blogger.webp', 'I’ve been running my blog ever since April 2011. I can not even believe how long it has been! If you’re curious about how I started my blog, you can check out this post. I went full-time blogger back in 2017 leaving a corporate job to pursue this hobby full-time.\r\n\r\nStill, people don’t really understand what a day in the life of a blogger entails. A lot of people may think it’s just taking photos and drinking pretty lattes so you can Instagram it. But if you’re serious about the business and the work, it’s a hell of a lot more than that.\r\n\r\nThere are definitely positive and negative aspects of blogging. A few favorite positives are working for yourself and making your own schedule. The freedom this job allows me is everything. A few negatives include that the industry is so new and ever-changing. Who knows where it’ll be in a year, or 10 years. And the big question I always ask myself, how long do I even want to do this for?\r\n\r\nThere’s also the big comparison game in the industry. Am I doing enough? Why didn’t I get that project? Should I be talking about that sale too? It’s why I unfollowed over 400 people in the last 6 months. Trying to stay laser-focused on being a creator and not a consumer.\r\n\r\nThe life of a full-time blogger may vary from blogger to blogger. But from what I’ve gathered from my peers who take this as seriously as I do, it is our full time job after all, it all kind of looks pretty similar. Here’s what a typical day in my life as a full-time blogger.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `Foreign_Relation` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
