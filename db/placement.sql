-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql309.infinityfree.com
-- Generation Time: Mar 12, 2026 at 08:11 AM
-- Server version: 11.4.10-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_41372192_placement`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `application_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `resume_url` text DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`application_id`, `student_id`, `job_id`, `resume_url`, `application_date`, `status`) VALUES
(1, 1, 1, 'resumes/arun_software.pdf', '2026-03-10', 'Applied'),
(2, 1, 5, 'resumes/arun_cloud.pdf', '2026-03-11', 'Applied'),
(3, 2, 2, 'resumes/priya_system.pdf', '2026-03-10', 'Shortlisted'),
(4, 4, 4, 'resumes/sneha_fullstack.pdf', '2026-03-11', 'Interview Scheduled'),
(5, 5, 3, 'resumes/karthik_backend.pdf', '2026-03-12', 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(150) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `industry` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`company_id`, `company_name`, `website`, `industry`, `location`) VALUES
(1, 'TCS', 'https://www.tcs.com', 'IT Services', 'Chennai'),
(2, 'Infosys', 'https://www.infosys.com', 'IT Services', 'Bangalore'),
(3, 'Wipro', 'https://www.wipro.com', 'IT Services', 'Hyderabad'),
(4, 'Zoho', 'https://www.zoho.com', 'Software', 'Chennai'),
(5, 'Amazon', 'https://www.amazon.com', 'E-Commerce', 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`) VALUES
(1, 'CS'),
(2, 'BITy'),
(3, 'BCA'),
(4, 'ENG'),
(5, 'MCA'),
(6, 'CS'),
(7, 'BITy'),
(8, 'BCA'),
(9, 'ENG'),
(10, 'MCA');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `eligibility_cgpa` decimal(3,2) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `posted_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job_id`, `title`, `description`, `location`, `salary`, `eligibility_cgpa`, `company_id`, `posted_date`) VALUES
(1, 'Software Engineer', 'Develop enterprise applications', 'Chennai', '600000.00', '7.00', 1, '2026-03-01'),
(2, 'System Engineer', 'Maintain IT infrastructure', 'Bangalore', '550000.00', '6.50', 2, '2026-03-03'),
(3, 'Backend Developer', 'Develop backend APIs', 'Hyderabad', '700000.00', '7.50', 3, '2026-03-05'),
(4, 'Full Stack Developer', 'Work with React and Node', 'Chennai', '800000.00', '7.50', 4, '2026-03-07'),
(5, 'Cloud Engineer', 'Manage AWS cloud systems', 'Bangalore', '900000.00', '8.00', 5, '2026-03-08');

-- --------------------------------------------------------

--
-- Table structure for table `job_departments`
--

CREATE TABLE `job_departments` (
  `job_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `job_departments`
--

INSERT INTO `job_departments` (`job_id`, `department_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `recruiters`
--

CREATE TABLE `recruiters` (
  `recruiter_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `recruiters`
--

INSERT INTO `recruiters` (`recruiter_id`, `name`, `email`, `company_id`) VALUES
(1, 'Ravi Menon', 'ravi.menon@tcs.com', 1),
(2, 'Anita Rao', 'anita.rao@infosys.com', 2),
(3, 'Suresh Kumar', 'suresh.kumar@wipro.com', 3),
(4, 'Meena Nair', 'meena.nair@zoho.com', 4),
(5, 'David Wilson', 'david.wilson@amazon.com', 5);

-- --------------------------------------------------------

--
-- Table structure for table `recruiter_login`
--

CREATE TABLE `recruiter_login` (
  `login_id` int(11) NOT NULL,
  `recruiter_id` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `recruiter_login`
--

INSERT INTO `recruiter_login` (`login_id`, `recruiter_id`, `email`, `password`) VALUES
(1, 1, 'ravi.menon@tcs.com', 'admin123'),
(2, 2, 'anita.rao@infosys.com', 'admin123'),
(3, 3, 'suresh.kumar@wipro.com', 'admin123'),
(4, 4, 'meena.nair@zoho.com', 'admin123'),
(5, 5, 'david.wilson@amazon.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `cgpa` decimal(3,2) DEFAULT NULL,
  `graduation_year` year(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `name`, `email`, `phone`, `department_id`, `cgpa`, `graduation_year`) VALUES
(1, 'Arun Kumar', 'arun@college.edu', '9876543210', 1, '8.20', 2025),
(2, 'Priya Sharma', 'priya@college.edu', '9876543211', 2, '7.90', 2025),
(3, 'Rahul Verma', 'rahul@college.edu', '9876543212', 1, '8.75', 2025),
(4, 'Sneha Iyer', 'sneha@college.edu', '9876543213', 3, '8.10', 2025),
(5, 'Karthik R', 'karthik@college.edu', '9876543214', 2, '7.60', 2025);

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `login_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`login_id`, `student_id`, `email`, `password`) VALUES
(1, 1, 'arun@college.edu', '123456'),
(2, 2, 'priya@college.edu', '123456'),
(3, 3, 'rahul@college.edu', '123456'),
(4, 4, 'sneha@college.edu', '123456'),
(5, 5, 'karthik@college.edu', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`application_id`),
  ADD UNIQUE KEY `unique_application` (`student_id`,`job_id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`),
  ADD UNIQUE KEY `company_name` (`company_name`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `job_departments`
--
ALTER TABLE `job_departments`
  ADD PRIMARY KEY (`job_id`,`department_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `recruiters`
--
ALTER TABLE `recruiters`
  ADD PRIMARY KEY (`recruiter_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `recruiter_login`
--
ALTER TABLE `recruiter_login`
  ADD PRIMARY KEY (`login_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `recruiter_id` (`recruiter_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `student_login`
--
ALTER TABLE `student_login`
  ADD PRIMARY KEY (`login_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `student_id` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `recruiters`
--
ALTER TABLE `recruiters`
  MODIFY `recruiter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `recruiter_login`
--
ALTER TABLE `recruiter_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_login`
--
ALTER TABLE `student_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
