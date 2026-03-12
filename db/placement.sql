-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2026 at 04:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `placement`
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
(5, 5, 3, 'resumes/karthik_backend.pdf', '2026-03-12', 'Rejected'),
(6, 6, 6, 'resumes/vijay.pdf', '2026-03-12', 'Applied'),
(7, 7, 6, 'resumes/ajay.pdf', '2026-03-12', 'Applied'),
(8, 8, 7, 'resumes/meera.pdf', '2026-03-12', 'Shortlisted'),
(9, 9, 8, 'resumes/divya.pdf', '2026-03-13', 'Applied'),
(10, 10, 9, 'resumes/santhosh.pdf', '2026-03-13', 'Applied'),
(11, 1, 11, 'resume1.pdf', '2026-03-01', 'Applied'),
(12, 2, 12, 'resume2.pdf', '2026-03-01', 'Applied'),
(13, 3, 13, 'resume3.pdf', '2026-03-02', 'Rejected'),
(14, 4, 14, 'resume4.pdf', '2026-03-02', 'Applied'),
(15, 5, 15, 'resume5.pdf', '2026-03-03', 'Selected'),
(16, 6, 16, 'resume6.pdf', '2026-03-03', 'Applied'),
(17, 7, 17, 'resume7.pdf', '2026-03-04', 'Rejected'),
(18, 8, 18, 'resume8.pdf', '2026-03-04', 'Applied'),
(19, 9, 19, 'resume9.pdf', '2026-03-05', 'Selected'),
(20, 10, 20, 'resume10.pdf', '2026-03-05', 'Applied'),
(21, 1, 21, 'resume11.pdf', '2026-03-06', 'Applied'),
(22, 2, 22, 'resume12.pdf', '2026-03-06', 'Rejected'),
(23, 3, 23, 'resume13.pdf', '2026-03-07', 'Selected'),
(24, 4, 24, 'resume14.pdf', '2026-03-07', 'Applied'),
(25, 5, 25, 'resume15.pdf', '2026-03-08', 'Applied'),
(26, 6, 26, 'resume16.pdf', '2026-03-08', 'Rejected'),
(27, 7, 27, 'resume17.pdf', '2026-03-09', 'Applied'),
(28, 8, 28, 'resume18.pdf', '2026-03-09', 'Selected'),
(29, 9, 29, 'resume19.pdf', '2026-03-10', 'Applied'),
(30, 10, 30, 'resume20.pdf', '2026-03-10', 'Rejected');

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
(5, 'Amazon', 'https://www.amazon.com', 'E-Commerce', 'Bangalore'),
(6, 'Capgemini', 'https://www.capgemini.com', 'IT Services', 'Chennai'),
(7, 'HCL', 'https://www.hcltech.com', 'IT Services', 'Noida'),
(8, 'Accenture', 'https://www.accenture.com', 'Consulting', 'Bangalore'),
(9, 'Cognizant', 'https://www.cognizant.com', 'IT Services', 'Chennai'),
(10, 'IBM', 'https://www.ibm.com', 'Technology', 'Bangalore');

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
(2, 'BIT'),
(3, 'BCA'),
(4, 'ENG'),
(5, 'MCA'),
(6, 'CS'),
(7, 'BCOM'),
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
  `posted_date` date DEFAULT NULL,
  `status` enum('Upcoming','Ongoing','Closed') DEFAULT 'Upcoming'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job_id`, `title`, `description`, `location`, `salary`, `eligibility_cgpa`, `company_id`, `posted_date`, `status`) VALUES
(1, 'Software Engineer', 'Develop enterprise applications', 'Chennai', 600000.00, 7.00, 1, '2026-03-01', 'Upcoming'),
(2, 'System Engineer', 'Maintain IT infrastructure', 'Bangalore', 550000.00, 6.50, 2, '2026-03-03', 'Upcoming'),
(3, 'Backend Developer', 'Develop backend APIs', 'Hyderabad', 700000.00, 7.50, 3, '2026-03-05', 'Upcoming'),
(4, 'Full Stack Developer', 'Work with React and Node', 'Chennai', 800000.00, 7.50, 4, '2026-03-07', 'Upcoming'),
(5, 'Cloud Engineer', 'Manage AWS cloud systems', 'Bangalore', 900000.00, 8.00, 5, '2026-03-08', 'Upcoming'),
(6, 'Data Analyst', 'Analyze business data', 'Chennai', 650000.00, 7.00, 6, '2026-03-10', 'Closed'),
(7, 'DevOps Engineer', 'CI/CD pipelines', 'Bangalore', 850000.00, 7.50, 7, '2026-03-10', 'Closed'),
(8, 'AI Engineer', 'Machine learning systems', 'Hyderabad', 950000.00, 8.00, 8, '2026-03-11', 'Closed'),
(9, 'QA Engineer', 'Software testing', 'Chennai', 500000.00, 6.50, 9, '2026-03-12', 'Closed'),
(10, 'Cyber Security Analyst', 'Security monitoring', 'Bangalore', 900000.00, 7.80, 10, '2026-03-12', 'Closed'),
(11, 'Software Engineer', 'Develop backend systems', 'Bangalore', 700000.00, 7.50, 1, '2026-03-01', 'Upcoming'),
(12, 'Frontend Developer', 'Build responsive UI', 'Chennai', 650000.00, 7.00, 2, '2026-03-02', 'Ongoing'),
(13, 'Backend Developer', 'Develop APIs and services', 'Hyderabad', 720000.00, 7.20, 3, '2026-03-03', 'Closed'),
(14, 'Data Analyst', 'Analyze company data', 'Pune', 600000.00, 7.00, 1, '2026-03-04', 'Upcoming'),
(15, 'AI Engineer', 'Develop AI models', 'Bangalore', 900000.00, 8.00, 2, '2026-03-05', 'Ongoing'),
(16, 'DevOps Engineer', 'Manage CI/CD pipelines', 'Mumbai', 750000.00, 7.30, 3, '2026-03-06', 'Closed'),
(17, 'Cloud Engineer', 'Manage cloud infrastructure', 'Delhi', 800000.00, 7.50, 1, '2026-03-07', 'Upcoming'),
(18, 'QA Engineer', 'Test software products', 'Chennai', 550000.00, 6.80, 2, '2026-03-08', 'Closed'),
(19, 'Full Stack Developer', 'Develop full stack apps', 'Hyderabad', 850000.00, 7.40, 3, '2026-03-09', 'Ongoing'),
(20, 'Mobile App Developer', 'Build Android apps', 'Bangalore', 700000.00, 7.20, 1, '2026-03-10', 'Upcoming'),
(21, 'Cyber Security Analyst', 'Monitor security systems', 'Pune', 780000.00, 7.50, 2, '2026-03-11', 'Closed'),
(22, 'Machine Learning Engineer', 'Build ML pipelines', 'Hyderabad', 950000.00, 8.10, 3, '2026-03-12', 'Ongoing'),
(23, 'UI UX Designer', 'Design user interfaces', 'Chennai', 600000.00, 6.90, 1, '2026-03-13', 'Upcoming'),
(24, 'System Administrator', 'Maintain servers', 'Delhi', 580000.00, 6.80, 2, '2026-03-14', 'Closed'),
(25, 'Database Administrator', 'Manage databases', 'Bangalore', 720000.00, 7.20, 3, '2026-03-15', 'Ongoing'),
(26, 'Business Analyst', 'Analyze business processes', 'Mumbai', 640000.00, 7.00, 1, '2026-03-16', 'Upcoming'),
(27, 'Network Engineer', 'Maintain network systems', 'Pune', 610000.00, 6.90, 2, '2026-03-17', 'Closed'),
(28, 'Game Developer', 'Develop game engines', 'Hyderabad', 770000.00, 7.30, 3, '2026-03-18', 'Ongoing'),
(29, 'Technical Support Engineer', 'Provide tech support', 'Chennai', 500000.00, 6.50, 1, '2026-03-19', 'Upcoming'),
(30, 'Automation Tester', 'Automate software testing', 'Bangalore', 690000.00, 7.00, 2, '2026-03-20', 'Closed');

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
(5, 3),
(6, 1),
(6, 3),
(7, 1),
(8, 1),
(9, 3),
(11, 1),
(12, 1),
(13, 2),
(14, 3),
(15, 1),
(16, 2),
(17, 3),
(18, 1),
(19, 2),
(20, 3),
(21, 1),
(22, 2),
(23, 3),
(24, 1),
(25, 2),
(26, 3),
(27, 1),
(28, 2),
(29, 3),
(30, 1);

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
(5, 'David Wilson', 'david.wilson@amazon.com', 5),
(6, 'Rohit Sharma', 'rohit@capgemini.com', 6),
(7, 'Neha Gupta', 'neha@hcl.com', 7),
(8, 'Amit Patel', 'amit@accenture.com', 8),
(9, 'Shalini R', 'shalini@cognizant.com', 9),
(10, 'Peter James', 'peter@ibm.com', 10);

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
(5, 5, 'david.wilson@amazon.com', 'admin123'),
(6, 6, 'rohit@capgemini.com', 'admin123'),
(7, 7, 'neha@hcl.com', 'admin123'),
(8, 8, 'amit@accenture.com', 'admin123'),
(9, 9, 'shalini@cognizant.com', 'admin123'),
(10, 10, 'peter@ibm.com', 'admin123');

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
(1, 'Arun Kumar', 'arun@college.edu', '9876543210', 1, 8.20, '2025'),
(2, 'Priya Sharma', 'priya@college.edu', '9876543211', 2, 7.90, '2025'),
(3, 'Rahul Verma', 'rahul@college.edu', '9876543212', 1, 8.75, '2025'),
(4, 'Sneha Iyer', 'sneha@college.edu', '9876543213', 3, 8.10, '2025'),
(5, 'Karthik R', 'karthik@college.edu', '9876543214', 2, 7.60, '2025'),
(6, 'Vijay Kumar', 'vijay@college.edu', '9876543201', 1, 8.10, '2025'),
(7, 'Ajay Singh', 'ajay@college.edu', '9876543202', 2, 7.80, '2025'),
(8, 'Meera Das', 'meera@college.edu', '9876543203', 3, 8.40, '2025'),
(9, 'Divya N', 'divya@college.edu', '9876543204', 1, 7.95, '2025'),
(10, 'Santhosh K', 'santhosh@college.edu', '9876543205', 2, 8.00, '2025'),
(11, 'Rahul S', 'rahuls@college.edu', '9876543206', 3, 8.35, '2025'),
(12, 'Ananya R', 'ananya@college.edu', '9876543207', 1, 9.00, '2025'),
(13, 'Kiran P', 'kiran@college.edu', '9876543208', 2, 7.50, '2025'),
(14, 'Lokesh V', 'lokesh@college.edu', '9876543209', 3, 7.90, '2025'),
(15, 'Sathya M', 'sathya@college.edu', '9876543215', 1, 8.20, '2025');

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
(5, 5, 'karthik@college.edu', '123456'),
(6, 6, 'vijay@college.edu', '123456'),
(7, 7, 'ajay@college.edu', '123456'),
(8, 8, 'meera@college.edu', '123456'),
(9, 9, 'divya@college.edu', '123456'),
(10, 10, 'santhosh@college.edu', '123456'),
(11, 11, 'rahuls@college.edu', '123456'),
(12, 12, 'ananya@college.edu', '123456'),
(13, 13, 'kiran@college.edu', '123456'),
(14, 14, 'lokesh@college.edu', '123456'),
(15, 15, 'sathya@college.edu', '123456');

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
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `recruiters`
--
ALTER TABLE `recruiters`
  MODIFY `recruiter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `recruiter_login`
--
ALTER TABLE `recruiter_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `student_login`
--
ALTER TABLE `student_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
