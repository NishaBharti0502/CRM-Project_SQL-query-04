-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2023 at 05:03 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bharti_nisha`
--


--
-- Table structure for table `front_details`
--

CREATE TABLE `front_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `get_started_show` enum('yes','no') NOT NULL DEFAULT 'yes',
  `sign_in_show` enum('yes','no') NOT NULL DEFAULT 'yes',
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `social_links` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `primary_color` varchar(191) DEFAULT NULL,
  `custom_css` longtext DEFAULT NULL,
  `custom_css_theme_two` longtext DEFAULT NULL,
  `locale` varchar(191) DEFAULT 'en',
  `contact_html` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `front_details`
--

INSERT INTO `front_details` (`id`, `get_started_show`, `sign_in_show`, `address`, `phone`, `email`, `social_links`, `created_at`, `updated_at`, `primary_color`, `custom_css`, `custom_css_theme_two`, `locale`, `contact_html`) VALUES
(1, 'yes', 'yes', '4868  Ben Street Lansing Michigan 48906', '+91 1234567890', 'company@example.com', '[{\"name\":\"facebook\",\"link\":\"https:\\/\\/facebook.com\"},{\"name\":\"twitter\",\"link\":\"https:\\/\\/twitter.com\"},{\"name\":\"instagram\",\"link\":\"https:\\/\\/instagram.com\"},{\"name\":\"dribbble\",\"link\":\"https:\\/\\/dribbble.com\"},{\"name\":\"youtube\",\"link\":\"https:\\/\\/www.youtube.com\"}]', '2023-08-09 07:19:56', '2023-08-09 07:19:56', '#e94033', NULL, NULL, 'en', NULL),
(2, 'yes', 'yes', 'Dhanbad', '1234567890', 'dh@', 'facebook', '2023-08-09 17:47:42', '2023-08-09 17:47:42', 'blue', 'css file', 'theme csee', 'en', NULL),
(3, 'yes', 'yes', 'Goa, near rani bandh road', '7895673456', 'goa@', '[{\"name\":\"facebook\",\"link\":\"https:\\/\\/facebook.com\"},{\"name\":\"twitter\",\"link\":\"https:\\/\\/twitter.com\"},{\"name\":\"instagram\",\"link\":\"https:\\/\\/instagram.com\"},{\"name\":\"dribbble\",\"link\":\"https:\\/\\/dribbble.com\"},{\"name\":\"youtube\",\"link\":\"https:\\/\\/www.youtube.com\"}]', '2023-08-09 17:49:51', '2023-08-09 17:49:51', 'red', 'blue_css', 'blue theme', 'en', NULL),
(4, 'yes', 'yes', 'bangalore hsr layout', '2342342345', 'bang@', '[{\"name\":\"facebook\",\"link\":\"https:\\/\\/facebook.com\"},{\"name\":\"twitter\",\"link\":\"https:\\/\\/twitter.com\"},{\"name\":\"instagram\",\"link\":\"https:\\/\\/instagram.com\"},{\"name\":\"dribbble\",\"link\":\"https:\\/\\/dribbble.com\"},{\"name\":\"youtube\",\"link\":\"https:\\/\\/www.youtube.com\"}]', '2023-08-09 17:51:10', '2023-08-09 17:51:10', 'pink', 'pink_css', 'pink theme', 'en', NULL),
(5, 'yes', 'yes', 'Haralur bangalore', '7897897890', 'haralur@', '[{\"name\":\"facebook\",\"link\":\"https:\\/\\/facebook.com\"},{\"name\":\"twitter\",\"link\":\"https:\\/\\/twitter.com\"},{\"name\":\"instagram\",\"link\":\"https:\\/\\/instagram.com\"},{\"name\":\"dribbble\",\"link\":\"https:\\/\\/dribbble.com\"},{\"name\":\"youtube\",\"link\":\"https:\\/\\/www.youtube.com\"}]', '2023-08-09 17:52:29', '2023-08-09 17:52:29', 'green', 'green_css', 'green theme', 'en', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `front_faqs`
--

CREATE TABLE `front_faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_setting_id` int(10) UNSIGNED DEFAULT NULL,
  `question` varchar(191) NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `front_faqs`
--

INSERT INTO `front_faqs` (`id`, `language_setting_id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Can i see demo?', '<span style=\"color: rgb(68, 68, 68); font-family: Lato, sans-serif; font-size: 16px;\">Yes, definitely. We would be happy to demonstrate you Worksuite through a web conference at your convenience. Please submit a query on our contact us page or drop a mail to our mail id worksuite@froiden.com.</span>', '2023-08-09 07:19:57', '2023-08-09 07:19:57'),
(2, NULL, 'How can i update app?', '<span style=\"color: rgb(68, 68, 68); font-family: Lato, sans-serif; font-size: 16px;\">Yes, definitely. We would be happy to demonstrate you Worksuite through a web conference at your convenience. Please submit a query on our contact us page or drop a mail to our mail id worksuite@froiden.com.</span>', '2023-08-09 07:19:57', '2023-08-09 07:19:57'),
(3, 3, 'What\'s the use of react?', 'React is a free and open-source front-end JavaScript library for building user interfaces based on components. It is maintained by Meta and a community of individual developers and companies. React can be used to develop single-page, mobile, or server-rendered applications with frameworks like Next.js.', '2023-08-09 17:55:19', '2023-08-09 17:55:19'),
(4, 4, 'What is node js?', 'Node.js is a cross-platform, open-source server environment that can run on Windows, Linux, Unix, macOS, and more. Node.js is a back-end JavaScript runtime environment, runs on the V8 JavaScript engine, and executes JavaScript code outside a web browser.', '2023-08-09 17:57:37', '2023-08-09 17:57:37'),
(5, 5, 'Uses of javascript?', 'Web Development. JavaScript is a scripting language used to develop web pages. ...\r\nWeb Applications. Various JavaScript frameworks are used for developing and building robust web applications. ...\r\nPresentations. ...\r\nServer Applications. ...\r\nWeb Servers. ...\r\nGames. ...\r\nArt. ...\r\nSmartwatch Apps.', '2023-08-09 17:55:19', '2023-08-09 17:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `front_features`
--

CREATE TABLE `front_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_setting_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `front_features`
--

INSERT INTO `front_features` (`id`, `language_setting_id`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Task Management', 'Manage your projects and your talent in a single system, resulting in empowered teams, satisfied clients, and increased profitability.', 'enable', '2023-08-09 07:19:57', '2023-08-09 07:19:57'),
(2, NULL, 'Manages All Your Bills', 'Manage your Automate billing and revenue recognition to streamline the contract-to-cash cycle.', 'enable', '2023-08-09 07:19:57', '2023-08-09 07:19:57'),
(3, NULL, 'Manages All Your Bills', 'Manage your Automate billing and revenue recognition to streamline the contract-to-cash cycle.', 'enable', '2023-08-09 07:19:57', '2023-08-09 07:19:57'),
(4, NULL, 'Exam', '2nd year exam will be held on next week', 'enable', '2023-08-09 17:59:17', '2023-08-09 17:59:17'),
(5, NULL, 'result', 'result will be declared on next month', 'enable', '2023-08-09 18:00:12', '2023-08-09 18:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `front_menu_buttons`
--

CREATE TABLE `front_menu_buttons` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_setting_id` int(10) UNSIGNED DEFAULT NULL,
  `home` varchar(20) DEFAULT 'home',
  `feature` varchar(20) DEFAULT 'feature',
  `price` varchar(20) DEFAULT 'price',
  `contact` varchar(20) DEFAULT 'contact',
  `get_start` varchar(20) DEFAULT 'get_start',
  `login` varchar(20) DEFAULT 'login',
  `contact_submit` varchar(20) DEFAULT 'contact_submit',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `front_menu_buttons`
--

INSERT INTO `front_menu_buttons` (`id`, `language_setting_id`, `home`, `feature`, `price`, `contact`, `get_start`, `login`, `contact_submit`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Home', 'Features', 'Pricing', 'Contact', 'Get Started', 'Login', 'Submit Enquiry', '2023-08-09 07:19:45', '2023-08-09 07:19:45'),
(2, NULL, 'home', 'feature', 'price', 'contact', 'get_start', 'login', 'contact_submit', '2023-08-09 18:02:01', '2023-08-09 18:02:01'),
(3, NULL, 'home', 'feature', 'price', 'contact', 'get_start', 'login', 'contact_submit', '2023-08-09 18:02:33', '2023-08-09 18:02:33'),
(4, NULL, 'home', 'feature', 'price', 'contact', 'get_start', 'login', 'contact_submit', '2023-08-09 18:02:33', '2023-08-09 18:02:33'),
(5, NULL, 'home', 'feature', 'price', 'contact', 'get_start', 'login', 'contact_submit', '2023-08-09 18:02:33', '2023-08-09 18:02:33');

-- --------------------------------------------------------

--
-- Table structure for table `front_widgets`
--

CREATE TABLE `front_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `widget_code` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `front_widgets`
--

INSERT INTO `front_widgets` (`id`, `name`, `widget_code`, `created_at`, `updated_at`) VALUES
(1, 'Nisha', '12345', '2023-08-09 18:03:32', '2023-08-09 18:03:32'),
(2, 'Bharti', '12345', '2023-08-09 18:03:32', '2023-08-09 18:03:32'),
(3, 'nisha bahrti', '1234556', '2023-08-09 18:04:23', '2023-08-09 18:04:23'),
(4, 'bharti_nisha', '7890', '2023-08-09 18:04:23', '2023-08-09 18:04:23'),
(5, 'Chhoti', '5566', '2023-08-09 18:04:23', '2023-08-09 18:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `gdpr_settings`
--

CREATE TABLE `gdpr_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `enable_gdpr` tinyint(1) NOT NULL DEFAULT 0,
  `show_customer_area` tinyint(1) NOT NULL DEFAULT 0,
  `show_customer_footer` tinyint(1) NOT NULL DEFAULT 0,
  `top_information_block` longtext DEFAULT NULL,
  `enable_export` tinyint(1) NOT NULL DEFAULT 0,
  `data_removal` tinyint(1) NOT NULL DEFAULT 0,
  `lead_removal_public_form` tinyint(1) NOT NULL DEFAULT 0,
  `terms_customer_footer` tinyint(1) NOT NULL DEFAULT 0,
  `terms` longtext DEFAULT NULL,
  `policy` longtext DEFAULT NULL,
  `public_lead_edit` tinyint(1) NOT NULL DEFAULT 0,
  `consent_customer` tinyint(1) NOT NULL DEFAULT 0,
  `consent_leads` tinyint(1) NOT NULL DEFAULT 0,
  `consent_block` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdpr_settings`
--

INSERT INTO `gdpr_settings` (`id`, `company_id`, `enable_gdpr`, `show_customer_area`, `show_customer_footer`, `top_information_block`, `enable_export`, `data_removal`, `lead_removal_public_form`, `terms_customer_footer`, `terms`, `policy`, `public_lead_edit`, `consent_customer`, `consent_leads`, `consent_block`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, NULL, '2023-08-09 07:19:57', '2023-08-09 07:19:57'),
(2, 2, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, NULL, '2023-08-09 07:19:58', '2023-08-09 07:19:58'),
(3, 3, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, NULL, '2023-08-09 07:19:58', '2023-08-09 07:19:58'),
(4, 4, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, NULL, '2023-08-09 07:19:59', '2023-08-09 07:19:59'),
(5, 5, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, NULL, '2023-08-09 07:19:59', '2023-08-09 07:19:59');

-- --------------------------------------------------------

--
-- Table structure for table `global_currencies`
--

CREATE TABLE `global_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency_name` varchar(191) NOT NULL,
  `currency_symbol` varchar(191) NOT NULL,
  `currency_code` varchar(191) NOT NULL,
  `exchange_rate` double DEFAULT NULL,
  `usd_price` double DEFAULT NULL,
  `is_cryptocurrency` enum('yes','no') NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `currency_position` enum('front','behind') NOT NULL DEFAULT 'front',
  `status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `global_currencies`
--

INSERT INTO `global_currencies` (`id`, `currency_name`, `currency_symbol`, `currency_code`, `exchange_rate`, `usd_price`, `is_cryptocurrency`, `created_at`, `updated_at`, `deleted_at`, `currency_position`, `status`) VALUES
(1, 'Dollars', '$', 'USD', NULL, NULL, 'no', '2023-08-24 07:19:55', '2023-08-16 07:19:55', '2023-08-10 18:09:23', 'front', 'enable'),
(2, 'Pounds', '£', 'GBP', NULL, NULL, 'no', '2023-08-09 07:19:55', '2023-08-01 07:19:55', '2023-08-09 18:09:44', 'front', 'enable'),
(3, 'Euros', '€', 'EUR', NULL, NULL, 'no', '2023-08-09 07:19:55', '2023-08-09 07:19:55', NULL, 'behind', 'enable'),
(4, 'Rupee', '₹', 'INR', NULL, NULL, 'no', '2023-08-16 07:19:55', '2023-08-09 07:19:55', NULL, 'front', 'enable'),
(5, 'Rupees', 'Rs', '65', 0, 80, 'no', '2023-08-09 18:07:43', '2023-08-09 18:07:43', NULL, 'front', 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `timezone` varchar(191) NOT NULL DEFAULT 'Asia/Kolkata',
  `locale` varchar(191) NOT NULL DEFAULT 'en',
  `company_name` varchar(191) NOT NULL,
  `company_email` varchar(191) NOT NULL,
  `company_phone` varchar(191) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `login_background` varchar(191) DEFAULT NULL,
  `address` text NOT NULL,
  `website` varchar(191) DEFAULT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `front_design` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_map_key` varchar(191) NOT NULL,
  `currency_converter_key` varchar(191) NOT NULL,
  `google_captcha_version` varchar(191) NOT NULL DEFAULT 'v2',
  `google_recaptcha_key` text DEFAULT NULL,
  `google_recaptcha_secret` text DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT NULL,
  `supported_until` timestamp NULL DEFAULT NULL,
  `hide_cron_message` tinyint(1) NOT NULL DEFAULT 0,
  `week_start` int(11) NOT NULL DEFAULT 1,
  `system_update` tinyint(1) NOT NULL DEFAULT 1,
  `email_verification` tinyint(1) NOT NULL DEFAULT 1,
  `logo_background_color` varchar(191) NOT NULL DEFAULT '#171e28',
  `currency_key_version` varchar(191) NOT NULL DEFAULT 'free',
  `show_review_modal` tinyint(1) NOT NULL DEFAULT 1,
  `logo_front` varchar(191) DEFAULT NULL,
  `login_ui` tinyint(1) NOT NULL,
  `active_theme` enum('default','custom') NOT NULL DEFAULT 'default',
  `auth_css` longtext DEFAULT NULL,
  `auth_css_theme_two` longtext DEFAULT NULL,
  `new_company_locale` varchar(191) DEFAULT NULL,
  `frontend_disable` tinyint(1) NOT NULL DEFAULT 0,
  `google_recaptcha_status` tinyint(1) NOT NULL DEFAULT 0,
  `setup_homepage` varchar(191) NOT NULL DEFAULT 'default',
  `custom_homepage_url` varchar(191) DEFAULT NULL,
  `app_debug` tinyint(1) NOT NULL DEFAULT 0,
  `expired_message` text DEFAULT NULL,
  `show_update_popup` tinyint(1) NOT NULL DEFAULT 1,
  `favicon` varchar(191) DEFAULT NULL,
  `enable_register` tinyint(1) NOT NULL DEFAULT 1,
  `last_cron_run` timestamp NULL DEFAULT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`id`, `currency_id`, `timezone`, `locale`, `company_name`, `company_email`, `company_phone`, `logo`, `login_background`, `address`, `website`, `last_updated_by`, `front_design`, `created_at`, `updated_at`, `google_map_key`, `currency_converter_key`, `google_captcha_version`, `google_recaptcha_key`, `google_recaptcha_secret`, `purchase_code`, `supported_until`, `hide_cron_message`, `week_start`, `system_update`, `email_verification`, `logo_background_color`, `currency_key_version`, `show_review_modal`, `logo_front`, `login_ui`, `active_theme`, `auth_css`, `auth_css_theme_two`, `new_company_locale`, `frontend_disable`, `google_recaptcha_status`, `setup_homepage`, `custom_homepage_url`, `app_debug`, `expired_message`, `show_update_popup`, `favicon`, `enable_register`, `last_cron_run`, `rtl`) VALUES
(1, 4, 'Asia/Kolkata', 'en', 'Demo For Project', 'company@email.com', '1234567891', '6630fa353c0602aeef8e153152d069ee.png', NULL, 'Company address', 'www.domain.com', 1, 1, '2023-08-01 07:19:55', '2023-08-01 07:38:48', '', '6c12788708871d0c499d', 'v2', NULL, NULL, NULL, '2023-08-09 18:11:23', 0, 1, 1, 1, '#171e28', 'free', 1, 'f9487c50fd2df8675983f669d7eb725c.png', 0, 'default', NULL, NULL, NULL, 0, 0, 'default', NULL, 0, NULL, 1, '86bd6386a2da045174ba5fc382e5e8b1.png', 1, '2023-08-09 18:11:23', 0),
(2, NULL, 'Asia/Kolkata', 'en', 'Paytm', 'paytm@', NULL, NULL, NULL, '', 'www.paytm.com', NULL, 1, '2023-08-09 18:12:13', '2023-08-09 18:12:13', 'dddhfd78', '89', 'v2', NULL, NULL, NULL, NULL, 0, 1, 1, 1, '#171e28', 'free', 1, NULL, 0, 'default', NULL, NULL, NULL, 0, 0, 'default', NULL, 0, NULL, 1, NULL, 1, NULL, 0),
(3, NULL, 'Asia/Kolkata', 'en', 'google', 'google@', '1234567890', 'ghjkl97', 'google', 'bangalore', NULL, NULL, 1, '2023-08-09 18:14:20', '2023-08-09 18:14:20', '77777b', '9', 'v2', NULL, NULL, NULL, NULL, 0, 1, 1, 1, '#171e28', 'free', 1, NULL, 0, 'default', NULL, NULL, NULL, 0, 0, 'default', NULL, 0, NULL, 1, NULL, 1, '2023-08-09 18:14:20', 0),
(4, NULL, 'Asia/Kolkata', 'en', 'microsoft', 'micro@', '4455667788990', 'jk90', 'blue', 'panji', 'microsoft.com', NULL, 1, '2023-08-09 18:16:33', '2023-08-09 18:16:33', '7788uujj', '89', 'v2', NULL, NULL, NULL, NULL, 0, 1, 1, 1, '#171e28', 'free', 1, NULL, 0, 'default', NULL, NULL, NULL, 0, 0, 'default', NULL, 0, NULL, 1, NULL, 1, NULL, 0),
(5, NULL, 'Asia/Kolkata', 'en', 'paypal', 'pay@', '6677889900', 'jjkk99', 'red', '', NULL, NULL, 1, NULL, NULL, '', '', 'v2', NULL, NULL, NULL, NULL, 0, 1, 1, 1, '#171e28', 'free', 1, NULL, 0, 'default', NULL, NULL, NULL, 0, 0, 'default', NULL, 0, NULL, 1, NULL, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `date` date NOT NULL,
  `occassion` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `company_id`, `date`, `occassion`, `created_at`, `updated_at`) VALUES
(1, NULL, '2023-08-10', 'Dussehra', '2023-08-10 14:26:51', '2023-08-10 14:26:51'),
(2, 2, '2023-08-10', 'Holi', '2023-08-10 14:27:39', '2023-08-10 14:27:39'),
(3, 3, '2023-08-10', 'Shivratri', '2023-08-10 14:28:13', '2023-08-10 14:28:13'),
(4, 4, '2023-08-10', 'Exam', '2023-08-10 14:28:13', '2023-08-10 14:28:13'),
(5, 5, '2023-08-10', 'Diwali', '2023-08-10 14:28:13', '2023-08-10 14:28:13');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `project_id` int(10) UNSIGNED DEFAULT NULL,
  `client_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice_number` varchar(191) NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `sub_total` double(16,2) NOT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `discount_type` enum('percent','fixed') NOT NULL DEFAULT 'percent',
  `total` double(16,2) NOT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('paid','unpaid','partial','canceled','draft','review') NOT NULL DEFAULT 'unpaid',
  `recurring` enum('yes','no') NOT NULL DEFAULT 'no',
  `billing_cycle` int(11) DEFAULT NULL,
  `billing_interval` int(11) DEFAULT NULL,
  `billing_frequency` varchar(191) DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `file_original_name` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `credit_note` tinyint(1) NOT NULL DEFAULT 0,
  `show_shipping_address` enum('yes','no') NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `estimate_id` int(10) UNSIGNED DEFAULT NULL,
  `send_status` tinyint(1) NOT NULL DEFAULT 1,
  `invoice_recurring_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `company_id`, `project_id`, `client_id`, `invoice_number`, `issue_date`, `due_date`, `sub_total`, `discount`, `discount_type`, `total`, `currency_id`, `status`, `recurring`, `billing_cycle`, `billing_interval`, `billing_frequency`, `file`, `file_original_name`, `note`, `credit_note`, `show_shipping_address`, `created_at`, `updated_at`, `deleted_at`, `estimate_id`, `send_status`, `invoice_recurring_id`, `created_by`) VALUES
(1, 1, 1, NULL, '1', '2023-08-10', '2023-08-18', 5829.00, 0, 'percent', 5829.00, 1, 'paid', 'no', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'no', '2023-08-10 07:20:20', '2023-08-10 07:20:20', NULL, NULL, 0, NULL, NULL),
(2, 1, 1, NULL, '2', '2023-08-09', '2023-08-10', 7628.00, 0, 'percent', 7628.00, 1, 'paid', 'no', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'no', '2023-08-11 07:20:20', '2023-08-11 07:20:20', NULL, NULL, 0, NULL, NULL),
(3, 1, 1, NULL, '3', '2023-08-10', '2023-08-09', 2830.00, 0, 'percent', 2830.00, 1, 'paid', 'no', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'no', '2023-08-15 07:20:20', '2023-08-10 07:20:20', NULL, NULL, 0, NULL, NULL),
(4, 1, 1, NULL, '4', '2023-08-10', '2023-08-10', 2989.00, 0, 'percent', 2989.00, 1, 'unpaid', 'no', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'no', '2023-08-01 07:20:20', '2023-08-01 07:20:20', NULL, NULL, 0, NULL, NULL),
(5, 1, 2, NULL, '5', '2023-08-10', '2023-08-10', 3525.00, 0, 'percent', 3525.00, 1, 'paid', 'no', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'no', '2023-08-01 07:20:22', '2023-08-01 07:20:22', NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(191) NOT NULL,
  `item_summary` text DEFAULT NULL,
  `type` enum('item','discount','tax') NOT NULL DEFAULT 'item',
  `quantity` double(16,2) NOT NULL,
  `unit_price` double(16,2) NOT NULL,
  `amount` double(16,2) NOT NULL,
  `taxes` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hsn_sac_code` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `item_name`, `item_summary`, `type`, `quantity`, `unit_price`, `amount`, `taxes`, `created_at`, `updated_at`, `hsn_sac_code`) VALUES
(1, 1, 'item 1', NULL, 'item', 1.00, 1512.00, 1512.00, NULL, '2023-08-10 07:20:20', '2023-08-18 07:20:20', NULL),
(2, 1, 'item 2', NULL, 'item', 1.00, 4317.00, 4317.00, NULL, '2023-08-10 07:20:20', '2023-08-10 07:20:20', NULL),
(3, 2, 'item 3', NULL, 'item', 1.00, 4663.00, 4663.00, NULL, '2023-08-10 07:20:20', '2023-08-10 07:20:20', NULL),
(4, 2, 'item 4', NULL, 'item', 1.00, 2965.00, 2965.00, NULL, '2023-08-01 07:20:20', '2023-08-01 07:20:20', NULL),
(5, 3, 'item 5', NULL, 'item', 1.00, 2830.00, 2830.00, NULL, '2023-08-10 07:20:20', '2023-08-10 07:20:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_recurring`
--

CREATE TABLE `invoice_recurring` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `project_id` int(10) UNSIGNED DEFAULT NULL,
  `client_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `sub_total` double NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `discount_type` enum('percent','fixed') NOT NULL DEFAULT 'percent',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `file` varchar(191) DEFAULT NULL,
  `file_original_name` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `show_shipping_address` enum('yes','no') NOT NULL DEFAULT 'no',
  `day_of_month` int(11) DEFAULT 1,
  `day_of_week` int(11) DEFAULT 1,
  `payment_method` varchar(191) DEFAULT NULL,
  `rotation` enum('monthly','weekly','bi-weekly','quarterly','half-yearly','annually','daily') NOT NULL,
  `billing_cycle` int(11) DEFAULT NULL,
  `unlimited_recurring` tinyint(1) NOT NULL DEFAULT 0,
  `client_can_stop` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` datetime DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_recurring`
--

INSERT INTO `invoice_recurring` (`id`, `company_id`, `currency_id`, `project_id`, `client_id`, `user_id`, `created_by`, `issue_date`, `due_date`, `sub_total`, `total`, `discount`, `discount_type`, `status`, `file`, `file_original_name`, `note`, `show_shipping_address`, `day_of_month`, `day_of_week`, `payment_method`, `rotation`, `billing_cycle`, `unlimited_recurring`, `client_can_stop`, `deleted_at`, `shipping_address`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 2, 50, 58, 129, '2023-08-10', '2023-08-10', 0, 0, 0, 'percent', 'active', 'xyz', 'XYZ', NULL, 'no', 1, 1, NULL, '', NULL, 0, 1, NULL, NULL, '2023-08-10 14:39:30', '2023-08-10 14:39:30'),
(2, 2, 17, 2, NULL, NULL, NULL, '2023-08-10', '2023-08-10', 0, 0, 0, 'percent', 'active', NULL, NULL, NULL, 'no', 1, 1, NULL, '', NULL, 0, 1, NULL, NULL, NULL, NULL),
(3, 3, 3, 3, 50, 113, 50, '2023-08-10', '2023-08-10', 0, 0, 0, 'percent', 'active', 'abc', 'ABC', NULL, 'no', 1, 1, NULL, '', NULL, 0, 1, NULL, NULL, NULL, NULL),
(4, 4, 4, 4, 140, 113, 58, '2023-08-10', '2023-08-10', 0, 0, 0, 'percent', 'active', NULL, NULL, NULL, 'no', 1, 1, NULL, '', NULL, 0, 1, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', 0, 0, 0, 'percent', 'active', NULL, NULL, NULL, 'no', 1, 1, NULL, '', NULL, 0, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_recurring_items`
--

CREATE TABLE `invoice_recurring_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_recurring_id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(191) NOT NULL,
  `quantity` double NOT NULL,
  `unit_price` double NOT NULL,
  `amount` double NOT NULL,
  `taxes` text DEFAULT NULL,
  `type` enum('item','discount','tax') NOT NULL DEFAULT 'item',
  `item_summary` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hsn_sac_code` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_recurring_items`
--

INSERT INTO `invoice_recurring_items` (`id`, `invoice_recurring_id`, `item_name`, `quantity`, `unit_price`, `amount`, `taxes`, `type`, `item_summary`, `created_at`, `updated_at`, `hsn_sac_code`) VALUES
(1, 2, 'QWE', 67, 900, 7000, '800', 'discount', '500', '2023-08-10 14:43:42', '2023-08-10 14:43:42', NULL),
(2, 2, 'jkl', 789, 6000, 7000, '500', 'tax', 'This is the taxes record', '2023-08-10 14:45:37', NULL, NULL),
(3, 3, 'Patrol', 2, 60, 60.05, '10', 'item', NULL, NULL, NULL, NULL),
(4, 4, 'diesel', 70, 700, 800, NULL, 'item', NULL, NULL, NULL, NULL),
(5, 5, 'Fuels', 70, 60, 600, '50', 'item', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_settings`
--

CREATE TABLE `invoice_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice_prefix` varchar(191) NOT NULL,
  `invoice_digit` int(10) UNSIGNED NOT NULL DEFAULT 3,
  `estimate_prefix` varchar(191) NOT NULL DEFAULT 'EST',
  `estimate_digit` int(10) UNSIGNED NOT NULL DEFAULT 3,
  `credit_note_prefix` varchar(191) NOT NULL DEFAULT 'CN',
  `credit_note_digit` int(10) UNSIGNED NOT NULL DEFAULT 3,
  `template` varchar(191) NOT NULL,
  `due_after` int(11) NOT NULL,
  `invoice_terms` text NOT NULL,
  `estimate_terms` text DEFAULT NULL,
  `gst_number` varchar(191) DEFAULT NULL,
  `show_gst` enum('yes','no') DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `logo` varchar(80) DEFAULT NULL,
  `hsn_sac_code_show` tinyint(1) NOT NULL DEFAULT 1,
  `locale` varchar(191) DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_settings`
--

INSERT INTO `invoice_settings` (`id`, `company_id`, `invoice_prefix`, `invoice_digit`, `estimate_prefix`, `estimate_digit`, `credit_note_prefix`, `credit_note_digit`, `template`, `due_after`, `invoice_terms`, `estimate_terms`, `gst_number`, `show_gst`, `created_at`, `updated_at`, `logo`, `hsn_sac_code_show`, `locale`) VALUES
(1, NULL, 'INV', 3, 'EST', 3, 'CN', 3, 'invoice-1', 15, 'Thank you for your business. Please process this invoice within the due date.', NULL, NULL, 'no', '2023-08-10 07:19:35', '2023-08-10 07:19:35', NULL, 1, 'en'),
(2, 1, 'INV', 3, 'EST', 3, 'CN', 3, 'invoice-1', 15, 'Thank you for your business. Please process this invoice within the due date.', NULL, NULL, 'no', '2023-08-10 07:19:57', '2023-08-10 07:19:57', NULL, 1, 'en'),
(3, 2, 'INV', 3, 'EST', 3, 'CN', 3, 'invoice-1', 15, 'Thank you for your business. Please process this invoice within the due date.', NULL, NULL, 'no', '2023-08-16 07:19:58', '2023-08-17 07:19:58', NULL, 1, 'en'),
(4, 3, 'INV', 3, 'EST', 3, 'CN', 3, 'invoice-1', 15, 'Thank you for your business. Please process this invoice within the due date.', NULL, NULL, 'no', '2023-08-10 07:19:58', '2023-08-10 07:19:58', NULL, 1, 'en'),
(5, 4, 'INV', 3, 'EST', 3, 'CN', 3, 'invoice-1', 15, 'Thank you for your business. Please process this invoice within the due date.', NULL, NULL, 'no', '2023-08-10 07:19:58', '2023-08-10 07:19:58', NULL, 1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` mediumtext NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `project_id` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('pending','resolved') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `description`, `user_id`, `project_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Good morning all of you.', 140, 4, 'pending', '2023-08-10 14:50:27', '2023-08-10 14:50:27'),
(2, 'This issues is regarding backend development', 80, NULL, 'pending', NULL, NULL),
(3, 'Code error', 113, 2, 'pending', '2023-08-23 14:51:08', '2023-08-24 14:51:08'),
(4, 'Syntax error', 113, 4, 'pending', '2023-08-10 14:51:08', '2023-08-18 14:51:08'),
(5, 'Semantic error', 50, 8, 'pending', '2023-08-16 14:51:08', '2023-08-04 14:51:08');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'Good', '600000', 0, NULL, 0, 0),
(2, 'bad', '80000', 0, NULL, 0, 0),
(3, 'jobs', '7000', 0, NULL, 0, 0),
(4, 'offcampus', '6000', 0, NULL, 0, 0),
(5, 'on campus', '8000', 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_settings`
--

CREATE TABLE `language_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_code` varchar(191) NOT NULL,
  `language_name` varchar(191) NOT NULL,
  `status` enum('enabled','disabled') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language_settings`
--

INSERT INTO `language_settings` (`id`, `language_code`, `language_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ar', 'Arabic', 'disabled', NULL, NULL),
(2, 'de', 'German', 'disabled', NULL, NULL),
(3, 'es', 'Spanish', 'enabled', NULL, NULL),
(4, 'et', 'Estonian', 'disabled', NULL, NULL),
(5, 'fa', 'Farsi', 'disabled', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `column_priority` int(11) NOT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `office_phone` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `postal_code` varchar(191) DEFAULT NULL,
  `client_name` varchar(191) NOT NULL,
  `client_email` varchar(191) NOT NULL,
  `mobile` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `next_follow_up` enum('yes','no') NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `value` double DEFAULT 0,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `company_id`, `client_id`, `source_id`, `status_id`, `column_priority`, `agent_id`, `company_name`, `website`, `address`, `office_phone`, `city`, `state`, `country`, `postal_code`, `client_name`, `client_email`, `mobile`, `note`, `next_follow_up`, `created_at`, `updated_at`, `value`, `currency_id`, `category_id`) VALUES
(1, 1, NULL, NULL, NULL, 0, NULL, 'Torphy-Dickens', 'Ms. Rachelle VonRueden', NULL, NULL, NULL, NULL, NULL, NULL, 'Freddie Dietrich PhD', 'srobel@example.com', '91 123456789', 'However, it was empty: she did not notice this question, but hurriedly went on, \'if you don\'t know.', 'yes', '2023-08-01 07:20:03', '2023-08-01 07:20:03', 0, NULL, NULL),
(2, 1, NULL, NULL, NULL, 0, NULL, 'Botsford Inc', 'Ardith White', NULL, NULL, NULL, NULL, NULL, NULL, 'Dr. Margarete Bauch', 'zgraham@example.net', '91 123456789', 'March Hare interrupted in a low, timid voice, \'If you knew Time as well go in at the stick, and.', 'yes', '2023-08-01 07:20:03', '2023-08-01 07:20:03', 0, NULL, NULL),
(3, 1, NULL, NULL, NULL, 0, NULL, 'Harvey, Koepp and Schimmel', 'Chesley Weimann', NULL, NULL, NULL, NULL, NULL, NULL, 'Prof. Catharine Krajcik', 'jaime70@example.org', '91 123456789', 'Never heard of such a thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s.', 'yes', '2023-08-01 07:20:03', '2023-08-01 07:20:03', 0, NULL, NULL),
(4, 1, NULL, NULL, NULL, 0, NULL, 'Hauck-Frami', 'Marianne Jacobi', NULL, NULL, NULL, NULL, NULL, NULL, 'Prof. Barrett Johnson', 'deontae.mosciski@example.org', '91 123456789', 'CHAPTER IX. The Mock Turtle a little snappishly. \'You\'re enough to get in?\' \'There might be.', 'yes', '2023-08-01 07:20:03', '2023-08-01 07:20:03', 0, NULL, NULL),
(5, 1, NULL, NULL, NULL, 0, NULL, 'Balistreri and Sons', 'Prof. Freddie Marks DVM', NULL, NULL, NULL, NULL, NULL, NULL, 'Jerrold Gleichner', 'joy.cremin@example.com', '91 123456789', 'Alice, as she went to school in the other. \'I beg your pardon!\' cried Alice (she was rather glad.', 'yes', '2023-08-01 07:20:03', '2023-08-01 07:20:03', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lead_agents`
--

CREATE TABLE `lead_agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('enabled','disabled') NOT NULL DEFAULT 'enabled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lead_agents`
--

INSERT INTO `lead_agents` (`id`, `company_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 80, 'enabled', '2023-08-10 14:59:24', '2023-08-10 14:59:24'),
(2, 2, 80, 'enabled', '2023-08-10 14:59:46', '2023-08-10 14:59:46'),
(3, 3, 113, 'enabled', '2023-08-10 15:00:08', '2023-08-10 15:00:08'),
(4, 4, 2, 'enabled', '2023-08-10 15:00:29', '2023-08-10 15:00:29'),
(5, 5, 113, 'enabled', '2023-08-18 15:00:29', '2023-08-11 15:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `lead_category`
--

CREATE TABLE `lead_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lead_category`
--

INSERT INTO `lead_category` (`id`, `category_name`, `created_at`, `updated_at`, `company_id`) VALUES
(1, 'abc', '2023-08-10 15:01:12', '2023-08-10 15:01:12', NULL),
(2, 'jkl', '2023-08-16 15:02:03', '2023-08-09 15:02:03', NULL),
(3, 'cvh', '2023-08-10 15:01:44', '2023-08-10 15:01:44', NULL),
(4, 'nisha', '2023-08-16 15:02:16', '2023-08-16 15:02:16', NULL),
(5, 'bharti', '2023-08-10 15:02:42', '2023-08-10 15:02:42', NULL);

-- --------------------------------------------------------

--
