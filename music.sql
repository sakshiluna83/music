-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 18, 2022 at 11:45 AM
-- Server version: 5.7.36
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
CREATE TABLE IF NOT EXISTS `artist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_name` varchar(255) DEFAULT NULL,
  `cre` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id`, `artist_name`, `cre`, `created_at`, `updated_at`) VALUES
(2, 'Honey Sing', 0, '0000-00-00 00:00:00', '2022-12-18 05:41:12'),
(4, 'Badshah', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Classical music', 0, '0000-00-00 00:00:00', '2022-12-18 05:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genres` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `venue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `artist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `genres`, `description`, `amount`, `contact_no`, `date`, `venue`, `image`, `artist`, `created_at`, `updated_at`, `image_name`) VALUES
(1, 'Wrap Music', 'wrap', 'MUSIC FESTIVAL Double Dhamaka', '2000', '12344', '2022-12-13', '84/36, N Main Road, Koregaon Park Annexe, Mundhwa, Pune, Maharashtra', '1', 'Honey Singh', '2022-12-17 09:07:21', '2022-12-18 06:06:41', 'badshah.webp'),
(2, 'sartaj ki mehfil', 'classical', 'JAJ.K', '3000', '3456', '2023-01-12', 'KD Jadhav Indoor Hall, DelhiJ6MX+7C3, IG Indoor Stadium, ITO, Vikram Nagar, New Delhi, Delhi 110002Book Now', '1', 'Satinder Sartaj', '2022-12-17 09:07:21', '2022-12-18 01:44:09', 'Satinder_Sartaaj.jpg'),
(3, 'music of Arjit singh', 'retro', NULL, '2500', '95678908', '2022-12-31', 'JLN Stadium Gate No. 2, DelhiJawaharlal Nehru Stadium, Pragati Vihar, New Delhi, Delhi 110003Book Now', '1', 'Arjit singh', '2022-12-17 09:17:11', '2022-12-18 06:11:39', 'arjit.jfif'),
(4, 'Badsha pagal tour', 'hiphop', NULL, '2000', '356798876', '2022-12-03', 'Bhartiya City: BengaluruBhartiya City, Thanisandra Main Road, Chokkanahalli, Bengaluru, Karnataka 560064, India', '1', 'badshaa', '2022-12-17 09:18:11', '2022-12-18 06:12:19', 'badshah.webp'),
(5, 'voice of india', 'bollywood', 'new dElhi', '1200', '1234', '2022-12-31', 'hailington tower , u.s.a', '1', 'neha kakkar', '2022-12-16 21:13:54', '2022-12-18 06:12:05', 'neha-kakkar.jpg'),
(6, 'sufi night', 'sufi', 'satinder sartaj special', '122', '12', '2022-02-02', 'toronto, canada', '1', 'satinder sartaj', '2022-12-18 01:18:47', '2022-12-18 06:13:27', 'Satinder_Sartaaj.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genres` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `genres`, `updated_at`, `created_at`) VALUES
(2, 'Classical', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Bollywood', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'retro music', '2022-12-18 06:14:50', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Erich Franecki', 'svonrueden@example.com', '2022-12-17 04:32:41', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HKsiqcA6KG', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(2, 'Mrs. Maya Kuhlman IV', 'kbergstrom@example.org', '2022-12-17 04:32:41', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FNAVZKVxzT', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(3, 'Julius Buckridge', 'pchamplin@example.com', '2022-12-17 04:32:41', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yG6f4T9gut', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(4, 'Tracey Hagenes', 'rudolph32@example.com', '2022-12-17 04:32:41', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nAxyFTcfrO', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(5, 'Kiera Miller', 'paxton74@example.net', '2022-12-17 04:32:41', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vSjD6KPPXy', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(6, 'Jackie Davis', 'margaretta67@example.net', '2022-12-17 04:32:41', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yxI0Y4U2RO', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(7, 'Alda Carroll', 'memard@example.org', '2022-12-17 04:32:41', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zkR9975COt', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(8, 'Dr. Emiliano Keeling DVM', 'reece.wisozk@example.org', '2022-12-17 04:32:41', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PVNjuFemFh', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(9, 'Syble Mayer', 'alan32@example.org', '2022-12-17 04:32:41', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tNIMniDvOq', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(10, 'Annetta Hoppe', 'waelchi.jermaine@example.net', '2022-12-17 04:32:41', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6btD7smVIH', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(11, 'Joyce Morissette', 'jaquan.schinner@example.org', '2022-12-17 04:32:41', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'derKV2cRGb', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(12, 'Dianna Osinski', 'verona.schmeler@example.org', '2022-12-17 04:32:41', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '71hHMehlUz', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(13, 'Karianne Kirlin', 'perry.smitham@example.org', '2022-12-17 04:32:41', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5gxpPQPiRw', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(14, 'Houston Bernier', 'wilfredo.wintheiser@example.com', '2022-12-17 04:32:41', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd15EvtkP5t', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(15, 'Emmett Walker', 'morar.zachary@example.com', '2022-12-17 04:32:41', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '19mtNB7iuC', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(16, 'Melba Harvey V', 'marcelina20@example.org', '2022-12-17 04:32:41', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WUnUiUZEEf', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(17, 'Delfina Ferry', 'osinski.furman@example.org', '2022-12-17 04:32:41', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0oO0LnIloU', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(18, 'Fleta Bechtelar', 'hgreen@example.net', '2022-12-17 04:32:41', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wjPhstQcK9', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(19, 'Dr. Jordane Kerluke Jr.', 'rvandervort@example.org', '2022-12-17 04:32:41', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L8ayshNG0g', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(20, 'Alejandra Brown', 'jaden.ohara@example.com', '2022-12-17 04:32:42', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oycfvg6udZ', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(21, 'Rusty Bartoletti', 'lessie96@example.com', '2022-12-17 04:32:42', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fyJ2J2ETNY', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(22, 'Kristian Kub', 'kaitlyn84@example.net', '2022-12-17 04:32:42', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6D5XTZuYd9', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(23, 'Elmira Hayes', 'eric.von@example.org', '2022-12-17 04:32:42', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rieLDMtXoX', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(24, 'Kristopher Russel', 'santos.kirlin@example.net', '2022-12-17 04:32:42', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '11Hi2fN5HS', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(25, 'Miss Maya Dickens', 'georgiana.considine@example.org', '2022-12-17 04:32:42', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HIVpn8W6IB', '2022-12-17 04:32:42', '2022-12-17 04:32:42'),
(26, 'sakshi', 'sakshi@yopmail.com', NULL, 1, '$2y$10$RDRajtLrpgOMkTikf3tW/O7BEXfwcecBFqXIg/.aBSNdPdVfgp5oG', NULL, '2022-12-17 05:11:08', '2022-12-17 05:11:08'),
(27, 'alpha', 'alpha@yopmail.com', NULL, 0, '$2y$10$F2wKgxgF0rWyLSUuGCNfgOHcMgdyOfJMAqKIJdEKZXfYpV/m7dM2y', NULL, '2022-12-18 03:07:17', '2022-12-18 03:07:17');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
