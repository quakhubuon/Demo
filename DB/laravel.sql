-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Generation Time: Apr 10, 2024 at 06:22 AM
-- Server version: 8.0.32
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8PM2HUdj8Wy5ljD2LKrMvJYT6ptDpMYl8LAuTkQZ', NULL, '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWx5azNFbG1yaEp1UVpJYU1NNWZVeXJ0cWhLTlNWSWx0dW40MTVzTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9sb2NhbGhvc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712727356),
('MzlvZWzc0Uacqj8bHly2vdVUe5VSpEvelbx2cbjv', NULL, '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV09VMUI5R05zSkJSeTlNUmVtWHJwOUdRaXJNWkVLUGhxNmZEUU5jdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9sb2NhbGhvc3QvYWRkX2Zvcm0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712724465);

-- --------------------------------------------------------

--
-- Table structure for table `t_book`
--

CREATE TABLE `t_book` (
  `BOOK_ID` int NOT NULL,
  `BOOK_TITLE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `BOOK_DESC` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `BOOK_CATID` int DEFAULT NULL,
  `BOOK_AUTHOR` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `BOOK_PUBID` int DEFAULT NULL,
  `BOOK_YEAR` int DEFAULT NULL,
  `BOOK_PIC` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `BOOK_PRICE` int DEFAULT NULL,
  `BOOK_RATE` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_book`
--

INSERT INTO `t_book` (`BOOK_ID`, `BOOK_TITLE`, `BOOK_DESC`, `BOOK_CATID`, `BOOK_AUTHOR`, `BOOK_PUBID`, `BOOK_YEAR`, `BOOK_PIC`, `BOOK_PRICE`, `BOOK_RATE`) VALUES
(1, 'Chìa khóa Văn phạm tiếng Anh', 'Cuốn sách Chìa Khóa Văn Phạm Tiếng Anh đã được biên soạn bao gồm những phần ngữ pháp rất cơ bản ở chương trình phổ thông. Cho nên, nó rất hữu ích với tất cả các bạn học sinh nào muốn học tốt tiếng Anh. Cuốn sách trình bày rất rõ ràng và từ vựng rất dễ hiểu. Sau mỗi bài đều có nhiều bài tập để rèn luyện và sau mỗi phần đều có bài tập tổng hợp từ dễ đến khó', 4, 'Nguyễn Văn Hiệp', 4, 2002, 'ckvptienganh.jpg', 6500, NULL),
(2, 'Adobe Photoshop 7', 'Giới thiệu những đặc tính mới trong Photoshop 7\r\nĐề cập tới những khái niệm cơ bản về màu và tính năng quản lý màu của Photoshop\r\nTìm hiểu về lớp, mặt nạ và bộ lọc\r\nHọc cách tạo, biến ảnh, dịch chuyển lớp chữ, tạo hiệu ứng chữ,v.v\r\nLàm quen với bộ công cụ tô vẽ của Photoshop, tô điểm ảnh quét hoặc vẽ nên một \"tuyệt tác\" từ trang giấy trắng.', 1, 'VN-GUIDE', 3, 2003, 'photoshop7.jpg', 69000, 1),
(4, 'Tiếng Anh trong phỏng vấn', 'Cuốn sách sẽ hướng dẫn bạn những cách thức khi đi phỏng vấn tìm việc làm, tự giới thiệu như thế nào về bản thân, về đời sống, gia đình, tính cách, quan điểm,... Sách sẽ là tài liệu tham khảo tốt cho những ai đang cần tìm việc làm tại các công ty nước ngoài.\r\nXint rân trọng giới thiệu.', 4, 'Nguyễn Thành Yến', 5, 2003, 'tienganhpvan.jpg', 36000, 0),
(5, 'Hướng dẫn sử dụng Swish', 'Nếu có lúc nào đó lang thang trên mạng, chúng ta thấy nhiều trang Web có các hàng tiêu đề xuất hiện với nhiều hiệu ứng trông rất bắt mắt và nếu các bạn đã sử dụng Flash trong thiết kế sẽ nghĩ không biết để tạo hiệu ứng sống động như thế trên văn bản thì phải dùng cách nào? Flash có thể làm được nhưng mất rất nhiều thời gian và công sức. Thực ra các nhà thiết kế đã sử dụng các trình ứng dụng của các hãng thứ ba để việc thiết kế dễ dàng hơn. Có một vài chương trình nổi tiếng, trong số đó phải kể đến Swish.', 1, 'Phạm Quang Minh', 3, 2005, '14.jpg', 45000, 0),
(8, 'Thiết kế lập trình Web với DreamWeaver', 'Sách hay !', 2, 'Nguyễn Thị Hồng', 2, 2006, 'ltwebasp.jpg', 22000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `t_category`
--

CREATE TABLE `t_category` (
  `CAT_ID` int NOT NULL,
  `CAT_NAME` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CAT_DESC` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_category`
--

INSERT INTO `t_category` (`CAT_ID`, `CAT_NAME`, `CAT_DESC`) VALUES
(1, 'Tin học', NULL),
(2, 'Khoa học Kỹ thuật', NULL),
(3, 'Khoa học Xã hội', NULL),
(4, 'Ngoại ngữ', NULL),
(5, 'Kinh tế', NULL),
(6, 'Mỹ thuật - Điện ảnh', NULL),
(7, 'Thơ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_pub`
--

CREATE TABLE `t_pub` (
  `PUB_ID` int NOT NULL,
  `PUB_NAME` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PUB_ADDR` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_pub`
--

INSERT INTO `t_pub` (`PUB_ID`, `PUB_NAME`, `PUB_ADDR`) VALUES
(1, 'Giáo dục', NULL),
(2, 'Khoa học kỹ thuật', NULL),
(3, 'Thống kê', NULL),
(4, 'Trẻ', NULL),
(5, 'Tp. Hồ Chí Minh', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `USER_ID` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `USER_PASSWORD` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `USER_NAME` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `USER_EMAIL` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `USER_PHONE` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `USER_ADDR` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`USER_ID`, `USER_PASSWORD`, `USER_NAME`, `USER_EMAIL`, `USER_PHONE`, `USER_ADDR`) VALUES
('admin', 'admin', 'Quản trị hệ thống', NULL, NULL, NULL),
('lvminh', 'abc', NULL, NULL, NULL, NULL),
('ttbhanh', '123', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `t_book`
--
ALTER TABLE `t_book`
  ADD PRIMARY KEY (`BOOK_ID`),
  ADD KEY `BOOK_CATID` (`BOOK_CATID`),
  ADD KEY `BOOK_ID` (`BOOK_ID`),
  ADD KEY `BOOK_PUBID` (`BOOK_PUBID`),
  ADD KEY `T_CATEGORYT_BOOK` (`BOOK_CATID`),
  ADD KEY `T_PUBT_BOOK` (`BOOK_PUBID`);

--
-- Indexes for table `t_category`
--
ALTER TABLE `t_category`
  ADD PRIMARY KEY (`CAT_ID`),
  ADD KEY `CAT_ID` (`CAT_ID`);

--
-- Indexes for table `t_pub`
--
ALTER TABLE `t_pub`
  ADD PRIMARY KEY (`PUB_ID`),
  ADD KEY `PUB_ID` (`PUB_ID`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`USER_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_book`
--
ALTER TABLE `t_book`
  MODIFY `BOOK_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `t_category`
--
ALTER TABLE `t_category`
  MODIFY `CAT_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t_pub`
--
ALTER TABLE `t_pub`
  MODIFY `PUB_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
