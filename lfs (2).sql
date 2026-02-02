-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 02, 2026 at 06:35 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lfs`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int UNSIGNED NOT NULL,
  `transaction` char(36) NOT NULL,
  `type` varchar(7) NOT NULL,
  `primary_key` int UNSIGNED DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `parent_source` varchar(255) DEFAULT NULL,
  `original` mediumtext,
  `changed` mediumtext,
  `meta` mediumtext,
  `status` int NOT NULL DEFAULT '1',
  `slug` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `transaction`, `type`, `primary_key`, `source`, `parent_source`, `original`, `changed`, `meta`, `status`, `slug`, `created`) VALUES
(1, '86619298-ceea-42b5-be94-2b368012bf8f', 'create', 1, 'items', NULL, '[]', '{\"id\":1,\"user_id\":1,\"name\":\"q\",\"item_category\":\"q\",\"status\":\"pending\",\"image\":\"Haven Trifold Wallet _ Full grain leather, compact organization, Leatherology Black Onyx.jpg\",\"image_dir\":\"webroot\\\\files\\\\Items\\\\image\\\\\",\"brand\":\"q\",\"color\":\"q\",\"lost_found_category\":\"q\",\"lost_found_date\":\"2026-01-16\",\"description\":\"\",\"location\":\"q\",\"unique_mark\":\"q\"}', '{\"a_name\":\"Add\",\"c_name\":\"Items\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/lfs\\/items\\/add\",\"slug\":1}', 1, NULL, '2026-01-24 01:46:21'),
(2, '9aafa3ec-d722-418e-9d45-b732020aa23a', 'create', 2, 'items', NULL, '[]', '{\"id\":2,\"user_id\":1,\"name\":\"sakinah\",\"item_category\":\"wallet\",\"status\":\"retrieved\",\"image\":\"STUDY WEEK.png\",\"image_dir\":\"webroot\\\\files\\\\Items\\\\image\\\\\",\"brand\":\"apple\",\"color\":\"purple\",\"lost_found_category\":\"\",\"description\":\"\",\"location\":\"\",\"unique_mark\":\"\"}', '{\"a_name\":\"Add\",\"c_name\":\"Items\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/lfs\\/items\\/add\",\"slug\":1}', 1, NULL, '2026-01-26 22:15:48'),
(3, 'd0ede061-45e1-4c27-9d5f-65d43f6e4958', 'update', 2, 'items', NULL, '{\"lost_found_category\":\"\",\"lost_found_date\":null,\"description\":\"\",\"location\":\"\",\"unique_mark\":\"\"}', '{\"lost_found_category\":\"lost\",\"lost_found_date\":\"2026-01-26\",\"description\":\"wallet is small, as big as the palm\",\"location\":\"In front of Uniqlo Setia City Mall\",\"unique_mark\":\"Zus Ong Sticker\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Items\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/lfs\\/items\\/edit\\/2\",\"slug\":1}', 1, NULL, '2026-01-26 22:17:51'),
(4, '42186f49-6f11-4090-9e64-f7b851d86f62', 'create', 3, 'items', NULL, '[]', '{\"id\":3,\"user_id\":1,\"name\":\"balqis\",\"item_category\":\"watch\",\"status\":\"approved\",\"image_dir\":\"\",\"brand\":\"apple\",\"color\":\"matte black\",\"lost_found_category\":\"found\",\"description\":\"blue white wrist band\",\"location\":\"near ampang park\",\"unique_mark\":\"have a little scratch behing the watch\"}', '{\"a_name\":\"Add\",\"c_name\":\"Items\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/lfs\\/items\\/add\",\"slug\":1}', 1, NULL, '2026-01-28 05:37:17'),
(5, 'a3c1ec12-8f15-49ef-b18c-284cd64a4266', 'create', 4, 'items', NULL, '[]', '{\"id\":4,\"user_id\":1,\"name\":\"naziera\",\"item_category\":\"totebag\",\"status\":\"approved\",\"image_dir\":\"\",\"brand\":\"gentle women\",\"color\":\"blue\",\"lost_found_category\":\"found\",\"description\":\"\",\"location\":\"near toilet next to pandora\",\"unique_mark\":\"have my name sewed on it\"}', '{\"a_name\":\"Add\",\"c_name\":\"Items\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/lfs\\/items\\/add?type=found\",\"slug\":1}', 1, NULL, '2026-01-28 07:42:15'),
(6, '5e00b979-2bc6-41dd-ac6c-d3e2d31dd7ea', 'create', 5, 'items', NULL, '[]', '{\"id\":5,\"user_id\":1,\"name\":\"husna\",\"item_category\":\"bottle\",\"status\":\"active\",\"image\":\"Owala Disney Princess FreeSip Insulated Stainless Steel Water Bottle BPA-Free 24 oz.jpg\",\"image_dir\":\"webroot\\\\files\\\\Items\\\\image\\\\\",\"brand\":\"owala montigo\",\"color\":\"bluee\",\"lost_found_category\":\"lost\",\"description\":\"have my name craved on it\",\"location\":\"at the foodcourt \",\"unique_mark\":\"-\"}', '{\"a_name\":\"Add\",\"c_name\":\"Items\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/lfs\\/items\\/add?type=lost\",\"slug\":1}', 1, NULL, '2026-01-28 07:46:17'),
(7, 'c8a38396-cf76-40a8-9c4c-9a1e8fda667e', 'create', 6, 'items', NULL, '[]', '{\"id\":6,\"user_id\":1,\"name\":\"ikan\",\"item_category\":\"sdfs\",\"status\":\"pending\",\"image_dir\":\"\",\"brand\":\"sfeffsfef\",\"color\":\"efef\",\"lost_found_category\":\"ewfw\",\"lost_found_date\":\"2026-01-28\",\"description\":\"sefe\",\"location\":\"sefsefsfsf\",\"unique_mark\":\"fsfsf\"}', '{\"a_name\":\"Add\",\"c_name\":\"Items\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/lfs\\/items\\/add?type=lost\",\"slug\":1}', 1, NULL, '2026-01-28 18:23:55'),
(8, '0a607f44-38e5-499a-839a-8fa41e29cf95', 'create', 7, 'items', NULL, '[]', '{\"id\":7,\"user_id\":1,\"name\":\"efwferret\",\"item_category\":\"tw4tt\",\"status\":\"pending\",\"image\":\"cherry sticker.jpg\",\"image_dir\":\"webroot\\\\files\\\\Items\\\\image\\\\\",\"brand\":\"te4te4\",\"color\":\"erete\",\"lost_found_category\":\"lost\",\"lost_found_date\":\"2026-01-28\",\"description\":\"fsfs\",\"location\":\"sfkgmler\",\"unique_mark\":\"lf;lr\"}', '{\"a_name\":\"Add\",\"c_name\":\"Items\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/lfs\\/items\\/add?type=lost\",\"slug\":1}', 1, NULL, '2026-01-28 18:25:26'),
(9, '6ac26d0e-b2c7-4d64-b335-aeb7d7236e91', 'create', 8, 'items', NULL, '[]', '{\"id\":8,\"user_id\":1,\"name\":\"rlg,r\",\"item_category\":\"drger\",\"status\":\"pending\",\"image\":\"birthday cat.jpg\",\"image_dir\":\"webroot\\\\files\\\\Items\\\\image\\\\\",\"brand\":\"ergerg\",\"color\":\"egrglot\",\"lost_found_category\":\"lost\",\"lost_found_date\":\"2026-01-28\",\"description\":\"sefer\",\"location\":\"grger\",\"unique_mark\":\"gdgtr\"}', '{\"a_name\":\"Add\",\"c_name\":\"Items\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/lfs\\/items\\/add?type=lost\",\"slug\":1}', 1, NULL, '2026-01-28 18:26:20'),
(10, '44122e14-326a-4672-9511-27a147e91208', 'create', 9, 'items', NULL, '[]', '{\"id\":9,\"user_id\":1,\"name\":\"srfsrf\",\"item_category\":\"sfsf\",\"status\":\"pending\",\"image\":\"Dino (1).jpg\",\"image_dir\":\"webroot\\\\files\\\\Items\\\\image\\\\\",\"brand\":\"vddgrd\",\"color\":\"fdvdrgdr\",\"lost_found_category\":\"lost\",\"lost_found_date\":\"2026-01-30\",\"description\":\"sefsf\",\"location\":\"ssfs\",\"unique_mark\":\"sfvsdrgrd\"}', '{\"a_name\":\"Add\",\"c_name\":\"Items\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/lfs\\/items\\/add?type=lost\",\"slug\":1}', 1, NULL, '2026-01-28 19:01:11'),
(11, 'e8b877a9-d920-4d6b-aa65-5b45fae3873c', 'create', 1, 'items', NULL, '[]', '{\"id\":1,\"user_id\":1,\"name\":\"iPhone 13\",\"item_category\":\"gadget\",\"status\":\"pending\",\"image\":\"download.jpg\",\"image_dir\":\"webroot\\\\files\\\\Items\\\\image\\\\\",\"brand\":\"Iphone\",\"color\":\"light pink\",\"lost_found_category\":\"lost\",\"lost_found_date\":\"2026-01-14\",\"description\":\"my phone case design is an image of a cat\",\"location\":\"toilet next to pandora\",\"unique_mark\":\"have a cracked screen\"}', '{\"a_name\":\"Add\",\"c_name\":\"Items\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/lfs\\/items\\/add?type=lost\",\"slug\":1}', 1, NULL, '2026-01-28 21:14:29'),
(12, '53cc7c1d-33a8-4410-863b-e9f2358e5dd2', 'create', 2, 'items', NULL, '[]', '{\"id\":2,\"user_id\":1,\"name\":\"Headphone\",\"item_category\":\"electronic devices \",\"status\":\"active\",\"image\":\"sony wh1000xm4 headphones _ best headphones.jpg\",\"image_dir\":\"webroot\\\\files\\\\Items\\\\image\\\\\",\"brand\":\"sony\",\"color\":\"black-grey\",\"lost_found_category\":\"lost\",\"lost_found_date\":\"2026-01-26\",\"description\":\"-\",\"location\":\"bench near gate A maindoor\",\"unique_mark\":\"name engravings\"}', '{\"a_name\":\"Add\",\"c_name\":\"Items\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/lfs\\/items\\/add?type=lost\",\"slug\":1}', 1, NULL, '2026-01-28 21:29:54'),
(13, '058bdfee-31c1-45f6-bdd3-a5be7b5d228a', 'create', 3, 'items', NULL, '[]', '{\"id\":3,\"user_id\":1,\"name\":\"Bunny\",\"item_category\":\"toys\",\"status\":\"pending\",\"image\":\"Valerie _ Bashful Bunny.jpg\",\"image_dir\":\"webroot\\\\files\\\\Items\\\\image\\\\\",\"brand\":\"jelly cat\",\"color\":\"white\\/cream\",\"lost_found_category\":\"found\",\"lost_found_date\":\"2026-01-24\",\"description\":\"have a pink ribbon tie around the ears\",\"location\":\"nursery room level 2\",\"unique_mark\":\"-\"}', '{\"a_name\":\"Add\",\"c_name\":\"Items\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/lfs\\/items\\/add?type=found\",\"slug\":1}', 1, NULL, '2026-01-28 21:48:27'),
(14, 'b623731b-6ee1-4300-ac18-cb5987bd24e7', 'create', 4, 'items', NULL, '[]', '{\"id\":4,\"user_id\":1,\"name\":\"scarves\",\"item_category\":\"personal items\",\"status\":\"pending\",\"image\":\"Scarf for Women - Winter Scarf for Women Fashion Cashmere Feel Plaid Scarfs for Women.jpg\",\"image_dir\":\"webroot\\\\files\\\\Items\\\\image\\\\\",\"brand\":\"-\",\"color\":\"brown\",\"lost_found_category\":\"found\",\"lost_found_date\":\"2026-01-08\",\"description\":\"-\",\"location\":\"near the parking lot at level B1\",\"unique_mark\":\"embroidered letter \'N\'\"}', '{\"a_name\":\"Add\",\"c_name\":\"Items\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/lfs\\/items\\/add?type=found\",\"slug\":1}', 1, NULL, '2026-01-28 21:53:13'),
(15, 'a671b5b7-e0c8-46c1-8497-9e684d5bde1a', 'create', 5, 'items', NULL, '[]', '{\"id\":5,\"user_id\":1,\"name\":\"key\",\"item_category\":\"accessories\",\"status\":\"pending\",\"image\":\"Key to happiness.jpg\",\"image_dir\":\"webroot\\\\files\\\\Items\\\\image\\\\\",\"brand\":\"-\",\"color\":\"silver\",\"lost_found_category\":\"lost\",\"lost_found_date\":\"2026-01-27\",\"description\":\"have a pink color keychain pattern of a house,mushroom, and flower\",\"location\":\"near the escalator next to fipper\",\"unique_mark\":\"-\"}', '{\"a_name\":\"Add\",\"c_name\":\"Items\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/lfs\\/items\\/add?type=lost\",\"slug\":1}', 1, NULL, '2026-01-28 21:59:32'),
(16, 'e41e583c-34be-4208-990b-6e28a67a05cd', 'update', 1, 'items', NULL, '{\"item_category\":\"gadget\"}', '{\"item_category\":\"electronic devices \"}', '{\"a_name\":\"Edit\",\"c_name\":\"Items\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/lfs\\/items\\/edit\\/1?type=lost\",\"slug\":1}', 1, NULL, '2026-01-28 22:05:10'),
(17, 'a5ed1800-a1c3-4bd2-847c-832b9f76127e', 'create', 6, 'items', NULL, '[]', '{\"id\":6,\"user_id\":1,\"name\":\"ring\",\"item_category\":\"accessories\",\"status\":\"pending\",\"image\":\"Pandora Anello Solitario Stella Celeste - Argento Sterling 925 _ Zirconia cubica - Sz_ 60.jpg\",\"image_dir\":\"webroot\\\\files\\\\Items\\\\image\\\\\",\"brand\":\"pandora\",\"color\":\"silver\",\"lost_found_category\":\"lost\",\"lost_found_date\":\"2026-01-28\",\"description\":\"After coming out of the daiso, it still has. After that, I went to McDonald\'s then noticed the ring was gone.\",\"location\":\"level 2 near daiso\",\"unique_mark\":\"-\"}', '{\"a_name\":\"Add\",\"c_name\":\"Items\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/lfs\\/items\\/add?type=lost\",\"slug\":1}', 1, NULL, '2026-01-28 22:53:50');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `ticket` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `note_admin` text,
  `ip` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `is_replied` tinyint(1) NOT NULL,
  `respond_date_time` datetime DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int NOT NULL,
  `category` varchar(100) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `category`, `question`, `answer`, `slug`, `status`, `created`, `modified`) VALUES
(1, 'General', 'General Questions 1', 'General Answer 1', 'General-Questions-1', 1, '2022-11-13 15:41:26', '2022-11-13 16:31:14'),
(2, 'Account', 'Account Questions 1', 'Account Answer 1', 'Account-Questions-1', 1, '2022-11-13 15:43:15', '2022-11-13 15:43:15'),
(3, 'Other', 'Other Questions 1', 'Other Answer 1', 'Other-Questions-1', 1, '2022-11-13 15:43:34', '2022-11-13 15:43:34'),
(6, 'General', 'General Questions 2', 'General Answer 2', 'General-Questions-2', 0, '2022-11-13 16:54:25', '2024-06-25 13:03:08');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `item_category` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `image` varchar(255) NOT NULL,
  `image_dir` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `lost_found_category` varchar(255) NOT NULL,
  `lost_found_date` date NOT NULL,
  `description` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `unique_mark` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `user_id`, `name`, `item_category`, `status`, `image`, `image_dir`, `brand`, `color`, `lost_found_category`, `lost_found_date`, `description`, `location`, `unique_mark`, `created`, `modified`) VALUES
(1, 1, 'iPhone 13', 'electronic devices ', 'pending', 'download.jpg', 'webroot\\files\\Items\\image\\', 'Iphone', 'light pink', 'lost', '2026-01-14', 'my phone case design is an image of a cat', 'toilet next to pandora', 'have a cracked screen', '2026-01-28 21:14:29', '2026-01-28 22:05:10'),
(2, 1, 'Headphone', 'electronic devices ', 'active', 'sony wh1000xm4 headphones _ best headphones.jpg', 'webroot\\files\\Items\\image\\', 'sony', 'black-grey', 'lost', '2026-01-26', '-', 'bench near gate A maindoor', 'name engravings', '2026-01-28 21:29:54', '2026-01-28 21:29:54'),
(3, 1, 'Bunny', 'toys', 'pending', 'Valerie _ Bashful Bunny.jpg', 'webroot\\files\\Items\\image\\', 'jelly cat', 'white/cream', 'found', '2026-01-24', 'have a pink ribbon tie around the ears', 'nursery room level 2', '-', '2026-01-28 21:48:27', '2026-01-28 21:48:27'),
(4, 1, 'scarves', 'personal items', 'pending', 'Scarf for Women - Winter Scarf for Women Fashion Cashmere Feel Plaid Scarfs for Women.jpg', 'webroot\\files\\Items\\image\\', '-', 'brown', 'found', '2026-01-08', '-', 'near the parking lot at level B1', 'embroidered letter \'N\'', '2026-01-28 21:53:13', '2026-01-28 21:53:13'),
(5, 1, 'key', 'accessories', 'pending', 'Key to happiness.jpg', 'webroot\\files\\Items\\image\\', '-', 'silver', 'lost', '2026-01-27', 'have a pink color keychain pattern of a house,mushroom, and flower', 'near the escalator next to fipper', '-', '2026-01-28 21:59:32', '2026-01-28 21:59:32'),
(6, 1, 'ring', 'accessories', 'pending', 'Pandora Anello Solitario Stella Celeste - Argento Sterling 925 _ Zirconia cubica - Sz_ 60.jpg', 'webroot\\files\\Items\\image\\', 'pandora', 'silver', 'lost', '2026-01-28', 'After coming out of the daiso, it still has. After that, I went to McDonald\'s then noticed the ring was gone.', 'level 2 near daiso', '-', '2026-01-28 22:53:50', '2026-01-28 22:53:50');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int DEFAULT NULL,
  `lft` int DEFAULT NULL,
  `rght` int DEFAULT NULL,
  `level` int DEFAULT '0',
  `icon` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `auth` tinyint(1) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `divider_before` tinyint(1) DEFAULT '0',
  `parent_separator` tinyint(1) DEFAULT NULL,
  `division` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `lft`, `rght`, `level`, `icon`, `controller`, `action`, `target`, `name`, `url`, `prefix`, `auth`, `admin`, `active`, `disabled`, `divider_before`, `parent_separator`, `division`) VALUES
(1, NULL, 1, 2, 0, '<i class=\"fa-solid fa-code\"></i>', 'Dashboards', 'Index', NULL, 'Dashboard', '', '', 1, 0, 1, 0, 0, 0, 0),
(2, NULL, 3, 4, 0, '<i class=\"fa-regular fa-circle-question\"></i>', 'Faqs', '', NULL, 'FAQs', '', '', 0, 0, 1, 0, 0, NULL, 0),
(3, NULL, 5, 6, 0, '<i class=\"fa-regular fa-message\"></i>', 'Contacts', 'Add', NULL, 'Contact Us', '', '', 0, 0, 1, NULL, 0, NULL, 0),
(4, NULL, 7, 14, 0, '<i class=\"fa-solid fa-circle-info\"></i>', 'Pages', 'manual', NULL, 'Documentation', '', '', 0, 0, 1, 0, 0, 1, 0),
(5, NULL, 15, 16, 0, '', '', '', NULL, 'Administrator', '', NULL, 0, 1, 1, NULL, 0, NULL, 1),
(6, NULL, 17, 18, 0, '<i class=\"fa-solid fa-gear\"></i>', 'Settings', 'Update', 'recrud', 'System Configuration', '', 'Admin', 1, 1, 1, NULL, 0, 0, 0),
(7, NULL, 19, 20, 0, '<i class=\"fa-solid fa-users-viewfinder\"></i>', 'Users', 'Index', NULL, 'User Management', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(8, NULL, 21, 22, 0, '<i class=\"fa-solid fa-bars\"></i>', 'Menus', 'Index', NULL, 'Menu Management', '', 'Admin', 1, 1, 1, NULL, 0, 0, 0),
(9, NULL, 23, 24, 0, '<i class=\"menu-icon fa-solid fa-list-check\"></i>', 'Todos', 'Index', NULL, 'Todo List', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(10, NULL, 25, 26, 0, '<i class=\"fa-regular fa-message\"></i>', 'Contacts', 'Index', NULL, 'Contact', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(11, NULL, 27, 28, 0, '<i class=\"menu-icon fa-solid fa-timeline\"></i>', 'AuditLogs', 'Index', NULL, 'Audit Trail', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(12, NULL, 29, 30, 0, '<i class=\"menu-icon fa-regular fa-circle-question\"></i>', 'Faqs', 'Index', NULL, 'FAQs', '', 'Admin', 1, 1, 1, NULL, 0, 0, 0),
(13, 4, 10, 11, 1, '<i class=\"fa-solid fa-code\"></i>', '', '', NULL, 'Code The Pixel', 'https://codethepixel.com/', '', 0, 0, 1, NULL, 0, 0, 0),
(14, 4, 8, 9, 1, '<i class=\"fa-regular fa-file-code\"></i>', 'Pages', 'manual', NULL, 'User Manual', '', '', 0, 0, 1, NULL, 0, 0, 0),
(15, 4, 12, 13, 1, '<i class=\"fa-brands fa-github\"></i>', '', '', NULL, 'Re-CRUD Github', 'https://github.com/Asyraf-wa/recrud', '', 0, 0, 1, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20241029053753, 'Initial', '2026-01-14 02:45:18', '2026-01-14 02:45:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` char(36) NOT NULL,
  `system_name` varchar(255) NOT NULL,
  `system_abbr` varchar(255) NOT NULL,
  `system_slogan` varchar(255) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  `domain_name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notification_email` varchar(50) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_subject` varchar(255) NOT NULL,
  `meta_copyright` varchar(255) NOT NULL,
  `meta_desc` varchar(255) NOT NULL,
  `timezone` varchar(100) NOT NULL,
  `author` varchar(255) NOT NULL,
  `site_status` tinyint(1) NOT NULL,
  `user_reg` tinyint(1) NOT NULL,
  `config_2` tinyint(1) NOT NULL,
  `config_3` tinyint(1) NOT NULL,
  `version` varchar(255) NOT NULL,
  `private_key_from_recaptcha` varchar(255) DEFAULT NULL,
  `public_key_from_recaptcha` varchar(255) DEFAULT NULL,
  `banned_username` text,
  `telegram_bot_token` varchar(255) DEFAULT NULL,
  `telegram_chatid` varchar(255) DEFAULT NULL,
  `hcaptcha_sitekey` varchar(255) DEFAULT NULL,
  `hcaptcha_secretkey` varchar(255) DEFAULT NULL,
  `notification` text NOT NULL,
  `notification_status` tinyint(1) NOT NULL,
  `notification_date` date DEFAULT NULL,
  `ribbon_title` varchar(20) NOT NULL,
  `ribbon_link` varchar(255) NOT NULL,
  `ribbon_status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `system_name`, `system_abbr`, `system_slogan`, `organization_name`, `domain_name`, `email`, `notification_email`, `meta_title`, `meta_keyword`, `meta_subject`, `meta_copyright`, `meta_desc`, `timezone`, `author`, `site_status`, `user_reg`, `config_2`, `config_3`, `version`, `private_key_from_recaptcha`, `public_key_from_recaptcha`, `banned_username`, `telegram_bot_token`, `telegram_chatid`, `hcaptcha_sitekey`, `hcaptcha_secretkey`, `notification`, `notification_status`, `notification_date`, `ribbon_title`, `ribbon_link`, `ribbon_status`, `created`, `modified`) VALUES
('recrud', 'Code The Pixel', 'Re-CRUD', 'Code The Experiences', 'Code The Pixel Inc.', 'codethepixel.com', 'noreply@codethepixel.com', 'noreply@codethepixel.com', 'Re-CRUD', 'Re-CRUD, CakePHP, Learning, CRUD', 'Re-CRUD', 'Re-CRUD', 'Re-CRUD', 'Asia/Kuala_Lumpur', 'Re-CRUD', 0, 0, 0, 0, '1.1', '', '', NULL, '', '', '', '', '<p><strong>Server maintenance</strong> is scheduled to be executed on Jan 1, 2023, from 1.00 am to 4.00 am. An intermittent connection is expected during the server maintenance period.</p>', 0, '2022-11-07', 'Code The Pixel', 'https://codethepixel.com', 0, '2020-04-08 20:56:04', '2024-07-08 20:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `urgency` varchar(255) NOT NULL COMMENT 'high, medium, low',
  `task` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `note` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending' COMMENT 'Pending, In Progress, Completed, Canceled',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `user_id`, `urgency`, `task`, `description`, `note`, `status`, `created`, `modified`) VALUES
('a02daac9-27e3-49ea-8090-927e60f9e255', '1', 'High', 'task 4 desc', '<p>task 4 desc</p>', '<p>task 4 desc</p>', 'In Progress', '2024-05-31 13:48:26', '2024-05-31 13:48:31'),
('a8618f9e-a3f7-4e7a-8a3f-05a5323cd5af', '1', 'High', 'task 1', '<p>task 1 desc</p>', '<p>task 1 desc</p>', 'Completed', '2024-05-31 13:45:22', '2024-05-31 13:45:40'),
('c892f026-c6f8-4353-82c2-75f49c0f5d6b', '1', 'Medium', 'Task 3 - Develop the To Do Task and render in Dashboard', '<p>task 3 desc</p>', '<p>task 3 desc</p>', 'Pending', '2024-05-31 13:48:06', '2024-05-31 13:48:06'),
('eda46e51-555a-4309-a28b-d0835bf4f4b2', '1', 'Low', 'task 2', '<p>task 2 desc</p>', '<p>task 2 desc</p>', 'Canceled', '2024-05-31 13:46:12', '2024-05-31 13:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `user_group_id` int DEFAULT '3',
  `fullname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `avatar_dir` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_created_at` datetime NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '0' COMMENT '	is_active',
  `is_email_verified` int NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `created_by` int DEFAULT NULL COMMENT 'user_id',
  `modified_by` int DEFAULT NULL COMMENT 'user_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_group_id`, `fullname`, `password`, `email`, `avatar`, `avatar_dir`, `token`, `token_created_at`, `status`, `is_email_verified`, `last_login`, `ip_address`, `slug`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(1, 1, 'Administrator', '$2y$10$OrUKHzNQUic6dFqSuG9QBeDzMbbwPz1BQXKgBKPcQyMTNdv3Z22xe', 'admin@localhost.com', '', '', NULL, '2024-07-10 20:30:04', '1', 1, '2026-01-14 10:45:35', '::1', 'Administrator', '2022-10-26 02:54:19', '2024-07-08 21:08:15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'Admin', 'Admninistrator', '2021-01-23 13:21:29', '2021-01-23 13:21:29'),
(2, 'Mod', 'Moderator', '2021-01-23 13:21:29', '2021-01-23 13:21:29'),
(3, 'User', 'Normal User', '2021-01-23 13:21:29', '2021-01-23 13:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `useragent` varchar(256) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `status` int DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`id`, `user_id`, `action`, `useragent`, `os`, `ip`, `host`, `referrer`, `status`, `created`, `modified`) VALUES
(1, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'Asyraf-S14', NULL, 1, '2026-01-14 10:45:35', '2026-01-14 10:45:35'),
(2, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'build 26100 (Windows 11)', '::1', 'Asyraf-S14', 'http://localhost/lfs/items', 1, '2026-01-14 10:48:22', '2026-01-14 10:48:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction` (`transaction`),
  ADD KEY `type` (`type`),
  ADD KEY `primary_key` (`primary_key`),
  ADD KEY `source` (`source`),
  ADD KEY `parent_source` (`parent_source`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lft` (`lft`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
