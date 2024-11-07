-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 04:57 AM
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
-- Database: `products`
--

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_06_033126_create_products_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_id`, `name`, `description`, `price`, `stock`, `image`, `created_at`, `updated_at`) VALUES
(7, '01', 'Organic Banana', 'Fresh organic bananas, full of nutrients.', 1.54, 23, 'images/qyawfMhO2vrXMUMB5jsTqcFgVt0qlSK5yhBkuqpy.jpg', '2024-11-06 05:57:21', '2024-11-06 21:48:48'),
(8, '02', 'Almond Milk', 'Unsweetened almond milk, dairy-free.', 3.99, 50, 'images/xnS1SfKtFCSWRlDCKW7ZioHSqSrWS4tIvYqoywOZ.jpg', '2024-11-06 05:57:21', '2024-11-06 21:48:55'),
(9, '03', 'Whole Wheat Bread', 'Whole wheat bread, high in fiber.', 2.50, 60, 'images/dexR4PjFlJNqQWV0c3IT9hDM5QLLeljHAcQxdj7x.jpg', '2024-11-06 05:57:21', '2024-11-06 21:49:02'),
(10, '04', 'Organic Eggs', 'Farm fresh organic eggs.', 5.00, 30, 'images/KoGCWtRsjuBVLelC6yLYXCCZajmNCt7ig1qSzcU2.jpg', '2024-11-06 05:57:21', '2024-11-06 21:49:09'),
(11, '05', 'Chicken Breast', 'Lean and protein-rich chicken breast.', 6.50, 40, 'images/T6OfiGF9D6OavEL7aK3eUsYFqC7C7ZO26korX4eL.jpg', '2024-11-06 05:57:21', '2024-11-06 21:54:49'),
(12, '06', 'Ground Coffee', 'Arabica ground coffee for a rich flavor.', 9.99, 80, 'images/SYRzg5zpmxua4eTsR7PkxHfi0NhureSYfuC9B34G.jpg', '2024-11-06 05:57:21', '2024-11-06 21:55:04'),
(13, '07', 'Olive Oil', 'Extra virgin olive oil, perfect for salads.', 12.99, 25, 'images/HPE7yplUwsWmtq4ULdUrue8qwa4WP7iKBZqdoDAA.jpg', '2024-11-06 05:57:21', '2024-11-06 21:55:12'),
(14, '08', 'Pasta', 'Italian pasta made from durum wheat.', 4.99, 100, NULL, '2024-11-06 05:57:21', '2024-11-06 05:57:21'),
(15, '09', 'Tomato Sauce', 'Rich and flavorful tomato sauce.', 3.00, 90, NULL, '2024-11-06 05:57:21', '2024-11-06 05:57:21'),
(16, '10', 'Cheddar Cheese', 'Aged cheddar cheese, sharp flavor.', 7.50, 20, NULL, '2024-11-06 05:57:21', '2024-11-06 05:57:21'),
(17, '11', 'Greek Yogurt', 'Thick and creamy Greek yogurt.', 4.00, 45, NULL, '2024-11-06 05:57:21', '2024-11-06 05:57:21'),
(18, '12', 'Cereal', 'Whole grain cereal, great for breakfast.', 3.99, 120, NULL, '2024-11-06 05:57:21', '2024-11-06 05:57:21'),
(19, '13', 'Granola Bars', 'Oats and honey granola bars.', 1.99, 75, NULL, '2024-11-06 05:57:21', '2024-11-06 05:57:21'),
(20, '14', 'Dark Chocolate', 'Rich and indulgent dark chocolate.', 2.50, 150, NULL, '2024-11-06 05:57:21', '2024-11-06 05:57:21'),
(21, '15', 'Apple Juice', '100% pure apple juice, no sugar added.', 3.25, 60, NULL, '2024-11-06 05:57:21', '2024-11-06 05:57:21'),
(22, '16', 'Quinoa', 'Gluten-free quinoa, great protein source.', 5.99, 40, NULL, '2024-11-06 05:57:21', '2024-11-06 05:57:21'),
(23, '17', 'Brown Rice', 'Organic brown rice, rich in fiber.', 4.50, 110, NULL, '2024-11-06 05:57:21', '2024-11-06 05:57:21'),
(24, '18', 'Honey', 'Pure organic honey.', 8.00, 30, NULL, '2024-11-06 05:57:21', '2024-11-06 05:57:21'),
(25, '19', 'Chia Seeds', 'High in fiber and omega-3 fatty acids.', 7.00, 55, NULL, '2024-11-06 05:57:21', '2024-11-06 05:57:21'),
(26, '20', 'Spinach', 'Fresh organic spinach.', 2.00, 100, NULL, '2024-11-06 05:57:21', '2024-11-06 05:57:21'),
(31, '31', 'Burger', 'Burger King', 49.00, 21, 'images/uifUj7KkHbQI5AewRcOvaGFxxJ7FZNfAobEyOnlZ.jpg', '2024-11-06 21:56:15', '2024-11-06 21:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_id_unique` (`product_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
