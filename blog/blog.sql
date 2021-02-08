-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2021 at 01:16 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `sno` int(8) NOT NULL,
  `content` varchar(200) NOT NULL,
  `post_id` int(8) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`sno`, `content`, `post_id`, `dt`) VALUES
(6, 'This is my first comment in django', 15, '2021-02-07 19:47:51'),
(12, '', 14, '2021-02-07 19:53:08'),
(29, 'first', 16, '2021-02-07 11:50:40'),
(31, 'third', 16, '2021-02-07 11:50:53'),
(33, 'Bahut maza aaya', 34, '2021-02-07 14:13:01'),
(34, 'hii', 35, '2021-02-07 13:18:59'),
(35, 'true enough for gained information', 36, '2021-02-07 16:03:18');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(8) NOT NULL,
  `title` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `postedby` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp(),
  `USERNAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `content`, `postedby`, `dt`, `USERNAME`) VALUES
(14, 'flask', 'Flask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. Wikipedia', 'Aditya Raj', '2021-02-07 18:21:43', 'Dear'),
(15, 'Django', 'Flask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. WikipediaFlask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. WikipediaFlask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. Wikipedia', 'Aditya', '2021-02-07 18:21:43', 'Dear'),
(16, 'sklearn', 'Flask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. WikipediaFlask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. WikipediaFlask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. WikipediaFlask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. WikipediaFlask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. Wikipedia', 'admin', '2021-02-07 18:21:43', 'admin'),
(21, 'Java', 'javaTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort List', 'admin', '2021-02-07 12:21:43', 'ADMIN'),
(22, 'Python', 'Tpythonabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort List', 'admin', '2021-02-07 12:07:09', 'ADMIN'),
(23, 'planet', 'Tabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort List', 'Aditya', '2021-02-07 12:07:43', 'DEAR'),
(24, 'planet', 'dheuhiuediuwe\r\nTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort List', 'Aditya', '2021-02-06 12:07:53', 'DEAR'),
(25, 'planet', 'dheuhiuediuwe\r\nTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort List', 'dear', '2020-02-06 12:07:54', 'DEAR'),
(26, 'my audio', 'cjjeefioarTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort ListTabs\r\nDropdowns\r\nAccordions\r\nSide Navigation\r\nTop Navigation\r\nModal Boxes\r\nProgress Bars\r\nParallax\r\nLogin Form\r\nHTML Includes\r\nGoogle Maps\r\nRange Sliders\r\nTooltips\r\nSlideshow\r\nFilter List\r\nSort List', 'dear', '2021-02-07 12:08:04', 'DEAR'),
(27, 'Flask', 'Flask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party librari…', 'Aditya', '2021-02-07 12:08:30', 'DEAR'),
(36, 'Arduino', 'Arduino is an open-source hardware and software company, project and user community that designs and manufactures single-board microcontrollers and microcontroller kits for building digital devices. Its hardware products are licensed under a CC-BY-S…', 'bijay', '2021-02-07 15:06:33', 'BIJAY');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(8) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `username`, `password`, `dt`) VALUES
(9, 'admin9674605071', '$2y$10$URL5xTxbZvKrEe2bvuxZl.cHGC6l5KPQntPZUWqU1rXtmyTZkSyOW', '2020-09-09 22:53:45'),
(10, 'dear7870', '$2y$10$GLWIFQFGMQTZr8MCWOETnemYXXexkuZzK1DJYy/QgPFTDeXxY3yL.', '2020-11-13 19:01:22'),
(11, 'dear@raj', '$2y$10$a6ZOYUdGWqQT0c02cSxngexoFz2x9PybLaBxvC0NJ6THsGUX4BaFu', '2020-11-30 21:20:58'),
(13, 'adi7870', '$2y$10$QJVoRN271qhdkYEd6dWxYOIcEnyLPl7BdijSJYujeXfUZOxLIekJO', '2021-02-08 17:27:46'),
(14, 'main', '$2y$10$0qcxLeBZcPnuUtmrXr479.deH1mz8xp1RE7y7/Yy5v37z8dfGW6fq', '2021-02-08 17:28:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `content` (`content`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `sno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
