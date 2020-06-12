-- Adminer 4.7.7 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `ornekler`;
CREATE DATABASE `ornekler` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci */;
USE `ornekler`;

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `city_name` varchar(250) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

TRUNCATE `city`;
INSERT INTO `city` (`city_id`, `state_id`, `city_name`) VALUES
(1, 1,  'New York city'),
(2, 1,  'Buffalo'),
(3, 1,  'Albany'),
(4, 2,  'Birmingham'),
(5, 2,  'Montgomery'),
(6, 2,  'Huntsville'),
(7, 3,  'Los Angeles'),
(8, 3,  'San Francisco'),
(9, 3,  'San Diego'),
(10,  4,  'Toronto'),
(11,  4,  'Ottawa'),
(12,  5,  'Vancouver'),
(13,  5,  'Victoria'),
(14,  6,  'Sydney'),
(15,  6,  'Newcastle'),
(16,  7,  'City of Brisbane'),
(17,  7,  'Gold Coast'),
(18,  8,  'Bangalore'),
(19,  8,  'Mangalore'),
(20,  9,  'Hydrabad'),
(21,  9,  'Warangal'),
(22,  10, 'Ankara'),
(23,  10, 'Yozgat'),
(24,  10, 'Çankırı'),
(25,  10, 'Çorum'),
(26,  11, 'İstanbul'),
(27,  11, 'Sakarya'),
(28,  11, 'Çanakkale'),
(29,  11, 'Kocaeli');

DROP TABLE IF EXISTS `contactuses`;
CREATE TABLE `contactuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE `contactuses`;
INSERT INTO `contactuses` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'tbl_sample1',  'nuriakman@gmail.com',  'asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf',  '2020-06-12 09:16:57',  '2020-06-12 09:16:57');

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(250) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

TRUNCATE `country`;
INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'USA'),
(2, 'Canada'),
(3, 'Australia'),
(4, 'India'),
(5, 'Türkiye');

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE `failed_jobs`;

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_12_120422_create_contactuses_table', 1);

DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `page_url` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `page_order` int(11) NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

TRUNCATE `page`;
INSERT INTO `page` (`page_id`, `page_title`, `page_url`, `page_order`) VALUES
(1, 'JSON - Dynamic Dependent Dropdown List using Jquery and Ajax', 'json-dynamic-dependent-dropdown-list-using-jquery-and-ajax', 1),
(2, 'Live Table Data Edit Delete using Tabledit Plugin in PHP', 'live-table-data-edit-delete-using-tabledit-plugin-in-php', 3),
(3, 'Create Treeview with Bootstrap Treeview Ajax JQuery in PHP\r\n', 'create-treeview-with-bootstrap-treeview-ajax-jquery-in-php', 8),
(4, 'Bootstrap Multiselect Dropdown with Checkboxes using Jquery in PHP\r\n', 'bootstrap-multiselect-dropdown-with-checkboxes-using-jquery-in-php', 10),
(5, 'Facebook Style Popup Notification using PHP Ajax Bootstrap\r\n', 'facebook-style-popup-notification-using-php-ajax-bootstrap', 7),
(6, 'Modal with Dynamic Previous & Next Data Button by Ajax PHP\r\n', 'modal-with-dynamic-previous-next-data-button-by-ajax-php', 4),
(7, 'How to Use Bootstrap Select Plugin with Ajax Jquery PHP\r\n',  'how-to-use-bootstrap-select-plugin-with-ajax-jquery-php',  6),
(8, 'How to Load CSV File data into HTML Table Using AJAX jQuery\r\n',  'how-to-load-csv-file-data-into-html-table-using-ajax-jquery',  2),
(9, 'Autocomplete Textbox using Typeahead with Ajax PHP Bootstrap\r\n', 'autocomplete-textbox-using-typeahead-with-ajax-php-bootstrap', 5),
(10,  'Export Data to Excel in Codeigniter using PHPExcel\r\n', 'export-data-to-excel-in-codeigniter-using-phpexcel', 9);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE `password_resets`;

DROP TABLE IF EXISTS `sample_datas`;
CREATE TABLE `sample_datas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `gender` enum('Male','Female') COLLATE utf8mb4_turkish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

TRUNCATE `sample_datas`;
INSERT INTO `sample_datas` (`id`, `first_name`, `last_name`, `gender`, `created_at`, `updated_at`) VALUES
(81,  'Susan',  'Diener', 'Female', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(82,  'William',  'Batiste',  'Male', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(83,  'Butler', 'Tucker', 'Male', '2019-10-13 21:30:00',  '2019-10-19 00:24:32'),
(84,  'Eva',  'King', 'Male', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(85,  'Dorothy',  'Hays', 'Male', '2019-10-14 00:30:00',  '2019-10-14 00:30:00'),
(86,  'Nannie', 'Ayers',  'Male', '2019-10-14 00:30:00',  '2019-10-14 00:30:00'),
(87,  'Gerald', 'Brown',  'Male', '2019-10-14 01:30:00',  '2019-10-14 01:30:00'),
(88,  'Judith', 'Smith',  'Male', '2019-10-14 01:30:00',  '2019-10-14 01:30:00'),
(89,  'Delores',  'Schumacher', 'Male', '2019-10-14 10:30:00',  '2019-10-14 10:30:00'),
(90,  'Gloria', 'Romero', 'Male', '2019-10-14 03:30:00',  '2019-10-14 03:30:00'),
(96,  'Larry',  'Degraw', 'Female', '2019-10-11 18:39:09',  '2019-10-11 18:39:09'),
(97,  'Susan',  'Diener', 'Female', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(98,  'William',  'Batiste',  'Male', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(99,  'Butler', 'Tucker', 'Male', '2019-10-13 21:30:00',  '2019-10-19 00:24:32'),
(100, 'Eva',  'King', 'Male', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(101, 'Dorothy',  'Hays', 'Male', '2019-10-14 00:30:00',  '2019-10-14 00:30:00'),
(102, 'Nannie', 'Ayers',  'Male', '2019-10-14 00:30:00',  '2019-10-14 00:30:00'),
(103, 'Gerald', 'Brown',  'Male', '2019-10-14 01:30:00',  '2019-10-14 01:30:00'),
(104, 'Judith', 'Smith',  'Male', '2019-10-14 01:30:00',  '2019-10-14 01:30:00'),
(105, 'Delores',  'Schumacher', 'Male', '2019-10-14 10:30:00',  '2019-10-14 10:30:00'),
(106, 'Gloria', 'Romero', 'Male', '2019-10-14 03:30:00',  '2019-10-14 03:30:00'),
(107, 'Larry',  'Degraw', 'Female', '2019-10-11 18:39:09',  '2019-10-11 18:39:09'),
(108, 'Susan',  'Diener', 'Female', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(109, 'William',  'Batiste',  'Male', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(110, 'Butler', 'Tucker', 'Male', '2019-10-13 21:30:00',  '2019-10-19 00:24:32'),
(111, 'Eva',  'King', 'Male', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(112, 'Dorothy',  'Hays', 'Male', '2019-10-14 00:30:00',  '2019-10-14 00:30:00'),
(113, 'Nannie', 'Ayers',  'Male', '2019-10-14 00:30:00',  '2019-10-14 00:30:00'),
(114, 'Gerald', 'Brown',  'Male', '2019-10-14 01:30:00',  '2019-10-14 01:30:00'),
(115, 'Judith', 'Smith',  'Male', '2019-10-14 01:30:00',  '2019-10-14 01:30:00'),
(116, 'Delores',  'Schumacher', 'Male', '2019-10-14 10:30:00',  '2019-10-14 10:30:00'),
(117, 'Gloria', 'Romero', 'Male', '2019-10-14 03:30:00',  '2019-10-14 03:30:00'),
(118, 'Larry',  'Degraw', 'Female', '2019-10-11 18:39:09',  '2019-10-11 18:39:09'),
(119, 'Susan',  'Diener', 'Female', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(120, 'William',  'Batiste',  'Male', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(121, 'Butler', 'Tucker', 'Male', '2019-10-13 21:30:00',  '2019-10-19 00:24:32'),
(122, 'Eva',  'King', 'Male', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(123, 'Dorothy',  'Hays', 'Male', '2019-10-14 00:30:00',  '2019-10-14 00:30:00'),
(124, 'Nannie', 'Ayers',  'Male', '2019-10-14 00:30:00',  '2019-10-14 00:30:00'),
(125, 'Gerald', 'Brown',  'Male', '2019-10-14 01:30:00',  '2019-10-14 01:30:00'),
(126, 'Judith', 'Smith',  'Male', '2019-10-14 01:30:00',  '2019-10-14 01:30:00'),
(127, 'Delores',  'Schumacher', 'Male', '2019-10-14 10:30:00',  '2019-10-14 10:30:00'),
(128, 'Gloria', 'Romero', 'Male', '2019-10-14 03:30:00',  '2019-10-14 03:30:00'),
(129, 'Larry',  'Degraw', 'Female', '2019-10-11 18:39:09',  '2019-10-11 18:39:09'),
(130, 'Susan',  'Diener', 'Female', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(131, 'William',  'Batiste',  'Male', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(132, 'Butler', 'Tucker', 'Male', '2019-10-13 21:30:00',  '2019-10-19 00:24:32'),
(133, 'Eva',  'King', 'Male', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(134, 'Dorothy',  'Hays', 'Male', '2019-10-14 00:30:00',  '2019-10-14 00:30:00'),
(135, 'Nannie', 'Ayers',  'Male', '2019-10-14 00:30:00',  '2019-10-14 00:30:00'),
(136, 'Gerald', 'Brown',  'Male', '2019-10-14 01:30:00',  '2019-10-14 01:30:00'),
(137, 'Judith', 'Smith',  'Male', '2019-10-14 01:30:00',  '2019-10-14 01:30:00'),
(138, 'Delores',  'Schumacher', 'Male', '2019-10-14 10:30:00',  '2019-10-14 10:30:00'),
(139, 'Gloria', 'Romero', 'Male', '2019-10-14 03:30:00',  '2019-10-14 03:30:00'),
(140, 'Larry',  'Degraw', 'Female', '2019-10-11 18:39:09',  '2019-10-11 18:39:09'),
(141, 'Susan',  'Diener', 'Female', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(142, 'William',  'Batiste',  'Male', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(143, 'Butler', 'Tucker', 'Male', '2019-10-13 21:30:00',  '2019-10-19 00:24:32'),
(144, 'Eva',  'King', 'Male', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(145, 'Dorothy',  'Hays', 'Male', '2019-10-14 00:30:00',  '2019-10-14 00:30:00'),
(146, 'Nannie', 'Ayers',  'Male', '2019-10-14 00:30:00',  '2019-10-14 00:30:00'),
(147, 'Gerald', 'Brown',  'Male', '2019-10-14 01:30:00',  '2019-10-14 01:30:00'),
(148, 'Judith', 'Smith',  'Male', '2019-10-14 01:30:00',  '2019-10-14 01:30:00'),
(149, 'Delores',  'Schumacher', 'Male', '2019-10-14 10:30:00',  '2019-10-14 10:30:00'),
(150, 'Gloria', 'Romero', 'Male', '2019-10-14 03:30:00',  '2019-10-14 03:30:00'),
(151, 'Larry',  'Degraw', 'Female', '2019-10-11 18:39:09',  '2019-10-11 18:39:09'),
(152, 'Susan',  'Diener', 'Female', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(153, 'William',  'Batiste',  'Male', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(154, 'Butler', 'Tucker', 'Male', '2019-10-13 21:30:00',  '2019-10-19 00:24:32'),
(155, 'Eva',  'King', 'Male', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(156, 'Dorothy',  'Hays', 'Male', '2019-10-14 00:30:00',  '2019-10-14 00:30:00'),
(157, 'Nannie', 'Ayers',  'Male', '2019-10-14 00:30:00',  '2019-10-14 00:30:00'),
(158, 'Gerald', 'Brown',  'Male', '2019-10-14 01:30:00',  '2019-10-14 01:30:00'),
(159, 'Judith', 'Smith',  'Male', '2019-10-14 01:30:00',  '2019-10-14 01:30:00'),
(160, 'Delores',  'Schumacher', 'Male', '2019-10-14 10:30:00',  '2019-10-14 10:30:00'),
(161, 'Gloria', 'Romero', 'Male', '2019-10-14 03:30:00',  '2019-10-14 03:30:00'),
(162, 'Larry',  'Degraw', 'Female', '2019-10-11 18:39:09',  '2019-10-11 18:39:09'),
(163, 'Susan',  'Diener', 'Female', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(164, 'William',  'Batiste',  'Male', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(165, 'Butler', 'Tucker', 'Male', '2019-10-13 21:30:00',  '2019-10-19 00:24:32'),
(166, 'Eva',  'King', 'Male', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(167, 'Dorothy',  'Hays', 'Male', '2019-10-14 00:30:00',  '2019-10-14 00:30:00'),
(168, 'Nannie', 'Ayers',  'Male', '2019-10-14 00:30:00',  '2019-10-14 00:30:00'),
(169, 'Gerald', 'Brown',  'Male', '2019-10-14 01:30:00',  '2019-10-14 01:30:00'),
(170, 'Judith', 'Smith',  'Male', '2019-10-14 01:30:00',  '2019-10-14 01:30:00'),
(171, 'Delores',  'Schumacher', 'Male', '2019-10-14 10:30:00',  '2019-10-14 10:30:00'),
(172, 'Gloria', 'Romero', 'Male', '2019-10-14 03:30:00',  '2019-10-14 03:30:00'),
(173, 'Larry',  'Degraw', 'Female', '2019-10-11 18:39:09',  '2019-10-11 18:39:09'),
(174, 'Susan',  'Diener', 'Female', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(175, 'William',  'Batiste',  'Male', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(176, 'Butler', 'Tucker', 'Male', '2019-10-13 21:30:00',  '2019-10-19 00:24:32'),
(177, 'Eva',  'King', 'Male', '2019-10-13 21:30:00',  '2019-10-13 21:30:00'),
(178, 'Dorothy',  'Hays', 'Male', '2019-10-14 00:30:00',  '2019-10-14 00:30:00'),
(179, 'Nannie', 'Ayers',  'Male', '2019-10-14 00:30:00',  '2019-10-14 00:30:00'),
(180, 'Gerald', 'Brown',  'Male', '2019-10-14 01:30:00',  '2019-10-14 01:30:00'),
(181, 'Judith', 'Smith',  'Male', '2019-10-14 01:30:00',  '2019-10-14 01:30:00'),
(182, 'Delores',  'Schumacher', 'Male', '2019-10-14 10:30:00',  '2019-10-14 10:30:00'),
(183, 'Gloria', 'Romero', 'Male', '2019-10-14 03:30:00',  '2019-10-14 03:30:00');

DROP TABLE IF EXISTS `state`;
CREATE TABLE `state` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `state_name` varchar(250) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

TRUNCATE `state`;
INSERT INTO `state` (`state_id`, `country_id`, `state_name`) VALUES
(1, 1,  'New York'),
(2, 1,  'Alabama'),
(3, 1,  'California'),
(4, 2,  'Ontario'),
(5, 2,  'British Columbia'),
(6, 3,  'New South Wales'),
(7, 3,  'Queensland'),
(8, 4,  'Karnataka'),
(9, 4,  'Telangana'),
(10,  5,  'İç Anadolu'),
(11,  5,  'Marmara');

DROP TABLE IF EXISTS `tbl_register`;
CREATE TABLE `tbl_register` (
  `register_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(150) COLLATE utf8mb4_turkish_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_turkish_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_turkish_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_turkish_ci NOT NULL,
  `website` varchar(150) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`register_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

TRUNCATE `tbl_register`;

DROP TABLE IF EXISTS `tbl_sample`;
CREATE TABLE `tbl_sample` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(250) COLLATE utf8mb4_turkish_ci NOT NULL,
  `last_name` varchar(250) COLLATE utf8mb4_turkish_ci NOT NULL,
  `gender` enum('Male','Female') COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

TRUNCATE `tbl_sample`;
INSERT INTO `tbl_sample` (`id`, `first_name`, `last_name`, `gender`) VALUES
(1, 'John', 'Smith',  'Male'),
(2, 'Peter',  'Parker', 'Male'),
(4, 'Donna',  'Huber',  'Male'),
(5, 'Anastasia',  'Peterson', 'Male'),
(6, 'Ollen',  'Donald', 'Male'),
(10,  'Joseph', 'Stein',  'Male'),
(11,  'Wilson', 'Fischer',  'Male'),
(12,  'Lillie', 'Kirst',  'Female'),
(13,  'James',  'Whitchurch', 'Male'),
(14,  'Timothy',  'Brewer', 'Male'),
(16,  'Sally',  'Martin', 'Male'),
(17,  'Allison',  'Pinkston', 'Male'),
(18,  'Karen',  'Davis',  'Male'),
(19,  'Jaclyn', 'Rocco',  'Male'),
(20,  'Pamela', 'Boyter', 'Male'),
(21,  'Anthony',  'Alaniz', 'Male'),
(22,  'Myrtle', 'Stiltner', 'Male'),
(23,  'Gary', 'Hernandez',  'Male'),
(24,  'Fred', 'Jeffery',  'Male'),
(25,  'Ronald', 'Stjohn', 'Male'),
(26,  'Stephen',  'Mohamed',  'Male'),
(28,  'Michael',  'Dyer', 'Male'),
(29,  'Betty',  'Beam', 'Male'),
(30,  'Anna', 'Peterson', 'Female'),
(31,  'Peter',  'Stodola',  'Male'),
(32,  'Ralph1', 'Jones1', 'Male');

DROP TABLE IF EXISTS `tbl_sample1`;
CREATE TABLE `tbl_sample1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(250) COLLATE utf8mb4_turkish_ci NOT NULL,
  `last_name` varchar(250) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

TRUNCATE `tbl_sample1`;
INSERT INTO `tbl_sample1` (`id`, `first_name`, `last_name`) VALUES
(1, 'John', 'Smith'),
(2, 'Peter',  'Parker'),
(4, 'Donna',  'Huber'),
(5, 'Nuri', 'Akman'),
(6, 'Kemal',  'Mutlu'),
(7, 'Ömer', 'Eyerci'),
(8, 'Kadir',  'Çapa'),
(9, 'Ziya', 'Ulusoy'),
(10,  'Mesrur', 'Öztürk'),
(11,  'Kemal',  'Yıldız'),
(12,  'Hasan',  'Çiçek'),
(13,  'Hasan',  'Yıldırım');

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(250) COLLATE utf8mb4_turkish_ci NOT NULL,
  `last_name` varchar(250) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

TRUNCATE `tbl_user`;
INSERT INTO `tbl_user` (`id`, `first_name`, `last_name`) VALUES
(2, 'John', 'Smith'),
(3, 'Carol',  'Ferrari'),
(4, 'Darrell',  'Mitten'),
(5, 'Elizbeth', 'Noyes'),
(6, 'Edna', 'William'),
(7, 'Roy',  'Hise'),
(8, 'Sheila', 'Aguinaldo'),
(9, 'Peter',  'Goad'),
(10,  'Kenneth',  'Simons'),
(11,  'Dona', 'Huber'),
(12,  'William',  'Soliz'),
(13,  'Nelson', 'Dismuke'),
(14,  'Sarah',  'Thomas');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE `users`;

-- 2020-06-12 12:36:55
