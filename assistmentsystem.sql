-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2025 at 05:22 AM
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
(1, NULL, 'LCC Admin', 'lcc_assistments@gmail.com', '$2y$12$8vld90lZ4orZZN6uNJ8WiOzm3eiVVvLBjiRwaLVz2greUuN30Fa9S', '2025-10-03 12:07:46', '2025-10-03 12:07:46');

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
(2, 'R', 'Health Services', '2025-11-07 13:01:03', '2025-11-07 13:01:03'),
(3, 'R', 'Industrial and Engineering Technology', '2025-11-07 13:01:03', '2025-11-07 13:01:03');

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
(3, 'Bachelor of Science in Information Technology', 'Sample', '[\"RgxvSwpuEL0bR2ns3Q2I63n9VLFlKoTYNhJyJljK.jpg\"]', '2025-10-11 10:58:10', '2025-10-11 10:58:10'),
(4, 'Bachelor of Science in Business Administration', 'Sample', '[\"hlVfYMbcxwnhLJEbaxiOabHmIvQj5XB8gyJPJboq.jpg\"]', '2025-11-07 08:33:09', '2025-11-07 08:33:09'),
(5, 'Bachelor of Science in Accountancy', 'Sample', '[\"mNkzSk7Qy01Ha0wapzjRHlY36c5F2aheu9vUlzh7.jpg\"]', '2025-11-07 08:33:27', '2025-11-07 08:33:27'),
(6, 'Bachelor of Science in Nursing', 'Sample Course', '[\"P6SUuFKermw5LDIMEnVz4Wf6ByLgOvhxpF9uLJBu.jpg\"]', '2025-11-07 13:00:09', '2025-11-07 13:00:09');

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
(2, 2, 4, '2025-11-07 13:01:03', '2025-11-07 13:01:03'),
(3, 2, 6, '2025-11-07 13:01:03', '2025-11-07 13:01:03'),
(4, 3, 3, '2025-11-07 13:01:03', '2025-11-07 13:01:03'),
(5, 3, 4, '2025-11-07 13:01:03', '2025-11-07 13:01:03');

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
(2, 2, 'R', 1, '2025-11-07 13:02:13', '2025-11-07 13:02:13');

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

--
-- Dumping data for table `preferred_courses`
--

INSERT INTO `preferred_courses` (`id`, `user_id`, `course_1`, `course_2`, `course_3`, `created_at`, `updated_at`) VALUES
(2, 28, 3, 4, 6, '2025-11-07 13:10:45', '2025-11-07 13:10:45');

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
(2, 'I like to work on cars', 'R', '2025-11-07 13:02:13', '2025-11-07 13:02:13');

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
('R', 'Realistic', 'Sample Realistic', '2025-10-11 10:59:41', '2025-11-07 13:01:03');

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
('3rFPDnkYycgokl4uTbQQtwEOe4obSrXubiRcIY81', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzFSQ1QzejRsTUdyUmV2TnFMSXVxOEtsRmtVajBtVkY3Rk8zYUVBaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762521091),
('9bOnLjQcv4wBTdgmQyhUhd90Kh9L22SSPlx51yjf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczd3ZEc0d0JyQkk2aHZaeTJhU3Y0VmFDaFBwUzZhOHZnWWJCR1lPbSI7czo1OiJlcnJvciI7czozNDoiWW91IG11c3QgbG9naW4gdG8gYWNjZXNzIHRoaXMgcGFnZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjE6e2k6MDtzOjU6ImVycm9yIjt9fX0=', 1762503464),
('dnDo0f1lLHIBpNTh6Q5lrb9coqZVu0XQxvpicxKm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiakFXNG1aNWpvYmptMWNCMmJFNmNKeHFJM2dYVUpud2U4YzYwcGpMcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9yaWFzZWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1762521417),
('kz5d5ifrMpUKZcWBnY2j0U5N1VRvLa4HaxyznTI1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 OPR/122.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWWFHdTVJbVkwbUdGa2ExaUpVT1FjZGpIaHBGa3F6S2RIYjdSNnlMSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9yaWFzZWMiO31zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1762504541),
('twnyRDj1lrxnUU1DytoH7n964e51e91LodzJgAQ2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 OPR/122.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3RJcWRIZjZaQkZ5bnlvZXQ0MWpmMTYxZWFubE44YkFGeWdacERFayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762504526),
('xKcGGVzE2vE3lGmMGEjmmhWSwsHXVJTrtljjWIFP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3hKczlGTTA2cmdpWXhMSDNYMHJIZmkwOTFZODREYXh4S0ZtY1lueSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762503462);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `default_id` varchar(255) NOT NULL,
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `default_id`, `fullname`, `gender`, `age`, `birthday`, `strand`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(28, '2420580', 'Kyla Quebec', 'female', '21', '2001-12-26', 'HUMSS', 'kyla@example.com', '$2y$12$KtATQKdQmLhb2j/hpQCPy.mr9FvZdGTuPIAjmaXZ9I2O.B4K0ptTG', NULL, '2025-11-07 12:57:50', '2025-11-07 12:57:49'),
(29, '24250581', 'Kyla Quebec II', 'male', '22', '2001-12-26', 'ABM', 'kyla_2@example.com', '$2y$12$cA4TKA8kF4OTFN.1IYzA3OACglW/q2S2VXiLM6slYWmvwrNCMM6J2', NULL, '2025-11-07 12:57:50', '2025-11-07 12:57:50');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `course_career_pathways`
--
ALTER TABLE `course_career_pathways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `preferred_courses`
--
ALTER TABLE `preferred_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `riasec_scores`
--
ALTER TABLE `riasec_scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
