-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2024 at 02:32 AM
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
-- Database: `perpus_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `authenticate_logs`
--

CREATE TABLE `authenticate_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `last_login_date` date DEFAULT NULL,
  `last_login_time` time DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authenticate_logs`
--

INSERT INTO `authenticate_logs` (`id`, `user_id`, `last_login_date`, `last_login_time`, `last_login_ip`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-01-30', '10:59:48', '127.0.0.1', '2024-01-30 03:59:48', '2024-01-30 03:59:48'),
(2, 3, '2024-01-30', '11:19:02', '127.0.0.1', '2024-01-30 04:19:02', '2024-01-30 04:19:02'),
(3, 1, '2024-01-30', '11:25:39', '127.0.0.1', '2024-01-30 04:25:39', '2024-01-30 04:25:39'),
(4, 1, '2024-01-30', '11:50:51', '127.0.0.1', '2024-01-30 04:50:51', '2024-01-30 04:50:51'),
(5, 1, '2024-01-30', '12:01:55', '127.0.0.1', '2024-01-30 05:01:55', '2024-01-30 05:01:55'),
(6, 3, '2024-01-30', '12:10:56', '127.0.0.1', '2024-01-30 05:10:56', '2024-01-30 05:10:56'),
(7, 1, '2024-01-30', '12:11:42', '127.0.0.1', '2024-01-30 05:11:42', '2024-01-30 05:11:42'),
(8, 3, '2024-01-30', '12:12:42', '127.0.0.1', '2024-01-30 05:12:42', '2024-01-30 05:12:42'),
(10, 1, '2024-01-30', '15:06:37', '127.0.0.1', '2024-01-30 08:06:37', '2024-01-30 08:06:37'),
(11, 1, '2024-01-30', '16:11:16', '127.0.0.1', '2024-01-30 09:11:16', '2024-01-30 09:11:16'),
(12, 1, '2024-01-30', '16:32:32', '127.0.0.1', '2024-01-30 09:32:32', '2024-01-30 09:32:32'),
(13, 1, '2024-01-30', '16:34:42', '127.0.0.1', '2024-01-30 09:34:42', '2024-01-30 09:34:42'),
(14, 1, '2024-01-31', '09:19:43', '127.0.0.1', '2024-01-31 02:19:43', '2024-01-31 02:19:43'),
(16, 1, '2024-01-31', '17:12:00', '127.0.0.1', '2024-01-31 10:12:00', '2024-01-31 10:12:00'),
(17, 1, '2024-01-31', '20:36:59', '127.0.0.1', '2024-01-31 13:36:59', '2024-01-31 13:36:59'),
(18, 1, '2024-02-01', '07:41:29', '127.0.0.1', '2024-02-01 00:41:29', '2024-02-01 00:41:29'),
(19, 1, '2024-02-01', '11:52:08', '127.0.0.1', '2024-02-01 04:52:08', '2024-02-01 04:52:08'),
(20, 1, '2024-02-01', '11:58:44', '127.0.0.1', '2024-02-01 04:58:44', '2024-02-01 04:58:44'),
(21, 1, '2024-02-01', '12:14:29', '127.0.0.1', '2024-02-01 05:14:29', '2024-02-01 05:14:29'),
(22, 1, '2024-02-01', '14:18:46', '127.0.0.1', '2024-02-01 07:18:46', '2024-02-01 07:18:46'),
(23, 3, '2024-02-01', '14:20:47', '127.0.0.1', '2024-02-01 07:20:47', '2024-02-01 07:20:47'),
(24, 3, '2024-02-01', '14:24:07', '127.0.0.1', '2024-02-01 07:24:07', '2024-02-01 07:24:07'),
(25, 1, '2024-02-01', '14:38:48', '127.0.0.1', '2024-02-01 07:38:48', '2024-02-01 07:38:48'),
(26, 1, '2024-02-01', '15:52:00', '127.0.0.1', '2024-02-01 08:52:00', '2024-02-01 08:52:00'),
(27, 3, '2024-02-01', '16:40:24', '127.0.0.1', '2024-02-01 09:40:24', '2024-02-01 09:40:24'),
(28, 3, '2024-02-01', '16:48:32', '127.0.0.1', '2024-02-01 09:48:32', '2024-02-01 09:48:32'),
(29, 1, '2024-02-02', '15:54:47', '127.0.0.1', '2024-02-02 08:54:47', '2024-02-02 08:54:47'),
(30, 3, '2024-02-02', '15:59:00', '127.0.0.1', '2024-02-02 08:59:00', '2024-02-02 08:59:00'),
(31, 1, '2024-02-02', '15:59:15', '127.0.0.1', '2024-02-02 08:59:15', '2024-02-02 08:59:15'),
(32, 1, '2024-02-02', '16:32:05', '127.0.0.1', '2024-02-02 09:32:05', '2024-02-02 09:32:05'),
(33, 1, '2024-02-02', '16:39:30', '127.0.0.1', '2024-02-02 09:39:30', '2024-02-02 09:39:30'),
(34, 1, '2024-02-02', '16:43:03', '127.0.0.1', '2024-02-02 09:43:03', '2024-02-02 09:43:03'),
(35, 3, '2024-02-02', '16:57:29', '127.0.0.1', '2024-02-02 09:57:29', '2024-02-02 09:57:29'),
(36, 1, '2024-02-02', '16:58:22', '127.0.0.1', '2024-02-02 09:58:22', '2024-02-02 09:58:22'),
(37, 3, '2024-02-02', '16:58:54', '127.0.0.1', '2024-02-02 09:58:54', '2024-02-02 09:58:54'),
(38, 1, '2024-02-02', '17:01:02', '127.0.0.1', '2024-02-02 10:01:02', '2024-02-02 10:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_type_id` bigint(20) UNSIGNED NOT NULL,
  `book_number` varchar(255) NOT NULL,
  `image` longtext NOT NULL,
  `title` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `date_of_added` date NOT NULL,
  `languages` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_type_id`, `book_number`, `image`, `title`, `publisher`, `date_of_added`, `languages`, `created_at`, `updated_at`) VALUES
(39, 2, 'BUKU-85170242', 'assets/images/books/1010327376_30012024_wbofrajxmgk573y6wmt7dc.jpg', 'Dona Dona', 'Gramedia', '2024-01-30', 'Bahasa Indonesia', '2024-01-30 04:54:14', '2024-01-30 04:54:14'),
(40, 1, 'BUKU-69193928', 'assets/images/books/8992878195_30012024_1.jpg', 'Keajaiban Toko Kelontong', 'Gramedia', '2024-01-30', 'Bahasa Indonesia', '2024-01-30 05:07:26', '2024-01-30 05:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `book_types`
--

CREATE TABLE `book_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_types`
--

INSERT INTO `book_types` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Buku Cetak', 'Buku Cetak', '2024-01-30 03:58:28', '2024-01-30 05:08:21'),
(2, 'Dongeng', 'Dongeng', '2024-01-30 03:58:28', '2024-01-31 15:03:58'),
(3, 'Majalah', 'majalah', '2024-01-30 03:58:28', '2024-01-30 03:58:28'),
(4, 'Ensiklopedia', 'ensiklopedia', '2024-01-30 03:58:28', '2024-01-30 03:58:28'),
(5, 'Biografi', 'biografi', '2024-01-30 03:58:28', '2024-01-30 03:58:28'),
(6, 'Buku Cetak', 'buku cetak', '2024-01-30 03:58:57', '2024-01-30 03:58:57'),
(7, 'Dongeng', 'dongeng', '2024-01-30 03:58:57', '2024-01-30 03:58:57'),
(8, 'Majalah', 'majalah', '2024-01-30 03:58:57', '2024-01-30 03:58:57'),
(9, 'Ensiklopedia', 'ensiklopedia', '2024-01-30 03:58:57', '2024-01-30 03:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `book_users`
--

CREATE TABLE `book_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `notes` longtext NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 = disetujui, 2 = belum disetujui, 3 = tidak disetujui',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_return` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_users`
--

INSERT INTO `book_users` (`id`, `user_id`, `book_id`, `date_start`, `date_end`, `notes`, `status`, `created_at`, `updated_at`, `date_return`) VALUES
(22, 3, 40, '2024-01-30', '2024-02-08', 'Coba Baca', 1, '2024-01-30 05:12:17', '2024-02-01 03:55:54', '2024-02-22'),
(26, 3, 39, '2024-01-30', '2024-02-08', 'iyuiy', 3, '2024-01-30 08:15:21', '2024-02-02 09:53:46', NULL),
(32, 16, 39, '2024-02-02', '2024-02-23', 'balikin woy', 1, '2024-02-02 09:52:08', '2024-02-02 09:55:59', '2024-02-08'),
(33, 3, 40, '2024-02-02', '2024-02-22', 'sljajd', 1, '2024-02-02 09:58:03', '2024-02-02 09:58:39', NULL);

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2020_03_22_201521_create_roles_table', 1),
(3, '2020_03_22_202011_create_book_types_table', 1),
(4, '2020_03_22_202131_create_users_table', 1),
(5, '2020_03_22_202135_create_books_table', 1),
(6, '2020_03_31_204350_create_book_users_table', 1),
(7, '2020_08_20_100047_create_authenticate_logs_table', 1);

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin Perpustakaan', 'Admin Perpus', '2024-01-30 03:58:28', '2024-01-30 03:58:28'),
(2, 'Operator Perpustakaan', 'Operator Perpus', '2024-01-30 03:58:28', '2024-01-30 03:58:28'),
(3, 'Anggota Perpustakaan', 'Anggota Perpus', '2024-01-30 03:58:28', '2024-01-30 03:58:28'),
(4, 'Admin Perpustakaan', 'Admin Perpus', '2024-01-30 03:58:57', '2024-01-30 03:58:57'),
(5, 'Operator Perpustakaan', 'Operator Perpus', '2024-01-30 03:58:57', '2024-01-30 03:58:57'),
(6, 'Anggota Perpustakaan', 'Anggota Perpus', '2024-01-30 03:58:57', '2024-01-30 03:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` longtext NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `user_number`, `name`, `image`, `email`, `email_verified_at`, `password`, `address`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, '0084174382', 'Admin Perpustakaan', 'assets/images/profiles/default.png', 'admin@mail.com', NULL, '$2y$10$lWmXek3E.ToCgDaVowYAjOIv4g2R/ZgDVvgwFo7OCNSxNhwFS90Y6', 'Jl. Manggis', 1, NULL, '2024-01-30 03:58:28', '2024-02-02 10:01:02'),
(3, 3, '0017137538', 'Anggota gamelab', 'assets/images/profiles/default.png', 'anggota@mail.com', NULL, '$2y$10$Dj6crpIZ1rwLC0bhn80C3OVVqZ.1k.hCuC2fKwjhLNCDjBQMpMEvm', 'Jl. Manggis', 0, NULL, '2024-01-30 03:58:29', '2024-02-02 10:00:51'),
(16, 3, '00489602022024', 'Doohan Arvie', 'assets/images/profiles/6910009555_02022024_20231219_000229.png', 'doohan@mail.com', NULL, '$2y$10$Z3HIseaJy1uFKM5X5060C.9TkahbaMHO5HfyRwrS/IOwgPokcwLE2', 'Salatiga', 0, NULL, '2024-02-02 09:46:40', '2024-02-02 09:46:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authenticate_logs`
--
ALTER TABLE `authenticate_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authenticate_logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_book_number_unique` (`book_number`),
  ADD KEY `books_book_type_id_foreign` (`book_type_id`);

--
-- Indexes for table `book_types`
--
ALTER TABLE `book_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_users`
--
ALTER TABLE `book_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_users_user_id_foreign` (`user_id`),
  ADD KEY `book_users_book_id_foreign` (`book_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_number_unique` (`user_number`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authenticate_logs`
--
ALTER TABLE `authenticate_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `book_types`
--
ALTER TABLE `book_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `book_users`
--
ALTER TABLE `book_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authenticate_logs`
--
ALTER TABLE `authenticate_logs`
  ADD CONSTRAINT `authenticate_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_book_type_id_foreign` FOREIGN KEY (`book_type_id`) REFERENCES `book_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_users`
--
ALTER TABLE `book_users`
  ADD CONSTRAINT `book_users_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
