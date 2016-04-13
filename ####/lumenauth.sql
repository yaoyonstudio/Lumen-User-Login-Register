-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-04-13 18:06:39
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lumenauth`
--

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_04_13_134016_create_users_table', 1);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `api_token` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '61c66e16f4abbd8fb9e8cd1927b44e689155f977', 'admin@lumen.com', 'nyrpTHj6gFCUhmiyVO68fwncby1v3N4nOWfLA2U0deXNVL6rMDkTkvLWDRXv', '2016-04-13 14:31:28', '2016-04-13 14:33:54'),
(2, 'testUsername', '2b50a8fc0bffef9d3501674b1dfbf55bd05e665a', 'admin@lumen.com', 'KIcFM66SElcIE4cgfVk2MqBdwQsfj4yX95A2GoL0VJPMm5suEqh4NuytEYm1', '2016-04-13 14:32:50', '2016-04-13 14:32:50'),
(3, 'test', 'a05652f498c593d201b9bd9b271eefb6d2f7d595', 'test@lumen.com', 'neKJzXD4xqLmAJYmnpwZzXjTIQ5SrJVQeFAK3FbwN8aw4I8KuQejdgoctrUy', '2016-04-13 15:16:15', '2016-04-13 15:16:15');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
