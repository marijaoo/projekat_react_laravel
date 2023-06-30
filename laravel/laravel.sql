-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2023 at 08:05 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

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

-- --------------------------------------------------------

--
-- Table structure for table `cart_orders`
--

CREATE TABLE `cart_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_charge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_orders`
--

INSERT INTO `cart_orders` (`id`, `invoice_no`, `product_name`, `product_code`, `size`, `color`, `quantity`, `unit_price`, `total_price`, `email`, `name`, `payment_method`, `delivery_address`, `city`, `delivery_charge`, `order_date`, `order_time`, `order_status`, `created_at`, `updated_at`) VALUES
(7, 'Easy1688062514152', 'LENOVO IdeaPad Gaming 3 15ACH6 82K200A2YA', '9496169', 'Size: undefined', 'Color: Black', '03', '700', '2100', 'marija@gmail.com', 'asd', 'Cash On Delivery', 'asad', 'Kraljevo', '00', '30-06-2023', '12:15:14am', 'Pending', NULL, NULL),
(8, 'Easy1688067285920', 'DELL Vostro 3510 NOT18571', '949269', 'Size: undefined', 'Color: Black', '01', '850', '850', 'marija@gmail.com', 'aaa', 'Cash On Delivery', 'aaa', 'Kraljevo', '00', '30-06-2023', '01:34:46am', 'Pending', NULL, NULL),
(9, 'Easy1688068217545', 'APPLE iPhone 12 128GB Blue MGJE3SE/A ', '4986269', 'Size: undefined', 'Color: Black', '01', '1200', '1200', 'marija@gmail.com', 'aaa', 'Cash On Delivery', 'aaa', 'Kraljevo', '00', '30-06-2023', '01:50:18am', 'Pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `created_at`, `updated_at`) VALUES
(11, 'Phones', 'https://img.gigatron.rs/img/menu/b360e35b70bef015c43c082f0edc8658.png', NULL, NULL),
(12, 'Laptops', 'https://img.gigatron.rs/img/menu/3d53905676a996bcf1b7923c0b41e3ab.png', NULL, NULL),
(13, 'TV', 'https://img.gigatron.rs/img/menu/4c92a0ccd866f5a1ef65b67da7552337.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `product_name`, `image`, `product_code`, `email`, `created_at`, `updated_at`) VALUES
(12, 'APPLE iPhone 12 128GB Blue MGJE3SE/A ', 'https://img.gigatron.rs/img/products/large/image61f3f5ba42ec1.png', '4986269', 'marija@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, 'https://static.lenovo.com/id/in/landingpage/Lenovo_Aware_IdeaPad_Banner.jpg', NULL, NULL),
(2, 'https://img.global.news.samsung.com/in/wp-content/uploads/2022/04/11630_Neo_Qled_Banner_3000x2000.jpg', NULL, NULL),
(3, 'https://www.apple.com/newsroom/images/product/iphone/standard/Apple-iPhone-14-iPhone-14-Plus-hero-220907_Full-Bleed-Image.jpg.large.jpg', NULL, NULL),
(4, 'https://storage.googleapis.com/tradeinn-images/images/landing-pages/appleNovetats-1.jpg', NULL, NULL),
(5, 'https://cdn.mos.cms.futurecdn.net/xz7tsxrUbTfFnXfiaUbZSL.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_06_27_044356_create_sessions_table', 1),
(7, '2023_06_27_213242_create_visitors_table', 2),
(8, '2023_06_27_214514_create_contacts_table', 3),
(9, '2023_06_27_221945_create_site_infos_table', 4),
(10, '2023_06_28_100606_create_categories_table', 5),
(12, '2023_06_28_100656_create_subcategories_table', 7),
(13, '2023_06_28_101846_create_product_lists_table', 8),
(15, '2023_06_28_140254_create_home_sliders_table', 10),
(16, '2023_06_28_142727_create_product_details_table', 11),
(17, '2023_06_28_163632_create_notifications_table', 12),
(18, '2016_06_01_000001_create_oauth_auth_codes_table', 13),
(19, '2016_06_01_000002_create_oauth_access_tokens_table', 13),
(20, '2016_06_01_000003_create_oauth_refresh_tokens_table', 13),
(21, '2016_06_01_000004_create_oauth_clients_table', 13),
(22, '2016_06_01_000005_create_oauth_personal_access_clients_table', 13),
(23, '2023_06_28_183700_create_product_reviews_table', 14),
(24, '2023_06_28_203945_create_product_carts_table', 15),
(25, '2023_06_28_276372_create_cart_orders_table', 16),
(26, '2023_06_28_298323_create_favourites_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Probni naslov 1', 'Ovo je probna notifikaicija.', '31/01/2000', NULL, NULL),
(2, 'Probni naslov 2', 'Ovo je probna notifikaicija.', '31/01/2000', NULL, NULL),
(3, 'Probni naslov 3', 'Ovo je probna notifikaicija.', '31/01/2000', NULL, NULL),
(4, 'Probni naslov 4', 'Ovo je probna notifikaicija.', '31/01/2000', NULL, NULL),
(5, 'Probni naslov 5', 'Ovo je probna notifikaicija.', '31/01/2000', NULL, NULL),
(6, 'Probni naslov 6', 'Ovo je probna notifikaicija.', '31/01/2000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('06918ae54dab11466ed04749de417763bd4f62d707e3b337bb4506988455c6894fc7328673bc183c', 20, 11, 'app', '[]', 0, '2023-06-30 03:33:37', '2023-06-30 03:33:37', '2024-06-30 05:33:37'),
('09d818f861024c5947720187aaacf716543205480ce0b57ed0a9bbca73d7ffb563e872cdc66309f8', 20, 11, 'app', '[]', 0, '2023-06-30 03:32:35', '2023-06-30 03:32:35', '2024-06-30 05:32:35'),
('09fcc7c5685509d82aed6a9f76ffff1aa089c785f87f13721d5ba145091f6450bdc8cc506575bb18', 1, 9, 'app', '[]', 0, '2023-06-29 17:20:36', '2023-06-29 17:20:36', '2024-06-29 19:20:36'),
('1551047d91252da2c2726ecbe012e86d81219ef867c9ffaddb34f4dc66ff06b6a5a2ed34f600a513', 1, 5, 'app', '[]', 0, '2022-02-13 14:48:09', '2022-02-13 14:48:09', '2023-02-13 15:48:09'),
('17f34dd5e4419b33eafe8266b45d91e4f5994737ba9f96a79cdf236a851de46fa0c29d845982a958', 1, 5, 'app', '[]', 0, '2022-02-13 09:34:52', '2022-02-13 09:34:52', '2023-02-13 10:34:52'),
('190507988a04d1c95f3d81d00c8e79197fe5bffe65fa99c5a63e1c20535c40ffaa416cdd4b867d23', 4, 5, 'app', '[]', 0, '2022-02-11 14:25:18', '2022-02-11 14:25:18', '2023-02-11 15:25:18'),
('1e2b5e1635d7f888dfa1af3b5d5d7e8ae726938d97d6c7f254417cd6c84d488707a183d7f6947749', 1, 5, 'app', '[]', 0, '2022-02-13 15:25:57', '2022-02-13 15:25:57', '2023-02-13 16:25:57'),
('1fa290e24a20c2c39730ed939a5330a055e9335082fe27376e5d6e7ba634d79c8278a9a86729d09d', 20, 11, 'app', '[]', 0, '2023-06-29 17:49:14', '2023-06-29 17:49:14', '2024-06-29 19:49:14'),
('20fc32aff13adf279789235307dbee34194a15c7b7ff65f440b077b5be652caebe170c6d305af466', 1, 5, 'app', '[]', 0, '2022-02-13 10:12:10', '2022-02-13 10:12:10', '2023-02-13 11:12:10'),
('2a0b5f7a5ac89216af27b5683a810cd4389961b944accc0f1a47e6590fe3c3a6dcec386f7bf49aa6', 4, 5, 'app', '[]', 0, '2022-02-12 11:19:02', '2022-02-12 11:19:02', '2023-02-12 12:19:02'),
('2ca87dc41cda01b73df81ae4c8ae8d8ea624763d20ae5946bd9a813fdc0c9a36b9316c94da26d540', 4, 5, 'app', '[]', 0, '2022-02-12 12:37:25', '2022-02-12 12:37:25', '2023-02-12 13:37:25'),
('2d89bf1fd7546d7e99143dcf0d7bbc9804b6b38b10ca194ca84b86fbbb4ad353b87b41333af94da8', 1, 5, 'app', '[]', 0, '2022-02-13 14:29:22', '2022-02-13 14:29:22', '2023-02-13 15:29:22'),
('35f3320c1c59c65842a4e7293c60355e9ee6c27f379ae5204e91f6f88fa2091d7b6403f624b3353d', 4, 5, 'app', '[]', 0, '2022-02-12 11:19:01', '2022-02-12 11:19:01', '2023-02-12 12:19:01'),
('3885cce0781632ed301be14fe30bedefddd9f26e145d1fda90e376371eabacbafb90d8ee4271c33e', 1, 5, 'app', '[]', 0, '2022-02-13 15:30:59', '2022-02-13 15:30:59', '2023-02-13 16:30:59'),
('3c8430adf048b213f5b95b03c91347470b71970db6aa661e6e6c2d7e8ff52db0c785843615ac4127', 20, 11, 'app', '[]', 0, '2023-06-29 17:31:27', '2023-06-29 17:31:27', '2024-06-29 19:31:27'),
('3f891bef49088e0df028f0b6c571fd1652a58237dea16c199c77c141a48900d232707c9aa3c49a5e', 4, 5, 'app', '[]', 0, '2022-02-12 11:18:57', '2022-02-12 11:18:57', '2023-02-12 12:18:57'),
('42e24d76e122fe86a48d40156c6c065e76eb03bae3f7dc4c149b96f68e72e26c83e1e6b1ef5b6d20', 20, 9, 'app', '[]', 0, '2023-06-29 17:19:48', '2023-06-29 17:19:48', '2024-06-29 19:19:48'),
('48ee8ca1ac91fd66c850b1e575f1156f108efce37be7d354640ecac9e92d4708f03505b0f89c3ad9', 1, 5, 'app', '[]', 0, '2022-02-13 11:25:53', '2022-02-13 11:25:53', '2023-02-13 12:25:53'),
('4c83e478bee6353acf94c401b0c543087255266457e8099ea42f96740ca9a7d19a898e0a1d1020f5', 2, 5, 'app', '[]', 0, '2022-02-11 11:41:57', '2022-02-11 11:41:57', '2023-02-11 12:41:57'),
('4f37f9325fc8a2bfd2c37cfbe58dc2cbcf1e870308e1143fac2e9fee09c75383bd1b2aa7c686241b', 4, 5, 'app', '[]', 0, '2022-02-11 14:12:26', '2022-02-11 14:12:26', '2023-02-11 15:12:26'),
('4f62e640b39a3ad86960bbf1fb3c86162faad4fd83eb9628033414e1cdd8a30bd631052f8160cf30', 4, 5, 'app', '[]', 0, '2022-02-13 09:19:09', '2022-02-13 09:19:09', '2023-02-13 10:19:09'),
('4fdfb935284e37fddc609a1eb8eb6763a0e7ee251a173dd1202aac0b5bdf3989faceceab135124c9', 4, 5, 'app', '[]', 0, '2022-02-13 09:33:06', '2022-02-13 09:33:06', '2023-02-13 10:33:06'),
('5876372ecfdb84d1c6b65808c1577ce322e3fbc20b841bc0aad268a2bada045e166575c5ea9e2b9d', 2, 5, 'app', '[]', 0, '2022-02-11 11:20:50', '2022-02-11 11:20:50', '2023-02-11 12:20:50'),
('5955acc57b2413f9bdea2719703a681aff0f198680d0fc24b3bff8e164624e2ba4b5111e7e41d781', 4, 5, 'app', '[]', 0, '2022-02-12 12:32:19', '2022-02-12 12:32:19', '2023-02-12 13:32:19'),
('5b38a53d19139953d2ae604cfe5ba3d879268da62de0b6d82ec3f54cf54489e31b1265bab4803f5d', 3, 5, 'app', '[]', 0, '2022-02-11 14:12:07', '2022-02-11 14:12:07', '2023-02-11 15:12:07'),
('6414c42f1985ce031114a6407533d4cb025cbd7ce885d3abcfa5dc8e3c2a9cae7b5cd9690384c584', 20, 7, 'app', '[]', 0, '2023-06-29 16:11:56', '2023-06-29 16:11:56', '2024-06-29 18:11:56'),
('7413bbf2aea577c8074892375fd1d9237462b7a3272a3aae3cf2ca4582848d3377de5143f050a332', 4, 5, 'app', '[]', 0, '2022-02-13 09:34:16', '2022-02-13 09:34:16', '2023-02-13 10:34:16'),
('8108fc85bae2eaa9b45dc9dfa9d40e3d595cd5a70626d73d71a0260be593cc79b6bc951a7cce1e90', 1, 5, 'app', '[]', 0, '2022-02-13 13:59:14', '2022-02-13 13:59:14', '2023-02-13 14:59:14'),
('846ce562bd61bf0ea026ed1aafb56cd589d7dba7c190117079d49a6bc8d466293c72eb98657afedf', 4, 5, 'app', '[]', 0, '2022-02-13 09:34:19', '2022-02-13 09:34:19', '2023-02-13 10:34:19'),
('886831b414a679518d392a110caab324e8710a506a15e17463709c9277057a0f1333aaaf813b6d06', 4, 5, 'app', '[]', 0, '2022-02-13 09:18:17', '2022-02-13 09:18:17', '2023-02-13 10:18:17'),
('8d452849202b7d75040aa54d8b8aa88b2cd7eb6f286cebfb8a5fbf0e114c1ee3d36b392fe5b17684', 3, 5, 'app', '[]', 0, '2022-02-11 14:09:42', '2022-02-11 14:09:42', '2023-02-11 15:09:42'),
('8e48a260783fd58351af7ae2adc7a536e798d5b72da779cea4959efe410fba89d0faa047995080a0', 1, 5, 'app', '[]', 0, '2022-02-11 13:50:59', '2022-02-11 13:50:59', '2023-02-11 14:50:59'),
('94751a86182995f0daf341c66d52e095d0f6bb3258e83af4154ea7f5f6a100e3ece5800b00b894bc', 1, 5, 'app', '[]', 0, '2022-02-13 14:47:58', '2022-02-13 14:47:58', '2023-02-13 15:47:58'),
('996ddaf6641b8ca5aa239c4e734057f77b8a539ac961dd77f852983ac24612921755e65723691258', 1, 5, 'app', '[]', 0, '2022-02-13 13:59:11', '2022-02-13 13:59:11', '2023-02-13 14:59:11'),
('9d6b7cd964a9d56f9be054b14952134a1b47c690e9f26bf05a637c6e24ab366f1982c77aca467cd9', 1, 5, 'app', '[]', 0, '2022-02-11 13:55:16', '2022-02-11 13:55:16', '2023-02-11 14:55:16'),
('a197c6587574cd856635300196d3e033316a5fa7714d459fd11b2ad602383a82a34229795ac53f81', 4, 5, 'app', '[]', 0, '2022-02-12 12:33:28', '2022-02-12 12:33:28', '2023-02-12 13:33:28'),
('a711d0b87c0dc26d25838d80fcaf6e9311099f6c59ab853886ef068ef9dc7c75808790edeab09b5f', 4, 5, 'app', '[]', 0, '2022-02-12 18:20:04', '2022-02-12 18:20:04', '2023-02-12 19:20:04'),
('a8854984a2265f45cf11788ea8f041a9642281e34f7c2e6d638dee0e368bae118ee127b92725fcc9', 20, 11, 'app', '[]', 0, '2023-06-30 03:33:34', '2023-06-30 03:33:34', '2024-06-30 05:33:34'),
('abfe50dccc254594af45a7e9f0f6947e5130bae01e9a697f686b3519b2367590db0a88a857dede24', 1, 5, 'app', '[]', 0, '2022-02-11 13:14:31', '2022-02-11 13:14:31', '2023-02-11 14:14:31'),
('ad53c8bd8809b2a016f14dfd6f16043b61ae674e6dfff93365c526d4706bfba61f128a2b028ebec6', 20, 11, 'app', '[]', 0, '2023-06-29 17:33:46', '2023-06-29 17:33:46', '2024-06-29 19:33:46'),
('bb24f621770c62deeca54c541da5a66bc499acf8690cabf1ba4f9ca07171e4d0b107a714e3df905c', 4, 5, 'app', '[]', 0, '2022-02-12 11:18:59', '2022-02-12 11:18:59', '2023-02-12 12:18:59'),
('bb90b3ed5cf0e89d1e8db4a2128a69d7c6fd0a432cea7b6967cba13912fae85c21ac82e2eddb2858', 4, 5, 'app', '[]', 0, '2022-02-12 11:19:01', '2022-02-12 11:19:01', '2023-02-12 12:19:01'),
('bcac752fc8a28d238e0a6449a517088ae57efc75384665ab4010a6c8f980831d76449ba0b3a02a17', 4, 5, 'app', '[]', 0, '2022-02-12 12:37:24', '2022-02-12 12:37:24', '2023-02-12 13:37:24'),
('c43c0e0eeeaa26d54ba798f067a4bb4d285eecbebed7b6afa5dd1d93a07e5881c221ab297201b1b2', 20, 11, 'app', '[]', 0, '2023-06-30 02:56:32', '2023-06-30 02:56:32', '2024-06-30 04:56:32'),
('d459a0d966b47d795be182f4ca235ac863d0ad9c9cd28d086e6cd8cb7cf08ede4716e8fac58040a0', 1, 5, 'app', '[]', 0, '2022-02-11 13:50:53', '2022-02-11 13:50:53', '2023-02-11 14:50:53'),
('d6f48b775012c8a875326d814a161bd7058d20f04cad73248cb783d64b71b0cad030c55529998873', 1, 7, 'app', '[]', 0, '2023-06-29 16:11:32', '2023-06-29 16:11:32', '2024-06-29 18:11:32'),
('de82a2ea5df279365b8fa04bf4275352b09796f558af1024ed0797c13062d388cdfad6f5df5fc5df', 19, 5, 'app', '[]', 0, '2022-02-13 15:29:29', '2022-02-13 15:29:29', '2023-02-13 16:29:29'),
('e22f0360c048127bda3d1a1e7ce16480fc8b65ceaf763fcf5839ee3ccc6acb336966bd8aaf01f193', 2, 5, 'app', '[]', 0, '2022-02-11 11:20:30', '2022-02-11 11:20:30', '2023-02-11 12:20:30'),
('e4b3d69fdd00af70406e34dd779baa48b4d8a7f8407e3f086c34a469ff7ca6b16103efd943fd370c', 4, 5, 'app', '[]', 0, '2022-02-12 18:20:02', '2022-02-12 18:20:02', '2023-02-12 19:20:02'),
('e81fa1598702dc041e8e93aca4c3f8ecf8df10ebc1167a6b79100ea4adcb38a9b4a9663cb2c3cd1f', 1, 5, 'app', '[]', 0, '2022-02-13 14:47:56', '2022-02-13 14:47:56', '2023-02-13 15:47:56'),
('eb4b038061fe64152df67b9407156fcc1c5b05b8c1a4d6bb1f267b6a297e14ef06cc07c4991b9adf', 4, 5, 'app', '[]', 0, '2022-02-11 14:17:01', '2022-02-11 14:17:01', '2023-02-11 15:17:01'),
('edef657c79636869f96cb5bb647d62dce12cce7b04992a4d427c150a7ef1574dc9c1cb529310590c', 3, 5, 'app', '[]', 0, '2022-02-11 14:09:33', '2022-02-11 14:09:33', '2023-02-11 15:09:33'),
('fada7c25b4a00bfe16090486c388ca594dccc1a0d20a3e515bb2ae8a9ecc6df45fdd95a83ae9ad16', 4, 5, 'app', '[]', 0, '2022-02-13 09:16:57', '2022-02-13 09:16:57', '2023-02-13 10:16:57'),
('fb0651f7d1dbaa30d72cfb5987dec1cf6231e04f29d23dca632a0837901045b2883140fe8b00dc9b', 1, 5, 'app', '[]', 0, '2022-02-11 13:48:17', '2022-02-11 13:48:17', '2023-02-11 14:48:17'),
('fcf9e5556a636523d7ec98712dc9cc2b9a802eb78914d15b9a2c6408a5ebb7330ab02a5d39cad0b6', 1, 5, 'app', '[]', 0, '2022-02-13 14:40:05', '2022-02-13 14:40:05', '2023-02-13 15:40:05'),
('fd08cf33d529e2c08b6cbab6730c81dbdac6d6c1df22a538092d6358d099aef0b2101e5441a1d4a3', 1, 5, 'app', '[]', 0, '2022-02-11 11:06:58', '2022-02-11 11:06:58', '2023-02-11 12:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'kjtlSeWtAsMXHggufN3C5XyzzUPB8V7pF2fDpuqF', NULL, 'http://localhost', 1, 0, 0, '2022-02-11 10:03:21', '2022-02-11 10:03:21'),
(2, NULL, 'Laravel Password Grant Client', 'pH9DUzm97yTNDHv2Xi8lXMwCiXku2Km8RU73NuZv', 'users', 'http://localhost', 0, 1, 0, '2022-02-11 10:03:21', '2022-02-11 10:03:21'),
(3, NULL, 'Laravel Personal Access Client', 'Jpx5SA4hRYvqPTVEt89oUsMK7C35LXswNJnsTbzD', NULL, 'http://localhost', 1, 0, 0, '2022-02-11 10:16:35', '2022-02-11 10:16:35'),
(4, NULL, 'Laravel Password Grant Client', '06jijBodjYzxlh37PIFRU5LGx1eGkzqjWQPHjlF9', 'users', 'http://localhost', 0, 1, 0, '2022-02-11 10:16:35', '2022-02-11 10:16:35'),
(5, NULL, 'Laravel Personal Access Client', 'xWiek9qtorhAaUMMzJVSjPyLE37oXFXPsweyjBad', NULL, 'http://localhost', 1, 0, 0, '2022-02-11 10:16:49', '2022-02-11 10:16:49'),
(6, NULL, 'Laravel Password Grant Client', 'Rfc9GqZswo90ptPhYrKgcJHaHO6xkZzk09cNddGf', 'users', 'http://localhost', 0, 1, 0, '2022-02-11 10:16:49', '2022-02-11 10:16:49'),
(7, NULL, 'Laravel Personal Access Client', '0z6fpnqk3muWxlax5LwYNqJkPCHmkv4f8X9EC44K', NULL, 'http://localhost', 1, 0, 0, '2023-06-29 16:11:19', '2023-06-29 16:11:19'),
(8, NULL, 'Laravel Password Grant Client', 'pQNZsLFCKYZOFEibJdfTlnSeGjda0yAQSnWN7M6o', 'users', 'http://localhost', 0, 1, 0, '2023-06-29 16:11:19', '2023-06-29 16:11:19'),
(9, NULL, 'Laravel Personal Access Client', 'OwaeL5u22wKmMaBCXQcLM8sa78DtRhEN6jj6YxYc', NULL, 'http://localhost', 1, 0, 0, '2023-06-29 16:52:10', '2023-06-29 16:52:10'),
(10, NULL, 'Laravel Password Grant Client', 'reFz8k94tVRCCc2mrgJ2ZIVis29oUTwh42edKPM7', 'users', 'http://localhost', 0, 1, 0, '2023-06-29 16:52:10', '2023-06-29 16:52:10'),
(11, NULL, 'Laravel Personal Access Client', 'u0IPgtCS0KZS9ErxmSO4zpL5yNmFoGiYHK4XlO5g', NULL, 'http://localhost', 1, 0, 0, '2023-06-29 17:21:13', '2023-06-29 17:21:13'),
(12, NULL, 'Laravel Password Grant Client', 'Dcj7YbBy2js9df7kVP8fGJ08H7rPUjWBfAJ9ii6H', 'users', 'http://localhost', 0, 1, 0, '2023-06-29 17:21:13', '2023-06-29 17:21:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-02-11 10:03:21', '2022-02-11 10:03:21'),
(2, 3, '2022-02-11 10:16:35', '2022-02-11 10:16:35'),
(3, 5, '2022-02-11 10:16:49', '2022-02-11 10:16:49'),
(4, 7, '2023-06-29 16:11:19', '2023-06-29 16:11:19'),
(5, 9, '2023-06-29 16:52:10', '2023-06-29 16:52:10'),
(6, 11, '2023-06-29 17:21:13', '2023-06-29 17:21:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_four` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `image_one`, `image_two`, `image_three`, `image_four`, `short_description`, `color`, `size`, `long_description`, `created_at`, `updated_at`) VALUES
(2, 1, 'https://img.gigatron.rs/img/products/large/image61f4065cc9778.png', 'https://img.gigatron.rs/img/products/large/image61f4065d262f1.jpg', 'https://img.gigatron.rs/img/products/large/image61f4065d7b2e8.jpg', 'https://img.gigatron.rs/img/products/large/image61f4065dce66b.jpg', 'APPLE iPhone 12 Mini 64GB Black MGDX3SE/A', 'Black, White', '5.4\"', 'EAN: 194252013151\r\nScreen diagonal: 5.4 \"\r\nRAM memory: 4 GB\r\nInternal memory: 64 GB\r\nRear camera: 12.0 Mpix + 12.0 Mpix\r\nFront camera: 12 Mpix\r\nBattery capacity: 2227 mAh\r\nResolution: 2340 x 1080', NULL, NULL),
(3, 2, 'https://img.gigatron.rs/img/products/large/image61f3f5ba42ec1.png', 'https://img.gigatron.rs/img/products/large/image61f3f5ba9d2f1.jpg', 'https://img.gigatron.rs/img/products/large/image61f3f5bada77b.jpg', 'https://img.gigatron.rs/img/products/large/image61f3f5bb231c3.jpg', 'APPLE iPhone 12 128GB Blue MGJE3SE/A', 'Black, White', '6.1\"', 'EAN: 194252032275\r\nScreen diagonal: 6.1 \"\r\nRAM memory: 4 GB\r\nInternal memory: 128 GB\r\nRear camera: 12.0 Mpix + 12.0 Mpix\r\nFront camera: 12 Mpix\r\nBattery capacity: 2815 mAH\r\nResolution: 2532 x 1170', NULL, NULL),
(4, 3, 'https://img.gigatron.rs/img/products/large/cream-3-copy-1.png', 'https://img.gigatron.rs/img/products/large/cream-3-copy-1.png', 'https://img.gigatron.rs/img/products/large/cream-4-25.jpg', 'SAMSUNG Galaxy Z FLIP 3 256GB Cream SM-F711BZEEEUC', 'SAMSUNG Galaxy Z FLIP 3 256GB Cream SM-F711BZEEEUC', 'Black, Pink', '6.7\"', 'EAN: 8806092563698\r\nScreen diagonal: 6.7 \"\r\nRAM memory: 8 GB\r\nInternal memory: 256 GB\r\nRear camera: 12.0 Mpix + 12.0 Mpix\r\nFront camera: 10.0 Mpix\r\nBattery capacity: 3300 mAh\r\nScreen type: Dynamic AMOLED', NULL, NULL),
(5, 4, 'https://cdn2.mobilnisvet.com/YAfUdrYZM8aVcDsk-8Ko-5Yql6Oo5Lot4Vi7a8rhUZA/sm:1/sh:1/el:0/q:85/wm:0.2:re:0:0:0.5/rs:fill:1080:2288/czM6Ly9tb2JpbG5pc3ZldGNvbS8yMDIxLzEvMTI3L2Y4MnJiZnRzZmY1MXkxNDZieGt0LzIvZi5qcGc.webp', 'https://cdn2.mobilnisvet.com/3UM-_wL9tcsiGXURdECaxQTbdTBkRkpCF7YvSsy7j00/sm:1/sh:1/el:0/q:85/wm:0.2:re:0:0:0.5/rs:fill:1080:2288/czM6Ly9tb2JpbG5pc3ZldGNvbS8yMDIxLzEvMTI3L2Y4MnJiZnRzZmY1MXkxNDZieGt0LzIvYi5qcGc.webp', 'https://cdn2.mobilnisvet.com/6WbOKC0kwnlxk1_vprzQM9BXukewU6mNY1T-1dyviiI/sm:1/sh:1/el:0/q:85/wm:0.2:re:0:0:0.5/rs:fill:1080:2682/czM6Ly9tb2JpbG5pc3ZldGNvbS8yMDIxLzEvMTI3L2Y4MnJiZnRzZmY1MXkxNDZieGt0LzIvZnIuanBn.webp', 'https://cdn2.mobilnisvet.com/PMFx-Dos2EfcS_mYx9R9oqgZQNf708D74Z1swOXS20Y/sm:1/sh:1/el:0/q:85/wm:0.2:re:0:0:0.5/rs:fill:1080:2673/czM6Ly9tb2JpbG5pc3ZldGNvbS8yMDIxLzEvMTI3L2Y4MnJiZnRzZmY1MXkxNDZieGt0LzIvYmwuanBn.webp', 'SAMSUNG GALAXY S21 Plus 5G 128GB Phantom Silver SM-G996BZSDEUC', 'Black, Grey', '6.7\"', 'EAN: 8806090884481\r\nScreen diagonal: 6.7 \"\r\nRAM memory: 8 GB\r\nInternal memory: 128 GB\r\nRear camera: 64 Mpix + 12 Mpix + 12 Mpix\r\nFront camera: 10.0 Mpix\r\nBattery capacity: 4800 mAh\r\nResolution: 2400 x 1080', NULL, NULL),
(6, 5, 'https://img.gigatron.rs/img/products/large/image616ff88522a28.png', 'https://img.gigatron.rs/img/products/large/image616ff885b1d4f.jpg', 'https://img.gigatron.rs/img/products/large/image616ff885f11a0.jpg', 'https://img.gigatron.rs/img/products/large/image616ff885f11a0.jpg', 'HUAWEI Nova 8i 128GB Black', 'Black', '6.67\"', 'EAN: 6941487218714\r\nScreen diagonal: 6.67 \"\r\nRAM memory: 6 GB\r\nInternal memory: 128 GB\r\nRear camera: 64 Mpix + 8 Mpix + 2 Mpix + 2 Mpix\r\nFront camera: 16.0 Mpix\r\nBattery capacity: 4300 mAh\r\nResolution: 2376 x 1080', NULL, NULL),
(7, 6, 'https://img.gigatron.rs/img/products/large/image5f9c38965e7a0.png', 'https://img.gigatron.rs/img/products/large/image5f897274f3436.jpg', 'https://img.gigatron.rs/img/products/large/image5f897273010bf.jpg', 'https://img.gigatron.rs/img/products/large/image5f897273010bf.jpg', 'HUAWEI P Smart (2021) 128GB Crush green ', 'Blue, Black, White', '6.67\"', 'EAN: 6941487205578\r\nScreen diagonal: 6.67 \"\r\nRAM memory: 4 GB\r\nInternal memory: 128 GB\r\nRear camera: 48 Mpix + 8 Mpix + 2 Mpix + 2 Mpix\r\nFront camera: 8.0 Mpix\r\nBattery capacity: 5000 mAh\r\nResolution: 2400 x 1080', NULL, NULL),
(8, 7, 'https://www.ctshop.rs/img/products/2021-12-09/lenovo-ideapad-3-14alc6-82kt0079rm-laptop-14-quot-fhd-amd-ryzen-5-5500u-8gb-512gb-ssd-radeon-graphics-plavi_8jqY7_3.jpg', 'https://www.ctshop.rs/img/products/2021-12-09/lenovo-ideapad-3-14alc6-82kt0079rm-laptop-14-quot-fhd-amd-ryzen-5-5500u-8gb-512gb-ssd-radeon-graphics-plavi_ogKv0_1.jpg', 'https://www.ctshop.rs/img/products/2021-12-09/lenovo-ideapad-3-14alc6-82kt0079rm-laptop-14-quot-fhd-amd-ryzen-5-5500u-8gb-512gb-ssd-radeon-graphics-plavi_KpFDj_1.jpg', 'https://img.ep-cdn.com/i/500/500/mj/mjydshxiscrofcshfnjh/lenovo-ideapad-3-14alc6-82kt007arm-laptop-cene.webp', 'LENOVO IdeaPad 3 14ALC6 - 82KT007ARM', 'Black, Grey', '14\"', 'EAN: 195713203128\r\nProcessor model: AMD Lucienne Ryzen 3 5300U up to 3.8GHz\r\nScreen diagonal: 14 \"\r\nGraphics Card Type: Integrated Radeon ™ RX Vega 6\r\nRAM: 8GB\r\nHDD SSD: 256GB SSD', NULL, NULL),
(9, 8, 'https://img.gigatron.rs/img/products/large/image6141ffa661d92.png', 'https://img.gigatron.rs/img/products/large/image6141ffa6ae371.jpg', 'https://img.gigatron.rs/img/products/large/image6141ffa71df8d.jpg', 'https://img.gigatron.rs/img/products/large/image6141ffa74d4ff.jpg', 'LENOVO IdeaPad Gaming 3 15ACH6 82K200A2YA', 'Black, Grey', '15.6\"', 'EAN: 195890462387\r\nProcessor model: AMD Cezanne Ryzen 5 5600H up to 4.2GHz\r\nScreen diagonal: 15.6 \"\r\nGraphics Card Type: GeForce GTX 1650\r\nRAM: 8GB\r\nHDD SSD: 256GB SSD', NULL, NULL),
(10, 9, 'https://img.gigatron.rs/img/products/large/image5fa046b1528ea.png', 'https://img.gigatron.rs/img/products/large/image5fa046b3b2001.jpg', 'https://img.gigatron.rs/img/products/large/image5fa046b6f14fa.jpg', 'https://img.gigatron.rs/img/products/large/image5fa046bbd8047.jpg', 'CER Aspire 3 A315-23 - NX.HVTEX.009', 'Black, White', '15.6\"', 'EAN: 4710886044659\r\nProcessor model: AMD® Picasso Ryzen 5 3500U up to 3.7GHz\r\nScreen diagonal: 15.6 \"\r\nGraphics Card Type: Integrated Radeon ™ RX Vega 8\r\nRAM: 4GB\r\nHDD SSD: 256GB SSD', NULL, NULL),
(11, 10, 'https://img.gigatron.rs/img/products/large/image61cc5d47ee302.png', 'https://img.gigatron.rs/img/products/large/image61cc5d48890f7.jpg', 'https://img.gigatron.rs/img/products/large/image61cc5d48890f7.jpg', 'https://img.gigatron.rs/img/products/large/image61cc5d48c3159.jpg', 'ACER Aspire 3 A314-22 NX.HVWEX.00E', 'Grey, Black', '14\"', 'EAN: 4710886736738\r\nProcessor model: AMD 3020e up to 2.6GHz\r\nScreen diagonal: 14 \"\r\nGraphics Card Type: Integrated Radeon RX Vega 3\r\nRAM: 4GB\r\nHDD SSD: 256GB SSD', NULL, NULL),
(12, 11, 'https://img.gigatron.rs/img/products/large/image61f94625d69fe.png', 'https://img.gigatron.rs/img/products/large/image61f946261a7ec.jpg', 'https://img.gigatron.rs/img/products/large/image61f946266301e.jpg', 'https://img.gigatron.rs/img/products/large/image61f9462693ab9.jpg', 'DELL Vostro 3510 NOT19056', 'Black, White', '15.6\"', 'EAN: 5141221190561\r\nProcessor model: Intel® Core ™ i7-1165G7 up to 4.7GHz\r\nScreen diagonal: 15.6 \"\r\nGraphics Card Type: Integrated Intel Iris Xe Graphics G7 96EUs\r\nRAM: 16GB\r\nHDD SSD: 512GB SSD', NULL, NULL),
(13, 12, 'https://img.gigatron.rs/img/products/large/image616ea4ae48642.png', 'https://img.gigatron.rs/img/products/large/image616ea4ae9d22c.jpg', 'https://img.gigatron.rs/img/products/large/image616ea4aee95e5.jpg', 'https://img.gigatron.rs/img/products/large/image616ea4af38e03.jpg', 'DELL Vostro 3510 NOT18571', 'Black, White', '15.6\"', 'EAN: 5251021185718\r\nProcessor Model: Intel® Core® 1135G7 up to 4.2GHz\r\nScreen diagonal: 15.6 \"\r\nGraphics Card Type: Integrated Intel Iris Xe Graphics G7 80EUs\r\nRAM: 8GB\r\nHDD SSD: 256GB SSD\r\n', NULL, NULL),
(14, 13, 'https://img.gigatron.rs/img/products/large/59b914e7b8b4ea430b9feb63279e9ff9.png', 'https://img.gigatron.rs/img/products/large/59b914e7b8b4ea430b9feb63279e9ff9.png', 'https://img.gigatron.rs/img/products/large/c5db6d73473ec91ed31c408c72f22a4a.jpg', 'https://img.gigatron.rs/img/products/large/c5db6d73473ec91ed31c408c72f22a4a.jpg', 'LG TV 55NANO883PB SMART', 'Black, White', '55, 60', 'EAN: 8806091000385\r\nScreen type: LED\r\nScreen diagonal: 55 \"(139.7 cm)\r\nResolution: 4K Ultra HD\r\nDigital tuner: DVB-T2 / C / S2\r\nOperating system: webOS\r\nImage processor: α7 Gen4 Processor 4K', NULL, NULL),
(15, 14, 'https://img.gigatron.rs/img/products/large/61c46dd459470dd5801399fe4eed5369.png', 'https://img.gigatron.rs/img/products/large/61c46dd459470dd5801399fe4eed5369.png', 'https://img.gigatron.rs/img/products/large/c27e71bc0c10990f3c6ce59009f29581.jpg', 'https://img.gigatron.rs/img/products/large/c27e71bc0c10990f3c6ce59009f29581.jpg', 'LG TV 86NANO913PA SMART', 'Black, Grey', '45,50', 'EAN: 8806091200631\r\nScreen type: LED\r\nScreen diagonal: 86 \"(218.4 cm)\r\nResolution: 4K Ultra HD\r\nDigital tuner: DVB-T2 / C / S2\r\nOperating system: webOS\r\nImage processor: α7 Gen4 Processor 4K', NULL, NULL),
(16, 15, 'https://img.gigatron.rs/img/products/large/31e0075e64e460f39a70708a78fd48c0.png', 'https://img.gigatron.rs/img/products/large/85fba30e45df74e41a8ba7660fdf2dc4.jpg', 'https://img.gigatron.rs/img/products/large/4098946173c225ecfea2ce12384e78eb.jpg', 'https://img.gigatron.rs/img/products/large/4098946173c225ecfea2ce12384e78eb.jpg', 'SAMSUNG TV Neo QE65QN900ATXXH SMART', 'Black, White', '50,60', 'EAN: 8806090712494\r\nScreen type: LED\r\nScreen diagonal: 75 \"(190.5 cm)\r\nResolution: 4K Ultra HD\r\nDigital tuner: DVB-T2 / C\r\nOperating system: Tizen', NULL, NULL),
(17, 16, 'https://ananas.rs/_next/image?url=https%3A%2F%2Fstatic.ananas.rs%2Ftmp%2Fimage-thumbnails%2FProduct_Images%2FTvs%2Fsamsung_televizor_led_ue75tu7022kxxh%2Fimage-thumb__2174747__product_thumbnail%2Fb0e43a941c1df0c7.jpeg&w=1400&q=75', 'https://media.flixcar.com/f360cdn/Samsung-79834185-rs-uhd-tu7020-ue50tu7092uxxh-336395981Download-Source-zoom.png', 'https://images.samsung.com/is/image/samsung/p6pim/ba/ue55tu7092uxxh/gallery/ba-uhd-tu7020-ue55tu7092uxxh-thumb-343748218?$480_480_PNG$', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOnklRz7G4WEzXG15kKSVh9_TQ_oLtmKyHaQ707QasadevsCeC9kyPgymNLCcniOk1oPc&usqp=CAU', 'SAMSUNG TV 75TU7022 UST2 SMART', 'Black, White', '44,48', 'EAN: 8806090712494\r\nScreen type: LED\r\nScreen diagonal: 75 \"(190.5 cm)\r\nResolution: 4K Ultra HD\r\nDigital tuner: DVB-T2 / C\r\nOperating system: Tizen', NULL, NULL),
(18, 17, 'https://img.gigatron.rs/img/products/large/FOX-Televizor-32DLE198-.png', 'https://img.gigatron.rs/img/products/large/FOX-Televizor-32DLE198-60.jpg', 'https://img.gigatron.rs/img/products/large/image619bb082e7f42.jpg', 'https://img.gigatron.rs/img/products/large/image619bb0834538f.jpg', 'FOX TV 65WOS600A SMART', 'Black, White', '40,44', 'EAN: 8606017161998\r\nScreen type: LED\r\nScreen diagonal: 42 \"(106.6 cm)\r\nResolution: 1080p Full HD\r\nDigital tuner: DVB-T / C / T2', NULL, NULL),
(19, 18, 'https://img.gigatron.rs/img/products/large/FOX-Televizor-42DLE668-SMART-41.png', 'https://img.gigatron.rs/img/products/large/FOX-Televizor-42DLE668-SMART-.jpg', 'https://img.gigatron.rs/img/products/large/FOX-Televizor-42DLE668-SMART-6.jpg', 'https://img.gigatron.rs/img/products/large/FOX-Televizor-42DLE668-SMART-19.jpg', 'FOX TV 42DLE668 SMART', 'Black, White', '32,40', 'EAN: 8606017161998\r\nScreen type: LED\r\nScreen diagonal: 42 \"(106.6 cm)\r\nResolution: 1080p Full HD\r\nDigital tuner: DVB-T / C / T2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_lists`
--

CREATE TABLE `product_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_lists`
--

INSERT INTO `product_lists` (`id`, `title`, `price`, `special_price`, `image`, `category`, `subcategory`, `remark`, `brand`, `star`, `product_code`, `created_at`, `updated_at`) VALUES
(1, 'APPLE iPhone 12 Mini 64GB Black MGDX3SE/A', '1000', '800', 'https://img.gigatron.rs/img/products/large/image61f4065cc9778.png', 'Phones', 'Apple', 'NEW', 'Apple', '5', '49498', NULL, NULL),
(2, 'APPLE iPhone 12 128GB Blue MGJE3SE/A ', '1500', '1200', 'https://img.gigatron.rs/img/products/large/image61f3f5ba42ec1.png', 'Phones', 'Apple', 'FEATURED', 'Apple', '5', '4986269', NULL, NULL),
(3, 'SAMSUNG Galaxy Z FLIP 3 256GB Cream SM-F711BZEEEUC', '1200', '1000', 'https://img.gigatron.rs/img/products/large/cream-3-copy-1.png', 'Phones', 'Samsung', 'NEW', 'Samsung', '4', '195456', NULL, NULL),
(4, 'SAMSUNG GALAXY S21 Plus 5G 128GB Phantom Silver SM-G996BZSDEUC', '1000', '800', 'https://www.pametno.rs/slike/products/76/11/13001176/thumb290_samsung-galaxy-s21-5g-128gb-62_5a713bcc.jpeg', 'Phones', 'Samsung', 'COLLECTION', 'Samsung', '5', '789562', NULL, NULL),
(5, 'HUAWEI Nova 8i 128GB Black', '800', '600', 'https://img.gigatron.rs/img/products/large/image616ff88522a28.png', 'Phones', 'Huawei', 'COLLECTION', 'Huawei', '5', '979626', NULL, NULL),
(6, 'HUAWEI P Smart (2021) 128GB Crush green', '500', '450', 'https://img.gigatron.rs/img/products/large/image5f9c38965e7a0.png', 'Phones', 'Huawei', 'COLLECTION', 'Huawei', '5', '916899', NULL, NULL),
(7, 'LENOVO IdeaPad 3 14ALC6 - 82KT007ARM', '500', '400', 'https://img.ep-cdn.com/i/500/500/mj/mjydshxiscrofcshfnjh/lenovo-ideapad-3-14alc6-82kt007arm-laptop-cene.webp', 'Laptops', 'Lenovo', 'NEW', 'Lenovo', '5', '49689469', NULL, NULL),
(8, 'LENOVO IdeaPad Gaming 3 15ACH6 82K200A2YA', '1000', '700', 'https://img.gigatron.rs/img/products/large/image6141ffa661d92.png', 'Laptops', 'Lenovo', 'NEW', 'Lenovo', '4', '9496169', NULL, NULL),
(9, 'ACER Aspire 3 A315-23 - NX.HVTEX.009', '1200', '1000', 'https://img.gigatron.rs/img/products/large/image5fa046b1528ea.png', 'Laptops', 'Acer', 'COLLECTION', 'Acer', '5', '49698416', NULL, NULL),
(10, 'ACER Aspire 3 A314-22 NX.HVWEX.00E', '1000', '800', 'https://img.gigatron.rs/img/products/large/image61cc5d47ee302.png', 'Laptops', 'Acer', 'COLLECTION', 'Acer', '5', '496619', NULL, NULL),
(11, 'DELL Vostro 3510 NOT19056', '900', '700', 'https://img.gigatron.rs/img/products/large/image61f94625d69fe.png ', 'Laptops', 'Dell', 'FEATURED', 'Dell', '3', '49164946', NULL, NULL),
(12, 'DELL Vostro 3510 NOT18571', '900', '850', 'https://img.gigatron.rs/img/products/large/image616ea4ae48642.png', 'Laptops', 'Dell', 'FEATURED', 'Dell', '4', '949269', NULL, NULL),
(13, 'LG TV 55NANO883PB SMART', '1200', '1000', 'https://img.gigatron.rs/img/products/large/59b914e7b8b4ea430b9feb63279e9ff9.png', 'TV', 'LG', 'NEW', 'LG', '5', '4945619', NULL, NULL),
(14, 'LG TV 86NANO913PA SMART', '1100', '900', 'https://img.gigatron.rs/img/products/large/61c46dd459470dd5801399fe4eed5369.png', 'TV', 'LG', 'FEATURED', 'LG', '5', '499184', NULL, NULL),
(15, 'SAMSUNG TV Neo QE65QN900ATXXH SMART', '600', '500', 'https://img.gigatron.rs/img/products/large/31e0075e64e460f39a70708a78fd48c0.png', 'TV', 'Samsung', 'FEATURED', 'Samsung', '5', '489816', NULL, NULL),
(16, 'SAMSUNG TV 75TU7022 UST2 SMART', '400', '350', 'https://img.ep-cdn.com/i/500/500/om/omknufrdbehsicqlzayv/samsung-ue75tu7022kxxh-smart-4k-ultra-hd-televizor-cene.webp', 'TV', 'Samsung', 'NEW', 'Samsung', '4', '9619896', NULL, NULL),
(17, 'FOX TV 65WOS600A SMART', '900', '700', 'https://img.gigatron.rs/img/products/large/FOX-Televizor-65WOS600A-SMART-100.png', 'TV', 'Fox', 'FEATURED', 'Fox', '4', '49499', NULL, NULL),
(18, 'FOX TV 42DLE668 SMART', '900', '600', 'https://img.gigatron.rs/img/products/large/FOX-Televizor-42DLE668-SMART-41.png', 'TV', 'Fox', 'COLLECTION', 'Fox', '5', '4984169', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `product_name`, `reviewer_name`, `reviewer_photo`, `reviewer_rating`, `reviewer_comments`, `created_at`, `updated_at`) VALUES
(2, 1, 'APPLE iPhone 12 Mini 64GB Black MGDX3SE/A', 'Marija', '', '5', 'Savršen telefon za studente!', NULL, NULL),
(3, 1, 'APPLE iPhone 12 Mini 64GB Black MGDX3SE/A', 'Iva', '', '3', 'Moj je prestao da radi nakon 8 meseci! Užas.', NULL, NULL),
(4, 11, 'DELL Vostro 3510 NOT19056', 'Marija', '', '5', 'Odličan laptop za studentske potrebe!', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('116PsoDFBFp75EwvmOoJ96z8lKoyxwwVwwzOfO8U', NULL, '127.0.0.1', 'PostmanRuntime/7.29.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2pMZ3ZtazFVcUQwY01SNEdPOXBqYTlDd2F0NjdsN3MzNVNmdjREMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1644769863),
('bFDGnJYqzgEMqPhKJsNxiQezTrfQr4Nz40YVpq3P', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGpTbU9WSDAxWm9WVXBjR1JhMnI4b0FtR2tuZUxXWUFmSjFEd0J5QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1688067075),
('CI0F8ojv42paE119pZKsD32Fa7Fem0bzffJktiCv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEQwNEtja0ZXaGF1Nm54d29NVTNqak53Q2dVeG51a3NFRnJGQTB2QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1688062197);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refund` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_guide` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `android_app_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ios_app_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `about`, `refund`, `purchase_guide`, `privacy`, `address`, `android_app_link`, `ios_app_link`, `facebook_link`, `instagram_link`, `twitter_link`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, '<h6>Projekat iz ITEH-a</h6>\r\n<br>\r\n<br>\r\n<p>Marija</p>\r\n<p>Marija</p>\r\n<p>Iva</p>', '<h4>Politika povraćaja novca</h4>\r\n\r\n<p>Dobra politika povraćaja novca ili zamene može pomoći u zaštiti vaše kompanije i osvojiti poverenje vaših kupaca, ali važno je da vaš jezik bude jasan i sažet. Naš predložak politike povraćaja može vam pomoći da jednostavno generišete profesionalnu politiku spremnu za upotrebu za povraćaj novca ili zamenu.</p>\r\n\r\n<p>Unesite svoje podatke u donji generator politike povraćaja i poslaćemo vam besplatnu prilagođenu politiku za vašu kompaniju putem e-pošte.</p>', '<h4>Vodič za kupovinu</h4>\r\n\r\n<p>Da li kupujete svoj mobilni telefon odmah ili ga uzimate na planu i plaćate ga tokom vremena? Odgovor je - zavisi od onoga što želite da kupite. Pogledajte obe opcije i odlučite šta je pravo za vas.</p>\r\n\r\n<ul>\r\n	<li>Plaćanje unapred može vam uštedeti dosta novca na duže staze, pa ako to možete priuštiti, svakako vredi razmotriti.</li>\r\n	<li>Ali ako plaćanje unapred nije opcija, dostupne su brojne opcije postpaid telefonskih planova.</li>\r\n	<li>Ako se odlučite za opciju plana za mobilni telefon, iznos koji ćete na kraju platiti će varirati u zavisnosti od pojedinačnog ugovora i načina na koji koristite telefon.</li>\r\n</ul>', '<h3>Politika privatnosti</h3>\r\n<p>Na Webshop-u, dostupnom na adresi www.webshop.com, jedan od naših glavnih prioriteta je privatnost naših posetilaca. Ovaj dokument Politike privatnosti sadrži vrste informacija koje se prikupljaju i beleže od strane Webshop-a, kao i način na koji se te informacije koriste.</p>\r\n<p>Ako imate dodatna pitanja ili želite više informacija o našoj Politici privatnosti, slobodno nas kontaktirajte.</p>\r\n<p>Ova Politika privatnosti se odnosi samo na naše online aktivnosti i važi za posetioce naše veb stranice u vezi sa informacijama koje su podelili i/ili prikupili na Webshop-u. Ova politika se ne odnosi na informacije prikupljene offline ili putem drugih kanala osim ove veb stranice. Naša Politika privatnosti je kreirana uz pomoć&nbsp;<a href=\"https://www.privacypolicygenerator.info/\">Besplatnog generatora Politike privatnosti</a>.</p>\r\n<h2>Saglasnost</h2>\r\n<p>Korišćenjem naše veb stranice, ovim putem dajete svoju saglasnost našoj Politici privatnosti i slažete se sa njenim uslovima.</p>\r\n<h2>Informacije koje prikupljamo</h2>\r\n<p>Lične informacije koje od vas tražimo, kao i razlozi zbog kojih vam tražimo te informacije, biće vam jasno navedeni u trenutku kada vas zamolimo da pružite svoje lične informacije.</p>\r\n<p>Ako nas direktno kontaktirate, možemo primiti dodatne informacije o vama, kao što su vaše ime, e-adresa, broj telefona, sadržaj poruke i/ili prilozi koje nam možete poslati, kao i bilo koje druge informacije koje odlučite da pružite.</p>\r\n<p>Kada se registrujete za nalog, možemo zatražiti vaše kontakt informacije, uključujući stavke kao što su ime, naziv kompanije, adresa, e-adresa i broj telefona.</p>\r\n<h2>Kako koristimo vaše informacije</h2>\r\n<p>Informacije koje prikupljamo koristimo na različite načine, uključujući:</p>\r\n<ul>\r\n	<li>Pružanje, održavanje i upravljanje našom veb stranicom</li>\r\n	<li>Poboljšanje, personalizacija i proširenje naše veb stranice</li>\r\n	<li>Razumevanje i analiziranje načina na koji koristite našu veb stranicu</li>\r\n	<li>Razvijanje novih proizvoda, usluga, funkcionalnosti i mogućnosti</li>\r\n	<li>Komunikacija s vama, bilo direktno ili preko naših partnera, uključujući korisničku podršku, slanje ažuriranja i drugih informacija vezanih za veb stranicu, kao i u marketinške i promotivne svrhe</li>\r\n	<li>Slanje e-pošte</li>\r\n	<li>Pronalaženje i sprečavanje prevare</li>\r\n</ul>\r\n<h2>Zapisnici (Log fajlovi)</h2>\r\n<p>Webshop koristi standardne postupke korišćenja zapisnika (log fajlova). Ovi fajlovi beleže posetioce prilikom posete veb stranicama. Svi provajderi hosting usluga to rade, kao deo analitike hosting usluga. Informacije koje se prikupljaju zapisima (log fajlovima) obuhvataju internet protokolne (IP) adrese, vrstu pregledača, internet provajdera (ISP), datum i vreme, referentne/izlazne stranice i moguće brojeve klikova. Ove informacije nisu povezane sa bilo kojim informacijama koje su lično identifikovane. Svrha ovih informacija je analiza trendova, upravljanje veb stranicom, praćenje kretanja korisnika na veb stranici i prikupljanje demografskih informacija.</p>\r\n<h2>Kolačići i web-bake (Web Beacons)</h2>\r\n<p>Kao i svaka druga veb stranica, Webshop koristi \'kolačiće\' (cookies). Ovi kolačići se koriste za skladištenje informacija, uključujući preferencije posetilaca i stranice na veb stranici koje je posetilac posetio ili pristupio. Informacije se koriste za optimizaciju korisničkog iskustva prilagođavanjem sadržaja naše veb stranice na osnovu pregledača posetilaca i/ili drugih informacija.</p>\r\n<p>Za više opštih informacija o kolačićima, molimo pročitajte&nbsp;<a href=\"https://www.generateprivacypolicy.com/#cookies\">članak o kolačićima na veb stranici Generate Privacy Policy</a>.</p>\r\n<h2>Google DoubleClick DART kolačić</h2>\r\n<p>Google je jedan od trećih pružalaca usluga na našoj veb stranici. Takođe koristi kolačiće, poznate kao DART kolačići, kako bi prikazao reklame posetiocima naše veb stranice na osnovu njihove posete www.website.com i drugih stranica na internetu. Međutim, posetioci mogu odlučiti da odbiju upotrebu DART kolačića posetom Politici privatnosti za oglase i sadržaj Google mreže na sledećem URL-u -&nbsp;<a href=\"https://policies.google.com/technologies/ads\">https://policies.google.com/technologies/ads</a></p>\r\n<h2>Naši partneri za oglašavanje</h2>\r\n<p>Neke oglašivačke kompanije na našoj veb stranici mogu koristiti kolačiće i web-bejkonse. Naši partneri za oglašavanje su navedeni u nastavku. Svaki od njih ima sopstvenu Politiku privatnosti koja se odnosi na podatke korisnika. Radi lakšeg pristupa, pružili smo veze do njihovih Politika privatnosti ispod.</p>\r\n<ul>\r\n	<li>\r\n	<p>Google</p>\r\n<p><a href=\"https://policies.google.com/technologies/ads\">https://policies.google.com/technologies/ads</a></p>\r\n</li>\r\n</ul>\r\n<h2>Politike privatnosti oglašivačkih partnera</h2>\r\n<p>Možete da konsultujete ovu listu kako biste pronašli Politiku privatnosti za svakog od oglašivačkih partnera Webshopa.</p>\r\n<p>Treća strana (ad serveri ili ad mreže) koristi tehnologije kao što su kolačići, JavaScript ili web-bejkonse koje se koriste u njihovim odgovarajućim oglasima i vezama koje se pojavljuju na Webshopu, a koje se direktno šalju korisničkim pregledačima. One automatski primaju vašu IP adresu kada se to dogodi. Ove tehnologije koriste se za merenje efikasnosti njihovih reklamnih kampanja i/ili personalizaciju reklamnog sadržaja koji vidite na veb stranicama koje posećujete.</p>\r\n<p>Napomena: Webshop nema pristup ili kontrolu nad ovim kolačićima koji se koriste od strane oglašivača treće strane.</p>\r\n<h2>Politike privatnosti trećih strana</h2>\r\n<p>Politika privatnosti Webshopa ne odnosi se na druge oglašivače ili veb stranice. Stoga vam savetujemo da konsultujete odgovarajuće Politike privatnosti tih trećih strana koje se odnose na oglašivače radi detaljnijih informacija. To može uključivati njihove postupke i uputstva o tome kako odabrati opcije za odjavu iz određenih opcija.</p>\r\n<p>Možete odabrati da onemogućite kolačiće putem opcija u vašem pregledaču. Da biste saznali više detalja o upravljanju kolačićima putem određenih veb pregledača, možete posetiti veb stranice relevantnih pregledača.</p>\r\n<h2>Prava privatnosti prema CCPA (Ne prodajte moje lične podatke)</h2>\r\n<p>U skladu sa CCPA zakonom, kalifornijski potrošači imaju pravo na:</p>\r\n<p>Zahtevanje od poslovnika da otkrije koje lične podatke otkrivaju o određenom korisniku i/ili njegovoj domaćinstvu za poslovne svrhe, kao i da ne prodaju njegove lične podatke. U ovom trenutku, Webshop ne otkriva lične podatke trećoj strani u svrhe marketinškog delovanja.</p>\r\n<p>Ako želite da se saznate više o ovim pravima i kako ih možete izvršiti, ili ako želite da obrišete svoje lične podatke sa naših sistema, molimo da nas kontaktirate.</p>\r\n<h2>Prava na GDPR</h2>\r\n<p>Mi bi smo želeli da se u potpunosti pridržavamo vaših prava na GDPR. Zato imate pravo da pristupite svojim ličnim podacima, ispravite ih, izbrišete ih ili ograničite njihovu obradu, kao i pravo na prenos podataka. Ako smatrate da je obrada vaših ličnih podataka suprotna zakonu o zaštiti podataka, imate pravo podneti žalbu nadzornom organu za zaštitu podataka u vašoj zemlji prebivališta. Kontaktirajte nas za ostvarivanje ovih prava.</p>\r\n<h2>Dopunski podaci o obradi</h2>\r\n<p>Logika odlučivanja</p>\r\n<p>Webshop obrađuje vaše podatke na zakoniti način i zadržava ih samo dok je to potrebno za svrhe za koje su prikupljeni.</p>\r\n<p>Pravni osnov obrade ličnih podataka</p>\r\n<p>Webshop može obraditi vaše lične podatke iz sledećeg razloga:</p>\r\n<ul>\r\n	<li>Izvršenje ugovora s vama</li>\r\n	<li>Obrađivanje vaših ličnih podataka je neophodno za izvršenje ugovora s vama i/ili preduzimanje koraka na vaš zahtev pre sklapanja ugovora.</li>\r\n	<li>Pravna obaveza</li>\r\n	<li>Obrada vaših ličnih podataka je neophodna za ispunjenje pravne obaveze kojoj je Webshop podložan.</li>\r\n	<li>Pravilan interes</li>\r\n	<li>Obrada vaših ličnih podataka je neophodna za ostvarivanje legitmnih interesa Webshopa ili treće strane.</li>\r\n</ul>\r\n<p>Interes da Webshopa je pružanje, održavanje i poboljšanje usluga koje pružamo našim posetiocima.</p>\r\n<p>Način skladištenja podataka</p>\r\n<p>Vaši podaci se čuvaju u sigurnom okruženju i čuvaju se samo onoliko dugo koliko je to potrebno za pružanje usluga za koje ste ih pružili.</p>\r\n<p>Transfer podataka</p>\r\n<p>Informacije koje prikupljamo mogu biti prenete izvan vaše zemlje ili regiona naše lokacije i čuvane na serverima koje poseduju treće strane. Ako se nalazite izvan Sjedinjenih Američkih Država i izaberete da nam pružite informacije, imajte na umu da ćemo preneti podatke, uključujući lične podatke, u Sjedinjene Američke Države radi obrade u skladu sa Politikom privatnosti.</p>\r\n<p>Vaš pristanak na ovu Politiku privatnosti, praćenje vašeg pristanka i povlačenje pristanka</p>\r\n<p>Primenom naših veb stranica, slažete se s ovom Politikom privatnosti. Prikupljanje i korišćenje vaših ličnih podataka može se menjati ili dopunjavati u skladu s ovom Politikom privatnosti.</p>\r\n<p>Ako odlučite da promenite svoj pristanak u bilo koje vreme, možete nas obavestiti kontaktiranjem nas putem e-pošte na adresu koja se nalazi u donjem delu ove Politike privatnosti.</p>\r\n<p>Pridržavamo se svih prava korisnika u pogledu ličnih podataka u skladu sa važećim zakonima o zaštiti podataka.</p>\r\n<p>Ova Politika privatnosti se primenjuje samo na našu veb stranicu i važeće je samo u vezi s informacijama koje smo prikupili putem ove veb stranice.</p>\r\n<p>Ova Politika privatnosti nije primenjiva na informacije prikupljene offline ili putem drugih kanala osim ove veb stranice.</p>\r\n<h2>Kontakt informacije</h2>\r\n<p>Ako imate bilo kakva pitanja ili nedoumice u vezi s našom Politikom privatnosti, molimo vas da nas kontaktirate putem e-pošte na adresu koja se nalazi u donjem delu ove Politike privatnosti.</p>', '<h6> Jove Ilica 154, Beograd, Srbija <br />\r\nEmail: projekat@iteh.com</h6>', 'http://localhost:3000/android', 'http://localhost:3000/ios', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.twitter.com/', '© Copyright 2023 /// Marija, Marija, Iva. All Rights Reserved. ©ITEH Projekat - Web Prodavnica.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_name`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(24, 'Phones', 'Apple', NULL, NULL),
(25, 'Phones', 'Samsung', NULL, NULL),
(26, 'Phones', 'Huawei', NULL, NULL),
(27, 'Laptops', 'Lenovo', NULL, NULL),
(28, 'Laptops', 'Acer', NULL, NULL),
(29, 'Laptops', 'Dell', NULL, NULL),
(30, 'TV', 'LG', NULL, NULL),
(31, 'TV', 'Samsung', NULL, NULL),
(32, 'TV', 'Fox', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Marija', 'marija@gmail.com', NULL, '$2y$10$ow7vKY/0LgQgGh.l5r3eHe1xu/IeoZyxcTLBApRA/abUbyimCCq3O', NULL, NULL, NULL, NULL, NULL, '2023-06-29 15:58:38', '2023-06-29 15:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_adress`, `visit_time`, `visit_date`, `created_at`, `updated_at`) VALUES
(327, '127.0.0.1', '06:28:06am', '30-06-2023', NULL, NULL),
(328, '127.0.0.1', '06:28:43am', '30-06-2023', NULL, NULL),
(329, '127.0.0.1', '06:28:55am', '30-06-2023', NULL, NULL),
(330, '127.0.0.1', '06:29:05am', '30-06-2023', NULL, NULL),
(331, '127.0.0.1', '06:29:09am', '30-06-2023', NULL, NULL),
(332, '127.0.0.1', '06:29:17am', '30-06-2023', NULL, NULL),
(333, '127.0.0.1', '06:33:09am', '30-06-2023', NULL, NULL),
(334, '127.0.0.1', '06:37:46am', '30-06-2023', NULL, NULL),
(335, '127.0.0.1', '06:37:55am', '30-06-2023', NULL, NULL),
(336, '127.0.0.1', '06:38:07am', '30-06-2023', NULL, NULL),
(337, '127.0.0.1', '06:40:07am', '30-06-2023', NULL, NULL),
(338, '127.0.0.1', '06:43:26am', '30-06-2023', NULL, NULL),
(339, '127.0.0.1', '06:44:40am', '30-06-2023', NULL, NULL),
(340, '127.0.0.1', '06:56:43am', '30-06-2023', NULL, NULL),
(341, '127.0.0.1', '06:57:52am', '30-06-2023', NULL, NULL),
(342, '127.0.0.1', '06:58:07am', '30-06-2023', NULL, NULL),
(343, '127.0.0.1', '06:59:04am', '30-06-2023', NULL, NULL),
(344, '127.0.0.1', '07:08:19am', '30-06-2023', NULL, NULL),
(345, '127.0.0.1', '07:14:33am', '30-06-2023', NULL, NULL),
(346, '127.0.0.1', '07:28:35am', '30-06-2023', NULL, NULL),
(347, '127.0.0.1', '07:31:21am', '30-06-2023', NULL, NULL),
(348, '127.0.0.1', '07:32:52am', '30-06-2023', NULL, NULL),
(349, '127.0.0.1', '07:32:57am', '30-06-2023', NULL, NULL),
(350, '127.0.0.1', '07:33:47am', '30-06-2023', NULL, NULL),
(351, '127.0.0.1', '07:33:53am', '30-06-2023', NULL, NULL),
(352, '127.0.0.1', '07:34:09am', '30-06-2023', NULL, NULL),
(353, '127.0.0.1', '08:04:17am', '30-06-2023', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_orders`
--
ALTER TABLE `cart_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_lists`
--
ALTER TABLE `product_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_orders`
--
ALTER TABLE `cart_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_lists`
--
ALTER TABLE `product_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
