-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2020 at 09:15 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'default', 'created', 'App\\User', 1, NULL, NULL, '{\"attributes\":{\"id\":1,\"first_name\":\"super\",\"last_name\":\"admin\",\"email\":\"super_admin@app.com\",\"img\":\"default.png\",\"email_verified_at\":null,\"password\":\"$2y$10$Jc\\/g6MC9ZldKOfTR26jUvOio9JOxfFNDTWGy9HA0wII4GeiM3hba6\",\"remember_token\":null,\"created_at\":\"2020-12-02T22:02:51.000000Z\",\"updated_at\":\"2020-12-02T22:02:51.000000Z\"}}', '2020-12-02 20:02:52', '2020-12-02 20:02:52'),
(2, 'default', 'created', 'App\\Department', 1, 'App\\User', 1, '{\"attributes\":{\"id\":1,\"name\":\"\\u0627\\u0644\\u0627\\u062e\\u0628\\u0627\\u0631\",\"desc\":null,\"parent_id\":null,\"monetor_id\":null,\"editor_id\":null,\"writer_id\":null,\"created_at\":\"2020-12-02T23:33:55.000000Z\",\"updated_at\":\"2020-12-02T23:33:55.000000Z\"}}', '2020-12-02 21:33:55', '2020-12-02 21:33:55'),
(3, 'default', 'created', 'App\\Team', 1, 'App\\User', 1, '{\"attributes\":{\"id\":1,\"name\":\"\\u0627\\u0644\\u0627\\u062e\\u0628\\u0627\\u0631_team\",\"display_name\":\"\\u0627\\u0644\\u0627\\u062e\\u0628\\u0627\\u0631 team\",\"description\":\"This is \\u0627\\u0644\\u0627\\u062e\\u0628\\u0627\\u0631_team desc\",\"created_at\":\"2020-12-02T23:33:55.000000Z\",\"updated_at\":\"2020-12-02T23:33:55.000000Z\"}}', '2020-12-02 21:33:55', '2020-12-02 21:33:55'),
(4, 'default', 'created', 'App\\Department', 2, 'App\\User', 1, '{\"attributes\":{\"id\":2,\"name\":\"\\u0627\\u0633\\u0648\\u0627\\u0642\",\"desc\":null,\"parent_id\":null,\"monetor_id\":null,\"editor_id\":null,\"writer_id\":null,\"created_at\":\"2020-12-02T23:34:08.000000Z\",\"updated_at\":\"2020-12-02T23:34:08.000000Z\"}}', '2020-12-02 21:34:08', '2020-12-02 21:34:08'),
(5, 'default', 'created', 'App\\Team', 2, 'App\\User', 1, '{\"attributes\":{\"id\":2,\"name\":\"\\u0627\\u0633\\u0648\\u0627\\u0642_team\",\"display_name\":\"\\u0627\\u0633\\u0648\\u0627\\u0642 team\",\"description\":\"This is \\u0627\\u0633\\u0648\\u0627\\u0642_team desc\",\"created_at\":\"2020-12-02T23:34:08.000000Z\",\"updated_at\":\"2020-12-02T23:34:08.000000Z\"}}', '2020-12-02 21:34:08', '2020-12-02 21:34:08'),
(6, 'default', 'created', 'App\\Department', 3, 'App\\User', 1, '{\"attributes\":{\"id\":3,\"name\":\"\\u0631\\u064a\\u0627\\u0636\\u0629\",\"desc\":null,\"parent_id\":null,\"monetor_id\":null,\"editor_id\":null,\"writer_id\":null,\"created_at\":\"2020-12-02T23:34:20.000000Z\",\"updated_at\":\"2020-12-02T23:34:20.000000Z\"}}', '2020-12-02 21:34:20', '2020-12-02 21:34:20'),
(7, 'default', 'created', 'App\\Team', 3, 'App\\User', 1, '{\"attributes\":{\"id\":3,\"name\":\"\\u0631\\u064a\\u0627\\u0636\\u0629_team\",\"display_name\":\"\\u0631\\u064a\\u0627\\u0636\\u0629 team\",\"description\":\"This is \\u0631\\u064a\\u0627\\u0636\\u0629_team desc\",\"created_at\":\"2020-12-02T23:34:21.000000Z\",\"updated_at\":\"2020-12-02T23:34:21.000000Z\"}}', '2020-12-02 21:34:21', '2020-12-02 21:34:21'),
(8, 'default', 'created', 'App\\Department', 4, 'App\\User', 1, '{\"attributes\":{\"id\":4,\"name\":\"\\u0645\\u0646\\u0648\\u0639\\u0627\\u062a\",\"desc\":null,\"parent_id\":null,\"monetor_id\":null,\"editor_id\":null,\"writer_id\":null,\"created_at\":\"2020-12-02T23:34:30.000000Z\",\"updated_at\":\"2020-12-02T23:34:30.000000Z\"}}', '2020-12-02 21:34:30', '2020-12-02 21:34:30'),
(9, 'default', 'created', 'App\\Team', 4, 'App\\User', 1, '{\"attributes\":{\"id\":4,\"name\":\"\\u0645\\u0646\\u0648\\u0639\\u0627\\u062a_team\",\"display_name\":\"\\u0645\\u0646\\u0648\\u0639\\u0627\\u062a team\",\"description\":\"This is \\u0645\\u0646\\u0648\\u0639\\u0627\\u062a_team desc\",\"created_at\":\"2020-12-02T23:34:31.000000Z\",\"updated_at\":\"2020-12-02T23:34:31.000000Z\"}}', '2020-12-02 21:34:31', '2020-12-02 21:34:31'),
(10, 'default', 'created', 'App\\Department', 5, 'App\\User', 1, '{\"attributes\":{\"id\":5,\"name\":\"\\u0628\\u0631\\u0627\\u0645\\u062c\",\"desc\":null,\"parent_id\":null,\"monetor_id\":null,\"editor_id\":null,\"writer_id\":null,\"created_at\":\"2020-12-02T23:34:42.000000Z\",\"updated_at\":\"2020-12-02T23:34:42.000000Z\"}}', '2020-12-02 21:34:42', '2020-12-02 21:34:42'),
(11, 'default', 'created', 'App\\Team', 5, 'App\\User', 1, '{\"attributes\":{\"id\":5,\"name\":\"\\u0628\\u0631\\u0627\\u0645\\u062c_team\",\"display_name\":\"\\u0628\\u0631\\u0627\\u0645\\u062c team\",\"description\":\"This is \\u0628\\u0631\\u0627\\u0645\\u062c_team desc\",\"created_at\":\"2020-12-02T23:34:42.000000Z\",\"updated_at\":\"2020-12-02T23:34:42.000000Z\"}}', '2020-12-02 21:34:42', '2020-12-02 21:34:42'),
(12, 'default', 'created', 'App\\Department', 6, 'App\\User', 1, '{\"attributes\":{\"id\":6,\"name\":\"\\u0645\\u0642\\u0627\\u0644\\u0627\\u062a\",\"desc\":null,\"parent_id\":null,\"monetor_id\":null,\"editor_id\":null,\"writer_id\":null,\"created_at\":\"2020-12-02T23:34:52.000000Z\",\"updated_at\":\"2020-12-02T23:34:52.000000Z\"}}', '2020-12-02 21:34:52', '2020-12-02 21:34:52'),
(13, 'default', 'created', 'App\\Team', 6, 'App\\User', 1, '{\"attributes\":{\"id\":6,\"name\":\"\\u0645\\u0642\\u0627\\u0644\\u0627\\u062a_team\",\"display_name\":\"\\u0645\\u0642\\u0627\\u0644\\u0627\\u062a team\",\"description\":\"This is \\u0645\\u0642\\u0627\\u0644\\u0627\\u062a_team desc\",\"created_at\":\"2020-12-02T23:34:52.000000Z\",\"updated_at\":\"2020-12-02T23:34:52.000000Z\"}}', '2020-12-02 21:34:52', '2020-12-02 21:34:52'),
(14, 'default', 'created', 'App\\News', 1, 'App\\User', 1, '{\"attributes\":{\"id\":1,\"title\":\"Lorem Ipsum\",\"body\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque condimentum lacus rutrum lacinia. Praesent orci odio, feugiat eu dolor vitae, tempus ultricies enim. Mauris vestibulum neque et dui luctus, at porttitor mi auctor. Vivamus consequat pretium mollis. Curabitur velit sem, efficitur ut pellentesque consequat, bibendum auctor dui. Praesent rhoncus risus lacus, sit amet tincidunt risus rutrum sit amet. Fusce elementum ex eget purus dapibus efficitur. Vivamus convallis metus id diam pulvinar dignissim.<\\/p>\\r\\n\\r\\n<p>Ut ante ex, dictum sit amet tempor vel, vehicula a nisi. Nulla elementum, odio sit amet scelerisque placerat, massa libero hendrerit augue, ut rhoncus nulla odio in eros. Nulla eleifend dignissim massa sit amet pretium. Duis tempor ipsum quis arcu facilisis, at tincidunt lorem efficitur. Aliquam sit amet odio malesuada enim mollis vehicula. Maecenas quis scelerisque nunc. Donec id dolor sed purus vehicula finibus fermentum vitae tellus. Etiam fermentum placerat magna ac rutrum. In et metus ac lectus sodales elementum. Mauris sapien diam, pellentesque vel vestibulum vitae, ornare ac dui. Donec iaculis nulla lorem, id maximus neque hendrerit ut. Etiam ipsum erat, pellentesque vitae eros eu, accumsan condimentum ligula. Maecenas elementum nisl risus, eget placerat turpis tristique bibendum. Donec a bibendum lectus, et sagittis ipsum.<\\/p>\\r\\n\\r\\n<p>Maecenas vulputate urna sed tristique ultricies. Donec mollis blandit arcu, nec blandit justo fringilla quis. Pellentesque risus dolor, sollicitudin eu maximus in, faucibus non dolor. Integer consequat elit hendrerit iaculis laoreet. In id tortor neque. Nullam luctus quis nibh nec pharetra. Ut eget porttitor massa. Curabitur quam lorem, hendrerit in molestie eleifend, tristique nec mauris. Praesent ipsum velit, tempus ac congue vel, fringilla ut mi.<\\/p>\\r\\n\\r\\n<p>Curabitur eu tempor enim. Nullam tellus ante, sagittis ac imperdiet a, convallis in quam. Integer in ipsum commodo elit finibus posuere vitae quis felis. Praesent et dictum metus. Ut nec imperdiet risus. Sed quis libero turpis. Integer eget est at leo lacinia commodo a non nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;<\\/p>\\r\\n\\r\\n<p>In aliquet augue imperdiet gravida imperdiet. Aenean sit amet urna sed dui imperdiet finibus. In lacinia lacinia ante a sagittis. Proin euismod turpis quis aliquam finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce convallis nisi non pharetra dictum. Aenean ipsum tellus, pharetra a odio vitae, eleifend ultricies quam. Etiam eget sapien eu felis pellentesque auctor. Praesent tempus diam eget egestas ultrices. In eleifend tempor rutrum. Nulla lacinia tincidunt dolor. Sed vel sapien rhoncus, mattis odio sit amet, dignissim elit. Nulla scelerisque dolor at justo dignissim luctus. Donec mi lacus, volutpat a fringilla at, lobortis nec arcu. Sed sem lacus, bibendum id elit vitae, facilisis auctor mauris.<\\/p>\\r\\n\\r\\n<p>Vivamus placerat luctus consectetur. Quisque sodales iaculis posuere. Cras auctor rutrum sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et sodales urna, eget vestibulum enim. Morbi blandit condimentum sagittis. In a neque a neque eleifend interdum. Vestibulum pharetra aliquet pharetra. Suspendisse sollicitudin, sapien at pretium dictum, massa velit porta quam, ac malesuada ipsum neque ut libero.<\\/p>\\r\\n\\r\\n<p>In posuere, ipsum nec fringilla gravida, massa nulla elementum tortor, ac volutpat nibh odio congue sem. Etiam efficitur a purus a faucibus. Ut luctus pulvinar felis et consequat. Etiam congue dolor vitae aliquam auctor. Donec ipsum lectus, sollicitudin quis sem venenatis, tempus lacinia libero. Aliquam dictum sollicitudin diam, sed placerat metus tempus interdum. Quisque vel consectetur massa. Praesent justo mi, mollis ut blandit in, placerat non est. Vestibulum maximus orci eu mauris luctus cursus. Fusce non tellus sagittis, ultricies enim sed, pharetra risus. In in convallis ex. Pellentesque auctor semper justo sit amet faucibus. Ut gravida ante vel eros egestas commodo. Suspendisse malesuada vulputate augue at porta. Sed in nibh blandit, porta ipsum iaculis, egestas sapien. Ut dignissim tortor mi, ac pulvinar ante sollicitudin in.<\\/p>\",\"user_id\":1,\"main_img\":\"sTd4E6tgkf8oxwSEy8gr9v2jn1Z6yDRzIQqeWfhz.jpeg\",\"department_id\":1,\"topic_id\":4,\"country\":\"\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629\",\"created_at\":\"2020-12-02T23:58:34.000000Z\",\"updated_at\":\"2020-12-02T23:58:34.000000Z\"}}', '2020-12-02 21:58:34', '2020-12-02 21:58:34'),
(15, 'default', 'created', 'App\\News', 2, 'App\\User', 1, '{\"attributes\":{\"id\":2,\"title\":\"Lorem Ipsum\",\"body\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque condimentum lacus rutrum lacinia. Praesent orci odio, feugiat eu dolor vitae, tempus ultricies enim. Mauris vestibulum neque et dui luctus, at porttitor mi auctor. Vivamus consequat pretium mollis. Curabitur velit sem, efficitur ut pellentesque consequat, bibendum auctor dui. Praesent rhoncus risus lacus, sit amet tincidunt risus rutrum sit amet. Fusce elementum ex eget purus dapibus efficitur. Vivamus convallis metus id diam pulvinar dignissim.<\\/p>\\r\\n\\r\\n<p>Ut ante ex, dictum sit amet tempor vel, vehicula a nisi. Nulla elementum, odio sit amet scelerisque placerat, massa libero hendrerit augue, ut rhoncus nulla odio in eros. Nulla eleifend dignissim massa sit amet pretium. Duis tempor ipsum quis arcu facilisis, at tincidunt lorem efficitur. Aliquam sit amet odio malesuada enim mollis vehicula. Maecenas quis scelerisque nunc. Donec id dolor sed purus vehicula finibus fermentum vitae tellus. Etiam fermentum placerat magna ac rutrum. In et metus ac lectus sodales elementum. Mauris sapien diam, pellentesque vel vestibulum vitae, ornare ac dui. Donec iaculis nulla lorem, id maximus neque hendrerit ut. Etiam ipsum erat, pellentesque vitae eros eu, accumsan condimentum ligula. Maecenas elementum nisl risus, eget placerat turpis tristique bibendum. Donec a bibendum lectus, et sagittis ipsum.<\\/p>\\r\\n\\r\\n<p>Maecenas vulputate urna sed tristique ultricies. Donec mollis blandit arcu, nec blandit justo fringilla quis. Pellentesque risus dolor, sollicitudin eu maximus in, faucibus non dolor. Integer consequat elit hendrerit iaculis laoreet. In id tortor neque. Nullam luctus quis nibh nec pharetra. Ut eget porttitor massa. Curabitur quam lorem, hendrerit in molestie eleifend, tristique nec mauris. Praesent ipsum velit, tempus ac congue vel, fringilla ut mi.<\\/p>\\r\\n\\r\\n<p>Curabitur eu tempor enim. Nullam tellus ante, sagittis ac imperdiet a, convallis in quam. Integer in ipsum commodo elit finibus posuere vitae quis felis. Praesent et dictum metus. Ut nec imperdiet risus. Sed quis libero turpis. Integer eget est at leo lacinia commodo a non nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;<\\/p>\\r\\n\\r\\n<p>In aliquet augue imperdiet gravida imperdiet. Aenean sit amet urna sed dui imperdiet finibus. In lacinia lacinia ante a sagittis. Proin euismod turpis quis aliquam finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce convallis nisi non pharetra dictum. Aenean ipsum tellus, pharetra a odio vitae, eleifend ultricies quam. Etiam eget sapien eu felis pellentesque auctor. Praesent tempus diam eget egestas ultrices. In eleifend tempor rutrum. Nulla lacinia tincidunt dolor. Sed vel sapien rhoncus, mattis odio sit amet, dignissim elit. Nulla scelerisque dolor at justo dignissim luctus. Donec mi lacus, volutpat a fringilla at, lobortis nec arcu. Sed sem lacus, bibendum id elit vitae, facilisis auctor mauris.<\\/p>\\r\\n\\r\\n<p>Vivamus placerat luctus consectetur. Quisque sodales iaculis posuere. Cras auctor rutrum sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et sodales urna, eget vestibulum enim. Morbi blandit condimentum sagittis. In a neque a neque eleifend interdum. Vestibulum pharetra aliquet pharetra. Suspendisse sollicitudin, sapien at pretium dictum, massa velit porta quam, ac malesuada ipsum neque ut libero.<\\/p>\\r\\n\\r\\n<p>In posuere, ipsum nec fringilla gravida, massa nulla elementum tortor, ac volutpat nibh odio congue sem. Etiam efficitur a purus a faucibus. Ut luctus pulvinar felis et consequat. Etiam congue dolor vitae aliquam auctor. Donec ipsum lectus, sollicitudin quis sem venenatis, tempus lacinia libero. Aliquam dictum sollicitudin diam, sed placerat metus tempus interdum. Quisque vel consectetur massa. Praesent justo mi, mollis ut blandit in, placerat non est. Vestibulum maximus orci eu mauris luctus cursus. Fusce non tellus sagittis, ultricies enim sed, pharetra risus. In in convallis ex. Pellentesque auctor semper justo sit amet faucibus. Ut gravida ante vel eros egestas commodo. Suspendisse malesuada vulputate augue at porta. Sed in nibh blandit, porta ipsum iaculis, egestas sapien. Ut dignissim tortor mi, ac pulvinar ante sollicitudin in.<\\/p>\",\"user_id\":1,\"main_img\":\"MnT86FWMtA0w52VK4ZnJimrZu85WYoExucMO1m1P.jpeg\",\"department_id\":1,\"topic_id\":4,\"country\":\"\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629\",\"created_at\":\"2020-12-02T23:58:34.000000Z\",\"updated_at\":\"2020-12-02T23:58:34.000000Z\"}}', '2020-12-02 21:58:35', '2020-12-02 21:58:35'),
(16, 'default', 'updated', 'App\\News', 1, 'App\\User', 1, '{\"attributes\":{\"id\":1,\"title\":\"Lorem Ipsum\",\"body\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque condimentum lacus rutrum lacinia. Praesent orci odio, feugiat eu dolor vitae, tempus ultricies enim. Mauris vestibulum neque et dui luctus, at porttitor mi auctor. Vivamus consequat pretium mollis. Curabitur velit sem, efficitur ut pellentesque consequat, bibendum auctor dui. Praesent rhoncus risus lacus, sit amet tincidunt risus rutrum sit amet. Fusce elementum ex eget purus dapibus efficitur. Vivamus convallis metus id diam pulvinar dignissim.<\\/p>\\r\\n\\r\\n<p>Ut ante ex, dictum sit amet tempor vel, vehicula a nisi. Nulla elementum, odio sit amet scelerisque placerat, massa libero hendrerit augue, ut rhoncus nulla odio in eros. Nulla eleifend dignissim massa sit amet pretium. Duis tempor ipsum quis arcu facilisis, at tincidunt lorem efficitur. Aliquam sit amet odio malesuada enim mollis vehicula. Maecenas quis scelerisque nunc. Donec id dolor sed purus vehicula finibus fermentum vitae tellus. Etiam fermentum placerat magna ac rutrum. In et metus ac lectus sodales elementum. Mauris sapien diam, pellentesque vel vestibulum vitae, ornare ac dui. Donec iaculis nulla lorem, id maximus neque hendrerit ut. Etiam ipsum erat, pellentesque vitae eros eu, accumsan condimentum ligula. Maecenas elementum nisl risus, eget placerat turpis tristique bibendum. Donec a bibendum lectus, et sagittis ipsum.<\\/p>\\r\\n\\r\\n<p>Maecenas vulputate urna sed tristique ultricies. Donec mollis blandit arcu, nec blandit justo fringilla quis. Pellentesque risus dolor, sollicitudin eu maximus in, faucibus non dolor. Integer consequat elit hendrerit iaculis laoreet. In id tortor neque. Nullam luctus quis nibh nec pharetra. Ut eget porttitor massa. Curabitur quam lorem, hendrerit in molestie eleifend, tristique nec mauris. Praesent ipsum velit, tempus ac congue vel, fringilla ut mi.<\\/p>\\r\\n\\r\\n<p>Curabitur eu tempor enim. Nullam tellus ante, sagittis ac imperdiet a, convallis in quam. Integer in ipsum commodo elit finibus posuere vitae quis felis. Praesent et dictum metus. Ut nec imperdiet risus. Sed quis libero turpis. Integer eget est at leo lacinia commodo a non nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;<\\/p>\\r\\n\\r\\n<p>In aliquet augue imperdiet gravida imperdiet. Aenean sit amet urna sed dui imperdiet finibus. In lacinia lacinia ante a sagittis. Proin euismod turpis quis aliquam finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce convallis nisi non pharetra dictum. Aenean ipsum tellus, pharetra a odio vitae, eleifend ultricies quam. Etiam eget sapien eu felis pellentesque auctor. Praesent tempus diam eget egestas ultrices. In eleifend tempor rutrum. Nulla lacinia tincidunt dolor. Sed vel sapien rhoncus, mattis odio sit amet, dignissim elit. Nulla scelerisque dolor at justo dignissim luctus. Donec mi lacus, volutpat a fringilla at, lobortis nec arcu. Sed sem lacus, bibendum id elit vitae, facilisis auctor mauris.<\\/p>\\r\\n\\r\\n<p>Vivamus placerat luctus consectetur. Quisque sodales iaculis posuere. Cras auctor rutrum sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et sodales urna, eget vestibulum enim. Morbi blandit condimentum sagittis. In a neque a neque eleifend interdum. Vestibulum pharetra aliquet pharetra. Suspendisse sollicitudin, sapien at pretium dictum, massa velit porta quam, ac malesuada ipsum neque ut libero.<\\/p>\\r\\n\\r\\n<p>In posuere, ipsum nec fringilla gravida, massa nulla elementum tortor, ac volutpat nibh odio congue sem. Etiam efficitur a purus a faucibus. Ut luctus pulvinar felis et consequat. Etiam congue dolor vitae aliquam auctor. Donec ipsum lectus, sollicitudin quis sem venenatis, tempus lacinia libero. Aliquam dictum sollicitudin diam, sed placerat metus tempus interdum. Quisque vel consectetur massa. Praesent justo mi, mollis ut blandit in, placerat non est. Vestibulum maximus orci eu mauris luctus cursus. Fusce non tellus sagittis, ultricies enim sed, pharetra risus. In in convallis ex. Pellentesque auctor semper justo sit amet faucibus. Ut gravida ante vel eros egestas commodo. Suspendisse malesuada vulputate augue at porta. Sed in nibh blandit, porta ipsum iaculis, egestas sapien. Ut dignissim tortor mi, ac pulvinar ante sollicitudin in.<\\/p>\",\"user_id\":1,\"main_img\":\"oVswkud5yusq30mvlrMQDpi2xqh2Us4OSS8HWItk.jpeg\",\"department_id\":1,\"topic_id\":4,\"country\":\"\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629\",\"created_at\":\"2020-12-02T23:58:34.000000Z\",\"updated_at\":\"2020-12-03T00:11:47.000000Z\"},\"old\":{\"id\":1,\"title\":\"Lorem Ipsum\",\"body\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque condimentum lacus rutrum lacinia. Praesent orci odio, feugiat eu dolor vitae, tempus ultricies enim. Mauris vestibulum neque et dui luctus, at porttitor mi auctor. Vivamus consequat pretium mollis. Curabitur velit sem, efficitur ut pellentesque consequat, bibendum auctor dui. Praesent rhoncus risus lacus, sit amet tincidunt risus rutrum sit amet. Fusce elementum ex eget purus dapibus efficitur. Vivamus convallis metus id diam pulvinar dignissim.<\\/p>\\r\\n\\r\\n<p>Ut ante ex, dictum sit amet tempor vel, vehicula a nisi. Nulla elementum, odio sit amet scelerisque placerat, massa libero hendrerit augue, ut rhoncus nulla odio in eros. Nulla eleifend dignissim massa sit amet pretium. Duis tempor ipsum quis arcu facilisis, at tincidunt lorem efficitur. Aliquam sit amet odio malesuada enim mollis vehicula. Maecenas quis scelerisque nunc. Donec id dolor sed purus vehicula finibus fermentum vitae tellus. Etiam fermentum placerat magna ac rutrum. In et metus ac lectus sodales elementum. Mauris sapien diam, pellentesque vel vestibulum vitae, ornare ac dui. Donec iaculis nulla lorem, id maximus neque hendrerit ut. Etiam ipsum erat, pellentesque vitae eros eu, accumsan condimentum ligula. Maecenas elementum nisl risus, eget placerat turpis tristique bibendum. Donec a bibendum lectus, et sagittis ipsum.<\\/p>\\r\\n\\r\\n<p>Maecenas vulputate urna sed tristique ultricies. Donec mollis blandit arcu, nec blandit justo fringilla quis. Pellentesque risus dolor, sollicitudin eu maximus in, faucibus non dolor. Integer consequat elit hendrerit iaculis laoreet. In id tortor neque. Nullam luctus quis nibh nec pharetra. Ut eget porttitor massa. Curabitur quam lorem, hendrerit in molestie eleifend, tristique nec mauris. Praesent ipsum velit, tempus ac congue vel, fringilla ut mi.<\\/p>\\r\\n\\r\\n<p>Curabitur eu tempor enim. Nullam tellus ante, sagittis ac imperdiet a, convallis in quam. Integer in ipsum commodo elit finibus posuere vitae quis felis. Praesent et dictum metus. Ut nec imperdiet risus. Sed quis libero turpis. Integer eget est at leo lacinia commodo a non nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;<\\/p>\\r\\n\\r\\n<p>In aliquet augue imperdiet gravida imperdiet. Aenean sit amet urna sed dui imperdiet finibus. In lacinia lacinia ante a sagittis. Proin euismod turpis quis aliquam finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce convallis nisi non pharetra dictum. Aenean ipsum tellus, pharetra a odio vitae, eleifend ultricies quam. Etiam eget sapien eu felis pellentesque auctor. Praesent tempus diam eget egestas ultrices. In eleifend tempor rutrum. Nulla lacinia tincidunt dolor. Sed vel sapien rhoncus, mattis odio sit amet, dignissim elit. Nulla scelerisque dolor at justo dignissim luctus. Donec mi lacus, volutpat a fringilla at, lobortis nec arcu. Sed sem lacus, bibendum id elit vitae, facilisis auctor mauris.<\\/p>\\r\\n\\r\\n<p>Vivamus placerat luctus consectetur. Quisque sodales iaculis posuere. Cras auctor rutrum sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et sodales urna, eget vestibulum enim. Morbi blandit condimentum sagittis. In a neque a neque eleifend interdum. Vestibulum pharetra aliquet pharetra. Suspendisse sollicitudin, sapien at pretium dictum, massa velit porta quam, ac malesuada ipsum neque ut libero.<\\/p>\\r\\n\\r\\n<p>In posuere, ipsum nec fringilla gravida, massa nulla elementum tortor, ac volutpat nibh odio congue sem. Etiam efficitur a purus a faucibus. Ut luctus pulvinar felis et consequat. Etiam congue dolor vitae aliquam auctor. Donec ipsum lectus, sollicitudin quis sem venenatis, tempus lacinia libero. Aliquam dictum sollicitudin diam, sed placerat metus tempus interdum. Quisque vel consectetur massa. Praesent justo mi, mollis ut blandit in, placerat non est. Vestibulum maximus orci eu mauris luctus cursus. Fusce non tellus sagittis, ultricies enim sed, pharetra risus. In in convallis ex. Pellentesque auctor semper justo sit amet faucibus. Ut gravida ante vel eros egestas commodo. Suspendisse malesuada vulputate augue at porta. Sed in nibh blandit, porta ipsum iaculis, egestas sapien. Ut dignissim tortor mi, ac pulvinar ante sollicitudin in.<\\/p>\",\"user_id\":1,\"main_img\":\"sTd4E6tgkf8oxwSEy8gr9v2jn1Z6yDRzIQqeWfhz.jpeg\",\"department_id\":1,\"topic_id\":4,\"country\":\"\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629\",\"created_at\":\"2020-12-02T23:58:34.000000Z\",\"updated_at\":\"2020-12-02T23:58:34.000000Z\"}}', '2020-12-02 22:11:48', '2020-12-02 22:11:48'),
(17, 'default', 'created', 'App\\News', 3, 'App\\User', 1, '{\"attributes\":{\"id\":3,\"title\":\"Lorem Ipsum\",\"body\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque condimentum lacus rutrum lacinia. Praesent orci odio, feugiat eu dolor vitae, tempus ultricies enim. Mauris vestibulum neque et dui luctus, at porttitor mi auctor. Vivamus consequat pretium mollis. Curabitur velit sem, efficitur ut pellentesque consequat, bibendum auctor dui. Praesent rhoncus risus lacus, sit amet tincidunt risus rutrum sit amet. Fusce elementum ex eget purus dapibus efficitur. Vivamus convallis metus id diam pulvinar dignissim.<\\/p>\\r\\n\\r\\n<p>Ut ante ex, dictum sit amet tempor vel, vehicula a nisi. Nulla elementum, odio sit amet scelerisque placerat, massa libero hendrerit augue, ut rhoncus nulla odio in eros. Nulla eleifend dignissim massa sit amet pretium. Duis tempor ipsum quis arcu facilisis, at tincidunt lorem efficitur. Aliquam sit amet odio malesuada enim mollis vehicula. Maecenas quis scelerisque nunc. Donec id dolor sed purus vehicula finibus fermentum vitae tellus. Etiam fermentum placerat magna ac rutrum. In et metus ac lectus sodales elementum. Mauris sapien diam, pellentesque vel vestibulum vitae, ornare ac dui. Donec iaculis nulla lorem, id maximus neque hendrerit ut. Etiam ipsum erat, pellentesque vitae eros eu, accumsan condimentum ligula. Maecenas elementum nisl risus, eget placerat turpis tristique bibendum. Donec a bibendum lectus, et sagittis ipsum.<\\/p>\\r\\n\\r\\n<p>Maecenas vulputate urna sed tristique ultricies. Donec mollis blandit arcu, nec blandit justo fringilla quis. Pellentesque risus dolor, sollicitudin eu maximus in, faucibus non dolor. Integer consequat elit hendrerit iaculis laoreet. In id tortor neque. Nullam luctus quis nibh nec pharetra. Ut eget porttitor massa. Curabitur quam lorem, hendrerit in molestie eleifend, tristique nec mauris. Praesent ipsum velit, tempus ac congue vel, fringilla ut mi.<\\/p>\\r\\n\\r\\n<p>Curabitur eu tempor enim. Nullam tellus ante, sagittis ac imperdiet a, convallis in quam. Integer in ipsum commodo elit finibus posuere vitae quis felis. Praesent et dictum metus. Ut nec imperdiet risus. Sed quis libero turpis. Integer eget est at leo lacinia commodo a non nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;<\\/p>\\r\\n\\r\\n<p>In aliquet augue imperdiet gravida imperdiet. Aenean sit amet urna sed dui imperdiet finibus. In lacinia lacinia ante a sagittis. Proin euismod turpis quis aliquam finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce convallis nisi non pharetra dictum. Aenean ipsum tellus, pharetra a odio vitae, eleifend ultricies quam. Etiam eget sapien eu felis pellentesque auctor. Praesent tempus diam eget egestas ultrices. In eleifend tempor rutrum. Nulla lacinia tincidunt dolor. Sed vel sapien rhoncus, mattis odio sit amet, dignissim elit. Nulla scelerisque dolor at justo dignissim luctus. Donec mi lacus, volutpat a fringilla at, lobortis nec arcu. Sed sem lacus, bibendum id elit vitae, facilisis auctor mauris.<\\/p>\\r\\n\\r\\n<p>Vivamus placerat luctus consectetur. Quisque sodales iaculis posuere. Cras auctor rutrum sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et sodales urna, eget vestibulum enim. Morbi blandit condimentum sagittis. In a neque a neque eleifend interdum. Vestibulum pharetra aliquet pharetra. Suspendisse sollicitudin, sapien at pretium dictum, massa velit porta quam, ac malesuada ipsum neque ut libero.<\\/p>\\r\\n\\r\\n<p>In posuere, ipsum nec fringilla gravida, massa nulla elementum tortor, ac volutpat nibh odio congue sem. Etiam efficitur a purus a faucibus. Ut luctus pulvinar felis et consequat. Etiam congue dolor vitae aliquam auctor. Donec ipsum lectus, sollicitudin quis sem venenatis, tempus lacinia libero. Aliquam dictum sollicitudin diam, sed placerat metus tempus interdum. Quisque vel consectetur massa. Praesent justo mi, mollis ut blandit in, placerat non est. Vestibulum maximus orci eu mauris luctus cursus. Fusce non tellus sagittis, ultricies enim sed, pharetra risus. In in convallis ex. Pellentesque auctor semper justo sit amet faucibus. Ut gravida ante vel eros egestas commodo. Suspendisse malesuada vulputate augue at porta. Sed in nibh blandit, porta ipsum iaculis, egestas sapien. Ut dignissim tortor mi, ac pulvinar ante sollicitudin in.<\\/p>\",\"user_id\":1,\"main_img\":\"nn4JXvl6yHwUTNq7JAST1lLMwGzn3cB104xHVApw.jpeg\",\"department_id\":1,\"topic_id\":1,\"country\":\"\\u0645\\u0635\\u0631\",\"created_at\":\"2020-12-03T00:17:43.000000Z\",\"updated_at\":\"2020-12-03T00:17:43.000000Z\"}}', '2020-12-02 22:17:43', '2020-12-02 22:17:43'),
(18, 'default', 'created', 'App\\News', 4, 'App\\User', 1, '{\"attributes\":{\"id\":4,\"title\":\"Lorem Ipsum\",\"body\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque condimentum lacus rutrum lacinia. Praesent orci odio, feugiat eu dolor vitae, tempus ultricies enim. Mauris vestibulum neque et dui luctus, at porttitor mi auctor. Vivamus consequat pretium mollis. Curabitur velit sem, efficitur ut pellentesque consequat, bibendum auctor dui. Praesent rhoncus risus lacus, sit amet tincidunt risus rutrum sit amet. Fusce elementum ex eget purus dapibus efficitur. Vivamus convallis metus id diam pulvinar dignissim.<\\/p>\\r\\n\\r\\n<p>Ut ante ex, dictum sit amet tempor vel, vehicula a nisi. Nulla elementum, odio sit amet scelerisque placerat, massa libero hendrerit augue, ut rhoncus nulla odio in eros. Nulla eleifend dignissim massa sit amet pretium. Duis tempor ipsum quis arcu facilisis, at tincidunt lorem efficitur. Aliquam sit amet odio malesuada enim mollis vehicula. Maecenas quis scelerisque nunc. Donec id dolor sed purus vehicula finibus fermentum vitae tellus. Etiam fermentum placerat magna ac rutrum. In et metus ac lectus sodales elementum. Mauris sapien diam, pellentesque vel vestibulum vitae, ornare ac dui. Donec iaculis nulla lorem, id maximus neque hendrerit ut. Etiam ipsum erat, pellentesque vitae eros eu, accumsan condimentum ligula. Maecenas elementum nisl risus, eget placerat turpis tristique bibendum. Donec a bibendum lectus, et sagittis ipsum.<\\/p>\\r\\n\\r\\n<p>Maecenas vulputate urna sed tristique ultricies. Donec mollis blandit arcu, nec blandit justo fringilla quis. Pellentesque risus dolor, sollicitudin eu maximus in, faucibus non dolor. Integer consequat elit hendrerit iaculis laoreet. In id tortor neque. Nullam luctus quis nibh nec pharetra. Ut eget porttitor massa. Curabitur quam lorem, hendrerit in molestie eleifend, tristique nec mauris. Praesent ipsum velit, tempus ac congue vel, fringilla ut mi.<\\/p>\\r\\n\\r\\n<p>Curabitur eu tempor enim. Nullam tellus ante, sagittis ac imperdiet a, convallis in quam. Integer in ipsum commodo elit finibus posuere vitae quis felis. Praesent et dictum metus. Ut nec imperdiet risus. Sed quis libero turpis. Integer eget est at leo lacinia commodo a non nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;<\\/p>\\r\\n\\r\\n<p>In aliquet augue imperdiet gravida imperdiet. Aenean sit amet urna sed dui imperdiet finibus. In lacinia lacinia ante a sagittis. Proin euismod turpis quis aliquam finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce convallis nisi non pharetra dictum. Aenean ipsum tellus, pharetra a odio vitae, eleifend ultricies quam. Etiam eget sapien eu felis pellentesque auctor. Praesent tempus diam eget egestas ultrices. In eleifend tempor rutrum. Nulla lacinia tincidunt dolor. Sed vel sapien rhoncus, mattis odio sit amet, dignissim elit. Nulla scelerisque dolor at justo dignissim luctus. Donec mi lacus, volutpat a fringilla at, lobortis nec arcu. Sed sem lacus, bibendum id elit vitae, facilisis auctor mauris.<\\/p>\\r\\n\\r\\n<p>Vivamus placerat luctus consectetur. Quisque sodales iaculis posuere. Cras auctor rutrum sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et sodales urna, eget vestibulum enim. Morbi blandit condimentum sagittis. In a neque a neque eleifend interdum. Vestibulum pharetra aliquet pharetra. Suspendisse sollicitudin, sapien at pretium dictum, massa velit porta quam, ac malesuada ipsum neque ut libero.<\\/p>\\r\\n\\r\\n<p>In posuere, ipsum nec fringilla gravida, massa nulla elementum tortor, ac volutpat nibh odio congue sem. Etiam efficitur a purus a faucibus. Ut luctus pulvinar felis et consequat. Etiam congue dolor vitae aliquam auctor. Donec ipsum lectus, sollicitudin quis sem venenatis, tempus lacinia libero. Aliquam dictum sollicitudin diam, sed placerat metus tempus interdum. Quisque vel consectetur massa. Praesent justo mi, mollis ut blandit in, placerat non est. Vestibulum maximus orci eu mauris luctus cursus. Fusce non tellus sagittis, ultricies enim sed, pharetra risus. In in convallis ex. Pellentesque auctor semper justo sit amet faucibus. Ut gravida ante vel eros egestas commodo. Suspendisse malesuada vulputate augue at porta. Sed in nibh blandit, porta ipsum iaculis, egestas sapien. Ut dignissim tortor mi, ac pulvinar ante sollicitudin in.<\\/p>\",\"user_id\":1,\"main_img\":\"zb4Qz5CqKqg64feqlz2ZV5n0vQS77jM8zIMRaDu6.jpeg\",\"department_id\":1,\"topic_id\":3,\"country\":\"\\u0627\\u0645\\u0631\\u064a\\u0643\\u0627\",\"created_at\":\"2020-12-03T00:21:51.000000Z\",\"updated_at\":\"2020-12-03T00:21:51.000000Z\"}}', '2020-12-02 22:21:51', '2020-12-02 22:21:51'),
(19, 'default', 'created', 'App\\News', 5, 'App\\User', 1, '{\"attributes\":{\"id\":5,\"title\":\"Lorem Ipsum\",\"body\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque condimentum lacus rutrum lacinia. Praesent orci odio, feugiat eu dolor vitae, tempus ultricies enim. Mauris vestibulum neque et dui luctus, at porttitor mi auctor. Vivamus consequat pretium mollis. Curabitur velit sem, efficitur ut pellentesque consequat, bibendum auctor dui. Praesent rhoncus risus lacus, sit amet tincidunt risus rutrum sit amet. Fusce elementum ex eget purus dapibus efficitur. Vivamus convallis metus id diam pulvinar dignissim.<\\/p>\\r\\n\\r\\n<p>Ut ante ex, dictum sit amet tempor vel, vehicula a nisi. Nulla elementum, odio sit amet scelerisque placerat, massa libero hendrerit augue, ut rhoncus nulla odio in eros. Nulla eleifend dignissim massa sit amet pretium. Duis tempor ipsum quis arcu facilisis, at tincidunt lorem efficitur. Aliquam sit amet odio malesuada enim mollis vehicula. Maecenas quis scelerisque nunc. Donec id dolor sed purus vehicula finibus fermentum vitae tellus. Etiam fermentum placerat magna ac rutrum. In et metus ac lectus sodales elementum. Mauris sapien diam, pellentesque vel vestibulum vitae, ornare ac dui. Donec iaculis nulla lorem, id maximus neque hendrerit ut. Etiam ipsum erat, pellentesque vitae eros eu, accumsan condimentum ligula. Maecenas elementum nisl risus, eget placerat turpis tristique bibendum. Donec a bibendum lectus, et sagittis ipsum.<\\/p>\\r\\n\\r\\n<p>Maecenas vulputate urna sed tristique ultricies. Donec mollis blandit arcu, nec blandit justo fringilla quis. Pellentesque risus dolor, sollicitudin eu maximus in, faucibus non dolor. Integer consequat elit hendrerit iaculis laoreet. In id tortor neque. Nullam luctus quis nibh nec pharetra. Ut eget porttitor massa. Curabitur quam lorem, hendrerit in molestie eleifend, tristique nec mauris. Praesent ipsum velit, tempus ac congue vel, fringilla ut mi.<\\/p>\\r\\n\\r\\n<p>Curabitur eu tempor enim. Nullam tellus ante, sagittis ac imperdiet a, convallis in quam. Integer in ipsum commodo elit finibus posuere vitae quis felis. Praesent et dictum metus. Ut nec imperdiet risus. Sed quis libero turpis. Integer eget est at leo lacinia commodo a non nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;<\\/p>\\r\\n\\r\\n<p>In aliquet augue imperdiet gravida imperdiet. Aenean sit amet urna sed dui imperdiet finibus. In lacinia lacinia ante a sagittis. Proin euismod turpis quis aliquam finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce convallis nisi non pharetra dictum. Aenean ipsum tellus, pharetra a odio vitae, eleifend ultricies quam. Etiam eget sapien eu felis pellentesque auctor. Praesent tempus diam eget egestas ultrices. In eleifend tempor rutrum. Nulla lacinia tincidunt dolor. Sed vel sapien rhoncus, mattis odio sit amet, dignissim elit. Nulla scelerisque dolor at justo dignissim luctus. Donec mi lacus, volutpat a fringilla at, lobortis nec arcu. Sed sem lacus, bibendum id elit vitae, facilisis auctor mauris.<\\/p>\\r\\n\\r\\n<p>Vivamus placerat luctus consectetur. Quisque sodales iaculis posuere. Cras auctor rutrum sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et sodales urna, eget vestibulum enim. Morbi blandit condimentum sagittis. In a neque a neque eleifend interdum. Vestibulum pharetra aliquet pharetra. Suspendisse sollicitudin, sapien at pretium dictum, massa velit porta quam, ac malesuada ipsum neque ut libero.<\\/p>\\r\\n\\r\\n<p>In posuere, ipsum nec fringilla gravida, massa nulla elementum tortor, ac volutpat nibh odio congue sem. Etiam efficitur a purus a faucibus. Ut luctus pulvinar felis et consequat. Etiam congue dolor vitae aliquam auctor. Donec ipsum lectus, sollicitudin quis sem venenatis, tempus lacinia libero. Aliquam dictum sollicitudin diam, sed placerat metus tempus interdum. Quisque vel consectetur massa. Praesent justo mi, mollis ut blandit in, placerat non est. Vestibulum maximus orci eu mauris luctus cursus. Fusce non tellus sagittis, ultricies enim sed, pharetra risus. In in convallis ex. Pellentesque auctor semper justo sit amet faucibus. Ut gravida ante vel eros egestas commodo. Suspendisse malesuada vulputate augue at porta. Sed in nibh blandit, porta ipsum iaculis, egestas sapien. Ut dignissim tortor mi, ac pulvinar ante sollicitudin in.<\\/p>\",\"user_id\":1,\"main_img\":\"ovh9me5plWWrjFFqaZf2maTKFiMn5YRMhKF9ujwE.jpeg\",\"department_id\":1,\"topic_id\":6,\"country\":\"\\u0627\\u0644\\u0639\\u0631\\u0627\\u0642\",\"created_at\":\"2020-12-03T00:24:26.000000Z\",\"updated_at\":\"2020-12-03T00:24:26.000000Z\"}}', '2020-12-02 22:24:27', '2020-12-02 22:24:27'),
(20, 'default', 'updated', 'App\\News', 2, 'App\\User', 1, '{\"attributes\":{\"id\":2,\"title\":\"Lorem Ipsum\",\"body\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque condimentum lacus rutrum lacinia. Praesent orci odio, feugiat eu dolor vitae, tempus ultricies enim. Mauris vestibulum neque et dui luctus, at porttitor mi auctor. Vivamus consequat pretium mollis. Curabitur velit sem, efficitur ut pellentesque consequat, bibendum auctor dui. Praesent rhoncus risus lacus, sit amet tincidunt risus rutrum sit amet. Fusce elementum ex eget purus dapibus efficitur. Vivamus convallis metus id diam pulvinar dignissim.<\\/p>\\r\\n\\r\\n<p>Ut ante ex, dictum sit amet tempor vel, vehicula a nisi. Nulla elementum, odio sit amet scelerisque placerat, massa libero hendrerit augue, ut rhoncus nulla odio in eros. Nulla eleifend dignissim massa sit amet pretium. Duis tempor ipsum quis arcu facilisis, at tincidunt lorem efficitur. Aliquam sit amet odio malesuada enim mollis vehicula. Maecenas quis scelerisque nunc. Donec id dolor sed purus vehicula finibus fermentum vitae tellus. Etiam fermentum placerat magna ac rutrum. In et metus ac lectus sodales elementum. Mauris sapien diam, pellentesque vel vestibulum vitae, ornare ac dui. Donec iaculis nulla lorem, id maximus neque hendrerit ut. Etiam ipsum erat, pellentesque vitae eros eu, accumsan condimentum ligula. Maecenas elementum nisl risus, eget placerat turpis tristique bibendum. Donec a bibendum lectus, et sagittis ipsum.<\\/p>\\r\\n\\r\\n<p>Maecenas vulputate urna sed tristique ultricies. Donec mollis blandit arcu, nec blandit justo fringilla quis. Pellentesque risus dolor, sollicitudin eu maximus in, faucibus non dolor. Integer consequat elit hendrerit iaculis laoreet. In id tortor neque. Nullam luctus quis nibh nec pharetra. Ut eget porttitor massa. Curabitur quam lorem, hendrerit in molestie eleifend, tristique nec mauris. Praesent ipsum velit, tempus ac congue vel, fringilla ut mi.<\\/p>\\r\\n\\r\\n<p>Curabitur eu tempor enim. Nullam tellus ante, sagittis ac imperdiet a, convallis in quam. Integer in ipsum commodo elit finibus posuere vitae quis felis. Praesent et dictum metus. Ut nec imperdiet risus. Sed quis libero turpis. Integer eget est at leo lacinia commodo a non nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;<\\/p>\\r\\n\\r\\n<p>In aliquet augue imperdiet gravida imperdiet. Aenean sit amet urna sed dui imperdiet finibus. In lacinia lacinia ante a sagittis. Proin euismod turpis quis aliquam finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce convallis nisi non pharetra dictum. Aenean ipsum tellus, pharetra a odio vitae, eleifend ultricies quam. Etiam eget sapien eu felis pellentesque auctor. Praesent tempus diam eget egestas ultrices. In eleifend tempor rutrum. Nulla lacinia tincidunt dolor. Sed vel sapien rhoncus, mattis odio sit amet, dignissim elit. Nulla scelerisque dolor at justo dignissim luctus. Donec mi lacus, volutpat a fringilla at, lobortis nec arcu. Sed sem lacus, bibendum id elit vitae, facilisis auctor mauris.<\\/p>\\r\\n\\r\\n<p>Vivamus placerat luctus consectetur. Quisque sodales iaculis posuere. Cras auctor rutrum sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et sodales urna, eget vestibulum enim. Morbi blandit condimentum sagittis. In a neque a neque eleifend interdum. Vestibulum pharetra aliquet pharetra. Suspendisse sollicitudin, sapien at pretium dictum, massa velit porta quam, ac malesuada ipsum neque ut libero.<\\/p>\\r\\n\\r\\n<p>In posuere, ipsum nec fringilla gravida, massa nulla elementum tortor, ac volutpat nibh odio congue sem. Etiam efficitur a purus a faucibus. Ut luctus pulvinar felis et consequat. Etiam congue dolor vitae aliquam auctor. Donec ipsum lectus, sollicitudin quis sem venenatis, tempus lacinia libero. Aliquam dictum sollicitudin diam, sed placerat metus tempus interdum. Quisque vel consectetur massa. Praesent justo mi, mollis ut blandit in, placerat non est. Vestibulum maximus orci eu mauris luctus cursus. Fusce non tellus sagittis, ultricies enim sed, pharetra risus. In in convallis ex. Pellentesque auctor semper justo sit amet faucibus. Ut gravida ante vel eros egestas commodo. Suspendisse malesuada vulputate augue at porta. Sed in nibh blandit, porta ipsum iaculis, egestas sapien. Ut dignissim tortor mi, ac pulvinar ante sollicitudin in.ss<\\/p>\",\"user_id\":1,\"main_img\":\"MnT86FWMtA0w52VK4ZnJimrZu85WYoExucMO1m1P.jpeg\",\"department_id\":1,\"topic_id\":4,\"country\":\"\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629\",\"created_at\":\"2020-12-02T23:58:34.000000Z\",\"updated_at\":\"2020-12-03T12:58:17.000000Z\"},\"old\":{\"id\":2,\"title\":\"Lorem Ipsum\",\"body\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque condimentum lacus rutrum lacinia. Praesent orci odio, feugiat eu dolor vitae, tempus ultricies enim. Mauris vestibulum neque et dui luctus, at porttitor mi auctor. Vivamus consequat pretium mollis. Curabitur velit sem, efficitur ut pellentesque consequat, bibendum auctor dui. Praesent rhoncus risus lacus, sit amet tincidunt risus rutrum sit amet. Fusce elementum ex eget purus dapibus efficitur. Vivamus convallis metus id diam pulvinar dignissim.<\\/p>\\r\\n\\r\\n<p>Ut ante ex, dictum sit amet tempor vel, vehicula a nisi. Nulla elementum, odio sit amet scelerisque placerat, massa libero hendrerit augue, ut rhoncus nulla odio in eros. Nulla eleifend dignissim massa sit amet pretium. Duis tempor ipsum quis arcu facilisis, at tincidunt lorem efficitur. Aliquam sit amet odio malesuada enim mollis vehicula. Maecenas quis scelerisque nunc. Donec id dolor sed purus vehicula finibus fermentum vitae tellus. Etiam fermentum placerat magna ac rutrum. In et metus ac lectus sodales elementum. Mauris sapien diam, pellentesque vel vestibulum vitae, ornare ac dui. Donec iaculis nulla lorem, id maximus neque hendrerit ut. Etiam ipsum erat, pellentesque vitae eros eu, accumsan condimentum ligula. Maecenas elementum nisl risus, eget placerat turpis tristique bibendum. Donec a bibendum lectus, et sagittis ipsum.<\\/p>\\r\\n\\r\\n<p>Maecenas vulputate urna sed tristique ultricies. Donec mollis blandit arcu, nec blandit justo fringilla quis. Pellentesque risus dolor, sollicitudin eu maximus in, faucibus non dolor. Integer consequat elit hendrerit iaculis laoreet. In id tortor neque. Nullam luctus quis nibh nec pharetra. Ut eget porttitor massa. Curabitur quam lorem, hendrerit in molestie eleifend, tristique nec mauris. Praesent ipsum velit, tempus ac congue vel, fringilla ut mi.<\\/p>\\r\\n\\r\\n<p>Curabitur eu tempor enim. Nullam tellus ante, sagittis ac imperdiet a, convallis in quam. Integer in ipsum commodo elit finibus posuere vitae quis felis. Praesent et dictum metus. Ut nec imperdiet risus. Sed quis libero turpis. Integer eget est at leo lacinia commodo a non nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;<\\/p>\\r\\n\\r\\n<p>In aliquet augue imperdiet gravida imperdiet. Aenean sit amet urna sed dui imperdiet finibus. In lacinia lacinia ante a sagittis. Proin euismod turpis quis aliquam finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce convallis nisi non pharetra dictum. Aenean ipsum tellus, pharetra a odio vitae, eleifend ultricies quam. Etiam eget sapien eu felis pellentesque auctor. Praesent tempus diam eget egestas ultrices. In eleifend tempor rutrum. Nulla lacinia tincidunt dolor. Sed vel sapien rhoncus, mattis odio sit amet, dignissim elit. Nulla scelerisque dolor at justo dignissim luctus. Donec mi lacus, volutpat a fringilla at, lobortis nec arcu. Sed sem lacus, bibendum id elit vitae, facilisis auctor mauris.<\\/p>\\r\\n\\r\\n<p>Vivamus placerat luctus consectetur. Quisque sodales iaculis posuere. Cras auctor rutrum sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et sodales urna, eget vestibulum enim. Morbi blandit condimentum sagittis. In a neque a neque eleifend interdum. Vestibulum pharetra aliquet pharetra. Suspendisse sollicitudin, sapien at pretium dictum, massa velit porta quam, ac malesuada ipsum neque ut libero.<\\/p>\\r\\n\\r\\n<p>In posuere, ipsum nec fringilla gravida, massa nulla elementum tortor, ac volutpat nibh odio congue sem. Etiam efficitur a purus a faucibus. Ut luctus pulvinar felis et consequat. Etiam congue dolor vitae aliquam auctor. Donec ipsum lectus, sollicitudin quis sem venenatis, tempus lacinia libero. Aliquam dictum sollicitudin diam, sed placerat metus tempus interdum. Quisque vel consectetur massa. Praesent justo mi, mollis ut blandit in, placerat non est. Vestibulum maximus orci eu mauris luctus cursus. Fusce non tellus sagittis, ultricies enim sed, pharetra risus. In in convallis ex. Pellentesque auctor semper justo sit amet faucibus. Ut gravida ante vel eros egestas commodo. Suspendisse malesuada vulputate augue at porta. Sed in nibh blandit, porta ipsum iaculis, egestas sapien. Ut dignissim tortor mi, ac pulvinar ante sollicitudin in.<\\/p>\",\"user_id\":1,\"main_img\":\"MnT86FWMtA0w52VK4ZnJimrZu85WYoExucMO1m1P.jpeg\",\"department_id\":1,\"topic_id\":4,\"country\":\"\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629\",\"created_at\":\"2020-12-02T23:58:34.000000Z\",\"updated_at\":\"2020-12-02T23:58:34.000000Z\"}}', '2020-12-03 10:58:21', '2020-12-03 10:58:21'),
(21, 'default', 'created', 'App\\Img', 1, 'App\\User', 1, '{\"attributes\":{\"id\":1,\"img\":\"eEiNOZsoFAdAo4EADvhdqXtRcSohVdgifEpzBClj.jpeg\",\"news_id\":4,\"created_at\":\"2020-12-03T15:19:18.000000Z\",\"updated_at\":\"2020-12-03T15:19:18.000000Z\"}}', '2020-12-03 13:19:18', '2020-12-03 13:19:18'),
(22, 'default', 'created', 'App\\Img', 2, 'App\\User', 1, '{\"attributes\":{\"id\":2,\"img\":\"t54gTTH7RjwLavaONI1TVmp02w8lsl6kROnoXuN7.jpeg\",\"news_id\":4,\"created_at\":\"2020-12-03T15:19:19.000000Z\",\"updated_at\":\"2020-12-03T15:19:19.000000Z\"}}', '2020-12-03 13:19:19', '2020-12-03 13:19:19');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(23, 'default', 'created', 'App\\News', 6, 'App\\User', 1, '{\"attributes\":{\"id\":6,\"title\":\"Lorem Ipsum\",\"body\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur at metus in magna tristique laoreet id vel magna. Integer ac mauris at est accumsan bibendum. Aliquam a sapien metus. Fusce auctor bibendum consequat. Curabitur commodo, sapien ut posuere pharetra, tellus diam convallis magna, non vehicula nisi urna id dui. Sed sit amet nisi maximus, dapibus orci at, feugiat nisi. Curabitur sit amet nunc lacus. Donec tempus fermentum lectus, eget fermentum dolor laoreet vel. Integer laoreet risus sit amet viverra blandit. Sed fermentum ipsum ut sollicitudin porta. Fusce ac semper tortor. Phasellus non eleifend mauris. Cras sodales quam posuere mi pulvinar, id posuere ante aliquet. Praesent pharetra leo leo, non egestas ex eleifend et. Fusce tempus pulvinar ante vitae placerat.<\\/p>\\r\\n\\r\\n<p>Phasellus sed erat quis sapien molestie ornare. Nullam id lacinia dui. In ac enim urna. Aliquam non massa nisi. Aenean congue, mauris quis rutrum porttitor, odio justo pulvinar erat, non laoreet neque eros at sapien. Pellentesque nec fringilla nibh, vel pharetra leo. Praesent quis elementum mauris. Curabitur ac velit nec risus dictum viverra ac nec risus. Curabitur mattis ullamcorper enim, quis ullamcorper eros pulvinar ut. Fusce efficitur quam dapibus sagittis viverra. Nulla vitae lacus et nulla viverra mollis non in risus. Aenean pulvinar elementum mauris, nec aliquet sem pretium a. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla felis velit, ullamcorper a ullamcorper id, malesuada eget eros. Suspendisse aliquam nibh arcu, nec ullamcorper ex faucibus non.<\\/p>\\r\\n\\r\\n<p>Sed fermentum volutpat dui ut varius. Duis felis nunc, facilisis non pulvinar vitae, fringilla at ex. Pellentesque in ligula pharetra, vulputate augue suscipit, efficitur arcu. Cras gravida, erat eu pulvinar viverra, turpis risus finibus sem, vel fermentum sapien turpis ac enim. Fusce tempor velit metus. Mauris dignissim hendrerit tincidunt. In hac habitasse platea dictumst. Nam vel ipsum nunc.<\\/p>\\r\\n\\r\\n<p>Nulla ante est, interdum et congue vel, feugiat et enim. Ut porta, nibh nec aliquam dictum, nibh justo mollis tellus, sit amet congue ante lorem sit amet nunc. Maecenas consectetur mauris sed sapien auctor tempus. Suspendisse potenti. Donec vitae lorem blandit, vehicula magna ac, porta dolor. Praesent sit amet interdum nisi. Quisque tincidunt egestas enim ut tempor.<\\/p>\\r\\n\\r\\n<p>Donec vel pretium mi. Aenean condimentum pharetra mauris, vel fermentum lectus lobortis quis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec commodo nisl nunc, non accumsan diam varius sed. Nunc eu arcu augue. Integer orci dolor, pellentesque sed consectetur vel, porta vitae nisi. Phasellus dignissim dui ac leo lacinia, ac lacinia sapien rhoncus. Maecenas nec finibus lectus. Pellentesque ornare mi ac pretium blandit. In id lectus eget augue volutpat lobortis. Sed pretium euismod mattis. Donec dapibus justo eu mauris condimentum tempor. Proin laoreet semper purus, nec finibus tortor aliquet id.<\\/p>\",\"user_id\":1,\"main_img\":\"AyuInL5L3fNQKIP3YLFtXGqq9a4q8m0KicXS8iKv.jpeg\",\"department_id\":2,\"topic_id\":1,\"country\":\"\\u0645\\u0635\\u0631\",\"created_at\":\"2020-12-03T17:17:16.000000Z\",\"updated_at\":\"2020-12-03T17:17:16.000000Z\"}}', '2020-12-03 15:17:17', '2020-12-03 15:17:17'),
(24, 'default', 'created', 'App\\Img', 3, 'App\\User', 1, '{\"attributes\":{\"id\":3,\"img\":\"i6jWzLDHQ4ZFIYqi5uJpTWUyCgvRorBlyXHvo6j2.png\",\"news_id\":6,\"created_at\":\"2020-12-03T17:17:18.000000Z\",\"updated_at\":\"2020-12-03T17:17:18.000000Z\"}}', '2020-12-03 15:17:18', '2020-12-03 15:17:18'),
(25, 'default', 'created', 'App\\Img', 4, 'App\\User', 1, '{\"attributes\":{\"id\":4,\"img\":\"08oX151vhwT4hWEIHC9w2vBnLIfJEjuyp0yF0I76.jpeg\",\"news_id\":6,\"created_at\":\"2020-12-03T17:17:18.000000Z\",\"updated_at\":\"2020-12-03T17:17:18.000000Z\"}}', '2020-12-03 15:17:18', '2020-12-03 15:17:18'),
(26, 'default', 'created', 'App\\Img', 5, 'App\\User', 1, '{\"attributes\":{\"id\":5,\"img\":\"A3lSblgGZk0XShlW5lxA54kIDxtuoTbXrQqxQhRI.png\",\"news_id\":6,\"created_at\":\"2020-12-03T17:17:19.000000Z\",\"updated_at\":\"2020-12-03T17:17:19.000000Z\"}}', '2020-12-03 15:17:19', '2020-12-03 15:17:19');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `monetor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `writer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `desc`, `parent_id`, `monetor_id`, `editor_id`, `writer_id`, `created_at`, `updated_at`) VALUES
(1, 'الاخبار', NULL, NULL, NULL, NULL, NULL, '2020-12-02 21:33:55', '2020-12-02 21:33:55'),
(2, 'اسواق', NULL, NULL, NULL, NULL, NULL, '2020-12-02 21:34:08', '2020-12-02 21:34:08'),
(3, 'رياضة', NULL, NULL, NULL, NULL, NULL, '2020-12-02 21:34:20', '2020-12-02 21:34:20'),
(4, 'منوعات', NULL, NULL, NULL, NULL, NULL, '2020-12-02 21:34:30', '2020-12-02 21:34:30'),
(5, 'برامج', NULL, NULL, NULL, NULL, NULL, '2020-12-02 21:34:42', '2020-12-02 21:34:42'),
(6, 'مقالات', NULL, NULL, NULL, NULL, NULL, '2020-12-02 21:34:52', '2020-12-02 21:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imgs`
--

CREATE TABLE `imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `imgs`
--

INSERT INTO `imgs` (`id`, `img`, `news_id`, `created_at`, `updated_at`) VALUES
(1, 'eEiNOZsoFAdAo4EADvhdqXtRcSohVdgifEpzBClj.jpeg', 4, '2020-12-03 13:19:18', '2020-12-03 13:19:18'),
(2, 't54gTTH7RjwLavaONI1TVmp02w8lsl6kROnoXuN7.jpeg', 4, '2020-12-03 13:19:19', '2020-12-03 13:19:19'),
(3, 'i6jWzLDHQ4ZFIYqi5uJpTWUyCgvRorBlyXHvo6j2.png', 6, '2020-12-03 15:17:18', '2020-12-03 15:17:18'),
(4, '08oX151vhwT4hWEIHC9w2vBnLIfJEjuyp0yF0I76.jpeg', 6, '2020-12-03 15:17:18', '2020-12-03 15:17:18'),
(5, 'A3lSblgGZk0XShlW5lxA54kIDxtuoTbXrQqxQhRI.png', 6, '2020-12-03 15:17:19', '2020-12-03 15:17:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_22_184458_create_departments_table', 1),
(5, '2020_11_23_183757_create_topics_table', 1),
(6, '2020_11_23_203833_laratrust_setup_tables', 1),
(7, '2020_11_24_110329_create_news_table', 1),
(8, '2020_11_24_141501_create_imgs_table', 1),
(9, '2020_11_26_155505_create_activity_log_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `main_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `body`, `user_id`, `main_img`, `department_id`, `topic_id`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque condimentum lacus rutrum lacinia. Praesent orci odio, feugiat eu dolor vitae, tempus ultricies enim. Mauris vestibulum neque et dui luctus, at porttitor mi auctor. Vivamus consequat pretium mollis. Curabitur velit sem, efficitur ut pellentesque consequat, bibendum auctor dui. Praesent rhoncus risus lacus, sit amet tincidunt risus rutrum sit amet. Fusce elementum ex eget purus dapibus efficitur. Vivamus convallis metus id diam pulvinar dignissim.</p>\r\n\r\n<p>Ut ante ex, dictum sit amet tempor vel, vehicula a nisi. Nulla elementum, odio sit amet scelerisque placerat, massa libero hendrerit augue, ut rhoncus nulla odio in eros. Nulla eleifend dignissim massa sit amet pretium. Duis tempor ipsum quis arcu facilisis, at tincidunt lorem efficitur. Aliquam sit amet odio malesuada enim mollis vehicula. Maecenas quis scelerisque nunc. Donec id dolor sed purus vehicula finibus fermentum vitae tellus. Etiam fermentum placerat magna ac rutrum. In et metus ac lectus sodales elementum. Mauris sapien diam, pellentesque vel vestibulum vitae, ornare ac dui. Donec iaculis nulla lorem, id maximus neque hendrerit ut. Etiam ipsum erat, pellentesque vitae eros eu, accumsan condimentum ligula. Maecenas elementum nisl risus, eget placerat turpis tristique bibendum. Donec a bibendum lectus, et sagittis ipsum.</p>\r\n\r\n<p>Maecenas vulputate urna sed tristique ultricies. Donec mollis blandit arcu, nec blandit justo fringilla quis. Pellentesque risus dolor, sollicitudin eu maximus in, faucibus non dolor. Integer consequat elit hendrerit iaculis laoreet. In id tortor neque. Nullam luctus quis nibh nec pharetra. Ut eget porttitor massa. Curabitur quam lorem, hendrerit in molestie eleifend, tristique nec mauris. Praesent ipsum velit, tempus ac congue vel, fringilla ut mi.</p>\r\n\r\n<p>Curabitur eu tempor enim. Nullam tellus ante, sagittis ac imperdiet a, convallis in quam. Integer in ipsum commodo elit finibus posuere vitae quis felis. Praesent et dictum metus. Ut nec imperdiet risus. Sed quis libero turpis. Integer eget est at leo lacinia commodo a non nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p>\r\n\r\n<p>In aliquet augue imperdiet gravida imperdiet. Aenean sit amet urna sed dui imperdiet finibus. In lacinia lacinia ante a sagittis. Proin euismod turpis quis aliquam finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce convallis nisi non pharetra dictum. Aenean ipsum tellus, pharetra a odio vitae, eleifend ultricies quam. Etiam eget sapien eu felis pellentesque auctor. Praesent tempus diam eget egestas ultrices. In eleifend tempor rutrum. Nulla lacinia tincidunt dolor. Sed vel sapien rhoncus, mattis odio sit amet, dignissim elit. Nulla scelerisque dolor at justo dignissim luctus. Donec mi lacus, volutpat a fringilla at, lobortis nec arcu. Sed sem lacus, bibendum id elit vitae, facilisis auctor mauris.</p>\r\n\r\n<p>Vivamus placerat luctus consectetur. Quisque sodales iaculis posuere. Cras auctor rutrum sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et sodales urna, eget vestibulum enim. Morbi blandit condimentum sagittis. In a neque a neque eleifend interdum. Vestibulum pharetra aliquet pharetra. Suspendisse sollicitudin, sapien at pretium dictum, massa velit porta quam, ac malesuada ipsum neque ut libero.</p>\r\n\r\n<p>In posuere, ipsum nec fringilla gravida, massa nulla elementum tortor, ac volutpat nibh odio congue sem. Etiam efficitur a purus a faucibus. Ut luctus pulvinar felis et consequat. Etiam congue dolor vitae aliquam auctor. Donec ipsum lectus, sollicitudin quis sem venenatis, tempus lacinia libero. Aliquam dictum sollicitudin diam, sed placerat metus tempus interdum. Quisque vel consectetur massa. Praesent justo mi, mollis ut blandit in, placerat non est. Vestibulum maximus orci eu mauris luctus cursus. Fusce non tellus sagittis, ultricies enim sed, pharetra risus. In in convallis ex. Pellentesque auctor semper justo sit amet faucibus. Ut gravida ante vel eros egestas commodo. Suspendisse malesuada vulputate augue at porta. Sed in nibh blandit, porta ipsum iaculis, egestas sapien. Ut dignissim tortor mi, ac pulvinar ante sollicitudin in.</p>', 1, 'oVswkud5yusq30mvlrMQDpi2xqh2Us4OSS8HWItk.jpeg', 1, 4, 'السعودية', '2020-12-02 21:58:34', '2020-12-02 22:11:47'),
(2, 'Lorem Ipsum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque condimentum lacus rutrum lacinia. Praesent orci odio, feugiat eu dolor vitae, tempus ultricies enim. Mauris vestibulum neque et dui luctus, at porttitor mi auctor. Vivamus consequat pretium mollis. Curabitur velit sem, efficitur ut pellentesque consequat, bibendum auctor dui. Praesent rhoncus risus lacus, sit amet tincidunt risus rutrum sit amet. Fusce elementum ex eget purus dapibus efficitur. Vivamus convallis metus id diam pulvinar dignissim.</p>\r\n\r\n<p>Ut ante ex, dictum sit amet tempor vel, vehicula a nisi. Nulla elementum, odio sit amet scelerisque placerat, massa libero hendrerit augue, ut rhoncus nulla odio in eros. Nulla eleifend dignissim massa sit amet pretium. Duis tempor ipsum quis arcu facilisis, at tincidunt lorem efficitur. Aliquam sit amet odio malesuada enim mollis vehicula. Maecenas quis scelerisque nunc. Donec id dolor sed purus vehicula finibus fermentum vitae tellus. Etiam fermentum placerat magna ac rutrum. In et metus ac lectus sodales elementum. Mauris sapien diam, pellentesque vel vestibulum vitae, ornare ac dui. Donec iaculis nulla lorem, id maximus neque hendrerit ut. Etiam ipsum erat, pellentesque vitae eros eu, accumsan condimentum ligula. Maecenas elementum nisl risus, eget placerat turpis tristique bibendum. Donec a bibendum lectus, et sagittis ipsum.</p>\r\n\r\n<p>Maecenas vulputate urna sed tristique ultricies. Donec mollis blandit arcu, nec blandit justo fringilla quis. Pellentesque risus dolor, sollicitudin eu maximus in, faucibus non dolor. Integer consequat elit hendrerit iaculis laoreet. In id tortor neque. Nullam luctus quis nibh nec pharetra. Ut eget porttitor massa. Curabitur quam lorem, hendrerit in molestie eleifend, tristique nec mauris. Praesent ipsum velit, tempus ac congue vel, fringilla ut mi.</p>\r\n\r\n<p>Curabitur eu tempor enim. Nullam tellus ante, sagittis ac imperdiet a, convallis in quam. Integer in ipsum commodo elit finibus posuere vitae quis felis. Praesent et dictum metus. Ut nec imperdiet risus. Sed quis libero turpis. Integer eget est at leo lacinia commodo a non nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p>\r\n\r\n<p>In aliquet augue imperdiet gravida imperdiet. Aenean sit amet urna sed dui imperdiet finibus. In lacinia lacinia ante a sagittis. Proin euismod turpis quis aliquam finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce convallis nisi non pharetra dictum. Aenean ipsum tellus, pharetra a odio vitae, eleifend ultricies quam. Etiam eget sapien eu felis pellentesque auctor. Praesent tempus diam eget egestas ultrices. In eleifend tempor rutrum. Nulla lacinia tincidunt dolor. Sed vel sapien rhoncus, mattis odio sit amet, dignissim elit. Nulla scelerisque dolor at justo dignissim luctus. Donec mi lacus, volutpat a fringilla at, lobortis nec arcu. Sed sem lacus, bibendum id elit vitae, facilisis auctor mauris.</p>\r\n\r\n<p>Vivamus placerat luctus consectetur. Quisque sodales iaculis posuere. Cras auctor rutrum sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et sodales urna, eget vestibulum enim. Morbi blandit condimentum sagittis. In a neque a neque eleifend interdum. Vestibulum pharetra aliquet pharetra. Suspendisse sollicitudin, sapien at pretium dictum, massa velit porta quam, ac malesuada ipsum neque ut libero.</p>\r\n\r\n<p>In posuere, ipsum nec fringilla gravida, massa nulla elementum tortor, ac volutpat nibh odio congue sem. Etiam efficitur a purus a faucibus. Ut luctus pulvinar felis et consequat. Etiam congue dolor vitae aliquam auctor. Donec ipsum lectus, sollicitudin quis sem venenatis, tempus lacinia libero. Aliquam dictum sollicitudin diam, sed placerat metus tempus interdum. Quisque vel consectetur massa. Praesent justo mi, mollis ut blandit in, placerat non est. Vestibulum maximus orci eu mauris luctus cursus. Fusce non tellus sagittis, ultricies enim sed, pharetra risus. In in convallis ex. Pellentesque auctor semper justo sit amet faucibus. Ut gravida ante vel eros egestas commodo. Suspendisse malesuada vulputate augue at porta. Sed in nibh blandit, porta ipsum iaculis, egestas sapien. Ut dignissim tortor mi, ac pulvinar ante sollicitudin in.ss</p>', 1, 'MnT86FWMtA0w52VK4ZnJimrZu85WYoExucMO1m1P.jpeg', 1, 4, 'السعودية', '2020-12-02 21:58:34', '2020-12-03 10:58:17'),
(3, 'Lorem Ipsum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque condimentum lacus rutrum lacinia. Praesent orci odio, feugiat eu dolor vitae, tempus ultricies enim. Mauris vestibulum neque et dui luctus, at porttitor mi auctor. Vivamus consequat pretium mollis. Curabitur velit sem, efficitur ut pellentesque consequat, bibendum auctor dui. Praesent rhoncus risus lacus, sit amet tincidunt risus rutrum sit amet. Fusce elementum ex eget purus dapibus efficitur. Vivamus convallis metus id diam pulvinar dignissim.</p>\r\n\r\n<p>Ut ante ex, dictum sit amet tempor vel, vehicula a nisi. Nulla elementum, odio sit amet scelerisque placerat, massa libero hendrerit augue, ut rhoncus nulla odio in eros. Nulla eleifend dignissim massa sit amet pretium. Duis tempor ipsum quis arcu facilisis, at tincidunt lorem efficitur. Aliquam sit amet odio malesuada enim mollis vehicula. Maecenas quis scelerisque nunc. Donec id dolor sed purus vehicula finibus fermentum vitae tellus. Etiam fermentum placerat magna ac rutrum. In et metus ac lectus sodales elementum. Mauris sapien diam, pellentesque vel vestibulum vitae, ornare ac dui. Donec iaculis nulla lorem, id maximus neque hendrerit ut. Etiam ipsum erat, pellentesque vitae eros eu, accumsan condimentum ligula. Maecenas elementum nisl risus, eget placerat turpis tristique bibendum. Donec a bibendum lectus, et sagittis ipsum.</p>\r\n\r\n<p>Maecenas vulputate urna sed tristique ultricies. Donec mollis blandit arcu, nec blandit justo fringilla quis. Pellentesque risus dolor, sollicitudin eu maximus in, faucibus non dolor. Integer consequat elit hendrerit iaculis laoreet. In id tortor neque. Nullam luctus quis nibh nec pharetra. Ut eget porttitor massa. Curabitur quam lorem, hendrerit in molestie eleifend, tristique nec mauris. Praesent ipsum velit, tempus ac congue vel, fringilla ut mi.</p>\r\n\r\n<p>Curabitur eu tempor enim. Nullam tellus ante, sagittis ac imperdiet a, convallis in quam. Integer in ipsum commodo elit finibus posuere vitae quis felis. Praesent et dictum metus. Ut nec imperdiet risus. Sed quis libero turpis. Integer eget est at leo lacinia commodo a non nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p>\r\n\r\n<p>In aliquet augue imperdiet gravida imperdiet. Aenean sit amet urna sed dui imperdiet finibus. In lacinia lacinia ante a sagittis. Proin euismod turpis quis aliquam finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce convallis nisi non pharetra dictum. Aenean ipsum tellus, pharetra a odio vitae, eleifend ultricies quam. Etiam eget sapien eu felis pellentesque auctor. Praesent tempus diam eget egestas ultrices. In eleifend tempor rutrum. Nulla lacinia tincidunt dolor. Sed vel sapien rhoncus, mattis odio sit amet, dignissim elit. Nulla scelerisque dolor at justo dignissim luctus. Donec mi lacus, volutpat a fringilla at, lobortis nec arcu. Sed sem lacus, bibendum id elit vitae, facilisis auctor mauris.</p>\r\n\r\n<p>Vivamus placerat luctus consectetur. Quisque sodales iaculis posuere. Cras auctor rutrum sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et sodales urna, eget vestibulum enim. Morbi blandit condimentum sagittis. In a neque a neque eleifend interdum. Vestibulum pharetra aliquet pharetra. Suspendisse sollicitudin, sapien at pretium dictum, massa velit porta quam, ac malesuada ipsum neque ut libero.</p>\r\n\r\n<p>In posuere, ipsum nec fringilla gravida, massa nulla elementum tortor, ac volutpat nibh odio congue sem. Etiam efficitur a purus a faucibus. Ut luctus pulvinar felis et consequat. Etiam congue dolor vitae aliquam auctor. Donec ipsum lectus, sollicitudin quis sem venenatis, tempus lacinia libero. Aliquam dictum sollicitudin diam, sed placerat metus tempus interdum. Quisque vel consectetur massa. Praesent justo mi, mollis ut blandit in, placerat non est. Vestibulum maximus orci eu mauris luctus cursus. Fusce non tellus sagittis, ultricies enim sed, pharetra risus. In in convallis ex. Pellentesque auctor semper justo sit amet faucibus. Ut gravida ante vel eros egestas commodo. Suspendisse malesuada vulputate augue at porta. Sed in nibh blandit, porta ipsum iaculis, egestas sapien. Ut dignissim tortor mi, ac pulvinar ante sollicitudin in.</p>', 1, 'nn4JXvl6yHwUTNq7JAST1lLMwGzn3cB104xHVApw.jpeg', 1, 1, 'مصر', '2020-12-02 22:17:43', '2020-12-02 22:17:43'),
(4, 'Lorem Ipsum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque condimentum lacus rutrum lacinia. Praesent orci odio, feugiat eu dolor vitae, tempus ultricies enim. Mauris vestibulum neque et dui luctus, at porttitor mi auctor. Vivamus consequat pretium mollis. Curabitur velit sem, efficitur ut pellentesque consequat, bibendum auctor dui. Praesent rhoncus risus lacus, sit amet tincidunt risus rutrum sit amet. Fusce elementum ex eget purus dapibus efficitur. Vivamus convallis metus id diam pulvinar dignissim.</p>\r\n\r\n<p>Ut ante ex, dictum sit amet tempor vel, vehicula a nisi. Nulla elementum, odio sit amet scelerisque placerat, massa libero hendrerit augue, ut rhoncus nulla odio in eros. Nulla eleifend dignissim massa sit amet pretium. Duis tempor ipsum quis arcu facilisis, at tincidunt lorem efficitur. Aliquam sit amet odio malesuada enim mollis vehicula. Maecenas quis scelerisque nunc. Donec id dolor sed purus vehicula finibus fermentum vitae tellus. Etiam fermentum placerat magna ac rutrum. In et metus ac lectus sodales elementum. Mauris sapien diam, pellentesque vel vestibulum vitae, ornare ac dui. Donec iaculis nulla lorem, id maximus neque hendrerit ut. Etiam ipsum erat, pellentesque vitae eros eu, accumsan condimentum ligula. Maecenas elementum nisl risus, eget placerat turpis tristique bibendum. Donec a bibendum lectus, et sagittis ipsum.</p>\r\n\r\n<p>Maecenas vulputate urna sed tristique ultricies. Donec mollis blandit arcu, nec blandit justo fringilla quis. Pellentesque risus dolor, sollicitudin eu maximus in, faucibus non dolor. Integer consequat elit hendrerit iaculis laoreet. In id tortor neque. Nullam luctus quis nibh nec pharetra. Ut eget porttitor massa. Curabitur quam lorem, hendrerit in molestie eleifend, tristique nec mauris. Praesent ipsum velit, tempus ac congue vel, fringilla ut mi.</p>\r\n\r\n<p>Curabitur eu tempor enim. Nullam tellus ante, sagittis ac imperdiet a, convallis in quam. Integer in ipsum commodo elit finibus posuere vitae quis felis. Praesent et dictum metus. Ut nec imperdiet risus. Sed quis libero turpis. Integer eget est at leo lacinia commodo a non nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p>\r\n\r\n<p>In aliquet augue imperdiet gravida imperdiet. Aenean sit amet urna sed dui imperdiet finibus. In lacinia lacinia ante a sagittis. Proin euismod turpis quis aliquam finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce convallis nisi non pharetra dictum. Aenean ipsum tellus, pharetra a odio vitae, eleifend ultricies quam. Etiam eget sapien eu felis pellentesque auctor. Praesent tempus diam eget egestas ultrices. In eleifend tempor rutrum. Nulla lacinia tincidunt dolor. Sed vel sapien rhoncus, mattis odio sit amet, dignissim elit. Nulla scelerisque dolor at justo dignissim luctus. Donec mi lacus, volutpat a fringilla at, lobortis nec arcu. Sed sem lacus, bibendum id elit vitae, facilisis auctor mauris.</p>\r\n\r\n<p>Vivamus placerat luctus consectetur. Quisque sodales iaculis posuere. Cras auctor rutrum sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et sodales urna, eget vestibulum enim. Morbi blandit condimentum sagittis. In a neque a neque eleifend interdum. Vestibulum pharetra aliquet pharetra. Suspendisse sollicitudin, sapien at pretium dictum, massa velit porta quam, ac malesuada ipsum neque ut libero.</p>\r\n\r\n<p>In posuere, ipsum nec fringilla gravida, massa nulla elementum tortor, ac volutpat nibh odio congue sem. Etiam efficitur a purus a faucibus. Ut luctus pulvinar felis et consequat. Etiam congue dolor vitae aliquam auctor. Donec ipsum lectus, sollicitudin quis sem venenatis, tempus lacinia libero. Aliquam dictum sollicitudin diam, sed placerat metus tempus interdum. Quisque vel consectetur massa. Praesent justo mi, mollis ut blandit in, placerat non est. Vestibulum maximus orci eu mauris luctus cursus. Fusce non tellus sagittis, ultricies enim sed, pharetra risus. In in convallis ex. Pellentesque auctor semper justo sit amet faucibus. Ut gravida ante vel eros egestas commodo. Suspendisse malesuada vulputate augue at porta. Sed in nibh blandit, porta ipsum iaculis, egestas sapien. Ut dignissim tortor mi, ac pulvinar ante sollicitudin in.</p>', 1, 'zb4Qz5CqKqg64feqlz2ZV5n0vQS77jM8zIMRaDu6.jpeg', 1, 3, 'امريكا', '2020-12-02 22:21:51', '2020-12-02 22:21:51'),
(5, 'Lorem Ipsum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque condimentum lacus rutrum lacinia. Praesent orci odio, feugiat eu dolor vitae, tempus ultricies enim. Mauris vestibulum neque et dui luctus, at porttitor mi auctor. Vivamus consequat pretium mollis. Curabitur velit sem, efficitur ut pellentesque consequat, bibendum auctor dui. Praesent rhoncus risus lacus, sit amet tincidunt risus rutrum sit amet. Fusce elementum ex eget purus dapibus efficitur. Vivamus convallis metus id diam pulvinar dignissim.</p>\r\n\r\n<p>Ut ante ex, dictum sit amet tempor vel, vehicula a nisi. Nulla elementum, odio sit amet scelerisque placerat, massa libero hendrerit augue, ut rhoncus nulla odio in eros. Nulla eleifend dignissim massa sit amet pretium. Duis tempor ipsum quis arcu facilisis, at tincidunt lorem efficitur. Aliquam sit amet odio malesuada enim mollis vehicula. Maecenas quis scelerisque nunc. Donec id dolor sed purus vehicula finibus fermentum vitae tellus. Etiam fermentum placerat magna ac rutrum. In et metus ac lectus sodales elementum. Mauris sapien diam, pellentesque vel vestibulum vitae, ornare ac dui. Donec iaculis nulla lorem, id maximus neque hendrerit ut. Etiam ipsum erat, pellentesque vitae eros eu, accumsan condimentum ligula. Maecenas elementum nisl risus, eget placerat turpis tristique bibendum. Donec a bibendum lectus, et sagittis ipsum.</p>\r\n\r\n<p>Maecenas vulputate urna sed tristique ultricies. Donec mollis blandit arcu, nec blandit justo fringilla quis. Pellentesque risus dolor, sollicitudin eu maximus in, faucibus non dolor. Integer consequat elit hendrerit iaculis laoreet. In id tortor neque. Nullam luctus quis nibh nec pharetra. Ut eget porttitor massa. Curabitur quam lorem, hendrerit in molestie eleifend, tristique nec mauris. Praesent ipsum velit, tempus ac congue vel, fringilla ut mi.</p>\r\n\r\n<p>Curabitur eu tempor enim. Nullam tellus ante, sagittis ac imperdiet a, convallis in quam. Integer in ipsum commodo elit finibus posuere vitae quis felis. Praesent et dictum metus. Ut nec imperdiet risus. Sed quis libero turpis. Integer eget est at leo lacinia commodo a non nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p>\r\n\r\n<p>In aliquet augue imperdiet gravida imperdiet. Aenean sit amet urna sed dui imperdiet finibus. In lacinia lacinia ante a sagittis. Proin euismod turpis quis aliquam finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce convallis nisi non pharetra dictum. Aenean ipsum tellus, pharetra a odio vitae, eleifend ultricies quam. Etiam eget sapien eu felis pellentesque auctor. Praesent tempus diam eget egestas ultrices. In eleifend tempor rutrum. Nulla lacinia tincidunt dolor. Sed vel sapien rhoncus, mattis odio sit amet, dignissim elit. Nulla scelerisque dolor at justo dignissim luctus. Donec mi lacus, volutpat a fringilla at, lobortis nec arcu. Sed sem lacus, bibendum id elit vitae, facilisis auctor mauris.</p>\r\n\r\n<p>Vivamus placerat luctus consectetur. Quisque sodales iaculis posuere. Cras auctor rutrum sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et sodales urna, eget vestibulum enim. Morbi blandit condimentum sagittis. In a neque a neque eleifend interdum. Vestibulum pharetra aliquet pharetra. Suspendisse sollicitudin, sapien at pretium dictum, massa velit porta quam, ac malesuada ipsum neque ut libero.</p>\r\n\r\n<p>In posuere, ipsum nec fringilla gravida, massa nulla elementum tortor, ac volutpat nibh odio congue sem. Etiam efficitur a purus a faucibus. Ut luctus pulvinar felis et consequat. Etiam congue dolor vitae aliquam auctor. Donec ipsum lectus, sollicitudin quis sem venenatis, tempus lacinia libero. Aliquam dictum sollicitudin diam, sed placerat metus tempus interdum. Quisque vel consectetur massa. Praesent justo mi, mollis ut blandit in, placerat non est. Vestibulum maximus orci eu mauris luctus cursus. Fusce non tellus sagittis, ultricies enim sed, pharetra risus. In in convallis ex. Pellentesque auctor semper justo sit amet faucibus. Ut gravida ante vel eros egestas commodo. Suspendisse malesuada vulputate augue at porta. Sed in nibh blandit, porta ipsum iaculis, egestas sapien. Ut dignissim tortor mi, ac pulvinar ante sollicitudin in.</p>', 1, 'ovh9me5plWWrjFFqaZf2maTKFiMn5YRMhKF9ujwE.jpeg', 1, 6, 'العراق', '2020-12-02 22:24:26', '2020-12-02 22:24:26'),
(6, 'Lorem Ipsum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur at metus in magna tristique laoreet id vel magna. Integer ac mauris at est accumsan bibendum. Aliquam a sapien metus. Fusce auctor bibendum consequat. Curabitur commodo, sapien ut posuere pharetra, tellus diam convallis magna, non vehicula nisi urna id dui. Sed sit amet nisi maximus, dapibus orci at, feugiat nisi. Curabitur sit amet nunc lacus. Donec tempus fermentum lectus, eget fermentum dolor laoreet vel. Integer laoreet risus sit amet viverra blandit. Sed fermentum ipsum ut sollicitudin porta. Fusce ac semper tortor. Phasellus non eleifend mauris. Cras sodales quam posuere mi pulvinar, id posuere ante aliquet. Praesent pharetra leo leo, non egestas ex eleifend et. Fusce tempus pulvinar ante vitae placerat.</p>\r\n\r\n<p>Phasellus sed erat quis sapien molestie ornare. Nullam id lacinia dui. In ac enim urna. Aliquam non massa nisi. Aenean congue, mauris quis rutrum porttitor, odio justo pulvinar erat, non laoreet neque eros at sapien. Pellentesque nec fringilla nibh, vel pharetra leo. Praesent quis elementum mauris. Curabitur ac velit nec risus dictum viverra ac nec risus. Curabitur mattis ullamcorper enim, quis ullamcorper eros pulvinar ut. Fusce efficitur quam dapibus sagittis viverra. Nulla vitae lacus et nulla viverra mollis non in risus. Aenean pulvinar elementum mauris, nec aliquet sem pretium a. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla felis velit, ullamcorper a ullamcorper id, malesuada eget eros. Suspendisse aliquam nibh arcu, nec ullamcorper ex faucibus non.</p>\r\n\r\n<p>Sed fermentum volutpat dui ut varius. Duis felis nunc, facilisis non pulvinar vitae, fringilla at ex. Pellentesque in ligula pharetra, vulputate augue suscipit, efficitur arcu. Cras gravida, erat eu pulvinar viverra, turpis risus finibus sem, vel fermentum sapien turpis ac enim. Fusce tempor velit metus. Mauris dignissim hendrerit tincidunt. In hac habitasse platea dictumst. Nam vel ipsum nunc.</p>\r\n\r\n<p>Nulla ante est, interdum et congue vel, feugiat et enim. Ut porta, nibh nec aliquam dictum, nibh justo mollis tellus, sit amet congue ante lorem sit amet nunc. Maecenas consectetur mauris sed sapien auctor tempus. Suspendisse potenti. Donec vitae lorem blandit, vehicula magna ac, porta dolor. Praesent sit amet interdum nisi. Quisque tincidunt egestas enim ut tempor.</p>\r\n\r\n<p>Donec vel pretium mi. Aenean condimentum pharetra mauris, vel fermentum lectus lobortis quis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec commodo nisl nunc, non accumsan diam varius sed. Nunc eu arcu augue. Integer orci dolor, pellentesque sed consectetur vel, porta vitae nisi. Phasellus dignissim dui ac leo lacinia, ac lacinia sapien rhoncus. Maecenas nec finibus lectus. Pellentesque ornare mi ac pretium blandit. In id lectus eget augue volutpat lobortis. Sed pretium euismod mattis. Donec dapibus justo eu mauris condimentum tempor. Proin laoreet semper purus, nec finibus tortor aliquet id.</p>', 1, 'AyuInL5L3fNQKIP3YLFtXGqq9a4q8m0KicXS8iKv.jpeg', 2, 1, 'مصر', '2020-12-03 15:17:16', '2020-12-03 15:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'create_users', 'Create Users', 'Create Users', '2020-12-02 20:02:47', '2020-12-02 20:02:47'),
(2, 'read_users', 'Read Users', 'Read Users', '2020-12-02 20:02:47', '2020-12-02 20:02:47'),
(3, 'update_users', 'Update Users', 'Update Users', '2020-12-02 20:02:47', '2020-12-02 20:02:47'),
(4, 'delete_users', 'Delete Users', 'Delete Users', '2020-12-02 20:02:47', '2020-12-02 20:02:47'),
(5, 'create_departments', 'Create Departments', 'Create Departments', '2020-12-02 20:02:47', '2020-12-02 20:02:47'),
(6, 'read_departments', 'Read Departments', 'Read Departments', '2020-12-02 20:02:47', '2020-12-02 20:02:47'),
(7, 'update_departments', 'Update Departments', 'Update Departments', '2020-12-02 20:02:47', '2020-12-02 20:02:47'),
(8, 'delete_departments', 'Delete Departments', 'Delete Departments', '2020-12-02 20:02:47', '2020-12-02 20:02:47'),
(9, 'create_news', 'Create News', 'Create News', '2020-12-02 20:02:47', '2020-12-02 20:02:47'),
(10, 'read_news', 'Read News', 'Read News', '2020-12-02 20:02:48', '2020-12-02 20:02:48'),
(11, 'update_news', 'Update News', 'Update News', '2020-12-02 20:02:48', '2020-12-02 20:02:48'),
(12, 'delete_news', 'Delete News', 'Delete News', '2020-12-02 20:02:48', '2020-12-02 20:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(7, 1),
(8, 1),
(9, 1),
(9, 3),
(9, 5),
(10, 1),
(10, 3),
(10, 4),
(10, 5),
(11, 1),
(11, 3),
(11, 4),
(12, 1),
(12, 3),
(12, 4);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'Super Admin', 'Super Admin', '2020-12-02 20:02:47', '2020-12-02 20:02:47'),
(2, 'admin', 'Admin', 'Admin', '2020-12-02 20:02:49', '2020-12-02 20:02:49'),
(3, 'monetor', 'Monetor', 'Monetor', '2020-12-02 20:02:49', '2020-12-02 20:02:49'),
(4, 'editor', 'Editor', 'Editor', '2020-12-02 20:02:50', '2020-12-02 20:02:50'),
(5, 'writer', 'Writer', 'Writer', '2020-12-02 20:02:50', '2020-12-02 20:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`, `team_id`) VALUES
(1, 1, 'App\\User', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'الاخبار_team', 'الاخبار team', 'This is الاخبار_team desc', '2020-12-02 21:33:55', '2020-12-02 21:33:55'),
(2, 'اسواق_team', 'اسواق team', 'This is اسواق_team desc', '2020-12-02 21:34:08', '2020-12-02 21:34:08'),
(3, 'رياضة_team', 'رياضة team', 'This is رياضة_team desc', '2020-12-02 21:34:21', '2020-12-02 21:34:21'),
(4, 'منوعات_team', 'منوعات team', 'This is منوعات_team desc', '2020-12-02 21:34:31', '2020-12-02 21:34:31'),
(5, 'برامج_team', 'برامج team', 'This is برامج_team desc', '2020-12-02 21:34:42', '2020-12-02 21:34:42'),
(6, 'مقالات_team', 'مقالات team', 'This is مقالات_team desc', '2020-12-02 21:34:52', '2020-12-02 21:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'علم', NULL, '2020-12-02 21:35:18', '2020-12-02 21:35:18'),
(2, 'ثقافة و فن', NULL, '2020-12-02 21:35:28', '2020-12-02 21:35:28'),
(3, 'تكنولوجيا', NULL, '2020-12-02 21:35:37', '2020-12-02 21:35:37'),
(4, 'النشرات', NULL, '2020-12-02 21:35:47', '2020-12-02 21:35:47'),
(5, 'اسواق', NULL, '2020-12-02 21:35:57', '2020-12-02 21:35:57'),
(6, 'طب و صحة', NULL, '2020-12-02 21:36:09', '2020-12-02 21:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `img`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'super', 'admin', 'super_admin@app.com', 'default.png', NULL, '$2y$10$Jc/g6MC9ZldKOfTR26jUvOio9JOxfFNDTWGy9HA0wII4GeiM3hba6', NULL, '2020-12-02 20:02:51', '2020-12-02 20:02:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`),
  ADD KEY `departments_parent_id_foreign` (`parent_id`),
  ADD KEY `departments_monetor_id_foreign` (`monetor_id`),
  ADD KEY `departments_editor_id_foreign` (`editor_id`),
  ADD KEY `departments_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imgs`
--
ALTER TABLE `imgs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imgs_news_id_foreign` (`news_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_user_id_foreign` (`user_id`),
  ADD KEY `news_department_id_foreign` (`department_id`),
  ADD KEY `news_topic_id_foreign` (`topic_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD UNIQUE KEY `permission_user_user_id_permission_id_user_type_team_id_unique` (`user_id`,`permission_id`,`user_type`,`team_id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_user_team_id_foreign` (`team_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD UNIQUE KEY `role_user_user_id_role_id_user_type_team_id_unique` (`user_id`,`role_id`,`user_type`,`team_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_team_id_foreign` (`team_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teams_name_unique` (`name`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `topics_name_unique` (`name`);

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
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imgs`
--
ALTER TABLE `imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_editor_id_foreign` FOREIGN KEY (`editor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `departments_monetor_id_foreign` FOREIGN KEY (`monetor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `departments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `departments_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `imgs`
--
ALTER TABLE `imgs`
  ADD CONSTRAINT `imgs_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `news_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_user_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
