-- Adminer 4.8.1 MySQL 5.7.11 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE `cart_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1,	'Electronics',	'2025-01-13 04:23:23',	'2025-01-13 04:23:23'),
(2,	'Clothing',	'2025-01-13 04:23:23',	'2025-01-13 04:23:23'),
(3,	'Home Appliances',	'2025-01-13 04:23:23',	'2025-01-13 04:23:23'),
(4,	'Books',	'2025-01-13 04:23:23',	'2025-01-13 04:23:23'),
(5,	'Sports',	'2025-01-13 04:23:23',	'2025-01-13 04:23:23'),
(6,	'Electronics',	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(7,	'Clothing',	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(8,	'Home Appliances',	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(9,	'Books',	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(10,	'Sports',	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(11,	'Electronics',	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(12,	'Clothing',	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(13,	'Home Appliances',	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(14,	'Books',	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(15,	'Sports',	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(16,	'Electronics',	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(17,	'Clothing',	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(18,	'Home Appliances',	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(19,	'Books',	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(20,	'Sports',	'2025-01-13 04:26:24',	'2025-01-13 04:26:24');

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_reset_tokens_table',	1),
(3,	'2019_08_19_000000_create_failed_jobs_table',	1),
(4,	'2019_12_14_000001_create_personal_access_tokens_table',	1),
(5,	'2025_01_13_083301_create_products_table',	1),
(6,	'2025_01_13_083307_create_orders_table',	1),
(7,	'2025_01_13_083751_create_posts_table',	1),
(8,	'2025_01_13_083755_create_categories_table',	1),
(9,	'2025_01_13_083759_create_staff_table',	1),
(10,	'2025_01_13_083803_create_cart_items_table',	1),
(11,	'2025_01_13_083806_create_order_items_table',	1),
(12,	'2014_10_12_100000_create_password_resets_table',	2);

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1,	1,	'2025-01-13 04:26:16',	'2025-01-13 04:26:16'),
(2,	1,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(3,	1,	'2025-01-13 12:31:03',	'2025-01-13 12:31:03'),
(4,	2,	'2025-01-13 12:30:59',	'2025-01-13 12:30:59'),
(5,	2,	'2025-01-13 12:31:10',	'2025-01-13 12:31:10'),
(6,	2,	'2025-01-13 12:31:16',	'2025-01-13 12:31:16'),
(7,	3,	'2025-01-13 12:31:38',	'2025-01-13 12:31:38'),
(8,	3,	'2025-01-13 12:31:43',	'2025-01-13 12:31:43'),
(9,	3,	'2025-01-13 12:31:47',	'2025-01-13 12:31:47');

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1,	1,	1,	'2025-01-13 12:33:50',	'2025-01-13 12:33:50'),
(2,	2,	2,	'2025-01-13 12:33:54',	'2025-01-13 12:33:54'),
(3,	3,	3,	'2025-01-13 12:34:09',	'2025-01-13 12:34:09'),
(4,	4,	4,	'2025-01-13 12:34:19',	'2025-01-13 12:34:19'),
(5,	5,	5,	'2025-01-13 12:34:23',	'2025-01-13 12:34:23'),
(6,	6,	6,	'2025-01-13 12:34:27',	'2025-01-13 12:34:27'),
(7,	7,	7,	'2025-01-13 12:34:30',	'2025-01-13 12:34:30'),
(8,	8,	8,	'2025-01-13 12:34:33',	'2025-01-13 12:34:33'),
(9,	9,	9,	'2025-01-13 12:34:37',	'2025-01-13 12:34:37');

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`id`, `name`, `category_id`, `created_at`, `updated_at`) VALUES
(1,	'Electronics Product 1',	1,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(2,	'Electronics Product 2',	1,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(3,	'Electronics Product 3',	1,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(4,	'Electronics Product 4',	1,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(5,	'Electronics Product 5',	1,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(6,	'Clothing Product 1',	2,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(7,	'Clothing Product 2',	2,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(8,	'Clothing Product 3',	2,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(9,	'Clothing Product 4',	2,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(10,	'Clothing Product 5',	2,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(11,	'Home Appliances Product 1',	3,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(12,	'Home Appliances Product 2',	3,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(13,	'Home Appliances Product 3',	3,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(14,	'Home Appliances Product 4',	3,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(15,	'Home Appliances Product 5',	3,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(16,	'Books Product 1',	4,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(17,	'Books Product 2',	4,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(18,	'Books Product 3',	4,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(19,	'Books Product 4',	4,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(20,	'Books Product 5',	4,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(21,	'Sports Product 1',	5,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(22,	'Sports Product 2',	5,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(23,	'Sports Product 3',	5,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(24,	'Sports Product 4',	5,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(25,	'Sports Product 5',	5,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(26,	'Electronics Product 1',	6,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(27,	'Electronics Product 2',	6,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(28,	'Electronics Product 3',	6,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(29,	'Electronics Product 4',	6,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(30,	'Electronics Product 5',	6,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(31,	'Clothing Product 1',	7,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(32,	'Clothing Product 2',	7,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(33,	'Clothing Product 3',	7,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(34,	'Clothing Product 4',	7,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(35,	'Clothing Product 5',	7,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(36,	'Home Appliances Product 1',	8,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(37,	'Home Appliances Product 2',	8,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(38,	'Home Appliances Product 3',	8,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(39,	'Home Appliances Product 4',	8,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(40,	'Home Appliances Product 5',	8,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(41,	'Books Product 1',	9,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(42,	'Books Product 2',	9,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(43,	'Books Product 3',	9,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(44,	'Books Product 4',	9,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(45,	'Books Product 5',	9,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(46,	'Sports Product 1',	10,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(47,	'Sports Product 2',	10,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(48,	'Sports Product 3',	10,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(49,	'Sports Product 4',	10,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(50,	'Sports Product 5',	10,	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(51,	'Electronics Product 1',	1,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(52,	'Electronics Product 2',	1,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(53,	'Electronics Product 3',	1,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(54,	'Electronics Product 4',	1,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(55,	'Electronics Product 5',	1,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(56,	'Clothing Product 1',	2,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(57,	'Clothing Product 2',	2,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(58,	'Clothing Product 3',	2,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(59,	'Clothing Product 4',	2,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(60,	'Clothing Product 5',	2,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(61,	'Home Appliances Product 1',	3,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(62,	'Home Appliances Product 2',	3,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(63,	'Home Appliances Product 3',	3,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(64,	'Home Appliances Product 4',	3,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(65,	'Home Appliances Product 5',	3,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(66,	'Books Product 1',	4,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(67,	'Books Product 2',	4,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(68,	'Books Product 3',	4,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(69,	'Books Product 4',	4,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(70,	'Books Product 5',	4,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(71,	'Sports Product 1',	5,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(72,	'Sports Product 2',	5,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(73,	'Sports Product 3',	5,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(74,	'Sports Product 4',	5,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(75,	'Sports Product 5',	5,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(76,	'Electronics Product 1',	6,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(77,	'Electronics Product 2',	6,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(78,	'Electronics Product 3',	6,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(79,	'Electronics Product 4',	6,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(80,	'Electronics Product 5',	6,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(81,	'Clothing Product 1',	7,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(82,	'Clothing Product 2',	7,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(83,	'Clothing Product 3',	7,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(84,	'Clothing Product 4',	7,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(85,	'Clothing Product 5',	7,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(86,	'Home Appliances Product 1',	8,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(87,	'Home Appliances Product 2',	8,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(88,	'Home Appliances Product 3',	8,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(89,	'Home Appliances Product 4',	8,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(90,	'Home Appliances Product 5',	8,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(91,	'Books Product 1',	9,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(92,	'Books Product 2',	9,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(93,	'Books Product 3',	9,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(94,	'Books Product 4',	9,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(95,	'Books Product 5',	9,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(96,	'Sports Product 1',	10,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(97,	'Sports Product 2',	10,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(98,	'Sports Product 3',	10,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(99,	'Sports Product 4',	10,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(100,	'Sports Product 5',	10,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(101,	'Electronics Product 1',	11,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(102,	'Electronics Product 2',	11,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(103,	'Electronics Product 3',	11,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(104,	'Electronics Product 4',	11,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(105,	'Electronics Product 5',	11,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(106,	'Clothing Product 1',	12,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(107,	'Clothing Product 2',	12,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(108,	'Clothing Product 3',	12,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(109,	'Clothing Product 4',	12,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(110,	'Clothing Product 5',	12,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(111,	'Home Appliances Product 1',	13,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(112,	'Home Appliances Product 2',	13,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(113,	'Home Appliances Product 3',	13,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(114,	'Home Appliances Product 4',	13,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(115,	'Home Appliances Product 5',	13,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(116,	'Books Product 1',	14,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(117,	'Books Product 2',	14,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(118,	'Books Product 3',	14,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(119,	'Books Product 4',	14,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(120,	'Books Product 5',	14,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(121,	'Sports Product 1',	15,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(122,	'Sports Product 2',	15,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(123,	'Sports Product 3',	15,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(124,	'Sports Product 4',	15,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(125,	'Sports Product 5',	15,	'2025-01-13 04:26:15',	'2025-01-13 04:26:15'),
(126,	'Electronics Product 1',	1,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(127,	'Electronics Product 2',	1,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(128,	'Electronics Product 3',	1,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(129,	'Electronics Product 4',	1,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(130,	'Electronics Product 5',	1,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(131,	'Clothing Product 1',	2,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(132,	'Clothing Product 2',	2,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(133,	'Clothing Product 3',	2,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(134,	'Clothing Product 4',	2,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(135,	'Clothing Product 5',	2,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(136,	'Home Appliances Product 1',	3,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(137,	'Home Appliances Product 2',	3,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(138,	'Home Appliances Product 3',	3,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(139,	'Home Appliances Product 4',	3,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(140,	'Home Appliances Product 5',	3,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(141,	'Books Product 1',	4,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(142,	'Books Product 2',	4,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(143,	'Books Product 3',	4,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(144,	'Books Product 4',	4,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(145,	'Books Product 5',	4,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(146,	'Sports Product 1',	5,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(147,	'Sports Product 2',	5,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(148,	'Sports Product 3',	5,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(149,	'Sports Product 4',	5,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(150,	'Sports Product 5',	5,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(151,	'Electronics Product 1',	6,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(152,	'Electronics Product 2',	6,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(153,	'Electronics Product 3',	6,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(154,	'Electronics Product 4',	6,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(155,	'Electronics Product 5',	6,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(156,	'Clothing Product 1',	7,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(157,	'Clothing Product 2',	7,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(158,	'Clothing Product 3',	7,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(159,	'Clothing Product 4',	7,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(160,	'Clothing Product 5',	7,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(161,	'Home Appliances Product 1',	8,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(162,	'Home Appliances Product 2',	8,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(163,	'Home Appliances Product 3',	8,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(164,	'Home Appliances Product 4',	8,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(165,	'Home Appliances Product 5',	8,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(166,	'Books Product 1',	9,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(167,	'Books Product 2',	9,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(168,	'Books Product 3',	9,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(169,	'Books Product 4',	9,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(170,	'Books Product 5',	9,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(171,	'Sports Product 1',	10,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(172,	'Sports Product 2',	10,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(173,	'Sports Product 3',	10,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(174,	'Sports Product 4',	10,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(175,	'Sports Product 5',	10,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(176,	'Electronics Product 1',	11,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(177,	'Electronics Product 2',	11,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(178,	'Electronics Product 3',	11,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(179,	'Electronics Product 4',	11,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(180,	'Electronics Product 5',	11,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(181,	'Clothing Product 1',	12,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(182,	'Clothing Product 2',	12,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(183,	'Clothing Product 3',	12,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(184,	'Clothing Product 4',	12,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(185,	'Clothing Product 5',	12,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(186,	'Home Appliances Product 1',	13,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(187,	'Home Appliances Product 2',	13,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(188,	'Home Appliances Product 3',	13,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(189,	'Home Appliances Product 4',	13,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(190,	'Home Appliances Product 5',	13,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(191,	'Books Product 1',	14,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(192,	'Books Product 2',	14,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(193,	'Books Product 3',	14,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(194,	'Books Product 4',	14,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(195,	'Books Product 5',	14,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(196,	'Sports Product 1',	15,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(197,	'Sports Product 2',	15,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(198,	'Sports Product 3',	15,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(199,	'Sports Product 4',	15,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(200,	'Sports Product 5',	15,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(201,	'Electronics Product 1',	16,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(202,	'Electronics Product 2',	16,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(203,	'Electronics Product 3',	16,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(204,	'Electronics Product 4',	16,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(205,	'Electronics Product 5',	16,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(206,	'Clothing Product 1',	17,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(207,	'Clothing Product 2',	17,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(208,	'Clothing Product 3',	17,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(209,	'Clothing Product 4',	17,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(210,	'Clothing Product 5',	17,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(211,	'Home Appliances Product 1',	18,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(212,	'Home Appliances Product 2',	18,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(213,	'Home Appliances Product 3',	18,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(214,	'Home Appliances Product 4',	18,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(215,	'Home Appliances Product 5',	18,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(216,	'Books Product 1',	19,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(217,	'Books Product 2',	19,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(218,	'Books Product 3',	19,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(219,	'Books Product 4',	19,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(220,	'Books Product 5',	19,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(221,	'Sports Product 1',	20,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(222,	'Sports Product 2',	20,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(223,	'Sports Product 3',	20,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(224,	'Sports Product 4',	20,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(225,	'Sports Product 5',	20,	'2025-01-13 04:26:24',	'2025-01-13 04:26:24');

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `staff_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1,	'許睿舜',	'steven921107@yahoo.com.tw',	NULL,	'$2y$12$oOr/DLwt5bZnAQCkJW9ZY.xNGZiZ2Fs1/kcxLJ9EOymnZuzIs.6eW',	NULL,	'2025-01-13 03:59:56',	'2025-01-13 03:59:56'),
(2,	'Jordy Padberg',	'mckenzie.predovic@example.net',	'2025-01-13 04:25:37',	'$2y$12$bBzzSDUGbAaeE2ZUC.iNwOvzNjAD6D4WRZXTVY0OZ2zRPsnvRo1UW',	'd8CIXoZOpQ',	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(3,	'Prof. Horacio Brown II',	'wdicki@example.net',	'2025-01-13 04:25:37',	'$2y$12$bBzzSDUGbAaeE2ZUC.iNwOvzNjAD6D4WRZXTVY0OZ2zRPsnvRo1UW',	'03brkWp51F',	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(4,	'Jamarcus Bernier',	'fidel14@example.org',	'2025-01-13 04:25:37',	'$2y$12$bBzzSDUGbAaeE2ZUC.iNwOvzNjAD6D4WRZXTVY0OZ2zRPsnvRo1UW',	'h6cSvo1Avn',	'2025-01-13 04:25:37',	'2025-01-13 04:25:37'),
(5,	'Dr. Nicholas Crist I',	'baylee.steuber@example.org',	'2025-01-13 04:26:15',	'$2y$12$1jbH3XeX5LToPFw1EiXuG.F2WST0njvAwcDFd2mCVJr0IXEsytx7C',	'5eHfUkLPLr',	'2025-01-13 04:26:16',	'2025-01-13 04:26:16'),
(6,	'Weldon Beatty',	'bednar.raleigh@example.org',	'2025-01-13 04:26:16',	'$2y$12$1jbH3XeX5LToPFw1EiXuG.F2WST0njvAwcDFd2mCVJr0IXEsytx7C',	'4cmrYAuV4U',	'2025-01-13 04:26:16',	'2025-01-13 04:26:16'),
(7,	'Prof. Sam Carroll IV',	'billy.vonrueden@example.org',	'2025-01-13 04:26:16',	'$2y$12$1jbH3XeX5LToPFw1EiXuG.F2WST0njvAwcDFd2mCVJr0IXEsytx7C',	'40ixRrnVZ1',	'2025-01-13 04:26:16',	'2025-01-13 04:26:16'),
(8,	'Maida Predovic',	'luna97@example.net',	'2025-01-13 04:26:24',	'$2y$12$xde3CBJ1NaclRyFlHzRcA.RZZEjekOWbc.uNRVfbGNaXWehfD1KcS',	'tvBnWa8xpj',	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(9,	'Mr. Johan Block DVM',	'jarrett98@example.org',	'2025-01-13 04:26:24',	'$2y$12$xde3CBJ1NaclRyFlHzRcA.RZZEjekOWbc.uNRVfbGNaXWehfD1KcS',	'i5HwXNuliJ',	'2025-01-13 04:26:24',	'2025-01-13 04:26:24'),
(10,	'Miss Georgiana Kunze MD',	'douglas.nella@example.net',	'2025-01-13 04:26:24',	'$2y$12$xde3CBJ1NaclRyFlHzRcA.RZZEjekOWbc.uNRVfbGNaXWehfD1KcS',	'm0KtmbKaev',	'2025-01-13 04:26:24',	'2025-01-13 04:26:24');

-- 2025-01-13 12:38:26
