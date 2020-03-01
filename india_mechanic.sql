-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 01, 2020 at 06:08 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `india_mechanic`
--

-- --------------------------------------------------------

--
-- Table structure for table `bravo_attrs`
--

DROP TABLE IF EXISTS `bravo_attrs`;
CREATE TABLE IF NOT EXISTS `bravo_attrs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `display_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hide_in_single` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_attrs`
--

INSERT INTO `bravo_attrs` (`id`, `name`, `slug`, `service`, `create_user`, `update_user`, `created_at`, `updated_at`, `deleted_at`, `display_type`, `hide_in_single`) VALUES
(1, 'Travel Styles', 'travel-styles', 'tour', NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(2, 'Facilities', 'facilities', 'tour', NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(3, 'Space Type', 'space-type', 'space', NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(4, 'Amenities', 'amenities', 'space', NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(5, 'Property type', 'property-type', 'hotel', NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(6, 'Facilities', 'facilities-1', 'hotel', NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(7, 'Hotel Service', 'hotel-service', 'hotel', NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(8, 'Room Amenities', 'room-amenities', 'hotel_room', NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(9, 'Car Type', 'car-type', 'car', NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', NULL, NULL, 1),
(10, 'Car Features', 'car-features', 'car', NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_attrs_translations`
--

DROP TABLE IF EXISTS `bravo_attrs_translations`;
CREATE TABLE IF NOT EXISTS `bravo_attrs_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bravo_attrs_translations_origin_id_locale_unique` (`origin_id`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_bookings`
--

DROP TABLE IF EXISTS `bravo_bookings`;
CREATE TABLE IF NOT EXISTS `bravo_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `gateway` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `total_guests` int(11) DEFAULT NULL,
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` decimal(10,2) DEFAULT NULL,
  `deposit_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` decimal(10,2) DEFAULT NULL,
  `commission_type` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_notes` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `buyer_fees` text COLLATE utf8mb4_unicode_ci,
  `total_before_fees` decimal(10,2) DEFAULT NULL,
  `paid_vendor` tinyint(4) DEFAULT NULL,
  `object_child_id` bigint(20) DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_bookings`
--

INSERT INTO `bravo_bookings` (`id`, `code`, `vendor_id`, `customer_id`, `payment_id`, `gateway`, `object_id`, `object_model`, `start_date`, `end_date`, `total`, `total_guests`, `currency`, `status`, `deposit`, `deposit_type`, `commission`, `commission_type`, `email`, `first_name`, `last_name`, `phone`, `address`, `address2`, `city`, `state`, `zip_code`, `country`, `customer_notes`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `buyer_fees`, `total_before_fees`, `paid_vendor`, `object_child_id`, `number`) VALUES
(1, 'fcdd68424aecf475e487cf0bf67ebcb4', 5, 1, NULL, NULL, 9, 'car', '2020-03-13 00:00:00', '2020-03-20 00:00:00', '3900.00', 1, NULL, 'draft', NULL, NULL, '360.00', '{\"amount\":\"10\",\"type\":\"percent\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2020-02-29 01:17:20', '2020-02-29 01:17:20', '[{\"name\":\"Equipment fee\",\"desc\":\"One-time fee charged by host to cover the cost of cleaning their space.\",\"name_ja\":\"\\u30af\\u30ea\\u30fc\\u30cb\\u30f3\\u30b0\\u4ee3\",\"desc_ja\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u3092\\u6383\\u9664\\u3059\\u308b\\u8cbb\\u7528\\u3092\\u30db\\u30b9\\u30c8\\u304c\\u8acb\\u6c42\\u3059\\u308b1\\u56de\\u9650\\u308a\\u306e\\u6599\\u91d1\\u3002\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Facility fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"200\",\"type\":\"one_time\"}]', '3600.00', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_booking_meta`
--

DROP TABLE IF EXISTS `bravo_booking_meta`;
CREATE TABLE IF NOT EXISTS `bravo_booking_meta` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_booking_meta`
--

INSERT INTO `bravo_booking_meta` (`id`, `booking_id`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'duration', NULL, NULL, NULL, NULL, NULL),
(2, 1, 'base_price', '450', NULL, NULL, NULL, NULL),
(3, 1, 'sale_price', '0', NULL, NULL, NULL, NULL),
(4, 1, 'extra_price', '[]', NULL, NULL, NULL, NULL),
(5, 1, 'tmp_dates', '{\"2020-03-13\":{\"number\":5,\"price\":450,\"status\":1},\"2020-03-14\":{\"number\":5,\"price\":450,\"status\":1},\"2020-03-15\":{\"number\":5,\"price\":450,\"status\":1},\"2020-03-16\":{\"number\":5,\"price\":450,\"status\":1},\"2020-03-17\":{\"number\":5,\"price\":450,\"status\":1},\"2020-03-18\":{\"number\":5,\"price\":450,\"status\":1},\"2020-03-19\":{\"number\":5,\"price\":450,\"status\":1},\"2020-03-20\":{\"number\":5,\"price\":450,\"status\":1}}', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_booking_payments`
--

DROP TABLE IF EXISTS `bravo_booking_payments`;
CREATE TABLE IF NOT EXISTS `bravo_booking_payments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) DEFAULT NULL,
  `payment_gateway` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converted_amount` decimal(10,2) DEFAULT NULL,
  `converted_currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(10,2) DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_cars`
--

DROP TABLE IF EXISTS `bravo_cars`;
CREATE TABLE IF NOT EXISTS `bravo_cars` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci,
  `number` tinyint(4) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT '0',
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci,
  `discount_by_days` text COLLATE utf8mb4_unicode_ci,
  `passenger` tinyint(4) DEFAULT '0',
  `gear` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `baggage` tinyint(4) DEFAULT '0',
  `door` tinyint(4) DEFAULT '0',
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT '1',
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_cars_slug_index` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_cars`
--

INSERT INTO `bravo_cars` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `number`, `price`, `sale_price`, `is_instant`, `enable_extra_price`, `extra_price`, `discount_by_days`, `passenger`, `gear`, `baggage`, `door`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `review_score`) VALUES
(1, 'BMW-X6-facelift', 'bmw-x6-facelift', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 142, 135, 1, 'Arrondissement de Paris', '21.054831', '105.796077', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 2, '500.00', '119.00', 1, NULL, NULL, NULL, 4, 'Auto', 8, 4, 'publish', 1, 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:22', '4.3'),
(2, '2019 Honda Clarity', '2019-honda-clarityt-1', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 143, 135, 1, 'Arrondissement de Paris', '21.039771', '105.777203', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 3, '300.00', '0.00', 1, NULL, NULL, NULL, 7, 'Auto', 6, 4, 'publish', 1, 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:22', '4.5'),
(3, '2019 Honda Clarity', '2019-honda-clarityt', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 143, 135, 3, 'Arrondissement de Paris', '21.031217', '105.773698', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 3, '300.00', '0.00', 0, NULL, NULL, NULL, 6, 'Auto', 9, 4, 'publish', 1, 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:22', '4.3'),
(4, '2019 BMW M6 Gran Coupe', '2019-bmw-m6-gran-coupe', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 144, 135, 1, 'Arrondissement de Paris', '21.020161', '105.789655', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 5, '300.00', '0.00', 1, NULL, NULL, NULL, 3, 'Auto', 5, 4, 'publish', 1, 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:22', '4.0'),
(5, '2019 Audi S3', '2019-audi-s3', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 145, 135, 5, 'Arrondissement de Paris', '21.014873', '105.794117', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 4, '300.00', '0.00', 0, NULL, NULL, NULL, 7, 'Auto', 9, 4, 'publish', 1, 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:22', '5.0'),
(6, 'Vinfast Fadil Plus', 'vinfast-fadil-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 146, 135, 1, 'Arrondissement de Paris', '21.018398', '105.812820', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 3, '400.00', '0.00', 1, NULL, NULL, NULL, 5, 'Auto', 10, 4, 'publish', 1, 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:22', '4.0'),
(7, 'Mercedes Benz', 'mercedes-benz', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 147, 135, 1, 'Arrondissement de Paris', '21.025769', '105.829635', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 4, '200.00', '0.00', 1, NULL, NULL, NULL, 6, 'Auto', 10, 4, 'publish', 1, 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:22', '4.5'),
(8, 'Vinfast Lux SA2.0 Plus', 'vinfast-lux-sa20-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 148, 135, 1, 'Arrondissement de Paris', '21.017437', '105.831179', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 3, '600.00', '0.00', 0, NULL, NULL, NULL, 6, 'Auto', 3, 4, 'publish', 1, 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:22', '5.0'),
(9, 'Honda Civic', 'honda-civic', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 149, 135, 6, 'Arrondissement de Paris', '21.047879', '105.809731', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 5, '450.00', '0.00', 0, NULL, NULL, NULL, 10, 'Auto', 9, 4, 'publish', 1, 5, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:22', '4.8'),
(10, 'Toyota Prius Plus', 'toyota-prius-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 150, 135, 7, 'Arrondissement de Paris', '21.025449', '105.804412', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 3, '199.00', '0.00', 1, NULL, NULL, NULL, 7, 'Auto', 8, 4, 'publish', 1, 6, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:22', '4.5'),
(11, 'Vinfast Lux V8 (SUV)', 'vinfast-lux-v8-suv', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 151, 135, 8, 'Arrondissement de Paris', '21.020001', '105.836670', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 4, '250.00', '0.00', 0, NULL, NULL, NULL, 4, 'Auto', 4, 4, 'publish', 1, 5, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:22', '4.3');
INSERT INTO `bravo_cars` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `number`, `price`, `sale_price`, `is_instant`, `enable_extra_price`, `extra_price`, `discount_by_days`, `passenger`, `gear`, `baggage`, `door`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `review_score`) VALUES
(12, 'Vinfast Lux A2.0 Plus', 'vinfast-lux-a20-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 152, 135, 3, 'Arrondissement de Paris', '21.051244', '105.777988', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '350.00', '0.00', 1, NULL, NULL, NULL, 5, 'Auto', 8, 4, 'publish', 1, 6, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:22', '4.5'),
(13, 'Vinfast Fadil Standard', 'vinfast-fadil-standard', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p>\r\n<p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Visit the Museum of Modern Art in Manhattan</li>\r\n<li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li>\r\n<li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li>\r\n<li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li>\r\n<li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li>\r\n</ul>', 153, 135, 1, 'Arrondissement de Paris', '21.053326', '105.841475', 12, NULL, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '400.00', '0.00', 1, NULL, NULL, NULL, 9, 'Auto', 10, 4, 'publish', 1, 6, 1, NULL, '2020-02-14 08:44:21', '2020-02-26 05:15:12', '4.6'),
(14, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 0, 1, NULL, NULL, '2020-02-29 01:15:42', '2020-02-29 01:15:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_car_dates`
--

DROP TABLE IF EXISTS `bravo_car_dates`;
CREATE TABLE IF NOT EXISTS `bravo_car_dates` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `number` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '0',
  `note_to_customer` text COLLATE utf8mb4_unicode_ci,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci,
  `is_instant` tinyint(4) DEFAULT '0',
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_car_term`
--

DROP TABLE IF EXISTS `bravo_car_term`;
CREATE TABLE IF NOT EXISTS `bravo_car_term` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_car_term`
--

INSERT INTO `bravo_car_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 61, 1, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(2, 63, 1, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(3, 64, 1, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(4, 65, 1, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(5, 66, 1, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(6, 68, 1, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(7, 61, 2, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(8, 62, 2, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(9, 63, 2, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(10, 65, 2, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(11, 66, 2, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(12, 68, 2, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(13, 61, 3, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(14, 62, 3, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(15, 63, 3, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(16, 65, 3, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(17, 66, 3, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(18, 67, 3, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(19, 68, 3, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(20, 62, 4, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(21, 63, 4, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(22, 64, 4, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(23, 65, 4, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(24, 66, 4, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(25, 67, 4, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(26, 68, 4, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(27, 61, 5, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(28, 62, 5, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(29, 63, 5, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(30, 65, 5, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(31, 67, 5, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(32, 68, 5, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(33, 61, 6, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(34, 62, 6, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(35, 63, 6, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(36, 64, 6, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(37, 65, 6, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(38, 68, 6, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(39, 61, 7, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(40, 63, 7, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(41, 64, 7, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(42, 66, 7, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(43, 68, 7, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(44, 61, 8, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(45, 62, 8, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(46, 64, 8, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(47, 66, 8, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(48, 67, 8, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(49, 61, 9, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(50, 62, 9, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(51, 64, 9, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(52, 65, 9, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(53, 67, 9, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(54, 68, 9, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(55, 61, 10, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(56, 62, 10, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(57, 63, 10, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(58, 64, 10, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(59, 65, 10, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(60, 66, 10, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(61, 68, 10, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(62, 61, 11, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(63, 64, 11, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(64, 65, 11, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(65, 66, 11, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(66, 67, 11, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(67, 68, 11, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(68, 61, 12, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(69, 62, 12, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(70, 63, 12, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(71, 64, 12, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(72, 65, 12, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(73, 67, 12, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(74, 68, 12, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(75, 61, 13, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(76, 62, 13, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(77, 63, 13, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(78, 64, 13, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(79, 66, 13, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(80, 68, 13, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(81, 69, 1, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(82, 70, 1, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(83, 71, 1, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(84, 72, 1, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(85, 73, 1, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(86, 74, 1, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(87, 69, 2, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(88, 70, 2, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(89, 71, 2, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(90, 72, 2, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(91, 73, 2, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(92, 74, 2, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(93, 69, 3, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(94, 70, 3, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(95, 71, 3, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(96, 72, 3, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(97, 73, 3, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(98, 74, 3, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(99, 69, 4, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(100, 70, 4, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(101, 71, 4, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(102, 72, 4, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(103, 73, 4, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(104, 74, 4, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(105, 69, 5, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(106, 70, 5, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(107, 71, 5, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(108, 72, 5, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(109, 73, 5, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(110, 74, 5, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(111, 69, 6, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(112, 70, 6, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(113, 71, 6, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(114, 72, 6, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(115, 73, 6, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(116, 74, 6, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(117, 69, 7, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(118, 70, 7, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(119, 71, 7, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(120, 72, 7, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(121, 73, 7, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(122, 74, 7, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(123, 69, 8, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(124, 70, 8, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(125, 71, 8, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(126, 72, 8, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(127, 73, 8, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(128, 74, 8, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(129, 69, 9, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(130, 70, 9, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(131, 71, 9, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(132, 72, 9, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(133, 73, 9, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(134, 74, 9, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(135, 69, 10, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(136, 70, 10, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(137, 71, 10, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(138, 72, 10, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(139, 73, 10, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(140, 74, 10, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(141, 69, 11, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(142, 70, 11, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(143, 71, 11, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(144, 72, 11, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(145, 73, 11, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(146, 74, 11, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(147, 69, 12, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(148, 70, 12, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(149, 71, 12, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(150, 72, 12, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(151, 73, 12, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(152, 74, 12, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(153, 69, 13, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(154, 70, 13, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(155, 71, 13, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(156, 72, 13, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(157, 73, 13, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(158, 74, 13, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_car_translations`
--

DROP TABLE IF EXISTS `bravo_car_translations`;
CREATE TABLE IF NOT EXISTS `bravo_car_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `faqs` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_car_translations_locale_index` (`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_contact`
--

DROP TABLE IF EXISTS `bravo_contact`;
CREATE TABLE IF NOT EXISTS `bravo_contact` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotels`
--

DROP TABLE IF EXISTS `bravo_hotels`;
CREATE TABLE IF NOT EXISTS `bravo_hotels` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy` text COLLATE utf8mb4_unicode_ci,
  `star_rate` smallint(6) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `check_in_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_out_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_full_day` smallint(6) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `ical_import_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_hotels_slug_index` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_hotels`
--

INSERT INTO `bravo_hotels` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `policy`, `star_rate`, `price`, `check_in_time`, `check_out_time`, `allow_full_day`, `sale_price`, `status`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `review_score`, `ical_import_url`) VALUES
(1, 'Hotel Stanford', 'hotel-stanford', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 67, 93, 1, 'Arrondissement de Paris', '19.148665', '72.839670', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '300.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:21', '5.0', NULL),
(2, 'Hotel WBF Hommachi', 'hotel-wbf-homachi', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 68, 93, 1, 'Porte de Vanves', '19.110390', '72.832764', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '350.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', '4.5', NULL),
(3, 'Castello Casole Hotel', 'castello-casole-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 69, 94, 1, 'Petit-Montrouge', '19.077946', '72.838255', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '350.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', '4.5', NULL),
(4, 'Redac Gateway Hotel', 'redac-gateway-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 70, 93, 1, 'Petit-Montrouge', '19.031217', '72.851982', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '500.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', '5.0', NULL),
(5, 'Studio Allston Hotel', 'studio-allston-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 71, 93, 5, 'New York', '18.972786', '72.819724', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '500.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', '4.3', NULL),
(6, 'EnVision Hotel Boston', 'envision-hotel-biston', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 72, 95, 3, 'New York', '18.873011', '72.975724', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '700.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', '4.0', NULL),
(7, 'Crowne Plaza Hotel', 'crowne-plaza-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 73, 93, 2, 'New York', '19.001355', '73.111444', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '900.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', '5.0', NULL),
(8, 'Stewart Hotel', 'stewart-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 74, 96, 5, 'New York', '19.080542', '73.010551', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '900.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', '4.7', NULL),
(9, 'Parian Holiday Villas', 'parian-holiday-villas', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 75, 94, 1, 'Regal Cinemas Battery Park', '19.161637', '72.997510', 12, 1, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '550.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', '4.5', NULL),
(10, 'Dylan Hotel', 'dylan-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 64, 95, 2, 'Regal Cinemas Battery', '19.229727', '72.984470', 12, 1, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '550.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', '4.0', NULL),
(11, 'The May Fair Hotel', 'the-may-fair-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 67, 94, 1, 'Paris Cinemas Battery', '19.277696', '72.887009', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 4, '550.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', '4.3', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_rooms`
--

DROP TABLE IF EXISTS `bravo_hotel_rooms`;
CREATE TABLE IF NOT EXISTS `bravo_hotel_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image_id` int(11) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL,
  `beds` tinyint(4) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `adults` tinyint(4) DEFAULT NULL,
  `children` tinyint(4) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_hotel_rooms`
--

INSERT INTO `bravo_hotel_rooms` (`id`, `title`, `content`, `image_id`, `gallery`, `video`, `price`, `parent_id`, `number`, `beds`, `size`, `adults`, `children`, `status`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 9, 5, 200, 10, 5, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(2, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 6, 4, 200, 5, 2, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(3, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 10, 3, 200, 7, 5, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(4, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 6, 5, 200, 9, 2, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(5, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 6, 4, 200, 9, 4, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(6, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 5, 2, 200, 5, 3, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(7, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 8, 4, 200, 6, 1, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(8, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 8, 3, 200, 9, 2, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(9, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 7, 4, 200, 8, 5, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(10, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 8, 4, 200, 10, 2, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(11, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 8, 3, 200, 9, 1, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(12, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 7, 3, 200, 8, 2, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(13, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 6, 4, 200, 10, 1, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(14, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 10, 2, 200, 10, 4, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(15, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 5, 4, 200, 10, 5, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(16, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 5, 4, 200, 9, 3, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(17, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 6, 5, 200, 6, 1, 'publish', 4, NULL, NULL, '2020-02-14 08:44:21', NULL),
(18, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 8, 3, 200, 5, 5, 'publish', 4, NULL, NULL, '2020-02-14 08:44:21', NULL),
(19, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 9, 3, 200, 10, 1, 'publish', 4, NULL, NULL, '2020-02-14 08:44:21', NULL),
(20, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 7, 3, 200, 10, 3, 'publish', 4, NULL, NULL, '2020-02-14 08:44:21', NULL),
(21, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 10, 5, 200, 6, 5, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', NULL),
(22, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 7, 4, 200, 10, 4, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', NULL),
(23, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 10, 4, 200, 9, 3, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', NULL),
(24, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 8, 4, 200, 5, 5, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', NULL),
(25, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 9, 3, 200, 5, 2, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', NULL),
(26, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 7, 3, 200, 7, 4, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', NULL),
(27, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 8, 4, 200, 10, 3, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', NULL),
(28, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 7, 4, 200, 6, 5, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', NULL),
(29, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 8, 5, 200, 10, 4, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', NULL),
(30, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 9, 3, 200, 7, 2, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', NULL),
(31, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 5, 4, 200, 9, 1, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', NULL),
(32, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 8, 2, 200, 10, 4, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', NULL),
(33, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 5, 5, 200, 9, 5, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(34, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 7, 5, 200, 10, 4, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(35, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 7, 5, 200, 7, 4, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(36, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 6, 4, 200, 7, 4, 'publish', 1, NULL, NULL, '2020-02-14 08:44:21', NULL),
(37, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 6, 2, 200, 7, 3, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', NULL),
(38, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 10, 3, 200, 5, 3, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', NULL),
(39, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 7, 4, 200, 5, 5, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', NULL),
(40, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 10, 4, 200, 7, 5, 'publish', 6, NULL, NULL, '2020-02-14 08:44:21', NULL),
(41, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 5, 4, 200, 10, 4, 'publish', 4, NULL, NULL, '2020-02-14 08:44:21', NULL),
(42, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 10, 3, 200, 8, 3, 'publish', 4, NULL, NULL, '2020-02-14 08:44:21', NULL),
(43, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 8, 4, 200, 9, 2, 'publish', 4, NULL, NULL, '2020-02-14 08:44:21', NULL),
(44, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 7, 4, 200, 5, 3, 'publish', 4, NULL, NULL, '2020-02-14 08:44:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_room_bookings`
--

DROP TABLE IF EXISTS `bravo_hotel_room_bookings`;
CREATE TABLE IF NOT EXISTS `bravo_hotel_room_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `booking_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_room_dates`
--

DROP TABLE IF EXISTS `bravo_hotel_room_dates`;
CREATE TABLE IF NOT EXISTS `bravo_hotel_room_dates` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `max_guests` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '0',
  `note_to_customer` text COLLATE utf8mb4_unicode_ci,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci,
  `is_instant` tinyint(4) DEFAULT '0',
  `number` smallint(6) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_room_term`
--

DROP TABLE IF EXISTS `bravo_hotel_room_term`;
CREATE TABLE IF NOT EXISTS `bravo_hotel_room_term` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_hotel_room_term`
--

INSERT INTO `bravo_hotel_room_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 58, 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(2, 59, 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(3, 60, 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(4, 56, 2, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(5, 57, 2, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(6, 58, 2, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(7, 59, 2, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(8, 60, 2, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(9, 56, 3, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(10, 57, 3, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(11, 58, 3, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(12, 59, 3, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(13, 60, 3, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(14, 56, 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(15, 57, 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(16, 60, 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(17, 56, 5, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(18, 57, 5, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(19, 58, 5, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(20, 59, 5, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(21, 60, 5, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(22, 58, 6, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(23, 60, 6, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(24, 56, 7, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(25, 57, 7, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(26, 58, 7, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(27, 59, 7, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(28, 60, 7, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(29, 57, 8, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(30, 58, 8, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(31, 59, 8, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(32, 60, 8, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(33, 56, 9, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(34, 57, 9, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(35, 58, 9, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(36, 60, 9, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(37, 59, 10, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(38, 60, 10, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(39, 56, 11, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(40, 57, 11, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(41, 59, 11, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(42, 60, 11, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(43, 56, 12, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(44, 57, 12, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(45, 58, 12, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(46, 59, 12, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(47, 60, 12, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(48, 56, 13, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(49, 58, 13, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(50, 60, 13, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(51, 56, 14, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(52, 57, 14, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(53, 58, 14, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(54, 59, 14, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(55, 60, 14, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(56, 56, 15, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(57, 58, 15, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(58, 59, 15, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(59, 60, 15, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(60, 56, 16, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(61, 57, 16, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(62, 58, 16, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(63, 59, 16, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(64, 56, 17, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(65, 57, 17, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(66, 58, 17, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(67, 59, 17, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(68, 60, 17, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(69, 56, 18, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(70, 57, 18, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(71, 58, 18, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(72, 59, 18, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(73, 56, 19, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(74, 57, 19, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(75, 59, 19, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(76, 60, 19, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(77, 56, 20, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(78, 57, 20, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(79, 58, 20, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(80, 59, 20, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(81, 60, 20, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(82, 56, 21, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(83, 57, 21, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(84, 59, 21, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(85, 60, 21, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(86, 56, 22, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(87, 57, 22, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(88, 58, 22, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(89, 59, 22, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(90, 60, 22, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(91, 56, 23, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(92, 58, 23, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(93, 60, 23, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(94, 56, 24, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(95, 57, 24, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(96, 58, 24, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(97, 59, 24, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(98, 56, 25, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(99, 58, 25, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(100, 59, 25, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(101, 60, 25, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(102, 56, 26, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(103, 57, 26, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(104, 58, 26, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(105, 59, 26, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(106, 60, 26, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(107, 56, 27, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(108, 57, 27, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(109, 58, 27, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(110, 59, 27, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(111, 56, 28, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(112, 57, 28, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(113, 58, 28, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(114, 59, 28, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(115, 60, 28, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(116, 56, 29, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(117, 57, 29, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(118, 58, 29, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(119, 60, 29, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(120, 57, 30, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(121, 59, 30, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(122, 60, 30, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(123, 56, 31, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(124, 57, 31, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(125, 58, 31, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(126, 59, 31, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(127, 60, 31, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(128, 56, 32, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(129, 57, 32, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(130, 59, 32, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(131, 60, 32, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(132, 56, 33, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(133, 58, 33, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(134, 59, 33, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(135, 60, 33, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(136, 56, 34, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(137, 57, 34, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(138, 58, 34, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(139, 59, 34, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(140, 60, 34, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(141, 56, 35, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(142, 57, 35, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(143, 58, 35, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(144, 60, 35, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(145, 56, 36, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(146, 57, 36, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(147, 58, 36, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(148, 59, 36, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(149, 56, 37, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(150, 57, 37, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(151, 58, 37, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(152, 59, 37, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(153, 60, 37, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(154, 57, 38, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(155, 58, 38, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(156, 57, 39, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(157, 58, 39, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(158, 60, 39, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(159, 56, 40, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(160, 57, 40, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(161, 58, 40, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(162, 59, 40, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(163, 60, 40, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(164, 56, 41, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(165, 57, 41, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(166, 58, 41, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(167, 59, 41, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(168, 60, 41, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(169, 56, 42, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(170, 57, 42, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(171, 58, 42, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(172, 59, 42, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(173, 56, 43, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(174, 57, 43, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(175, 58, 43, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(176, 59, 43, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(177, 56, 44, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(178, 57, 44, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(179, 58, 44, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(180, 59, 44, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(181, 60, 44, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_room_translations`
--

DROP TABLE IF EXISTS `bravo_hotel_room_translations`;
CREATE TABLE IF NOT EXISTS `bravo_hotel_room_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_hotel_room_translations_locale_index` (`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_term`
--

DROP TABLE IF EXISTS `bravo_hotel_term`;
CREATE TABLE IF NOT EXISTS `bravo_hotel_term` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_hotel_term`
--

INSERT INTO `bravo_hotel_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 42, 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(2, 43, 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(3, 44, 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(4, 45, 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(5, 47, 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(6, 42, 2, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(7, 43, 2, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(8, 44, 2, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(9, 45, 2, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(10, 46, 2, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(11, 47, 2, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(12, 48, 2, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(13, 42, 3, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(14, 43, 3, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(15, 44, 3, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(16, 45, 3, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(17, 46, 3, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(18, 47, 3, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(19, 48, 3, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(20, 42, 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(21, 43, 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(22, 45, 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(23, 46, 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(24, 47, 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(25, 48, 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(26, 42, 5, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(27, 43, 5, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(28, 44, 5, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(29, 45, 5, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(30, 46, 5, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(31, 47, 5, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(32, 42, 6, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(33, 43, 6, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(34, 44, 6, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(35, 45, 6, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(36, 46, 6, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(37, 47, 6, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(38, 48, 6, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(39, 42, 7, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(40, 43, 7, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(41, 44, 7, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(42, 45, 7, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(43, 48, 7, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(44, 43, 8, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(45, 44, 8, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(46, 45, 8, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(47, 46, 8, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(48, 47, 8, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(49, 48, 8, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(50, 42, 9, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(51, 43, 9, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(52, 44, 9, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(53, 45, 9, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(54, 46, 9, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(55, 47, 9, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(56, 48, 9, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(57, 42, 10, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(58, 43, 10, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(59, 44, 10, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(60, 45, 10, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(61, 46, 10, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(62, 47, 10, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(63, 48, 10, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(64, 42, 11, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(65, 43, 11, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(66, 44, 11, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(67, 45, 11, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(68, 46, 11, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(69, 47, 11, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(70, 48, 11, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(71, 51, 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(72, 52, 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(73, 53, 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(74, 54, 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(75, 55, 1, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(76, 49, 2, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(77, 50, 2, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(78, 51, 2, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(79, 53, 2, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(80, 54, 2, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(81, 50, 3, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(82, 51, 3, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(83, 53, 3, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(84, 54, 3, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(85, 49, 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(86, 50, 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(87, 51, 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(88, 52, 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(89, 54, 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(90, 55, 4, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(91, 49, 5, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(92, 50, 5, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(93, 51, 5, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(94, 52, 5, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(95, 54, 5, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(96, 51, 6, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(97, 52, 6, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(98, 53, 6, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(99, 49, 7, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(100, 50, 7, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(101, 51, 7, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(102, 52, 7, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(103, 54, 7, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(104, 49, 8, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(105, 50, 8, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(106, 53, 8, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(107, 49, 9, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(108, 51, 9, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(109, 52, 9, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(110, 53, 9, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(111, 54, 9, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(112, 55, 9, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(113, 50, 10, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(114, 51, 10, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(115, 52, 10, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(116, 53, 10, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(117, 54, 10, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(118, 55, 10, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(119, 49, 11, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(120, 50, 11, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(121, 53, 11, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(122, 54, 11, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_translations`
--

DROP TABLE IF EXISTS `bravo_hotel_translations`;
CREATE TABLE IF NOT EXISTS `bravo_hotel_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy` text COLLATE utf8mb4_unicode_ci,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_hotel_translations_locale_index` (`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_locations`
--

DROP TABLE IF EXISTS `bravo_locations`;
CREATE TABLE IF NOT EXISTS `bravo_locations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `trip_ideas` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `bravo_locations__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_locations`
--

INSERT INTO `bravo_locations` (`id`, `name`, `content`, `slug`, `image_id`, `map_lat`, `map_lng`, `map_zoom`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `banner_image_id`, `trip_ideas`) VALUES
(1, 'Paris', 'New York, a city that doesnt sleep, as Frank Sinatra sang. The Big Apple is one of the largest cities in the United States and one of the most popular in the whole country and the world. Millions of tourists visit it every year attracted by its various iconic symbols and its wide range of leisure and cultural offer. New York is the birth place of new trends and developments in many fields such as art, gastronomy, technology,...', 'paris', 106, '48.856613', '2.352222', 12, 'publish', 1, 2, NULL, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19', 111, '\"[{\\\"title\\\":\\\"Experiencing the best jazz in Harlem, birthplace of bebop\\\",\\\"link\\\":\\\"#\\\",\\\"content\\\":\\\"New Orleans might be the home of jazz, but New York City is where many of the genre\\u2019s greats became stars \\u2013 and Harlem was at the heart of it.The neighborhood experienced a rebirth during the...\\\",\\\"image_id\\\":\\\"112\\\"},{\\\"title\\\":\\\"Reflections from the road: transformative \\u2018Big Trip\\u2019 experiences\\\",\\\"link\\\":\\\"#\\\",\\\"content\\\":\\\"Whether it\\u2019s a gap year after finishing school, a well-earned sabbatical from work or an overseas adventure in celebration of your retirement, a big trip is a rite of passage for every traveller, with myriad life lessons to be ...\\\",\\\"image_id\\\":\\\"113\\\"}]\"'),
(2, 'New York, United States', NULL, 'new-york-united-states', 107, '40.712776', '-74.005974', 12, 'publish', 3, 4, NULL, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19', NULL, NULL),
(3, 'California', NULL, 'california', 108, '36.778259', '-119.417931', 12, 'publish', 5, 6, NULL, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19', NULL, NULL),
(4, 'United States', NULL, 'united-states', 109, '37.090240', '-95.712891', 12, 'publish', 7, 8, NULL, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19', NULL, NULL),
(5, 'Los Angeles', NULL, 'los-angeles', 110, '34.052235', '-118.243683', 12, 'publish', 9, 10, NULL, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19', NULL, NULL),
(6, 'New Jersey', NULL, 'new-jersey', 106, '40.058323', '-74.405663', 12, 'publish', 11, 12, NULL, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19', NULL, NULL),
(7, 'San Francisco', NULL, 'san-francisco', 107, '37.774929', '-122.419418', 12, 'publish', 13, 14, NULL, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19', NULL, NULL),
(8, 'Virginia', NULL, 'virginia', 108, '37.431572', '-78.656891', 12, 'publish', 15, 16, NULL, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_location_translations`
--

DROP TABLE IF EXISTS `bravo_location_translations`;
CREATE TABLE IF NOT EXISTS `bravo_location_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `trip_ideas` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bravo_location_translations_origin_id_locale_unique` (`origin_id`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_payouts`
--

DROP TABLE IF EXISTS `bravo_payouts`;
CREATE TABLE IF NOT EXISTS `bravo_payouts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vendor_id` bigint(20) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payout_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_info` text COLLATE utf8mb4_unicode_ci,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci,
  `note_to_vendor` text COLLATE utf8mb4_unicode_ci,
  `last_process_by` int(11) DEFAULT NULL,
  `pay_date` timestamp NULL DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_review`
--

DROP TABLE IF EXISTS `bravo_review`;
CREATE TABLE IF NOT EXISTS `bravo_review` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `rate_number` int(11) DEFAULT NULL,
  `author_ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_review`
--

INSERT INTO `bravo_review` (`id`, `object_id`, `object_model`, `title`, `content`, `rate_number`, `author_ip`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `lang`, `created_at`, `updated_at`, `vendor_id`) VALUES
(1, 1, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:19', 15, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19', 1),
(2, 1, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 10, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(3, 1, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 7, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(4, 2, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 15, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(5, 2, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 11, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(6, 2, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 15, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(7, 2, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 13, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(8, 2, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 8, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(9, 3, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 11, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 5),
(10, 3, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 16, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 5),
(11, 3, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 11, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 5),
(12, 4, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 16, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(13, 4, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 16, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(14, 4, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 7, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(15, 4, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 7, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(16, 4, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 15, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(17, 5, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 7, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 4),
(18, 5, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 14, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 4),
(19, 5, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 15, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 4),
(20, 6, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 8, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 5),
(21, 6, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 12, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 5),
(22, 6, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 11, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 5),
(23, 7, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 8, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(24, 7, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 12, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(25, 7, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 14, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(26, 8, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 16, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 4),
(27, 8, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 13, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 4),
(28, 8, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 12, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 4),
(29, 9, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 14, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(30, 9, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 8, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(31, 9, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 11, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(32, 10, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 9, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 4),
(33, 10, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 10, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 4),
(34, 10, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 10, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 4),
(35, 11, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 7, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(36, 11, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 10, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(37, 11, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 10, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(38, 11, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 12, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(39, 12, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 13, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(40, 12, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 7, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(41, 12, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 12, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(42, 12, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 7, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(43, 13, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 9, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(44, 13, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 14, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(45, 13, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 11, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(46, 14, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 14, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(47, 14, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 8, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(48, 14, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 11, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(49, 14, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 9, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(50, 15, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 15, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(51, 15, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 10, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(52, 15, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 16, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(53, 16, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 9, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(54, 16, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 10, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(55, 1, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 15, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(56, 1, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 12, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(57, 2, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 15, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(58, 2, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 12, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(59, 2, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 15, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(60, 3, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 15, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 5),
(61, 3, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 14, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 5),
(62, 4, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 9, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(63, 4, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 16, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(64, 4, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 10, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(65, 4, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 8, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(66, 4, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 9, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(67, 5, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 16, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 5),
(68, 6, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 9, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 4),
(69, 7, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 8, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 5),
(70, 7, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 12, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 5),
(71, 7, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 15, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 5),
(72, 7, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 15, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 5),
(73, 7, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 13, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 5),
(74, 8, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 10, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 4),
(75, 8, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 16, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 4),
(76, 8, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 14, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 4),
(77, 9, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 8, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(78, 9, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 13, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(79, 10, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 16, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(80, 10, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 10, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(81, 10, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 14, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(82, 10, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 13, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 1),
(83, 11, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 11, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(84, 11, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 9, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(85, 11, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 14, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(86, 11, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:20', 14, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', 6),
(87, 1, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 8, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(88, 2, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 11, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(89, 2, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 13, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(90, 2, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 8, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(91, 2, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 9, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(92, 3, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 14, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(93, 3, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 15, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(94, 3, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 15, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(95, 3, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 11, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(96, 4, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 14, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(97, 4, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 16, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(98, 4, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 8, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(99, 4, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 11, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(100, 5, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 7, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 4),
(101, 5, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 15, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 4),
(102, 5, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 11, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 4),
(103, 5, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 14, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 4),
(104, 6, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 15, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 6),
(105, 6, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 10, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 6),
(106, 7, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 12, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 6),
(107, 7, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 8, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 6),
(108, 7, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 8, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 6),
(109, 8, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 9, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 6),
(110, 8, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 11, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 6),
(111, 8, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 9, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 6),
(112, 9, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 12, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(113, 9, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 9, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(114, 10, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 11, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 6),
(115, 11, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 8, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 4),
(116, 11, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 12, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 4),
(117, 11, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 9, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 4),
(118, 11, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 7, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 4),
(119, 1, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 7, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(120, 1, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 16, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(121, 1, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 15, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(122, 2, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 13, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1);
INSERT INTO `bravo_review` (`id`, `object_id`, `object_model`, `title`, `content`, `rate_number`, `author_ip`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `lang`, `created_at`, `updated_at`, `vendor_id`) VALUES
(123, 2, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 10, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(124, 3, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 9, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(125, 3, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 9, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(126, 3, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 8, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(127, 4, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 16, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(128, 4, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 7, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(129, 5, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 9, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(130, 5, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 9, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(131, 5, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 11, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(132, 5, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 10, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(133, 5, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 11, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 1),
(134, 6, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 15, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 4),
(135, 6, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 10, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 4),
(136, 6, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 10, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 4),
(137, 6, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 12, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 4),
(138, 7, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 15, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 4),
(139, 7, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 8, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 4),
(140, 8, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 8, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 4),
(141, 8, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 16, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 4),
(142, 8, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 12, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 4),
(143, 8, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 9, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 4),
(144, 9, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 14, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 5),
(145, 9, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 16, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 5),
(146, 9, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 15, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 5),
(147, 9, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 15, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 5),
(148, 10, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:21', 10, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', 6),
(149, 10, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:22', 10, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', 6),
(150, 10, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:22', 9, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', 6),
(151, 10, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:22', 14, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', 6),
(152, 11, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:22', 11, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', 5),
(153, 11, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:22', 16, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', 5),
(154, 11, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:22', 12, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', 5),
(155, 12, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:22', 7, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', 6),
(156, 12, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:22', 8, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', 6),
(157, 12, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:22', 8, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', 6),
(158, 12, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:22', 8, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', 6),
(159, 13, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:22', 8, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', 6),
(160, 13, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:22', 7, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', 6),
(161, 13, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:22', 11, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', 6),
(162, 13, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-02-14 14:14:22', 13, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', 6),
(163, 13, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-02-14 14:14:22', 13, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', 6);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_review_meta`
--

DROP TABLE IF EXISTS `bravo_review_meta`;
CREATE TABLE IF NOT EXISTS `bravo_review_meta` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `review_id` int(11) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=816 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_review_meta`
--

INSERT INTO `bravo_review_meta` (`id`, `review_id`, `object_id`, `object_model`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19'),
(2, 1, 1, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19'),
(3, 1, 1, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(4, 1, 1, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(5, 1, 1, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(6, 2, 1, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(7, 2, 1, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(8, 2, 1, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(9, 2, 1, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(10, 2, 1, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(11, 3, 1, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(12, 3, 1, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(13, 3, 1, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(14, 3, 1, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(15, 3, 1, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(16, 4, 2, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(17, 4, 2, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(18, 4, 2, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(19, 4, 2, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(20, 4, 2, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(21, 5, 2, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(22, 5, 2, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(23, 5, 2, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(24, 5, 2, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(25, 5, 2, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(26, 6, 2, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(27, 6, 2, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(28, 6, 2, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(29, 6, 2, 'tour', 'Area Expert', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(30, 6, 2, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(31, 7, 2, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(32, 7, 2, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(33, 7, 2, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(34, 7, 2, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(35, 7, 2, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(36, 8, 2, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(37, 8, 2, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(38, 8, 2, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(39, 8, 2, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(40, 8, 2, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(41, 9, 3, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(42, 9, 3, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(43, 9, 3, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(44, 9, 3, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(45, 9, 3, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(46, 10, 3, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(47, 10, 3, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(48, 10, 3, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(49, 10, 3, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(50, 10, 3, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(51, 11, 3, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(52, 11, 3, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(53, 11, 3, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(54, 11, 3, 'tour', 'Area Expert', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(55, 11, 3, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(56, 12, 4, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(57, 12, 4, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(58, 12, 4, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(59, 12, 4, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(60, 12, 4, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(61, 13, 4, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(62, 13, 4, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(63, 13, 4, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(64, 13, 4, 'tour', 'Area Expert', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(65, 13, 4, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(66, 14, 4, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(67, 14, 4, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(68, 14, 4, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(69, 14, 4, 'tour', 'Area Expert', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(70, 14, 4, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(71, 15, 4, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(72, 15, 4, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(73, 15, 4, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(74, 15, 4, 'tour', 'Area Expert', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(75, 15, 4, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(76, 16, 4, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(77, 16, 4, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(78, 16, 4, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(79, 16, 4, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(80, 16, 4, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(81, 17, 5, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(82, 17, 5, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(83, 17, 5, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(84, 17, 5, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(85, 17, 5, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(86, 18, 5, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(87, 18, 5, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(88, 18, 5, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(89, 18, 5, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(90, 18, 5, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(91, 19, 5, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(92, 19, 5, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(93, 19, 5, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(94, 19, 5, 'tour', 'Area Expert', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(95, 19, 5, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(96, 20, 6, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(97, 20, 6, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(98, 20, 6, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(99, 20, 6, 'tour', 'Area Expert', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(100, 20, 6, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(101, 21, 6, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(102, 21, 6, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(103, 21, 6, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(104, 21, 6, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(105, 21, 6, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(106, 22, 6, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(107, 22, 6, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(108, 22, 6, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(109, 22, 6, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(110, 22, 6, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(111, 23, 7, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(112, 23, 7, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(113, 23, 7, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(114, 23, 7, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(115, 23, 7, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(116, 24, 7, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(117, 24, 7, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(118, 24, 7, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(119, 24, 7, 'tour', 'Area Expert', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(120, 24, 7, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(121, 25, 7, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(122, 25, 7, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(123, 25, 7, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(124, 25, 7, 'tour', 'Area Expert', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(125, 25, 7, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(126, 26, 8, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(127, 26, 8, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(128, 26, 8, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(129, 26, 8, 'tour', 'Area Expert', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(130, 26, 8, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(131, 27, 8, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(132, 27, 8, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(133, 27, 8, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(134, 27, 8, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(135, 27, 8, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(136, 28, 8, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(137, 28, 8, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(138, 28, 8, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(139, 28, 8, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(140, 28, 8, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(141, 29, 9, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(142, 29, 9, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(143, 29, 9, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(144, 29, 9, 'tour', 'Area Expert', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(145, 29, 9, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(146, 30, 9, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(147, 30, 9, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(148, 30, 9, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(149, 30, 9, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(150, 30, 9, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(151, 31, 9, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(152, 31, 9, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(153, 31, 9, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(154, 31, 9, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(155, 31, 9, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(156, 32, 10, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(157, 32, 10, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(158, 32, 10, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(159, 32, 10, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(160, 32, 10, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(161, 33, 10, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(162, 33, 10, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(163, 33, 10, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(164, 33, 10, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(165, 33, 10, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(166, 34, 10, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(167, 34, 10, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(168, 34, 10, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(169, 34, 10, 'tour', 'Area Expert', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(170, 34, 10, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(171, 35, 11, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(172, 35, 11, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(173, 35, 11, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(174, 35, 11, 'tour', 'Area Expert', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(175, 35, 11, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(176, 36, 11, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(177, 36, 11, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(178, 36, 11, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(179, 36, 11, 'tour', 'Area Expert', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(180, 36, 11, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(181, 37, 11, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(182, 37, 11, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(183, 37, 11, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(184, 37, 11, 'tour', 'Area Expert', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(185, 37, 11, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(186, 38, 11, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(187, 38, 11, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(188, 38, 11, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(189, 38, 11, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(190, 38, 11, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(191, 39, 12, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(192, 39, 12, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(193, 39, 12, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(194, 39, 12, 'tour', 'Area Expert', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(195, 39, 12, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(196, 40, 12, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(197, 40, 12, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(198, 40, 12, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(199, 40, 12, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(200, 40, 12, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(201, 41, 12, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(202, 41, 12, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(203, 41, 12, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(204, 41, 12, 'tour', 'Area Expert', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(205, 41, 12, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(206, 42, 12, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(207, 42, 12, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(208, 42, 12, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(209, 42, 12, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(210, 42, 12, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(211, 43, 13, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(212, 43, 13, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(213, 43, 13, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(214, 43, 13, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(215, 43, 13, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(216, 44, 13, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(217, 44, 13, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(218, 44, 13, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(219, 44, 13, 'tour', 'Area Expert', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(220, 44, 13, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(221, 45, 13, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(222, 45, 13, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(223, 45, 13, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(224, 45, 13, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(225, 45, 13, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(226, 46, 14, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(227, 46, 14, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(228, 46, 14, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(229, 46, 14, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(230, 46, 14, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(231, 47, 14, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(232, 47, 14, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(233, 47, 14, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(234, 47, 14, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(235, 47, 14, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(236, 48, 14, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(237, 48, 14, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(238, 48, 14, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(239, 48, 14, 'tour', 'Area Expert', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(240, 48, 14, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(241, 49, 14, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(242, 49, 14, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(243, 49, 14, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(244, 49, 14, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(245, 49, 14, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(246, 50, 15, 'tour', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(247, 50, 15, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(248, 50, 15, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(249, 50, 15, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(250, 50, 15, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(251, 51, 15, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(252, 51, 15, 'tour', 'Organization', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(253, 51, 15, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(254, 51, 15, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(255, 51, 15, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(256, 52, 15, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(257, 52, 15, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(258, 52, 15, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(259, 52, 15, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(260, 52, 15, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(261, 53, 16, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(262, 53, 16, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(263, 53, 16, 'tour', 'Friendliness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(264, 53, 16, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(265, 53, 16, 'tour', 'Safety', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(266, 54, 16, 'tour', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(267, 54, 16, 'tour', 'Organization', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(268, 54, 16, 'tour', 'Friendliness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(269, 54, 16, 'tour', 'Area Expert', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(270, 54, 16, 'tour', 'Safety', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(271, 55, 1, 'space', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(272, 55, 1, 'space', 'Location', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(273, 55, 1, 'space', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(274, 55, 1, 'space', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(275, 55, 1, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(276, 56, 1, 'space', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(277, 56, 1, 'space', 'Location', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(278, 56, 1, 'space', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(279, 56, 1, 'space', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(280, 56, 1, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(281, 57, 2, 'space', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(282, 57, 2, 'space', 'Location', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(283, 57, 2, 'space', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(284, 57, 2, 'space', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(285, 57, 2, 'space', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(286, 58, 2, 'space', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(287, 58, 2, 'space', 'Location', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(288, 58, 2, 'space', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(289, 58, 2, 'space', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(290, 58, 2, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(291, 59, 2, 'space', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(292, 59, 2, 'space', 'Location', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(293, 59, 2, 'space', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(294, 59, 2, 'space', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(295, 59, 2, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(296, 60, 3, 'space', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(297, 60, 3, 'space', 'Location', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(298, 60, 3, 'space', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(299, 60, 3, 'space', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(300, 60, 3, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(301, 61, 3, 'space', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(302, 61, 3, 'space', 'Location', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(303, 61, 3, 'space', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(304, 61, 3, 'space', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(305, 61, 3, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(306, 62, 4, 'space', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(307, 62, 4, 'space', 'Location', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(308, 62, 4, 'space', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(309, 62, 4, 'space', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(310, 62, 4, 'space', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(311, 63, 4, 'space', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(312, 63, 4, 'space', 'Location', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(313, 63, 4, 'space', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(314, 63, 4, 'space', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(315, 63, 4, 'space', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(316, 64, 4, 'space', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(317, 64, 4, 'space', 'Location', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(318, 64, 4, 'space', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(319, 64, 4, 'space', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(320, 64, 4, 'space', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(321, 65, 4, 'space', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(322, 65, 4, 'space', 'Location', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(323, 65, 4, 'space', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(324, 65, 4, 'space', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(325, 65, 4, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(326, 66, 4, 'space', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(327, 66, 4, 'space', 'Location', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(328, 66, 4, 'space', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(329, 66, 4, 'space', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(330, 66, 4, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(331, 67, 5, 'space', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(332, 67, 5, 'space', 'Location', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(333, 67, 5, 'space', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(334, 67, 5, 'space', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(335, 67, 5, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(336, 68, 6, 'space', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(337, 68, 6, 'space', 'Location', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(338, 68, 6, 'space', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(339, 68, 6, 'space', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(340, 68, 6, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(341, 69, 7, 'space', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(342, 69, 7, 'space', 'Location', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(343, 69, 7, 'space', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(344, 69, 7, 'space', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(345, 69, 7, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(346, 70, 7, 'space', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(347, 70, 7, 'space', 'Location', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(348, 70, 7, 'space', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(349, 70, 7, 'space', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(350, 70, 7, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(351, 71, 7, 'space', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(352, 71, 7, 'space', 'Location', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(353, 71, 7, 'space', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(354, 71, 7, 'space', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(355, 71, 7, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(356, 72, 7, 'space', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(357, 72, 7, 'space', 'Location', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(358, 72, 7, 'space', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(359, 72, 7, 'space', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(360, 72, 7, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(361, 73, 7, 'space', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(362, 73, 7, 'space', 'Location', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(363, 73, 7, 'space', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(364, 73, 7, 'space', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(365, 73, 7, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(366, 74, 8, 'space', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(367, 74, 8, 'space', 'Location', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(368, 74, 8, 'space', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(369, 74, 8, 'space', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(370, 74, 8, 'space', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(371, 75, 8, 'space', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(372, 75, 8, 'space', 'Location', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(373, 75, 8, 'space', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(374, 75, 8, 'space', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(375, 75, 8, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(376, 76, 8, 'space', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(377, 76, 8, 'space', 'Location', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(378, 76, 8, 'space', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(379, 76, 8, 'space', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(380, 76, 8, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(381, 77, 9, 'space', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(382, 77, 9, 'space', 'Location', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(383, 77, 9, 'space', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(384, 77, 9, 'space', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(385, 77, 9, 'space', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(386, 78, 9, 'space', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(387, 78, 9, 'space', 'Location', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(388, 78, 9, 'space', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(389, 78, 9, 'space', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(390, 78, 9, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(391, 79, 10, 'space', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(392, 79, 10, 'space', 'Location', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(393, 79, 10, 'space', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(394, 79, 10, 'space', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(395, 79, 10, 'space', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(396, 80, 10, 'space', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(397, 80, 10, 'space', 'Location', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(398, 80, 10, 'space', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(399, 80, 10, 'space', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(400, 80, 10, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(401, 81, 10, 'space', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(402, 81, 10, 'space', 'Location', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(403, 81, 10, 'space', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(404, 81, 10, 'space', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(405, 81, 10, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(406, 82, 10, 'space', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(407, 82, 10, 'space', 'Location', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(408, 82, 10, 'space', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(409, 82, 10, 'space', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(410, 82, 10, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(411, 83, 11, 'space', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(412, 83, 11, 'space', 'Location', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(413, 83, 11, 'space', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(414, 83, 11, 'space', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(415, 83, 11, 'space', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(416, 84, 11, 'space', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(417, 84, 11, 'space', 'Location', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(418, 84, 11, 'space', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(419, 84, 11, 'space', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(420, 84, 11, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(421, 85, 11, 'space', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(422, 85, 11, 'space', 'Location', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(423, 85, 11, 'space', 'Service', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(424, 85, 11, 'space', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(425, 85, 11, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(426, 86, 11, 'space', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(427, 86, 11, 'space', 'Location', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(428, 86, 11, 'space', 'Service', '4', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(429, 86, 11, 'space', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(430, 86, 11, 'space', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(431, 87, 1, 'hotel', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(432, 87, 1, 'hotel', 'Location', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(433, 87, 1, 'hotel', 'Service', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(434, 87, 1, 'hotel', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(435, 87, 1, 'hotel', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(436, 88, 2, 'hotel', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(437, 88, 2, 'hotel', 'Location', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(438, 88, 2, 'hotel', 'Service', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(439, 88, 2, 'hotel', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(440, 88, 2, 'hotel', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(441, 89, 2, 'hotel', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(442, 89, 2, 'hotel', 'Location', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(443, 89, 2, 'hotel', 'Service', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(444, 89, 2, 'hotel', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(445, 89, 2, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(446, 90, 2, 'hotel', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(447, 90, 2, 'hotel', 'Location', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(448, 90, 2, 'hotel', 'Service', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(449, 90, 2, 'hotel', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(450, 90, 2, 'hotel', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(451, 91, 2, 'hotel', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(452, 91, 2, 'hotel', 'Location', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(453, 91, 2, 'hotel', 'Service', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(454, 91, 2, 'hotel', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(455, 91, 2, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(456, 92, 3, 'hotel', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(457, 92, 3, 'hotel', 'Location', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(458, 92, 3, 'hotel', 'Service', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(459, 92, 3, 'hotel', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(460, 92, 3, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(461, 93, 3, 'hotel', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(462, 93, 3, 'hotel', 'Location', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(463, 93, 3, 'hotel', 'Service', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(464, 93, 3, 'hotel', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(465, 93, 3, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(466, 94, 3, 'hotel', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(467, 94, 3, 'hotel', 'Location', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(468, 94, 3, 'hotel', 'Service', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(469, 94, 3, 'hotel', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(470, 94, 3, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(471, 95, 3, 'hotel', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(472, 95, 3, 'hotel', 'Location', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(473, 95, 3, 'hotel', 'Service', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(474, 95, 3, 'hotel', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(475, 95, 3, 'hotel', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(476, 96, 4, 'hotel', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(477, 96, 4, 'hotel', 'Location', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(478, 96, 4, 'hotel', 'Service', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(479, 96, 4, 'hotel', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(480, 96, 4, 'hotel', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(481, 97, 4, 'hotel', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(482, 97, 4, 'hotel', 'Location', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(483, 97, 4, 'hotel', 'Service', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(484, 97, 4, 'hotel', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(485, 97, 4, 'hotel', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(486, 98, 4, 'hotel', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(487, 98, 4, 'hotel', 'Location', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(488, 98, 4, 'hotel', 'Service', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(489, 98, 4, 'hotel', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(490, 98, 4, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(491, 99, 4, 'hotel', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(492, 99, 4, 'hotel', 'Location', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(493, 99, 4, 'hotel', 'Service', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(494, 99, 4, 'hotel', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(495, 99, 4, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(496, 100, 5, 'hotel', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(497, 100, 5, 'hotel', 'Location', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(498, 100, 5, 'hotel', 'Service', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(499, 100, 5, 'hotel', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(500, 100, 5, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(501, 101, 5, 'hotel', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(502, 101, 5, 'hotel', 'Location', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(503, 101, 5, 'hotel', 'Service', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(504, 101, 5, 'hotel', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(505, 101, 5, 'hotel', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(506, 102, 5, 'hotel', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(507, 102, 5, 'hotel', 'Location', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(508, 102, 5, 'hotel', 'Service', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(509, 102, 5, 'hotel', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(510, 102, 5, 'hotel', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(511, 103, 5, 'hotel', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(512, 103, 5, 'hotel', 'Location', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(513, 103, 5, 'hotel', 'Service', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(514, 103, 5, 'hotel', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(515, 103, 5, 'hotel', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(516, 104, 6, 'hotel', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(517, 104, 6, 'hotel', 'Location', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(518, 104, 6, 'hotel', 'Service', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(519, 104, 6, 'hotel', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(520, 104, 6, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(521, 105, 6, 'hotel', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(522, 105, 6, 'hotel', 'Location', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(523, 105, 6, 'hotel', 'Service', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(524, 105, 6, 'hotel', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(525, 105, 6, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(526, 106, 7, 'hotel', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(527, 106, 7, 'hotel', 'Location', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(528, 106, 7, 'hotel', 'Service', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(529, 106, 7, 'hotel', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(530, 106, 7, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(531, 107, 7, 'hotel', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(532, 107, 7, 'hotel', 'Location', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(533, 107, 7, 'hotel', 'Service', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(534, 107, 7, 'hotel', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(535, 107, 7, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(536, 108, 7, 'hotel', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(537, 108, 7, 'hotel', 'Location', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21');
INSERT INTO `bravo_review_meta` (`id`, `review_id`, `object_id`, `object_model`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(538, 108, 7, 'hotel', 'Service', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(539, 108, 7, 'hotel', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(540, 108, 7, 'hotel', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(541, 109, 8, 'hotel', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(542, 109, 8, 'hotel', 'Location', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(543, 109, 8, 'hotel', 'Service', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(544, 109, 8, 'hotel', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(545, 109, 8, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(546, 110, 8, 'hotel', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(547, 110, 8, 'hotel', 'Location', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(548, 110, 8, 'hotel', 'Service', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(549, 110, 8, 'hotel', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(550, 110, 8, 'hotel', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(551, 111, 8, 'hotel', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(552, 111, 8, 'hotel', 'Location', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(553, 111, 8, 'hotel', 'Service', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(554, 111, 8, 'hotel', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(555, 111, 8, 'hotel', 'Rooms', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(556, 112, 9, 'hotel', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(557, 112, 9, 'hotel', 'Location', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(558, 112, 9, 'hotel', 'Service', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(559, 112, 9, 'hotel', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(560, 112, 9, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(561, 113, 9, 'hotel', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(562, 113, 9, 'hotel', 'Location', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(563, 113, 9, 'hotel', 'Service', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(564, 113, 9, 'hotel', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(565, 113, 9, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(566, 114, 10, 'hotel', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(567, 114, 10, 'hotel', 'Location', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(568, 114, 10, 'hotel', 'Service', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(569, 114, 10, 'hotel', 'Clearness', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(570, 114, 10, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(571, 115, 11, 'hotel', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(572, 115, 11, 'hotel', 'Location', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(573, 115, 11, 'hotel', 'Service', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(574, 115, 11, 'hotel', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(575, 115, 11, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(576, 116, 11, 'hotel', 'Sleep', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(577, 116, 11, 'hotel', 'Location', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(578, 116, 11, 'hotel', 'Service', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(579, 116, 11, 'hotel', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(580, 116, 11, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(581, 117, 11, 'hotel', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(582, 117, 11, 'hotel', 'Location', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(583, 117, 11, 'hotel', 'Service', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(584, 117, 11, 'hotel', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(585, 117, 11, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(586, 118, 11, 'hotel', 'Sleep', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(587, 118, 11, 'hotel', 'Location', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(588, 118, 11, 'hotel', 'Service', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(589, 118, 11, 'hotel', 'Clearness', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(590, 118, 11, 'hotel', 'Rooms', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(591, 119, 1, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(592, 119, 1, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(593, 119, 1, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(594, 119, 1, 'car', 'Facility', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(595, 119, 1, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(596, 120, 1, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(597, 120, 1, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(598, 120, 1, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(599, 120, 1, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(600, 120, 1, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(601, 121, 1, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(602, 121, 1, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(603, 121, 1, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(604, 121, 1, 'car', 'Facility', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(605, 121, 1, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(606, 122, 2, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(607, 122, 2, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(608, 122, 2, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(609, 122, 2, 'car', 'Facility', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(610, 122, 2, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(611, 123, 2, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(612, 123, 2, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(613, 123, 2, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(614, 123, 2, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(615, 123, 2, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(616, 124, 3, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(617, 124, 3, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(618, 124, 3, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(619, 124, 3, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(620, 124, 3, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(621, 125, 3, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(622, 125, 3, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(623, 125, 3, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(624, 125, 3, 'car', 'Facility', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(625, 125, 3, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(626, 126, 3, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(627, 126, 3, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(628, 126, 3, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(629, 126, 3, 'car', 'Facility', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(630, 126, 3, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(631, 127, 4, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(632, 127, 4, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(633, 127, 4, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(634, 127, 4, 'car', 'Facility', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(635, 127, 4, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(636, 128, 4, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(637, 128, 4, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(638, 128, 4, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(639, 128, 4, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(640, 128, 4, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(641, 129, 5, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(642, 129, 5, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(643, 129, 5, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(644, 129, 5, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(645, 129, 5, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(646, 130, 5, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(647, 130, 5, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(648, 130, 5, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(649, 130, 5, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(650, 130, 5, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(651, 131, 5, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(652, 131, 5, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(653, 131, 5, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(654, 131, 5, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(655, 131, 5, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(656, 132, 5, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(657, 132, 5, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(658, 132, 5, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(659, 132, 5, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(660, 132, 5, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(661, 133, 5, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(662, 133, 5, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(663, 133, 5, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(664, 133, 5, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(665, 133, 5, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(666, 134, 6, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(667, 134, 6, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(668, 134, 6, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(669, 134, 6, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(670, 134, 6, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(671, 135, 6, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(672, 135, 6, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(673, 135, 6, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(674, 135, 6, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(675, 135, 6, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(676, 136, 6, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(677, 136, 6, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(678, 136, 6, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(679, 136, 6, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(680, 136, 6, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(681, 137, 6, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(682, 137, 6, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(683, 137, 6, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(684, 137, 6, 'car', 'Facility', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(685, 137, 6, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(686, 138, 7, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(687, 138, 7, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(688, 138, 7, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(689, 138, 7, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(690, 138, 7, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(691, 139, 7, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(692, 139, 7, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(693, 139, 7, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(694, 139, 7, 'car', 'Facility', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(695, 139, 7, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(696, 140, 8, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(697, 140, 8, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(698, 140, 8, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(699, 140, 8, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(700, 140, 8, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(701, 141, 8, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(702, 141, 8, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(703, 141, 8, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(704, 141, 8, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(705, 141, 8, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(706, 142, 8, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(707, 142, 8, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(708, 142, 8, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(709, 142, 8, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(710, 142, 8, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(711, 143, 8, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(712, 143, 8, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(713, 143, 8, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(714, 143, 8, 'car', 'Facility', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(715, 143, 8, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(716, 144, 9, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(717, 144, 9, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(718, 144, 9, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(719, 144, 9, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(720, 144, 9, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(721, 145, 9, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(722, 145, 9, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(723, 145, 9, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(724, 145, 9, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(725, 145, 9, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(726, 146, 9, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(727, 146, 9, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(728, 146, 9, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(729, 146, 9, 'car', 'Facility', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(730, 146, 9, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(731, 147, 9, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(732, 147, 9, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(733, 147, 9, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(734, 147, 9, 'car', 'Facility', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(735, 147, 9, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(736, 148, 10, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(737, 148, 10, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21'),
(738, 148, 10, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(739, 148, 10, 'car', 'Facility', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(740, 148, 10, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(741, 149, 10, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(742, 149, 10, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(743, 149, 10, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(744, 149, 10, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(745, 149, 10, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(746, 150, 10, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(747, 150, 10, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(748, 150, 10, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(749, 150, 10, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(750, 150, 10, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(751, 151, 10, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(752, 151, 10, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(753, 151, 10, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(754, 151, 10, 'car', 'Facility', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(755, 151, 10, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(756, 152, 11, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(757, 152, 11, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(758, 152, 11, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(759, 152, 11, 'car', 'Facility', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(760, 152, 11, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(761, 153, 11, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(762, 153, 11, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(763, 153, 11, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(764, 153, 11, 'car', 'Facility', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(765, 153, 11, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(766, 154, 11, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(767, 154, 11, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(768, 154, 11, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(769, 154, 11, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(770, 154, 11, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(771, 155, 12, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(772, 155, 12, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(773, 155, 12, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(774, 155, 12, 'car', 'Facility', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(775, 155, 12, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(776, 156, 12, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(777, 156, 12, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(778, 156, 12, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(779, 156, 12, 'car', 'Facility', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(780, 156, 12, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(781, 157, 12, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(782, 157, 12, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(783, 157, 12, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(784, 157, 12, 'car', 'Facility', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(785, 157, 12, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(786, 158, 12, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(787, 158, 12, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(788, 158, 12, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(789, 158, 12, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(790, 158, 12, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(791, 159, 13, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(792, 159, 13, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(793, 159, 13, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(794, 159, 13, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(795, 159, 13, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(796, 160, 13, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(797, 160, 13, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(798, 160, 13, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(799, 160, 13, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(800, 160, 13, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(801, 161, 13, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(802, 161, 13, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(803, 161, 13, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(804, 161, 13, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(805, 161, 13, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(806, 162, 13, 'car', 'Equipment', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(807, 162, 13, 'car', 'Comfortable', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(808, 162, 13, 'car', 'Climate Control', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(809, 162, 13, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(810, 162, 13, 'car', 'Aftercare', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(811, 163, 13, 'car', 'Equipment', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(812, 163, 13, 'car', 'Comfortable', '4', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(813, 163, 13, 'car', 'Climate Control', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(814, 163, 13, 'car', 'Facility', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22'),
(815, 163, 13, 'car', 'Aftercare', '5', 1, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_seo`
--

DROP TABLE IF EXISTS `bravo_seo`;
CREATE TABLE IF NOT EXISTS `bravo_seo` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_index` tinyint(4) DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_desc` text COLLATE utf8mb4_unicode_ci,
  `seo_image` int(11) DEFAULT NULL,
  `seo_share` text COLLATE utf8mb4_unicode_ci,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_seo`
--

INSERT INTO `bravo_seo` (`id`, `object_id`, `object_model`, `seo_index`, `seo_title`, `seo_desc`, `seo_image`, `seo_share`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 13, 'car', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2020-02-26 05:15:12', '2020-02-26 05:15:12'),
(2, 14, 'car', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2020-02-29 01:15:42', '2020-02-29 01:15:42'),
(3, 9, 'news', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2020-02-29 01:15:56', '2020-02-29 01:15:56');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_spaces`
--

DROP TABLE IF EXISTS `bravo_spaces`;
CREATE TABLE IF NOT EXISTS `bravo_spaces` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT '0',
  `allow_children` tinyint(4) DEFAULT '0',
  `allow_infant` tinyint(4) DEFAULT '0',
  `max_guests` tinyint(4) DEFAULT '0',
  `bed` int(11) DEFAULT NULL,
  `bathroom` int(11) DEFAULT NULL,
  `square` int(11) DEFAULT NULL,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci,
  `discount_by_days` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT '1',
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `ical_import_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_spaces_slug_index` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_spaces`
--

INSERT INTO `bravo_spaces` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `price`, `sale_price`, `is_instant`, `allow_children`, `allow_infant`, `max_guests`, `bed`, `bathroom`, `square`, `enable_extra_price`, `extra_price`, `discount_by_days`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `review_score`, `ical_import_url`) VALUES
(1, 'LUXURY STUDIO', 'luxury-studio', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 63, 85, 2, 'Arrondissement de Paris', '51.528564', '-0.203010', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '300.00', '184.00', 0, 0, 0, 5, 7, 4, 122, NULL, NULL, NULL, 'publish', 1, 1, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', '4.5', NULL),
(2, 'LUXURY APARTMENT', 'luxury-apartment', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 64, 85, 3, 'Porte de Vanves', '51.519592', '-0.226346', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '900.00', '0.00', 1, 0, 0, 9, 5, 10, 184, NULL, NULL, NULL, 'publish', 1, 1, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', '4.3', NULL),
(3, 'BEAUTIFUL LOFT', 'beautiful-loft', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 65, 84, 3, 'Porte de Vanves', '51.461875', '-0.211246', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '650.00', '0.00', 1, 0, 0, 7, 3, 1, 150, NULL, NULL, NULL, 'publish', 1, 5, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', '4.0', NULL),
(4, 'BEST OF WEST VILLAGE', 'best-of-west-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 66, 83, 4, 'Porte de Vanves', '51.427638', '-0.170752', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '800.00', '0.00', 1, 0, 0, 5, 5, 9, 187, NULL, NULL, NULL, 'publish', 1, 6, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', '4.6', NULL),
(5, 'DUPLEX GREENWICH', 'duplex-greenwich', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 67, 84, 1, 'Porte de Vanves', '51.442192', '-0.043778', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '220.00', '0.00', 0, 0, 0, 10, 8, 4, 108, NULL, NULL, NULL, 'publish', 1, 5, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', '5.0', NULL),
(6, 'THE MEATPACKING SUITES', 'the-meatpacking-suites', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 68, 84, 1, 'Porte de Vanves', '51.475135', '0.003592', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '320.00', '0.00', 0, 0, 0, 7, 3, 4, 176, NULL, NULL, NULL, 'publish', 1, 4, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', '5.0', NULL),
(7, 'EAST VILLAGE', 'east-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 69, 85, 1, 'Porte de Vanves', '51.524292', '-0.022489', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '300.00', '260.00', 1, 0, 0, 5, 3, 4, 108, NULL, NULL, NULL, 'publish', 1, 5, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', '4.0', NULL),
(8, 'PARIS GREENWICH VILLA', 'paris-greenwich-villa', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 70, 84, 1, 'Porte de Vanves', '51.556749', '-0.091124', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '500.00', '0.00', 1, 0, 0, 6, 4, 4, 149, NULL, NULL, NULL, 'publish', 1, 4, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', '4.3', NULL),
(9, 'LUXURY SINGLE', 'luxury-single', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 71, 85, 1, 'Porte de Vanves', '51.569555', '0.012563', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '400.00', '350.00', 0, 0, 0, 8, 10, 9, 156, NULL, NULL, NULL, 'publish', 1, 6, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', '5.0', NULL),
(10, 'LILY DALE VILLAGE', 'lily-dale-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 72, 84, 1, 'Porte de Vanves', '51.517883', '-0.134314', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '250.00', '0.00', 1, 0, 0, 5, 3, 3, 113, NULL, NULL, NULL, 'publish', 1, 1, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', '4.5', NULL),
(11, 'STAY GREENWICH VILLAGE', 'stay-greenwich-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 73, 84, 1, 'Porte de Vanves', '51.514892', '-0.176181', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '300.00', '150.00', 1, 0, 0, 8, 6, 9, 199, NULL, NULL, NULL, 'publish', 1, 6, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', '4.5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_space_dates`
--

DROP TABLE IF EXISTS `bravo_space_dates`;
CREATE TABLE IF NOT EXISTS `bravo_space_dates` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `max_guests` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '0',
  `note_to_customer` text COLLATE utf8mb4_unicode_ci,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci,
  `is_instant` tinyint(4) DEFAULT '0',
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_space_term`
--

DROP TABLE IF EXISTS `bravo_space_term`;
CREATE TABLE IF NOT EXISTS `bravo_space_term` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_space_term`
--

INSERT INTO `bravo_space_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 26, 1, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(2, 27, 1, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(3, 30, 1, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(4, 31, 1, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(5, 27, 2, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(6, 28, 2, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(7, 30, 2, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(8, 26, 3, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(9, 27, 3, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(10, 28, 3, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(11, 30, 3, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(12, 26, 4, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(13, 27, 4, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(14, 28, 4, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(15, 29, 4, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(16, 30, 4, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(17, 31, 4, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(18, 26, 5, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(19, 27, 5, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(20, 29, 5, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(21, 30, 5, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(22, 31, 5, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(23, 27, 6, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(24, 29, 6, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(25, 26, 7, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(26, 27, 7, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(27, 29, 7, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(28, 27, 8, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(29, 28, 8, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(30, 29, 8, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(31, 30, 8, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(32, 27, 9, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(33, 28, 9, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(34, 29, 9, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(35, 31, 9, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(36, 26, 10, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(37, 31, 10, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(38, 26, 11, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(39, 27, 11, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(40, 28, 11, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(41, 29, 11, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(42, 30, 11, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(43, 31, 11, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_space_translations`
--

DROP TABLE IF EXISTS `bravo_space_translations`;
CREATE TABLE IF NOT EXISTS `bravo_space_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `faqs` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `bravo_space_translations_locale_index` (`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_terms`
--

DROP TABLE IF EXISTS `bravo_terms`;
CREATE TABLE IF NOT EXISTS `bravo_terms` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `attr_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_terms`
--

INSERT INTO `bravo_terms` (`id`, `name`, `content`, `attr_id`, `slug`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`, `deleted_at`, `image_id`, `icon`) VALUES
(1, 'Cultural', NULL, 1, 'cultural', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(2, 'Nature & Adventure', NULL, 1, 'nature-adventure', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(3, 'Marine', NULL, 1, 'marine', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(4, 'Independent', NULL, 1, 'independent', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(5, 'Activities', NULL, 1, 'activities', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(6, 'Festival & Events', NULL, 1, 'festival-events', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(7, 'Special Interest', NULL, 1, 'special-interest', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(8, 'Wifi', NULL, 2, 'wifi', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(9, 'Gymnasium', NULL, 2, 'gymnasium', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(10, 'Mountain Bike', NULL, 2, 'mountain-bike', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(11, 'Satellite Office', NULL, 2, 'satellite-office', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(12, 'Staff Lounge', NULL, 2, 'staff-lounge', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(13, 'Golf Cages', NULL, 2, 'golf-cages', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(14, 'Aerobics Room', NULL, 2, 'aerobics-room', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(15, 'Auditorium', NULL, 3, 'auditorium', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(16, 'Bar', NULL, 3, 'bar', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(17, 'Cafe', NULL, 3, 'cafe', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(18, 'Ballroom', NULL, 3, 'ballroom', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(19, 'Dance Studio', NULL, 3, 'dance-studio', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(20, 'Office', NULL, 3, 'office', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(21, 'Party Hall', NULL, 3, 'party-hall', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(22, 'Recording Studio', NULL, 3, 'recording-studio', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(23, 'Yoga Studio', NULL, 3, 'yoga-studio', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(24, 'Villa', NULL, 3, 'villa', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(25, 'Warehouse', NULL, 3, 'warehouse', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, NULL, NULL),
(26, 'Air Conditioning', NULL, 4, 'air-conditioning', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, 86, NULL),
(27, 'Breakfast', NULL, 4, 'breakfast', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, 87, NULL),
(28, 'Kitchen', NULL, 4, 'kitchen', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, 88, NULL),
(29, 'Parking', NULL, 4, 'parking', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, 89, NULL),
(30, 'Pool', NULL, 4, 'pool', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, 90, NULL),
(31, 'Wi-Fi Internet', NULL, 4, 'wi-fi-internet', NULL, NULL, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20', NULL, 91, NULL),
(32, 'Apartments', NULL, 5, 'apartments', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(33, 'Hotels', NULL, 5, 'hotels', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(34, 'Homestays', NULL, 5, 'homestays', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(35, 'Villas', NULL, 5, 'villas', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(36, 'Boats', NULL, 5, 'boats', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(37, 'Motels', NULL, 5, 'motels', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(38, 'Resorts', NULL, 5, 'resorts', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(39, 'Lodges', NULL, 5, 'lodges', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(40, 'Holiday homes', NULL, 5, 'holiday-homes', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(41, 'Cruises', NULL, 5, 'cruises', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(42, 'Wake-up call', NULL, 6, 'wake-up-call', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, 'icofont-wall-clock'),
(43, 'Car hire', NULL, 6, 'car-hire', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, 'icofont-car-alt-3'),
(44, 'Bicycle hire', NULL, 6, 'bicycle-hire', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, 'icofont-bicycle-alt-2'),
(45, 'Flat Tv', NULL, 6, 'flat-tv', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, 'icofont-imac'),
(46, 'Laundry and dry cleaning', NULL, 6, 'laundry-and-dry-cleaning', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, 'icofont-recycle-alt'),
(47, 'Internet – Wifi', NULL, 6, 'internet-wifi', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, 'icofont-wifi-alt'),
(48, 'Coffee and tea', NULL, 6, 'coffee-and-tea', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, 'icofont-tea'),
(49, 'Havana Lobby bar', NULL, 7, 'havana-lobby-bar', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(50, 'Fiesta Restaurant', NULL, 7, 'fiesta-restaurant', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(51, 'Hotel transport services', NULL, 7, 'hotel-transport-services', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(52, 'Free luggage deposit', NULL, 7, 'free-luggage-deposit', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(53, 'Laundry Services', NULL, 7, 'laundry-services', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(54, 'Pets welcome', NULL, 7, 'pets-welcome', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(55, 'Tickets', NULL, 7, 'tickets', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, NULL),
(56, 'Wake-up call', NULL, 8, 'wake-up-call-1', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, 'icofont-wall-clock'),
(57, 'Flat Tv', NULL, 8, 'flat-tv-1', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, 'icofont-imac'),
(58, 'Laundry and dry cleaning', NULL, 8, 'laundry-and-dry-cleaning-1', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, 'icofont-recycle-alt'),
(59, 'Internet – Wifi', NULL, 8, 'internet-wifi-1', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, 'icofont-wifi-alt'),
(60, 'Coffee and tea', NULL, 8, 'coffee-and-tea-1', NULL, NULL, NULL, NULL, '2020-02-14 08:44:21', '2020-02-14 08:44:21', NULL, NULL, 'icofont-tea'),
(61, 'Convertibles', NULL, 9, 'convertibles', NULL, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', NULL, 123, NULL),
(62, 'Coupes', NULL, 9, 'coupes', NULL, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', NULL, 124, NULL),
(63, 'Hatchbacks', NULL, 9, 'hatchbacks', NULL, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', NULL, 125, NULL),
(64, 'Minivans', NULL, 9, 'minivans', NULL, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', NULL, 126, NULL),
(65, 'Sedan', NULL, 9, 'sedan', NULL, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', NULL, 127, NULL),
(66, 'SUVs', NULL, 9, 'suvs', NULL, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', NULL, 128, NULL),
(67, 'Trucks', NULL, 9, 'trucks', NULL, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', NULL, 129, NULL),
(68, 'Wagons', NULL, 9, 'wagons', NULL, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', NULL, 130, NULL),
(69, 'Airbag', NULL, 10, 'airbag', NULL, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', NULL, 136, NULL),
(70, 'FM Radio', NULL, 10, 'fm-radio', NULL, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', NULL, 137, NULL),
(71, 'Power Windows', NULL, 10, 'power-windows', NULL, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', NULL, 141, NULL),
(72, 'Sensor', NULL, 10, 'sensor', NULL, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', NULL, 138, NULL),
(73, 'Speed Km', NULL, 10, 'speed-km', NULL, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', NULL, 139, NULL),
(74, 'Steering Wheel', NULL, 10, 'steering-wheel', NULL, NULL, NULL, NULL, '2020-02-14 08:44:22', '2020-02-14 08:44:22', NULL, 140, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_terms_translations`
--

DROP TABLE IF EXISTS `bravo_terms_translations`;
CREATE TABLE IF NOT EXISTS `bravo_terms_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bravo_terms_translations_origin_id_locale_unique` (`origin_id`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tours`
--

DROP TABLE IF EXISTS `bravo_tours`;
CREATE TABLE IF NOT EXISTS `bravo_tours` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `min_people` int(11) DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT '1',
  `include` text COLLATE utf8mb4_unicode_ci,
  `exclude` text COLLATE utf8mb4_unicode_ci,
  `itinerary` text COLLATE utf8mb4_unicode_ci,
  `review_score` decimal(2,1) DEFAULT NULL,
  `ical_import_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_tours_slug_index` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_tours`
--

INSERT INTO `bravo_tours` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `short_desc`, `category_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `price`, `sale_price`, `duration`, `min_people`, `max_people`, `faqs`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `default_state`, `include`, `exclude`, `itinerary`, `review_score`, `ical_import_url`) VALUES
(1, 'American Parks Trail end Rapid City', 'american-parks-trail', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 21, 44, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 1, 'Arrondissement de Paris', '48.852754', '2.339155', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2000.00', '684.00', 2, 1, 16, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:20', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(2, 'New York: Museum of Modern Art', 'new-york-museum-of-modern-art', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 22, 45, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 1, 'Porte de Vanves', '48.853917', '2.307199', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '900.00', '444.00', 5, 1, 14, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:20', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.4', NULL),
(3, 'Los Angeles to San Francisco Express ', 'los-angeles-to-san-francisco-express', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 23, 46, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Petit-Montrouge', '48.884900', '2.346377', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '1500.00', '648.00', 6, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 5, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:20', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.7', NULL),
(4, 'Paris Vacation Travel ', 'paris-vacation-travel', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 24, 47, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 2, 'New York', '40.707891', '-74.008825', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '850.00', '510.00', 3, 1, 15, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:20', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.8', NULL),
(5, 'Southwest States (Ex Los Angeles) ', 'southwest-states', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 25, 48, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 2, 'Regal Cinemas Battery Park 11', '40.714578', '-73.983888', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '1900.00', '1270.00', 2, 1, 18, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:20', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(6, 'Eastern Discovery (Start New Orleans)', 'eastern-discovery-start-new-orleans', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 26, 49, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 2, 'Prince St Station', '40.720161', '-74.009628', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1021.00', 8, 1, 16, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 5, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:20', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.7', NULL),
(7, 'Eastern Discovery', 'eastern-discovery', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 27, 50, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 2, 'Pier 36 New York', '40.708581', '-73.998817', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '289.00', 3, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:20', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(8, 'Pure Luxe in Punta Mita', 'pure-luxe-in-punta-mita', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 28, 51, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 3, 'Trimmer Springs Rd, Sanger', '36.822484', '-119.365266', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1799.00', 3, 1, 20, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:20', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(9, 'Tastes and Sounds of the South 2019', 'tastes-and-sounds-of-the-south-2019', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 29, 52, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 4, 'United States', '37.040023', '-95.643144', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '958.00', 4, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:20', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.0', NULL),
(10, 'Giverny and Versailles Small Group Day Trip', 'giverny-and-versailles-small-group-day-trip', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 30, 53, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 5, 'Washington, DC, USA', '34.049345', '-118.248479', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1000.00', 7, 1, 14, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:20', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.0', NULL),
(11, 'Trip of New York – Discover America', 'trip-of-new-york-discover-america', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 31, 54, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 6, 'New Jersey', '40.035329', '-74.417227', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1081.00', 1, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:20', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.5', NULL),
(12, 'Segway Tour of Washington, D.C. Highlights', 'segway-tour-of-washington-dc-highlights', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 32, 55, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 7, 'Francisco Parnassus Campus', '37.782668', '-122.425058', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1660.00', 1, 1, 18, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:20', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL);
INSERT INTO `bravo_tours` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `short_desc`, `category_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `price`, `sale_price`, `duration`, `min_people`, `max_people`, `faqs`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `default_state`, `include`, `exclude`, `itinerary`, `review_score`, `ical_import_url`) VALUES
(13, 'Hollywood Sign Small Group Tour in Luxury Van', 'hollywood-sign-small-group-tour-in-luxury-van', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 33, 56, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 8, 'Virginia', '37.445688', '-78.673668', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '713.00', 2, 1, 20, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:20', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.7', NULL),
(14, 'San Francisco Express Never Ceases', 'san-francisco-express', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 34, 57, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 7, 'Comprehensive Cancer Center', '37.757522', '-122.447984', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '734.00', 4, 1, 18, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:20', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(15, 'Cannes and Antibes Night Tour', 'cannes-and-antibes-night-tour', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 35, 58, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 1, 'UCSF Helen Diller Family', '36.201066', '-88.112292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1286.00', 4, 1, 11, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:20', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(16, 'River Cruise Tour on the Seine', 'river-cruise-tour-on-the-seine', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 36, 59, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Nevada, US', '36.401066', '-88.312292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1149.00', 8, 1, 10, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:20', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '5.0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_category`
--

DROP TABLE IF EXISTS `bravo_tour_category`;
CREATE TABLE IF NOT EXISTS `bravo_tour_category` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_tour_category__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_tour_category`
--

INSERT INTO `bravo_tour_category` (`id`, `name`, `content`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'City trips', '', 'city-trips', 'publish', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19'),
(2, 'Ecotourism', '', 'ecotourism', 'publish', 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19'),
(3, 'Escorted tour', '', 'escorted-tour', 'publish', 5, 6, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19'),
(4, 'Ligula', '', 'ligula', 'publish', 7, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_category_translations`
--

DROP TABLE IF EXISTS `bravo_tour_category_translations`;
CREATE TABLE IF NOT EXISTS `bravo_tour_category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bravo_tour_category_translations_origin_id_locale_unique` (`origin_id`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_dates`
--

DROP TABLE IF EXISTS `bravo_tour_dates`;
CREATE TABLE IF NOT EXISTS `bravo_tour_dates` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `person_types` text COLLATE utf8mb4_unicode_ci,
  `max_guests` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '0',
  `note_to_customer` text COLLATE utf8mb4_unicode_ci,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci,
  `is_instant` tinyint(4) DEFAULT '0',
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_meta`
--

DROP TABLE IF EXISTS `bravo_tour_meta`;
CREATE TABLE IF NOT EXISTS `bravo_tour_meta` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tour_id` int(11) DEFAULT NULL,
  `enable_person_types` tinyint(4) DEFAULT NULL,
  `person_types` text COLLATE utf8mb4_unicode_ci,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci,
  `discount_by_people` text COLLATE utf8mb4_unicode_ci,
  `enable_open_hours` tinyint(4) DEFAULT NULL,
  `open_hours` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_tour_meta`
--

INSERT INTO `bravo_tour_meta` (`id`, `tour_id`, `enable_person_types`, `person_types`, `enable_extra_price`, `extra_price`, `discount_by_people`, `enable_open_hours`, `open_hours`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 12, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 13, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 14, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 16, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_term`
--

DROP TABLE IF EXISTS `bravo_tour_term`;
CREATE TABLE IF NOT EXISTS `bravo_tour_term` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` int(11) DEFAULT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_tour_term`
--

INSERT INTO `bravo_tour_term` (`id`, `term_id`, `tour_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(2, 2, 1, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(3, 3, 1, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(4, 4, 1, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(5, 6, 1, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(6, 7, 1, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(7, 1, 2, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(8, 4, 2, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(9, 5, 2, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(10, 7, 2, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(11, 3, 3, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(12, 4, 3, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(13, 5, 3, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(14, 6, 3, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(15, 7, 3, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(16, 5, 4, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(17, 6, 4, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(18, 2, 5, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(19, 3, 5, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(20, 4, 5, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(21, 5, 5, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(22, 6, 5, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(23, 1, 6, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(24, 2, 6, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(25, 3, 6, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(26, 4, 6, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(27, 5, 6, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(28, 6, 6, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(29, 7, 6, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(30, 1, 7, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(31, 2, 7, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(32, 3, 7, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(33, 4, 7, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(34, 7, 7, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(35, 3, 8, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(36, 4, 8, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(37, 5, 8, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(38, 7, 8, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(39, 2, 9, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(40, 3, 9, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(41, 5, 9, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(42, 6, 9, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(43, 7, 9, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(44, 2, 10, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(45, 3, 10, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(46, 4, 10, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(47, 5, 10, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(48, 6, 10, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(49, 7, 10, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(50, 2, 11, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(51, 4, 11, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(52, 6, 11, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(53, 7, 11, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(54, 1, 12, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(55, 3, 12, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(56, 4, 12, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(57, 7, 12, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(58, 1, 13, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(59, 4, 13, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(60, 5, 13, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(61, 7, 13, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(62, 1, 14, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(63, 3, 14, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(64, 5, 14, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(65, 6, 14, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(66, 7, 14, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(67, 1, 15, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(68, 2, 15, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(69, 3, 15, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(70, 5, 15, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(71, 7, 15, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(72, 1, 16, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(73, 2, 16, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(74, 5, 16, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(75, 6, 16, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(76, 8, 1, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(77, 9, 1, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(78, 10, 1, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(79, 12, 1, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(80, 8, 2, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(81, 9, 2, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(82, 10, 2, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(83, 12, 2, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(84, 14, 2, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(85, 8, 3, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(86, 9, 3, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(87, 10, 3, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(88, 11, 3, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(89, 13, 3, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(90, 8, 4, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(91, 9, 4, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(92, 11, 4, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(93, 13, 4, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(94, 14, 4, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(95, 8, 5, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(96, 9, 5, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(97, 10, 5, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(98, 11, 5, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(99, 12, 5, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(100, 8, 6, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(101, 9, 6, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(102, 10, 6, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(103, 11, 6, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(104, 13, 6, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(105, 14, 6, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(106, 9, 7, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(107, 10, 7, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(108, 11, 7, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(109, 12, 7, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(110, 13, 7, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(111, 14, 7, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(112, 8, 8, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(113, 9, 8, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(114, 10, 8, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(115, 11, 8, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(116, 12, 8, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(117, 13, 8, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(118, 14, 8, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(119, 8, 9, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(120, 9, 9, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(121, 10, 9, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(122, 11, 9, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(123, 12, 9, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(124, 14, 9, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(125, 8, 10, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(126, 9, 10, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(127, 10, 10, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(128, 11, 10, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(129, 13, 10, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(130, 14, 10, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(131, 8, 11, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(132, 10, 11, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(133, 12, 11, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(134, 14, 11, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(135, 9, 12, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(136, 10, 12, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(137, 12, 12, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(138, 10, 13, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(139, 11, 13, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(140, 12, 13, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(141, 13, 13, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(142, 14, 13, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(143, 8, 14, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(144, 9, 14, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(145, 10, 14, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(146, 11, 14, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(147, 13, 14, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(148, 14, 14, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(149, 8, 15, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(150, 10, 15, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(151, 8, 16, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(152, 9, 16, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(153, 10, 16, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(154, 12, 16, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20'),
(155, 13, 16, NULL, NULL, '2020-02-14 08:44:20', '2020-02-14 08:44:20');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_translations`
--

DROP TABLE IF EXISTS `bravo_tour_translations`;
CREATE TABLE IF NOT EXISTS `bravo_tour_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `include` text COLLATE utf8mb4_unicode_ci,
  `exclude` text COLLATE utf8mb4_unicode_ci,
  `itinerary` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bravo_tour_translations_origin_id_locale_unique` (`origin_id`,`locale`),
  KEY `bravo_tour_translations_slug_index` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_inbox`
--

DROP TABLE IF EXISTS `core_inbox`;
CREATE TABLE IF NOT EXISTS `core_inbox` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_model` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0',
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_inbox_messages`
--

DROP TABLE IF EXISTS `core_inbox_messages`;
CREATE TABLE IF NOT EXISTS `core_inbox_messages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `inbox_id` bigint(20) DEFAULT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `type` tinyint(4) DEFAULT '0',
  `is_read` tinyint(4) DEFAULT '0',
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_languages`
--

DROP TABLE IF EXISTS `core_languages`;
CREATE TABLE IF NOT EXISTS `core_languages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `last_build_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_languages`
--

INSERT INTO `core_languages` (`id`, `locale`, `name`, `flag`, `status`, `create_user`, `update_user`, `last_build_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 'gb', 'publish', 1, NULL, NULL, NULL, '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(2, 'ja', 'Japanese', 'jp', 'publish', 1, NULL, NULL, NULL, '2020-02-14 08:44:18', '2020-02-14 08:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `core_menus`
--

DROP TABLE IF EXISTS `core_menus`;
CREATE TABLE IF NOT EXISTS `core_menus` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` longtext COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_menus`
--

INSERT INTO `core_menus` (`id`, `name`, `items`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Main Menu', '[{\"name\":\"Home\",\"url\":\"\\/\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Home Page\",\"url\":\"\\/\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Hotel\",\"url\":\"\\/page\\/hotel\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Tour\",\"url\":\"\\/page\\/tour\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Space\",\"url\":\"\\/page\\/space\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Car\",\"url\":\"\\/page\\/car\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"Hotel\",\"url\":\"\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Hotel List\",\"url\":\"\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Map\",\"url\":\"\\/hotel?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Detail\",\"url\":\"\\/hotel\\/parian-holiday-villas\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Tours\",\"url\":\"\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Tour List\",\"url\":\"\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Map\",\"url\":\"\\/tour?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Detail\",\"url\":\"\\/tour\\/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Space\",\"url\":\"\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Space List\",\"url\":\"\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Map\",\"url\":\"\\/space?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Detail\",\"url\":\"\\/space\\/stay-greenwich-village\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Car\",\"url\":\"\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Car List\",\"url\":\"\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Map\",\"url\":\"\\/car?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Detail\",\"url\":\"\\/car\\/vinfast-lux-a20-plus\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Pages\",\"url\":\"#\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"News List\",\"url\":\"\\/news\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"News Detail\",\"url\":\"\\/news\\/morning-in-the-northern-sea\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Location Detail\",\"url\":\"\\/location\\/paris\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Become a vendor\",\"url\":\"\\/page\\/become-a-vendor\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"Contact\",\"url\":\"\\/contact\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]', 1, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_menu_translations`
--

DROP TABLE IF EXISTS `core_menu_translations`;
CREATE TABLE IF NOT EXISTS `core_menu_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` longtext COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_menu_translations_locale_index` (`locale`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_menu_translations`
--

INSERT INTO `core_menu_translations` (`id`, `origin_id`, `locale`, `items`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'ja', '[{\"name\":\"\\u30db\\u30fc\\u30e0\",\"url\":\"\\/ja\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30db\\u30fc\\u30e0\\u30da\\u30fc\\u30b8\",\"url\":\"\\/ja\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0\\u30db\\u30c6\\u30eb\",\"url\":\"\\/ja\\/page\\/hotel\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0 \\u30c4\\u30a2\\u30fc\",\"url\":\"\\/ja\\/page\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0\\u30b9\\u30da\\u30fc\\u30b9\",\"url\":\"\\/ja\\/page\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30db\\u30c6\\u30eb\",\"url\":\"\\/ja\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30db\\u30c6\\u30eb\\u4e00\\u89a7\",\"url\":\"\\/ja\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30c6\\u30eb\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/hotel\\/parian-holiday-villas\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30c4\\u30a2\\u30fc\",\"url\":\"\\/ja\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30c4\\u30a2\\u30fc\\u30ea\\u30b9\\u30c8\",\"url\":\"\\/ja\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30c4\\u30a2\\u30fc\\u30de\\u30c3\\u30d7\",\"url\":\"\\/ja\\/tour?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30c4\\u30a2\\u30fc\\u8a73\\u7d30\",\"url\":\"\\/ja\\/tour\\/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\",\"url\":\"\\/ja\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u30ea\\u30b9\\u30c8\",\"url\":\"\\/ja\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/space\\/stay-greenwich-village\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30da\\u30fc\\u30b8\",\"url\":\"#\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30cb\\u30e5\\u30fc\\u30b9\\u4e00\\u89a7\",\"url\":\"\\/ja\\/news\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30cb\\u30e5\\u30fc\\u30b9\\u8a73\\u7d30\",\"url\":\"\\/ja\\/news\\/morning-in-the-northern-sea\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u5834\\u6240\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/location\\/paris\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"\\u30d9\\u30f3\\u30c0\\u30fc\\u306b\\u306a\\u308b\",\"url\":\"\\/ja\\/page\\/become-a-vendor\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"\\u63a5\\u89e6\",\"url\":\"\\/ja\\/contact\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]', 1, NULL, '2020-02-14 08:44:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_model_has_permissions`
--

DROP TABLE IF EXISTS `core_model_has_permissions`;
CREATE TABLE IF NOT EXISTS `core_model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `core_model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_model_has_roles`
--

DROP TABLE IF EXISTS `core_model_has_roles`;
CREATE TABLE IF NOT EXISTS `core_model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `core_model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_model_has_roles`
--

INSERT INTO `core_model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 2),
(1, 'App\\User', 4),
(1, 'App\\User', 5),
(1, 'App\\User', 6),
(2, 'App\\User', 3),
(2, 'App\\User', 8),
(2, 'App\\User', 9),
(2, 'App\\User', 10),
(2, 'App\\User', 11),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 14),
(2, 'App\\User', 15),
(2, 'App\\User', 16),
(2, 'App\\User', 17),
(3, 'App\\User', 1),
(3, 'App\\User', 7);

-- --------------------------------------------------------

--
-- Table structure for table `core_news`
--

DROP TABLE IF EXISTS `core_news`;
CREATE TABLE IF NOT EXISTS `core_news` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_news`
--

INSERT INTO `core_news` (`id`, `title`, `content`, `slug`, `status`, `cat_id`, `image_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'The day on Paris', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'the-day-on-paris', 'publish', 2, 114, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL),
(2, 'Pure Luxe in Punta Mita', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'pure-luxe-in-punta-mita', 'publish', 3, 115, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL),
(3, 'All Aboard the Rocky Mountaineer', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'all-aboard-the-rocky-mountaineer', 'publish', 4, 116, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL),
(4, 'City Spotlight: Philadelphia', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'city-spotlight-philadelphia', 'publish', 2, 117, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL),
(5, 'Tiptoe through the Tulips of Washington', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'tiptoe-through-the-tulips-of-washington', 'publish', 4, 118, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL),
(6, 'A Seaside Reset in Laguna Beach', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'a-seaside-reset-in-laguna-beach', 'publish', 2, 119, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL),
(7, 'America  National Parks with Denver', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'america-national-parks-with-denver', 'publish', 2, 120, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL),
(8, 'Morning in the Northern sea', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'morning-in-the-northern-sea', 'publish', 4, 115, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL),
(9, 'New Post', NULL, 'new-post', 'publish', NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-02-29 01:15:56', '2020-02-29 01:15:56');

-- --------------------------------------------------------

--
-- Table structure for table `core_news_category`
--

DROP TABLE IF EXISTS `core_news_category`;
CREATE TABLE IF NOT EXISTS `core_news_category` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_news_category__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_news_category`
--

INSERT INTO `core_news_category` (`id`, `name`, `content`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `origin_id`, `lang`) VALUES
(1, 'Adventure Travel', NULL, 'adventure-travel', 'publish', 1, 2, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19', NULL, NULL),
(2, 'Ecotourism', NULL, 'ecotourism', 'publish', 3, 4, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19', NULL, NULL),
(3, 'Sea Travel ', NULL, 'sea-travel', 'publish', 5, 6, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19', NULL, NULL),
(4, 'Hosted Tour', NULL, 'hosted-tour', 'publish', 7, 8, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19', NULL, NULL),
(5, 'City trips ', NULL, 'city-trips', 'publish', 9, 10, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19', NULL, NULL),
(6, 'Escorted Tour ', NULL, 'escorted-tour', 'publish', 11, 12, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_news_category_translations`
--

DROP TABLE IF EXISTS `core_news_category_translations`;
CREATE TABLE IF NOT EXISTS `core_news_category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_news_category_translations_locale_index` (`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_news_tag`
--

DROP TABLE IF EXISTS `core_news_tag`;
CREATE TABLE IF NOT EXISTS `core_news_tag` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `news_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_news_translations`
--

DROP TABLE IF EXISTS `core_news_translations`;
CREATE TABLE IF NOT EXISTS `core_news_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_news_translations_locale_index` (`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_notifications`
--

DROP TABLE IF EXISTS `core_notifications`;
CREATE TABLE IF NOT EXISTS `core_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `is_read` tinyint(4) DEFAULT '0',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `target_parent_id` bigint(20) DEFAULT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_pages`
--

DROP TABLE IF EXISTS `core_pages`;
CREATE TABLE IF NOT EXISTS `core_pages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_pages_slug_index` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_pages`
--

INSERT INTO `core_pages` (`id`, `slug`, `title`, `content`, `short_desc`, `status`, `publish_date`, `image_id`, `template_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'home-page', 'Home Page', NULL, NULL, 'publish', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL),
(2, 'tour', 'Home Tour', NULL, NULL, 'publish', NULL, NULL, 2, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL),
(3, 'space', 'Home Space', NULL, NULL, 'publish', NULL, NULL, 3, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL),
(4, 'hotel', 'Home Hotel', NULL, NULL, 'publish', NULL, NULL, 4, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL),
(5, 'become-a-vendor', 'Become a vendor', NULL, NULL, 'publish', NULL, NULL, 5, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL),
(6, 'car', 'Home Car', NULL, NULL, 'publish', NULL, NULL, 6, 1, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_page_translations`
--

DROP TABLE IF EXISTS `core_page_translations`;
CREATE TABLE IF NOT EXISTS `core_page_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_page_translations_origin_id_locale_unique` (`origin_id`,`locale`),
  KEY `core_page_translations_locale_index` (`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_permissions`
--

DROP TABLE IF EXISTS `core_permissions`;
CREATE TABLE IF NOT EXISTS `core_permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_permissions`
--

INSERT INTO `core_permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'report_view', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(2, 'contact_manage', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(3, 'newsletter_manage', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(4, 'language_manage', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(5, 'language_translation', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(6, 'booking_view', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(7, 'booking_update', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(8, 'booking_manage_others', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(9, 'template_view', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(10, 'template_create', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(11, 'template_update', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(12, 'template_delete', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(13, 'news_view', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(14, 'news_create', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(15, 'news_update', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(16, 'news_delete', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(17, 'news_manage_others', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(18, 'role_view', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(19, 'role_create', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(20, 'role_update', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(21, 'role_delete', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(22, 'permission_view', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(23, 'permission_create', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(24, 'permission_update', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(25, 'permission_delete', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(26, 'dashboard_access', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(27, 'dashboard_vendor_access', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(28, 'setting_update', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(29, 'menu_view', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(30, 'menu_create', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(31, 'menu_update', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(32, 'menu_delete', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(33, 'user_view', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(34, 'user_create', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(35, 'user_update', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(36, 'user_delete', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(37, 'page_view', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(38, 'page_create', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(39, 'page_update', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(40, 'page_delete', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(41, 'page_manage_others', 'web', '2020-02-14 08:44:17', '2020-02-14 08:44:17'),
(42, 'setting_view', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(43, 'media_upload', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(44, 'media_manage', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(45, 'tour_view', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(46, 'tour_create', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(47, 'tour_update', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(48, 'tour_delete', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(49, 'tour_manage_others', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(50, 'tour_manage_attributes', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(51, 'location_view', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(52, 'location_create', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(53, 'location_update', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(54, 'location_delete', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(55, 'location_manage_others', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(56, 'review_manage_others', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(57, 'system_log_view', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(58, 'space_view', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(59, 'space_create', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(60, 'space_update', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(61, 'space_delete', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(62, 'space_manage_others', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(63, 'space_manage_attributes', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(64, 'hotel_view', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(65, 'hotel_create', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(66, 'hotel_update', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(67, 'hotel_delete', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(68, 'hotel_manage_others', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(69, 'hotel_manage_attributes', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(70, 'car_view', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(71, 'car_create', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(72, 'car_update', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(73, 'car_delete', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(74, 'car_manage_others', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(75, 'car_manage_attributes', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(76, 'plugin_manage', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(77, 'vendor_payout_view', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(78, 'vendor_payout_manage', 'web', '2020-02-14 08:44:18', '2020-02-14 08:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `core_roles`
--

DROP TABLE IF EXISTS `core_roles`;
CREATE TABLE IF NOT EXISTS `core_roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_roles`
--

INSERT INTO `core_roles` (`id`, `name`, `guard_name`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'vendor', 'web', NULL, NULL, '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(2, 'customer', 'web', NULL, NULL, '2020-02-14 08:44:18', '2020-02-14 08:44:18'),
(3, 'administrator', 'web', NULL, NULL, '2020-02-14 08:44:18', '2020-02-14 08:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `core_role_has_permissions`
--

DROP TABLE IF EXISTS `core_role_has_permissions`;
CREATE TABLE IF NOT EXISTS `core_role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `core_role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_role_has_permissions`
--

INSERT INTO `core_role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 1),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 1),
(43, 3),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(61, 1),
(61, 3),
(62, 3),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(67, 1),
(67, 3),
(68, 3),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 3),
(78, 3);

-- --------------------------------------------------------

--
-- Table structure for table `core_settings`
--

DROP TABLE IF EXISTS `core_settings`;
CREATE TABLE IF NOT EXISTS `core_settings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci,
  `autoload` tinyint(4) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_settings`
--

INSERT INTO `core_settings` (`id`, `name`, `group`, `val`, `autoload`, `create_user`, `update_user`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'site_locale', 'general', 'en', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'site_enable_multi_lang', 'general', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'menu_locations', 'general', '{\"primary\":1}', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'admin_email', 'general', 'contact@bookingcore.com', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'email_from_name', 'general', 'Booking Core', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'email_from_address', 'general', 'contact@bookingcore.com', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'logo_id', 'general', '8', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'site_favicon', 'general', '10', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'topbar_left_text', 'general', '<div class=\"socials\">\r\n    <a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\r\n    <a href=\"#\"><i class=\"fa fa-linkedin\"></i></a>\r\n    <a href=\"#\"><i class=\"fa fa-google-plus\"></i></a>\r\n</div>\r\n<span class=\"line\"></span>\r\n<a href=\"mailto:contact@bookingcore.com\">contact@bookingcore.com</a>', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'footer_text_left', 'general', 'Copyright © 2019 by Booking Core', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'footer_text_right', 'general', 'Booking Core', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'list_widget_footer', 'general', '[{\"title\":\"NEED HELP?\",\"size\":\"3\",\"content\":\"<div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            Call Us\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            + 00 222 44 5678\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            Email for Us\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            hello@yoursite.com\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            Follow Us\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-facebook\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n               <i class=\\\"icofont-twitter\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-youtube-play\\\"><\\/i>\\r\\n            <\\/a>\\r\\n        <\\/div>\\r\\n    <\\/div>\"},{\"title\":\"COMPANY\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">About Us<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Community Blog<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Rewards<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Work with Us<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Meet the Team<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"SUPPORT\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">Account<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Legal<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Contact<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Affiliate Program<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Privacy Policy<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"SETTINGS\",\"size\":\"3\",\"content\":\"<ul>\\r\\n<li><a href=\\\"#\\\">Setting 1<\\/a><\\/li>\\r\\n<li><a href=\\\"#\\\">Setting 2<\\/a><\\/li>\\r\\n<\\/ul>\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'list_widget_footer_ja', 'general', '[{\"title\":\"\\u52a9\\u3051\\u304c\\u5fc5\\u8981\\uff1f\",\"size\":\"3\",\"content\":\"<div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u304a\\u96fb\\u8a71\\u304f\\u3060\\u3055\\u3044\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            + 00 222 44 5678\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u90f5\\u4fbf\\u7269\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            hello@yoursite.com\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u30d5\\u30a9\\u30ed\\u30fc\\u3059\\u308b\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-facebook\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-twitter\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-youtube-play\\\"><\\/i>\\r\\n            <\\/a>\\r\\n        <\\/div>\\r\\n    <\\/div>\"},{\"title\":\"\\u4f1a\\u793e\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">\\u7d04, \\u7565<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30b3\\u30df\\u30e5\\u30cb\\u30c6\\u30a3\\u30d6\\u30ed\\u30b0<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u5831\\u916c<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u3068\\u9023\\u643a<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30c1\\u30fc\\u30e0\\u306b\\u4f1a\\u3046<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"\\u30b5\\u30dd\\u30fc\\u30c8\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">\\u30a2\\u30ab\\u30a6\\u30f3\\u30c8<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u6cd5\\u7684<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u63a5\\u89e6<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30a2\\u30d5\\u30a3\\u30ea\\u30a8\\u30a4\\u30c8\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u500b\\u4eba\\u60c5\\u5831\\u4fdd\\u8b77\\u65b9\\u91dd<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"\\u8a2d\\u5b9a\",\"size\":\"3\",\"content\":\"<ul>\\r\\n<li><a href=\\\"#\\\">\\u8a2d\\u5b9a1<\\/a><\\/li>\\r\\n<li><a href=\\\"#\\\">\\u8a2d\\u5b9a2<\\/a><\\/li>\\r\\n<\\/ul>\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'page_contact_title', 'general', 'We\'d love to hear from you', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'page_contact_sub_title', 'general', 'Send us a message and we\'ll respond as soon as possible', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'page_contact_desc', 'general', '<!DOCTYPE html><html><head></head><body><h3>Booking Core</h3><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>Tell. + 00 222 444 33</p><p>Email. hello@yoursite.com</p><p>1355 Market St, Suite 900San, Francisco, CA 94103 United States</p></body></html>', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'page_contact_image', 'general', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'home_page_id', 'general', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'page_contact_title', 'general', 'We\'d love to hear from you', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'page_contact_title_ja', 'general', 'あなたからの御一報をお待ち', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'page_contact_sub_title', 'general', 'Send us a message and we\'ll respond as soon as possible', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'page_contact_sub_title_ja', 'general', '私たちにメッセージを送ってください、私たちはできるだ', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'page_contact_desc', 'general', '<!DOCTYPE html><html><head></head><body><h3>Booking Core</h3><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>Tell. + 00 222 444 33</p><p>Email. hello@yoursite.com</p><p>1355 Market St, Suite 900San, Francisco, CA 94103 United States</p></body></html>', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'page_contact_image', 'general', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'currency_main', 'payment', 'usd', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'currency_format', 'payment', 'left', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'currency_decimal', 'payment', ',', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'currency_thousand', 'payment', '.', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'currency_no_decimal', 'payment', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'extra_currency', 'payment', '[{\"currency_main\":\"eur\",\"currency_format\":\"left\",\"currency_thousand\":\".\",\"currency_decimal\":\",\",\"currency_no_decimal\":\"2\",\"rate\":\"0.902807\"},{\"currency_main\":\"jpy\",\"currency_format\":\"right_space\",\"currency_thousand\":\".\",\"currency_decimal\":\",\",\"currency_no_decimal\":\"0\",\"rate\":\"0.00917113\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'map_provider', 'advance', 'gmap', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'map_gmap_key', 'advance', '', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'g_offline_payment_enable', 'payment', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'g_offline_payment_name', 'payment', 'Offline Payment', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'date_format', 'general', 'm/d/Y', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'site_title', 'general', 'Booking Core', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'site_timezone', 'general', 'UTC', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'site_title', 'general', 'Booking Core', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'email_header', 'general', '<h1 class=\"site-title\" style=\"text-align: center\">Booking Core</h1>', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'email_footer', 'general', '<p class=\"\" style=\"text-align: center\">&copy; 2019 Booking Core. All rights reserved</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'enable_mail_user_registered', 'user', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'user_content_email_registered', 'user', '<h1 style=\"text-align: center\">Welcome!</h1>\r\n						<h3>Hello [first_name] [last_name]</h3>\r\n						<p>Thank you for signing up with Booking Core! We hope you enjoy your time with us.</p>\r\n						<p>Regards,</p>\r\n						<p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'admin_enable_mail_user_registered', 'user', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'admin_content_email_user_registered', 'user', '<h3>Hello Administrator</h3>\r\n						<p>We have new registration</p>\r\n						<p>Full name: [first_name] [last_name]</p>\r\n						<p>Email: [email]</p>\r\n						<p>Regards,</p>\r\n						<p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'user_content_email_forget_password', 'user', '<h1>Hello!</h1>\r\n						<p>You are receiving this email because we received a password reset request for your account.</p>\r\n						<p style=\"text-align: center\">[button_reset_password]</p>\r\n						<p>This password reset link expire in 60 minutes.</p>\r\n						<p>If you did not request a password reset, no further action is required.\r\n						</p>\r\n						<p>Regards,</p>\r\n						<p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'email_driver', 'email', 'log', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'email_host', 'email', 'smtp.mailgun.org', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'email_port', 'email', '587', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'email_encryption', 'email', 'tls', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'email_username', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'email_password', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'email_mailgun_domain', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'email_mailgun_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'email_mailgun_endpoint', 'email', 'api.mailgun.net', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'email_postmark_token', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'email_ses_key', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'email_ses_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'email_ses_region', 'email', 'us-east-1', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'email_sparkpost_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'vendor_enable', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'vendor_commission_type', 'vendor', 'percent', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'vendor_commission_amount', 'vendor', '10', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'vendor_role', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'role_verify_fields', 'vendor', '{\"phone\":{\"name\":\"Phone\",\"type\":\"text\",\"roles\":[\"1\",\"2\",\"3\"],\"required\":null,\"order\":null,\"icon\":\"fa fa-phone\"},\"id_card\":{\"name\":\"ID Card\",\"type\":\"file\",\"roles\":[\"1\",\"2\",\"3\"],\"required\":\"1\",\"order\":\"0\",\"icon\":\"fa fa-id-card\"},\"trade_license\":{\"name\":\"Trade License\",\"type\":\"multi_files\",\"roles\":[\"1\",\"3\"],\"required\":\"1\",\"order\":\"0\",\"icon\":\"fa fa-copyright\"}}', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'news_page_list_title', 'news', 'News', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'news_page_list_banner', 'news', '121', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'news_sidebar', 'news', '[{\"title\":null,\"content\":null,\"type\":\"search_form\"},{\"title\":\"About Us\",\"content\":\"Nam dapibus nisl vitae elit fringilla rutrum. Aenean sollicitudin, erat a elementum rutrum, neque sem pretium metus, quis mollis nisl nunc et massa\",\"type\":\"content_text\"},{\"title\":\"Recent News\",\"content\":null,\"type\":\"recent_news\"},{\"title\":\"Categories\",\"content\":null,\"type\":\"category\"},{\"title\":\"Tags\",\"content\":null,\"type\":\"tag\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'tour_page_search_title', 'tour', 'Search for tour', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'tour_page_search_banner', 'tour', '20', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'tour_layout_search', 'tour', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'tour_enable_review', 'tour', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'tour_review_approved', 'tour', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'tour_review_stats', 'tour', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'tour_booking_buyer_fees', 'tour', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'space_page_search_title', 'space', 'Search for space', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'space_page_search_banner', 'space', '62', NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'space_layout_search', 'space', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'space_enable_review', 'space', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'space_review_approved', 'space', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'space_review_stats', 'space', '[{\"title\":\"Sleep\"},{\"title\":\"Location\"},{\"title\":\"Service\"},{\"title\":\"Clearness\"},{\"title\":\"Rooms\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'space_booking_buyer_fees', 'space', '[{\"name\":\"Cleaning fee\",\"desc\":\"One-time fee charged by host to cover the cost of cleaning their space.\",\"name_ja\":\"\\u30af\\u30ea\\u30fc\\u30cb\\u30f3\\u30b0\\u4ee3\",\"desc_ja\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u3092\\u6383\\u9664\\u3059\\u308b\\u8cbb\\u7528\\u3092\\u30db\\u30b9\\u30c8\\u304c\\u8acb\\u6c42\\u3059\\u308b1\\u56de\\u9650\\u308a\\u306e\\u6599\\u91d1\\u3002\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'space_map_search_fields', 'space', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"3\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'hotel_page_search_title', 'hotel', 'Search for hotel', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'hotel_page_search_banner', 'hotel', '92', NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'hotel_layout_item_search', 'hotel', 'list', NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'hotel_attribute_show_in_listing_page', 'hotel', '6', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'hotel_layout_search', 'hotel', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'hotel_enable_review', 'hotel', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'hotel_review_approved', 'hotel', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'hotel_review_stats', 'hotel', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'hotel_booking_buyer_fees', 'hotel', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'hotel_map_search_fields', 'hotel', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"7\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'car_page_search_title', 'car', 'Search for car', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'car_page_search_banner', 'car', '62', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'car_layout_search', 'car', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'car_enable_review', 'car', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'car_review_approved', 'car', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'car_review_stats', 'car', '[{\"title\":\"Equipment\"},{\"title\":\"Comfortable\"},{\"title\":\"Climate Control\"},{\"title\":\"Facility\"},{\"title\":\"Aftercare\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'car_booking_buyer_fees', 'car', '[{\"name\":\"Equipment fee\",\"desc\":\"One-time fee charged by host to cover the cost of cleaning their space.\",\"name_ja\":\"\\u30af\\u30ea\\u30fc\\u30cb\\u30f3\\u30b0\\u4ee3\",\"desc_ja\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u3092\\u6383\\u9664\\u3059\\u308b\\u8cbb\\u7528\\u3092\\u30db\\u30b9\\u30c8\\u304c\\u8acb\\u6c42\\u3059\\u308b1\\u56de\\u9650\\u308a\\u306e\\u6599\\u91d1\\u3002\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Facility fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'car_map_search_fields', 'car', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"9\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_subscribers`
--

DROP TABLE IF EXISTS `core_subscribers`;
CREATE TABLE IF NOT EXISTS `core_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_tags`
--

DROP TABLE IF EXISTS `core_tags`;
CREATE TABLE IF NOT EXISTS `core_tags` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_tags`
--

INSERT INTO `core_tags` (`id`, `name`, `slug`, `content`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'park', 'park', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19'),
(2, 'National park', 'national-park', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19'),
(3, 'Moutain', 'moutain', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19'),
(4, 'Travel', 'travel', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19'),
(5, 'Summer', 'summer', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19'),
(6, 'Walking', 'walking', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', '2020-02-14 08:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `core_tag_translations`
--

DROP TABLE IF EXISTS `core_tag_translations`;
CREATE TABLE IF NOT EXISTS `core_tag_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_tag_translations_locale_index` (`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_templates`
--

DROP TABLE IF EXISTS `core_templates`;
CREATE TABLE IF NOT EXISTS `core_templates` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `type_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_templates`
--

INSERT INTO `core_templates` (`id`, `title`, `content`, `type_id`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"service_types\":[\"hotel\",\"space\",\"tour\",\"car\"],\"title\":\"Hi There!\",\"sub_title\":\"Where would you like to go?\",\"bg_image\":16},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"offer_block\",\"name\":\"Offer Block\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Special Offers\",\"desc\":\"Find Your Perfect Hotels Get the best<br>\\nprices on 20,000+ properties<br>\\nthe best prices on\",\"background_image\":17,\"link_title\":\"See Deals\",\"link_more\":\"#\",\"featured_text\":\"HOLIDAY SALE\"},{\"_active\":true,\"title\":\"Newsletters\",\"desc\":\"Join for free and get our <br>\\ntailored newsletters full of <br>\\nhot travel deals.\",\"background_image\":18,\"link_title\":\"Sign Up\",\"link_more\":\"/register\",\"featured_icon\":\"icofont-email\"},{\"_active\":true,\"title\":\"Travel Tips\",\"desc\":\"Tips from our travel experts to <br>\\nmake your next trip even<br>\\nbetter.\",\"background_image\":19,\"link_title\":\"Sign Up\",\"link_more\":\"/register\",\"featured_text\":null,\"featured_icon\":\"icofont-island-alt\"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"Bestseller Listing\",\"desc\":\"Hotel highly rated for thoughtful design\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"space\",\"hotel\",\"tour\"],\"title\":\"Top Destinations\",\"desc\":\"It is a long established fact that a reader\",\"number\":6,\"layout\":\"style_4\",\"order\":\"id\",\"order_by\":\"asc\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Our best promotion tours\",\"number\":6,\"style\":\"box_shadow\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\",\"desc\":\"Most popular destinations\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"Rental Listing\",\"desc\":\"Homes highly rated for thoughtful design\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_car\",\"name\":\"Car: List Items\",\"model\":{\"title\":\"Car Trending\",\"desc\":\"Book incredible things to do around the world.\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true},{\"type\": \"list_news\", \"name\": \"News: List Items\", \"model\": {\"title\": \"Read the latest from blog\", \"desc\": \"Contrary to popular belief\", \"number\": 6, \"category_id\": null, \"order\": \"id\", \"order_by\": \"asc\"}, \"component\": \"RegularBlock\", \"open\": true, \"is_container\": false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Know your city?\",\"sub_title\":\"Join 2000+ locals & 1200+ contributors from 3000 cities\",\"link_title\":\"Become Local Expert\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"Our happy clients\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \",\"number_star\":6,\"avatar\":2},{\"_active\":false,\"name\":\"Charlie Harrington\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui.\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL),
(2, 'Home Tour', '[{\"type\":\"form_search_tour\",\"name\":\"Tour: Form Search\",\"model\":{\"title\":\"Love where you\'re going\",\"sub_title\":\"Book incredible things to do around the world.\",\"bg_image\":20},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"1,000+ local guides\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":5},{\"_active\":false,\"title\":\"Handcrafted experiences\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":4},{\"_active\":false,\"title\":\"96% happy travelers\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":6}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Trending Tours\",\"number\":5,\"style\":\"carousel\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"title\":\"Top Destinations\",\"number\":5,\"order\":\"id\",\"order_by\":\"desc\",\"service_type\":\"tour\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Local Experiences You’ll Love\",\"number\":8,\"style\":\"normal\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Know your city?\",\"sub_title\":\"Join 2000+ locals & 1200+ contributors from 3000 cities\",\"link_title\":\"Become Local Expert\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"Our happy clients\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \",\"number_star\":6,\"avatar\":2},{\"_active\":false,\"name\":\"Charlie Harrington\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui.\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL),
(3, 'Home Space', '[{\"type\":\"form_search_space\",\"name\":\"Space: Form Search\",\"model\":{\"title\":\"Find your next rental\",\"sub_title\":\"Book incredible things to do around the world.\",\"bg_image\":61},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"Recommended Homes\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"desc\":\"Homes highly rated for thoughtful design\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"space_term_featured_box\",\"name\":\"Space: Term Featured Box\",\"model\":{\"title\":\"Find a Home Type\",\"desc\":\"It is a long established fact that a reader\",\"term_space\":[\"26\",\"27\",\"28\",\"29\",\"30\",\"31\"]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"space\",\"title\":\"Top Destinations\",\"number\":6,\"order\":\"id\",\"order_by\":\"desc\",\"layout\":\"style_2\",\"desc\":\"It is a long established fact that a reader\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\" Rental Listing\",\"desc\":\"Homes highly rated for thoughtful design\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Know your city?\",\"sub_title\":\"Join 2000+ locals & 1200+ contributors from 3000 cities\",\"link_title\":\"Become Local Expert\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL),
(4, 'Home Hotel', '[{\"type\":\"form_search_hotel\",\"name\":\"Hotel: Form Search\",\"model\":{\"title\":\"Find Your Perfect Hotels\",\"sub_title\":\"Get the best prices on 20,000+ properties\",\"bg_image\":92},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"20,000+ properties\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":103,\"order\":null},{\"_active\":false,\"title\":\"Trust & Safety\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":104,\"order\":null},{\"_active\":true,\"title\":\"Best Price Guarantee\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":105,\"order\":null}],\"style\":\"normal\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"Last Minute Deals\",\"desc\":\"Hotel highly rated for thoughtful design\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"\",\"order_by\":\"\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"hotel\",\"title\":\"Top Destinations\",\"desc\":\"It is a long established fact that a reader\",\"number\":6,\"layout\":\"style_3\",\"order\":\"\",\"order_by\":\"\",\"to_location_detail\":false},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h2><span style=\\\"color: #1a2b48; font-family: Poppins, sans-serif; font-size: 28px; font-weight: 500; background-color: #ffffff;\\\">Why be a Local Expert</span></h2>\\n<div><span style=\\\"color: #5e6d77; font-family: Poppins, sans-serif; font-size: 10pt; background-color: #ffffff;\\\">Varius massa maecenas et id dictumst mattis</span></div>\",\"class\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Earn an additional income\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":15,\"order\":null},{\"_active\":false,\"title\":\"Open your network\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":14,\"order\":null},{\"_active\":false,\"title\":\"Practice your language\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":13,\"order\":null}],\"style\":\"style3\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"Bestseller Listing\",\"desc\":\"Hotel highly rated for thoughtful design\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL),
(5, 'Become a vendor', '[{\"type\":\"vendor_register_form\",\"name\":\"Vendor Register Form\",\"model\":{\"title\":\"Become a vendor\",\"desc\":\"Join our community to unlock your greatest asset and welcome paying guests into your home.\",\"youtube\":\"https://www.youtube.com/watch?v=AmZ0WrEaf34\",\"bg_image\":11},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h3><strong>How does it work?</strong></h3>\",\"class\":\"text-center\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Sign up\",\"sub_title\":\"Click edit button to change this text  to change this text\",\"icon_image\":null,\"order\":null},{\"_active\":false,\"title\":\" Add your services\",\"sub_title\":\" Click edit button to change this text  to change this text\",\"icon_image\":null,\"order\":null},{\"_active\":true,\"title\":\"Get bookings\",\"sub_title\":\" Click edit button to change this text  to change this text\",\"icon_image\":null,\"order\":null}],\"style\":\"style2\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"video_player\",\"name\":\"Video Player\",\"model\":{\"title\":\"Share the beauty of your city\",\"youtube\":\"https://www.youtube.com/watch?v=hHUbLv4ThOo\",\"bg_image\":12},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h3><strong>Why be a Local Expert</strong></h3>\",\"class\":\"text-center ptb60\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Earn an additional income\",\"sub_title\":\" Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":15,\"order\":null},{\"_active\":true,\"title\":\"Open your network\",\"sub_title\":\" Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":14,\"order\":null},{\"_active\":true,\"title\":\"Practice your language\",\"sub_title\":\" Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":13,\"order\":null}],\"style\":\"style3\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"faqs\",\"name\":\"FAQ List\",\"model\":{\"title\":\"FAQs\",\"list_item\":[{\"_active\":false,\"title\":\"How will I receive my payment?\",\"sub_title\":\" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\"},{\"_active\":true,\"title\":\"How do I upload products?\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\"},{\"_active\":true,\"title\":\"How do I update or extend my availabilities?\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\\n\"},{\"_active\":true,\"title\":\"How do I increase conversion rate?\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL),
(6, 'Home Car', '[{\"type\":\"form_search_car\",\"name\":\"Car: Form Search\",\"model\":{\"title\":\"Search Rental Car Deals\",\"sub_title\":\"Book better cars from local hosts across the US and around the world.\",\"bg_image\":122},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"Free Cancellation\",\"sub_title\":\"Morbi semper fames lobortis ac\",\"icon_image\":103,\"order\":null},{\"_active\":true,\"title\":\"No Hidden Costs\",\"sub_title\":\"Morbi semper fames lobortis\",\"icon_image\":104,\"order\":null},{\"_active\":true,\"title\":\"24/7 Customer Care\",\"sub_title\":\"Morbi semper fames lobortis\",\"icon_image\":105,\"order\":null}],\"style\":\"normal\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"car_term_featured_box\",\"name\":\"Car: Term Featured Box\",\"model\":{\"title\":\"Browse by categories\",\"desc\":\"Book incredible things to do around the world.\",\"term_car\":[\"68\",\"67\",\"66\",\"65\",\"64\",\"63\",\"62\",\"61\"]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_car\",\"name\":\"Car: List Items\",\"model\":{\"title\":\"Trending used cars\",\"desc\":\"Book incredible things to do around the world.\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"how_it_works\",\"name\":\"How It Works\",\"model\":{\"title\":\"How does it work?\",\"list_item\":[{\"_active\":false,\"title\":\"Find The Car\",\"sub_title\":\"Lorem Ipsum is simply dummy text of the printing\",\"icon_image\":132,\"order\":null},{\"_active\":false,\"title\":\"Book It\",\"sub_title\":\"Lorem Ipsum is simply dummy text of the printing\",\"icon_image\":133,\"order\":null},{\"_active\":false,\"title\":\"Grab And Go\",\"sub_title\":\"Lorem Ipsum is simply dummy text of the printing\",\"icon_image\":134,\"order\":null}],\"background_image\":131},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"car\"],\"title\":\"Top destinations\",\"desc\":\"Lorem Ipsum is simply dummy text of the printing\",\"number\":6,\"layout\":\"style_2\",\"order\":\"id\",\"order_by\":\"asc\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_template_translations`
--

DROP TABLE IF EXISTS `core_template_translations`;
CREATE TABLE IF NOT EXISTS `core_template_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_template_translations_locale_index` (`locale`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_template_translations`
--

INSERT INTO `core_template_translations` (`id`, `origin_id`, `locale`, `title`, `content`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'ja', 'Home Page', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"service_types\":[\"hotel\",\"space\",\"tour\",\"car\"],\"title\":\"こんにちは！\",\"sub_title\":\"どこに行きたい？\",\"bg_image\":16},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"offer_block\",\"name\":\"Offer Block\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"特別オファー\",\"desc\":\"最適なホテルを探す<br>\\n20,000以上の物件の価格<br>\\n上の最高の価格\",\"background_image\":17,\"link_title\":\"取引\",\"link_more\":\"#\",\"featured_text\":\"ホリデーセール\"},{\"_active\":true,\"title\":\"ニュースレター\",\"desc\":\"無料で参加して取得 <br>\\nに合わせたニュースレター<br>\\nホット旅行情報。\",\"background_image\":18,\"link_title\":\"サインアップ\",\"link_more\":\"/register\",\"featured_icon\":\"icofont-email\"},{\"_active\":true,\"title\":\"旅行のヒント\",\"desc\":\"旅行の専門家からのヒント <br>\\nあなたの次の<br>\\nより良い。\",\"background_image\":19,\"link_title\":\"サインアップ\",\"link_more\":\"/register\",\"featured_text\":null,\"featured_icon\":\"icofont-island-alt\"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"ベストセラーリスト\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"space\",\"hotel\",\"tour\"],\"title\":\"人気の目的地\",\"desc\":\"読者が\",\"number\":6,\"layout\":\"style_4\",\"order\":\"id\",\"order_by\":\"asc\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"最高のプロモーションツアー\",\"number\":6,\"style\":\"box_shadow\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\",\"desc\":\"最も人気のある目的地\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"賃貸物件\",\"desc\":\"思慮深いデザインで高い評価を受けている家\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_car\",\"name\":\"Car: List Items\",\"model\":{\"title\":\"Car Trending\",\"desc\":\"Book incredible things to do around the world.\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true},{\"type\": \"list_news\", \"name\": \"News: List Items\", \"model\": {\"title\": \"Read the latest from blog\", \"desc\": \"Contrary to popular belief\", \"number\": 6, \"category_id\": null, \"order\": \"id\", \"order_by\": \"asc\"}, \"component\": \"RegularBlock\", \"open\": true, \"is_container\": false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"あなたの街を知？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"私たちの幸せなクライアント\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":6,\"avatar\":2},{\"_active\":true,\"name\":\"Charlie Harrington\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2020-02-14 08:44:19', NULL),
(2, 2, 'ja', 'Home Tour', '[{\"type\":\"form_search_tour\",\"name\":\"Tour: Form Search\",\"model\":{\"title\":\"どこへ行くのが大好き\",\"sub_title\":\"世界中で信じられないようなことを予約しましょう。\",\"bg_image\":20},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"1,000+ ローカルガイド\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":5},{\"_active\":true,\"title\":\"手作りの体験\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":4},{\"_active\":true,\"title\":\"96% 幸せな旅行者\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":6}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"トレンドツアー\",\"number\":5,\"style\":\"carousel\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"title\":\"人気の目的地\",\"number\":5,\"order\":\"id\",\"order_by\":\"desc\",\"service_type\":\"tour\",\"desc\":\"\",\"layout\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"あなたが好きになるローカル体験\",\"number\":8,\"style\":\"normal\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"っていますか？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と1200人以上の貢献者に参加する\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"私たちの幸せなクライアント\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"融づ苦佐とき百配ほづあ禁安テクミ真覧チヱフ行乗ぱたば外味ナ演庭コヲ旅見ヨコ優成コネ治確はろね訪来終島抄がん。\",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"融づ苦佐とき百配ほづあ禁安テクミ真覧チヱフ行乗ぱたば外味ナ演庭コヲ旅見ヨコ優成コネ治確はろね訪来終島抄がん。\",\"number_star\":6,\"avatar\":2},{\"_active\":true,\"name\":\"Charlie Harrington\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2020-02-14 08:44:19', NULL),
(3, 3, 'ja', 'Home Space', '[{\"type\":\"form_search_space\",\"name\":\"Space: Form Search\",\"model\":{\"title\":\"次のレンタルを探す\",\"sub_title\":\"世界中で信じられないようなことを予約しましょう。\",\"bg_image\":61},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"おすすめの家\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"desc\":\"思慮深いデザインで高い評価を受けている家\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"space_term_featured_box\",\"name\":\"Space: Term Featured Box\",\"model\":{\"title\":\"ホームタイプを見つける\",\"desc\":\"これは、読者はその長い既成の事実であります\",\"term_space\":[\"26\",\"27\",\"28\",\"29\",\"30\",\"31\"]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"space\",\"title\":\"人気の目的地\",\"number\":6,\"order\":\"id\",\"order_by\":\"desc\",\"layout\":\"style_2\",\"desc\":\"これは、読者はその長い既成の事実であります\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"賃貸物件\",\"desc\":\"思慮深いデザインで高い評価を受けている家\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"っていますか？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と1200人以上の貢献者に参加する\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2020-02-14 08:44:19', NULL),
(4, 4, 'ja', 'Home Hotel', '[{\"type\":\"form_search_hotel\",\"name\":\"Hotel: Form Search\",\"model\":{\"title\":\"最適なホテルを探す\",\"sub_title\":\"20,000以上のプロパティで最高の価格を取得\",\"bg_image\":92},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"20,000以上のプロパティ\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":103,\"order\":null},{\"_active\":false,\"title\":\"信頼と安全性\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":104,\"order\":null},{\"_active\":false,\"title\":\"ベストプライス保証\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":105,\"order\":null}],\"style\":\"normal\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"直前予約\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"\",\"order_by\":\"\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"hotel\",\"title\":\"人気の目的地\",\"desc\":\"それは長い間確立された事実であり、\",\"number\":6,\"layout\":\"style_3\",\"order\":\"\",\"order_by\":\"\",\"to_location_detail\":false},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h2><span style=\\\"color: #1a2b48; font-family: Poppins, sans-serif; font-size: 28px; font-weight: 500; background-color: #ffffff;\\\">ローカルエキスパートになる理由</span></h2>\\n<div><span style=\\\"color: #5e6d77; font-family: Poppins, sans-serif; font-size: 10pt; background-color: #ffffff;\\\">様々な質量マエケナスとその格言不動産</span></div>\\n<div id=\\\"gtx-trans\\\" style=\\\"position: absolute; left: -118px; top: 55.8125px;\\\">\\n<div class=\\\"gtx-trans-icon\\\">&nbsp;</div>\\n</div>\",\"class\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"追加の収入を得る\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":15,\"order\":null},{\"_active\":false,\"title\":\"ネットワークを開く\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":14,\"order\":null},{\"_active\":false,\"title\":\"あなたの言語を練習する\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":13,\"order\":null}],\"style\":\"style3\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"ベストセラーリスト\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2020-02-14 08:44:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_translations`
--

DROP TABLE IF EXISTS `core_translations`;
CREATE TABLE IF NOT EXISTS `core_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `string` text COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `last_build_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_vendor_plans`
--

DROP TABLE IF EXISTS `core_vendor_plans`;
CREATE TABLE IF NOT EXISTS `core_vendor_plans` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_commission` int(11) NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_vendor_plan_meta`
--

DROP TABLE IF EXISTS `core_vendor_plan_meta`;
CREATE TABLE IF NOT EXISTS `core_vendor_plan_meta` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vendor_plan_id` int(11) NOT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable` tinyint(4) DEFAULT NULL,
  `maximum_create` int(11) DEFAULT NULL,
  `auto_publish` tinyint(4) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location_package`
--

DROP TABLE IF EXISTS `location_package`;
CREATE TABLE IF NOT EXISTS `location_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(10) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
CREATE TABLE IF NOT EXISTS `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `app_id` int(11) DEFAULT NULL,
  `app_user_id` int(11) DEFAULT NULL,
  `file_width` int(11) DEFAULT NULL,
  `file_height` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `file_name`, `file_path`, `file_size`, `file_type`, `file_extension`, `create_user`, `update_user`, `deleted_at`, `app_id`, `app_user_id`, `file_width`, `file_height`, `created_at`, `updated_at`) VALUES
(1, 'avatar', 'demo/general/avatar.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'avatar-2', 'demo/general/avatar-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'avatar-3', 'demo/general/avatar-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'ico_adventurous', 'demo/general/ico_adventurous.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'ico_localguide', 'demo/general/ico_localguide.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'ico_maps', 'demo/general/ico_maps.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'ico_paymethod', 'demo/general/ico_paymethod.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'logo', 'demo/general/logo.svg', NULL, 'image/svg+xml', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'bg_contact', 'demo/general/bg-contact.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'favicon', 'demo/general/favicon.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'thumb-vendor-register', 'demo/general/thumb-vendor-register.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'bg-video-vendor-register1', 'demo/general/bg-video-vendor-register1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'ico_chat_1', 'demo/general/ico_chat_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'ico_friendship_1', 'demo/general/ico_friendship_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'ico_piggy-bank_1', 'demo/general/ico_piggy-bank_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'home-mix', 'demo/general/home-mix.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'image_home_mix_1', 'demo/general/image_home_mix_1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'image_home_mix_2', 'demo/general/image_home_mix_2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'image_home_mix_3', 'demo/general/image_home_mix_3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'banner-search', 'demo/tour/banner-search.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'tour-1', 'demo/tour/tour-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'tour-2', 'demo/tour/tour-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'tour-3', 'demo/tour/tour-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'tour-4', 'demo/tour/tour-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'tour-5', 'demo/tour/tour-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'tour-6', 'demo/tour/tour-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'tour-7', 'demo/tour/tour-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'tour-8', 'demo/tour/tour-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'tour-9', 'demo/tour/tour-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'tour-10', 'demo/tour/tour-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'tour-11', 'demo/tour/tour-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'tour-12', 'demo/tour/tour-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'tour-13', 'demo/tour/tour-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'tour-14', 'demo/tour/tour-14.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'tour-15', 'demo/tour/tour-15.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'tour-16', 'demo/tour/tour-16.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'gallery-1', 'demo/tour/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'gallery-2', 'demo/tour/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'gallery-3', 'demo/tour/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'gallery-4', 'demo/tour/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'gallery-5', 'demo/tour/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'gallery-6', 'demo/tour/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'gallery-7', 'demo/tour/gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'banner-tour-1', 'demo/tour/banner-detail/banner-tour-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'banner-tour-2', 'demo/tour/banner-detail/banner-tour-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'banner-tour-3', 'demo/tour/banner-detail/banner-tour-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'banner-tour-4', 'demo/tour/banner-detail/banner-tour-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'banner-tour-5', 'demo/tour/banner-detail/banner-tour-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'banner-tour-6', 'demo/tour/banner-detail/banner-tour-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'banner-tour-7', 'demo/tour/banner-detail/banner-tour-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'banner-tour-8', 'demo/tour/banner-detail/banner-tour-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'banner-tour-9', 'demo/tour/banner-detail/banner-tour-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'banner-tour-10', 'demo/tour/banner-detail/banner-tour-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'banner-tour-11', 'demo/tour/banner-detail/banner-tour-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'banner-tour-12', 'demo/tour/banner-detail/banner-tour-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'banner-tour-13', 'demo/tour/banner-detail/banner-tour-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'banner-tour-14', 'demo/tour/banner-detail/banner-tour-14.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'banner-tour-15', 'demo/tour/banner-detail/banner-tour-15.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'banner-tour-16', 'demo/tour/banner-detail/banner-tour-16.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'banner-tour-17', 'demo/tour/banner-detail/banner-tour-17.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'banner-search-space', 'demo/space/banner-search-space.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'banner-search-space-2', 'demo/space/banner-search-space-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'space-1', 'demo/space/space-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'space-2', 'demo/space/space-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'space-3', 'demo/space/space-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'space-4', 'demo/space/space-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'space-5', 'demo/space/space-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'space-6', 'demo/space/space-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'space-7', 'demo/space/space-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'space-8', 'demo/space/space-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'space-9', 'demo/space/space-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'space-10', 'demo/space/space-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'space-11', 'demo/space/space-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'space-12', 'demo/space/space-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'space-13', 'demo/space/space-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'space-gallery-1', 'demo/space/gallery/space-gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'space-gallery-2', 'demo/space/gallery/space-gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'space-gallery-3', 'demo/space/gallery/space-gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'space-gallery-4', 'demo/space/gallery/space-gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'space-gallery-5', 'demo/space/gallery/space-gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'space-gallery-6', 'demo/space/gallery/space-gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'space-gallery-7', 'demo/space/gallery/space-gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'space-single-1', 'demo/space/space-single-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'space-single-2', 'demo/space/space-single-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'space-single-3', 'demo/space/space-single-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'icon-space-box-1', 'demo/space/featured-box/icon-space-box-1.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'icon-space-box-2', 'demo/space/featured-box/icon-space-box-2.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'icon-space-box-3', 'demo/space/featured-box/icon-space-box-3.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'icon-space-box-4', 'demo/space/featured-box/icon-space-box-4.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'icon-space-box-5', 'demo/space/featured-box/icon-space-box-5.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'icon-space-box-6', 'demo/space/featured-box/icon-space-box-6.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'banner-search-hotel', 'demo/hotel/banner-search-hotel.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'hotel-featured-1', 'demo/hotel/hotel-featured-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'hotel-featured-2', 'demo/hotel/hotel-featured-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'hotel-featured-3', 'demo/hotel/hotel-featured-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'hotel-featured-4', 'demo/hotel/hotel-featured-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'hotel-gallery-1', 'demo/hotel/gallery/hotel-gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'hotel-gallery-2', 'demo/hotel/gallery/hotel-gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'hotel-gallery-3', 'demo/hotel/gallery/hotel-gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'hotel-gallery-4', 'demo/hotel/gallery/hotel-gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'hotel-gallery-5', 'demo/hotel/gallery/hotel-gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'hotel-gallery-6', 'demo/hotel/gallery/hotel-gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'hotel-icon-1', 'demo/hotel/hotel-icon-1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'hotel-icon-2', 'demo/hotel/hotel-icon-2.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'hotel-icon-3', 'demo/hotel/hotel-icon-3.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'location-1', 'demo/location/location-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'location-2', 'demo/location/location-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'location-3', 'demo/location/location-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'location-4', 'demo/location/location-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'location-5', 'demo/location/location-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'banner-location-1', 'demo/location/banner-detail/banner-location-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'trip-idea-1', 'demo/location/trip-idea/trip-idea-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'trip-idea-2', 'demo/location/trip-idea/trip-idea-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'news-1', 'demo/news/news-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'news-2', 'demo/news/news-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'news-3', 'demo/news/news-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'news-4', 'demo/news/news-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'news-5', 'demo/news/news-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'news-6', 'demo/news/news-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'news-7', 'demo/news/news-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'news-banner', 'demo/news/news-banner.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'banner-search-car', 'demo/car/banner-search-car.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'Convertibles', 'demo/car/terms/convertibles.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Coupes', 'demo/car/terms/couple.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'Hatchbacks', 'demo/car/terms/hatchback.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'Minivans', 'demo/car/terms/minivans.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'Sedan', 'demo/car/terms/sedan.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'SUVs', 'demo/car/terms/suv.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'Trucks', 'demo/car/terms/trucks.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'Wagons', 'demo/car/terms/wagons.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'home-car-bg-1', 'demo/car/home-car-bg-1.png', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'number-1', 'demo/car/number-1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'number-2', 'demo/car/number-2.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'number-3', 'demo/car/number-3.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'banner-car-single', 'demo/car/banner-single.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'Airbag', 'demo/car/feature/Airbag.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'FM Radio', 'demo/car/feature/Radio.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'Sensor', 'demo/car/feature/Sensor.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'Speed Km', 'demo/car/feature/Speed.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'Steering Wheel', 'demo/car/feature/Steering.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Power Windows', 'demo/car/feature/Windows.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'car-1', 'demo/car/car-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'car-2', 'demo/car/car-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'car-3', 'demo/car/car-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'car-4', 'demo/car/car-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'car-5', 'demo/car/car-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'car-6', 'demo/car/car-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'car-7', 'demo/car/car-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'car-8', 'demo/car/car-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'car-9', 'demo/car/car-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'car-10', 'demo/car/car-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'car-11', 'demo/car/car-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'car-12', 'demo/car/car-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'car-gallery-1', 'demo/car/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'car-gallery-2', 'demo/car/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'car-gallery-3', 'demo/car/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'car-gallery-4', 'demo/car/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'car-gallery-5', 'demo/car/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'car-gallery-6', 'demo/car/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'car-gallery-7', 'demo/car/gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(45, '2014_10_12_000000_create_users_table', 1),
(46, '2014_10_12_100000_create_password_resets_table', 1),
(47, '2019_03_13_174533_create_permission_tables', 1),
(48, '2019_03_17_114820_create_table_core_pages', 1),
(49, '2019_03_17_140539_create_media_files_table', 1),
(50, '2019_03_20_072502_create_bravo_tours', 1),
(51, '2019_03_20_081256_create_core_news_category_table', 1),
(52, '2019_03_27_081940_create_core_setting_table', 1),
(53, '2019_03_28_101009_create_bravo_booking_table', 1),
(54, '2019_03_28_165911_create_booking_meta_table', 1),
(55, '2019_03_29_093236_update_bookings_table', 1),
(56, '2019_04_01_045229_create_user_meta_table', 1),
(57, '2019_04_01_150630_create_menu_table', 1),
(58, '2019_04_02_150630_create_core_news_table', 1),
(59, '2019_04_03_073553_bravo_tour_category', 1),
(60, '2019_04_03_080159_bravo_location', 1),
(61, '2019_04_05_143248_create_core_templates_table', 1),
(62, '2019_04_18_152537_create_bravo_tours_meta_table', 1),
(63, '2019_05_07_085430_create_core_languages_table', 1),
(64, '2019_05_07_085442_create_core_translations_table', 1),
(65, '2019_05_17_074008_create_bravo_review', 1),
(66, '2019_05_17_074048_create_bravo_review_meta', 1),
(67, '2019_05_17_113042_create_tour_attrs_table', 1),
(68, '2019_05_21_084235_create_bravo_contact_table', 1),
(69, '2019_05_28_152845_create_core_subscribers_table', 1),
(70, '2019_06_17_142338_bravo_seo', 1),
(71, '2019_07_03_070406_update_from_1_0_to_1_1', 1),
(72, '2019_07_08_075436_create_core_vendor_plans', 1),
(73, '2019_07_08_083733_create_vendors_plan_payments', 1),
(74, '2019_07_11_083501_update_from_110_to_120', 1),
(75, '2019_07_30_072809_create_space_table', 1),
(76, '2019_07_30_072809_create_tour_dates_table', 1),
(77, '2019_08_05_031018_create_core_vendor_plan_meta_table', 1),
(78, '2019_08_09_163909_create_inbox_table', 1),
(79, '2019_08_16_094354_update_from_120_to_130', 1),
(80, '2019_08_20_162106_create_table_user_upgrade_requests', 1),
(81, '2019_09_13_070650_update_from_130_to_140', 1),
(82, '2019_09_20_072809_create_hotel_table', 1),
(83, '2019_10_22_151319_create_car_table', 1),
(84, '2019_11_05_092516_update_from_140_to_150', 1),
(85, '2019_11_18_085024_update_from_150_to_151', 1),
(86, '2020_02_13_145522_create_services_table', 1),
(87, '2020_04_02_150631_create_core_tags_table', 1),
(88, '2021_04_02_150632_create_core_tag_new_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
CREATE TABLE IF NOT EXISTS `packages` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `banner_image_id` int(10) UNSIGNED DEFAULT NULL,
  `detail` text NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `service_id`, `title`, `subtitle`, `price`, `banner_image_id`, `detail`, `created_at`, `updated_at`) VALUES
(27, 2, 'package title 3', 'package title 3', 300, NULL, 'package title 3', '2020-03-01 12:22:32', '2020-03-01 12:22:32'),
(26, 2, 'package title 2', 'package sub title 2', 200, NULL, 'pkg descc1', '2020-03-01 12:22:32', '2020-03-01 12:22:32'),
(25, 2, 'package title 1', 'package sub title 1', 110, NULL, 'pkg descc1', '2020-03-01 12:22:32', '2020-03-01 12:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `banner_image_id`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'service1', 'service1 desc', NULL, NULL, '2020-02-26 08:31:19', '2020-02-26 08:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `avatar_id` bigint(20) DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `vendor_commission_amount` int(11) DEFAULT NULL,
  `vendor_commission_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_gateway` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_guests` int(11) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_submit_status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `address`, `address2`, `phone`, `birthday`, `city`, `state`, `country`, `zip_code`, `last_login_at`, `avatar_id`, `bio`, `status`, `create_user`, `update_user`, `vendor_commission_amount`, `vendor_commission_type`, `deleted_at`, `remember_token`, `created_at`, `updated_at`, `payment_gateway`, `total_guests`, `locale`, `business_name`, `verify_submit_status`, `is_verified`) VALUES
(1, 'System Admin', 'System', 'Admin', 'admin@dev.com', NULL, '$2y$10$UmdKCdJzHaBPG4ajT4RJBOjDaEcDpGu3xhjvll/7vaLwzWhC7ze2m', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, 'GxHJwd1IkUtQwSGORxp7XVvycPbTiIk7gFKdaSfAkpV0UK0ud7F9MZUDutzv', '2020-02-14 08:44:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '', 'Vendor', '01', 'vendor1@dev.com', NULL, '$2y$10$kNHwCnnnXXONKVuakD3a6.UgkIE5MY84rv4nxrhtQANcNBwvslaVq', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '', 'Customer', '01', 'customer1@dev.com', NULL, '$2y$10$J.jE2S5738gJ7kzLfe6UU.N1cWTYKu8x2s8wuwGiXRlY3DebS8eOq', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '', 'Elise', 'Aarohi', 'Aarohi@dev.com', NULL, '$2y$10$APzjsBSrtS/KfeZKizuDJOymB/FurMZMaWNpxHojARKbKxYCRS1XK', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '', 'Kaytlyn', 'Alvapriya', 'Alvapriya@dev.com', NULL, '$2y$10$ap3YdIR9rufouC.oS4USH.qthNmTeLtYMIJB/QNdVkKjOzlwhFe8W', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '', 'Lynne', 'Victoria', 'Victoria@dev.com', NULL, '$2y$10$fgiP62XsiFtVMA4o3mGH9u69rM.CqeG66zN3mGBem2Hnz.UZyMpv.', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '', 'Do', 'Quan', 'quandq@gmail.com', NULL, '$2y$10$C8fr7.rWYsEnZsZp5hbZO.bVRag5pIqjW6aRCxAV6btxCgi9tOwU.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '', 'William', 'Diana', 'Diana@dev.com', NULL, '$2y$10$dhWRvtQZKclt/fYrFV1a/eNvO8nZnLKU.sgzAjovXZB/UIHkFnU5.', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '', 'Sarah', 'Violet', 'Violet@dev.com', NULL, '$2y$10$KejLG7IjglEeJ96vSmUFu.ackLH.7/0OADVUpdFjg5B46zHB8nlnq', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '', 'Paul', 'Amora', 'Amora@dev.com', NULL, '$2y$10$sUl.KX.H5N4kEoWsQat5RO9KJrENAcdaMTe0BZwtqKcVOgfnHU0Fm', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '', 'Richard', 'Davina', 'Davina@dev.com', NULL, '$2y$10$8o.xrX9FUlAnmZoNLIS6w.Tv28mfjeVkv3cgLsKLJ8c2CQ14c1LNq', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '', 'Shushi', 'Yashashree', 'Yashashree@dev.com', NULL, '$2y$10$4WrvVMuCD2jrD4/3E2LWROPQGYhsYJjSLLI3eEl8Eh8ahEte1pQ6y', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '', 'Anne', 'Nami', 'Nami@dev.com', NULL, '$2y$10$J0msxf3rkF/2DEn7BpqJiegezk3GWZcYOcX9.AfwsGlYt.CKIWwUK', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '', 'Bush', 'Elise', 'Elise@dev.com', NULL, '$2y$10$RhbhgrBoNVs5HufU0MWic.UHhSKyX6cLLE8iPtV79R5d4xKt23lnu', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '', 'Elizabeth', 'Norah', 'Norah@dev.com', NULL, '$2y$10$BWvbjUJUFfBgUvrfIRKM8.v7k7aiZiI.wVrBXs2UaXKDBO16hd0hC', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '', 'James', 'Alia', 'Alia@dev.com', NULL, '$2y$10$04xjHAMotWABK4CKEU/m..yAKeRYeXP7t3RWfqG.5iLnzt1BZnp9S', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '', 'John', 'Dakshi', 'Dakshi@dev.com', NULL, '$2y$10$Tb8C0MHorJb/QXm./rIRfuVZRmM5NWLos7BwkOk1cBDs6EFyHpzcm', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-14 08:44:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
CREATE TABLE IF NOT EXISTS `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_upgrade_request`
--

DROP TABLE IF EXISTS `user_upgrade_request`;
CREATE TABLE IF NOT EXISTS `user_upgrade_request` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_request` int(11) DEFAULT NULL,
  `approved_time` datetime DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_wishlist`
--

DROP TABLE IF EXISTS `user_wishlist`;
CREATE TABLE IF NOT EXISTS `user_wishlist` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors_plan_payments`
--

DROP TABLE IF EXISTS `vendors_plan_payments`;
CREATE TABLE IF NOT EXISTS `vendors_plan_payments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_trial` int(11) NOT NULL,
  `price_per` enum('onetime','per_time') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'onetime',
  `price_unit` enum('day','month','year') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'day',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
