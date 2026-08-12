-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2023 at 10:04 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_voting_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate_election_type_name`
--

CREATE TABLE `candidate_election_type_name` (
  `id` int(11) NOT NULL,
  `candidate_election_type` varchar(256) NOT NULL,
  `candidate_election_state` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidate_election_type_name`
--

INSERT INTO `candidate_election_type_name` (`id`, `candidate_election_type`, `candidate_election_state`) VALUES
(1, 'Assembly Constituency - 2020', 'NCT OF DELHI');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_info`
--

CREATE TABLE `candidate_info` (
  `id` int(11) NOT NULL,
  `candidate_name` varchar(256) NOT NULL,
  `candidate_father_husband` varchar(256) NOT NULL,
  `candidate_party` varchar(256) NOT NULL,
  `candidate_age` varchar(256) NOT NULL,
  `candidate_gender` varchar(256) NOT NULL,
  `candidate_address` varchar(256) NOT NULL,
  `candidate_applied_state` varchar(256) NOT NULL,
  `candidate_applied_constituency` varchar(256) NOT NULL,
  `candidate_applied_constituency_pincode` varchar(256) NOT NULL,
  `candidate_pic` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidate_info`
--

INSERT INTO `candidate_info` (`id`, `candidate_name`, `candidate_father_husband`, `candidate_party`, `candidate_age`, `candidate_gender`, `candidate_address`, `candidate_applied_state`, `candidate_applied_constituency`, `candidate_applied_constituency_pincode`, `candidate_pic`) VALUES
(1, 'Manish Sisodiya', 'Dharam Pal Singh Sisodiya', 'Aam Aadmi Party', '47', 'Male', 'D-59,Pandav Nagar, New Delhi - 110092', 'NCT OF DELHI', 'NCT OF DELHI', '444606', 'manish_sisodia.jpg'),
(3, 'Manoj Tiwari', 'ABC', 'BJP', '47', 'Male', 'D-59,Pandav Nagar, New Delhi - 110092', 'NCT OF DELHI', 'NCT OF DELHI', '444606', '0DSC_0056.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `current_election_candidate`
--

CREATE TABLE `current_election_candidate` (
  `id` int(11) NOT NULL,
  `candidate_image` varchar(256) NOT NULL,
  `candidate_name` varchar(256) NOT NULL,
  `candidate_father_husband` varchar(256) NOT NULL,
  `candidate_party` varchar(256) NOT NULL,
  `candidate_age` varchar(256) NOT NULL,
  `candidate_gender` varchar(256) NOT NULL,
  `candidate_address` varchar(256) NOT NULL,
  `candidate_applied_state` varchar(256) NOT NULL,
  `candidate_applied_constituency` varchar(256) NOT NULL,
  `candidate_applied_constituency_pincode` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `current_election_candidate`
--

INSERT INTO `current_election_candidate` (`id`, `candidate_image`, `candidate_name`, `candidate_father_husband`, `candidate_party`, `candidate_age`, `candidate_gender`, `candidate_address`, `candidate_applied_state`, `candidate_applied_constituency`, `candidate_applied_constituency_pincode`) VALUES
(1, 'ravi_rana.jpg', 'Ravi Rana', 'Gangadhar Narayan Rana', 'Yuva Swabhiman Paksh', '35', 'Male', '50 GANGA SAVITRI, SHANKAR NAGAR, AMRAVATI', 'Maharashtra', 'Badnera', '444605'),
(2, 'preeti_band.jpg', 'Band Priti Sanjay', 'Sanjay Band', 'Shivsena', '43', 'Female', '35 Shri Vikas Colony Rukhmini Nagar road Amravati', 'Maharashtra', 'Badnera', '444605'),
(17, '1619191774788.png', 'Sulbha Tai Khodke', 'Sanjay Khodke', 'Nationalist Congress Party', '55', 'Female', 'Amravati', 'Maharashtra', 'Amravati', '444606'),
(18, '1619192009013.png', 'Sunil Deshmukh', 'Sunil Panjabrao Deshmukh', 'BJP', '62', 'Male', 'Amravati', 'Maharashtra', 'Amravati', '444606'),
(20, '1679774806309.png', 'Chetan Badgujar', 'Abc', 'anc', '498', 'anx', 'buldhana', 'anc', 'Buldhana', '444605');

-- --------------------------------------------------------

--
-- Table structure for table `current_election_type_constituency`
--

CREATE TABLE `current_election_type_constituency` (
  `id` int(11) NOT NULL,
  `election_type` varchar(256) NOT NULL,
  `election_constituency` varchar(256) NOT NULL,
  `election_date` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `current_election_type_constituency`
--

INSERT INTO `current_election_type_constituency` (`id`, `election_type`, `election_constituency`, `election_date`) VALUES
(1, 'Assembly Election', 'Badnera', '23/4/2023'),
(3, 'Vidhan Sabha', 'Amravati', '24/4/2023'),
(11, 'Rajya Sabha', 'Buldhana', '14/6/2023');

-- --------------------------------------------------------

--
-- Table structure for table `current_result`
--

CREATE TABLE `current_result` (
  `id` int(11) NOT NULL,
  `election_type_name` varchar(256) NOT NULL,
  `election_place_name` varchar(256) NOT NULL,
  `election_total_seat` varchar(256) NOT NULL,
  `election_majority` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `current_result`
--

INSERT INTO `current_result` (`id`, `election_type_name`, `election_place_name`, `election_total_seat`, `election_majority`) VALUES
(1, 'MAHARASHTRA ASSEMBLY ELECTION - 2019', 'MAHARASHTRA', '288/288', '144'),
(2, 'ASSEMBLY ELECTION 2020', 'NCT OF DELHI', '70/70', '36'),
(3, 'ASSEMBLY ELECTION 2022', 'PANJAB', '36', '8');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `mobile_no` varchar(256) NOT NULL,
  `feedback` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `username`, `mobile_no`, `feedback`) VALUES
(1, 'hsshss', '8208187488', 'Great app'),
(6, 'rmadhave', '9763448219', 'Good'),
(9, 'nshende12', '8208187488', 'Good'),
(10, 'asdasd', '8208187488', 'good'),
(11, 'asdasd', '8208187488', 'good'),
(12, 'asdasd', '8208187488', 'good ');

-- --------------------------------------------------------

--
-- Table structure for table `party_wise_report`
--

CREATE TABLE `party_wise_report` (
  `id` int(11) NOT NULL,
  `party_name` varchar(256) NOT NULL,
  `party_win` varchar(256) NOT NULL,
  `party_leading` varchar(256) NOT NULL,
  `party_total` varchar(256) NOT NULL,
  `election_place` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `party_wise_report`
--

INSERT INTO `party_wise_report` (`id`, `party_name`, `party_win`, `party_leading`, `party_total`, `election_place`) VALUES
(1, 'Aam Aadmi Party(AAP)', '62', '00', '62', 'NCT OF DELHI'),
(2, 'Bhartiy Janta Party(BJP)', '08', '00', '08', 'NCT OF DELHI'),
(4, 'Bhartiy Janta Party (BJP)', '105', '00', '105', 'MAHARASHTRA'),
(5, 'ShivSena (SHS)', '56', '00', '56', 'MAHARASHTRA'),
(6, 'Indian National Congress', '44', '00', '44', 'MAHARASHTRA'),
(7, 'Nationalist Congress Party', '54', '00', '54', 'MAHARASHTRA'),
(8, 'OTHER', '29', '00', '29', 'MAHARASHTRA'),
(9, 'OTHER', '00', '00', '00', 'NCT OF DELHI'),
(19, 'Aam Aadmi Party (AAP)', '92', '00', '92', 'PANJAB'),
(20, 'Indian National Congress (INC)', '13', '00', '13', 'PANJAB'),
(21, 'Shiromani Akali Dal (SAD)', '03', '00', '03', 'PANJAB'),
(22, 'akaka', '333', '464', '499', 'PANJAB');

-- --------------------------------------------------------

--
-- Table structure for table `register_admin`
--

CREATE TABLE `register_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register_admin`
--

INSERT INTO `register_admin` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'rootroot', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `register_users`
--

CREATE TABLE `register_users` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `gender` varchar(256) NOT NULL,
  `epic_no` varchar(256) NOT NULL,
  `aadhaar_card_no` varchar(256) NOT NULL,
  `mobile_no` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `pin_code` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `voting_place` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register_users`
--

INSERT INTO `register_users` (`id`, `name`, `gender`, `epic_no`, `aadhaar_card_no`, `mobile_no`, `address`, `pin_code`, `username`, `password`, `voting_place`) VALUES
(22, 'Dnyaneshwar Nagoraoji Chambhare', 'Male', 'XMS2309K99', '', '9527276306', 'At Post Matoda Beneda,At Arvi,Dist. Wardha', '442201', 'dnc@123', 'dnc@123', ''),
(23, 'Roshan Madhave', 'Male', 'XKU3450K98', '', '9763448219', 'Meae Sudarshan Nagar,Frezarpura,Amravati', '444605', 'rmadhave', 'rmadhave@123', ''),
(24, 'Shubham Mohod', 'Male', 'AAAAAAAAAA', '', '1234567890', 'Gopal Nagar', '444605', 'shubham 123@', 'Shub@12', ''),
(28, 'Nikhil Shende', 'Male', 'XKU7049742', '4681 6568 6467', '8208187488', 'Near Shiddharth Square, Frezarpura, Amravati', '444606', 'nshende12', 'asdasd', ''),
(29, 'Nikhil Shende ', 'Male', 'NR12345678', '9876 5432 1000', '8208187488', 'Frezarpura Amravati ', '444606', 'asdasd', 'asdasd', ''),
(30, 'jZzjzjzuaussu', 'Female', 'uuzzusjzjz', '7676 6794 6764', '4664664868', 'hahssjzzjzj', '343763', 'ahahshsh', 'asasas', '');

-- --------------------------------------------------------

--
-- Table structure for table `type_of_election`
--

CREATE TABLE `type_of_election` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `type1` varchar(256) NOT NULL,
  `type2` varchar(256) NOT NULL,
  `type3` varchar(256) NOT NULL,
  `type4` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `type_of_election`
--

INSERT INTO `type_of_election` (`id`, `title`, `type1`, `type2`, `type3`, `type4`) VALUES
(1, 'Elections in the Rupublic of India which are conducted by ELECTION COMMISSION OF INDIA:', '*Memebers of the Parliament in Lok Sabha.', '*Members of the State Legislative Assemblies.', '*Members of the Parliament in Rajya Sabha', '*Bye-election(is held when a person of a particular constituent dies,resigns or is disqualified)');

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_election`
--

CREATE TABLE `upcoming_election` (
  `id` int(11) NOT NULL,
  `election_type` varchar(256) NOT NULL,
  `election_state` varchar(256) NOT NULL,
  `total_seat_title` varchar(256) NOT NULL,
  `total_seat_no` varchar(256) NOT NULL,
  `date_of_polling_title` varchar(256) NOT NULL,
  `phase1_title` varchar(256) NOT NULL,
  `phase1_date` varchar(256) NOT NULL,
  `phase2_title` varchar(256) NOT NULL,
  `phase2_date` varchar(256) NOT NULL,
  `phase3_title` varchar(256) NOT NULL,
  `phase3_date` varchar(256) NOT NULL,
  `phase4_title` varchar(256) NOT NULL,
  `phase4_date` varchar(256) NOT NULL,
  `counting_date_title` varchar(256) NOT NULL,
  `counting_date` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `upcoming_election`
--

INSERT INTO `upcoming_election` (`id`, `election_type`, `election_state`, `total_seat_title`, `total_seat_no`, `date_of_polling_title`, `phase1_title`, `phase1_date`, `phase2_title`, `phase2_date`, `phase3_title`, `phase3_date`, `phase4_title`, `phase4_date`, `counting_date_title`, `counting_date`) VALUES
(1, 'Lok Sabha Election 2023', 'Andra Pradesh', 'Lok Sabha Total Seat', '175', 'Date of Polling', 'Phase1', '11-May-2023', 'Phase2', '18-May-2023', 'Phase3', '24-May-2023', 'Phase4', '30-May-2023', 'Counting of Votes', '02-Jun-2023'),
(2, 'Lok Sabha Election 2023', 'Tamil Nandu', 'Lok Sabha Seats', '21', 'Date of Polling', 'Phase I', '18 - June -2023', 'Phase II', '20 - June -2023', 'Phase 3', '21-June-2023', '', '', 'Counting of Votes', '23-June-2023'),
(14, 'ama', 'eskk', 'sks', 'skss', 'kßk', 'aksa', 'akak', 'wkw', 'ksks', 'kwwkw', 'snssk', 'kssk', 'kwwk', 'skswk', 'wkkwkw');

-- --------------------------------------------------------

--
-- Table structure for table `voter_votes`
--

CREATE TABLE `voter_votes` (
  `id` int(11) NOT NULL,
  `voter_name` varchar(256) NOT NULL,
  `voter_epic_no` varchar(256) NOT NULL,
  `voter_pincode` varchar(256) NOT NULL,
  `voter_vote_candidate_name` varchar(256) NOT NULL,
  `voter_vote_candidate_party` varchar(256) NOT NULL,
  `date` varchar(256) NOT NULL DEFAULT current_timestamp(),
  `vote_done` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voter_votes`
--

INSERT INTO `voter_votes` (`id`, `voter_name`, `voter_epic_no`, `voter_pincode`, `voter_vote_candidate_name`, `voter_vote_candidate_party`, `date`, `vote_done`) VALUES
(4, 'Roshan Madhave', 'XKU3450K98', '444605', 'Band Priti Sanjay', 'Shivsena', '2020-05-24 17:47:00', 'Vote To Candidate'),
(6, 'Nikhil Shende', 'XKU7049752', '444605', 'Sulbha Tai Khodke', 'Shivsena', '2021-04-23 19:17:23', 'Vote To Candidate');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate_election_type_name`
--
ALTER TABLE `candidate_election_type_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_info`
--
ALTER TABLE `candidate_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_election_candidate`
--
ALTER TABLE `current_election_candidate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_election_type_constituency`
--
ALTER TABLE `current_election_type_constituency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_result`
--
ALTER TABLE `current_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `party_wise_report`
--
ALTER TABLE `party_wise_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_admin`
--
ALTER TABLE `register_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_users`
--
ALTER TABLE `register_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_of_election`
--
ALTER TABLE `type_of_election`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming_election`
--
ALTER TABLE `upcoming_election`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voter_votes`
--
ALTER TABLE `voter_votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate_election_type_name`
--
ALTER TABLE `candidate_election_type_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `candidate_info`
--
ALTER TABLE `candidate_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `current_election_candidate`
--
ALTER TABLE `current_election_candidate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `current_election_type_constituency`
--
ALTER TABLE `current_election_type_constituency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `current_result`
--
ALTER TABLE `current_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `party_wise_report`
--
ALTER TABLE `party_wise_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `register_admin`
--
ALTER TABLE `register_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `register_users`
--
ALTER TABLE `register_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `type_of_election`
--
ALTER TABLE `type_of_election`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `upcoming_election`
--
ALTER TABLE `upcoming_election`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `voter_votes`
--
ALTER TABLE `voter_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
