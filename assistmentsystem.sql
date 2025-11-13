-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2025 at 02:46 PM
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
-- Database: `assistmentsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `profile_picture`, `fullname`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, NULL, 'LCC Admin', 'lcc_assistments@gmail.com', '$2y$12$j1BuVkNeDcrendN8crlf7OsOCTBkq1L2oXzZGWj2z0YeRZ9/valTi', '2025-11-11 13:41:37', '2025-11-11 13:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `career_pathways`
--

CREATE TABLE `career_pathways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `riasec_id` char(1) NOT NULL,
  `career_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `career_pathways`
--

INSERT INTO `career_pathways` (`id`, `riasec_id`, `career_name`, `created_at`, `updated_at`) VALUES
(44, 'R', 'Agriculture', '2025-11-13 03:43:42', '2025-11-13 03:43:42'),
(45, 'R', 'Computers', '2025-11-13 03:43:42', '2025-11-13 03:43:42'),
(46, 'R', 'Construction', '2025-11-13 03:43:42', '2025-11-13 03:43:42'),
(47, 'R', 'Engineering', '2025-11-13 03:43:42', '2025-11-13 03:43:42'),
(48, 'R', 'Food and Hospitality', '2025-11-13 03:43:42', '2025-11-13 03:43:42'),
(49, 'R', 'Health Assistant', '2025-11-13 03:43:42', '2025-11-13 03:43:42'),
(50, 'R', 'Mechanic', '2025-11-13 03:43:42', '2025-11-13 03:43:42'),
(51, 'I', 'Chemistry', '2025-11-13 03:45:13', '2025-11-13 03:45:13'),
(52, 'I', 'Consumer Economics', '2025-11-13 03:45:13', '2025-11-13 03:45:13'),
(53, 'I', 'Engineering', '2025-11-13 03:45:13', '2025-11-13 03:45:13'),
(54, 'I', 'Marine Biology', '2025-11-13 03:45:13', '2025-11-13 03:45:13'),
(55, 'I', 'Medicine/Surgery', '2025-11-13 03:45:13', '2025-11-13 03:45:13'),
(56, 'I', 'Psychology', '2025-11-13 03:45:13', '2025-11-13 03:45:13'),
(57, 'I', 'Zoology', '2025-11-13 03:45:13', '2025-11-13 03:45:13'),
(58, 'A', 'Architecture', '2025-11-13 03:46:06', '2025-11-13 03:46:06'),
(59, 'A', 'Communications', '2025-11-13 03:46:06', '2025-11-13 03:46:06'),
(60, 'A', 'Cosmetology', '2025-11-13 03:46:06', '2025-11-13 03:46:06'),
(61, 'A', 'Fine and Performing Arts', '2025-11-13 03:46:06', '2025-11-13 03:46:06'),
(62, 'A', 'Interior Design', '2025-11-13 03:46:06', '2025-11-13 03:46:06'),
(63, 'A', 'Photography', '2025-11-13 03:46:06', '2025-11-13 03:46:06'),
(64, 'A', 'Radio and TV', '2025-11-13 03:46:06', '2025-11-13 03:46:06'),
(65, 'S', 'Advertising', '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(66, 'S', 'Counseling', '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(67, 'S', 'Education', '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(68, 'S', 'Nursing', '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(69, 'S', 'Physical Therapy', '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(70, 'S', 'Public Relations', '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(71, 'S', 'Travel', '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(72, 'E', 'Banking/Finance', '2025-11-13 03:47:44', '2025-11-13 03:47:44'),
(73, 'E', 'Fashion Merchandising', '2025-11-13 03:47:44', '2025-11-13 03:47:44'),
(74, 'E', 'International Trade', '2025-11-13 03:47:44', '2025-11-13 03:47:44'),
(75, 'E', 'Law', '2025-11-13 03:47:44', '2025-11-13 03:47:44'),
(76, 'E', 'Marketing/Sales', '2025-11-13 03:47:44', '2025-11-13 03:47:44'),
(77, 'E', 'Political Science', '2025-11-13 03:47:44', '2025-11-13 03:47:44'),
(78, 'E', 'Real Estate', '2025-11-13 03:47:44', '2025-11-13 03:47:44'),
(79, 'C', 'Accounting', '2025-11-13 03:48:34', '2025-11-13 03:48:34'),
(80, 'C', 'Administration', '2025-11-13 03:48:34', '2025-11-13 03:48:34'),
(81, 'C', 'Banking', '2025-11-13 03:48:34', '2025-11-13 03:48:34'),
(82, 'C', 'Court Reporting', '2025-11-13 03:48:34', '2025-11-13 03:48:34'),
(83, 'C', 'Data Processing', '2025-11-13 03:48:34', '2025-11-13 03:48:34'),
(84, 'C', 'Insurance', '2025-11-13 03:48:34', '2025-11-13 03:48:34'),
(85, 'C', 'Medical Records', '2025-11-13 03:48:34', '2025-11-13 03:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_description` text NOT NULL,
  `course_picture` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`course_picture`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `course_description`, `course_picture`, `created_at`, `updated_at`) VALUES
(1, 'BS Accountancy', 'Sample', '[\"xcnZK6cL7NBAcf4hxWGl89RscP68ismZVGb8n5e3.png\"]', '2025-11-12 05:13:04', '2025-11-12 05:13:04'),
(2, 'BS Accounting Information System', 'Sample', '[\"GL5DQ8kCXsrUZ1hYHUfIYAQFqhV7oYyfXh3pdi6F.png\"]', '2025-11-12 05:13:28', '2025-11-12 05:13:44'),
(3, 'BS Accounting Technology', 'Sample', '[\"UTsqCGecD3pWXUkV9nUzPTEgwpKGpFDQGOWJIVrc.png\"]', '2025-11-12 05:13:57', '2025-11-12 05:13:57'),
(4, 'BS Business Administration', 'Sample', '[\"EQ0qdqlqvYrucY9R9gAbiZhq1zrjRqdwRKNR4wr6.png\"]', '2025-11-12 05:14:25', '2025-11-12 05:14:25'),
(5, 'BS Civil Engineering', 'Sample', '[\"zJkWXz73m5iTfJZpRba5cCd7JdFHzvUiLbtb5Uj5.png\"]', '2025-11-12 05:14:36', '2025-11-12 05:14:36'),
(6, 'BS Criminology', 'Sample', '[\"kUtRwVjQQfzZImHSBOOOZor4QmVYvoz6FYVoCMDK.png\"]', '2025-11-12 05:14:50', '2025-11-12 05:14:50'),
(7, 'BS Hospitality Management', 'Sample', '[\"ZovjXS7vkZbiCWG3SmKwPgyke6OqFi8VexloPsz8.png\"]', '2025-11-12 05:15:01', '2025-11-12 05:15:01'),
(8, 'BS Hotel and Restaurant Management', 'Sample', '[\"hUoyHRdysREFKPxUPOBswAMcqSNOyuJs5oflkhOX.png\"]', '2025-11-12 05:15:18', '2025-11-12 05:15:18'),
(9, 'BS Information Systems', 'Sample', '[\"Ic4vgLw1XECUXZzfsINVSpkkPYaeTP8JQwF3rRxt.png\"]', '2025-11-12 05:15:33', '2025-11-12 05:15:33'),
(10, 'BS Psychology', 'Sample', '[\"gfWJy5bWsEFrDIZA9rQu6NANbXY55KuhyQaJuRE8.png\"]', '2025-11-12 05:16:36', '2025-11-12 05:16:36'),
(11, 'AB English Language', 'Sample', '[\"ZW5z3v51xTSElAxXkBnykaso8bB1xSNXcFQX9CNC.png\"]', '2025-11-12 05:16:53', '2025-11-12 05:16:53'),
(12, 'B Elementary Education', 'Sample', '[\"Q7D2B6rpwGDlT6OfvJmw5LZLsXOdDWeoXZtjREAS.png\"]', '2025-11-12 05:17:07', '2025-11-12 05:17:07'),
(13, 'B Secondary Education', 'Sample', '[\"U52PAMvdLrD3ltQSQQpVNcpXQxjNcQX0TBZb8Bz2.png\"]', '2025-11-12 05:17:17', '2025-11-12 05:17:17'),
(14, 'B Physical Education', 'Sample', '[\"CVBNoiBeLZ98wtjHcCnOLpUZFbiGtkrwA2tI2YwO.png\"]', '2025-11-12 05:17:25', '2025-11-12 05:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `course_career_pathways`
--

CREATE TABLE `course_career_pathways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `career_pathway_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_career_pathways`
--

INSERT INTO `course_career_pathways` (`id`, `career_pathway_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 45, 9, '2025-11-13 03:43:42', '2025-11-13 03:43:42'),
(2, 46, 5, '2025-11-13 03:43:42', '2025-11-13 03:43:42'),
(3, 47, 5, '2025-11-13 03:43:42', '2025-11-13 03:43:42'),
(4, 48, 7, '2025-11-13 03:43:42', '2025-11-13 03:43:42'),
(5, 48, 8, '2025-11-13 03:43:42', '2025-11-13 03:43:42'),
(6, 49, 10, '2025-11-13 03:43:42', '2025-11-13 03:43:42'),
(7, 49, 14, '2025-11-13 03:43:42', '2025-11-13 03:43:42'),
(8, 52, 1, '2025-11-13 03:45:13', '2025-11-13 03:45:13'),
(9, 52, 2, '2025-11-13 03:45:13', '2025-11-13 03:45:13'),
(10, 52, 4, '2025-11-13 03:45:13', '2025-11-13 03:45:13'),
(11, 53, 5, '2025-11-13 03:45:13', '2025-11-13 03:45:13'),
(12, 55, 10, '2025-11-13 03:45:13', '2025-11-13 03:45:13'),
(13, 56, 10, '2025-11-13 03:45:13', '2025-11-13 03:45:13'),
(14, 58, 5, '2025-11-13 03:46:06', '2025-11-13 03:46:06'),
(15, 59, 11, '2025-11-13 03:46:06', '2025-11-13 03:46:06'),
(16, 61, 11, '2025-11-13 03:46:06', '2025-11-13 03:46:06'),
(17, 62, 5, '2025-11-13 03:46:06', '2025-11-13 03:46:06'),
(18, 64, 11, '2025-11-13 03:46:06', '2025-11-13 03:46:06'),
(19, 65, 4, '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(20, 65, 7, '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(21, 65, 8, '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(22, 66, 10, '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(23, 67, 12, '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(24, 67, 13, '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(25, 67, 14, '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(26, 69, 14, '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(27, 70, 4, '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(28, 70, 7, '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(29, 70, 8, '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(30, 71, 7, '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(31, 71, 8, '2025-11-13 03:47:00', '2025-11-13 03:47:00'),
(32, 72, 1, '2025-11-13 03:47:44', '2025-11-13 03:47:44'),
(33, 72, 2, '2025-11-13 03:47:44', '2025-11-13 03:47:44'),
(34, 72, 3, '2025-11-13 03:47:44', '2025-11-13 03:47:44'),
(35, 72, 4, '2025-11-13 03:47:44', '2025-11-13 03:47:44'),
(36, 74, 4, '2025-11-13 03:47:44', '2025-11-13 03:47:44'),
(37, 75, 6, '2025-11-13 03:47:44', '2025-11-13 03:47:44'),
(38, 76, 4, '2025-11-13 03:47:44', '2025-11-13 03:47:44'),
(39, 76, 7, '2025-11-13 03:47:44', '2025-11-13 03:47:44'),
(40, 76, 8, '2025-11-13 03:47:44', '2025-11-13 03:47:44'),
(41, 77, 6, '2025-11-13 03:47:44', '2025-11-13 03:47:44'),
(42, 78, 4, '2025-11-13 03:47:44', '2025-11-13 03:47:44'),
(43, 79, 1, '2025-11-13 03:48:34', '2025-11-13 03:48:34'),
(44, 79, 2, '2025-11-13 03:48:34', '2025-11-13 03:48:34'),
(45, 79, 3, '2025-11-13 03:48:34', '2025-11-13 03:48:34'),
(46, 80, 4, '2025-11-13 03:48:34', '2025-11-13 03:48:34'),
(47, 81, 1, '2025-11-13 03:48:34', '2025-11-13 03:48:34'),
(48, 81, 2, '2025-11-13 03:48:34', '2025-11-13 03:48:34'),
(49, 81, 3, '2025-11-13 03:48:34', '2025-11-13 03:48:34'),
(50, 81, 4, '2025-11-13 03:48:34', '2025-11-13 03:48:34'),
(51, 83, 9, '2025-11-13 03:48:34', '2025-11-13 03:48:34'),
(52, 84, 1, '2025-11-13 03:48:34', '2025-11-13 03:48:34'),
(53, 84, 4, '2025-11-13 03:48:34', '2025-11-13 03:48:34');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_25_132621_create_admins_table', 1),
(5, '2024_09_27_043854_create_riasecs_table', 1),
(6, '2024_09_27_043858_create_courses_table', 1),
(7, '2024_09_27_043901_create_preferred_courses_table', 1),
(8, '2024_09_27_043903_create_questions_table', 1),
(9, '2024_09_27_043906_create_options_table', 1),
(10, '2024_09_27_043908_create_responses_table', 1),
(11, '2024_09_27_043911_create_riasec_scores_table', 1),
(12, '2024_09_27_120228_create_career_pathways_table', 1),
(13, '2024_09_27_120624_create_course_career_pathways_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option_text` varchar(255) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `option_text`, `is_correct`, `created_at`, `updated_at`) VALUES
(1, 1, 'R', 1, '2025-11-12 14:41:25', '2025-11-12 14:41:25'),
(2, 2, 'I', 1, '2025-11-12 14:42:06', '2025-11-12 14:42:06'),
(3, 3, 'A', 1, '2025-11-12 14:42:21', '2025-11-12 14:42:21'),
(4, 4, 'S', 1, '2025-11-12 14:42:30', '2025-11-12 14:42:30'),
(5, 5, 'E', 1, '2025-11-12 14:43:57', '2025-11-12 14:43:57'),
(6, 6, 'C', 1, '2025-11-12 14:44:05', '2025-11-12 14:44:05'),
(7, 7, 'R', 1, '2025-11-12 14:44:13', '2025-11-12 14:44:13'),
(8, 8, 'A', 1, '2025-11-12 14:44:31', '2025-11-12 14:44:31'),
(9, 9, 'C', 1, '2025-11-12 14:44:44', '2025-11-12 14:44:44'),
(10, 10, 'E', 1, '2025-11-12 14:44:50', '2025-11-12 14:44:50'),
(11, 11, 'I', 1, '2025-11-12 14:44:58', '2025-11-12 14:44:58'),
(12, 12, 'S', 1, '2025-11-12 14:45:10', '2025-11-12 14:45:10'),
(13, 13, 'S', 1, '2025-11-12 14:45:18', '2025-11-12 14:45:18'),
(14, 14, 'R', 1, '2025-11-12 14:45:26', '2025-11-12 14:45:26'),
(15, 15, 'C', 1, '2025-11-12 14:45:33', '2025-11-12 14:45:33'),
(16, 16, 'E', 1, '2025-11-12 14:45:41', '2025-11-12 14:45:41'),
(17, 17, 'A', 1, '2025-11-12 14:45:50', '2025-11-12 14:45:50'),
(18, 18, 'I', 1, '2025-11-12 14:45:58', '2025-11-12 14:45:58'),
(19, 19, 'E', 1, '2025-11-12 14:46:06', '2025-11-12 14:46:06'),
(20, 20, 'S', 1, '2025-11-12 14:46:16', '2025-11-12 14:46:16'),
(21, 21, 'I', 1, '2025-11-12 14:46:23', '2025-11-12 14:46:23'),
(22, 22, 'R', 1, '2025-11-12 14:46:39', '2025-11-12 14:46:39'),
(23, 23, 'A', 1, '2025-11-12 14:47:03', '2025-11-12 14:47:03'),
(24, 24, 'C', 1, '2025-11-12 14:47:35', '2025-11-12 14:47:35'),
(25, 25, 'C', 1, '2025-11-12 14:47:42', '2025-11-12 14:47:42'),
(26, 26, 'I', 1, '2025-11-12 14:47:49', '2025-11-12 14:47:49'),
(27, 27, 'A', 1, '2025-11-12 14:49:48', '2025-11-12 14:49:48'),
(28, 28, 'S', 1, '2025-11-12 14:49:55', '2025-11-12 14:49:55'),
(29, 29, 'E', 1, '2025-11-12 14:50:03', '2025-11-12 14:50:03'),
(30, 30, 'R', 1, '2025-11-12 14:50:23', '2025-11-12 14:50:23'),
(31, 31, 'A', 1, '2025-11-12 14:50:40', '2025-11-12 14:50:40'),
(32, 32, 'R', 1, '2025-11-12 14:50:46', '2025-11-12 14:50:46'),
(33, 33, 'I', 1, '2025-11-12 14:50:58', '2025-11-12 14:50:58'),
(34, 34, 'S', 1, '2025-11-12 14:51:03', '2025-11-12 14:51:03'),
(35, 35, 'C', 1, '2025-11-12 14:51:12', '2025-11-12 14:51:12'),
(36, 36, 'E', 1, '2025-11-12 14:51:18', '2025-11-12 14:51:18'),
(37, 37, 'R', 1, '2025-11-12 14:51:49', '2025-11-12 14:51:49'),
(38, 38, 'C', 1, '2025-11-12 14:51:57', '2025-11-12 14:51:57'),
(39, 39, 'I', 1, '2025-11-12 14:52:04', '2025-11-12 14:52:04'),
(40, 40, 'S', 1, '2025-11-12 14:52:15', '2025-11-12 14:52:15'),
(41, 41, 'A', 1, '2025-11-12 14:52:20', '2025-11-12 14:52:20'),
(42, 42, 'E', 1, '2025-11-12 14:52:27', '2025-11-12 14:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `preferred_courses`
--

CREATE TABLE `preferred_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_1` bigint(20) UNSIGNED DEFAULT NULL,
  `course_2` bigint(20) UNSIGNED DEFAULT NULL,
  `course_3` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_text` text NOT NULL,
  `riasec_id` char(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_text`, `riasec_id`, `created_at`, `updated_at`) VALUES
(1, 'I like to work on cars', 'R', '2025-11-12 14:41:25', '2025-11-12 14:41:25'),
(2, 'I like to do puzzles', 'I', '2025-11-12 14:42:06', '2025-11-12 14:42:06'),
(3, 'I am good at working independently', 'A', '2025-11-12 14:42:21', '2025-11-12 14:42:21'),
(4, 'I like to work on teams', 'S', '2025-11-12 14:42:30', '2025-11-12 14:42:30'),
(5, 'I am an ambitious person, I set goals for myself', 'E', '2025-11-12 14:43:57', '2025-11-12 14:43:57'),
(6, 'I like to organize things, (files, desks/offices)', 'C', '2025-11-12 14:44:05', '2025-11-12 14:44:05'),
(7, 'I like to build things', 'R', '2025-11-12 14:44:13', '2025-11-12 14:44:13'),
(8, 'I like to read about art and music', 'A', '2025-11-12 14:44:31', '2025-11-12 14:44:31'),
(9, 'I like to have clear instructions to follow', 'C', '2025-11-12 14:44:44', '2025-11-12 14:44:44'),
(10, 'I like to try to influence or persuade people', 'E', '2025-11-12 14:44:50', '2025-11-12 14:44:50'),
(11, 'I like to do experiments', 'I', '2025-11-12 14:44:58', '2025-11-12 14:44:58'),
(12, 'I like to teach or train people', 'S', '2025-11-12 14:45:10', '2025-11-12 14:45:10'),
(13, 'I like trying to help people solve their problems', 'S', '2025-11-12 14:45:18', '2025-11-12 14:45:18'),
(14, 'I like to take care of animals', 'R', '2025-11-12 14:45:26', '2025-11-12 14:45:26'),
(15, 'I wouldn’t mind working 8 hours per day in an office', 'C', '2025-11-12 14:45:33', '2025-11-12 14:45:33'),
(16, 'I like selling things', 'E', '2025-11-12 14:45:41', '2025-11-12 14:45:41'),
(17, 'I enjoy creative writing', 'A', '2025-11-12 14:45:50', '2025-11-12 14:45:50'),
(18, 'I enjoy science', 'I', '2025-11-12 14:45:58', '2025-11-12 14:45:58'),
(19, 'I am quick to take on new responsibilities', 'E', '2025-11-12 14:46:06', '2025-11-12 14:46:06'),
(20, 'I am interested in healing people', 'S', '2025-11-12 14:46:16', '2025-11-12 14:46:16'),
(21, 'I enjoy trying to figure out how things work', 'I', '2025-11-12 14:46:23', '2025-11-12 14:46:23'),
(22, 'I like putting things together or assembling things', 'R', '2025-11-12 14:46:39', '2025-11-12 14:46:39'),
(23, 'I am a creative person', 'A', '2025-11-12 14:47:03', '2025-11-12 14:47:03'),
(24, 'I pay attention to details', 'C', '2025-11-12 14:47:35', '2025-11-12 14:47:35'),
(25, 'I pay attention to details', 'C', '2025-11-12 14:47:42', '2025-11-12 14:47:42'),
(26, 'I like to analyze things (problems/ situations)', 'I', '2025-11-12 14:47:49', '2025-11-12 14:47:49'),
(27, 'I like to play instruments or sing', 'A', '2025-11-12 14:49:48', '2025-11-12 14:49:48'),
(28, 'I enjoy learning about other cultures', 'S', '2025-11-12 14:49:55', '2025-11-12 14:49:55'),
(29, 'I would like to start my own business', 'E', '2025-11-12 14:50:03', '2025-11-12 14:50:03'),
(30, 'I like to cook', 'R', '2025-11-12 14:50:23', '2025-11-12 14:50:23'),
(31, 'I like acting in plays', 'A', '2025-11-12 14:50:40', '2025-11-12 14:50:40'),
(32, 'I am a practical person', 'R', '2025-11-12 14:50:46', '2025-11-12 14:50:46'),
(33, 'I like working with numbers or charts', 'I', '2025-11-12 14:50:58', '2025-11-12 14:50:58'),
(34, 'I like to get into discussions about issues', 'S', '2025-11-12 14:51:03', '2025-11-12 14:51:03'),
(35, 'I am good at keeping records of my work', 'C', '2025-11-12 14:51:12', '2025-11-12 14:51:12'),
(36, 'I like to lead', 'E', '2025-11-12 14:51:18', '2025-11-12 14:51:18'),
(37, 'I like working outdoors', 'R', '2025-11-12 14:51:49', '2025-11-12 14:51:49'),
(38, 'I would like to work in an office', 'C', '2025-11-12 14:51:57', '2025-11-12 14:51:57'),
(39, 'I’m good at math', 'I', '2025-11-12 14:52:04', '2025-11-12 14:52:04'),
(40, 'I like helping people', 'S', '2025-11-12 14:52:15', '2025-11-12 14:52:15'),
(41, 'I like to draw', 'A', '2025-11-12 14:52:20', '2025-11-12 14:52:20'),
(42, 'I like to give speeches', 'E', '2025-11-12 14:52:27', '2025-11-12 14:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `selected_option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riasecs`
--

CREATE TABLE `riasecs` (
  `id` char(1) NOT NULL,
  `riasec_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riasecs`
--

INSERT INTO `riasecs` (`id`, `riasec_name`, `description`, `created_at`, `updated_at`) VALUES
('A', 'Artistic', 'Sample', '2025-11-12 05:24:54', '2025-11-13 03:46:06'),
('C', 'Conventional', 'Sample', '2025-11-12 05:33:13', '2025-11-13 03:48:34'),
('E', 'Enterprising', 'Sample', '2025-11-12 05:27:09', '2025-11-13 03:47:44'),
('I', 'Investigative', 'Sample', '2025-11-12 05:23:55', '2025-11-13 03:45:13'),
('R', 'Realistic', 'Sample', '2025-11-12 05:22:12', '2025-11-13 03:43:42'),
('S', 'Social', 'Sample', '2025-11-12 05:26:02', '2025-11-13 03:47:00');

-- --------------------------------------------------------

--
-- Table structure for table `riasec_scores`
--

CREATE TABLE `riasec_scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `riasec_id` char(1) NOT NULL,
  `points` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('D3O6GJ3GA7yj4BhOPEXuCz1kG1WOCbnvF965EJOT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicUxiV0FlYjNXYW5nTVZLbFhRMU9keUJ3NWN5cGRxcDhkTGYzZXFxSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTMyOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcmlhc2VjL3ByZWRpY3Q/c2NvcmVzJTVCUiU1RD0zJnNjb3JlcyU1QkklNUQ9MyZzY29yZXMlNUJBJTVEPTQmc2NvcmVzJTVCUyU1RD00JnNjb3JlcyU1QkUlNUQ9NSZzY29yZXMlNUJDJTVEPTQiO31zOjUyOiJsb2dpbl91c2Vyc181OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjkyO30=', 1763038636),
('Dc52ablyDxFtdCNmx3RKu5Vfp7F9rCntVUuQSH66', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid0JHQ0ZoVXJHYXVveUNuQkI1NktaYTBuR1plVXNxc3c1TUZJYTZVTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9leGFtaW5lcnMvZXhjZWwvZGF0YSI7fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1763014899),
('oPq2wARdqupdpm0LWAV56qKL6VkV8i58A258kAm4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS2w5WWxRemhNdWNlMEd6UW16bU9rMGJZSkNpMlplRm1CZFhJM096MiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTMyOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcmlhc2VjL3ByZWRpY3Q/c2NvcmVzJTVCUiU1RD01JnNjb3JlcyU1QkklNUQ9MyZzY29yZXMlNUJBJTVEPTQmc2NvcmVzJTVCUyU1RD02JnNjb3JlcyU1QkUlNUQ9NCZzY29yZXMlNUJDJTVEPTUiO31zOjUyOiJsb2dpbl91c2Vyc181OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjkwO30=', 1763015599),
('X5UbNs8xKe85WyR2pVoh9RtIByYNxJGjkqbzFjvo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVhraTBTd3FGVHJpUHdBSlFJNGdCZTBySkhpcVlUUktYYjNlVHdTcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1763039520);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `default_id` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `strand` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `career_pathways`
--
ALTER TABLE `career_pathways`
  ADD PRIMARY KEY (`id`),
  ADD KEY `career_pathways_riasec_id_foreign` (`riasec_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_career_pathways`
--
ALTER TABLE `course_career_pathways`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_career_pathways_career_pathway_id_foreign` (`career_pathway_id`),
  ADD KEY `course_career_pathways_course_id_foreign` (`course_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_question_id_foreign` (`question_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `preferred_courses`
--
ALTER TABLE `preferred_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `preferred_courses_course_1_foreign` (`course_1`),
  ADD KEY `preferred_courses_course_2_foreign` (`course_2`),
  ADD KEY `preferred_courses_course_3_foreign` (`course_3`),
  ADD KEY `preferred_courses_user_id_index` (`user_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_riasec_id_foreign` (`riasec_id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD KEY `responses_user_id_foreign` (`user_id`),
  ADD KEY `responses_question_id_foreign` (`question_id`),
  ADD KEY `responses_selected_option_id_foreign` (`selected_option_id`);

--
-- Indexes for table `riasecs`
--
ALTER TABLE `riasecs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riasec_scores`
--
ALTER TABLE `riasec_scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riasec_scores_user_id_foreign` (`user_id`),
  ADD KEY `riasec_scores_riasec_id_foreign` (`riasec_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `career_pathways`
--
ALTER TABLE `career_pathways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `course_career_pathways`
--
ALTER TABLE `course_career_pathways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `preferred_courses`
--
ALTER TABLE `preferred_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `riasec_scores`
--
ALTER TABLE `riasec_scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `career_pathways`
--
ALTER TABLE `career_pathways`
  ADD CONSTRAINT `career_pathways_riasec_id_foreign` FOREIGN KEY (`riasec_id`) REFERENCES `riasecs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_career_pathways`
--
ALTER TABLE `course_career_pathways`
  ADD CONSTRAINT `course_career_pathways_career_pathway_id_foreign` FOREIGN KEY (`career_pathway_id`) REFERENCES `career_pathways` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_career_pathways_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `preferred_courses`
--
ALTER TABLE `preferred_courses`
  ADD CONSTRAINT `preferred_courses_course_1_foreign` FOREIGN KEY (`course_1`) REFERENCES `courses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `preferred_courses_course_2_foreign` FOREIGN KEY (`course_2`) REFERENCES `courses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `preferred_courses_course_3_foreign` FOREIGN KEY (`course_3`) REFERENCES `courses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `preferred_courses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_riasec_id_foreign` FOREIGN KEY (`riasec_id`) REFERENCES `riasecs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `responses_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `responses_selected_option_id_foreign` FOREIGN KEY (`selected_option_id`) REFERENCES `options` (`id`),
  ADD CONSTRAINT `responses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `riasec_scores`
--
ALTER TABLE `riasec_scores`
  ADD CONSTRAINT `riasec_scores_riasec_id_foreign` FOREIGN KEY (`riasec_id`) REFERENCES `riasecs` (`id`),
  ADD CONSTRAINT `riasec_scores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
