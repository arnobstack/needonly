-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 20 2024 г., 15:12
-- Версия сервера: 10.5.23-MariaDB
-- Версия PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `xclusive_logs`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin_dialog_entity`
--

DROP TABLE IF EXISTS `admin_dialog_entity`;
CREATE TABLE IF NOT EXISTS `admin_dialog_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) NOT NULL DEFAULT '',
  `byAdmin` tinyint(4) NOT NULL DEFAULT 1,
  `time` int(11) NOT NULL DEFAULT 0,
  `creator` int(11) NOT NULL DEFAULT 0,
  `messages` varchar(4096) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_stat_entity`
--

DROP TABLE IF EXISTS `admin_stat_entity`;
CREATE TABLE IF NOT EXISTS `admin_stat_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL DEFAULT 0,
  `data` varchar(4096) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `inventory_log_entity`
--

DROP TABLE IF EXISTS `inventory_log_entity`;
CREATE TABLE IF NOT EXISTS `inventory_log_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemId` int(11) NOT NULL DEFAULT 0,
  `itemName` varchar(120) NOT NULL DEFAULT '',
  `serial` varchar(1024) NOT NULL DEFAULT '',
  `action` varchar(1024) NOT NULL DEFAULT '',
  `text` varchar(1024) NOT NULL DEFAULT '',
  `actorId` bigint(20) NOT NULL DEFAULT 0,
  `targetId` bigint(20) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `log_entity`
--

DROP TABLE IF EXISTS `log_entity`;
CREATE TABLE IF NOT EXISTS `log_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(1024) NOT NULL,
  `type` varchar(100) NOT NULL,
  `userId` int(11) NOT NULL DEFAULT 0,
  `target` int(11) DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `log_family_entity`
--

DROP TABLE IF EXISTS `log_family_entity`;
CREATE TABLE IF NOT EXISTS `log_family_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(1024) NOT NULL,
  `type` varchar(100) NOT NULL,
  `familyId` int(11) NOT NULL DEFAULT 0,
  `target` int(11) DEFAULT 0,
  `targetName` varchar(50) NOT NULL,
  `time` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `log_items_entity`
--

DROP TABLE IF EXISTS `log_items_entity`;
CREATE TABLE IF NOT EXISTS `log_items_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(1024) NOT NULL,
  `ids` varchar(1024) NOT NULL,
  `who` varchar(1024) NOT NULL,
  `time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
