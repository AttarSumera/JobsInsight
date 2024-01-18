-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2023 at 09:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobsinsight`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `post_applied_for` varchar(255) DEFAULT NULL,
  `applied_country` varchar(255) DEFAULT NULL,
  `resume_filename` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `name`, `email`, `mobile`, `gender`, `dob`, `address`, `city`, `country`, `post_applied_for`, `applied_country`, `resume_filename`) VALUES
(1, 'Attar Sumera Arif', 'sumeraattar2001@gmail.com', '09623131375', 'female', '2001-10-15', 'A/P Narayangaon Tal- Junnar Dist-Pune', 'PUNE', 'India', 'Developer', 'India', 'uploads/Enrollment form .pdf'),
(2, 'Dyneshwari Gaikwad', 'dyaneshwari@gmail.com', '9876543210', 'female', '1997-10-27', 'Nashik', 'Nashik', 'India', 'Designer', 'India', 'uploads/myfile (36).pdf'),
(3, 'Dyneshwari Gaikwad', 'dyaneshwari@gmail.com', '9876543210', 'female', '1997-10-27', 'Nashik', 'Nashik', 'India', 'Designer', 'India', 'uploads/myfile (36).pdf'),
(4, 'Attar Sumera Arif', 'sumeraattar2001@gmail.com', '09623131375', 'female', '2000-01-18', 'A/P Narayangaon Tal- Junnar Dist-Pune', 'PUNE', 'India', 'Tester', 'Gulf', 'uploads/generated-pdf.pdf'),
(5, 'Attar Sumera Arif', 'sumeraattar2001@gmail.com', '09623131375', 'female', '1991-01-17', 'A/P Narayangaon Tal- Junnar Dist-Pune', 'PUNE', 'India', 'Tester', 'Australia', 'uploads/update.txt'),
(6, 'Attar Sumera Arif', 'sumeraattar2001@gmail.com', '09623131375', 'female', '1991-01-17', 'A/P Narayangaon Tal- Junnar Dist-Pune', 'PUNE', 'India', 'Tester', 'Australia', 'uploads/update.txt'),
(7, 'Attar Arif', 'aattar2001@gmail.com', '09623131375', 'male', '1994-02-06', 'A/P Narayangaon Tal- Junnar Dist-Pune', 'PUNE', 'India', 'Developer', 'Africa', 'uploads/file (7).pdf'),
(8, 'Henry Christensen', 'voketolof@mailinator.com', 'Consequatur in cupid', 'female', '1973-06-20', 'Error quia facilis s', 'Sed amet qui eos ev', 'Provident labore et', 'Magna odio sunt illu', 'Gulf', 'uploads/PNP DMS PRC 10.pdf'),
(9, 'Karen Hines', 'migufox@mailinator.com', 'Est lorem in offici', 'female', '1990-08-27', 'In tempor non labori', 'Rerum voluptatem und', 'Reiciendis corporis ', 'Sed non dolor ullam ', 'Africa', 'uploads/PNP DMS PRC Avesh.pdf'),
(10, 'Nathan Gould', 'vyzavy@mailinator.com', 'Sed id et qui moles', 'female', '1974-07-11', 'Autem aut nostrum pe', 'Sunt sed rerum veni', 'Natus quod rerum vol', 'Quibusdam vel placea', 'Africa', 'uploads/Aman Singh.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_entries`
--

CREATE TABLE `contact_entries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `submission_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_entries`
--

INSERT INTO `contact_entries` (`id`, `name`, `email`, `mobile_number`, `submission_time`) VALUES
(1, 'Amery Joelle Fletcher Aguirre', 'qetewi@mailinator.com', '09623131375', '2023-10-25 06:32:19');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `submission_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `subject`, `message`, `submission_time`) VALUES
(1, 'Callum Larsen', 'lesibax@mailinator.com', 'Ullamco hic omnis ve', 'Aut voluptas quia qu', '2023-10-25 06:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `other` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`id`, `fname`, `lname`, `company`, `email`, `mobile`, `other`) VALUES
(1, 'Attar', 'Arif', 'Radiant IT Services', 'sumeraattar2001@gmail.com', '09623131375', 'Web Developer'),
(2, 'Dyneshwari', 'Gaikwad', 'Radiant IT Services', 'dyaneshwari@gmail.com', '9876543210', 'React Developer'),
(3, 'Dyneshwari', 'Gaikwad', 'Radiant IT Services', 'dnyaneshwari@gmail.com', '09623131375', 'React Developer'),
(4, 'Attar', 'Arif', 'Radiant IT Services', 'sumeraattar2001@gmail.com', '09623131375', 'XXXX'),
(5, 'Attar', 'Arif', 'Radiant IT Services', 'sumeraattar2001@gmail.com', '09623131375', 'zzz'),
(6, 'Attar', 'Arif', 'Radiant IT Services', 'sumeraattar2001@gmail.com', '09623131375', 'zzz'),
(7, 'Attar', 'Arif', 'Radiant IT Services', 'sumeraattar2001@gmail.com', '09623131375', 'zzz'),
(8, 'Trevor Berg', 'Lyle Crosby', 'Foster Jordan Plc', 'juze@mailinator.com', 'Aute explicabo Assu', 'Minim est eveniet '),
(9, 'Gary Barber', 'Zachary Glenn', 'Barton Wiley Plc', 'xigis@mailinator.com', 'Deserunt quo pariatu', 'Eiusmod sequi ut sed'),
(10, 'Lillith Combs', 'Mariko Castaneda', 'Barnett Downs Inc', 'kyfozoxiwi@mailinator.com', 'Rerum quas facilis m', 'Consectetur esse con');

-- --------------------------------------------------------

--
-- Table structure for table `form_submissions`
--

CREATE TABLE `form_submissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `education` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `resume_path` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `submission_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form_submissions`
--

INSERT INTO `form_submissions` (`id`, `name`, `email`, `education`, `mobile_number`, `resume_path`, `position`, `message`, `submission_time`) VALUES
(1, 'Attar Sumera Arif', 'sumeraattar2001@gmail.com', 'B E Computer Engineering', '09623131375', 'uploads/August 2023.xlsx', 'asdfgh', 'Zxcvbn', '2023-10-25 06:14:31'),
(2, 'Attar Sumera Arif', 'sumeraattar2001@gmail.com', 'B E Computer Engineering', '09623131375', 'uploads/generated-pdf.pdf', 'asdfgh', 'vgt4rd', '2023-10-25 06:17:24'),
(3, 'Raja Leblanc', 'huco@mailinator.com', 'Aute provident rem ', 'Quae quo iste et qua', 'uploads/Jobsinsight - Recruitment Reinvented  Content (2).pdf', 'Aut consequuntur ips', 'Dolore quidem nobis ', '2023-10-25 06:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `institute_data`
--

CREATE TABLE `institute_data` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `address` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `post_applied_for` varchar(255) NOT NULL,
  `applied_country` varchar(50) NOT NULL,
  `resume_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `institute_data`
--

INSERT INTO `institute_data` (`id`, `name`, `email`, `mobile`, `gender`, `dob`, `address`, `city`, `country`, `post_applied_for`, `applied_country`, `resume_path`) VALUES
(1, 'Attar Sumera Arif', 'sumeraattar2001@gmail.com', '09623131375', 'female', '2003-09-21', 'A/P Narayangaon Tal- Junnar Dist-Pune', 'PUNE', 'India', 'Tester', 'India', 'uploads/Testimonials from Experienced and Freshers for Jobsinsight.pdf'),
(2, 'William Branch', 'tipyfy@mailinator.com', 'Perspiciatis eo', 'male', '1999-04-04', 'Dolore nisi reprehen', 'Nemo commodo possimu', 'Similique est aut vo', 'Neque elit error no', 'India', 'upload_resume_contact/Enrollment (21).pdf');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `category`, `location`) VALUES
(1, '[designer]', '[designer]', '[pune]');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subscription_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `subscription_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `subscription_time`, `subscription_type`) VALUES
(1, 'qalap@mailinator.com', '2023-10-25 06:49:35', 'newsletter'),
(2, 'lesibax@mailinator.com', '2023-10-25 06:50:44', 'newsletter'),
(3, 'sumeraattar@gmail.com', '2023-10-25 06:52:50', 'newsletter'),
(4, 'qetewi@mailinator.com', '2023-10-25 06:53:09', 'newsletter'),
(5, 'huco@mailinator.com', '2023-10-25 06:53:55', 'newsletter'),
(6, 'nivedita@gmail.com', '2023-10-25 08:34:30', 'newsletter'),
(7, 'admin@gmail.com', '2023-10-25 08:34:58', 'newsletter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_entries`
--
ALTER TABLE `contact_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_submissions`
--
ALTER TABLE `form_submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institute_data`
--
ALTER TABLE `institute_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_entries`
--
ALTER TABLE `contact_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `form_submissions`
--
ALTER TABLE `form_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `institute_data`
--
ALTER TABLE `institute_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
