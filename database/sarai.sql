-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2024 at 12:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sarai`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `gues_name` varchar(255) DEFAULT NULL,
  `guest_image` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `alter_mobile_number` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `arrived_from` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `transport` varchar(255) DEFAULT NULL,
  `house_number` varchar(255) DEFAULT NULL,
  `lane` varchar(255) DEFAULT NULL,
  `land_mark` varchar(255) DEFAULT NULL,
  `country_id` varchar(255) DEFAULT NULL,
  `state_id` varchar(255) DEFAULT NULL,
  `city_id` varchar(255) DEFAULT NULL,
  `present_town` varchar(255) DEFAULT NULL,
  `present_pin` varchar(255) DEFAULT NULL,
  `p_house_number` varchar(255) DEFAULT NULL,
  `p_lane` varchar(255) DEFAULT NULL,
  `p_land_mark` varchar(255) DEFAULT NULL,
  `p_country_id` varchar(255) DEFAULT NULL,
  `p_state_id` varchar(255) DEFAULT NULL,
  `p_city_id` varchar(255) DEFAULT NULL,
  `p_town` varchar(255) DEFAULT NULL,
  `p_pin` varchar(255) DEFAULT NULL,
  `local_contact_name` varchar(255) DEFAULT NULL,
  `local_contact_number` varchar(255) DEFAULT NULL,
  `arrival_date` date DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `id_type` varchar(255) DEFAULT NULL,
  `id_number` varchar(255) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `accompany_person` varchar(255) DEFAULT NULL,
  `room_booked` int(11) DEFAULT NULL,
  `whom_to_visit` varchar(255) DEFAULT NULL,
  `whom_to_visit_mobile` varchar(255) DEFAULT NULL,
  `is_visited_before` varchar(50) DEFAULT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `visitor_photo` varchar(255) DEFAULT NULL,
  `accompany_adult` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `accompany_children` int(11) DEFAULT NULL,
  `whom_to_visit_name` varchar(255) DEFAULT NULL,
  `other_country` varchar(255) DEFAULT NULL,
  `p_other_country` varchar(255) DEFAULT NULL,
  `other_state` varchar(255) DEFAULT NULL,
  `p_other_state` varchar(255) DEFAULT NULL,
  `other_city` varchar(255) DEFAULT NULL,
  `p_other_city` varchar(255) DEFAULT NULL,
  `suspicious` int(11) DEFAULT NULL,
  `suspicious_check` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_accompanies`
--

CREATE TABLE `booking_accompanies` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `guest_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `relation` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_rooms`
--

CREATE TABLE `booking_rooms` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `building_number` varchar(255) DEFAULT NULL,
  `floor_number` varchar(255) DEFAULT NULL,
  `room_number` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `checkout_date` date DEFAULT NULL,
  `checkout_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `code` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `slug`, `code`) VALUES
(1, 'North and Middle Andaman', 32, NULL, NULL),
(2, 'South Andaman', 32, NULL, NULL),
(3, 'Nicobar', 32, NULL, NULL),
(4, 'Adilabad', 1, NULL, NULL),
(5, 'Anantapur', 1, NULL, NULL),
(6, 'Chittoor', 1, NULL, NULL),
(7, 'East Godavari', 1, NULL, NULL),
(8, 'Guntur', 1, NULL, NULL),
(9, 'Hyderabad', 1, NULL, NULL),
(10, 'Kadapa', 1, NULL, NULL),
(11, 'Karimnagar', 1, NULL, NULL),
(12, 'Khammam', 1, NULL, NULL),
(13, 'Krishna', 1, NULL, NULL),
(14, 'Kurnool', 1, NULL, NULL),
(15, 'Mahbubnagar', 1, NULL, NULL),
(16, 'Medak', 1, NULL, NULL),
(17, 'Nalgonda', 1, NULL, NULL),
(18, 'Nellore', 1, NULL, NULL),
(19, 'Nizamabad', 1, NULL, NULL),
(20, 'Prakasam', 1, NULL, NULL),
(21, 'Rangareddi', 1, NULL, NULL),
(22, 'Srikakulam', 1, NULL, NULL),
(23, 'Vishakhapatnam', 1, NULL, NULL),
(24, 'Vizianagaram', 1, NULL, NULL),
(25, 'Warangal', 1, NULL, NULL),
(26, 'West Godavari', 1, NULL, NULL),
(27, 'Anjaw', 3, NULL, NULL),
(28, 'Changlang', 3, NULL, NULL),
(29, 'East Kameng', 3, NULL, NULL),
(30, 'Lohit', 3, NULL, NULL),
(31, 'Lower Subansiri', 3, NULL, NULL),
(32, 'Papum Pare', 3, NULL, NULL),
(33, 'Tirap', 3, NULL, NULL),
(34, 'Dibang Valley', 3, NULL, NULL),
(35, 'Upper Subansiri', 3, NULL, NULL),
(36, 'West Kameng', 3, NULL, NULL),
(37, 'Barpeta', 2, NULL, NULL),
(38, 'Bongaigaon', 2, NULL, NULL),
(39, 'Cachar', 2, NULL, NULL),
(40, 'Darrang', 2, NULL, NULL),
(41, 'Dhemaji', 2, NULL, NULL),
(42, 'Dhubri', 2, NULL, NULL),
(43, 'Dibrugarh', 2, NULL, NULL),
(44, 'Goalpara', 2, NULL, NULL),
(45, 'Golaghat', 2, NULL, NULL),
(46, 'Hailakandi', 2, NULL, NULL),
(47, 'Jorhat', 2, NULL, NULL),
(48, 'Karbi Anglong', 2, NULL, NULL),
(49, 'Karimganj', 2, NULL, NULL),
(50, 'Kokrajhar', 2, NULL, NULL),
(51, 'Lakhimpur', 2, NULL, NULL),
(52, 'Marigaon', 2, NULL, NULL),
(53, 'Nagaon', 2, NULL, NULL),
(54, 'Nalbari', 2, NULL, NULL),
(55, 'North Cachar Hills', 2, NULL, NULL),
(56, 'Sibsagar', 2, NULL, NULL),
(57, 'Sonitpur', 2, NULL, NULL),
(58, 'Tinsukia', 2, NULL, NULL),
(59, 'Araria', 4, NULL, NULL),
(60, 'Aurangabad', 4, NULL, NULL),
(61, 'Banka', 4, NULL, NULL),
(62, 'Begusarai', 4, NULL, NULL),
(63, 'Bhagalpur', 4, NULL, NULL),
(64, 'Bhojpur', 4, NULL, NULL),
(65, 'Buxar', 4, NULL, NULL),
(66, 'Darbhanga', 4, NULL, NULL),
(67, 'Purba Champaran', 4, NULL, NULL),
(68, 'Gaya', 4, NULL, NULL),
(69, 'Gopalganj', 4, NULL, NULL),
(70, 'Jamui', 4, NULL, NULL),
(71, 'Jehanabad', 4, NULL, NULL),
(72, 'Khagaria', 4, NULL, NULL),
(73, 'Kishanganj', 4, NULL, NULL),
(74, 'Kaimur', 4, NULL, NULL),
(75, 'Katihar', 4, NULL, NULL),
(76, 'Lakhisarai', 4, NULL, NULL),
(77, 'Madhubani', 4, NULL, NULL),
(78, 'Munger', 4, NULL, NULL),
(79, 'Madhepura', 4, NULL, NULL),
(80, 'Muzaffarpur', 4, NULL, NULL),
(81, 'Nalanda', 4, NULL, NULL),
(82, 'Nawada', 4, NULL, NULL),
(83, 'Patna', 4, NULL, NULL),
(84, 'Purnia', 4, NULL, NULL),
(85, 'Rohtas', 4, NULL, NULL),
(86, 'Saharsa', 4, NULL, NULL),
(87, 'Samastipur', 4, NULL, NULL),
(88, 'Sheohar', 4, NULL, NULL),
(89, 'Sheikhpura', 4, NULL, NULL),
(90, 'Saran', 4, NULL, NULL),
(91, 'Sitamarhi', 4, NULL, NULL),
(92, 'Supaul', 4, NULL, NULL),
(93, 'Siwan', 4, NULL, NULL),
(94, 'Vaishali', 4, NULL, NULL),
(95, 'Pashchim Champaran', 4, NULL, NULL),
(96, 'Bastar', 35, NULL, NULL),
(97, 'Bilaspur', 35, NULL, NULL),
(98, 'Dantewada', 35, NULL, NULL),
(99, 'Dhamtari', 35, NULL, NULL),
(100, 'Durg', 35, NULL, NULL),
(101, 'Jashpur', 35, NULL, NULL),
(102, 'Janjgir-Champa', 35, NULL, NULL),
(104, 'Koriya', 35, NULL, NULL),
(105, 'Kanker', 35, NULL, NULL),
(106, 'Kawardha', 35, NULL, NULL),
(107, 'Mahasamund', 35, NULL, NULL),
(108, 'Raigarh', 35, NULL, NULL),
(109, 'Rajnandgaon', 35, NULL, NULL),
(110, 'Raipur', 35, NULL, NULL),
(111, 'Surguja', 35, NULL, NULL),
(112, 'Diu', 29, NULL, NULL),
(113, 'Daman', 29, NULL, NULL),
(114, 'Central Delhi', 25, NULL, NULL),
(115, 'East Delhi', 25, NULL, NULL),
(116, 'New Delhi', 25, NULL, NULL),
(117, 'North Delhi', 25, NULL, NULL),
(118, 'North East Delhi', 25, NULL, NULL),
(119, 'North West Delhi', 25, NULL, NULL),
(120, 'South Delhi', 25, NULL, NULL),
(121, 'South West Delhi', 25, NULL, NULL),
(122, 'West Delhi', 25, NULL, NULL),
(123, 'North Goa', 26, NULL, NULL),
(124, 'South Goa', 26, NULL, NULL),
(125, 'Ahmedabad', 5, NULL, NULL),
(126, 'Amreli District', 5, NULL, NULL),
(127, 'Anand', 5, NULL, NULL),
(128, 'Banaskantha', 5, NULL, NULL),
(129, 'Bharuch', 5, NULL, NULL),
(130, 'Bhavnagar', 5, NULL, NULL),
(131, 'Dahod', 5, NULL, NULL),
(132, 'The Dangs', 5, NULL, NULL),
(133, 'Gandhinagar', 5, NULL, NULL),
(134, 'Jamnagar', 5, NULL, NULL),
(135, 'Junagadh', 5, NULL, NULL),
(136, 'Kutch', 5, NULL, NULL),
(137, 'Kheda', 5, NULL, NULL),
(138, 'Mehsana', 5, NULL, NULL),
(139, 'Narmada', 5, NULL, NULL),
(140, 'Navsari', 5, NULL, NULL),
(141, 'Patan', 5, NULL, NULL),
(142, 'Panchmahal', 5, NULL, NULL),
(143, 'Porbandar', 5, NULL, NULL),
(144, 'Rajkot', 5, NULL, NULL),
(145, 'Sabarkantha', 5, NULL, NULL),
(146, 'Surendranagar', 5, NULL, NULL),
(147, 'Surat', 5, NULL, NULL),
(148, 'Vadodara', 5, NULL, NULL),
(149, 'Valsad', 5, NULL, NULL),
(150, 'Ambala', 6, NULL, NULL),
(151, 'Bhiwani', 6, NULL, NULL),
(152, 'Faridabad', 6, NULL, NULL),
(153, 'Fatehabad', 6, NULL, NULL),
(154, 'Gurgaon', 6, NULL, NULL),
(155, 'Hissar', 6, NULL, NULL),
(156, 'Jhajjar', 6, NULL, NULL),
(157, 'Jind', 6, NULL, NULL),
(158, 'Karnal', 6, NULL, NULL),
(159, 'Kaithal', 6, NULL, NULL),
(160, 'Kurukshetra', 6, NULL, NULL),
(161, 'Mahendragarh', 6, NULL, NULL),
(162, 'Mewat', 6, NULL, NULL),
(163, 'Panchkula', 6, NULL, NULL),
(164, 'Panipat', 6, NULL, NULL),
(165, 'Rewari', 6, NULL, NULL),
(166, 'Rohtak', 6, NULL, NULL),
(167, 'Sirsa', 6, NULL, NULL),
(168, 'Sonepat', 6, NULL, NULL),
(169, 'Yamuna Nagar', 6, NULL, NULL),
(170, 'Palwal', 6, NULL, NULL),
(171, 'Bilaspur', 7, NULL, NULL),
(172, 'Chamba', 7, NULL, NULL),
(173, 'Hamirpur', 7, NULL, NULL),
(174, 'Kangra', 7, NULL, NULL),
(175, 'Kinnaur', 7, NULL, NULL),
(176, 'Kulu', 7, NULL, NULL),
(177, 'Lahaul and Spiti', 7, NULL, NULL),
(178, 'Mandi', 7, NULL, NULL),
(179, 'Shimla', 7, NULL, NULL),
(180, 'Sirmaur', 7, NULL, NULL),
(181, 'Solan', 7, NULL, NULL),
(182, 'Una', 7, NULL, NULL),
(183, 'Anantnag', 8, NULL, NULL),
(184, 'Badgam', 8, NULL, NULL),
(185, 'Bandipore', 8, NULL, NULL),
(186, 'Baramula', 8, NULL, NULL),
(187, 'Doda', 8, NULL, NULL),
(188, 'Jammu', 8, NULL, NULL),
(189, 'Kargil', 8, NULL, NULL),
(190, 'Kathua', 8, NULL, NULL),
(191, 'Kupwara', 8, NULL, NULL),
(192, 'Leh', 8, NULL, NULL),
(193, 'Poonch', 8, NULL, NULL),
(194, 'Pulwama', 8, NULL, NULL),
(195, 'Rajauri', 8, NULL, NULL),
(196, 'Srinagar', 8, NULL, NULL),
(197, 'Samba', 8, NULL, NULL),
(198, 'Udhampur', 8, NULL, NULL),
(199, 'Bokaro', 34, NULL, NULL),
(200, 'Chatra', 34, NULL, NULL),
(201, 'Deoghar', 34, NULL, NULL),
(202, 'Dhanbad', 34, NULL, NULL),
(203, 'Dumka', 34, NULL, NULL),
(204, 'Purba Singhbhum', 34, NULL, NULL),
(205, 'Garhwa', 34, NULL, NULL),
(206, 'Giridih', 34, NULL, NULL),
(207, 'Godda', 34, NULL, NULL),
(208, 'Gumla', 34, NULL, NULL),
(209, 'Hazaribagh', 34, NULL, NULL),
(210, 'Koderma', 34, NULL, NULL),
(211, 'Lohardaga', 34, NULL, NULL),
(212, 'Pakur', 34, NULL, NULL),
(213, 'Palamu', 34, NULL, NULL),
(214, 'Ranchi', 34, NULL, NULL),
(215, 'Sahibganj', 34, NULL, NULL),
(216, 'Seraikela and Kharsawan', 34, NULL, NULL),
(217, 'Pashchim Singhbhum', 34, NULL, NULL),
(218, 'Ramgarh', 34, NULL, NULL),
(219, 'Bidar', 9, NULL, NULL),
(220, 'Belgaum', 9, NULL, NULL),
(221, 'Bijapur', 9, NULL, NULL),
(222, 'Bagalkot', 9, NULL, NULL),
(223, 'Bellary', 9, NULL, NULL),
(224, 'Bangalore Rural District', 9, NULL, NULL),
(225, 'Bangalore Urban District', 9, NULL, NULL),
(226, 'Chamarajnagar', 9, NULL, NULL),
(227, 'Chikmagalur', 9, NULL, NULL),
(228, 'Chitradurga', 9, NULL, NULL),
(229, 'Davanagere', 9, NULL, NULL),
(230, 'Dharwad', 9, NULL, NULL),
(231, 'Dakshina Kannada', 9, NULL, NULL),
(232, 'Gadag', 9, NULL, NULL),
(233, 'Gulbarga', 9, NULL, NULL),
(234, 'Hassan', 9, NULL, NULL),
(235, 'Haveri District', 9, NULL, NULL),
(236, 'Kodagu', 9, NULL, NULL),
(237, 'Kolar', 9, NULL, NULL),
(238, 'Koppal', 9, NULL, NULL),
(239, 'Mandya', 9, NULL, NULL),
(240, 'Mysore', 9, NULL, NULL),
(241, 'Raichur', 9, NULL, NULL),
(242, 'Shimoga', 9, NULL, NULL),
(243, 'Tumkur', 9, NULL, NULL),
(244, 'Udupi', 9, NULL, NULL),
(245, 'Uttara Kannada', 9, NULL, NULL),
(246, 'Ramanagara', 9, NULL, NULL),
(247, 'Chikballapur', 9, NULL, NULL),
(248, 'Yadagiri', 9, NULL, NULL),
(249, 'Alappuzha', 10, NULL, NULL),
(250, 'Ernakulam', 10, NULL, NULL),
(251, 'Idukki', 10, NULL, NULL),
(252, 'Kollam', 10, NULL, NULL),
(253, 'Kannur', 10, NULL, NULL),
(254, 'Kasaragod', 10, NULL, NULL),
(255, 'Kottayam', 10, NULL, NULL),
(256, 'Kozhikode', 10, NULL, NULL),
(257, 'Malappuram', 10, NULL, NULL),
(258, 'Palakkad', 10, NULL, NULL),
(259, 'Pathanamthitta', 10, NULL, NULL),
(260, 'Thrissur', 10, NULL, NULL),
(261, 'Thiruvananthapuram', 10, NULL, NULL),
(262, 'Wayanad', 10, NULL, NULL),
(263, 'Alirajpur', 11, NULL, NULL),
(264, 'Anuppur', 11, NULL, NULL),
(265, 'Ashok Nagar', 11, NULL, NULL),
(266, 'Balaghat', 11, NULL, NULL),
(267, 'Barwani', 11, NULL, NULL),
(268, 'Betul', 11, NULL, NULL),
(269, 'Bhind', 11, NULL, NULL),
(270, 'Bhopal', 11, NULL, NULL),
(271, 'Burhanpur', 11, NULL, NULL),
(272, 'Chhatarpur', 11, NULL, NULL),
(273, 'Chhindwara', 11, NULL, NULL),
(274, 'Damoh', 11, NULL, NULL),
(275, 'Datia', 11, NULL, NULL),
(276, 'Dewas', 11, NULL, NULL),
(277, 'Dhar', 11, NULL, NULL),
(278, 'Dindori', 11, NULL, NULL),
(279, 'Guna', 11, NULL, NULL),
(280, 'Gwalior', 11, NULL, NULL),
(281, 'Harda', 11, NULL, NULL),
(282, 'Hoshangabad', 11, NULL, NULL),
(283, 'Indore', 11, NULL, NULL),
(284, 'Jabalpur', 11, NULL, NULL),
(285, 'Jhabua', 11, NULL, NULL),
(286, 'Katni', 11, NULL, NULL),
(287, 'Khandwa', 11, NULL, NULL),
(288, 'Khargone', 11, NULL, NULL),
(289, 'Mandla', 11, NULL, NULL),
(290, 'Mandsaur', 11, NULL, NULL),
(291, 'Morena', 11, NULL, NULL),
(292, 'Narsinghpur', 11, NULL, NULL),
(293, 'Neemuch', 11, NULL, NULL),
(294, 'Panna', 11, NULL, NULL),
(295, 'Rewa', 11, NULL, NULL),
(296, 'Rajgarh', 11, NULL, NULL),
(297, 'Ratlam', 11, NULL, NULL),
(298, 'Raisen', 11, NULL, NULL),
(299, 'Sagar', 11, NULL, NULL),
(300, 'Satna', 11, NULL, NULL),
(301, 'Sehore', 11, NULL, NULL),
(302, 'Seoni', 11, NULL, NULL),
(303, 'Shahdol', 11, NULL, NULL),
(304, 'Shajapur', 11, NULL, NULL),
(305, 'Sheopur', 11, NULL, NULL),
(306, 'Shivpuri', 11, NULL, NULL),
(307, 'Sidhi', 11, NULL, NULL),
(308, 'Singrauli', 11, NULL, NULL),
(309, 'Tikamgarh', 11, NULL, NULL),
(310, 'Ujjain', 11, NULL, NULL),
(311, 'Umaria', 11, NULL, NULL),
(312, 'Vidisha', 11, NULL, NULL),
(313, 'Ahmednagar', 12, NULL, NULL),
(314, 'Akola', 12, NULL, NULL),
(315, 'Amrawati', 12, NULL, NULL),
(316, 'Aurangabad', 12, NULL, NULL),
(317, 'Bhandara', 12, NULL, NULL),
(318, 'Beed', 12, NULL, NULL),
(319, 'Buldhana', 12, NULL, NULL),
(320, 'Chandrapur', 12, NULL, NULL),
(321, 'Dhule', 12, NULL, NULL),
(322, 'Gadchiroli', 12, NULL, NULL),
(323, 'Gondiya', 12, NULL, NULL),
(324, 'Hingoli', 12, NULL, NULL),
(325, 'Jalgaon', 12, NULL, NULL),
(326, 'Jalna', 12, NULL, NULL),
(327, 'Kolhapur', 12, NULL, NULL),
(328, 'Latur', 12, NULL, NULL),
(329, 'Mumbai City', 12, NULL, NULL),
(330, 'Mumbai suburban', 12, NULL, NULL),
(331, 'Nandurbar', 12, NULL, NULL),
(332, 'Nanded', 12, NULL, NULL),
(333, 'Nagpur', 12, NULL, NULL),
(334, 'Nashik', 12, NULL, NULL),
(335, 'Osmanabad', 12, NULL, NULL),
(336, 'Parbhani', 12, NULL, NULL),
(337, 'Pune', 12, NULL, NULL),
(338, 'Raigad', 12, NULL, NULL),
(339, 'Ratnagiri', 12, NULL, NULL),
(340, 'Sindhudurg', 12, NULL, NULL),
(341, 'Sangli', 12, NULL, NULL),
(342, 'Solapur', 12, NULL, NULL),
(343, 'Satara', 12, NULL, NULL),
(344, 'Thane', 12, NULL, NULL),
(345, 'Wardha', 12, NULL, NULL),
(346, 'Washim', 12, NULL, NULL),
(347, 'Yavatmal', 12, NULL, NULL),
(348, 'Bishnupur', 13, NULL, NULL),
(349, 'Churachandpur', 13, NULL, NULL),
(350, 'Chandel', 13, NULL, NULL),
(351, 'Imphal East', 13, NULL, NULL),
(352, 'Senapati', 13, NULL, NULL),
(353, 'Tamenglong', 13, NULL, NULL),
(354, 'Thoubal', 13, NULL, NULL),
(355, 'Ukhrul', 13, NULL, NULL),
(356, 'Imphal West', 13, NULL, NULL),
(357, 'East Garo Hills', 14, NULL, NULL),
(358, 'East Khasi Hills', 14, NULL, NULL),
(359, 'Jaintia Hills', 14, NULL, NULL),
(360, 'Ri-Bhoi', 14, NULL, NULL),
(361, 'South Garo Hills', 14, NULL, NULL),
(362, 'West Garo Hills', 14, NULL, NULL),
(363, 'West Khasi Hills', 14, NULL, NULL),
(364, 'Aizawl', 15, NULL, NULL),
(365, 'Champhai', 15, NULL, NULL),
(366, 'Kolasib', 15, NULL, NULL),
(367, 'Lawngtlai', 15, NULL, NULL),
(368, 'Lunglei', 15, NULL, NULL),
(369, 'Mamit', 15, NULL, NULL),
(370, 'Saiha', 15, NULL, NULL),
(371, 'Serchhip', 15, NULL, NULL),
(372, 'Dimapur', 16, NULL, NULL),
(373, 'Kohima', 16, NULL, NULL),
(374, 'Mokokchung', 16, NULL, NULL),
(375, 'Mon', 16, NULL, NULL),
(376, 'Phek', 16, NULL, NULL),
(377, 'Tuensang', 16, NULL, NULL),
(378, 'Wokha', 16, NULL, NULL),
(379, 'Zunheboto', 16, NULL, NULL),
(380, 'Angul', 17, NULL, NULL),
(381, 'Boudh', 17, NULL, NULL),
(382, 'Bhadrak', 17, NULL, NULL),
(383, 'Bolangir', 17, NULL, NULL),
(384, 'Bargarh', 17, NULL, NULL),
(385, 'Baleswar', 17, NULL, NULL),
(386, 'Cuttack', 17, NULL, NULL),
(387, 'Debagarh', 17, NULL, NULL),
(388, 'Dhenkanal', 17, NULL, NULL),
(389, 'Ganjam', 17, NULL, NULL),
(390, 'Gajapati', 17, NULL, NULL),
(391, 'Jharsuguda', 17, NULL, NULL),
(392, 'Jajapur', 17, NULL, NULL),
(393, 'Jagatsinghpur', 17, NULL, NULL),
(394, 'Khordha', 17, NULL, NULL),
(395, 'Kendujhar', 17, NULL, NULL),
(396, 'Kalahandi', 17, NULL, NULL),
(397, 'Kandhamal', 17, NULL, NULL),
(398, 'Koraput', 17, NULL, NULL),
(399, 'Kendrapara', 17, NULL, NULL),
(400, 'Malkangiri', 17, NULL, NULL),
(401, 'Mayurbhanj', 17, NULL, NULL),
(402, 'Nabarangpur', 17, NULL, NULL),
(403, 'Nuapada', 17, NULL, NULL),
(404, 'Nayagarh', 17, NULL, NULL),
(405, 'Puri', 17, NULL, NULL),
(406, 'Rayagada', 17, NULL, NULL),
(407, 'Sambalpur', 17, NULL, NULL),
(408, 'Subarnapur', 17, NULL, NULL),
(409, 'Sundargarh', 17, NULL, NULL),
(410, 'Karaikal', 27, NULL, NULL),
(411, 'Mahe', 27, NULL, NULL),
(412, 'Puducherry', 27, NULL, NULL),
(413, 'Yanam', 27, NULL, NULL),
(414, 'Amritsar', 18, NULL, NULL),
(415, 'Bathinda', 18, NULL, NULL),
(416, 'Firozpur', 18, NULL, NULL),
(417, 'Faridkot', 18, NULL, NULL),
(418, 'Fatehgarh Sahib', 18, NULL, NULL),
(419, 'Gurdaspur', 18, NULL, NULL),
(420, 'Hoshiarpur', 18, NULL, NULL),
(421, 'Jalandhar', 18, NULL, NULL),
(422, 'Kapurthala', 18, NULL, NULL),
(423, 'Ludhiana', 18, NULL, NULL),
(424, 'Mansa', 18, NULL, NULL),
(425, 'Moga', 18, NULL, NULL),
(426, 'Mukatsar', 18, NULL, NULL),
(427, 'Nawan Shehar', 18, NULL, NULL),
(428, 'Patiala', 18, NULL, NULL),
(429, 'Rupnagar', 18, NULL, NULL),
(430, 'Sangrur', 18, NULL, NULL),
(431, 'Ajmer', 19, NULL, NULL),
(432, 'Alwar', 19, NULL, NULL),
(433, 'Bikaner', 19, NULL, NULL),
(434, 'Barmer', 19, NULL, NULL),
(435, 'Banswara', 19, NULL, NULL),
(436, 'Bharatpur', 19, NULL, NULL),
(437, 'Baran', 19, NULL, NULL),
(438, 'Bundi', 19, NULL, NULL),
(439, 'Bhilwara', 19, NULL, NULL),
(440, 'Churu', 19, NULL, NULL),
(441, 'Chittorgarh', 19, NULL, NULL),
(442, 'Dausa', 19, NULL, NULL),
(443, 'Dholpur', 19, NULL, NULL),
(444, 'Dungapur', 19, NULL, NULL),
(445, 'Ganganagar', 19, NULL, NULL),
(446, 'Hanumangarh', 19, NULL, NULL),
(447, 'Juhnjhunun', 19, NULL, NULL),
(448, 'Jalore', 19, NULL, NULL),
(449, 'Jodhpur', 19, NULL, NULL),
(450, 'Jaipur', 19, NULL, NULL),
(451, 'Jaisalmer', 19, NULL, NULL),
(452, 'Jhalawar', 19, NULL, NULL),
(453, 'Karauli', 19, NULL, NULL),
(454, 'Kota', 19, NULL, NULL),
(455, 'Nagaur', 19, NULL, NULL),
(456, 'Pali', 19, NULL, NULL),
(457, 'Pratapgarh', 19, NULL, NULL),
(458, 'Rajsamand', 19, NULL, NULL),
(459, 'Sikar', 19, NULL, NULL),
(460, 'Sawai Madhopur', 19, NULL, NULL),
(461, 'Sirohi', 19, NULL, NULL),
(462, 'Tonk', 19, NULL, NULL),
(463, 'Udaipur', 19, NULL, NULL),
(464, 'East Sikkim', 20, NULL, NULL),
(465, 'North Sikkim', 20, NULL, NULL),
(466, 'South Sikkim', 20, NULL, NULL),
(467, 'West Sikkim', 20, NULL, NULL),
(468, 'Ariyalur', 21, NULL, NULL),
(469, 'Chennai', 21, NULL, NULL),
(470, 'Coimbatore', 21, NULL, NULL),
(471, 'Cuddalore', 21, NULL, NULL),
(472, 'Dharmapuri', 21, NULL, NULL),
(473, 'Dindigul', 21, NULL, NULL),
(474, 'Erode', 21, NULL, NULL),
(475, 'Kanchipuram', 21, NULL, NULL),
(476, 'Kanyakumari', 21, NULL, NULL),
(477, 'Karur', 21, NULL, NULL),
(478, 'Madurai', 21, NULL, NULL),
(479, 'Nagapattinam', 21, NULL, NULL),
(480, 'The Nilgiris', 21, NULL, NULL),
(481, 'Namakkal', 21, NULL, NULL),
(482, 'Perambalur', 21, NULL, NULL),
(483, 'Pudukkottai', 21, NULL, NULL),
(484, 'Ramanathapuram', 21, NULL, NULL),
(485, 'Salem', 21, NULL, NULL),
(486, 'Sivagangai', 21, NULL, NULL),
(487, 'Tiruppur', 21, NULL, NULL),
(488, 'Tiruchirappalli', 21, NULL, NULL),
(489, 'Theni', 21, NULL, NULL),
(490, 'Tirunelveli', 21, NULL, NULL),
(491, 'Thanjavur', 21, NULL, NULL),
(492, 'Thoothukudi', 21, NULL, NULL),
(493, 'Thiruvallur', 21, NULL, NULL),
(494, 'Thiruvarur', 21, NULL, NULL),
(495, 'Tiruvannamalai', 21, NULL, NULL),
(496, 'Vellore', 21, NULL, NULL),
(497, 'Villupuram', 21, NULL, NULL),
(498, 'Dhalai', 22, NULL, NULL),
(499, 'North Tripura', 22, NULL, NULL),
(500, 'South Tripura', 22, NULL, NULL),
(501, 'West Tripura', 22, NULL, NULL),
(502, 'Almora', 33, NULL, NULL),
(503, 'Bageshwar', 33, NULL, NULL),
(504, 'Chamoli', 33, NULL, NULL),
(505, 'Champawat', 33, NULL, NULL),
(506, 'Dehradun', 33, NULL, NULL),
(507, 'Haridwar', 33, NULL, NULL),
(508, 'Nainital', 33, NULL, NULL),
(509, 'Pauri Garhwal', 33, NULL, NULL),
(510, 'Pithoragharh', 33, NULL, NULL),
(511, 'Rudraprayag', 33, NULL, NULL),
(512, 'Tehri Garhwal', 33, NULL, NULL),
(513, 'Udham Singh Nagar', 33, NULL, NULL),
(514, 'Uttarkashi', 33, NULL, NULL),
(515, 'Agra', 23, NULL, NULL),
(516, 'Allahabad', 23, NULL, NULL),
(517, 'Aligarh', 23, NULL, NULL),
(518, 'Ambedkar Nagar', 23, NULL, NULL),
(519, 'Auraiya', 23, NULL, NULL),
(520, 'Azamgarh', 23, NULL, NULL),
(521, 'Barabanki', 23, NULL, NULL),
(522, 'Badaun', 23, NULL, NULL),
(523, 'Bagpat', 23, NULL, NULL),
(524, 'Bahraich', 23, NULL, NULL),
(525, 'Bijnor', 23, NULL, NULL),
(526, 'Ballia', 23, NULL, NULL),
(527, 'Banda', 23, NULL, NULL),
(528, 'Balrampur', 23, NULL, NULL),
(529, 'Bareilly', 23, NULL, NULL),
(530, 'Basti', 23, NULL, NULL),
(531, 'Bulandshahr', 23, NULL, NULL),
(532, 'Chandauli', 23, NULL, NULL),
(533, 'Chitrakoot', 23, NULL, NULL),
(534, 'Deoria', 23, NULL, NULL),
(535, 'Etah', 23, NULL, NULL),
(536, 'Kanshiram Nagar', 23, NULL, NULL),
(537, 'Etawah', 23, NULL, NULL),
(538, 'Firozabad', 23, NULL, NULL),
(539, 'Farrukhabad', 23, NULL, NULL),
(540, 'Fatehpur', 23, NULL, NULL),
(541, 'Faizabad', 23, NULL, NULL),
(542, 'Gautam Buddha Nagar', 23, NULL, NULL),
(543, 'Gonda', 23, NULL, NULL),
(544, 'Ghazipur', 23, NULL, NULL),
(545, 'Gorkakhpur', 23, NULL, NULL),
(546, 'Ghaziabad', 23, NULL, NULL),
(547, 'Hamirpur', 23, NULL, NULL),
(548, 'Hardoi', 23, NULL, NULL),
(549, 'Mahamaya Nagar', 23, NULL, NULL),
(550, 'Jhansi', 23, NULL, NULL),
(551, 'Jalaun', 23, NULL, NULL),
(552, 'Jyotiba Phule Nagar', 23, NULL, NULL),
(553, 'Jaunpur District', 23, NULL, NULL),
(554, 'Kanpur Dehat', 23, NULL, NULL),
(555, 'Kannauj', 23, NULL, NULL),
(556, 'Kanpur Nagar', 23, NULL, NULL),
(557, 'Kaushambi', 23, NULL, NULL),
(558, 'Kushinagar', 23, NULL, NULL),
(559, 'Lalitpur', 23, NULL, NULL),
(560, 'Lakhimpur Kheri', 23, NULL, NULL),
(561, 'Lucknow', 23, NULL, NULL),
(562, 'Mau', 23, NULL, NULL),
(563, 'Meerut', 23, NULL, NULL),
(564, 'Maharajganj', 23, NULL, NULL),
(565, 'Mahoba', 23, NULL, NULL),
(566, 'Mirzapur', 23, NULL, NULL),
(567, 'Moradabad', 23, NULL, NULL),
(568, 'Mainpuri', 23, NULL, NULL),
(569, 'Mathura', 23, NULL, NULL),
(570, 'Muzaffarnagar', 23, NULL, NULL),
(571, 'Pilibhit', 23, NULL, NULL),
(572, 'Pratapgarh', 23, NULL, NULL),
(573, 'Rampur', 23, NULL, NULL),
(574, 'Rae Bareli', 23, NULL, NULL),
(575, 'Saharanpur', 23, NULL, NULL),
(576, 'Sitapur', 23, NULL, NULL),
(577, 'Shahjahanpur', 23, NULL, NULL),
(578, 'Sant Kabir Nagar', 23, NULL, NULL),
(579, 'Siddharthnagar', 23, NULL, NULL),
(580, 'Sonbhadra', 23, NULL, NULL),
(581, 'Sant Ravidas Nagar', 23, NULL, NULL),
(582, 'Sultanpur', 23, NULL, NULL),
(583, 'Shravasti', 23, NULL, NULL),
(584, 'Unnao', 23, NULL, NULL),
(585, 'Varanasi', 23, NULL, NULL),
(586, 'Birbhum', 24, NULL, NULL),
(587, 'Bankura', 24, NULL, NULL),
(588, 'Bardhaman', 24, NULL, NULL),
(589, 'Darjeeling', 24, NULL, NULL),
(590, 'Dakshin Dinajpur', 24, NULL, NULL),
(591, 'Hooghly', 24, NULL, NULL),
(592, 'Howrah', 24, NULL, NULL),
(593, 'Jalpaiguri', 24, NULL, NULL),
(594, 'Cooch Behar', 24, NULL, NULL),
(595, 'Kolkata', 24, NULL, NULL),
(596, 'Malda', 24, NULL, NULL),
(597, 'Midnapore', 24, NULL, NULL),
(598, 'Murshidabad', 24, NULL, NULL),
(599, 'Nadia', 24, NULL, NULL),
(600, 'North 24 Parganas', 24, NULL, NULL),
(601, 'South 24 Parganas', 24, NULL, NULL),
(602, 'Purulia', 24, NULL, NULL),
(603, 'Uttar Dinajpur', 24, NULL, NULL),
(604, 'Bhubaneswar', 17, NULL, NULL),
(605, 'Kamrup', 2, NULL, NULL),
(606, 'Korba', 35, NULL, NULL),
(607, 'Manimajra', 31, NULL, NULL),
(608, 'Behlana', 31, NULL, NULL),
(609, 'Chandigarh', 31, NULL, NULL),
(610, 'Daria', 31, NULL, NULL),
(611, 'Khuda Alisher', 31, NULL, NULL),
(612, 'Mauli Jagran', 31, NULL, NULL),
(613, 'Purba Medinipur', 24, NULL, NULL),
(614, 'siang', 3, NULL, NULL),
(615, 'Pashchim Medinpur', 24, NULL, NULL),
(616, 'Adilabad', 37, NULL, NULL),
(617, 'Bhadradri Kothagudem', 37, NULL, NULL),
(618, 'Hanumakonda', 37, NULL, NULL),
(619, 'Hyderabad', 37, NULL, NULL),
(620, 'Jagtial', 37, NULL, NULL),
(621, 'Jangaon', 37, NULL, NULL),
(622, 'Jayashankar Bhupalpally', 37, NULL, NULL),
(623, 'Jogulamba Gadwal', 37, NULL, NULL),
(624, 'Kamareddy', 37, NULL, NULL),
(625, 'Karimnagar', 37, NULL, NULL),
(626, 'Khammam', 37, NULL, NULL),
(627, 'Kumuram Bheem', 37, NULL, NULL),
(628, 'Mahabubabad', 37, NULL, NULL),
(629, 'Mahabubnagar', 37, NULL, NULL),
(630, 'Mancherial', 37, NULL, NULL),
(631, 'Medak', 37, NULL, NULL),
(632, 'Medchal-Malkajgiri', 37, NULL, NULL),
(633, 'Mulugu', 37, NULL, NULL),
(634, 'Nagarkurnool', 37, NULL, NULL),
(635, 'Nalgonda', 37, NULL, NULL),
(636, 'Narayanpet', 37, NULL, NULL),
(637, 'Nirmal', 37, NULL, NULL),
(638, 'Nizamabad', 37, NULL, NULL),
(639, 'Peddapalli', 37, NULL, NULL),
(640, 'Rajanna Sircilla', 37, NULL, NULL),
(641, 'Rangareddy', 37, NULL, NULL),
(642, 'Sangareddy', 37, NULL, NULL),
(643, 'Siddipet', 37, NULL, NULL),
(644, 'Suryapet', 37, NULL, NULL),
(645, 'Vikarabad', 37, NULL, NULL),
(646, 'Wanaparthy', 37, NULL, NULL),
(647, 'Warangal', 37, NULL, NULL),
(648, 'Yadadri Bhuvanagiri', 37, NULL, NULL),
(649, 'Almora', 38, NULL, NULL),
(650, 'Bageshwar', 38, NULL, NULL),
(651, 'Chamoli', 38, NULL, NULL),
(652, 'Champawat', 38, NULL, NULL),
(653, 'Dehradun', 38, NULL, NULL),
(654, 'Haridwar', 38, NULL, NULL),
(655, 'Nainital', 38, NULL, NULL),
(656, 'Pauri Garhwal', 38, NULL, NULL),
(657, 'Pithoragarh', 38, NULL, NULL),
(658, 'Rudraprayag', 38, NULL, NULL),
(659, 'Tehri Garhwal', 38, NULL, NULL),
(660, 'Udham Singh Nagar', 38, NULL, NULL),
(661, 'Uttarkashi', 38, NULL, NULL),
(662, 'Sonepur', 17, NULL, NULL),
(663, 'Hathras', 23, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `sortname` char(2) NOT NULL DEFAULT '',
  `name` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`) VALUES
(105, 'IN', 'India'),
(165, 'OT', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `criminals`
--

CREATE TABLE `criminals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `criminal_booking_matches`
--

CREATE TABLE `criminal_booking_matches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `criminal_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `accuracy` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_profiles`
--

CREATE TABLE `hotel_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotel_name` varchar(255) NOT NULL,
  `manager_name` varchar(255) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `manager_mobile` varchar(255) DEFAULT NULL,
  `owner_mobile` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `registration_number` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `police_station` varchar(255) DEFAULT NULL,
  `floors` varchar(255) DEFAULT NULL,
  `rooms` varchar(255) DEFAULT NULL,
  `direct_employee_count` int(11) DEFAULT NULL,
  `outsource_employee_count` int(11) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `geo_tagging` tinyint(1) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `swimming_pool` tinyint(1) DEFAULT NULL,
  `aggregator` tinyint(1) DEFAULT NULL,
  `aggregator_registration` varchar(255) DEFAULT NULL,
  `aggregator_name` varchar(255) DEFAULT NULL,
  `staff_count` int(11) DEFAULT NULL,
  `security` tinyint(1) DEFAULT NULL,
  `security_registration` varchar(255) DEFAULT NULL,
  `security_name` varchar(255) DEFAULT NULL,
  `banquet_hall` tinyint(1) DEFAULT NULL,
  `banquet_hall_count` varchar(255) DEFAULT NULL,
  `restaurant_count` varchar(255) DEFAULT NULL,
  `leased_room` tinyint(1) DEFAULT NULL,
  `leased_room_count` varchar(255) DEFAULT NULL,
  `has_bar` tinyint(1) DEFAULT NULL,
  `has_pub` tinyint(1) DEFAULT NULL,
  `baggage_scanner` tinyint(1) DEFAULT NULL,
  `fire_detector` tinyint(1) DEFAULT NULL,
  `fire_license` varchar(255) DEFAULT NULL,
  `cctv` tinyint(1) DEFAULT NULL,
  `no_of_cameras` varchar(255) DEFAULT NULL,
  `no_of_cameras_outside` varchar(255) DEFAULT NULL,
  `metal_detector` tinyint(1) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `otherCountry` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `otherState` varchar(255) DEFAULT NULL,
  `otherCity` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_securities`
--

CREATE TABLE `login_securities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `google2fa_enable` tinyint(1) NOT NULL DEFAULT 0,
  `google2fa_secret` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_securities`
--

INSERT INTO `login_securities` (`id`, `user_id`, `google2fa_enable`, `google2fa_secret`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '6SVBW2RFEXSFOVQD', '2022-09-29 13:26:28', '2022-09-29 13:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_19_054241_create_permission_tables', 1),
(5, '2021_06_21_083551_create_moduals_table', 1),
(6, '2021_06_22_094023_create_settings_table', 1),
(7, '2021_07_02_154516_create_login_securities_table', 1),
(8, '2022_07_30_003611_create_countries_table', 2),
(9, '2023_08_31_134731_create_criminals_table', 2),
(10, '2023_09_05_132951_create_criminal_booking_matches_table', 3),
(11, '2023_09_05_133913_add_suspicious_check_to_bookings_table', 4),
(12, '2024_12_22_161121_add_column_to_police_stations_table', 5),
(13, '2024_12_26_071011_add_column_to_users_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 0),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 22),
(2, 'App\\Models\\User', 23),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 25),
(2, 'App\\Models\\User', 26),
(2, 'App\\Models\\User', 27),
(2, 'App\\Models\\User', 28),
(2, 'App\\Models\\User', 29),
(2, 'App\\Models\\User', 30),
(2, 'App\\Models\\User', 31),
(2, 'App\\Models\\User', 32),
(2, 'App\\Models\\User', 33),
(2, 'App\\Models\\User', 34),
(2, 'App\\Models\\User', 35),
(2, 'App\\Models\\User', 36),
(2, 'App\\Models\\User', 37),
(2, 'App\\Models\\User', 38),
(2, 'App\\Models\\User', 39),
(2, 'App\\Models\\User', 40),
(2, 'App\\Models\\User', 41),
(2, 'App\\Models\\User', 42),
(2, 'App\\Models\\User', 43),
(2, 'App\\Models\\User', 44),
(2, 'App\\Models\\User', 45),
(2, 'App\\Models\\User', 46),
(2, 'App\\Models\\User', 47),
(2, 'App\\Models\\User', 48),
(2, 'App\\Models\\User', 49),
(2, 'App\\Models\\User', 50),
(2, 'App\\Models\\User', 51),
(2, 'App\\Models\\User', 52),
(2, 'App\\Models\\User', 53),
(2, 'App\\Models\\User', 54),
(2, 'App\\Models\\User', 55),
(2, 'App\\Models\\User', 56),
(2, 'App\\Models\\User', 57),
(2, 'App\\Models\\User', 58),
(2, 'App\\Models\\User', 59),
(2, 'App\\Models\\User', 60),
(2, 'App\\Models\\User', 61),
(2, 'App\\Models\\User', 62),
(2, 'App\\Models\\User', 63),
(2, 'App\\Models\\User', 64),
(2, 'App\\Models\\User', 65),
(2, 'App\\Models\\User', 66),
(2, 'App\\Models\\User', 67),
(2, 'App\\Models\\User', 68),
(2, 'App\\Models\\User', 69),
(2, 'App\\Models\\User', 70),
(2, 'App\\Models\\User', 71),
(2, 'App\\Models\\User', 72),
(2, 'App\\Models\\User', 73),
(2, 'App\\Models\\User', 74),
(2, 'App\\Models\\User', 75),
(2, 'App\\Models\\User', 76),
(2, 'App\\Models\\User', 77),
(2, 'App\\Models\\User', 78),
(2, 'App\\Models\\User', 79),
(2, 'App\\Models\\User', 80),
(2, 'App\\Models\\User', 81),
(2, 'App\\Models\\User', 82),
(2, 'App\\Models\\User', 83),
(2, 'App\\Models\\User', 84),
(2, 'App\\Models\\User', 85),
(2, 'App\\Models\\User', 86),
(2, 'App\\Models\\User', 87),
(2, 'App\\Models\\User', 88),
(2, 'App\\Models\\User', 89),
(2, 'App\\Models\\User', 90),
(2, 'App\\Models\\User', 91),
(2, 'App\\Models\\User', 92),
(2, 'App\\Models\\User', 93),
(2, 'App\\Models\\User', 94),
(2, 'App\\Models\\User', 95),
(2, 'App\\Models\\User', 96),
(2, 'App\\Models\\User', 97),
(2, 'App\\Models\\User', 98),
(2, 'App\\Models\\User', 99),
(2, 'App\\Models\\User', 100),
(2, 'App\\Models\\User', 101),
(2, 'App\\Models\\User', 102),
(2, 'App\\Models\\User', 103),
(2, 'App\\Models\\User', 104),
(2, 'App\\Models\\User', 105),
(2, 'App\\Models\\User', 106),
(2, 'App\\Models\\User', 107),
(2, 'App\\Models\\User', 108),
(2, 'App\\Models\\User', 109),
(2, 'App\\Models\\User', 110),
(2, 'App\\Models\\User', 111),
(2, 'App\\Models\\User', 112),
(2, 'App\\Models\\User', 113),
(2, 'App\\Models\\User', 114),
(2, 'App\\Models\\User', 115),
(2, 'App\\Models\\User', 116),
(2, 'App\\Models\\User', 117),
(2, 'App\\Models\\User', 118),
(2, 'App\\Models\\User', 119),
(2, 'App\\Models\\User', 120),
(2, 'App\\Models\\User', 121),
(2, 'App\\Models\\User', 122),
(2, 'App\\Models\\User', 123),
(2, 'App\\Models\\User', 124),
(2, 'App\\Models\\User', 125),
(2, 'App\\Models\\User', 126),
(2, 'App\\Models\\User', 127),
(2, 'App\\Models\\User', 128),
(2, 'App\\Models\\User', 129),
(2, 'App\\Models\\User', 130),
(2, 'App\\Models\\User', 131),
(2, 'App\\Models\\User', 132),
(2, 'App\\Models\\User', 133),
(2, 'App\\Models\\User', 134),
(2, 'App\\Models\\User', 135),
(2, 'App\\Models\\User', 136),
(2, 'App\\Models\\User', 137),
(2, 'App\\Models\\User', 138),
(2, 'App\\Models\\User', 139),
(2, 'App\\Models\\User', 140),
(2, 'App\\Models\\User', 141),
(2, 'App\\Models\\User', 142),
(2, 'App\\Models\\User', 143),
(2, 'App\\Models\\User', 144),
(2, 'App\\Models\\User', 145),
(2, 'App\\Models\\User', 146),
(2, 'App\\Models\\User', 147),
(2, 'App\\Models\\User', 148),
(2, 'App\\Models\\User', 149),
(2, 'App\\Models\\User', 150),
(2, 'App\\Models\\User', 151),
(2, 'App\\Models\\User', 152),
(2, 'App\\Models\\User', 153),
(2, 'App\\Models\\User', 154),
(2, 'App\\Models\\User', 155),
(2, 'App\\Models\\User', 156),
(2, 'App\\Models\\User', 157),
(2, 'App\\Models\\User', 158),
(2, 'App\\Models\\User', 159),
(2, 'App\\Models\\User', 160),
(2, 'App\\Models\\User', 161),
(2, 'App\\Models\\User', 162),
(2, 'App\\Models\\User', 163),
(2, 'App\\Models\\User', 164),
(2, 'App\\Models\\User', 165),
(2, 'App\\Models\\User', 166),
(2, 'App\\Models\\User', 167),
(2, 'App\\Models\\User', 168),
(2, 'App\\Models\\User', 169),
(2, 'App\\Models\\User', 170),
(2, 'App\\Models\\User', 171),
(2, 'App\\Models\\User', 172),
(2, 'App\\Models\\User', 173),
(2, 'App\\Models\\User', 174),
(2, 'App\\Models\\User', 175),
(2, 'App\\Models\\User', 176),
(2, 'App\\Models\\User', 177),
(2, 'App\\Models\\User', 178),
(2, 'App\\Models\\User', 179),
(2, 'App\\Models\\User', 180),
(2, 'App\\Models\\User', 181),
(2, 'App\\Models\\User', 182),
(2, 'App\\Models\\User', 183),
(2, 'App\\Models\\User', 184),
(2, 'App\\Models\\User', 185),
(2, 'App\\Models\\User', 186),
(2, 'App\\Models\\User', 187),
(2, 'App\\Models\\User', 188),
(2, 'App\\Models\\User', 189),
(2, 'App\\Models\\User', 190),
(2, 'App\\Models\\User', 191),
(2, 'App\\Models\\User', 192),
(2, 'App\\Models\\User', 193),
(2, 'App\\Models\\User', 194),
(2, 'App\\Models\\User', 195),
(2, 'App\\Models\\User', 196),
(2, 'App\\Models\\User', 197),
(2, 'App\\Models\\User', 198),
(2, 'App\\Models\\User', 199),
(2, 'App\\Models\\User', 200),
(2, 'App\\Models\\User', 201),
(2, 'App\\Models\\User', 202),
(2, 'App\\Models\\User', 203),
(2, 'App\\Models\\User', 204),
(2, 'App\\Models\\User', 205),
(2, 'App\\Models\\User', 206),
(2, 'App\\Models\\User', 207),
(2, 'App\\Models\\User', 208),
(2, 'App\\Models\\User', 209),
(2, 'App\\Models\\User', 210),
(2, 'App\\Models\\User', 211),
(2, 'App\\Models\\User', 212),
(2, 'App\\Models\\User', 213),
(2, 'App\\Models\\User', 214),
(2, 'App\\Models\\User', 215),
(2, 'App\\Models\\User', 216),
(2, 'App\\Models\\User', 217),
(2, 'App\\Models\\User', 218),
(2, 'App\\Models\\User', 219),
(2, 'App\\Models\\User', 220),
(2, 'App\\Models\\User', 221),
(2, 'App\\Models\\User', 222),
(2, 'App\\Models\\User', 223),
(2, 'App\\Models\\User', 224),
(2, 'App\\Models\\User', 225),
(2, 'App\\Models\\User', 226),
(2, 'App\\Models\\User', 227),
(2, 'App\\Models\\User', 228),
(2, 'App\\Models\\User', 229),
(2, 'App\\Models\\User', 230),
(2, 'App\\Models\\User', 231),
(2, 'App\\Models\\User', 232),
(2, 'App\\Models\\User', 233),
(2, 'App\\Models\\User', 234),
(2, 'App\\Models\\User', 235),
(2, 'App\\Models\\User', 236),
(2, 'App\\Models\\User', 237),
(2, 'App\\Models\\User', 238),
(2, 'App\\Models\\User', 239),
(2, 'App\\Models\\User', 240),
(2, 'App\\Models\\User', 241),
(2, 'App\\Models\\User', 242),
(2, 'App\\Models\\User', 243),
(2, 'App\\Models\\User', 244),
(2, 'App\\Models\\User', 245),
(2, 'App\\Models\\User', 246),
(2, 'App\\Models\\User', 247),
(2, 'App\\Models\\User', 248),
(2, 'App\\Models\\User', 249),
(2, 'App\\Models\\User', 250),
(2, 'App\\Models\\User', 251),
(2, 'App\\Models\\User', 252),
(2, 'App\\Models\\User', 253),
(2, 'App\\Models\\User', 254),
(2, 'App\\Models\\User', 255),
(2, 'App\\Models\\User', 256),
(2, 'App\\Models\\User', 257),
(2, 'App\\Models\\User', 258),
(2, 'App\\Models\\User', 259),
(2, 'App\\Models\\User', 260),
(2, 'App\\Models\\User', 261),
(2, 'App\\Models\\User', 262),
(2, 'App\\Models\\User', 263),
(2, 'App\\Models\\User', 264),
(2, 'App\\Models\\User', 265),
(2, 'App\\Models\\User', 266),
(2, 'App\\Models\\User', 267),
(2, 'App\\Models\\User', 268),
(2, 'App\\Models\\User', 269),
(2, 'App\\Models\\User', 270),
(2, 'App\\Models\\User', 271),
(2, 'App\\Models\\User', 272),
(2, 'App\\Models\\User', 273),
(2, 'App\\Models\\User', 274),
(2, 'App\\Models\\User', 275),
(2, 'App\\Models\\User', 276),
(2, 'App\\Models\\User', 277),
(2, 'App\\Models\\User', 278),
(2, 'App\\Models\\User', 279),
(2, 'App\\Models\\User', 280),
(2, 'App\\Models\\User', 281),
(2, 'App\\Models\\User', 282),
(2, 'App\\Models\\User', 283),
(2, 'App\\Models\\User', 284),
(2, 'App\\Models\\User', 285),
(2, 'App\\Models\\User', 286),
(2, 'App\\Models\\User', 287),
(2, 'App\\Models\\User', 288),
(2, 'App\\Models\\User', 289),
(2, 'App\\Models\\User', 290),
(2, 'App\\Models\\User', 291),
(2, 'App\\Models\\User', 292),
(2, 'App\\Models\\User', 293),
(2, 'App\\Models\\User', 294),
(2, 'App\\Models\\User', 295),
(2, 'App\\Models\\User', 296),
(2, 'App\\Models\\User', 297),
(2, 'App\\Models\\User', 298),
(2, 'App\\Models\\User', 299),
(2, 'App\\Models\\User', 300),
(2, 'App\\Models\\User', 301),
(2, 'App\\Models\\User', 302),
(2, 'App\\Models\\User', 303),
(2, 'App\\Models\\User', 304),
(2, 'App\\Models\\User', 305),
(2, 'App\\Models\\User', 306),
(2, 'App\\Models\\User', 307),
(2, 'App\\Models\\User', 308),
(2, 'App\\Models\\User', 309),
(2, 'App\\Models\\User', 310),
(2, 'App\\Models\\User', 311),
(2, 'App\\Models\\User', 312),
(2, 'App\\Models\\User', 313),
(2, 'App\\Models\\User', 314),
(2, 'App\\Models\\User', 315),
(2, 'App\\Models\\User', 316),
(2, 'App\\Models\\User', 317),
(2, 'App\\Models\\User', 318),
(2, 'App\\Models\\User', 319),
(2, 'App\\Models\\User', 320),
(2, 'App\\Models\\User', 321),
(2, 'App\\Models\\User', 322),
(2, 'App\\Models\\User', 323),
(2, 'App\\Models\\User', 324),
(2, 'App\\Models\\User', 325),
(2, 'App\\Models\\User', 326),
(2, 'App\\Models\\User', 327),
(2, 'App\\Models\\User', 328),
(2, 'App\\Models\\User', 329),
(2, 'App\\Models\\User', 330),
(2, 'App\\Models\\User', 331),
(2, 'App\\Models\\User', 332),
(2, 'App\\Models\\User', 333),
(2, 'App\\Models\\User', 334),
(2, 'App\\Models\\User', 335),
(2, 'App\\Models\\User', 336),
(2, 'App\\Models\\User', 337),
(2, 'App\\Models\\User', 338),
(2, 'App\\Models\\User', 339),
(2, 'App\\Models\\User', 340),
(2, 'App\\Models\\User', 341),
(2, 'App\\Models\\User', 342),
(2, 'App\\Models\\User', 343),
(2, 'App\\Models\\User', 344),
(2, 'App\\Models\\User', 345),
(2, 'App\\Models\\User', 346),
(2, 'App\\Models\\User', 347),
(2, 'App\\Models\\User', 348),
(2, 'App\\Models\\User', 349),
(2, 'App\\Models\\User', 350),
(2, 'App\\Models\\User', 351),
(2, 'App\\Models\\User', 352),
(2, 'App\\Models\\User', 353),
(2, 'App\\Models\\User', 354),
(2, 'App\\Models\\User', 355),
(2, 'App\\Models\\User', 356),
(2, 'App\\Models\\User', 357),
(2, 'App\\Models\\User', 358),
(2, 'App\\Models\\User', 359),
(2, 'App\\Models\\User', 360),
(2, 'App\\Models\\User', 361),
(2, 'App\\Models\\User', 362),
(2, 'App\\Models\\User', 363),
(2, 'App\\Models\\User', 364),
(2, 'App\\Models\\User', 365),
(2, 'App\\Models\\User', 366),
(2, 'App\\Models\\User', 367),
(2, 'App\\Models\\User', 368),
(2, 'App\\Models\\User', 369),
(2, 'App\\Models\\User', 370),
(2, 'App\\Models\\User', 371),
(2, 'App\\Models\\User', 372),
(2, 'App\\Models\\User', 373),
(2, 'App\\Models\\User', 374),
(2, 'App\\Models\\User', 375),
(2, 'App\\Models\\User', 376),
(2, 'App\\Models\\User', 377),
(2, 'App\\Models\\User', 378),
(2, 'App\\Models\\User', 379),
(2, 'App\\Models\\User', 380),
(2, 'App\\Models\\User', 381),
(2, 'App\\Models\\User', 382),
(2, 'App\\Models\\User', 383),
(2, 'App\\Models\\User', 384),
(2, 'App\\Models\\User', 385),
(2, 'App\\Models\\User', 386),
(2, 'App\\Models\\User', 387),
(2, 'App\\Models\\User', 388),
(2, 'App\\Models\\User', 389),
(2, 'App\\Models\\User', 390),
(2, 'App\\Models\\User', 391),
(2, 'App\\Models\\User', 392),
(2, 'App\\Models\\User', 393),
(2, 'App\\Models\\User', 394),
(2, 'App\\Models\\User', 395),
(2, 'App\\Models\\User', 396),
(2, 'App\\Models\\User', 397),
(2, 'App\\Models\\User', 398),
(2, 'App\\Models\\User', 399),
(2, 'App\\Models\\User', 400),
(2, 'App\\Models\\User', 401),
(2, 'App\\Models\\User', 402),
(2, 'App\\Models\\User', 403),
(2, 'App\\Models\\User', 404),
(2, 'App\\Models\\User', 405),
(2, 'App\\Models\\User', 406),
(2, 'App\\Models\\User', 407),
(2, 'App\\Models\\User', 408),
(2, 'App\\Models\\User', 409),
(2, 'App\\Models\\User', 410),
(2, 'App\\Models\\User', 411),
(2, 'App\\Models\\User', 412),
(2, 'App\\Models\\User', 413),
(2, 'App\\Models\\User', 414),
(2, 'App\\Models\\User', 415),
(2, 'App\\Models\\User', 416),
(2, 'App\\Models\\User', 417),
(2, 'App\\Models\\User', 418),
(2, 'App\\Models\\User', 419),
(2, 'App\\Models\\User', 420),
(2, 'App\\Models\\User', 421),
(2, 'App\\Models\\User', 422),
(2, 'App\\Models\\User', 423),
(2, 'App\\Models\\User', 424),
(2, 'App\\Models\\User', 425),
(2, 'App\\Models\\User', 426),
(2, 'App\\Models\\User', 427),
(2, 'App\\Models\\User', 428),
(2, 'App\\Models\\User', 429),
(2, 'App\\Models\\User', 430),
(2, 'App\\Models\\User', 431),
(2, 'App\\Models\\User', 432),
(2, 'App\\Models\\User', 433),
(2, 'App\\Models\\User', 434),
(2, 'App\\Models\\User', 435),
(2, 'App\\Models\\User', 436),
(2, 'App\\Models\\User', 437),
(2, 'App\\Models\\User', 438),
(2, 'App\\Models\\User', 439),
(2, 'App\\Models\\User', 440),
(2, 'App\\Models\\User', 441),
(2, 'App\\Models\\User', 442),
(2, 'App\\Models\\User', 443),
(2, 'App\\Models\\User', 444),
(2, 'App\\Models\\User', 445),
(2, 'App\\Models\\User', 446),
(2, 'App\\Models\\User', 447),
(2, 'App\\Models\\User', 448),
(2, 'App\\Models\\User', 449),
(2, 'App\\Models\\User', 450),
(2, 'App\\Models\\User', 451),
(2, 'App\\Models\\User', 452),
(2, 'App\\Models\\User', 453),
(2, 'App\\Models\\User', 454),
(2, 'App\\Models\\User', 455),
(2, 'App\\Models\\User', 456),
(2, 'App\\Models\\User', 457),
(2, 'App\\Models\\User', 458),
(2, 'App\\Models\\User', 459),
(2, 'App\\Models\\User', 460),
(2, 'App\\Models\\User', 461),
(2, 'App\\Models\\User', 462),
(2, 'App\\Models\\User', 463),
(2, 'App\\Models\\User', 464),
(2, 'App\\Models\\User', 465),
(2, 'App\\Models\\User', 466),
(2, 'App\\Models\\User', 467),
(2, 'App\\Models\\User', 468),
(2, 'App\\Models\\User', 469),
(2, 'App\\Models\\User', 470),
(2, 'App\\Models\\User', 471),
(2, 'App\\Models\\User', 472),
(2, 'App\\Models\\User', 473),
(2, 'App\\Models\\User', 474),
(2, 'App\\Models\\User', 475),
(2, 'App\\Models\\User', 476),
(2, 'App\\Models\\User', 477),
(2, 'App\\Models\\User', 478),
(2, 'App\\Models\\User', 479),
(2, 'App\\Models\\User', 480),
(2, 'App\\Models\\User', 481),
(2, 'App\\Models\\User', 482),
(2, 'App\\Models\\User', 483),
(2, 'App\\Models\\User', 484),
(2, 'App\\Models\\User', 485),
(2, 'App\\Models\\User', 486),
(2, 'App\\Models\\User', 487),
(2, 'App\\Models\\User', 488),
(2, 'App\\Models\\User', 489),
(2, 'App\\Models\\User', 490),
(2, 'App\\Models\\User', 491),
(2, 'App\\Models\\User', 492),
(2, 'App\\Models\\User', 493),
(2, 'App\\Models\\User', 494),
(2, 'App\\Models\\User', 495),
(2, 'App\\Models\\User', 496),
(2, 'App\\Models\\User', 497),
(2, 'App\\Models\\User', 498),
(2, 'App\\Models\\User', 499),
(2, 'App\\Models\\User', 500),
(2, 'App\\Models\\User', 501),
(2, 'App\\Models\\User', 502),
(2, 'App\\Models\\User', 503),
(2, 'App\\Models\\User', 504),
(2, 'App\\Models\\User', 505),
(2, 'App\\Models\\User', 506),
(2, 'App\\Models\\User', 507),
(2, 'App\\Models\\User', 508),
(2, 'App\\Models\\User', 509),
(2, 'App\\Models\\User', 510),
(2, 'App\\Models\\User', 511),
(2, 'App\\Models\\User', 512),
(2, 'App\\Models\\User', 513),
(2, 'App\\Models\\User', 514),
(2, 'App\\Models\\User', 515),
(2, 'App\\Models\\User', 516),
(2, 'App\\Models\\User', 517),
(2, 'App\\Models\\User', 518),
(2, 'App\\Models\\User', 519),
(2, 'App\\Models\\User', 520),
(2, 'App\\Models\\User', 521),
(2, 'App\\Models\\User', 522),
(2, 'App\\Models\\User', 523),
(2, 'App\\Models\\User', 524),
(2, 'App\\Models\\User', 525),
(2, 'App\\Models\\User', 526),
(2, 'App\\Models\\User', 527),
(2, 'App\\Models\\User', 528),
(2, 'App\\Models\\User', 529),
(2, 'App\\Models\\User', 530),
(2, 'App\\Models\\User', 531),
(2, 'App\\Models\\User', 532),
(2, 'App\\Models\\User', 533),
(2, 'App\\Models\\User', 534),
(2, 'App\\Models\\User', 535),
(2, 'App\\Models\\User', 536),
(2, 'App\\Models\\User', 537),
(2, 'App\\Models\\User', 538),
(2, 'App\\Models\\User', 539),
(2, 'App\\Models\\User', 540),
(2, 'App\\Models\\User', 541),
(2, 'App\\Models\\User', 542),
(2, 'App\\Models\\User', 543),
(2, 'App\\Models\\User', 544),
(2, 'App\\Models\\User', 545),
(2, 'App\\Models\\User', 546),
(2, 'App\\Models\\User', 547),
(2, 'App\\Models\\User', 548),
(2, 'App\\Models\\User', 549),
(2, 'App\\Models\\User', 550),
(2, 'App\\Models\\User', 551),
(2, 'App\\Models\\User', 552),
(2, 'App\\Models\\User', 553),
(2, 'App\\Models\\User', 554),
(2, 'App\\Models\\User', 555),
(2, 'App\\Models\\User', 556),
(2, 'App\\Models\\User', 557),
(2, 'App\\Models\\User', 558),
(2, 'App\\Models\\User', 559),
(2, 'App\\Models\\User', 560),
(2, 'App\\Models\\User', 561),
(2, 'App\\Models\\User', 562),
(2, 'App\\Models\\User', 563),
(2, 'App\\Models\\User', 564),
(2, 'App\\Models\\User', 565),
(2, 'App\\Models\\User', 566),
(2, 'App\\Models\\User', 567),
(2, 'App\\Models\\User', 568),
(2, 'App\\Models\\User', 569),
(2, 'App\\Models\\User', 570),
(2, 'App\\Models\\User', 571),
(2, 'App\\Models\\User', 572),
(2, 'App\\Models\\User', 573),
(2, 'App\\Models\\User', 574),
(2, 'App\\Models\\User', 575),
(2, 'App\\Models\\User', 577),
(2, 'App\\Models\\User', 578),
(2, 'App\\Models\\User', 579),
(2, 'App\\Models\\User', 580),
(2, 'App\\Models\\User', 581),
(2, 'App\\Models\\User', 582),
(2, 'App\\Models\\User', 583),
(2, 'App\\Models\\User', 584),
(2, 'App\\Models\\User', 585),
(2, 'App\\Models\\User', 586),
(2, 'App\\Models\\User', 587),
(2, 'App\\Models\\User', 588),
(2, 'App\\Models\\User', 589),
(2, 'App\\Models\\User', 590),
(2, 'App\\Models\\User', 591),
(2, 'App\\Models\\User', 592),
(2, 'App\\Models\\User', 593),
(2, 'App\\Models\\User', 594),
(2, 'App\\Models\\User', 595),
(2, 'App\\Models\\User', 596),
(2, 'App\\Models\\User', 597),
(2, 'App\\Models\\User', 598),
(2, 'App\\Models\\User', 599),
(2, 'App\\Models\\User', 600),
(2, 'App\\Models\\User', 601),
(2, 'App\\Models\\User', 602),
(2, 'App\\Models\\User', 603),
(2, 'App\\Models\\User', 604),
(2, 'App\\Models\\User', 605),
(2, 'App\\Models\\User', 606),
(2, 'App\\Models\\User', 607),
(2, 'App\\Models\\User', 608),
(2, 'App\\Models\\User', 609),
(2, 'App\\Models\\User', 610),
(2, 'App\\Models\\User', 611),
(2, 'App\\Models\\User', 612),
(2, 'App\\Models\\User', 613),
(2, 'App\\Models\\User', 614),
(2, 'App\\Models\\User', 615),
(2, 'App\\Models\\User', 617),
(2, 'App\\Models\\User', 618),
(2, 'App\\Models\\User', 619),
(2, 'App\\Models\\User', 621),
(2, 'App\\Models\\User', 622),
(2, 'App\\Models\\User', 623),
(2, 'App\\Models\\User', 624),
(2, 'App\\Models\\User', 625),
(2, 'App\\Models\\User', 626),
(2, 'App\\Models\\User', 627),
(2, 'App\\Models\\User', 628),
(2, 'App\\Models\\User', 629),
(2, 'App\\Models\\User', 630),
(2, 'App\\Models\\User', 631),
(2, 'App\\Models\\User', 632),
(2, 'App\\Models\\User', 633),
(2, 'App\\Models\\User', 634),
(2, 'App\\Models\\User', 635),
(2, 'App\\Models\\User', 636),
(2, 'App\\Models\\User', 637),
(2, 'App\\Models\\User', 638),
(2, 'App\\Models\\User', 639),
(2, 'App\\Models\\User', 640),
(2, 'App\\Models\\User', 641),
(2, 'App\\Models\\User', 644),
(2, 'App\\Models\\User', 657),
(2, 'App\\Models\\User', 675),
(2, 'App\\Models\\User', 690),
(2, 'App\\Models\\User', 691),
(2, 'App\\Models\\User', 694),
(2, 'App\\Models\\User', 697),
(2, 'App\\Models\\User', 699),
(2, 'App\\Models\\User', 702),
(2, 'App\\Models\\User', 708),
(2, 'App\\Models\\User', 711),
(2, 'App\\Models\\User', 717),
(2, 'App\\Models\\User', 726),
(2, 'App\\Models\\User', 727),
(2, 'App\\Models\\User', 731),
(2, 'App\\Models\\User', 733),
(2, 'App\\Models\\User', 739),
(2, 'App\\Models\\User', 748),
(2, 'App\\Models\\User', 751),
(2, 'App\\Models\\User', 753),
(2, 'App\\Models\\User', 754),
(2, 'App\\Models\\User', 758),
(2, 'App\\Models\\User', 759),
(2, 'App\\Models\\User', 764),
(2, 'App\\Models\\User', 768),
(2, 'App\\Models\\User', 769),
(2, 'App\\Models\\User', 770),
(2, 'App\\Models\\User', 771),
(2, 'App\\Models\\User', 772),
(2, 'App\\Models\\User', 773),
(2, 'App\\Models\\User', 774),
(2, 'App\\Models\\User', 775),
(2, 'App\\Models\\User', 776),
(2, 'App\\Models\\User', 777),
(2, 'App\\Models\\User', 778),
(2, 'App\\Models\\User', 779),
(2, 'App\\Models\\User', 780),
(2, 'App\\Models\\User', 781),
(2, 'App\\Models\\User', 782),
(2, 'App\\Models\\User', 783),
(2, 'App\\Models\\User', 784),
(2, 'App\\Models\\User', 785),
(2, 'App\\Models\\User', 786),
(2, 'App\\Models\\User', 787),
(2, 'App\\Models\\User', 788),
(2, 'App\\Models\\User', 789),
(2, 'App\\Models\\User', 790),
(2, 'App\\Models\\User', 791),
(2, 'App\\Models\\User', 792),
(2, 'App\\Models\\User', 793),
(2, 'App\\Models\\User', 794),
(2, 'App\\Models\\User', 795),
(2, 'App\\Models\\User', 796),
(2, 'App\\Models\\User', 797),
(2, 'App\\Models\\User', 798),
(2, 'App\\Models\\User', 799),
(2, 'App\\Models\\User', 800),
(2, 'App\\Models\\User', 801),
(2, 'App\\Models\\User', 802),
(2, 'App\\Models\\User', 803),
(2, 'App\\Models\\User', 804),
(2, 'App\\Models\\User', 805),
(2, 'App\\Models\\User', 806),
(2, 'App\\Models\\User', 807),
(2, 'App\\Models\\User', 808),
(2, 'App\\Models\\User', 809),
(2, 'App\\Models\\User', 810),
(2, 'App\\Models\\User', 811),
(2, 'App\\Models\\User', 812),
(2, 'App\\Models\\User', 813),
(2, 'App\\Models\\User', 814),
(2, 'App\\Models\\User', 815),
(2, 'App\\Models\\User', 816),
(2, 'App\\Models\\User', 817),
(2, 'App\\Models\\User', 819),
(2, 'App\\Models\\User', 820),
(2, 'App\\Models\\User', 821),
(2, 'App\\Models\\User', 822),
(2, 'App\\Models\\User', 823),
(2, 'App\\Models\\User', 824),
(2, 'App\\Models\\User', 825),
(2, 'App\\Models\\User', 826),
(2, 'App\\Models\\User', 827),
(2, 'App\\Models\\User', 828),
(2, 'App\\Models\\User', 829),
(2, 'App\\Models\\User', 830),
(2, 'App\\Models\\User', 831),
(2, 'App\\Models\\User', 832),
(2, 'App\\Models\\User', 833),
(2, 'App\\Models\\User', 834),
(2, 'App\\Models\\User', 835),
(2, 'App\\Models\\User', 836),
(2, 'App\\Models\\User', 837),
(2, 'App\\Models\\User', 838),
(2, 'App\\Models\\User', 839),
(2, 'App\\Models\\User', 840),
(2, 'App\\Models\\User', 841),
(2, 'App\\Models\\User', 842),
(2, 'App\\Models\\User', 843),
(2, 'App\\Models\\User', 844),
(2, 'App\\Models\\User', 845),
(2, 'App\\Models\\User', 846),
(2, 'App\\Models\\User', 847),
(2, 'App\\Models\\User', 848),
(2, 'App\\Models\\User', 849),
(2, 'App\\Models\\User', 850),
(2, 'App\\Models\\User', 851),
(2, 'App\\Models\\User', 852),
(2, 'App\\Models\\User', 853),
(2, 'App\\Models\\User', 854),
(2, 'App\\Models\\User', 855),
(2, 'App\\Models\\User', 856),
(2, 'App\\Models\\User', 857),
(2, 'App\\Models\\User', 858),
(2, 'App\\Models\\User', 859),
(2, 'App\\Models\\User', 860),
(2, 'App\\Models\\User', 861),
(2, 'App\\Models\\User', 862),
(2, 'App\\Models\\User', 863),
(2, 'App\\Models\\User', 864),
(2, 'App\\Models\\User', 865),
(2, 'App\\Models\\User', 866),
(2, 'App\\Models\\User', 867),
(2, 'App\\Models\\User', 868),
(2, 'App\\Models\\User', 869),
(2, 'App\\Models\\User', 870),
(2, 'App\\Models\\User', 871),
(2, 'App\\Models\\User', 872),
(2, 'App\\Models\\User', 873),
(2, 'App\\Models\\User', 874),
(2, 'App\\Models\\User', 875),
(2, 'App\\Models\\User', 876),
(2, 'App\\Models\\User', 877),
(2, 'App\\Models\\User', 878),
(2, 'App\\Models\\User', 879),
(2, 'App\\Models\\User', 880),
(2, 'App\\Models\\User', 881),
(2, 'App\\Models\\User', 882),
(2, 'App\\Models\\User', 883),
(2, 'App\\Models\\User', 884),
(2, 'App\\Models\\User', 885),
(2, 'App\\Models\\User', 886),
(2, 'App\\Models\\User', 887),
(2, 'App\\Models\\User', 888),
(2, 'App\\Models\\User', 889),
(2, 'App\\Models\\User', 890),
(2, 'App\\Models\\User', 891),
(2, 'App\\Models\\User', 892),
(2, 'App\\Models\\User', 893),
(2, 'App\\Models\\User', 894),
(2, 'App\\Models\\User', 895),
(2, 'App\\Models\\User', 896),
(2, 'App\\Models\\User', 897),
(2, 'App\\Models\\User', 898),
(2, 'App\\Models\\User', 899),
(2, 'App\\Models\\User', 900),
(2, 'App\\Models\\User', 901),
(2, 'App\\Models\\User', 902),
(2, 'App\\Models\\User', 903),
(2, 'App\\Models\\User', 904),
(2, 'App\\Models\\User', 905),
(2, 'App\\Models\\User', 906),
(2, 'App\\Models\\User', 907),
(2, 'App\\Models\\User', 908),
(2, 'App\\Models\\User', 909),
(2, 'App\\Models\\User', 910),
(2, 'App\\Models\\User', 911),
(2, 'App\\Models\\User', 912),
(3, 'App\\Models\\User', 576),
(3, 'App\\Models\\User', 818),
(3, 'App\\Models\\User', 914),
(3, 'App\\Models\\User', 915),
(3, 'App\\Models\\User', 916);

-- --------------------------------------------------------

--
-- Table structure for table `moduals`
--

CREATE TABLE `moduals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `moduals`
--

INSERT INTO `moduals` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'user', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(4, 'setting', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(5, 'crud', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(6, 'langauge', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(7, 'permission', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(14, 'companies', '2022-05-08 21:30:20', '2022-05-08 21:30:20');

-- --------------------------------------------------------

--
-- Table structure for table `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `age_from` int(11) DEFAULT NULL,
  `age_to` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage-permission', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(2, 'create-permission', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(3, 'edit-permission', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(4, 'delete-permission', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(5, 'manage-role', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(6, 'create-role', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(7, 'edit-role', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(8, 'delete-role', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(9, 'show-role', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(10, 'manage-user', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(11, 'create-user', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(12, 'edit-user', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(13, 'delete-user', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(14, 'show-user', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(15, 'manage-module', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(16, 'create-module', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(17, 'delete-module', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(18, 'show-module', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(19, 'edit-module', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(20, 'manage-setting', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(21, 'manage-crud', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(22, 'manage-langauge', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(23, 'create-langauge', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(24, 'delete-langauge', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(25, 'show-langauge', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(26, 'edit-langauge', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(95, 'countries.view', 'web', '2022-08-03 03:36:27', '2022-08-03 03:36:27'),
(96, 'countries.create', 'web', '2022-08-03 03:36:27', '2022-08-03 03:36:27'),
(97, 'countries.update', 'web', '2022-08-03 03:36:27', '2022-08-03 03:36:27'),
(98, 'countries.destroy', 'web', '2022-08-03 03:36:27', '2022-08-03 03:36:27');

-- --------------------------------------------------------

--
-- Table structure for table `police_stations`
--

CREATE TABLE `police_stations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `police_stations`
--

INSERT INTO `police_stations` (`id`, `code`, `desc`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'CAPITAL_PS', 'Capital', 604, NULL, NULL),
(2, 'KHARAVELNAGAR_PS', 'Kharvelnagar', 604, NULL, NULL),
(3, 'SAHEEDNAGAR_PS', 'Saheed Nagar', 604, NULL, NULL),
(4, 'NAYAPALLI_PS', 'Nayapalli', 604, NULL, NULL),
(5, 'KHANDAGIRI_PS', 'Khandagiri', 604, NULL, NULL),
(6, 'MANCHESWAR_PS', 'Mancheswar', 604, NULL, NULL),
(7, 'CHANDRASEKHARPUR_PS', 'Chandrasekharpur', 604, NULL, NULL),
(8, 'SHREELINGARAJ_PS', 'ShreeLingaraj', 604, NULL, NULL),
(9, 'BADAGADA_PS', 'Badagada', 604, NULL, NULL),
(10, 'AIRFIELD_PS', 'Airfield', 604, NULL, NULL),
(11, 'LAXMISAGAR_PS', 'Laxmisagar', 604, NULL, NULL),
(12, 'JATANI_PS', 'Jatni', 604, NULL, NULL),
(13, 'MAHILA_PS', 'Mahila', 604, NULL, NULL),
(14, 'SPLENERGY_PS', 'Spl. Energy', 604, NULL, NULL),
(15, 'CHANDAKA_PS', 'Chandaka', 604, NULL, NULL),
(16, 'BALIANTA_PS', 'Balianta', 604, NULL, NULL),
(17, 'BALIPATNA_PS', 'Balipatna', 604, NULL, NULL),
(18, 'INFOCITY_PS', 'Infocity', 604, NULL, NULL),
(19, 'NANDANKANAN_PS', 'Nandankanan', 604, NULL, NULL),
(20, 'TAMANDO_PS', 'Tamando', 604, NULL, NULL),
(21, 'DHAULI_PS', 'Dhauli', 604, NULL, NULL),
(22, 'AIRPORT_PS', 'Airport', 604, NULL, NULL),
(23, 'TRAFFIC_PS', 'Traffic', 604, NULL, NULL),
(24, 'TRAFFIC-II_PS', 'Traffic-II', 604, NULL, NULL),
(25, 'BHARATPUR_PS', 'Bharatpur', 604, NULL, NULL),
(26, 'CANTONMENT_PS', 'Cantonment', 386, NULL, NULL),
(27, 'BIDANASI_PS', 'Bidanasi', 386, NULL, NULL),
(28, 'MARKATNAGAR_PS', 'Markatnagar', 386, NULL, NULL),
(29, 'LALBAG_PS', 'Lalbag', 386, NULL, NULL),
(30, 'PURIGHAT_PS', 'Purighat', 386, NULL, NULL),
(31, 'MADHUPATNA_PS', 'Madhupatna', 386, NULL, NULL),
(32, 'CHAULIAGANJ_PS', 'Chauliaganj', 386, NULL, NULL),
(33, 'MALGODOWN_PS', 'Malgodown', 386, NULL, NULL),
(34, 'MANGALABAG_PS', 'Mangalabag', 386, NULL, NULL),
(35, 'DARAGHABAZAR_PS', 'Daraghabazar', 386, NULL, NULL),
(36, 'MAHILA_PS', 'Mahila', 386, NULL, NULL),
(37, 'CHOUDWAR_PS', 'Choudwar', 386, NULL, NULL),
(38, 'JAGATPUR_PS', 'Jagatpur', 386, NULL, NULL),
(39, 'SPLENERGY_PS', 'Spl. Energy', 386, NULL, NULL),
(40, 'SADAR_PS', 'Sadar', 386, NULL, NULL),
(41, 'BARANGA_PS', 'Baranga', 386, NULL, NULL),
(42, 'BADAMBADI_PS', 'Badambadi', 386, NULL, NULL),
(43, 'KANDARPUR_PS', 'Kandarpur', 386, NULL, NULL),
(44, 'CDAPHASE-II_PS', 'CDA Phase-II', 386, NULL, NULL),
(45, 'TRAFFIC_PS', 'Traffic', 386, NULL, NULL),
(46, 'TRAFFICNHPHULANAKHARA_PS', 'Traffic NH phulnakhara', 386, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(2, 'user', 'web', '2022-05-08 21:30:20', '2022-05-08 21:30:20'),
(3, 'viewer', 'web', '2022-09-19 19:22:10', '2022-09-19 19:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'authentication', 'deactivate', 1, '2022-05-28 05:47:59', '2022-05-28 05:47:59'),
(2, 'timezone', 'Asia/Kolkata', 1, '2022-05-28 05:47:59', '2022-05-28 05:47:59'),
(3, 'site_date_format', 'M j, Y', 1, '2022-05-28 05:47:59', '2022-05-28 05:47:59'),
(4, 'default_language', 'en', 1, '2022-05-28 05:47:59', '2022-05-28 05:47:59');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1, 'ANDHRA PRADESH', 105),
(2, 'ASSAM', 105),
(3, 'ARUNACHAL PRADESH', 105),
(4, 'BIHAR', 105),
(5, 'GUJRAT', 105),
(6, 'HARYANA', 105),
(7, 'HIMACHAL PRADESH', 105),
(8, 'JAMMU & KASHMIR', 105),
(9, 'KARNATAKA', 105),
(10, 'KERALA', 105),
(11, 'MADHYA PRADESH', 105),
(12, 'MAHARASHTRA', 105),
(13, 'MANIPUR', 105),
(14, 'MEGHALAYA', 105),
(15, 'MIZORAM', 105),
(16, 'NAGALAND', 105),
(17, 'ORISSA', 105),
(18, 'PUNJAB', 105),
(19, 'RAJASTHAN', 105),
(20, 'SIKKIM', 105),
(21, 'TAMIL NADU', 105),
(22, 'TRIPURA', 105),
(23, 'UTTAR PRADESH', 105),
(24, 'WEST BENGAL', 105),
(25, 'DELHI', 105),
(26, 'GOA', 105),
(27, 'PONDICHERY', 105),
(28, 'LAKSHDWEEP', 105),
(29, 'DAMAN & DIU', 105),
(30, 'DADRA & NAGAR', 105),
(31, 'CHANDIGARH', 105),
(32, 'ANDAMAN & NICOBAR', 105),
(33, 'UTTARAKHAND', 105),
(34, 'JHARKHAND', 105),
(35, 'CHHATTISGARH', 105),
(37, 'Telangana', 105);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  `email_token` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `country` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `police_station` int(11) DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `verified`, `email_token`, `type`, `lang`, `country`, `state`, `city`, `police_station`, `created_by`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@example.com', '2022-06-23 08:48:00', '$2y$10$4NBrwpuNiYCtiVsOVKX7EuKMZclJY1VpzQS3.eOhAAj2YiKs4VFi2', 1, '', 'admin', 'en', NULL, NULL, NULL, NULL, 0, 'log_1679064833.png', 'ovnjJXkll4FfYl59yozBJvdnyt1gWWSlyA5wy1x6z0HxhMQqN8b6U6yuyUTB', '2022-05-08 16:00:00', '2023-03-17 14:53:53'),
(915, 'demo 2', 'demo2@example.com', NULL, '$2y$10$4kqJfnbm417W8HlKEc5ra.RIuDtMu3f/7JFQ49pO9D9jyADLAaNgu', 0, NULL, 'viewer', '', 105, 17, 604, 9, 0, NULL, NULL, '2024-12-26 02:26:04', '2024-12-26 02:26:04'),
(916, 'demo', 'demo@example.com', NULL, '$2y$10$pacOSJ3BKhEB2sTMrlVNLuPVe9iI/QdnxPWMVe9sz.2ZzL4pZHppK', 0, NULL, 'viewer', '', 105, 17, 386, 41, 0, NULL, NULL, '2024-12-26 05:59:35', '2024-12-26 05:59:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_accompanies`
--
ALTER TABLE `booking_accompanies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_rooms`
--
ALTER TABLE `booking_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criminals`
--
ALTER TABLE `criminals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criminal_booking_matches`
--
ALTER TABLE `criminal_booking_matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hotel_profiles`
--
ALTER TABLE `hotel_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_securities`
--
ALTER TABLE `login_securities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `moduals`
--
ALTER TABLE `moduals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `police_stations`
--
ALTER TABLE `police_stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_created_by_unique` (`name`,`created_by`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_accompanies`
--
ALTER TABLE `booking_accompanies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_rooms`
--
ALTER TABLE `booking_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=664;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `criminals`
--
ALTER TABLE `criminals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `criminal_booking_matches`
--
ALTER TABLE `criminal_booking_matches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotel_profiles`
--
ALTER TABLE `hotel_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_securities`
--
ALTER TABLE `login_securities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `moduals`
--
ALTER TABLE `moduals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `police_stations`
--
ALTER TABLE `police_stations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=917;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
